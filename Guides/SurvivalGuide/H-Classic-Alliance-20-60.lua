RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 20-30
#classic
<< Alliance
#name 21-23 Stonetalon/Ashenvale
#next 23-24 湿地
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
.target Pelturas Whitemoon
.goto Ashenvale,37.36,51.79
.accept 1033 >>接任务: |cRXP_LOOT_月神之泪|r
step
.goto Ashenvale,46.37,46.38
>>掠夺|cRXP_Loot_Elune的眼泪|r在地上
.complete 1033,1
step
.goto Ashenvale,37.36,51.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
.target Pelturas Whitemoon
.turnin 1033 >>交任务: |cRXP_FRIENDLY_月神之泪|r
.timer 17,Elune's Tear RP
.accept 1034 >>接任务: |cRXP_WARN_星尘废墟|r
step
.goto Ashenvale,33.30,67.79
>>为|cRXP_Loot_Handful of Stardust|r掠夺|cRXP_PICK_Stardust覆盖的衬套|r
>>|cRXP_WARN_它们的产卵地点遍布全岛|r
.complete 1034,1
step
#completewith next
.goto Ashenvale,31.67,64.24,15 >>前往山脚
.goto Ashenvale,31.21,61.60,15 >>爬山时笔直向北跑
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟瑞希尔|r
.target Therysil
.goto Ashenvale,22.64,51.91
.turnin 945 >>交任务: |cRXP_FRIENDLY_护送瑟瑞露尼|r
.isQuestComplete 945
step
#completewith ZoramStrand
.goto Ashenvale,26.67,44.97,80,0
.goto Ashenvale,25.43,38.94,80,0
.goto Ashenvale,14.79,31.29
.subzone 414 >>前往佐拉姆斯特兰德
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔伦|r
.target Talen
.goto Ashenvale,14.79,31.29
.accept 1007 >>接任务: |cRXP_WARN_远古雕像|r
step
#completewith AncientStatuette
>>杀死|cRXP_ENEMY_Wrathtail Nagas|r。掠夺他们的|cRXP_Loot_Heads|r
>>|cRXP_WARN_还不要刻意完成这件事|r
.mob Wrathtail Wave Rider
.mob Wrathtail Sorceress
.complete 1008,1
step
.goto Ashenvale,14.20,20.64
>>偷走地上的|cRXP_Loot_古代雕像|r
.complete 1007,1
step
.solo
#label AncientStatuette
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔伦|r
.target Talen
.goto Ashenvale,14.79,31.29
.turnin 1007 >>交任务: |cRXP_FRIENDLY_远古雕像|r
step
#label ZoramStrand
.solo
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
.group
#label AncientStatuette
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔伦|r
.target Talen
.goto Ashenvale,14.79,31.29
.turnin 1007 >>交任务: |cRXP_FRIENDLY_远古雕像|r
.timer 22,The Ancient Statuette RP
.accept 1009 >>接任务: |cRXP_LOOT_卢泽尔|r
step
.group
#completewith next
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
.group 2
.goto Ashenvale,6.528,13.361
>>杀死|cRXP_ENEMY_Ruuzel|r。掠夺她获得佐拉姆的|cRXX_Loot_戒指|r
>>|cRXP_ENEMY_Ruuzel|r|cRXP_WARN_用|cRXD_ENEMY_Wrathtail Myrmidon|r和|cRXX_ENEMY_Wrathtail Sea Witch|r控制岛屿。杀死其中一个，然后在需要时重置它们|r
>>|cRXP_ENEMY_Vespia|r|cRXP_WARN_i女士是一个稀有的后代，如果你看到她，她也会掉落佐拉姆的|cRXP-LOOT_戒指|r|r
.unitscan Lady Vespia
.mob Ruuzel
.complete 1009,1
step
.group
#label ZoramStrand
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
.group
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔伦|r
.target Talen
.goto Ashenvale,14.79,31.29
.turnin 1009 >>交任务: |cRXP_FRIENDLY_卢泽尔|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰洛尼斯的尸体|r
.target Teronis' Corpse
.goto Ashenvale,20.31,42.33
.turnin 991 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
.accept 1023 >>接任务: |cRXP_WARN_莱恩的净化|r
step
.goto Ashenvale,20.41,43.82,50,0
.goto Ashenvale,19.43,42.09,50,0
.goto Ashenvale,21.01,41.61,50,0
.goto Ashenvale,20.31,42.33
>>杀死|cRXP_ENEMY_Saltspeettle Murlocs|r。掠夺它们以获得|cRXX_Loot_发光宝石|r
.mob Saltspittle Warrior
.mob Saltspittle Muckdweller
.mob Saltspittle Oracle
.mob Saltspittle Puddlejumper
.complete 1023,1
step
#completewith next
.goto Ashenvale,34.67,48.83
.subzone 415 >>Travel to Astranaar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfirei|r
.target Shindrell Swiftfire
.goto Ashenvale,34.67,48.83
.turnin 1008 >>交任务: |cRXP_FRIENDLY_佐拉姆海岸|r
.accept 1134 >>接任务: |cRXP_WARN_石爪山的双足飞龙|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱恩·狼行者|r
.target Raene Wolfrunner
.goto Ashenvale,36.61,49.58
.turnin 1023 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
step
.destroy 5505 >>摧毁: |cRXP_ENEMY_泰洛尼斯的日记|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
.target Pelturas Whitemoon
.goto Ashenvale,37.36,51.79
.turnin 1034 >>交任务: |cRXP_FRIENDLY_星尘废墟|r
step
#completewith ALM
.goto Ashenvale,34.41,47.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳希亚|r
.fly Auberdine >>飞到黑海岸
.target Daelyshia
step
.goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
.turnin 4730 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
.turnin 4731 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
.turnin 4732 >>交任务: |cRXP_FRIENDLY_搁浅的海龟|r
.turnin 4733 >>交任务: |cRXP_FRIENDLY_搁浅的海洋生物|r
step
.goto Darkshore,37.70,43.39
.target Sentinel Glynda Nal'Shea
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
.turnin 4740 >>交任务: |cRXP_FRIENDLY_通缉：莫克迪普！|r
step
#label ALM
.goto Darkshore,39.37,43.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
.turnin 986 >>交任务: |cRXP_FRIENDLY_丢失的主人|r
.target Terenthis
step
.group
.isOnQuest 995
.goto Darkshore,39.37,43.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
.turnin 995 >>交任务: |cRXP_FRIENDLY_偷偷溜走|r
.target Terenthis
step
.goto Darkshore,37.44,41.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家霍莉|r
.turnin 731 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
.target Archaeologist Hollee
.accept 741 >>接任务: |cRXP_WARN_健忘的勘察员|r
step << !Mage !Paladin !Warlock
#completewith next
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
.fly Teldrassil >>飞往Teldrassil
.target Caylais Moonfeather
step << Mage/Paladin/Warlock
#completewith next
.goto Darkshore,32.75,42.21,60 >>前往Auberdine码头。等待鲁特朗村的船
step << Mage/Paladin/Warlock
.goto Darkshore,33.168,40.210
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darnassus
step << Mage/Paladin 
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
.fp Teldrassil >>获取Rut'theran村飞行路线
.target Vesprystus
step
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加瑞斯|r, |cRXP_FRIENDLY_莱恩|r, |cRXP_FRIENDLY_伊迪瑞娜|r
.bankdeposit 1083 >>将以下项目存入您的银行：
>>|T133277:0|t[亚速拉铭文] 
.target Garryeth
.target Lairn
.target Idriana
step << Warrior
.goto Darnassus,57.559,46.721
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊琳尼雅·月火|r
.train 2567 >>火车抛锚
.target Ilyenia Moonfire
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
.trainer >>训练你的职业技能
.target Syurna
step << Druid
.goto Darnassus,34.768,7.374
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳萨里安|r
.trainer >>训练你的职业技能
.target Denatharion
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
.trainer >>训练你的职业技能
.target Jocaste
step << Druid
.goto Darnassus,35.375,8.405
.target Mathrengyl Bearwalker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r, 他在楼上
.turnin 6125 >>交任务: |cRXP_FRIENDLY_解毒之术|r
.isOnQuest 6125
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
.target Chief Archaeologist Greywhisker
.goto Teldrassil,23.70,64.51
.turnin 741 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
.accept 942 >>接任务: |cRXP_WARN_健忘的勘察员|r
step << Priest
.goto Darnassus,37.901,82.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾德莉亚|r
.trainer >>训练你的职业技能
.target Jandria
step << !Warlock 
.hs >>赫斯到阿斯特拉纳
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
.cooldown item,6948,>0,1
step 
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Ashenvale
.zoneskip Darkshore
step 
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
.fly Ashenvale >>飞到灰谷
.target Vesprystus
.zoneskip Ashenvale
step << Warlock
#som
#phase 3-6
.goto Ashenvale,34.85,50.87
.vendor >>购买1个Flint和Tinder，以及2个Simple Wood
.collect 4470,2 
.collect 4471,1 
step
#era/som
.goto Ashenvale,42.50,71.70
.zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
step
#era
#sticky
#completewith wyv1
>>杀死|cRXP_ENEMY_Young Pridewing|r。掠夺他们的|cRXD_Loot_Pridewing Venom Sachs|r
.unitscan Young Pridewing
.complete 1134,1
step
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·影矛|r
.target Kaela Shadowspear
.goto Stonetalon Mountains,59.899,66.844
.turnin 1070 >>交任务: |cRXP_FRIENDLY_守卫石爪山|r
.accept 1085 >>接任务: |cRXP_WARN_守卫石爪山|r
step
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加克希姆·尘链|r
.target Gaxim Rustfizzle
.goto Stonetalon Mountains,59.516,67.146
.turnin 1085 >>交任务: |cRXP_FRIENDLY_守卫石爪山|r
.accept 1071 >>接任务: |cRXP_WARN_侏儒学者|r
step
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹克斯|r
.target Ziz Fizziks
.goto Stonetalon Mountains,58.989,62.601
.accept 1093 >>接任务: |cRXP_LOOT_超级收割机6000|r
step
#sticky
#label sr6000
#era/som
.goto Stonetalon Mountains,62.36,53.00,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,66.75,45.42,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,62.36,53.00
.goto Stonetalon Mountains,66.73,51.91,0
>>杀死|cRXP_ENEMY_Venture Co.操作员|r。掠夺他们以获取|cRXP_Loot_Blueprint |r
.complete 1093,1
.unitscan Venture Co. Operator
step
#era/som
.goto Stonetalon Mountains,62.36,53.00,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,66.75,45.42,60,0
.goto Stonetalon Mountains,66.73,51.91,60,0
.goto Stonetalon Mountains,62.36,53.00
.goto Stonetalon Mountains,66.73,51.91,0
>>杀死|cRXP_ENEMY_Venture Co.Deforesters|r和|cRXX_ENEMY_Venture Co.Loggers |r
.mob Venture Co. Deforester
.mob Venture Co. Logger
.complete 1071,1
.complete 1071,2
step
#requires sr6000
#era/som
.goto Stonetalon Mountains,58.989,62.601
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹克斯|r
.target Ziz Fizziks
.turnin 1093 >>交任务: |cRXP_FRIENDLY_超级收割机6000|r
.accept 1094 >>接任务: |cRXP_WARN_新的指示|r << Warlock
step
#label wyv1
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加克希姆·尘链|r
.goto Stonetalon Mountains,59.516,67.146
.turnin 1071 >>交任务: |cRXP_FRIENDLY_侏儒学者|r
.accept 1072 >>接任务: |cRXP_WARN_老同事|r
.accept 1075 >>接任务: |cRXP_WARN_马伦的卷轴|r
.target Gaxim Rustfizzle
step
#era
.goto Stonetalon Mountains,54.04,40.09,60,0
.goto Stonetalon Mountains,53.26,36.83,40,0
.goto Stonetalon Mountains,54.56,38.12
>>杀死|cRXP_ENEMY_Pridewing Wyvern|r和|cRXX_ENEMY_Pridewing Consorts|r。掠夺他们的|cRXD_Loot_Pridewing Venom Sachs|r
.mob Pridewing Wyvern
.mob Pridewing Consort
.complete 1134,1
step
#completewith next
.goto Stonetalon Mountains,37.103,8.100,100 >>前往斯通塔隆峰
step
#era/som
.goto Stonetalon Mountains,37.103,8.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者奥巴格姆|r
.target Keeper Albagorm
.turnin 1056 >>交任务: |cRXP_FRIENDLY_石爪峰之旅|r
step << Warlock
.goto Stonetalon Mountains,35.595,7.351
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊林安尼|r
.vendor >>|cRXP_WARN_供应商垃圾|r
.target Illyanie
step
#era/som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰罗伦|r
.target Teloren
.goto Stonetalon Mountains,36.438,7.181
.fp Stonetalon >>获取石爪飞行路线
.fly Ashenvale >>飞到灰谷 << !Warlock
step << Warlock
.goto Stonetalon Mountains,75.466,91.422,0
.goto Stonetalon Mountains,81.292,96.118,0
.goto The Barrens,35.052,27.025
.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step << Warlock
#completewith next
.goto The Barrens,40.358,24.780,150 >>|cRXP_WARN_按照箭头避开|cRXP_ENEMY_BARRENS防护|r！|r
step << Warlock
#som
#phase 3-6
.goto The Barrens,49.307,57.095
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知塔卡尔|r
.turnin 1716 >>交任务: |cRXP_FRIENDLY_噬魂者|r
.target Takar the Seer
.accept 1738 >>接任务: |cRXP_LOOT_同心树|r
.accept 65602 >>接任务: |cRXP_WARN_爱是什么？|r
step << Warlock
#era/som
.goto The Barrens,49.307,57.095
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知塔卡尔|r
.turnin 1716 >>交任务: |cRXP_FRIENDLY_噬魂者|r
.target Takar the Seer
.accept 1738 >>接任务: |cRXP_LOOT_同心树|r
step << Warlock
#completewith next
.goto The Barrens,62.98,37.21,100 >>Travel to Ratchet
step << Warlock
.goto The Barrens,62.984,37.218
.target Sputtervalve
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯布特瓦夫|r
.turnin 1094 >>交任务: |cRXP_FRIENDLY_新的指示|r
step << Warlock
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fp Ratchet>>获取棘轮飞行路径
.target Bragok
step << Warlock
#completewith Ordil
.hs >>赫斯到阿斯特拉纳
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
#era
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛德瑞尔·速火|r
.turnin 1134 >>交任务: |cRXP_FRIENDLY_石爪山的双足飞龙|r
step << Warlock
#label Ordil
#completewith next
.goto Ashenvale,26.73,44.95,100,0
.goto Ashenvale,31.50,31.50,40 >>奥德兰遗址之旅
step << Warlock
.goto Ashenvale,31.50,31.50
>>掠夺|cRXP_Loot_Heartswood|r巨树
.complete 1738,1
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.78,22.42
>>把火炬放在桌子上
.collect 190307,1 
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.78,22.42
>>创建一个篝火，然后使用未点燃的火炬
.collect 190308,1 
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.78,22.42
>>创建一个篝火，然后使用未点燃的火炬
.collect 190308,1 
step << Warlock
#som
#phase 3-6
.goto Ashenvale,26.61,22.01
>>在外面抢火炬的地方旁边的手推车上使用燃烧的火炬，然后上楼去抢雕像
.complete 65602,1 
step << Warlock
#completewith next
.goto Ashenvale,34.41,47.98,50 >>Travel to Astranaar
step
#label end
.goto Ashenvale,34.41,47.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳希亚|r
.fly Darkshore>>飞往奥伯丁
.target Daelyshia
step
#completewith next
.goto Darkshore,32.75,42.21,35 >>前往Auberdine码头。等待Menethil港的船
step
.goto Darkshore,32.44,43.71
>>|cRXP_WARN_调平|r|T135966:0|t[急救]|cRXP_WARN_and|r|T133971:0|t[烹饪]|cRXP_WARN_while waiting the Menethil Harbor boat|r
.zone Wetlands >>前往: |cRXP_PICK_湿地|r
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 20-30
#classic
<< Alliance
#name 23-24 湿地
#next 24-27 Duskwood/Redridge
step
.goto Wetlands,8.509,55.697
.target James Halloran
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
.accept 484 >>接任务: |cRXP_WARN_小鳄鱼皮|r
step
.goto Wetlands,7.95,56.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德温·晨光|r
.vendor >>|cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药剂]|cRXP_Buy_|r
>>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Dwin Shimmerdawn|r没有，请跳过此步骤|r
.target Dewin Shimmerdawn
step
.goto Wetlands,8.359,58.526
.target Karl Boran
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔·波兰|r
.accept 279 >>接任务: |cRXP_LOOT_海中的鱼人|r
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副菲兹莫斯|r
.accept 288 >>接任务: |cRXP_LOOT_第三舰队|r
.accept 463 >>接任务: |cRXP_LOOT_绿色守卫者|r
step
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板赫布瑞克|r
>>|cRXP_BUY_BUY a|r|T132792:0|t[矮树蜜的旗帜]
.target Innkeeper Helbrek
.home >>将您的炉石设置为Menethil Harbor
.complete 288,1 
step
#completewith next
.goto Wetlands,10.368,61.016,8 >>上楼前往|cRXP_FRIENDLY_Archaeologist Flagongut|r
step
.goto Wetlands,10.843,60.435
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家弗拉冈特|r, 他在楼上
.target Archaeologist Flagongut
.turnin 942 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
step
.goto Wetlands,10.496,60.201
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨莫尔·菲斯蒂沃斯|r, 他在楼上
.vendor >>|cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药剂]|cRXP_Buy_|r
>>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Samor Festivus|r没有，请跳过此步骤|r
.target Samor Festivus
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副菲兹莫斯|r
.turnin 288 >>交任务: |cRXP_FRIENDLY_第三舰队|r
step
.goto Wetlands,10.4,56.0,25,0
.goto Wetlands,10.1,56.9,25,0
.goto Wetlands,10.6,57.2,25,0
.goto Wetlands,10.761,56.737
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔·奥雷|r
.vendor >>|cRXP_BUY_BUY a|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Neal Allen|r没有，请跳过此步骤|r

.target Neal Allen
.bronzetube
step
#completewith FinishGnolls
>>杀死|cRXP_ENEMY_Young Wetlands鳄鱼|r。掠夺它们的|cRXX_Loot_Young鳄鱼皮|r
.complete 484,1
.mob Young Wetlands Crocolisk
step
.goto Wetlands,18.06,39.83,50,0
.goto Wetlands,13.73,39.38,50,0
.goto Wetlands,18.06,39.83,50,0
.goto Wetlands,16.26,39.41
>>杀死|cRXP_ENEMY_Bluegill Murlocs|r
>>杀死|cRXP_ENEMY_Gobbler|r。掠夺他的|cRXX_Loot_Head|r
>>|cRXP_ENEMY_Gobbler|r|cRXP_WARN_稍微控制沼泽地|r
.complete 279,1 
.complete 279,2 
.mob Bluegill Murloc
.unitscan Gobbler
step
.goto Wetlands,26.40,25.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗拉德·飞轮|r
.vendor >>|cRXP_BUY_BUY a|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Fradd Swiftgear|r没有，请跳过此步骤|r

.target Fradd Swiftgear
.bronzetube
step
.goto Wetlands,49.916,39.368
.target Einar Stonegrip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃纳尔·石钳|r
.accept 469 >>接任务: |cRXP_LOOT_日常供货|r
step
#completewith next
.goto Wetlands,50.200,37.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉克斯勒|r
.vendor >>|cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药剂]|cRXP_Buy_|r
>>|cRXP_WARN_购买|r|T134413:0|t[Liferoot]|cRXP_WARN_if |cRXP-FRIENDLY_Kixxle|r有库存。您稍后需要它们来执行|r|T132403:0|t[|cFF0070FF旋风斧|r]|cRXP_WARN_quest|r << Warrior
>>|cRXP_WARN_如果您计划为|r[|cFF0070FFBonebiter|r]|cRXP_WARN_运行Scarlet Monastery，您可以跳过此步骤|r << Warrior
>>|cRXP_WARN_这些是限量供应的物品。如果|cRXP_FRIENDLY_Kixxle|r没有任何|r << Warrior
>>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Kixxle|r没有任何|r << !Warrior
.target Kixxle
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
.turnin 463 >>交任务: |cRXP_FRIENDLY_绿色守卫者|r
step
.goto Wetlands,56.37,40.40
.target Rethiel the Greenwarden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
.accept 276 >>接任务: |cRXP_LOOT_践踏之爪|r
step
#completewith FinishGnolls
.goto Wetlands,63.93,63.54,60,0
.goto Wetlands,62.34,69.34,60,0
.goto Wetlands,61.58,73.07,60,0
.goto Wetlands,62.34,69.34
>>杀死|cRXP_ENEMY_Mosshide Gnolls|r和|cRXP_ENEMY_Mosshide Mongrels|r
>>|cRXP_WARN_这是一个很好的农场|r|T132911:0|t[毛布]|cRXP_WARN_to升级您的|r|T135966:0|t[First Aid]|cRXP_WARN_or任何其他可能需要的专业|r
.complete 276,1 
.complete 276,2 
.mob Mosshide Gnoll
.mob Mosshide Mongrel
step
#completewith next
+|cRXP_WARN_继续耕种|r|T132911:0|t[羊毛布]|cRXP_WARN_from|cRXP_ENEMY_Mosshide Gnolls|r和|r|cRXT_ENEMY_Mosshide Mongrels|r|cRXP_WARN_to升级|r|T135966:0|t[急救]|cRXP_WARN_or任何其他可能需要的专业|r
>>|cRXP_WARN_完成后，跳过此步骤|r
step
#label FinishGnolls
.goto Wetlands,56.37,40.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
.turnin 276 >>交任务: |cRXP_FRIENDLY_践踏之爪|r
.accept 277 >>接任务: |cRXP_LOOT_火焰管制|r
.target Rethiel the Greenwarden
step
.goto Wetlands,54.95,44.84,50,0
.goto Wetlands,51.84,37.13,50,0
.goto Wetlands,37.13,35.68,50,0
.goto Wetlands,31.21,37.86,50,0
.goto Wetlands,26.48,40.44,50,0
.goto Wetlands,20.52,45.70,50,0
.goto Wetlands,17.83,50.26,50,0
.goto Wetlands,14.53,47.67,50,0
.goto Wetlands,20.37,45.21
>>杀死|cRXP_ENEMY_Young Wetlands鳄鱼|r。掠夺它们的|cRXX_Loot_Young鳄鱼皮|r
.complete 484,1
.mob Young Wetlands Crocolisk
step
#era
.goto Wetlands,61.91,71.32,-1 
.goto Wetlands,18.67,39.69,-1 
.xp 24
step
#completewith next
.hs >>赫斯到米奈希尔港
>>|cRXP_WARN_如果你已经接近Menethil Harbor，请往回跑|r
.cooldown item,6948,>0,1
step
#completewith next
.goto Wetlands,8.30,58.53,150 >>前往: |cRXP_PICK_湿地|r
step
#som
#phase 3-6
#requires crocs
.hs >>炉背 to Menethil Harbor
>>如果你的炉石还没有烧起来，就去做“流浪爪”任务（如果你还没有）
>>如果需要，购买食物/水
step
#som
#requires crocs
.hs >>炉背 to Menethil Harbor
>>如果需要，购买食物/水
step
#som
#phase 3-6
.goto Wetlands,8.30,58.53
.abandon 276 >>Abandon Tramping Paws
step
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
.turnin 469 >>交任务: |cRXP_FRIENDLY_日常供货|r
.turnin 484 >>交任务: |cRXP_FRIENDLY_小鳄鱼皮|r
.target James Halloran
step
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔·波兰|r
.turnin 279 >>交任务: |cRXP_FRIENDLY_海中的鱼人|r
.target Karl Boran
step
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Ironforge >>飞往铁炉堡
.target Shellei Brondir
step << !Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷格努斯·雷石|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_朱莉·雷线|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,26.295,6.752 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >>训练你的职业技能
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Juli Stormkettle << Mage
.target Brandur Ironhammer << Paladin
step << Mage
.goto Ironforge,25.496,7.080
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔斯塔弗·风暴之眼|r
.trainer >>列车|T135757:0|t[电报：Ironforge]
.target Milstaff Stormeye
step
.goto Ironforge,50.826,5.613
.target Gerrig Bonegrip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛利·硬骨|r
.turnin 968 >>交任务: |cRXP_FRIENDLY_深渊之神|r
.isOnQuest 968
step
.goto Ironforge,67.844,42.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考格斯宾|r
.vendor >>|cRXP_BUY_BUY a|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Gearcutter Cogspeer|r没有，请跳过此步骤|r

.target Gearcutter Cogspinner
.bronzetube
step
.goto Ironforge,72.08,51.87
.target Lomac Gearstrip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛玛克·链带|r
.turnin 1072 >>交任务: |cRXP_FRIENDLY_老同事|r
.isOnQuest 1072
step
.goto Ironforge,76.61,51.28,10,0
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 20-30
#classic
<< Alliance
#name 24-27 Duskwood/Redridge
#next 27-27 Wetlands
step
#completewith next
.goto Stormwind City,55.21,7.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比利巴布·旋轮|r
.vendor >>|cRXP_BUY_BUY a|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Billibub Cogspeer|r没有，请跳过此步骤|r

.bronzetube
.target Billibub Cogspinner
step << Paladin
.goto StormwindClassic,39.80,29.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
.accept 1650 >>接任务: |cRXP_WARN_勇气之书|r
.target Duthorian Rall
step
.goto Stormwind City,64.201,60.575
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·加姆|r
>>|cRXP_BUY_BUY|r|T133849:0|t[暴风调味草药]
.collect 2665,1,90,1 
.target Felicia Gump
step << Warlock
#sticky
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>走进屠宰的羔羊。下楼去
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >>训练你的职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯巴克尔|r
.vendor >>|cRXP_BUY_BUY|r|T133738:0|t[Grimoires]|cRXP_BUY_for your|r|T136220:0|t[Succubus]|cRXP_BUY_您将在一秒钟内拥有它。如果你有多余的黄金，也可以为你的|r|T136221:0|t[Voidwalker]购买
.target Spackle Thornberry
step << Warlock
.goto Stormwind City,25.25,78.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
.turnin 1738 >>交任务: |cRXP_FRIENDLY_同心树|r
.target Gakin the Darkbinder
.accept 1739 >>接任务: |cRXP_LOOT_誓缚|r
step << Warlock
#completewith next
.goto StormwindClassic,25.2,80.7,18,0
.goto StormwindClassic,23.2,79.5,18,0
.goto StormwindClassic,26.3,79.5,18,0
.goto StormwindClassic,25.154,77.406
>>|cRXP_WARN_前往屠宰羔羊的底部|r
.cast 8674 >>|cRXP_WARN_使用|r|T136065:0|t[Heartswod Core]|cRXP_WARN_to调用|r|cRXP-ENEMY_Summed Sucubus|r
.use 6913
step << Warlock
.goto StormwindClassic,25.154,77.406
.use 6913 >>杀死|cRXP_ENEMY_召唤的女妖|r
.complete 1739,1 
.mob Summoned Succubus
step << Warlock
#completewith next
+|cRXP_WARN_您现在可以使用|r|T136220:0|t[Succubus]|cRXP_WARN_or|r|T136221:0|t[虚空行者]|cRX P_WARN_a作为您的宠物|r
>>|cRXP_WARN_|r|T136220:0|t[Succubus]|cRXP_WARN_可造成重大伤害，而|r|T136221:0|t[虚空行者]|cRXP_WARN__可提供更多生存能力|r
step << Warlock
.goto Stormwind City,25.25,78.55
.target Gakin the Darkbinder
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
.turnin 1739 >>交任务: |cRXP_FRIENDLY_誓缚|r
step
.goto Stormwind City,43.088,80.391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科林·玛伦|r
.turnin 1075 >>交任务: |cRXP_FRIENDLY_马伦的卷轴|r
.target Collin Mauren
.accept 1076 >>接任务: |cRXP_WARN_西部荒野中的恶魔|r
step << Rogue
.goto StormwindClassic,52.623,65.701
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板奥里森|r
.home >>将您的炉石设置为暴风城
.target Innkeeper Allison
step << Mage
#completewith next
.goto Stormwind City,56.135,65.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·布舍尔|r
.vendor >>|cRXP_BUY_从她那里购买|r|T134419:0|t[传送符文]|cRXP_Buy_|r
.collect 17031,1 
.target Kyra Boucher
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
>>购买以下物品，很快就能在Duskwood快速上车
>>这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤
>>|T133024:0|t[青铜管]
>>|T133970:0|t[瘦狼腹]
>>|T134321:0|t[Gooey Spider Leg]
.collect 4371,1,174,1 
.collect 1015,10,90,1 
.collect 2251,6,93,1 
.bronzetube
.target Auctioneer Jaxon
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
>>购买以下物品，很快就能在Duskwood快速上车
>>这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤
>>|T133970:0|t[瘦狼腹]
>>|T134321:0|t[Gooey Spider Leg]
.collect 1015,10,90,1 
.collect 2251,6,93,1 
.target Auctioneer Jaxon
step
#completewith next
.goto StormwindClassic,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Westfall >>飞往威斯特福尔
.target Dungar Longdrink
step
.goto Duskwood,7.723,33.301
.target Lars
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔斯|r
>>|cRXP_WARN_不要接受来自|r|cRXP_FRIENDLY_Sven Yorgen的任务Sven的复仇|r
.accept 226 >>接任务: |cRXP_LOOT_恶狼成群|r
step
#som
#phase 3-6
.goto Stormwind City,66.28,62.13
.fly Redridge >>如果你达到25级或更高级别，请飞往雷德里奇
step
#completewith MadEva
.goto Duskwood,48.0,17.2,0
.goto Duskwood,28.1,28.7,0
.goto Duskwood,48.0,17.2,85,0
.goto Duskwood,75.81,45.29,50 >>Travel to Darkshire
step
#completewith next
>>杀死途中的|cRXP_ENEMY_饥饿恐怖狼|r和|cRXX_ENEMY_Rabid恐怖狼|r。掠夺他们的|cRXP_Loot_瘦狼侧翼|r
>>|cRXP_WARN_你现在不必杀死所有|cRXP_ENEMY_Wolves|r。保存|cRXP_LOOT_Lean Wolf Flanks|r以备日后任务使用|r
.complete 226,1 
.complete 226,2 
.collect 1015,10,90,1 
.mob Starving Dire Wolf
.mob Rabid Dire Wolf
.isOnQuest 226
step
#label MadEva
.goto Duskwood,75.81,45.29
.target Madame Eva
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瓦夫人|r
.accept 66 >>接任务: |cRXP_LOOT_斯塔文的传说|r
.accept 101 >>接任务: |cRXP_LOOT_惩罚图腾|r
step << !Rogue
.goto Duskwood,73.872,44.406
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板崔莱尼|r
.home >>将炉石设置为黄昏
.target Innkeeper Trelayne
step
#optional
.goto Duskwood,73.83,44.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师格鲁奥|r
>>|cRXP_WARN_你需要50项烹饪技能才能接受这个任务|r
.accept 90 >>接任务: |cRXP_WARN_干烤狼肉串|r
.turnin 90 >>交任务: |cRXP_FRIENDLY_干烤狼肉串|r
.skill cooking,<50,1 
.itemcount 1015,10 
.target Chef Grual
step
.goto Duskwood,73.59,46.89
.target 指挥官阿尔西娅·埃本洛克
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.accept 56 >>接任务: |cRXP_LOOT_守夜人|r
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_书记员达尔塔|r
.turnin 66 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Clerk Daltry
.accept 67 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
.goto Duskwood,75.33,48.69
.target Elaine Carevin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾莱尼·卡尔文|r
.accept 163 >>接任务: |cRXP_LOOT_乌鸦岭|r
.accept 165 >>接任务: |cRXP_LOOT_隐士|r
step
.abandon 95 >>Abandon Sven's Revenge
step
.goto Duskwood,75.33,48.69
.target Elaine Carevin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾莱尼·卡尔文|r
.accept 164 >>接任务: |cRXP_WARN_斯温的货物|r
>>|cRXP_WARN_如果你不能完成这个任务，你需要从任务日志中放弃斯文的复仇|r
step
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fp Duskwood>>获取Duskwood飞行路线
.target Felicia Maline
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尔伯|r
.vendor >>|cRXP_BUY_BUY a|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Herble Baubbletump|r没有，请跳过此步骤|r

.bronzetube
.target Herble Baubbletump
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 174 >>接任务: |cRXP_WARN_仰望星空|r
.turnin 174 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.itemcount 4371,1 
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 175 >>接任务: |cRXP_WARN_仰望星空|r
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盲眼玛丽|r
.turnin 175 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.accept 177 >>接任务: |cRXP_WARN_仰望星空|r
.target Blind Mary
.isQuestTurnedIn 174
step
#completewith HistoryBook1
>>|cRXP_WARN_如果您掠夺了|T133741:0|t[|cRXP_loot_A旧历史书|r]，则开始任务。这是Duskwood的一个区域性下降|r
.collect 2794,1,337 
.accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
.use 2794 
step
#completewith next
>>杀死|cRXP_ENEMY_Skeletal Warriors|r和|cRXX_ENEMY_Skletal Mages|r
>>|cRXP_ENEMY_骨骼战士|r|cRXP_WARN_apply|r|T132316:0|t[字符串]
>>|cRXP_ENEMY_骷髅法师|r|cRXP_WARN_cast|r|T135846:0|t[霜栓]|cRXP-WARN_还用|r|T135843:0|t[霜甲]诱捕
.complete 56,1 
.complete 56,2 
.mob Skeletal Warrior
.mob Skeletal Mage
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>杀死|cRXP_ENEMY_Insane食尸鬼|r。掠夺他|cRXX_Loot_MMary的镜子|r
>>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.goto Duskwood,80.35,69.31,50,0
.goto Duskwood,77.49,71.30,50,0
.goto Duskwood,79.38,73.70,50,0
.goto Duskwood,79.38,70.28
#label HistoryBook1
>>杀死|cRXP_ENEMY_Skeletal Warriors|r和|cRXX_ENEMY_Skletal Mages|r
>>|cRXP_ENEMY_骨骼战士|r|cRXP_WARN_apply|r|T132316:0|t[字符串]
>>|cRXP_ENEMY_骷髅法师|r|cRXP_WARN_cast|r|T135846:0|t[霜栓]|cRXP-WARN_还用|r|T135843:0|t[霜甲]诱捕
.complete 56,1 
.complete 56,2 
.mob Skeletal Warrior
.mob Skeletal Mage
step
#completewith next
.goto Duskwood,18.203,56.215,50 >>前往Duskwood西部的|cRXP_FRIENDLY_Jitters|r
step
#era/som
#completewith FinishedWolves
>>在Duskwood杀死|cRXP_ENEMY_Spiders|r。掠夺他们的|cRXP_Loot_Gooey蜘蛛腿|r
>>|cRXP_WARN_您还需要1|cRXP_LOOT_Smal Venom Sac|r来完成即将到来的盗贼任务|r << Rogue !Dwarf
.collect 2251,6,93,1 
.collect 1475,1,2359,1 << Rogue !Dwarf 
.mob Pygmy Venom Web Spider
.mob Venom Web Spider
.mob Green Recluse
.mob Black Widow Hatchling
step
.goto Duskwood,18.203,56.215
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基特斯|r
.turnin 163 >>交任务: |cRXP_FRIENDLY_乌鸦岭|r
.accept 5 >>接任务: |cRXP_LOOT_饥肠辘辘的基特斯|r
.target Jitters
step
#completewith BliztikCheck
.goto Duskwood,18.040,54.350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布里兹提克|r, 他在楼上
.vendor >>|cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药剂]|cRXP_Buy_|r
>>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Bliztik|r没有|r
.target Bliztik
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚伯克隆比|r
.turnin 165 >>交任务: |cRXP_FRIENDLY_隐士|r
.target Abercrombie
.accept 148 >>接任务: |cRXP_LOOT_来自夜色镇的货物|r
step
.isQuestTurnedIn 90
.goto Duskwood,9.98,59.57,60,0
.goto Duskwood,10.94,47.07,70,0
.goto Duskwood,9.20,39.04,70,0
.goto Duskwood,13.36,29.08,70,0
.goto Duskwood,22.78,28.18,70,0
.goto Duskwood,36.19,24.67
>>杀死|cRXP_ENEMY_饥饿恐怖狼|r和|cRXX_ENEMY_Rabid恐怖狼|r
.complete 226,1 
.complete 226,2 
.mob Starving Dire Wolf
.mob Rabid Dire Wolf
step
.goto Duskwood,9.98,59.57,60,0
.goto Duskwood,10.94,47.07,70,0
.goto Duskwood,9.20,39.04,70,0
.goto Duskwood,13.36,29.08,70,0
.goto Duskwood,22.78,28.18,70,0
.goto Duskwood,36.19,24.67
>>杀死|cRXP_ENEMY_饥饿恐怖狼|r和|cRXX_ENEMY_Rabid恐怖狼|r.掠夺它们的|cRXD_Loot_瘦狼侧翼|r
.complete 226,1 
.complete 226,2 
.collect 1015,10,90,1 
.mob Starving Dire Wolf
.mob Rabid Dire Wolf
step
#label BliztikCheck
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r
.turnin 164 >>交任务: |cRXP_FRIENDLY_斯温的货物|r
.target Sven Yorgen
.accept 95 >>接任务: |cRXP_LOOT_斯温的复仇|r
step
#label FinishedWolves
.goto Duskwood,7.723,33.301
.target Lars
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔斯|r
.turnin -226 >>交任务: |cRXP_FRIENDLY_恶狼成群|r
step
#era/som
.goto Duskwood,33.6,60.4,100,0
.goto Duskwood,12.2,69.8,100,0
.goto Duskwood,10.6,37.0,100,0
.goto Duskwood,12.8,55.6
>>在Duskwood杀死|cRXP_ENEMY_Spiders|r。掠夺他们的|cRXP_Loot_Gooey蜘蛛腿|r
>>|cRXP_WARN_您还需要1|cRXP_LOOT_Smal Venom Sac|r来完成即将到来的盗贼任务|r << Rogue !Dwarf
.collect 2251,6,93,1 
.collect 1475,1,2359,1 << Rogue !Dwarf 
.mob Pygmy Venom Web Spider
.mob Venom Web Spider
.mob Green Recluse
.mob Black Widow Hatchling
step
#som
#phase 3-6
>>在黄昏杀死蜘蛛
.goto Duskwood,10.69,59.86,90,0
.goto Duskwood,8.82,38.44
.collect 2251,6,93,1
.collect 1475,1,2359,1 << Rogue !Dwarf
>>你需要1个毒液囊才能为即将到来的暴风中的盗贼任务制造出抗毒液 << Rogue !Dwarf
.mob Pygmy Venom Web Spider
.mob Venom Web Spider
.mob Green Recluse
.mob Black Widow Hatchling
step
#completewith next
.zone Westfall >>前往: |cRXP_PICK_西部荒野|r
step
#era
#completewith next << Rogue
.goto Westfall,63.6,51.4,60,0
.goto Westfall,60.6,34.0,60,0
.goto Westfall,45.4,49.6
.goto Westfall,63.8,52.0,0
.goto Westfall,61.8,34.4,0
.goto Westfall,54.6,41.0,0
.goto Westfall,46.8,48.6,0
.goto Westfall,43.6,42.0,0
.goto Westfall,41.0,21.0,0
.goto Westfall,35.8,34.4,0
.goto Westfall,33.8,50.6,0
.goto Westfall,42.6,60.2,0
.goto Westfall,38.8,61.4,0
.goto Westfall,34.8,67.4,0
>>杀死|cRXP_ENEMY_尘魔|r。掠夺他们的|cRXX_Loot_Frasts|r
>>|cRXP_ENEMY_尘魔|r|cRXP_WARN_can在整个西秋季产卵。它们的产卵位置标记在地图上|r
>>|cRXP_WARN_铸造|r|T132172:0|t[Eagle Eye]|cRXP_WARN_to尝试找到它们|r << Hunter
.complete 1076,1
.unitscan Dust Devil
step
#som
#completewith MoonbrookSt
.goto Westfall,40.14,60.85,0
>>寻找尘暴，它们可以在整个区域产卵
>>不要专注于完成此任务
>>用鹰眼找到他们 << Hunter
.complete 1076,1
.unitscan DUST DEVIL
step << Rogue
.goto Westfall,68.50,70.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密探吉尔妮|r
.turnin 2360 >>交任务: |cRXP_FRIENDLY_马迪亚斯和迪菲亚潜行者|r
.target Agent Kearnen
step << Rogue
.goto Westfall,68.50,70.08
.target Agent Kearnen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密探吉尔妮|r
.accept 2359 >>接任务: |cRXP_LOOT_克拉文之塔|r
.isQuestTurnedIn 2360
step << Rogue
.goto Westfall,71.49,73.49,30,0
.goto Westfall,71.01,75.72,30,0
.goto Westfall,69.58,73.07,30,0
.goto Westfall,71.49,73.49,30,0
.goto Westfall,71.01,75.72,30,0
.goto Westfall,69.58,73.07
>>|T133644:0|t[拾取口袋]a|cRXP_ENEMY_ Defias Drone|r变形无人机|r。为|cRXP-Loot_Tower Key而将其偷走|r
>>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
>>|cRXP_WARN_The |cRXP_ENEMY_Malformed Defias Drone|r patrols around the outside of the Tower|r
.complete 2359,2 
.link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cRXP_WARN_单击此处查看视频指南|r
.isOnQuest 2359
.mob Malformed Defias Drone
step << Rogue
.goto Westfall,70.41,73.93
>>|cRXP_WARN_前往塔顶|r
>>打开|cRXP_PICK_Duskwood箱子|r。将其洗劫一空|cRXP _Loot_Klaven Mortwaker's Journal|r
>>|cRXP_WARN_您可以|r|T132310:0|t[Sap]|cRXP_ENEMY_Klaven Mortwake|r|cRXP-WARN_an然后打开|r|cRXP_PICK_Duskwood胸脯|r
>>|cRXP_WARN_如果您的|r|T132310:0|t[Sap]|cRXP_WARN_resists或miss，请施放|r|T132331:0|t[Vanish]|cRXP_WARN_an，然后重试或跳下重置。或者，您可以稍后回来完成|r
.complete 2359,1 
.link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cRXP_WARN_单击此处查看视频指南|r
.isOnQuest 2359
step << Rogue
#era
.goto Westfall,63.6,51.4,60,0
.goto Westfall,60.6,34.0,60,0
.goto Westfall,45.4,49.6
.goto Westfall,63.8,52.0,0
.goto Westfall,61.8,34.4,0
.goto Westfall,54.6,41.0,0
.goto Westfall,46.8,48.6,0
.goto Westfall,43.6,42.0,0
.goto Westfall,41.0,21.0,0
.goto Westfall,35.8,34.4,0
.goto Westfall,33.8,50.6,0
.goto Westfall,42.6,60.2,0
.goto Westfall,38.8,61.4,0
.goto Westfall,34.8,67.4,0
>>杀死|cRXP_ENEMY_尘魔|r。掠夺他们的|cRXX_Loot_Frasts|r
>>|cRXP_ENEMY_尘魔|r|cRXP_WARN_can在整个西秋季产卵。它们的产卵位置标记在地图上|r
.complete 1076,1
.unitscan Dust Devil
step
.goto Westfall,41.51,66.72
>>单击地面上的|cRXP_PICK_Old Footlocker|r
.turnin 67 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.accept 68 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Druid
#completewith next
.goto Westfall,17.928,33.099,50 >>Swim out to sea
step << Druid
.goto Westfall,17.928,33.099
>>打开|cRXP_PICK_Strange锁箱|r。为|cRXP_Loot_水上耐力半挂件|r将其偷走
.collect 15882,1,272,1 
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
step << Druid
.goto Moonglade,36.0,41.4
.use 15883 >>|cRXP_WARN_使用|r|T133443:0|t[水上敏捷的半挂件]|cRXP_WARN_将其与|r|T133442:0|t[水上耐力的半挂饰]|cRXP_WARN_a组合到雷穆洛斯神殿|r
.complete 272,1 
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
>>|cRXP_WARN_这将节省你的时间|r
step << Druid
.goto Moonglade,56.209,30.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
.turnin 272 >>交任务: |cRXP_FRIENDLY_海狮试炼|r
.accept 5061 >>接任务: |cRXP_LOOT_水栖形态|r
.target Dendrite Starblaze
step << Druid
.goto Moonglade,52.53,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.trainer >>训练你的职业技能
.target Loganaar
step << Druid
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
.goto Moonglade,44.147,45.225
.fly Teldrassil>>飞往Teldrassil
.target Silva Fil'naveth
step << Druid
.goto Darnassus,35.375,8.405
.target Mathrengyl Bearwalker
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
.turnin 5061 >>交任务: |cRXP_FRIENDLY_水栖形态|r
step << Rogue
.hs >>从火炉到暴风
.cooldown item,6948,>0,1
step << Rogue
#completewith next
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
.fly Stormwind >>飞到暴风城
.target Thor
.zoneskip Stormwind City
step << Rogue
.isQuestComplete 1076
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科林·玛伦|r
.turnin 1076 >>交任务: |cRXP_FRIENDLY_西部荒野中的恶魔|r
.target Collin Mauren
step << Rogue
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
.goto Stormwind City,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
.turnin 2359 >>交任务: |cRXP_FRIENDLY_克拉文之塔|r
.target Master Mathias Shaw
.accept 2607 >>接任务: |cRXP_LOOT_赞吉尔之触|r
step << Rogue
#completewith next
.goto StormwindClassic,78.86,58.85,9 >>深入地下室
step << Rogue
.goto StormwindClassic,78.03,58.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_道克·米希匹克斯|r
.target Doc Mixilpixil
.turnin 2607 >>交任务: |cRXP_FRIENDLY_赞吉尔之触|r

step << Rogue !Dwarf
.goto Stormwind City,42.8,26.6
.train 7934 >>|cRXP_WARN_级别|r|T135966:0|t[急救]|cRXP_WARN_to 80|r
>>|cRXP_WARN_制作一个|r|T134437:0|t[抗毒液]|cRXP_WARN_to移除|r|T136230:0|t[Zanzil之触]|cRXP_WARN_debuff|r
>>|cRXP_WARN_如果您有一个|r|T626003:0|t|cFFF48CBAAladin|r|cRXP_WARN_or|r|T725999:0|t|c FFFF7C0ADruid|r|cRXP_WARN_friend，您可以跳过此步骤，并要求他们为您删除它|r
step << Rogue
.goto Stormwind City,66.27,62.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Duskwood>>飞到黄昏
.target Dungar Longdrink
step << Paladin
.goto Westfall,42.5,88.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达芙妮·斯迪威尔|r
.turnin 1650 >>交任务: |cRXP_FRIENDLY_勇气之书|r
.target Daphne Stilwell
.accept 1651 >>接任务: |cRXP_WARN_勇气之书|r
step << Paladin
.goto Westfall,42.5,88.6
.complete 1651,1 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达芙妮·斯迪威尔|r
.turnin 1651 >>交任务: |cRXP_FRIENDLY_勇气之书|r
.target Daphne Stilwell
.accept 1652 >>接任务: |cRXP_WARN_勇气之书|r
step << !Rogue
.hs >>赫斯到达克希尔
.cooldown item,6948,>0,1
step << !Rogue
#completewith next
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
.fly Darkshire >>飞到Darkhire
.target Thor
.zoneskip Duskwood
step
#optional
.goto Duskwood,73.83,44.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师格鲁奥|r
>>|cRXP_WARN_你需要50项烹饪技能才能接受这个任务|r
.accept 90 >>接任务: |cRXP_WARN_干烤狼肉串|r
.turnin 90 >>交任务: |cRXP_FRIENDLY_干烤狼肉串|r
.skill cooking,<50,1 
.itemcount 1015,10 
.target Chef Grual
step
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师格鲁奥|r
.turnin 5 >>交任务: |cRXP_FRIENDLY_饥肠辘辘的基特斯|r
.target Chef Grual
.accept 93 >>接任务: |cRXP_LOOT_黑蟹蛋糕|r
step
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师格鲁奥|r
.target Chef Grual
.turnin 93 >>交任务: |cRXP_FRIENDLY_黑蟹蛋糕|r
.isQuestComplete 93
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.turnin 56 >>交任务: |cRXP_FRIENDLY_守夜人|r
.target 指挥官阿尔西娅·埃本洛克
.accept 57 >>接任务: |cRXP_LOOT_守夜人|r
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_书记员达尔塔|r
.turnin 68 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Clerk Daltry
.accept 69 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瓦夫人|r
.turnin 148 >>交任务: |cRXP_FRIENDLY_来自夜色镇的货物|r
.target Madame Eva
.accept 149 >>接任务: |cRXP_LOOT_幽灵的发丝|r
step
.isQuestComplete 177
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.turnin 177 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.target Viktori Prism'Antras
step
#completewith DockmasterBaren
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Redridge >>飞到雷德里奇山脉
.target Felicia Maline
step
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官马瑞斯|r
.accept 20 >>接任务: |cRXP_LOOT_黑石氏族的威胁|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r
.goto Redridge Mountains,32.13,48.63
.target Foreman Oslow
.accept 347 >>接任务: |cRXP_WARN_瑞斯班矿石|r
.isQuestTurnedIn 345
step
#label DockmasterBaren
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员巴伦|r
.accept 127 >>接任务: |cRXP_LOOT_卖鱼|r
.accept 150 >>接任务: |cRXP_LOOT_鱼人偷猎者|r
step
.dungeon Stockades
.goto Redridge Mountains,26.258,46.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵伯尔顿|r
.accept 386 >>接任务: |cRXP_WARN_伸张正义|r
.target Guard Berton
step
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
.accept 34 >>接任务: |cRXP_WARN_不速之客|r
.xp <24,1
step
.goto Redridge Mountains,15.68,49.30
>>杀死|cRXP_ENEMY_Bellygrub|r。掠夺他的|cRXX_Loot_TASK|r
.complete 34,1
.mob Bellygrub
.xp <24,1
step
#completewith Rethban
.goto Redridge Mountains,20.05,27.48,20 >>进入Rethban洞穴
step
.goto Redridge Mountains,19.04,23.48
>>杀死|cRXP_ENEMY_Redridge Drudger|r。掠夺他们的|cRXP_Loot_Ore|r
>>|cRXP_ENEMY_Redridge Bashers|r|cRXP_WARN_also与|cRXP-ENEMY_Redridge Drudger|r共享产卵，因此您可能需要杀死它们才能使其产卵|r
>>|cRXP_ENEMY_Redridge Drudger|r|cRXP_WARN_attack非常快，并且|cRXP-ENEMY_Redridge Bashers|r具有|r|T132154:0|t[击倒]|cRXP_WARN_tun|r
>>|cRXP_WARN_您也可以通过|r|T134708:0|t[采矿]|cRXP_WARN_the|r|T134566:0|t[铜脉]|cRXP_WARN_and|r|T134579:0|t[锡脉]|cRXP_WARN_in the Rethban Cavens获得它们|r
.complete 347,1 
.skill mining,<1,1 
.mob Redridge Drudger
step
#label Rethban
>>杀死|cRXP_ENEMY_Redridge Drudger|r。掠夺他们的|cRXP_Loot_Ore|r
>>|cRXP_ENEMY_Redridge Bashers|r|cRXP_WARN_also与|cRXP-ENEMY_Redridge Drudger|r共享产卵，因此您可能需要杀死它们才能使其产卵|r
>>|cRXP_ENEMY_Redridge Drudger|r|cRXP_WARN_attack非常快，并且|cRXP-ENEMY_Redridge Bashers|r具有|r|T132154:0|t[击倒]|cRXP_WARN_tun|r
.goto Redridge Mountains,19.04,23.48
.complete 347,1 
.mob Redridge Drudger
step
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
.turnin 34 >>交任务: |cRXP_FRIENDLY_不速之客|r
.isQuestComplete 34
step
#completewith next
.goto Redridge Mountains,56.4,51.8,0
>>杀死|cRXP_ENEMY_Murloc侦察兵|r和|cRXD_ENEMY_ Murloc Tidecaller|r。掠夺他们的|cRXP_Loot_Fins |r和| cRXP_Loot_Sunfish|r
.collect 1468,8,150,1 
.complete 127,1 
.mob Murloc Scout
.mob Murloc Tidecaller
.isOnQuest 150
.isOnQuest 127
step
#label orcs
>>杀死|cRXP_ENEMY_Blackrock Grunts|r和|cRXD_ENEMY_ Blackrock Outrunners|r。掠夺他们的|cRXP_Loot_Axes|r
>>|cRXP_WARN_请注意，|cRXP_ENEMY_Blackrock Outrunners|r将向您投掷|r|T132149:0|t[Net]|cRXP-WARN_on|r
>>|cRXP_WARN_在杀死|cRXP_ENEMY_Orcs|r和地图西南部标记的|cRXP-ENEMY_Murlocs|r之间交替|r
.goto Redridge Mountains,61.76,43.51
.complete 20,1 
.isOnQuest 20
.mob Blackrock Grunt
.mob Blackrock Outrunner
step
.goto Redridge Mountains,56.4,51.8
>>杀死|cRXP_ENEMY_Murloc侦察兵|r和|cRXD_ENEMY_ Murloc Tidecaller|r。掠夺他们的|cRXP_Loot_Fins |r和| cRXP_Loot_Sunfish|r
.collect 1468,8,150,1 
.complete 127,1 
.mob Murloc Scout
.mob Murloc Tidecaller
step
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官马瑞斯|r
.turnin 20 >>交任务: |cRXP_FRIENDLY_黑石氏族的威胁|r
.isQuestComplete 20
step
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员巴伦|r
.turnin 127 >>交任务: |cRXP_FRIENDLY_卖鱼|r
.isQuestComplete 127
step
.goto Redridge Mountains,27.724,47.377
.target Dockmaster Baren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员巴伦|r
.turnin 150 >>交任务: |cRXP_FRIENDLY_鱼人偷猎者|r
.isQuestComplete 150
step
.group
.goto Redridge Mountains,26.75,46.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t单击|cRXP_FRIENDLY_The Wanted Poster|r
.accept 180 >>接任务: |cRXP_WARN_通缉：范高雷中尉|r
step << !Warlock !Priest
.solo
.goto Redridge Mountains,26.75,46.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t单击|cRXP_FRIENDLY_The Wanted Poster|r
.accept 180 >>接任务: |cRXP_WARN_通缉：范高雷中尉|r
step
.goto Redridge Mountains,29.71,44.26
.target Bailiff Conacher
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜里弗·科纳彻尔|r
.accept 91 >>接任务: |cRXP_LOOT_所罗门的律法|r
step
#completewith DeliverThread
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Duskwood >>飞到黄昏
.target Ariena Stormfeather
.zoneskip Duskwood
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尔伯|r
.vendor >>|cRXP_BUY_BUY a|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Herble Baubbletump|r没有，请跳过此步骤|r

.bronzetube
.target Herble Baubbletump
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 174 >>接任务: |cRXP_WARN_仰望星空|r
.turnin 174 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.itemcount 4371,1 
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 175 >>接任务: |cRXP_WARN_仰望星空|r
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盲眼玛丽|r
.turnin 175 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.accept 177 >>接任务: |cRXP_WARN_仰望星空|r
.target Blind Mary
.isQuestTurnedIn 174
step
#completewith next
>>|cRXP_WARN_如果您掠夺了|T133741:0|t[|cRXP_loot_A旧历史书|r]，则开始任务。这是Duskwood的一个区域性下降|r
.collect 2794,1,337 
.accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
.use 2794 
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>杀死|cRXP_ENEMY_Insane食尸鬼|r。掠夺他|cRXX_Loot_MMary的镜子|r
>>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.isQuestComplete 177
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.turnin 177 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.target Viktori Prism'Antras
step
.goto Duskwood,81.98,59.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盲眼玛丽|r
.turnin 149 >>交任务: |cRXP_FRIENDLY_幽灵的发丝|r
.target Blind Mary
.accept 154 >>接任务: |cRXP_LOOT_归还梳子|r
step
#label DeliverThread
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瓦夫人|r
.turnin 154 >>交任务: |cRXP_FRIENDLY_归还梳子|r
.target Madame Eva
.accept 157 >>接任务: |cRXP_LOOT_幽灵的发丝|r
step
.dungeon Stockades
.goto Duskwood,71.938,47.778
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_议员米尔斯迪普|r
.accept 377 >>接任务: |cRXP_WARN_罪与罚|r
.target Councilman Millstipe
step
.isQuestTurnedIn 93
.goto Duskwood,73.88,43.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师格鲁奥|r
.accept 240 >>接任务: |cRXP_LOOT_基特斯的美餐|r
.target Chef Grual
step
.goto Duskwood,49.85,77.71
>>点击地面上的|cRXP_PICK_松散泥土丘|r
.turnin 95 >>交任务: |cRXP_FRIENDLY_斯温的复仇|r
.accept 230 >>接任务: |cRXP_LOOT_斯温的营地|r
step
.goto Duskwood,18.37,56.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基特斯|r
.turnin 240 >>交任务: |cRXP_FRIENDLY_基特斯的美餐|r
.target Jitters
step
#completewith BliztikCheck
.goto Duskwood,18.040,54.350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布里兹提克|r, 他在楼上
.vendor >>|cRXP_BUY_购买尽可能多的|r|T134831:0|t[治疗药剂]|cRXP_Buy_|r
>>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Bliztik|r没有|r
.target Bliztik
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚伯克隆比|r
.turnin 157 >>交任务: |cRXP_FRIENDLY_幽灵的发丝|r
.target Abercrombie
.accept 158 >>接任务: |cRXP_LOOT_僵尸|r
step
#label BliztikCheck
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r
.turnin 230 >>交任务: |cRXP_FRIENDLY_斯温的营地|r
.target Sven Yorgen
.accept 262 >>接任务: |cRXP_LOOT_模糊的人影|r
step
.goto Duskwood,21.35,46.80
.xp 25+29845 >>升级到29845+/34000xp
step
#completewith next
.dungeon Stockades
+你很快就要去暴风城了，试着为The Stockades找一个团队
step
.goto Elwynn Forest,43.771,65.803,100 >>Travel to Goldshire
.isOnQuest 69
step
.goto Elwynn Forest,43.771,65.803
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板法雷|r
.turnin 69 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Innkeeper Farley
.accept 70 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
#completewith next
.goto Elwynn Forest,43.877,66.546,9 >>上楼去
step
.goto Elwynn Forest,44.302,65.823
>>打开|cRXP_PICK_储物箱|r。将其洗劫一空|cRXP_Loot_一封未送达的信件|r
.complete 70,1
step
#completewith next
.goto Elwynn Forest,48.82,41.65,40 >>前往北郡修道院
step
.goto Elwynn Forest,49.60,40.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕克斯顿修士|r
>>|cRXP_FRIENDLY_帕克斯顿兄弟|r|cRXP_WARN_i在一楼|r
.turnin 347 >>交任务: |cRXP_FRIENDLY_瑞斯班矿石|r
.target Brother Paxton
.accept 346 >>接任务: |cRXP_WARN_克里斯托弗的书|r
.isQuestTurnedIn 345
step << !Mage
#completewith next
.goto Elwynn Forest,45.19,49.40,40,0
.goto Stormwind City,69.96,86.90
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
step
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科林·玛伦|r
.turnin 1076 >>交任务: |cRXP_FRIENDLY_西部荒野中的恶魔|r
.target Collin Mauren
step << Mage
#completewith next
.goto Stormwind City,56.135,65.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·布舍尔|r
.vendor >>|cRXP_BUY_从她那里购买2|r|T134419:0|t[传送符文]|cRXP_Buy_|r
.collect 17031,2 
.target Kyra Boucher
step
#sticky
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>走向屠宰的羔羊，然后下楼
step
.goto Stormwind City,26.44,78.66
.target Zardeth of the Black Claw
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑爪加尔德斯|r
.accept 335 >>接任务: |cRXP_LOOT_名酿|r
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >>训练你的职业技能
.target Ursula Deline
step
.goto Stormwind City,29.528,61.924
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_管理员弗索姆|r
.turnin 70 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Caretaker Folsom
.accept 72 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
.goto Stormwind City,29.44,61.52
>>单击地面上的|cRXP_PICK_Sealed Crate|r
.turnin 72 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙德拉斯·月树|r
.trainer >>训练你的职业技能
.target Sheldras Moontree
step
.goto Stormwind City,45.697,38.422
.target Brother Kristoff
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克里斯托弗修士|r
.turnin 346 >>交任务: |cRXP_FRIENDLY_克里斯托弗的书|r
.isOnQuest 346
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
.target Duthorian Rall
.turnin 1652 >>交任务: |cRXP_FRIENDLY_勇气之书|r
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >>训练你的职业技能
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
.goto StormwindClassic,38.54,26.86
.trainer >>训练你的职业技能
.target Brother Joshua
step
.goto Stormwind City,40.551,30.959
.target Brother Sarno
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔努修士|r
>>|cRXP_WARN_如果您低于26级，请跳过此步骤|r
.accept 2923 >>接任务: |cRXP_LOOT_工匠大师欧沃斯巴克|r
.xp <26,1
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >>训练你的职业技能
.target Einris Brightspear
step
#optional
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >>前往暴风要塞
step
#optional
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔顿·西弗|r
>>|cRXP_WARN_如果您找到了|T133741:0|t[|cRXP_OOT_An Old History Book|r]，您可以将其交上来|r
.turnin 337 >>交任务: |cRXP_FRIENDLY_一本破旧的历史书|r
.use 2794 
.itemcount 2794,1 
.target Milton Sheaf
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >>训练你的职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >>训练你的职业技能
.target Osborne the Night Man
step
.dungeon Stockades
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70,40,0
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70
.line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼科瓦·拉斯克|r
>>|cRXP_FRIENDLY_Nikova Raskol|r|cRXP_WARN_trols在老城|r
.accept 388 >>接任务: |cRXP_WARN_鲜血的颜色|r
.unitscan Nikova Raskol
step
.dungeon Stockades
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_典狱官塞尔沃特|r
.accept 391 >>接任务: |cRXP_WARN_监狱暴动|r
.accept 387 >>接任务: |cRXP_WARN_镇压暴动|r
.target Warden Thelwater
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,42.435,59.236,10,0
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_典狱官塞尔沃特|r
.accept 387 >>接任务: |cRXP_WARN_镇压暴动|r
.target Warden Thelwater
step
.dungeon Stockades
.goto StormwindClassic,39.834,54.360
+找一个小组到The Stockades
.zoneskip Stormwind City,1 
step
.dungeon Stockades
#label stock1
#sticky
>>杀死|cRXP_ENEMY_Defias|r。掠夺他们的|cRXX_Loot_Bandanas|r
.complete 387,1 
.complete 387,2 
.complete 387,3 
.complete 388,1 
step
.dungeon Stockades
#label stock2
#sticky
>>杀死恐惧者|cRXP_ENEMY_Targorr|r。掠夺他的|cRXD_Loot_Head |r。|cRXX_ENEMY_Talgorr|r有一个随机产卵位置
>>杀死监狱西翼的|cRXP_ENEMY_Dextren Ward|r。抢劫他的|cRXP_Loot_Hand|r
.complete -386,1 
.complete -377,1 
.mob Targorr the Dread
.mob Dextren Ward
step
.dungeon Stockades
#label Bazil
>>杀死东部监狱侧翼的|cRXP_ENEMY_Bazil Thredd|r。抢劫他的|cRXP_Loot_Head|r
>>|cRXP_WARN_确保您有3|r|T132905:0|t[丝绸]|cRXP_WARN_form用于此任务链的后续任务|r
.complete 391,1 
.collect 4306,3,2746,1 
.isOnQuest 391
.mob Bazil Thredd
step
.dungeon Stockades
#requires stock1
step
.dungeon Stockades
#requires stock2
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_典狱官塞尔沃特|r
.turnin 387 >>交任务: |cRXP_FRIENDLY_镇压暴动|r
.turnin 391 >>交任务: |cRXP_FRIENDLY_监狱暴动|r
.accept 392 >>接任务: |cRXP_WARN_好奇的访客|r
.target Warden Thelwater
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,41.102,58.091
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_典狱官塞尔沃特|r
.turnin 387 >>交任务: |cRXP_FRIENDLY_镇压暴动|r
.target Warden Thelwater
step
.dungeon Stockades
.goto StormwindClassic,49.194,30.283
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
.turnin 392 >>交任务: |cRXP_FRIENDLY_好奇的访客|r
.accept 393 >>接任务: |cRXP_WARN_往日的阴影|r
.target Baros Alexston
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70,40,0
.goto StormwindClassic,69.25,39.63,40,0
.goto StormwindClassic,71.28,41.37,40,0
.goto StormwindClassic,73.33,45.65,40,0
.goto StormwindClassic,72.44,47.70
.line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼科瓦·拉斯克|r
>>|cRXP_FRIENDLY_Nikova Raskol|r|cRXP_WARN_trols在老城|r
.turnin 388 >>交任务: |cRXP_FRIENDLY_鲜血的颜色|r
.unitscan Nikova Raskol
step
.dungeon Stockades
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Master Mathias Shaw|r
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
.turnin 393 >>交任务: |cRXP_FRIENDLY_往日的阴影|r
.accept 350 >>接任务: |cRXP_WARN_老朋友|r
.target Master Mathias Shaw
.isQuestTurnedIn 389
step
.dungeon Stockades
.goto StormwindClassic,61.166,64.051,8,0
.goto StormwindClassic,59.908,64.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃林·提亚斯|r, 他在楼上
.turnin 350 >>交任务: |cRXP_FRIENDLY_老朋友|r
.target Elling Trias
.isQuestTurnedIn 389
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankwithdraw 1083 >>从您的银行提取以下项目：
>>|T133277:0|t[亚速拉铭文] 
.target Newton Burnside
step
#completewith ShadowyRot
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Darkshire >>飞到黄昏
.target Dungar Longdrink
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尔伯|r
.vendor >>|cRXP_BUY_BUY a|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Herble Baubbletump|r没有，请跳过此步骤|r

.bronzetube
.target Herble Baubbletump
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 174 >>接任务: |cRXP_WARN_仰望星空|r
.turnin 174 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.itemcount 4371,1 
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
.target Viktori Prism'Antras
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 175 >>接任务: |cRXP_WARN_仰望星空|r
.isQuestTurnedIn 174
step
.goto Duskwood,81.46,59.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盲眼玛丽|r
.turnin 175 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.accept 177 >>接任务: |cRXP_WARN_仰望星空|r
.target Blind Mary
.isQuestTurnedIn 174
step
#completewith next
>>|cRXP_WARN_如果您掠夺了|T133741:0|t[|cRXP_loot_A旧历史书|r]，则开始任务。这是Duskwood的一个区域性下降|r
.collect 2794,1,337 
.accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
.use 2794 
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>杀死|cRXP_ENEMY_Insane食尸鬼|r。掠夺他|cRXX_Loot_MMary的镜子|r
>>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.isQuestComplete 177
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.turnin 177 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.target Viktori Prism'Antras
step
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瓦夫人|r
.turnin 262 >>交任务: |cRXP_FRIENDLY_模糊的人影|r
.target Madame Eva
.accept 265 >>接任务: |cRXP_LOOT_继续搜寻|r
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_书记员达尔塔|r
.turnin 265 >>交任务: |cRXP_FRIENDLY_继续搜寻|r
.target Clerk Daltry
.accept 266 >>接任务: |cRXP_LOOT_调查旅店|r
step
.dungeon Stockades
.goto Duskwood,71.938,47.778
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_议员米尔斯迪普|r
.turnin 377 >>交任务: |cRXP_FRIENDLY_罪与罚|r
.target Councilman Millstipe
step
#label ShadowyRot
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板斯密茨|r
.turnin 158 >>交任务: |cRXP_FRIENDLY_僵尸|r
.target Tavernkeep Smitts
.accept 156 >>接任务: |cRXP_LOOT_收集腐败之花|r
.turnin 266 >>交任务: |cRXP_FRIENDLY_调查旅店|r
.accept 453 >>接任务: |cRXP_LOOT_搜寻乌鸦岭|r
step << Rogue
.goto Duskwood,73.872,44.406
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板崔莱尼|r
.home >>将炉石设置为黄昏
.target Innkeeper Trelayne
step
#completewith HistoryBook
>>|cRXP_WARN_如果您掠夺了|T133741:0|t[|cRXP_loot_A旧历史书|r]，则开始任务。这是Duskwood的一个区域性下降|r
.collect 2794,1,337 
.accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
.use 2794 
step
#completewith next
.goto Duskwood,22.95,44.75,150 >>前往Raven Hill公墓
step
.goto Duskwood,22.95,44.75,80,0
.goto Duskwood,20.39,47.02,70,0
.goto Duskwood,15.07,46.91,70,0
.goto Duskwood,15.65,42.81,70,0
.goto Duskwood,18.30,47.75,70,0
.goto Duskwood,22.11,46.93,70,0
.goto Duskwood,23.68,42.13,70,0
.goto Duskwood,21.21,47.07
>>杀死|cRXP_ENEMY_Skeletal Fiends|r和|cRXD_ENEMY_ Skeletal Horrors|r。掠夺它们的|cRXP_Loot_Rot Blossoms|r
.complete 57,1 
.complete 57,2 
.complete 156,1 
.mob Skeletal Fiend
.mob Skeletal Horror
step
.goto Duskwood,18.37,56.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基特斯|r
.turnin 453 >>交任务: |cRXP_FRIENDLY_搜寻乌鸦岭|r
.target Jitters
.accept 268 >>接任务: |cRXP_LOOT_回复斯温|r
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r
.turnin 268 >>交任务: |cRXP_FRIENDLY_回复斯温|r
.target Sven Yorgen
step
.group 2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r
.accept 323 >>接任务: |cRXP_LOOT_证明你的实力|r
.target Sven Yorgen
step
.group 2
.goto Duskwood,16.01,38.79
>>杀死|cRXP_ENEMY_Skeletal Raiders|r、|cRXD_ENEMY_ Skeletal Healers|r和|cRXP_ENEMY_Skletal Warders|r
>>|cRXP_WARN_输入|r|cRXP_ENEMY_Skeletal Warders的黎明木墓穴|r
>>|cRXP_ENEMY_早上|r|cRXP_WARN_a 35级精英在墓地周围巡逻。小心他|r
.complete 323,1 
.complete 323,2 
.complete 323,3 
.mob Skeletal Raider
.mob Skeletal Healer
.mob Skeletal Warder
.unitscan Mor'Ladim
step
.group
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r
.turnin 323 >>交任务: |cRXP_FRIENDLY_证明你的实力|r
.target Sven Yorgen
.accept 269 >>接任务: |cRXP_LOOT_寻求指引|r
step
>>升级直到炉石冷却结束
.hs >>赫斯到达克希尔
.cooldown item,6948,<0
step
#completewith dusk2
.hs >>赫斯到达克希尔
.cooldown item,6948,>0,1
step
#label dusk2
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板斯密茨|r
.turnin 156 >>交任务: |cRXP_FRIENDLY_收集腐败之花|r
.target Tavernkeep Smitts
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.turnin 57 >>交任务: |cRXP_FRIENDLY_守夜人|r
.target 指挥官阿尔西娅·埃本洛克
step
#label HistoryBook
#completewith RRstart2
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Redridge >>飞到雷德里奇山脉
.target Felicia Maline
.zoneskip Redridge Mountains
step
#era
.group
.goto Redridge Mountains,31.53,57.85
.target Guard Howe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵豪维|r
.accept 128 >>接任务: |cRXP_LOOT_悬赏：黑石氏族|r
step
.group
#label RRstart2
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官马瑞斯|r
.accept 19 >>接任务: |cRXP_LOOT_萨瑞尔祖恩|r
.accept 115 >>接任务: |cRXP_LOOT_暗影魔法|r
.isQuestTurnedIn 20
step
.goto Redridge Mountains,31.00,47.30
.target Verner Osgood
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
.accept 126 >>接任务: |cRXP_WARN_群山中的嚎叫|r
.isQuestTurnedIn 124
step
.group
.goto Redridge Mountains,29.622,46.172
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t单击|cRXP_FRIENDLY_The Wanted Poster|r
.accept 169 >>接任务: |cRXP_WARN_通缉：加塞尔佐格|r
step
.dungeon Stockades
.goto Redridge Mountains,26.258,46.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵伯尔顿|r
.turnin 386 >>交任务: |cRXP_FRIENDLY_伸张正义|r
.target Guard Berton
step
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
.accept 34 >>接任务: |cRXP_WARN_不速之客|r
step
.goto Redridge Mountains,15.68,49.30
>>杀死|cRXP_ENEMY_Bellygrub|r。掠夺他的|cRXX_Loot_TASK|r
.complete 34,1
.mob Bellygrub
step
#label RRstart2 << !Hunter !Warlock
.goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
.turnin 34 >>交任务: |cRXP_FRIENDLY_不速之客|r
step
.goto Redridge Mountains,23.77,30.48,80,0
.goto Redridge Mountains,27.58,21.78
>>杀死|cRXP_ENEMY_Yowler|r。掠夺他的|cRXX_Loot_Paw|r
>>|cRXP_WARN_Split pull him using |r|T135857:0|t[Blizzard]|cRXP_WARN_or|r|T135826:0|t[Flamesstrike] << Mage
.complete 126,1 
.mob Yowler
step
#completewith next
>>杀死|cRXP_ENEMY_Shadowwhides |r。掠夺他们的|cRXX_Loot_Pendints|r
.complete 91,1 
.mob Rabid Shadowhide Gnoll
.mob Shadowhide Gnoll
.mob Shadowhide Assassin
.mob Shadowhide Warrior
.mob Shadowhide Darkweaver
.mob Shadowhide Slayer
.isOnQuest 91
step
#label fangore
.goto Redridge Mountains,80.17,37.05
>>杀死|cRXP_ENEMY_Fangore|r中尉。掠夺他的|cRXX_Loot_Paw|r
>>|cRXP_ENEMY_Fangore中尉|r|cRXP_WARN_将与另外两名|cRXP-ENEMY_Gnolls|r交战。如果你不自信，请跳过这一步|r << !Warlock !Priest
>>|cRXP_ENEMY_Fangore|r|cRXP_WARN_i中尉对阴影伤害免疫。请确保您有可以提供帮助的党员，否则您可能会跳过此步骤|r << Warlock/Priest
.complete 180,1 
.isOnQuest 180
.unitscan Lieutenant Fangore
step
.goto Redridge Mountains,75.49,41.57,60,0
.goto Redridge Mountains,80.09,36.68,60,0
.goto Redridge Mountains,80.69,46.28,60,0
.goto Redridge Mountains,77.62,42.28,60,0
.goto Redridge Mountains,77.52,36.31
>>杀死|cRXP_ENEMY_Shadowwhides |r。掠夺他们的|cRXX_Loot_Pendints|r
.complete 91,1 
.mob Rabid Shadowhide Gnoll
.mob Shadowhide Gnoll
.mob Shadowhide Assassin
.mob Shadowhide Warrior
.mob Shadowhide Darkweaver
.mob Shadowhide Slayer
.isOnQuest 91
step
.goto Redridge Mountains,84.50,46.80
>>单击|cRXP_PICK_老狮子雕像|r
.turnin 94 >>交任务: |cRXP_FRIENDLY_法师的眼线|r
.isOnQuest 94
step
.group
.goto Redridge Mountains,84.50,46.80
>>单击|cRXP_PICK_老狮子雕像|r
.accept 248 >>接任务: |cRXP_LOOT_监视|r
.isQuestTurnedIn 94
step
.group 3
.goto Redridge Mountains,63.246,49.840
>>点击石望塔顶部桶上的|cRXP_PICK_An Empty Jar|r
>>|cRXP_WARN_不接受后续跟进|r
.turnin 248 >>交任务: |cRXP_FRIENDLY_监视|r
.isOnQuest 248
step
.group 3
#completewith Gath
>>杀死|cRXP_ENEMY_Blackrock Shadowcaster|r。掠夺他们的|cRXX_Loot_Orbs|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step
.group 3
#completewith next
.goto Redridge Mountains,71.40,55.07
>>杀死|cRXP_ENEMY_Tharil'zun|r。掠夺他的|cRXP_Loot_Head|r
.complete 19,1 
.mob Tharil'zun
.isOnQuest 19
step
#label Gath
.group 5
.goto Redridge Mountains,69.599,55.797
>>Enter Stonewatch Keep
>>杀死|cRXP_ENEMY_Gath'Izog|r。掠夺他的|cRXP_Loot_Head|r
.complete 169,1 
.mob Gath'Ilzogg
.isOnQuest 169
step
#completewith next
>>杀死|cRXP_ENEMY_Blackrock Shadowcaster|r。掠夺他们的|cRXX_Loot_Orbs|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step
.group 3
.goto Redridge Mountains,71.40,55.07
>>杀死|cRXP_ENEMY_Tharil'zun|r。掠夺他的|cRXP_Loot_Head|r
.complete 19,1 
.mob Tharil'zun
.isOnQuest 19
step
.group 3
.goto Redridge Mountains,66.68,56.26
>>杀死|cRXP_ENEMY_Blackrock Shadowcaster|r。掠夺他们的|cRXX_Loot_Orbs|r
.complete 115,1 
.mob Blackrock Shadowcaster
.isOnQuest 115
step
#completewith next
.group
.goto Redridge Mountains,32.484,6.761,30 >>Enter Render's Rock
step
#era
.group 2
.goto Redridge Mountains,28.89,13.20
>>杀死|cRXP_ENEMY_贝莱德冠军|r
.complete 128,1 
.isOnQuest 128
step
#era
.group 2
.goto Redridge Mountains,28.388,12.562
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沙恩下士|r
.accept 219 >>接任务: |cRXP_WARN_失踪人员|r
.target Corporal Keeshan
step
#era
.group 2
.goto Redridge Mountains,33.414,48.499
>>护送|cRXP_FRIENDLY_Corporatal Keeshan|r返回莱克郡
>>|cRXP_WARN_离开洞穴后要小心不要拉太多暴徒|r
.complete 219,1
.isOnQuest 219
.target Corporal Keeshan
step
#era
.group
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官马瑞斯|r
.turnin 219 >>交任务: |cRXP_FRIENDLY_失踪人员|r
.isQuestComplete 219
step
.group
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官马瑞斯|r
.turnin 19 >>交任务: |cRXP_FRIENDLY_萨瑞尔祖恩|r
.isQuestComplete 19
step
.group
.goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官马瑞斯|r
.turnin 115 >>交任务: |cRXP_FRIENDLY_暗影魔法|r
.isQuestComplete 115
step
.group
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_所罗门镇长|r
.turnin 169 >>交任务: |cRXP_FRIENDLY_通缉：加塞尔佐格|r
.target Magistrate Solomon
.isQuestComplete 169
step
.abandon 19 >>Abandon Tharil'zun
step
.abandon 115 >>Abandon Shadow Magic
step
.abandon 169 >>放弃通缉：Gath'Izogg
step
.abandon 248 >>Abandon Looking Further
step
.goto Redridge Mountains,30.97,47.27
.target Verner Osgood
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
.turnin 126 >>交任务: |cRXP_FRIENDLY_群山中的嚎叫|r
.isQuestComplete 126
step
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_所罗门镇长|r
.turnin 180 >>交任务: |cRXP_FRIENDLY_通缉：范高雷中尉|r
.isQuestComplete 180
.target Magistrate Solomon
step
.goto Redridge Mountains,29.71,44.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜里弗·科纳彻尔|r
.turnin 91 >>交任务: |cRXP_FRIENDLY_所罗门的律法|r
.isQuestComplete 91
.target Bailiff Conacher
step
#era
.goto Redridge Mountains,31.53,57.85
.target Guard Howe
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵豪维|r
.turnin 128 >>交任务: |cRXP_FRIENDLY_悬赏：黑石氏族|r
.isQuestComplete 128
step << Mage
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.itemcount 17031,1 
step
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Stormwind >>飞到暴风城
.target Ariena Stormfeather
.zoneskip Stormwind City
step
.abandon 180 >>放弃通缉：Fangore中尉
step
.abandon 91 >>Abandon Solomon's Law
step
.abandon 128 >>放弃贝莱德赏金
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 20-30
#classic
<< Alliance
#name 27-27 Wetlands
#next 27-30 Ashenvale
step << Mage
.xp <28,1
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔莎林|r
.trainer >>训练你的职业技能
.target Elsharin
step << Mage
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科林·玛伦|r
.accept 1077 >>接任务: |cRXP_WARN_给加克希姆的特快专递|r
.accept 1078 >>接任务: |cRXP_WARN_完鳞归玛伦|r
.target Collin Mauren
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankdeposit 2378,1130 >>将以下项目存入您的银行：
>>|T133718:0|t【骷髅指】（如果有）
>>|T134799:0|t[蜘蛛毒小瓶]（如果你有）
.target Newton Burnside
step << !Warlock !Druid
.isQuestTurnedIn 2078
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankwithdraw 5996 >>从您的银行提取以下项目：
>>|T134797:0|t[水息灵药] 
.target Newton Burnside
step << !Warlock !Druid
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
>>|cRXP_BUY_从拍卖行购买|r|T134797:0|t[水息灵药]|cRXP_Buy_|r
.collect 5996,1 
.target Auctioneer Jaxon
.itemcount 5996,<1
step << !Mage
.goto Stormwind City,43.08,80.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科林·玛伦|r
.accept 1077 >>接任务: |cRXP_WARN_给加克希姆的特快专递|r
.accept 1078 >>接任务: |cRXP_WARN_完鳞归玛伦|r
.target Collin Mauren
step << Warlock
.xp <28,1
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>走向屠宰的羔羊，然后下楼
step << Warlock
.xp <28,1
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >>训练你的职业技能
.target Ursula Deline
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >>训练你的职业技能
.target Arthur the Faithful
step << Priest
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
.goto StormwindClassic,38.54,26.86
.trainer >>训练你的职业技能
.target Brother Joshua
step << Warrior
.xp <28,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >>训练你的职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.xp <28,1
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >>训练你的职业技能
.target Osborne the Night Man
step << Druid
.xp <28,1
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙德拉斯·月树|r
.trainer >>训练你的职业技能
.target Sheldras Moontree
step << !Priest !Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step
.isQuestTurnedIn 323
.goto Stormwind City,39.108,27.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_主教法席恩|r
.turnin 269 >>交任务: |cRXP_FRIENDLY_寻求指引|r
.accept 270 >>接任务: |cRXP_LOOT_被诅咒的舰队|r
.target Bishop Farthing
step
.goto Stormwind City,40.551,30.959
.target Brother Sarno
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔努修士|r
.accept 2923 >>接任务: |cRXP_LOOT_工匠大师欧沃斯巴克|r
step
#optional
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >>前往暴风要塞
step
#optional
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔顿·西弗|r
>>|cRXP_WARN_如果您找到了|T133741:0|t[|cRXP_OOT_An Old History Book|r]，您可以将其交上来|r
.turnin 337 >>交任务: |cRXP_FRIENDLY_一本破旧的历史书|r
.use 2794 
.itemcount 2794,1 
.target Milton Sheaf
step << Hunter
.xp <28,1
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >>训练你的职业技能
.target Einris Brightspear
step
.dungeon Gnomer
.goto StormwindClassic,55.511,12.502
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沉默的舒尼|r
.accept 2928 >>接任务: |cRXP_WARN_陀螺式挖掘机|r
.target Shoni the Shilent
step << Mage
#completewith next
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
.itemcount 17031,1 
step
#completewith next
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step
.goto Ironforge,69.540,50.325
.target Tinkmaster Overspark
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r
.turnin 2923 >>交任务: |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r
step
.goto Ironforge,72.08,51.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛玛克·链带|r
.accept 1073 >>接任务: |cRXP_WARN_失职+药剂=快乐|r
.target Lomac Gearstrip
step
.dungeon BFD
.goto Ironforge,50.826,5.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛利·硬骨|r
.accept 971 >>接任务: |cRXP_WARN_深渊中的知识|r
.target Gerrig Bonegrip
step
#ah
.goto Ironforge,24.94,73.66,0
>>收集4|T134850:0|t[小魔药]和2|T134822:0|t][小强灵药]
>>|cRXP_WARN_您可以从拍卖行购买这些物品，用玩家进行交易，或者使用|r|T136240:0|t[Alchemy]|cRXP_WARN_if You have it to make these|r
>>|cRXP_WARN_如果您无法获得它们，请放弃Ineptitude+Chemicals=Fun并跳过此步骤|r
.skill alchemy,<1,1 
.collect 2455,4,1073,1 
.collect 2458,2,1073,1 
.isOnQuest 1073
step
#ssf
>>收集4|T134850:0|t[小魔药]和2|T134822:0|t][小强灵药]
>>|cRXP_WARN_如果可能的话，使用您的|r|T136240:0|t[炼金术]|cRXP_WARN_profession来制作它们|r
>>|cRXP_WARN_如果您无法获得它们，请放弃Ineptitude+Chemicals=Fun并跳过此步骤|r
.collect 2455,4,1073,1 
.collect 2458,2,1073,1 
.skill alchemy,<1,1 
.isOnQuest 1073
step
#ah
.goto Ironforge,24.94,73.66,0
>>收集4|T134850:0|t[小魔药]和2|T134822:0|t][小强灵药]
>>|cRXP_WARN_你可以从拍卖行购买这些，也可以用玩家进行交易|r
>>|cRXP_WARN_如果您无法获得它们，请放弃Ineptitude+Chemicals=Fun并跳过此步骤|r
.collect 2455,4,1073,1 
.collect 2458,2,1073,1 
.isOnQuest 1073
step
.goto Ironforge,72.08,51.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛玛克·链带|r
.turnin 1073 >>交任务: |cRXP_FRIENDLY_失职+药剂=快乐|r
.target Lomac Gearstrip
.isQuestComplete 1073
step
.goto Ironforge,72.08,51.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛玛克·链带|r
.accept 1074 >>接任务: |cRXP_WARN_失职+药剂=快乐|r
.target Lomac Gearstrip
.isQuestTurnedIn 1073
step
.goto Ironforge,55.51,47.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Wetlands>>飞到湿地
.target Gryth Thurden
step
.goto Wetlands,10.585,60.592
.target Glorin Steelbrow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈罗林·钢眉|r
.turnin 270 >>交任务: |cRXP_FRIENDLY_被诅咒的舰队|r
.isOnQuest 270
step
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板赫布瑞克|r
.home >>将您的炉石设置为湿地
.target Innkeeper Helbrek
step
#completewith next
.goto Wetlands,10.368,61.016,8 >>上楼前往|cRXP_FRIENDLY_Archaeologist Flagongut|r
.isQuestTurnedIn 942
step
.isQuestTurnedIn 942
.goto Wetlands,10.843,60.435
.target Archaeologist Flagongut
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家弗拉冈特|r
.accept 943 >>接任务: |cRXP_WARN_健忘的勘察员|r
step
.goto Wetlands,10.89,59.66
.target First Mate Fitzsimmons
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副菲兹莫斯|r
.accept 289 >>接任务: |cRXP_LOOT_被诅咒的船员|r
step
.goto Wetlands,11.796,57.991
.target Sida
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞达|r
.accept 470 >>接任务: |cRXP_LOOT_搜寻软泥怪|r
step
.goto Wetlands,8.359,58.526
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔·波兰|r
.accept 281 >>接任务: |cRXP_LOOT_夺回雕像|r
.target Karl Boran
step
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
.accept 471 >>接任务: |cRXP_LOOT_学徒的职责|r
.target James Halloran
step
#completewith next
.goto Wetlands,10.28,56.334,20,0
.goto Wetlands,9.742,57.866,15 >>在Menethil Keep上楼
step
.goto Wetlands,9.861,57.486
.target Captain Stoutfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯托菲队长|r
.accept 464 >>接任务: |cRXP_LOOT_龙喉战旗|r
step
.goto Wetlands,11.458,52.163
.target Tarrel Rockweaver
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔雷尔·石纹|r
.accept 305 >>接任务: |cRXP_LOOT_寻找挖掘队|r
step
.goto Wetlands,13.513,41.384
>>单击地面上的|cRXP_PICK_Damaged Crate|r
.turnin 281 >>交任务: |cRXP_FRIENDLY_夺回雕像|r
.accept 284 >>接任务: |cRXP_LOOT_继续搜寻|r
step
.goto Wetlands,13.608,38.214
>>单击地面上的|cRXP_PICK_Sealed Barrel|r
.turnin 284 >>交任务: |cRXP_FRIENDLY_继续搜寻|r
.accept 285 >>接任务: |cRXP_LOOT_搜寻雕像|r
step
.goto Wetlands,13.945,34.809
>>单击地面上的|cRXP_PICK_Half-bried Barrel|r
.turnin 285 >>交任务: |cRXP_FRIENDLY_搜寻雕像|r
.accept 286 >>接任务: |cRXP_LOOT_归还雕像|r
step
#completewith next
.goto Wetlands,22.25,20.36,0
>>杀死|cRXP_ENEMY_Giant Wetlands Crocolis|r。掠夺它们的|cRXP_Loot_Skin|r
>>|cRXP_WARN_您现在不必完成此操作|r
.complete 471,1 
.mob Giant Wetlands Crocolisk
step
.goto Wetlands,14.00,29.80
.goto Wetlands,15.0,24.0
>>杀死|cRXP_ENEMY_被诅咒的水手|r、|cRXD_ENEMY_-被诅咒的海军陆战队|r和|cRXP_ENEMY_-Snellig|r。为他的|cRXP_Loot_Sunffbox|r抢劫他
.complete 289,1 
.complete 289,2 
.complete 289,3 
.mob Cursed Sailor
.mob Cursed Marine
.mob First Mate Snellig
step
#completewith next
.goto Wetlands,30.8,31.0,0
.goto Wetlands,37.8,29.6,0
.goto Wetlands,43.0,33.2,0
>>杀死|cRXP_ENEMY_Mossheids|r。掠夺他们的|cRXX_OOT_Crude Flints|r
.complete 277,1 
.isQuestTurnedIn 276
.mob Mosshide Brute
.mob Mosshide Trapper
.mob Mosshide Fenrunner
.mob Mosshide Mistweaver
.mob Mosshide Mystic
.mob Mosshide Alpha
step
.goto Wetlands,44.25,25.61
>>杀死|cRXP_ENEMY_深红Ooze|r、|cRXD_ENEMY_Monstrous Ooze| r和|cRXP_ENEMY_Black Ooze|| r。为|cRXP_Loot_Sida的包|r掠夺它们
.complete 470,1 
.mob Crimson Ooze
.mob Monstrous Ooze
.mob Black Ooze
step
.goto Wetlands,43.009,41.675,50,0
.goto Wetlands,40.828,45.966,50,0
.goto Wetlands,45.222,44.251
>>杀死|cRXP_ENEMY_Dragonmaw兽人|r。掠夺他们的|cRXX_Loot_战旗|r
>>|cRXP_WARN_请注意，|cRXP_ENEMY_Dragonmaw Raiders|r将向您施放|r|T132149:0|t[Net]|cRXP-WARN_on|r
.complete 464,1 
.mob Dragonmaw Raider
.mob Dragonmaw Swamprunner
.mob Dragonmaw Battlemaster
.mob Dragonmaw Shadowwarder
.mob Dragonmaw Centurion
.mob Dragonmaw Bonewarder
step
#completewith next
.goto Wetlands,38.790,48.988,20 >>朝着山上的捷径走去
step
.goto Wetlands,38.17,50.88
.target Ormer Ironbraid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫尔·铁衣|r
.accept 294 >>接任务: |cRXP_LOOT_奥莫尔的复仇|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦琳·石纹|r
.turnin 305 >>交任务: |cRXP_FRIENDLY_寻找挖掘队|r
.accept 306 >>接任务: |cRXP_LOOT_寻找挖掘队|r
.goto Wetlands,38.909,52.340
.target Merrin Rockweaver
step
.isQuestTurnedIn 942
.goto Wetlands,38.858,52.208
>>在地面上掠夺|cRXP_Loot_Flagongut的化石|r
.complete 943,2 
step
#completewith next
>>杀死|cRXP_ENEMY_Mottled Raptor|r和|cRXD_ENEMY_Mottled Screecher|r。掠夺它们以获得雷鲁的|cRXP_Loot_Stone |r
>>|cRXP_WARN_现在不要刻意去完成这件事。稍后您将杀死不同的|cRXP_ENEMY_Raptor|r|r
.complete 943,1 
.mob Mottled Raptor
.mob Mottled Screecher
step
.goto Wetlands,22.4,50.0,70,0
.goto Wetlands,23.0,55.2,70,0
.goto Wetlands,24.4,52.2,70,0
.goto Wetlands,26.2,47.7,70,0
.goto Wetlands,27.8,44.6,70,0
.goto Wetlands,31.4,42.0,70,0
.goto Wetlands,22.8,50.6
>>杀死|cRXP_ENEMY_Mottled Raptors|r和|cRXP_ENEMY_Mottled Screechers|r
.complete 294,1 
.complete 294,2 
.mob Mottled Raptor
.mob Mottled Screecher
step
.goto Wetlands,30.8,31.0,80,0
.goto Wetlands,37.8,29.6,80,0
.goto Wetlands,43.0,33.2
>>杀死|cRXP_ENEMY_Mossheids|r。掠夺他们的|cRXX_OOT_Crude Flints|r
.complete 277,1 
.isQuestTurnedIn 276
.mob Mosshide Brute
.mob Mosshide Trapper
.mob Mosshide Fenrunner
.mob Mosshide Mistweaver
.mob Mosshide Mystic
.mob Mosshide Alpha
step
.goto Wetlands,56.37,40.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
.turnin 277 >>交任务: |cRXP_FRIENDLY_火焰管制|r
.target Rethiel the Greenwarden
.accept 275 >>接任务: |cRXP_LOOT_大地上的脓疱|r
.isQuestTurnedIn 276
step
.goto Wetlands,64.78,75.31
>>将|cRXP_Loot_Musquash根|r从地上偷走
.complete 335,2 
step
.dungeon SFK
#completewith next
.goto Wetlands,30.8,31.0,0
.goto Wetlands,37.8,29.6,0
.goto Wetlands,43.0,33.2,0
.zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step
.dungeon SFK
>>影坊堡没有任务。你必须从湿地跑到银松森林。确保在穿越阿拉蒂高地时保持在路上，并注意|cRXP_ENEMY_Forsaken Courier |r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟迪克·普罗斯|r, |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.fp Arathi >>获取阿拉蒂高地飞行路线
.goto Arathi Highlands,45.73,46.09
.fp Southshore >>获取南岸航线
.goto Arathi Highlands,43.01,55.00,90,0
.goto Arathi Highlands,25.45,46.95,90,0
.goto Arathi Highlands,21.29,30.24,70,0
.goto Hillsbrad Foothills,49.338,52.272
.target Cedrik Prose
.target Darla Harris
.unitscan Forsaken Courier
step
.dungeon SFK
.goto Hillsbrad Foothills,14.77,46.72,0
.goto Silverpine Forest,44.96,67.92,0
.goto Hillsbrad Foothills,14.77,46.72,100,0
.goto Silverpine Forest,47.19,69.78,100,0
.goto Silverpine Forest,44.712,67.769
.subzone 209,2 >>Enter Shadowfang Keep
step
.dungeon SFK
+影坊堡没有任务
.zoneskip 209,1
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
#completewith MenethilTurnins
.hs >>赫斯到米奈希尔港
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
.isQuestComplete 943
.goto Wetlands,10.84,60.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家弗拉冈特|r, 他在楼上
.turnin 943 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
.target Archaeologist Flagongut
step
.goto Wetlands,10.89,59.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副菲兹莫斯|r
.turnin 289 >>交任务: |cRXP_FRIENDLY_被诅咒的船员|r
.target First Mate Fitzsimmons
step
.goto Wetlands,11.796,57.991
.target Sida
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞达|r
.turnin 470 >>交任务: |cRXP_FRIENDLY_搜寻软泥怪|r
step
#completewith next
.goto Wetlands,10.28,56.334,20,0
.goto Wetlands,9.742,57.866,15 >>在Menethil Keep上楼
step
.goto Wetlands,9.861,57.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯托菲队长|r
.turnin 464 >>交任务: |cRXP_FRIENDLY_龙喉战旗|r
.target Captain Stoutfist
step
.goto Wetlands,11.458,52.163
.target Tarrel Rockweaver
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔雷尔·石纹|r
.turnin 306 >>交任务: |cRXP_FRIENDLY_寻找挖掘队|r
step
.isQuestComplete 471
.goto Wetlands,8.509,55.697
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
.turnin 471 >>接任务: |cRXP_LOOT_学徒的职责|r
.target James Halloran
step
#label MenethilTurnins
.goto Wetlands,8.359,58.526
.target Karl Boran
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔·波兰|r
.turnin 286 >>交任务: |cRXP_FRIENDLY_归还雕像|r
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 20-30
<< Alliance
#classic
#era
#name 27-30 Ashenvale
#next 30-30 Wetlands/Hillsbrad
step
#completewith next
.goto Wetlands,5.429,57.485,25 >>前往Menethil港码头
step
.goto Wetlands,4.560,57.160
.zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
>>|cRXP_WARN_在等待过程中调平|r|T135966:0|t[急救]|cRXP_WARN_|r
step
.dungeon BFD
.goto Darkshore,38.327,43.039
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈沙拉·夜语|r
.accept 1275 >>接任务: |cRXP_WARN_研究堕落|r
.target Gershala Nightwhisper
step
.dungeon BFD
#completewith bfd1
+开始为Blackfinth Deeps（BFD）寻找团队，你很快就会前往Ashenvale
step
.dungeon BFD
.goto Darkshore,36.71,44.98,5,0
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
.fly Teldrassil >>飞往Teldrassil
.target Caylais Moonfeather
step
.dungeon BFD
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step
.dungeon BFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Argent Guard Manados|r and |cRXP_FRIENDLY_Dawnwatcher Shaedlass, 他在楼上
.accept 1199 >>接任务: |cRXP_WARN_暮光之锤的末日|r
.goto Darnassus,55.239,23.996 
.accept 1198 >>接任务: |cRXP_WARN_寻找塞尔瑞德|r
.goto Darnassus,55.360,25.024 
.target Argent Guard Manados
.target Dawnwatcher Shaedlass
step
.dungeon BFD
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darnassus,1
step
.dungeon BFD
#label bfd1
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
.fly Ashenvale >>飞到灰谷
.target Vesprystus
step
.dungeon BFD
.goto Ashenvale,37.6,34.0,0
+开始为BFD寻找一个小组
.goto Ashenvale,15.5,19.0,0
.goto Ashenvale,14.230,14.618
>>当你组建一个小组时，在Astranaar以北升级|cRXP_ENEMY_Furbolgs|r |T132911:0|t[羊毛布]
.subzoneskip 2797
step
.dungeon BFD
#completewith EnterBFD
.goto Ashenvale,14.230,14.618,0
.goto 1414,43.97,35.30,50 >>前往黑寻深海
.subzoneskip 2797
step
.dungeon BFD
#completewith next
>>杀死|cRXP_ENEMY_Fallenrot盗贼|r，|cRXD_ENEMY_falenrot Satyrs|r，| cRXP__ENEMY_Blacksouth预言家|r和|cRXP_ENEMY_BlackSouth潮汐女祭司|r。掠夺他们的|cRXP_Loot_腐蚀脑干|r
>>|cRXP_WARN_您还可以在实例内掠夺|cRXP_LOOTCorrupted Brain Stems|r|r
.complete 1275,1 
.mob Blackfathom Tide Priestess
.mob Blackfathom Oracle
.mob Fallenroot Rogue
.mob Fallenroot Satyr
.isOnQuest 1275
step
#label EnterBFD
.dungeon BFD
.goto 1414,43.83,35.11,25,0
.goto 1414,43.92,34.56,25,0
.goto 1414,44.02,34.57,25,0
.goto 1414,44.340,34.840
.subzone 2797,2 >>前往BFD实例门户。区域在
step
.dungeon BFD
#completewith Kelris
>>杀死|cRXP_ENEMY_Nagas|r和|cRXX_ENEMY_Satyrs|r。掠夺他们的|cRXP_Loot_损坏脑干|r
.complete 1275,1 
.isOnQuest 1275
step
.dungeon BFD
#label manuscript
#sticky
>>与海龟一起打开|cRXP_PICK_Pitted Iron Chest|r水下区域附近。为|cRXP_Loot_Lorgalis手稿而掠夺它|r
.complete 971,1 
.isOnQuest 971
step
.dungeon BFD
#label Thaelrid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Thaelrid|r
.turnin -1198 >>交任务: |cRXP_FRIENDLY_寻找塞尔瑞德|r
.accept 1200 >>接任务: |cRXP_WARN_黑暗深渊中的邪恶|r
step
#requires manuscript
.dungeon BFD
#completewith Kelris
>>杀死所有|cRXP_ENEMY_暮光之锤|r。掠夺他们的|cRXD_Loot_暮光之城吊坠|r
.complete 1199,1 
.isOnQuest 1199
step
#requires manuscript
.dungeon BFD
#label Kelris
>>杀死|cRXP_ENEMY_暮光之城领主凯里斯|r。掠夺他的|cRXX_Loot_Head |r
.complete 1200,1 
.isOnQuest 1200
step
.dungeon BFD
>>杀死所有|cRXP_ENEMY_暮光之锤|r。掠夺他们的|cRXD_Loot_暮光之城吊坠|r
.complete 1199,1 
.isOnQuest 1199
step
.dungeon BFD
#label FinalStem
>>杀死|cRXP_ENEMY_Nagas|r和|cRXX_ENEMY_Satyrs|r。掠夺他们的|cRXP_Loot_损坏脑干|r
>>如果你还没有完成这个任务，点击地牢尽头的祭坛将你传送到入口。实例之外的暴民也可以将其丢弃。
.complete 1275,1 
.isOnQuest 1275
step
#completewith DarnEnd
.dungeon BFD
.goto Ashenvale,34.41,47.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳希亚|r
.fly Teldrassil >>飞往Teldrassil
.target Daelyshia
.zoneskip Teldrassil
.zoneskip Darnassus
step
#sticky
#label DarnBFD
.dungeon BFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_银月守卫玛纳杜斯|r, 他在楼上
.turnin 1199 >>交任务: |cRXP_FRIENDLY_暮光之锤的末日|r
.goto Darnassus,55.239,23.996 
.target Argent Guard Manados
.isQuestComplete 1199
step
.dungeon BFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵塞尔高姆|r, 他在楼上
.turnin 1200 >>交任务: |cRXP_FRIENDLY_黑暗深渊中的邪恶|r
.goto Darnassus,56.167,24.395 
.target Dawnwatcher Selgorm
.isQuestComplete 1200
step
.dungeon BFD
#requires DarnBFD
#label DarnEnd
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darkshore
.zoneskip Ashenvale
.subzoneskip 2797
step
.dungeon BFD
#completewith next
.goto Ashenvale,34.41,47.98,-1
.goto Teldrassil,58.399,94.016,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r, |cRXP_FRIENDLY_黛琳希亚|r
.fly Darkshore >>飞到黑海岸
.zoneskip Darkshore
.target Daelyshia
.target Vesprystus
step
.dungeon BFD
.goto Darkshore,38.327,43.039
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈沙拉·夜语|r
.turnin 1275 >>交任务: |cRXP_FRIENDLY_研究堕落|r
.target Gershala Nightwhisper
.isQuestComplete 1275
step
.goto Darkshore,36.336,45.574,-1
.goto Ashenvale,34.41,47.98,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r, |cRXP_FRIENDLY_黛琳希亚|r
.fly Stonetalon >>Fly to Stonetalon
.target Caylais Moonfeather
.target Daelyshia
step
.goto Stonetalon Mountains,37.103,8.100
.target Keeper Albagorm
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者奥巴格姆|r
.accept 1057 >>接任务: |cRXP_WARN_夺回焦炭谷|r
step
#completewith next
.goto Stonetalon Mountains,59.52,67.15,55 >>前往|cRXP_FRIENDLY_Gaxim Rustfiskle|r
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,59.52,67.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加克希姆·尘链|r
.turnin 1074 >>交任务: |cRXP_FRIENDLY_失职+药剂=快乐|r
.turnin 1077 >>交任务: |cRXP_FRIENDLY_给加克希姆的特快专递|r
.accept 1079 >>接任务: |cRXP_WARN_隐秘行动：A|r
.accept 1080 >>接任务: |cRXP_WARN_隐秘行动：B|r
.target Gaxim Rustfizzle
.isQuestTurnedIn 1073
step
#completewith next
.goto Stonetalon Mountains,66.09,51.34,100 >>前往Windshear Crag
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,66.09,51.34
>>从盒子上偷走|cRXP_Loot_Venture Co.的工程计划|r
.complete 1079,1 
.isQuestTurnedIn 1073
step
#completewith next
.goto Stonetalon Mountains,74.46,59.30,100 >>前往Windshear Crag矿场
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,74.46,59.30
>>打开|cRXP_PICK_Venture Co.文档|r。为|cRXP_Loot_Venture Co.信件进行掠夺|r
>>|cRXP_WARN_请勿进入矿井。|cRXP_LOOT_Venture Co.的信件|r在矿井外的一个盒子上|r
.complete 1080,1 
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,59.52,67.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加克希姆·尘链|r
.turnin 1079 >>交任务: |cRXP_FRIENDLY_隐秘行动：A|r
.turnin 1080 >>交任务: |cRXP_FRIENDLY_隐秘行动：B|r
.accept 1091 >>接任务: |cRXP_WARN_向凯拉回报|r
.target Gaxim Rustfizzle
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,59.90,66.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·影矛|r
.turnin 1091 >>交任务: |cRXP_FRIENDLY_向凯拉回报|r
.accept 1083 >>接任务: |cRXP_WARN_怒灵|r
.accept 1084 >>接任务: |cRXP_WARN_受伤的古树|r
.target Kaela Shadowspear
.isQuestTurnedIn 1073
step
#completewith next
.goto Stonetalon Mountains,50.57,52.64,20,0
.goto Stonetalon Mountains,41.93,53.91,30,0
.goto Stonetalon Mountains,40.49,54.78,30,0
.goto Stonetalon Mountains,36.97,52.77,35,0
.goto Stonetalon Mountains,35.00,56.68,50 >>前往Charred Vale。按照箭头找到快捷方式
.isQuestTurnedIn 1073
step
#completewith Basilisks
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71
>>杀死|cRXP_ENEMY_Burning Ravagers|r、|cRXD_ENEMY_Burning Destroyer|r和|cRXP_ENEMY_Rogue Flame Spirits|r。掠夺他们的|cRXT_Loot_Ember|r
>>杀死|cRXP_ENEMY_烧焦的古人|r和|cRXD_ENEMY_Blacked Ancients|r。掠夺他们的|cRXP_Loot_弹片|r
.complete 1083,1 
.complete 1084,1 
.mob Burning Ravager
.mob Burning Destroyer
.mob Rogue Flame Spirit
.mob Charred Ancient
.mob Blackened Ancient
.isQuestTurnedIn 1073
step
#completewith next
>>杀死|cRXP_ENEMY_发黑的Basilisk|r、|cRXD_ENEMY_Scored Basilisk| r和|cRXP_ENEMY_Singed Basilisk|| r。掠夺它们的|cRXP_OOT_Scale|r
.complete 1078,1 
.mob Blackened Basilisk
.mob Scorched Basilisk
.mob Singed Basilisk
step
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71
>>杀死|cRXP_ENEMY_Bloodfury Harpies|r，|cRXD_ENEMY_ Bloodfurry Ambusher|r，| cRXP__ENEMY_Bloodfury Slayers|r和|cRXX_ENEMY_血腥流氓|r
.complete 1057,1 
.complete 1057,2 
.complete 1057,3 
.complete 1057,4 
.mob Bloodfury Harpy
.mob Bloodfury Ambusher
.mob Bloodfury Slayer
.mob Bloodfury Roguefeather
step
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71
#label Basilisks
>>杀死|cRXP_ENEMY_发黑的Basilisk|r、|cRXD_ENEMY_Scored Basilisk| r和|cRXP_ENEMY_Singed Basilisk|| r。掠夺它们的|cRXP_OOT_Scale|r
.complete 1078,1 
.mob Blackened Basilisk
.mob Scorched Basilisk
.mob Singed Basilisk
step
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71,70,0
.goto Stonetalon Mountains,36.01,72.62,70,0
.goto Stonetalon Mountains,28.71,68.07,70,0
.goto Stonetalon Mountains,34.55,60.71
>>杀死|cRXP_ENEMY_Burning Ravagers|r、|cRXD_ENEMY_Burning Destroyer|r和|cRXP_ENEMY_Rogue Flame Spirits|r。掠夺他们的|cRXT_Loot_Ember|r
>>杀死|cRXP_ENEMY_烧焦的古人|r和|cRXD_ENEMY_Blacked Ancients|r。掠夺他们的|cRXP_Loot_弹片|r
.complete 1083,1 
.complete 1084,1 
.mob Burning Ravager
.mob Burning Destroyer
.mob Rogue Flame Spirit
.mob Charred Ancient
.mob Blackened Ancient
.isQuestTurnedIn 1073
step
.goto Stonetalon Mountains,59.90,66.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·影矛|r
.turnin 1083 >>交任务: |cRXP_FRIENDLY_怒灵|r
.turnin 1084 >>交任务: |cRXP_FRIENDLY_受伤的古树|r
.accept 1082 >>接任务: |cRXP_WARN_向塞恩希尔报告|r
.target Kaela Shadowspear
.isQuestTurnedIn 1073
step
#completewith next
.goto Stonetalon Mountains,50.57,52.64,20,0
.goto Stonetalon Mountains,41.93,53.91,30,0
.goto Stonetalon Mountains,40.49,54.78,30,0
.goto Stonetalon Mountains,36.97,52.77,35,0
.goto Stonetalon Mountains,35.00,56.68,50 >>前往Charred Vale，然后前往Desolace。按照箭头找到快捷方式
.isQuestTurnedIn 1073
step
#map Stonetalon Mountains
#completewith next
.goto Desolace,53.958,3.436
.zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
.goto Desolace,67.38,15.54,40,0
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞特·克罗斯|r
.fp Desolace >>获取Desolace飞行路线
.fly Stonetalon>>Fly to Stonetalon
.target Baritanas Skyriver
step
.goto Stonetalon Mountains,37.103,8.100
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者奥巴格姆|r
.turnin 1057 >>交任务: |cRXP_FRIENDLY_夺回焦炭谷|r
.target Keeper Albagorm
.accept 1059 >>接任务: |cRXP_WARN_夺回焦炭谷|r
step
.goto Stonetalon Mountains,36.438,7.181
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰罗伦|r
.fly Ashenvale>>飞到灰谷
.target Teloren
step
.abandon 1077 >>放弃加辛的特殊配送
step
.goto Ashenvale,34.67,48.83
.target Shindrell Swiftfire
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛德瑞尔·速火|r
.accept 4581 >>接任务: |cRXP_WARN_凯尼斯·静风|r
step
.goto Ashenvale,34.89,49.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵塞恩希尔|r
.turnin 1082 >>交任务: |cRXP_FRIENDLY_向塞恩希尔报告|r
.accept 1081 >>接任务: |cRXP_WARN_泰兰德的接待|r
.target Sentinel Thenysil
.isQuestTurnedIn 1073
step
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱恩·狼行者|r
.accept 1054 >>接任务: |cRXP_WARN_解除威胁|r
step
#completewith next
.goto Ashenvale,34.69,44.30,30,0
.goto Ashenvale,35.43,41.46,30,0
.goto Ashenvale,36.28,38.48,30,0
.goto Ashenvale,36.83,37.56,30 >>前往Thistlefur村。按照箭头找到快捷方式
step
.goto Ashenvale,36.06,36.59,0
.goto Ashenvale,37.00,33.77,0
.goto Ashenvale,35.88,31.90,0
.goto Ashenvale,38.73,36.32,0
.goto Ashenvale,36.06,36.59,60,0
.goto Ashenvale,37.00,33.77,60,0
.goto Ashenvale,35.88,31.90,60,0
.goto Ashenvale,38.73,36.32,60,0
.goto Ashenvale,39.595,36.309
>>杀死|cRXP_ENEMY_Dal Bloodcaw|r。掠夺他的|cRXX_Loot_Sull|r
>>|cRXP_ENEMY_Dal Bloodcaw|r|cRXP_WARN_tols Thistlefur Village|r
.complete 1054,1
.unitscan Dal Bloodclaw
step
.goto Ashenvale,27.40,63.03,70,0
.goto Ashenvale,25.27,60.68
>>杀死|cRXP_ENEMY_Ilkrud Magthull|r。为他的|cRXX_Loot_Tome|r而掠夺他
>>|cRXP_ENEMY_伊尔克鲁德·马格鲁尔|r|cRXP_WARN_长法|r|T136221:0|t[伊尔克鲁德的守护者]|cRXP-WARN_这是一个5秒长法，将召唤2名虚空之星。如果你能的话，停止这个施放|r
>>|cRXP_WARN_如果需要，请清除退出路径，以便在需要时将其与|cRXP_ENEMY_Succubus|r一起重置|r
.complete 973,1
.mob Ilkrud Magthrull
step
.goto Ashenvale,22.23,52.98
.target Sentinel Melyria Frostshadow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵梅丽瑞亚·霜影|r
.accept 1022 >>接任务: |cRXP_WARN_狼嚎谷|r
step
.goto Ashenvale,21.73,53.34
.target Illiyana
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莉亚娜|r
.accept 1021 >>接任务: |cRXP_WARN_身陷危险的树妖！|r
step
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
.turnin 973 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
.accept 1140 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
step
.isQuestTurnedIn 1007
.goto Ashenvale,14.79,31.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔伦|r
.accept 1009 >>接任务: |cRXP_LOOT_卢泽尔|r
.target Talen
step
.isQuestTurnedIn 1007
.goto Ashenvale,6.528,13.361
>>杀死|cRXP_ENEMY_Ruuzel|r。掠夺她获得佐拉姆的|cRXX_Loot_戒指|r
>>|cRXP_ENEMY_Ruuzel|r|cRXP_WARN_用|cRXD_ENEMY_Wrathtail Myrmidon|r和|cRXX_ENEMY_Wrathtail Sea Witch|r控制岛屿。杀死其中一个，然后在需要时重置它们|r
>>|cRXP_ENEMY_Vespia|r|cRXP_WARN_i女士是一个稀有的后代，如果你看到她，她也会掉落佐拉姆的|cRXP-LOOT_戒指|r|r
.unitscan Lady Vespia
.mob Ruuzel
.complete 1009,1
step
.isQuestComplete 1009
.goto Ashenvale,14.79,31.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔伦|r
.turnin 1009 >>交任务: |cRXP_FRIENDLY_卢泽尔|r
.target Talen
step
.goto Ashenvale,36.61,49.58
.target Raene Wolfrunner
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱恩·狼行者|r
.turnin 1054 >>交任务: |cRXP_FRIENDLY_解除威胁|r
.accept 1024 >>接任务: |cRXP_WARN_莱恩的净化|r
.accept 1025 >>接任务: |cRXP_WARN_先发制人|r
step
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
.accept 1035 >>接任务: |cRXP_WARN_坠星湖|r
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎尔蒂恩|r
.turnin 1024 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
.target Shael'dryn
.accept 1026 >>接任务: |cRXP_WARN_莱恩的净化|r
step
#completewith next
.goto Ashenvale,63.0,43.8,60,0
.goto Ashenvale,59.8,42.6,60,0
.goto Ashenvale,57.6,39.2,60,0
.goto Ashenvale,57.8,33.6,60,0
.goto Ashenvale,55.0,32.8,60,0
.goto Ashenvale,63.0,46.2,60,0
.goto Ashenvale,55.0,32.8
>>杀死|cRXP_ENEMY_Withered Ancients|r和|cRXD_ENEMY_Crazed Ancients |r。掠夺它们以获得|cRXP_Loot_木钥匙|r
.collect 5475,1,1026,1 
.isOnQuest 1026
.mob Withered Ancient
.mob Crazed Ancient
step
.goto Ashenvale,54.416,35.397
>>打开|cRXP_PICK_磨损的箱子|r。为|cRXP_Loot_铁轴|r将其洗劫一空
.complete 1026,1
step
#completewith next
.goto Ashenvale,53.440,36.131,15,0
.goto Ashenvale,52.698,37.759,20 >>跑到这里抄近路
step
.goto Ashenvale,50.49,39.12
>>单击表上的|cRXP_PICK_Tome of Mel’Sandris |r
.complete 1022,1
step
.goto Ashenvale,78.32,44.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安妮莉亚|r
.turnin 1021 >>交任务: |cRXP_FRIENDLY_身陷危险的树妖！|r
.target Anilia
.accept 1031 >>接任务: |cRXP_WARN_塞纳留斯的树枝|r
step
.goto Ashenvale,77.99,42.41
>>杀死|cRXP_ENEMY_Geltharis|r。掠夺他的|cRXX_Loot_Branch|r
>>|cRXP_ENEMY_Geltharis|r|cRXP_WARN_is级别32。如果你不自信，跳过这一步。他不是特别危险。他不施任何魔法。在尝试他之前，确保你清理了该区域|r
.complete 1031,1
.mob Geltharis
step
.goto Ashenvale,85.276,44.720
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尼斯·静风|r
.turnin 4581 >>交任务: |cRXP_FRIENDLY_凯尼斯·静风|r
.target Kayneth Stillwind
.accept 1011 >>接任务: |cRXP_WARN_被遗忘者的病菌|r
step
.goto Azshara,11.90,77.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加罗迪努斯|r
.fp Azshara>>获取Azshara飞行路线
.fly Ashenvale>>飞到灰谷
.target Jarrodenus
step
.goto Ashenvale,22.23,52.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵梅丽瑞亚·霜影|r
.turnin 1022 >>交任务: |cRXP_FRIENDLY_狼嚎谷|r
.target Sentinel Melyria Frostshadow
.accept 1037 >>接任务: |cRXP_WARN_维琳德·星歌|r
step
.isQuestComplete 1031
.goto Ashenvale,21.73,53.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莉亚娜|r
.turnin 1031 >>交任务: |cRXP_FRIENDLY_塞纳留斯的树枝|r
.target Illiyana
.accept 1032 >>接任务: |cRXP_WARN_猎杀萨特！|r
step
.isQuestTurnedIn 1031
.goto Ashenvale,21.73,53.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莉亚娜|r
.accept 1032 >>接任务: |cRXP_WARN_猎杀萨特！|r
.target Illiyana
step
.abandon 1031 >>放弃塞纳留斯的分支
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎尔蒂恩|r
.turnin 1026 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
.target Shael'dryn
.accept 1027 >>接任务: |cRXP_WARN_莱恩的净化|r
step
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
.accept 1016 >>接任务: |cRXP_WARN_元素护腕|r
.target Sentinel Velene Starstrike
step
#optional
#completewith next
.cast 7178 >>|cRXP_WARN_使用您的|r|T134797:0|t[水息灵药]
.itemcount 5996,1 
.use 5996 
step
.goto Ashenvale,44.78,70.07,60,0
.goto Ashenvale,48.90,70.05,60,0
.goto Ashenvale,51.28,70.51,60,0
.goto Ashenvale,48.90,70.05
>>杀死|cRXP_ENEMY_Befounded Water Elements|r。掠夺他们的|cRXX_Loot_Bracers|r
>>|cRXP_WARN_|cRXP_ENEMY_Befoud Water Elements|r铸造|r|T135848:0|t[霜新星]|cRXP_WARN_。如果你潜入水下杀死它们，请注意你的呼吸计时器|r
.collect 12220,5,1016,1
.mob Befouled Water Elemental
step
.use 5456 >>|cRXP_WARN_使用|r|T134943:0|t[分割滚动]|cRXP_WARN_创建|r|T134938:0|t[Divined Scroll]
.complete 1016,1 
step
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
.turnin 1016 >>交任务: |cRXP_FRIENDLY_元素护腕|r
.accept 1017 >>接任务: |cRXP_LOOT_召唤者|r
.target Sentinel Velene Starstrike
step
.goto Ashenvale,50.08,59.94,70,0
.goto Ashenvale,53.75,63.49,70,0
.goto Ashenvale,54.17,61.69,70,0
.goto Ashenvale,56.45,63.62,70,0
.goto Ashenvale,50.08,59.94
>>杀死|cRXP_ENEMY_Foulweald Warriors|r，|cRXD_ENEMY_ Foulwealed Totomics|r，| cRXP__ENEMY_Follweald Ursas|r和a|cRXP_ENEMY_Fuulweald Den Watcher|r
.complete 1025,4 
.complete 1025,3 
.complete 1025,2 
.complete 1025,1 
.mob Foulweald Den Watcher
.mob Foulweald Ursa
.mob Foulweald Totemic
.mob Foulweald Warrior
step
.goto Ashenvale,66.649,82.189
>>杀死|cRXP_ENEMY_Shadebush Oracle |r。为|cRXX_Loot_Fallen Moonstone |r掠夺它
.complete 1035,1
.mob Shadethicket Oracle
step
#completewith next
>>杀死|cRXP_ENEMY_腐烂的黏液|r。|cRXP_PICK_Rusty Chest|r没有100%的机会掉落|r
>>打开|cRXP_PICK_Rusty Chest|r。为|cRXP_Loot_铁鞍子|r将其洗劫一空
.complete 1027,1 
.mob Rotting Slime
step
.goto Ashenvale,75.29,72.00
>>偷走桌子上的|cRXP_Loot_疾病瓶|r
>>|cRXP_WARN_要谨慎，因为|cRXP_ENEMY_Forsaken|r在|r|T132320:0|t[潜行]中可以防守它
.complete 1011,1 
step
#label slimes
.goto Ashenvale,72.6,71.6,60,0
.goto Ashenvale,69.8,76.2,60,0
.goto Ashenvale,75.4,73.0,60,0
.goto Ashenvale,73.6,76.6
>>杀死|cRXP_ENEMY_腐烂的黏液|r。|cRXP_PICK_Rusty Chest|r没有100%的机会掉落|r|r
>>打开|cRXP_PICK_Rusty Chest|r。为|cRXP_Loot_铁鞍子|r将其洗劫一空
.complete 1027,1 
.mob Rotting Slime
step
#requires slimes
.goto Ashenvale,69.73,86.62,0
.goto Ashenvale,69.71,86.87,50,0
.goto The Barrens,48.98,5.42,35,0
.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
.isOnQuest 1017
step
#completewith next
.goto The Barrens,48.73,14.86,20,0
.goto The Barrens,48.53,16.51,15,0
.goto The Barrens,48.16,18.52,6,0
.goto The Barrens,47.96,18.82,5 >>登上无畏峰。沿着箭头走到顶部
step
.goto The Barrens,48.22,19.15
>>杀死|cRXP_ENEMY_Sarilus Foulborne|r。掠夺他的|cRXX_Loot_Head |r
>>|cRXP_WARN_周围的|cRXP_ENEMY_Burning Blade|r只有10-12级|r
.complete 1017,1 
.mob Sarilus Foulborne
step
#completewith next
.goto The Barrens,48.98,20.01,20,0
.goto The Barrens,50.42,21.93,25,0
.goto The Barrens,51.60,24.87,25,0
.goto The Barrens,58.76,25.28,60,0
.goto The Barrens,63.08,37.16,100 >>前往棘轮。按箭头避开|cRXP_ENEMY_Barrens Guards|r
step
#completewith next
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fp Ratchet >>获取棘轮飞行路径
.fly Azshara >>Fly to Azshara
.target Bragok
step
.goto Ashenvale,85.276,44.720
.target Kayneth Stillwind
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尼斯·静风|r
.turnin 1011 >>交任务: |cRXP_FRIENDLY_被遗忘者的病菌|r
step
.isOnQuest 1032
#completewith next
>>杀死|cRXP_ENEMY_Satyrs|r。掠夺他们的|cRXX_Loot_Horns|r
>>|cRXP_WARN_现在还不想完成这件事|r
.complete 1032,1 
step
.goto Ashenvale,81.59,48.57
>>单击Satyrnaar中的|cRXP_PICK_监禁圈|r
.complete 1140,2 

step
.isOnQuest 1032
#completewith next
>>杀死|cRXP_ENEMY_Satyrs|r。掠夺他们的|cRXX_Loot_Horns|r
.complete 1032,1 
step
.goto Ashenvale,78.776,46.765,110,0
.goto Ashenvale,73.835,47.120,100,0
.goto Ashenvale,66.622,56.998
>>在Night Run中单击|cRXP_PICK_监禁圈|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Felmusk Shadowspeakers|r in |r|T132320:0|t[潜行]
.complete 1140,1 
step
.isOnQuest 1032
.goto Ashenvale,81.42,49.87
>>杀死|cRXP_ENEMY_Satyrs|r。掠夺他们的|cRXX_Loot_Horns|r
.complete 1032,1 
.mob Felmusk Felsworn
.mob Felmusk Rogue
.mob Felmusk Satyr
.mob Felmusk Shadowstalker
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎尔蒂恩|r
.turnin 1027 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
.target Shael'dryn
.accept 1028 >>接任务: |cRXP_WARN_莱恩的净化|r
step
#completewith next
.goto Ashenvale,56.993,51.981,20,0
.goto Ashenvale,57.369,50.953,20 >>前往|cRXP_PICK_Hidden Shrine|r
step
.goto Ashenvale,56.320,49.188
>>单击|cRXP_PICK_Hidden Shrine|r
.turnin 1028 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
.accept 1055 >>接任务: |cRXP_WARN_莱恩的净化|r
step
.goto Ashenvale,53.53,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎尔蒂恩|r
.turnin 1055 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
.target Shael'dryn
.accept 1029 >>接任务: |cRXP_WARN_莱恩的净化|r
step
.goto Ashenvale,37.36,51.79
.target Pelturas Whitemoon
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
.turnin 1035 >>交任务: |cRXP_FRIENDLY_坠星湖|r
step
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱恩·狼行者|r
.turnin 1025 >>交任务: |cRXP_FRIENDLY_先发制人|r
.turnin 1029 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
.target Raene Wolfrunner
.accept 1030 >>接任务: |cRXP_WARN_莱恩的净化|r
step
.goto Ashenvale,49.79,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
.turnin 1017 >>交任务: |cRXP_FRIENDLY_召唤者|r
>>|cRXP_WARN_这个任务将奖励你|r|T134754:0|t[精灵之光]
>>|T134754:0|t[精灵之光]|cRXP_WARN_给予10秒的所有伤害和法术豁免。|r
>>|cRXP_WARN_这是一次性使用。在紧急情况下使用|r
.target Sentinel Velene Starstrike
step
.goto Ashenvale,53.269,74.270,35,0
.goto Ashenvale,51.443,75.004,45 >>前往|cRXP_FRIENDLY_Krolg|r
.isOnQuest 1030
step
#completewith next
.cast 6405 >>|cRXP_WARN_使用|r|T135463:0|t[Dartol的转换棒]|cRXP_WARN_to变成Furbolg|r
.use 5462
.isOnQuest 1030
step
.goto Ashenvale,50.85,75.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗尔格|r
.use 5462 >>|cRXP_WARN_你必须使用|r|T135463:0|t[Dartol's Rod of Transformation]|cRXP_WARN_to变成Furbolg，然后才能与|r|cRXP-FRIENDLY_Krolg交谈|r
.turnin 1030 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
.accept 1045 >>接任务: |cRXP_WARN_莱恩的净化|r
.target Krolg
step
.goto Ashenvale,54.210,74.082,50,0
.goto Ashenvale,54.747,79.618
>>杀死|cRXP_ENEMY_血牙卫士|r和|cRXX_ENEMY_Ran血牙|r。掠夺他的|cRXD_Loot_Skull|r
.complete 1045,2 
.complete 1045,1 
.collect 5388,1,1046,1
.mob Ran Bloodtooth
.mob Bloodtooth Guard
step
#completewith krolg1
#label tkrolg1
.goto Ashenvale,53.269,74.270,35,0
.goto Ashenvale,51.443,75.004,45 >>前往|cRXP_FRIENDLY_Krolg|r
.isOnQuest 1045
step
#requires tkrolg1
#completewith next
.cast 6405 >>|cRXP_WARN_使用|r|T135463:0|t[Dartol的转换棒]|cRXP_WARN_to变成Furbolg|r
.use 5462
.isOnQuest 1045
step
#label krolg1
.goto Ashenvale,50.84,75.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗尔格|r
.use 5462 >>|cRXP_WARN_你必须使用|r|T135463:0|t[Dartol's Rod of Transformation]|cRXP_WARN_to变成Furbolg，然后才能与|r|cRXP-FRIENDLY_Krolg交谈|r
.turnin 1045 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
.accept 1046 >>接任务: |cRXP_WARN_莱恩的净化|r
.target Krolg
step
#completewith next
.goto Ashenvale,36.61,49.58,30 >>前往阿斯特拉纳尔的|cRXP_FRIENDLY_Raene Wolfrunner|r
>>|cRXP_WARN_If you 交任务: |cRXP_FRIENDLY_莱恩的净化|r you will gain 3,050XP, but you will permanently lose|r |T135463:0|t[Dartol's Rod of Transformation]
>>|cRXP_WARN_如果您想将其用于RP目的，请放弃Raene的Cleansing，|r|T135463:0|t[Dartol's Rod of Transformation]|cRXP_WARN_将留在您的包中|r
.isOnQuest 1046
step
.goto Ashenvale,36.61,49.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱恩·狼行者|r
.turnin 1046 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
.target Raene Wolfrunner
.isOnQuest 1046
step
.isQuestComplete 1032
.goto Ashenvale,21.73,53.34
.target Illiyana
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊莉亚娜|r
.turnin 1032 >>交任务: |cRXP_FRIENDLY_猎杀萨特！|r
step
.isQuestTurnedIn 2078 
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
.turnin 1140 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
step
.isQuestAvailable 2078 
.goto Ashenvale,26.19,38.69
.target Delgren the Purifier
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_净化者德尔格伦|r
.turnin 1140 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
.accept 1167 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r << !Warlock !Druid
step
#label end
.goto Ashenvale,34.41,47.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳希亚|r
.fly Teldrassil>>飞往Teldrassil
.target Daelyshia
step
#completewith darnassus
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Mage
.goto Darnassus,40.599,82.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃莉萨·杜马斯|r
.trainer >>火车电报：Darnassus
.target Elissa Dumas
.xp <30,1
step << Priest
.goto Darnassus,37.90,82.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾德莉亚|r
.trainer >>训练你的职业技能
.target Jandria
.xp <30,1
step
.goto Darnassus,39.72,92.68,10,0
.goto Darnassus,42.97,83.90,15,0
.goto Darnassus,39.10,81.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰兰德·语风|r
.turnin 1081 >>交任务: |cRXP_FRIENDLY_泰兰德的接待|r
.target Tyrande Whisperwind
.isQuestTurnedIn 1073
step << Warrior
.goto Darnassus,58.72,34.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷亚斯塔·刃歌|r
.trainer >>训练你的职业技能
.target Arias'ta Bladesinger
.xp <30,1
step
#label darnassus
.goto Darnassus,61.777,39.180
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞恩提尔·刃纹|r
.turnin 1037 >>交任务: |cRXP_FRIENDLY_维琳德·星歌|r
.target Thyn'tel Bladeweaver
.accept 1038 >>接任务: |cRXP_WARN_维琳德的日记|r
step
.goto Darnassus,56.05,79.21,10,0
.goto Darnassus,62.287,83.289
>>跑进哨兵的小屋，穿过天桥
>>打开|cRXP_PICK_Velinde的储物柜|r。将其洗劫一空|cRXP_Loot_Velinde的日记|r
.complete 1038,1 
step
#era
.goto Darnassus,61.777,39.180
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞恩提尔·刃纹|r
.turnin 1038 >>交任务: |cRXP_FRIENDLY_维琳德的日记|r
.target Thyn'tel Bladeweaver
.accept 1039 >>接任务: |cRXP_WARN_贫瘠之地的港口|r
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加瑞斯|r, |cRXP_FRIENDLY_莱恩|r, |cRXP_FRIENDLY_伊迪瑞娜|r
.bankdeposit 2784 >>将以下项目存入您的银行：
>>|T134187:0|t[穆斯夸什根] 
.target Garryeth
.target Lairn
.target Idriana
step << Druid
.goto Darnassus,34.768,7.374
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳萨里安|r
.trainer >>训练你的职业技能
.target Denatharion
.xp <30,1
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
.trainer >>训练你的职业技能
.target Jocaste
.xp <30,1
step << Hunter
.goto Darnassus,43.834,9.505,10,0
.goto Darnassus,42.471,9.157
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_西尔瓦莉雅|r
.trainer >>训练你的宠物法术
.target Silvaria
.xp <30,1
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
.trainer >>训练你的职业技能
.xp <30,1
.target Syurna
step << !Warlock !Druid
.isQuestAvailable 2078
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darnassus,1
step << !Warlock !Druid
.isQuestAvailable 2078
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
.fly Darkshore >>飞到黑海岸
.zoneskip Darkshore
step << !Warlock !Druid
#map Darkshore
.isQuestAvailable 2078
.goto Winterspring,4.82,27.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴苏尔·影击|r
.turnin 1167 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
>>|cRXP_WARN_跳过后续任务。这是一个相当困难的任务（你必须处理3个施法暴徒和虚空之手）|r
.target Balthule Shadowstrike
step << !Warlock !Druid
#map Darkshore
.isQuestAvailable 2078
.goto Winterspring,6.37,16.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
.accept 2098 >>接任务: |cRXP_WARN_基尔卡克的钥匙|r
>>|cRXP_WARN_这是一个低级别的任务，但它会给你5|r|T134797:0|t[水呼吸的药剂]|cRXP_WARN_以后会使用什么|r
.target Gelkak Gyromast
step << !Warlock !Druid
#completewith next
.isQuestAvailable 2078
.goto Darkshore,56.10,16.88,0
>>杀死|cRXP_ENEMY_Raging Reef Crawlers |r和|cRXP_ENEMY_Encrusted Tide Crawlers | r。掠夺它们以获取|cRXD_Loot_盖尔卡钥匙底部|r
>>|cRXP_WARN_这是一个低级别的任务，但它会给你5|r|T134797:0|t[水呼吸的药剂]|cRXP_WARN_以后会使用什么|r
.complete 2098,3 
.mob Raging Reef Crawler
.mob Encrusted Tide Crawler
step << !Warlock !Druid
.isQuestAvailable 2078
.goto Darkshore,54.93,12.19
>>杀死|cRXP_ENEMY_Greymist Oracles|r和|cRXX_ENEMY_Graymist Tidehunter|r。为Gelkak的密钥的|cRXD_Loot_中间|r掠夺它们
>>|cRXP_WARN_这是一个低级别的任务，但它会给你5|r|T134797:0|t[水呼吸的药剂]|cRXP_WARN_以后会使用什么|r
.complete 2098,2 
.mob Greymist Oracle
.mob Greymist Tidehunter
step << !Warlock !Druid
.isQuestAvailable 2078
.goto Darkshore,55.59,16.98,45,0
.goto Darkshore,53.76,18.96,45,0
.goto Darkshore,51.34,22.00,45,0
.goto Darkshore,56.63,12.08
>>杀死|cRXP_ENEMY_Raging Reef Crawlers |r和|cRXP_ENEMY_Encrusted Tide Crawlers | r。掠夺它们以获取|cRXD_Loot_盖尔卡钥匙底部|r
>>|cRXP_WARN_这是一个低级别的任务，但它会给你5|r|T134797:0|t[水呼吸的药剂]|cRXP_WARN_以后会使用什么|r
.complete 2098,3 
.mob Raging Reef Crawler
.mob Encrusted Tide Crawler
step << !Warlock !Druid
#sticky
.isQuestAvailable 2078
#label foreststriders
.goto Darkshore,59.29,13.22,55,0
.goto Darkshore,61.40,9.40,50,0
.goto Darkshore,61.51,12.66,50,0
.goto Darkshore,61.24,15.38,50,0
.goto Darkshore,61.40,9.40
>>杀死|cRXP_ENEMY_Giant Foreststridger|r。掠夺它们以获取|cRXP-Loot_Gelkak钥匙顶部|r
>>|cRXP_WARN_这是一个低级别的任务，但它会给你5|r|T134797:0|t[水呼吸的药剂]|cRXP_WARN_以后会使用什么|r
.complete 2098,1 
.mob Giant Foreststrider
step << !Warlock !Druid
#map Darkshore
.isQuestAvailable 2078
#requires foreststriders
.goto Winterspring,6.37,16.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
.turnin 2098 >>交任务: |cRXP_FRIENDLY_基尔卡克的钥匙|r
.accept 2078 >>接任务: |cRXP_WARN_基尔卡克的报复|r
.target Gelkak Gyromast
step << !Warlock !Druid
#map Darkshore
.isOnQuest 2078
.goto Winterspring,5.59,21.09,10,0
.goto Winterspring,6.37,16.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_机械打手4100型|r
>>|cRXP_WARN_这是一个低级别的任务，但它会给你5|r|T134797:0|t[水呼吸的药剂]|cRXP_WARN_以后会使用什么|r
>>护送|cRXP_FRIENDLY_脱粒机4100|r至|cRXP_FRIENDLY_Gelkak陀螺仪|r
>>Kill |cRXP_ENEMY_The Threshwackonator 4100|r once it turns hostile
.complete 2078,1
.skipgossip
.mob The Threshwackonator 4100
step << !Warlock !Druid
#map Darkshore
.isOnQuest 2078
.goto Winterspring,6.37,16.66
.target Gelkak Gyromast
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
.turnin 2078 >>交任务: |cRXP_FRIENDLY_基尔卡克的报复|r
.isQuestComplete 2078
step << !Warlock !Druid
.destroy 7442 >>摧毁: |cRXP_ENEMY_基尔卡克的钥匙|r
step
.hs >>赫斯到米奈希尔港
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 20-30
<< Alliance
#classic
#era
#name 30-30 Wetlands/Hillsbrad
#next 30-32 Duskwood
step
.dungeon BFD
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.goto Wetlands,9.49,59.69
.fly Ironforge>>飞往铁炉堡
.target Shellei Brondir
step
.dungeon BFD
.goto Ironforge,50.826,5.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛利·硬骨|r
.turnin 971 >>交任务: |cRXP_FRIENDLY_深渊中的知识|r
.target Gerrig Bonegrip
.isQuestComplete 971
step
.dungeon BFD
#optional
.isQuestTurnedIn 2078
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.bankdeposit 5996 >>将以下项目存入您的银行：
>>|T134797:0|t[水息灵药]（如果你有） 
.itemcount 5996,1
.target Bailey Stonemantle
step
.dungeon BFD
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Wetlands>>飞到湿地
.zoneskip Wetlands
.target Gryth Thurden
step
.goto Wetlands,10.89,59.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副菲兹莫斯|r
.target First Mate Fitzsimmons
.accept 290 >>接任务: |cRXP_LOOT_解除诅咒|r
step
.isQuestComplete 943
.goto Wetlands,10.84,60.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家弗拉冈特|r, 他在楼上
.turnin 943 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
.target Archaeologist Flagongut
step
.goto Wetlands,10.84,55.89
.target Harlo Barnaby
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈尔罗·巴纳比|r
.accept 472 >>接任务: |cRXP_LOOT_丹莫德的陷落|r
step
.goto Wetlands,9.861,57.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯托菲队长|r, 他在楼上
.target Captain Stoutfist
.accept 465 >>接任务: |cRXP_LOOT_纳克罗什的优势|r
step
#completewith next
.goto Wetlands,18.0,27.0,0
>>杀死|cRXP_ENEMY_Giant Wetlands Crocolis|r。掠夺它们的|cRXP_Loot_Skin|r
.complete 471,1 
.mob Giant Wetlands Crocolis
step
.goto Wetlands,15.984,23.111,25,0
.goto Wetlands,15.44,23.60
>>把船的桅杆抬起来
>>杀死|cRXP_ENEMY_Captain Halyndor |r。掠夺他获得|cRXP-Loot_Strangbox密钥|r
.complete 290,1 
.mob Captain Halyndor
step
.goto Wetlands,14.292,23.609,15,0
.goto Wetlands,14.381,24.047
>>从船侧的大洞进入
>>点击地面上的|cRXP_PICK_Intrepid锁定的保险箱|r
.turnin 290 >>交任务: |cRXP_FRIENDLY_解除诅咒|r
.accept 292 >>接任务: |cRXP_LOOT_帕雷斯之眼|r
step
#completewith next
>>杀死|cRXP_ENEMY_Fen爬行者|r
>>|cRXP_ENEMY_Fen Creepers |r|cRXP_WARN_are in |r|T132320:0|t[潜行]|cRXP-WARN_along the river streams|r
.complete 275,1 
.mob Fen Creeper
step
.goto Wetlands,18.0,27.0,70,0
.goto Wetlands,22.8,21.8,70,0
.goto Wetlands,28.0,18.8,70,0
.goto Wetlands,18.0,27.0
>>杀死|cRXP_ENEMY_Giant Wetlands Crocolis|r。掠夺它们的|cRXP_Loot_Skin|r
.complete 471,1 
.mob Giant Wetlands Crocolisk
step
.goto Wetlands,27.6,37.2,50,0
.goto Wetlands,40.8,32.8,50,0
.goto Wetlands,46.6,29.6,50,0
.goto Wetlands,48.8,37.2,50,0
.goto Wetlands,54.8,37.8,50,0
.goto Wetlands,27.6,37.2,0
.goto Wetlands,40.8,32.8,0
.goto Wetlands,46.6,29.6,0
.goto Wetlands,48.8,37.2,0
.goto Wetlands,54.8,37.8,0
.goto Wetlands,20.72,28.74
>>杀死|cRXP_ENEMY_Fen爬行者|r
>>|cRXP_ENEMY_Fen Creepers |r|cRXP_WARN_are in |r|T132320:0|t[潜行]|cRXP-WARN_along the river streams|r
.complete 275,1 
.mob Fen Creeper
step
.goto Wetlands,37.22,43.89,45,0
.goto Wetlands,38.17,50.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫尔·铁衣|r
.turnin 294 >>交任务: |cRXP_FRIENDLY_奥莫尔的复仇|r
.accept 295 >>接任务: |cRXP_LOOT_奥莫尔的复仇|r
.target Ormer Ironbraid
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员维尔加|r
.accept 299 >>接任务: |cRXP_LOOT_发现历史|r
.goto Wetlands,38.809,52.386
.target Prospector Whelgar
step
.isOnQuest 943
#completewith FragmentDone
>>杀死|cRXP_ENEMY_斑点镰刀爪|r和|cRXX_ENEMY_斑点剃刀|r。掠夺它们以获得雷鲁的|cRXD_Loot_石头|r
.complete 943,1 
.mob Mottled Razormaw
.mob Mottled Scytheclaw
step
#completewith Sarltooth
.goto Wetlands,34.71,49.95,0
>>打开|cRXP_PICK_古代遗迹|r和|cRXP_PICK_松散土壤|r。将它们掠夺以获取|cRXP_Loot_Flages|r
>>|cRXP_WARN_|cRXP_LOOT_Fragments|r在挖掘现场具有随机产卵位置|r
.complete 299,1 
.complete 299,2 
.complete 299,3 
.complete 299,4 
step
.goto Wetlands,35.05,44.06,60,0
.goto Wetlands,34.85,49.36,60,0
.goto Wetlands,30.75,48.50,60,0
.goto Wetlands,34.33,47.81
>>杀死|cRXP_ENEMY_斑点镰刀爪|r和|cRXX_ENEMY_斑点剃刀|r
.complete 295,1 
.complete 295,2 
.mob Mottled Razormaw
.mob Mottled Scytheclaw
step
.goto Wetlands,38.17,50.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫尔·铁衣|r
.turnin 295 >>交任务: |cRXP_FRIENDLY_奥莫尔的复仇|r
.accept 296 >>接任务: |cRXP_LOOT_奥莫尔的复仇|r
.target Ormer Ironbraid
step
#label Sarltooth
.goto Wetlands,31.410,49.518,30,0
.goto Wetlands,33.25,51.50
>>杀死|cRXP_ENEMY_Sarltooth|r。掠夺他的|cRXX_Loot_Talon|r
.complete 296,1 
.unitscan Sarltooth
step
#label FragmentDone
.goto Wetlands,34.32,51.79,40,0
.goto Wetlands,35.73,49.06,40,0
.goto Wetlands,33.86,46.85,40,0
.goto Wetlands,34.91,44.22,40,0
.goto Wetlands,36.62,42.16
>>打开|cRXP_PICK_古代遗迹|r和|cRXP_PICK_松散土壤|r。将它们掠夺以获取|cRXP_Loot_Flages|r
>>|cRXP_WARN_|cRXP_LOOT_Fragments|r在挖掘现场具有随机产卵位置，包括|cRXP_ENEMY_Sarltooth|r所在的高地|r
>>|cRXP_WARN_一定要检查地图上标记的大树后面|r
.complete 299,1 
.complete 299,2 
.complete 299,3 
.complete 299,4 
step
.isOnQuest 943
.goto Wetlands,35.05,44.06,60,0
.goto Wetlands,34.85,49.36,60,0
.goto Wetlands,30.75,48.50,60,0
.goto Wetlands,34.33,47.81
>>杀死|cRXP_ENEMY_斑点镰刀爪|r和|cRXX_ENEMY_斑点剃刀|r。掠夺它们以获得雷鲁的|cRXD_Loot_石头|r
.complete 943,1 
.mob Mottled Razormaw
.mob Mottled Scytheclaw
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫尔·铁衣|r, |cRXP_FRIENDLY_勘察员维尔加|r
.turnin 296 >>交任务: |cRXP_FRIENDLY_奥莫尔的复仇|r
.goto Wetlands,38.17,50.88
.turnin 299 >>交任务: |cRXP_FRIENDLY_发现历史|r
.goto Wetlands,38.809,52.386
.target Ormer Ironbraid
.target Prospector Whelgar
step
.goto Wetlands,47.45,47.01
>>单击|cRXP_PICK_Dragonmaw弹射器|r
.turnin 465 >>交任务: |cRXP_FRIENDLY_纳克罗什的优势|r
step
.group 3
.goto Wetlands,47.45,47.01
>>单击|cRXP_PICK_Dragonmaw弹射器|r
.accept 474 >>接任务: |cRXP_LOOT_击败纳克罗什|r
step
.group 3
.goto Wetlands,53.2,56.0,40,0
.goto Wetlands,53.2,56.0,0
>>杀死|cRXP_ENEMY_首领内克罗什|r。掠夺他的|cRXX_Loot_Head |r
>>|cRXP_WARN_你可以使用|r|T136186:0|t[火之雨]将奈克罗斯从他周围的暴徒中分离出来 << Warlock
>>|cRXP_WARN_你可以使用|r|T135857:0|t[暴雪]将奈克罗斯从他周围的暴徒中分离出来 << Mage
>>|cRXP_ENEMY_酋长Nek'rosh|r|cRXP_WARN_i是可捕获的|r
>>|cRXP_ENEMY_酋长Nek'rosh|r|cRXP_WARN_can be|r|T136183:0|t[害怕] << Warlock/Priest
>>|cRXP_ENEMY_首领Nek'rosh|r|cRXP_WARN_i对火焰伤害免疫|r << Mage/Warlock
.complete 474,1 
.mob Chieftain Nek'rosh
.link https://www.twitch.tv/videos/669042748?t=02h57m08s >>|cRXP_WARN_单击此处查看视频指南|r << Warlock
.link https://www.twitch.tv/videos/1219244561?t=10h00m16s >>|cRXP_WARN_单击此处查看视频指南|r << Hunter
step
.isQuestComplete 275
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
.goto Wetlands,56.37,40.40
.turnin 275 >>交任务: |cRXP_FRIENDLY_大地上的脓疱|r
.target Rethiel the Greenwarden
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坚毅者长须|r, |cRXP_FRIENDLY_拉格·加玛森|r
.turnin 472 >>交任务: |cRXP_FRIENDLY_丹莫德的陷落|r
.goto Wetlands,49.803,18.257
.accept 631 >>接任务: |cRXP_LOOT_萨多尔大桥|r
.goto Wetlands,49.908,18.233
.target Longbraid the Grim
.target Rhag Garmason
step
.group 3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫特雷·加玛森|r, |cRXP_FRIENDLY_坚毅者长须|r
.accept 303 >>接任务: |cRXP_LOOT_黑铁战争|r
.goto Wetlands,49.665,18.231
.accept 304 >>接任务: |cRXP_LOOT_艰巨的任务|r
.goto Wetlands,49.803,18.257
.target Motley Garmason
.target Longbraid the Grim
step
.group 3
#completewith next
.goto Wetlands,62.48,28.41,40,0
.goto Wetlands,61.83,26.27,40,0
.goto Wetlands,60.01,24.35,40,0
.goto Wetlands,62.48,28.41
>>杀死|cRXP_ENEMY_黑铁矮人|r，|cRXD_ENEMY_黑铁隧道者|r，| cRXP__ENEMY_黑暗铁破坏者|r和|cRXP_ENEMY_黑暗铁破坏者| r
>>|cRXP_ENEMY_黑铁破坏者|r|cRXP_WARN_will-cast|r|T135826:0|t[Sapper爆炸]|cRXP-WARN_当他们死亡时，会在附近造成火焰伤害|r
>>|cRXP_ENEMY_黑铁破坏者|r|cRXP_WARN_将连续投掷|r|T135826:0|t[炸弹]|cRXP-WARN_射程|r
.complete 303,1 
.complete 303,2 
.complete 303,3 
.complete 303,4 
.mob Dark Iron Dwarf
.mob Dark Iron Tunneler
.mob Dark Iron Saboteur
.mob Dark Iron Demolitionist
step
.group 3





.goto Wetlands,62.48,28.41
>>杀死|cRXP_ENEMY_Balgaras犯规|r。掠夺他的|cRXX_Loot_Ear|r
.complete 304,1 
.mob Balgaras the Foul
step
.group 3
.goto Wetlands,62.48,28.41,40,0
.goto Wetlands,61.83,26.27,40,0
.goto Wetlands,60.01,24.35,40,0
.goto Wetlands,62.48,28.41
>>杀死|cRXP_ENEMY_黑铁矮人|r，|cRXD_ENEMY_黑铁隧道者|r，| cRXP__ENEMY_黑暗铁破坏者|r和|cRXP_ENEMY_黑暗铁破坏者| r
>>|cRXP_ENEMY_黑铁破坏者|r|cRXP_WARN_will-cast|r|T135826:0|t[Sapper爆炸]|cRXP-WARN_当他们死亡时，会在附近造成火焰伤害|r
>>|cRXP_ENEMY_黑铁破坏者|r|cRXP_WARN_将连续投掷|r|T135826:0|t[炸弹]|cRXP-WARN_射程|r
.complete 303,1 
.complete 303,2 
.complete 303,3 
.complete 303,4 
.mob Dark Iron Dwarf
.mob Dark Iron Tunneler
.mob Dark Iron Saboteur
.mob Dark Iron Demolitionist
step
.group
.goto Wetlands,49.665,18.231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫特雷·加玛森|r
.turnin 303 >>交任务: |cRXP_FRIENDLY_黑铁战争|r
.target Motley Garmason
.isQuestComplete 303
step
.group
.goto Wetlands,49.803,18.257
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坚毅者长须|r
.turnin 304 >>交任务: |cRXP_FRIENDLY_艰巨的任务|r
.target Longbraid the Grim
.isQuestComplete 304
step
.goto Wetlands,51.481,8.111,15,0
.goto Wetlands,51.115,8.156,15,0
.goto Wetlands,51.287,7.953
>>单击|cRXP_PICK_Ebenezer Rustlocke的尸体|r
>>|cRXP_WARN_在下螺旋楼梯之前，请确保您的生命值已满。有两个精英|cRXP_ENEMY_黑铁剑士|r。当你倒下并从他们身边跑过时，对他们施加任何人群控制能力。之后再跑回来|r
.turnin 631 >>交任务: |cRXP_FRIENDLY_萨多尔大桥|r
.accept 632 >>接任务: |cRXP_LOOT_萨多尔大桥|r
.link https://youtu.be/awe7f-iI-ic >>|cRXP_WARN_单击此处查看视频指南|r
step
.goto Wetlands,49.908,18.233
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格·加玛森|r
.turnin 632 >>交任务: |cRXP_FRIENDLY_萨多尔大桥|r
.accept 633 >>接任务: |cRXP_LOOT_萨多尔大桥|r
.target Rhag Garmason
step
.abandon 303 >>放弃黑铁战争
step
.abandon 304 >>Abandon A Grim Task
step
.goto Arathi Highlands,43.240,92.643
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_醉鬼马克里尔|r
>>|cRXP_WARN_先跳到看不见的链子上，然后跳到桥上的断梁上。所有类都可以进行此跳跃。如果您无法执行此操作，请跳过此步骤|r
.accept 647 >>接任务: |cRXP_LOOT_马克里尔的月光酒|r
.target Foggy MacKreel
.link https://www.twitch.tv/videos/646111384 >>|cRXP_WARN_单击此处查看视频指南|r
step
.goto Arathi Highlands,44.28,92.877
>>Dive down underwater
>>打开|cRXP_PICK_Waterlogged Letter |r。为|T133469:0|t[|cRXP-Loot_Waterlogged Envelope|r]抓取它
>>|cRXP_WARN_使用|T133469:0|t[|cRXP_LOOT_Waterlogged Envelope|r]启动任务|r
.collect 4433,1,637
.use 4433
.accept 637 >>接任务: |cRXP_LOOT_苏利·巴鲁的信|r
step
#completewith PleaTurnin
.goto Arathi Highlands,52.5,90.4,30 >>向东游向这里的斜坡
step
.goto Arathi Highlands,48.789,88.058
>>单击|cRXP_PICK_Cache of Explorers|r
.complete 633,1 
step
#label PleaTurnin
.goto Wetlands,49.908,18.233
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格·加玛森|r
.turnin 633 >>交任务: |cRXP_FRIENDLY_萨多尔大桥|r
.accept 634 >>接任务: |cRXP_LOOT_请求援助|r
.target Rhag Garmason
step
#completewith next
.goto Arathi Highlands,45.83,47.55,150 >>Travel to Refuge Point
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼艾丝队长|r
.goto Arathi Highlands,45.83,47.55
.turnin 634 >>交任务: |cRXP_FRIENDLY_请求援助|r
.target Captain Nials
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟迪克·普罗斯|r
.goto Arathi Highlands,45.73,46.09
.fp Arathi >>获取阿拉蒂高地飞行路线
.target Cedrik Prose
step << skip
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德尼布·沃克|r
.goto Arathi Highlands,27.0,58.8,0
.vendor >>如果你正在进行急救，请在Stromgarde内购买所有3本急救书
.target Deneb Walker
step 
>>前往南岸酒店的地下室。如果你的定时任务失败，放弃它并跳过这一步
.goto Arathi Highlands,19.72,29.04,150,0
.goto Hillsbrad Foothills,50.71,58.76,15,0
.goto Hillsbrad Foothills,52.09,58.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布鲁米·比格尔|r
.turnin 647 >>交任务: |cRXP_FRIENDLY_马克里尔的月光酒|r
.target Brewmeister Bilger
step
#completewith end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fp Southshore >>获取南岸航线
.target Darla Harris
step << Hunter
#era
#completewith end
.xp 29.55 >>在南岸或农场龟肉中进行murloc任务，直到你达到29级的55%
step << Hunter
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯雷|r
.goto Hillsbrad Foothills,50.415,58.803
.stable >>稳定你的宠物。你很快就会驯服一只|cRXP_ENEMY_Elder Moss Creeper|r
.target Wesley
step << Hunter
.goto Hillsbrad Foothills,56.6,53.8
>>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on a|cRXP_ENEMY_Elder Moss Creeper|r驯服它|r 
.train 17264 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132278:0|t[比特（等级4）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.unitscan Elder Moss Creeper
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
#label end
#completewith next
.hs >>赫斯到米奈希尔港
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
.dungeon Gnomer
#completewith wend
#label gnomer1
.goto Dun Morogh,24.2,39.1,0
+开始寻找Gnomeregan小组
.subzoneskip 133
.subzoneskip 721,2
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈罗林·钢眉|r
.turnin 292 >>交任务: |cRXP_FRIENDLY_帕雷斯之眼|r
.accept 293 >>接任务: |cRXP_LOOT_净化帕雷斯之眼|r
.target Glorin Steelbrow
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈罗林·钢眉|r
.accept 321 >>接任务: |cRXP_LOOT_光铸铁|r
.target Glorin Steelbrow
.isQuestTurnedIn 270
step
#completewith next
.goto Wetlands,10.368,61.016,8 >>上楼前往|cRXP_FRIENDLY_Archaeologist Flagongut|r
step
.isQuestTurnedIn 942
.goto Wetlands,10.84,60.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家弗拉冈特|r
.turnin 943 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
.target Archaeologist Flagongut
step
>>单击|cRXP_PICK_Waterlogged胸脯|r
.goto Wetlands,12.10,64.19
.turnin 321 >>交任务: |cRXP_FRIENDLY_光铸铁|r
.accept 324 >>接任务: |cRXP_LOOT_丢失的铁锭|r
.isQuestTurnedIn 270
step
.goto Wetlands,12.6,65.2,60,0
.goto Wetlands,10.2,71.0,60,0
.goto Wetlands,7.2,72.6,60,0
.goto Wetlands,12.6,65.2
>>杀死|cRXP_ENEMY_Bluegill Raiders|r。为|cRXX_Loot_Ingots|r掠夺它们
.complete 324,1 
.mob Bluegill Raider
.isQuestTurnedIn 270
step << Hunter
.goto Wetlands,9.54,69.70
.xp 30-15000 >>升级到距离30级15k xp
step
.goto Wetlands,8.54,55.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
.turnin 471 >>交任务: |cRXP_FRIENDLY_学徒的职责|r
.target James Halloran
step
.isQuestComplete 474
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯托菲队长|r
.goto Wetlands,9.86,57.48
.turnin 474 >>交任务: |cRXP_FRIENDLY_击败纳克罗什|r
.target Captain Stoutfist
.group
step
.goto Wetlands,10.58,60.59
.abandon 474 >>Abandon Defeat Nek'rosh
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈罗林·钢眉|r
.turnin 324 >>交任务: |cRXP_FRIENDLY_丢失的铁锭|r
.accept 322 >>接任务: |cRXP_LOOT_格瑞曼德·艾尔默|r
.target Glorin Steelbrow
.isQuestTurnedIn 270
step << Mage
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
.itemcount 17031,1 
step
#label wend
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.goto Wetlands,9.49,59.70
.fly Ironforge >>飞往铁炉堡
.target Shellei Brondir
.zoneskip Ironforge
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 30-32 Duskwood
#next 32-33 Hillsbrad/Arathi I
step
.dungeon Gnomer
#sticky
#label gnomer1
.goto Dun Morogh,24.2,39.1,0
+开始寻找Gnomeregan小组
.subzoneskip 133
.subzoneskip 721,2
step << !Druid !Warrior !Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_朱莉·雷线|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,26.295,6.752 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >>训练你的职业技能
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Juli Stormkettle << Mage
.target Brandur Ironhammer << Paladin
step << Mage
.goto Ironforge,31.33,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩|r
.vendor >>|cRXP_BUY_从她那里购买3|r|T134419:0|t[传送符文]|cRXP_Buy_|r
.collect 17031,3 
.target Ginny Longberry
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >>|cRXP_BUY_BUY|r|T133738:0|t[Grimoires]|cRXP_BUY_foryour|r|T136220:0|t[Succubus]|cRX P_BUY_or your|r| T136221:0|t[虚空行者]
.target Jubahl Corpseseeker
step << Priest
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈瑞克·石鼓|r, 他在楼下
.goto Ironforge,22.837,17.094,8,0
.goto Ironforge,21.131,17.276,5,0
.goto Ironforge,23.135,15.936
>>|cRXP_BUY_购买|r|T135466:0|t[Pestilent魔杖]|cRXP_Buy_如果它比你现在的魔杖好|r
.collect 5347,1 
.target Harick Boulderdrum
step
.goto Ironforge,63.50,67.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉·巴鲁|r
.turnin 637 >>交任务: |cRXP_FRIENDLY_苏利·巴鲁的信|r
.timer 17,Sully Balloo's Letter RP
.target Sara Balloo
step
.goto Ironforge,63.50,67.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉·巴鲁|r
.accept 683 >>接任务: |cRXP_LOOT_萨拉·巴鲁的请求|r
.target Sara Balloo
step
.goto Ironforge,39.09,56.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦格尼·铜须国王|r
.turnin 683 >>交任务: |cRXP_FRIENDLY_萨拉·巴鲁的请求|r
.accept 686 >>接任务: |cRXP_LOOT_国王的礼物|r
.target King Magni Bronzebeard
step
.goto Ironforge,39.03,88.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大石匠玛布勒斯坦|r
.turnin 686 >>交任务: |cRXP_FRIENDLY_国王的礼物|r
.accept 689 >>接任务: |cRXP_LOOT_国王的礼物|r
.target Grand Mason Marblesten
step << Hunter
.goto Ironforge,61.442,88.232,15,0
.goto Ironforge,61.549,89.432
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨古斯·雷拳|r, 他在楼下
>>|cRXP_BUY_BUY a|r|T134402:0|t[|cRXP_FRIENDLY_Heavy Quiver|r]
.collect 7371,1
.target Thalgus Thunderfist
step
.goto Ironforge,72.74,94.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_飞行员比罗·长须|r
.accept 1179 >>接任务: |cRXP_WARN_防撞头盔|r
.target Pilot Longbeard
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷格努斯·雷石|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >>训练你的职业技能
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝莉亚·雷岩|r
.goto Ironforge,70.856,85.839
.trainer >>训练您的宠物技能
>>|cRXP_WARN_确保你的宠物对霜/自然的抵抗力达到极限|r
.target Belia Thundergranite
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺恩|r, |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r, |cRXP_FRIENDLY_大工匠梅卡托克|r, |cRXP_FRIENDLY_大机械师卡斯派普|r, |cRXP_FRIENDLY_科罗莫特·钢尺|r
.accept 2927 >>接任务: |cRXP_WARN_灾难之后|r
.goto Ironforge,69.182,50.556
.turnin -2923 >>交任务: |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r
.accept 2922 >>接任务: |cRXP_WARN_拯救尖端机器人！|r
.goto Ironforge,69.540,50.325
.accept 2929 >>接任务: |cRXP_WARN_大叛徒|r
.goto Ironforge,68.743,48.969
.accept 2930 >>接任务: |cRXP_WARN_抢救数据|r
.goto Ironforge,69.823,48.101
.accept 2924 >>接任务: |cRXP_WARN_基础模组|r
.goto Ironforge,67.925,46.101
.target Gnoarn
.target Tinkmaster Overspark
.target High Tinker Mekkatorque
.target Master Mechanic Castpipe
.target Klockmort Spannerspan
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板洛雷·火酒|r
.goto Ironforge,18.10,51.60
.home >>将您的炉石设置为铁炉堡
.target Innkeeper Firebrew
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,53.5,34.9
.zone Dun Morogh>>前往: |cRXP_PICK_丹莫罗|r
step
.dungeon Gnomer
.goto Dun Morogh,46.005,48.637,10,0
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥齐·电环|r
.turnin 2927 >>交任务: |cRXP_FRIENDLY_灾难之后|r
.accept 2926 >>接任务: |cRXP_WARN_诺恩|r
.target Ozzie Togglevolt

step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,24.35,39.78,0
.goto Dun Morogh,24.35,39.78,30,0
.goto 1415,43.42,53.81,45 >>Travel to Gnomeregan
step
.dungeon Gnomer
.goto 1415,43.40,53.41,50,0
.goto 1415,43.13,53.36,50,0
.goto 1415,43.38,52.94,50,0
.goto 1415,43.40,53.41
.use 9283 >>|cRXP_WARN_使用|r|T132788:0|t[清空Leaden Collection Phial]|cRXP_WARN_on a|cRXP_ENEMY_Irradiated Invader|r或|r|cRXX_ENEMY_Irradiated Pillarger|r
>>|cRXP_WARN_使用|cRXP_ENEMY_Irradiated Invader|r或|cRXP_ENEMY_Irradiated Pillager|r时必须是有效的|r
>>|cRXP_WARN_此任务在地牢外完成|r
.complete 2926,1 
.mob Irradiated Invader
.mob Irradiated Pillager
.isOnQuest 2926
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,46.005,48.637,40 >>前往Kharanos的|cRXP_FRIENDLY_Ozzie Togglevolt|r
>>|cRXP_WARN_当你进入地牢时，你会得到跟进|r
.isOnQuest 2926
step
.dungeon Gnomer
.goto Dun Morogh,46.005,48.637,10,0
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥齐·电环|r
.turnin 2926 >>交任务: |cRXP_FRIENDLY_诺恩|r
.target Ozzie Togglevolt
.isQuestComplete 2926
step
.dungeon Gnomer
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥齐·电环|r
.accept 2962 >>接任务: |cRXP_WARN_更多的辐射尘！|r
.target Ozzie Togglevolt
.isQuestTurnedIn 2926
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,24.35,39.78,0
.goto Dun Morogh,24.35,39.78,30,0
.goto 1415,43.42,53.81,45 >>Travel to Gnomeregan
.isOnQuest 2962
step
.dungeon Gnomer
.goto 1415,43.37,53.11,70,0
.goto 1415,43.10,52.81
>>杀死|cRXP_ENEMY_Troggs|r和|cRXX_ENEMY_Gnomes|r。掠夺它们以获得|T133215:0|t[|cRXD_Loot_白色穿孔卡|r]
.collect 9279,1,2930,1,1 
>>杀死|cRXP_ENEMY_Techbot|r。掠夺他的|cRXX_Loot_Memory Core |r
>>|cRXP_WARN_此任务在地牢外完成|r
.complete 2922,1 
.mob Techbot
.isOnQuest 2922
step
.dungeon Gnomer
.goto 1415,43.40,53.41,50,0
.goto 1415,43.13,53.36,50,0
.goto 1415,43.38,52.94,50,0
.goto 1415,43.40,53.41
>>杀死|cRXP_ENEMY_Troggs|r和|cRXX_ENEMY_Gnomes|r。掠夺它们以获得|T133215:0|t[|cRXD_Loot_白色穿孔卡|r]
.collect 9279,1 
>>|cRXP_WARN_此任务在地牢外完成|r
.isOnQuest 2930
step
.dungeon Gnomer
.goto 1415,43.364,52.892,-1
.goto 1415,43.411,52.898,-1
.goto 1415,43.402,52.672,-1
.goto 1415,43.430,52.675,-1
>>|cRXP_WARN_使用|r|T133215:0|t[|cRXP_LOOT_白色打孔卡|r]|cRXP_WARN_at |r|cRX_PICK_Matrix Punchographic 3005-A|r
>>|cRXP_WARN_此任务在地牢外完成|r
.collect 9280,1,2930,1 
.itemcount 9279,1 
.skipgossip
.isOnQuest 2930

step
.dungeon Gnomer
.goto 1415,43.17,53.36,40,0
.goto 1415,42.78,53.81
.subzone 721,2 >>进入Gnomeregan实例门户
step
.dungeon Gnomer
#completewith Thermaplugg
>>杀死所有|cRXP_ENEMY_Gnomeregan暴徒|r。掠夺他们的|cRXX_Loot_机器人机械肠子|r
.complete 2928,1 
.isOnQuest 2928
step
.dungeon Gnomer
>>|cRXP_WARN_使用|r|T133215:0|t[|cRXP_LOOT_Yellow Punch Card|r]|cRXP_WARN_at |r|cRX_PICK_Matrix Punchgraph 3005-B|r
>>这台看起来像控制台的机器位于底层的侏儒安全区，靠近黏液所在的圆形大房间
.collect 9282,1,2930,1 
.itemcount 9280,1 
.skipgossip
.isOnQuest 2930
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克努比|r
>>|cRXP_WARN_这将开始一个护送任务|cRXP_FRIENDLY_Kernobee|r在侏儒安全区外的宿舍中随机生成|r
.accept 2904 >>接任务: |cRXP_WARN_一团混乱|r
.unitscan Kernobee
step
.dungeon Gnomer
>>护送|cRXP_FRIENDLY_Kernobee|r回到地牢的起点
.complete 2904,1 
.isOnQuest 2904
step
.dungeon Gnomer
.use 9364 >>|cRXP_WARN_使用|r|T132788:0|t[Heavy Leaden Collection Phial]|cRXP_WARN_on a|cRXP_ENEMY_Irradiated Slime|r、|cRXT_ENEMY_Irradiated Lurker|r或|r|cRXD_ENEMY_iRadiated Horror|r
>>|cRXP_WARN_使用时，|cRXP_ENEMY_Irradiated Slime|r、|cRXD_ENEMY_Irradiated Lurker|r或|cRXP_ENEMY_iRadiated Horror|r必须是活动的|r
>>|cRXP_WARN_注意：您必须在获得|r|T136006:0|t[高放射性辐射]后2小时内完成此任务
.complete 2962,1 
.mob Irradiated Slime
.mob Irradiated Lurker
.mob Irradiated Horror
.isOnQuest 2962
step
.dungeon Gnomer
#completewith Thermaplugg
>>打开|cRXP_PICK_Artificial Extrapolators|r。为|cRXP_Loot_ Essential Artificials|r提取它们
.complete 2924,1 
.isOnQuest 2924
step
.dungeon Gnomer
>>|cRXP_WARN_使用|r|T133215:0|t[|cRXP_LOOT_Blue穿孔卡片|r]|cRXP-WARN_at |r|cRX_PICK_Matrix Punchographic 3005-C|r
>>Punchograph位于悬挂式平台上，紧挨着|cRXP_ENEMY_Electrochemer 6000|r
.collect 9281,1,2930,1 
.itemcount 9282,1 
.skipgossip
.isOnQuest 2930
.unitscan Electrocutioner 6000
step
.dungeon Gnomer
>>|cRXP_WARN_使用|r|T133215:0|t[|cRXP_LOOT_红色穿孔卡|r]|cRXP_WARN_at |r|cRX_PICK_Matrix Punchographic 3005-D|r
.complete 2930,1 
.itemcount 9281,1 
.skipgossip
.isOnQuest 2930
step
.dungeon Gnomer
#label Thermaplugg
>>杀死|cRXP_ENEMY_Mekkineer Thermaplug|r
.complete 2929,1 
.isOnQuest 2929
step
.dungeon Gnomer
#completewith Finished
>>打开|cRXP_PICK_Artificial Extrapolators|r。为|cRXP_Loot_ Essential Artificials|r提取它们
>>如果你还没有完成这个任务，就回到你以前掠夺过它们的地方，因为它们在几分钟后就会重生
.complete 2924,1 
.isOnQuest 2924
step
.dungeon Gnomer
#completewith Finished
>>杀死所有|cRXP_ENEMY_Gnomeregan暴徒|r。掠夺他们的|cRXX_Loot_机器人机械肠子|r
.complete 2928,1 
.isOnQuest 2928
step
.dungeon Gnomer
>>|cRXP_WARN_使用|r|T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r]|cRXP-WARN_to开始任务|r
.accept 2945 >>接任务: |cRXP_WARN_脏兮兮的戒指|r
.collect 9326,1,2945 
.itemcount 9326,1
.use 9326
step
.dungeon Gnomer
>>|cRXP_WARN_以清洁区中的|r|T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r]|cRXT_WARN_to|cRXP-PICK_the Sparklematic 5200|r为例|r
*You will have to back track to The Clean Zone near the instance entrance, make sure your teamates are there to help you on your trip back
.turnin 2945 >>交任务: |cRXP_FRIENDLY_脏兮兮的戒指|r
.itemcount 9326,1 
step
.dungeon Gnomer
>>再次单击|cRXP_PICK_the Sparklematic 5200|r
.accept 2947 >>接任务: |cRXP_WARN_戒指归来|r
.isQuestTurnedIn 2945

step
.dungeon Gnomer
.hs >>前往: |cRXP_PICK_铁炉堡|r
.zoneskip Dun Morogh
.zoneskip Ironforge
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,53.5,34.9
.zone Dun Morogh>>前往: |cRXP_PICK_丹莫罗|r
step 
.dungeon Gnomer
.goto Dun Morogh,46.005,48.637,10,0
.goto Dun Morogh,45.887,49.377
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥齐·电环|r
.turnin 2962 >>交任务: |cRXP_FRIENDLY_更多的辐射尘！|r
.target Ozzie Togglevolt
.isQuestComplete 2962
step
.dungeon Gnomer
#completewith next
.goto Dun Morogh,47.58,41.58,40,0
.goto Dun Morogh,50.19,40.79,20,0
.goto Ironforge,14.90,87.10,40,0
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r
.turnin 2947 >>交任务: |cRXP_FRIENDLY_戒指归来|r
.accept 2948 >>接任务: |cRXP_WARN_侏儒的手艺|r
.target Talvash del Kissel
.isOnQuest 2947
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r
>>|cRXP_WARN_如果您能够获得一个|r|T133215:0|t[银条]|cRXP_WARN_an和一个|r |T134105:0|t[苔藓玛瑙]|cRXP_WARN_完成此任务。如果没有，就放弃它|r
.collect 2842,1,2948,1 
.collect 1206,1 
.turnin 2948,2948,1 >>交任务: |cRXP_FRIENDLY_侏儒的手艺|r
.target Talvash del Kissel
.isOnQuest 2948
step
.dungeon Gnomer
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r, |cRXP_FRIENDLY_大工匠梅卡托克|r, |cRXP_FRIENDLY_大机械师卡斯派普|r, |cRXP_FRIENDLY_科罗莫特·钢尺|r
.turnin -2922,1 >>交任务: |cRXP_FRIENDLY_拯救尖端机器人！|r
.goto Ironforge,69.540,50.325
.turnin -2929,1 >>交任务: |cRXP_FRIENDLY_大叛徒|r
.goto Ironforge,68.743,48.969
.turnin -2930,1 >>交任务: |cRXP_FRIENDLY_抢救数据|r
.goto Ironforge,69.823,48.101
.turnin -2924,1 >>交任务: |cRXP_FRIENDLY_基础模组|r
.goto Ironforge,67.925,46.101
.target Tinkmaster Overspark
.target High Tinker Mekkatorque
.target Master Mechanic Castpipe
.target Klockmort Spannerspan
step
.dungeon Gnomer
.abandon 2948 >>放弃Gnome改进
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.bankwithdraw 2378,1130 >>从您的银行提取以下项目：
>>|T133718:0|t【骷髅指】（如果有）
>>|T134799:0|t[蜘蛛毒小瓶]（如果你有）
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.bankdeposit 5849,5996 >>将以下项目存入您的银行：
>>|T132765:0|t[安全帽箱] 
>>|T134797:0|t[水息灵药]（如果你有） 
.target Bailey Stonemantle
step << !Mage
#completewith Eye
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
>>|cRXP_WARN_如果在等电车时需要，请将您的|r|T135966:0|t[急救]|cRXP_WARN_if调平|r
step << Mage
#completewith Eye
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City>>前往: |cRXP_PICK_暴风城|r
step << Mage
#era
.isOnQuest 1078
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科林·玛伦|r
.goto Stormwind City,43.088,80.391
.turnin 1078 >>交任务: |cRXP_FRIENDLY_完鳞归玛伦|r
.target Collin Mauren
step
.dungeon Gnomer
.goto StormwindClassic,55.511,12.502
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沉默的舒尼|r
.turnin 2928 >>交任务: |cRXP_FRIENDLY_陀螺式挖掘机|r
.target Shoni the Shilent
.isQuestComplete 2928
step
#label BlessedArm
.goto Stormwind City,51.75,12.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
.turnin 322 >>交任务: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
.accept 325 >>接任务: |cRXP_LOOT_整装待发|r
.target Grimand Elmore
.isQuestTurnedIn 324
step
#label Eye
.goto Stormwind City,39.60,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大主教本尼迪塔斯|r
.turnin 293 >>交任务: |cRXP_FRIENDLY_净化帕雷斯之眼|r
.target Archbishop Benedictus
step
.goto Stormwind City,38.72,25.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托马斯|r
>>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_walks around through the Cathedral|r
.accept 1274 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Thomas
step
.goto Stormwind City,29.44,61.52
>>单击地面上的|cRXP_PICK_Sealed Crate|r
.accept 74 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << !Mage
#era
.goto Stormwind City,43.088,80.391
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科林·玛伦|r
.turnin 1078 >>交任务: |cRXP_FRIENDLY_完鳞归玛伦|r
.isOnQuest 1078
.target Collin Mauren
step
.goto StormwindClassic,61.166,64.051,8,0
.goto StormwindClassic,59.908,64.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃林·提亚斯|r, 他在楼上
.turnin 350 >>交任务: |cRXP_FRIENDLY_老朋友|r
.accept 2745 >>接任务: |cRXP_WARN_潜入城堡|r
.target Elling Trias
.isQuestTurnedIn 391
step
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >>前往暴风要塞
.isQuestTurnedIn 391
step
.goto StormwindClassic,69.205,14.404
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰里恩|r
.turnin 2745 >>交任务: |cRXP_FRIENDLY_潜入城堡|r
.accept 2746 >>接任务: |cRXP_WARN_必备物品|r
.target Tyrion
.isQuestTurnedIn 391
step
#requires Eye
.goto Stormwind City,78.30,25.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉维主教|r
.turnin 1274 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.accept 1241 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Bishop DeLavey
step
.goto Stormwind City,73.17,78.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔贞|r
.turnin 1241 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.accept 1242 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Jorgen
step
#completewith next
.goto Elwynn Forest,32.384,49.866,50 >>前往: |cRXP_PICK_艾尔文森林|r. Travel to Clara's Farm House in Elwynn Forest
.isQuestTurnedIn 391
step
#ah
>>在桌子上偷走|cRXP_Loot_Clara的新鲜苹果|r
>>|cRXP_WARN_如果你还需要|r|T132905:0|t[丝绸]|cRXP_WARN_从拍卖行买一些|r
.complete 2746,2 
.goto Elwynn Forest,33.952,57.162
.complete 2746,1 
.isQuestTurnedIn 391
step
#ssf
>>在桌子上偷走|cRXP_Loot_Clara的新鲜苹果|r
.complete 2746,2 
.goto Elwynn Forest,33.952,57.162
.complete 2746,1 
.isQuestTurnedIn 391
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃林·提亚斯|r
.turnin 1242 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.accept 1243 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Elling Trias
step
#completewith next
.goto StormwindClassic,70.347,27.208,15,0
.goto StormwindClassic,72.005,21.542,20 >>前往暴风要塞
.isQuestTurnedIn 391
step
.goto StormwindClassic,69.205,14.404
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰里恩|r
>>|cRXP_WARN_在你接受攻击之前，确保你的队伍已经交出了所有具有一定后果的物品！|r
>>|cRXP_WARN_自动任务接受已为此步骤关闭。请注意，如果其他人正在进行任务，您可能无法接受任务|r
.turnin 2746 >>交任务: |cRXP_FRIENDLY_必备物品|r
.accept 434,1 >>接任务: |cRXP_WARN_伏击！|r
.timer 124,The Attack! RP
.target Tyrion
.isQuestTurnedIn 391
step 
.goto StormwindClassic,68.024,14.075
>>|cRXP_WARN_在院子中央等待|cRXP_ENEMY_Lord Gregor Lescovar|r和|cRXX_ENEMY_Marzon the Silent Blade|r的到来。这大约需要2分钟|r
>>杀死|cRXP_ENEMY_Lord Gregor Lescovar|r和|cRXX_ENEMY_Marzon沉默之刃|r
.complete 434,1 
.complete 434,2 
.complete 434,3 
.mob Lord Gregor Lescovar
.mob Marzon the Silent Blade
.isQuestTurnedIn 391
step
.goto StormwindClassic,61.166,64.051,8,0
.goto StormwindClassic,59.908,64.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃林·提亚斯|r, 他在楼上
.turnin 434 >>交任务: |cRXP_FRIENDLY_伏击！|r
.accept 394 >>接任务: |cRXP_WARN_禽兽的首级|r
.target Elling Trias
.isQuestTurnedIn 391
step
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Master Mathias Shaw|r
.isQuestTurnedIn 391
step
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
.turnin 394 >>交任务: |cRXP_FRIENDLY_禽兽的首级|r
.accept 395 >>接任务: |cRXP_WARN_兄弟会的灭亡|r
.target Master Mathias Shaw
.isQuestTurnedIn 391
step
.goto StormwindClassic,49.194,30.283
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴隆斯·阿历克斯顿|r
.turnin 395 >>交任务: |cRXP_FRIENDLY_兄弟会的灭亡|r
.accept 396 >>接任务: |cRXP_WARN_觐见国王|r
.target Baros Alexston
.isQuestTurnedIn 391
step
#completewith next
.goto StormwindClassic,70.347,27.208,20 >>前往暴风要塞
.isQuestTurnedIn 391
step
.goto StormwindClassic,78.105,17.750
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女伯爵卡特拉娜·普瑞斯托|r
.turnin 396 >>交任务: |cRXP_FRIENDLY_觐见国王|r
.target Lady Katrana Prestor
.isQuestTurnedIn 391
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
+|cRXP_BUY_从拍卖行购买|r|T133024:0|t[青铜管]|cRXP_Buy_|r
>>|cRXP_WARN_如果找不到，请跳过此步骤|r
.bronzetube
.target Auctioneer Jaxon
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
>>|cRXP_BUY_从拍卖行购买7|r|T134743:0|t[Jungle Remedy]|cRXP_Buy_，稍后在Stranglethorn Vale进行探索|r
>>|cRXP_WARN_这是可选的，你也可以稍后从暴徒那里养殖它们|r
>>|cRXP_WARN_你可能想多买一些给自己用，因为它可以治病解毒|r << !Paladin
.collect 2633,7,204,1 
.target Auctioneer Jaxon
step
#label start
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.goto Stormwind City,66.27,62.12
.fly Duskwood>>飞到黄昏
.target Dungar Longdrink
step
.goto Duskwood,77.992,48.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尔伯|r
.vendor >>|cRXP_BUY_BUY a|r|T133024:0|t[青铜管]
>>|cRXP_WARN_这是一个有限的供应项目。如果|cRXP_FRIENDLY_Herble Baubbletump|r没有，请跳过此步骤|r

.bronzetube
.target Herble Baubbletump
.isQuestAvailable 174
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
>>|cRXP_WARN_如果您没有找到铜管，请跳过此步骤|r
.accept 174 >>接任务: |cRXP_WARN_仰望星空|r
.turnin 174 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.target Viktori Prism'Antras
.itemcount 4371,1
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 175 >>接任务: |cRXP_WARN_仰望星空|r
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,81.46,59.02
>>向南朝小教堂走去
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盲眼玛丽|r
.turnin 175 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.accept 177 >>接任务: |cRXP_WARN_仰望星空|r
.isQuestTurnedIn 174
.target Blind Mary
step
.goto Duskwood,79.73,70.64,30,0
.goto Duskwood,80.98,71.65
>>杀死|cRXP_ENEMY_Insane食尸鬼|r。掠夺他|cRXX_Loot_MMary的镜子|r
>>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
.complete 177,1
.mob Insane Ghoul
.isQuestTurnedIn 174
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.turnin 177 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 181 >>接任务: |cRXP_WARN_仰望星空|r
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡洛尔|r
.accept 173 >>接任务: |cRXP_LOOT_森林里的狼人|r
.target Calor
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.accept 58 >>接任务: |cRXP_LOOT_守夜人|r
.target 指挥官阿尔西娅·埃本洛克
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板崔莱尼|r
.goto Duskwood,73.87,44.40
.home >>将您的炉石设置为Darkshire
.target Innkeeper Trelayne
step
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板斯密茨|r
.target Tavernkeep Smitts
.accept 159 >>接任务: |cRXP_LOOT_僵尸酒|r
step
.goto Duskwood,72.55,33.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守夜人巴库斯|r
.turnin 1243 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.accept 1244 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Watcher Backus
step
.goto Duskwood,66.0,44.6,60,0
.goto Duskwood,64.2,38.8,60,0
.goto Duskwood,60.8,37.4,60,0
.goto Duskwood,61.2,46.0,60,0
.goto Duskwood,67.6,46.6,60,0
.goto Duskwood,63.6,41.2
>>杀死|cRXP_ENEMY_Nightbane Shadow Weavers|r
.complete 173,1 
.mob Nightbane Shadow Weaver
step
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡洛尔|r
.turnin 173 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.accept 221 >>接任务: |cRXP_LOOT_森林里的狼人|r
.target Calor
step
.goto Duskwood,63.8,51.8,60,0
.goto Duskwood,61.2,40.2,60,0
.goto Duskwood,65.2,51.6,60,0
.goto Duskwood,61.4,41.2
>>杀死|cRXP_ENEMY_Nightbane黑暗奔跑者|r
>>|cRXP_ENEMY_Nightbane Dark Runners |r|cRXP_WARN_移动速度非常快，且农业半径大于正常水平|r
.complete 221,1 
.mob Nightbane Dark Runner
step
#completewith next
.goto Elwynn Forest,84.60,69.37,100 >>前往Eastvale伐木营地
step
.goto Elwynn Forest,84.60,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官哈迦德|r
.turnin 74 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.accept 75 >>接任务: |cRXP_LOOT_斯塔文的传说|r
.target Marshal Haggard
step
.goto Elwynn Forest,85.70,69.53
>>往楼上的房子里走
>>打开|cRXP_PICK_Marshal Haggard的胸脯|r。为|cRXP_Loot_A褪色日记页|r
.complete 75,1 
step
.goto Elwynn Forest,84.60,69.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官哈迦德|r
.turnin 75 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.accept 78 >>接任务: |cRXP_LOOT_斯塔文的传说|r
.target Marshal Haggard
step
#completewith next
.goto Duskwood,28.10,31.46,100 >>前往Duskwood的|cRXP_FRIENDLY_Abercrombie|r
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚伯克隆比|r
.turnin 159 >>交任务: |cRXP_FRIENDLY_僵尸酒|r
.accept 133 >>接任务: |cRXP_LOOT_食尸鬼假人|r
.target Abercrombie
step
.goto Duskwood,24.26,32.90
>>杀死|cRXP_ENEMY_Plague Spreader|r。掠夺它们的|cRXD_Loot_Ribs|r和|cRXT_Loot_Fans|r
>>|cRXP_WARN_其他的|cRXP_ENEMY_Ghoul|r也可能掉落|cRXD_LOOT_Ribs|r和|cRXP_LOOT_Fangs|r，但专注于|r|cRXX_ENEMY_Plague Spreaders|r
.complete 58,1 
.complete 133,1 
.complete 101,1 
.mob Plague Spreader
.mob Flesh Eater
.mob Rotted One
.mob Bone Chewer
step
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚伯克隆比|r
.turnin 133 >>交任务: |cRXP_FRIENDLY_食尸鬼假人|r
.accept 134 >>接任务: |cRXP_LOOT_食人魔潜行者|r
.target Abercrombie
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r
.turnin 268 >>交任务: |cRXP_FRIENDLY_回复斯温|r
.target Sven Yorgen
.accept 323 >>接任务: |cRXP_LOOT_证明你的实力|r
step
.goto Duskwood,16.01,38.79
>>杀死|cRXP_ENEMY_Skeletal Raiders|r、|cRXD_ENEMY_ Skeletal Healers|r和|cRXP_ENEMY_Skletal Warders|r
>>|cRXP_WARN_输入|r|cRXP_ENEMY_Skeletal Warders的黎明木墓穴|r
>>|cRXP_ENEMY_早上|r|cRXP_WARN_a 35级精英在墓地周围巡逻。小心他|r
.complete 323,1 
.complete 323,2 
.complete 323,3 
.mob Skeletal Raider
.mob Skeletal Healer
.mob Skeletal Warder
.unitscan Mor'Ladim
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r
.turnin 323 >>交任务: |cRXP_FRIENDLY_证明你的实力|r
.target Sven Yorgen
.accept 269 >>接任务: |cRXP_LOOT_寻求指引|r
step
.goto Duskwood,23.926,72.075
>>打开|cRXP_PICK_Defias Strongbox|r。将其放入|cRXP_Loot_Defias Docket|r
.complete 1244,1 
step
.goto Duskwood,33.419,76.356
>>Loot |cRXP_LOOT_Abercrombie's Crate|r on the ground
.complete 134,1 
step
#completewith next
.goto Duskwood,34.63,77.87,20 >>进入Vul'Gol Ogre洞穴
.isQuestTurnedIn 174
step
.goto Duskwood,37.98,79.90,30,0
.goto Duskwood,36.81,83.78
>>杀死|cRXP_ENEMY_Zzarc'Vul|r。掠夺他的|cRXX_OOT_Monocle|r
>>|cRXP_ENEMY_Zzarc'Vul|r|cRXP_WARN_has洞穴内有2个产卵点|r
.complete 181,1 
.mob Zzarc' Vul
.isQuestTurnedIn 174

step
#som
#completewith welcome
.goto Duskwood,44.7,88.3
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step
#som
#completewith stvEnd
.goto Stranglethorn Vale,40.32,8.45,0
>>当你探索的时候，留意二等兵Thorsen的RP活动。保护他免受暴徒的攻击，接受他的追求
>>他每隔30分钟就在叛军营地的路上巡逻一次
.target Private Thorsen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_列兵索尔森|r, |cRXP_FRIENDLY_多伦上尉|r
.accept 215 >>接任务: |cRXP_LOOT_丛林中的秘密|r
.target Lieutenant Doren
.turnin 215 >>交任务: |cRXP_FRIENDLY_丛林中的秘密|r

step
#label welcome
#som
.goto Stranglethorn Vale,35.66,10.52
.target Barnil Stonepot
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尼尔·石罐|r
.accept 583 >>接任务: |cRXP_LOOT_欢迎来到丛林|r
.target Hemet Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 583 >>交任务: |cRXP_FRIENDLY_欢迎来到丛林|r
step
#som
.goto Stranglethorn Vale,35.61,10.61
.target Ajeck Rouack
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r
.accept 185 >>接任务: |cRXP_LOOT_猎虎|r
.target Sir S. J. Erlgadin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔加丁爵士|r
.accept 190 >>接任务: |cRXP_LOOT_猎豹|r
step
#som
#sticky
#label panthers
>>杀死|cRXP_ENEMY_Young Panthers|r
.goto Stranglethorn Vale,41.50,12.00
.complete 190,1 
.mob Young Panther
step
#som
>>杀死|cRXP_ENEMY_Young Tigers|r
.goto Stranglethorn Vale,35.40,12.50
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#som
#requires panthers
.goto Stranglethorn Vale,35.61,10.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r, |cRXP_FRIENDLY_埃尔加丁爵士|r
.turnin 185 >>交任务: |cRXP_FRIENDLY_猎虎|r
.target Ajeck Rouack
.accept 186 >>接任务: |cRXP_LOOT_猎虎|r
.target Sir S. J. Erlgadin
.turnin 190 >>交任务: |cRXP_FRIENDLY_猎豹|r

step
#som
#completewith note
#label stvEnd
.goto Duskwood,44.7,85.6
.zone Duskwood >>前往: |cRXP_PICK_暮色森林|r

step
#completewith next
.goto Duskwood,31.6,59.4,0
.goto Duskwood,34.4,54.6,0
.goto Duskwood,28.6,49.4,0
.goto Duskwood,32.8,35.2,0
.goto Duskwood,23.6,36.6,0
>>杀死|cRXP_ENEMY_Black Widow Hatchlings |r和|cRXD_ENEMY_Carrion Recluses |r。掠夺他们的|cRXP_Loot_蜘蛛毒液|r
.complete 101,2 
.mob Black Widow Hatchling
.mob Carrion Recluse
step
.goto Duskwood,22.95,44.75,80,0
.goto Duskwood,20.39,47.02,70,0
.goto Duskwood,15.07,46.91,70,0
.goto Duskwood,15.65,42.81,70,0
.goto Duskwood,18.30,47.75,70,0
.goto Duskwood,22.11,46.93,70,0
.goto Duskwood,23.68,42.13,70,0
.goto Duskwood,21.21,47.07
>>杀死|cRXP_ENEMY_Skeletal Fiends|r和|cRXD_ENEMY_ Skeletal Horrors|r。掠夺它们的|cRXP_Loot_Fingers|r
.complete 101,3 
.mob Skeletal Fiend
.mob Skeletal Horror
step
.goto Duskwood,31.6,59.4,0
.goto Duskwood,34.4,54.6,0
.goto Duskwood,28.6,49.4,0
.goto Duskwood,32.8,35.2,0
.goto Duskwood,31.6,59.4,50,0
.goto Duskwood,34.4,54.6,50,0
.goto Duskwood,28.6,49.4,50,0
.goto Duskwood,32.8,35.2,50,0
.goto Duskwood,23.6,36.6
>>杀死|cRXP_ENEMY_Black Widow Hatchlings |r和|cRXD_ENEMY_Carrion Recluses |r。掠夺他们的|cRXP_Loot_蜘蛛毒液|r
.complete 101,2 
.mob Black Widow Hatchling
.mob Carrion Recluse
step
#label note
.goto Duskwood,28.108,31.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚伯克隆比|r
.turnin 134 >>交任务: |cRXP_FRIENDLY_食人魔潜行者|r
.accept 160 >>接任务: |cRXP_LOOT_给镇长的信|r
.target Abercrombie
step
>>点击|cRXP_PICK_A风化砾石|r
.goto Duskwood,17.72,29.07
.accept 225 >>接任务: |cRXP_LOOT_饱经风霜的墓碑|r
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r
.turnin 325 >>交任务: |cRXP_FRIENDLY_整装待发|r
.target Sven Yorgen
.isOnQuest 325
step
.group
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r
.accept 55 >>接任务: |cRXP_LOOT_摩本特·费尔|r
.target Sven Yorgen
.isQuestTurnedIn 325
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <32,1 
step << Druid
>>前往: |cRXP_PICK_月光林地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >>训练你的职业技能
.target Loganaar
.xp <32,1 
step
#som
.hs >>Hearth返回Darkshire
>>如果需要，购买食物/水
step
#completewith next
#era
.hs >>赫斯到达克希尔
step
#completewith next
.goto Duskwood,73.872,44.406
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板崔莱尼|r
.vendor >>|cRXP_BUY_买食物/水。对于即将到来的细分市场，您至少需要2个1/2堆栈|r
.target Innkeeper Trelayne
step
.goto Duskwood,73.77,44.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板斯密茨|r
.turnin 78 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.accept 79 >>接任务: |cRXP_LOOT_斯塔文的传说|r
.target Tavernkeep Smitts
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.turnin 58 >>交任务: |cRXP_FRIENDLY_守夜人|r
.turnin 79 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.accept 80 >>接任务: |cRXP_LOOT_斯塔文的传说|r
.target 指挥官阿尔西娅·埃本洛克
step
.goto Duskwood,72.53,46.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_书记员达尔塔|r
.turnin 80 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.accept 97 >>接任务: |cRXP_LOOT_斯塔文的传说|r
.target Clerk Daltry
step
.goto Duskwood,72.64,47.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希拉·沃宁迪|r
.turnin 225 >>交任务: |cRXP_FRIENDLY_饱经风霜的墓碑|r
.accept 227 >>接任务: |cRXP_LOOT_摩根·拉迪莫尔|r
.target Sirra Von'Indi
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
.turnin 160 >>交任务: |cRXP_FRIENDLY_给镇长的信|r
.accept 251 >>接任务: |cRXP_LOOT_翻译亚伯克隆比的信|r
.target Lord Ello Ebonlocke
step
.goto Duskwood,72.64,47.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希拉·沃宁迪|r
.turnin 251 >>交任务: |cRXP_FRIENDLY_翻译亚伯克隆比的信|r
.target Sirra Von'Indi
.accept 401 >>接任务: |cRXP_LOOT_等待希拉完工|r
.turnin 401 >>交任务: |cRXP_FRIENDLY_等待希拉完工|r
.accept 252 >>接任务: |cRXP_LOOT_翻译好的信件|r
step
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
.turnin 252 >>交任务: |cRXP_FRIENDLY_翻译好的信件|r
.target Lord Ello Ebonlocke
step
.group
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
.accept 253 >>接任务: |cRXP_LOOT_藏尸者的妻子|r
.target Lord Ello Ebonlocke
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.turnin 97 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.accept 98 >>接任务: |cRXP_LOOT_斯塔文的传说|r
.turnin 227 >>交任务: |cRXP_FRIENDLY_摩根·拉迪莫尔|r
.accept 228 >>接任务: |cRXP_LOOT_摩拉迪姆|r
.target 指挥官阿尔西娅·埃本洛克
step
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡洛尔|r
.turnin 221 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.accept 222 >>接任务: |cRXP_LOOT_森林里的狼人|r
.target Calor
step << Hunter
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瓦特·菲尔伍德|r
.goto Duskwood,73.28,44.76
.vendor 228 >>|cRXP_BUY_库存|r|T132382:0|t[剃刀箭头]
.target Avette Fellwood
step
#label exit1
.goto Duskwood,72.55,33.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守夜人巴库斯|r
.turnin 1244 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.accept 1245 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Watcher Backus
step
#sticky
#label FlowerX
.goto Duskwood,78.348,35.952
>>将蒂洛亚|r的|cRXP_Loot_Tear掠夺到地上
.complete 335,1 
step
.goto Duskwood,77.30,36.20
>>杀死|cRXP_ENEMY_Stalvan Mistmant|r。抢走他的|cRXX_Loot_家庭戒指|r
>>|cRXP_ENEMY_Stalvan Mistmant|r|cRXP_WARN_can的打击相当大。将他放回城里，如果需要，请向|cRXP_FRIENDLY_Watchers|r寻求帮助|r
.complete 98,1 
.mob Stalvan Mistmantle
step
#requires FlowerX
.goto Duskwood,75.81,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瓦夫人|r
.turnin 98 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.turnin 101 >>交任务: |cRXP_FRIENDLY_惩罚图腾|r
.target Madame Eva
step
.goto Duskwood,79.80,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.turnin 181 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.isQuestTurnedIn 174
.target Viktori Prism'Antras
step
.goto Duskwood,62.33,81.77
>>杀死|cRXP_ENEMY_Nightbane邪恶的方|r和|cRXX_ENEMY_ Nightbanne受污染的方|r
>>|cRXP_WARN_小心，因为该地区的所有暴徒在几分钟后都会立即重生|r
.complete 222,1 
.complete 222,2 
.mob Nightbane Vile Fang
.mob Nightbane Tainted One
step
#era
.goto Duskwood,62.33,81.77
.goto Duskwood,61.30,74.36,0
.goto Duskwood,65.10,73.91,0
.goto Duskwood,64.14,68.49,0
>>杀死|cRXP_ENEMY_Nightbane蠕虫|r。掠夺它们|T133741:0|t[|cRXP-Loot_A Old History Book|r]
>>|cRXP_WARN_使用|T133741:0|t[|cRXP_LOOT_A旧历史书|r]开始任务|r
.collect 2794,1,337
.use 2794
.accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step
#era
.goto Duskwood,62.33,81.77
.xp 32 >>升级，直到达到31&75%和32级之间的任何位置 << !Druid
.xp 32 >>升级到31%、85%和32%之间 << Druid
>>杀死|cRXP_ENEMY_Nightbane蠕虫|r，直到你的炉石冷却时间<25分钟
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step << skip 
#era
#completewith next
.goto Duskwood,62.33,81.77
+杀死|cRXP_ENEMY_Nightbane蠕虫|r，直到你的炉石冷却时间<25分钟
.mob Nightbane Shadow Weaver
.mob Nightbane Dark Runner
.mob Nightbane Tainted One
.mob Nightbane Worgen
step
.group 2
.goto Duskwood,28.864,30.765
>>点击|cRXP_PICK_Eliza的坟墓污垢|r召唤|cRXP_ENEMY_Eliza|r
>>杀死|cRXP_ENEMY_Eliza|r。为|cRXX_Loot_禁运者之心而掠夺她|r
>>|cRXP_ENEMY_伊丽莎|r|cRXP_WARN_will cast|r|T135846:0|t[Frostbolt]|cRXP-WARN_and|r|T135848:0|t[霜新星]|cRXP_WARN_along with invocation multiple |r|cRXP_ENEMY_Guards|r
>>|cRXP_WARN_您可以通过使用Wagon跳到|cRXP_FRIENDLY_Abercrombie|r的小屋顶部来避免与|cRXP_ENEMY_Eliza的近卫|r打交道|r << Hunter/Mage/Warlock/Priest
>>|cRXP_WARN_你可以通过使用马车跳到阿伯克龙比的小屋顶部来躲避|cRXP_ENEMY_Eliza的警卫|r|cRXP_ENEMY_Eliza|r将继续施法|r|T135846:0|t[Frostbolt]|cRXP_WARN_如果你在她活着的时候这样做|r << Warrior/Rogue/Druid/Paladin
.complete 253,1 
.mob Eliza
step
.group 3
#completewith next
>>清理你的路到房子的二楼
.cast 8913 >>|cRXP_WARN_装备|r|T135142:0|t[Morbent's Bane]|cRXP_WARN_in|r
>>|cRXP_WARN_使用|r|T135142:0|t[Morbent's Bane]|cRXP_WARN_on|r|cRXP_ENEMY_Morbent Fel|r|cRXP_WARN_to削弱他|r
>>|cRXP_WARN_记得在削弱武器/脱手槽后装备武器|r
.use 7297
step
.group 3
.goto Duskwood,16.90,33.40
>>杀死|cRXP_ENEMY_Morbent Fel|r
>>|cRXP_WARN_这个任务可能很困难。如果你愿意，你可以跳过这一步，回到更高的级别|r
.complete 55,1 
.use 7297
.mob Morbent Fel
.isOnQuest 55
step
.group
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r
.turnin 55 >>交任务: |cRXP_FRIENDLY_摩本特·费尔|r
.isQuestComplete 55
.target Sven Yorgen
step
.group 3
.goto Duskwood,19.59,37.28
>>杀死|cRXP_ENEMY_Mor'Ladim|r。掠夺他的|cRXX_Loot_Sull|r
>>|cRXP_ENEMY_Mor’Ladim|r|cRXP_WARN非常坚硬，但移动非常缓慢。如果需要的话，试着把他放在大树周围|r
>>|cRXP_WARN_这个任务可能很困难。如果你愿意，你可以跳过这一步，回到更高的级别|r
.complete 228,1 
.unitscan Mor'Ladim

step << Warrior/Rogue
#som
.goto Duskwood,19.59,37.28
.xp 33+29640 >>将区域内的暴徒打磨至29640+/58600xp
step << Warrior/Rogue
#som
.goto Duskwood,19.59,37.28
.xp 33+29640 >>将区域内的暴徒打磨至29640+/58600xp
step << Priest/Paladin/Warlock
#som
.goto Duskwood,19.59,37.28
.xp 33+24240 >>将该区域的暴徒打磨至24240+/58600xp
step
#som
#label DuskwoodEnd
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
.goto Westfall,56.55,52.63
.fly Duskwood >>前往Westfall的哨兵山。飞往Duskwood
.target Thor

step
#era
#completewith next
.goto Duskwood,44.598,87.565,0
.goto Stranglethorn Vale,40.635,3.514
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step
#era
#completewith stvEnd2
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_请留意特殊的|cRXP_FRIENDLY_Private Thorsen|r事件。他将每30分钟从叛军营地沿着公路巡逻一次|r
>>|cRXP_FRIENDLY_二等兵Thorsen|r|cRXP_WARN_将受到|cRXP-ENEMY_Kurzen的两名特工|r的攻击。如果您没有看到此事件，请忽略此步骤|r
>>杀死|cRXP_ENEMY_Kurzen的两个特工|r，然后接受|cRXP_FRIENDLY_Private Thorsen的|r任务，该任务在拯救他后可用
.accept 215 >>接任务: |cRXP_LOOT_丛林中的秘密|r
.unitscan Private Thorsen
.mob Kurzen's Agent
step
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尼尔·石罐|r, |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.accept 583 >>接任务: |cRXP_LOOT_欢迎来到丛林|r
.goto Stranglethorn Vale,35.662,10.529
.turnin 583 >>交任务: |cRXP_FRIENDLY_欢迎来到丛林|r
.goto Stranglethorn Vale,35.658,10.808
.target Barnil Stonepot
.target Hemet Nesingwary
step
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r, |cRXP_FRIENDLY_埃尔加丁爵士|r
.accept 185 >>接任务: |cRXP_LOOT_猎虎|r
.goto Stranglethorn Vale,35.616,10.619
.accept 190 >>接任务: |cRXP_LOOT_猎豹|r
.goto Stranglethorn Vale,35.556,10.546
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
#era
#completewith next
>>杀死|cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step
#era
.goto Stranglethorn Vale,35.40,12.50,50,0
.goto Stranglethorn Vale,33.30,11.90,50,0
.goto Stranglethorn Vale,31.76,9.00,50,0
.goto Stranglethorn Vale,35.40,12.50
>>杀死|cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#era
.goto Stranglethorn Vale,41.50,12.00,50,0
.goto Stranglethorn Vale,42.74,12.40,50,0
.goto Stranglethorn Vale,41.43,9.77,50,0
.goto Stranglethorn Vale,40.67,11.65,50,0
.goto Stranglethorn Vale,41.50,12.00
>>杀死|cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step
#era
#label stvEnd2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r, |cRXP_FRIENDLY_埃尔加丁爵士|r
>>|cRXP_WARN_还不接受后续行动|r
.turnin 185 >>交任务: |cRXP_FRIENDLY_猎虎|r
.goto Stranglethorn Vale,35.616,10.619
.turnin 190 >>交任务: |cRXP_FRIENDLY_猎豹|r
.goto Stranglethorn Vale,35.556,10.546
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step << Druid
#era
.goto Stranglethorn Vale,33.43,11.85
.xp 32 >>升级到32级 
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r
>>|cRXP_WARN_还不接受跟进|r
.turnin 215 >>交任务: |cRXP_FRIENDLY_丛林中的秘密|r
.isOnQuest 215
.target Lieutenant Doren
step << Druid
#era
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <34,1 
step << Druid
#era
>>前往: |cRXP_PICK_月光林地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >>训练你的职业技能
.target Loganaar
.xp <34,1 
step
#era
#completewith next
.hs >>赫斯到达克希尔
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
.cooldown item,6948,>0,1
step
#completewith WorgenWoods
.goto Duskwood,73.59,46.89,150 >>Travel to Darkshire
step
.group
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.turnin 228 >>交任务: |cRXP_FRIENDLY_摩拉迪姆|r
.isQuestComplete 228
.target 指挥官阿尔西娅·埃本洛克
step
.group
.goto Duskwood,73.59,46.89
.isQuestTurnedIn 228
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.accept 229 >>接任务: |cRXP_LOOT_幸存的女儿|r
.target 指挥官阿尔西娅·埃本洛克
step
.group
.goto Duskwood,71.93,46.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
.turnin 253 >>交任务: |cRXP_FRIENDLY_藏尸者的妻子|r
.isQuestComplete 253
.target Lord Ello Ebonlocke
step
.destroy 3248 >>摧毁: |cRXP_ENEMY_翻译好的藏尸者信件|r
step
.group
.goto Duskwood,74.54,46.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守夜人拉迪摩尔|r
>>|cRXP_FRIENDLY_守望者Ladimore |r|cRXP_WARN_trols around in Darkshire|r
.turnin 229 >>交任务: |cRXP_FRIENDLY_幸存的女儿|r
.accept 231 >>接任务: |cRXP_LOOT_女儿的爱|r
.isQuestTurnedIn 228
.target Watcher Ladimore
step
#label WorgenWoods
.goto Duskwood,75.302,48.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡洛尔|r
.turnin 222 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.accept 223 >>接任务: |cRXP_LOOT_森林里的狼人|r
.target Calor
step
.goto Duskwood,75.32,49.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔纳森·卡尔文|r
.turnin 223 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.target Jonathan Carevin
step << Warrior/Paladin
.isOnQuest 231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.goto Duskwood,77.49,44.28
.fly Westfall>>飞往威斯特福尔
.target Felicia Maline
step << Warrior/Paladin
.isOnQuest 231
>>点击|cRXP_PICK_A风化砾石|r
.goto Duskwood,17.72,29.07
.turnin 231 >>交任务: |cRXP_FRIENDLY_女儿的爱|r
step << Warrior/Paladin
.isQuestTurnedIn 231
.destroy 2154 >>摧毁: |cRXP_ENEMY_摩根·拉迪莫尔的故事|r
step << Warrior/Paladin
.isQuestTurnedIn 231
.goto Westfall,56.55,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
.fly Stormwind >>飞到暴风城
.target Thor
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.goto Duskwood,77.49,44.28
.fly Stormwind>>飞到暴风城
.target Felicia Maline
.zoneskip Duskwood,1
step << Mage
#era
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
#era
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
step << Mage
#som
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
#som
#completewith next
#level 34
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
.target Larimaine Purdue

step << Mage
.goto Stormwind City,39.843,81.446
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师马林|r
.accept 690 >>接任务: |cRXP_LOOT_马林的要求|r
.target Archmage Malin
step << Mage
.goto Stormwind City,40.633,91.867
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科诺尔·瑞沃斯|r
.accept 1301 >>接任务: |cRXP_LOOT_詹姆斯·海厄尔|r
.target Connor Rivers
step << Mage
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankwithdraw 2784 >>从您的银行提取以下项目：
>>|T134187:0|t[穆斯夸什根]
.target Newton Burnside
step << Mage
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
>>|cRXP_BUY_购买4|r|T134577:0|t[小血石矿石]|cRXP_Buy_以完成Stranglethorn Vale即将进行的可选任务|r
>>|cRXP_WARN_如果无法获得，请跳过此步骤|r
.collect 4278,4,627,1 
.target Auctioneer Jaxon
step << Mage
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>走进屠宰羔羊，下楼去
step << Mage
.goto Stormwind City,26.439,78.629
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑爪加尔德斯|r
.turnin 335 >>交任务: |cRXP_FRIENDLY_名酿|r
.accept 336 >>接任务: |cRXP_LOOT_名酿|r
.target Zardeth of the Black Claw
step << !Mage
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
>>|cRXP_BUY_购买4|r|T134577:0|t[小血石矿石]|cRXP_Buy_以完成Stranglethorn Vale即将进行的可选任务|r
>>|cRXP_WARN_如果无法获得，请跳过此步骤|r
.collect 4278,4,627,1 
.target Auctioneer Jaxon
step << !Mage
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankwithdraw 2784 >>从您的银行提取以下项目：
>>|T134187:0|t[穆斯夸什根]
.target Newton Burnside
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃林·提亚斯|r
.turnin 1245 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.accept 1246 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Elling Trias
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >>训练你的职业技能
.target Wu Shen
.target Ilsa Corbin
step << Warrior
.goto Stormwind City,78.680,45.802
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_武神|r
.accept 1718 >>接任务: |cRXP_LOOT_岛民|r
.target Wu Shen
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >>训练你的职业技能
.target Osborne the Night Man
step
#completewith next
.goto Stormwind City,70.549,44.887
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达舍尔·石拳|r
>>|cRXP_ENEMY_Dashel Stonefist|r|cRXP_WARN_在接受后续任务后会变得敌对。打败他|r
.turnin 1246 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.accept 1447 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Dashel Stonefist
step
.goto Stormwind City,70.549,44.887
>>击败|cRXP_ENEMY_Dashel石拳|r
>>|cRXP_ENEMY_Dashel Stonefist|r|cRXP_WARN_也会用2|cRXP_ENEMY_Old Town Thugs|r进行攻击。忽略它们，专注于|r|cRXP_ENEMY_Dashel Stone fist|r
.complete 1447,1 
.mob Dashel Stonefist
step
.goto Stormwind City,70.549,44.887
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达舍尔·石拳|r
.turnin 1447 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.accept 1247 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Dashel Stonefist
step
.goto Stormwind City,59.90,64.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃林·提亚斯|r
.turnin 1247 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.accept 1248 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Elling Trias
step << !Mage
.goto Stormwind City,39.843,81.446
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师马林|r
.accept 690 >>接任务: |cRXP_LOOT_马林的要求|r
.target Archmage Malin
step << !Mage
.goto Stormwind City,40.633,91.867
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科诺尔·瑞沃斯|r
.accept 1301 >>接任务: |cRXP_LOOT_詹姆斯·海厄尔|r
.target Connor Rivers
step << !Mage
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>走进屠宰羔羊，下楼去
step << !Mage
.goto Stormwind City,26.439,78.629
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑爪加尔德斯|r
.turnin 335 >>交任务: |cRXP_FRIENDLY_名酿|r
.accept 336 >>接任务: |cRXP_LOOT_名酿|r
.target Zardeth of the Black Claw
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >>训练你的职业技能
.target Ursula Deline
step << Warlock
.goto Stormwind City,25.255,78.591
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
.accept 1798 >>接任务: |cRXP_LOOT_寻找斯坦哈德|r
.target Gakin the Darkbinder
step << Warlock
.goto Stormwind City,25.283,78.223
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德米赛特·克劳斯|r
>>|cRXP_WARN_如果您早些时候从铁炉堡获得了相同的任务，请跳过此步骤|r
.accept 4738 >>接任务: |cRXP_LOOT_寻找梅纳拉·沃伦德|r
.target Demisette Cloyce
step
.goto Stormwind City,39.108,27.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_主教法席恩|r
.turnin 269 >>交任务: |cRXP_FRIENDLY_寻求指引|r
.target Bishop Farthing
.accept 270 >>接任务: |cRXP_LOOT_被诅咒的舰队|r
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >>训练你的职业技能
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
.goto StormwindClassic,38.54,26.86
.trainer >>训练你的职业技能
.target Brother Joshua
step
.goto Stormwind City,75.226,31.670
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲍雷斯·维沙克公爵|r
.turnin 336 >>交任务: |cRXP_FRIENDLY_名酿|r
.target Lord Baurles K. Wishock
step
.isOnQuest 337
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔顿·西弗|r
.turnin 337 >>交任务: |cRXP_FRIENDLY_一本破旧的历史书|r
.target Milton Sheaf
step
.isQuestTurnedIn 337
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔顿·西弗|r
.accept 538 >>接任务: |cRXP_LOOT_南海镇|r
.target Milton Sheaf
step << Mage
#som
#completewith FlytoSouthshoreA
#level 34
.trainer >>如果你之前没有，请发回暴风训练器并训练你的34级职业法术
.target Elsharin
.target Jennea Cannon
.target Larimaine Purdue

step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>走进屠宰羔羊，下楼去
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑爪加尔德斯|r, |cRXP_FRIENDLY_兹吉|r
.accept 397 >>接任务: |cRXP_WARN_干得好|r
.goto Stormwind City,26.439,78.629
.turnin 397 >>交任务: |cRXP_FRIENDLY_干得好|r
.goto Stormwind City,26.537,78.660
.target Zardeth of the Black Claw
.target Zggi
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >>训练你的职业技能
.target Einris Brightspear
step << !Mage
#completewith FlytoSouthshoreA
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
>>|cRXP_WARN_如果在等电车时需要，请调整|r|T135966:0|t[急救]|cRXP_WARN_if|r
.link https://www.youtube.com/watch?v=M_tXROi9nMQ >>|cRXP_WARN_在电车内进行登出跳跃。点击此处获取视频参考|r
step << Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step
#completewith murlocs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.50,47.70
.fly Wetlands>>飞到湿地
.target Gryth Thurden
.zoneskip Wetlands
step
.goto Wetlands,10.585,60.592
.target Glorin Steelbrow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈罗林·钢眉|r
.turnin 270 >>交任务: |cRXP_FRIENDLY_被诅咒的舰队|r
.accept 321 >>接任务: |cRXP_LOOT_光铸铁|r
.target Glorin Steelbrow
step
>>单击|cRXP_PICK_Waterlogged胸脯|r
.goto Wetlands,12.10,64.19
.turnin 321 >>交任务: |cRXP_FRIENDLY_光铸铁|r
.accept 324 >>接任务: |cRXP_LOOT_丢失的铁锭|r
step
#label murlocs
.goto Wetlands,12.6,65.2,60,0
.goto Wetlands,10.2,71.0,60,0
.goto Wetlands,7.2,72.6,60,0
.goto Wetlands,12.6,65.2
>>杀死|cRXP_ENEMY_Bluegill Raiders|r。为|cRXX_Loot_Ingots|r掠夺它们
.complete 324,1 
.mob Bluegill Raider
step
.goto Wetlands,10.58,60.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈罗林·钢眉|r
.turnin 324 >>交任务: |cRXP_FRIENDLY_丢失的铁锭|r
.accept 322 >>接任务: |cRXP_LOOT_格瑞曼德·艾尔默|r
.target Glorin Steelbrow
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r, |cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.50,47.70,-1
.goto Wetlands,9.49,59.70,-1
.fly Southshore>>飞往南岸
.target Gryth Thurden
.target Shellei Brondir
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 32-33 Hillsbrad/Arathi I
#next 33-34 Thousand Needles
step
#completewith start
>>|cRXP_WARN_|cRXP_ENEMY_Shadowy Assassin|r对南岸的攻击是随机事件|r
>>如果你在南岸看到一个|cRXP_ENEMY_Shadowy Assassin|r，就杀了他们。为|T134939:0|t[|cRXP_Loot_Assassin's Contract|r]掠夺它们
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]开始任务|r
>>|cRXP_WARN_如果没有看到事件，请跳过此步骤|r
.collect 3668,1,522
.use 3668
.accept 522 >>接任务: |cRXP_WARN_刺客的契约|r
.unitscan Shadowy Assassin
step
.isOnQuest 538
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者迪布斯|r
.turnin 538 >>交任务: |cRXP_FRIENDLY_南海镇|r
.target Loremaster Dibbs
step
.goto Hillsbrad Foothills,50.344,59.046
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费恩·奥德利克|r
.accept 659 >>接任务: |cRXP_LOOT_新的瘟疫？|r
.target Phin Odelic
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
.accept 536 >>接任务: |cRXP_LOOT_清理海岸|r
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,51.170,58.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板安德森|r
.home >>把你的炉石放在南岸
.target Innkeeper Anderson
step
.goto Hillsbrad Foothills,48.8,64.4,50,0
.goto Hillsbrad Foothills,45.8,63.6,50,0
.goto Hillsbrad Foothills,44.14,67.45,50,0
.goto Hillsbrad Foothills,40.51,69.30,50,0
.goto Hillsbrad Foothills,36.09,69.50,50,0
.goto Hillsbrad Foothills,44.69,67.24
>>杀死|cRXP_ENEMY_Torn Fin Tidehunters|r和|cRXX_ENEMY_Torn Fin Oracles|r
.complete 536,1 
.complete 536,2 
.mob Torn Fin Tidehunter
.mob Torn Fin Oracle
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
.turnin 536 >>交任务: |cRXP_FRIENDLY_清理海岸|r
.accept 559 >>接任务: |cRXP_LOOT_法尔林的证据|r
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,48.8,64.4,50,0
.goto Hillsbrad Foothills,45.8,63.6,50,0
.goto Hillsbrad Foothills,44.14,67.45,50,0
.goto Hillsbrad Foothills,40.51,69.30,50,0
.goto Hillsbrad Foothills,36.09,69.50,50,0
.goto Hillsbrad Foothills,44.69,67.24,50,0
.goto Hillsbrad Foothills,33.19,69.10,50,0
.goto Hillsbrad Foothills,31.47,72.51,50,0
.goto Hillsbrad Foothills,28.81,73.18,50,0
.goto Hillsbrad Foothills,24.84,70.21,50,0
.goto Hillsbrad Foothills,33.19,69.10
>>杀死|cRXP_ENEMY_Torn Fin Tidehunters|r，|cRXD_ENEMY_Torn Fin Oracles|r
.complete 559,1 
.mob Torn Fin Muckdweller
.mob Torn Fin Coastrunner
.mob Torn Fin Tidehunter
.mob Torn Fin Oracle
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
.turnin 559 >>交任务: |cRXP_FRIENDLY_法尔林的证据|r
.accept 560 >>接任务: |cRXP_LOOT_法尔林的证据|r
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官雷德帕斯|r
.turnin 560 >>交任务: |cRXP_FRIENDLY_法尔林的证据|r
.accept 561 >>接任务: |cRXP_LOOT_法尔林的证据|r
.target Marshal Redpath
step
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
.turnin 561 >>交任务: |cRXP_FRIENDLY_法尔林的证据|r
.accept 562 >>接任务: |cRXP_LOOT_升官之道|r
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,52.97,64.67,60,0
.goto Hillsbrad Foothills,55.32,63.35,60,0
.goto Hillsbrad Foothills,58.35,66.37,60,0
.goto Hillsbrad Foothills,59.55,73.43,60,0
.goto Hillsbrad Foothills,56.97,67.01
>>杀死|cRXP_ENEMY_Daggerspine警报器|r和|cRXX_ENEMY_Daggerspine Shorehunters|r
>>|cRXP_WARN_你可能需要为他们游到水里|r
.complete 562,1 
.complete 562,2 
.mob Daggerspine Shorehunter
.mob Daggerspine Siren
step
#label start
.goto Hillsbrad Foothills,51.465,58.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
.turnin 562 >>交任务: |cRXP_FRIENDLY_升官之道|r
.accept 563 >>接任务: |cRXP_LOOT_人事调动|r
.target Lieutenant Farren Orinelle
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尼·马雷布镇长|r
>>|cRXP_WARN_不接受后续跟进|r
.turnin 522 >>交任务: |cRXP_FRIENDLY_刺客的契约|r
.isOnQuest 522
.target Magistrate Henry Maleb
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>>飞到阿拉蒂高地
.target Darla Harris
step
#era/som
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼艾丝队长|r
.accept 681 >>接任务: |cRXP_LOOT_诺斯弗德农场|r
.target Captain Nials
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯奎尔图|r
.turnin 690 >>交任务: |cRXP_FRIENDLY_马林的要求|r
.isOnQuest 690
.target Skuerto
step
.solo
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奎艾|r
.turnin 659 >>交任务: |cRXP_FRIENDLY_新的瘟疫？|r
.target Quae
step
.group
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奎艾|r
.turnin 659 >>交任务: |cRXP_FRIENDLY_新的瘟疫？|r
.accept 658 >>接任务: |cRXP_LOOT_新的瘟疫？|r
.target Quae
step
#completewith Northfold
.goto Arathi Highlands,25.68,59.45,15,0
.goto Arathi Highlands,23.76,60.26,15,0
.goto Arathi Highlands,23.76,58.39,35,0
.goto Arathi Highlands,26.966,58.834
>>|cRXP_WARN_前往Stromgarde Keep to further training your|r|T135966:0|t[急救]
>>|cRXP_WARN_一旦你进入里面，就要非常靠近箭头，因为要塞里有很多精英暴徒|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德尼布·沃克|r
>>|cRXP_BUY_从他那里购买|r|T133740:0|t[专家急救-包扎下]|cRXP_Buy_，|r|T133735:0|t |手动：重型丝绸绷带]|cRXP-Buy_和|r |T133735:0 | t[手动：Magewave绷带]|cRXP_Buy_|r
>>|cRXP_FRIENDLY_Deneb Walker|r|cRXP_WARN_也有有限的供应项目，如|r|T134938:0|t|T134937:0|t|134943:0|t[Scrolls]|cRXP-WARN_and|r|T134851:0|t| T134831:0|t[Potions]|cRXP_WARN_a是你应该购买的好东西|r << !Warrior !Rogue
>>|cRXP_FRIENDLY_Deneb Walker|r|cRXP_WARN_也有有限的供应项目，如|r|T134938:0|t|T134937:0|t| T134943:0|t[Scrolls]|cRXP-WARN_and|r|T134831:0|t[Potions]|cRX P_WARN_as well，您应该购买|r << Warrior Rogue
.collect 16084,1 
.collect 16112,1 
.collect 16113,1 
.skill firstaid,151,1 
.target Deneb Walker

step
.group 2
#completewith courier << !Hunter
#completewith courierhunter << Hunter
.line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
.line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
>>杀死|cRXP_ENEMY_Forsaken快递员|r。为她掠夺她|cRXX_Loot_密封文件夹|r
>>|cRXP_WARN_The |cRXP_ENEMY_Forsaken Courier|r patrols the road between Tarren Mill and Go'Shek Farm|r
>>|cRXP_WARN_铸造|r|T132172:0|t[Eagle Eye]|cRXP_WARN_to尝试找到|r|cRXP-ENEMY_Forsaken Courier|r << Hunter
>>|cRXP_WARN_如果你在Arathi看不到它们，完成Northfold Manor后在Hillsbrad寻找它们|r << Hunter
.complete 658,1 
.unitscan Forsaken Courier
step
#label Northfold
.goto Arathi Highlands,33.26,32.60,50,0
.goto Arathi Highlands,30.38,30.68,50,0
.goto Arathi Highlands,31.46,25.36,50,0
.goto Arathi Highlands,33.87,29.13,50,0
.goto Arathi Highlands,31.13,29.47
>>杀死|cRXP_ENEMY_Syndicate雇佣军|r和|cRXP_ENEMY_Syndicate Highwayman|r
>>|cRXP_WARN_请注意|cRXP_ENEMY_Syndicate Highwaymen |r位于|r|T132320:0|t[Stealth]|cRXP-WARN_an，并且可以在Northfold Manor的周边找到|r
>>|cRXP_WARN_铸造|r|T136090:0|t[感知]|cRXP_WARN_to帮助点|r|cRXP-ENEMY_Syndicate Highwaymen|r << Human
.complete 681,1 
.complete 681,2 
.mob Syndicate Highwayman
.mob Syndicate Mercenary
step << Hunter
#completewith next
.hs >>Hearth到Southshore
>>|cRXP_BUY_如果需要，购买食物/水|r
step << Hunter
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯雷|r
.goto Hillsbrad Foothills,50.415,58.803
.stable >>稳定你的宠物。你很快就会驯服一个|cRXP_ENEMY_Plains爬行器|r
.target Wesley
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>>飞到阿拉蒂高地
.target Darla Harris
step
#label courier
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼艾丝队长|r
.turnin 681 >>交任务: |cRXP_FRIENDLY_诺斯弗德农场|r
.target Captain Nials
step << Hunter
#label courierhunter
.goto Arathi Highlands,41.6,47.8,0
.goto Arathi Highlands,41.8,58.6,0
.goto Arathi Highlands,49.0,50.2,0
.goto Arathi Highlands,41.6,47.8,40,0
.goto Arathi Highlands,41.8,58.6,40,0
.goto Arathi Highlands,49.0,50.2,40,0
.goto Arathi Highlands,48.0,58.6
>>|cRXP_WARN_铸造|r|T132172:0|t[Eagle Eye]|cRXP_WARN_to尝试找到|cRXP-ENEMY_Plains Creeper|r。它们的一些位置已标记在地图上|r
>>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on a|cRXP_ENEMY_Plains Creeper|r驯服它|r 
.train 17265 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132278:0|t[比特（等级5）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.unitscan Plains Creeper
step
.group
.isQuestComplete 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奎艾|r
>>|cRXP_WARN_不要刻意查找|cRXP_ENEMY_Forsaken Courier |r。您可以跳过此步骤，稍后完成|r
.turnin 658 >>交任务: |cRXP_FRIENDLY_新的瘟疫？|r
.target Quae
step << !Hunter
#completewith next
.hs >>如果你远离飞行路线，请向南岸致敬
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔拉·哈瑞斯|r, |cRXP_FRIENDLY_瑟迪克·普罗斯|r << !Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟迪克·普罗斯|r << Hunter
.goto Hillsbrad Foothills,49.338,52.272,-1
.goto Arathi Highlands,45.73,46.09,-1
.fly Wetlands >>飞到湿地
.target Darla Harris << !Hunter
.target Cedrik Prose
step << Hunter
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝塞尼·火锤|r
.goto Wetlands,10.527,59.737
.stable >>将您的宠物从马厩中撤出
.target Bethaine Flinthammer
step
.goto Wetlands,10.828,60.399
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_文森特·海厄尔|r
.turnin 1301 >>交任务: |cRXP_FRIENDLY_詹姆斯·海厄尔|r
.accept 1302 >>接任务: |cRXP_LOOT_詹姆斯·海厄尔|r
.target Vincent Hyal
step
#completewith next
.goto Wetlands,10.599,60.769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克哈尔|r
>>|cRXP_WARN_Accepting this quest will make |cRXP_ENEMY_Tapoke "Slim" Jahn|r by the Inn entrance|r |T132320:0|t[Stealth] |cRXP_WARN_and run away outside|r
.turnin 1248 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.accept 1249 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Mikhail
.mob Tapoke "Slim" Jahn
step
.goto Wetlands,10.795,59.616
>>|cRXP_WARN_Quickly run outside!|r
>>|cRXP_WARN_击败|cRXP_ENEMY_Tapoke“Slim”Jahn|r。|cRXD_ENEMY_Slim的朋友|r将逃跑一次|cRXX_ENEMY_Tapoke“Slim”Jahn |r提交|r
>>|cRXP_WARN_如果需要，请在|cRXP_ENEMY_Slim的朋友|r上使用任何群组控制（CC）|r
.complete 1249,1 
.mob Tapoke "Slim" Jahn
step
.goto Wetlands,10.599,60.769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克哈尔|r
.turnin 1249 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Mikhail
step
.goto Wetlands,10.545,60.260
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"干柴\"塔伯克·贾恩|r
.accept 1250 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Tapoke "Slim" Jahn
step
.goto Wetlands,10.599,60.769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克哈尔|r
.turnin 1250 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.accept 1264 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Mikhail
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 33-34 Thousand Needles
#next 34-35 Stranglethorn Vale I
step
#completewith next
.goto Wetlands,7.270,62.527,25 >>前往Menethil港码头
step
.goto Wetlands,5.075,63.408
.zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
>>|cRXP_WARN_在等待过程中调平|r|T135966:0|t[急救]|cRXP_WARN_|r
.zoneskip Tanaris
.zoneskip Thousand Needles
.zoneskip The Barrens
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.300
.fp Theramore >>获取Theramore飞行路线
.target Baldruc
step
.goto Dustwallow Marsh,66.156,46.067
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵拜伦|r
.accept 1282 >>接任务: |cRXP_LOOT_微笑的吉姆|r
.target Guard Byron
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板詹妮|r
.goto Dustwallow Marsh,66.587,45.223
.home >>将你的炉石设置为Theramore
.target Innkeeper Janene
step
.goto Dustwallow Marsh,66.459,45.147
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲欧拉·长耳|r
.accept 1135 >>接任务: |cRXP_WARN_风巢双足飞龙的毒囊|r
.target Fiora Longears
step
#label JamesHyjal
.goto Dustwallow Marsh,67.877,48.239
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_出纳员兰德里|r
.turnin 1302 >>交任务: |cRXP_FRIENDLY_詹姆斯·海厄尔|r
.target Clerk Lendry
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官萨穆尔|r, |cRXP_FRIENDLY_盖兰·维米斯队长|r
.turnin 1264 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.accept 1265 >>接任务: |cRXP_LOOT_失踪的使节|r
.goto Dustwallow Marsh,67.923,48.540
.turnin 1282 >>交任务: |cRXP_FRIENDLY_微笑的吉姆|r
.goto Dustwallow Marsh,68.212,48.620
.target Commander Samaul
.target Captain Garran Vimes
step
.goto Dustwallow Marsh,59.72,41.17 >>前往哨兵塔
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师特沃什|r
>>|cRXP_WARN_呆在|cRXP_FRIENDLY_Archmage Tervosh的|r视线内，因为他会用|r|T135880:0|t[普劳德摩尔的防御]|cRXP-WARN_给你10点耐力和40点护甲|r
.complete 1265,1 
.goto Dustwallow Marsh,59.652,41.243
.turnin 1265 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.goto Dustwallow Marsh,59.652,41.243
.target Archmage Tervosh
step
#sticky
.abandon 1266 >>放弃失踪的外交官。您稍后将完成此任务
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.300
.fly Ratchet >>飞到棘轮
.target Baldruc
.zoneskip The Barrens
.zoneskip Thousand Needles
step
.isOnQuest 1179
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法兹拉克|r, |cRXP_FRIENDLY_兹科尔|r
.bankwithdraw 5849 >>从您的银行提取以下项目：
>>|T132765:0|t[安全帽箱]
.target Fuzruckle
.target Zikkel
step
.isOnQuest 1179
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法兹拉克|r, |cRXP_FRIENDLY_兹科尔|r
.bankdeposit 3721 >>将以下项目存入您的银行：
>>|T133461:0|t[法伦报告] 
.target Fuzruckle
.target Zikkel
step
.dungeon RFK
.goto The Barrens,62.370,37.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
.accept 1221 >>接任务: |cRXP_WARN_蓝叶薯|r
.target Mebok Mizzyrix
step
.dungeon RFK
>>偷走|cRXP_Loot_Sunfflenose命令棒|r、|cRXD_Loot_SUNfflenoses用户手册|r和|cRXT_FROOT_SUNDLY_BOK|r旁边的|cRXP_Loot_SONDLY_Crate With Holes |r
.collect 6684,1,1221,1 
.goto The Barrens,62.340,37.607
.collect 5897,1,1221,1 
.goto The Barrens,62.332,37.623
.collect 5880,1,1221,1 
.goto The Barrens,62.323,37.620
step
#completewith next
.goto The Barrens,53.40,52.07,200,0
.goto The Barrens,51.0,79.0,50 >>向南前往达斯沃洛沼泽边界的Shady Rest Inn
step
>>单击地面上的|cRXP_PICK_Hoofprints|r
>>单击挂在壁炉上的|cRXP_PICK_Black Shield |r
>>单击木板上的|cRXP_PICK_Theramore防护徽章|r
.accept 1284 >>接任务: |cRXP_LOOT_可疑的蹄印|r
.goto Dustwallow Marsh,29.705,47.645
.accept 1253 >>接任务: |cRXP_LOOT_黑色盾牌|r
.goto Dustwallow Marsh,29.631,48.606
.accept 1252 >>接任务: |cRXP_LOOT_帕瓦尔·雷瑟上尉|r
.goto Dustwallow Marsh,29.832,48.243
step
.goto Dustwallow Marsh,35.154,38.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马德克拉什|r
.accept 1177 >>接任务: |cRXP_WARN_饿！|r
.target Mudcrush Durtfeet
step
#completewith next
.goto The Barrens,44.213,91.217,0
.goto Thousand Needles,32.09,22.33
.zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
step
.goto Thousand Needles,30.725,24.346
>>Loot |T133741:0|t[|cRXP_LOOT_Henrig 接任务: |cRXP_LOOT_亨里格的日记|r|r] on the ground
.use 5791 >>|cRXP_WARN_Use |T133741:0|t[|cRXP_LOOT_Henrig 接任务: |cRXP_LOOT_亨里格的日记|r|r] to start the quest|r
.accept 1100 >>接任务: |cRXP_WARN_亨里格的日记|r
step
#completewith next
.goto Thousand Needles,8.456,17.953,0
.goto Feralas,89.50,45.85,50 >>Travel to Thalanaar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛希亚娜|r
.goto Feralas,89.497,45.853
.fp Thalanaar >>获取Thalanaar飞行路线
.target Thyssiana
step
.dungeon RFK
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法芬德尔|r
.turnin 1100 >>交任务: |cRXP_FRIENDLY_亨里格的日记|r
.accept 1101 >>接任务: |cRXP_WARN_卡尔加·刺肋|r
.target Falfindel Waywarder
step
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法芬德尔|r
.turnin 1100 >>交任务: |cRXP_FRIENDLY_亨里格的日记|r
.target Falfindel Waywarder
step
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法芬德尔|r
.turnin 1059 >>交任务: |cRXP_FRIENDLY_夺回焦炭谷|r
.target Falfindel Waywarder
.isOnQuest 1059
step
.dungeon RFK
#completewith next
.goto Thousand Needles,10.88,33.24,0
.goto Thousand Needles,11.01,38.31,0
.goto Thousand Needles,13.27,38.47,0
.goto Thousand Needles,17.46,41.62,0
.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
.mob Highperch Patriarch
.mob Highperch Wyvern
.mob Highperch Consort
step
.dungeon RFK
.goto The Barrens,43.46,90.18,0
.goto The Barrens,43.46,90.18,40,0
.goto 1414,50.877,70.339
.subzone 491,2 >>Enter Razorfen Kraul
step
.dungeon RFK
>>杀死|cRXP_ENEMY_Charlga剃刀侧面|r。掠夺她|cRXD_Loot_Razorflade的心脏|r
.complete 1101,1 
.isOnQuest 1101
step
.dungeon RFK
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尔拉斯·静水|r, |cRXP_FRIENDLY_进口商威利克斯|r
.accept 1142 >>接任务: |cRXP_WARN_临终遗言|r
.accept 1144 >>接任务: |cRXP_WARN_进口商威利克斯|r
.target Heralath Fallowbrook
.target Willix the Importer
step
.dungeon RFK
#completewith next
>>杀死RFK内部的所有|cRXP_ENEMY_Monsters|r。为|cRXP_Loot_Treeshala的吊坠|r掠夺它们
.complete 1142,1 
.isOnQuest 1142
step
.dungeon RFK
>>护送|cRXP_FRIENDLY_Willix进口商|r通过Razorfen Krual
>>|cRXP_WARN_请确保靠近|cRXP_FRIENDLY_Willix|r，否则任务可能无法完成！|r
.complete 1144,1 
.isOnQuest 1144
step
.dungeon RFK
#completewith next
>>杀死RFK内部的所有|cRXP_ENEMY_Monsters|r。为|cRXP_Loot_Treeshala的吊坠|r掠夺它们
.complete 1142,1 
.isOnQuest 1142
step
.dungeon RFK
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_进口商威利克斯|r
.turnin 1144 >>交任务: |cRXP_FRIENDLY_进口商威利克斯|r
.target Willix the Importer
.isQuestComplete 1144
step
.dungeon RFK
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
step
.dungeon RFK
>>杀死RFK内部的所有|cRXP_ENEMY_Monsters|r。为|cRXP_Loot_Treeshala的吊坠|r掠夺它们
.complete 1142,1 
.isOnQuest 1142
step
.dungeon RFK
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法芬德尔|r
.turnin 1101 >>交任务: |cRXP_FRIENDLY_卡尔加·刺肋|r
.target Falfindel Waywarder
.isQuestComplete 1101
step
.isOnQuest 1135
.goto Thousand Needles,13.136,34.221,40,0
.goto Thousand Needles,10.88,33.24,50,0
.goto Thousand Needles,11.01,38.31,50,0
.goto Thousand Needles,13.27,38.47,50,0
.goto Thousand Needles,17.46,41.62,50,0
.goto Thousand Needles,11.07,35.59
>>杀死|cRXP_ENEMY_Highpers Wyverns |r，|cRXD_ENEMY_High pers Consorts|r和|cRXP_ENEMY_highpers Patriarchs|r。掠夺他们的|cRXP_Loot_Venom Sachs|r
.complete 1135,1 
.mob Highperch Patriarch
.mob Highperch Wyvern
.mob Highperch Consort
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >>前往幻影赛道
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉维尔·浓须|r
>>|cRXP_WARN_还不接受其他任务|r
.accept 1110 >>接任务: |cRXP_LOOT_火箭车零件|r
.target Kravel Koalbeard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔·铜栓|r, |cRXP_FRIENDLY_维兹尔·铜栓|r
.accept 1104 >>接任务: |cRXP_LOOT_含盐的蝎毒|r
.goto Thousand Needles,78.064,77.126 
.turnin 1179 >>交任务: |cRXP_FRIENDLY_防撞头盔|r
.accept 1105 >>接任务: |cRXP_LOOT_硬化龟壳|r
.goto Thousand Needles,78.143,77.120 
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.accept 1176 >>接任务: |cRXP_LOOT_减轻负重|r
.target Pozzik
step
.goto Thousand Needles,81.635,77.953
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛道管理员泽尔林|r
.accept 1175 >>接任务: |cRXP_LOOT_安全隐患|r
.target Trackmaster Zherin
step
#som
#label sflats
#sticky
>>在赛道周围绕圈奔跑，杀死暴徒（|cRXP_ENEMY_Vultures、Turtles、Basilisks、Scorpions|r），并在地面上抢劫汽车零件
.complete 1176,1 
.goto Thousand Needles,87.5,65.6,0
.complete 1105,1 
.goto Thousand Needles,82.6,54.8,0
.collect 3712,10,555,1 
.goto Thousand Needles,82.6,54.8,0
.complete 1175,1 
.goto Thousand Needles,73.5,59.9,0
.complete 1104,1 
.goto Thousand Needles,71.8,73.4,0
.complete 1110,1 
.mob Salt Flats Vulture
.mob Sparkleshell Tortoise
.mob Saltstone Basilisk

step
>>|cRXP_WARN_绕着闪闪发光的平地跑一圈，直到完成所有目标|r
>>杀死|cRXP_ENEMY_Salt Flats清道夫|r和|cRXX_ENEMY_Salt Flats秃鹫|r。掠夺它们的|cRXD_Loot_Bones|r
>>杀死|cRXP_ENEMY_Sparkleshell乌龟|r，|cRXD_ENEMY_ Sparkleshell Borers |r和|cRXP_ENEMY_Sparkleshell Snappers|r。掠夺它们的|cRXP_OOT_Shell|r和| cRXP_OOT_Turtle Meat|r
>>|cRXP_WARN_不要刻意收集所有|r|cRXP_LOOT_甲鱼肉|r
>>杀死|cRXP_ENEMY_Scorpid Reavers|r和|cRXD_ENEMY_Scorpid Terror|r。掠夺他们的|cRXP_Loot_Venom|r
>>杀死|cRXP_ENEMY_Saltstone Basilisk|r、|cRXD_ENEMY_Saltstone Crystalhides|r和|cRXP_ENEMY_Saltstone Gazers|r
>>打开|cRXP_PICK_Rocket Car Rubble|r。为|cRXP _Loot_Rocket Cars Parts|r抓取它
.complete 1176,1 
.goto Thousand Needles,87.5,65.6,0
.collect 3712,10,555,1,1 
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
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛道管理员泽尔林|r
.goto Thousand Needles,81.635,77.953
.turnin 1175 >>交任务: |cRXP_FRIENDLY_安全隐患|r
.target Trackmaster Zherin
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.turnin 1176 >>交任务: |cRXP_FRIENDLY_减轻负重|r
.accept 1178 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Pozzik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔·铜栓|r, |cRXP_FRIENDLY_维兹尔·铜栓|r
.turnin 1104 >>交任务: |cRXP_FRIENDLY_含盐的蝎毒|r
.goto Thousand Needles,78.064,77.126 
.turnin 1105 >>交任务: |cRXP_FRIENDLY_硬化龟壳|r
.goto Thousand Needles,78.143,77.120 
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉维尔·浓须|r
.turnin 1110 >>交任务: |cRXP_FRIENDLY_火箭车零件|r
.accept 1111 >>接任务: |cRXP_WARN_码头管理员迪兹维格|r
.accept 5762 >>接任务: |cRXP_WARN_赫米特·奈辛瓦里|r
.target Kravel Koalbeard
step
#completewith next
.goto Tanaris,51.01,29.35,150 >>前往: |cRXP_PICK_塔纳利斯|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
.goto Tanaris,51.006,29.345
.fp Tanaris>>获取Tanaris飞行路线
.target Bera Stonehammer
step
#completewith DWallow
.hs >>Hearth to Theramore公司公司
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
.isOnQuest 1135
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲欧拉·长耳|r
.goto Dustwallow Marsh,66.459,45.147
.turnin 1135 >>交任务: |cRXP_FRIENDLY_风巢双足飞龙的毒囊|r
.target Fiora Longears
step
#completewith next
.goto Dustwallow Marsh,68.23,48.82,25 >>在仓库里上楼
step
#label DWallow
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖兰·维米斯队长|r
.turnin 1252 >>交任务: |cRXP_FRIENDLY_帕瓦尔·雷瑟上尉|r
.accept 1259 >>接任务: |cRXP_LOOT_帕瓦尔·雷瑟上尉|r
.turnin 1253 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.accept 1319 >>接任务: |cRXP_LOOT_黑色盾牌|r
.turnin 1284 >>交任务: |cRXP_FRIENDLY_可疑的蹄印|r
.target Captain Garran Vimes
step
.goto Dustwallow Marsh,68.04,48.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰索兰副官|r
.turnin 1259 >>交任务: |cRXP_FRIENDLY_帕瓦尔·雷瑟上尉|r
.accept 1285 >>接任务: |cRXP_LOOT_戴林的下属|r
.target Adjutant Tesoran
step
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖兰·维米斯队长|r
.turnin 1285 >>交任务: |cRXP_FRIENDLY_戴林的下属|r
.target Captain Garran Vimes
step
.goto Dustwallow Marsh,64.756,50.426
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡兹·双链|r
.turnin 1319 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.accept 1320 >>接任务: |cRXP_LOOT_黑色盾牌|r
.target Caz Twosprocket
step
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖兰·维米斯队长|r
.turnin 1320 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.target Captain Garran Vimes
step
.dungeon RFK
.isQuestComplete 1142
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.301
.fly Darnassus >>飞往达纳苏斯
.target Baldruc
.zoneskip Dustwallow Marsh,1
step
.dungeon RFK
.isQuestComplete 1142
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step
.dungeon RFK
.isQuestComplete 1142
.goto Darnassus,62.21,57.23,10,0
.goto Darnassus,66.02,59.39,10,0
.goto Darnassus,69.529,67.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔莎拉·静水|r, 他在楼上
.turnin 1142 >>交任务: |cRXP_FRIENDLY_临终遗言|r
.target Treshala Fallowbrook
step
.dungeon RFK
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darnassus,1
step
.dungeon RFK
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
.fly Ratchet>>飞到棘轮
.target Vesprystus
.zoneskip Teldrassil,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.301
.fly Ratchet>>飞到棘轮
.target Baldruc
.zoneskip Dustwallow Marsh,1
step
.dungeon RFK
.goto The Barrens,62.370,37.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
.turnin 1221 >>交任务: |cRXP_FRIENDLY_蓝叶薯|r
.target Mebok Mizzyrix
.isQuestComplete 1221
step << Warrior
#completewith next
.goto The Barrens,65.83,48.17,55,0
.goto The Barrens,68.34,48.84,50 >>Travel to Fray Island
step << Warrior
.goto The Barrens,68.615,49.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰诺克·马克雷德|r
.turnin 1718 >>交任务: |cRXP_FRIENDLY_岛民|r
.accept 1719 >>接任务: |cRXP_LOOT_格斗考验|r
.target Klannoc Macleod
step << Warrior
.goto The Barrens,68.606,48.720
>>|cRXP_WARN_脚踩炉篦开始聚众斗殴|r
>>杀死|cRXP_ENEMY_Affley Challengers|r，直到|cRXX_ENEMY_Big Will|r出现
>>杀死|cRXP_ENEMY_Big Will|r
.complete 1719,2 
.complete 1719,1 
.mob Affray Challenger
.mob Big Will
step << Warrior
.goto The Barrens,68.615,49.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰诺克·马克雷德|r
.turnin 1719 >>交任务: |cRXP_FRIENDLY_格斗考验|r
.accept 1791 >>接任务: |cRXP_LOOT_捕风者|r
.target Klannoc Macleod
step
.goto The Barrens,62.680,36.234
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
.turnin 1178 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1180 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Gazlowe
step << Warlock
.isOnQuest 4736
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅纳拉·沃伦德|r
.goto The Barrens,62.509,35.449
.turnin 4736 >>交任务: |cRXP_FRIENDLY_寻找梅纳拉·沃伦德|r
.target Menara Voidrender
step << Warlock
.isOnQuest 4738
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅纳拉·沃伦德|r
.goto The Barrens,62.509,35.449
.turnin 4738 >>交任务: |cRXP_FRIENDLY_寻找梅纳拉·沃伦德|r
.target Menara Voidrender
step << Warlock
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 1798 >>交任务: |cRXP_FRIENDLY_寻找斯坦哈德|r
.accept 1758 >>接任务: |cRXP_LOOT_阴谋之书|r
.target Strahad Farsan
step
.goto The Barrens,63.352,38.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员迪兹维格|r
.turnin 1111 >>交任务: |cRXP_FRIENDLY_码头管理员迪兹维格|r
.accept 1112 >>接任务: |cRXP_LOOT_给克拉维尔的零件|r
.turnin 1039 >>交任务: |cRXP_FRIENDLY_贫瘠之地的港口|r
.accept 1040 >>接任务: |cRXP_WARN_藏宝海湾的航道|r
.target Wharfmaster Dizzywig
step
.goto The Barrens,63.677,38.618
>>|cRXP_WARN_在等待过程中调平|r|T135966:0|t[急救]|cRXP_WARN_|r
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 34-35 Stranglethorn Vale I
#next 35-36希尔斯堡/阿拉蒂二世
step
.goto Stranglethorn Vale,26.345,73.564
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员罗兹基尔|r
.turnin 1180 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1181 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Wharfmaster Lozgil
step
.goto Stranglethorn Vale,27.600,77.481
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯库提|r
.turnin 2904 >>交任务: |cRXP_FRIENDLY_一团混乱|r
.isQuestComplete 2904
.target Scooty
step
.isQuestTurnedIn 1038
.goto Stranglethorn Vale,27.368,74.079
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅行者拉兹戈特|r
.turnin 1040 >>交任务: |cRXP_FRIENDLY_藏宝海湾的航道|r
.accept 1041 >>接任务: |cRXP_WARN_商队通路|r
.target Caravaneer Ruzzgot
step
.goto Stranglethorn Vale,27.120,77.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰克·菲兹巴布|r
.accept 605 >>接任务: |cRXP_LOOT_歌唱水晶碎片|r
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.04,77.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板斯金德|r
.home >>将您的炉石设置为Booty Bay
.target Innkeeper Skindle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科博克|r, |cRXP_FRIENDLY_克拉兹克|r
.accept 213 >>接任务: |cRXP_LOOT_恶性竞争|r
.goto Stranglethorn Vale,27.000,77.124
.accept 198 >>接任务: |cRXP_LOOT_列兵索尔森的补给物资|r
.accept 201 >>接任务: |cRXP_LOOT_调查营地|r
.accept 616 >>接任务: |cRXP_LOOT_幽灵岛|r
.goto Stranglethorn Vale,26.943,77.207
.target Kebok
.target Krazek
step
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大财主里维加兹|r
.turnin 616 >>交任务: |cRXP_FRIENDLY_幽灵岛|r
.accept 578 >>接任务: |cRXP_LOOT_海潮之石|r
.turnin 1181 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1182 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Baron Revilgaz
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_掘金者维兹尼克|r, |cRXP_FRIENDLY_掘金者里克|r
.bankdeposit 5800 >>将以下项目存入您的银行：
>>|T132763:0|t[克拉维尔零件] 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.accept 575 >>接任务: |cRXP_LOOT_供与求|r
.target Drizzlik
step
.destroy 3898 >>摧毁: |cRXP_ENEMY_图书馆手稿|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Westfall >>飞往威斯特福尔
.target Gyll
.subzoneskip 35,1 
step
#completewith ThorsenR
.zone Duskwood >>前往: |cRXP_PICK_暮色森林|r
step
.isOnQuest 231
>>点击|cRXP_PICK_A风化砾石|r
.goto Duskwood,17.72,29.07
.turnin 231 >>交任务: |cRXP_FRIENDLY_女儿的爱|r
step
.isQuestTurnedIn 231
.destroy 2154 >>摧毁: |cRXP_ENEMY_摩根·拉迪莫尔的故事|r
step
#completewith ThorsenR
.goto Duskwood,44.598,87.565,50 >>前往Stranglethorn Vale北部
step
#som
#completewith ThorsenR
.goto Duskwood,44.7,88.3
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step
#completewith Fern
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_请留意特殊的|cRXP_FRIENDLY_Private Thorsen|r事件。他将每30分钟从叛军营地沿着公路巡逻一次|r
>>|cRXP_FRIENDLY_二等兵Thorsen|r|cRXP_WARN_将受到|cRXP-ENEMY_Kurzen的两名特工|r的攻击。如果您没有看到此事件，请忽略此步骤|r
>>杀死|cRXP_ENEMY_Kurzen的两个特工|r，然后接受|cRXP_FRIENDLY_Private Thorsen的|r任务，该任务在拯救他后可用
.accept 215 >>接任务: |cRXP_LOOT_丛林中的秘密|r
.unitscan Private Thorsen
.mob Kurzen's Agent
step
#label ThorsenR
.goto Stranglethorn Vale,37.980,3.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_列兵索尔森|r
>>|cRXP_WARN_如果|cRXP_FRIENDLY_Private Thorsen|r不在叛军营地，他可能正在参加他的特别活动。跳过此步骤。如果你还没有接受他的任务，就在路上找他|r
.turnin 198 >>交任务: |cRXP_FRIENDLY_列兵索尔森的补给物资|r
.target Private Thorsen
step
.goto Stranglethorn Vale,38.017,3.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤瓦中士|r
.accept 203 >>接任务: |cRXP_LOOT_以彼之道还施彼身|r
.accept 204 >>接任务: |cRXP_LOOT_库尔森的药物|r
.target Sergeant Yohwa
step << skip 
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r
.accept 200 >>接任务: |cRXP_LOOT_书呆子赫罗德|r
.target Lieutenant Doren
step
#completewith Fern
>>杀死|cRXP_ENEMY_Stone Maw Basilisk|r和|cRXP_ENEMY_Crystal Spine Basilisk| r。掠夺它们的|cRXD_Loot_Shard|r
>>|cRXP_ENEMY_石腹Basilisk|r|cRXP_WARN_and|r|cRXP_ENEMY_Crystal Spine Basilisk| r|cRX P_WARN_will cast|r|T132154:0|t[水晶凝视]|cRX _ WARN_这是一个6秒长的眩晕。当他们开始施法时，只需移出近战范围即可避免|r
.goto Stranglethorn Vale,24.4,17.2,0
.goto Stranglethorn Vale,48.48,8.85,0
.complete 605,1 
.mob Stone Maw Basilisk
.mob Crystal Spine Basilisk
step
#completewith Fern
.goto Stranglethorn Vale,32.6,8.8,0
.goto Stranglethorn Vale,36.8,10.6,0
.goto Stranglethorn Vale,40.8,13.8,0
>>杀死|cRXP_ENEMY_River鳄鱼|r。掠夺它们的|cRXP-Loot_Skin|r
.complete 575,1 
.mob River Crocolisk
step
.goto Stranglethorn Vale,35.658,10.808
.target Hemet Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 5762 >>交任务: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
step
.goto Stranglethorn Vale,35.61,10.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r
.accept 186 >>接任务: |cRXP_LOOT_猎虎|r
.target Ajeck Rouack
step
#completewith next
.goto Stranglethorn Vale,44.93,10.25,0
>>杀死|cRXP_ENEMY_Kurzen丛林战士|r和|cRXD_ENEMY_Kurzen医药人|r。掠夺|cRXP_ENEMY_Kurzen药品人|r以获得|cRXP_OOT_Jungle补救措施|r
>>|cRXP_ENEMY_Kurzen Medicine Men|r|cRXP_WARN_also drop|r|T134413:0|t[Liferoot]|cRXP-WARN_。将这些保存到|r|T132403:0|t[|cFF0070FF旋风斧|r]|cRXP_WARN_quest以后|r << Warrior
>>|cRXP_WARN_抓住你找到的任何|r|T134332:0|t[荆棘的青山-页面]|cRXP_WARN_。交易或出售副本|r
.complete 203,1 
.complete 204,1 
.mob Kurzen Jungle Fighter
.mob Kurzen Medicine Man
step
#label Fern
.goto Stranglethorn Vale,44.086,9.538
>>打开|cRXP_PICK_Kurzen耗材|r。将其洗劫一空，以获取|cRXP _Loot_Venom Fern提取物|r
.complete 204,2 
step
.goto Stranglethorn Vale,44.93,10.25
>>杀死|cRXP_ENEMY_Kurzen丛林战士|r和|cRXD_ENEMY_Kurzen医药人|r。掠夺|cRXP_ENEMY_Kurzen药品人|r以获得|cRXP_OOT_Jungle补救措施|r
>>|cRXP_ENEMY_Kurzen Medicine Men|r|cRXP_WARN_also drop|r|T134413:0|t[Liferoot]|cRXP-WARN_。将这些保存到|r|T132403:0|t[|cFF0070FF旋风斧|r]|cRXP_WARN_quest以后|r << Warrior
>>|cRXP_WARN_抓住你找到的任何|r|T134332:0|t[荆棘的青山-页面]|cRXP_WARN_。交易或出售副本|r
.complete 203,1 
.complete 204,1 
.mob Kurzen Jungle Fighter
.mob Kurzen Medicine Man
step
#completewith next
>>杀死|cRXP_ENEMY_Stone Maw Basilisk|r和|cRXP_ENEMY_Crystal Spine Basilisk| r。掠夺它们的|cRXD_Loot_Shard|r
>>|cRXP_ENEMY_石腹Basilisk|r|cRXP_WARN_and|r|cRXP_ENEMY_Crystal Spine Basilisk| r|cRX P_WARN_will cast|r|T132154:0|t[水晶凝视]|cRX _ WARN_这是一个6秒长的眩晕。当他们开始施法时，只需移出近战范围即可避免|r
.goto Stranglethorn Vale,24.4,17.2,0
.goto Stranglethorn Vale,48.48,8.85,0
.complete 605,1 
.mob Stone Maw Basilisk
.mob Crystal Spine Basilisk
step
.goto Stranglethorn Vale,46.75,15.81
>>杀死|cRXP_ENEMY_Stranglethorn Tigers|r
.complete 186,1 
.mob Stranglethorn Tiger
step
#completewith RebelCampTurnins
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_请留意特殊的|cRXP_FRIENDLY_Private Thorsen|r事件。他将每30分钟从叛军营地沿着公路巡逻一次|r
>>|cRXP_FRIENDLY_二等兵Thorsen|r|cRXP_WARN_将受到|cRXP-ENEMY_Kurzen的两名特工|r的攻击。如果您没有看到此事件，请忽略此步骤|r
>>杀死|cRXP_ENEMY_Kurzen的两个特工|r，然后接受|cRXP_FRIENDLY_Private Thorsen的|r任务，该任务在拯救他后可用
.accept 215 >>接任务: |cRXP_LOOT_丛林中的秘密|r
.unitscan Private Thorsen
.mob Kurzen's Agent
step
.goto Stranglethorn Vale,37.980,3.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_列兵索尔森|r
>>|cRXP_WARN_您可能需要等待几分钟，|cRXP_FRIENDLY_Private Thorsen|r才能产卵|r
.turnin 198 >>交任务: |cRXP_FRIENDLY_列兵索尔森的补给物资|r
.target Private Thorsen
step
#label RebelCampTurnins
.goto Stranglethorn Vale,38.017,3.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤瓦中士|r
.turnin 203 >>交任务: |cRXP_FRIENDLY_以彼之道还施彼身|r
.turnin 204 >>交任务: |cRXP_FRIENDLY_库尔森的药物|r
.target Sergeant Yohwa
step
.goto Stranglethorn Vale,37.740,3.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡雷布下士|r
.accept 210 >>接任务: |cRXP_LOOT_克拉兹克的烹调锅|r
.target Corporal Kaleb
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r
>>|cRXP_WARN_还不接受跟进|r
.turnin 215 >>交任务: |cRXP_FRIENDLY_丛林中的秘密|r
.isOnQuest 215
.target Lieutenant Doren
step
#completewith HemetTurnins
.goto Stranglethorn Vale,40.339,8.434,0
>>|cRXP_WARN_请留意特殊的|cRXP_FRIENDLY_Private Thorsen|r事件。他将每30分钟从叛军营地沿着公路巡逻一次|r
>>|cRXP_FRIENDLY_二等兵Thorsen|r|cRXP_WARN_将受到|cRXP-ENEMY_Kurzen的两名特工|r的攻击。如果您没有看到此事件，请忽略此步骤|r
>>杀死|cRXP_ENEMY_Kurzen的两个特工|r，然后接受|cRXP_FRIENDLY_Private Thorsen的|r任务，该任务在拯救他后可用
.accept 215 >>接任务: |cRXP_LOOT_丛林中的秘密|r
.unitscan Private Thorsen
.mob Kurzen's Agent
step
#completewith next
.goto Stranglethorn Vale,32.6,8.8,0
.goto Stranglethorn Vale,36.8,10.6,0
.goto Stranglethorn Vale,40.8,13.8,0
>>杀死|cRXP_ENEMY_River鳄鱼|r。掠夺它们的|cRXP-Loot_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#label HemetTurnins
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r, |cRXP_FRIENDLY_埃尔加丁爵士|r
.accept 194 >>接任务: |cRXP_LOOT_猎龙|r
.goto Stranglethorn Vale,35.658,10.808
.turnin 186 >>交任务: |cRXP_FRIENDLY_猎虎|r
.accept 187 >>接任务: |cRXP_LOOT_猎虎|r
.goto Stranglethorn Vale,35.616,10.619
.accept 191 >>接任务: |cRXP_LOOT_猎豹|r
.goto Stranglethorn Vale,35.556,10.546
.target Hemet Nesingwary
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
.goto Stranglethorn Vale,32.6,8.8,60,0
.goto Stranglethorn Vale,36.8,10.6,60,0
.goto Stranglethorn Vale,40.8,13.8,60,0
.goto Stranglethorn Vale,32.6,8.8,60,0
.goto Stranglethorn Vale,36.8,10.6,60,0
.goto Stranglethorn Vale,40.8,13.8,60,0
.goto Stranglethorn Vale,36.8,10.6
>>杀死|cRXP_ENEMY_River鳄鱼|r。掠夺它们的|cRXP-Loot_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#completewith next
>>杀死|cRXP_ENEMY_Panthers|r
.complete 191,1 
.mob Panther
step
.goto Stranglethorn Vale,31.52,16.61,60,0
.goto Stranglethorn Vale,31.91,19.93,60,0
.goto Stranglethorn Vale,34.36,18.58,60,0
.goto Stranglethorn Vale,31.52,16.61,60,0
.goto Stranglethorn Vale,31.91,19.93
>>杀死|cRXP_ENEMY_Elder Stranglethorn Tigers|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
.goto Stranglethorn Vale,30.4,12.4,60,0
.goto Stranglethorn Vale,29.4,8.8,60,0
.goto Stranglethorn Vale,28.2,12.0,60,0
.goto Stranglethorn Vale,28.2,16.4,60,0
.goto Stranglethorn Vale,29.8,11.2
>>杀死|cRXP_ENEMY_Panthers|r
.complete 191,1 
.mob Panther
step
#completewith next
.goto Stranglethorn Vale,27.35,18.52,0
.goto Stranglethorn Vale,25.53,17.73,0
.goto Stranglethorn Vale,23.25,17.21,0
>>杀死|cRXP_ENEMY_Crystal Spine Basilisk|r。掠夺它们的|cRXP_Loot_Shard|r
>>|cRXP_ENEMY_水晶尖刺Basilisk|r|cRXP_WARN_满铸|r|T132154:0|t[水晶凝视]|cRXP-WARN_这是一个6秒长的眩晕。当他们开始施法时，只需移出近战范围即可避免|r
.complete 605,1 
.mob Crystal Spine Basilisk
step
.goto Stranglethorn Vale,27.61,15.39,60,0
.goto Stranglethorn Vale,25.91,16.33,60,0
.goto Stranglethorn Vale,24.24,15.84,60,0
.goto Stranglethorn Vale,27.16,16.06
>>杀死|cRXP_ENEMY_Stranglethorn猛禽|r
.complete 194,1 
.mob Stranglethorn Raptor
step
.goto Stranglethorn Vale,27.35,18.52,50,0
.goto Stranglethorn Vale,25.53,17.73,50,0
.goto Stranglethorn Vale,23.25,17.21,50,0
.goto Stranglethorn Vale,25.53,17.73
>>杀死|cRXP_ENEMY_Crystal Spine Basilisk|r。掠夺它们的|cRXP_Loot_Shard|r
>>|cRXP_ENEMY_水晶尖刺Basilisk|r|cRXP_WARN_满铸|r|T132154:0|t[水晶凝视]|cRXP-WARN_这是一个6秒长的眩晕。当他们开始施法时，只需移出近战范围即可避免|r
.complete 605,1 
.mob Crystal Spine Basilisk
step
.goto Stranglethorn Vale,21.580,21.842
.goto Stranglethorn Vale,21.580,21.842 >>前往闹鬼岛
.complete 578,1 
step
#completewith next
.goto Stranglethorn Vale,35.658,10.808,80 >>奈辛瓦利远征之旅
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r, |cRXP_FRIENDLY_埃尔加丁爵士|r
.turnin 194 >>交任务: |cRXP_FRIENDLY_猎龙|r
.goto Stranglethorn Vale,35.658,10.808
.turnin 187 >>交任务: |cRXP_FRIENDLY_猎虎|r
.goto Stranglethorn Vale,35.616,10.619
.turnin 191 >>交任务: |cRXP_FRIENDLY_猎豹|r
.goto Stranglethorn Vale,35.556,10.546
.target Hemet Nesingwary
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r
>>|cRXP_WARN_还不接受跟进|r
.turnin 215 >>交任务: |cRXP_FRIENDLY_丛林中的秘密|r
.isOnQuest 215
.target Lieutenant Doren
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
step << Druid
>>前往: |cRXP_PICK_月光林地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >>训练你的职业技能
.target Loganaar
step
#completewith next
.hs >>赫斯到Booty Bay
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
.goto Stranglethorn Vale,27.120,77.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 605 >>交任务: |cRXP_FRIENDLY_歌唱水晶碎片|r
.target Crank Fizzlebub
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科博克|r, |cRXP_FRIENDLY_克拉兹克|r
.accept 189 >>接任务: |cRXP_LOOT_血顶巨魔的耳朵|r
.goto Stranglethorn Vale,27.000,77.124
.turnin 201 >>交任务: |cRXP_FRIENDLY_调查营地|r
.turnin 210 >>交任务: |cRXP_FRIENDLY_克拉兹克的烹调锅|r
.goto Stranglethorn Vale,26.943,77.207
.target Kebok
.target Krazek
step
#optional
.goto Stranglethorn Vale,26.943,77.207
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兹克|r
.accept 627 >>接任务: |cRXP_WARN_克拉兹克的要求|r
.turnin 627 >>交任务: |cRXP_FRIENDLY_克拉兹克的要求|r
.accept 622 >>接任务: |cRXP_WARN_向卡雷布下士回报|r
.itemcount 4278,4 
.target Krazek
step
#optional
.isQuestTurnedIn 627
.goto Stranglethorn Vale,26.943,77.207
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兹克|r
.accept 622 >>接任务: |cRXP_WARN_向卡雷布下士回报|r
.target Krazek
step
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大财主里维加兹|r
.turnin 578 >>交任务: |cRXP_FRIENDLY_海潮之石|r
.accept 601 >>接任务: |cRXP_LOOT_水元素|r
.target Baron Revilgaz
step
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.turnin 575 >>交任务: |cRXP_FRIENDLY_供与求|r
.accept 577 >>接任务: |cRXP_LOOT_收集鳄鱼皮|r
.target Drizzlik
step
#era
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Duskwood >>飞到黄昏
.target Gyll
step
#era
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_书记员达尔塔|r
.goto Duskwood,72.6,46.8
.turnin 1041 >>交任务: |cRXP_FRIENDLY_商队通路|r
.accept 1042 >>接任务: |cRXP_WARN_卡尔文家族|r
.target Clerk Daltry
step
#era
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔纳森·卡尔文|r
.goto Duskwood,75.2,48.8
.turnin 1042 >>交任务: |cRXP_FRIENDLY_卡尔文家族|r
.accept 1043 >>接任务: |cRXP_WARN_月神的镰刀|r
.target Jonathan Carevin
step
#completewith next
.goto Duskwood,73.20,76.19,30 >>Travel to Roland's Doom
.isQuestTurnedIn 1040
step
#era
.isQuestTurnedIn 1040
>>点击洞穴后面的|cRXP_PICK_Mound of Dirt|r
.goto Duskwood,73.527,79.143
.complete 1043,1 
step
#completewith next
.goto Duskwood,75.2,48.8,100 >>Travel to Darkshire
.isQuestTurnedIn 1040
step
.isQuestTurnedIn 1040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔纳森·卡尔文|r
.goto Duskwood,75.2,48.8
.turnin 1043 >>交任务: |cRXP_FRIENDLY_月神的镰刀|r
.accept 1044 >>接任务: |cRXP_WARN_回复珊蒂斯|r
.target Jonathan Carevin
step << Mage
#completewith next
.goto Stormwind City,43.08,80.39
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
step << !Mage
.goto Stranglethorn Vale,27.530,77.787
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖尔|r
.fly Stormwind>>飞到暴风城
.target Gyll
.zoneskip Stranglethorn Vale,1
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.goto Duskwood,77.486,44.287
.fly Stormwind>>飞到暴风城
.target Felicia Maline
.zoneskip Duskwood,1
step << !Mage
#som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.53,77.78
.fly Stormwind>>飞到暴风城
.target Gyll
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankwithdraw 3721 >>从您的银行提取以下项目：
>>|T133461:0|t[法伦报告] 
.target Newton Burnside
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankdeposit 2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >>将以下项目存入您的银行：
>>存入您找到的任何|T134332:0|t[荆棘青山-页面]
.target Newton Burnside
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >>训练你的职业技能
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
.goto StormwindClassic,38.54,26.86
.trainer >>训练你的职业技能
.target Brother Joshua
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >>训练你的职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >>训练你的职业技能
.target Osborne the Night Man
step
#completewith next
.goto Stormwind City,71.68,25.60,40 >>前往暴风要塞
step
.goto Stormwind City,77.30,17.18,25,0
.goto Stormwind City,72.571,15.888
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨缪尔森少校|r
.turnin 563 >>交任务: |cRXP_FRIENDLY_人事调动|r
.target Major Samuelson
step
.isOnQuest 337
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔顿·西弗|r
.turnin 337 >>交任务: |cRXP_FRIENDLY_一本破旧的历史书|r
.target Milton Sheaf
step
.isQuestTurnedIn 337
.goto Stormwind City,74.182,7.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔顿·西弗|r
.accept 538 >>接任务: |cRXP_LOOT_南海镇|r
.target Milton Sheaf
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >>训练你的职业技能
.target Einris Brightspear
step
#label BlessedArm
.goto Stormwind City,51.75,12.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
.turnin 322 >>交任务: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
.accept 325 >>接任务: |cRXP_LOOT_整装待发|r
.target Grimand Elmore
.isQuestTurnedIn 324
step << !Mage
#completewith ReclaimersDesolace
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
>>|cRXP_WARN_如果在等电车时需要，请调整|r|T135966:0|t[急救]|cRXP_WARN_if|r
.link https://www.youtube.com/watch?v=M_tXROi9nMQ >>|cRXP_WARN_在电车内进行登出跳跃。点击此处获取视频参考|r
step << Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step
#label ReclaimersDesolace
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗顿·石锤|r
>>|cRXP_FRIENDLY_Roetten Stonehammer |r|cRXP_WARN_参观探索者大厅|r
.accept 1453 >>接任务: |cRXP_WARN_寻物公司的业务|r
.target Roetten Stonehammer
step << Warlock
.goto Ironforge,74.179,9.371
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗姆·粗臂|r
.turnin 1758 >>交任务: |cRXP_FRIENDLY_阴谋之书|r
.accept 1802 >>接任务: |cRXP_LOOT_阴谋之书|r
.target Krom Stoutarm
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >>|cRXP_BUY_BUY|r|T133738:0|t[Grimoires]|cRXP_BUY_foryour|r|T136220:0|t[Succubus]|cRXP_BUY_or|r|t13621:0|t[虚空行者]
.target Jubahl Corpseseeker
step << Warlock
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r
.trainer >>训练你的职业技能
.target Briarthorn
step
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_购买一件|r|T133759:0|t[Hillman’s Cloak]|cRXP_WARN_an和一件|r |T132913:0|t[Bolt of Woolen Cloth]|cRXP_Buy_以完成Hillsbrad Foothills的可选任务|r
>>|cRXP_WARN_您也可以制作|r|T133759:0|t[Hillman’s Cloak]|cRXP_WARN_withLeatherworking|r
>>|cRXP_WARN_如果无法获得，请跳过此步骤|r
.collect 3719,1,565,1 
.collect 2997,1,565,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
.skill leatherworking,<150,1
step
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_购买一件|r|T133759:0|t[Hillman’s Cloak]|cRXP_WARN_an和一件|r |T132913:0|t[Bolt of Woolen Cloth]|cRXP_Buy_以完成Hillsbrad Foothills的可选任务|r
>>|cRXP_WARN_如果无法获得，请跳过此步骤|r
.collect 3719,1,565,1 
.collect 2997,1,565,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
.skill leatherworking,150,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 35-36希尔斯堡/阿拉蒂二世
#next 36-37 Desolace
step
.goto Ironforge,55.506,47.746
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Southshore >>飞往南岸
.target Gryth Thurden
.zoneskip Alterac Mountains
.zoneskip Hillsbrad Foothills
.zoneskip Arathi Highlands
step
#completewith LeaveSS
>>|cRXP_WARN_|cRXP_ENEMY_Shadowy Assassin|r对南岸的攻击是随机事件|r
>>如果你在南岸看到一个|cRXP_ENEMY_Shadowy Assassin|r，就杀了他们。为|T134939:0|t[|cRXP_Loot_Assassin's Contract|r]掠夺它们
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]开始任务|r
>>|cRXP_WARN_如果没有看到事件，请跳过此步骤|r
.collect 3668,1,522
.use 3668
.accept 522 >>接任务: |cRXP_WARN_刺客的契约|r
.unitscan Shadowy Assassin
step
.goto Hillsbrad Foothills,48.937,55.028
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米沙·杨斯|r
>>|cRXP_BUY_从他那里买1|r|T134059:0|t[舒缓香料]|cRXP_Buy_|r
.collect 3713,1,555,1 
.target Micha Yance
step
.goto Hillsbrad Foothills,52.421,55.964
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达伦·玛尔维|r
.accept 564 >>接任务: |cRXP_LOOT_损失惨重|r
.target Darren Malvew
step
.goto Hillsbrad Foothills,51.885,58.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师杰森|r
.accept 555 >>接任务: |cRXP_LOOT_海龟汤|r
.target Chef Jessen
step
.isQuestComplete 555
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师杰森|r
.goto Hillsbrad Foothills,51.885,58.679
.turnin 555 >>交任务: |cRXP_FRIENDLY_海龟汤|r
.target Chef Jessen
step
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官雷德帕斯|r
.accept 500 >>接任务: |cRXP_LOOT_破碎岭食人魔|r
.target Marshal Redpath
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尼·马雷布镇长|r
>>|cRXP_WARN_不接受后续跟进|r
.turnin 522 >>交任务: |cRXP_FRIENDLY_刺客的契约|r
.isOnQuest 522
.target Magistrate Henry Maleb
step
#label LeaveSS
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尼·马雷布镇长|r
.accept 505 >>接任务: |cRXP_LOOT_辛迪加刺客|r
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,49.431,55.534
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴图罗·吉塞提|r
>>如果您没有|T132913:0|t[羊毛衫]和|T133759:0|t[希尔曼斗篷]，请跳过此步骤
.accept 565 >>接任务: |cRXP_WARN_巴图罗的雪人毛皮披风|r
.itemcount 3719,1 
.itemcount 2997,1 
.target Bartolo Ginsetti
step << Warlock
#completewith next
.goto Hillsbrad Foothills,27.783,72.789,70 >>前往西海岸
step << Warlock
.goto Hillsbrad Foothills,27.783,72.789
>>打开轿厢的|cRXP_PICK_Tome|r。为|cRXP_Loot_Moldy Tome|r打开它
.complete 1802,1 
step
.isOnQuest 689,565
#completewith AlteracGranite
.goto Hillsbrad Foothills,45.46,31.25,40 >>进入Darrow Hill Yeti洞穴
step
#completewith next
.isOnQuest 565
>>杀死|cRXP_ENEMY_Yeti的|r。掠夺他们的|cRXX_Loot_Fur|r
>>|cRXP_WARN_只有当您成功获得一个|r|T132913:0|t[Bolt of Woolen Cloth]|cRXP_WARN_and|r|T133759:0|t[Hillman’s Cloak]|cRXP_WARN_earlier时，才能完成此操作|r
.complete 565,4 
.mob Cave Yeti
.mob Ferocious Yeti
.mob Mountain Yeti
.mob Giant Yeti
step
#label AlteracGranite
.isOnQuest 689
.goto Hillsbrad Foothills,44.36,26.48,50,0
.goto Hillsbrad Foothills,42.13,32.80,50,0
.goto Hillsbrad Foothills,44.49,29.74
>>将|cRXP_Loot_Alterac Granite |r洗劫一空
>>|cRXP_LOOT_整个洞穴的Alterac花岗岩|r|cRXP_WARN_spoons|r
.complete 689,1 
step
.isOnQuest 565
.goto Hillsbrad Foothills,44.36,26.48,50,0
.goto Hillsbrad Foothills,42.13,32.80,50,0
.goto Hillsbrad Foothills,44.49,29.74
.goto Alterac Mountains,41.6,65.0,0
.goto Alterac Mountains,36.6,70.6,0
.goto Alterac Mountains,31.2,52.8,0
>>杀死|cRXP_ENEMY_Yeti的|r。掠夺他们的|cRXX_Loot_Fur|r
>>|cRXP_WARN_如果所有|cRXP_ENEMY_Yeti的|r都死在洞穴内，你也可以杀死Alterac山脉以北的|cRXP_ENEMY_Yeti的|r|r
>>|cRXP_WARN_只有当您成功获得一个|r|T132913:0|t[Bolt of Woolen Cloth]|cRXP_WARN_and|r|T133759:0|t[Hillman’s Cloak]|cRXP_WARN_earlier时，才能完成此操作|r
.complete 565,4 
.mob Cave Yeti
.mob Ferocious Yeti
.mob Mountain Yeti
.mob Giant Yeti
step
#completewith FinishSyndicate
.goto Alterac Mountains,30.92,84.58,0,0
>>杀死|cRXP_ENEMY_Mountain Lions |r和|cRXX_ENEMY_Hulking Mountain Lions|r
.complete 564,1 
.complete 564,2 
.mob Mountain Lion
.mob Hulking Mountain Lion
step
#completewith next
>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate脚垫|r
.complete 505,1 
.complete 505,2 
.mob Syndicate Footpad
.mob Syndicate Thief
step
.goto Alterac Mountains,58.317,67.951
>>单击表上的|cRXP_PICK_Syndicate Documents|r
.accept 510 >>接任务: |cRXP_LOOT_预备行动计划|r
.accept 511 >>接任务: |cRXP_WARN_密文信件|r
step
#label FinishSyndicate
>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate脚垫|r
.goto Alterac Mountains,58.31,67.92,90,0
.goto Alterac Mountains,48.0,82.0,90,0
.goto Alterac Mountains,58.31,67.92
.goto Alterac Mountains,48.0,82.0,0
.complete 505,1 
.complete 505,2 
.mob Syndicate Footpad
.mob Syndicate Thief
step
.goto Alterac Mountains,48.01,77.01,65,0
.goto Alterac Mountains,44.03,78.36,65,0
.goto Alterac Mountains,38.54,87.49,65,0
.goto Alterac Mountains,38.78,91.07,65,0
.goto Alterac Mountains,33.67,83.36,65,0
.goto Alterac Mountains,30.68,85.06,65,0
.goto Alterac Mountains,38.78,91.07
>>杀死|cRXP_ENEMY_Mountain Lions |r和|cRXX_ENEMY_Hulking Mountain Lions|r
.complete 564,1 
.complete 564,2 
.mob Mountain Lion
.mob Hulking Mountain Lion
step
.goto Alterac Mountains,46.26,60.57,60,0
.goto Alterac Mountains,49.69,55.07,60,0
.goto Alterac Mountains,54.53,53.42,60,0
.goto Alterac Mountains,50.00,55.96
>>杀死|cRXP_ENEMY_Crushridge Ogres|r和|cRXD_ENEMY_Crashridge Brutes|r。掠夺他们的|cRXP_LOOTKnucklebones|r
.complete 500,1 
.mob Crushridge Ogre
.mob Crushridge Brute
step
.goto Hillsbrad Foothills,69.30,12.40
>>杀死|cRXP_ENEMY_Snapjaws |r。掠夺它们的|cRXX_Loot_Turtle Meat|r
>>|cRXP_WARN_沿着这条河上下走，直到你完成为止|r
.collect 3712,10,555,1
.mob Snapjaw
step << Warrior
.goto Alterac Mountains,80.499,66.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1791 >>交任务: |cRXP_FRIENDLY_捕风者|r
.accept 1712 >>接任务: |cRXP_LOOT_塞克隆尼亚|r
.target Bath'rah the Windwatcher
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比比尔法兹|r
.goto Western Plaguelands,42.924,85.061
.fp Chillwind>>获取西部瘟疫飞行路线
.target Bibilfaz Featherwhistle
step
#completewith letter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比比尔法兹|r
.goto Western Plaguelands,42.924,85.061
.fly Southshore>>飞往南岸
.target Bibilfaz Featherwhistle
step
.goto Hillsbrad Foothills,48.937,55.028
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米沙·杨斯|r
>>|cRXP_BUY_向他购买1|r|T132912:0|t[细线]|cRXP_Buy_|r
>>|cRXP_WARN_如果你还没有完成任务巴托洛的Yeti毛皮斗篷的其他目标，请跳过这一步|r
.collect 2321,1,565,1 
.itemcount 2997,1 
.itemcount 3719,1 
.itemcount 3720,10 
.target Micha Yance
step
.goto Hillsbrad Foothills,48.937,55.028
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米沙·杨斯|r
>>|cRXP_BUY_从他那里买1|r|T134059:0|t[舒缓香料]|cRXP_Buy_|r
.collect 3713,1,555,1 
.target Micha Yance
step
.isQuestComplete 565
.goto Hillsbrad Foothills,49.431,55.534
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴图罗·吉塞提|r
>>如果没有|T133759:0|t[Hillman’s Cloak]和|T132913:0|t[Bolt of Woolen Cloth]，请跳过此步骤
.turnin 565 >>交任务: |cRXP_FRIENDLY_巴图罗的雪人毛皮披风|r
.target Bartolo Ginsetti
step
#label letter
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者迪布斯|r
.turnin 511 >>交任务: |cRXP_FRIENDLY_密文信件|r
.accept 514 >>接任务: |cRXP_LOOT_铁炉堡的译码者|r
.target Loremaster Dibbs
step
.goto Hillsbrad Foothills,51.885,58.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师杰森|r
.turnin 555 >>交任务: |cRXP_FRIENDLY_海龟汤|r
.target Chef Jessen
step
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官雷德帕斯|r
.turnin 500 >>交任务: |cRXP_FRIENDLY_破碎岭食人魔|r
.target Marshal Redpath
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尼·马雷布镇长|r
.turnin 505 >>交任务: |cRXP_FRIENDLY_辛迪加刺客|r
.turnin 510 >>交任务: |cRXP_FRIENDLY_预备行动计划|r
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,52.421,55.964
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达伦·玛尔维|r
.turnin 564 >>交任务: |cRXP_FRIENDLY_损失惨重|r
.target Darren Malvew
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>>飞到阿拉蒂高地
.target Darla Harris
.zoneskip Arathi Highlands
step
.abandon 565 >>放弃巴托洛的雪人毛皮斗篷
step
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒克里汀|r
.accept 691 >>接任务: |cRXP_LOOT_证明实力|r
.target Apprentice Kryten
step
>>杀死|cRXP_ENEMY_Witherbarks|r。掠夺他们的|cRXD_Loot_Witherbark Tusks|r
>>杀死|cRXP_ENEMY_Witherbark巫医|r。掠夺他们的|cRXX_Loot_Medicine Pouches|r
>>杀死|cRXP_ENEMY_Witherbark影子猎人|r。掠夺他们的|cRXX_Loot_影子猎人刀|r
>>|cRXP_ENEMY_Witherbark影子猎人|r|cRXP_WARN_只在洞穴内发现|r
.complete 691,1 
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98
.complete 691,2 
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98
.complete 691,3 
.goto Arathi Highlands,68.38,75.92,30,0
.goto Arathi Highlands,68.20,79.47
.mob Witherbark Shadow Hunter
.mob Witherbark Witch Doctor
.mob Witherbark Shadowcaster
.mob Witherbark Troll
step
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒克里汀|r
.turnin 691 >>交任务: |cRXP_FRIENDLY_证明实力|r
.target Apprentice Kryten
step << Mage
#completewith next
.goto Arathi Highlands,45.73,46.09
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << !Mage
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟迪克·普罗斯|r
.goto Arathi Highlands,45.73,46.09
.fly Ironforge >>飞往铁炉堡
.target Cedrik Prose
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员塔伯斯·雷矛|r
.goto Ironforge,74.645,11.742
.turnin 514 >>交任务: |cRXP_FRIENDLY_铁炉堡的译码者|r
.target Prospector Stormpike
step
.isQuestComplete 689
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大石匠玛布勒斯坦|r
.goto Ironforge,39.03,88.05
.turnin 689 >>交任务: |cRXP_FRIENDLY_国王的礼物|r
.timer 75,Marblesten RP
.target Grand Mason Marblesten
step
.isQuestTurnedIn 689
>>|cRXP_WARN_等待RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大石匠玛布勒斯坦|r
.goto Ironforge,39.03,88.05
.accept 700 >>接任务: |cRXP_LOOT_国王的礼物|r
.target Grand Mason Marblesten
step
.isQuestTurnedIn 689
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦格尼·铜须国王|r
.goto Ironforge,39.09,56.19
.turnin 700 >>交任务: |cRXP_FRIENDLY_国王的礼物|r
.target King Magni Bronzebeard

]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 36-37 Desolace
#next 37-38 Stranglethorn Vale II
step << !Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.goto Ironforge,35.90,60.17
.bankwithdraw 5996 >>从您的银行提取以下项目：
>>|T134797:0|t[水息灵药]（如果你有）
.target Bailey Stonemantle
step << !Warlock
#ah
#completewith next
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_从拍卖行购买|r|T134797:0|t[水息灵药]|cRXP_Buy_|r
.collect 5996,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << Mage
#completewith next
.goto Ironforge,55.506,47.746
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << !Mage
#completewith DesolaceArrive
.goto Ironforge,55.506,47.746
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Wetlands >>飞到湿地
.target Gryth Thurden
step << !Mage
.goto Wetlands,7.10,57.96,30,0
.goto Wetlands,4.61,57.26,15 >>前往Menethil港码头
.zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
>>|cRXP_WARN_在等待船只到达Darkshore时，将您的|r|T135966:0|t[急救]|cRXP_WARN_调平|r
.isOnQuest 1044,1453 
step << !Mage
.goto Darkshore,36.71,44.98,10,0
.goto Darkshore,36.34,45.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
.fly Teldrassil >>飞往Teldrassil
.isOnQuest 1044
.target Caylais Moonfeather
step << !Mage
#completewith DesolaceArrive
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
.isOnQuest 1044
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞恩提尔·刃纹|r
.goto Darnassus,61.777,39.180
.turnin 1044 >>交任务: |cRXP_FRIENDLY_回复珊蒂斯|r
.target Thyn'tel Bladeweaver
.isOnQuest 1044
step << Mage
#completewith DesolaceArrive
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darnassus,1
step << Mage
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
.fly Desolace >>Fly to Desolace
.target Vesprystus
.zoneskip Desolace
step << !Mage
.isQuestTurnedIn 1044
#completewith DesolaceArrive
.goto Darnassus,30.00,41.43,10 >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darnassus,1
step << !Mage
.isQuestTurnedIn 1044
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
.fly Desolace >>Fly to Desolace
.target Vesprystus
.zoneskip Desolace
step
.goto Darkshore,36.71,44.98,10,0
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
.fly Desolace >>Fly to Desolace
.target Caylais Moonfeather
.zoneskip Darkshore,1
step
#label DesolaceArrive
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板利莎瑞亚|r
.goto Desolace,66.275,6.554
.home >>将你的炉石设置为Nijel的点
.target Innkeeper Lyshaerya
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1453 >>交任务: |cRXP_FRIENDLY_寻物公司的业务|r
.accept 1458 >>接任务: |cRXP_WARN_寻物公司的委托|r
.accept 1454 >>接任务: |cRXP_WARN_卡尼托的海难|r
.target Kreldig Ungor
step
#era/som
.goto Desolace,66.74,10.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦尔金斯下士|r, |cRXP_FRIENDLY_本迪加斯上尉|r
.accept 1387 >>接任务: |cRXP_WARN_悬赏半人马|r
.goto Desolace,66.743,10.872
.accept 1382 >>接任务: |cRXP_WARN_奇怪的联盟|r
.goto Desolace,66.665,10.933
.target Corporal Melkins
.target Captain Pentigast
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦拉里尔·屠魔者|r
.accept 1437 >>接任务: |cRXP_WARN_瓦拉里尔的搜寻|r
.target Vahlarriel Demonslayer
step
.goto Desolace,72.96,18.47,70,0
.goto Desolace,79.45,17.65,70,0
.goto Desolace,78.09,22.50,70,0
.goto Desolace,76.32,25.08,70,0
.goto Desolace,73.96,22.05,70,0
.goto Desolace,72.51,17.93
>>杀死|cRXP_ENEMY_Hatefury Satyrs|r。掠夺他们的|cRXP_Loot_爪|r和|cRXP-Loot_角|r
.complete 1458,1 
.complete 1458,2 
.mob Hatefury Trickster
.mob Hatefury Shadowstalker
.mob Hatefury Hellcaller
.mob Hatefury Betrayer
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1458 >>交任务: |cRXP_FRIENDLY_寻物公司的委托|r
.accept 1459 >>接任务: |cRXP_WARN_寻物公司的委托|r
.target Kreldig Ungor
step
#completewith ReagentsOne
>>杀死|cRXP_ENEMY_Scorpashi Snappers|r和|cRXX_ENEMY_Scorpashi Lashers|r。掠夺它们的|cRXD_Loot_Venom|r
>>杀死|cRXP_ENEMY_Aged Kodos|r。掠夺他们的|cRXX_Loot_Hides|r
>>|cRXP_WARN_您可能需要杀死|cRXP_ENEMY_Gritjaw Basilisk|r才能强制|cRXD_ENEMY_Scorpashi Snappers|r和|cRXP_ENEMY_Scorpashi Lashers|r才能产卵|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
.goto Desolace,56.522,17.844
>>单击地面上的|cRXP_PICK_Malem胸脯|r
.turnin 1437 >>交任务: |cRXP_FRIENDLY_瓦拉里尔的搜寻|r
.accept 1465 >>接任务: |cRXP_WARN_瓦拉里尔的搜寻|r
step
.goto Desolace,39.295,28.839,50,0
.goto Desolace,38.884,27.162
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿佐尔·奥达蒙特|r
.accept 5741 >>接任务: |cRXP_WARN_圣光节杖|r
.target Azore Aldamort
step
#era/som
.goto Desolace,36.111,30.451
>>在地面上点击|cRXP_PICK_Karnitol的胸部|r
.turnin 1454 >>交任务: |cRXP_FRIENDLY_卡尼托的海难|r
.accept 1455 >>接任务: |cRXP_WARN_卡尼托的海难|r
step
#label ReagentsOne
.goto Desolace,36.069,30.407
>>点击小桶上的|cRXP_PICK_Rackmore的日志|r
.accept 6161 >>接任务: |cRXP_WARN_拉克摩尔的财宝！|r
step << !Warlock
#completewith next
.cast 7178 >>|cRXP_WARN_使用您的|r|T134797:0|t[水息灵药]|cRXP_WARN_如果您有|r
.itemcount 5996,1 
.use 5996 
step << !Warlock
.goto Desolace,31.4,28.2,70,0
.goto Desolace,34.2,32.6,70,0
.goto Desolace,30.6,34.6,70,0
.goto Desolace,33.2,31.6
>>杀死|cRXP_ENEMY_Dryssnap Pincers|r和|cRXX_ENEMY_DRyssnap Crawlers |r。掠夺它们以获取|cRXD_Loot_Rakmore的银钥匙|r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step << Warlock
.goto Desolace,31.4,28.2,70,0
.goto Desolace,34.2,32.6,70,0
.goto Desolace,30.6,34.6,70,0
.goto Desolace,33.2,31.6
>>杀死|cRXP_ENEMY_Dryssnap Pincers|r和|cRXX_ENEMY_DRyssnap Crawlers |r。掠夺它们以获取|cRXD_Loot_Rakmore的银钥匙|r
>>|cRXP_WARN_Buff yourself with |r|T136148:0|t[水下呼吸]
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
#completewith ReagentsTwo
>>杀死|cRXP_ENEMY_Scorpashi Snappers|r和|cRXX_ENEMY_Scorpashi Lashers|r。掠夺它们的|cRXD_Loot_Venom|r
>>杀死|cRXP_ENEMY_Aged Kodos|r。掠夺他们的|cRXX_Loot_Hides|r
>>|cRXP_WARN_您可能需要杀死|cRXP_ENEMY_Gritjaw Basilisk|r才能强制|cRXD_ENEMY_Scorpashi Snappers|r和|cRXP_ENEMY_Scorpashi Lashers|r才能产卵|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
#completewith next
.goto Desolace,60.863,61.859,80 >>前往Kodo墓地附近的|cRXP_FRIENDLY_Smeed Scrabblescrew|r
step
.goto Desolace,60.863,61.859
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯米德·瑟卡布斯库|r
.accept 5561 >>接任务: |cRXP_LOOT_诱捕科多兽|r
.target Smeed Scrabblescrew
step
#completewith next
.goto Desolace,54.95,63.08,100 >>前往Kodo墓地
step
.goto Desolace,51.668,58.244
.goto Desolace,60.863,61.859,0
.use 13892 >>|cRXP_WARN_使用|r|T132488:0|t[Kodo Komboulator]|cRXP_WARN_on|cRXP_ENEMY_Ancient Kodos|r和|cRXD_ENEMY_Dying Kodos| r。将它们带回|r|cRXT_FRIENDLY_Smeed|r
>>|cRXP_WARN_您一次只能带回1|cRXP_FRIENDLY_Tamed Kodo|r|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_对话: |cRXP_FRIENDLY_被驯服的科多兽|r|r
.skipgossip
.complete 5561,1 
.target Tamed Kodo
.mob Ancient Kodo
.mob Dying Kodo
step
.goto Desolace,60.863,61.859
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯米德·瑟卡布斯库|r
.turnin 5561 >>交任务: |cRXP_FRIENDLY_诱捕科多兽|r
.target Smeed Scrabblescrew
step
.goto Desolace,68.8,71.2,75,0
.goto Desolace,65.2,75.6,75,0
.goto Desolace,70.0,81.0,75,0
.goto Desolace,70.0,74.6,75,0
.goto Desolace,73.8,65.8,75,0
.goto Desolace,69.4,73.4
>>杀死|cRXP_ENEMY_Magram半人马|r。掠夺他们的|cRXX_Loot_Ears|r
>>|cRXP_WARN_继续杀死|cRXP_ENEMY_Magram半人马|r，直到你达到与盖尔基斯氏族半人马站在一起的|cRXP_FRIENDLY_FRIENDLY|r声誉|r
.complete 1387,1 
.complete 1382,1 
.mob Magram Marauder
.mob Magram Mauler
.mob Magram Outrunner
.mob Magram Pack Runner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Windchaser
.mob Magram Wrangler
step
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1382 >>交任务: |cRXP_FRIENDLY_奇怪的联盟|r
.accept 1384 >>接任务: |cRXP_WARN_突袭科卡尔|r
.target Uthek the Wise
step
#label ReagentsTwo
#completewith next

.hs >>Hearth to Nijel's Point
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1455 >>交任务: |cRXP_FRIENDLY_卡尼托的海难|r
.accept 1456 >>接任务: |cRXP_WARN_卡尼托的海难|r
.target Kreldig Ungor
step
.isQuestComplete 1459
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1459 >>交任务: |cRXP_FRIENDLY_寻物公司的委托|r
.target Kreldig Ungor
step
.goto Desolace,66.743,10.872
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦尔金斯下士|r
.turnin 1387 >>交任务: |cRXP_FRIENDLY_悬赏半人马|r
.target Corporal Melkins
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦拉里尔·屠魔者|r
.turnin 1465 >>交任务: |cRXP_FRIENDLY_瓦拉里尔的搜寻|r
.accept 1438 >>接任务: |cRXP_WARN_瓦拉里尔的搜寻|r
.target Vahlarriel Demonslayer
step
#completewith ReagentsThree
>>杀死|cRXP_ENEMY_Scorpashi Snappers|r和|cRXX_ENEMY_Scorpashi Lashers|r。掠夺它们的|cRXD_Loot_Venom|r
>>杀死|cRXP_ENEMY_Aged Kodos|r。掠夺他们的|cRXX_Loot_Hides|r
>>|cRXP_WARN_您可能需要杀死|cRXP_ENEMY_Gritjaw Basilisk|r才能强制|cRXD_ENEMY_Scorpashi Snappers|r和|cRXP_ENEMY_Scorpashi Lashers|r才能产卵|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
.goto Desolace,70.0,41.6,70,0
.goto Desolace,73.6,44.6,70,0
.goto Desolace,70.2,47.2,70,0
.goto Desolace,73.4,51.5,70,0
.goto Desolace,71.6,45.6
>>杀死|cRXP_ENEMY_Kolkar|r。掠夺他们的|cRXX_Loot_Charms|r
.complete 1384,1 
.mob Kolkar Centaur
.mob Kolkar Scout
.mob Kolkar Windchaser
.mob Kolkar Mauler
.mob Kolkar Destroyer
.mob Kolkar Battle Lord
.mob Kolkar Waylayer
.mob Kolkar Ambusher
step
.goto Desolace,62.314,38.965
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比布里·弗斯巴克|r
.accept 5501 >>接任务: |cRXP_LOOT_集骨者|r
.target Bibbly F'utzbuckle
step
#completewith next
#label ReagentsThree
.goto Desolace,55.75,28.88,110 >>前往雷斧要塞
step
.goto Desolace,55.170,30.149
>>Ascend the Watchtower
>>杀死塔顶上的|cRXP_ENEMY_Burning Blade Seer|r。为|cRXP_Loot_Sceptre|r掠夺它
>>|cRXP_WARN_可能只有1|cRXP_ENEMY_Burning Blade Seer|r。您可能需要等待重生|r
.complete 5741,1 
.mob Burning Blade Seer
step
#completewith next
.goto Desolace,55.31,27.45,25 >>Enter the main Fortress
step
.goto Desolace,54.859,26.125
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳达·玛雷姆|r
.turnin 1438 >>交任务: |cRXP_FRIENDLY_瓦拉里尔的搜寻|r
.accept 1439 >>接任务: |cRXP_WARN_寻找泰拉尼斯|r
.target Dalinda Malem
step
#completewith next
.goto Desolace,53.32,29.18,25 >>进入次要要塞
step
>>杀死|cRXP_ENEMY_Tyranis Malem|r。掠夺他的|cRXX_Loot_吊坠|r
.goto Desolace,53.008,29.078
.complete 1439,1 
.mob Tyranis Malem
step
#completewith next
.goto Desolace,55.31,27.45,25 >>返回|cRXP_FRIENDLY_Dalinda Malem|r
step
#completewith next
.goto Desolace,54.859,26.125
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳达·玛雷姆|r
.turnin 1439 >>交任务: |cRXP_FRIENDLY_寻找泰拉尼斯|r
.target Dalinda Malem
step
.goto Desolace,54.859,26.125
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黛琳达·玛雷姆|r
>>|cRXP_WARN_这将开始一个护送任务|r
.accept 1440,1 >>接任务: |cRXP_WARN_[Return to Vahlarriel]|r
.target Dalinda Malem
step
.goto Desolace,58.26,30.94
>>使用|cRXP_FRIENDLY_Dalinda Malem|r安全退出雷斧要塞
.complete 1440,1 
.target Dalinda Malem
step
#completewith ReagentsFour
>>杀死|cRXP_ENEMY_Scorpashi Snappers|r和|cRXX_ENEMY_Scorpashi Lashers|r。掠夺它们的|cRXD_Loot_Venom|r
>>杀死|cRXP_ENEMY_Aged Kodos|r。掠夺他们的|cRXX_Loot_Hides|r
>>|cRXP_WARN_您可能需要杀死|cRXP_ENEMY_Gritjaw Basilisk|r才能强制|cRXD_ENEMY_Scorpashi Snappers|r和|cRXP_ENEMY_Scorpashi Lashers|r才能产卵|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
#label ReagentsFour
.goto Desolace,39.295,28.839,50,0
.goto Desolace,38.884,27.162
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿佐尔·奥达蒙特|r
.turnin 5741 >>交任务: |cRXP_FRIENDLY_圣光节杖|r
.accept 6027 >>接任务: |cRXP_WARN_上古之书|r
.target Azore Aldamort
step
#completewith BookofAncients
.goto Desolace,30.12,10.42,225 >>Swim to Ranazjar Isle
step
#completewith BookofAncients
>>杀死|cRXP_ENEMY_Slitherblade|r。掠夺它们以获得|cRXX_Loot_Rakmore的金钥匙|r
.complete 6161,2 
.mob Slitherblade Sea Witch
.mob Slitherblade Tidehunter
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
.mob Slitherblade Oracle
.mob Slitherblade Razortail
step
#completewith BookofAncients
>>杀死|cRXP_ENEMY_Slitherblade Tidehunters|r和|cRXX_ENEMY_Slitherblade Sea Witches|r。为|cRXD_Loot_Carnitol的Satchel|r掠夺它们
.complete 1456,1 
.mob Slitherblade Tidehunter
.mob Slitherblade Sea Witch
step
#label BookofAncients
.goto Desolace,28.250,6.670
>>点击|cRXP_PICK_Serpent Statue|r召唤|cRXP_ENEMY_Lord Kragaru|r
>>杀死|cRXP_ENEMY_克拉加鲁领主|r。掠夺他获得|cRXX_Loot_古人之书|r
.complete 6027,1 
.mob Lord Kragaru
step
#completewith next
>>杀死|cRXP_ENEMY_Slitherblade|r。掠夺它们以获得|cRXX_Loot_Rakmore的金钥匙|r
.complete 6161,2 
.mob Slitherblade Sea Witch
.mob Slitherblade Tidehunter
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
.mob Slitherblade Oracle
.mob Slitherblade Razortail
step
.goto Desolace,28.06,10.86,70,0
.goto Desolace,30.87,8.41,70,0
.goto Desolace,30.6,15.8,70,0
.goto Desolace,33.2,10.6,70,0
.goto Desolace,30.8,8.0
>>杀死|cRXP_ENEMY_Slitherblade Tidehunters|r和|cRXX_ENEMY_Slitherblade Sea Witches|r。为|cRXD_Loot_Carnitol的Satchel|r掠夺它们
>>|cRXP_WARN_您还可以在水中找到|cRXP_ENEMY_Slitherblade Tidehunters|r和|cRXX_ENEMY_Slitherblade Sea Witches|r|r
.complete 1456,1 
.mob Slitherblade Tidehunter
.mob Slitherblade Sea Witch
step
.goto Desolace,28.06,10.86,70,0
.goto Desolace,30.87,8.41,70,0
.goto Desolace,30.6,15.8,70,0
.goto Desolace,33.2,10.6,70,0
.goto Desolace,30.8,8.0
>>杀死|cRXP_ENEMY_Slitherblade|r。掠夺它们以获得|cRXX_Loot_Rakmore的金钥匙|r
.complete 6161,2 
.mob Slitherblade Sea Witch
.mob Slitherblade Tidehunter
.mob Slitherblade Naga
.mob Slitherblade Sorceress
.mob Slitherblade Myrmidon
.mob Slitherblade Oracle
.mob Slitherblade Razortail
step
>>点击地面上的|cRXP_PICK_Rackmore胸部|r
.goto Desolace,30.005,8.706
.turnin 6161 >>交任务: |cRXP_FRIENDLY_拉克摩尔的财宝！|r
step
#completewith ReagentsFive
>>杀死|cRXP_ENEMY_Scorpashi Snappers|r和|cRXX_ENEMY_Scorpashi Lashers|r。掠夺它们的|cRXD_Loot_Venom|r
>>杀死|cRXP_ENEMY_Aged Kodos|r。掠夺他们的|cRXX_Loot_Hides|r
>>|cRXP_WARN_您可能需要杀死|cRXP_ENEMY_Gritjaw Basilisk|r才能强制|cRXD_ENEMY_Scorpashi Snappers|r和|cRXP_ENEMY_Scorpashi Lashers|r才能产卵|r
.complete 1459,1 
.complete 1459,2 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Aged Kodo
step
.goto Desolace,39.295,28.839,50,0
.goto Desolace,38.884,27.162
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿佐尔·奥达蒙特|r
.turnin 6027 >>交任务: |cRXP_FRIENDLY_上古之书|r
.target Azore Aldamort
step
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1384 >>交任务: |cRXP_FRIENDLY_突袭科卡尔|r
.accept 1370 >>接任务: |cRXP_WARN_偷取物资|r
.target Uthek the Wise
step
.goto Desolace,66.5,80.5,50,0
.goto Desolace,70.9,75.5,50,0
.goto Desolace,72.5,78.6,50,0
.goto Desolace,74.1,72.7,50,0
.goto Desolace,66.5,80.5,50,0
.goto Desolace,70.9,75.5,50,0
.goto Desolace,72.5,78.6,50,0
.goto Desolace,74.1,72.7,50,0
.goto Desolace,70.9,75.5
>>打开|cRXP_PICK_肉袋|r。把它们抓起来，准备|cRXP_Loot_Crudely Dried Meats|r
.complete 1370,1 
step
#label ReagentsFive
.goto Desolace,52.50,58.56
>>在墓地周围掠夺|cRXP_Loot_Kodo骨骼|r
>>|cRXP_WARN_掠夺它们可能会导致|cRXP_ENEMY_Kodo幻影|r产生|cRXP_ENEMY_Kodo Apparitions |r不掉落|r|cRXP_LOOT_Kodo Bones|r
.complete 5501,1 
step
.goto Desolace,52.19,57.50,70,0
.goto Desolace,62.13,60.65,70,0
.goto Desolace,63.86,68.83,70,0
.goto Desolace,52.19,57.50
>>杀死|cRXP_ENEMY_Aged Kodos|r。掠夺他们的|cRXX_Loot_Aged Kodo隐藏物|r
>>|cRXP_WARN_您必须立即完成此步骤|r
.complete 1459,2 
.mob Aged Kodo
step
#completewith next
>>杀死|cRXP_ENEMY_Scorpashi Snappers|r、|cRXX_ENEMY_Scorpashi Lashers|r和|cRXD_ENEMY_Scorpashi Venomlash|r。掠夺它们的|cRXP_Loot_Venom|r
.complete 1459,1 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Scorpashi Venomlash
step
.goto Desolace,62.32,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比布里·弗斯巴克|r
.turnin 5501 >>交任务: |cRXP_FRIENDLY_集骨者|r
.target Bibbly F'utzbuckle
step
.goto Desolace,70.4,63.0,80,0
.goto Desolace,58.6,50.0,80,0
.goto Desolace,41.4,48.2,80,0
.goto Desolace,43.6,75.2
>>杀死|cRXP_ENEMY_Scorpashi Snappers|r、|cRXX_ENEMY_Scorpashi Lashers|r和|cRXD_ENEMY_Scorpashi Venomlash|r。掠夺它们的|cRXP_Loot_Venom|r
>>|cRXP_WARN_您可能需要杀死|cRXP_ENEMY_Gritjaw Basilisk|r才能强制|cRXD_ENEMY_Scorpashi Snappers|r和|cRXP_ENEMY_Scorpashi Lashers|r才能产卵|r
>>|cRXP_WARN_您必须立即完成此步骤|r
.complete 1459,1 
.mob Scorpashi Snapper
.mob Scorpashi Lasher
.mob Scorpashi Venomlash
step
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1370 >>交任务: |cRXP_FRIENDLY_偷取物资|r
.accept 1373 >>接任务: |cRXP_WARN_盎格库尔|r
.target Uthek the Wise
step << !Warlock
#completewith ReagentsforReclaimersIncB
.hs >>Hearth to Nijel's Point
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
.cooldown item,6948,>0,1
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1456 >>交任务: |cRXP_FRIENDLY_卡尼托的海难|r
.accept 1457 >>接任务: |cRXP_WARN_卡尼托的海难|r
.target Kreldig Ungor
step
#label ReagentsforReclaimersIncB
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1459 >>交任务: |cRXP_FRIENDLY_寻物公司的委托|r
.target Kreldig Ungor
step
.goto Desolace,66.44,11.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦拉里尔·屠魔者|r
.turnin 1440 >>交任务: |cRXP_FRIENDLY_回复瓦拉里尔|r
.target Vahlarriel Demonslayer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞特·克罗斯|r
.goto Desolace,64.66,10.54
.fly Tanaris >>前往: 塔纳利斯
.target Baritanas Skyriver
.zoneskip Desolace,1
step
.isOnQuest 1112
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 5800 >>从您的银行提取以下项目：
>>|T132763:0|t[克拉维尔零件] 
.target Gimblethorn
step
.isOnQuest 1457
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 6245 >>将以下项目存入您的银行：
>>|T133633:0|t[Karnitol的挎包] 
.target Gimblethorn
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.goto Tanaris,52.51,27.91
.home >>将您的炉石设置为Gadgetzan
.target Innkeeper Fizzgrimble
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >>前往: |cRXP_PICK_千针石林|r
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉维尔·浓须|r
.turnin 1112 >>交任务: |cRXP_FRIENDLY_给克拉维尔的零件|r
.target Kravel Koalbeard
step
.group
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹尔·铜栓|r
.accept 1107 >>接任务: |cRXP_LOOT_坚硬的尾鳍|r
.target Wizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉维尔·浓须|r
.accept 1114 >>接任务: |cRXP_LOOT_侏儒的货物|r
.target Kravel Koalbeard
step
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔·铜栓|r
.turnin 1114 >>交任务: |cRXP_FRIENDLY_侏儒的货物|r
.target Fizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉维尔·浓须|r
.accept 1115 >>接任务: |cRXP_LOOT_车手的传闻|r
.target Kravel Koalbeard
step << !Warlock
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
.goto Tanaris,51.006,29.345
.fly Ratchet >>飞到棘轮
.target Bera Stonehammer
step << Warlock
#completewith next
Thousand Needles,44.29,36.39,25 >>行驶至货舱的Splithof
step << Warlock
.isOnQuest 1802
.goto Thousand Needles,44.44,32.70,20,0
.goto Thousand Needles,43.438,32.691
>>一旦进入Splithof Hold，请坚持右侧
>>打开|cRXP_PICK_Damaged Chest|r。为|cRXP_Loot_纹身手稿|r掠夺它
.complete 1802,2 
step << Warlock
#completewith next
.hs >>从赫斯到塔纳瑞斯
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
.goto Tanaris,51.006,29.345
.fly Dustwallow >>Fly to Dustwallow
.target Bera Stonehammer
step << Warlock
.goto Dustwallow Marsh,71.4,56.1
.zone Wetlands >>前往: |cRXP_PICK_湿地|r
step << Warlock
#completewith next
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fly Ironforge >>飞往铁炉堡
.target Shellei Brondir
step << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗姆·粗臂|r
.goto Ironforge,74.179,9.371
.turnin 1802 >>交任务: |cRXP_FRIENDLY_阴谋之书|r
.accept 1804 >>接任务: |cRXP_LOOT_阴谋之书|r
.target Krom Stoutarm
step << Warlock
#completewith next
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Wetlands >>飞到湿地
.target Gryth Thurden
.zoneskip Wetlands
step << Warlock
#label rods
.isOnQuest 1804
.goto Wetlands,46.4,45.6,65,0
.goto Wetlands,49.6,44.8,65,0
.goto Wetlands,50.6,50.6,65,0
.goto Wetlands,52.6,53.6,55,0
.goto Wetlands,47.6,46.6
>>杀死|cRXP_ENEMY_Dragonmaw Bonewarder|r和|cRXD_ENEMY_ DragonmawShadowwarder|r。掠夺他们的|cRXP_Loot_Rods|r
.complete 1804,1 
.mob Dragonmaw Bonewarder
.mob Dragonmaw Shadowwarder
step << Warlock
.isQuestTurnedIn 465
>>单击|cRXP_PICK_Dragonmaw弹射器|r
.goto Wetlands,47.45,47.01
.accept 474 >>接任务: |cRXP_LOOT_击败纳克罗什|r

step << Warlock
#requires rods
.isOnQuest 474
.goto Wetlands,53.2,56.0,40,0
.goto Wetlands,53.2,56.0,0
>>杀死|cRXP_ENEMY_首领内克罗什|r。掠夺他的|cRXX_Loot_Head |r
>>|cRXP_ENEMY_酋长Nek'rosh|r|cRXP_WARN_can be|r|T136183:0|t[害怕]
>>|cRXP_ENEMY_首领Nek'rosh|r|cRXP_WARN_i对火焰伤害免疫|r
>>|cRXP_WARN_你可以使用|r|T136186:0|t[火之雨]将奈克罗斯从他周围的暴徒中分离出来
>>|cRXP_WARN_这是一个简单的精英单人任务，但要小心不要激怒太多暴徒|r
.complete 474,1 
.mob Chieftain Nek'rosh
.link https://www.twitch.tv/videos/669042748?t=02h57m08s >>|cRXP_WARN_点击此处查看视频参考|r
step << Warlock
.isQuestComplete 474
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯托菲队长|r
.goto Wetlands,9.86,57.48
.turnin 474 >>交任务: |cRXP_FRIENDLY_击败纳克罗什|r
.target Captain Stoutfist
step << Warlock
#completewith next
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
.zoneskip The Barrens
step << Warlock
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.300
.fly Ratchet >>飞到棘轮
.target Baldruc
step << Warlock
.isQuestComplete 1804
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 1804 >>交任务: |cRXP_FRIENDLY_阴谋之书|r
.target Strahad Farsan
step << Warlock
.isQuestTurnedIn 1804
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.accept 1795 >>接任务: |cRXP_LOOT_誓缚|r
.target Strahad Farsan
step << Warlock
#completewith next
.goto The Barrens,62.6,35.2
.cast 8712 >>|cRXP_WARN_在召唤圈使用|r|T133740:0|t[Tome of the Cabal]|cRXP_WARN_|r
.use 6999
step << Warlock
.isQuestTurnedIn 1804
.goto The Barrens,62.6,35.2
>>杀死|cRXP_ENEMY_Summed Felhunter|r
.use 6999
.complete 1795,1 
.mob Summoned Felhunter
step << Warlock
.isQuestTurnedIn 1804
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 1795 >>交任务: |cRXP_FRIENDLY_誓缚|r
step
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step << !Warlock
#ah
.goto Stranglethorn Vale,26.588,76.348
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师奥利雷|r
>>|cRXP_WARN_如果你没有|r|T134797:0|t[Elixirs of Water Breaking]|cRXP_WARN_try可以从拍卖行买一些|r
>>|cRXP_WARN_如果找不到，请跳过此步骤|r
.collect 5996,1 
.target Auctioneer O'reely
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 37-38 Stranglethorn Vale II
#next 38-39 Swamp of Sorrows
step
#completewith FlyWestfall
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板斯金德|r
.goto Stranglethorn Vale,27.04,77.31
.home >>将您的炉石设置为Booty Bay
.target Innkeeper Skindle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兹克|r
.turnin 1115 >>交任务: |cRXP_FRIENDLY_车手的传闻|r
.goto Stranglethorn Vale,26.943,77.207
.target Krazek
step
#label FlyWestfall
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Westfall >>飞往威斯特福尔
.target Gyll
.zoneskip Stranglethorn Vale,1
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r
.turnin 325 >>交任务: |cRXP_FRIENDLY_整装待发|r
.accept 55 >>接任务: |cRXP_LOOT_摩本特·费尔|r
.target Sven Yorgen
step
.goto Duskwood,19.59,37.28
>>杀死|cRXP_ENEMY_Mor'Ladim|r。掠夺他的|cRXX_Loot_Sull|r
>>|cRXP_ENEMY_Mor’Ladim|r|cRXP_WARN非常坚硬，但移动非常缓慢。如果需要的话，试着把他放在大树周围|r
.complete 228,1 
.unitscan Mor'Ladim
step
#completewith next
>>清理你的路到房子的二楼
.cast 8913 >>|cRXP_WARN_装备|r|T135142:0|t[Morbent's Bane]|cRXP_WARN_in|r
>>|cRXP_WARN_使用|r|T135142:0|t[Morbent's Bane]|cRXP_WARN_on|r|cRXP_ENEMY_Morbent Fel|r|cRXP_WARN_to削弱他|r
>>|cRXP_WARN_记得在削弱武器/脱手槽后装备武器|r
.use 7297
step
.goto Duskwood,16.90,33.40
>>杀死|cRXP_ENEMY_Morbent Fel|r
>>|cRXP_WARN_这个任务可能很困难。如果你对做这件事没有信心，你可以跳过这一步|r
.complete 55,1 
.use 7297
.mob Morbent Fel
.isOnQuest 55
step
.goto Duskwood,7.78,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r
.turnin 55 >>交任务: |cRXP_FRIENDLY_摩本特·费尔|r
.isQuestComplete 55
.target Sven Yorgen
step
.abandon 55 >>Abandon Morbent Fel
step
#completewith next
.goto Duskwood,44.598,87.565,0
.goto Stranglethorn Vale,40.635,3.514,40,0
.goto Stranglethorn Vale,38.63,5.05
.subzone 99 >>前往: |cRXP_PICK_荆棘谷|r in northern Stranglethorn Vale
step
.goto Stranglethorn Vale,38.017,3.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤瓦中士|r
.accept 574 >>接任务: |cRXP_LOOT_特种部队|r
.target Sergeant Yohwa
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r
.accept 200 >>接任务: |cRXP_LOOT_书呆子赫罗德|r
.target Lieutenant Doren
step
#optional
.isOnQuest 622
.goto Stranglethorn Vale,37.740,3.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡雷布下士|r
.turnin 622 >>交任务: |cRXP_FRIENDLY_向卡雷布下士回报|r
.target Corporal Kaleb
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r, |cRXP_FRIENDLY_埃尔加丁爵士|r
.accept 195 >>接任务: |cRXP_LOOT_猎龙|r
.goto Stranglethorn Vale,35.658,10.808
.accept 188 >>接任务: |cRXP_LOOT_猎虎|r
.goto Stranglethorn Vale,35.616,10.619
.accept 192 >>接任务: |cRXP_LOOT_猎豹|r
.goto Stranglethorn Vale,35.556,10.546
.target Hemet Nesingwary
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
.group
.isQuestTurnedIn 215
.goto Stranglethorn Vale,43.669,9.372
>>在楼上的房子里点击|cRXP_PICK_Bookie Herod’s Records|r
.turnin 200 >>交任务: |cRXP_FRIENDLY_书呆子赫罗德|r
.accept 328 >>接任务: |cRXP_LOOT_隐藏的钥匙|r
step
.solo
.isQuestTurnedIn 215
.goto Stranglethorn Vale,43.669,9.372
>>在楼上的房子里点击|cRXP_PICK_Bookie Herod’s Records|r
.turnin 200 >>交任务: |cRXP_FRIENDLY_书呆子赫罗德|r
step
#completewith SpecialForces
.goto Stranglethorn Vale,46.30,7.61,30 >>进入仓库（库尔岑洞穴）
step
.group 2
#completewith next
.isQuestTurnedIn 215
.goto Stranglethorn Vale,49.617,7.562
>>点击地面上的|cRXP_PICK_Bookie Herod的强化箱|r
.turnin 328 >>交任务: |cRXP_FRIENDLY_隐藏的钥匙|r
.accept 329 >>接任务: |cRXP_LOOT_找出内鬼！|r
step
#label SpecialForces
.goto Stranglethorn Vale,46.45,6.89,40,0
.goto Stranglethorn Vale,47.89,7.77,40,0
.goto Stranglethorn Vale,46.45,6.89
>>杀死|cRXP_ENEMY_Kurzen突击队员|r和|cRXX_ENEMY_Kurzen缩头者|r。掠夺他们的|T132905:0|t[丝绸]
>>|cRXP_WARN_小心|cRXP_ENEMY_Kurzen Commandos|r in |r|T132320:0|t[潜行]
>>|cRXP_WARN_保存15|r|T132905:0|t[丝绸]|cRXP_WARN_form以备日后在灼热峡谷进行任务。您现在不需要收集所有15个|r
.collect 4306,15,4449,1,1 
.complete 574,1 
.complete 574,2 
.mob Kurzen Commando
.mob Kurzen Headshrinker
step
.group 2
.isQuestTurnedIn 215
.goto Stranglethorn Vale,49.617,7.562
>>点击地面上的|cRXP_PICK_Bookie Herod的强化箱|r
.turnin 328 >>交任务: |cRXP_FRIENDLY_隐藏的钥匙|r
.accept 329 >>接任务: |cRXP_LOOT_找出内鬼！|r
step << Warrior
#ah
.goto Stranglethorn Vale,44.5,9.6
>>杀死|cRXP_ENEMY_Kurzen医药人|r。掠夺他们的|T134413:0|t[Liferoot]
>>|cRXP_WARN_这是给你的|r|T132403:0|t[|cFF0070FF旋风斧|r]|cRXP_WARN_quest的。如果您愿意，也可以从拍卖行购买。如果您要从拍卖行购买，请跳过此步骤|r
>>|cRXP_WARN_如果您计划为|r[|cFF0070FFBonebiter|r]|cRXP_WARN_运行Scarlet Monastery，您可以跳过此步骤|r
.complete 1712,1 
.isOnQuest 1712
.mob Kurzen Medicine Man
step << Warrior
.goto Stranglethorn Vale,44.5,9.6
>>杀死|cRXP_ENEMY_Kurzen医药人|r。掠夺他们的|T134413:0|t[Liferoot]
>>|cRXP_WARN_这是给你的|r|T132403:0|t[|cFF0070FF旋风斧|r]|cRXP_WARN_quest|r
>>|cRXP_WARN_如果您计划为|r[|cFF0070FFBonebiter|r]|cRXP_WARN_运行Scarlet Monastery，您可以跳过此步骤|r
.complete 1712,1 
.isOnQuest 1712
.mob Kurzen Medicine Man
step
#completewith Prints
>>杀死|cRXP_ENEMY_Venture Co.地质学家|r。掠夺他们的|cRXX_Loot_水晶|r
.complete 213,1 
.mob Venture Co. Geologist
step
.goto Stranglethorn Vale,42.646,18.353
>>杀死石油钻机顶部的|cRXP_ENEMY_Foreman Cozzle|r。抢劫他的|cRXP_Loot_Key|r
.collect 5851,1,1182,1 
.mob Foreman Cozzle
step
#label Prints
.goto Stranglethorn Vale,43.332,20.329
>>打开|cRXP_PICK_Cozzle的Footlocker|r。为|cRXP-Loot_Fuel Regulator Blueprints|r打开它
.complete 1182,1 
step
.goto Stranglethorn Vale,45.18,22.65,75,0
.goto Stranglethorn Vale,45.55,18.78,75,0
.goto Stranglethorn Vale,43.42,17.00,75,0
.goto Stranglethorn Vale,45.18,22.65,75,0
.goto Stranglethorn Vale,45.55,18.78
>>杀死|cRXP_ENEMY_Venture Co.地质学家|r。掠夺他们的|cRXX_Loot_水晶|r
.complete 213,1 
.mob Venture Co. Geologist
step
.goto Stranglethorn Vale,48.64,22.95,75,0
.goto Stranglethorn Vale,48.86,23.48
.goto Stranglethorn Vale,48.79,19.96
.goto Stranglethorn Vale,36.09,37.29,0
>>杀死|cRXP_ENEMY_Shadowmaw Panthers|r
>>|cRXP_ENEMY_Shadowmaw Panthers|r|cRXP_WARN_are in |r|T132320:0|t[潜行]
>>|cRXP_WARN_如果需要，你可以在更西南的地方找到更多。该位置已标记在地图上|r
>>|cRXP_WARN_它们还与|r|cRXP_ENEMY_Shadowmaw虎共享产卵|r
.complete 192,1 
.mob Shadowmaw Panther
step
#completewith next
>>杀死|cRXP_ENEMY_Lashtail猛禽|r
>>|cRXP_ENEMY_长尾猛禽|r|cRXP_WARN_cast|r|T132109:0|t[Lash]|cRXP-WARN_这是一个2秒的眩晕|r
>>|cRXP_WARN_他们还可以|r|T132343:0|t[Disarm]|cRXP_WARN_you持续5秒|r << Warrior/Rogue/Paladin
.complete 195,1 
.mob Lashtail Raptor
step
.goto Stranglethorn Vale,40.68,21.85,70,0
.goto Stranglethorn Vale,39.71,29.82,70,0
.goto Stranglethorn Vale,37.09,32.60,70,0
.goto Stranglethorn Vale,39.1,27.2,70,0
.goto Stranglethorn Vale,39.61,21.90,70,0
.goto Stranglethorn Vale,40.03,15.67,75,0
.goto Stranglethorn Vale,39.1,27.2
>>杀死|cRXP_ENEMY_Snapjaw Crocolisk|r。掠夺他们的|cRXP_Loot_Skin|r
.complete 577,1 
.mob Snapjaw Crocolisk
step
.goto Stranglethorn Vale,38.10,20.50,70,0
.goto Stranglethorn Vale,36.98,24.90,70,0
.goto Stranglethorn Vale,34.24,26.16,70,0
.goto Stranglethorn Vale,31.37,22.28
>>杀死|cRXP_ENEMY_Lashtail猛禽|r
>>|cRXP_ENEMY_长尾猛禽|r|cRXP_WARN_cast|r|T132109:0|t[Lash]|cRXP-WARN_这是一个2秒的眩晕|r
>>|cRXP_WARN_他们还可以|r|T132343:0|t[Disarm]|cRXP_WARN_you持续5秒|r << Warrior/Rogue/Paladin
.complete 195,1 
.mob Lashtail Raptor
step
>>杀死|cRXP_ENEMY_Sin'Dall|r。掠夺他的|cRXX_Loot_Paw|r
>>|cRXP_ENEMY_Sin'Dall|r|cRXP_WARN_can在高原顶部，或在其周围巡逻|r
.goto Stranglethorn Vale,32.23,17.24
.complete 188,1 
.unitscan Sin'Dall
step << Warrior
.isOnQuest 1712
.goto Stranglethorn Vale,25.38,12.55,75,0
.goto Stranglethorn Vale,25.58,10.02,75,0
.goto Stranglethorn Vale,24.00,12.34
.goto Stranglethorn Vale,25.52,9.36,0
>>杀死|cRXP_ENEMY_Bloodship巨魔|r。掠夺它们的|cRXP_Loot_Eears|r和|cRXP-Loot_TASK|r
>>|cRXP_WARN_在没有规划逃生路线的情况下，不要深入祖昆达遗址。这个地方有很高的暴徒密度和大量的巡逻|r
>>|cRXP_WARN_保存15|r|T132905:0|t[丝绸]|cRXP_WARN_form以备日后在灼热峡谷进行任务。您现在不需要收集所有15个|r
.complete 189,1 
.complete 1712,2 
.collect 4306,15,4449,1,1 
.mob Bloodscalp Scout
.mob Bloodscalp Hunter
.mob Bloodscalp Beastmaster
.mob Bloodscalp Mystic
step
.goto Stranglethorn Vale,25.38,12.55,75,0
.goto Stranglethorn Vale,25.58,10.02,75,0
.goto Stranglethorn Vale,24.00,12.34
.goto Stranglethorn Vale,25.52,9.36,0
>>杀死|cRXP_ENEMY_Bloodship巨魔|r。掠夺它们的|cRXP-Loot_Eears|r
>>|cRXP_WARN_在没有规划逃生路线的情况下，不要深入祖昆达遗址。这个地方有很高的暴徒密度和大量的巡逻|r
>>|cRXP_WARN_保存15|r|T132905:0|t[丝绸]|cRXP_WARN_form以备日后在灼热峡谷进行任务。您现在不需要收集所有15个|r
.complete 189,1 
.collect 4306,15,4449,1,1 
.mob Bloodscalp Scout
.mob Bloodscalp Hunter
.mob Bloodscalp Beastmaster
.mob Bloodscalp Mystic
step
#completewith next
.goto Stranglethorn Vale,21.10,22.84,125 >>前往闹鬼岛
step
.goto Stranglethorn Vale,21.10,22.84
>>杀死|cRXP_ENEMY_Lesser Water Elements|r。掠夺他们的|cRXX_Loot_Bracers|r
.complete 601,1 
.mob Lesser Water Elemental
step
.group
#completewith BluePearls
.cast 7178 >>|cRXP_WARN_使用您的|r|T134797:0|t[水息灵药]|cRXP_WARN_如果您有|r
.itemcount 5996,1 
.use 5996 
.isOnQuest 1107 
step
.group
#completewith next
.goto Stranglethorn Vale,24.9,29.1,0
.goto Stranglethorn Vale,27.6,29.2,0
.goto Stranglethorn Vale,25.4,24.1,0
.goto Stranglethorn Vale,27.5,24.2,0
>>打开|cRXP_PICK_Giant Clams|r。将它们洗劫一空|cRXP_Loot_Blue Pearls|r
>>|cRXP_WARN_如果您的团队中没有|r|T134797:0|t[水息灵药]|cRXP_WARN_or|T626007:0|t|cFF8788E Warlock|r，请跳过此步骤|r << !Warlock !Druid
.use 5996 
.collect 4611,9,705,1 
.isOnQuest 1107 
step
.group
.goto Stranglethorn Vale,24.42,24.46,80,0
.goto Stranglethorn Vale,26.6,26.6,80,0
.goto Stranglethorn Vale,24.6,27.2,80,0
.goto Stranglethorn Vale,24.42,24.46
>>杀死|cRXP_ENEMY_Saltscale Murlocs|r。掠夺它们的|cRXX_Loot_附尾鳍|r
>>|cRXP_WARN_一次只能与1|cRXP_ENEMY_Murloc|r进行战斗。尽量避免|cRXP_ENEMY_Saltscale Oracle|r和|r|cRXX_ENEMY_Saltscale Tide Lords|r
>>|cRXP_WARN_如果您的团队中没有|r|T134797:0|t[水息灵药]|cRXP_WARN_or|T626007:0|t|cFF8788E Warlock|r，请跳过此步骤|r << !Warlock !Druid
.use 5996 
.complete 1107,1 
.mob Saltscale Forager
.mob Saltscale Warrior
.mob Saltscale Hunter
.mob Saltscale Oracle
.isOnQuest 1107 
step
#label BluePearls
.group
.goto Stranglethorn Vale,24.9,29.1,90,0
.goto Stranglethorn Vale,27.6,29.2,90,0
.goto Stranglethorn Vale,25.4,24.1,90,0
.goto Stranglethorn Vale,27.5,24.2
>>打开|cRXP_PICK_Giant Clams|r。将它们洗劫一空|cRXP_Loot_Blue Pearls|r
>>|cRXP_WARN_如果您的团队中没有|r|T134797:0|t[水息灵药]|cRXP_WARN_or|T626007:0|t|cFF8788E Warlock|r，请跳过此步骤|r << !Warlock !Druid
.use 5996 
.collect 4611,9,705,1 
.isOnQuest 1107 
step
.goto Stranglethorn Vale,25.52,9.36
.xp 38-16160 >>升级直到距离38级16160 xp
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r, |cRXP_FRIENDLY_埃尔加丁爵士|r
.turnin 195 >>交任务: |cRXP_FRIENDLY_猎龙|r
.goto Stranglethorn Vale,35.658,10.808
.turnin 188 >>交任务: |cRXP_FRIENDLY_猎虎|r
.goto Stranglethorn Vale,35.616,10.619
.turnin 192 >>交任务: |cRXP_FRIENDLY_猎豹|r
.goto Stranglethorn Vale,35.556,10.546
.target Hemet Nesingwary
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
.group
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r
.turnin 574 >>交任务: |cRXP_FRIENDLY_特种部队|r
.turnin 329 >>交任务: |cRXP_FRIENDLY_找出内鬼！|r
.accept 330 >>接任务: |cRXP_LOOT_巡逻时间表|r
.target Lieutenant Doren
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r
.turnin 574 >>交任务: |cRXP_FRIENDLY_特种部队|r
.target Lieutenant Doren
step
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r
.turnin 574 >>交任务: |cRXP_FRIENDLY_特种部队|r
.target Lieutenant Doren
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,37.66,3.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯曼下士|r
.turnin 330 >>交任务: |cRXP_FRIENDLY_巡逻时间表|r
.accept 331 >>接任务: |cRXP_LOOT_向多伦报告|r
.target Corporal Sethman
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r
.turnin 331 >>交任务: |cRXP_FRIENDLY_向多伦报告|r
.target Lieutenant Doren
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
step << Druid
>>前往: |cRXP_PICK_月光林地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >>训练你的职业技能
.target Loganaar
step
#completewith next
.hs >>赫斯到Booty Bay
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科博克|r, |cRXP_FRIENDLY_克拉兹克|r
.turnin 189 >>交任务: |cRXP_FRIENDLY_血顶巨魔的耳朵|r
.turnin 213 >>交任务: |cRXP_FRIENDLY_恶性竞争|r
.goto Stranglethorn Vale,27.000,77.124
.accept 1116 >>接任务: |cRXP_WARN_梦境之尘|r
.goto Stranglethorn Vale,26.943,77.207
.target Kebok
.target Krazek
step
.goto Stranglethorn Vale,27.227,76.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大财主里维加兹|r
.turnin 601 >>交任务: |cRXP_FRIENDLY_水元素|r
.accept 602 >>接任务: |cRXP_LOOT_魔法分析|r
.turnin 1182 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1183 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Baron Revilgaz
step
.goto Stranglethorn Vale,28.294,77.592
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.turnin 577 >>交任务: |cRXP_FRIENDLY_收集鳄鱼皮|r
.target Drizzlik
step
.xp 38 >>在开始下一段之前，请确保您达到38级
step << !Mage
#label end
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind>>飞到暴风城
.target Gyll
step << Warrior
.goto StormwindClassic,58.362,61.678
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔曼·穆比|r
>>|cRXP_BUY_BUY 400 | r | T135427:0 | t[邪恶飞刀]
.collect 15327,400 
.target Thurman Mullby
step << Mage
#completewith next
.goto Stranglethorn Vale,27.530,77.787
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 38-39 Swamp of Sorrows
#next 39-39 Dustwallow Marsh
step << !Mage
#completewith FlyDW
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankdeposit 4306,3960,5852,5796,4611,2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >>将以下项目存入您的银行：
>>|T132905:0|t[丝绸] 
>>|T133633:0|t[一袋水元素背带] 
>>|T134330:0|t[燃油调节器蓝图] 
>>|T134305:0|t[镶嵌尾翼]（如果你有） 
>>|T134564:0|t[蓝珍珠]（如果你有） 
>>任意|T134332:0|t[荆棘青山-页码]
.target Newton Burnside
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>走进屠宰羔羊，下楼去
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >>训练你的职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯巴克尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Spackle Thornberry
step
.goto Stormwind City,41.497,89.385
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安古斯·斯特恩|r
.accept 1260 >>接任务: |cRXP_WARN_摩根·斯特恩|r
.target Angus Stern
step
.goto Stormwind City,40.71,62.80,25,0
.goto Stormwind City,41.521,64.350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马森·马克纳迪尔|r
.accept 1363 >>接任务: |cRXP_WARN_马森的请求|r
.target Mazen Mac'Nadir
step
.goto Stormwind City,40.996,63.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_助手迪利斯|r, 他在楼上
.turnin 1363 >>交任务: |cRXP_FRIENDLY_马森的请求|r
.accept 1364 >>接任务: |cRXP_WARN_马森的请求|r
.target Acolyte Dellis
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >>训练你的职业技能
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
.goto StormwindClassic,38.54,26.86
.trainer >>训练你的职业技能
.target Brother Joshua
step
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布罗哈恩·铁桶|r
.accept 1448 >>接任务: |cRXP_LOOT_调查神庙|r
.target Brohann Caskbelly
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >>训练你的职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >>训练你的职业技能
.target Osborne the Night Man
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >>训练你的职业技能
.target Einris Brightspear
step << Hunter
.goto StormwindClassic,61.576,15.996
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡瑞娜·麦肯达|r
.trainer >>训练你的宠物法术
.target Karrina Mekenda
step << Mage
#completewith FlyDW
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankdeposit 4306,3960,5852,5796,4611,2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >>将以下项目存入您的银行：
>>|T132905:0|t[丝绸] 
>>|T133633:0|t[一袋水元素背带] 
>>|T134330:0|t[燃油调节器蓝图] 
>>|T134305:0|t[镶嵌尾翼]（如果你有） 
>>|T134564:0|t[蓝珍珠]（如果你有） 
>>任意|T134332:0|t[荆棘青山-页码]
.target Newton Burnside
step
#label FlyDW
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.goto Stormwind City,66.277,62.137
.fly Duskwood >>飞到黄昏
.target Dungar Longdrink
step
.goto Duskwood,73.59,46.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.turnin 228 >>交任务: |cRXP_FRIENDLY_摩拉迪姆|r
.accept 229 >>接任务: |cRXP_LOOT_幸存的女儿|r
.target 指挥官阿尔西娅·埃本洛克
step
.goto Duskwood,74.54,46.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守夜人拉迪摩尔|r
.turnin 229 >>交任务: |cRXP_FRIENDLY_幸存的女儿|r
.accept 231 >>接任务: |cRXP_LOOT_女儿的爱|r
.target Watcher Ladimore
step
#completewith next
.isOnQuest 231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.goto Duskwood,77.49,44.28
.fly Westfall >>飞往威斯特福尔
.target Felicia Maline
step
.isOnQuest 231
>>点击|cRXP_PICK_A风化砾石|r
.goto Duskwood,17.72,29.07
.turnin 231 >>交任务: |cRXP_FRIENDLY_女儿的爱|r
step
#completewith SoSEntry
.goto Duskwood,89.75,41.31,0
.goto Swamp of Sorrows,6.59,60.19
.zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
step
#completewith next
.isQuestTurnedIn 1115
.goto Swamp of Sorrows,13.96,61.67,100,0
.goto Swamp of Sorrows,13.96,61.67,0
>>杀死|cRXP_ENEMY_青少年乳清|r和|cRXX_ENEMY_Dreaming乳清|r。掠夺他们的|cRXD_Loot_Specks of Dream Dust|r
>>|cRXP_WARN_您将找不到足够的|cRXP_ENEMY_Whelps|r在1次通关中完成此任务，因此继续执行其他任务|r
.complete 1116,1 
.mob Adolescent Whelp
.mob Dreaming Whelp
step
#label SoSEntry
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵比格斯|r
.accept 1396 >>接任务: |cRXP_WARN_逼近的野兽|r
.target Watcher Biggs
step
#completewith ExitSoS
+|cRXP_WARN_无论何时你在悲伤的沼泽中，都要非常小心|cRXP_ENEMY_Stonard Scouts|r。如果有人攻击你，你将被PvP标记5分钟|r
.unitscan Stonard Scout
step << skip 
.isOnQuest 1364
#completewith NoboruTurnin
>>杀死|cRXP_ENEMY_Swampwalkers|r，|cRXD_ENEMY_Swampwalkers Elders|r，| cRXP__ENEMY_Tangled Horrors|r和|cRXP_ENEMY_Mire Lord|r。为|cRXP_Loot_Khadgar的散文掠夺它们|r
>>|cRXP_WARN_这个项目的下降率很低。不要刻意完成这个任务|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
#completewith Dreamdust2
.goto Swamp of Sorrows,28.20,43.83,0
>>杀死|cRXP_ENEMY_Young Sawtoth Crocolis|r，|cRXD_ENEMY_Sorrow Spinners|r和|cRXP_ENEMY_Swamp Jaguars|r
.complete 1396,1 
.complete 1396,2 
.complete 1396,3 
.mob Young Sawtooth Crocolisk
.mob Sorrow Spinner
.mob Swamp Jaguar
step
.goto Swamp of Sorrows,55.50,36.75,70,0
.goto Swamp of Sorrows,50.58,39.02,70,0
.goto Swamp of Sorrows,45.18,36.70,70,0
.goto Swamp of Sorrows,40.53,32.83,70,0
.goto Swamp of Sorrows,38.34,38.75,70,0
.goto Swamp of Sorrows,34.88,45.88,70,0
.goto Swamp of Sorrows,32.81,38.68,70,0
.goto Swamp of Sorrows,34.88,45.88,70,0
.goto Swamp of Sorrows,38.34,38.75,70,0
.goto Swamp of Sorrows,40.53,32.83,70,0
.goto Swamp of Sorrows,45.18,36.70,70,0
.goto Swamp of Sorrows,50.58,39.02,70,0
.goto Swamp of Sorrows,55.184,34.158
.line Swamp of Sorrows,55.70,34.14,55.92,35.96,55.57,37.64,53.27,38.99,51.27,38.82,48.70,38.56,47.29,38.39,46.52,38.69,45.67,36.55,44.34,34.66,42.27,32.14,40.86,32.36,40.23,34.79,38.81,35.80,38.08,41.22,37.91,43.29,36.75,46.43,33.50,44.03,33.37,40.43,32.61,38.67,32.16,37.15,32.26,36.24,33.44,40.35,33.46,43.98,36.65,46.42,37.85,43.51,38.10,40.89,38.48,37.66,38.84,35.82,40.41,34.13,40.87,32.43,42.18,32.07,44.92,35.47,45.66,36.52,46.35,38.74,47.56,38.35,52.43,39.04,53.25,39.13,55.39,37.60
>>杀死|cRXP_ENEMY_Noboru的棒|r。掠夺他|T133485:0|t[|cRXX_Loot_Noboru的棍|r]
.use 6196 >>|cRXP_WARN_使用|T133464:0|t[|cRXP_LOOT_Noboru的棒|r]开始任务|r
>>|cRXP_ENEMY_棒上的诺博鲁|r|cRXP_WARN_控制着悲伤沼泽的一大部分。巡逻路线在你的地图上标出了。他在巡逻路线从东点开始的地方产卵|r
.collect 6196,1,1392,1 
.accept 1392 >>接任务: |cRXP_WARN_木棒诺博鲁|r
.unitscan Noboru the Cudgel
step
#label NoboruTurnin
.goto Swamp of Sorrows,25.983,31.412
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛格图尔|r
.turnin 1392 >>交任务: |cRXP_FRIENDLY_木棒诺博鲁|r
.accept 1389 >>接任务: |cRXP_WARN_德莱尼水晶|r
.target Magtoor
step << skip 
#completewith next
.goto Swamp of Sorrows,14.97,37.31,70 >>Travel to Misty Valley
step << skip 
.isOnQuest 1364
#completewith next
.goto Swamp of Sorrows,6.99,31.62,70,0
.goto Swamp of Sorrows,14.97,37.31
>>杀死|cRXP_ENEMY_Swampwalkers|r，|cRXD_ENEMY_Swampwalkers Elders|r，| cRXP__ENEMY_Tangled Horrors|r和|cRXP_ENEMY_Mire Lord|r。为|cRXP_Loot_Khadgar的散文掠夺它们|r
>>|cRXP_WARN_这个项目的下降率很低。一旦雾谷不再有可杀之物，跳过这一步|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
#label Dreamdust2
.goto Swamp of Sorrows,16.6,55.8,70,0
.goto Swamp of Sorrows,12.4,64.6,70,0
.goto Swamp of Sorrows,16.6,63.8,70,0
.goto Swamp of Sorrows,14.2,58.8

>>杀死|cRXP_ENEMY_青少年乳清|r和|cRXX_ENEMY_Dreaming乳清|r。掠夺他们的|cRXD_Loot_Specks of Dream Dust|r

.complete 1116,1 
.isQuestTurnedIn 1115
.mob Adolescent Whelp
.mob Dreaming Whelp
step << skip 
.isOnQuest 1364
#completewith end
>>杀死|cRXP_ENEMY_Swampwalkers|r，|cRXD_ENEMY_Swampwalkers Elders|r，| cRXP__ENEMY_Tangled Horrors|r和|cRXP_ENEMY_Mire Lord|r。为|cRXP_Loot_Khadgar的散文掠夺它们|r
>>|cRXP_WARN_这个项目的下降率很低。不要刻意完成这个任务|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
>>杀死|cRXP_ENEMY_Young Sawtoth Crocolis|r，|cRXD_ENEMY_Sorrow Spinners|r和|cRXP_ENEMY_Swamp Jaguars|r
.complete 1396,1 
.goto Swamp of Sorrows,23.0,45.6,70,0
.goto Swamp of Sorrows,26.6,36.2,70,0
.goto Swamp of Sorrows,39.0,34.8,70,0
.goto Swamp of Sorrows,34.2,49.8,70,0
.goto Swamp of Sorrows,26.6,52.4,70,0
.goto Swamp of Sorrows,26.6,36.2,70,0
.goto Swamp of Sorrows,39.0,34.8,70,0
.goto Swamp of Sorrows,34.2,49.8,70,0
.goto Swamp of Sorrows,26.6,52.4
.complete 1396,2 
.goto Swamp of Sorrows,19.2,54.6,70,0
.goto Swamp of Sorrows,25.0,61.6,70,0
.goto Swamp of Sorrows,33.2,51.8,70,0
.goto Swamp of Sorrows,26.6,47.0,70,0
.goto Swamp of Sorrows,37.6,30.0,70,0
.goto Swamp of Sorrows,44.0,42.4,70,0
.goto Swamp of Sorrows,26.6,47.0
.complete 1396,3 
.goto Swamp of Sorrows,22.8,42.4,70,0
.goto Swamp of Sorrows,33.6,54.0,70,0
.goto Swamp of Sorrows,47.8,39.8,70,0
.goto Swamp of Sorrows,26.2,35.2,70,0
.goto Swamp of Sorrows,23.2,59.8,70,0
.goto Swamp of Sorrows,44.0,41.6
.mob Young Sawtooth Crocolisk
.mob Sorrow Spinner
.mob Swamp Jaguar
step
#label wildlife2
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵比格斯|r
.turnin 1396 >>交任务: |cRXP_FRIENDLY_逼近的野兽|r
.accept 1421 >>接任务: |cRXP_WARN_丢失的货物|r
.target Watcher Biggs
step
#completewith next
.goto Swamp of Sorrows,57.29,30.73,200 >>前往Fallow Sanctuary
step
#completewith CaravanChest
.isOnQuest 1389
>>将|cRXP_Loot_Draenethyst晶体|r掠夺到地上
.goto Swamp of Sorrows,63.26,22.35,0
.complete 1389,1 
step
.isOnQuest 1373
.goto Swamp of Sorrows,65.036,21.976,0
.goto Swamp of Sorrows,65.036,21.976,55,0
.goto Swamp of Sorrows,60.537,23.175
>>杀死|cRXP_ENEMY_Ongeku|r。掠夺他的|cRXX_Loot_Shard|r
>>|cRXP_ENEMY_Ongeku|r|cRXP_WARN_可以在整个Fallow保护区的一个随机位置|r
.complete 1373,1 
.unitscan Ongeku
step
#label CaravanChest
.isOnQuest 1421
>>打开|cRXP_PICK_Caravan箱子|r。将其洗劫一空以获取|cRXP_Loot_WWizards试剂|r
>>|cRXP_WARN_避免穿过Fallow Sanctuary的中间|r
.goto Swamp of Sorrows,64.468,18.313
.complete 1421,1 
step
.isOnQuest 1389
>>将|cRXP_Loot_Draenethyst晶体|r掠夺到地上
.goto Swamp of Sorrows,65.15,21.92,70,0
.goto Swamp of Sorrows,61.22,22.97,70,0
.goto Swamp of Sorrows,57.43,26.08,70,0
.goto Swamp of Sorrows,55.20,28.24,70,0
.goto Swamp of Sorrows,57.43,26.08
.complete 1389,1 
step
.goto Swamp of Sorrows,67.00,47.00 >>游到泪池中央
.complete 1448,1 
step
.isQuestComplete 1389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛格图尔|r
.goto Swamp of Sorrows,25.983,31.412
.turnin 1389 >>交任务: |cRXP_FRIENDLY_德莱尼水晶|r
.target Magtoor
step
#label end
.isQuestComplete 1421
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵比格斯|r
.goto Swamp of Sorrows,26.74,59.82
.turnin 1421 >>交任务: |cRXP_FRIENDLY_丢失的货物|r
.target Watcher Biggs
step 
.goto Swamp of Sorrows,28.20,43.83
.xp 39 >>升级|cRXP_ENEMY_Young Sawtoth Crocolis|r、|cRXP_ENEMY_Sorrow Spinners|r和|cRXX_ENEMY_Swamp Jaguars|r，直到达到39级
step
#label ExitSoS
#completewith SWbank << !Mage
#completewith SWTele << Mage
.goto Swamp of Sorrows,28.20,43.83
.hs >>|cRXP_WARN_升级怪物直到你的炉石冷却结束|r
>>赫斯到Booty Bay
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step << Rogue
.goto Stranglethorn Vale,26.817,77.149
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_FRIENDLY_Ian Strom|r上楼
.trainer >>训练你的职业技能
.target Ian Strom
step
.isQuestComplete 1116
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兹克|r, 他在楼上
.goto Stranglethorn Vale,26.943,77.207
.turnin 1116 >>交任务: |cRXP_FRIENDLY_梦境之尘|r
.timer 11,Dream Dust in the Swamp RP
.target Krazek
step
.isQuestTurnedIn 1115
>>|cRXP_WARN_等待RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兹克|r
.goto Stranglethorn Vale,26.943,77.207
.accept 1117 >>接任务: |cRXP_WARN_地精的谣言|r
.target Krazek
step << !Mage
#label SWBank
.zoneskip Stormwind City
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >>飞到暴风城
.target Gyll

step << Mage
#completewith next
.goto Stranglethorn Vale,27.530,77.787
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
#label SWTele << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankwithdraw 6245,5996 >>从您的银行提取以下项目：
>>|T133633:0|t[Karnitol的挎包] 
>>|T134797:0|t[水息灵药]（如果你有） << !Warlock 
.target Newton Burnside
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankdeposit 6065,5804 >>将以下项目存入您的银行：
>>|T133461:0|t[卡德加关于维收敛的随笔]（如果你有） 
>>|T133469:0|t[哥布林流言] 
.target Newton Burnside
step << Priest
.goto Stormwind City,44.21,70.03,40,0
.goto Stormwind City,42.85,65.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿德温·凯伦|r
>>|cRXP_BUY_如果比你现在的魔杖更好，就从她那里买一根|r|T135139:0|t[Pitchwood魔杖]|cRXP_Buy_。40级时装备|r
.collect 5238,1 
.target Ardwyn Cailen

step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >>训练你的职业技能
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
.goto StormwindClassic,38.54,26.86
.trainer >>训练你的职业技能
.target Brother Joshua
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >>训练你的职业技能
.target Wu Shen
.target Ilsa Corbin
step
.group
.goto Stormwind City,74.010,30.231
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷明顿·瑞治维尔伯爵|r
.accept 543 >>接任务: |cRXP_LOOT_匹瑞诺德王冠|r
.target Count Remington Ridgewell
step
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布罗哈恩·铁桶|r
.turnin 1448 >>交任务: |cRXP_FRIENDLY_调查神庙|r
.accept 1449 >>接任务: |cRXP_LOOT_去辛特兰的旅程|r
.target Brohann Caskbelly

step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >>训练你的职业技能
.target Einris Brightspear
step << Hunter
.goto StormwindClassic,61.576,15.996
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡瑞娜·麦肯达|r
.trainer >>训练你的宠物法术
.target Karrina Mekenda
step << !Mage
#completewith ReclaimersDesolace
.goto StormwindClassic,61.149,11.568,25,0
.goto StormwindClassic,64.0,8.10
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
>>|cRXP_WARN_如果在等电车时需要，请调整|r|T135966:0|t[急救]|cRXP_WARN_if|r
.link https://www.youtube.com/watch?v=M_tXROi9nMQ >>|cRXP_WARN_在电车内进行登出跳跃。点击此处获取视频参考|r
step << Mage
#completewith next
.goto Stormwind City,63.73,8.43,30,0
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗顿·石锤|r
.turnin 1457 >>交任务: |cRXP_FRIENDLY_卡尼托的海难|r
.target Roetten Stonehammer
step
.goto Ironforge,74.645,11.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员塔伯斯·雷矛|r
.accept 525 >>接任务: |cRXP_LOOT_更大的谜团|r
.target Prospector Stormpike

step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Jubahl Corpseseeker
step << Warlock
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r
.accept 4965 >>接任务: |cRXP_WARN_奥拉赫宝珠|r
.trainer >>训练你的职业技能
.target Briarthorn
step
#ah
#completewith ss1
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_从拍卖行购买|r|T135326:0|t[|cRXP_FRIENDLY_Moonsteel Broadsword|r]|cRXP-Buy_|r
>>这是稍后在达斯瓦洛沼泽免费获得3450经验值。如果无法获取，请跳过此步骤
.collect 3853,1,1203,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << !Warlock
#ah
#completewith ss1
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_从拍卖行购买|r|T134797:0|t[水息灵药]|cRXP_Buy_|r
>>你试着在这里买一个非常重要，因为这会让你很快在阿拉蒂高地的探索变得更容易。如果无法获取，请跳过此步骤
.collect 5996,1,664,1
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#ah
#completewith ss1
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_WARN_如果可能的话，当你即将前往Theramore并可以在那里完成|r|T135966:0|t[急救]|cRXP_WARN_任务时，将你的|r|T135966:0 |t[急救]| cRXP_WARN_to调高到225。如果你现在不能达到225，跳过这一步。你稍后会完成|r
+|cRXP_BUY_如果需要，从拍卖行购买|r|T132892:0|t[Magewave Cloth]|cRXP_Buy_|r
.skill firstaid,225,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << Warrior
#ah
#completewith next
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_从拍卖行购买以下物品。这不是必需的，但在以后使用|r|T132403:0|t[|cFF0070FF旋风斧|r]时会节省时间
>>|cRXP_WARN_如果您计划为|r[|cFF0070FFBonebiter|r]|cRXP_WARN_运行Scarlet Monastery，您可以跳过此步骤|r
>>|T133434:0|t[燃烧的符咒]
>>|T133435:0|t[雷霆符]
>>|T133438:0|t[冠符]
.collect 4479,8,1714,1 
.collect 4480,8,1714,1 
.collect 4481,8,1714,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#label ss1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.501,47.742
.fly Wetlands >>飞到湿地
.target Gryth Thurden
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 30-40
#version 15
#classic
<< Alliance
#name 39-39 Dustwallow Marsh
#next 39-40 Desolace
step
#completewith next
.goto Wetlands,7.270,62.527,25 >>前往Menethil港码头
step
.goto Wetlands,5.075,63.408
>>|cRXP_WARN_在等待过程中调平|r|T135966:0|t[急救]|cRXP_WARN_|r
.zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
step
.goto Dustwallow Marsh,66.437,51.463
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海伦妮亚·奥德恩|r
>>|cRXP_BUY_从她那里购买3|r|T134059:0|t[舒缓香料]|cRXP_Buy_|r
.collect 3713,3,1218,1 
.target Helenia Olden
step
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩根·斯特恩|r
.turnin -1260 >>交任务: |cRXP_FRIENDLY_摩根·斯特恩|r
.accept 1204 >>接任务: |cRXP_LOOT_泥石龟蟹汤|r
.target Morgan Stern
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师特沃什|r
.goto Dustwallow Marsh,66.423,49.260
.accept 1266 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Archmage Tervosh
step
.goto Dustwallow Marsh,55.437,26.270
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"沼泽之眼\"加尔|r
.accept 1218 >>接任务: |cRXP_WARN_舒心草|r
.turnin 1218 >>交任务: |cRXP_FRIENDLY_舒心草|r
.accept 1206 >>接任务: |cRXP_LOOT_加尔和蜘蛛眼|r
.target "Swamp Eye" Jarl
step
.goto Dustwallow Marsh,55.442,25.917
>>单击|cRXP_PICK_Loost Dirt|r
.accept 1219 >>接任务: |cRXP_LOOT_兽人的报告|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞拉摩海军上尉|r
.goto Dustwallow Marsh,68.125,48.201
.turnin 1219 >>交任务: |cRXP_FRIENDLY_兽人的报告|r
.accept 1220 >>接任务: |cRXP_LOOT_维米斯队长|r
.target Theramore Lieutenant
step
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖兰·维米斯队长|r
.turnin 1220 >>交任务: |cRXP_FRIENDLY_维米斯队长|r
.accept 1286 >>接任务: |cRXP_LOOT_背叛者|r
.target Captain Garran Vimes
step
.skill firstaid,<225,1
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古斯塔夫·范沃森医生|r
.accept 6624 >>接任务: |cRXP_WARN_救死扶伤|r
.target Doctor Gustaf VanHowzen
step
.isOnQuest 6624
.goto Dustwallow Marsh,67.756,48.968
.use 16991 >>|cRXP_WARN_引导|r|T133682:0|t[分诊绷带]|cRXP_WARN_on the |cRXT_FRIENDLY_Alliance Soldiers|r优先考虑|cRXP-FRIENDLY_Critically伤兵|r|r
.complete 6624,1 
.target Critically Injured Alliance Soldier
.target Badly Injured Alliance Soldier
.target Injured Alliance Soldier
step
.isQuestComplete 6624
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古斯塔夫·范沃森医生|r
.turnin 6624 >>交任务: |cRXP_FRIENDLY_救死扶伤|r
.target Doctor Gustaf VanHowzen
step
.isQuestTurnedIn 6624
.destroy 16991 >>摧毁: |cRXP_ENEMY_急救绷带|r
step
#completewith next
.isOnQuest 1204
.goto Dustwallow Marsh,64.89,42.25,90,0
.goto Dustwallow Marsh,63.14,36.98,90,0
.goto Dustwallow Marsh,61.02,19.41,90,0
.goto Dustwallow Marsh,59.67,17.69,0,0
>>杀死|cRXP_ENEMY_Mudrock Spikeshells|r和|cRXX_ENEMY_ Mudrock Tortoises|r。掠夺它们的|cRXD_Loot_Tongues|r
.complete 1204,1 
.mob Mudrock Spikeshell
.mob Mudrock Tortoise
step
.isOnQuest 1177
.goto Dustwallow Marsh,64.2,28.0,0
.goto Dustwallow Marsh,62.8,18.8,0
.goto Dustwallow Marsh,57.6,16.4,0
.goto Dustwallow Marsh,54.6,16.2,0
.goto Dustwallow Marsh,64.2,28.0,75,0
.goto Dustwallow Marsh,62.8,18.8,75,0
.goto Dustwallow Marsh,57.6,16.4,75,0
.goto Dustwallow Marsh,54.6,16.2,75,0
.goto Dustwallow Marsh,57.6,21.6,75,0
.goto Dustwallow Marsh,62.8,18.8,75,0
.goto Dustwallow Marsh,57.6,16.4,75,0
.goto Dustwallow Marsh,54.6,16.2,75,0
.goto Dustwallow Marsh,57.6,21.6
>>杀死|cRXP_ENEMY_Mirefins|r。掠夺他们的|cRXP_Loot_Heads|r
.complete 1177,1 
.mob Mirefin Coastrunner
.mob Mirefin Muckdweller
.mob Mirefin Murloc
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mirefin Warrior
.mob Mirefin Oracle
step
.isOnQuest 1204
.goto Dustwallow Marsh,64.6,40.0,70,0
.goto Dustwallow Marsh,62.6,33.6,70,0
.goto Dustwallow Marsh,61.8,26.4,70,0
.goto Dustwallow Marsh,60.2,17.0,70,0
.goto Dustwallow Marsh,55.2,16.6,70,0
.goto Dustwallow Marsh,60.2,17.0,70,0
.goto Dustwallow Marsh,61.8,26.4,70,0
.goto Dustwallow Marsh,62.6,33.6,70,0
.goto Dustwallow Marsh,64.6,40.0,70,0
.goto Dustwallow Marsh,60.2,17.0,70,0
>>杀死|cRXP_ENEMY_Mudrock Spikeshells|r和|cRXX_ENEMY_ Mudrock Tortoises|r。掠夺它们的|cRXD_Loot_Tongues|r
.complete 1204,1 
.mob Mudrock Spikeshell
.mob Mudrock Tortoise
step
#softcoreserver
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亨德尔下士|r
>>|cRXP_WARN_如果你选择接受后续任务，你将被PVP标记！这意味着部落玩家可以杀死你！风险自负！|r
>>|cRXP_WARN_在当前任务中，你将不会因转弯而被PvP标记。自动接受已关闭以进行后续操作|r
.turnin 1266 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Private Hendel
.isQuestTurnedIn 1264
step
#softcoreserver
.isQuestTurnedIn 1264
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亨德尔下士|r
>>|cRXP_WARN_如果你选择接受这个任务，你将被PVP标记！这意味着部落玩家可以杀死你！风险自负！|r
.accept 1324,1 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Private Hendel
step
#hardcoreserver
.goto Dustwallow Marsh,45.24,24.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亨德尔下士|r
>>|cRXP_WARN_暴雪已经调整了这个任务，所以它将不再在官方硬核服务器上标记你|r
.turnin 1266 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.accept 1324,1 >>接任务: |cRXP_LOOT_失踪的使节|r
.target Private Hendel
.isQuestTurnedIn 1264
step
.goto Dustwallow Marsh,45.24,24.65
>>击败|cRXP_ENEMY_Private Hendel |r。他将与2|cRXX_ENEMY_Theramore哨兵|r一起攻击你
>>一旦你制服|cRXP_ENEMY_Private Hendel |r，它们都会重置
.complete 1324,1 
.isOnQuest 1324
.mob Private Hendel
step
.isQuestComplete 1324
.goto Dustwallow Marsh,45.193,24.292
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师特沃什|r
.turnin 1324 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Archmage Tervosh
step
.isQuestTurnedIn 1324
.goto Dustwallow Marsh,45.218,24.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
.turnin 1267 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Lady Jaina Proudmoore
step
.goto Dustwallow Marsh,35.43,21.98,70,0
.goto Dustwallow Marsh,33.58,21.32,70,0
.goto Dustwallow Marsh,35.05,24.71,70,0
.goto Dustwallow Marsh,34.49,22.06
>>杀死|cRXP_ENEMY_Darkmist蜘蛛|r、|cRXD_ENEMY_ Darkmist丝绸纺纱机|r、| cRXP__ENEMY_Darhmist潜伏者|r和|cRXP_ENEMY_深色薄雾隐士|r。掠夺它们的|cRXP_Loot_Eyes |r
>>|cRXP_ENEMY_Darkmist Silkspeers |r|cRXP_WARN_cast|r|T132149:0|t[Web]
>>|cRXP_ENEMY_Darkmist隐遁|r|cRXP_WARN_cast|r|T136067:0|t[减毒]|cRXP-WARN_使你的物理伤害降低75%，持续15秒。当他们开始施放时，只需移出近战范围即可避免|r << Rogue/Warrior/Paladin/Druid
>>|cRXP_ENEMY_黑暗迷雾潜伏者|r|cRXP_WARN_are in |r|T132320:0|t[潜行]|cRXP-WARN_in洞穴一侧。建议您不要进入洞穴|r
.complete 1206,1 
.mob Darkmist Recluse
.mob Darkmist Spider
.mob Darkmist Silkspinner
.mob Darkmist Lurker
step
.goto Dustwallow Marsh,46.881,17.518
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊格纳兹|r
>>|cRXP_WARN_这将开始一个护送任务|r
.accept 1222 >>接任务: |cRXP_LOOT_伊格纳兹的逃亡|r
.target "Stinky" Ignatz
step
.isOnQuest 1222
.goto Dustwallow Marsh,48.76,24.49,0
>>跟随|cRXP_FRIENDLY_“臭”Ignatz|r穿过沼泽地
.complete 1222,1 
.target "Stinky" Ignatz
step
.isQuestComplete 1206
.goto Dustwallow Marsh,55.437,26.270
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"沼泽之眼\"加尔|r
.turnin 1206 >>交任务: |cRXP_FRIENDLY_加尔和蜘蛛眼|r
.target "Swamp Eye" Jarl
step
#optional
.isQuestTurnedIn 1206
.goto Dustwallow Marsh,55.437,26.270
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"沼泽之眼\"加尔|r
.accept 1203 >>接任务: |cRXP_LOOT_加尔的剑|r
.turnin 1203 >>交任务: |cRXP_FRIENDLY_加尔的剑|r
.target "Swamp Eye" Jarl
.itemcount 3853,1
step
#completewith 513
.destroy 5884 >>摧毁: |cRXP_ENEMY_黑雾蜘蛛的眼球|r
step
.isQuestComplete 1177
.goto Dustwallow Marsh,35.154,38.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马德克拉什|r
.turnin 1177 >>交任务: |cRXP_FRIENDLY_饿！|r
.target Mudcrush Durtfeet
step
#completewith BalosJacken
.goto Dustwallow Marsh,35.74,53.99,45 >>前往Lost Point塔
step
#completewith next
.goto Dustwallow Marsh,36.09,54.30
+攻击|cRXP_ENEMY_Balos Jacken|r至10%生命值以使其屈服
step
#label BalosJacken
.goto Dustwallow Marsh,36.09,54.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴鲁斯·加科因|r
.turnin 1286 >>交任务: |cRXP_FRIENDLY_背叛者|r
.accept 1287 >>接任务: |cRXP_LOOT_背叛者|r
.target Balos Jacken
step
#completewith 513
.goto Dustwallow Marsh,66.336,45.469
.subzone 513 >>前往Theramore岛
step
.isQuestComplete 1222
.isQuestComplete 1204
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩根·斯特恩|r
.turnin 1222 >>交任务: |cRXP_FRIENDLY_伊格纳兹的逃亡|r
.turnin 1204 >>交任务: |cRXP_FRIENDLY_泥石龟蟹汤|r
.target Morgan Stern
step
.isQuestComplete 1222
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩根·斯特恩|r
.turnin 1222 >>交任务: |cRXP_FRIENDLY_伊格纳兹的逃亡|r
.target Morgan Stern
step
.isQuestComplete 1204
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩根·斯特恩|r
.turnin 1204 >>交任务: |cRXP_FRIENDLY_泥石龟蟹汤|r
.target Morgan Stern
step
.isQuestTurnedIn 1204
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩根·斯特恩|r
.accept 1258 >>接任务: |cRXP_WARN_还有螃蟹！|r
.target Morgan Stern
step
#label 513
.goto Dustwallow Marsh,68.212,48.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖兰·维米斯队长|r
.turnin 1287 >>交任务: |cRXP_FRIENDLY_背叛者|r
.target Captain Garran Vimes
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 30-40
#classic
<< Alliance
#name 39-40 Desolace
#next 40-41 Alterac/Arathi
step << Warlock
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德拉克|r
.fly Ratchet>>飞到棘轮
.target Baldruc
step << Warlock
.isOnQuest 4965
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅纳拉·沃伦德|r
.turnin 4965 >>交任务: |cRXP_FRIENDLY_奥拉赫宝珠|r
.target Menara Voidrender
step << Warlock
.isOnQuest 4968
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅纳拉·沃伦德|r
.turnin 4968 >>交任务: |cRXP_FRIENDLY_奥拉赫宝珠|r
.target Menara Voidrender
step << Warlock
.isQuestTurnedIn 4965
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅纳拉·沃伦德|r
.accept 1799 >>接任务: |cRXP_LOOT_宝珠碎片|r
.target Menara Voidrender
step << Warlock
.isQuestTurnedIn 4968
.goto The Barrens,62.509,35.449
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅纳拉·沃伦德|r
.accept 1799 >>接任务: |cRXP_LOOT_宝珠碎片|r
.target Menara Voidrender
step << Warlock
.isOnQuest 4488
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 4488 >>交任务: |cRXP_FRIENDLY_召唤地狱战马|r
.target Strahad Farsan
step << Warlock
.isOnQuest 4487
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 4487 >>交任务: |cRXP_FRIENDLY_召唤地狱战马|r
.target Strahad Farsan
step << Warlock
.isQuestTurnedIn 4487,4488
.goto The Barrens,62.627,35.500
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.accept 4490 >>接任务: |cRXP_LOOT_召唤地狱战马|r
.turnin 4490 >>交任务: |cRXP_FRIENDLY_召唤地狱战马|r
.target Strahad Farsan
step << Warlock
.isQuestTurnedIn 4965
.goto The Barrens,62.641,35.304
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_助手温图拉|r
.accept 4962 >>接任务: |cRXP_LOOT_地狱犬的灵魂|r
.target Acolyte Wytula
step << Warlock
.isQuestTurnedIn 4968
.goto The Barrens,62.641,35.304
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_助手温图拉|r
.accept 4962 >>接任务: |cRXP_LOOT_地狱犬的灵魂|r
.target Acolyte Wytula
step << Warlock
#completewith DesolaceArrive
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.goto The Barrens,63.084,37.163
.fly Desolace>>Fly to Desolace
.target Bragok
step << !Warlock
#completewith DesolaceArrive
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德拉克|r
.fly Desolace >>Fly to Desolace
.target Baldruc
step
#completewith DesolaceArrive
.goto Desolace,66.275,6.554
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板利莎瑞亚|r
.home >>将你的炉石设置为Desolace
.target Innkeeper Lyshaerya
step
.goto Desolace,66.519,7.907
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安东修士|r
.accept 261 >>接任务: |cRXP_WARN_血色之路|r
.target Brother Anton
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷迪格·安戈尔|r
.accept 1466 >>接任务: |cRXP_WARN_寻物公司的委托|r
.target Kreldig Ungor
step
#completewith next
.goto Desolace,47.83,61.82,90 >>前往Kodo墓地的|cRXP_FRIENDLY_Hornizz|r
step
#label DesolaceArrive
#era/som
.goto Desolace,47.830,61.825
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍恩尼兹|r
.accept 6134 >>接任务: |cRXP_WARN_幽灵电浆|r
.target Hornizz Brimbuzzle
step
.isQuestTurnedIn 1370
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1373 >>交任务: |cRXP_FRIENDLY_盎格库尔|r
.accept 1374 >>接任务: |cRXP_WARN_杰恩可汗|r
.target Uthek the Wise
step << Warlock
#completewith ReclaimersDemons
>>杀死|cRXP_ENEMY_燃烧之刃召唤师|r。掠夺他们的|cRXX_Loot_地狱之珠|r
.complete 1799,1 
.mob Burning Blade Summoner
step << Warlock
#completewith ReclaimersDemons
.use 12647 >>|cRXP_WARN_将|r|T134129:0|t[Felhas Ruby]|cRXP_WARN_on a|cRXP_ENEMY_Ley Hunter|r、|cRXD_ENEMY_Mana Eater |r或|cRXT_ENEMY_Mage Hunter|r引导至其即将死亡|r
.complete 4962,1 
.mob Ley Hunter
.mob Mana Eater
.mob Mage Hunter
step
#label ReclaimersDemons
.goto Desolace,51.72,83.92,0
>>杀死|cRXP_ENEMY_Ley猎人|r、|cRXD_ENEMY_Mana Eaters |r和|cRXP_ENEMY_Mage猎人|r。掠夺他们的|cRXT_Loot_Brains|r
>>杀死|cRXP_ENEMY_Nether Sisters|r、|cRXD_ENEMY_Nether Maidens|r和|cRXP_ENEMY_Net魔法师|r。掠夺她们的|cRXT_Loot_Fwing|r
>>杀死|cRXP_ENEMY_Doomwarder上尉|r。掠夺他们的|cRXX_Loot_Blood|r
>>|cRXP_WARN_优先考虑|cRXP_ENEMY_Doomwarder Captains|r，因为您可能需要等待他们的重生。常规|cRXP_ENEMY_Doomwarders|r不要掉落|r|cRXP-LOOT_Blood|r。你也可以请别人邀请你，这样你就可以换层了|r
.complete 1466,1 
.goto Desolace,50.6,81.6,70,0
.goto Desolace,51.6,85.8,70,0
.goto Desolace,53.6,84.6,70,0
.goto Desolace,53.6,77.6,70,0
.goto Desolace,56.6,75.6,70,0
.goto Desolace,53.0,68.6,70,0
.goto Desolace,53.6,77.6
.complete 1466,2 
.goto Desolace,54.6,78.2,70,0
.goto Desolace,50.6,71.6,70,0
.goto Desolace,48.8,77.6,70,0
.goto Desolace,54.6,78.2,70,0
.goto Desolace,50.6,71.6,70,0
.goto Desolace,48.8,77.6
.complete 1466,3 
.goto Desolace,51.72,83.92
.mob Ley Hunter
.mob Mana Eater
.mob Mage Hunter
.mob Nether Sister
.mob Nether Maiden
.mob Nether Sorceress
.mob Doomwarder Captain
step << Warlock
#completewith next
>>杀死|cRXP_ENEMY_燃烧之刃召唤师|r。掠夺他们的|cRXX_Loot_地狱之珠|r
.complete 1799,1 
.mob Burning Blade Summoner
step << Warlock
.goto Desolace,50.6,81.6,70,0
.goto Desolace,51.6,85.8,70,0
.goto Desolace,53.6,84.6,70,0
.goto Desolace,53.6,77.6,70,0
.goto Desolace,56.6,75.6,70,0
.goto Desolace,53.0,68.6,70,0
.goto Desolace,53.6,77.6
.use 12647 >>|cRXP_WARN_将|r|T134129:0|t[Felhas Ruby]|cRXP_WARN_on a|cRXP_ENEMY_Ley Hunter|r、|cRXD_ENEMY_Mana Eater |r或|cRXT_ENEMY_Mage Hunter|r引导至其即将死亡|r
.complete 4962,1 
.mob Ley Hunter
.mob Mana Eater
.mob Mage Hunter
step << Warlock
.goto Desolace,50.4,71.6,70,0
.goto Desolace,49.8,77.8,70,0
.goto Desolace,52.4,83.6,70,0
.goto Desolace,55.0,77.8
>>杀死|cRXP_ENEMY_燃烧之刃召唤师|r。掠夺他们的|cRXX_Loot_地狱之珠|r
.complete 1799,1 
.mob Burning Blade Summoner
step
#completewith next
>>杀死|cRXP_ENEMY_亡灵掠夺者|r
.complete 261,1 
.mob Undead Ravager
step
.goto Desolace,64.00,91.70
>>|cRXP_WARN_使用|r|T132763:0|t[Crate of Ghost Magnets]|cRXP_WARN_at两具巨大骨骼遗骸之间的骨谷|r
>>杀死从中产生的|cRXP_ENEMY_Magrami Spectres|r。掠夺它们的|cRXP_Loot_Ghost-o-presis|r
.complete 6134,1 
.mob Magrami Spectre
step
.goto Desolace,64.30,81.96,70,0
.goto Desolace,64.00,91.70,70,0
.goto Desolace,59.91,89.42,70,0
.goto Desolace,64.00,91.70
>>杀死|cRXP_ENEMY_亡灵掠夺者|r
.complete 261,1 
.mob Undead Ravager
step
.isQuestTurnedIn 1370
.goto Desolace,65.94,80.40
>>杀死|cRXP_ENEMY_Khan Jehn|r。掠夺他的|cRXX_Loot_Head |r
.complete 1374,1 
.mob Khan Jehn
step
.goto Desolace,47.830,61.825
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍恩尼兹|r
.turnin 6134 >>交任务: |cRXP_FRIENDLY_幽灵电浆|r
.target Hornizz Brimbuzzle
step
.isQuestTurnedIn 1370
.goto Desolace,36.234,79.245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1374 >>交任务: |cRXP_FRIENDLY_杰恩可汗|r
.target Uthek the Wise
step
.goto Desolace,41.13,91.72,0
.goto Feralas,45.44,3.07
.zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
.zoneskip Desolace,1
step
#completewith FMFP
.goto Feralas,44.88,7.70,50,0
.goto Feralas,46.31,21.20,50,0
.goto Feralas,47.98,25.22,50,0
.goto Feralas,46.82,27.89,35,0
.goto Feralas,48.13,44.92,50,0
.goto Feralas,43.33,42.75,60,0
.goto Feralas,30.238,43.248
.subzone 1116 >>沿着这条路一直走到羽门寨。你不需要等船，只要游过去就行了
step
#completewith next
.goto Feralas,32.671,44.029
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛加纳斯|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_|r
>>|cRXP_WARN_如果|cRXP_FRIENDLY_Logannas|r没有库存，请跳过此步骤|r
.target Logannas
step
#label FMFP
.goto Feralas,30.238,43.248
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔迪恩·月羽|r
.fp Feathermoon >>获取羽毛蒙飞行路径
.fly Tanaris >>前往: 塔纳利斯
.target Fyldren Moonfeather
.zoneskip Feralas,1
step
.isOnQuest 1183,1117,602
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 5852,5804,3960,5796 >>从您的银行提取以下项目：
>>|T134330:0|t[燃油调节器蓝图] 
>>|T133469:0|t[哥布林流言] 
>>|T133633:0|t[一袋水元素背带] 
>>|T134305:0|t[镶嵌尾翼]（如果你有） 
.target Gimblethorn
step << Hunter
#completewith next
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉兹弗斯|r
.stable >>稳定你的宠物。你很快就会驯服一个|cRXP_ENEMY_Scorpid Hunter|r
.xp <40,1
.target Laziphus
step << Hunter
.goto Tanaris,54.07,32.21
>>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on a|cRXX_ENEMY_Scorpid Hunter|r驯服它|r 
.train 2976 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132140:0|t[爪（等级6）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.xp <40,1
.mob Scorpid Hunter
step
#completewith next
.goto Thousand Needles,77.782,77.263,100 >>前往: |cRXP_PICK_千针石林|r
step
#label Martek
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔·铜栓|r
.accept 1106 >>接任务: |cRXP_LOOT_流放者马特克|r
.target Fizzle Brassbolts
step
.group
.isQuestComplete 1107
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹尔·铜栓|r
.turnin 1107 >>交任务: |cRXP_FRIENDLY_坚硬的尾鳍|r
.target Wizzle Brassbolts
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉维尔·浓须|r
.turnin 1117 >>交任务: |cRXP_FRIENDLY_地精的谣言|r
.timer 10,Rumors for Kravel RP
.accept 1118 >>接任务: |cRXP_WARN_返回藏宝海湾|r
.target Kravel Koalbeard
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.turnin 1183 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1186 >>接任务: |cRXP_LOOT_第十八个驾驶员|r
.target Pozzik
step
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1186 >>交任务: |cRXP_FRIENDLY_第十八个驾驶员|r
.accept 1187 >>接任务: |cRXP_LOOT_拉泽瑞克的调整|r
.target Razzeric
step
.group
.abandon 1107 >>废弃镶嵌的尾翼
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
.xp <40,1
step << Druid
>>前往: |cRXP_PICK_月光林地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >>训练你的职业技能
.target Loganaar
.xp <40,1
step
#completewith next
.hs >>Hearth to Desolace
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
.goto Desolace,66.519,7.907
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安东修士|r
.turnin 261 >>交任务: |cRXP_FRIENDLY_血色之路|r
.accept 1052 >>接任务: |cRXP_WARN_血色之路|r
.target Brother Anton
step
.goto Desolace,66.201,9.626
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷迪格·安戈尔|r
.turnin 1466 >>交任务: |cRXP_FRIENDLY_寻物公司的委托|r
.accept 1467 >>接任务: |cRXP_WARN_寻物公司的委托|r
.target Kreldig Ungor

step << Human Mage
#completewith next
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
.xp <40,1
.money <90
.skill riding,75,1 
step << Human Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
.xp <40,1
.money <90
.skill riding,75,1 
step << Human Mage
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Redridge >>飞到雷德里奇
.target Dungar Longdrink
.zoneskip Stormwind City,1
.xp <40,1
.money <90
.skill riding,75,1 
step << Human Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯蒂·亨特|r, |cRXP_FRIENDLY_兰达尔·亨特|r
.vendor >>|cRXP_BUY_BUY a|r|T132261:0|t[|cFF0070FF马|r]
.goto Elwynn Forest,84.152,65.489
.train 148 >>火车|T132261:0|t[骑马]
.goto Elwynn Forest,84.321,64.869
.xp <40,1
.money <90
.skill riding,75,1
.target Katie Hunter
.target Randal Hunter
step << Human Mage
#completewith next
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
.zoneskip Elwynn Forest,1
step << NightElf
#completewith next
+|cRXP_WARN_飞到达纳苏斯去拿你的坐骑！|r
.xp <40,1
.money <90
.skill riding,75,1 
.zoneskip Desolace,1
step << NightElf
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞特·克罗斯|r
.fly Teldrassil >>飞往Teldrassil
.target Baritanas Skyriver
.xp <40,1
.money <90
.skill riding,75,1 
.zoneskip Desolace,1
step << NightElf
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
.xp <40,1
.money <90
.skill riding,75,1 
step << NightElf
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾萨姆|r, |cRXP_FRIENDLY_莱兰奈|r
.train 828 >>火车|T132242:0|t[骑老虎]
.goto Darnassus,38.694,15.857
.vendor >>|cRXP_BUY_购买|r|T132267:0|t[|cFF0070FF夜刀|r]|cRXP_BUY_或|r|T132225:0|t[| cFF00700FF夜刀| r]
.goto Darnassus,38.283,15.365
.xp <40,1
.zoneskip Darnassus,1
.target Jartsam
.target Lelanai
step << NightElf Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷亚斯塔·刃歌|r
.goto Darnassus,58.72,34.92
.trainer >>训练你的职业技能
.target Arias'ta Bladesinger
.zoneskip Darnassus,1
step << NightElf Priest
.goto Darnassus,37.90,82.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾德莉亚|r
.trainer >>训练你的职业技能
.target Jandria
.zoneskip Darnassus,1
step << NightElf Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
.goto Darnassus,31.84,16.69,30,0
.goto Darnassus,37.00,21.92
.trainer >>训练你的职业技能
.target Syurna
.zoneskip Darnassus,1
step << NightElf Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
.trainer >>训练你的职业技能
.target Jocaste
.zoneskip Darnassus,1
step << NightElf
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darnassus,1
step << NightElf
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
.fly Theramore >>飞往塞拉莫尔
.zoneskip Teldrassil,1
step << !Mage
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞特·克罗斯|r
.fly Theramore >>飞往塞拉莫尔
.target Baritanas Skyriver
.zoneskip Desolace,1
step << !Mage
.skill firstaid,<225,1
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古斯塔夫·范沃森医生|r
.accept 6624 >>接任务: |cRXP_WARN_救死扶伤|r
.target Doctor Gustaf VanHowzen
step << !Mage
.isOnQuest 6624
.goto Dustwallow Marsh,67.756,48.968
.use 16991 >>|cRXP_WARN_引导|r|T133682:0|t[分诊绷带]|cRXP_WARN_on the |cRXT_FRIENDLY_Alliance Soldiers|r优先考虑|cRXP-FRIENDLY_Critically伤兵|r|r
.complete 6624,1 
.target Critically Injured Alliance Soldier
.target Badly Injured Alliance Soldier
.target Injured Alliance Soldier
step << !Mage
.isQuestComplete 6624
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古斯塔夫·范沃森医生|r
.turnin 6624 >>交任务: |cRXP_FRIENDLY_救死扶伤|r
.target Doctor Gustaf VanHowzen
step << !Mage
.isQuestTurnedIn 6624
.destroy 16991 >>摧毁: |cRXP_ENEMY_急救绷带|r
step << Warlock
#completewith next
.goto Dustwallow Marsh,55.26,50.54,45 >>向西游向|cRXP_FRIENDLY_Tabetha|r
step << Warlock
#completewith next
+|cRXP_WARN_后续任务将有|cRXP_FRIENDLY_Tabetha|r召唤|cRXP-ENEMY_Orb|r恶魔，这是你需要杀死的40级精英。这个任务很简单，只要你不制造额外的暴徒|r
>>|cRXP_WARN_在接受下一个任务之前，杀死|cRXP_FRIENDLY_Tabetha的|r农场周围的所有暴徒|r
step << Warlock
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔贝萨|r
.turnin 1799 >>交任务: |cRXP_FRIENDLY_宝珠碎片|r
.accept 4961 >>接任务: |cRXP_LOOT_奥拉赫宝珠的净化|r
.target Tabetha
step << Warlock
.goto Dustwallow Marsh,45.87,56.74
>>杀死|cRXP_ENEMY_Orb|r的恶魔
>>|cRXP_WARN_施放|r|T136183:0|t[恐惧]|cRXP_WARN_持续施放|cRXT_ENEMY_Orb|r的恶魔，直到你的DoTs杀死它|r
.complete 4961,1 
.mob Demon of the Orb
step << Warlock
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔贝萨|r
.turnin 4961 >>交任务: |cRXP_FRIENDLY_奥拉赫宝珠的净化|r
.accept 4976 >>接任务: |cRXP_LOOT_归还净化过的宝珠|r
.target Tabetha
step << Warlock
#completewith next
.goto Dustwallow Marsh,69.38,53.29,80 >>Swim to Theramore Isle
step << Warrior
.goto Dustwallow Marsh,67.875,48.409
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊文凯恩队长|r
.trainer >>训练你的职业技能
.skill riding,75,1 
.target Captain Evencane
step << Paladin
.goto Dustwallow Marsh,67.396,47.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔曼修士|r
.trainer >>训练你的职业技能
.target Brother Karman
step << !Mage
.goto Dustwallow Marsh,71.46,56.30
.zone Wetlands >>前往: |cRXP_PICK_湿地|r
.zoneskip Arathi Highlands
step << Druid/NightElf Warrior 
.dungeon !SM
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fly Arathi >>Fly to Arathi
.target Shellei Brondir
step << Gnome !Warlock !Mage/Dwarf !Paladin 
#completewith next
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fly Ironforge >>飞往铁炉堡
>>|cRXP_WARN_Travel to Kharanos and buy your |r|T132247:0|t[机械手] << Gnome !Warlock
>>|cRXP_WARN_Travel to Amberstill Ranch and buy your |r|T132248:0|t[Ram] << Dwarf !Paladin
.target Shellei Brondir
.money <90
.skill riding,75,1
.xp <40,1
step << Gnome Mage
#completewith next
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << Gnome Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r
.trainer >>训练你的职业技能
.target Dink
step << Gnome !Warlock 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_宾吉·羽哨|r, |cRXP_FRIENDLY_米利·羽哨|r
.train 10907 >>列车|T132247:0|t[机械手驾驶]
.goto Dun Morogh,49.148,48.126
.vendor >>|cRXP_BUY_BUY a|r|T132247:0|t[|cFF0070FF机械手|r]
.goto Dun Morogh,49.123,47.956
.xp <40,1
.money <90
.skill riding,75,1
.target Binjy Featherwhistle
.target Milli Featherwhistle
step << Dwarf !Paladin 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维隆·冻石|r, |cRXP_FRIENDLY_奥萨姆·铁角|r
.vendor >>|cRXP_BUY_BUY a|r|T132248:0|t[|cFF0070FFRam|r]
.goto Dun Morogh,63.467,50.557
.train 826 >>火车|T132248:0|t[骑公羊]
.goto Dun Morogh,63.944,50.095
.xp <40,1
.money <90
.skill riding,75,1
.target Veron Amberstill
.target Ultham Ironhorn
step << Human !Warlock !Paladin !Mage 
#completewith next
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fly Redridge >>飞到雷德里奇
>>|cRXP_WARN_前往Eastvale伐木营地购买您的|r|T132261:0|t[马]
.target Shellei Brondir
.money <90
.skill riding,75,1
.xp <40,1
step << Human !Warlock !Paladin !Mage 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯蒂·亨特|r, |cRXP_FRIENDLY_兰达尔·亨特|r
.vendor >>|cRXP_BUY_BUY a|r|T132261:0|t[|cFF0070FF马|r]
.goto Elwynn Forest,84.152,65.489
.train 148 >>火车|T132261:0|t[骑马]
.goto Elwynn Forest,84.321,64.869
.xp <40,1
.money <90
.skill riding,75,1
.target Katie Hunter
.target Randal Hunter
step << Human Warrior
.dungeon !SM
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Arathi >>Fly to Arathi
.target Ariena Stormfeather
.skill riding,<75,1 
step << Human !Warlock !Paladin !Mage
.dungeon SM << Human Warrior
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Ironforge >>飞往铁炉堡
.target Ariena Stormfeather
.skill riding,<75,1 
step << Druid/Warrior 
.dungeon SM
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fly Ironforge >>飞往铁炉堡
.target Shellei Brondir
.zoneskip Wetlands,1 
step << Paladin
#completewith PaladinMountAcquired
.dungeon !SM
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fly Stormwind >>|cRXP_WARN_飞到暴风学习|r|T136103:0|t[召唤战马]
.target Shellei Brondir
.zoneskip Wetlands,1
.skill riding,75,1
step << !Mage !Druid !Warrior
.dungeon SM << Paladin
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fly Ironforge >>飞往铁炉堡
.target Shellei Brondir
.zoneskip Wetlands,1
step
.dungeon SM
.goto Ironforge,74.980,12.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图书馆员麦伊·苍尘|r
.accept 1050 >>接任务: |cRXP_WARN_泰坦神话|r
.target Librarian Mae Paledust
step
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗顿·石锤|r
.turnin 1467 >>交任务: |cRXP_FRIENDLY_寻物公司的委托|r
.isOnQuest 1467
.target Roetten Stonehammer
.zoneskip Ironforge,1
step << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r
.goto Ironforge,51.495,15.330
.trainer >>训练你的职业技能
.target Fenthwick
.skill riding,75,1 << NightElf 
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r
.goto Ironforge,25.207,10.756
.trainer >>训练你的职业技能
.target Toldren Deepiron
.skill riding,75,1 << NightElf 
step << Hunter
.goto Ironforge,69.872,82.890
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷格努斯·雷石|r
.trainer >>训练你的职业技能
.target Regnus Thundergranite
.skill riding,75,1 << NightElf 
step << Paladin
#completewith PaladinMountAcquired
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Stormwind >>|cRXP_WARN_飞到暴风学习|r|T136103:0|t[召唤战马]
>>|cRXP_WARN_如果您已经有了装载，请跳过此步骤|r
.target Gryth Thurden
.zoneskip Ironforge,1
step << Paladin
.isOnQuest 4485
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
.turnin 4485 >>交任务: |cRXP_FRIENDLY_高贵之书|r
.turnin 1661 >>交任务: |cRXP_FRIENDLY_高贵之书|r
.target Duthorian Rall
step << Paladin
.isOnQuest 4486
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
.turnin 4486 >>交任务: |cRXP_FRIENDLY_高贵之书|r
.turnin 1661 >>交任务: |cRXP_FRIENDLY_高贵之书|r
.target Duthorian Rall
step << Paladin
#label PaladinMountAcquired
.goto Stormwind City,39.81,29.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
.turnin 1661 >>交任务: |cRXP_FRIENDLY_高贵之书|r
>>|cRXP_WARN_这是一个简单的任务转换。你不需要在任务日志中有当前的任务|r
.target Duthorian Rall
step << Paladin
.isQuestTurnedIn 1661
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Arathi >>Fly to Arathi
.target Dungar Longdrink
.zoneskip Stormwind City,1
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Jubahl Corpseseeker
step << Warlock
.goto Ironforge,51.1,8.7,15,0
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r
.accept 4487 >>接任务: |cRXP_LOOT_召唤地狱战马|r
.trainer >>训练你的职业技能
.target Briarthorn
step << Warlock
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Wetlands >>飞到湿地
.target Gryth Thurden
.isOnQuest 4487
step << Warlock
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
.isOnQuest 4487
step << Warlock
.goto Dustwallow Marsh,67.47,51.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德拉克|r
.fly Ratchet>>飞到棘轮
.isOnQuest 4487
step << Warlock
#completewith fsteed
.isOnQuest 4488
.goto The Barrens,62.627,35.500
.target Strahad Farsan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 4488 >>交任务: |cRXP_FRIENDLY_召唤地狱战马|r
.accept 4490 >>接任务: |cRXP_LOOT_召唤地狱战马|r
step << Warlock
#completewith fsteed
.isOnQuest 4487
.goto The Barrens,62.627,35.500
.target Strahad Farsan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 4487 >>交任务: |cRXP_FRIENDLY_召唤地狱战马|r
.accept 4490 >>接任务: |cRXP_LOOT_召唤地狱战马|r
step << Warlock
#label fsteed
.goto The Barrens,62.627,35.500
.target Strahad Farsan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.accept 4490 >>接任务: |cRXP_LOOT_召唤地狱战马|r
.turnin 4490 >>交任务: |cRXP_FRIENDLY_召唤地狱战马|r
step << Warlock
.goto The Barrens,62.509,35.449
.target Menara Voidrender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅纳拉·沃伦德|r
.turnin 4962 >>交任务: |cRXP_FRIENDLY_地狱犬的灵魂|r
.turnin 4976 >>交任务: |cRXP_FRIENDLY_归还净化过的宝珠|r
step << Warlock
.goto The Barrens,62.509,35.449
.target Menara Voidrender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅纳拉·沃伦德|r
>>|cRXP_WARN_等待RP|r
.accept 4964 >>接任务: |cRXP_LOOT_达奥拉赫宝珠|r
.turnin 4964 >>交任务: |cRXP_FRIENDLY_达奥拉赫宝珠|r
step << Warlock
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Theramore >>飞往塞拉莫尔
.target Bragok
step << Warlock
.goto Dustwallow Marsh,71.46,56.30
.zone Wetlands >>前往: |cRXP_PICK_湿地|r
.zoneskip Arathi Highlands
step << Warlock
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fly Arathi >>Fly to Arathi
.target Shellei Brondir
step << Human Warrior/Gnome Warrior/Dwarf Warrior
.solo
.goto Wetlands,9.490,59.694
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_暴风城|r
.fly Arathi >>Fly to Arathi
.target Shellei Brondir
.zoneskip Wetlands,1
step
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Arathi>>Fly to Arathi
.target Gryth Thurden
.zoneskip Ironforge,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 40-41 Alterac/Arathi
#next 41-42 Badlands
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯奎尔图|r
.accept 693 >>接任务: |cRXP_LOOT_特雷莱恩的符咒魔杖|r
.target Skuerto
step
.goto Arathi Highlands,62.50,33.72
>>单击Myzrael的|cRXP_PICK_Shard|r
.accept 642 >>接任务: |cRXP_LOOT_被困的公主|r
step
#completewith next
>>开采|cRXP_PICK_Lesser Bloodstone矿床|r。掠夺|cRXP _Loot_Lesser Bloogstone矿石|r
>>|cRXP_WARN_这些都是在洞穴里发现的|r
.collect 4278,4,627,1 
.skill mining,<75,1
step
.goto Arathi Highlands,78.59,39.99,50,0
.goto Arathi Highlands,82.02,39.59,40,0
.goto Arathi Highlands,83.12,35.52,40,0
.goto Arathi Highlands,87.11,31.40,25,0
.goto Arathi Highlands,84.30,30.95
>>杀死|cRXP_ENEMY_Dryb须Kobolds|r，|cRXD_ENEMY_ Dryb须挖掘者|r和|cRXP_ENEMY_DRyb须测量者|r。掠夺他们的|cRXP_Loot_Motes|r
>>|cRXP_WARN_这个任务是在洞穴里完成的。在完成任务的同时，扫清通往后方的道路|r
.complete 642,1
.mob Drywhisker Kobold
.mob Drywhisker Digger
.mob Drywhisker Surveyor
step
.goto Arathi Highlands,87.11,31.40,25,0
.goto Arathi Highlands,84.30,30.95
>>开采|cRXP_PICK_Lesser Bloodstone矿床|r。掠夺|cRXP _Loot_Lesser Bloogstone矿石|r
>>|cRXP_WARN_这些都是在洞穴里发现的|r
.collect 4278,4,627,1 
.skill mining,<75,1
step
.goto Arathi Highlands,84.30,30.95
>>单击洞穴后面的|cRXP_PICK_Iridescent Shard|r
.turnin 642 >>交任务: |cRXP_FRIENDLY_被困的公主|r
.accept 651 >>接任务: |cRXP_LOOT_禁锢之石|r
step
#completewith EastBinding
.goto Arathi Highlands,70.34,39.52,140 >>前往东绑定圈
step << Warrior
#completewith next
>>杀死|cRXP_ENEMY_Cresting Exiles|r。掠夺他们的|cRXD_Loot_ Cresting Charms|r
.collect 4481,8,1712,1 
.mob Cresting Exile
.isOnQuest 1712
step
#label EastBinding
.goto Arathi Highlands,66.710,29.725
>>打开|cRXP_PICK_东绑定之石|r。为|cRXP_Loot_Cresting密钥|r进行掠夺
.complete 651,2 
step << Warrior
.goto Arathi Highlands,67.46,28.79,40,0
.goto Arathi Highlands,65.47,28.77,40,0
.goto Arathi Highlands,65.87,31.24,40,0
.goto Arathi Highlands,67.47,30.65,40,0
.goto Arathi Highlands,66.82,29.77
>>杀死|cRXP_ENEMY_Cresting Exiles|r。掠夺他们的|cRXD_Loot_ Cresting Charms|r
.collect 4481,8,1712,1 
.mob Cresting Exile
.isOnQuest 1712
step
.goto Arathi Highlands,60.18,53.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奎艾|r
.accept 658 >>接任务: |cRXP_LOOT_新的瘟疫？|r
.target Quae
step
.goto Arathi Highlands,60.37,59.02,50,0
.goto Arathi Highlands,56.49,62.83,90,0
.goto Arathi Highlands,51.02,60.06,90,0
.goto Arathi Highlands,45.40,58.58,90,0
.goto Arathi Highlands,42.12,54.52,90,0
.goto Arathi Highlands,27.01,49.60,90,0
.goto Arathi Highlands,21.18,31.01,90,0
.goto Hillsbrad Foothills,74.57,50.07,90,0
.goto Hillsbrad Foothills,66.92,44.18,90,0
.goto Hillsbrad Foothills,57.57,36.38,70,0
.goto Hillsbrad Foothills,55.62,19.67,90,0
.goto Arathi Highlands,60.37,59.02
.line Hillsbrad Foothills,82.61,57.64,81.95,56.88,81.53,56.52,80.58,55.45,79.48,54.86,78.41,54.14,77.07,53.10,75.15,50.85,74.15,49.68,72.83,48.54,72.22,48.00,70.13,46.58,68.52,45.89,67.53,45.00,66.62,43.63,65.66,42.44,64.37,41.97,63.47,41.85,61.93,41.22,61.08,40.43,59.39,38.34,57.79,36.74,57.40,35.67,56.95,34.04,56.41,31.49,56.34,30.91,56.03,29.69,55.87,28.31,55.72,27.07,55.65,24.22,55.73,22.44,55.76,20.79,55.66,19.72,56.22,19.57,56.78,19.79,57.21,19.83,58.18,19.47,58.70,19.92
.line Arathi Highlands,60.67,60.98,59.44,62.75,58.92,63.04,58.19,62.96,57.59,62.67,57.21,62.68,56.61,63.00,56.13,62.76,55.22,62.27,54.42,61.98,53.02,61.59,52.01,61.41,51.32,60.73,50.53,59.53,49.55,59.23,48.34,59.29,47.83,59.60,47.09,59.77,46.50,59.70,46.09,59.44,45.59,59.00,45.25,59.01,45.07,58.55,43.20,55.21,42.64,54.88,39.56,54.80,39.12,54.51,38.37,53.50,37.35,53.03,36.21,52.62,34.84,52.29,33.35,52.08,30.95,51.83,29.06,50.64,27.54,49.82,27.07,49.73,26.44,49.06,26.19,48.60,25.71,47.48,25.36,46.33,25.04,45.68,24.22,44.30,23.85,43.73,23.57,42.96,23.41,42.18,22.87,39.65,22.68,37.75,22.47,33.66,21.77,32.02,20.83,30.55,20.35,29.78,19.89,29.22
>>杀死|cRXP_ENEMY_Forsaken快递员|r。为她掠夺她|cRXX_Loot_密封文件夹|r
>>|cRXP_WARN_The |cRXP_ENEMY_Forsaken Courier|r patrols the road between Tarren Mill and Go'Shek Farm|r
>>|cRXP_WARN_铸造|r|T132172:0|t[Eagle Eye]|cRXP_WARN_to尝试找到|r|cRXP-ENEMY_Forsaken Courier|r << Hunter
>>|cRXP_WARN_如果你在希尔斯堡看不到他们，那就去阿拉蒂找他们。她的巡逻路线在Hillsbrad和Arathi的地图上标出|r
.complete 658,1 
.unitscan Forsaken Courier
step
.isQuestComplete 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奎艾|r
.turnin 658 >>交任务: |cRXP_FRIENDLY_新的瘟疫？|r
.target Quae
step
.isQuestTurnedIn 658
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奎艾|r, |cRXP_FRIENDLY_基恩洛|r
>>|cRXP_WARN_Someone may be doing the |cRXP_FRIENDLY_Kinelory|r escort if she isn't there. Wait until she returns|r
.accept 657 >>接任务: |cRXP_LOOT_新的瘟疫？|r
.goto Arathi Highlands,60.185,53.848
.turnin 657 >>交任务: |cRXP_FRIENDLY_新的瘟疫？|r
.accept 660,1 >>接任务: |cRXP_LOOT_新的瘟疫？|r
.goto Arathi Highlands,60.238,53.920
.target Quae
.target Kinelory
step
.isQuestTurnedIn 658
>>护送|cRXP_FRIENDLY_Kinelory|r穿过Go'Shek农场
.complete 660,1
.target Kinelory
step
#label NewPlague
.isQuestTurnedIn 658
.goto Arathi Highlands,60.185,53.848
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奎艾|r
.turnin 660 >>交任务: |cRXP_FRIENDLY_新的瘟疫？|r
.accept 661 >>接任务: |cRXP_LOOT_新的瘟疫？|r
.target Quae
step
#completewith next
.goto Arathi Highlands,54.21,77.80,30 >>进入大胆的大厅洞穴
step
.goto Arathi Highlands,54.75,81.87
>>杀死|cRXP_ENEMY_Kor'gresh Coldrage|r。掠夺他获得|cRXX_Loot_Treane的魔杖|r
.complete 693,1 
.mob Kor'gresh Coldrage
step
#completewith next
.goto Arathi Highlands,54.428,80.800
+|cRXP_WARN_在|cRXP_ENEMY_Kor'gresh Coldrage|r旁边的横幅上执行注销跳跃，以传送到更靠近避难点的地方。如果你不能做到这一点，就正常用完|r
.link https://youtu.be/SWBtPqm5M0Q?t=61 >>|cRXP_WARN_点击此处查看视频参考|r
.subzoneskip 316,1
step
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯奎尔图|r
.turnin 693 >>交任务: |cRXP_FRIENDLY_特雷莱恩的符咒魔杖|r
.target Skuerto
step
.group
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯奎尔图|r
.accept 694 >>接任务: |cRXP_LOOT_特雷莱恩的防御|r
.target Skuerto
step
#qremove 658 
.goto Arathi Highlands,45.73,46.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟迪克·普罗斯|r
.fly Southshore>>飞往南岸
.target Cedrik Prose
.zoneskip Arathi Highlands,1
step
#completewith ExitSS
>>|cRXP_WARN_|cRXP_ENEMY_Shadowy Assassin|r对南岸的攻击是随机事件|r
>>如果你在南岸看到一个|cRXP_ENEMY_Shadowy Assassin|r，就杀了他们。为|T134939:0|t[|cRXP_Loot_Assassin's Contract|r]掠夺它们
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_Assassin's Contract|r]开始任务|r
>>|cRXP_WARN_如果没有看到事件，请跳过此步骤|r
.collect 3668,1,522
.use 3668
.accept 522 >>接任务: |cRXP_WARN_刺客的契约|r
.unitscan Shadowy Assassin
step
.goto Hillsbrad Foothills,51.170,58.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板安德森|r
.home >>把你的炉石放在南岸
.target Innkeeper Anderson
step
#som
.goto Hillsbrad Foothills,51.88,58.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Chef Jessen
>>如果你掉了之前的甲鱼肉，就跳过这个
.target Chef Jessen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师杰森|r
.accept 555 >>接任务: |cRXP_LOOT_海龟汤|r
.turnin 555 >>交任务: |cRXP_FRIENDLY_海龟汤|r
step
#era/som
.goto Hillsbrad Foothills,51.468,58.354
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的莱雷恩|r, 他在楼上
.turnin 1052 >>交任务: |cRXP_FRIENDLY_血色之路|r
.isOnQuest 1052
step
.dungeon SM
.goto Hillsbrad Foothills,51.468,58.354
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的莱雷恩|r, 他在楼上
.accept 1053 >>接任务: |cRXP_WARN_以圣光之名|r
.isQuestTurnedIn 1052
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尼·马雷布镇长|r
.turnin 522 >>交任务: |cRXP_FRIENDLY_刺客的契约|r
.isOnQuest 522
.target Magistrate Henry Maleb
step
.isOnQuest 661
.goto Hillsbrad Foothills,50.34,59.04
.target Phin Odelic
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费恩·奥德利克|r
.turnin 661 >>交任务: |cRXP_FRIENDLY_新的瘟疫？|r
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尼·马雷布镇长|r
.accept 523 >>接任务: |cRXP_WARN_男爵之死|r
.isQuestTurnedIn 522
.target Magistrate Henry Maleb
step
.goto Hillsbrad Foothills,48.145,59.121
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尼·马雷布镇长|r
.turnin 525 >>交任务: |cRXP_FRIENDLY_更大的谜团|r
.accept 537 >>接任务: |cRXP_LOOT_黑暗议会|r
.accept 512 >>接任务: |cRXP_LOOT_贵族之死|r
.target Magistrate Henry Maleb
step
.group
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官雷德帕斯|r
.accept 504 >>接任务: |cRXP_LOOT_破碎岭好战者|r
.target Marshal Redpath
step
#label ExitSS
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者迪布斯|r
.turnin 538 >>交任务: |cRXP_FRIENDLY_南海镇|r
.target Loremaster Dibbs
.isOnQuest 538
step
.group
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者迪布斯|r
.accept 540 >>接任务: |cRXP_LOOT_保全书籍|r
.target Loremaster Dibbs
.isQuestTurnedIn 538
step
.goto Alterac Mountains,18.83,78.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师安斯雷姆·鲁因|r
.turnin 602 >>交任务: |cRXP_FRIENDLY_魔法分析|r
.accept 603 >>接任务: |cRXP_LOOT_安斯雷姆的钥匙|r
.target Archmage Ansirem Runeweaver
step
.dungeon SM
#completewith next
.goto Alterac Mountains,46.26,60.57,0
.goto Alterac Mountains,49.69,55.07,0
.goto Alterac Mountains,54.53,53.42,0
.goto Alterac Mountains,50.00,55.96,0
.zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
.zoneskip Tirisfal Glades
.mob Crushridge Ogre
.mob Crushridge Brute
step
.dungeon SM
.goto Silverpine Forest,69.95,7.05,150,0
.goto Tirisfal Glades,56.15,64.62,100,0
.goto 1415,47.500,19.652,25,0
.goto 1415,47.792,19.611
.subzone 796,2 >>进入猩红寺。从Library开始，这样您就可以在最后掠夺[|cRXP_FRIENDLY_the Scarlet Key|r]
step
.dungeon SM
#completewith Bosses
>>掠夺|cRXP_Loot_泰坦神话|r
>>|cRXP_WARN_这可以在地面上或整个图书馆侧翼的书架上随机产生|r
.complete 1050,1 
.isOnQuest 1050
step
.dungeon SM
#completewith Mythology
>>打开|cRXP_PICK_Doan的Strongbox |r。为[|cRXP_FRIENDLY_The Scarlet Key|r]抢劫它
.collect 7146,1 
step
.dungeon SM
#label Bosses
>>杀死|cRXP_ENEMY_Houndmaster Loksey|r，|cRXD_ENEMY_Herod |r，| cRXP__ENEMY_High Inquisitor Whitemane|r和|cRXP_ENEMY_Scarlet Commander Mograine|r
>>|cRXP_ENEMY_Houndmaster Loksey |r|cRXP_WARN_i位于图书馆|r
>>|cRXP_ENEMY_Herod|r |cRXP_WARN_is located in the Armory|r
>>|cRXP_ENEMY_高级检察官Whitemane|r|cRXP_WARN_and|cRXP-ENEMY_Scarlet指挥官Mograine|r位于大教堂|r
.complete 1053,4 
.complete 1053,3 
.complete 1053,1 
.complete 1053,2 
.isOnQuest 1053
step
.dungeon SM
#label Mythology
>>掠夺|cRXP_Loot_泰坦神话|r
>>|cRXP_WARN_这可以在地面上或整个图书馆侧翼的书架上随机产生|r
.complete 1050,1 
.isOnQuest 1050
step
.dungeon SM
#completewith next
.hs >>Hearth到Southshore
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
.dungeon SM
.goto Hillsbrad Foothills,51.468,58.354
.target Raleigh the Devout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的莱雷恩|r, 他在楼上
.turnin 1053 >>交任务: |cRXP_FRIENDLY_以圣光之名|r
.isQuestTurnedIn 1052
step
.group
.goto Alterac Mountains,39.83,62.18,80,0
.goto Alterac Mountains,37.55,61.44,35 >>前往奥克拉克废墟。如果您需要，此位置也将作为您的出口路线
step
#completewith Ruins
.group 2
>>杀死|cRXP_ENEMY_Crushridge Warmongers|r
>>|cRXP_ENEMY_Crushridge Warmongers|r|cRXP_WARN_call以25%生命值寻求帮助|r
.complete 504,1 
.mob Crushridge Warmonger
.isOnQuest 504
step
.group 2
.goto Alterac Mountains,40.36,47.05,50,0
.goto Alterac Mountains,37.72,52.66,50,0
.goto Alterac Mountains,40.36,47.05
.line Alterac Mountains,35.58,54.44,35.26,54.33,35.20,54.18,35.77,53.74,36.26,55.11,36.66,54.81,36.29,53.75,37.30,52.85,37.59,52.71,38.24,52.79,38.87,51.55,39.28,50.93,39.52,49.71,40.14,47.23,40.91,46.30,40.24,46.09,40.13,47.69,39.19,51.17,38.51,52.01,38.11,52.68,37.46,52.78,36.28,53.71,35.88,52.69,35.52,53.01,35.77,53.74,35.20,54.18,35.26,54.33,35.58,54.44
>>杀死|cRXP_ENEMY_Grel'borg the Miser|r。为|cRXX_Loot_Perenolde Tiara而掠夺他|r
>>|cRXP_ENEMY_悲惨的格里堡|r|cRXP_WARN_探索奥克拉克的废墟。他是39级精英，只要你不制造额外的暴徒，就很容易被杀死。他的巡逻路线在你的地图上标出了|r
.complete 543,1 
.isOnQuest 543
.unitscan Grel'borg the Miser
step
.group 2
#label Ruins
.goto Alterac Mountains,38.421,46.368
>>进入市政厅
>>打开|cRXP_PICK_Weathered Bookcase |r。为|cRXP_Loot_ Weathered Leather Book |r抢劫它
>>|cRXP_WARN_你可以杀死|cRXP_ENEMY_Muckrake|r，或者直接攻击他，掠夺然后逃跑|r
.complete 540,2 
.isOnQuest 540
step
.group 2
.goto Alterac Mountains,38.40,57.80,60,0
.goto Alterac Mountains,37.25,50.39,60,0
.goto Alterac Mountains,38.40,57.80,60,0
.goto Alterac Mountains,36.855,53.237
>>杀死|cRXP_ENEMY_Crushridge Warmongers|r
>>|cRXP_ENEMY_Crushridge Warmongers|r|cRXP_WARN_call以25%生命值寻求帮助|r
.complete 504,1 
.mob Crushridge Warmonger
.isOnQuest 504
step
.group
#completewith next
.goto Alterac Mountains,39.66,18.24,100 >>前往Dandred‘s Fold。如果从Alterac废墟坠落，请小心坠落造成的损坏
.isOnQuest 504,543,540
step
.solo
#completewith next
.goto Alterac Mountains,39.66,18.24,100 >>前往Dandred’s Fold
step
#completewith ShadowMage
.goto Alterac Mountains,62.39,43.64,0
>>杀死|cRXP_ENEMY_Syndicate|r。掠夺他们的|cRXD_Loot_Signet戒指|r
>>|cRXP_ENEMY_Syndicate Assassins|r|cRXP_WARN_and|cRXX_ENEMY_Syndicate Spies |r将在|r|T132320:0|t[潜行]
.complete 512,1 
.mob Syndicate Assassin
.mob Syndicate Enforcer
.mob Syndicate Saboteur
.mob Syndicate Sentry
.mob Syndicate Spy
.mob Syndicate Wizard
step
.goto Alterac Mountains,39.22,14.31
>>杀死|cRXP_ENEMY_Nagaz|r。掠夺他的|cRXX_Loot_Head|r
.complete 537,2 
.mob Nagaz
step
.goto Alterac Mountains,39.177,14.661
>>打开|cRXP_PICK_Wearn Wooden Chest|r。为|T134938:0|t[|cRXP_LOOTEnforced Parchment|r]抢劫它
>>|cRXP_WARN_使用|T134938:0|t[|cRXP_LOOT_Enforced Parchment|r]开始任务|r
.collect 3706,1,551
.use 3706
.accept 551 >>接任务: |cRXP_LOOT_附有魔法的羊皮纸|r
step
#completewith next
>>杀死|cRXP_ENEMY_Argus阴影法师|r
.complete 537,1 
.mob Argus Shadow Mage
step
.goto Alterac Mountains,47.8,17.1,70,0
.goto Alterac Mountains,53.6,20.6,70,0
.goto Alterac Mountains,56.2,26.8,70,0
.goto Alterac Mountains,58.1,29.9,70,0
.goto Alterac Mountains,59.7,43.9
>>杀死|cRXP_ENEMY_Baron Vardus|r。掠夺他的|cRXX_Loot_Head |r
>>|cRXP_ENEMY_Baron Vardus|r|cRXP_WARN_可以在外面的营地，以及Strahnbrad的地下客栈|r
.complete 523,1 
.isOnQuest 523
.unitscan Baron Vardus
step
#label ShadowMage
.goto Alterac Mountains,62.3,40.6,50,0
.goto Alterac Mountains,63.6,43.7,50,0
.goto Alterac Mountains,57.4,46.2,50,0
.goto Alterac Mountains,62.3,40.6
.goto Alterac Mountains,47.8,17.4,0
.goto Alterac Mountains,53.3,20.7,0
.goto Alterac Mountains,56.1,27.3,0
.goto Alterac Mountains,58.7,30.5,0
>>杀死|cRXP_ENEMY_Argus阴影法师|r
>>|cRXP_WARN_你可以在Strahnbrad和高地找到|cRXP_ENEMY_Argus影子法师|r|r
.complete 537,1 
.mob Argus Shadow Mage
step
.goto Alterac Mountains,62.3,40.6,50,0
.goto Alterac Mountains,63.6,43.7,50,0
.goto Alterac Mountains,57.4,46.2,50,0
.goto Alterac Mountains,62.3,40.6
.goto Alterac Mountains,47.8,17.4,0
.goto Alterac Mountains,53.3,20.7,0
.goto Alterac Mountains,56.1,27.3,0
.goto Alterac Mountains,58.7,30.5,0
>>杀死|cRXP_ENEMY_Syndicate|r。掠夺他们的|cRXD_Loot_Signet戒指|r
>>|cRXP_ENEMY_Syndicate Assassins|r|cRXP_WARN_and|cRXX_ENEMY_Syndicate Spies |r将在|r|T132320:0|t[潜行]
.complete 512,1 
.mob Syndicate Assassin
.mob Syndicate Enforcer
.mob Syndicate Saboteur
.mob Syndicate Sentry
.mob Syndicate Spy
.mob Syndicate Wizard
step
.group
.goto Alterac Mountains,47.48,58.94,0
.goto Alterac Mountains,51.73,40.23,70,0
.goto Alterac Mountains,45.19,33.91,70,0
.goto Alterac Mountains,51.46,53.84,70,0
.goto Alterac Mountains,48.54,40.72
>>杀死|cRXP_ENEMY_Crushridge食人魔|r和|cRXD_ENEMY_Crashridge Brutes|r。掠夺他们的|cRXP_Loot_Tomes|r
.complete 540,1
.isOnQuest 540
.mob Crushridge Ogre
.mob Crushridge Brute
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比比尔法兹|r
.goto Western Plaguelands,42.924,85.061
.fly Southshore>>飞往南岸
.target Bibilfaz Featherwhistle
step
.isQuestComplete 504
.goto Hillsbrad Foothills,49.473,58.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官雷德帕斯|r
.turnin 504 >>交任务: |cRXP_FRIENDLY_破碎岭好战者|r
.target Marshal Redpath
step
.goto Hillsbrad Foothills,48.145,59.121
.target Magistrate Henry Maleb
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尼·马雷布镇长|r
.turnin 512 >>交任务: |cRXP_FRIENDLY_贵族之死|r
.turnin 537 >>交任务: |cRXP_FRIENDLY_黑暗议会|r
step
.abandon 504 >>放弃Crushridge Warmongers
step
.goto Hillsbrad Foothills,48.145,59.121
.target Magistrate Henry Maleb
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫尼·马雷布镇长|r
.turnin 523 >>交任务: |cRXP_FRIENDLY_男爵之死|r
.isOnQuest 523
step
.isQuestTurnedIn 337
.isQuestComplete 540
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者迪布斯|r
.turnin 540 >>交任务: |cRXP_FRIENDLY_保全书籍|r
.turnin 551 >>交任务: |cRXP_FRIENDLY_附有魔法的羊皮纸|r
.accept 542 >>接任务: |cRXP_LOOT_向米尔顿回复|r
.accept 554 >>接任务: |cRXP_LOOT_解码高手|r
.target Loremaster Dibbs
step
.isQuestTurnedIn 337
.isQuestTurnedIn 540
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者迪布斯|r
.turnin 551 >>交任务: |cRXP_FRIENDLY_附有魔法的羊皮纸|r
.accept 542 >>接任务: |cRXP_LOOT_向米尔顿回复|r
.accept 554 >>接任务: |cRXP_LOOT_解码高手|r
.target Loremaster Dibbs
step
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者迪布斯|r
.turnin 551 >>交任务: |cRXP_FRIENDLY_附有魔法的羊皮纸|r
.accept 554 >>接任务: |cRXP_LOOT_解码高手|r
.target Loremaster Dibbs
step
.goto Hillsbrad Foothills,50.570,57.093
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博学者迪布斯|r
.turnin 551 >>交任务: |cRXP_FRIENDLY_附有魔法的羊皮纸|r
.accept 554 >>接任务: |cRXP_LOOT_解码高手|r
.target Loremaster Dibbs
step
.abandon 540 >>放弃保存知识
step
#completewith NewPlague
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi>>飞到阿拉蒂高地
.target Darla Harris
step << Warrior
#completewith next
>>杀死|cRXP_ENEMY_Thundering Exiles|r。掠夺他们的|cRXX_Loot_TThundering Charms|r
.collect 4480,8,1712,1 
.mob Thundering Exile
.isOnQuest 1712
step
.goto Arathi Highlands,52.042,50.734
>>打开|cRXP_PICK_外缚之石|r。为|cRXP_Loot_Thundering Key|r进行掠夺
.complete 651,3 
step << Warrior
.goto Arathi Highlands,52.74,50.61,40,0
.goto Arathi Highlands,50.97,52.16,40,0
.goto Arathi Highlands,51.52,48.93,40,0
.goto Arathi Highlands,52.12,51.11
>>杀死|cRXP_ENEMY_Thundering Exiles|r。掠夺他们的|cRXX_Loot_TThundering Charms|r
.collect 4480,8,1712,1 
.mob Thundering Exile
.isOnQuest 1712
step
#completewith WestBinding
.goto Arathi Highlands,25.56,30.32,100 >>前往西绑定圈
step << Warrior
#completewith next
>>杀死|cRXP_ENEMY_Burning Exiles|r。掠夺他们的|cRXX_Loot_Burning Charm|r
.collect 4479,8,1712,1 
.mob Burning Exile
.isOnQuest 1712
step
#label WestBinding
.goto Arathi Highlands,25.468,30.110
>>打开|cRXP_PICK_西装革履之石|r。为|cRXP _Loot_Burning Key|r掠夺
.complete 651,1 
step << Warrior
.goto Arathi Highlands,67.46,28.79,40,0
.goto Arathi Highlands,65.47,28.77,40,0
.goto Arathi Highlands,65.87,31.24,40,0
.goto Arathi Highlands,67.47,30.65,40,0
.goto Arathi Highlands,66.82,29.77
>>杀死|cRXP_ENEMY_Burning Exiles|r。掠夺他们的|cRXX_Loot_Burning Charm|r
.collect 4479,8,1712,1 
.mob Burning Exile
.isOnQuest 1712
step << Warrior
#completewith next
.goto Alterac Mountains,79.318,66.811 >>前往Alterac山脉的冷风点
step << Warrior
.isOnQuest 1712
.goto Alterac Mountains,79.318,66.811
>>单击|cRXP_PICK_Bath'rah's Cauldron|r
.complete 1712,3 
step << Warrior
#completewith TheSummoning
+在接受召唤之前，请观看以下关于如何独奏的视频|cRXP_ENEMY_Cyclonian|r
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >>|cRXP_WARN_点击此处查看视频参考|r
.isOnQuest 1712
step << Warrior
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1712 >>交任务: |cRXP_FRIENDLY_塞克隆尼亚|r
.target Bath'rah the Windwatcher
.isOnQuest 1712
step << Warrior
.isQuestTurnedIn 1712
#label TheSummoning
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.accept 1713 >>接任务: |cRXP_LOOT_召唤|r
.timer 40,The Summoning RP
>>|cRXP_WARN_Accepting this quest will summon |cRXP_ENEMY_Cyclonian|r. He hits fairly hard, but can be solo'd. Be sure to check the video for pointers on how to do so|r
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >>|cRXP_WARN_点击此处查看视频参考|r
.target Bath'rah the Windwatcher
step << Warrior
.goto Alterac Mountains,80.65,62.1
>>跟随|cRXP_FRIENDLY_Bath'rah the Windwatch|r到他将召唤|cRXP_ENEMY_Cyclonian|r的地方
>>杀死|cRXP_ENEMY_Cyclonian|r。掠夺他的|cRXD_Loot_旋风之心|r
>>|cRXP_ENEMY_Cyclonian|r的打击相当大，但可以是单人的。一定要查看视频，了解如何做到这一点|r
.complete 1713,1 
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >>|cRXP_WARN_点击此处查看视频参考|r
.isOnQuest 1713
step << Warrior
.isQuestComplete 1713
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1713 >>交任务: |cRXP_FRIENDLY_召唤|r
.target Bath'rah the Windwatcher
step << Warrior
.isQuestTurnedIn 1713
.goto Alterac Mountains,80.497,66.919
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
>>|cRXP_WARN_|T132403:0|t[|cFF0070FF旋风斧|r]是它们中最好的奖励。然而，如果你真的想选择不同的武器，那只是一个小小的损失|r
.turnin 1792 >>交任务: |cRXP_FRIENDLY_旋风武器|r
.target Bath'rah the Windwatcher
step << Warrior 
.isQuestTurnedIn 1713
#completewith HinterArrive
.goto Hillsbrad Foothills,71.43,21.04,50,0
.goto Hillsbrad Foothills,84.23,31.99,50,0
.goto The Hinterlands,6.23,61.87
.zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
step
#completewith next
.isQuestAvailable 1713 << Warrior 
.goto The Hinterlands,6.23,61.87
.zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
step
#label HinterArrive
.goto The Hinterlands,11.806,46.755
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗斯塔德·蛮锤|r
.turnin 1449 >>交任务: |cRXP_FRIENDLY_去辛特兰的旅程|r
.accept 1450 >>接任务: |cRXP_LOOT_狮鹫管理员|r
.target Falstad Wildhammer
step
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈斯鲁姆|r
.fp Hinterlands >>获取腹地航线
.target Guthrum Thunderfist
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狮鹫管理员沙拉克·鹰斧|r
.turnin 1450 >>交任务: |cRXP_FRIENDLY_狮鹫管理员|r
.accept 1451 >>接任务: |cRXP_LOOT_拉普索迪·铁铲|r
.target Gryphon Master Talonaxe
step
.goto The Hinterlands,26.943,48.588
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉普索迪·铁铲|r
.turnin 1451 >>交任务: |cRXP_FRIENDLY_拉普索迪·铁铲|r
.accept 1452 >>接任务: |cRXP_WARN_拉普索迪的卡利姆多鸡尾酒|r
.target Rhapsody Shindigger
step
.hs >>Hearth到Southshore
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
.zoneskip The Hinterlands,1
step
#completewith Faldir
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Arathi >>飞到阿拉蒂高地
.target Darla Harris
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼艾丝队长|r
.accept 682 >>接任务: |cRXP_LOOT_激流堡徽章|r
.target Captain Nials
step
.group
.goto Arathi Highlands,46.042,47.764
>>单击|cRXP_PICK_Wanted Board |r
.accept 684 >>接任务: |cRXP_LOOT_通缉：玛雷兹·考尔|r
.accept 685 >>接任务: |cRXP_LOOT_通缉：奥图和法库雷斯特|r
step
.solo
.goto Arathi Highlands,36.229,57.375
>>点击|cRXP_PICK_内缚之石|r
.turnin 651 >>交任务: |cRXP_FRIENDLY_禁锢之石|r
step
.group
.goto Arathi Highlands,36.229,57.375
>>点击|cRXP_PICK_内缚之石|r
.turnin 651 >>交任务: |cRXP_FRIENDLY_禁锢之石|r
.accept 652 >>接任务: |cRXP_LOOT_打开钥匙之石|r
step
#completewith MarezCowl
.group 2
.goto Arathi Highlands,26.04,62.80,0
>>杀死|cRXP_ENEMY_Syndicate盗贼|r、|cRXD_ENEMY_辛迪加招魂师|r和|cRXP_ENEMY_Syndicate Prowlers |r。掠夺他们的|cRXP_Loot_BBadges|r
.complete 682,1 
.mob Syndicate Thief
.mob Syndicate Conjuror
.mob Syndicate Prowler
.isOnQuest 682
step
#completewith next
.group 2
.goto Arathi Highlands,29.599,63.682,0 
>>杀死|cRXP_ENEMY_Marez Cowl|r。为她掠夺她|cRXX_Loot_Head |r
>>|cRXP_ENEMY_Marez Cowl|r|cRXP_WARN_has 2个不同的产卵位置。一个在高地上，另一个在房子后面。它们被标记在你的地图上|r
>>|cRXP_WARN_Cast|r|T132172:0|t[Eagle Eye]|cRXP_WARN_to尝试找到她所在的位置|r << Hunter
.complete 684,1 
.unitscan Marez Cowl
.isOnQuest 684
step
.group 4
.goto Arathi Highlands,26.026,65.656
>>杀死|cRXP_ENEMY_Otto |r和|cRXD_ENEMY_Lord Falcorrest|r。掠夺他们的|cRXP_Loot_Heads|r
.complete 685,1 
.complete 685,2 
.mob Otto
.mob Lord Falconcrest
.isOnQuest 685
step
#label MarezCowl
.group 2
.goto Arathi Highlands,29.599,63.682,0 
.goto Arathi Highlands,29.477,64.149,20,0 
.goto Arathi Highlands,29.624,62.975 
>>杀死|cRXP_ENEMY_Marez Cowl|r。为她掠夺她|cRXX_Loot_Head |r
>>|cRXP_ENEMY_Marez Cowl|r|cRXP_WARN_has 2个不同的产卵位置。一个在高地上，另一个在房子后面。它们被标记在你的地图上|r
>>|cRXP_WARN_Cast|r|T132172:0|t[Eagle Eye]|cRXP_WARN_to尝试找到她所在的位置|r << Hunter
.complete 684,1 
.unitscan Marez Cowl
.isOnQuest 684
step
.group 2
.goto Arathi Highlands,26.04,62.80,40,0
.goto Arathi Highlands,29.477,64.149,40,0
.goto Arathi Highlands,26.04,62.80
>>杀死|cRXP_ENEMY_Syndicate盗贼|r、|cRXD_ENEMY_辛迪加招魂师|r和|cRXP_ENEMY_Syndicate Prowlers |r。掠夺他们的|cRXP_Loot_BBadges|r
.complete 682,1 
.mob Syndicate Thief
.mob Syndicate Conjuror
.mob Syndicate Prowler
.isOnQuest 682
step
.group 2
.goto Arathi Highlands,24.14,61.85,30,0
.goto Arathi Highlands,24.25,64.97,30,0
.goto Arathi Highlands,21.22,66.52,40,0
.goto Arathi Highlands,20.21,67.17
>>杀死|cRXP_ENEMY_Boulderfist萨满|r。掠夺他们获得|cRXX_Loot_AAzure玛瑙|r
.complete 694,1 
.mob Boulderfist Shaman
.isOnQuest 694
step
.group 3
.line Arathi Highlands,51.47,62.86,52.40,61.71,52.88,60.55,53.55,59.12,53.50,57.45,56.00,53.72,57.19,53.47,57.83,52.44,58.15,50.90,58.95,49.98,59.25,48.79,63.29,47.45,64.13,46.33,64.67,45.12,65.36,44.70,66.45,41.91,66.46,38.76,67.12,37.75,66.76,36.28,67.13,34.82,66.72,32.40,65.81,31.48,65.32,30.15,65.20,29.17,65.23,28.38,64.45,27.54,64.92,28.84,65.56,29.31,65.94,29.87,65.72,30.38,65.85,33.96,65.85,39.15,65.39,39.96,64.65,40.04,63.83,40.93,64.40,42.42,63.55,43.66,62.72,42.95,61.41,42.66,60.33,43.59,58.51,44.13,57.48,45.04,56.39,46.10,55.30,46.04,54.34,46.32,53.92,47.60,53.39,48.30,53.22,49.35,52.48,49.62,52.20,50.10,51.37,49.86,50.94,50.55,50.15,54.42,49.47,55.75,49.21,56.40,48.59,57.35,47.53,56.82,45.94,56.89,44.73,57.27,44.18,57.62,43.39,57.58,41.99,54.35,41.37,52.86,41.00,51.93,40.26,50.75,39.01,50.91,37.71,49.91,37.26,49.60,36.31,49.65,34.70,49.04,32.84,48.14,31.85,47.98,30.96,45.92,30.53,45.11,29.31,45.06,28.95,43.63,28.32,42.50,27.88,41.11,27.82,39.36,27.14,38.30,27.24,35.22,27.02,33.80,26.63,32.82,26.71,31.35,25.98,30.58,26.50,30.73,26.40,32.32,24.72,34.39,24.09,34.93,23.68,35.34,23.51,35.57,22.92,36.46,22.69,38.23,21.29,39.69,21.85,41.02,21.32,42.13,21.28,43.16,21.29,44.12,22.50,44.63,22.80,45.81,22.95,46.40,24.03,46.68,25.02,47.22,25.65,47.63,26.78,48.39,28.37,49.05,28.44,49.09,29.21,50.19,29.66,51.84,30.25,52.82,30.47,53.30,30.53,54.51,31.28,55.28,39.30,55.96,40.00,57.11,40.35,56.72,40.64,56.41,41.45,57.19,41.84,57.99,42.80,58.55,43.39,58.58,44.48,58.75,45.09,58.86,46.58,59.63,47.74,60.30,48.88,60.56,50.05,62.41,50.33,62.96,51.41,62.92
>>杀死|cRXP_ENEMY_Fozruk |r。掠夺他获得|cRXX_Loot_秩序棒|r
>>|cRXP_WARN_在杀死|r|cRXP_ENEMY_Fozruk之前，重点杀死并打断|cRXD_ENEMY_Sleeby|r、|cRXP_ENEMY_Znort|r和|cRXP_ENEMY_Feebos|r的演员阵容|r
>>|cRXP_ENEMY_Fozruk |r|cRXP_WARN_可抄送|r
>>|cRXP_WARN_他们的巡逻路线在你的地图上标出了|r
>>|cRXP_WARN_铸造|r|T132172:0|t[鹰眼]|cRXP_WARN_to尝试查找|r|cRXP-ENEMY_Fozruk|r << Hunter
.complete 652,1
.link https://www.twitch.tv/videos/778346703 >>|cRXP_WARN_点击此处查看视频参考|r << Hunter
.link https://www.twitch.tv/videos/669107037?t=05h51m54s >>|cRXP_WARN_点击此处查看视频参考|r << Warlock
.unitscan Fozruk
.mob Sleeby
.mob Znort
.mob Feeboz
step
.group
.goto Arathi Highlands,36.07,58.09
>>单击|cRXP_PICK_Keystone|r
>>|cRXP_WARN_如果你仍然在一个小组中，请在与你的团队一起进行此任务|cRXP_ENEMY_Thenan|r，将产生一个42级精英。如果你独自一人，你可以杀死他，也可以逃跑并重置他|r
.turnin 652 >>交任务: |cRXP_FRIENDLY_打开钥匙之石|r
.isQuestComplete 652
step
.group
.goto Arathi Highlands,36.07,58.09
>>单击|cRXP_PICK_Keystone|r
.accept 653 >>接任务: |cRXP_LOOT_密斯莱尔的盟友|r
.isQuestTurnedIn 652
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼艾丝队长|r
.turnin 682 >>交任务: |cRXP_FRIENDLY_激流堡徽章|r
.turnin 684 >>交任务: |cRXP_FRIENDLY_通缉：玛雷兹·考尔|r
.turnin 685 >>交任务: |cRXP_FRIENDLY_通缉：奥图和法库雷斯特|r
.target Captain Nials
.isQuestComplete 682
.isQuestComplete 684
.isQuestComplete 685
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼艾丝队长|r
.turnin 684 >>交任务: |cRXP_FRIENDLY_通缉：玛雷兹·考尔|r
.target Captain Nials
.isQuestComplete 684
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼艾丝队长|r
.turnin 685 >>交任务: |cRXP_FRIENDLY_通缉：奥图和法库雷斯特|r
.target Captain Nials
.isQuestComplete 685
step
.group
.goto Arathi Highlands,45.832,47.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼艾丝队长|r
.turnin 682 >>交任务: |cRXP_FRIENDLY_激流堡徽章|r
.target Captain Nials
.isQuestComplete 682
step
.group
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒克里汀|r
.turnin 694 >>交任务: |cRXP_FRIENDLY_特雷莱恩的防御|r
.target Apprentice Kryten
.isQuestComplete 694
step
.group
.goto Arathi Highlands,46.197,47.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒克里汀|r
.accept 695 >>接任务: |cRXP_LOOT_学徒的魔法|r
.target Apprentice Kryten
.isQuestTurnedIn 694
step
.group
.goto Arathi Highlands,46.652,47.010
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯奎尔图|r
.turnin 695 >>交任务: |cRXP_FRIENDLY_学徒的魔法|r
>>|cRXP_WARN_跳过后续步骤。在硬核太危险了|r
.target Skuerto
.isQuestTurnedIn 694
step
.group
.destroy 4529 >>摧毁: |cRXP_ENEMY_附魔玛瑙石|r
step
#label Faldir
#completewith next
.goto Arathi Highlands,30.74,66.94,60,0
.goto Arathi Highlands,22.72,71.98,50,0
.goto Arathi Highlands,21.50,75.91,40,0
.goto Arathi Highlands,21.98,79.96,30 >>Travel to Faldir's Cove
step
.goto Arathi Highlands,31.78,82.68
.target Lolo the Lookout
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵鲁鲁|r
.accept 663 >>接任务: |cRXP_LOOT_法迪尔海湾|r
step
.goto Arathi Highlands,32.283,81.364
.target Shakes O'Breen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 663 >>交任务: |cRXP_FRIENDLY_法迪尔海湾|r
step
.goto Arathi Highlands,32.79,81.48
.target First Mate Nilzlix
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副尼兹利克斯|r
.accept 662 >>接任务: |cRXP_LOOT_深海打捞|r
step
.goto Arathi Highlands,34.002,80.792
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯迪加特船长|r
.accept 664 >>接任务: |cRXP_LOOT_船长的复仇|r
.target Captain Steelgut
step
.goto Arathi Highlands,33.869,80.549
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹索普教授|r
>>|cRXP_WARN_这将开始护送。如果|cRXP_FRIENDLY_Professor Phizzzlethorpe|r不在，则可能有人已经在做了。请等待他返回|r
.accept 665 >>接任务: |cRXP_LOOT_水下宝藏|r
.target Professor Phizzlethorpe
step
.goto Arathi Highlands,35.74,79.59,30,0
.goto Arathi Highlands,33.856,80.444
>>护送|cRXP_FRIENDLY_Professor Phizzzlethorpe|r进入小洞穴
>>杀死攻击一次的|cRXP_ENEMY_Vengeful Surgeof|r
>>跟随|cRXP_FRIENDLY_Professor Phizzzlethorpe|r返回营地
.complete 665,1
.target Professor Phizzlethorpe
.mob Vengeful Surge
step
.goto Arathi Highlands,33.856,80.444
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉克里格博士|r
.turnin 665 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.accept 666 >>接任务: |cRXP_LOOT_水下宝藏|r
.target Doctor Draxlegauge
step << !Warlock !Druid
#completewith SLog
.cast 7178 >>|cRXP_WARN_使用您的|r|T134797:0|t[水息灵药]|cRXP_WARN_如果您有|r
>>|cRXP_WARN_如果你没有呼吸棒，请密切关注你的呼吸棒！|r
.use 5996 
step
#completewith SLog
>>在海底掠夺|cRXP_Loot_精灵宝石|r
.use 4491 >>|cRXP_WARN_装备你的|r|T133149:0|t[Gem Hunting的护目镜]|cRXP_WARN_so |cRXD_LOOT_精灵宝石|r出现在你的小地图上|r
>>|cRXP_WARN_确保您已经用|r|T136148:0|t[不息之息]打磨过自己 << Warlock
>>|cRXP_WARN_铸造|r|T132112:0|t[水上形态]|cRXP_WARN_一旦你的呼吸条变低|r << Druid
.complete 666,1 
.use 5996 
step
#completewith SLog
>>杀死|cRXP_ENEMY_Daggerspine Raiders|r和|cRXX_ENEMY_Daggerspine Sorceres|r
>>|cRXP_WARN_请注意，|cRXP_ENEMY_Daggerspine Raiders|r将向您施放|r|T132149:0|t[Net]|cRXP-WARN_|r
.complete 664,1 
.complete 664,2 
.use 5996 
.mob Daggerspine Raider
.mob Daggerspine Sorceress
step
.goto Arathi Highlands,23.394,85.086
>>在船的二楼偷走了|cRXP_Loot_少女的愚蠢日志|r。它在大锅里面
.complete 662,2 
.use 5996 
step
.goto Arathi Highlands,23.045,84.510
>>在船的二楼掠夺|cRXP_Loot_少女的愚蠢图表|r。它在柱子上
.complete 662,1 
.use 5996 
step
#completewith next
.goto Arathi Highlands,20.5,85.6,50 >>游向另一艘沉船
step
.goto Arathi Highlands,20.458,85.612
>>在船的二楼偷走|cRXP_Loot_银松海图精神|r。它在大炮旁边的陨石坑顶部
.complete 662,3 
.use 5996 
step
#label SLog
.goto Arathi Highlands,20.649,85.103
>>偷走船底的|cRXP_Loot_Spirit of Silverpine Charts|r。它在海底
.complete 662,4 
.use 5996 
step
#completewith next
>>在海底掠夺|cRXP_Loot_精灵宝石|r
.use 4491 >>|cRXP_WARN_装备你的|r|T133149:0|t[Gem Hunting的护目镜]|cRXP_WARN_so |cRXD_LOOT_精灵宝石|r出现在你的小地图上|r
>>|cRXP_WARN_确保您已经用|r|T136148:0|t[不息之息]打磨过自己 << Warlock
>>|cRXP_WARN_铸造|r|T132112:0|t[水上形态]|cRXP_WARN_一旦你的呼吸条变低|r << Druid
.complete 666,1 
.use 5996 
step
.goto Arathi Highlands,19.3,84.1,90,0
.goto Arathi Highlands,17.7,89.5,90,0
.goto Arathi Highlands,25.5,90.8,90,0
.goto Arathi Highlands,24.1,85.7,90,0
.goto Arathi Highlands,23.2,89.7,90,0
.goto Arathi Highlands,19.3,84.1
>>杀死|cRXP_ENEMY_Daggerspine Raiders|r和|cRXX_ENEMY_Daggerspine Sorceres|r
>>|cRXP_WARN_请注意，|cRXP_ENEMY_Daggerspine Raiders|r将向您施放|r|T132149:0|t[Net]|cRXP-WARN_|r
.complete 664,1 
.complete 664,2 
.use 5996 
.mob Daggerspine Raider
.mob Daggerspine Sorceress
step
.goto Arathi Highlands,17.7,88.8,80,0
.goto Arathi Highlands,23.0,92.2,80,0
.goto Arathi Highlands,24.3,84.8,80,0
.goto Arathi Highlands,25.2,90.6,80,0
.goto Arathi Highlands,19.6,84.7,80,0
.goto Arathi Highlands,22.7,88.6
>>在海底掠夺|cRXP_Loot_精灵宝石|r
.use 4491 >>|cRXP_WARN_装备你的|r|T133149:0|t[Gem Hunting的护目镜]|cRXP_WARN_so |cRXD_LOOT_精灵宝石|r出现在你的小地图上|r
>>|cRXP_WARN_确保您已经用|r|T136148:0|t[不息之息]打磨过自己 << Warlock
>>|cRXP_WARN_铸造|r|T132112:0|t[水上形态]|cRXP_WARN_一旦你的呼吸条变低|r << Druid
.complete 666,1 
.use 5996 
step
#completewith NormalHelm
.itemStat 1,QUALITY,1
+装备你的普通装备|T133127:0|t[头盔]
step
.goto Arathi Highlands,32.79,81.48
.target First Mate Nilzlix
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副尼兹利克斯|r
.turnin 662 >>交任务: |cRXP_FRIENDLY_深海打捞|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯迪加特船长|r, |cRXP_FRIENDLY_德拉克里格博士|r
.turnin 664 >>交任务: |cRXP_FRIENDLY_船长的复仇|r
.goto Arathi Highlands,34.002,80.792
.turnin 666 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.accept 668 >>接任务: |cRXP_LOOT_水下宝藏|r
.goto Arathi Highlands,33.856,80.444
.target Captain Steelgut
.target Doctor Draxlegauge
step
#label NormalHelm
.goto Arathi Highlands,32.283,81.364
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 668 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.accept 669 >>接任务: |cRXP_LOOT_水下宝藏|r
.target Shakes O'Breen
step
#completewith next
.goto Arathi Highlands,35.79,79.52,10 >>在护送|cRXP_FRIENDLY_Professor Phizzzlethorpe|r的洞穴岩石顶部注销，然后重新登录
.link https://www.youtube.com/watch?v=SWBtPqm5M0Q&t=114s >>|cRXP_WARN_点击此处查看视频参考|r
step
.goto Arathi Highlands,45.73,46.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟迪克·普罗斯|r
.fly Ironforge >>飞往铁炉堡
.zoneskip Arathi Highlands,1
.target Cedrik Prose
step
.group
.abandon 684 >>放弃通缉！Marez Cowl
step
.group
.abandon 685 >>放弃通缉！奥托和法尔科克雷斯特
step
.group
.abandon 696 >>放弃对塔楼的攻击
step
.group
.abandon 694 >>放弃特雷兰的防守
step
.group
.abandon 652 >>放弃打破基石
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 41-42 Badlands
#next 42-43 Stranglethorn Vale III
step << Gnome !Warlock 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_宾吉·羽哨|r, |cRXP_FRIENDLY_米利·羽哨|r
.train 10907 >>列车|T132247:0|t[机械手驾驶]
.goto Dun Morogh,49.148,48.126
.vendor >>|cRXP_BUY_BUY a|r|T132247:0|t[|cFF0070FF机械手|r]
.goto Dun Morogh,49.123,47.956
.xp <40,1
.money <90
.skill riding,75,1
.target Binjy Featherwhistle
.target Milli Featherwhistle
step << Dwarf !Paladin 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维隆·冻石|r, |cRXP_FRIENDLY_奥萨姆·铁角|r
.vendor >>|cRXP_BUY_BUY a|r|T132248:0|t[|cFF0070FFRam|r]
.goto Dun Morogh,63.467,50.557
.train 826 >>火车|T132248:0|t[骑公羊]
.goto Dun Morogh,63.944,50.095
.xp <40,1
.money <90
.skill riding,75,1
.target Veron Amberstill
.target Ultham Ironhorn
step << !Druid !Hunter !Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_朱莉·雷线|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,26.295,6.752 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >>训练你的职业技能
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Juli Stormkettle << Mage
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷格努斯·雷石|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >>训练你的职业技能
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝莉亚·雷岩|r
.goto Ironforge,70.856,85.839
.train 14925 >>训练|T132270:0|t[成长（等级5）]
.target Belia Thundergranite
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.goto Ironforge,35.90,60.17
.bankdeposit 5826,4502,5996,3684,3660 >>将以下项目存入您的银行：
>>|T134332:0|t[Kravel方案] 
>>|T134116:0|t[精灵宝石样本] 
>>|T134797:0|t[水息灵药]（如果你有） 
>>|T132767:0|t[Perenolde Tiara]（如果你有） 
>>|T132761:0|t[Tomes of Alterac]（如果你有） 
.target Bailey Stonemantle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.goto Ironforge,35.90,60.17
.bankwithdraw 4611 >>从您的银行提取以下项目：
>>9|T134564:0|t[蓝珍珠]（如果你有）
.target Bailey Stonemantle
step
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>购买以下物品，很快即可在Badlands进行即时兑换。如果您不想购买，请跳过此步骤
>>|T134564:0|t[蓝珍珠]
.collect 4611,9,705,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
.goto Ironforge,67.91,17.50,25,0
.goto Ironforge,69.93,21.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗顿·石锤|r
.turnin 1467 >>交任务: |cRXP_FRIENDLY_寻物公司的委托|r
.isOnQuest 1467
.target Roetten Stonehammer
step
.goto Ironforge,74.645,11.742
.target Prospector Stormpike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员塔伯斯·雷矛|r
.accept 707 >>接任务: |cRXP_LOOT_铁环挖掘场需要你！|r
.turnin 554 >>交任务: |cRXP_FRIENDLY_解码高手|r
step
.dungeon SM
.goto Ironforge,74.980,12.486
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图书馆员麦伊·苍尘|r
.turnin 1050 >>交任务: |cRXP_FRIENDLY_泰坦神话|r
.target Librarian Mae Paledust
step
.group
.goto Ironforge,50.827,5.621
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛利·硬骨|r
.turnin 653 >>交任务: |cRXP_FRIENDLY_密斯莱尔的盟友|r
.accept 687 >>接任务: |cRXP_LOOT_迷失者塞尔杜林|r
.target Gerrig Bonegrip
.isQuestTurnedIn 652
step
#completewith EnterBandlands
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Loch Modan>>飞往莫丹湖
.target Gryth Thurden
step
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加克|r
.accept 2500 >>接任务: |cRXP_LOOT_荒芜之地的材料|r
.target Ghak Healtouch
step
#completewith next
.goto Loch Modan,65.93,65.62,80 >>前往铁乐队挖掘现场
step
.goto Loch Modan,65.934,65.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员基恩萨·铁环|r
.turnin 707 >>交任务: |cRXP_FRIENDLY_铁环挖掘场需要你！|r
.target Prospector Ironband
.accept 738 >>接任务: |cRXP_LOOT_寻找阿戈莫德|r
step
#completewith EnterBandlands
.goto Loch Modan,47.04,79.27,0
.goto Loch Modan,46.71,76.90,65,0
.goto Badlands,49.23,7.80
.zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
step
#completewith StudyR
>>杀死|cRXP_ENEMY_Buzzards|r。掠夺它们的|cRXP_Loot_Gizzards|r和|cRXT_Loot-Wwing|r
>>杀死|cRXP_ENEMY_Coyotes|r。掠夺它们的|cRXX_Loot_Fangs|r
.complete 2500,1 
.collect 3404,4,703,1 
.complete 2500,2 
.mob Starving Buzzard
.mob Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote

step
#label EnterBandlands
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员雷杜尔|r, |cRXP_FRIENDLY_西格鲁·铁斧|r
.accept 719 >>接任务: |cRXP_LOOT_矮人的工具|r
.goto Badlands,53.421,43.393
.accept 718 >>接任务: |cRXP_LOOT_饥肠辘辘|r
.goto Badlands,53.802,43.301
.target Prospector Ryedol

.target Sigrun Ironhew

step
#completewith next
.goto Badlands,53.20,30.57,0
.goto Badlands,43.46,30.54,0
>>杀死|cRXP_ENEMY_Shadowforge Dwarves |r。掠夺它们以获得|cRXX_Loot_REEDOL的幸运选择|r
.complete 719,1
.mob Shadowforge Tunneler
.mob Shadowforge Darkweaver
.mob Shadowforge Chanter
.mob Shadowforge Warrior
step
.goto Badlands,53.027,33.944
>>单击地面上的|cRXP_PICK_Crumpled Map|r
.accept 720 >>接任务: |cRXP_LOOT_一线希望|r
step
.goto Badlands,53.20,30.57,40,0
.goto Badlands,43.46,30.54,40,0
.goto Badlands,53.20,30.57,40,0
.goto Badlands,43.46,30.54
>>杀死|cRXP_ENEMY_Shadowforge Dwarves |r。掠夺它们以获得|cRXX_Loot_REEDOL的幸运选择|r
.complete 719,1
.mob Shadowforge Tunneler
.mob Shadowforge Darkweaver
.mob Shadowforge Chanter
.mob Shadowforge Warrior
step
#completewith next
.goto Badlands,66.92,23.45,50 >>Travel to Camp Kosh
step
.goto Badlands,66.601,21.487,10,0
.goto Badlands,66.604,22.026,10,0
.goto Badlands,66.164,21.886,10,0
.goto Badlands,66.92,23.45
>>将|cRXP_PICK_Supply Crate|r洗劫一空
>>|cRXP_WARN_|cRXP_PICK_Supply Crate|r可以在科什营地的几个地方产卵|r
.complete 718,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_西格鲁·铁斧|r, |cRXP_FRIENDLY_勘察员雷杜尔|r
.turnin 718 >>交任务: |cRXP_FRIENDLY_饥肠辘辘|r
.accept 733 >>接任务: |cRXP_LOOT_搜集行动|r
.goto Badlands,53.802,43.301
.turnin 719 >>交任务: |cRXP_FRIENDLY_矮人的工具|r
.turnin 720 >>交任务: |cRXP_FRIENDLY_一线希望|r
.goto Badlands,53.421,43.393
.target Prospector Ryedol

.target Sigrun Ironhew

step
.goto Badlands,42.220,52.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_流放者马特克|r
.turnin 1106 >>交任务: |cRXP_FRIENDLY_流放者马特克|r
.accept 1108 >>接任务: |cRXP_LOOT_精铁碎片|r
.target Martek the Exiled
step
#optional
.goto Badlands,42.388,52.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里格弗兹|r
>>|cRXP_WARN_将|r|T133581:0|t[闪光炸弹]|cRXP_WARN_从本次杀戮任务中向后保存|r|cRXP_ENEMY_King Bangalash|r|cRXP_WARN_in STV|r
.accept 705 >>接任务: |cRXP_LOOT_潜水采珍珠|r
.turnin 705 >>交任务: |cRXP_FRIENDLY_潜水采珍珠|r
.itemcount 4611,9
.target Rigglefuzz
step
.abandon 705 >>Abandon Pearl Diving
step
.goto Badlands,42.388,52.927
.target Rigglefuzz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里格弗兹|r
.accept 703 >>接任务: |cRXP_LOOT_烧烤秃鹰翅膀|r
step
.isQuestComplete 703
.goto Badlands,42.388,52.927
.target Rigglefuzz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里格弗兹|r
.turnin 703 >>交任务: |cRXP_FRIENDLY_烧烤秃鹰翅膀|r
step
.goto Badlands,50.892,62.402
>>单击|cRXP_PICK_Battered Dwarven Skeleton|r
.turnin 738 >>交任务: |cRXP_FRIENDLY_寻找阿戈莫德|r
.accept 739 >>接任务: |cRXP_LOOT_莫达洛克|r
step
>>杀死|cRXP_ENEMY_Stonevault Bonesnappers|r和|cRXX_ENEMY_Murdaloc|r。掠夺他们的|cRXD_Loot_Indurium|r
.complete 739,2 
.goto Badlands,53.0,72.2,40,0
.goto Badlands,47.2,70.6,40,0
.goto Badlands,52.4,66.2,40,0
.goto Badlands,50.36,69.12
.complete 739,1 
.goto Badlands,49.58,66.66
.complete 1108,1 
.goto Badlands,53.0,72.2,40,0
.goto Badlands,47.2,70.6,40,0
.goto Badlands,52.4,66.2,40,0
.goto Badlands,50.36,69.12
.mob Stonevault Bonesnapper
.mob Murdaloc
step
.group
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.turnin 687 >>交任务: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.target Theldurin the Lost
.isQuestTurnedIn 653
step
.goto Badlands,42.220,52.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_流放者马特克|r
.turnin 1108 >>交任务: |cRXP_FRIENDLY_精铁碎片|r
.timer 15,Indurium RP 
.accept 1137 >>接任务: |cRXP_LOOT_回复菲兹尔|r
.target Martek the Exiled
step
.goto Badlands,25.948,44.868
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 710 >>接任务: |cRXP_LOOT_研究石元素|r
step
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8,60,0
.goto Badlands,13.8,38.6,60,0
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8
>>杀死|cRXP_ENEMY_较小的岩石元素|r。掠夺它们的|cRXD_Loot_小石片|r和|cRXX_Loot_岩石元素片|r
>>|cRXP_WARN_您不必立即收集所有|cRXP_LOOT_岩石元素碎片|r|r
.complete 710,1 
.complete 2500,3 
.disablecheckbox
.mob Lesser Rock Elemental
step
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 710 >>交任务: |cRXP_FRIENDLY_研究石元素|r
.accept 711 >>接任务: |cRXP_LOOT_研究石元素|r
.target Lotwil Veriatus
step
.goto Badlands,14.70,35.30
>>杀死|cRXP_ENEMY_岩石元素|r。掠夺它们的|cRXD_Loot_大石板|r和|cRXX_Loot_岩石元素碎片|r
>>|cRXP_WARN_您不必立即收集所有|cRXP_LOOT_岩石元素碎片|r|r
.complete 711,1 
.complete 2500,3 
.disablecheckbox
.mob Rock Elemental
step
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 711 >>交任务: |cRXP_FRIENDLY_研究石元素|r
.target Lotwil Veriatus
step
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8,60,0
.goto Badlands,13.8,38.6,60,0
.goto Badlands,21.2,45.8,60,0
.goto Badlands,18.0,42.8
>>杀死|cRXP_ENEMY_较小的岩石元素|r。掠夺它们的|cRXX_Loot_岩石元素碎片|r
.complete 2500,3 
.mob Lesser Rock Elemental
step
#label StudyR
.goto Badlands,13.6,74.8
.goto Badlands,8.6,75.8,55,0
.goto Badlands,11.0,80.0,55,0
.goto Badlands,8.0,83.6,55,0
.goto Badlands,8.6,75.8,55,0
.goto Badlands,11.0,80.0,55,0
.goto Badlands,8.0,83.6,55,0
.goto Badlands,11.0,80.0
>>杀死|cRXP_ENEMY_Dustbelcher食人魔|r。掠夺他们的|cRXX_Loot_废金属|r
.complete 733,1 
.mob Dustbelcher Wyrmhunter
.mob Dustbelcher Mauler
.mob Dustbelcher Shaman
step
>>杀死|cRXP_ENEMY_Buzzards|r。掠夺它们的|cRXP_Loot_Gizzards|r和|cRXT_Loot-Wwing|r
>>杀死|cRXP_ENEMY_Coyotes|r。掠夺它们的|cRXX_Loot_Fangs|r
.complete 2500,1 
.goto Badlands,49.8,53.0,80,0
.goto Badlands,56.2,67.2,80,0
.goto Badlands,50.6,74.8,80,0
.goto Badlands,60.0,70.6,80,0
.goto Badlands,60.8,53.4,80,0
.goto Badlands,55.8,60.2
.complete 703,1 
.goto Badlands,49.8,53.0,80,0
.goto Badlands,56.2,67.2,80,0
.goto Badlands,50.6,74.8,80,0
.goto Badlands,60.0,70.6,80,0
.goto Badlands,60.8,53.4,80,0
.goto Badlands,55.8,60.2
.complete 2500,2 
.goto Badlands,49.0,32.4,80,0
.goto Badlands,49.2,48.8,80,0
.goto Badlands,57.8,47.7,80,0
.goto Badlands,56.6,73.8,80,0
.goto Badlands,58.8,54.0
.mob Starving Buzzard
.mob Buzzard
.mob Giant Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.goto Badlands,42.388,52.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里格弗兹|r
.turnin 703 >>交任务: |cRXP_FRIENDLY_烧烤秃鹰翅膀|r
.target Rigglefuzz
step
.goto Badlands,53.802,43.301
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_西格鲁·铁斧|r
.turnin 733 >>交任务: |cRXP_FRIENDLY_搜集行动|r
.target Sigrun Ironhew
step
#completewith ExitLM
.goto Badlands,49.52,9.83,0
.goto Loch Modan,46.78,78.09
.zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
step
.goto Loch Modan,65.934,65.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员基恩萨·铁环|r
.turnin 739 >>交任务: |cRXP_FRIENDLY_莫达洛克|r
.target Prospector Ironband
step
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加克|r
.turnin 2500 >>交任务: |cRXP_FRIENDLY_荒芜之地的材料|r
.target Ghak Healtouch
step
#completewith next
.destroy 7846 >>摧毁: |cRXP_ENEMY_峭壁山狗的牙齿|r
step
#label ExitLM
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
.fly Ironforge >>飞往铁炉堡
.target Thorgrum Borrelson
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 42-43 Stranglethorn Vale III
#next 43-44悲伤沼泽II
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.goto Ironforge,35.90,60.17
.bankwithdraw 3684,3660,5826,4502 >>从您的银行提取以下项目：
>>|T134332:0|t[Kravel方案] 
>>|T134116:0|t[精灵宝石样本] 
>>|T132767:0|t[Perenolde Tiara]（如果你有） 
>>|T132761:0|t[Tomes of Alterac]（如果你有） 
.target Bailey Stonemantle
step << Gnome !Warlock 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_宾吉·羽哨|r, |cRXP_FRIENDLY_米利·羽哨|r
.train 10907 >>列车|T132247:0|t[机械手驾驶]
.goto Dun Morogh,49.148,48.126
.vendor >>|cRXP_BUY_BUY a|r|T132247:0|t[|cFF0070FF机械手|r]
.goto Dun Morogh,49.123,47.956
.xp <40,1
.money <90
.skill riding,75,1
.target Binjy Featherwhistle
.target Milli Featherwhistle
step << Dwarf !Paladin 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维隆·冻石|r, |cRXP_FRIENDLY_奥萨姆·铁角|r
.vendor >>|cRXP_BUY_BUY a|r|T132248:0|t[|cFF0070FFRam|r]
.goto Dun Morogh,63.467,50.557
.train 826 >>火车|T132248:0|t[骑公羊]
.goto Dun Morogh,63.944,50.095
.xp <40,1
.money <90
.skill riding,75,1
.target Veron Amberstill
.target Ultham Ironhorn
step << !Druid !Hunter !Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_朱莉·雷线|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,26.295,6.752 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >>训练你的职业技能
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Juli Stormkettle << Mage
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷格努斯·雷石|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >>训练你的职业技能
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝莉亚·雷岩|r
.goto Ironforge,70.856,85.839
.trainer >>确保您的宠物|T135850:0|t[抗冻性]达到最大值
.target Belia Thundergranite
step
#completewith start
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
>>|cRXP_WARN_如果在等电车时需要，请将您的|r|T135966:0|t[急救]|cRXP_WARN_if调平|r
step
.group
.goto Stormwind City,74.010,30.231
.target Count Remington Ridgewell
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷明顿·瑞治维尔伯爵|r
.turnin 543 >>交任务: |cRXP_FRIENDLY_匹瑞诺德王冠|r
.isQuestComplete 543
step
.goto Stormwind City,74.182,7.465
.target Milton Sheaf
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔顿·西弗|r
.turnin 542 >>交任务: |cRXP_FRIENDLY_向米尔顿回复|r
.isOnQuest 542
step
#completewith next
.goto Stormwind City,37.94,82.52,15 >>前往法师塔中的|cRXP_FRIENDLY_高魔法师安德罗斯|r
step
.goto Stormwind City,37.52,81.65
.target High Sorcerer Andromath
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶巫师安多玛斯|r
.accept 1477 >>接任务: |cRXP_LOOT_重要的补给|r
step
.abandon 543 >>放弃Perenolde Tiara
step
.goto Stormwind City,41.497,89.385
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安古斯·斯特恩|r
.accept 212 >>接任务: |cRXP_WARN_冷餐会|r
>>|cRXP_WARN_这是一个30分钟的定时任务。在此期间，您不得注销，否则任务将失败|r
.target Angus Stern
step
.goto Stormwind City,52.615,65.704
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板奥里森|r
.home >>将您的炉石设置为暴风
.target Innkeeper Allison
step
#label start
#completewith ServedCold
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Westfall >>飞往威斯特福尔
.target Dungar Longdrink
step
#completewith ServedCold
.goto Duskwood,44.65,86.61,0
.goto Stranglethorn Vale,40.70,3.72
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step
.goto Stranglethorn Vale,37.832,3.559
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼麦兹修士|r
.accept 207 >>接任务: |cRXP_LOOT_库尔森的秘密|r
.target Brother Nimetz
step
.group
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r
.accept 202 >>接任务: |cRXP_LOOT_库尔森上校|r
.target Lieutenant Doren
step
#completewith next
.goto Stranglethorn Vale,35.658,10.808,80 >>奈辛瓦利远征之旅
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r, |cRXP_FRIENDLY_埃尔加丁爵士|r
.accept 196 >>接任务: |cRXP_LOOT_猎龙|r
.goto Stranglethorn Vale,35.658,10.808
.accept 193 >>接任务: |cRXP_LOOT_猎豹|r
.goto Stranglethorn Vale,35.556,10.546
.target Hemet Nesingwary
.target Sir S. J. Erlgadin
step
.goto Stranglethorn Vale,36.6,41.0
>>杀死|cRXP_ENEMY_Cold Eye Basilisk|r。为|cRXD_Loot_冷却Basilisk Haunch|r掠夺它们
.complete 212,1 
.mob Cold Eye Basilisk
step
#completewith next
.hs >>从火炉到暴风
.zoneskip Stormwind City
step
#label ServedCold
.goto Stormwind City,41.497,89.385
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安古斯·斯特恩|r
.turnin 212 >>交任务: |cRXP_FRIENDLY_冷餐会|r
.target Angus Stern
step
.dungeon RFD
#completewith HostEvil
.subzone 722 >>您现在将运行Razorfen Downs。当你前往地牢时，开始为它寻找一个团队
step
.dungeon RFD
.goto Stormwind City,39.592,27.199
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大主教本尼迪塔斯|r
.accept 3636 >>接任务: |cRXP_WARN_与圣光同在|r
.target Archbishop Benedictus
step
.dungeon RFD
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Booty Bay >>飞到Booty Bay
.target Dungar Longdrink
.zoneskip Stormwind City,1
step
.dungeon RFD
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 669 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.target Fleet Master Seahorn
step
.dungeon RFD
.goto Stranglethorn Vale,27.283,77.529
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利刃凯特琳|r
.turnin 603 >>交任务: |cRXP_FRIENDLY_安斯雷姆的钥匙|r
.accept 610 >>接任务: |cRXP_LOOT_帅小伙子邓肯|r
.target Catelyn the Blade
step
.dungeon RFD
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 1118 >>交任务: |cRXP_FRIENDLY_返回藏宝海湾|r
.isOnQuest 1118
step
.dungeon RFD
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
.dungeon RFD
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Thalanaar >>飞往Thalanaar
.target Bragok
step
.dungeon RFD
#label HostEvil
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦雷姆·月歌|r
.accept 6626 >>接任务: |cRXP_WARN_邪恶之地|r
.target Myriam Moonsinger
step
.dungeon RFD
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
step
.dungeon RFD
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦雷姆·月歌|r
.turnin 6626 >>交任务: |cRXP_FRIENDLY_邪恶之地|r
.target Myriam Moonsinger
.isQuestComplete 6626
step
.dungeon RFD
.goto The Barrens,49.255,93.077,0
.goto The Barrens,49.255,93.077,30,0
.goto 1414,53.26,71.18
.subzone 722,2 >>Enter Razorfen Downs
step
.dungeon RFD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奔尼斯特拉兹|r
>>|cRXP_WARN_走左边的路，一直向左走，直到到达the Murder Pens，到达|r|cRXP_FRIENDLY_Belnistrasz|r
>>|cRXP_WARN_在你的队伍其他人准备好之前，不要接受“消灭偶像”，因为这是护送的开始。此步骤的自动接受功能已关闭|r
.accept 3523 >>接任务: |cRXP_WARN_剃刀高地的亡灵天灾|r
.turnin 3523 >>交任务: |cRXP_FRIENDLY_剃刀高地的亡灵天灾|r
.accept 3525,1 >>接任务: |cRXP_WARN_封印神像|r
.target Belnistrasz
step
.dungeon RFD
>>在仪式期间遵守并保护|cRXP_FRIENDLY_Belnistrasz|r
.complete 3525,1 
.target Belnistrasz
.isOnQuest 3525
step
.dungeon RFD
>>单击|cRXP_PICK_Belnistrasz的Brazier|r
.turnin 3525 >>交任务: |cRXP_FRIENDLY_封印神像|r
.isQuestComplete 3525
step
.dungeon RFD
>>杀死|cRXP_ENEMY_Amnennar Coldbringer|r
.complete 3636,1 
.isOnQuest 3636
step
.dungeon RFD
#completewith next
.hs >>从火炉到暴风
step
.dungeon RFD
.goto Stormwind City,39.592,27.199
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大主教本尼迪塔斯|r
.turnin 3636 >>交任务: |cRXP_FRIENDLY_与圣光同在|r
.target Archbishop Benedictus
.isQuestComplete 3636
step
#completewith next
#ah
.goto Stormwind City,57.06,73.05
.goto Stormwind City,53.612,59.764
+|cRXP_WARN_检查您的银行是否有任何丢失的|r|T134332:0|t[Stranglethorn的Green Hills-Pages]|cRXP_WARN_并从拍卖行购买您仍然需要的任何物品|r
>>|cRXP_WARN_第1章要求：第1、4、6、8页|r
>>|cRXP_WARN_第2章要求：第10、11、14、16页|r
>>|cRXP_WARN_第3章要求：第18、20、21、24页|r
>>|cRXP_WARN_第4章要求：第25、26、27页|r
>>|cRXP_WARN_将新购买的页面放入您的银行。如果您无法获得它们，请跳过此步骤|r
.target Newton Burnside
.target Auctioneer Jaxon
step
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Booty Bay >>飞到Booty Bay
.target Dungar Longdrink
step
.goto Stranglethorn Vale,27.000,77.124
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科博克|r
.accept 209 >>接任务: |cRXP_LOOT_劈颅巨魔的獠牙|r
.target Kebok
step
#optional
.goto Stranglethorn Vale,26.943,77.207
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兹克|r
.accept 627 >>接任务: |cRXP_WARN_克拉兹克的要求|r
.turnin 627 >>交任务: |cRXP_FRIENDLY_克拉兹克的要求|r
.accept 622 >>接任务: |cRXP_WARN_向卡雷布下士回报|r
.itemcount 4278,4 
.target Krazek
step
#optional
.isQuestTurnedIn 627
.goto Stranglethorn Vale,26.943,77.207
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兹克|r
.accept 622 >>接任务: |cRXP_WARN_向卡雷布下士回报|r
.target Krazek
step
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 669 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,27.283,77.529
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利刃凯特琳|r
.turnin 603 >>交任务: |cRXP_FRIENDLY_安斯雷姆的钥匙|r
.accept 610 >>接任务: |cRXP_LOOT_帅小伙子邓肯|r
.target Catelyn the Blade
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰克·菲兹巴布|r
.accept 600 >>接任务: |cRXP_LOOT_风险投资公司|r
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 1118 >>交任务: |cRXP_FRIENDLY_返回藏宝海湾|r
.isOnQuest 1118
step
.goto Stranglethorn Vale,27.039,77.310
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板斯金德|r
.home >>将您的炉石设置为Booty Bay
.target Innkeeper Skindle
step
.goto Stranglethorn Vale,26.756,76.383
.target Privateer Bloads
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海盗布劳兹|r
.accept 617 >>接任务: |cRXP_LOOT_一捆海蛇草|r
step
.goto Stranglethorn Vale,27.782,77.071
.target "Sea Wolf" MacKinley
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.accept 606 >>接任务: |cRXP_LOOT_吓唬病鬼|r
step
.goto Stranglethorn Vale,28.294,77.592
.target Drizzlik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.accept 628 >>接任务: |cRXP_LOOT_刨花皮靴|r
step
.goto Stranglethorn Vale,28.096,76.217
.target First Mate Crazz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副克拉兹|r
.accept 595 >>接任务: |cRXP_LOOT_血帆海盗|r
step
#completewith next
>>杀死|cRXP_ENEMY_“漂亮男孩”邓肯|r。抢走他|cRXX_Loot_Catelyn的刀锋|r
.complete 610,1
.mob "Pretty Boy" Duncan
step
.goto Stranglethorn Vale,27.278,69.521
>>单击枪管顶部的|cRXP_PICK_Bloodsail对应|r
.turnin 595 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.accept 597 >>接任务: |cRXP_LOOT_血帆海盗|r
step
.goto Stranglethorn Vale,27.40,69.39
>>杀死|cRXP_ENEMY_“漂亮男孩”邓肯|r。抢走他|cRXX_Loot_Catelyn的刀锋|r
.complete 610,1
.mob "Pretty Boy" Duncan
step
.goto Stranglethorn Vale,28.096,76.217
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副克拉兹|r
.turnin 597 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.accept 599 >>接任务: |cRXP_LOOT_血帆海盗|r
.target First Mate Crazz
step
.goto Stranglethorn Vale,27.283,77.529
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利刃凯特琳|r
.turnin 610 >>交任务: |cRXP_FRIENDLY_帅小伙子邓肯|r
.accept 611 >>接任务: |cRXP_LOOT_海潮的诅咒|r
.target Catelyn the Blade
step
.goto Stranglethorn Vale,26.920,77.347
.target Deeg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪格|r
.accept 587 >>接任务: |cRXP_LOOT_鼻烟|r
step
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 599 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,28.591,75.899
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_独眼迪兹|r
.accept 576 >>接任务: |cRXP_LOOT_海盗的眼睛|r
.target Dizzy One-Eye
step
.goto Stranglethorn Vale,31.88,67.28,70,0
.goto Stranglethorn Vale,33.46,65.17,70,0
.goto Stranglethorn Vale,33.43,62.94,70,0
.goto Stranglethorn Vale,34.27,64.75,70,0
.goto Stranglethorn Vale,31.88,67.28,70,0
.goto Stranglethorn Vale,33.46,65.17
>>杀死|cRXP_ENEMY_Elder Mistvale Gorillas|r。掠夺它们的|cRXD_Loot_Mistvale Giblets|r和|cRXX_Loot_MGorilla Fans|r
>>|cRXP_WARN_保存|cRXP_OOT_Gorilla Fans|r以备日后任务使用|r
.complete 606,1 
.mob Elder Mistvale Gorilla
step
.goto Stranglethorn Vale,27.27,49.48,70,0
.goto Stranglethorn Vale,28.13,47.27,70,0
.goto Stranglethorn Vale,28.66,43.72,70,0
.goto Stranglethorn Vale,31.22,43.40,70,0
.goto Stranglethorn Vale,31.85,40.88
>>杀死|cRXP_ENEMY_丛林追踪者|r
.complete 196,1 
.mob Jungle Stalker
step
.goto Stranglethorn Vale,41.65,43.69,40,0
.goto Stranglethorn Vale,41.79,41.17,40,0
.goto Stranglethorn Vale,41.65,43.69
>>杀死|cRXP_ENEMY_Venture Co.工头|r，|cRXD_ENEMY_Venture Co.测量员|r，| cRXP__ENEMY_Ventures Co.条形矿工|r和|cRXP_ENEMY_ Venture Co.修补工|r。掠夺他们的|cRXP_Loot_Singing Blue Crystals|r
.complete 600,1 
.mob Venture Co. Foreman
.mob Venture Co. Surveyor
.mob Venture Co. Strip Miner
.mob Venture Co. Tinkerer
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,43.669,9.372
>>在楼上的房子里点击|cRXP_PICK_Bookie Herod’s Records|r
.turnin 200 >>交任务: |cRXP_FRIENDLY_书呆子赫罗德|r
.accept 328 >>接任务: |cRXP_LOOT_隐藏的钥匙|r
step
.solo
#completewith Strongbox
.goto Stranglethorn Vale,46.30,7.61,30 >>进入仓库（库尔岑洞穴）
step
.group 2
#completewith GroupKurzen
.goto Stranglethorn Vale,46.30,7.61,30 >>进入仓库（库尔岑洞穴）
step
.group 2
#completewith next
>>杀死|cRXP_ENEMY_Kurzen精英|r和|cRXP_ENEMY_Kurzen子英雄|r
>>杀死|cRXP_ENEMY_Kurzen上校|r。掠夺他的|cRXP_Loot_Head |r
.complete 202,1 
.complete 202,2 
.complete 202,3 
.mob Kurzen Elite
.mob Kurzen Subchief
.mob Colonel Kurzen
step
#label Strongbox
.isQuestTurnedIn 215
.goto Stranglethorn Vale,49.617,7.562
>>点击地面上的|cRXP_PICK_Bookie Herod的强化箱|r
.turnin 328 >>交任务: |cRXP_FRIENDLY_隐藏的钥匙|r
.accept 329 >>接任务: |cRXP_LOOT_找出内鬼！|r
step
#label GroupKurzen
.group 2
.goto Stranglethorn Vale,49.943,3.953
>>杀死|cRXP_ENEMY_Kurzen精英|r和|cRXP_ENEMY_Kurzen子英雄|r
>>杀死|cRXP_ENEMY_Kurzen上校|r。掠夺他的|cRXP_Loot_Head |r
.complete 202,1 
.goto Stranglethorn Vale,49.943,3.953,40,0
.goto Stranglethorn Vale,49.617,7.562,40,0
.goto Stranglethorn Vale,49.25,6.18
.complete 202,2 
.goto Stranglethorn Vale,49.943,3.953,40,0
.goto Stranglethorn Vale,49.617,7.562,40,0
.goto Stranglethorn Vale,49.25,6.18
.complete 202,3 
.goto Stranglethorn Vale,49.943,3.953
.mob Kurzen Elite
.mob Kurzen Subchief
.mob Colonel Kurzen
step
.group
.goto Stranglethorn Vale,38.042,3.012
.target Lieutenant Doren
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r
.turnin 202 >>交任务: |cRXP_FRIENDLY_库尔森上校|r
.isQuestComplete 202
step
#optional
.isOnQuest 622
.goto Stranglethorn Vale,37.740,3.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡雷布下士|r
.turnin 622 >>交任务: |cRXP_FRIENDLY_向卡雷布下士回报|r
.target Corporal Kaleb
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r
.turnin 329 >>交任务: |cRXP_FRIENDLY_找出内鬼！|r
.accept 330 >>接任务: |cRXP_LOOT_巡逻时间表|r
.target Lieutenant Doren
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,37.66,3.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯曼下士|r
.turnin 330 >>交任务: |cRXP_FRIENDLY_巡逻时间表|r
.accept 331 >>接任务: |cRXP_LOOT_向多伦报告|r
.target Corporal Sethman
step
.isQuestTurnedIn 215
.goto Stranglethorn Vale,38.042,3.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r
.turnin 331 >>交任务: |cRXP_FRIENDLY_向多伦报告|r
.target Lieutenant Doren
step
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 196 >>交任务: |cRXP_FRIENDLY_猎龙|r
.accept 197 >>接任务: |cRXP_LOOT_猎龙|r
.target Hemet Nesingwary
step
.abandon 202 >>Abandon Colonel Kurzen
step
#completewith next
.goto Stranglethorn Vale,29.471,19.119,70 >>巴尔遗址之旅
step
.goto Stranglethorn Vale,29.471,19.119
>>打开|cRXP_PICK_Moon Over the Vale|r。为|cRXP _Loot_第一个巨魔传奇|r掠夺它
.complete 207,1
step
#completewith next
.goto Stranglethorn Vale,24.719,8.905,150 >>祖尔昆达遗址之旅
step
.goto Stranglethorn Vale,24.719,8.905
>>打开|cRXP_PICK_帝王墓|r。为|cRXP_Loot_第四个巨魔传说|r掠夺它
.complete 207,4
step
.goto Stranglethorn Vale,22.94,12.01
>>打开古鲁巴希的|cRXP_PICK_Fall|r。为|cRXP_Loot_第三个巨魔传奇|r抢劫它
.complete 207,3
step
.goto Stranglethorn Vale,21.55,16.57,70,0
.goto Stranglethorn Vale,22.64,18.29,70,0
.goto Stranglethorn Vale,25.53,19.22,70,0
.goto Stranglethorn Vale,29.00,21.44,70,0
.goto Stranglethorn Vale,30.02,26.92,70,0
.goto Stranglethorn Vale,29.00,21.44,70,0
.goto Stranglethorn Vale,25.53,19.22,70,0
.goto Stranglethorn Vale,22.64,18.29,70,0
.goto Stranglethorn Vale,21.55,16.57
>>杀死一个|cRXP_ENEMY_Elder盐水鳄鱼皮|r。掠夺它的|cRXX_Loot_E尔德鳄鱼皮|r
.complete 628,1 
.unitscan Elder Saltwater Crocolisk
step
#completewith Gazban
+|cRXP_WARN_注意你的呼吸棒|r
.isOnQuest 207,611
step
.goto Stranglethorn Vale,24.765,22.871
>>打开水下的流浪者。偷走它|cRXP_Loot_第二个巨魔传奇|r
.complete 207,2
step
#completewith next
.goto Stranglethorn Vale,24.957,23.586
.cast 3678 >>|cRXP_WARN_使用|r|T135637:0|t[Catelyn's Blade]|cRXP_WARN_on the |cRX_PICK_Altar of the Tides |r underwater召唤|r|cRXP_ENEMY_Gazban|r
.use 4027
step
#label Gazban
.goto Stranglethorn Vale,24.957,23.586
>>杀死|cRXP_ENEMY_Gazban|r。掠夺他获得|cRXX_Loot_潮汐之石|r
.complete 611,1 
.mob Gazban
step
#completewith next
.goto Stranglethorn Vale,39.10,5.09,50 >>前往: |cRXP_PICK_荆棘谷|r
step
.goto Stranglethorn Vale,37.832,3.559
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼麦兹修士|r
.turnin 207 >>交任务: |cRXP_FRIENDLY_库尔森的秘密|r
.accept 205 >>接任务: |cRXP_LOOT_巨魔巫术|r
.target Brother Nimetz
step
#completewith BBTurnin
.hs >>赫斯到Booty Bay
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
.goto Stranglethorn Vale,27.120,77.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 600 >>交任务: |cRXP_FRIENDLY_风险投资公司|r
.target Crank Fizzlebub
step
#label BBTurnin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r, |cRXP_FRIENDLY_大财主里维加兹|r
.accept 604 >>接任务: |cRXP_LOOT_血帆海盗|r
.goto Stranglethorn Vale,27.173,77.007
.turnin 611 >>交任务: |cRXP_FRIENDLY_海潮的诅咒|r
.goto Stranglethorn Vale,27.227,76.870
.target Fleet Master Seahorn
.target Baron Revilgaz
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_掘金者维兹尼克|r, |cRXP_FRIENDLY_掘金者里克|r
.bankwithdraw 6065,2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >>从您的银行提取以下项目：
>>任意|T134332:0|t[荆棘青山-页码]
>>|T133461:0|t[卡德加关于维收敛的随笔]（如果你有） 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_掘金者维兹尼克|r, |cRXP_FRIENDLY_掘金者里克|r
.bankdeposit 2799 >>将以下项目存入您的银行：
>>|T134298:0|t[大猩猩的牙]（如果你有）
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
#completewith start2
#ah
.goto Stranglethorn Vale,26.588,76.348
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师奥利雷|r
+|cRXP_WARN_购买任何|r|T134332:0|t[荆棘的青山-页面]|cRXP_WARN_你失踪了|r
>>|cRXP_WARN_第1章：1,4,6,8|r
>>|cRXP_WARN_第2章：10、11、14、16|r
>>|cRXP_WARN_第3章：18,20,21,24|r
>>|cRXP_WARN_第4章：25、26、27|r
>>|cRXP_WARN_如果您无法获得它们，请跳过此步骤|r
.target Auctioneer O'reely
step
.goto Stranglethorn Vale,26.896,73.590
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"病鬼\"菲利普|r
.turnin 606 >>交任务: |cRXP_FRIENDLY_吓唬病鬼|r
.target "Shaky" Phillipe
.accept 607 >>接任务: |cRXP_LOOT_向马克基雷回报|r
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.turnin 607 >>交任务: |cRXP_FRIENDLY_向马克基雷回报|r
.target "Sea Wolf" MacKinley
step
#label start2
.goto Stranglethorn Vale,28.294,77.592
.target Drizzlik
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.turnin 628 >>交任务: |cRXP_FRIENDLY_刨花皮靴|r
step
#completewith next
>>杀死|cRXP_ENEMY_Bloodsail|r。掠夺他们的|cRXD_Loot_Sunff|r和|cRXT_Loot_Dizzy之眼|r
.complete 587,1 
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Mage
.mob Bloodsail Raider
.mob Bloodsail Warlock
step
.goto Stranglethorn Vale,31.76,79.45,100,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20,70,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20
>>杀死|cRXP_ENEMY_Bloodsail Swashbucklers|r
>>掠夺|cRXP_Loot_Bloodsail图表|r和|cRXD_Loot_BBloodsail订单|r。这些可以在其中一个营地或小划艇上随机产卵
.complete 604,1 
.complete 604,2 
.complete 604,3 
.mob Bloodsail Swashbuckler
step
.goto Stranglethorn Vale,31.76,79.45,100,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20,70,0
.goto Stranglethorn Vale,29.56,81.51,75,0
.goto Stranglethorn Vale,26.99,83.20
>>杀死|cRXP_ENEMY_Bloodsail|r。掠夺他们的|cRXD_Loot_Sunff|r和|cRXT_Loot_Dizzy之眼|r
.complete 587,1 
.complete 576,1 
.mob Bloodsail Swashbuckler
.mob Bloodsail Mage
.mob Bloodsail Raider
.mob Bloodsail Warlock
step
#completewith next
.goto Stranglethorn Vale,24.83,63.70,100 >>前往Stranglethorn角
step
#completewith next
>>杀死|cRXP_ENEMY_Naga探索者|r。掠夺他们的|cRXX_Loot_Akiris Reed|r
.complete 617,1 
.mob Naga Explorer
step
.goto Stranglethorn Vale,28.961,61.931
>>单击|cRXP_PICK_圣泉|r。掠夺它以获取|cRXP_Loot_圣泉水|r
.collect 737,1,48,1 
step
.goto Stranglethorn Vale,27.04,63.00,60,0
.goto Stranglethorn Vale,26.32,60.20,60,0
.goto Stranglethorn Vale,25.12,60.07,60,0
.goto Stranglethorn Vale,24.69,64.29,60,0
.goto Stranglethorn Vale,25.99,62.45
>>杀死|cRXP_ENEMY_Naga探索者|r。掠夺他们的|cRXX_Loot_Akiris Reed|r
.complete 617,1 
.mob Naga Explorer
step
.group 2
.goto Stranglethorn Vale,28.41,46.88,0
.goto Stranglethorn Vale,31.12,43.17,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,31.76,41.34,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,31.12,43.17
>>杀死|cRXP_ENEMY_Tethis|r。掠夺他的|cRXX_Loot_Talon|r
>>|cRXP_ENEMY_系绳|r|cRXP_WARN_将在此位置巡逻|r
.complete 197,1 
.unitscan Tethis
step
.goto Stranglethorn Vale,28.73,44.84
.xp 43 >>杀死|cRXP_ENEMY_Jungle Stalkers|r直到43级
.mob Jungle Stalker
step
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22,50,0
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22
.goto Stranglethorn Vale,42.07,36.02,0
.goto Stranglethorn Vale,47.43,40.20,0
.goto Stranglethorn Vale,45.78,42.27,0
>>杀死任何|cRXP_ENEMY_Skullsplitter巨魔|r。掠夺他们的|cRXX_Loot_SullsplitterTusks|r
>>杀死|cRXP_ENEMY_Skullsplitter神秘人|r和|cRXX_ENEMY_Skellsplitter巫医|r。掠夺他们的|cRXD_Loot_SkullsplitterFets|r
.complete 209,1 
.complete 205,1 
.mob Skullsplitter Mystic
.mob Skullsplitter巫医
step
.group 2
.goto Stranglethorn Vale,47.2,28.0,35,0
.goto Stranglethorn Vale,49.8,24.6,35,0
.goto Stranglethorn Vale,48.4,19.2,35,0
.goto Stranglethorn Vale,49.54,24.17
.goto Stranglethorn Vale,47.2,28.0,0
.goto Stranglethorn Vale,49.8,24.6,0
.goto Stranglethorn Vale,48.4,19.2,0
>>杀死|cRXP_ENEMY_Bhag'thera|r。掠夺他以获得Bhag'hera|r的|cRXX_Loot_Fang
>>|cRXP_ENEMY_Bhag'thera|r|cRXP_WARN_can在Mosh'Ogg Ogre丘的北部或西部产卵|r
>>|cRXP_WARN_铸造|r|T132172:0|t[鹰眼]|cRXP_WARN_to尝试定位|r|cRXP-ENEMY_Bhag'thera|r << Hunter
.complete 193,1 
.unitscan Bhag'thera
step
#completewith PagesTurnIn
.goto Stranglethorn Vale,35.658,10.808,80 >>奈辛瓦利远征之旅
step
.group
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔加丁爵士|r, |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 193 >>交任务: |cRXP_FRIENDLY_猎豹|r
.goto Stranglethorn Vale,35.556,10.546
.turnin 197 >>交任务: |cRXP_FRIENDLY_猎龙|r
.accept 208 >>接任务: |cRXP_LOOT_王牌猎人|r
.goto Stranglethorn Vale,35.658,10.808
.target Sir S. J. Erlgadin
.target Hemet Nesingwary
step
#label PagesTurnIn
.goto Stranglethorn Vale,35.662,10.528
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尼尔·石罐|r
>>|cRXP_WARN_Turn in all your |r|T134332:0|t[Green Hills of Stranglethorn-Pages]
>>|cRXP_WARN_如果您没有所有|r|T133677:0|t[荆棘的青山-章节]，请跳过此步骤
.accept 338 >>接任务: |cRXP_LOOT_荆棘谷的青山|r
.accept 339 >>接任务: |cRXP_LOOT_荆棘谷的青山 - 第一章|r
.accept 340 >>接任务: |cRXP_LOOT_荆棘谷的青山 - 第二章|r
.accept 341 >>接任务: |cRXP_LOOT_荆棘谷的青山 - 第三章|r
.accept 342 >>接任务: |cRXP_LOOT_荆棘谷的青山 - 第四章|r
.turnin 339 >>交任务: |cRXP_FRIENDLY_荆棘谷的青山 - 第一章|r
.turnin 340 >>交任务: |cRXP_FRIENDLY_荆棘谷的青山 - 第二章|r
.turnin 341 >>交任务: |cRXP_FRIENDLY_荆棘谷的青山 - 第三章|r
.turnin 342 >>交任务: |cRXP_FRIENDLY_荆棘谷的青山 - 第四章|r
.turnin 338 >>交任务: |cRXP_FRIENDLY_荆棘谷的青山|r
.target Barnil Stonepot
step
#optional
#completewith next
+|cRXP_WARN_当他达到55%时，使用|r|T133581:0|t[闪光弹]|cRXP_WARN_on|cRXP_ENEMY_King Bangalash|r|r
.itemcount 4852,1
.use 4852
step
.group 2
.goto Stranglethorn Vale,38.20,35.57
>>杀死|cRXP_ENEMY_King Bangalash|r。掠夺他以获得|cRXX_Loot_ Bangalash首领|r
>>|cRXP_ENEMY_Bangalash国王|r|cRXP_WARN_将在50%生命值下产生2|cRXP-ENEMY_Panthers|r。如果可能的话，尽量在50%之前给它CC，这样可以防止它产卵|r
.complete 208,1 
.mob King Bangalash
step
.group
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 208 >>交任务: |cRXP_FRIENDLY_王牌猎人|r
.target Hemet Nesingwary
.isQuestComplete 208
step
.goto Stranglethorn Vale,37.832,3.559
.target Brother Nimetz
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼麦兹修士|r
.turnin 205 >>交任务: |cRXP_FRIENDLY_巨魔巫术|r
step
#completewith next
.goto Duskwood,44.6,86.4
.zone Duskwood >>前往: |cRXP_PICK_暮色森林|r
step
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞姆·雷酒|r
.accept 48 >>接任务: |cRXP_WARN_琥珀酒|r
.turnin 48 >>交任务: |cRXP_FRIENDLY_琥珀酒|r
.accept 49 >>接任务: |cRXP_WARN_琥珀酒|r
step
.goto Westfall,56.556,52.643
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
.fly Duskwood >>飞到黄昏
.target Thor
.zoneskip Duskwood
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 43-44悲伤沼泽II
#next 44-45 Tanaris
step
.goto Duskwood,75.779,46.159
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守卫队长索里加尔|r
.turnin 1477 >>交任务: |cRXP_FRIENDLY_重要的补给|r
.target Watchmaster Sorigal
step
#completewith SwampEntry
.goto Duskwood,88.47,41.00,50,0
.goto Deadwind Pass,48.02,34.60,60,0
.goto Deadwind Pass,58.43,41.51,50 >>前往: |cRXP_PICK_悲伤沼泽|r
.zoneskip Swamp of Sorrows
step
#completewith ExitSoS
+|cRXP_WARN_无论何时你在悲伤的沼泽中，都要非常小心|cRXP_ENEMY_Stonard Scouts|r。如果有人攻击你，你将被PvP标记5分钟|r
.unitscan Stonard Scout
step
#label SwampEntry
.goto Swamp of Sorrows,26.74,59.82
.target Watcher Biggs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵比格斯|r
.accept 1398 >>接任务: |cRXP_WARN_晒干的流木|r
step
.isOnQuest 1364
#completewith mazens
>>杀死|cRXP_ENEMY_Swampwalkers|r，|cRXD_ENEMY_Swampwalkers Elders|r，| cRXP__ENEMY_Tangled Horrors|r和|cRXP_ENEMY_Mire Lord|r。为|cRXP_Loot_Khadgar的散文掠夺它们|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step
.goto Swamp of Sorrows,62.547,23.115
>>在地上偷走|cRXP_Loot_大麦袋|r
.complete 49,1
step
.goto Swamp of Sorrows,65.471,18.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加林·古瓦德|r
>>|cRXP_WARN_这将开始一个护送任务|r
.accept 1393 >>接任务: |cRXP_WARN_加林的逃亡|r
.target Galen Goodward
step
.isOnQuest 1393
.goto Swamp of Sorrows,53.045,29.644
>>护送|cRXP_FRIENDLY_Galen|r通过Fallow Sanctuary到达安全地带
.complete 1393,1 
.target Galen Goodward
step
.isQuestComplete 1393
.goto Swamp of Sorrows,47.806,39.760
>>点击地面上的|cRXP_PICK_Galen的强箱|r
.turnin 1393 >>交任务: |cRXP_FRIENDLY_加林的逃亡|r
step
#completewith next
.goto Swamp of Sorrows,79.81,6.90,0
.goto Swamp of Sorrows,90.41,23.85,0
.goto Swamp of Sorrows,94.83,48.68,0
.goto Swamp of Sorrows,82.18,91.74,0
>>沿海地面上的织机|cRXP_Loot_Sundried Driftwood|r
.complete 1398,1 
step
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,82.18,91.74,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07
>>杀死|cRXP_ENEMY_Silt Crawlers |r和|cRXP_ENEMY_Monstrous Crawlers | r。掠夺它们的|cRXD_Loot_Pristine Crawler Legs|r
.complete 1258,1 
.mob Silt Crawler
.mob Monstrous Crawler
.isOnQuest 1258
step
#label mazens
.goto Swamp of Sorrows,79.81,6.90,0
.goto Swamp of Sorrows,90.41,23.85,0
.goto Swamp of Sorrows,94.83,48.68,0
.goto Swamp of Sorrows,82.18,91.74,0
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,82.18,91.74,70,0
.goto Swamp of Sorrows,91.56,70.07,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,79.81,6.90,70,0
.goto Swamp of Sorrows,90.41,23.85,70,0
.goto Swamp of Sorrows,94.83,48.68,70,0
.goto Swamp of Sorrows,91.56,70.07
>>沿海地面上的织机|cRXP_Loot_Sundried Driftwood|r
.complete 1398,1 
step
.isOnQuest 1364
.goto Swamp of Sorrows,6.99,31.62,70,0
.goto Swamp of Sorrows,14.97,37.31
>>杀死|cRXP_ENEMY_Swampwalkers|r，|cRXD_ENEMY_Swampwalkers Elders|r，| cRXP__ENEMY_Tangled Horrors|r和|cRXP_ENEMY_Mire Lord|r。为|cRXP_Loot_Khadgar的散文掠夺它们|r
>>|cRXP_WARN_这个项目的下降率很低。一旦雾谷不再有可杀之物，跳过这一步|r
.complete 1364,1 
.mob Swampwalker
.mob Swampwalker Elder
.mob Tangled Horror
.mob Mire Lord
step 
.xp 44 >>升级到44级
step
.goto Swamp of Sorrows,26.74,59.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵比格斯|r
.turnin 1398 >>交任务: |cRXP_FRIENDLY_晒干的流木|r
.accept 1425 >>接任务: |cRXP_WARN_运送货物|r
.target Watcher Biggs
step
#label ExitSoS
#completewith ExitBL
.goto Swamp of Sorrows,33.23,67.31,0
.goto Blasted Lands,51.98,7.43
.zone Blasted Lands >>前往: |cRXP_PICK_诅咒之地|r
step
.isQuestComplete 1364
.goto Blasted Lands,67.646,19.165
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者马哈尔巴|r, 他在塔上
.turnin 1364 >>交任务: |cRXP_FRIENDLY_马森的请求|r
.target Watcher Mahar Ba
step
.isOnQuest 1425
.goto Blasted Lands,66.521,21.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军需官朗格尔斯|r
.turnin 1425 >>交任务: |cRXP_FRIENDLY_运送货物|r
.target Quartermaster Lungertz
step
.goto Blasted Lands,65.54,24.34
.abandon 1364 >>Abandon Mazen's Behest
step
#label ExitBL
#completewith next << !Mage !Druid
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚历山大·康斯坦丁|r
.fp Blasted Lands>>获取爆炸着陆飞行路径
.target Alexandra Constantine
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
step << Druid
>>前往: |cRXP_PICK_月光林地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >>训练你的职业技能
.target Loganaar
step << !Mage !Druid !Warrior !Paladin
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚历山大·康斯坦丁|r
.fly Stormwind >>飞到暴风城
.target Alexandra Constantine
.zoneskip Blasted Lands,1
step << Mage
#completewith next
.goto Blasted Lands,65.54,24.34
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
step << Priest
#completewith next
.goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
.goto StormwindClassic,38.54,26.86
.trainer >>训练你的职业技能
.target Brother Joshua
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >>训练你的职业技能
.target Osborne the Night Man
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >>训练你的职业技能
.target Einris Brightspear
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>走进屠宰羔羊，下楼去
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >>训练你的职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯巴克尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Spackle Thornberry
step
#completewith BBTurnIn
.hs >>赫斯到Booty Bay
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪格|r, |cRXP_FRIENDLY_克拉兹克|r, |cRXP_FRIENDLY_科博克|r
.turnin 587 >>交任务: |cRXP_FRIENDLY_鼻烟|r
.goto Stranglethorn Vale,26.920,77.347
.accept 2864 >>接任务: |cRXP_LOOT_特兰雷克|r
.goto Stranglethorn Vale,26.943,77.207
.turnin 209 >>交任务: |cRXP_FRIENDLY_劈颅巨魔的獠牙|r
.goto Stranglethorn Vale,27.000,77.124
.target Deeg
.target Krazek
.target Kebok
step
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 604 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.accept 670 >>接任务: |cRXP_LOOT_水下宝藏|r
.target Fleet Master Seahorn
step
#label BBTurnIn
.goto Stranglethorn Vale,26.756,76.383
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海盗布劳兹|r
.turnin 617 >>交任务: |cRXP_FRIENDLY_一捆海蛇草|r
.accept 623 >>接任务: |cRXP_LOOT_一捆海蛇草|r
.target Privateer Bloads
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_掘金者维兹尼克|r, |cRXP_FRIENDLY_掘金者里克|r
.bankdeposit 738,4494 >>将以下项目存入您的银行：

>>|T134058:0|t[一袋大麦] 
>>|T133466:0|t[Sehorn的密封信] 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.accept 2872 >>接任务: |cRXP_LOOT_斯杜雷的债务|r
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,28.591,75.899
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_独眼迪兹|r
.turnin 576 >>交任务: |cRXP_FRIENDLY_海盗的眼睛|r
.target Dizzy One-Eye
step
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
.zoneskip Stranglethorn Vale,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 44-45 Tanaris
#next 45-46 Feralas
step
#completewith next
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Theramore>>飞往塞拉莫尔
.target Bragok
step
.goto Dustwallow Marsh,68.836,53.225,40,0
.goto Dustwallow Marsh,67.716,51.708
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海盗格罗伊|r
>>|cRXP_FRIENDLY_私人侦探Groy|r|cRXP_WARN_穿越Theramore岛|r
.turnin 623 >>交任务: |cRXP_FRIENDLY_一捆海蛇草|r
.target Privateer Groy
step << Warrior
.goto Dustwallow Marsh,67.875,48.409
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊文凯恩队长|r
.trainer >>训练你的职业技能
.target Captain Evencane
step << Paladin
.goto Dustwallow Marsh,67.396,47.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔曼修士|r
.trainer >>训练你的职业技能
.target Brother Karman
step
.skill firstaid,<225,1
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古斯塔夫·范沃森医生|r
.accept 6624 >>接任务: |cRXP_WARN_救死扶伤|r
.target Doctor Gustaf VanHowzen
step
.isOnQuest 6624
.goto Dustwallow Marsh,67.756,48.968
.use 16991 >>|cRXP_WARN_引导|r|T133682:0|t[分诊绷带]|cRXP_WARN_on the |cRXT_FRIENDLY_Alliance Soldiers|r优先考虑|cRXP-FRIENDLY_Critically伤兵|r|r
.complete 6624,1 
.target Critically Injured Alliance Soldier
.target Badly Injured Alliance Soldier
.target Injured Alliance Soldier
step
.isQuestComplete 6624
.goto Dustwallow Marsh,67.756,48.968
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古斯塔夫·范沃森医生|r
.turnin 6624 >>交任务: |cRXP_FRIENDLY_救死扶伤|r
.target Doctor Gustaf VanHowzen
step
.isQuestTurnedIn 6624
.destroy 16991 >>摧毁: |cRXP_ENEMY_急救绷带|r
step
.isQuestComplete 1258
.goto Dustwallow Marsh,66.336,45.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩根·斯特恩|r
.turnin 1258 >>交任务: |cRXP_FRIENDLY_还有螃蟹！|r
.target Morgan Stern
step
#completewith next
.goto Dustwallow Marsh,54.95,50.70,25 >>向西驶向齐柏林飞船失事
step
.isOnQuest 1187
.goto Dustwallow Marsh,54.071,56.490
>>打开|cRXP_PICK_Gizmorium运输箱|r。将其打开以获取|cRXP _Loot_Seaforium助推器|r
.complete 1187,1 
step
.dungeon ZF
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔贝萨|r
.accept 2846 >>接任务: |cRXP_WARN_深渊皇冠|r
.target Tabetha
step
#completewith next
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德拉克|r
.fly Tanaris>>前往: 塔纳利斯
.target Baldruc
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r, |cRXP_FRIENDLY_操作员鲁格伦克|r
.accept 1690 >>接任务: |cRXP_LOOT_废土的公正|r
.goto Tanaris,52.462,28.514
.accept 1707 >>接任务: |cRXP_LOOT_收集水袋|r
.goto Tanaris,52.486,28.445
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket
step << Hunter
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉兹弗斯|r
.stable >>稳定你的宠物。你很快就会驯服一只|cRXP_ENEMY_Starving Blisterpaw|r
.target Laziphus
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克格尔·曲藤|r
.accept 3022 >>接任务: |cRXP_LOOT_小心运送|r
.target Curgle Cranklehop
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 2864 >>交任务: |cRXP_FRIENDLY_特兰雷克|r
.target Tran'rek
step << Hunter
#completewith st2
.goto Tanaris,47.70,27.04,0
.goto Tanaris,47.70,27.04,50,0
.goto Tanaris,53.45,24.29
>>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on a|cRXX_ENEMY_Starving Blisterpaw|r驯服它|r 
.train 23111 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132120:0|t[破折号（等级2）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.mob Starving Blisterpaw
step
#completewith NFF
.goto Thousand Needles,78.064,77.126
.zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
step
.goto Thousand Needles,78.064,77.126
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔·铜栓|r
.turnin 1137 >>交任务: |cRXP_FRIENDLY_回复菲兹尔|r
.target Fizzle Brassbolts
step
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1187 >>交任务: |cRXP_FRIENDLY_拉泽瑞克的调整|r
.accept 1188 >>接任务: |cRXP_LOOT_安全第一|r
.target Razzeric
step
#label NFF
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.accept 1190 >>接任务: |cRXP_LOOT_跟上节奏|r
.target Pozzik
step
#completewith next
.goto Thousand Needles,79.809,77.028
.target Zamek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎米克|r
.turnin 1191 >>交任务: |cRXP_FRIENDLY_扎米克的困扰|r
.timer 30,Zamek's Distraction RP
step
.goto Thousand Needles,77.208,77.386
>>单击地面上的|cRXP_PICK_Rizzle的无人值守计划|r
.turnin 1190 >>交任务: |cRXP_FRIENDLY_跟上节奏|r
.accept 1194 >>接任务: |cRXP_LOOT_瑞兹尔的图表|r
step
.goto Thousand Needles,80.178,75.882
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.turnin 1194 >>交任务: |cRXP_FRIENDLY_瑞兹尔的图表|r
.target Pozzik
step
.destroy 5866 >>摧毁: |cRXP_ENEMY_精铁矿石样本|r
step
#completewith next
.goto Tanaris,50.50,18.52
.zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
step
.goto Tanaris,50.960,27.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史瑞夫|r
.turnin 1188 >>交任务: |cRXP_FRIENDLY_安全第一|r
.accept 1189 >>接任务: |cRXP_LOOT_安全第一|r
.target Shreev
step
#completewith next
.goto Thousand Needles,78.064,77.126
.zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
step
#label st2
.goto Thousand Needles,80.326,76.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1189 >>交任务: |cRXP_FRIENDLY_安全第一|r
.target Razzeric
step
#completewith next
.goto Tanaris,50.50,18.52
.zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
step << Hunter
.goto Tanaris,52.253,28.001
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉兹弗斯|r
.stable >>将您的主要宠物从马厩中撤出
.target Laziphus
step
#completewith vultures
>>杀死|cRXP_ENEMY_Rocs|r。掠夺他们的|cRXX_Loot_Izzards|r
.complete 1452,1 
.isOnQuest 1452
.mob Roc
step
#completewith PortQ
>>杀死|cRXP_ENEMY_Wastwark土匪|r和|cRXX_ENEMY_wastwark盗贼|r。掠夺他们的|cRXD_Loot_Westtwark水袋|r
>>|cRXP_WARN_在前往Steamwhiddele港的途中杀死他们。不要立即完成|r
.goto Tanaris,60.4,24.6,0
.goto Tanaris,63.6,31.0,0
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
.mob Wastewander Bandit
.mob Wastewander Thief
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.accept 3520 >>接任务: |cRXP_LOOT_尖啸者的灵魂|r
.target Yeh'kinya
step
#label PortQ
.goto Tanaris,67.109,23.978
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯杜雷|r
.turnin 2872 >>交任务: |cRXP_FRIENDLY_斯杜雷的债务|r
.target Stoley
step
.goto Tanaris,60.14,23.42,0
.goto Tanaris,63.85,29.26,50,0
.goto Tanaris,63.63,31.66,50,0
.goto Tanaris,63.27,33.57,50,0
.goto Tanaris,62.77,30.20,50,0
.goto Tanaris,63.93,31.60
>>杀死|cRXP_ENEMY_Wastwark土匪|r和|cRXX_ENEMY_wastwark盗贼|r。掠夺他们的|cRXD_Loot_Westtwark水袋|r
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
.mob Wastewander Bandit
.mob Wastewander Thief
step
.goto Tanaris,65.737,36.729
>>将|cRXP_Loot_玉米袋|r掠夺到地上
.complete 49,2 
step
#label vultures
.goto Tanaris,63.93,31.60
.xp 45 >>杀死|cRXP_ENEMY_Wastwark土匪|r和|cRXX_ENEMY_wastwark盗贼|r至45级
.mob Wastewander Bandit
.mob Wastewander Thief
step
.goto Tanaris,55.62,25.46,50,0
.goto Tanaris,53.19,31.69,50,0
.goto Tanaris,49.48,35.85
>>杀死|cRXP_ENEMY_Rocs|r。掠夺他们的|cRXX_Loot_Izzards|r
>>|cRXP_WARN_|cRXP_ENEMY_Rocs|r与|cRXP_ENEMY_Starving Blisterpaws |r共享产卵。您可能需要杀死|cRXD_ENEMY_staving Blistpaws |r才能强制|cRXX_ENEMY_ Rocs|r产卵|r
.complete 1452,1 
.isOnQuest 1452
.mob Roc
step
.isOnQuest 49
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 739 >>将以下项目存入您的银行：
>>|T134059:0|t[一袋玉米] 
.target Gimblethorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r, |cRXP_FRIENDLY_操作员鲁格伦克|r
.turnin 1690 >>交任务: |cRXP_FRIENDLY_废土的公正|r
.goto Tanaris,52.462,28.514
.turnin 1707 >>交任务: |cRXP_FRIENDLY_收集水袋|r
.goto Tanaris,52.486,28.445
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 45-46 Feralas
#next 46-47腹地/荒地
step
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
.fly Feathermoon>>Fly to Feathermoon
.target Bera Stonehammer
step << Hunter
#completewith next
.goto Feralas,31.466,43.145
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塔留斯|r
.stable >>稳定你的宠物。你很快就会驯服一个|cRXP_ENEMY_Longtooth Runner|r
.target Antarius
step << Hunter
.goto Feralas,29.80,49.19
>>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on a|cRXP_ENEMY_Longtooth Runner|r驯服它|r 
.train 17266 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132278:0|t[比特（等级6）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.mob Longtooth Runner
step
#completewith start
.goto Feralas,31.043,43.116
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛德拉克·绿井|r
>>|cRXP_WARN_在食物/水上休息。前面有一段很长的路段|r
.vendor >>|cRXP_BUY_买5堆食物/水|r
.target Mardrack Greenwell
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普拉特·马克格鲁比|r
.accept 2821 >>接任务: |cRXP_LOOT_质量的保证|r
.target Pratt McGrubben
step << Hunter
#completewith start
.goto Feralas,30.645,43.433
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法拉罗恩|r
.vendor >>|cRXP_BUY_Buy 25 stacks of Ammo|r
.target Faralorn
step
.goto Feralas,30.966,43.488
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板希瑞亚|r
.home >>将你的炉石设置为费拉拉斯
.target Innkeeper Shyria
step << Hunter
.goto Feralas,31.466,43.145
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安塔留斯|r
.stable >>将您的宠物从马厩中撤出
.target Antarius
.zoneskip Feralas,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉托尼库斯·月矛|r, |cRXP_FRIENDLY_珊蒂斯·羽月|r
.accept 4124 >>接任务: |cRXP_WARN_失踪的信使|r
.goto Feralas,30.379,46.170
.accept 2866 >>接任务: |cRXP_WARN_索兰萨尔废墟|r
.goto Feralas,30.276,46.168
.target Latronicus Moonspear
.target Shandris Feathermoon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特洛亚斯·月风|r, |cRXP_FRIENDLY_安吉拉斯·月风|r
.accept 2939 >>接任务: |cRXP_WARN_寻找知识|r
.goto Feralas,31.777,45.498
.accept 2982 >>接任务: |cRXP_WARN_高原荒野|r
.goto Feralas,31.828,45.611
.target Troyas Moonbreeze
.target Angelas Moonbreeze
step
#label start
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基恩诺·火花|r, 他在楼上
.turnin 4124 >>交任务: |cRXP_FRIENDLY_失踪的信使|r
.accept 4125 >>接任务: |cRXP_WARN_失踪的信使|r
.target Ginro Hearthkindle
step
#completewith next
.goto Feralas,32.671,44.029
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛加纳斯|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_|r
>>|cRXP_WARN_如果|cRXP_FRIENDLY_Logannas|r没有库存，请跳过此步骤|r
.target Logannas
step
.goto Feralas,26.316,52.343
>>单击|cRXP_PICK_Solarsal Gazebo|r
.turnin 2866 >>交任务: |cRXP_FRIENDLY_索兰萨尔废墟|r
.accept 2867 >>接任务: |cRXP_WARN_返回羽月要塞|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r, |cRXP_FRIENDLY_拉托尼库斯·月矛|r
.turnin 2867 >>交任务: |cRXP_FRIENDLY_返回羽月要塞|r
.accept 3130 >>接任务: |cRXP_WARN_憎世纳迦之战|r
.goto Feralas,30.276,46.168
.turnin 3130 >>交任务: |cRXP_FRIENDLY_憎世纳迦之战|r
.accept 2869 >>接任务: |cRXP_WARN_憎世纳迦之战|r
.goto Feralas,30.379,46.170
.target Latronicus Moonspear
.target Shandris Feathermoon
step
.goto Feralas,26.6,52.0,70,0
.goto Feralas,26.2,55.2,70,0
.goto Feralas,29.6,53.6,70,0
.goto Feralas,29.0,50.4,70,0
.goto Feralas,26.6,53.4
>>杀死|cRXP_ENEMY_HatecrestScreamers|r，|cRXX_ENEMY_hatecrestWave Riders|r，| cRXP__ENEMY_HatECrestWarriors|r和|cRXD_ENEMY_ HatecrestSiren|r。掠夺他们的|cRXP_Loot_Naga Scales|r
.complete 2869,1 
.mob Hatecrest Screamer
.mob Hatecrest Wave Rider
.mob Hatecrest Warrior
.mob Hatecrest Siren
step
.goto Feralas,30.379,46.170
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉托尼库斯·月矛|r
.turnin 2869 >>交任务: |cRXP_FRIENDLY_憎世纳迦之战|r
.target Latronicus Moonspear
step
#completewith next
.goto Feralas,45.07,44.89,150 >>Swim to the mainland
step
.goto Feralas,45.44,64.96
>>单击水中的|cRXP_PICK_Wrecked Row Boat|r
.turnin 4125 >>交任务: |cRXP_FRIENDLY_失踪的信使|r
.accept 4127 >>接任务: |cRXP_WARN_船只的残骸|r
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
step << Druid
>>前往: |cRXP_PICK_月光林地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >>训练你的职业技能
.target Loganaar
step << Mage
#completewith next
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
step
#completewith next
.hs >>羽门寨之心
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基恩诺·火花|r, 他在楼上
.turnin 4127 >>交任务: |cRXP_FRIENDLY_船只的残骸|r
.accept 4129 >>接任务: |cRXP_WARN_奎恩提斯的技艺|r
.target Ginro Hearthkindle
step
.goto Feralas,32.447,43.788
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奎恩提斯|r
.turnin 4129 >>交任务: |cRXP_FRIENDLY_奎恩提斯的技艺|r
.timer 12,The Knife Revealed RP
.accept 4130 >>接任务: |cRXP_WARN_心灵占卜术|r
.target Quintis Jonespyre
step
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基恩诺·火花|r, 他在楼上
.turnin 4130 >>交任务: |cRXP_FRIENDLY_心灵占卜术|r
.accept 4131 >>接任务: |cRXP_WARN_木爪豺狼人|r
.target Ginro Hearthkindle
step
#completewith spirits
.goto Feralas,47.3,44.7,65 >>Swim to the mainland
step
#completewith spirits
.goto Feralas,52.05,48.88,0
.goto Feralas,46.6,39.4,0
.goto Feralas,57.8,50.8,0
>>杀死|cRXP_ENEMY_Vale尖叫者|r和|cRXX_ENEMY_Rogue Vale尖叫器|r
.use 10699 >>|cRXP_WARN_在他们的尸体上使用|r|T135474:0|t[Yeh'kinya的Bramble]|cRXP_WARN_on来召唤|r|cRXP-FRIENDLY_Screacher Spirit|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尖啸者的灵魂|r
.complete 3520,1 
.skipgossip
.mob Vale Screecher
.mob Rogue Vale Screecher
.target Screecher Spirit
step
#completewith spirits
.goto Feralas,58.8,59.0,0
>>杀死|cRXP_ENEMY_Ironfur熊|r、|cRXD_ENEMY_Grizzled Ironfuar熊|r和|cRXP_ENEMY_Groddoc猿|r。掠夺它们的|cRXP_Loot_LLives|r
.complete 1452,2 
.complete 1452,3 
.mob Ironfur Bear
.mob Grizzled Ironfur Bear
.mob Groddoc Ape
step
.goto Feralas,55.41,45.54
.zone 1414 >>|cRXP_WARN_你必须探索Dire Maul区域，作为以后解锁任务的先决条件|r
.link https://youtu.be/ayEKuXSUU2A >>|cRXP_WARN_点击此处查看视频参考|r
step
.goto Feralas,55.63,56.44,50,0
.goto Feralas,53.50,55.47
>>杀死|cRXP_ENEMY_野性疤痕Yetis|r，|cRXD_ENEMY_Enraged野性疤痕|r和|cRXP_ENEMY_Hulking野性疤痕|r.掠夺它们的|cRXP_Loot_Theak Yeti Hides |r
>>|cRXP_WARN_Do not enter the main |cRXP_ENEMY_Yeti|r cave if you are not confident|r
.complete 2821,1 
.mob Feral Scar Yeti
.mob Enraged Feral Scar
.mob Hulking Feral Scar
step
#label spirits
>>杀死|cRXP_ENEMY_Gordunni萨满|r、|cRXD_ENEMY_Gordunni术士|r和|cRXP_ENEMY_Gordonni布鲁特斯|r
>>|cRXP_WARN_优先杀死|cRXP_ENEMY_Gordunni萨满|r。你可能需要杀死其他|cRXD_ENEMY_Gordunni食人魔|r才能迫使|cRXX_ENEMY_戈尔Dunni萨满|r产卵|r
.complete 2982,2 
.goto Feralas,59.54,63.13,60,0
.goto Feralas,58.42,67.08,60,0
.goto Feralas,59.97,66.14,60,0
.goto Feralas,60.91,68.55,60,0
.goto Feralas,59.48,66.77
.goto Feralas,61.70,73.09,0
.goto Feralas,59.11,69.93,0
.complete 2982,1 
.goto Feralas,59.54,63.13,60,0
.goto Feralas,58.42,67.08,60,0
.goto Feralas,59.97,66.14,60,0
.goto Feralas,60.91,68.55,60,0
.goto Feralas,59.09,64.45,60,0
.goto Feralas,61.02,56.10,60,0
.goto Feralas,61.43,54.30,60,0
.goto Feralas,59.54,63.13
.goto Feralas,61.70,73.09,0
.goto Feralas,59.11,69.93,0
.complete 2982,3 
.goto Feralas,59.09,64.45,60,0
.goto Feralas,61.02,56.10,60,0
.goto Feralas,61.43,54.30,60,0
.goto Feralas,61.02,56.10
.mob Gordunni Shaman
.mob Gordunni Warlock
.mob Gordunni Brute
step
#completewith next
.goto Feralas,58.40,55.57,0
.goto Feralas,57.29,54.10,0
.goto Feralas,55.40,53.49,0
.goto Feralas,56.94,60.64,0
.goto Feralas,59.28,60.55,0
>>杀死|cRXP_ENEMY_Ironfur熊|r、|cRXD_ENEMY_Grizzled Ironfuar熊|r和|cRXP_ENEMY_Groddoc猿|r。掠夺它们的|cRXP_Loot_LLives|r
.complete 1452,2 
.complete 1452,3 
.mob Ironfur Bear
.mob Grizzled Ironfur Bear
.mob Groddoc Ape
step
.goto Feralas,53.2,47.2,60,0
.goto Feralas,58.0,47.8,60,0
.goto Feralas,60.8,50.8,60,0
.goto Feralas,55.8,54.0,60,0
.goto Feralas,58.6,58.8,60,0
.goto Feralas,60.6,62.2
.goto Feralas,53.2,47.2,0
.goto Feralas,58.0,47.8,0
.goto Feralas,60.8,50.8,0
.goto Feralas,55.8,54.0,0
.goto Feralas,58.6,58.8,0
>>杀死|cRXP_ENEMY_Vale尖叫者|r和|cRXX_ENEMY_Rogue Vale尖叫器|r
.use 10699 >>|cRXP_WARN_在他们的尸体上使用|r|T135474:0|t[Yeh'kinya的Bramble]|cRXP_WARN_on来召唤|r|cRXP-FRIENDLY_Screacher Spirit|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尖啸者的灵魂|r
.complete 3520,1 
.skipgossip
.mob Vale Screecher
.mob Rogue Vale Screecher
.target Screecher Spirit
step
.goto Feralas,58.40,55.57,55,0
.goto Feralas,57.29,54.10,55,0
.goto Feralas,55.40,53.49,55,0
.goto Feralas,56.94,60.64,55,0
.goto Feralas,59.28,60.55
>>杀死|cRXP_ENEMY_Ironfur熊|r、|cRXD_ENEMY_Grizzled Ironfuar熊|r和|cRXP_ENEMY_Groddoc猿|r。掠夺它们的|cRXP_Loot_LLives|r
.complete 1452,2 
.complete 1452,3 
.mob Ironfur Bear
.mob Grizzled Ironfur Bear
.mob Groddoc Ape
step
.goto Feralas,66.56,46.87,0
.goto Feralas,66.56,46.87,30,0
.goto Feralas,65.945,45.651
>>|cRXP_WARN_在接受此护送任务之前，杀死包含|cRXP_FRIENDLY_Captured精灵飞镖|r的巨大笼子周围的一些|cRXP_ENEMY_Grimtomet|r|r
>>|cRXP_ENEMY_冷酷图腾突袭者|r|cRXP_WARN_cast|r|T132149:0|t[Net]|cRXP-WARN_其移动固定10秒|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛达尔·月纹|r
.accept 2969 >>接任务: |cRXP_WARN_精灵龙的自由|r
.target Kindal Moonweaver
.mob Grimtotem Naturalist
.mob Grimtotem Raider
.mob Grimtotem Shaman
step
.goto Feralas,66.666,46.754
>>单击|cRXP_PICK_Cage Door|r以释放|cRXP_FRIENDLY_Captured Sprite Darters |r
>>杀死任何正在攻击|cRXP_FIRENDLY_精灵飞镖手|r的|cRXP-ENEMY_Grimtomet|r
>>|cRXP_ENEMY_冷酷图腾突袭者|r|cRXP_WARN_cast|r|T132149:0|t[Net]|cRXP-WARN_其移动固定10秒|r
.complete 2969,1
.mob Grimtotem Naturalist
.mob Grimtotem Raider
.mob Grimtotem Shaman
.target Captured Sprite Darter
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛达尔·月纹|r, |cRXP_FRIENDLY_耶尔卡·月纹|r
.turnin 2969 >>交任务: |cRXP_FRIENDLY_精灵龙的自由|r
.goto Feralas,65.945,45.651
.accept 2970 >>接任务: |cRXP_WARN_菲拉斯的正义|r
.goto Feralas,65.946,45.607
.target Kindal Moonweaver
.target Jer'kai Moonweaver
step
.goto Feralas,66.65,46.58,60,0
.goto Feralas,68.70,46.91,60,0
.goto Feralas,69.14,39.10,60,0
.goto Feralas,66.85,38.80,60,0
.goto Feralas,69.14,39.10
.goto Feralas,66.85,38.80,0
>>杀死|cRXP_ENEMY_格林图腾博物学家|r，|cRXD_ENEMY_格林图腾突袭者|r和|cRXP_ENEMY_格里姆图腾萨满|r
>>|cRXP_ENEMY_冷酷图腾突袭者|r|cRXP_WARN_cast|r|T132149:0|t[Net]|cRXP-WARN_其移动固定10秒|r
.complete 2970,1 
.complete 2970,2 
.complete 2970,3 
.mob Grimtotem Naturalist
.mob Grimtotem Raider
.mob Grimtotem Shaman
step
.goto Feralas,65.946,45.607
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶尔卡·月纹|r
.turnin 2970 >>交任务: |cRXP_FRIENDLY_菲拉斯的正义|r
.accept 2972 >>接任务: |cRXP_WARN_菲拉斯的正义|r
.target Jer'kai Moonweaver
step
.goto Feralas,73.314,56.311
>>单击树上的|cRXP_PICK_Large Leather Backpacks|r
.turnin 4131 >>交任务: |cRXP_FRIENDLY_木爪豺狼人|r
.accept 4135 >>接任务: |cRXP_WARN_痛苦深渊|r
step
.goto Feralas,73.31,56.30
.use 11463 >>|cRXP_WARN_使用|T133464:0|t[|cRXP_LOOT_Undelivered Parcel|r]开始任务|r
.collect 11463,1,4281
.accept 4281 >>接任务: |cRXP_WARN_萨兰纳尔的货物|r
step
#completewith next
.goto Feralas,73.57,63.13,100,0
.goto Feralas,72.78,64.48,15 >>从西南方向较低的入口进入The Writing Deep Hive
step
.goto Feralas,72.080,63.713
>>单击|cRXP_PICK_Zukk‘ash播客|r
.turnin 4135 >>交任务: |cRXP_FRIENDLY_痛苦深渊|r
.accept 4265 >>接任务: |cRXP_WARN_逃离虫巢|r
.timer 19,Freed from the Hive RP
step
.goto Feralas,72.080,63.713
>>|cRXP_WARN_等待RP|r
.complete 4265,1
step
.goto Feralas,66.65,46.58
>>升级直到炉石冷却结束
.hs >>羽门寨之心
.zoneskip Feralas,1
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普拉特·马克格鲁比|r
.turnin 2821 >>交任务: |cRXP_FRIENDLY_质量的保证|r
.target Pratt McGrubben
step
.goto Feralas,31.043,43.116
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛德拉克·绿井|r
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
.target Mardrack Greenwell
.zoneskip Feralas,1
step << Hunter
.goto Feralas,30.645,43.433
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法拉罗恩|r
.vendor >>|cRXP_BUY_Buy Ammo if needed|r
.target Faralorn
.zoneskip Feralas,1
step
.goto Feralas,32.671,44.029
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛加纳斯|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_|r
>>|cRXP_WARN_如果|cRXP_FRIENDLY_Logannas|r没有库存，请跳过此步骤|r
.zoneskip Feralas,1
step
.goto Feralas,32.14,45.46,10,0
.goto Feralas,31.860,45.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基恩诺·火花|r, 他在楼上
.turnin 4265 >>交任务: |cRXP_FRIENDLY_逃离虫巢|r
.accept 4266 >>接任务: |cRXP_WARN_羽月将军的欢迎|r
.target Ginro Hearthkindle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉托尼库斯·月矛|r, |cRXP_FRIENDLY_珊蒂斯·羽月|r
.accept 2870 >>接任务: |cRXP_WARN_击败沙尔扎鲁|r
.goto Feralas,30.379,46.170
.turnin 4266 >>交任务: |cRXP_FRIENDLY_羽月将军的欢迎|r
.accept 4267 >>接任务: |cRXP_LOOT_异种蝎的威胁|r
.goto Feralas,30.276,46.168
.target Latronicus Moonspear
.target Shandris Feathermoon
step
.goto Feralas,26.6,52.0,70,0
.goto Feralas,26.2,55.2,70,0
.goto Feralas,29.6,53.6,70,0
.goto Feralas,29.0,50.4,70,0
.goto Feralas,26.6,53.4
.xp 46 >>升级到46级
>>杀死|cRXP_ENEMY_HatecrestScreamers|r，|cRXD_ENEMY_hatecrestWave Riders|r，| cRXP__ENEMY_HatECrestWarriors|r和|cRXT_ENEMY_ HatecrestSiren|r。为|T132836:0|t[|cRXP_OOT_OOX-22/FE遇险信标|r]掠夺它们
>>|cRXP_WARN_现在还不要接受对它的追求。继续正常探索。你稍后再做|r
>>|cRXP_WARN_如果你46级时还没有找到，现在就跳过它。您也可以在南部岛屿上升级|cRXP_ENEMY_Nagas|r|r

.collect 8705,1,2766,1 
.disablecheckbox

.mob Hatecrest Screamer
.mob Hatecrest Wave Rider
.mob Hatecrest Warrior
.mob Hatecrest Siren
step
#completewith next
.goto Feralas,25.49,64.92,40,0
.goto Feralas,26.13,67.41,30 >>前往德雷德岛。进入Shalzaru的巢穴
step
.goto Feralas,28.51,70.59
>>杀死|cRXP_ENEMY_Lord Shalzaru|r。掠夺他获得|cRXX_Loot_神秘遗迹|r
.complete 2870,1 
.mob Lord Shalzaru
step
#completewith next
.goto Feralas,30.276,46.168,150 >>前往羽毛山寨
step
.goto Feralas,30.379,46.170
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉托尼库斯·月矛|r
.turnin 2870 >>交任务: |cRXP_FRIENDLY_击败沙尔扎鲁|r
.accept 2871 >>接任务: |cRXP_WARN_递送遗物|r
.target Latronicus Moonspear
step
.goto Feralas,30.077,45.060
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯提亚·月矛|r
.turnin 2871 >>交任务: |cRXP_FRIENDLY_递送遗物|r
.target Vestia Moonspear
step
.goto Feralas,31.828,45.611
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安吉拉斯·月风|r
.turnin 2982 >>交任务: |cRXP_FRIENDLY_高原荒野|r
.target Angelas Moonbreeze
step << !Mage !Druid
.goto Feralas,30.239,43.251
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲尔迪恩·月羽|r
.fly Teldrassil >>飞往Teldrassil
.target Fyldren Moonfeather
.zoneskip Feralas,1
step << Druid
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Feralas,1
step << Druid
>>前往: |cRXP_PICK_月光林地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
>>|cRXP_WARN_如果您之前训练过，请跳过此步骤|r
.goto Moonglade,52.53,40.56
.trainer >>训练你的职业技能
.target Loganaar
.zoneskip Moonglade,1
step << Druid
.goto Moonglade,44.148,45.229
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
.fly Teldrassil >>飞往达纳苏斯
.skipgossip
.timer 153,Flight to Darnassus
.target Silva Fil'naveth
.zoneskip Moonglade,1
step << Mage
.goto Feralas,30.239,43.251
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
>>如果你没有经过|T135755:0|t[电传：Darnassus]训练，那就飞到那里
.zoneskip Feralas,1
step << Mage
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格拉希娜·灵风|r, 他在楼上
.turnin 4267 >>交任务: |cRXP_FRIENDLY_异种蝎的威胁|r
.target Gracina Spiritmight
.zoneskip Darnassus,1
step << Mage
.goto Darnassus,39.094,81.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰兰德·语风|r
.turnin 2972 >>交任务: |cRXP_FRIENDLY_菲拉斯的正义|r
.target Tyrande Whisperwind
.zoneskip Darnassus,1
step << Mage
#completewith next
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darnassus,1
step
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 3022 >>交任务: |cRXP_FRIENDLY_小心运送|r
.accept 3661 >>接任务: |cRXP_LOOT_月神之兽？|r
.target Erelas Ambersky
step
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达蕾恩·轻风|r, 他在楼上
.turnin 2939 >>交任务: |cRXP_FRIENDLY_寻找知识|r
.target Daryn Lightwind
step
.goto Teldrassil,55.219,91.454
>>单击地面上的|cRXP_PICK_Feralas:A History|r书籍
.accept 2940 >>接任务: |cRXP_WARN_菲拉斯的历史|r
step
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达蕾恩·轻风|r
.turnin 2940 >>交任务: |cRXP_FRIENDLY_菲拉斯的历史|r
.accept 2941 >>接任务: |cRXP_WARN_海龟照片|r
.target Daryn Lightwind
step
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加瑞斯|r, |cRXP_FRIENDLY_莱恩|r, |cRXP_FRIENDLY_伊迪瑞娜|r
.bankdeposit 9329,11463 >>将以下项目存入您的银行：
>>|T133469:0|t[简记] 
>>|T133628:0|t[未送达包裹] 
>>|T132836:0|t[OOX-22/FE遇险信标]（如果你有） 
.target Garryeth
.target Lairn
.target Idriana
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加瑞斯|r, |cRXP_FRIENDLY_莱恩|r, |cRXP_FRIENDLY_伊迪瑞娜|r
.bankwithdraw 4494 >>从您的银行提取以下项目：
>>|T133466:0|t[Sehorn的密封信] 
.target Garryeth
.target Lairn
.target Idriana
step
#ah
.goto Darnassus,56.245,54.039,-1
.goto Darnassus,56.374,51.820,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
>>购买以下物品，很快即可在Hinterlands进行即时兑换。如果您不想购买，请跳过此步骤
>>|T133296:0|t[巨魔部落项链]
.collect 9259,5,2880,1 
.target Auctioneer Tolon
.target Auctioneer Golothas
step
#completewith MoonTemple
.goto Darnassus,39.01,81.43,40 >>月球神庙之旅
step
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格拉希娜·灵风|r, 他在楼上
.turnin 4267 >>交任务: |cRXP_FRIENDLY_异种蝎的威胁|r
.target Gracina Spiritmight
step
#label MoonTemple
.goto Darnassus,39.094,81.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰兰德·语风|r
.turnin 2972 >>交任务: |cRXP_FRIENDLY_菲拉斯的正义|r
.target Tyrande Whisperwind
step << Mage
.goto Darnassus,40.599,82.130
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃莉萨·杜马斯|r
.train 3565 >>火车电报：Darnassus
.target Elissa Dumas
step << Mage
#completewith next
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r
.trainer >>训练你的职业技能
.target Dink
step << Mage
.goto Ironforge,55.506,47.746
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Arathi>>飞到阿拉蒂高地
.target Gryth Thurden
.zoneskip Ironforge,1
step << NightElf
>>|cRXP_WARN_如果你买得起的话，就买你的坐骑！|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱兰奈|r, |cRXP_FRIENDLY_贾萨姆|r
.vendor >>|cRXP_BUY_购买|r|T132267:0|t[|cFF0070FF夜刀|r]|cRXP_BUY_或|r|T132225:0|t[| cFF00700FF夜刀| r]
.goto Darnassus,38.283,15.365
.train 828 >>火车|T132242:0|t[骑老虎]
.goto Darnassus,38.694,15.857
.skill riding,75,1 
.zoneskip Darnassus,1
.target Lelanai
.target Jartsam
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷亚斯塔·刃歌|r
.goto Darnassus,58.72,34.92
.trainer >>训练你的职业技能
.target Arias'ta Bladesinger
.zoneskip Darnassus,1
step << Priest
.goto Darnassus,37.90,82.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾德莉亚|r
.trainer >>训练你的职业技能
.target Jandria
.zoneskip Darnassus,1
step << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
.goto Darnassus,31.84,16.69,30,0
.goto Darnassus,37.00,21.92
.trainer >>训练你的职业技能
.target Syurna
.zoneskip Darnassus,1
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
.trainer >>训练你的职业技能
.target Jocaste
.zoneskip Darnassus,1
step << !Mage
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darnassus,1
step << !Mage
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
.fly Darkshore >>飞到黑海岸
.target Vesprystus
.zoneskip Teldrassil,1
step << !Mage
.goto Darkshore,32.44,43.71
>>|cRXP_WARN_在等待Menethil Harbor船时，将您的|r|T135966:0|t[急救]|cRXP_WARN_调平|r
.zone Wetlands >>前往: |cRXP_PICK_湿地|r
.zoneskip Arathi Highlands
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.goto Wetlands,9.490,59.694
.fly Arathi>>飞到阿拉蒂高地
.target Shellei Brondir
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 46-47腹地/荒地
#next 47-48 Tanaris
step
#completewith next
.goto Arathi Highlands,30.74,66.94,60,0
.goto Arathi Highlands,22.72,71.98,50,0
.goto Arathi Highlands,21.50,75.91,40,0
.goto Arathi Highlands,21.98,79.96,30 >>Travel to Faldir's Cove
step
.goto Arathi Highlands,32.283,81.364
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 670 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.accept 667 >>接任务: |cRXP_WARN_水下伏兵|r
.target Shakes O'Breen
step
#completewith next
.goto Arathi Highlands,31.530,81.946,10,0
.goto Arathi Highlands,31.465,81.010,10 >>快速走上舷梯上船
step
.goto Arathi Highlands,32.103,80.685
>>当您看到来自南方的进攻浪潮|cRXP_ENEMY_Nagas|r时，单击|cRX_PICK_Cannon|r
.complete 667,1 
step
.goto Arathi Highlands,32.283,81.364
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 667 >>交任务: |cRXP_FRIENDLY_水下伏兵|r
.target Shakes O'Breen
step
#completewith next
.goto Arathi Highlands,35.79,79.52,10 >>从洞穴的岩石顶部注销，然后重新登录
.link https://www.youtube.com/watch?v=SWBtPqm5M0Q&t=114s >>|cRXP_WARN_点击此处查看视频参考|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟迪克·普罗斯|r
.goto Arathi Highlands,45.73,46.09
.fly Hinterlands >>飞到腹地
.target Cedrik Prose
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狮鹫管理员沙拉克·鹰斧|r
.accept 2988 >>接任务: |cRXP_LOOT_枯木巨魔的牢笼|r
.target Gryphon Master Talonaxe
step
#optional
.goto The Hinterlands,14.17,45.33,25,0
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗拉加尔|r
.accept 2880 >>接任务: |cRXP_LOOT_巨魔部族项链|r
.turnin 2880 >>交任务: |cRXP_FRIENDLY_巨魔部族项链|r
.itemcount 9259,5 
.target Fraggar Thundermantle
step
.goto The Hinterlands,14.17,45.33,25,0
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗拉加尔|r
.accept 2880 >>接任务: |cRXP_LOOT_巨魔部族项链|r
.target Fraggar Thundermantle
step
#completewith Rye
>>在地上掠夺|cRXP_OOT_Wildkin羽毛|r
.complete 3661,1 
step
.goto The Hinterlands,26.943,48.588
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉普索迪·铁铲|r
.turnin 1452 >>交任务: |cRXP_FRIENDLY_拉普索迪的卡利姆多鸡尾酒|r
.timer 35,Rhapsody's Kalimdor Kocktail RP
.accept 1469 >>接任务: |cRXP_WARN_拉普索迪的故事|r
.target Rhapsody Shindigger
step
#completewith FinalCages
>>杀死|cRXP_ENEMY_Witherbark巨魔|r。掠夺它们的|cRXX_Loot_部落项链|r
.complete 2880,1 
.mob Witherbark Venomblood
.mob Witherbark Hideskinner
.mob Witherbark Zealot
.mob Witherbark Scalper
step
.goto The Hinterlands,31.98,57.31
>>单击|cRXP_PICK_Third Witherbark Cage|r
.complete 2988,3 
step
#label FinalCages
>>单击|cRXP_PICK_First Witherbark Cage |r和|cRX_PICK_Second WitherbarkCage |r
.complete 2988,1 
.goto The Hinterlands,23.28,58.81
.complete 2988,2 
.goto The Hinterlands,23.12,58.82
step
.goto The Hinterlands,21.92,56.04,70,0
.goto The Hinterlands,25.09,59.20,70,0
.goto The Hinterlands,32.23,58.21
>>杀死|cRXP_ENEMY_Witherbark巨魔|r。掠夺它们的|cRXX_Loot_部落项链|r
.complete 2880,1 
.mob Witherbark Venomblood
.mob Witherbark Hideskinner
.mob Witherbark Zealot
.mob Witherbark Scalper
step
.goto The Hinterlands,14.17,45.33,25,0
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗拉加尔|r
.turnin 2880 >>交任务: |cRXP_FRIENDLY_巨魔部族项链|r
.target Fraggar Thundermantle
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狮鹫管理员沙拉克·鹰斧|r
.turnin 2988 >>交任务: |cRXP_FRIENDLY_枯木巨魔的牢笼|r
.accept 2989 >>接任务: |cRXP_LOOT_祖尔祭坛|r
.target Gryphon Master Talonaxe
step
.goto The Hinterlands,48.814,68.387
>>|cRXP_WARN_清理好通往祖尔祭坛顶端的道路。在达到顶峰之前，请确保您的生命值已满！|r
>>|cRXP_WARN_跑到勘探地点，然后跳到一边躲避顶部的精英。在窗台上等待，直到你放下战斗。观看下面的视频以获取示例|r
.complete 2989,1 
.link https://www.youtube.com/watch?v=FtTS3K7T7Tw >>|cRXP_WARN_点击此处查看视频参考|r
step
#label Rye
.goto The Hinterlands,39.984,66.256
>>在地上偷走|cRXP_PICK_一袋黑麦|r
.complete 49,3 
step
.goto The Hinterlands,42.5,54.5,70,0
.goto The Hinterlands,33.5,58.1,70,0
.goto The Hinterlands,29.6,62.0,70,0
.goto The Hinterlands,27.7,54.5,70,0
.goto The Hinterlands,21.0,56.1,70,0
.goto The Hinterlands,20.0,48.2,70,0
.goto The Hinterlands,15.7,52.5,70,0
.goto The Hinterlands,28.1,58.1
>>在地上掠夺|cRXP_OOT_Wildkin羽毛|r
>>|cRXP_WARN_这些散落在整个腹地的地面上|r
.complete 3661,1 
step
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狮鹫管理员沙拉克·鹰斧|r
.turnin 2989 >>交任务: |cRXP_FRIENDLY_祖尔祭坛|r
.accept 2990 >>接任务: |cRXP_WARN_萨迪斯·格希德|r
.target Gryphon Master Talonaxe
step
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈斯鲁姆|r
.fly Ironforge >>飞往铁炉堡
.target Guthrum Thunderfist
.zoneskip The Hinterlands,1
step
.dungeon Ulda
.goto Ironforge,74.645,11.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员塔伯斯·雷矛|r
.accept 2398 >>接任务: |cRXP_WARN_失踪的矮人|r
.target Prospector Stormpike
step
.dungeon Ulda
.goto Ironforge,74.179,9.371
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗姆·粗臂|r
.accept 1360 >>接任务: |cRXP_LOOT_失而复得|r
.target Krom Stoutarm
step << Gnome !Warlock 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_宾吉·羽哨|r, |cRXP_FRIENDLY_米利·羽哨|r
.train 10907 >>列车|T132247:0|t[机械手驾驶]
.goto Dun Morogh,49.148,48.126
.vendor >>|cRXP_BUY_BUY a|r|T132247:0|t[|cFF0070FF机械手|r]
.goto Dun Morogh,49.123,47.956
.money <90
.skill riding,75,1
.target Binjy Featherwhistle
.target Milli Featherwhistle
step << Dwarf !Paladin 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维隆·冻石|r, |cRXP_FRIENDLY_奥萨姆·铁角|r
.vendor >>|cRXP_BUY_BUY a|r|T132248:0|t[|cFF0070FFRam|r]
.goto Dun Morogh,63.467,50.557
.train 826 >>火车|T132248:0|t[骑公羊]
.goto Dun Morogh,63.944,50.095
.money <90
.skill riding,75,1
.target Veron Amberstill
.target Ultham Ironhorn
step << !Druid
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_朱莉·雷线|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷格努斯·雷石|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,26.295,6.752 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >>训练你的职业技能
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Juli Stormkettle << Mage
.target Brandur Ironhammer << Paladin
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Jubahl Corpseseeker
step
#ah
#completewith start
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_从拍卖行购买以下物品。这一步是可选的，如果你有物品，你可以完成一些额外的任务|r
>>|T134800:0|t[Frost Oil]
>>|T134377:0|t[Gyrochronatom]|cRXP_WARN_（除非你有|r|T134800:0|t[Frost Oil]|cRXP_WARN_，否则不要买这个）|r
>>|T132606:0|t[花纹青铜手镯]|cRXP_WARN_
>>|T134831:0|t[治疗药剂]|cRXP_WARN_and|r|T134798:0|t[Lesser Invisibility Potion]|cRXP-WARN_
.collect 3829,1,713,1 
.collect 4389,1,714,1 
.collect 2868,1,716,1 
.collect 929,1,715,1 
.collect 3823,1,715,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.bankwithdraw 4306 >>从您的银行提取以下项目：
>>15|T132905:0|t[丝绸]（如果你有）
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.bankdeposit 740,10819,9468 >>从您的银行存款以下项目：
>>|T134059:0|t[一袋黑麦] 
>>|T132927:0|t[Wildkin Feather] 
>>|T135992:0|t[尖喙的羽毛] 
.target Bailey Stonemantle
step
#ah
#completewith start
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_从拍卖行购买以下物品|r
>>|T132905:0|t[丝绸]
.collect 4306,15,4449,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#label start
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.501,47.742
.fly Loch Modan >>飞往莫丹湖
.target Gryth Thurden
.zoneskip Ironforge,1
step
.dungeon Ulda
.isQuestTurnedIn 2500 
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加克|r
.accept 17 >>接任务: |cRXP_LOOT_奥达曼的蘑菇|r
.target Ghak Healtouch
step
.dungeon Ulda
.isQuestTurnedIn 739 
.goto Loch Modan,65.93,65.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员基恩萨·铁环|r
.accept 704 >>接任务: |cRXP_LOOT_阿戈莫德的命运|r
.target Prospector Ironband
step
#completewith RockEle
.goto Loch Modan,47.04,79.27,0
.goto Loch Modan,46.71,76.90,65,0
.goto Badlands,49.23,7.80
.zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
step 
.dungeon Ulda
.goto Badlands,53.027,33.944
>>单击地面上的|cRXP_PICK_Crumpled Map|r
.accept 720 >>接任务: |cRXP_LOOT_一线希望|r
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员雷杜尔|r
.turnin 720 >>交任务: |cRXP_FRIENDLY_一线希望|r
.accept 721 >>接任务: |cRXP_LOOT_一线希望|r
.goto Badlands,53.421,43.393
.target Prospector Ryedol
step
.goto Badlands,61.939,54.260
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加瑞克|r
.accept 732 >>接任务: |cRXP_LOOT_大地的震颤|r
.target Garek
step
.loop 60,Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
>>杀死|cRXP_ENEMY_Boss Tho'grun|r。掠夺他获得的|cRXP_Loot_地球符号|r
>>|cRXP_ENEMY_Boss Tho'grun|r|cRXP_WARN_trols跨越所有荒地|r
.complete 732,1 
.unitscan Boss Tho'grun
step
.goto Badlands,61.939,54.260
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加瑞克|r
.turnin 732 >>交任务: |cRXP_FRIENDLY_大地的震颤|r
.target Garek
step
.isQuestTurnedIn 687
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 692 >>接任务: |cRXP_LOOT_遗失的卷轴碎片|r
.target Theldurin the Lost
step
.dungeon Ulda
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 709 >>接任务: |cRXP_LOOT_化解灾难|r
.target Theldurin the Lost
step
.goto Badlands,54.66,83.91
>>杀死|cRXP_ENEMY_Enrared Rock Elements|r。掠夺他们的|cRXX_Loot_Sollo碎片|r
.complete 692,1
.complete 692,2
.complete 692,3
.isOnQuest 692
.mob Enraged Rock Elemental
step
.goto Badlands,51.386,76.874
.target Theldurin the Lost
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.turnin 692 >>交任务: |cRXP_FRIENDLY_遗失的卷轴碎片|r
.isOnQuest 692
step
#label RockEle
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.target Lotwil Veriatus
.accept 712 >>接任务: |cRXP_LOOT_研究石元素|r
step
.dungeon Ulda
#completewith LFGUlda
+完成此任务后，您将运行Uldaman。现在就开始为乌尔达曼寻找团队
step
.goto Badlands,4.33,77.75,70,0
.goto Badlands,2.70,81.25,50,0
.goto Badlands,14.68,89.49,70,0
.goto Badlands,2.70,81.25
>>杀死|cRXP_ENEMY_Greater Rock Elements|r。掠夺他们的|cRXX_Loot_Bracers|r
.complete 712,1 
.mob Greater Rock Elemental
step
.goto Badlands,25.948,44.868
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 712 >>交任务: |cRXP_FRIENDLY_研究石元素|r
step
#optional
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.target Lotwil Veriatus
.accept 713 >>接任务: |cRXP_WARN_至关重要的冷却剂|r
.turnin 713 >>交任务: |cRXP_FRIENDLY_至关重要的冷却剂|r
.itemcount 3829,1
step
#optional
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.target Lotwil Veriatus
.accept 714 >>接任务: |cRXP_WARN_发条式什么什么仪|r
.turnin 714 >>交任务: |cRXP_FRIENDLY_发条式什么什么仪|r
.itemcount 4389,1
.isQuestTurnedIn 713
step
#optional
.isQuestTurnedIn 714
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.target Lotwil Veriatus
.accept 734 >>接任务: |cRXP_WARN_不祥的感觉|r
step
#optional
.isQuestTurnedIn 714
.goto Badlands,25.82,44.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢希恩·枪穗|r
.turnin 734 >>交任务: |cRXP_FRIENDLY_不祥的感觉|r
.target Lucien Tosselwrench
.accept 777 >>接任务: |cRXP_WARN_不祥的感觉|r
step
#optional
.isQuestTurnedIn 714
.target Lucien Tosselwrench
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢希恩·枪穗|r
.accept 716 >>接任务: |cRXP_WARN_有备无患|r
.turnin 716 >>交任务: |cRXP_FRIENDLY_有备无患|r
.itemcount 2868,1
step
#optional
.isQuestTurnedIn 714
.target Lucien Tosselwrench
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢希恩·枪穗|r
.accept 715 >>接任务: |cRXP_WARN_卢希恩的药水|r
.turnin 715 >>交任务: |cRXP_FRIENDLY_卢希恩的药水|r
.itemcount 3823,1
.itemcount 929,1
step
#optional
.isQuestTurnedIn 714
.goto Badlands,25.948,44.868
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 777 >>交任务: |cRXP_FRIENDLY_不祥的感觉|r
.target Lotwil Veriatus
.accept 778 >>接任务: |cRXP_WARN_不祥的感觉|r
step
#optional
.isQuestTurnedIn 714
.goto Badlands,26.07,46.69
>>杀死|cRXP_ENEMY_Fam'Retor守护者|r。掠夺它的|cRXP_Loot_枷锁|r
.complete 778,1 
.mob Fam'retor Guardian
step
#optional
#label LFGUlda
.isQuestTurnedIn 714
.goto Badlands,25.948,44.868
.target Lotwil Veriatus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 778 >>交任务: |cRXP_FRIENDLY_不祥的感觉|r
step
.dungeon Ulda
.goto Badlands,4.0,80.6
.goto Badlands,15.4,88.6
.goto Badlands,11.0,88.0
.goto Badlands,44.70,12.09
.zone 1415 >>升级|cRXP_ENEMY_Ogres|r和|cRXX_ENEMY_Greater Rock Elements|r，同时为Uldaman寻找一组

step
.dungeon Ulda
#completewith HammertoeGrez
.goto 1415,54.46,57.78
.zone 1415 >>Travel to Uldaman
step
.dungeon Ulda
#completewith HammertoeGrez
>>掠夺地上的|cRXP_Loot_ Urns雕刻石|r
>>|cRXP_WARN_这只能在Uldaman之外完成|r
.complete 704,1 
.isOnQuest 704
step
.dungeon Ulda
#completewith HammertoeGrez
>>将|cRXP_Loot_Magenta真菌帽|r从地上偷走
>>|cRXP_WARN_这可以在Uldaman内部和外部完成|r
.complete 17,1 
.isOnQuest 17
step
.dungeon Ulda
.goto 1415,54.040,57.665
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁趾格雷兹|r
.turnin 721 >>交任务: |cRXP_FRIENDLY_一线希望|r
.accept 722 >>接任务: |cRXP_LOOT_铁趾的护符|r
.target Hammertoe Grez
step
.dungeon Ulda
.goto 1415,54.12,58.05,30,0
.goto 1415,54.09,58.21
>>杀死|cRXP_ENEMY_Magregan Deepshadow|r。掠夺他获得|cRXX_Loot_Hammertoe的护身符|r
>>|cRXP_WARN_这是在Uldaman之外完成的|r
.complete 722,1 
.mob Magregan Deepshadow
.isOnQuest 722
step
.dungeon Ulda
.goto 1415,54.140,58.246
>>打开|cRXP_PICK_Ancient胸脯|r。为龙的|cRXP_Loot_Tablet|r掠夺
>>|cRXP_WARN_这是在Uldaman之外完成的|r
.complete 709,1 
.isOnQuest 709
step
.dungeon Ulda
.goto 1415,53.874,58.577
>>地面上的战利品|cRXP_Loot_Krom Stoutarm的宝藏|r
>>|cRXP_WARN_这是在Uldaman之外完成的|r
.complete 1360,1 
.isOnQuest 1360
step
.dungeon Ulda
#label HammertoeGrez
.goto 1415,54.040,57.665
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁趾格雷兹|r
.turnin 722 >>交任务: |cRXP_FRIENDLY_铁趾的护符|r
.accept 723 >>接任务: |cRXP_LOOT_铁趾的遗愿|r
.target Hammertoe Grez
.isQuestTurnedIn 721
step
.dungeon Ulda
.goto 1415,53.85,57.81,55,0
.goto 1415,53.63,58.01,55,0
.goto 1415,54.09,58.03,55,0
.goto 1415,53.85,57.81
>>将|cRXP_Loot_ Urns雕刻石|r和|cRXP_Loot_品红菌帽|r洗劫一空
>>|cRXP_WARN_对|cRXP_LOOT_Carved Stone Urns |r进行优先级排序。这只能在Uldaman之外完成。您可以在里面完成|cRXP_OOT_Magenta Fungus Caps|r|r
.complete 704,1 
.complete 17,1 
.disablecheckbox
.isOnQuest 704
.isOnQuest 17
step
.dungeon Ulda
.goto 1415,53.85,57.81,55,0
.goto 1415,53.63,58.01,55,0
.goto 1415,54.09,58.03,55,0
.goto 1415,53.85,57.81
>>掠夺地上的|cRXP_Loot_ Urns雕刻石|r
>>|cRXP_WARN_这只能在Uldaman之外完成|r
.complete 704,1 
.isOnQuest 704

step
.dungeon Ulda
.goto 1415,53.850,57.641
.subzone 1337,2 >>Zone into Uldaman
step
.dungeon Ulda
#completewith HiddenChamber
>>将|cRXP_Loot_Magenta真菌帽|r从地上偷走
.complete 17,1 
.isOnQuest 17
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尔洛戈|r
.turnin 2398 >>交任务: |cRXP_FRIENDLY_失踪的矮人|r
.accept 2240 >>接任务: |cRXP_WARN_密室|r
.target Baelog
.isOnQuest 2398
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尔洛戈|r
.accept 2240 >>接任务: |cRXP_WARN_密室|r
.target Baelog
step
.dungeon Ulda
#completewith next
>>打开|cRXP_PICK_Baelog的胸脯|r。为|T133276:0|t[|cRXP-Loot_Gniikiv奖章|r]而掠夺它
>>杀死|cRXP_ENEMY_Revelosh|r。掠夺他|T135225:0|t[|cRXP_Loot_Tool之轴|r]
>>|cRXP_WARN_请注意，其他成员可以掠夺这些物品，然后将它们组合起来创建|r|T135138:0|t[史前史工作人员]|cRXP_WARN_。小组中只有一个人需要这样做|r
.collect 7740,1,2240,1 
.collect 7741,1,2240,1 
.use 7740 
.use 7741 
.mob Revelosh
.isOnQuest 2240
step
.dungeon Ulda
#label HiddenChamber
>>|cRXP_WARN_使用|r|T133276:0|t[|cRXP_LOOT_Gniikiv Medallion |r]|cRXP_WARN_and|r|T135225:0|t[| cRXP_OOT_Tsol轴|r]| cRXD_WARN_将它们组合成|r|T235138:0|t[史前史工作人员]
>>|cRXP_WARN_使用|r|T135138:0|t[史前史杖]|cRXP_WARN_on the |cRX_PICK_Keystone|r来召唤|r|cRXP_ENEMY_Ironaya|r
>>杀死|cRXP_ENEMY_Ironaya|r。|cRXP-WARN_Run进入她之后的密室|r
.use 7740 
.use 7741 
.use 7733 
.complete 2240,1 
.isOnQuest 2240
step
.dungeon Ulda
>>将|cRXP_Loot_Magenta真菌帽|r从地上偷走
.complete 17,1 
.isOnQuest 17
step
.dungeon Ulda
>>杀死|cRXP_ENEMY_Archaedas|r
>>单击|cRXP_PICK_挪威的光盘|r
.accept 2278 >>接任务: |cRXP_WARN_白金圆盘|r
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺甘农的看门人|r
.complete 2278,1 
.skipgossip
.target Lore Keeper of Norgannon
step
.dungeon Ulda
>>单击|cRXP_PICK_挪威的光盘|r
.turnin 2278 >>交任务: |cRXP_FRIENDLY_白金圆盘|r
.accept 2279 >>接任务: |cRXP_WARN_白金圆盘|r
step
.dungeon Ulda
>>|cRXP_WARN_使用|T133289:0|t[|cRXP_LOOT_破碎项链|r]开始任务|r
.accept 2198 >>接任务: |cRXP_WARN_破碎的项链|r
.use 7666 
.itemcount 7666,1 
step
.dungeon Ulda
+作为一个团队，从乌尔达曼出发，在荒原上进行任务。最近的出口是Uldaman后门
.zoneskip Badlands
step
.dungeon Ulda
.goto Badlands,51.386,76.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.turnin 709 >>交任务: |cRXP_FRIENDLY_化解灾难|r
.target Theldurin the Lost
.isQuestComplete 709
step
.dungeon Ulda
#label HammertoeGrez
.goto Badlands,53.421,43.393
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员雷杜尔|r
.turnin 723 >>交任务: |cRXP_FRIENDLY_铁趾的遗愿|r
.accept 724 >>接任务: |cRXP_LOOT_铁趾的遗愿|r
.target Prospector Ryedol
.isQuestTurnedIn 721
step
.dungeon Ulda
#completewith UldaLoch
.goto Badlands,49.52,9.83,0
.goto Loch Modan,46.78,78.09
.zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
step
.dungeon Ulda
.goto Loch Modan,65.93,65.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员基恩萨·铁环|r
.turnin 704 >>交任务: |cRXP_FRIENDLY_阿戈莫德的命运|r
.target Prospector Ironband
.isQuestComplete 704
step
.dungeon Ulda
.goto Loch Modan,36.50,48.35,15,0
.goto Loch Modan,37.067,49.379
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加克|r
.turnin 17 >>交任务: |cRXP_FRIENDLY_奥达曼的蘑菇|r
.target Ghak Healtouch
.isQuestComplete 17
step
.dungeon Ulda
#label UldaLoch
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
.fly Ironforge >>飞往铁炉堡
.target Thorgrum Borrelson
step
.dungeon Ulda
.goto Ironforge,69.930,18.548
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_资深探险家麦格拉斯|r
.turnin 2279 >>交任务: |cRXP_FRIENDLY_白金圆盘|r
.accept 2439 >>接任务: |cRXP_WARN_白金圆盘|r
.target High Explorer Magellas
.isQuestTurnedIn 2278
step
.dungeon Ulda
.goto Ironforge,74.645,11.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员塔伯斯·雷矛|r
.turnin 2240 >>交任务: |cRXP_FRIENDLY_密室|r
.target Prospector Stormpike
.isQuestComplete 2240
step
.dungeon Ulda
.goto Ironforge,74.179,9.371
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗姆·粗臂|r
.turnin 1360 >>交任务: |cRXP_FRIENDLY_失而复得|r
.target Krom Stoutarm
.isQuestComplete 1360
step
.dungeon Ulda
.group 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史学家卡尼克|r, |cRXP_FRIENDLY_顾问贝尔格拉姆|r
.turnin 724 >>交任务: |cRXP_FRIENDLY_铁趾的遗愿|r
.accept 725 >>接任务: |cRXP_LOOT_亡者的警告|r
.goto Ironforge,77.539,11.834
.turnin 725 >>交任务: |cRXP_FRIENDLY_亡者的警告|r
.accept 726 >>接任务: |cRXP_LOOT_亡者的警告|r
.goto Ironforge,77.343,9.714
.turnin 726 >>交任务: |cRXP_FRIENDLY_亡者的警告|r
.accept 762 >>接任务: |cRXP_LOOT_邪恶的使者|r
.goto Ironforge,77.539,11.834
.target Historian Karnik
.target Advisor Belgrum
.isQuestTurnedIn 721
step
.dungeon Ulda
.solo 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史学家卡尼克|r, |cRXP_FRIENDLY_顾问贝尔格拉姆|r
.turnin 724 >>交任务: |cRXP_FRIENDLY_铁趾的遗愿|r
.accept 725 >>接任务: |cRXP_LOOT_亡者的警告|r
.goto Ironforge,77.539,11.834
.turnin 725 >>交任务: |cRXP_FRIENDLY_亡者的警告|r
.accept 726 >>接任务: |cRXP_LOOT_亡者的警告|r
.goto Ironforge,77.343,9.714
.turnin 726 >>交任务: |cRXP_FRIENDLY_亡者的警告|r
.goto Ironforge,77.539,11.834
.target Historian Karnik
.target Advisor Belgrum
.isQuestTurnedIn 721
step
.dungeon Ulda
.goto Ironforge,33.874,59.136
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁尼塔·石衣|r
.turnin 2439 >>交任务: |cRXP_FRIENDLY_白金圆盘|r
.target Dinita Stonemantle
.isQuestTurnedIn 2278
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r
.goto Ironforge,36.377,3.614
.turnin 2198 >>交任务: |cRXP_FRIENDLY_破碎的项链|r
.target Talvash del Kissel
.isOnQuest 2198
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r
.goto Ironforge,36.377,3.614
.accept 2199 >>接任务: |cRXP_LOOT_昂贵的知识|r
.target Talvash del Kissel
.isQuestTurnedIn 2198
step
.dungeon Ulda
.goto Ironforge,36.377,3.614
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔瓦斯德·基瑟尔|r
>>将5|T133215:0|t[银条]带到|cRXP_FRIENDLY_Talwash del Kissel|r
>>|cRXP_WARN_如果您无法获得它们，请放弃此任务|r
.complete 2199,1 
.turnin 2199 >>交任务: |cRXP_FRIENDLY_昂贵的知识|r
.target Talvash del Kissel
.isOnQuest 2199
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.501,47.742
.fly Loch Modan >>飞往莫丹湖
.target Gryth Thurden
.zoneskip Ironforge,1
step
.dungeon Ulda
.abandon 2199 >>为代价抛弃Lore
step
.dungeon Ulda
.goto Badlands,49.23,7.80
.zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
step
.dungeon Ulda
.group
#completewith next
.goto Badlands,42.87,29.77,60 >>Enter Angor Fortress
step
.dungeon Ulda
.group 2
.isOnQuest 762
.goto Badlands,41.92,26.26,20,0
.goto Badlands,42.10,28.89
>>杀死|cRXP_ENEMY_Ambassador Infernus|r。掠夺他|cRXD_Loot_ AmbassadorInfernus的手镯|r
>>|cRXP_ENEMY_Infernus|r|cRXP_WARN_i大使在下层|r
.complete 762,1 
.mob Ambassador Infernus
step
#completewith next
.goto Badlands,1.02,63.09,0
.goto Searing Gorge,76.28,56.39
.zone Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
step
.goto Searing Gorge,65.592,62.172
>>单击|cRXP_PICK_Wooden Outhouse|r
.accept 4449 >>接任务: |cRXP_LOOT_被锁起来的矮人|r
step
.goto Searing Gorge,63.1,60.9
>>杀死|cRXP_ENEMY_Dark Iron地质学家|r。如果你还需要更多，就掠夺他们的|cRXD_Loot_Silk Cloth|r
.complete 4449,1 
.collect 4306,15 
.mob Dark Iron Geologist
step
.goto Searing Gorge,65.592,62.172
>>单击|cRXP_PICK_Wooden Outhouse|r
.turnin 4449 >>交任务: |cRXP_FRIENDLY_被锁起来的矮人|r
.accept 4450 >>接任务: |cRXP_WARN_塔纳利斯的账本|r
step
.goto Searing Gorge,65.505,62.184
>>将|cRXP_Loot_Goodsteel Ledger|r洗劫一空
.complete 4450,1 
step
#completewith next
.goto Searing Gorge,65.93,36.83,0
.goto Searing Gorge,65.4,48.4,0
.goto Searing Gorge,62.40,70.03,0
>>杀死|cRXP_ENEMY_玻璃网蜘蛛|r。掠夺它们的|cRXX_Loot_实心水晶腿轴|r
>>|cRXP_WARN_优先完成下一步护送任务。如果他不在，在等待时杀死|cRXP_ENEMY_Glasswab蜘蛛|r|r
.complete 4450,2 
.mob Glassweb Spider
step
.goto Searing Gorge,63.879,60.978
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜里奥斯·裂石|r
>>|cRXP_WARN_这将开始护送。在接受此任务之前，先清除坑的周围区域|r
.accept 3367 >>接任务: |cRXP_LOOT_苏塔拉之石|r
.target Dorius Stonetender
step
#completewith EscortDorius
.goto Searing Gorge,65.93,36.83,0
.goto Searing Gorge,65.4,48.4,0
.goto Searing Gorge,62.40,70.03,0
>>杀死|cRXP_ENEMY_玻璃网蜘蛛|r。掠夺它们的|cRXX_Loot_实心水晶腿轴|r
.complete 4450,2 
.mob Glassweb Spider
step
.goto Searing Gorge,74.448,19.287
>>护送|cRXP_FRIENDLY_Dorius|r前往莫丹湖隘口
.complete 3367,1 
.target Dorius Stonetender
step
#label EscortDorius
.goto Searing Gorge,74.448,19.287
>>单击地面上的|cRXP_PICK_Singed Letter|r
>>|cRXP_WARN_如果|cRXP_PICK_Singed Letter|r尚未生成，您将需要放弃Suntara Stones并再次完成护送。这是魔兽经典的一个bug|r
.turnin 3367 >>交任务: |cRXP_FRIENDLY_苏塔拉之石|r
.accept 3368 >>接任务: |cRXP_LOOT_苏塔拉之石|r
step
.goto Searing Gorge,61.16,70.43,70,0
.goto Searing Gorge,65.4,48.4,50,0
.goto Searing Gorge,65.93,36.83,50,0
.goto Searing Gorge,65.4,48.4,50,0
.goto Searing Gorge,61.16,70.43,70,0
.goto Searing Gorge,65.4,48.4
>>杀死|cRXP_ENEMY_玻璃网蜘蛛|r。掠夺它们的|cRXX_Loot_实心水晶腿轴|r
.complete 4450,2 
.mob Glassweb Spider
step
.goto Searing Gorge,31.70,34.18,30,0
.goto Searing Gorge,34.31,26.41
.subzone 1446 >>Travel to Thorium Point
.zoneskip Searing Gorge,1
step
.dungeon Ulda
.isQuestComplete 762
.goto Searing Gorge,37.934,30.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰尼·瑞德|r
.fp Thorium Point >>获取钍点飞行路径
.fly Ironforge >>飞往铁炉堡 << !Mage
.target Lanie Reed
.zoneskip Searing Gorge,1
step << Mage
.dungeon Ulda
.isQuestComplete 762
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
.zoneskip Searing Gorge,1
step
.dungeon Ulda
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_资深探险家麦格拉斯|r, |cRXP_FRIENDLY_史学家卡尼克|r
.accept 2963 >>接任务: |cRXP_WARN_奥丹姆的线索|r
.goto Ironforge,69.930,18.548
.turnin 2963 >>交任务: |cRXP_FRIENDLY_奥丹姆的线索|r
.accept 2946 >>接任务: |cRXP_WARN_拭目以待|r
.goto Ironforge,77.539,11.834
.target High Explorer Magellas
.target Historian Karnik
.isQuestTurnedIn 2278
step
.dungeon Ulda
.isQuestComplete 762
.goto Ironforge,77.343,9.714
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_顾问贝尔格拉姆|r
.turnin 762 >>交任务: |cRXP_FRIENDLY_邪恶的使者|r
.target Advisor Belgrum
step
.dungeon Ulda
.isQuestComplete 3368
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索里奥斯馆长|r
>>|cRXP_FRIENDLY_策展人Thorius|r|cRXP_WARN_穿过探索者大厅|r
.turnin 3368 >>交任务: |cRXP_FRIENDLY_苏塔拉之石|r
.target Curator Thorius
.zoneskip Ironforge,1
step << !Mage
.dungeon Ulda
.isQuestTurnedIn 762
.goto Ironforge,78.00,52.00,5,0
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step
.goto Searing Gorge,37.934,30.861
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰尼·瑞德|r
.fp Thorium Point >>获取钍点飞行路径
.fly Stormwind >>飞到暴风城 << !Mage
.target Lanie Reed
.zoneskip Searing Gorge,1
step << Mage
#completewith next
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step
.goto Stormwind City,64.328,20.627
.target Brohann Caskbelly
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布罗哈恩·铁桶|r
.turnin 1469 >>交任务: |cRXP_FRIENDLY_拉普索迪的故事|r
step
.dungeon Ulda
.abandon 762 >>抛弃邪恶大使
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankwithdraw 738,739,740,11463,8705 >>从您的银行提取以下项目：
>>|T134058:0|t[一袋大麦] 
>>|T134059:0|t[一袋玉米] 
>>|T134059:0|t[一袋黑麦] 
>>|T133628:0|t[未送达包裹] 
>>|T132836:0|t[OOX-22/FE遇险信标]（如果你有） 
.target Newton Burnside
step
.goto Stormwind City,57.06,73.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_牛顿·伯恩赛德|r
.bankdeposit 11725,11727,10443 >>将以下项目存入您的银行：
>>|T134321:0|t[实心水晶支轴] 
>>|T133741:0|t[Goodsteel Ledger] 
>>|T133471:0|t[单音字母]（如果你有） 
.target Newton Burnside
step
#completewith next
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
>>|cRXP_BUY_购买a|r|T133222:0|t[纯银条]|cRXP_BUY_和2|r|T134823:0|t[坚丹]
.collect 6037,1,50,1 
.collect 3825,2,3842,1 
>>|cRXP_WARN_如果您无法获得它们，请跳过此步骤|r
.target Auctioneer Jaxon
step
.goto Stormwind City,66.27,62.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Westfall >>飞往威斯特福尔
.target Dungar Longdrink
.zoneskip Stormwind City,1
step
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞姆·雷酒|r
.turnin 49 >>交任务: |cRXP_FRIENDLY_琥珀酒|r
step
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞姆·雷酒|r
.accept 50 >>接任务: |cRXP_WARN_琥珀酒|r
.turnin 50 >>交任务: |cRXP_FRIENDLY_琥珀酒|r
.itemcount 6037,1
step
.isQuestTurnedIn 50
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞姆·雷酒|r
.accept 51 >>接任务: |cRXP_WARN_琥珀酒|r
step
#completewith Egg
.hs >>羽门寨之心
step
.goto Feralas,31.828,45.611
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安吉拉斯·月风|r
.target Angelas Moonbreeze
.accept 3445 >>接任务: |cRXP_LOOT_沉没的神庙|r
step
.goto Feralas,26.6,52.0,70,0
.goto Feralas,26.2,55.2,70,0
.goto Feralas,29.6,53.6,70,0
.goto Feralas,29.0,50.4,70,0
.goto Feralas,26.6,53.4
.xp 47 >>升级到47级
>>杀死|cRXP_ENEMY_Hatecrest-Nagas|r，直到您掠夺|T132836:0|t[|cRXP-loot_OX-22/FE遇险信标|r]
.use 8705 >>|cRXP_WARN_使用|T132836:0|t[|cRXP_OOT_OOX-22/FE遇险信标|r]开始任务|r
>>|cRXP_WARN_如果你47级时没有找到，跳过它|r
.collect 8705,1,2766 
.disablecheckbox
.accept 2766 >>接任务: |cRXP_LOOT_寻找OOX-22/FE！|r
.disablecheckbox
.mob Hatecrest Screamer
.mob Hatecrest Wave Rider
.mob Hatecrest Warrior
.mob Hatecrest Siren
step
.use 8705 >>|cRXP_WARN_使用|T132836:0|t[|cRXP_OOT_OOX-22/FE遇险信标|r]开始任务|r
.collect 8705,1,2766 
.accept 2766 >>接任务: |cRXP_LOOT_寻找OOX-22/FE！|r
.itemcount 8705,1 
step
#completewith Egg
.goto Feralas,47.3,44.7,85 >>Swim to the mainland
step
.isOnQuest 2766
.goto Feralas,55.44,56.45,40,0
.goto Feralas,53.353,55.696
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-22/FE|r
>>|cRXP_WARN_除非你在一个小组中，否则不要接受后续行动并尝试护送|r
.turnin 2766 >>交任务: |cRXP_FRIENDLY_寻找OOX-22/FE！|r
.target Homing Robot OOX-22/FE
step
.isQuestTurnedIn 2766
.group 2
.goto Feralas,53.353,55.696
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-22/FE|r
.accept 2767,1 >>接任务: |cRXP_LOOT_拯救OOX-22/FE！|r
.target Homing Robot OOX-22/FE
step
.isOnQuest 2767
.group 2
.goto Feralas,45.67,43.38
>>护送|cRXP_FRIENDLY_Homing Robot OOX-22/FE|r到安全地带
.complete 2767,1
.target Homing Robot OOX-22/FE
step
.line Feralas,55.86,67.93,54.90,67.20,54.14,67.90,54.14,68.91,54.28,70.94,54.14,71.54,54.91,73.50,55.30,73.98,55.92,74.67,56.84,74.84,55.92,74.67,55.30,73.98,54.91,73.50,54.14,71.54,54.28,70.94,54.14,68.91,54.14,67.90,54.90,67.20,55.86,67.93,
.goto Feralas,55.86,67.93,60,0
.goto Feralas,54.90,67.20,60,0
.goto Feralas,54.14,67.90,60,0
.goto Feralas,54.14,68.91,60,0
.goto Feralas,54.28,70.94,60,0
.goto Feralas,54.14,71.54,60,0
.goto Feralas,54.91,73.50,60,0
.goto Feralas,55.30,73.98,60,0
.goto Feralas,55.92,74.67,60,0
.goto Feralas,56.84,74.84,60,0
.goto Feralas,55.92,74.67,60,0
.goto Feralas,55.30,73.98,60,0
.goto Feralas,54.91,73.50,60,0
.goto Feralas,54.14,71.54,60,0
.goto Feralas,54.28,70.94,60,0
.goto Feralas,54.14,68.91,60,0
.goto Feralas,54.14,67.90,60,0
.goto Feralas,54.90,67.20,60,0
.goto Feralas,55.86,67.93,60,0
.goto Feralas,54.14,71.54
>>杀死一个|cRXP_ENEMY_Cursed Sycamore |r。掠夺它的|cRXP_Loot_Symore分支|r
>>|cRXP_WARN_地图上标记了|cRXP_ENEMY_Cursed Sycamore |r巡逻路径|r
>>|cRXP_WARN_如果找不到|cRXP_ENEMY_Cursed Sycamore |r，而是看到一个|cRXD_ENEMY_Wandering Forest Walker|r，请杀死它，然后等待|cRXP_ENEMY_Cursed Sycamore|r出现。一次只能有一个活着的|r
.complete 51,1 
.isOnQuest 51
.unitscan Cursed Sycamore
.unitscan Wandering Forest Walker
step
#label Egg
.goto Feralas,53.657,74.365,0
.goto Feralas,56.653,75.892,0
.goto Feralas,56.708,76.724,0
.goto Feralas,55.906,76.035,0
.goto Feralas,53.657,74.365,10,0
.goto Feralas,56.653,75.892,10,0
.goto Feralas,56.708,76.724,10,0
.goto Feralas,55.906,76.035,0
>>从巢穴中偷走一个|cRXP_Loot_Hippgryph蛋|r
.collect 8564,1,2741,1 
step
.goto Feralas,65.945,45.651
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛达尔·月纹|r
.accept 3841 >>接任务: |cRXP_WARN_领养孤儿|r
.target Kindal Moonweaver
step
.goto Feralas,89.634,46.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法芬德尔|r
.turnin 4281 >>交任务: |cRXP_FRIENDLY_萨兰纳尔的货物|r
.use 11463 
.target Falfindel Waywarder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛希亚娜|r
.goto Feralas,89.497,45.853
.fly Tanaris >>前往: 塔纳利斯
.target Thyssiana
.zoneskip Feralas,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 47-48 Tanaris
#next 48-49 STV/Hinterlands II
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 9329 >>从您的银行提取以下项目：
>>|T133469:0|t[简记] 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 742,11102 >>将以下项目存入您的银行：
>>|T133749:0|t[A Sycamore Branch]（如果你有） 
>>|T132833:0|t[未孵化的雪碧飞镖蛋] 
.target Gimblethorn
step
.goto Tanaris,52.462,28.514
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r
.accept 1691 >>接任务: |cRXP_LOOT_废土的公正|r
step
.goto Tanaris,52.51,27.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.home >>将您的炉石设置为Gadgetzan
.target Innkeeper Fizzgrimble
step
.goto Tanaris,52.387,26.968
>>单击地面上的|cRXP_PICK_Egg-O-Matic|r
.turnin 2741 >>交任务: |cRXP_FRIENDLY_超级测蛋器|r
.itemcount 8564,1 
step
+打开您的|T132594:0|t[蛋箱]
.itemcount 8647,1 
.use 8647
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克格尔·曲藤|r
.turnin 2941 >>交任务: |cRXP_FRIENDLY_海龟照片|r
.target Curgle Cranklehop
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
.goto Tanaris,51.835,27.038
>>单击|cRXP_PICK_Wanted海报|r
.accept 2781 >>接任务: |cRXP_LOOT_通缉：卡利夫·斯科比斯汀|r
.accept 2875 >>接任务: |cRXP_LOOT_通缉：安德雷·费尔比德|r
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 992 >>接任务: |cRXP_LOOT_加基森水业公司|r
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,39.016,29.244
.use 8584 >>|cRXP_WARN_使用|r|T134867:0|t[Untaped Dowsing Widget]|cRXP_WARN_at the Sandsory Watch pond。避开途中的精英|cRXP_ENEMY_Sandfury巨魔|r|r
>>|cRXP_WARN_一旦您填充|r|T134867:0|t[未覆盖的Dowsing Widget]|cRXP_WARN_，两个级别47/48|cRXP_ENEMY_Centipar隧道器|r将生成。你可以杀死它们，也可以逃跑重置它们|r
.complete 992,1 
.mob Centipaar Tunneler
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 992 >>交任务: |cRXP_FRIENDLY_加基森水业公司|r
.target Senior Surveyor Fizzledowser
step
#label tStart
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3445 >>交任务: |cRXP_FRIENDLY_沉没的神庙|r
.accept 3444 >>接任务: |cRXP_LOOT_石环|r
.accept 3161 >>接任务: |cRXP_LOOT_加兹瑞迪安|r
.target Marvon Rivetseeker
step
#completewith next
.goto Tanaris,58.75,39.34,0
.goto Tanaris,58.72,36.54,0
.goto Tanaris,60.07,37.31,0
.goto Tanaris,60.76,32.67,0
.goto Tanaris,63.57,37.80,0
.goto Tanaris,63.89,39.86,0
.goto Tanaris,65.03,39.49,0
.goto Tanaris,65.41,36.62,0
>>杀死|cRXP_ENEMY_Wastwark盗贼|r、|cRXP_ENEMY_wastwark刺客|r和|cRXX_ENEMY_WAStwark阴影法师|r
>>|cRXP_ENEMY_Wastrander盗贼|r|cRXP_WARN_are in |r|T132320:0|t[潜行]
.complete 1691,1 
.complete 1691,2 
.complete 1691,3 
.mob Wastewander Rogue
.mob Wastewander Assassin
.mob Wastewander Shadow Mage
step
.goto Tanaris,59.4,41.1,60,0
.goto Tanaris,61.8,38.2,60,0
.goto Tanaris,63.6,32.0,60,0
.goto Tanaris,61.0,35.9,60,0
.goto Tanaris,58.9,39.0,60,0
.goto Tanaris,63.6,32.0,60,0
.goto Tanaris,58.9,39.0,60,0
.goto Tanaris,60.85,37.82
>>杀死|cRXP_ENEMY_Caliph Scorpasting|r。掠夺他的|cRXP_Loot_Head |r
>>|cRXP_ENEMY_Caliph Scorpidsting|r|cRXP_WARN_穿越水泉场，并伴有2|r|cRXP_ENEMY_Wastwark盗贼|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
.goto Tanaris,58.75,39.34,60,0
.goto Tanaris,58.72,36.54,60,0
.goto Tanaris,60.07,37.31,60,0
.goto Tanaris,60.76,32.67,60,0
.goto Tanaris,63.57,37.80,60,0
.goto Tanaris,63.89,39.86,60,0
.goto Tanaris,65.03,39.49,60,0
.goto Tanaris,65.41,36.62
>>杀死|cRXP_ENEMY_Wastwark盗贼|r、|cRXP_ENEMY_wastwark刺客|r和|cRXX_ENEMY_WAStwark阴影法师|r
.complete 1691,1 
.complete 1691,2 
.complete 1691,3 
.mob Wastewander Rogue
.mob Wastewander Assassin
.mob Wastewander Shadow Mage
step
#completewith next
.goto Tanaris,67.058,23.891
.subzone 977 >>前往Steamweidle港
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.turnin 3520 >>交任务: |cRXP_FRIENDLY_尖啸者的灵魂|r
.target Yeh'kinya
step
.goto Tanaris,66.560,22.265
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_傲慢的店主|r
.accept 8365 >>接任务: |cRXP_LOOT_海盗的帽子！|r
.target Haughty Modiste
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安全主管吉罗姆·比格维兹|r, |cRXP_FRIENDLY_斯杜雷|r
.accept 8366 >>接任务: |cRXP_LOOT_南海复仇|r
.goto Tanaris,67.058,23.891
.accept 2873 >>接任务: |cRXP_LOOT_斯杜雷的货物|r
.goto Tanaris,67.109,23.978
.target Security Chief Bilgewhizzle
.target Stoley
step
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >>前往Lost Rigger Cove
step
#completewith StoleyShip
>>杀死|cRXP_ENEMY_南海海盗|r，|cRXD_ENEMY_Southsea Freebooters |r，| cRXP__ENEMY_ Southsea Dock Workers |r和|cRXT_ENEMY_South sea Swashbucklers|r。掠夺他们的|cRXP_Loot_Prirate Hats|r和|132596:0|t[|cRXX_Loot_Pirator’s Footlocker|r]
>>|cRXP_WARN_打开|r|T132596:0|t[|cRXP_OOT_Pirate's Footlocker|r]|cRXD_WARN_直到找到|r|T134939:0|t[|cRXP_OOT_Ship Schedule|r]
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_Ship Schedule|r]启动任务|r
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
.complete 8365,1 
.collect 9250,1,2876 
.accept 2876 >>接任务: |cRXP_LOOT_船运时刻表|r
.use 9276 
.use 9250 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
#completewith StoleyShip
.goto Tanaris,73.37,47.14,0
>>杀死|cRXP_ENEMY_Andre Firebeard|r。掠夺他的|cRXX_Loot_Head|r
.complete 2875,1 
.mob Andre Firebeard
step
#label StoleyShip
.goto Tanaris,72.15,46.76
>>在房子的楼上旅行
>>打开|cRXP_PICK_Stolen Cargo|r。为|cRXP _Loot_Stoley的货物进行抢劫|r
.complete 2873,1 
step
#completewith next
>>杀死|cRXP_ENEMY_南海海盗|r，|cRXD_ENEMY_Southsea Freebooters |r，| cRXP__ENEMY_ Southsea Dock Workers |r和|cRXT_ENEMY_South sea Swashbucklers|r。掠夺他们的|cRXP_Loot_Prirate Hats|r和|132596:0|t[|cRXX_Loot_Pirator’s Footlocker|r]
>>|cRXP_WARN_打开|r|T132596:0|t[|cRXP_OOT_Pirate's Footlocker|r]|cRXD_WARN_直到找到|r|T134939:0|t[|cRXP_OOT_Ship Schedule|r]
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_Ship Schedule|r]启动任务|r
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
.complete 8365,1 
.collect 9250,1,2876 
.accept 2876 >>接任务: |cRXP_LOOT_船运时刻表|r
.use 9276 
.use 9250 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
.goto Tanaris,73.37,47.14
>>杀死|cRXP_ENEMY_Andre Firebeard|r。掠夺他的|cRXX_Loot_Head|r
.complete 2875,1 
.mob Andre Firebeard
step
>>杀死|cRXP_ENEMY_南海海盗|r，|cRXD_ENEMY_Southsea Freebooters |r，| cRXP__ENEMY_ Southsea Dock Workers |r和|cRXT_ENEMY_South sea Swashbucklers|r。掠夺他们的|cRXP_Loot_Prirate Hats|r和|132596:0|t[|cRXX_Loot_Pirator’s Footlocker|r]
>>|cRXP_WARN_打开|r|T132596:0|t[|cRXP_OOT_Pirate's Footlocker|r]|cRXD_WARN_直到找到|r|T134939:0|t[|cRXP_OOT_Ship Schedule|r]
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_Ship Schedule|r]启动任务|r
.complete 8366,1 
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92
.complete 8366,2 
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92
.complete 8366,3 
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73
.complete 8366,4 
.goto Tanaris,75.17,45.84
.complete 8365,1 
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92,70,0
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73,50,0
.goto Tanaris,75.17,45.84,60,0
.goto Tanaris,72.15,46.76
.collect 9250,1,2876 
.accept 2876 >>接任务: |cRXP_LOOT_船运时刻表|r
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92,70,0
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73,50,0
.goto Tanaris,75.17,45.84,60,0
.goto Tanaris,72.15,46.76
.use 9276 
.use 9250 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
.goto Tanaris,71.10,42.86,70,0
.goto Tanaris,71.33,46.05,70,0
.goto Tanaris,73.09,45.30,70,0
.goto Tanaris,74.17,46.28,70,0
.goto Tanaris,71.90,44.92,70,0
.goto Tanaris,73.76,47.79,65,0
.goto Tanaris,74.46,46.85,50,0
.goto Tanaris,74.62,47.73,50,0
.goto Tanaris,75.17,45.84,60,0
.goto Tanaris,72.15,46.76
.xp 48 >>升级到48级
>>杀死任何类型的|cRXP_ENEMY_南海海盗|r。掠夺它们以获得|T132836:0|t[|cRXD_OOT_OOX-17/TN遇险信标|r]
>>|cRXP_WARN_还不接受这个任务|r
>>|cRXP_WARN_如果你48级时没有找到，跳过它|r

.collect 8623,1,351 
.disablecheckbox

.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
#completewith SWP
.goto Tanaris,67.058,23.891
.subzone 977 >>前往Steamweidle港
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安全主管吉罗姆·比格维兹|r, |cRXP_FRIENDLY_斯杜雷|r
.turnin 8366 >>交任务: |cRXP_FRIENDLY_南海复仇|r
.turnin 2875 >>交任务: |cRXP_FRIENDLY_通缉：安德雷·费尔比德|r
.turnin 2876 >>交任务: |cRXP_FRIENDLY_船运时刻表|r
.goto Tanaris,67.058,23.891
.turnin 2873 >>交任务: |cRXP_FRIENDLY_斯杜雷的货物|r
.accept 2874 >>接任务: |cRXP_LOOT_给马克基雷的货物|r
.goto Tanaris,67.109,23.978
.target Security Chief Bilgewhizzle
.target Stoley
.itemcount 9250,1 
.use 9250 
step
#label SWP
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安全主管吉罗姆·比格维兹|r, |cRXP_FRIENDLY_斯杜雷|r
.turnin 8366 >>交任务: |cRXP_FRIENDLY_南海复仇|r
.turnin 2875 >>交任务: |cRXP_FRIENDLY_通缉：安德雷·费尔比德|r
.goto Tanaris,67.058,23.891
.turnin 2873 >>交任务: |cRXP_FRIENDLY_斯杜雷的货物|r
.accept 2874 >>接任务: |cRXP_LOOT_给马克基雷的货物|r
.goto Tanaris,67.109,23.978
.target Security Chief Bilgewhizzle
.target Stoley
step
.goto Tanaris,66.560,22.265
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_傲慢的店主|r
.turnin 8365 >>交任务: |cRXP_FRIENDLY_海盗的帽子！|r
.target Haughty Modiste
step
#completewith GadgetTurnins
.subzone 976 >>前往: |cRXP_PICK_塔纳利斯|r
step
.goto Tanaris,52.462,28.514
.target Chief Engineer Bilgewhizzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r
.turnin 1691 >>交任务: |cRXP_FRIENDLY_废土的公正|r
.turnin 2781 >>交任务: |cRXP_FRIENDLY_通缉：卡利夫·斯科比斯汀|r
step
.goto Tanaris,52.819,27.401
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安迪·利恩|r
.accept 5863 >>接任务: |cRXP_LOOT_砂槌食人魔|r
.target Andi Lynn
step
#label GadgetTurnins
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 82 >>接任务: |cRXP_LOOT_腐化之巢|r
.target Senior Surveyor Fizzledowser
step
#completewith next
.goto Tanaris,34.75,46.05
.subzone 982 >>前往邪恶巢穴
step
.goto Tanaris,35.68,39.78,70,0
.goto Tanaris,36.55,41.98,70,0
.goto Tanaris,35.59,44.08,70,0
.goto Tanaris,35.60,48.79,70,0
.goto Tanaris,31.70,49.12,70,0
.goto Tanaris,30.83,46.10,70,0
.goto Tanaris,35.68,39.78
>>AoE|cRXP_ENEMY_Centipar Sandreavers|r，|cRXD_ENEMY_CENtipar Swarmers |r，| cRXP__ENEMY_Centhipar Stingers |r，|| cRXP_ENABLEY_Centipal Tunnelers |r和|cRXP_ENEMY_ Centipars Wasps|r。为|cRXP_OOT_Centipar昆虫零件|r
>>|cRXP_WARN_Be careful as all |cRXP_ENEMY_Centipaar|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds), |cRXP_ENEMY_Centipaar Sandreavers|r cast|r |T132338:0|t[Arcing Smash] |cRXP_WARN_(Deals an extra melee attack), |cRXP_ENEMY_Centipaar Swarmers|r cast|r |T136122:0|t[Silithid Swarm] |cRXP_WARN_(Summons a 1 health mob every 10 seconds that deals current-level attack damage, instantly dies to AoE), |cRXP_ENEMY_Centipaar Stingers|r cast|r |T132274:0|t[Venom Sting] |cRXP_WARN_(deals 11-12 damage every 5 seconds for 45 seconds), |cRXP_ENEMY_Centipaar Tunnelers|r cast|r |T136231:0|t[Pierce Armor] |cRXP_WARN_(Reduces armor by 50% for 20 seconds), and |cRXP_ENEMY_Centipaar Wasps|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(deals 33-34 damage every 3 seconds for 30 seconds)|r
.complete 82,1 
.mob Centipaar Sandreaver
.mob Centipaar Swarmer
.mob Centipaar Stinger
.mob Centipaar Tunneler
.mob Centipaar Wasp
.mob Silithid Swarm
step
#completewith Ravager
.goto Tanaris,41.50,57.81
.subzone 983 >>前往Dunemaul大院
step
#completewith next
>>杀死|cRXP_ENEMY_Dunemaul Brutes|r和|cRXP_ENEMY_ Dunemaul Enforcers|r
.complete 5863,1 
.complete 5863,2 
.mob Dunemaul Brute
.mob Dunemaul Enforcer
step
#label Ravager
.goto Tanaris,41.50,57.81
>>杀死|cRXP_ENEMY_Gor'marok the Ravager |r
>>|cRXP_WARN_当|r|cRXP_ENEMY_Gor'marok the Ravager时要小心|r|cRXP_WARN_can|r|T136224:0|t[激怒]|cRXP _WARN_an并迅速造成重大伤害|r
.complete 5863,3 
.mob Gor'marok the Ravager
step
.goto Tanaris,37.83,56.94,70,0
.goto Tanaris,38.64,51.83,70,0
.goto Tanaris,41.04,51.18,70,0
.goto Tanaris,42.63,55.10,70,0
.goto Tanaris,37.83,56.94,70,0
.goto Tanaris,38.64,51.83,70,0
.goto Tanaris,41.04,51.18,70,0
.goto Tanaris,42.63,55.10
>>杀死|cRXP_ENEMY_Dunemaul Brutes|r和|cRXP_ENEMY_ Dunemaul Enforcers|r
.complete 5863,1 
.complete 5863,2 
.mob Dunemaul Brute
.mob Dunemaul Enforcer
step
#completewith Ridian
.goto Tanaris,40.52,72.95,200 >>南月遗址之旅
step
#completewith next
.itemStat 1,QUALITY,>1
.cast 11992 >>配备|T133151:0|t[Gahz'ridian探测器]
.use 9978
.isOnQuest 3161
step
#label Ridian
.goto Tanaris,41.04,71.69,50,0
.goto Tanaris,39.66,73.51,70,0
.goto Tanaris,46.01,65.13,70,0
.goto Tanaris,47.81,64.83,70,0
.goto Tanaris,41.04,71.69,50,0
.goto Tanaris,39.66,73.51,70,0
.goto Tanaris,46.01,65.13,70,0
.goto Tanaris,47.81,64.83
>>掠夺废墟周围地面上的|cRXP_Loot_Gahz'ridian|r
>>|cRXP_WARN_|cRXP_LOOT_Gahz'ridian|r将显示在带有|r|T133151:0|t[Gahz'ridian Detector]|cRXP_WARN_equied的极小图上|r
.complete 3161,1 
.use 9978
step
#completewith next
.itemStat 1,QUALITY,1
.cast 11992 >>装备你的普通装备|T133127:0|t[头盔]
.isOnQuest 3161
step
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3161 >>交任务: |cRXP_FRIENDLY_加兹瑞迪安|r
.target Marvon Rivetseeker
step
.goto Tanaris,50.886,26.963
.target Alchemist Pestlezugg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 82 >>交任务: |cRXP_FRIENDLY_腐化之巢|r
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2944 >>接任务: |cRXP_WARN_超级摄影器FX|r
.target Curgle Cranklehop
step
.goto Tanaris,52.819,27.401
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安迪·利恩|r
.turnin 5863 >>交任务: |cRXP_FRIENDLY_砂槌食人魔|r
.target Andi Lynn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 9328,8623 >>将以下项目存入您的银行：
>>|T134442:0|t[超级Snapper FX] 
>>|T132836:0|t[OOX-17/TN遇险信标]（如果你有） 
.target Gimblethorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
.goto Tanaris,51.006,29.345
.fly Ratchet >>飞到棘轮
.target Bera Stonehammer
.zoneskip The Barrens
.zoneskip Stranglethorn Vale
step
.goto The Barrens,63.677,38.618
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
>>|cRXP_WARN_在等待过程中调平|r|T135966:0|t[急救]|cRXP_WARN_|r
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 48-49 STV/Hinterlands II
#next 49-50 Searing Gorge
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.turnin 2874 >>交任务: |cRXP_FRIENDLY_给马克基雷的货物|r
.accept 609 >>接任务: |cRXP_LOOT_讨债行动|r
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰克·菲兹巴布|r
.accept 621 >>接任务: |cRXP_LOOT_赞吉尔的秘密|r
step
.group
.goto Stranglethorn Vale,27.173,77.007
.target Fleet Master Seahorn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.accept 608 >>接任务: |cRXP_LOOT_血帆海盗|r
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 2767 >>交任务: |cRXP_FRIENDLY_拯救OOX-22/FE！|r
.isQuestComplete 2767
step << skip 
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 648 >>交任务: |cRXP_FRIENDLY_拯救OOX-17/TN！|r
.isQuestComplete 648
step
.group 2
#completewith next
.goto Stranglethorn Vale,30.04,89.38,150 >>前往血帆船
.isQuestAvailable 608,624
step
.group 2
>>杀死|cRXP_ENEMY_Keelhaul|r、|cRXP_ENEMY_Fleet Master Firallon|r和|cRXP_ENEMY_Captain Stillwater|r
>>|cRXP_WARN_它们都是在二楼的一艘血帆船上发现的|r
>>|cRXP_WARN_在每艘血帆飞船的底层搜索|r|T134939:0|t[|cRXP_LOOT_Cortello's Riddle|r]|cRXP-WARN_。它可以在任何一艘船上产卵|r
>>|cRXP_WARN_使用|T134939:0|t[|cRXP_LOOT_Cortello的谜语|r]开始任务|r
>>|cRXP_WARN_Cast|r|T132172:0|t[Eagle Eye]|cRXP_WARN_to尝试查找它所在的位置|r << Hunter
.complete 608,2 
.goto Stranglethorn Vale,29.27,88.32
.complete 608,3 
.goto Stranglethorn Vale,30.58,90.63
.complete 608,1 
.goto Stranglethorn Vale,32.89,88.23
.collect 4056,1,624,1 
.accept 624 >>接任务: |cRXP_LOOT_科泰罗的谜题|r
.use 4056
.goto Stranglethorn Vale,29.27,88.32,0
.goto Stranglethorn Vale,30.58,90.63,0
.goto Stranglethorn Vale,32.89,88.23,0
.goto Stranglethorn Vale,29.35,89.17,35,0
.goto Stranglethorn Vale,30.61,89.76,35,0
.goto Stranglethorn Vale,33.49,88.20,35,0 
.mob Captain Keelhaul
.mob Fleet Master Firallon
.mob Captain Stillwater
step
#completewith Chucky
.goto Stranglethorn Vale,39.99,58.24
.subzone 311 >>Aboraz废墟之旅
step
#completewith next
.goto Stranglethorn Vale,39.99,58.24,0
.goto Stranglethorn Vale,34.92,51.84,0
>>杀死|cRXP_ENEMY_Zanzils|r。掠夺他们的|cRXP_Loot_Mixtures|r
.complete 621,1 
.mob Zanzil Witch Doctor
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
step
#label Chucky
.goto Stranglethorn Vale,39.99,58.24
>>杀死|cRXP_ENEMY_Chucky“十个拇指”|r。抢走他的|cRXX_Loot_巨大戒指|r
.complete 609,3 
.mob Chucky "Ten Thumbs"
step
#completewith FinalZanzil
.goto Stranglethorn Vale,34.92,51.84
.subzone 477 >>朱布瓦尔遗址之旅
step
#completewith FinalZanzil
.goto Stranglethorn Vale,39.99,58.24,0
.goto Stranglethorn Vale,34.92,51.84,0
>>杀死|cRXP_ENEMY_Zanzils|r。掠夺他们的|cRXP_Loot_Mixtures|r
.complete 621,1 
.mob Zanzil Witch Doctor
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
step
#completewith next
.goto Stranglethorn Vale,34.92,51.84
>>杀死|cRXP_ENEMY_Jon-Jon the Crow|r。掠夺他的|cRXX_Loot_Golden Spyglass|r
.complete 609,2 
.mob Jon-Jon the Crow
step
.goto Stranglethorn Vale,35.26,51.28
>>杀死|cRXP_ENEMY_Maury“Club Foot”Wilkins|r。掠夺他的|cRXX_Loot_ Clubbed Foot|r
.complete 609,1 
.mob Maury "Club Foot" Wilkins
step
#label FinalZanzil
.goto Stranglethorn Vale,34.92,51.84
>>杀死|cRXP_ENEMY_Jon-Jon the Crow|r。掠夺他的|cRXX_Loot_Golden Spyglass|r
.complete 609,2 
.mob Jon-Jon the Crow
step
.goto Stranglethorn Vale,34.92,51.84,70,0
.goto Stranglethorn Vale,39.99,58.24,70,0
.goto Stranglethorn Vale,34.92,51.84,70,0
.goto Stranglethorn Vale,39.99,58.24,70,0
.goto Stranglethorn Vale,34.92,51.84
.goto Stranglethorn Vale,39.99,58.24,0
>>杀死|cRXP_ENEMY_Zanzils|r。掠夺他们的|cRXP_Loot_Mixtures|r
.complete 621,1 
.mob Zanzil Witch Doctor
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Naga
step
.goto Stranglethorn Vale,28.41,46.88,0
.goto Stranglethorn Vale,31.12,43.17,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,31.76,41.34,55,0
.goto Stranglethorn Vale,31.12,43.17,55,0
.goto Stranglethorn Vale,28.71,43.81,55,0
.goto Stranglethorn Vale,28.41,46.88,55,0
.goto Stranglethorn Vale,31.12,43.17
>>杀死|cRXP_ENEMY_Tethis|r。掠夺他的|cRXX_Loot_Talon|r
>>|cRXP_ENEMY_系绳|r|cRXP_WARN_将在此位置巡逻|r
.complete 197,1 
.unitscan Tethis
step
.goto Stranglethorn Vale,47.2,28.0,35,0
.goto Stranglethorn Vale,49.8,24.6,35,0
.goto Stranglethorn Vale,48.4,19.2,35,0
.goto Stranglethorn Vale,49.54,24.17
.goto Stranglethorn Vale,47.2,28.0,0
.goto Stranglethorn Vale,49.8,24.6,0
.goto Stranglethorn Vale,48.4,19.2,0
>>杀死|cRXP_ENEMY_Bhag'thera|r。掠夺他以获得Bhag'hera|r的|cRXX_Loot_Fang
>>|cRXP_ENEMY_Bhag'thera|r|cRXP_WARN_can在Mosh'Ogg Ogre丘的北部或西部产卵|r
>>|cRXP_WARN_铸造|r|T132172:0|t[鹰眼]|cRXP_WARN_to尝试定位|r|cRXP-ENEMY_Bhag'thera|r << Hunter
.complete 193,1 
.unitscan Bhag'thera
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔加丁爵士|r, |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 193 >>交任务: |cRXP_FRIENDLY_猎豹|r
.goto Stranglethorn Vale,35.556,10.546
.turnin 197 >>交任务: |cRXP_FRIENDLY_猎龙|r
.accept 208 >>接任务: |cRXP_LOOT_王牌猎人|r
.goto Stranglethorn Vale,35.658,10.808
.target Sir S. J. Erlgadin
.target Hemet Nesingwary
step
#optional
#completewith next
+|cRXP_WARN_当他达到55%时，使用|r|T133581:0|t[闪光弹]|cRXP_WARN_on|cRXP_ENEMY_King Bangalash|r|r
.itemcount 4852,1
.use 4852
step
.goto Stranglethorn Vale,38.20,35.57
>>杀死|cRXP_ENEMY_King Bangalash|r。掠夺他以获得|cRXX_Loot_ Bangalash首领|r
>>|cRXP_ENEMY_Bangalash国王|r|cRXP_WARN_将在50%生命值下产生2|cRXP-ENEMY_Panthers|r。如果可能的话，尽量在50%之前给它CC，这样可以防止它产卵|r
>>|cRXP_WARN_如果你不自信，跳过这一步|r
.complete 208,1 
.mob King Bangalash
step
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 208 >>交任务: |cRXP_FRIENDLY_王牌猎人|r
.target Hemet Nesingwary
.isQuestComplete 208
step
.abandon 208 >>Abandon Big Game Hunter
step
#completewith ReturnSTV
.goto Stranglethorn Vale,28.97,73.05,100 >>Travel to Booty Bay
step
.goto Stranglethorn Vale,27.782,77.071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.turnin 609 >>交任务: |cRXP_FRIENDLY_讨债行动|r
.target "Sea Wolf" MacKinley
step
#label ReturnSTV
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威士忌斯利姆|r, |cRXP_FRIENDLY_克兰克·菲兹巴布|r
.accept 580 >>接任务: |cRXP_LOOT_威士忌斯利姆的酒|r
.goto Stranglethorn Vale,27.135,77.451
.turnin 621 >>交任务: |cRXP_FRIENDLY_赞吉尔的秘密|r
.accept 1119 >>接任务: |cRXP_WARN_赞吉尔的药剂和蠢人酒|r
.goto Stranglethorn Vale,27.120,77.208
.target Whiskey Slim
.target Crank Fizzlebub
step
.isQuestComplete 608
.goto Stranglethorn Vale,27.173,77.007
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 608 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.target Fleet Master Seahorn
step
#completewith Thadius
.isOnQuest 1119
+|cRXP_WARN_请注意，赞齐尔的混合物和愚人节任务有一个2小时的计时器|r
.zoneskip Stranglethorn Vale,1
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_掘金者维兹尼克|r, |cRXP_FRIENDLY_掘金者里克|r
.bankwithdraw 742,9468 >>从您的银行提取以下项目：
>>|T133749:0|t[A Sycamore Branch]（如果你有） 
>>|T135992:0|t[尖喙的羽毛] 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.abandon 608 >>放弃血帆海盗
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Westfall >>飞往威斯特福尔
.target Gyll
.isQuestComplete 51
step
.goto Westfall,44.620,80.254
.target Grimbooze Thunderbrew
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞姆·雷酒|r
.turnin 51 >>交任务: |cRXP_FRIENDLY_琥珀酒|r
.accept 53 >>接任务: |cRXP_WARN_琥珀酒|r
.isQuestTurnedIn 50 
step << !Mage
.goto Westfall,56.556,52.643
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔|r
.fly Stormwind >>飞到暴风城
.target Thor
.isOnQuest 53
step << !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >>飞到暴风城
.target Gyll
.isQuestAvailable 51
.zoneskip Stranglethorn Vale,1
step << Mage
#completewith next
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙德拉斯·月树|r
.trainer >>训练你的职业技能
.target Sheldras Moontree
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >>训练你的职业技能
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
.goto StormwindClassic,38.54,26.86
.trainer >>训练你的职业技能
.target Brother Joshua
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >>训练你的职业技能
.target Einris Brightspear
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >>训练你的职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >>训练你的职业技能
.target Osborne the Night Man
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>走进屠宰羔羊，下楼去
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >>训练你的职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯巴克尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Spackle Thornberry
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
>>|cRXP_BUY_购买以下物品，以便稍后在STV更快地上交|r
>>|cRXP_WARN_这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤|r
>>|cRXP_WARN_记得在购买之前检查一下你的银行，因为你可能早就发现了一些|r
>>|T134298:0|t[大猩猩方]
.collect 2799,10,348,1 
.target Auctioneer Jaxon
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
>>|cRXP_BUY_购买以下物品，以便稍后在Un'Goro火山口更快地返回|r
>>|cRXP_WARN_这将节省你的时间，因为你不需要到处寻找它们。如果您不想购买，请跳过此步骤|r
>>|T134130:0|t[红色水晶]
>>|T134105:0|t[绿色水晶]
>>|T134133:0|t[蓝色水晶]
>>|T134136:0|t[黄色水晶]
.collect 11186,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
.collect 11188,7,4284,1 
.target Auctioneer Jaxon
step
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Darkshire >>飞到黄昏
.target Dungar Longdrink
.isQuestAvailable 1395
step
.goto Duskwood,75.779,46.159
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守卫队长索里加尔|r
.target Watchmaster Sorigal
.accept 1395 >>接任务: |cRXP_LOOT_守望堡的物资|r
step
#completewith Thadius
.goto Duskwood,77.486,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.target Felicia Maline
.fly Nethergarde >>飞往尼德加德要塞
.zoneskip Swamp of Sorrows
step
.goto Blasted Lands,66.522,21.386
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军需官朗格尔斯|r
.turnin 1395 >>交任务: |cRXP_FRIENDLY_守望堡的物资|r
.target Quartermaster Lungertz
step
#label Thadius
.goto Blasted Lands,66.898,19.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨迪斯·格希德|r, 他在塔上
.turnin 2990 >>交任务: |cRXP_FRIENDLY_萨迪斯·格希德|r
.target Thadius Grimshade
step
.dungeon ZF
.isQuestTurnedIn 2990
.goto Blasted Lands,66.898,19.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨迪斯·格希德|r, 他在塔上
.accept 2991 >>接任务: |cRXP_WARN_耐克鲁姆的徽章|r
.target Thadius Grimshade
step
#completewith Jarquia
.goto Blasted Lands,52.34,9.63,0
.goto Swamp of Sorrows,33.60,65.32
.zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
step
#completewith ExitSoS
+|cRXP_WARN_无论何时你在悲伤的沼泽中，都要非常小心|cRXP_ENEMY_Stonard Scouts|r。如果有人攻击你，你将被PvP标记5分钟|r
.unitscan Stonard Scout
step
.group
.goto Swamp of Sorrows,22.87,48.18
>>在桥下的水中点击|cRXP_PICK_A泥泞的卷轴|r
.turnin 624 >>交任务: |cRXP_FRIENDLY_科泰罗的谜题|r
.accept 625 >>接任务: |cRXP_LOOT_科泰罗的谜题|r
.isOnQuest 624
step
.group
.goto Swamp of Sorrows,22.87,48.18
>>在桥下的水中点击|cRXP_PICK_A泥泞的卷轴|r
.accept 625 >>接任务: |cRXP_LOOT_科泰罗的谜题|r
.isQuestTurnedIn 624
step
#label Jarquia
.goto Swamp of Sorrows,91.87,68.35,40,0
.goto Swamp of Sorrows,94.386,61.489,40,0
.goto Swamp of Sorrows,94.730,51.849,40,0
.goto Swamp of Sorrows,91.87,68.35,40,0
.goto Swamp of Sorrows,94.386,61.489,40,0
.goto Swamp of Sorrows,94.730,51.849,40,0
.goto Swamp of Sorrows,94.386,61.489
>>杀死|cRXP_ENEMY_Jarquia|r。掠夺他的|cRXD_Loot_平衡火焰符|r
>>|cRXP_ENEMY_Jarquia|r|cRXP_WARN_沿着海岸有几个不同的产卵地点|r
.complete 4450,4 
.mob Jarquia
step
#label ExitSoS
#completewith Orphan
.hs Gadgetzan >>Gadgetzan之炉
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 11723 >>将以下项目存入您的银行：
>>|T135272:0|t[古德斯蒂尔的平衡火焰杯] 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 11102 >>从您的银行提取以下项目：
>>|T132833:0|t[未孵化的雪碧飞镖蛋] 
.target Gimblethorn
step
#completewith Orphan
.goto Thousand Needles,77.782,77.263
.subzone 2240 >>前往幻影赛道
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉维尔·浓须|r
.turnin 1119 >>交任务: |cRXP_FRIENDLY_赞吉尔的药剂和蠢人酒|r
.timer 13,Kravel Koalbeard RP
.accept 1120 >>接任务: |cRXP_WARN_灌醉侏儒|r
.isQuestTurnedIn 1118
.target Kravel Koalbeard
step
.goto Thousand Needles,77.563,76.941
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侏儒车队老板|r
.turnin 1120 >>交任务: |cRXP_FRIENDLY_灌醉侏儒|r
.isQuestTurnedIn 1118
.target Gnome Pit Boss
step
.goto Thousand Needles,77.782,77.263
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉维尔·浓须|r
.accept 1122 >>接任务: |cRXP_WARN_向菲兹巴布报告|r
.isQuestTurnedIn 1118
.target Kravel Koalbeard
step
#optional
.goto Thousand Needles,78.347,74.725
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奎恩丁|r
.turnin 3841 >>交任务: |cRXP_FRIENDLY_领养孤儿|r
.accept 3842 >>接任务: |cRXP_WARN_即将孵化|r
.turnin 3842 >>交任务: |cRXP_FRIENDLY_即将孵化|r
.itemcount 3825,2 
.target Quentin
step
#label Orphan
.goto Thousand Needles,78.347,74.725
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奎恩丁|r
.turnin 3841 >>交任务: |cRXP_FRIENDLY_领养孤儿|r
.target Quentin
step
.dungeon ZF
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹尔·铜栓|r
.accept 2770 >>接任务: |cRXP_WARN_加兹瑞拉|r
.target Wizzle Brassbolts
step
.dungeon ZF
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦顿·轻锤|r
.accept 3042 >>接任务: |cRXP_WARN_巨魔调和剂|r
.target Trenton Lighthammer
step
.dungeon ZF
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r
.accept 2768 >>接任务: |cRXP_WARN_探水棒|r
.target Chief Engineer Bilgewhizzle
step
.dungeon ZF
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.accept 2865 >>接任务: |cRXP_WARN_圣甲虫的壳|r
.target Tran'rek
step
.dungeon ZF
.isQuestTurnedIn 3520
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.accept 3527 >>接任务: |cRXP_WARN_摩沙鲁的预言|r
.target Yeh'kinya
step
.dungeon ZF
.goto Tanaris,73.37,47.14
.goto Tanaris,38.731,19.839
.subzone 978 >>你现在将管理祖尔法拉克。在寻找ZF小组时，继续|cRXP_ENEMY_Pirates|r
step
.dungeon ZF
.goto Tanaris,38.91,20.78,40,0
.goto Tanaris,38.731,19.839
.subzone 978,2 >>Enter Zul'Farrak
step
.dungeon ZF
#completewith Gahzrilla
>>杀死|cRXP_ENEMY_Trolls|r。掠夺他们的|cRXX_Loot_Toll脾气|r
.complete 3042,1 
.isOnQuest 3042
step
.dungeon ZF
#completewith next
>>杀死|cRXP_ENEMY_Scarab|r。掠夺他们的|cRXD_Loot_未被破解的Scarab外壳|r
.complete 2865,1 
.isOnQuest 2865
step
.dungeon ZF
>>杀死|cRXP_ENEMY_Theka烈士|r。掠夺他获得|cRXX_Loot_First Mosh'aru平板电脑|r
.complete 3527,1 
.mob Theka the Martyr
.isOnQuest 3527
step
.dungeon ZF
>>杀死|cRXP_ENEMY_Scarab|r。掠夺他们的|cRXD_Loot_未被破解的Scarab外壳|r
.complete 2865,1 
.isOnQuest 2865
step
.dungeon ZF
#completewith NekrumMedallion
+Ascend the Pyramid
>>杀死|cRXP_ENEMY_Sandfury刽子手|r。掠夺他以获得|cRXX_Loot_刽子手的钥匙|r
>>|cRXP_WARN_聚会中的任何人都可以掠夺|r|cRXP_loot_Key|r
>>|cRXP_WARN_使用|r|cRXP_LOOT_刽子手的钥匙|r|cRXP_WARN_在其中一个|cRX_PICK_Troll笼子|r上释放|cRXT_FRIENDLY_Srgeant Bly|r和他的乐队|r
.collect 8444,1 
.disablecheckbox
.isOnQuest 2991,2768
.mob Sandfury Executioner
step
.dungeon ZF
>>防守|cRXP_FRIENDLY_Srgeant Bly|r和他的乐队，然后在短时间后与他们一起向下移动
>>杀死|cRXP_ENEMY_Nekrum Gutchewer|r。掠夺他获得|cRXX_Loot_Nekrum奖章|r
>>在你杀死|cRXP_ENEMY_Nekrum Gutchewer|r后，吃了喝了，然后和|cRXP_FRIENDLY_Srgeant Bly|r交谈，与他对抗
>>杀死|cRXP_ENEMY_Bly中士|r。掠夺他获得|cRXX_Loot_Divinomatic Rod|r
.complete 2991,1 
.complete 2768,1 
.isOnQuest 2991
.isOnQuest 2768
.skipgossip
step
.dungeon ZF
>>防守|cRXP_FRIENDLY_Srgeant Bly|r和他的乐队，然后在短时间后与他们一起向下移动
>>杀死|cRXP_ENEMY_Nekrum Gutchewer|r。掠夺他获得|cRXX_Loot_Nekrum奖章|r
.complete 2991,1 
.isOnQuest 2991
.skipgossip
step
.dungeon ZF
#label NekrumMedallion
>>防守|cRXP_FRIENDLY_Srgeant Bly|r和他的乐队，然后在短时间后与他们一起向下移动
>>杀死|cRXP_ENEMY_Nekrum Gutchewer|r。吃吃喝喝，然后与|cRXP-FRIENDLY_Srgeant Bly|r交谈，与他对抗
>>杀死|cRXP_ENEMY_Bly中士|r。掠夺他获得|cRXX_Loot_Divinomatic Rod|r
.complete 2768,1 
.isOnQuest 2768
.skipgossip
step
.dungeon ZF
>>杀死|cRXP_ENEMY_Hydromancer Velratha|r。掠夺她获得|cRXD_Loot_Tiara of the Deep|r和|cRXT_Loot_Second Mosh'aru Tablet|r
.complete 2846,1 
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 2846
.isOnQuest 3527
step
.dungeon ZF
>>杀死|cRXP_ENEMY_Hydromancer Velratha|r。掠夺她获得|cRXX_Loot_Tiara of the Deep|r
.complete 2846,1 
.mob Hydromancer Velratha
.isOnQuest 2846
step
.dungeon ZF
>>杀死|cRXP_ENEMY_Hydromancer Velratha|r。掠夺她获得|cRXX_Loot_Second Mosh'aru平板电脑|r
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 3527
step
.dungeon ZF
#label Gahzrilla
>>|cRXP_WARN_使用|r|T133056:0|t[Zul'Farrak的Mallet]|cRXP_WARN_on the |cRX_PICK_Gong|r来召唤|r|cRXP_ENEMY_Gahz'rilla|r
>>杀死|cRXP_ENEMY_Gahz'rilla|r。掠夺他获得|cRXD_Loot_Gahz'rilla的带电天平|r
>>|cRXP_WARN_如果你的队伍中没有人拥有|r|T133056:0|t[Zul'Farrak的Mallet]|cRXP_WARN_，你将无法召唤|r|cRXP-ENEMY_Gahz'rilla|r
.complete 2770,1 
.mob Gahz'rilla
.isOnQuest 2770
step
.dungeon ZF
>>杀死|cRXP_ENEMY_Trolls|r。掠夺他们的|cRXX_Loot_Toll脾气|r
.complete 3042,1 
.isOnQuest 3042
step
.dungeon ZF
#completewith ZFTurnIn
.hs >>Gadgetzan之炉
step
.dungeon ZF
.isQuestComplete 3042
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦顿·轻锤|r
.turnin 3042 >>交任务: |cRXP_FRIENDLY_巨魔调和剂|r
.target Trenton Lighthammer
step
.dungeon ZF
.isQuestComplete 2768
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r
.turnin 2768 >>交任务: |cRXP_FRIENDLY_探水棒|r
.target Chief Engineer Bilgewhizzle
step
.dungeon ZF
.isQuestComplete 2865
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 2865 >>交任务: |cRXP_FRIENDLY_圣甲虫的壳|r
.target Tran'rek
step
.dungeon ZF
.isQuestComplete 3527
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.turnin 3527 >>交任务: |cRXP_FRIENDLY_摩沙鲁的预言|r

.target Yeh'kinya
step
.dungeon ZF
#completewith ZFTurnIn
.goto Thousand Needles,77.782,77.263
.subzone 2240 >>前往幻影赛道
step
.dungeon ZF
.isQuestComplete 2770
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹尔·铜栓|r
.turnin 2770 >>交任务: |cRXP_FRIENDLY_加兹瑞拉|r
.target Wizzle Brassbolts
step
.dungeon ZF
.abandon 2770 >>Abandon Gahz'rilla
step 
#label ZFTurnIn
.goto Thousand Needles,78.347,74.725
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奎恩丁|r
.accept 3843 >>接任务: |cRXP_WARN_新的生命|r
.isQuestTurnedIn 3842
.target Quentin
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 9328 >>从您的银行提取以下项目：
>>|T134442:0|t[超级Snapper FX] 
.target Gimblethorn
step
.isQuestTurnedIn 1118
.goto Tanaris,52.297,28.915
.itemcount 5807,1 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 5807 >>将以下项目存入您的银行：
>>|T133471:0|t[愚人节报告] 
.target Gimblethorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
.goto Tanaris,51.006,29.345
.fly Theramore >>飞往塞拉莫尔
.target Bera Stonehammer
.isOnQuest 4450,625
step
.group
.isOnQuest 625 
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板詹妮|r
.goto Dustwallow Marsh,66.587,45.223
.home >>将你的炉石设置为Theramore
.target Innkeeper Janene
step
#completewith next
.goto Dustwallow Marsh,55.26,50.54,45 >>Swim to the hill west
step
.goto Dustwallow Marsh,54.079,55.897
>>打开|cRXP_PICK_Damaged板条箱|r。为|cRXP _Loot_Overdue Package|r将其洗劫一空
.complete 4450,3 
step
.dungeon ZF
.isQuestComplete 2991
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔贝萨|r
.turnin 2846 >>交任务: |cRXP_FRIENDLY_深渊皇冠|r
.target Tabetha
step
.group
.goto Dustwallow Marsh,31.098,66.145
>>单击岩石上的|cRXP_PICK_Musty Scroll|r
.turnin 625 >>交任务: |cRXP_FRIENDLY_科泰罗的谜题|r
.accept 626 >>接任务: |cRXP_LOOT_科泰罗的谜题|r
.isQuestTurnedIn 624
step
.group
.isOnQuest 626
#completewith next
.goto Dustwallow Marsh,30.970,65.965,-1
.goto 1414,53.26,71.18,-1
+|cRXP_WARN_注销跳过蘑菇传送到RFD入口，然后进入RFD区域|r
.link /run InviteUnit("a");C_Timer.After(1,function() LeaveParty() end) >>|cRXP_WARN_点击此处复制+粘贴此宏，一旦你进入RFD到ghetto Hearth到Theramore Isle|r
.link https://youtu.be/WClMOzjgOgc >>|cRXP_WARN_点击此处查看视频参考|r
>>如果你不能做到这一点，就跑回塞拉莫尔岛
step
.goto Dustwallow Marsh,67.476,51.300
.subzone 513 >>前往Theramore岛
.isOnQuest 4450,626
step
.goto Dustwallow Marsh,71.4,56.1
.zone Wetlands >>前往: |cRXP_PICK_湿地|r
.zoneskip The Hinterlands
step
#completewith next
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Hinterlands >>Fly to Hinterlands
.target Shellei Brondir
step
.goto The Hinterlands,14.17,45.33,25,0
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗拉加尔|r
.accept 2877 >>接任务: |cRXP_LOOT_清理隐匿石|r
.target Fraggar Thundermantle
step
.goto The Hinterlands,13.81,42.67,20,0
.goto The Hinterlands,14.33,41.18,20,0
.goto The Hinterlands,13.644,41.732
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板苏弗拉姆|r
>>|cRXP_FRIENDLY_旅馆管理员Thulfram |r|cRXP_WARN_trols上楼|r
.home Aerie Peak >>将炉石设置为艾里峰
.target Innkeeper Thulfram
step
.goto The Hinterlands,14.154,43.623
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿格纳|r
>>|cRXP_FRIENDLY_Agnar Beastamer |r|cRXP_WARN_i在仓库楼下|r
.turnin 3843 >>交任务: |cRXP_FRIENDLY_新的生命|r
.accept 4297 >>接任务: |cRXP_WARN_小精龙的食物|r
.isQuestTurnedIn 3842
.target Agnar Beastamer
step
#completewith next
.goto The Hinterlands,46.56,40.60
.subzone 1884 >>Travel to Agol'watha
step
.goto The Hinterlands,46.56,40.60,60,0
.goto The Hinterlands,46.24,39.85,60,0
.goto The Hinterlands,57.65,42.83
>>杀死|cRXP_ENEMY_Green Sluges|r和|cRXX_ENEMY_Jade Oozes|r
.complete 2877,1 
.complete 2877,2 
.mob Green Sludge
.mob Jade Ooze
step
.isOnQuest 4297
.goto The Hinterlands,58.8,49.0,80,0
.goto The Hinterlands,71.6,53.0,80,0
.goto The Hinterlands,69.6,62.4,80,0
.goto The Hinterlands,59.6,51.6,80,0
.goto The Hinterlands,69.8,56.2
>>杀死|cRXP_ENEMY_Silvermane跟踪者|r。掠夺他们的|cRXX_Loot_FRANK|r
>>|cRXP_WARN_The|cRXP_ENEMY_Silvermane跟踪者|r在|r|T132320:0|t[潜行]
.complete 4297,1 
.mob Silvermane Stalker
step
.goto The Hinterlands,45.61,68.92,75,0
.goto The Hinterlands,44.08,65.22,75,0
.goto The Hinterlands,48.08,62.18,75,0
.goto The Hinterlands,50.40,63.79,75,0
.goto The Hinterlands,47.20,65.95
>>杀死|cRXP_ENEMY_Vilebranch巨魔|r。掠夺它们以获得|T132836:0|t[|cRXP_OOT_OOX-09/HL遇险信标|r]
.use 8704 >>|cRXP_WARN_使用|T132836:0|t[|cRXP_LOOT_OX-09/HL遇险信标|r]开始任务|r
>>|cRXP_WARN_如果你运气不好，一段时间后没有找到，跳过这一步。然而，建议您耕种，直到找到为止|r
.collect 8704,1,485,1 
.accept 485 >>接任务: |cRXP_LOOT_找到OOX-09/HL！|r
.mob Vilebranch Axe Thrower
.mob Vilebranch Scalper
.mob Vilebranch Soothsayer
.mob Vilebranch Wolf Pup
step
.isOnQuest 485
.goto The Hinterlands,49.352,37.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r
>>|cRXP_WARN_除非你在一个小组中，否则不要接受后续行动并尝试护送|r
.turnin 485 >>交任务: |cRXP_FRIENDLY_找到OOX-09/HL！|r
.target Homing Robot OOX-09/HL
step
.isQuestTurnedIn 485
.group 2
.goto The Hinterlands,49.352,37.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r
.accept 836,1 >>接任务: |cRXP_LOOT_拯救OOX-09/HL！|r
.target Homing Robot OOX-09/HL
step
.isOnQuest 836
.group 2
.goto The Hinterlands,72.46,66.16,40,0
.goto The Hinterlands,76.22,61.81,45,0
.goto The Hinterlands,79.33,61.26
>>护送|cRXP_FRIENDLY_Homing Robot OOX-09/HL|r到安全地带
.complete 836,1 
.target Homing Robot OOX-22/FE
step
#completewith next
>>在地面上抢劫|cRXP_Loot_Pupellyverbos端口|r
.complete 580,1 
step
.line The Hinterlands,81.95,49.41,81.21,52.91,81.98,54.30,81.97,56.42,80.77,58.37,80.34,59.40,79.45,60.76,78.69,61.39,76.86,62.73,75.91,63.81,75.29,65.60,76.72,66.85,78.53,67.51,78.60,68.97,77.90,70.97,76.71,71.26,76.52,72.95,77.07,74.64
.goto The Hinterlands,81.95,49.41,70,0
.goto The Hinterlands,81.21,52.91,70,0
.goto The Hinterlands,81.98,54.30,70,0
.goto The Hinterlands,81.97,56.42,70,0
.goto The Hinterlands,80.77,58.37,70,0
.goto The Hinterlands,80.34,59.40,70,0
.goto The Hinterlands,79.45,60.76,70,0
.goto The Hinterlands,78.69,61.39,70,0
.goto The Hinterlands,76.86,62.73,70,0
.goto The Hinterlands,75.91,63.81,70,0
.goto The Hinterlands,75.29,65.60,70,0
.goto The Hinterlands,76.72,66.85,70,0
.goto The Hinterlands,78.53,67.51,70,0
.goto The Hinterlands,78.60,68.97,70,0
.goto The Hinterlands,77.90,70.97,70,0
.goto The Hinterlands,76.71,71.26,70,0
.goto The Hinterlands,76.52,72.95,70,0
.goto The Hinterlands,77.07,74.64,70,0
.goto The Hinterlands,81.21,52.91,70,0
.goto The Hinterlands,75.91,63.81
.use 9328 >>|cRXP_WARN_使用|r|T134442:0|t[超级Snapper FX]|cRXP_WARN_on|r|cRXP-ENEMY_Gammerita|r
>>|cRXP_WARN_这将导致|cRXP_ENEMY_Gammerita|r对您进行农业操作。使用后做好逃跑的准备|r
.complete 2944,1 
.unitscan Gammerita
step
.goto The Hinterlands,81.7,49.3,70,0
.goto The Hinterlands,79.3,60.5,70,0
.goto The Hinterlands,77.5,70.3,70,0
.goto The Hinterlands,75.7,64.5,70,0
.goto The Hinterlands,81.9,52.9,70,0
.goto The Hinterlands,77.9,65.5
>>在地面上抢劫|cRXP_Loot_Pupellyverbos端口|r
.complete 580,1 
step
.group
.goto The Hinterlands,80.78,46.82
>>在水下点击|cRXP_PICK_Cortello的宝藏|r
.turnin 626 >>交任务: |cRXP_FRIENDLY_科泰罗的谜题|r
.isOnQuest 626
step
#completewith SkullRock
.goto The Hinterlands,47.20,65.95
.hs >>炉膛至艾瑞峰
>>升级直到炉石冷却结束
.cooldown item,6948,<0
step
#completewith SkullRock
.hs >>炉膛至艾瑞峰
.cooldown item,6948,>0,1
step
.goto The Hinterlands,14.154,43.623
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿格纳|r
>>|cRXP_FRIENDLY_Agnar Beastamer |r|cRXP_WARN_i在仓库楼下|r
.turnin 4297 >>交任务: |cRXP_FRIENDLY_小精龙的食物|r
.accept 4298 >>接任务: |cRXP_WARN_为人父母|r
.turnin 4298 >>交任务: |cRXP_FRIENDLY_为人父母|r
.isQuestTurnedIn 3842
.target Agnar Beastamer
step
#label SkullRock
.goto The Hinterlands,14.834,44.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗拉加尔|r
.target Fraggar Thundermantle
.turnin 2877 >>交任务: |cRXP_FRIENDLY_清理隐匿石|r
step
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈斯鲁姆|r
.fly Wetlands >>飞到湿地
.target Guthrum Thunderfist
.zoneskip The Hinterlands,1
step 
.goto Wetlands,10.69,60.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板赫布瑞克|r
.home >>将您的炉石设置为湿地
.target Innkeeper Helbrek
step
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Ironforge >>飞往铁炉堡
.target Shellei Brondir
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.bankdeposit 3900,9328,9330,11724 >>将以下项目存入您的银行：
>>|T132796:0|t[Ppupellyverbose端口] 
>>|T134442:0|t[超级Snapper FX] 
>>|T134300:0|t[Gammerita快照] 
>>|T132766:0|t[过期包裹] 
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.bankwithdraw 10443 >>将以下项目提取到您的银行：
>>|T133471:0|t[单音字母]（如果你有） 
.target Bailey Stonemantle
step
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索里奥斯馆长|r
>>|cRXP_FRIENDLY_策展人Thorius|r|cRXP_WARN_穿过探索者大厅|r
.turnin 3368 >>交任务: |cRXP_FRIENDLY_苏塔拉之石|r
.accept 3371 >>接任务: |cRXP_LOOT_矮人的正义|r
.target Curator Thorius
step
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
.target Gryth Thurden
.zoneskip Searing Gorge
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 40-50
#classic
<< Alliance
#name 49-50 Searing Gorge
#next 50-51 Tanaris/Un'goro
step
.group
.goto Searing Gorge,38.804,28.510
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大铁匠博恩奈特|r
.accept 7722 >>接任务: |cRXP_LOOT_绝密配方！|r
.target Master Smith Burninate
step
.goto Searing Gorge,38.582,27.807
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉瑟尔·重拳|r
.accept 7723 >>接任务: |cRXP_LOOT_该死的手指头！|r
.accept 7724 >>接任务: |cRXP_LOOT_熔岩蜘蛛的威胁！|r
.accept 7727 >>接任务: |cRXP_LOOT_熏火龙|r
.target Hansel Heavyhands
step
.solo
.goto Searing Gorge,37.645,26.481
>>单击|cRXP_PICK_Wanted Board |r
.accept 7728 >>接任务: |cRXP_LOOT_被盗：鼓风机和望远镜|r
.accept 7729 >>接任务: |cRXP_LOOT_工作机会：肃清竞争对手|r
step
.group
.goto Searing Gorge,37.645,26.481
>>单击|cRXP_PICK_Wanted Board |r
.accept 7728 >>接任务: |cRXP_LOOT_被盗：鼓风机和望远镜|r
.accept 7729 >>接任务: |cRXP_LOOT_工作机会：肃清竞争对手|r
.accept 7701 >>接任务: |cRXP_LOOT_悬赏：工头玛托留斯|r
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.accept 3441 >>接任务: |cRXP_LOOT_神圣的惩戒|r
.target Velarok Windblade
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.skipgossip
.complete 3441,1 
.target Velarok Windblade
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3441 >>交任务: |cRXP_FRIENDLY_神圣的惩戒|r
.accept 3442 >>接任务: |cRXP_LOOT_无瑕之焰|r
.target Velarok Windblade
step
#completewith FlawlessFlame
>>杀死|cRXP_ENEMY_重战傀儡|r和|cRXP_ENEMY_Greater熔岩蜘蛛|r
.complete 7723,1 
.goto Searing Gorge,33.20,43.58,0
.complete 7724,1 
.goto Searing Gorge,27.56,45.45,0
.mob Heavy War Golem
.mob Greater Lava Spider
step
#completewith FlawlessFlame
>>杀死|cRXP_ENEMY_Dark Iron Steamsmiths|r。为|cRXX_Loot_Smithing Tuyere|r掠夺它们
>>杀死|cRXP_ENEMY_Dark Iron Lookout|r。为|cRXX_Loot_Lookout的Spyglass|r掠夺它们
.complete 7728,1 
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
step
#label FlawlessFlame
.goto Searing Gorge,43.83,35.08,0
.goto Searing Gorge,24.18,54.52,0
.goto Searing Gorge,28.54,64.55,0
.goto Searing Gorge,43.83,35.08,70,0
.goto Searing Gorge,24.18,54.52,70,0
.goto Searing Gorge,28.54,64.55,70,0
.goto Searing Gorge,30.10,76.16,70,0
.goto Searing Gorge,28.54,64.55,70,0
.goto Searing Gorge,24.18,54.52,70,0
.goto Searing Gorge,43.83,35.08,70,0
.goto Searing Gorge,43.83,35.08,70,0
.goto Searing Gorge,24.18,54.52,70,0
.goto Searing Gorge,28.54,64.55,70,0
.goto Searing Gorge,30.10,76.16
>>杀死|cRXP_ENEMY_Inferno元素|r、|cRXD_ENEMY_Blazing元素|r和|cRXP_ENEMY_Magma元素|r。掠夺它们的|cRXT_Loot_Franmes之心|r
>>杀死|cRXP_ENEMY_Heavy War Golem|r和|cRXP_ENEMY_Magma Elements|r。掠夺它们的|cRXD_Loot_Golem Oils|r
>>|cRXP_WARN_优先考虑这两个目标|r
.complete 3442,1 
.complete 3442,2 
.mob Inferno Elemental
.mob Blazing Elemental
.mob Magma Elemental
.mob Heavy War Golem
step
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3442 >>交任务: |cRXP_FRIENDLY_无瑕之焰|r
.accept 3443 >>接任务: |cRXP_LOOT_铸造火炬杆|r
.target Velarok Windblade
step
#completewith next
.goto Searing Gorge,47.54,46.89
.subzone 1443 >>跳到下面的平台上，进入洞穴。按照箭头
step
.goto Searing Gorge,46.66,42.48,40,0
.goto Searing Gorge,51.67,37.02,40,0
.goto Searing Gorge,45.41,21.65
>>杀死|cRXP_ENEMY_Incindosaurs|r
.complete 7727,1 
.mob Incendosaur
step
.goto Searing Gorge,48.41,41.08,40,0
.goto Searing Gorge,47.94,47.58,40,0
.goto Searing Gorge,49.86,45.97,40,0
.goto Searing Gorge,49.75,45.82,35 >>跑回洞穴，然后沿着平台到达洞穴的上部入口
.isOnQuest 7729,3443,7722,7701
step
.group 4
.isOnQuest 7722,7701
#completewith next
>>杀死|cRXP_ENEMY_Oversear Maltorius |r。掠夺他的|cRXP_Loot_Head |r
>>偷走|cRXP_Loot_Secret Plans:Fiery Flux|r在长椅上
.complete 7701,1 
.goto Searing Gorge,40.81,35.77
.complete 7722,1 
.goto Searing Gorge,40.447,35.739
.mob Overseer Maltorius
step
.goto Searing Gorge,43.18,35.09,60,0
.goto Searing Gorge,43.54,31.51,60,0
.goto Searing Gorge,45.81,25.66,60,0
.goto Searing Gorge,43.18,35.09
>>杀死|cRXP_ENEMY_Dark Iron Taskmasters |r和|cRXX_ENEMY_ Dark IronSlavers|r。掠夺他们的|cRXD_Loot_Thorium Plated Daggers|r和|134246:0|t[|cRXT_Loot_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_Any|cRXP_ENEMY_Dark Iron Dwarf|r可能掉落|cRXD_LOOT_Thorium Plated Daggers|r和|r|T134246:0|t[|cRXT_LOOT_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_使用|T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]开始任务|r
.complete 7729,1 
.complete 7729,2 
.complete 3443,1 
.collect 11818,1,4451 
.disablecheckbox
.accept 4451 >>接任务: |cRXP_LOOT_自由的钥匙|r
.use 11818 
.mob Dark Iron Taskmaster
.mob Dark Iron Slaver
step
.group 4
.isOnQuest 7722,7701
>>杀死|cRXP_ENEMY_Oversear Maltorius |r。掠夺他的|cRXP_Loot_Head |r
>>偷走|cRXP_Loot_Secret Plans:Fiery Flux|r在长椅上
.complete 7701,1 
.goto Searing Gorge,40.81,35.77
.complete 7722,1 
.goto Searing Gorge,40.447,35.739
.mob Overseer Maltorius
step
.solo
.goto Searing Gorge,41.163,25.537
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_濒死的考古学家|r
.turnin 3371 >>交任务: |cRXP_FRIENDLY_矮人的正义|r
.target Dying Archaeologist
step
.group
.goto Searing Gorge,41.163,25.537
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_濒死的考古学家|r
.turnin 3371 >>交任务: |cRXP_FRIENDLY_矮人的正义|r
.accept 3372 >>接任务: |cRXP_LOOT_释放他们|r
.target Dying Archaeologist
step
#completewith next
+注销后跳出洞穴。有许多不同的点可以使用
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >>|cRXP_WARN_点击此处查看视频参考|r
step
.solo
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3443 >>交任务: |cRXP_FRIENDLY_铸造火炬杆|r
.target Velarok Windblade
step
.group
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3443 >>交任务: |cRXP_FRIENDLY_铸造火炬杆|r
.accept 3452 >>接任务: |cRXP_LOOT_烈焰之盒|r
.target Velarok Windblade
step
.group 3
.goto Searing Gorge,22.98,37.82,70,0
.goto Searing Gorge,27.10,24.40,60,0
.goto Searing Gorge,22.98,37.82
>>杀死|cRXP_ENEMY_Twilight黑暗萨满|r，|cRXD_ENEMY_ Twilight Fire Guards|r，| cRXP__ENEMY_Twight Geomancers|r和|cRXP_ENEMY_暮光之城Idolaters |r。掠夺它们以获得拉格纳罗斯的|cRXT_Loot_符号|r
>>|cRXP_WARN_如果您无法完成此步骤，请暂时跳过此步骤|r
.complete 3452,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
step
.group
.isQuestComplete 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3452 >>交任务: |cRXP_FRIENDLY_烈焰之盒|r
.accept 3453 >>接任务: |cRXP_LOOT_惩戒火炬|r
.timer 28,The Torch of Retribution RP
.turnin 3453 >>交任务: |cRXP_FRIENDLY_惩戒火炬|r
.accept 3454 >>接任务: |cRXP_LOOT_惩戒火炬|r
.target Velarok Windblade
step
.group
.isQuestTurnedIn 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.accept 3453 >>接任务: |cRXP_LOOT_惩戒火炬|r
.timer 28,The Torch of Retribution RP
.turnin 3453 >>交任务: |cRXP_FRIENDLY_惩戒火炬|r
.accept 3454 >>接任务: |cRXP_LOOT_惩戒火炬|r
.target Velarok Windblade
step
.group
.isQuestTurnedIn 3452
.goto Searing Gorge,39.055,39.067
>>单击|cRXP_PICK_Torch of Retribution |r
.turnin 3454 >>交任务: |cRXP_FRIENDLY_惩戒火炬|r
step
.group
.isQuestTurnedIn 3452
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Velarok Windblade, |cRXP_FRIENDLY_侍卫玛特拉克|r
.accept 3462 >>接任务: |cRXP_LOOT_侍卫玛特拉克|r
.goto Searing Gorge,39.057,38.990
.turnin 3462 >>交任务: |cRXP_FRIENDLY_侍卫玛特拉克|r
.accept 3463 >>接任务: |cRXP_LOOT_烧掉它们！|r
.goto Searing Gorge,39.165,38.997
.target Velarok Windblade
.target Squire Maltrake
step
#completewith WarGolem
>>杀死|cRXP_ENEMY_Dark Iron Steamsmiths|r。为|cRXX_Loot_Smithing Tuyere|r掠夺它们
>>杀死|cRXP_ENEMY_Dark Iron Lookout|r。为|cRXX_Loot_Lookout的Spyglass|r掠夺它们
.complete 7728,1 
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
step
#completewith next
>>杀死|cRXP_ENEMY_重型战争傀儡|r
.complete 7723,1 
.goto Searing Gorge,33.20,43.58,0
.mob Heavy War Golem
step
>>杀死|cRXP_ENEMY_大熔岩蜘蛛|r
.complete 7724,1 
.goto Searing Gorge,32.05,42.00,70,0
.goto Searing Gorge,27.4,45.6,70,0
.goto Searing Gorge,28.4,56.6,70,0
.goto Searing Gorge,30.90,66.71,70,0
.goto Searing Gorge,22.86,76.47,70,0
.goto Searing Gorge,27.56,45.45
.mob Greater Lava Spider
step
#label WarGolem
>>杀死|cRXP_ENEMY_重型战争傀儡|r
.complete 7723,1 
.goto Searing Gorge,50.6,39.6,70,0
.goto Searing Gorge,41.6,41.6,70,0
.goto Searing Gorge,32.8,45.8,70,0
.goto Searing Gorge,32.4,53.6,70,0
.goto Searing Gorge,35.6,40.4,70,0
.goto Searing Gorge,41.6,41.6,70,0
.goto Searing Gorge,33.20,43.58
.mob Heavy War Golem
step
.solo
>>杀死|cRXP_ENEMY_Dark Iron Steamsmiths|r。为|cRXX_Loot_Smithing Tuyere|r掠夺它们
>>杀死|cRXP_ENEMY_Dark Iron Lookout|r。为|cRXX_Loot_Lookout的Spyglass|r掠夺它们
.complete 7728,1 
.goto Searing Gorge,39.15,50.18,40,0
.goto Searing Gorge,43.33,51.12,40,0
.goto Searing Gorge,40.42,49.93
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.goto Searing Gorge,44.03,60.90,0
.goto Searing Gorge,33.303,54.477,50,0
.goto Searing Gorge,35.667,60.682,50,0
.goto Searing Gorge,44.030,60.908,50,0
.goto Searing Gorge,50.069,54.737
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
step
.group
#completewith next
>>杀死|cRXP_ENEMY_Dark Iron Steamsmiths|r。为|cRXX_Loot_Smithing Tuyere|r掠夺它们
>>杀死|cRXP_ENEMY_Dark Iron Lookout|r。为|cRXX_Loot_Lookout的Spyglass|r掠夺它们
.complete 7728,1 
.goto Searing Gorge,39.15,50.18,0
.goto Searing Gorge,43.33,51.12,0
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.goto Searing Gorge,44.03,60.90,0
.goto Searing Gorge,50.06,54.73,0
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
step
.group
.isQuestTurnedIn 3452
>>单击塔楼顶部的|cRXP_PICK_Sentry Brazers|r
>>|cRXP_WARN_您必须拥有|r|T135466:0|t[惩罚之火炬]|cRXP_WARN_equiped|r
.use 10515 
.complete 3463,4 
.goto Searing Gorge,33.303,54.477
.complete 3463,1 
.goto Searing Gorge,35.667,60.682
.complete 3463,2 
.goto Searing Gorge,44.030,60.908
.complete 3463,3 
.goto Searing Gorge,50.069,54.737
step
.goto Searing Gorge,54.553,50.414
>>单击|cRXP_PICK_烧焦的橡树|r。将其作为|cRXP_Loot_烧焦的橡树束|r
.complete 53,1 
.isQuestTurnedIn 50
step
#optional
.goto Searing Gorge,65.592,62.172
>>单击|cRXP_PICK_Wooden Outhouse|r
.accept 4451 >>接任务: |cRXP_LOOT_自由的钥匙|r
.turnin 4451 >>交任务: |cRXP_FRIENDLY_自由的钥匙|r
.use 11818 
.itemcount 11818,1 
step
.group 2
.goto Searing Gorge,71.92,73.79,50,0
.goto Searing Gorge,72.64,79.74
>>杀死|cRXP_ENEMY_Margol the Rager |r。掠夺它|T134229:0|t[|cRXX_Loot_Margol’s Horn|r]
.use 10000 >>|cRXP_WARN_使用|T134229:0|t[|cRXP_LOOT_Margol's Horn|r]开始任务|r
.collect 10000,1,3181,1 
.accept 3181 >>接任务: |cRXP_LOOT_玛尔戈的巨角|r
.mob Margol the Rager
step
>>杀死|cRXP_ENEMY_Dark Iron Steamsmiths|r。为|cRXX_Loot_Smithing Tuyere|r掠夺它们
>>杀死|cRXP_ENEMY_Dark Iron Lookout|r。为|cRXX_Loot_Lookout的Spyglass|r掠夺它们
.complete 7728,1 
.goto Searing Gorge,39.15,50.18,40,0
.goto Searing Gorge,43.33,51.12,40,0
.goto Searing Gorge,40.42,49.93
.complete 7728,2 
.goto Searing Gorge,35.73,60.40,0
.goto Searing Gorge,33.71,53.75,0
.goto Searing Gorge,44.03,60.90,0
.goto Searing Gorge,33.303,54.477,50,0
.goto Searing Gorge,35.667,60.682,50,0
.goto Searing Gorge,44.030,60.908,50,0
.goto Searing Gorge,50.069,54.737
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
step
.group
.isQuestTurnedIn 3452
.goto Searing Gorge,39.165,38.997
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侍卫玛特拉克|r
.turnin 3463 >>交任务: |cRXP_FRIENDLY_烧掉它们！|r
.target Squire Maltrake
step
.group
.isQuestTurnedIn 3452
.goto Searing Gorge,38.847,38.985
>>点击地面上黑蜻蜓的|cRXP_PICK_Hoard|r
.accept 3481 >>接任务: |cRXP_LOOT_打开箱子…|r
.turnin 3481 >>交任务: |cRXP_FRIENDLY_打开箱子…|r
step
.group
.isQuestTurnedIn 3452
#completewith TPturnins
.use 10569 >>|cRXP_WARN_打开|r|T132595:0|t[黑蜻蜓的巢穴]
+|cRXP_WARN_确保您保持|r|T134430:0|t[黑蜻蜓熔化]|cRXP_WARN_。不要破坏它。你以后需要它|r
step
.isQuestComplete 7701
.goto Searing Gorge,37.737,26.561
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侦查队长洛洛尔|r
.turnin 7701 >>交任务: |cRXP_FRIENDLY_悬赏：工头玛托留斯|r
.target Lookout Captain Lolo Longstriker
step
.goto Searing Gorge,38.582,27.807
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉瑟尔·重拳|r
.turnin 7723 >>交任务: |cRXP_FRIENDLY_该死的手指头！|r
.turnin 7724 >>交任务: |cRXP_FRIENDLY_熔岩蜘蛛的威胁！|r
.turnin 7727 >>交任务: |cRXP_FRIENDLY_熏火龙|r
.target Hansel Heavyhands
step
.isQuestComplete 7722
.goto Searing Gorge,38.804,28.510
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大铁匠博恩奈特|r
.turnin 7722 >>交任务: |cRXP_FRIENDLY_绝密配方！|r
.target Master Smith Burninate
step
#label TPturnins
.goto Searing Gorge,38.973,27.505
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_监工斯克兰格|r
.turnin 7729 >>交任务: |cRXP_FRIENDLY_工作机会：肃清竞争对手|r
.turnin 7728 >>交任务: |cRXP_FRIENDLY_被盗：鼓风机和望远镜|r
.target Taskmaster Scrange
step
.isOnQuest 3181
.goto Searing Gorge,37.935,30.863
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰尼·瑞德|r
.fly Loch Modan>>飞往莫丹湖
.target Lanie Reed
step
.abandon 7701 >>放弃通缉：监督Maltorius
.abandon 7722 >>Abandon What the Flux?
.abandon 3452 >>放弃火焰的外壳
step
.isOnQuest 3181
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人贝波蒂|r
.turnin 3181 >>交任务: |cRXP_FRIENDLY_玛尔戈的巨角|r
.target Mountaineer Pebblebitty
step
.isQuestTurnedIn 3181
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人贝波蒂|r
.accept 3182 >>接任务: |cRXP_LOOT_证明信|r
.target Mountaineer Pebblebitty
step << !Mage
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
.fly Ironforge >>飞往铁炉堡
.zoneskip Loch Modan,1
.target Thorgrum Borrelson
step << Mage
#completewith next
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r
.trainer >>训练你的职业技能
.target Dink
step << Mage
#completewith SWH
.goto Ironforge,31.33,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩|r
.vendor >>|cRXP_BUY_从她那里购买10|r|T134419:0|t[传送符文]|cRXP_Buy_|r
.collect 17031,10 
.target Ginny Longberry
step << !Mage
.goto Searing Gorge,37.935,30.863
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰尼·瑞德|r
.fly Ironforge >>飞往铁炉堡
.zoneskip Searing Gorge,1
.target Lanie Reed
step << !Druid !Hunter !Warrior !Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,23.141,6.149 << Paladin
.trainer >>训练你的职业技能
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷格努斯·雷石|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >>训练你的职业技能
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step
.isQuestTurnedIn 3181
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索里奥斯馆长|r
>>|cRXP_FRIENDLY_策展人Thorius|r|cRXP_WARN_穿过探索者大厅|r
.turnin 3182 >>交任务: |cRXP_FRIENDLY_证明信|r
.accept 3201 >>接任务: |cRXP_WARN_馆长的证明！|r
.target Curator Thorius
step
.isQuestTurnedIn 2963
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史学家卡尼克|r
.accept 2946 >>接任务: |cRXP_WARN_拭目以待|r
.target Historian Karnik
step
.isOnQuest 3201
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.501,47.742
.fly Loch Modan >>Fly Loch Modan
.zoneskip Ironforge,1
.target Gryth Thurden
step
.isOnQuest 3201
.goto Loch Modan,18.186,84.034
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人贝波蒂|r
.turnin 3201 >>交任务: |cRXP_FRIENDLY_馆长的证明！|r
.target Mountaineer Pebblebitty
step
.isOnQuest 53
.goto Loch Modan,33.938,50.954
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
.fly Westfall >>飞往威斯特福尔
.zoneskip Loch Modan,1
.target Thorgrum Borrelson
step
.isOnQuest 53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.501,47.742
.fly Westfall >>飞往威斯特福尔
.zoneskip Ironforge,1
.target Gryth Thurden
step
.goto Westfall,44.620,80.254
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_葛瑞姆·雷酒|r
.turnin 53 >>交任务: |cRXP_FRIENDLY_琥珀酒|r
.isOnQuest 53
.target Grimbooze Thunderbrew
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
step << Druid
>>前往: |cRXP_PICK_月光林地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >>训练你的职业技能
.target Loganaar
step
.group
.isQuestTurnedIn 3463
.destroy 10515 >>摧毁: |cRXP_ENEMY_惩戒火炬|r
step
#label SWH
#completewith next
.hs >>赫斯到米奈希尔港
step
#completewith next
.goto Wetlands,7.270,62.527,25 >>前往Menethil港码头
step
.goto Wetlands,5.075,63.408
.zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
.zoneskip Tanaris
.zoneskip Thousand Needles
.zoneskip The Barrens
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.300
.fly Tanaris >>前往: 塔纳利斯
.target Baldruc
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 50-51 Tanaris/Un'goro
#next 51-52 Blasted Lands
step
#optional
.isQuestComplete 4450
.goto Tanaris,51.465,28.814
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 4450 >>交任务: |cRXP_FRIENDLY_塔纳利斯的账本|r
.target Krinkle Goodsteel
step
.goto Tanaris,51.808,28.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马林·诺格弗格|r
.accept 2605 >>接任务: |cRXP_LOOT_口渴的地精|r
.target Marin Noggenfogger
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 11727,11725,11724,11723,8623 >>从您的银行提取以下项目：
>>|T133741:0|t[Goodsteel Ledger] 
>>|T134321:0|t[实心水晶支轴] 
>>|T132766:0|t[过期包裹] 
>>|T135272:0|t[古德斯蒂尔的平衡火焰杯] 
>>|T132836:0|t[OOX-17/TN遇险信标]（如果你有） 
.target Gimblethorn
step
.isQuestTurnedIn 3481
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 10575 >>将以下项目存入您的银行：
>>|T134430:0|t[黑蜻蜓熔化]（如果你有） 
.target Gimblethorn
step
.goto Tanaris,51.465,28.814
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 4450 >>交任务: |cRXP_FRIENDLY_塔纳利斯的账本|r
.target Krinkle Goodsteel
step
.goto Tanaris,52.51,27.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.home >>将您的炉石设置为Gadgetzan
.target Innkeeper Fizzgrimble
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.accept 3362 >>接任务: |cRXP_LOOT_灌木谷|r
.target Tran'rek
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 10 >>接任务: |cRXP_LOOT_谢申克的救赎|r
.target Senior Surveyor Fizzledowser
step
#completewith next
.goto Tanaris,54.63,70.75,20 >>进入缺口追逐蜂巢
step
.goto Tanaris,55.956,71.164
>>将|cRXP_Loot_Scrimshank的测量装置|r掠夺到地面上
>>|cRXP_WARN_|cRXP_LOOT_Scrimshank的测量装置|r在蜂巢内|r
.complete 10,1 
step
.goto Tanaris,60.235,64.714
.use 8623 >>|cRXP_WARN_使用|T132836:0|t[|cRXP_OOT_OOX-17/TN遇险信标|r]开始任务|r
>>|cRXP_WARN_如果没有，请跳过此步骤|r
.collect 8623,1,351,1 
.accept 351 >>接任务: |cRXP_WARN_寻找OOX-17/TN！|r
.itemcount 8623,1
step
.goto Tanaris,60.235,64.714
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-17/TN|r
>>|cRXP_WARN_除非你在一个小组中，否则不要接受后续行动并尝试护送|r
.turnin 351 >>交任务: |cRXP_FRIENDLY_寻找OOX-17/TN！|r
.isOnQuest 351
.target Homing Robot OOX-17/TN
step
.group 2
.isQuestTurnedIn 351
.goto Tanaris,60.235,64.714
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-17/TN|r
.accept 648,1 >>接任务: |cRXP_LOOT_拯救OOX-17/TN！|r
.target Homing Robot OOX-17/TN
step
.group 2
.isOnQuest 648
.goto Tanaris,66.99,23.14
>>护送|cRXP_FRIENDLY_Homing Robot OOX-17/TN|r到安全地带
.complete 648,1 
.target Homing Robot OOX-17/TN
step
#completewith next
.isOnQuest 2946 
.goto Tanaris,39.231,80.091,20,0
.goto Tanaris,37.632,81.398,10 >>走山路避开精英|cRXP_ENEMY_Dune Smashers|r
step
.goto Tanaris,37.632,81.398
.isOnQuest 2946
>>单击|cRXP_PICK_Uldum基座|r
>>|cRXP_WARN_有一个精英|cRXP_ENEMY_Dune Smasher|r在巡逻。确保你避开它。其余的都是静止的|r
.turnin 2946 >>交任务: |cRXP_FRIENDLY_拭目以待|r
step
.isQuestTurnedIn 2946
.goto Tanaris,37.632,81.398
>>单击|cRXP_PICK_Uldum基座|r
.accept 2954 >>接任务: |cRXP_WARN_石头卫士|r
step
.isQuestTurnedIn 2946
.goto Tanaris,37.632,81.398
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺甘农的石卫兵|r
>>|cRXP_WARN_有一个精英|cRXP_ENEMY_Dune Smasher|r在巡逻。确保避免|r
.skipgossip 1
.target Stone Watcher of Norgannon
step
.isQuestTurnedIn 2946
.goto Tanaris,37.632,81.398
>>单击|cRXP_PICK_Uldum基座|r
.turnin 2954 >>交任务: |cRXP_FRIENDLY_石头卫士|r
.accept 2977 >>接任务: |cRXP_WARN_返回铁炉堡|r
step
.isOnQuest 2605
.isOnQuest 3362
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15
>>杀死|cRXP_ENEMY_Gnarled Thistle灌木|r和|cRXP_ENEMY_Thistle灌木生根器|r
>>杀死|cRXP_ENEMY_Thistlesbush Dew Collectors|r。掠夺它们以获取|cRXD_Loot_Laden Dew Gland|r
>>|cRXP_WARN_优先杀死|cRXP_ENEMY_Thistlesbush Dew Collectors|r，因为|cRXD_LOOT_Laden Dew Gland|r的掉落几率很低|r
.complete 3362,1 
.complete 3362,2 
.complete 2605,1 
.mob Gnarled Thistleshrub
.mob Thistleshrub Rootshaper
.mob Thistleshrub Dew Collector
step
.isOnQuest 2605
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15
>>杀死|cRXP_ENEMY_Thistlesbush Dew Collectors|r。掠夺它们以获取|cRXD_Loot_Laden Dew Gland|r
.complete 2605,1 
.mob Thistleshrub Dew Collector
step
.isOnQuest 3362
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15,70,0
.goto Tanaris,28.57,66.42,70,0
.goto Tanaris,28.51,63.22,70,0
.goto Tanaris,30.21,63.85,70,0
.goto Tanaris,30.45,66.15
>>杀死|cRXP_ENEMY_Gnarled Thistle灌木|r和|cRXP_ENEMY_Thistle灌木生根器|r
.complete 3362,1 
.complete 3362,2 
.mob Gnarled Thistleshrub
.mob Thistleshrub Rootshaper

step
.goto Tanaris,29.37,59.97,80,0
.goto Tanaris,28.70,67.32,80,0
.goto Tanaris,31.66,74.70
.goto Tanaris,29.37,59.97,0
.goto Tanaris,28.70,67.32,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图加|r
>>|cRXP_WARN_这将开始一个护送任务|r
>>|cRXP_WARN_如果您在任何地方都看不到|cRXP_FRIENDLY_Tooga|r，则可以跳过此步骤|r
.accept 1560 >>接任务: |cRXP_LOOT_图加的任务|r
.unitscan Tooga
step
.isOnQuest 1560
.goto Tanaris,66.571,25.632
>>护送Tooga穿越Tanaris前往Steamweidle港
>>|cRXP_WARN_不要在|cRXP_FRIENDLY_Tooga|r之前跑得太远，否则任务可能会失败！|r
.complete 1560,1 
.target Tooga
step
.isQuestComplete 1560
.goto Tanaris,66.571,25.632
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔塔|r
.turnin 1560 >>交任务: |cRXP_FRIENDLY_图加的任务|r
.target Torta
step
#completewith next
.goto Tanaris,26.98,56.09,0
.goto Tanaris,26.98,56.09,125,0
.goto Un'Goro Crater,71.63,75.95
.zone 1449 >>前往Un'goro火山口
step
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 4290 >>接任务: |cRXP_LOOT_拉克维的食物|r
.target Torwa Pathfinder
step
#completewith CompleteCrystals
>>当你探索Un'Goro陨石坑时，在地面上掠夺|cRXP_Loot_Power水晶|r
.collect 11186,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
.collect 11188,7,4284,1 
step
#completewith Soils
>>当你探索Un'Goro陨石坑时，在地面上掠夺|cRXP_Loot_Un'Goro土壤|r
.collect 11018,25 
step
.goto Un'Goro Crater,63.02,68.60
>>单击|cRXP_PICK_Wrecked Raft|r
.accept 3844 >>接任务: |cRXP_LOOT_无人知晓的秘密|r
step
.goto Un'Goro Crater,63.107,69.057
>>单击水下的|cRXP_PICK_Small Pack |r
.turnin 3844 >>交任务: |cRXP_FRIENDLY_无人知晓的秘密|r
.accept 3845 >>接任务: |cRXP_LOOT_无人知晓的秘密|r
step
#label CompleteCrystals
.goto Un'Goro Crater,68.73,56.70
>>偷走|cRXP_Loot_ Threshadon尸块|r
.complete 4290,1 
step
.goto Un'Goro Crater,45.41,12.13
>>前往元帅避难所
>>途中地面上的战利品|cRXP_Loot_Power Crystals|r
.collect 11186,7,4284,1 
.collect 11185,7,4284,1 
.collect 11184,7,4284,1 
.collect 11188,7,4284,1 
step
#completewith next
.goto Un'Goro Crater,45.41,12.13
.subzone 541 >>前往元帅避难所
step
.goto Un'Goro Crater,42.942,9.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆尔金|r
.accept 4141 >>接任务: |cRXP_LOOT_穆尔金和拉瑞安|r
.target Muigin
step
.goto Un'Goro Crater,44.658,8.098
.use 11107 >>|cRXP_WARN_打开|r|T133653:0|t[小包装]
.complete 3845,1 
.complete 3845,2 
.complete 3845,3 
.isOnQuest 3845
step
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3845 >>交任务: |cRXP_FRIENDLY_无人知晓的秘密|r
.accept 3908 >>接任务: |cRXP_LOOT_无人知晓的秘密|r
.target Linken
step
.destroy 11108 >>摧毁: |cRXP_ENEMY_褪色的照片|r
.destroy 3108 >>摧毁: |cRXP_ENEMY_破损的重型飞刀|r << !Rogue
>>|cRXP_WARN_你不再需要这些了|r
step
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.accept 4284 >>接任务: |cRXP_LOOT_能量水晶|r
.turnin 4284 >>交任务: |cRXP_FRIENDLY_能量水晶|r
.target J.D. Collie
step
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fp Un'Goro >>获取Un'Goro陨石坑飞行路线
.target Gryfe
step
#completewith lashers
.goto Un'Goro Crater,67.6,32.6,0
>>杀死|cRXP_ENEMY_Bloodpeal Lashers|r、|cRXD_ENEMY_ Bloodpeale Thresholds|r和|cRXX_ENEMY_blodpeal Flayer|r。掠夺它们的|cRXP_Loot_BBloodpeals |r
.complete 4141,1 
.mob Bloodpetal Lasher
.mob Bloodpetal Thresher
.mob Bloodpetal Flayer
step
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4290 >>交任务: |cRXP_FRIENDLY_拉克维的食物|r
.accept 4291 >>接任务: |cRXP_LOOT_拉克维的气味|r
.target Torwa Pathfinder
step
.goto Un'Goro Crater,67.324,73.041,8,0
.goto Un'Goro Crater,66.601,66.727,8,0
.goto Un'Goro Crater,60.926,72.234,8,0
.goto Un'Goro Crater,62.285,65.985,8,0
.goto Un'Goro Crater,63.240,77.350,8,0
.goto Un'Goro Crater,67.324,73.041,8,0
.goto Un'Goro Crater,66.601,66.727
.goto Un'Goro Crater,67.324,73.041,0
.goto Un'Goro Crater,60.926,72.234,0
.goto Un'Goro Crater,62.285,65.985,0
.goto Un'Goro Crater,63.240,77.350,0
>>杀死|cRXP_ENEMY_Lar'korwi Mates|r。掠夺它们的|cRXX_Loot_Ravasaur信息素腺|r
>>|cRXP_WARN_走过地面上的|cRXP_PICK_Raptor巢穴|r将触发|cRXP-ENEMY_Lar'korwi配偶|r产卵|r
.complete 4291,1 
.mob Lar'korwi Mate
step
#label lashers
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4291 >>交任务: |cRXP_FRIENDLY_拉克维的气味|r
.target Torwa Pathfinder
step
.goto Un'Goro Crater,75.6,44.4,80,0
.goto Un'Goro Crater,69.6,22.6,80,0
.goto Un'Goro Crater,57.6,37.6,80,0
.goto Un'Goro Crater,74.6,39.8,80,0
.goto Un'Goro Crater,67.6,32.6,80,0
.goto Un'Goro Crater,75.6,44.4,80,0
.goto Un'Goro Crater,69.6,22.6,80,0
.goto Un'Goro Crater,57.6,37.6,80,0
.goto Un'Goro Crater,74.6,39.8,80,0
.goto Un'Goro Crater,67.6,32.6
>>杀死|cRXP_ENEMY_Bloodpeal Lashers|r、|cRXD_ENEMY_ Bloodpeale Thresholds|r和|cRXX_ENEMY_blodpeal Flayer|r。掠夺它们的|cRXP_Loot_BBloodpeals |r
.complete 4141,1 
.mob Bloodpetal Lasher
.mob Bloodpetal Thresher
.mob Bloodpetal Flayer
step
#label Soils
>>杀死|cRXP_ENEMY_Ravasaurs|r。为|T133743:0|t[A Mangled Journal]掠夺它们
>>|cRXP_WARN_Un'Goro火山口的任何暴徒都可能扔下它|r
>>|cRXP_WARN_使用|T133743:0|t[A Mangled Journal]开始任务|r
.collect 11116,1,3884,1 
.accept 3884 >>接任务: |cRXP_LOOT_威利德的日记|r
.use 11116
step
.dungeon Mara
.goto Un'Goro Crater,63.04,66.10
>>升级|cRXP_ENEMY_Raptors|r，直到找到Maraudon组
>>|cRXP_WARN_一旦你的队伍开始爆满，红心到盖特赞交几个任务，然后飞到德索拉斯。在运行Maraudon之前，您必须在Desolace接受一些任务|r
.hs >>Gadgetzan之炉
step
#completewith next
.hs >>Gadgetzan之炉
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
.cooldown item,6948,>0,1
step
.goto Tanaris,51.808,28.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马林·诺格弗格|r
.turnin 2605 >>交任务: |cRXP_FRIENDLY_口渴的地精|r
.accept 2606 >>接任务: |cRXP_LOOT_好味道|r
.target Marin Noggenfogger
step
.goto Tanaris,50.210,27.483
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 10 >>交任务: |cRXP_FRIENDLY_谢申克的救赎|r
.accept 110 >>接任务: |cRXP_LOOT_昆虫研究|r
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 110 >>交任务: |cRXP_FRIENDLY_昆虫研究|r
.accept 113 >>接任务: |cRXP_LOOT_昆虫研究|r
.target Alchemist Pestlezugg
step
.goto Tanaris,51.059,26.873
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普琳科|r
.turnin 2606 >>交任务: |cRXP_FRIENDLY_好味道|r
.accept 2641 >>接任务: |cRXP_LOOT_斯普琳科的秘密佐料|r
.target Sprinkle
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 3362 >>交任务: |cRXP_FRIENDLY_灌木谷|r
.target Tran'rek
step
.goto Tanaris,50.210,27.483
.target Senior Surveyor Fizzledowser
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 113 >>交任务: |cRXP_FRIENDLY_昆虫研究|r
.accept 162 >>接任务: |cRXP_LOOT_异种蝎的威胁|r
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 2799,5807,3900 >>从您的银行提取以下项目：
>>|T134298:0|t[大猩猩的牙]（如果你有） 
>>|T133471:0|t[愚人节报告] 
>>|T132796:0|t[Ppupellyverbose端口] 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 11018,11133,8594 >>将以下项目存入您的银行：
>>|T133849:0|t[乌戈罗土] 
>>|T135357:0|t[林肯练剑] 
>>|T134331:0|t[昆虫分析报告] 
.target Gimblethorn
step
.dungeon Mara
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
.fly Desolace >>Fly to Desolace
.zoneskip Tanaris,1
.target Bera Stonehammer
step
.dungeon Mara
.goto Desolace,64.64,9.25,15,0
.goto Desolace,63.827,10.669
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者玛兰迪斯|r
.accept 7065 >>接任务: |cRXP_WARN_大地的污染|r
.target Keeper Marandis
step
.dungeon Mara
.goto Desolace,66.275,6.554
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板利莎瑞亚|r
.home >>将你的炉石设置为Desolace
.target Innkeeper Lyshaerya
step
.dungeon Mara
.goto Desolace,68.501,8.880
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德莉亚|r
.accept 7041 >>接任务: |cRXP_WARN_维利塔恩的污染|r
.target Keeper Marandis
step
.dungeon Mara
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维洛|r
.accept 7028 >>接任务: |cRXP_WARN_扭曲的邪恶|r
.target Willow
step
.dungeon Mara
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
step
.dungeon Mara
.goto Desolace,29.89,62.44,0
.goto 1414,38.43,57.97
.zone 1414 >>前往: |cRXP_PICK_凄凉之地|r
step
.dungeon Mara
#completewith EnterMaraudon
>>杀死Maraudon的所有|cRXP_ENEMY_Monsters|r。掠夺他们的|cRXP_Loot_Theradric水晶雕刻|r
>>|cRXP_WARN_这可以在实例的外部和内部完成。现在不要尝试完成此操作|r
.complete 7028,1 
.isOnQuest 7028
step
.dungeon Mara
>>杀死|cRXP_ENEMY_无名先知|r。为|T133277:0|t[|cRXP-Loot_灵魂护身符|r]掠夺它
>>|cRXP_WARN_这是在实例之外完成的|cRXP_ENEMY_无名先知|r可能正在巡逻|r
.collect 17757,1,7067,1 
.mob The Nameless Prophet
.isOnQuest 7067
step << skip 
.dungeon Mara
#completewith next
>>杀死|cRXP_ENEMY_Shadowshard Smasher|r和|cRXD_ENEMY_ Shadowshard Rumbler|r。掠夺他们的|cRXP_Loot_Shadowshard碎片|r
>>|cRXP_WARN_这些仅在实例外部的紫色部分中找到|r
.complete 7070,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7070
step
.dungeon Mara
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
step << skip 
.dungeon Mara
.goto 1414,38.13,56.90,60,0
.goto 1414,28.76,56.96,60,0
.goto 1414,38.13,56.90
>>杀死|cRXP_ENEMY_Shadowshard Smasher|r和|cRXD_ENEMY_ Shadowshard Rumbler|r。掠夺他们的|cRXP_Loot_Shadowshard碎片|r
>>|cRXP_WARN_这些仅在实例外部的紫色部分中找到|r
.complete 7070,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7070
step
.dungeon Mara
.goto 1414,38.497,57.721
>>|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_精灵护身符|r]|cRXP_WARN_在|r|cRXP-FRIENDLY_Spirit of Kolk上|r
>>杀死|cRXP_ENEMY_Kolk|r。掠夺他获得|T134129:0|t[|cRXX_Loot_Gem|r]
>>|cRXP_WARN_这是在实例之外完成的|r
.collect 17761,1,7067,1 
.use 17757 
.mob Spirit of Kolk
.mob Kolk
.isOnQuest 7067
step
.dungeon Mara
.goto 1414,38.77,58.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_半人马贱民|r
.accept 7044 >>接任务: |cRXP_WARN_玛拉顿的传说|r
.target Cavindra
step
.dungeon Mara
.goto 1414,38.928,58.354
>>|cRXP_WARN_在橙色水池中使用|r|T134865:0|t[涂层Cerulean小瓶]|cRXP_WARN_in|r
.complete 7041,2 
.use 17693 
.isOnQuest 7041
step
.dungeon Mara
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
step
.dungeon Mara
#label EnterMaraudon
.goto 1414,39.266,58.205
.subzone 2100,2 >>通过橙色边输入Maraudon实例
step
.dungeon Mara
#completewith CrystalCarving
>>杀死Maraudon中的任何|cRXP_ENEMY_Monster|r。掠夺他们的|cRXP_Loot_Theradric水晶雕刻|r
.complete 7028,1 
.isOnQuest 7028
step
.dungeon Mara
#completewith next
>>|cRXP_WARN_在橙色内部的小花/植物上使用|r|T134804:0|t[填充的Cerulean小瓶]|cRXP_WARN_|r
>>杀死被召唤的|cRXP_ENEMY_Noxxious Scion|r
.complete 7041,1 
.use 17696 
.isOnQuest 7041
step
.dungeon Mara
>>|cRXP_WARN_在Veng的|r|cRXP_FRIENDLY_Spirit上使用|r|T133277:0|t[|cRXP_LOOT_灵符|r]|cRXP _WARN_|r
>>杀死|cRXP_ENEMY_Veng|r。掠夺他获得|T134116:0|t[|cRXX_Loot_Gem|r]
>>|cRXP_ENEMY_Veng|r|cRXP_WARN_trols在Maraudon橙色实例内部|r
.collect 17765,1,7067,1 
.use 17757 
.mob Spirit of Veng
.mob Veng
.isOnQuest 7067
step
.dungeon Mara
>>|cRXP_WARN_在橙色内部的小花/植物上使用|r|T134804:0|t[填充的Cerulean小瓶]|cRXP_WARN_|r
>>杀死被召唤的|cRXP_ENEMY_Noxxious Scion|r
.complete 7041,1 
.use 17696 
.isOnQuest 7041
step
.dungeon Mara
>>杀死|cRXP_ENEMY_Noxxion|r。掠夺他以获得|cRXD_Loot_庆祝棒|r
>>杀死|cRXP_ENEMY_Lord Vyletong|r。掠夺他获得|cRXP_Loot_ Celebrian Diamond|r
>>|cRXP_ENEMY_橙色部分的Noxxion |r|cRXP_WARN_is和紫色部分的|cRXP-ENEMY_Lord Vyletong|r|r
.complete 7044,2 
.complete 7044,1 
.isOnQuest 7044
step
.dungeon Mara
>>|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵符|r]|cRXP_WARN_在|r|cRXP-FRIENDLY_Spirit of Maraudos上|r
>>杀死|cRXP_ENEMY_Maraudos|r。为第四可汗的|T134132:0|t[|cRXP-Loot_Gem|r]掠夺他
>>|cRXP_ENEMY_Maraudos|r|cRXP_WARN_trols在Maraudon紫色实例内部|r
.collect 17764,1,7067,1 
.use 17757 
.mob Spirit of Maraudos
.mob Maraudos
.isOnQuest 7067
step
.dungeon Mara
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
step
.dungeon Mara
>>杀死|cRXP_ENEMY_庆祝被诅咒的人|r，然后与|cRXP-FRIENDLY_Celebras救赎者交谈|r
.turnin 7044 >>交任务: |cRXP_FRIENDLY_玛拉顿的传说|r
.isQuestComplete 7044
.mob Celebras the Cursed
.target Celebras the Redeemed
step
.dungeon Mara
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赎罪的塞雷布拉斯|r
.accept 7046 >>接任务: |cRXP_WARN_塞雷布拉斯节杖|r
.timer 14,Incantation of Celebras Spawning RP
.isQuestTurnedIn 7044
.target Celebras the Redeemed
step
.dungeon Mara
.cast 6477 >>点击地面上的|cRXP_PICK_Celebras咒语|r
.timer 34,The Scepter of Celebras RP
.isQuestTurnedIn 7044
step
.dungeon Mara
>>|cRXP_WARN_等待RP|r
.complete 7046,1 
.isQuestTurnedIn 7044
step
.dungeon Mara
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赎罪的塞雷布拉斯|r
.turnin 7046 >>交任务: |cRXP_FRIENDLY_塞雷布拉斯节杖|r
.isQuestTurnedIn 7044
.target Celebras the Redeemed
step
.dungeon Mara
>>杀死|cRXP_ENEMY_Theradas公主|r
.complete 7065,1 
.mob Princess Theradras
.isOnQuest 7065
step
.dungeon Mara
#label CrystalCarving
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔塔的灵魂|r
.accept 7066 >>接任务: |cRXP_WARN_生命之种|r
.target Zaetar's Spirit
step
.dungeon Mara
>>杀死Maraudon中的任何|cRXP_ENEMY_Monster|r。掠夺他们的|cRXP_Loot_Theradric水晶雕刻|r
>>|cRXP_WARN_这可以在实例外部和内部完成|r
.complete 7028,1 
.isOnQuest 7028
step << Druid
.dungeon Mara
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
step << Druid
.dungeon Mara
>>前往: |cRXP_PICK_月光林地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >>训练你的职业技能
.target Loganaar
step << Druid
.dungeon Mara
.isOnQuest 7066
.goto Moonglade,36.178,41.798
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者雷姆洛斯|r
.turnin 7066 >>交任务: |cRXP_FRIENDLY_生命之种|r
.target Keeper Remulos
step
.dungeon Mara
.hs >>Hearth to Nijel's Point
step
.dungeon Mara
.goto Desolace,64.64,9.15,0
.goto Desolace,63.827,10.669
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者玛兰迪斯|r
.turnin 7065 >>交任务: |cRXP_FRIENDLY_大地的污染|r
.target Keeper Marandis
.isQuestComplete 7065
step
.dungeon Mara
.goto Desolace,68.501,8.880
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德莉亚|r
.turnin 7041 >>交任务: |cRXP_FRIENDLY_维利塔恩的污染|r
.target Talendria
.isQuestComplete 7041
step
.dungeon Mara
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维洛|r
.turnin 7028 >>交任务: |cRXP_FRIENDLY_扭曲的邪恶|r
.target Willow
.isQuestComplete 7028
step
.dungeon Mara
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
step
.dungeon Mara
.goto Desolace,64.66,10.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴瑞特·克罗斯|r
.fly Un'Goro Crater >>飞到Un'Goro火山口
.target Baritanas Skyriver
.zoneskip Desolace,1
step
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
.fly Un'Goro Crater >>飞到Un'Goro火山口
.zoneskip Tanaris,1
.target Bera Stonehammer
step
.goto Un'Goro Crater,43.947,7.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威利德·马绍尔|r
.collect 11116,1,3884,1 
.accept 3884 >>接任务: |cRXP_LOOT_威利德的日记|r
.turnin 3884 >>交任务: |cRXP_FRIENDLY_威利德的日记|r
.use 11116
.target Williden Marshal
step
.goto Un'Goro Crater,42.942,9.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆尔金|r
.turnin 4141 >>交任务: |cRXP_FRIENDLY_穆尔金和拉瑞安|r
.accept 4142 >>接任务: |cRXP_WARN_造访格雷甘|r
.target Muigin
step
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fly Ratchet >>飞到棘轮
.zoneskip Un'Goro Crater,1
.target Gryfe
step
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
step
.group
.goto Stranglethorn Vale,26.694,73.613
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.accept 8551 >>接任务: |cRXP_LOOT_船长的箱子|r
step
.group
.goto Stranglethorn Vale,27.618,76.735
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬·菲兹拉克|r
.accept 348 >>接任务: |cRXP_LOOT_荆棘谷热疫|r
.target Fin Fizracket
step
.goto Stranglethorn Vale,27.135,77.451
.target Whiskey Slim
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威士忌斯利姆|r
.turnin 580 >>交任务: |cRXP_FRIENDLY_威士忌斯利姆的酒|r
step
.goto Stranglethorn Vale,27.120,77.208
.target Crank Fizzlebub
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 1122 >>交任务: |cRXP_FRIENDLY_向菲兹巴布报告|r
step
.goto Stranglethorn Vale,26.539,76.570,-1
.goto Stranglethorn Vale,26.515,76.471,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_掘金者维兹尼克|r, |cRXP_FRIENDLY_掘金者里克|r
.bankdeposit 11316 >>将以下项目存入您的银行：
>>|T133941:0|t[花瓣] 
.target Viznik Goldgrubber
.target Rickle Goldgrubber
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 2767 >>交任务: |cRXP_FRIENDLY_拯救OOX-22/FE！|r
.isQuestComplete 2767
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 648 >>交任务: |cRXP_FRIENDLY_拯救OOX-17/TN！|r
.isQuestComplete 648
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 836 >>交任务: |cRXP_FRIENDLY_拯救OOX-09/HL！|r
.isQuestComplete 836
step
.goto Stranglethorn Vale,28.358,76.357
.target Oglethorpe Obnoticus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.accept 3721 >>接任务: |cRXP_WARN_你自己的OOX|r
.turnin 3721 >>交任务: |cRXP_FRIENDLY_你自己的OOX|r
.isQuestTurnedIn 836
.isQuestTurnedIn 648
.isQuestTurnedIn 2767
step
.group 3
.goto Stranglethorn Vale,23.24,71.92
>>杀死|cRXP_ENEMY_Mok'rash|r。为|T133694:0|t[|cRXD_Loot_Mogrammed Sash|r]掠夺他
>>|cRXP_WARN_使用|T133694:0|t[|cRXP_LOOT_Mogrammed Sash|r]开始任务|r
>>|cRXP_WARN_如果需要，风筝|cRXP_ENEMY_Mok'rash|r围绕着巨大的哥布林雕像|r
.collect 3985,1,8552,1 
.use 3985
.accept 8552 >>接任务: |cRXP_LOOT_刺着字母的腰带|r
.link https://www.twitch.tv/videos/850022146?t=04h16m26s >>|cRXP_WARN_点击此处查看视频参考|r
.mob Mok'rash
step
.group 3
.goto Stranglethorn Vale,36.95,69.73
>>杀死|cRXP_ENEMY_Gorlash|r。掠夺他|cRXX_Loot_Smotts的胸部|r
.complete 8551,1 
.mob Gorlash
step
.goto Stranglethorn Vale,32.38,82.23,0
.goto Stranglethorn Vale,34.22,73.25,60,0
.goto Stranglethorn Vale,34.01,77.21,60,0
.goto Stranglethorn Vale,32.34,79.44,60,0
.goto Stranglethorn Vale,32.38,82.23,60,0
.goto Stranglethorn Vale,36.29,83.22,60,0
.goto Stranglethorn Vale,36.69,77.51,60,0
.goto Stranglethorn Vale,41.59,76.88,60,0
.goto Stranglethorn Vale,35.28,72.67,60,0
.goto Stranglethorn Vale,37.08,68.55,60,0
.goto Stranglethorn Vale,37.23,65.05,60,0
.goto Stranglethorn Vale,38.66,61.78
>>沿着海岸打开|cRXP_PICK_Half-Buried Bottles|r。掠夺它们以获得|T133469:0|t[|cRXP_Loot_小心折叠的钞票|r]
>>|cRXP_WARN_使用|T133469:0|t[|cRXP_LOOT_小心折叠笔记|r]开始任务|r
.use 4098
.collect 4098,1,594,1 
.accept 594 >>接任务: |cRXP_LOOT_瓶中信|r
step
#completewith next
.goto Stranglethorn Vale,37.02,81.53
.subzone 297 >>Travel to Jaguero Isle
step
.goto Stranglethorn Vale,38.532,80.580
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普巴尔公主|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Jaguero跟踪者|r in |r |T132320:0|t[潜行]|cRXP-WARN_throughout the Island|r
.turnin 594 >>交任务: |cRXP_FRIENDLY_瓶中信|r
.target Princess Poobah
step
.group
.goto Stranglethorn Vale,38.532,80.580
.target Princess Poobah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普巴尔公主|r
.accept 630 >>接任务: |cRXP_LOOT_瓶中信|r
step
.group 4
.goto Stranglethorn Vale,40.94,83.89
>>杀死|cRXP_ENEMY_King Mukla|r。掠夺他获得|cRXX_Loot_枷锁钥匙|r
.complete 630,1 
.mob King Mukla
step
.goto Stranglethorn Vale,38.532,80.580
.target Princess Poobah
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普巴尔公主|r
.turnin 630 >>交任务: |cRXP_FRIENDLY_瓶中信|r
.isQuestComplete 630
step
.group 3
.addquestitem 2799,348
.goto Stranglethorn Vale,35.271,60.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医安巴格瓦|r
>>|cRXP_WARN_Turn in your 10|r |T134298:0|t[Gorilla Fangs] |cRXP_WARN_to summon|r |cRXP_ENEMY_Mokk the Savage|r
>>杀死|cRXP_ENEMY_Mokk野蛮人|r。为|cRXX_Loot_Mokk|r的心脏而掠夺他
>>|cRXP_WARN_你必须应对3波攻击|r|cRXP_ENEMY_Gorillas|r
.complete 348,1 
.collect 2799,10 
.disablecheckbox
.link https://www.twitch.tv/videos/850022146?t=04h38m04s >>|cRXP_WARN_点击此处查看视频参考|r
.target Witch Doctor Unbagwa
.mob Mokk the Savage
step
#completewith ReturnBB
.goto Stranglethorn Vale,28.97,73.05,100 >>Travel to Booty Bay
step
.goto Stranglethorn Vale,26.694,73.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.turnin 8551 >>交任务: |cRXP_FRIENDLY_船长的箱子|r
.turnin 8552 >>交任务: |cRXP_FRIENDLY_刺着字母的腰带|r
.accept 8553 >>接任务: |cRXP_LOOT_船长的弯刀|r
.isQuestComplete 8551
.isQuestComplete 8552
.target Captain Hecklebury Smotts
step
.goto Stranglethorn Vale,26.694,73.613
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.turnin 8551 >>交任务: |cRXP_FRIENDLY_船长的箱子|r
.isQuestComplete 8551
.target Captain Hecklebury Smotts
step
.goto Stranglethorn Vale,26.694,73.613
.target Captain Hecklebury Smotts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.turnin 8552 >>交任务: |cRXP_FRIENDLY_刺着字母的腰带|r
.accept 8553 >>接任务: |cRXP_LOOT_船长的弯刀|r
.isQuestComplete 8552
step
.isQuestTurnedIn 8552
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r, |cRXP_FRIENDLY_斯普罗格|r
.accept 8553 >>接任务: |cRXP_LOOT_船长的弯刀|r
.goto Stranglethorn Vale,26.694,73.613
.turnin 8553 >>交任务: |cRXP_FRIENDLY_船长的弯刀|r
.goto Stranglethorn Vale,26.655,73.642
.target Captain Hecklebury Smotts
.target Sprogger
step
.goto Stranglethorn Vale,27.618,76.735
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬·菲兹拉克|r
.turnin 348 >>交任务: |cRXP_FRIENDLY_荆棘谷热疫|r
.isQuestComplete 348
.target Fin Fizracket
step
.abandon 8551 >>放弃船长的胸脯
step
.abandon 348 >>放弃荆棘热
step
.abandon 630 >>放弃瓶子里的信息
step << !Mage
#label ReturnBB
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >>飞到暴风城
.zoneskip Stranglethorn Vale,1
.target Gyll
step << Mage
#label ReturnBB
#completewith next
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙德拉斯·月树|r
.trainer >>训练你的职业技能
.target Sheldras Moontree
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >>训练你的职业技能
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
.goto StormwindClassic,38.54,26.86
.trainer >>训练你的职业技能
.target Brother Joshua
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >>训练你的职业技能
.target Einris Brightspear
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >>训练你的职业技能
.accept 8417 >>接任务: |cRXP_WARN_困扰的灵魂|r
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >>训练你的职业技能
.target Osborne the Night Man
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>走进屠宰羔羊，下楼去
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >>训练你的职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯巴克尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Spackle Thornberry
step
#ah
.goto Stormwind City,53.612,59.764
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
>>|cRXP_BUY_购买以下物品，以便很快在爆炸之地更快地上缴|r
>>|cRXP_WARN_这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤|r
>>|cRXP_WARN_|r|T134089:0|t[不完美Draenethyst碎片]|cRXP_WARN_and|r|T134564:0|t[Flawless Draenethyst球体]|cRX P_WARN_很罕见，可能不会出现在拍卖行|r
.blastedLands
.collect 10593,1,3501,1 
.collect 8244,1,2521,1 
.target Auctioneer Jaxon
step
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Blasted Lands>>Fly to Blasted Lands
.target Dungar Longdrink
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 51-52 Blasted Lands
#next 52-52 Searing Gorge/WPL
step
.goto Blasted Lands,67.570,19.291
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥达兰大使|r, 他在塔上
.accept 2783 >>接任务: |cRXP_LOOT_争论|r
.target Ambassador Ardalan
step
.dungeon ZF
.isQuestComplete 2991
.goto Blasted Lands,66.898,19.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨迪斯·格希德|r, 他在塔上
.turnin 2991 >>交任务: |cRXP_FRIENDLY_耐克鲁姆的徽章|r
.accept 2992 >>接任务: |cRXP_WARN_占卜|r
.timer 11,The Divination RP
.turnin 2992 >>交任务: |cRXP_FRIENDLY_占卜|r
.accept 2993 >>接任务: |cRXP_WARN_返回辛特兰|r
.target Thadius Grimshade
step
.dungeon ZF
.isQuestTurnedIn 2991
.goto Blasted Lands,66.898,19.469
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨迪斯·格希德|r, 他在塔上
.accept 2992 >>接任务: |cRXP_WARN_占卜|r
.timer 11,The Divination RP
.turnin 2992 >>交任务: |cRXP_FRIENDLY_占卜|r
.accept 2993 >>接任务: |cRXP_WARN_返回辛特兰|r
.target Thadius Grimshade
step
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2783 >>交任务: |cRXP_FRIENDLY_争论|r
.turnin 8417 >>交任务: |cRXP_FRIENDLY_困扰的灵魂|r << Warrior
.accept 2801 >>接任务: |cRXP_LOOT_悲伤的故事|r
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.complete 2801,1 
.skipgossip
.target Fallen Hero of the Horde
step
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2801 >>交任务: |cRXP_FRIENDLY_悲伤的故事|r
.target Fallen Hero of the Horde
step << Hunter/Rogue
#completewith next
.blastedLands
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>>杀死|cRXP_ENEMY_Vultures|r。掠夺它们的|cRXX_Loot_Izzards|r
>>杀死|cRXP_ENEMY_Basilisk|r。掠夺他们的|cRXX_Loot_Brains|r
>>杀死|cRXP_ENEMY_Boars|r。掠夺它们的|cRXX_Loot_LUNG|r
>>杀死|cRXP_ENEMY_Scorpids|r。掠夺他们的|cRXX_Loot_Picker|r
>>杀死|cRXP_ENEMY_Hyenas|r。掠夺他们的|cRXX_Loot_Jowls|r
>>|cRXP_WARN_优先排列|cRXP_ENEMY_Scorpids|r、|cRXD_ENEMY_Vultures|r和|cRXP_ENEMY_Boars|r，以便您可以获得25敏捷buff|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r与|cRXP__ENEMY_Boars|r共享生成，并且|cRXD_ENEMY_Hyenas|r与| r|cRXP_ENEMY_Scorpids共享生成|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Hunter/Rogue
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥达兰大使|r
>>|cRXP_WARN_一旦你有3个|cRXP_OOT_Pincers|r、2|cRXP_OOT_Gizzards|r和1|cRXP-OOT_Lung|r来寻求25敏捷增益|r
.collect 8393,3,2585,1 
.collect 8396,2,2585,1 
.collect 8392,1,2585,1 
.accept 2585 >>接任务: |cRXP_WARN_决定性的打击|r
.disablecheckbox
.turnin 2585 >>交任务: |cRXP_FRIENDLY_决定性的打击|r
.disablecheckbox
.target Bloodmage Drazial
step << Hunter/Rogue
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥达兰大使|r
.accept 2585 >>接任务: |cRXP_WARN_决定性的打击|r
.turnin 2585 >>交任务: |cRXP_FRIENDLY_决定性的打击|r
.target Bloodmage Drazial
step << Druid/Paladin/Warrior
#completewith next
.blastedLands
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>>杀死|cRXP_ENEMY_Vultures|r。掠夺它们的|cRXX_Loot_Izzards|r
>>杀死|cRXP_ENEMY_Basilisk|r。掠夺他们的|cRXX_Loot_Brains|r
>>杀死|cRXP_ENEMY_Boars|r。掠夺它们的|cRXX_Loot_LUNG|r
>>杀死|cRXP_ENEMY_Scorpids|r。掠夺他们的|cRXX_Loot_Picker|r
>>杀死|cRXP_ENEMY_Hyenas|r。掠夺他们的|cRXX_Loot_Jowls|r
>>|cRXP_WARN_优先排列|cRXP_ENEMY_Hyenas|r、|cRXD_ENEMY_Boars|r和|cRXP_ENEMY_Scorpids|r，以便您可以获得25力量buff|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r与|cRXP__ENEMY_Boars|r共享生成，并且|cRXD_ENEMY_Hyenas|r与| r|cRXP_ENEMY_Scorpids共享生成|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Druid/Paladin/Warrior
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥达兰大使|r
>>|cRXP_WARN_一旦你有3|cRXP_LOOT_Jowls|r、2|cRXD_LOOT_Lungs|r和1|cRXP-LOOT_Pincher|r回合来寻求25力量buff|r
.collect 8391,3,2581,1 
.collect 8392,2,2581,1 
.collect 8393,1,2581,1 
.accept 2581 >>接任务: |cRXP_WARN_弯牙土狼的颚骨|r
.disablecheckbox
.turnin 2581 >>交任务: |cRXP_FRIENDLY_弯牙土狼的颚骨|r
.disablecheckbox
.target Bloodmage Drazial
step << Druid/Paladin/Warrior
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2581 >>接任务: |cRXP_WARN_弯牙土狼的颚骨|r
.turnin 2581 >>交任务: |cRXP_FRIENDLY_弯牙土狼的颚骨|r
.target Bloodmage Drazial
step
.blastedLands
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>>杀死|cRXP_ENEMY_Vultures|r。掠夺它们的|cRXX_Loot_Izzards|r
>>杀死|cRXP_ENEMY_Basilisk|r。掠夺他们的|cRXX_Loot_Brains|r
>>杀死|cRXP_ENEMY_Boars|r。掠夺它们的|cRXX_Loot_LUNG|r
>>杀死|cRXP_ENEMY_Scorpids|r。掠夺他们的|cRXX_Loot_Picker|r
>>杀死|cRXP_ENEMY_Hyenas|r。掠夺他们的|cRXX_Loot_Jowls|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r与|cRXP__ENEMY_Boars|r共享生成，并且|cRXD_ENEMY_Hyenas|r与| r|cRXP_ENEMY_Scorpids共享生成|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step
.addquestitem 8391,2581
.addquestitem 8392,2583
.addquestitem 8393,2585
.addquestitem 8394,2601
.addquestitem 8396,2603
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血法师莱诺雷|r, |cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2601 >>接任务: |cRXP_WARN_石化蜥蜴的大脑|r
.turnin 2601 >>交任务: |cRXP_FRIENDLY_石化蜥蜴的大脑|r
.accept 2603 >>接任务: |cRXP_WARN_秃鹫的活力|r
.turnin 2603 >>交任务: |cRXP_FRIENDLY_秃鹫的活力|r
.goto Blasted Lands,50.640,14.299
.accept 2585 >>接任务: |cRXP_WARN_决定性的打击|r
.turnin 2585 >>交任务: |cRXP_FRIENDLY_决定性的打击|r
.accept 2583 >>接任务: |cRXP_WARN_野猪的活力|r
.turnin 2583 >>交任务: |cRXP_FRIENDLY_野猪的活力|r
.accept 2581 >>接任务: |cRXP_WARN_弯牙土狼的颚骨|r
.turnin 2581 >>交任务: |cRXP_FRIENDLY_弯牙土狼的颚骨|r
.goto Blasted Lands,50.548,14.204
.target Bloodmage Lynnore
.target Bloodmage Drazial
step
#optional
#completewith BLend
.goto Blasted Lands,51.799,35.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_收藏家库米沙|r
.accept 3501 >>接任务: |cRXP_WARN_多多益善|r
.turnin 3501 >>交任务: |cRXP_FRIENDLY_多多益善|r
.collect 10593,1,3501,1 
.itemcount 10593,1 
.target Kum'isha the Collector
step
#optional
#completewith BLend
.goto Blasted Lands,51.799,35.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_收藏家库米沙|r
.accept 2521 >>接任务: |cRXP_WARN_为库米沙效力|r
.turnin 2521 >>交任务: |cRXP_FRIENDLY_为库米沙效力|r
.collect 8244,1,2521,1 
.itemcount 8244,1 
.target Kum'isha the Collector
step
#label BLend
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚历山大·康斯坦丁|r
.fly Redridge >>飞到雷德里奇
.target Alexandra Constantine
.zoneskip Burning Steppes
step
#completewith next
.goto Burning Steppes,78.7,81.1,60,0
.goto Burning Steppes,77.5,68.0
.zone Burning Steppes >>前往: |cRXP_PICK_燃烧平原|r
step
.goto Burning Steppes,82.4,63.6,60,0
.goto Burning Steppes,84.555,68.677
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥拉留斯|r
.accept 3823 >>接任务: |cRXP_LOOT_消灭火腹食人魔|r
.target Oralius
step
.goto Burning Steppes,75.34,48.62,70,0
.goto Burning Steppes,82.89,37.61,70,0
.goto Burning Steppes,80.74,44.38
>>杀死|cRXP_ENEMY_Firegut Ogre法师|r、|cRXD_ENEMY_Firegut Ogres|r和|cRXP_ENEMY_ Firegut Brutes|r
.complete 3823,1 
.complete 3823,2 
.complete 3823,3 
.mob Firegut Ogre Mage
.mob Firegut Ogre
.mob Firegut Brute
step
.goto Burning Steppes,84.555,68.677
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥拉留斯|r
.turnin 3823 >>交任务: |cRXP_FRIENDLY_消灭火腹食人魔|r
.target Oralius
step
.goto Burning Steppes,84.334,68.326
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgun Stoutarm|r
.fly Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
.target Borgun Stoutarm
.zoneskip Searing Gorge
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 52-52 Searing Gorge/WPL
#next 52-53 费伍德森林
step 
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.accept 3452 >>接任务: |cRXP_LOOT_烈焰之盒|r
.target Velarok Windblade
step
.goto Searing Gorge,22.98,37.82,70,0
.goto Searing Gorge,27.10,24.40,60,0
.goto Searing Gorge,22.98,37.82
>>杀死|cRXP_ENEMY_Twilight黑暗萨满|r，|cRXD_ENEMY_ Twilight Fire Guards|r，| cRXP__ENEMY_Twight Geomancers|r和|cRXP_ENEMY_暮光之城Idolaters |r。掠夺它们以获得拉格纳罗斯的|cRXT_Loot_符号|r
>>|cRXP_WARN_如果你对独奏这些精英没有信心，请跳过这一步|r
.complete 3452,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
step
.isQuestComplete 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3452 >>交任务: |cRXP_FRIENDLY_烈焰之盒|r
.target Velarok Windblade
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.accept 3453 >>接任务: |cRXP_LOOT_惩戒火炬|r
.timer 28,The Torch of Retribution RP
.turnin 3453 >>交任务: |cRXP_FRIENDLY_惩戒火炬|r
.accept 3454 >>接任务: |cRXP_LOOT_惩戒火炬|r
.target Velarok Windblade
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.055,39.067
>>单击|cRXP_PICK_Torch of Retribution |r
.turnin 3454 >>交任务: |cRXP_FRIENDLY_惩戒火炬|r
step
.isQuestTurnedIn 3452
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Velarok Windblade, |cRXP_FRIENDLY_侍卫玛特拉克|r
.accept 3462 >>接任务: |cRXP_LOOT_侍卫玛特拉克|r
.goto Searing Gorge,39.057,38.990
.turnin 3462 >>交任务: |cRXP_FRIENDLY_侍卫玛特拉克|r
.accept 3463 >>接任务: |cRXP_LOOT_烧掉它们！|r
.goto Searing Gorge,39.165,38.997
.target Velarok Windblade
.target Squire Maltrake
step
.isQuestTurnedIn 3452
>>单击塔楼顶部的|cRXP_PICK_Sentry Brazers|r
>>|cRXP_WARN_您必须拥有|r|T135466:0|t[惩罚之火炬]|cRXP_WARN_equiped|r
.use 10515 
.complete 3463,4 
.goto Searing Gorge,33.303,54.477
.complete 3463,1 
.goto Searing Gorge,35.667,60.682
.complete 3463,2 
.goto Searing Gorge,44.030,60.908
.complete 3463,3 
.goto Searing Gorge,50.069,54.737
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.165,38.997
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侍卫玛特拉克|r
.turnin 3463 >>交任务: |cRXP_FRIENDLY_烧掉它们！|r
.target Squire Maltrake
step
.isQuestTurnedIn 3463
.destroy 10515 >>摧毁: |cRXP_ENEMY_惩戒火炬|r
step
.isQuestTurnedIn 3452
.goto Searing Gorge,38.847,38.985
>>点击地面上黑蜻蜓的|cRXP_PICK_Hoard|r
.accept 3481 >>接任务: |cRXP_LOOT_打开箱子…|r
.turnin 3481 >>交任务: |cRXP_FRIENDLY_打开箱子…|r
step
#optional
.itemcount 10569,1
.use 10569 >>|cRXP_WARN_打开|r|T132595:0|t[黑蜻蜓的巢穴]
+|cRXP_WARN_确保您保持|r|T134430:0|t[黑蜻蜓熔化]|cRXP_WARN_。不要破坏它。你以后需要它|r
step
.group 4
.isOnQuest 3372
.goto Searing Gorge,24.61,30.97,25,0
.goto Searing Gorge,29.144,25.849
>>打开|cRXP_PICK_Twilight Artifact|r。为|cRXP_Loot_Mysterious Artifact|r掠夺它
>>|cRXP_WARN_跳到|cRXP_PICK_Twilight Artifact|r上进行掠夺|r
>>|cRXP_WARN_如果无法完成，请跳过此步骤|r
.complete 3372,1 
step
.group 4
.goto Searing Gorge,29.505,26.325
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨麦尔·月棘|r
.accept 3377 >>接任务: |cRXP_LOOT_艾露恩祷言|r
.skipgossip
.turnin 3377 >>交任务: |cRXP_FRIENDLY_艾露恩祷言|r
.accept 3378 >>接任务: |cRXP_LOOT_艾露恩祷言|r
.target Zamael Lunthistle
step
.group 4
.isOnQuest 3378
.goto Searing Gorge,22.98,37.82,70,0
.goto Searing Gorge,27.10,24.40,60,0
.goto Searing Gorge,22.98,37.82
>>杀死|cRXP_ENEMY_Twilight黑暗萨满|r，|cRXD_ENEMY_ Twilight火卫|r，| cRXP__ENEMY_暮光之城地理学家|r和|cRXP_ENEMY_暮光之光偶像|r。为|cRXP_Loot_向精灵祈祷而掠夺他们|r
>>|cRXP_WARN_如果无法完成，请跳过此步骤|r
.complete 3378,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
step
.group 4
#completewith next
.isQuestComplete 3372
.goto Searing Gorge,49.56,45.38
.subzone 1443 >>跳进矿渣坑。按照箭头
step
.group 4
.isQuestComplete 3372
.goto Searing Gorge,41.252,25.408
>>单击Suntara|r的|cRXP_PICK_Altar
.turnin 3372 >>交任务: |cRXP_FRIENDLY_释放他们|r
step
.group
.abandon 3372 >>Abandon Release Them
step
.group 4
.isQuestTurnedIn 3372
.goto Searing Gorge,41.163,25.541
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_濒死的考古学家|r
.target Dying Archaeologist
.accept 3566 >>接任务: |cRXP_LOOT_奥比斯顿|r
step
.group 4
.isQuestTurnedIn 3372
>>杀死|cRXP_ENEMY_Lathoric the Black|r和|cRXP_ENEMY_Obsidion|r。掠夺它们以获得|cRXD_Loot_ Lathoric theBlack|r的头部和|cRXP_Loot_ Obsidion之心|r
.complete 3566,1 
.complete 3566,2 
.mob Lathoric the Black
.mob Obsidion
step << !Mage
.group
.isQuestTurnedIn 3372
#completewith next
+注销后跳出洞穴。有许多不同的点可以使用
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >>|cRXP_WARN_点击此处查看视频参考|r
step << !Mage
.goto Searing Gorge,37.935,30.863
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰尼·瑞德|r
.fly Ironforge >>飞往铁炉堡
.target Lanie Reed
step << Mage
#completewith next
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r
.accept 8250 >>接任务: |cRXP_WARN_法师的会见|r
.trainer >>训练你的职业技能
.target Dink
step
#completewith CHam
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_信使考雷·落锤|r
>>|cRXP_FRIENDLY_Courier Hammerfall|r|cRXP_WARN_trols through all Ironforge|r
.accept 5090 >>接任务: |cRXP_LOOT_战斗的号角：瘟疫之地！|r
.unitscan Courier Hammerfall
step
.isQuestComplete 3566
.goto Ironforge,71.83,16.12,30,0
.goto Ironforge,77.02,26.38,30,0
.goto Ironforge,64.03,4.20,30,0
.goto Ironforge,71.83,16.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索里奥斯馆长|r
>>|cRXP_FRIENDLY_策展人Thorius|r|cRXP_WARN_穿过探索者大厅|r
.turnin 3566 >>交任务: |cRXP_FRIENDLY_奥比斯顿|r
.target Curator Thorius
step
.abandon 3566 >>Abandon Rise Obsidion!
step
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史学家卡尼克|r
.accept 3448 >>接任务: |cRXP_LOOT_委以重任|r
.target Historian Karnik
step
.isOnQuest 2977
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史学家卡尼克|r
.turnin 2977 >>交任务: |cRXP_FRIENDLY_返回铁炉堡|r
.accept 2964 >>接任务: |cRXP_WARN_进一步的任务|r
.target Historian Karnik
step
.isQuestTurnedIn 2977
.goto Ironforge,77.539,11.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史学家卡尼克|r
.accept 2964 >>接任务: |cRXP_WARN_进一步的任务|r
.target Historian Karnik
step
.isOnQuest 2964
.goto Ironforge,69.930,18.548
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_资深探险家麦格拉斯|r
.turnin 2964 >>交任务: |cRXP_FRIENDLY_进一步的任务|r
.target High Explorer Magellas
step
.goto Ironforge,75.768,23.389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉里斯·空轮|r
.accept 4512 >>接任务: |cRXP_LOOT_远方的软泥怪|r
.target Laris Geardawdle
step << Rogue
.goto Ironforge,51.981,14.851
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍夫丹·黑须|r
.trainer >>训练你的职业技能
.accept 8233 >>接任务: |cRXP_WARN_简单的要求|r
.target Hulfdan Blackbeard
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Jubahl Corpseseeker
step << Warlock
.goto Ironforge,50.343,5.657
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r
.trainer >>训练你的职业技能
.accept 8419 >>接任务: |cRXP_LOOT_小鬼的要求|r
.target Briarthorn
step
.goto Ironforge,30.96,4.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法师泰摩尔|r
.turnin 3448 >>交任务: |cRXP_FRIENDLY_委以重任|r
.accept 3449 >>接任务: |cRXP_LOOT_奥术符文|r
.accept 3450 >>接任务: |cRXP_LOOT_简单的接收任务|r
.target Tymor
step << Paladin
.goto Ironforge,23.126,6.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r
.trainer >>训练你的职业技能
.accept 8415 >>接任务: |cRXP_WARN_冰风岗|r
.target Brandur Ironhammer
step << Priest
.goto Ironforge,26.970,7.323,15,0
.goto Ironforge,24.337,10.433,5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师洛汉|r
.trainer >>训练你的职业技能
.accept 8254 >>接任务: |cRXP_WARN_塞纳里奥议会的求助|r
.target High Priest Rohan
step << Warrior
.goto Ironforge,65.905,88.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r
.trainer >>训练你的职业技能
.target Bilban Tosslespanner
step << Hunter
.goto Ironforge,70.889,83.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥尔明·燃须|r
.trainer >>训练你的职业技能
.accept 8151 >>接任务: |cRXP_WARN_猎人的护符|r
.target Olmin Burningbeard
step
#label CHam
.goto Ironforge,70.860,94.570
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希格斯·熔火|r
.turnin 3450 >>交任务: |cRXP_FRIENDLY_简单的接收任务|r
.accept 3451 >>接任务: |cRXP_LOOT_信号发射器|r
.turnin 3451 >>交任务: |cRXP_FRIENDLY_信号发射器|r
.target Xiggs Fuselighter
step
.goto Ironforge,33.4,20.0,70,0
.goto Ironforge,25.6,61.6,70,0
.goto Ironforge,64.8,77.8,70,0
.goto Ironforge,70.6,48.0,70,0
.goto Ironforge,65.0,22.6,70,0
.goto Ironforge,50.4,10.4,70,0
.goto Ironforge,32.6,21.0,70,0
.goto Ironforge,40.8,39.4,70,0
.goto Ironforge,51.2,56.6,70,0
.goto Ironforge,55.8,35.2,70,0
.goto Ironforge,33.0,22.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_信使考雷·落锤|r
>>|cRXP_FRIENDLY_Courier Hammerfall|r|cRXP_WARN_trols through all Ironforge|r
.accept 5090 >>接任务: |cRXP_LOOT_战斗的号角：瘟疫之地！|r
.unitscan Courier Hammerfall
step
.goto Ironforge,18.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板洛雷·火酒|r
.home Ironforge >>将您的炉石设置为铁炉堡
.target Innkeeper Firebrew
step
.isQuestTurnedIn 3481
.itemcount 10575,1 
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 10575 >>将以下项目存入您的银行：
>>|T134430:0|t[黑蜻蜓熔化]（如果你有） 
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.bankdeposit 10444,10445 >>将以下项目存入您的银行：
>>|T134537:0|t[标准版火炬枪] 
>>|T132594:0|t[绘图套件] 
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.bankwithdraw 10819,9328,9330 >>从您的银行提取以下项目：
>>|T132927:0|t[Wildkin Feather] 
>>|T134442:0|t[超级Snapper FX] 
>>|T134300:0|t[Gammerita快照] 
.target Bailey Stonemantle
step << Rogue
#completewith AzureBag
.isOnQuest 8233
.goto Ironforge,55.491,47.751
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Southshore >>飞往南岸
.target Gryth Thurden
step << Rogue
.isOnQuest 8233
.goto Hillsbrad Foothills,75.575,22.076,20,0
.goto Hillsbrad Foothills,86.026,78.879
.subzone 3486 >>前往拉文霍尔特庄园
step << Rogue
.isOnQuest 8233
.goto Hillsbrad Foothills,86.026,78.879
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r, 他在楼上
.turnin 8233 >>交任务: |cRXP_FRIENDLY_简单的要求|r
.accept 8234 >>接任务: |cRXP_WARN_密封的蓝袋子|r
.target Lord Jorach Ravenholdt
step << Rogue
.isQuestTurnedIn 8233
.goto Hillsbrad Foothills,86.026,78.879
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r, 他在楼上
.accept 8234 >>接任务: |cRXP_WARN_密封的蓝袋子|r
.target Lord Jorach Ravenholdt
step << Rogue
.isOnQuest 8234
#label AzureBag
#completewith Tragan
.goto Hillsbrad Foothills,83.395,32.309,90,0
.goto The Hinterlands,7.50,58.87
.zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
step
.goto Ironforge,55.491,47.751
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Hinterlands>>飞到腹地
.target Gryth Thurden
.zoneskip The Hinterlands
step
.dungeon ZF
.isOnQuest 2993
.goto The Hinterlands,9.752,44.473
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狮鹫管理员沙拉克·鹰斧|r
.turnin 2993 >>交任务: |cRXP_FRIENDLY_返回辛特兰|r
.target Gryphon Master Talonaxe
step
#label Tragan
.goto The Hinterlands,40.63,59.65
>>在水下抢劫|cRXP_OOT_Violet Tragan|r
.complete 2641,1 
step
#completewith FlyWPL
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈斯鲁姆|r
.fly Western Plaguelands>>飞往西部瘟疫地区
.target Guthrum Thunderfist
step
.isOnQuest 5066
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
.turnin 5066 >>交任务: |cRXP_FRIENDLY_战斗的号角：瘟疫之地！|r
.turnin 8415 >>交任务: |cRXP_FRIENDLY_冰风岗|r << Paladin
.accept 8414 >>接任务: |cRXP_LOOT_驱散邪恶|r << Paladin
.accept 5092 >>接任务: |cRXP_LOOT_扫清道路|r
.target 指挥官Ashlam Valorfist
step
.isQuestTurnedIn 5066
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
.turnin 8415 >>交任务: |cRXP_FRIENDLY_冰风岗|r << Paladin
.accept 8414 >>接任务: |cRXP_LOOT_驱散邪恶|r << Paladin
.accept 5092 >>接任务: |cRXP_LOOT_扫清道路|r
.target 指挥官Ashlam Valorfist
step
.isOnQuest 5091
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
.turnin 5091 >>交任务: |cRXP_FRIENDLY_战斗的号角：瘟疫之地！|r
.turnin 8415 >>交任务: |cRXP_FRIENDLY_冰风岗|r << Paladin
.accept 8414 >>接任务: |cRXP_LOOT_驱散邪恶|r << Paladin
.accept 5092 >>接任务: |cRXP_LOOT_扫清道路|r
.target 指挥官Ashlam Valorfist
step
.isQuestTurnedIn 5091
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
.turnin 8415 >>交任务: |cRXP_FRIENDLY_冰风岗|r << Paladin
.accept 8414 >>接任务: |cRXP_LOOT_驱散邪恶|r << Paladin
.accept 5092 >>接任务: |cRXP_LOOT_扫清道路|r
.target 指挥官Ashlam Valorfist
step
.isOnQuest 5090
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
.turnin 5090 >>交任务: |cRXP_FRIENDLY_战斗的号角：瘟疫之地！|r
.turnin 8415 >>交任务: |cRXP_FRIENDLY_冰风岗|r << Paladin
.accept 8414 >>接任务: |cRXP_LOOT_驱散邪恶|r << Paladin
.accept 5092 >>接任务: |cRXP_LOOT_扫清道路|r
.target 指挥官Ashlam Valorfist
step
.isQuestTurnedIn 5090
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
.turnin 8415 >>交任务: |cRXP_FRIENDLY_冰风岗|r << Paladin
.accept 8414 >>接任务: |cRXP_LOOT_驱散邪恶|r << Paladin
.accept 5092 >>接任务: |cRXP_LOOT_扫清道路|r
.target 指挥官Ashlam Valorfist
step
.goto Western Plaguelands,42.968,83.546
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_银色黎明军官普尔哈特|r
.accept 5401 >>接任务: |cRXP_WARN_银色黎明委任徽章|r
.turnin 5401 >>交任务: |cRXP_FRIENDLY_银色黎明委任徽章|r
.target Argent Officer Pureheart
step
#completewith next
.cast 17670 >>|cRXP_WARN_采集|r|T133440:0|t[银色黎明委员会]|cRXP_WARN_开始采集|r| T133447:0|t[Surgestones]
.use 12846
step
#label FlyWPL
.goto Western Plaguelands,48.91,80.84,70,0
.goto Western Plaguelands,50.01,76.90
>>杀死|cRXP_ENEMY_Skeletal Flayers|r和|cRXX_ENEMY_Slaving Ghoul|r << !Paladin
>>杀死|cRXP_ENEMY_Skeletal Flayer|r和|cRXP_ENEMY_Slaving Ghoul|r。掠夺它们的|cRXD_Loot_Minion的Scourgestones|r << Paladin
.complete 5092,1 
.complete 5092,2 
.complete 8414,1 << Paladin 
.mob Skeletal Flayer
.mob Slavering Ghoul
step << Paladin
.goto Western Plaguelands,51.99,82.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师赛尔丹尼斯|r
.turnin 8414 >>交任务: |cRXP_FRIENDLY_驱散邪恶|r
.accept 8416 >>接任务: |cRXP_LOOT_惰性天灾石|r
.target High Priest Thel'danis
step
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
.turnin 5092 >>交任务: |cRXP_FRIENDLY_扫清道路|r
.turnin 8416 >>交任务: |cRXP_FRIENDLY_惰性天灾石|r << Paladin
.target 指挥官Ashlam Valorfist
step << !Mage
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比比尔法兹|r
.fly Menethil Harbor >>飞往米奈希尔港
.target Bibilfaz Featherwhistle
.zoneskip Western Plaguelands,1
step << !Mage
.goto Wetlands,4.560,57.160
.zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
.zoneskip Darnassus
.zoneskip Teldrassil
step << !Mage
#completewith next
.goto Darkshore,36.336,45.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
.fly Teldrassil >>飞往Teldrassil
.target Caylais Moonfeather
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 3661 >>交任务: |cRXP_FRIENDLY_月神之兽？|r
.target Erelas Ambersky
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
>>|cRXP_WARN_如果您的等级不超过52级，请跳过此步骤。你稍后再做|r
.accept 978 >>接任务: |cRXP_LOOT_月光羽毛|r
.target Erelas Ambersky
.xp <52,1
step << !Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达蕾恩·轻风|r, 他在楼上
.turnin 2944 >>交任务: |cRXP_FRIENDLY_超级摄影器FX|r
.accept 2943 >>接任务: |cRXP_WARN_向特洛亚斯回复|r
.target Daryn Lightwind
step << !Mage
#completewith next
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Mage
#completewith next
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊迪瑞娜|r, |cRXP_FRIENDLY_加瑞斯|r, |cRXP_FRIENDLY_莱恩|r
.bankwithdraw 8594,11133,11018 >>从您的银行提取以下项目：
>>|T134331:0|t[昆虫分析报告] 
>>|T135357:0|t[林肯练剑] 
>>|T133849:0|t[乌戈罗土]（如果你有20） 
.target Idriana
.target Garryeth
.target Lairn
step
.goto Darnassus,39.7,42.1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊迪瑞娜|r, |cRXP_FRIENDLY_加瑞斯|r, |cRXP_FRIENDLY_莱恩|r
.bankdeposit 8526 >>将以下项目存入您的银行：
>>|T134527:0|t[Violet Tragan] 
.target Idriana
.target Garryeth
.target Lairn
step
.goto Darnassus,67.427,15.655
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板塞琳尼|r
.accept 3763 >>接任务: |cRXP_LOOT_协助大德鲁伊|r
.target Innkeeper Saelienne
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
.turnin 3763 >>交任务: |cRXP_FRIENDLY_协助大德鲁伊|r
.target Arch Druid Fandral Staghelm
step
#optional
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
.accept 3764 >>接任务: |cRXP_LOOT_安戈洛的泥土|r
.itemcount 11018,20 
.target Arch Druid Fandral Staghelm
step
#optional
.goto Darnassus,31.485,8.237
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶纳尔|r
.turnin 3764 >>交任务: |cRXP_FRIENDLY_安戈洛的泥土|r
.itemcount 11018,20 
.target Jenal
step
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格拉希娜·灵风|r
.turnin 162 >>交任务: |cRXP_FRIENDLY_异种蝎的威胁|r
.accept 4493 >>接任务: |cRXP_LOOT_异种蝎的远征|r
.target Gracina Spiritmight
step
.group
.isQuestComplete 3378
.goto Darnassus,38.334,80.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯塔利·逐星|r
.turnin 3378 >>交任务: |cRXP_FRIENDLY_艾露恩祷言|r
.target Astarii Starseeker
step << Warlock
#era
#phase 4
#ah
.goto Darnassus,56.245,54.039,-1
.goto Darnassus,56.374,51.820,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
>>购买以下物品，很快就能在费尔伍德购物。如果您不想购买，请跳过此步骤
>>|T132888:0|t[Felcloth]
.collect 14256,1,8419,1 
.target Auctioneer Tolon
.target Auctioneer Golothas
step << Warlock
#som
#ah
.goto Darnassus,56.245,54.039,-1
.goto Darnassus,56.374,51.820,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
>>购买以下物品，很快就能在费尔伍德购物。如果您不想购买，请跳过此步骤
>>|T132888:0|t[Felcloth]
.collect 14256,1,8419,1 
.target Auctioneer Tolon
.target Auctioneer Golothas
step
.group
.abandon 3378 >>Abandon Prayer to Elune
step << Druid
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
.trainer >>训练你的职业技能
.target Mathrengyl Bearwalker
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷亚斯塔·刃歌|r
.goto Darnassus,58.718,34.905
.trainer >>训练你的职业技能
.target Arias'ta Bladesinger
step << Priest
.goto Darnassus,37.901,82.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾德莉亚|r
.trainer >>训练你的职业技能
.target Jandria
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
.trainer >>训练你的职业技能
.target Syurna
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
.trainer >>训练你的职业技能
.target Jocaste
step
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darnassus,1
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 3661 >>交任务: |cRXP_FRIENDLY_月神之兽？|r
.target Erelas Ambersky
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
>>|cRXP_WARN_如果您的等级不超过52级，请跳过此步骤。你稍后再做|r
.accept 978 >>接任务: |cRXP_LOOT_月光羽毛|r
.target Erelas Ambersky
.xp <52,1
step << Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达蕾恩·轻风|r, 他在楼上
.turnin 2944 >>交任务: |cRXP_FRIENDLY_超级摄影器FX|r
.accept 2943 >>接任务: |cRXP_WARN_向特洛亚斯回复|r
.target Daryn Lightwind
step
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
.fly Azshara >>Fly to Azshara
.zoneskip Teldrassil,1
.target Vesprystus
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 52-53 费伍德森林
#next 53-54 Feralas/Azshara
step
.goto Azshara,11.368,78.166
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗哈图|r
.accept 5535 >>接任务: |cRXP_WARN_永不安息的灵魂|r
.accept 5536 >>接任务: |cRXP_WARN_充满仇恨的土地|r
.target Loh'atu
step
#completewith next
.goto Azshara,17.12,69.00,0
.goto Azshara,14.22,72.74,0
>>杀死|cRXP_ENEMY_Highborne幻影|r和|cRXX_ENEMY_High borne巫妖|r
.complete 5535,1 
.complete 5535,2 
.mob Highborne Apparition
.mob Highborne Lichling
step
.goto Azshara,19.35,63.02,60,0
.goto Azshara,20.65,60.89
>>杀死|cRXP_ENEMY_Haldarr Satyrs|r、|cRXD_ENEMY_Haldarr Tricksters|r和|cRXP_ENEMY_Halldarr Felswarns|r
.complete 5536,1 
.complete 5536,2 
.complete 5536,3 
.mob Haldarr Satyr
.mob Haldarr Trickster
.mob Haldarr Felsworn
step
.goto Azshara,17.12,69.00,60,0
.goto Azshara,14.22,72.74,60,0
.goto Azshara,17.12,69.00
>>杀死|cRXP_ENEMY_Highborne幻影|r和|cRXX_ENEMY_High borne巫妖|r
>>|cRXP_WARN_保存一个|cRXP_LOOT_Ichor of Undeath|r，如果你以后从他们那里得到一个，那么你以后会得到一个|r << Priest
.complete 5535,1 
.complete 5535,2 
.collect 7972,1,8256,1,1 << Priest 
.mob Highborne Apparition
.mob Highborne Lichling
step
.goto Azshara,11.368,78.166
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗哈图|r
.turnin 5535 >>交任务: |cRXP_FRIENDLY_永不安息的灵魂|r
.turnin 5536 >>交任务: |cRXP_FRIENDLY_充满仇恨的土地|r
.target Loh'atu
step
#completewith next
.goto Ashenvale,55.97,31.97,0
.goto Felwood,54.14,86.83
.zone Felwood >>前往: |cRXP_PICK_费伍德森林|r
step
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿拉珊蒂丝·银空|r
.accept 4101 >>接任务: |cRXP_LOOT_净化费伍德|r
.target Arathandris Silversky
step
.goto Felwood,50.927,85.005
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格拉兹|r
.accept 8460 >>接任务: |cRXP_LOOT_木喉熊怪的盟友|r
.target Grazle
step
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81
>>杀死|cRXP_ENEMY_枯木勇士|r、|cRXP_ENEMY_枯木探路者|r和|cRXX_ENEMY_Deadwood园丁|r
.complete 8460,1 
.complete 8460,2 
.complete 8460,3 
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,50.927,85.005
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格拉兹|r
.turnin 8460 >>交任务: |cRXP_FRIENDLY_木喉熊怪的盟友|r
.accept 8462 >>接任务: |cRXP_LOOT_与纳菲恩交谈|r
.target Grazle
step
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81
.reputation 576,unfriendly
>>|cRXP_WARN_请勿跳过此步骤。你稍后需要声望才能穿过Timbermaw Hold前往北方|r
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81
>>|cRXP_WARN_您将需要12堆|r|T132892:0|t[Magewave Cloth]|cRXP_WARN_form才能很快在主要城市进行布料翻转。火绒是它们的重要来源。如果您已经有了，请跳过此步骤|r
.collect 4338,240 
.xp 52.5
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step << Warlock
.goto Felwood,43.27,84.98,45,0
.goto Felwood,43.41,88.13,70,0
.goto Felwood,39.45,84.55
>>杀死|cRXP_ENEMY_Jadefire Satyrs|r和|cRXX_ENEMY_Jadefire Felsworks|r。掠夺它们作为Felcloth
.collect 14256,1,8419,1 
.mob Jadefire Satyr
.mob Jadefire Felsworn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.accept 5155 >>接任务: |cRXP_LOOT_加德纳尔的势力|r
.goto Felwood,51.21,82.10
.target Greta Mosshoof
step
#completewith next
.use 11912 >>|cRXP_WARN_打开|r|T132763:0|t[空Ooze容器的包装]
.collect 11914,6 
.collect 11948,6 
step
.goto Felwood,40.77,66.86
>>杀死|cRXP_ENEMY_Cursed Ooze|r
>>|cRXP_WARN_在他们的尸体上使用|r|T134864:0|t[Empty Cursed Ooze Jars]|cRXP_WARN_on|r
.complete 4512,1 
.use 11912 
.use 11914 
.mob Cursed Ooze
step << Warlock
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊普斯|r
.turnin 8419 >>交任务: |cRXP_FRIENDLY_小鬼的要求|r
.accept 8421 >>接任务: |cRXP_LOOT_奇怪的材料|r
.target Impsy
step << Warlock
#completewith FinalOoze
.goto Felwood,40.48,59.07,0
.goto Felwood,39.98,54.76,0
>>杀死|cRXP_ENEMY_Tained Ooze|r。掠夺它们的|cRXX_Loot_Bedvenom Essences|r
.complete 8421,2 
.mob Tainted Ooze
step
#completewith next
.goto Felwood,40.48,59.07,0
.goto Felwood,39.98,54.76,0
>>杀死|cRXP_ENEMY_Tained Ooze|r
>>|cRXP_WARN_在他们的尸体上使用|r|T134864:0|t[Empty Tained Ooze Jars]|cRXP_WARN_on|r
.use 11948 
.complete 4512,2 
.mob Tainted Ooze
step
.goto Felwood,38.55,59.14,50,0
.goto Felwood,36.49,61.40,60,0
.goto Felwood,35.01,59.83,60,0
.goto Felwood,36.49,61.40,60,0
.goto Felwood,38.55,59.14,60,0
.goto Felwood,36.49,61.40
>>杀死|cRXP_ENEMY_Jaedenar猎犬|r，|cRXD_ENEMY_Jaedenar守护者|r，| cRXP__ENEMY_Jaidenar Adepts|r和|cRXP_ENEMY_贾德纳尔邪教分子|r
.complete 5155,1 
.complete 5155,2 
.complete 5155,3 
.complete 5155,4 
.mob Jaedenar Hound
.mob Jaedenar Guardian
.mob Jaedenar Adept
.mob Jaedenar Cultist
step
#label FinalOoze
.goto Felwood,40.48,59.07,70,0
.goto Felwood,39.98,54.76,0
>>杀死|cRXP_ENEMY_Tained Ooze|r
>>|cRXP_WARN_在他们的尸体上使用|r|T134864:0|t[Empty Tained Ooze Jars]|cRXP_WARN_on|r
.use 11948 
.complete 4512,2 
.mob Tainted Ooze
step << Warlock
.goto Felwood,40.48,59.07,70,0
.goto Felwood,39.98,54.76,0
>>杀死|cRXP_ENEMY_Tained Ooze|r。掠夺它们的|cRXX_Loot_Bedvenom Essences|r
.complete 8421,2 
.mob Tainted Ooze
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5155 >>交任务: |cRXP_FRIENDLY_加德纳尔的势力|r
.accept 5157 >>接任务: |cRXP_LOOT_收集堕落之水|r
.target Greta Mosshoof
step
.goto Felwood,38.55,59.14,50,0
.goto Felwood,35.173,59.778
.use 12922 >>|cRXP_WARN_使用|r|T132788:0|t[空食堂]|cRXP_WARN_at Jaedenar中心的月井|r
.complete 5157,1 
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5157 >>交任务: |cRXP_FRIENDLY_收集堕落之水|r
.accept 5158 >>接任务: |cRXP_LOOT_水之魂的帮助|r
.target Greta Mosshoof
step << Warlock
.goto Felwood,49.0,29.6,70,0
.goto Felwood,53.0,22.8,70,0
.goto Felwood,49.4,18.0,70,0
.goto Felwood,46.4,24.6,70,0
.goto Felwood,49.0,29.6,70,0
.goto Felwood,53.0,22.8,70,0
.goto Felwood,49.4,18.0,70,0
.goto Felwood,46.4,24.6
>>杀死|cRXP_ENEMY_铁树践踏者|r、|cRXD_ENEMY_铁树流浪者|r和|cRXP_ENEMY_Withered Protectors |r。掠夺他们的|cRXT_OOT_Rotting Wood|r
.complete 8421,1 
.mob Irontree Stomper
.mob Irontree Wanderer
.mob Withered Protector
step
#completewith next
.goto Felwood,61.50,16.96,100,0
.goto Felwood,62.488,24.242
.subzone 1998 >>前往Talonbranch Glade
step
.goto Felwood,62.488,24.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米萨琳娜|r
.fp Felwood>>获取Felwood飞行路线
.target Mishellena
step
.goto Felwood,64.768,8.129
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳菲恩|r
.turnin 8462 >>交任务: |cRXP_FRIENDLY_与纳菲恩交谈|r
.target Nafien
step << !Druid
.dungeon Mara
.isOnQuest 7066
#completewith next
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Moonglade,35.77,71.94
.zone Moonglade >>前往: |cRXP_PICK_月光林地|r
>>|cRXP_WARN_确保你至少与Timbermaw Hold站在一个不友好的位置。如果你处于敌对状态，他们会攻击你。杀死Furbolgs直到你到达Unfriendly|r
step << !Druid
#completewith next
.goto Moonglade,48.102,67.346
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛德拉尔|r
.fp Moonglade >>获取Moonglade飞行路线
.target Sindrayl
step << !Druid
.dungeon Mara
.isOnQuest 7066
.goto Moonglade,36.178,41.798
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者雷姆洛斯|r
.turnin 7066 >>交任务: |cRXP_FRIENDLY_生命之种|r
.target Keeper Remulos
step << !Druid
.dungeon Mara
.isQuestTurnedIn 7066
.goto Moonglade,35.77,71.94,0
.goto Winterspring,27.76,34.59
.zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
step
#completewith next
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Winterspring,27.76,34.59
.zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
>>|cRXP_WARN_确保你至少与Timbermaw Hold站在一个不友好的位置。如果你处于敌对状态，他们会攻击你。杀死Furbolgs直到你到达Unfriendly|r
step
#hardcoreserver
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_暴雪已经调整了任务[Videre Elixir]，这样它就不会再在官方硬核服务器上杀死你了|r
.turnin 3908 >>交任务: |cRXP_FRIENDLY_无人知晓的秘密|r
.timer 36,It's a Secret to Everybody RP
.accept 3909 >>接任务: |cRXP_WARN_视灵药剂|r
.target Donova Snowden
step
#softcoreserver
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_你可以安全地完成这个任务，作为[维迪尔灵丹妙药]任务链的一部分|r
.turnin 3908 >>交任务: |cRXP_FRIENDLY_无人知晓的秘密|r
.timer 36,It's a Secret to Everybody RP
.accept 3909 >>接任务: |cRXP_WARN_视灵药剂|r
.target Donova Snowden
step
#completewith FlyFelwood
.goto Winterspring,32.8,44.3,70,0
.goto Winterspring,37.4,44.2,70,0
.goto Winterspring,40.5,37.5,70,0
.goto Winterspring,43.6,42.6,70,0
.goto Winterspring,45.9,41.6,70,0
.goto Winterspring,47.9,45.1,70,0
.goto Winterspring,50.5,38.0,70,0
.goto Winterspring,60.6,33.7
>>地面上的织机|cRXP_Loot_月触羽毛|r
>>|cRXP_WARN_如果你愿意，你可以跳过这个任务，稍后完成|r
.complete 978,1
.isOnQuest 978
step
#completewith next
.goto Winterspring,62.334,36.609 << !Hunter
.goto Winterspring,60.389,37.917 << Hunter
.subzone 2255 >>Travel to Everlook
step << Hunter
#completewith next
.goto Winterspring,60.389,37.917
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿兹雷比|r
.stable >>稳定你的宠物。你很快就会驯服一个|cRXP_ENEMY_Felpaw Ravage|r
.target Azzleby
step
#label FlyFelwood
.goto Winterspring,62.334,36.609
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦瑟蕾亚|r
.fp Winterspring >>获取冬泉飞行路线
.fly Felwood >>Fly to Felwood << Hunter/Warlock
.zoneskip Winterspring,1
.target Maethrya
step << Hunter
.goto Felwood,62.19,17.11
>>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on a|cRXX_ENEMY_Felpaw Ravager|r驯服它|r 
.train 17267 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132278:0|t[比特（等级7）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.mob Felpaw Ravager
step << Hunter
.goto Felwood,51.22,29.61,70,0
.goto Felwood,49.66,34.65,70,0
.goto Felwood,39.23,36.84,70,0
.goto Felwood,38.38,41.71,70,0
.goto Felwood,38.56,50.18
>>|cRXP_WARN_放弃您当前的|r|cRXP_FRIENDLY_Felpaw Ravager|r
>>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on a|cRXP_ENEMY_Ironbike Hunter|r或|cRXX_ENEMY_Angercaw Mauler|r驯服它|r 
.train 2977 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132140:0|t[爪（等级7）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.mob Ironbeak Hunter
.mob Angerclaw Mauler
step << Warlock
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊普斯|r
.turnin 8421 >>交任务: |cRXP_FRIENDLY_奇怪的材料|r
.target Impsy
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
step << Druid
>>前往: |cRXP_PICK_月光林地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >>训练你的职业技能
.target Loganaar
step << !Mage
#completewith next
.hs >>前往: |cRXP_PICK_铁炉堡|r
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step << Mage
#completewith next
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r
.trainer >>训练你的职业技能
.target Dink
step
.goto Ironforge,75.768,23.389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉里斯·空轮|r
.turnin 4512 >>交任务: |cRXP_FRIENDLY_远方的软泥怪|r
.timer 10,A Little Slime Goes a Long Way RP
.accept 4513 >>接任务: |cRXP_LOOT_远方的软泥怪|r
.target Laris Geardawdle
step << !Druid !Hunter !Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞尔索恩|r << Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r << Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_朱莉·雷线|r << Mage
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r << Paladin
.goto Ironforge,51.1,8.7,15,0 << Warlock
.goto Ironforge,50.343,5.657 << Warlock
.goto Ironforge,51.495,15.330 << Rogue
.goto Ironforge,25.207,10.756 << Priest
.goto Ironforge,26.295,6.752 << Mage
.goto Ironforge,23.141,6.149 << Paladin
.trainer >>训练你的职业技能
.target Briarthorn << Warlock
.target Fenthwick << Rogue
.target Toldren Deepiron << Priest
.target Juli Stormkettle << Mage
.target Brandur Ironhammer << Paladin
step << Warlock
.goto Ironforge,53.2,7.8,15,0
.goto Ironforge,52.701,6.070
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_寻尸者祖贝尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Jubahl Corpseseeker
step << Warrior/Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷格努斯·雷石|r << Hunter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r << Warrior
.goto Ironforge,69.872,82.890 << Hunter
.goto Ironforge,65.905,88.405 << Warrior
.trainer >>训练你的职业技能
.target Regnus Thundergranite << Hunter
.target Bilban Tosslespanner << Warrior
step << Hunter
.goto Ironforge,69.294,83.568
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌布雷克·火拳|r
.stable >>Withdraw your pet
.target Ulbrek Firehand
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.goto Ironforge,35.90,60.17
.bankwithdraw 11316 >>从您的银行提取以下项目：
>>|T133941:0|t[花瓣] 
.target Bailey Stonemantle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.goto Ironforge,35.90,60.17
.bankdeposit 12907,11955 >>将以下项目存入您的银行：
>>|T132788:0|t[Moonwell水腐败] 
>>|T133622:0|t[空Ooze容器袋] 
.target Bailey Stonemantle
step
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_从拍卖行购买|r|T133021:0|t[Mithril Casing]|cRXP_Buy_。你稍后将需要这个来进行Un'Goro陨石坑的探索|r
>>|cRXP_WARN_如果无法获得，请跳过此步骤|r
.collect 10561,1,4244,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step << Priest
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_从拍卖行购买一个|r|T134797:0|t[Ichor of Undeath]|cRXP_Buy_。你稍后将需要这个来进行你的沉没神殿职业探索|r
>>|cRXP_WARN_如果无法获得，请跳过此步骤|r
.collect 7972,1,8256,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.goto Ironforge,55.506,47.746
.fly Wetlands >>飞到湿地
.target Gryth Thurden
.zoneskip Ironforge,1
step
.goto Wetlands,4.79,63.67
.zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板詹妮|r
.goto Dustwallow Marsh,66.587,45.223
.home >>将你的炉石设置为Theramore
.target Innkeeper Janene
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.300
.fly Feathermoon >>飞到羽门寨
.target Baldruc
.zoneskip Dustwallow Marsh,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 53-54 Feralas/Azshara
#next 54-55 Un'Goro
step
.goto Feralas,30.632,42.706
.target Pratt McGrubben
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普拉特·马克格鲁比|r
.accept 7733 >>接任务: |cRXP_LOOT_更高的品质|r
step
.goto Feralas,31.777,45.498
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特洛亚斯·月风|r
.turnin 2943 >>交任务: |cRXP_FRIENDLY_向特洛亚斯回复|r
.timer 13,Return to Troyas RP
.accept 2879 >>接任务: |cRXP_WARN_艾奎尼克斯法杖|r
.target Troyas Moonbreeze
step
#completewith next
.goto Feralas,44.810,43.423,60 >>游到|cRXP_FRIENDLY_Zorbin Fantrozz|r
step
#era
.goto Feralas,44.810,43.423
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔宾·范达瑟|r
.accept 7003 >>接任务: |cRXP_LOOT_被缩小的巨人|r
.accept 7721 >>接任务: |cRXP_WARN_压缩器的动力|r
.target Zorbin Fandazzle
step
#completewith next
>>杀死|cRXP_ENEMY_Sea Elements|r和|cRXP_ENEMY_ Sea Sprays|r。掠夺它们的|cRXD_Loot_Water Elemental Core|r
.complete 7721,1 
.mob Sea Elemental
.mob Sea Spray
step
.goto Feralas,44.6,50.8,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,46.0,63.0,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,44.6,50.8,70,0
.goto Feralas,44.6,46.6,70,0
.goto Feralas,39.0,35.8,70,0
.goto Feralas,35.0,34.6,70,0
.goto Feralas,40.6,38.0,70,0
.goto Feralas,46.0,53.0
>>杀死|cRXP_ENEMY_Wave Striders|r、|cRXD_ENEMY_Deep Striders|r和|cRXP_ENEMY_Shore Striders|r.掠夺它们的|cRXP_Loot_Miniatuization Remids|r
.use 18904 >>|cRXP_WARN_使用|r[Zorbin的超收缩剂]|cRXP_WARN_to削弱它们|r
.complete 7003,1 
.mob Wave Strider
.mob Deep Strider
.mob Shore Strider
step
.goto Feralas,44.6,50.8,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,46.0,63.0,70,0
.goto Feralas,46.0,53.0,70,0
.goto Feralas,44.6,50.8,70,0
.goto Feralas,44.6,46.6,70,0
.goto Feralas,39.0,35.8,70,0
.goto Feralas,35.0,34.6,70,0
.goto Feralas,40.6,38.0,70,0
.goto Feralas,46.0,53.0
>>杀死|cRXP_ENEMY_Sea Elements|r和|cRXP_ENEMY_ Sea Sprays|r。掠夺它们的|cRXD_Loot_Water Elemental Core|r
.complete 7721,1 
.mob Sea Elemental
.mob Sea Spray
step
.goto Feralas,44.810,43.423
.target Zorbin Fandazzle
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔宾·范达瑟|r
.turnin 7003 >>交任务: |cRXP_FRIENDLY_被缩小的巨人|r
.turnin 7721 >>交任务: |cRXP_FRIENDLY_压缩器的动力|r
step
.destroy 18904 >>摧毁: |cRXP_ENEMY_索尔宾的超级压缩器|r
step
.goto Feralas,54.84,32.84
>>杀死|cRXP_ENEMY_Rage Scar Yetis|r，|cRXD_ENEMY_Elder Rage Scars |r和|cRXP_ENEMY_Ferocious Rage Scars|r。掠夺它们的|cRXT_Loot_ Rage Scar-Yeti Hide|r和|134362:0|t[|cRXX_Loot_ Pristine Yeti Hid|r]
>>|cRXP_WARN_使用|T134362:0|t[|cRXP_LOOT_Pristine Yeti Hide|r]开始任务|r
>>|cRXP_WARN_如果找不到|T134362:0|t[|cRXP_LOOT_Pristine Yeti Hide|r]，请跳过它|r
.complete 7733,1 
.collect 18969,1,7735 
.disablecheckbox
.accept 7735 >>接任务: |cRXP_WARN_原始雪人毛皮|r
.disablecheckbox
.use 18969 
.mob Rage Scar Yeti
.mob Elder Rage Scar
.mob Ferocious Rage Scar
step
.goto Feralas,45.118,25.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷甘·山酒|r
.turnin 4142 >>交任务: |cRXP_FRIENDLY_造访格雷甘|r
.target Gregan Brewspewer
step
.isOnQuest 3909
.goto Feralas,45.118,25.567
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷甘·山酒|r
>>|cRXP_BUY_BUY|r|T134006:0|t[诱饵]
.collect 11141,1,3909,1 
.target Gregan Brewspewer
step
.goto Feralas,42.388,21.999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗克比特|r
.accept 2844 >>接任务: |cRXP_WARN_大保姆|r
.target Rockbiter
step
.isOnQuest 3909
#completewith next
.goto Feralas,44.627,10.568
.cast 14008 >>|cRXP_WARN_将|r|T134006:0|t[诱饵]|cRXP_WARN_放在|cRXP_FRIENDLY_Miblon Snarltoth|r旁边的地上，分散他的注意力|r
.use 11141 
.target Miblon Snarltooth
step
.isOnQuest 3909
.goto Feralas,44.605,10.185,-1
.goto Feralas,44.517,10.220,-1
>>在废墟中掠夺|cRXP_Loot_Evoroot|r
.collect 11242,1,3909,1 
.use 11141 
step
.isOnQuest 2879
>>为|cRXP_Loot_Essences|r掠夺|cRXP_PICK_Four Flames |r
.collect 9257,1,2879,1
.goto Feralas,40.538,12.657
.collect 9258,1,2879,1
.goto Feralas,38.507,15.790
.collect 9255,1,2879,1
.goto Feralas,37.750,12.177
.collect 9256,1,2879,1
.goto Feralas,39.927,9.436
step
.isOnQuest 2879
.goto Feralas,38.88,13.13
.use 9263 >>|cRXP_WARN_使用|r|T135145:0|t[Troyas'Stave]|cRXP_WARN_at |r|cRX_PICK_Equinex Monolith|r
.complete 2879,1
step
.goto Feralas,38.82,13.17
>>单击|cRXP_PICK_Equinex Monolith|r
.turnin 2879 >>交任务: |cRXP_FRIENDLY_艾奎尼克斯法杖|r
.accept 2942 >>接任务: |cRXP_WARN_晨光石|r
step
#completewith next
>>升级|cRXP_ENEMY_Harpies|r，直到HS冷却时间<10分钟
.cooldown item,6948,<10m
step
.goto Feralas,38.224,10.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙恩·飘叶|r
>>|cRXP_WARN_这将开始一个护送任务|r
.turnin 2844 >>交任务: |cRXP_FRIENDLY_大保姆|r
.accept 2845,1 >>接任务: |cRXP_WARN_[Wandering Shay]|r
.target Shay Leafrunner
step
.goto Feralas,38.252,10.293
>>打开|cRXP_PICK_Shay的胸脯|r。为|T133706:0|t[|cRXP _Loot_Shay的铃铛|r]
.complete 2845,1 
.target Shay Leafrunner
step
.goto Feralas,42.38,22.00
>>护送|cRXP_FRIENDLY_Shay Leafrunner|r到安全地带
.use 9189 >>|cRXP_WARN_使用|r|T133706:0|t[|cRXP_LOOT_Shay's Bell|r]|cRXT_WARN_whenever|cRXP-FRIENDLY_Shay|r离开您|r
>>|cRXP_WARN_如果你离她太远，任务就会失败|r
.complete 2845,2 
.target Shay Leafrunner
step
.goto Feralas,42.388,21.999
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗克比特|r
.turnin 2845 >>交任务: |cRXP_FRIENDLY_迷路的沙恩|r
.target Rockbiter
step
#hardcoreserver
.isOnQuest 3909
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷甘·山酒|r
>>|cRXP_WARN_暴雪已经调整了任务[Videre Elixir]，这样它就不会再在官方硬核服务器上杀死你了|r
.accept 4041 >>接任务: |cRXP_WARN_视灵药剂|r
.turnin 4041 >>交任务: |cRXP_FRIENDLY_视灵药剂|r
.complete 3909,1 
.target Gregan Brewspewer
step
#softcoreserver
.isOnQuest 3909
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷甘·山酒|r
>>|cRXP_WARN_你可以安全地完成这个任务，作为[维迪尔灵丹妙药]任务链的一部分|r
.accept 4041 >>接任务: |cRXP_WARN_视灵药剂|r
.turnin 4041 >>交任务: |cRXP_FRIENDLY_视灵药剂|r
.complete 3909,1 
.target Gregan Brewspewer
step
#completewith next
.goto Feralas,31.777,45.498
.subzone 1116 >>前往羽毛门寨。游过去比等船快
step
.goto Feralas,31.777,45.498
.target Troyas Moonbreeze
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特洛亚斯·月风|r
.turnin 2942 >>交任务: |cRXP_FRIENDLY_晨光石|r
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普拉特·马克格鲁比|r
.turnin 7733 >>交任务: |cRXP_FRIENDLY_更高的品质|r
.turnin 7735 >>交任务: |cRXP_FRIENDLY_原始雪人毛皮|r
.itemcount 18969,1 
.use 18969 
.target Pratt McGrubben
step
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普拉特·马克格鲁比|r
.turnin 7733 >>交任务: |cRXP_FRIENDLY_更高的品质|r
.target Pratt McGrubben
step
#optional
.goto Feralas,30.632,42.706
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普拉特·马克格鲁比|r
.turnin 7735 >>交任务: |cRXP_FRIENDLY_原始雪人毛皮|r
.itemcount 18969,1 
.use 18969 
.target Pratt McGrubben
step
.hs Theramore >>Hearth to Theramore公司公司
.zoneskip Feralas,1
step
.goto Dustwallow Marsh,67.476,51.300
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德拉克|r
.fly Ratchet >>飞到棘轮
.target Baldruc
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法兹拉克|r, |cRXP_FRIENDLY_兹科尔|r
.bankwithdraw 12907,10444,10445 >>从您的银行提取以下项目：
>>|T132788:0|t[Moonwell水腐败] 
>>|T134537:0|t[标准版火炬枪] 
>>|T132594:0|t[绘图套件] 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,62.448,38.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉芙·雷兹菲克斯|r
.accept 4502 >>接任务: |cRXP_LOOT_火山的活动|r
.target Liv Rizzlefix
step
.goto The Barrens,62.500,38.546
>>打开|cRXP_PICK_Marvon的胸脯|r。为|cRXP _Loot_Stone Circle|r抢劫它
.complete 3444,1 
step
.goto The Barrens,62.050,39.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维尔雷|r
.home >>把你的炉石放在棘轮上
.target Innkeeper Wiley
step
#label SpiritualAid
.goto The Barrens,65.827,43.776
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之先知伊斯伦|r
.turnin 5158 >>交任务: |cRXP_FRIENDLY_水之魂的帮助|r
.timer 48,Seeking Spiritual Aid RP
.accept 5159 >>接任务: |cRXP_LOOT_净化过的水|r
.target Islen Waterseer
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法兹拉克|r, |cRXP_FRIENDLY_兹科尔|r
.bankdeposit 12906,12383 >>将以下项目存入您的银行：
>>|T134754:0|t[净化Moonwell水] 
>>|T132926:0|t[月光羽毛]（如果你有） 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Azshara >>Fly to Azshara
.target Bragok
.zoneskip Azshara
step << Mage
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳斯|r
>>|cRXP_WARN_这将把你传送到山顶|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
step << Mage
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r, 他在塔上
.turnin 8250 >>交任务: |cRXP_FRIENDLY_法师的会见|r
.accept 8251 >>接任务: |cRXP_WARN_魔法的尘埃|r
.target Archmage Xylem
step << Mage
#completewith KJI
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这会把你传送回去|r
.turnin 3421 >>交任务: |cRXP_FRIENDLY_回程|r
.timer 8,Return Trip RP
.target Nyrill
step << Hunter/Priest
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
.turnin 8151 >>交任务: |cRXP_FRIENDLY_猎人的护符|r << Hunter
.accept 8153 >>接任务: |cRXP_WARN_苔蹄快步者的鹿角|r << Hunter
.turnin 8254 >>交任务: |cRXP_FRIENDLY_塞纳里奥议会的求助|r << Priest
.accept 8255 >>接任务: |cRXP_WARN_苔蹄快步者|r << Priest
.target Ogtinc
step << Hunter/Priest
#completewith Missing
>>杀死|cRXP_ENEMY_Mosshove Coursers|r。掠夺他们的|cRXX_Loot_完美Courser-鹿角|r << Hunter
>>杀死|cRXP_ENEMY_Mosshove Coursers|r。掠夺他们的|cRXX_Loot_Healthy CourserGlands|r << Priest
.complete 8153,1 << Hunter 
.complete 8255,1 << Priest 
.mob Mosshoof Courser
step << Rogue
.goto Azshara,48.42,30.29,70,0
.goto Azshara,44.34,26.09,70,0
.goto Azshara,45.26,21.60
>>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Timbermaw萨满|r。为|cRXX_Loot_密封Azure包|r而掠夺它们
>>|cRXP_WARN_你可能需要在信誉窗格中勾选[Timbermaw Hold]的[At War]复选框，使他们对你怀有敌意|r
.complete 8234,1 
.mob Timbermaw Shaman
step
#label KJI
.goto Azshara,53.452,21.823
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基姆加尔|r
.accept 3601 >>接任务: |cRXP_WARN_我就是基姆加尔！|r
.target Kim'jael
step << Mage
#completewith next
>>杀死|cRXP_ENEMY_血精灵回收者|r和|cRXP_ENEMY_血精灵测量者|r。掠夺他们的|cRXD_Loot_闪光尘埃|r
.complete 8251,1 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step
#era
.goto Azshara,55.97,29.98,30,0
.goto Azshara,56.55,28.36,30,0
.goto Azshara,57.71,31.13,50,0
.goto Azshara,59.17,31.93,40,0
.goto Azshara,58.96,28.23,30,0
.goto Azshara,56.55,28.36
>>打开|cRXP_PICK_Kim'jael的设备|r。为|cRXP_Loot_Kim'jael's Compass |r、|cRXT_Loot_Kim’jael’s Scope|r、| cRXP_Loot_Kim'jael‘s Stuffed Chicken|r和|cRXD_Loot_King’jael的Wizzlegoober |r
>>|cRXP_PICK_Kim'jael的装备|r|cRXP_WARN_box散布在整个|cRXP-ENEMY_Blood Elf|r营地|r
.complete 3601,1 
.complete 3601,2 
.complete 3601,3 
.complete 3601,4 
step << Mage
.goto Azshara,55.97,29.98,30,0
.goto Azshara,56.55,28.36,30,0
.goto Azshara,57.71,31.13,50,0
.goto Azshara,59.17,31.93,40,0
.goto Azshara,58.96,28.23,30,0
.goto Azshara,56.55,28.36
>>杀死|cRXP_ENEMY_血精灵回收者|r和|cRXP_ENEMY_血精灵测量者|r。掠夺他们的|cRXD_Loot_闪光尘埃|r
.complete 8251,1 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step
#era
.goto Azshara,53.452,21.823
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基姆加尔|r
.turnin 3601 >>交任务: |cRXP_FRIENDLY_我就是基姆加尔！|r
.accept 5534 >>接任务: |cRXP_WARN_基姆加尔“丢失”的装备|r
.target Kim'jael
step << Mage/Rogue
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳斯|r
>>|cRXP_WARN_这将把你传送到山顶|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
step << Mage/Rogue
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r, 他在塔上
.turnin 8251 >>交任务: |cRXP_FRIENDLY_魔法的尘埃|r << Mage
.accept 8252 >>接任务: |cRXP_WARN_纳迦的珊瑚|r << Mage
.turnin 8234 >>交任务: |cRXP_FRIENDLY_密封的蓝袋子|r << Rogue
.accept 8235 >>接任务: |cRXP_WARN_密文碎片|r << Rogue
.target Archmage Xylem
step << Rogue
.isQuestTurnedIn 8234
#completewith next
+|cRXP_WARN_确保您必须在信誉窗格中取消选中[TTimbermaw Hold]的[At War]复选框，使他们不再对您怀有敌意|r
step << Mage/Rogue
#completewith RuneRubbing
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这会把你传送回去|r
.turnin 3421 >>交任务: |cRXP_FRIENDLY_回程|r
.timer 8,Return Trip RP
.target Nyrill
step << Mage
#completewith RuneRubbing
>>杀死|cRXP_ENEMY_Spitelash Siren|r。掠夺他们的|cRXX_Loot_魔法珊瑚|r
.complete 8252,1 
.mob Spitelash Siren
step
#completewith RuneRubbing
>>|cRXP_ENEMY_Spitelash Myrmidons|r和|cRXP_ENEMY_Spitelash-Siren|r掠夺它们以获得|cRXP_Loot_Some-Rune|r
.complete 5534,1 
.mob Spitelash Myrmidon
.mob Spitelash Siren
step
#label RuneRubbing
>>单击|cRXP_PICK_Runes|r。为|cRXP_Loot_Rubbings|r掠夺它们
.complete 3449,2 
.goto Azshara,39.57,50.32
.complete 3449,1 
.goto Azshara,36.95,53.18
.complete 3449,3 
.goto Azshara,39.33,55.42
.complete 3449,4 
.goto Azshara,42.34,64.14
step << Mage
#completewith next
>>杀死|cRXP_ENEMY_Spitelash警报器|r。掠夺他们的|cRXX_Loot_魔法珊瑚|r
.complete 8252,1 
.mob Spitelash Siren
step
.goto Azshara,43.0,45.6,70,0
.goto Azshara,47.0,41.6,70,0
.goto Azshara,47.4,65.0,70,0
.goto Azshara,46.0,52.8
>>|cRXP_ENEMY_Spitelash Myrmidons|r和|cRXP_ENEMY_Spitelash-Sirins|r。掠夺它们以获得|cRXP_Loot_Some符文|r
.complete 5534,1 
.mob Spitelash Myrmidon
.mob Spitelash Siren
step << Mage
.goto Azshara,43.0,45.6,70,0
.goto Azshara,47.0,41.6,70,0
.goto Azshara,47.4,65.0,70,0
.goto Azshara,46.0,52.8
>>杀死|cRXP_ENEMY_Spitelash警报器|r。掠夺他们的|cRXX_Loot_魔法珊瑚|r
.complete 8252,1 
.mob Spitelash Siren
step
#label Missing
.goto Azshara,53.452,21.823
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基姆加尔|r
.turnin 5534 >>交任务: |cRXP_FRIENDLY_基姆加尔“丢失”的装备|r
.target Kim'jael
step << Rogue
.goto Azshara,66.6,25.6,70,0
.goto Azshara,68.8,29.4,70,0
.goto Azshara,74.2,29.6,70,0
.goto Azshara,76.6,25.0,70,0
.goto Azshara,80.8,24.6,70,0
.goto Azshara,86.6,19.6,70,0
.goto Azshara,74.6,12.6,70,0
.goto Azshara,69.0,27.6
>>杀死|cRXP_ENEMY_Forest Ooze|r。掠夺它们的|cRXP_Loot_Encoded Fragments|r
>>|cRXP_WARN_铸造|r|T133644:0|t[拾取口袋]|cRXP_WARN_在杀死它们之前|r
.complete 8235,1 
.mob Forest Ooze
step << Mage/Rogue
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳斯|r
>>|cRXP_WARN_这将把你传送到山顶|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
step << Mage/Rogue
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r, 他在塔上
.turnin 8252 >>交任务: |cRXP_FRIENDLY_纳迦的珊瑚|r << Mage
.turnin 8235 >>交任务: |cRXP_FRIENDLY_密文碎片|r << Rogue
.target Archmage Xylem
step << Mage/Rogue
.dungeon ST
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r, 他在塔上
.accept 8253 >>接任务: |cRXP_WARN_毁灭摩弗拉斯|r << Mage
.accept 8236 >>接任务: |cRXP_WARN_碧蓝钥匙|r << Rogue
.target Archmage Xylem
step << Mage/Rogue
#completewith ArcaneRunes
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这会把你传送回去|r
.turnin 3421 >>交任务: |cRXP_FRIENDLY_回程|r
.timer 8,Return Trip RP
.target Nyrill
step << Hunter/Priest
.goto Azshara,51.0,30.8,80,0
.goto Azshara,47.0,19.0,80,0
.goto Azshara,57.2,21.2,80,0
.goto Azshara,71.0,29.6,80,0
.goto Azshara,75.8,21.8,80,0
.goto Azshara,57.2,21.2
>>杀死|cRXP_ENEMY_Mosshove Coursers|r。掠夺他们的|cRXX_Loot_完美Courser-鹿角|r << Hunter
>>杀死|cRXP_ENEMY_Mosshove Coursers|r。掠夺他们的|cRXX_Loot_Healthy CourserGlands|r << Priest
.complete 8153,1 << Hunter 
.complete 8255,1 << Priest 
.mob Mosshoof Courser
step
.goto Azshara,56.55,28.36
.xp 53.5 >>升级|cRXP_ENEMY_Blood Elves|r，直到你达到53级的50%
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step << Hunter/Priest
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
.turnin 8153 >>交任务: |cRXP_FRIENDLY_苔蹄快步者的鹿角|r << Hunter
.accept 8231 >>接任务: |cRXP_WARN_碎浪多头怪|r << Hunter
.turnin 8255 >>交任务: |cRXP_FRIENDLY_苔蹄快步者|r << Priest
.accept 8256 >>接任务: |cRXP_WARN_亡灵的腐液|r << Priest
.target Ogtinc
step << Hunter
.goto Azshara,88.69,25.88,70,0
.goto Azshara,87.0,9.0
.goto Azshara,54.2,42.2,0
.goto Azshara,59.2,35.6,0
.goto Azshara,71.6,36.8,0
.goto Azshara,90.4,33.6,0
.goto Azshara,88.69,25.88,0
>>杀死|cRXP_ENEMY_Wavethraster |r。掠夺他们的|cRXD_Loot_Wavethraster Scale|r
>>|cRXP_WARN_这些可能很难找到。确保使用|r|T132328:0|t[Track Beasts]|cRXP_WARN_and cast|r|T132172:0|t[Engle Eye]|cRX P_WARN_around the coast以更快地找到它们|r
.complete 8231,1 
.mob Wavethrasher
.mob Young Wavethrasher
.mob Great Wavethrasher
step << Priest
.goto Azshara,17.12,69.00,60,0
.goto Azshara,14.22,72.74,60,0
.goto Azshara,17.12,69.00
>>杀死|cRXP_ENEMY_Highborne幻影|r和|cRXD_ENEMY_High borne巫妖|r。掠夺它们以获得|cRXP_Loot_Ichor的不死之物|r
.complete 8256,1 
.mob Highborne Apparition
.mob Highborne Lichling
step << Hunter/Priest
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
.turnin 8231 >>交任务: |cRXP_FRIENDLY_碎浪多头怪|r << Hunter
.turnin 8256 >>交任务: |cRXP_FRIENDLY_亡灵的腐液|r << Priest
.target Ogtinc
step << Hunter/Priest
.dungeon ST
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
.accept 8232 >>接任务: |cRXP_WARN_神庙中的绿龙|r << Hunter
.accept 8257 >>接任务: |cRXP_WARN_摩弗拉斯之血|r << Priest
.target Ogtinc
step
#completewith ArcaneRunes
.goto Azshara,60.11,73.02,150,0
.goto Azshara,72.71,75.91,150,0
.goto Azshara,77.800,91.327,20 >>带着登陆台游到小岛上
step
#completewith next
.cast 12283 >>|cRXP_WARN_使用|r|T134537:0|t[标准配备的火炬枪]|cRXP_WARN_while on the top of the Landing Pad and wait |cRXP-FRIENDLY_Pilot Xiggs Fuselighter|r到达|r
.timer 40,Arcane Runes RP
.use 10444
step
#label ArcaneRunes
.goto Azshara,77.800,91.327
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员西格斯·熔光|r
.turnin 3449 >>交任务: |cRXP_FRIENDLY_奥术符文|r
.accept 3461 >>接任务: |cRXP_WARN_向法师泰摩尔回复|r
.target Pilot Xiggs Fuselighter
step
.destroy 10444 >>摧毁: |cRXP_ENEMY_标准型闪光信号枪|r
step << Mage
#completewith next
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
.xp <54,1
step << Mage
.goto Ironforge,27.169,8.579
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁克|r
.trainer >>训练你的职业技能
.target Dink
.xp <54,1
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
step << Druid
.goto Moonglade,52.53,40.57
>>前往Moonglade
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.trainer >>训练你的职业技能
.accept 9063 >>接任务: |cRXP_LOOT_托尔瓦·寻路者|r
.target Loganaar
step
#completewith FlyTanaris
.hs >>赫斯到棘轮
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
#label FlyTanaris
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Tanaris >>前往: 塔纳利斯
.target Bragok
.zoneskip The Barrens,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 54-55 Un'Goro
#next 55-56 Felwood II
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 11018,8526,11955 >>从您的银行提取以下项目：
>>|T133849:0|t[乌戈罗土]（如果有） 
>>|T134527:0|t[Violet Tragan] 
>>|T133622:0|t[空Ooze容器袋] 
.target Gimblethorn
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 10445 >>将以下项目存入您的银行：
>>|T132594:0|t[绘图套件] 
.target Gimblethorn
step << skip
#som
#phase 3-6
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.accept 4504 >>接任务: |cRXP_LOOT_极度粘稠的沥青|r
step
.goto Tanaris,51.059,26.873
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普琳科|r
.turnin 2641 >>交任务: |cRXP_FRIENDLY_斯普琳科的秘密佐料|r
.accept 2661 >>接任务: |cRXP_LOOT_给马林的粉末|r
.target Sprinkle
step
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4493 >>交任务: |cRXP_FRIENDLY_异种蝎的远征|r
.accept 4496 >>接任务: |cRXP_LOOT_擒虫先擒王|r
.target Alchemist Pestlezugg
step
.goto Tanaris,51.808,28.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马林·诺格弗格|r
.turnin 2661 >>交任务: |cRXP_FRIENDLY_给马林的粉末|r
.accept 2662 >>接任务: |cRXP_LOOT_诺格弗格药剂|r
.turnin 2662 >>交任务: |cRXP_FRIENDLY_诺格弗格药剂|r
.target Marin Noggenfogger
step
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3444 >>交任务: |cRXP_FRIENDLY_石环|r
.target Marvon Rivetseeker
step
#completewith Pylons
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
.fly Un'Goro>>Fly to Un'Goro
.target Bera Stonehammer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威利德·马绍尔|r, |cRXP_FRIENDLY_霍莱伊·马绍尔|r
.accept 3881 >>接任务: |cRXP_LOOT_抢救物资|r
.goto Un'Goro Crater,43.947,7.137
.accept 3883 >>接任务: |cRXP_LOOT_异型的生态|r
.goto Un'Goro Crater,43.889,7.240
.target Williden Marshal
.target Hol'anyee Marshal
step
.goto Un'Goro Crater,43.497,7.420
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯巴克·尼米尔|r
.accept 3882 >>接任务: |cRXP_LOOT_挖骨头|r
.target Spark Nilminer
step
#completewith next
.use 11955 >>|cRXP_WARN_打开|r|T133622:0|t[空Ooze容器袋]
.collect 11953,10 
step
#label Pylons
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.accept 4285 >>接任务: |cRXP_LOOT_北部水晶塔|r
.accept 4287 >>接任务: |cRXP_LOOT_东部水晶塔|r
.accept 4288 >>接任务: |cRXP_LOOT_西部水晶塔|r
.target J.D. Collie
step
.goto Un'Goro Crater,43.533,8.436
>>单击|cRXP_PICK_Wanted海报|r
.accept 4501 >>接任务: |cRXP_LOOT_当心翼手龙|r
step
.goto Un'Goro Crater,43.615,8.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普拉格·弗劳克|r
.accept 4492 >>接任务: |cRXP_LOOT_走丢了！|r
.target Spraggle Frock
step
.goto Un'Goro Crater,44.232,11.583
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希兹尔|r
.accept 4503 >>接任务: |cRXP_LOOT_希兹尔的的飞行器|r
.target Shizzle
step
#completewith NorthPylon
>>杀死|cRXP_ENEMY_Diemetradon|r和|cRXX_ENEMY_Young Diemetradons |r。掠夺它们的|cRXD_Loot_Dinosaur Bone|r和| cRXP_Loot_Webed Diemetradon Scale|r
.complete 3882,1 
.complete 4503,1 
.mob Young Diemetradon
.mob Diemetradon
step
#completewith NorthPylon
>>杀死|cRXP_ENEMY_Pterrodaxes|r和|cRXP_ENEMY_Fledgling Pterrodax |r。掠夺它们的|cRXD_Loot_网状PterrodaxScale|r
.complete 4503,2 
.mob Fledgling Pterrordax
.mob Pterrordax
step
#label NorthPylon
.goto Un'Goro Crater,56.503,12.492
>>单击|cRXP_PICK_Northern Crystal Pylon|r
.complete 4285,1 
.skipgossip
step
#completewith Bait
>>杀死|cRXP_ENEMY_Pterrodaxes|r和|cRXP_ENEMY_Fledgling Pterrodax |r。掠夺它们的|cRXD_Loot_网状PterrodaxScale|r
.complete 4503,2 
.mob Fledgling Pterrordax
.mob Pterrordax
step
#completewith Bait
>>杀死|cRXP_ENEMY_Diemetradon|r和|cRXX_ENEMY_Young Diemetradons |r。掠夺它们的|cRXD_Loot_Dinosaur Bone|r和| cRXP_Loot_Webed Diemetradon Scale|r
.complete 3882,1 
.complete 4503,1 
.mob Young Diemetradon
.mob Diemetradon
step
#completewith Bait
>>杀死|cRXP_ENEMY_粘液Ooze|r和|cRXP_ENEMY_粘液Ooze |r
>>|cRXP_WARN_在他们的尸体上使用|r|T134864:0|t[清空纯样品罐]|cRXP_WARN_|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
.goto Un'Goro Crater,68.541,36.539
>>偷走地上的|cRXP_Loot_食品箱|r
.complete 3881,1 
step
.goto Un'Goro Crater,77.225,49.980
>>单击|cRXP_PICK_Eastern Crystal Pylon|r
.complete 4287,1 
.skipgossip
step
#label Bait
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 4292 >>接任务: |cRXP_LOOT_拉克维的诱饵|r
.turnin 9063 >>交任务: |cRXP_FRIENDLY_托尔瓦·寻路者|r << Druid
.accept 9052 >>接任务: |cRXP_WARN_血瓣毒药|r << Druid
.target Torwa Pathfinder
step
.group
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 4289 >>接任务: |cRXP_LOOT_安戈洛的猩猩|r
.target Torwa Pathfinder
step
.use 11568 >>|cRXP_WARN_Open|r|T133635:0|t[Torwa’s Pouch]|cRXP_WARN_for|r|T133970:0|t[Preserved Threshadon Meat]|cRX P_WARN_and|r|T1 34743:0|t[Preserved Pheromone Mixt]
.collect 11569,1,4292,1 
.collect 11570,1,4292,1 
step << Druid
#completewith GlandWallSample
>>打开地面上的|cRXP_PICK_Bloodpeal Sprouts|r。为|cRXP_OOT_Bloodcaps|r掠夺它们
.complete 9052,2 
step
#completewith GlandWallSample
>>杀死|cRXP_ENEMY_粘液Ooze|r和|cRXP_ENEMY_粘液Ooze |r
>>|cRXP_WARN_在他们的尸体上使用|r|T134864:0|t[清空纯样品罐]|cRXP_WARN_|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
#completewith FinishBait
>>杀死|cRXP_ENEMY_Pterrodaxes|r和|cRXP_ENEMY_Fledgling Pterrodax |r。掠夺它们的|cRXD_Loot_网状PterrodaxScale|r
.complete 4503,2 
.mob Fledgling Pterrordax
.mob Pterrordax
step
.goto Un'Goro Crater,79.929,49.896
>>|cRXP_WARN_用石板上的|r|T133970:0|t【腊阈值肉】|cRXP_WARN_，再用石板上的| r|T134743:0|t（腊味信息素混合物）|cRXP-WARN_召唤|r|cRXP_ENEMY_Lar'korwi|r
>>杀死|cRXP_ENEMY_Lar'korwi|r。掠夺他的|cRXP_Loot_Head|r
.use 11568 
.use 11569 
.use 11570 
.complete 4292,1 
.mob Lar'korwi
step
#label FinishBait
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4292 >>交任务: |cRXP_FRIENDLY_拉克维的诱饵|r
.target Torwa Pathfinder
step
#completewith GlandWallSample
>>杀死|cRXP_ENEMY_Diemetradon|r和|cRXX_ENEMY_Young Diemetradons |r。掠夺它们的|cRXD_Loot_Dinosaur Bone|r和| cRXP_Loot_Webed Diemetradon Scale|r
.complete 3882,1 
.complete 4503,1 
.mob Young Diemetradon
.mob Diemetradon
step
.goto Un'Goro Crater,56.3,90.6,40,0
.goto Un'Goro Crater,44.3,90.4,40,0
.goto Un'Goro Crater,56.3,90.6,40,0
.goto Un'Goro Crater,44.1,66.2,70,0
.goto Un'Goro Crater,53.5,62.9,70,0
.goto Un'Goro Crater,52.3,69.8,70,0
.goto Un'Goro Crater,44.3,90.4
>>杀死|cRXP_ENEMY_Pterrordaxs|r。掠夺它们的|cRXD_Loot_网状Pterrordax鳞片|r
>>|cRXP_WARN_您现在不需要收集所有|cRXP_OOT_Webbed Pterrordax磅秤|r|r
.complete 4501,1 
.complete 4503,2 
.disablecheckbox
.mob Pterrordax
step
#label GlandWallSample
.goto Un'Goro Crater,49.93,81.70,70 >>进入Slithering Scar Hive
.isOnQuest 4496,3883
step << Druid
#completewith ScentGland
>>杀死|cRXP_ENEMY_Gorishi毒刺|r和|cRXP_ENEMY_Gorishi Wasps|r。掠夺它们的|cRXD_Loot_ Gorishi刺|r
.complete 9052,1 
.mob Gorishi Wasp
.mob Gorishi Stinger
step
#completewith next
>>杀死|cRXP_ENEMY_Gorishi|r。掠夺它们的|cRXX_Loot_Horishi气味腺|r
.complete 4496,1 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
step
.goto Un'Goro Crater,48.671,85.322
>>|cRXP_WARN_进入Slithering Scar Hive|r
>>|cRXP_WARN_在圆形房间的中心使用|r|T134864:0|t[未使用的废料瓶]|cRXP_WARN_in|r
.complete 3883,1 
step
#label ScentGland
.goto Un'Goro Crater,44.8,75.6,70,0
.goto Un'Goro Crater,45.0,83.6,70,0
.goto Un'Goro Crater,55.0,83.6,70,0
.goto Un'Goro Crater,54.4,76.4,70,0
.goto Un'Goro Crater,48.8,85.3
>>杀死|cRXP_ENEMY_Gorishi|r。掠夺它们的|cRXX_Loot_Horishi气味腺|r
.complete 4496,1 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
step << Druid
.goto Un'Goro Crater,44.8,75.6,70,0
.goto Un'Goro Crater,45.0,83.6,70,0
.goto Un'Goro Crater,55.0,83.6,70,0
.goto Un'Goro Crater,54.4,76.4,70,0
.goto Un'Goro Crater,48.8,85.3
>>杀死|cRXP_ENEMY_Gorishi毒刺|r和|cRXP_ENEMY_Gorishi Wasps|r。掠夺它们的|cRXD_Loot_ Gorishi刺|r
.complete 9052,1 
.mob Gorishi Wasp
.mob Gorishi Stinger
step << Druid
#completewith UngoroAsh
>>打开地面上的|cRXP_PICK_Bloodpeal Sprouts|r。为|cRXP_OOT_Bloodcaps|r掠夺它们
.complete 9052,2 
step
#completewith WesternPylon
>>杀死|cRXP_ENEMY_Diemetradon|r和|cRXX_ENEMY_Elder Diemetradons |r。掠夺它们的|cRXD_Loot_Dinosaur Bone|r和| cRXP_Loot_Webed Diemetradon Scale|r
.complete 3882,1 
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
#completewith WesternPylon
>>杀死|cRXP_ENEMY_疯狂翼龙|r。掠夺它们的|cRXP_Loot_网状翼龙鳞片|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#completewith WesternPylon
>>杀死|cRXP_ENEMY_粘液Ooze|r和|cRXP_ENEMY_粘液Ooze |r
>>|cRXP_WARN_在他们的尸体上使用|r|T134864:0|t[清空纯样品罐]|cRXP_WARN_|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
.goto Un'Goro Crater,38.457,66.066
>>在地面上掠夺|cRXP_Loot_研究设备|r
.complete 3881,2 
step
.goto Un'Goro Crater,30.928,50.438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兰克|r
.accept 974 >>接任务: |cRXP_LOOT_究根问底|r
.target Krakle
step
#label WesternPylon
.goto Un'Goro Crater,23.827,59.201
>>单击|cRXP_PICK_Western水晶塔|r
.complete 4288,1 
.skipgossip
step
#completewith CompletePterro
>>杀死|cRXP_ENEMY_Diemetradon|r和|cRXX_ENEMY_Elder Diemetradons |r。掠夺它们的|cRXD_Loot_Dinosaur Bone|r和| cRXP_Loot_Webed Diemetradon Scale|r
.complete 3882,1 
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
#completewith CompletePterro
>>杀死|cRXP_ENEMY_粘液Ooze|r和|cRXP_ENEMY_粘液Ooze |r
>>|cRXP_WARN_在他们的尸体上使用|r|T134864:0|t[清空纯样品罐]|cRXP_WARN_|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
#label CompletePterro
.goto Un'Goro Crater,20.6,60,40,70,0
.goto Un'Goro Crater,22.4,50.0,70,0
.goto Un'Goro Crater,22.2,41,0,70,0
.goto Un'Goro Crater,34.8,29.4,70,0
.goto Un'Goro Crater,39.6,42.2,70,0
.goto Un'Goro Crater,36.8,76.6,70,0
.goto Un'Goro Crater,24.6,61.6
>>杀死|cRXP_ENEMY_疯狂翼龙|r。掠夺它们的|cRXP_Loot_网状翼龙鳞片|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
#completewith next
>>杀死|cRXP_ENEMY_Diemetradon|r和|cRXX_ENEMY_Elder Diemetradons |r。掠夺它们的|cRXD_Loot_Dinosaur Bone|r和| cRXP_Loot_Webed Diemetradon Scale|r
.complete 3882,1 
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
.goto Un'Goro Crater,27.0,44.8,70,0
.goto Un'Goro Crater,34.6,28.6,70,0
.goto Un'Goro Crater,42.8,54.6,70,0
.goto Un'Goro Crater,37.0,73.4,70,0
.goto Un'Goro Crater,28.4,60.8
>>杀死|cRXP_ENEMY_粘液Ooze|r和|cRXP_ENEMY_粘液Ooze |r
>>|cRXP_WARN_在他们的尸体上使用|r|T134864:0|t[清空纯样品罐]|cRXP_WARN_|r
.use 11953 
.use 11955 
.complete 4513,1 
.mob Muculent Ooze
.mob Glutinous Ooze
step
.goto Un'Goro Crater,27.0,44.8,70,0
.goto Un'Goro Crater,34.6,28.6,70,0
.goto Un'Goro Crater,42.8,54.6,70,0
.goto Un'Goro Crater,37.0,73.4,70,0
.goto Un'Goro Crater,28.4,60.8
>>杀死|cRXP_ENEMY_Diemetradon|r和|cRXX_ENEMY_Elder Diemetradons |r。掠夺它们的|cRXD_Loot_Dinosaur Bone|r和| cRXP_Loot_Webed Diemetradon Scale|r
>>|cRXP_LOOT_恐龙骨头|r|cRXP_WARN_也可能被从地上掠夺。这个位置在地图上标注在西南方向|r
.complete 3882,1 
.goto Un'Goro Crater,31.04,77.70,0
.complete 4503,1 
.mob Elder Diemetradon
.mob Diemetradon
step
#completewith next
.goto Un'Goro Crater,47.1,47.1,10,0
.goto Un'Goro Crater,47.7,48.3,10,0
.goto Un'Goro Crater,48.2,50.1,10,0
.goto Un'Goro Crater,48.67,49.33,15,0
.goto Un'Goro Crater,48.02,47.05,10,0
.goto Un'Goro Crater,48.81,45.94,10 >>|cRXP_WARN_沿着火羽岭的熔岩小径走一条通往山顶的捷径。准确地跟随箭头|r
step
.goto Un'Goro Crater,49.631,45.694
.use 12472 >>|cRXP_WARN_使用|r|T132995:0|t[Krakle's Thermometer]|cRXP_WARN_top热点处的火羽脊|r
.complete 974,1 
step
.goto Un'Goro Crater,30.928,50.438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兰克|r
.turnin 974 >>交任务: |cRXP_FRIENDLY_究根问底|r
.accept 980 >>接任务: |cRXP_LOOT_新的泉水|r
.target Krakle
step
#label UngoroAsh
.goto Un'Goro Crater,45.4,45.2,70,0
.goto Un'Goro Crater,46,0,56.6,70,0
.goto Un'Goro Crater,56.6,55.6,70,0
.goto Un'Goro Crater,53.8,41.6,70,0
.goto Un'Goro Crater,49.8,53.4
>>杀死|cRXP_ENEMY_Scorching Elements|r和|cRXX_ENEMY_Living Blazes|r。掠夺它们的|cRXD_Loot_Ash|r
.complete 4502,1 
.mob Scorching Elemental
.mob Living Blaze
step << Druid
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>>打开地面上的|cRXP_PICK_Bloodpeal Sprouts|r。为|cRXP_OOT_Bloodcaps|r掠夺它们
.complete 9052,2 
step << Druid
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 9052 >>交任务: |cRXP_FRIENDLY_血瓣毒药|r
.accept 9051 >>接任务: |cRXP_WARN_毒性测试|r
.target Torwa Pathfinder
step << Druid
>>寻找|cRXP_ENEMY_Devilsaur|r或|cRXD_ENEMY_Ironhide Devilsaur |r。避开|cRXX_ENEMY_Tyrant Devilsaurs|r
>>|cRXP_WARN_你应该能够在地图上看到他们的巡逻|r
>>|cRXP_WARN_这样做的方式是垃圾邮件|r|T136090:0|t[休眠]|cRXP_WARN_。您应该只发送垃圾邮件|r|T136090:0|t[休眠]|cRXP_WARN_而不发送其他内容。如果它打破了早期开始的垃圾邮件|r|T136090:0|t[休眠]|cRXP_WARN_again，它们以170%的移动速度运行，所以你无法超过|r|cRXP-ENEMY_Devilsaur|r
>>|cRXP_WARN_使用|r|T135125:0|t[Devilsaur Barb]|cRXP_WARN_一旦它被使用|r| T136090:0|t[休眠]
>>|cRXP_WARN_换到|r|T132144:0|t[旅行形式]|cRXP_WARN_然后逃跑重置|r
.complete 9051,1 
.use 22432 
.unitscan Devilsaur
.unitscan Ironhide Devilsaur
step << Druid
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 9051 >>交任务: |cRXP_FRIENDLY_毒性测试|r
.target Torwa Pathfinder
step
.goto Un'Goro Crater,51.909,49.870
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林格|r
.turnin 4492 >>交任务: |cRXP_FRIENDLY_走丢了！|r
.accept 4491,1 >>接任务: |cRXP_LOOT_朋友的帮助|r
>>|cRXP_WARN_这将开始一个护送任务|r
.target Ringo
step
.goto Un'Goro Crater,43.617,8.497
>>护送|cRXP_FRIENDLY_Ringo|r前往元帅避难所
.use 11804 >>|cRXP_WARN_当他晕倒并停止跟随你时，使用|r|T132805:0|t[Spraggle’s Canteen]|cRXP_WARN_on|r
.complete 4491,1 
.target Ringo
step
.goto Un'Goro Crater,43.617,8.497
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普拉格·弗劳克|r
.turnin 4491 >>交任务: |cRXP_FRIENDLY_朋友的帮助|r
.turnin 4501 >>交任务: |cRXP_FRIENDLY_当心翼手龙|r
.target Spraggle Frock
step
.goto Un'Goro Crater,43.497,7.420
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯巴克·尼米尔|r
.turnin 3882 >>交任务: |cRXP_FRIENDLY_挖骨头|r
.target Spark Nilminer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威利德·马绍尔|r, |cRXP_FRIENDLY_霍莱伊·马绍尔|r
.turnin 3883 >>交任务: |cRXP_FRIENDLY_异型的生态|r
.goto Un'Goro Crater,43.889,7.240
.turnin 3881 >>交任务: |cRXP_FRIENDLY_抢救物资|r
.goto Un'Goro Crater,43.947,7.137
.target Hol'anyee Marshal
.target Williden Marshal
step
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.turnin 4285 >>交任务: |cRXP_FRIENDLY_北部水晶塔|r
.turnin 4287 >>交任务: |cRXP_FRIENDLY_东部水晶塔|r
.turnin 4288 >>交任务: |cRXP_FRIENDLY_西部水晶塔|r
.accept 4321 >>接任务: |cRXP_LOOT_分析水晶塔|r
.turnin 4321 >>交任务: |cRXP_FRIENDLY_分析水晶塔|r
.target J.D. Collie
step
#completewith AADS
.destroy 11482 >>摧毁: |cRXP_ENEMY_水晶塔使用手册|r
step
.goto Un'Goro Crater,44.232,11.586
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希兹尔|r
.turnin 4503 >>交任务: |cRXP_FRIENDLY_希兹尔的的飞行器|r
.target Shizzle
step
.group
.goto Un'Goro Crater,46.378,13.444
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔纳·雷塔维|r
.accept 4243 >>接任务: |cRXP_LOOT_找回A-Me 01|r
.target Karna Remtravel
step
.group
#completewith next
.goto Un'Goro Crater,63.66,16.56
.subzone 542 >>Travel to Fungal Rock
step
.group 2
.goto Un'Goro Crater,63.66,16.56,70,0
.goto Un'Goro Crater,65.47,16.48
>>杀死|cRXP_ENEMY_Un'Goro Gorillas|r，|cRXD_ENEMY_Un'Goro Stompers|r和|cRXX_ENEMY_Un'Goro Thunderer|r。掠夺它们的|cRXP_Loot_Pelts|r
>>|cRXP_ENEMY_Un'Goro Gorillas|r|cRXP_WARN_健康状况不佳时会寻求帮助，发生这种情况时要注意周围环境|r
>>|cRXP_ENEMY_Un'Goro Stompers|r|cRXP_WARN_will|r|T136224:0|t[愤怒]|cRXP-WARN_at低健康|r
>>|cRXP_ENEMY_Un'Goro Thunderer|r|cRXP_WARN_造成高伤害|r|T136105:0|t[霹雳]
.complete 4289,1 
.complete 4289,2 
.complete 4289,3 
.mob Un'Goro Gorilla
.mob Un'Goro Stomper
.mob Un'Goro Thunderer
step
.group
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4289 >>交任务: |cRXP_FRIENDLY_安戈洛的猩猩|r
.accept 4301 >>接任务: |cRXP_LOOT_强大的尤尔查|r
.target Torwa Pathfinder
step << skip
#som
#phase 3-6
.goto Un'Goro Crater,46.86,15.11,100,0
.goto Un'Goro Crater,42.03,21.77,100,0
.goto Un'Goro Crater,49.54,20.49,100,0
.goto Un'Goro Crater,52.00,27.21,100,0
.goto Un'Goro Crater,64.11,24.14,100,0
.goto Un'Goro Crater,59.65,31.29
>>杀死该地区的焦油兽。掠夺他们的焦油
>>小心焦油领主施放纠缠之根 << !Warrior !Rogue !Paladin
>>小心焦油领主施放纠缠之根，所有焦油兽都有刺状效果，你可以解除武装4秒 << Warrior/Rogue/Paladin
.complete 4504,1 
step
.group
#completewith AMe
.goto Un'Goro Crater,63.66,16.56
.subzone 542 >>Travel to Fungal Rock
step
.group
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
.turnin 4243 >>交任务: |cRXP_FRIENDLY_找回A-Me 01|r
.itemcount 10561,<1 
.target A-Me 01
step
#label AMe
.group
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
>>|cRXP_WARN_还不接受跟进|r
.turnin 4243 >>交任务: |cRXP_FRIENDLY_找回A-Me 01|r
.itemcount 10561,1 
.target A-Me 01
step
.group
.goto Un'Goro Crater,68.49,12.18
>>杀死|cRXP_ENEMY_U'cha|r。掠夺他的|cRXX_Loot_Pelt|r
.complete 4301,1 
.mob U'cha
step
.group
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
.accept 4244 >>接任务: |cRXP_LOOT_找回A-Me 01|r
.turnin 4244 >>交任务: |cRXP_FRIENDLY_找回A-Me 01|r
.accept 4245 >>接任务: |cRXP_LOOT_找回A-Me 01|r
.itemcount 10561,1 
.target A-Me 01
step
.isQuestTurnedIn 4244
.group
.goto Un'Goro Crater,67.657,16.758
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_A-Me 01|r
.accept 4245 >>接任务: |cRXP_LOOT_找回A-Me 01|r
.target A-Me 01
step
.group 2
.isOnQuest 4245
.goto Un'Goro Crater,46.378,13.444
>>护送|cRXP_FRIENDLY_A-Me 01|r前往元帅避难所的|cRXP_FRIENDLY_Karna Remtravel|r
.complete 4245,1 
.target A-Me 01
step
.group
.isQuestComplete 4245
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔纳·雷塔维|r
.turnin 4245 >>交任务: |cRXP_FRIENDLY_找回A-Me 01|r
.target Karna Remtravel
step
.isQuestTurnedIn 3764 
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>>地面上的织机|cRXP_Loot_Un'Goro土壤|r
.collect 11018,5,4496,1 
step
.isQuestAvailable 3764 
.goto Un'Goro Crater,62.5,64.1,90,0
.goto Un'Goro Crater,38.3,53.6,90,0
.goto Un'Goro Crater,45.5,24.5
>>地面上的织机|cRXP_Loot_Un'Goro土壤|r
.collect 11018,25,4496,1
step
.group
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4301 >>交任务: |cRXP_FRIENDLY_强大的尤尔查|r
.target Torwa Pathfinder
step
.abandon 4301 >>放弃强大的乌查
step
.abandon 4243 >>Abandon Chasing A-Me 01
step
.solo
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fly Tanaris >>飞到Gadgetzan
.target Gryfe
.zoneskip Un'Goro Crater,1
step
.group
#completewith next
.goto Tanaris,50.88,26.96
.subzone 976 >>前往: |cRXP_PICK_塔纳利斯|r
step
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4496 >>交任务: |cRXP_FRIENDLY_擒虫先擒王|r
.target Alchemist Pestlezugg
step
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankwithdraw 12906,12383 >>从您的银行提取以下项目：
>>|T134754:0|t[净化Moonwell水] 
>>|T132926:0|t[月光羽毛]（如果你有） 
.target Gimblethorn
step
.isOnQuest 4513
.goto Tanaris,52.297,28.915
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 11954 >>将以下项目存入您的银行：
>>|T134836:0|t[装满的纯样品罐] 
.target Gimblethorn
step << skip
#som
#phase 3-6
.goto Tanaris,51.56,26.75
.target Tran'rek
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 4504 >>交任务: |cRXP_FRIENDLY_极度粘稠的沥青|r
step
#era/som
.hs >>赫斯到棘轮
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
#era/som
.goto The Barrens,62.448,38.734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉芙·雷兹菲克斯|r
.turnin 4502 >>交任务: |cRXP_FRIENDLY_火山的活动|r
.target Liv Rizzlefix
step << Mage
#completewith Morrowgrain
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << !Mage
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Teldrassil >>飞往Teldrassil
.target Bragok
.zoneskip The Barrens,1
step << !Mage
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 978 >>交任务: |cRXP_FRIENDLY_月光羽毛|r
.target Erelas Ambersky
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.accept 978 >>接任务: |cRXP_LOOT_月光羽毛|r
.target Erelas Ambersky
step << !Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达蕾恩·轻风|r, 他在楼上
.accept 5250 >>接任务: |cRXP_WARN_坠星村|r
.target Daryn Lightwind
step << !Mage
#completewith Morrowgrain
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step
#completewith AADS
.line Darnassus,36.6,42.4,37.6,16.2,52.6,19.2,56.6,8.8,65.4,15.8,60.8,23.4,62.4,55.6,68.0,59.2,63.8,72.2,60.2,67.8,49.2,80.8,39.6,74.6,38.6,47.0,61.6,40.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫拉德·月行者|r
>>|cRXP_FRIENDLY_Herald Moonstracker |r|cRXP_WARN_trols through Darnassus|r
>>|cRXP_WARN_铸造|r|T132172:0|t[Eagle Eye]|cRXP_WARN_to试着更快地找到她|r << Hunter
.accept 1047 >>接任务: |cRXP_WARN_新的边疆|r
.unitscan Herald Moonstalker
step
.goto Darnassus,64.021,23.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱顿·暗影|r
>>做Darnassus的布料翻转。你需要3叠每一块布。如果无法完成所有任务，请跳过此步骤
.turnin 7792 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7798 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7799 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7800 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
.target Raedon Duskstriker
step
#label AADS
.goto Darnassus,67.427,15.655
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板塞琳尼|r
.accept 3763 >>接任务: |cRXP_LOOT_协助大德鲁伊|r
.target Innkeeper Saelienne
step
.line Darnassus,36.6,42.4,37.6,16.2,52.6,19.2,56.6,8.8,65.4,15.8,60.8,23.4,62.4,55.6,68.0,59.2,63.8,72.2,60.2,67.8,49.2,80.8,39.6,74.6,38.6,47.0,61.6,40.6
.goto Darnassus,36.6,42.4,60,0
.goto Darnassus,37.6,16.2,60,0
.goto Darnassus,52.6,19.2,60,0
.goto Darnassus,56.6,8.8,50,0
.goto Darnassus,65.4,15.8,50,0
.goto Darnassus,60.8,23.4,50,0
.goto Darnassus,62.4,55.6,50,0
.goto Darnassus,68.0,59.2,50,0
.goto Darnassus,63.8,72.2,50,0
.goto Darnassus,60.2,67.8,50,0
.goto Darnassus,49.2,80.8,50,0
.goto Darnassus,39.6,74.6,50,0
.goto Darnassus,38.6,47.0,50,0
.goto Darnassus,61.6,40.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫拉德·月行者|r
>>|cRXP_FRIENDLY_Herald Moonstracker |r|cRXP_WARN_trols through Darnassus|r
>>|cRXP_WARN_铸造|r|T132172:0|t[Eagle Eye]|cRXP_WARN_to试着更快地找到她|r << Hunter
.accept 1047 >>接任务: |cRXP_WARN_新的边疆|r
.unitscan Herald Moonstalker
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
.turnin 3763 >>交任务: |cRXP_FRIENDLY_协助大德鲁伊|r
.accept 3764 >>接任务: |cRXP_LOOT_安戈洛的泥土|r
.turnin 1047 >>交任务: |cRXP_FRIENDLY_新的边疆|r
.accept 6761 >>接任务: |cRXP_WARN_新的边疆|r
.target Arch Druid Fandral Staghelm
step
.goto Darnassus,31.485,8.237
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶纳尔|r
.turnin 3764 >>交任务: |cRXP_FRIENDLY_安戈洛的泥土|r
.target Jenal
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
.accept 3781 >>接任务: |cRXP_WARN_晨光麦研究|r
.target Arch Druid Fandral Staghelm
step
#label Morrowgrain
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
.turnin 3781 >>交任务: |cRXP_FRIENDLY_晨光麦研究|r
.turnin 6761 >>交任务: |cRXP_FRIENDLY_新的边疆|r
.accept 6762 >>接任务: |cRXP_WARN_拉比恩·萨图纳|r
.target Mathrengyl Bearwalker
step << Druid
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
.trainer >>训练你的职业技能
.target Mathrengyl Bearwalker
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷亚斯塔·刃歌|r
.goto Darnassus,58.718,34.905
.trainer >>训练你的职业技能
.target Arias'ta Bladesinger
step << Priest
.goto Darnassus,37.901,82.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾德莉亚|r
.trainer >>训练你的职业技能
.target Jandria
step << Rogue
.goto Darnassus,31.21,17.72,8,0
.goto Darnassus,36.99,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
.trainer >>训练你的职业技能
.target Syurna
step << Hunter
.goto Darnassus,40.377,8.545
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
.trainer >>训练你的职业技能
.target Jocaste
step
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darnassus,1
step << Mage
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 978 >>交任务: |cRXP_FRIENDLY_月光羽毛|r
.target Erelas Ambersky
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.accept 978 >>接任务: |cRXP_LOOT_月光羽毛|r
.target Erelas Ambersky
step << Mage
.goto Teldrassil,55.09,91.67,10,0
.goto Teldrassil,55.414,92.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达蕾恩·轻风|r, 他在楼上
.accept 5250 >>接任务: |cRXP_WARN_坠星村|r
.target Daryn Lightwind
step
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
.fly Felwood >>Fly to Felwood
.target Vesprystus
.zoneskip Teldrassil,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 55-56 Felwood II
#next 56-57 Burning Steppes
step
#completewith next
.goto Felwood,55.78,17.11
.subzone 1768 >>前往铁树洞穴
step
.goto Felwood,57.30,17.79
>>杀死|cRXP_ENEMY_Warpwood Moss Flayer|r和|cRXX_ENEMY_Warrpwood Shreders |r。掠夺它们以获取它们的|cRXD_Loot_ Blood Ambers|r
.complete 4101,1 
.mob Warpwood Moss Flayer
.mob Warpwood Shredder
step
#completewith next
.goto Felwood,51.21,82.10
.subzone 2479 >>前往翡翠保护区
step
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5159 >>交任务: |cRXP_FRIENDLY_净化过的水|r
.target Greta Mosshoof
step
.group
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.accept 5165 >>接任务: |cRXP_LOOT_熄灭火焰|r
.target Greta Mosshoof
step
.goto Felwood,50.889,81.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔诺恩·红羽|r
.accept 5156 >>接任务: |cRXP_LOOT_验证腐蚀|r
.target Taronn Redfeather
step
.group
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.accept 4421 >>接任务: |cRXP_LOOT_碧火萨特|r
.goto Felwood,51.350,81.511
.target Eridan Bluewind
step
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿拉珊蒂丝·银空|r
.turnin 4101 >>交任务: |cRXP_FRIENDLY_净化费伍德|r
.target Arathandris Silversky
step
.isQuestTurnedIn 4101
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿拉珊蒂丝·银空|r
>>|cRXP_WARN_选择选项：|r“我需要一个Cenarion信标。”
.collect 11511,1 
.target Arathandris Silversky
step
.isQuestTurnedIn 4101
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81,70,0
.goto Felwood,46.68,88.03,70,0
.goto Felwood,48.48,89.60,70,0
.goto Felwood,48.22,93.81
>>杀死|cRXP_ENEMY_枯木战士|r，|cRXX_ENEMY_枯木探路者|r和|cRXP_ENEMY_Deadwood园丁|r。掠夺他们的|cRXD_Loot_腐蚀灵魂碎片|r
.collect 11515,6,5882,1 
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.isQuestTurnedIn 4101
.goto Felwood,54.20,86.80
.target Arathandris Silversky
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿拉珊蒂丝·银空|r
.accept 5882 >>接任务: |cRXP_LOOT_狩猎换药膏|r
.turnin 5882 >>交任务: |cRXP_FRIENDLY_狩猎换药膏|r
step
.isQuestTurnedIn 4101
#completewith next
+从这一点开始，您可以清洁地面上的|cRXP_PICK_Corrupted Songflower|r。清洗后，点击|cRXP_PICK_Cleansed Songflower|r将提供5%的暴击增益，并在1小时内将所有属性增加15
>>这需要您使用两个|T132804:0|t[Cenarion Plant Salves]
step
.group 2
>>杀死|cRXP_ENEMY_Jadefire Felswarns|r，|cRXD_ENEMY_Jadefire Shadowspeakers|r，| cRXP__ENEMY_Jadefire Rogues|r和|cRXP_ENEMY_Xavathras|r
>>|cRXP_WARN_这个地区可能非常危险。极其谨慎|r
>>|cRXP_ENEMY_Jadefire Felswarns|r|cRXP_WARN_cast|r|T136135:0|t[Cripple]|cRXP-WARN_which slow your movement speed|r
>>|cRXP_ENEMY_Jadefire Shadowspeakers |r|cRXP_WARN_are in |r|T132320:0|t[潜行]|cRXP_WARN_ and patrol around，and apply a |r|T136093:0|t[减速毒药]|cRXP_WARN_ which Slowing your 25 seconds|r
.complete 4421,1 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,2 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,3 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,4 
.goto Felwood,32.23,67.10
.mob Jadefire Felsworn
.mob Jadefire Shadowstalker
.mob Jadefire Rogue
.mob Xavathras
step
.group
#completewith eStart
.goto Felwood,35.367,58.376
.subzone 1770 >>Travel to Shadow Hold
step
.group 2
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
step
.group 2
>>杀死|cRXP_ENEMY_Jaedenar Enforcers|r，|cRXD_ENEMY_Jaedenar Darkwavers|r、|cRXP_ENEMY_ JaedenarWarlocks|r和|cRXT_ENEMY_贾德纳尔退伍军人|r。掠夺他们一个|T134235:0|t[|cRXP_Loot_血红钥匙|r]
>>|cRXP_WARN_使用|T134235:0|t[|cRXP_LOOT_血红键|r]开始任务|r
>>|cRXP_WARN_这将开始一个护送任务。即使你仍然需要熄灭钎焊剂，也要开始这场护航|r
.collect 13140,1,5202,1 
.accept 5202 >>接任务: |cRXP_LOOT_奇怪的红钥匙|r
.use 13140 
.mob Jaedenar Enforcer
.mob Jaedenar Darkweaver
.mob Jaedenar Warlock
.mob Jaedenar Legionnaire
step
.group 2
#label eStart
.goto Felwood,36.207,55.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被俘虏的亚科纳琳|r
.turnin 5202 >>交任务: |cRXP_FRIENDLY_奇怪的红钥匙|r
.accept 5203,1 >>接任务: |cRXP_LOOT_逃出加德纳尔|r
.target Captured Arko'narin
step
.group 2
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
step
.group 2
.goto Felwood,35.44,59.01
>>|cRXP_WARN_护送|cRXP_FRIENDLY_Arko'narin|r通过阴影保持。一旦你接近最后一个|cRXP_PICK_Brazier|r，3|cRXP-ENEMY_Felguard|r将产生你必须处理的结果|r
>>|cRXP_WARN_退出Shadow Hold后，您将需要杀死Trey Lightforge的|cRXP_ENEMY_Spirit|r。让|cRXP_FRIENDLY_Arko'narin|r尽可能多地坦克他|r
.complete 5203,1 
.target Arko'narin
.mob Spirit of Trey Lightforge
step
.group 2
>>单击地面上的四个|cRXP_PICK_Brazier|r
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
step
.group
.isQuestComplete 5165
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5165 >>交任务: |cRXP_FRIENDLY_熄灭火焰|r
.accept 5242 >>接任务: |cRXP_LOOT_最终一击|r
.target Greta Mosshoof
step
.group
.isQuestTurnedIn 5165
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.accept 5242 >>接任务: |cRXP_LOOT_最终一击|r
.target Greta Mosshoof
step
.group
.abandon 5165 >>放弃保护的火焰
step
.group
.isQuestComplete 5203
.goto Felwood,51.346,82.013
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰希尔·月弓|r
.turnin 5203 >>交任务: |cRXP_FRIENDLY_逃出加德纳尔|r
.accept 5204 >>接任务: |cRXP_LOOT_光明的惩戒|r
.target Jessir Moonbow
step
.group
.isQuestTurnedIn 5203
.goto Felwood,51.346,82.013
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰希尔·月弓|r
.accept 5204 >>接任务: |cRXP_LOOT_光明的惩戒|r
.target Jessir Moonbow
step
.group
.isQuestComplete 4421
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4421 >>交任务: |cRXP_FRIENDLY_碧火萨特|r
.accept 4906 >>接任务: |cRXP_LOOT_更深重的堕落|r
.target Eridan Bluewind
step
.group
.isQuestTurnedIn 4421
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.accept 4906 >>接任务: |cRXP_LOOT_更深重的堕落|r
.target Eridan Bluewind
step
.group
#completewith ShadowLord
.goto Felwood,35.367,58.376
.subzone 1770 >>Travel to Shadow Hold
step
.group 2
.isQuestTurnedIn 5203
.goto Felwood,38.499,50.414
>>杀死|cRXP_ENEMY_Rakaiah|r
.complete 5204,1 
.mob Rakaiah
step
.group 2
.isQuestTurnedIn 5203
.goto Felwood,38.499,50.414
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特雷·莱弗治的残骸|r
.turnin 5204 >>交任务: |cRXP_FRIENDLY_光明的惩戒|r
.accept 5385 >>接任务: |cRXP_LOOT_特雷·莱弗治的残骸|r
.target Remains of Trey Lightforge
step
.group 2
#label ShadowLord
.isQuestTurnedIn 5165
.goto Felwood,38.814,46.782
>>|cRXP_WARN_继续进入阴影保持|r
>>杀死|cRXP_ENEMY_Salia|r、|cRXD_ENEMY_Moora|r和|cRXP_ENEMY_Shadow Lord Fel'dan|r。掠夺他的|cRXP_Loot_Head |r
>>|cRXP_WARN_Kill|cRXP_ENEMY_Salia|r在施法时先施法|r|T136206:0|t[心理控制]
.complete 5242,1 
.complete 5242,2 
.complete 5242,3 
.mob Salia
.mob Moora
.mob Shadow Lord Fel'dan
step
.group
#completewith next
.goto Felwood,38.744,47.008
+|cRXP_WARN_在|cRXP_ENEMY_Shadow Lord Fel'dan|r旁边的Urn上执行注销跳跃，传送到铁树森林|r
.link https://www.twitch.tv/videos/1219250841?t=02h06m57s >>|cRXP_WARN_点击此处查看视频参考|r
.subzoneskip 1770,1
step
.group
.isQuestTurnedIn 4421
.goto Felwood,41.58,19.19,90,0
.goto Felwood,38.98,22.31
>>杀死|cRXP_ENEMY_Xavaric|r。掠夺他以获得|T133942:0|t[|cRXP-Loot_Xavaric| r]的长笛
>>|cRXP_WARN_使用|T133942:0|t[|cRXP_LOOT_Flute of Xavaric|r]开始任务|r
.complete 4906,4 
.collect 11668,1,939,1 
.accept 939 >>接任务: |cRXP_LOOT_萨瓦里克长笛|r
.use 11668 
.mob Xavaric
step
.group
.isQuestTurnedIn 4421
.goto Felwood,38.98,22.31,70,0
.goto Felwood,43.44,14.47,70,0
.goto Felwood,38.98,22.31,70,0
.goto Felwood,38.98,22.31
>>杀死|cRXP_ENEMY_Jadefire地狱召唤者|r、|cRXD_ENEMY_Jadefire背叛者|r和|cRXP_ENEMY_贾defire骗子|r。掠夺他们的|cRXP_Loot_Jadefire Felbinds|r
.complete 4906,1 
.complete 4906,2 
.complete 4906,3 
.complete 939,1 
.mob Jadefire Hellcaller slain (8)
.mob Jadefire Betrayer slain (8)
.mob Jadefire Trickster slain (8)
step
>>杀死|cRXP_ENEMY_Entropic Beasts|r和|cRXD_ENEMY_Entropic Horrors|r
>>|cRXP_WARN_小心在碎疤谷巡逻的精英|cRXP_ENEMY_Infernal|r|r
.complete 5156,1 
.goto Felwood,41.535,43.007,50,0
.goto Felwood,40.91,40.37,50,0
.goto Felwood,42.84,37.62,60,0
.goto Felwood,45.43,40.02,60,0
.goto Felwood,41.10,41.06
.complete 5156,2 
.goto Felwood,41.535,43.007,50,0
.goto Felwood,40.91,40.37,50,0
.goto Felwood,42.84,37.62,60,0
.goto Felwood,45.43,40.02,60,0
.goto Felwood,41.10,41.06
.complete 5156,3 
.goto Felwood,41.535,43.007
.mob Entropic Beast
.mob Entropic Horror
step
.goto Felwood,50.889,81.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔诺恩·红羽|r
.turnin 5156 >>交任务: |cRXP_FRIENDLY_验证腐蚀|r
.target Taronn Redfeather
step
.group
.isQuestComplete 5242
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5242 >>交任务: |cRXP_FRIENDLY_最终一击|r
.target Greta Mosshoof
step
.group
.isOnQuest 5385
.goto Felwood,51.346,82.013
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰希尔·月弓|r
.turnin 5385 >>交任务: |cRXP_FRIENDLY_特雷·莱弗治的残骸|r
.target Jessir Moonbow
step
.group
.isQuestComplete 4906
.isQuestComplete 939
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4906 >>交任务: |cRXP_FRIENDLY_更深重的堕落|r
.turnin 939 >>交任务: |cRXP_FRIENDLY_萨瓦里克长笛|r
.target Eridan Bluewind
step
.group
.isQuestComplete 4906
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4906 >>交任务: |cRXP_FRIENDLY_更深重的堕落|r
.target Eridan Bluewind
step
.group
.isQuestComplete 939
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 939 >>交任务: |cRXP_FRIENDLY_萨瓦里克长笛|r

.target Eridan Bluewind
step
.abandon 5242 >>Abandon A Final Blow
step
.abandon 5385 >>放弃特雷灯塔的遗迹
step
.abandon 4421 >>放弃Jadefire的腐败
step << Warlock
.dungeon ST
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊普斯|r
.accept 8422 >>接任务: |cRXP_WARN_巨魔的羽毛|r
.target Impsy
step
.goto Felwood,64.769,8.131
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳菲恩|r
.accept 8461 >>接任务: |cRXP_LOOT_北方的死木熊怪|r
.target Nafien
step
.goto Felwood,62.61,10.12,70,0
.goto Felwood,62.73,7.31,70,0
.goto Felwood,61.33,7.46,70,0
.goto Felwood,59.79,5.92,70,0
.goto Felwood,62.61,10.12
>>杀死|cRXP_ENEMY_枯木穴守望者|r，|cRXP_ENEMY_枯木穴复仇者|r和|cRXX_ENEMY_Deadwood穴萨满|r
>>|cRXP_WARN_如果您找到了|T136232:0|t[|cRXP_LOOT_Dedwood仪式图腾|r]，请不要从此物品开始任务|r
.complete 8461,1 
.complete 8461,2 
.complete 8461,3 
.mob Deadwood Den Watcher
.mob Deadwood Avenger
.mob Deadwood Shaman
step
.goto Felwood,62.61,10.12,70,0
.goto Felwood,62.73,7.31,70,0
.goto Felwood,61.33,7.46,70,0
.goto Felwood,59.79,5.92,70,0
.goto Felwood,62.61,10.12
.xp 55 >>将Furbolgs升级到55级
step
.goto Felwood,64.769,8.131
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳菲恩|r
.turnin 8461 >>交任务: |cRXP_FRIENDLY_北方的死木熊怪|r
.accept 8465 >>接任务: |cRXP_LOOT_与萨尔法交谈|r
.target Nafien
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳菲恩|r
>>|cRXP_WARN_如果您拥有5|r|T132926:0|t[Deadwood头饰羽毛]|cRXP_WARN_以上，您可以通过Timbermaw Hold获得声誉|r
.dailyturnin 8467 >>Turn in Feathers for Nafien
.itemcount 21377,>5 
.target Nafien
step
#completewith next
.goto Felwood,65.48,3.47,20 >>穿越Timbermaw Hold to |cRXP_FRIENDLY_Kernda|r
step
.goto Felwood,65.48,3.47,20,0
.goto Felwood,65.35,1.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克尔达|r
>>|cRXP_FRIENDLY_Kernda|r|cRXP_WARN_trols the lower Timbermaw Hold path|r
.use 20741 >>|cRXP_WARN_使用|T136232:0|t[|cRXP_LOOT_Dedwood仪式图腾|r]开始任务|r
>>如果您对Timbermaw Hold不持中立态度，请跳过此步骤
.accept 8470 >>接任务: |cRXP_LOOT_死木仪祭图腾|r
.turnin 8470 >>交任务: |cRXP_FRIENDLY_死木仪祭图腾|r
.reputation 576,neutral,<0,1 
.itemcount 20741,1 
.target Kernda
step
.goto Felwood,65.692,2.810
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅罗什|r
>>如果您对Timbermaw Hold不友好，请跳过此步骤
.accept 6031 >>接任务: |cRXP_WARN_符文布|r
.turnin 6031 >>交任务: |cRXP_FRIENDLY_符文布|r
.reputation 576,friendly,<0,1 
.itemcount 14047,30 
.target Meilosh
step
#completewith next
.goto Winterspring,27.736,34.499,20 >>前往: |cRXP_PICK_冬泉谷|r
step
.goto Winterspring,27.736,34.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔法|r
.turnin 8465 >>交任务: |cRXP_FRIENDLY_与萨尔法交谈|r
.accept 8464 >>接任务: |cRXP_WARN_冬泉熊怪的活动|r
.target Salfa
step
#softcoreserver
.isQuestComplete 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_不接受后续见面会|r
.turnin 3909 >>交任务: |cRXP_FRIENDLY_视灵药剂|r
.turnin 980 >>交任务: |cRXP_FRIENDLY_新的泉水|r
.accept 5082 >>接任务: |cRXP_LOOT_冬泉熊怪的威胁|r
.target Donova Snowden
step
#softcoreserver
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 980 >>交任务: |cRXP_FRIENDLY_新的泉水|r
.accept 5082 >>接任务: |cRXP_LOOT_冬泉熊怪的威胁|r
.target Donova Snowden
step
#softcoreserver
.destroy 11243 >>摧毁: |cRXP_ENEMY_视灵药剂|r
step
#hardcoreserver
.isQuestComplete 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_暴雪已经调整了[Videre Elixir]的任务链，这样它就不会再在官方硬核服务器上杀死你了|r
.turnin 3909 >>交任务: |cRXP_FRIENDLY_视灵药剂|r
.accept 3912 >>接任务: |cRXP_WARN_墓地相见|r
.turnin 980 >>交任务: |cRXP_FRIENDLY_新的泉水|r
.accept 5082 >>接任务: |cRXP_LOOT_冬泉熊怪的威胁|r
.target Donova Snowden
step
#hardcoreserver
.isQuestTurnedIn 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_暴雪已经调整了[Videre Elixir]的任务链，这样它就不会再在官方硬核服务器上杀死你了|r
.accept 3912 >>接任务: |cRXP_WARN_墓地相见|r
.turnin 980 >>交任务: |cRXP_FRIENDLY_新的泉水|r
.accept 5082 >>接任务: |cRXP_LOOT_冬泉熊怪的威胁|r
.target Donova Snowden
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 980 >>交任务: |cRXP_FRIENDLY_新的泉水|r
.accept 5082 >>接任务: |cRXP_LOOT_冬泉熊怪的威胁|r
.target Donova Snowden
step
.goto Winterspring,42.3,42.6,70,0
.goto Winterspring,33.8,36.2,70,0
.goto Winterspring,30.1,35.6,90,0
.goto Winterspring,41.3,43.3
>>杀死|cRXP_ENEMY_Winterfall Pathfinders |r，|cRXD_ENEMY_温特福尔巢穴守望者|r和|cRXP_ENEMY_温特福尔图腾|r。掠夺它们一个|T134865:0|t[|cRXP_Loot_空的消防水瓶|r]
.use 12771 >>|cRXP_WARN_使用|T134865:0|t[|cRXP_LOOT_Empty Firewater Flask|r]开始任务|r
>>|cRXP_WARN_暂时忽略杀死|cRXP_ENEMY_Winterfall|r的任务，只需掠夺|r|T134865:0|t[|cRXD_loot_空的火瓶|r]|cRXT_WARN_an并继续前进|r
.collect 12771,1,5083,1 
.accept 5083 >>接任务: |cRXP_LOOT_冬泉火酒|r
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 5083 >>交任务: |cRXP_FRIENDLY_冬泉火酒|r
.accept 5084 >>接任务: |cRXP_LOOT_堕落熊怪|r
.target Donova Snowden
step
.goto Winterspring,32.8,44.3,70,0
.goto Winterspring,37.4,44.2,70,0
.goto Winterspring,40.5,37.5,70,0
.goto Winterspring,43.6,42.6,70,0
.goto Winterspring,45.9,41.6,70,0
.goto Winterspring,47.9,45.1,70,0
.goto Winterspring,50.5,38.0,70,0
.goto Winterspring,60.6,33.7
>>地面上的织机|cRXP_Loot_月触羽毛|r
.complete 978,1
.isOnQuest 978
step
#completewith next
.goto Winterspring,61.348,38.973
.subzone 2255 >>Travel to Everlook
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷戈·格雷斯通|r, |cRXP_FRIENDLY_杰希卡·雷德帕斯|r
.accept 6028 >>接任务: |cRXP_LOOT_永望镇报告|r
.accept 6030 >>接任务: |cRXP_LOOT_尼古拉斯·瑟伦霍夫公爵|r
.goto Winterspring,61.348,38.973
.accept 5601 >>接任务: |cRXP_LOOT_小妹妹帕米拉|r
.goto Winterspring,61.281,38.981
.target Gregor Greystone
.target Jessica Redpath
step
.hs >>赫斯到棘轮
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
.zoneskip Winterspring,1
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法兹拉克|r, |cRXP_FRIENDLY_兹科尔|r
.bankdeposit 15788,15790,20741 >>将以下项目存入您的银行：
>>|T134942:0|t[Everlook报告] 
>>|T133737:0|t 
>>|T136232:0|t[枯木仪式图腾]（如果你有） 
.target Fuzruckle
.target Zikkel
step
.goto The Barrens,62.639,37.421,-1
.goto The Barrens,62.680,37.395,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法兹拉克|r, |cRXP_FRIENDLY_兹科尔|r
.bankwithdraw 10575,11954,10445 >>从您的银行提取以下项目：
>>|T134430:0|t[黑蜻蜓熔化]（如果你有） 
>>|T134836:0|t[装满的纯样品罐] 
>>|T132594:0|t[绘图套件] 
.target Fuzruckle
.target Zikkel
step 
#hardcoreserver
.isOnQuest 3912
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Tanaris >>前往: 塔纳利斯
.target Bragok
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
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
.fly Un'Goro >>Fly to Un'Goro
.target Bera Stonehammer
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
.dungeon ST
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Un'Goro >>Fly to Un'Goro
.target Bragok
.zoneskip The Barrens,1
step << Druid
.dungeon ST
.isQuestTurnedIn 9051
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 9053 >>接任务: |cRXP_WARN_更好的材料|r
.target Torwa Pathfinder
step << !Mage
.goto Un'Goro Crater,45.234,5.831
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fly Theramore >>Fly to Dustwallow
.target Gryfe
.zoneskip Un'Goro Crater,1
step << !Mage 
.dungeon !ST << Druid
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Theramore >>Fly to Dustwallow
.target Bragok
.zoneskip The Barrens,1
step << !Mage
.goto Dustwallow Marsh,71.4,56.1
.zone Wetlands >>前往: |cRXP_PICK_湿地|r
step << !Mage
.goto Wetlands,9.490,59.693
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
.fly Ironforge >>飞往铁炉堡
.target Shellei Brondir
step << Mage
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 56-57 Burning Steppes
#next 57-58西部/东部瘟疫
step << Mage
.goto Ironforge,30.96,4.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法师泰摩尔|r
.turnin 3461 >>交任务: |cRXP_FRIENDLY_向法师泰摩尔回复|r
.isOnQuest 3461
.target Tymor
step
.goto Ironforge,75.768,23.389
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉里斯·空轮|r
.turnin 4513 >>交任务: |cRXP_FRIENDLY_远方的软泥怪|r
.target Laris Geardawdle
step << !Mage
.goto Ironforge,30.96,4.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法师泰摩尔|r
.turnin 3461 >>交任务: |cRXP_FRIENDLY_向法师泰摩尔回复|r
.isOnQuest 3461
.target Tymor
step
.goto Ironforge,38.368,55.303
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皇家历史学家阿克瑟努斯|r
.accept 3702 >>接任务: |cRXP_LOOT_索瑞森废墟|r
.target Royal Historian Archesonus
step
.goto Ironforge,38.368,55.303
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皇家历史学家阿克瑟努斯|r
.skipgossip
.complete 3702,1 
.target Royal Historian Archesonus
step
.goto Ironforge,38.368,55.303
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皇家历史学家阿克瑟努斯|r
.turnin 3702 >>交任务: |cRXP_FRIENDLY_索瑞森废墟|r
.accept 3701 >>接任务: |cRXP_LOOT_索瑞森废墟|r
.target Royal Historian Archesonus
step
.goto Ironforge,18.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板洛雷·火酒|r
.home Ironforge >>将您的炉石设置为铁炉堡
.target Innkeeper Firebrew
.zoneskip Ironforge,1
step
.goto Ironforge,55.492,47.728
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Burning Steppes>>飞向燃烧的草原
.target Gryth Thurden
.zoneskip Ironforge,1
step
.goto Burning Steppes,84.554,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥拉留斯|r
.accept 4283 >>接任务: |cRXP_WARN_五十个！|r
.accept 3824 >>接任务: |cRXP_WARN_蛮王戈泰什|r
.target Oralius
step
.group
.goto Burning Steppes,85.820,68.948
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫林迪斯·河角|r
.accept 4182 >>接任务: |cRXP_LOOT_黑龙的威胁|r
.target Helendis Riverhorn
step
#completewith next
.goto Burning Steppes,65.236,24.007
.subzone 251 >>Travel to Flame Crest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁奇·斯迪波尔|r, |cRXP_FRIENDLY_麦克斯沃特·尤博格林|r
.accept 4726 >>接任务: |cRXP_LOOT_雏龙精华|r
.goto Burning Steppes,65.236,24.007
.accept 4296 >>接任务: |cRXP_LOOT_七贤石板|r
.goto Burning Steppes,65.152,23.911
.target Tinkee Steamboil
.target Maxwort Uberglint
step
.group 3
#completewith BroodlingEssence
.goto Burning Steppes,81.8,27.8,0
.goto Burning Steppes,91.4,32.6,0
.goto Burning Steppes,89.8,54.6,0
.goto Burning Steppes,81.8,60.0,0
>>杀死|cRXP_ENEMY_Black Broodlings|r，|cRXD_ENEMY_ Black Dragons典当行|r，| cRXP__ENEMY_BlackWyrmkins|r和a|cRXP_ENEMY_Black Drake|r
.complete 4182,1 
.complete 4182,2 
.complete 4182,4 
.complete 4182,3 
.isOnQuest 4182
.mob Black Broodling
.mob Black Dragonspawn
.mob Black Drake
.mob Black Wyrmkin
step
#completewith next
.goto Burning Steppes,81.8,27.8,0
.goto Burning Steppes,91.4,32.6,0
.goto Burning Steppes,89.8,54.6,0
.goto Burning Steppes,81.8,60.0,0
.use 12284 >>|cRXP_WARN_使用|r|T133001:0|t[Draco Incarcinatrix 900]|cRXP_WARN_on|cRXP_ENEMY_Black Broodlings|r，然后杀死它们。注意受到伤害会使你的施法停止|r
>>死后在地上掠夺|cRXP_Loot_Broodling精华|r
.complete 4726,1 
.mob Black Broodling
step
#optional
.goto Burning Steppes,95.074,31.553
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
.accept 4022 >>接任务: |cRXP_LOOT_烈焰精华|r
.itemcount 10575,1 
.target Cyrus Therepentous
step
#optional
.goto Burning Steppes,95.074,31.553
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
>>选择八卦选项：“我向你出示我行为的证据，赛勒斯。”
.complete 4022,1 
.turnin 4022 >>交任务: |cRXP_FRIENDLY_烈焰精华|r
.itemcount 10575,1 
.target Cyrus Therepentous
step
#label BroodlingEssence
.goto Burning Steppes,91.64,33.51,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,81.8,60.0,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,91.4,32.6,70,0
.goto Burning Steppes,81.8,27.8,70,0
.goto Burning Steppes,90.6,43.6
.use 12284 >>|cRXP_WARN_使用|r|T133001:0|t[Draco Incarcinatrix 900]|cRXP_WARN_on|cRXP_ENEMY_Black Broodlings|r，然后杀死它们。注意受到伤害会使你的施法停止|r
>>死后在地上掠夺|cRXP_Loot_Broodling精华|r
.complete 4726,1 
.mob Black Broodling
step
.group 3
.goto Burning Steppes,81.8,27.8,70,0
.goto Burning Steppes,91.4,32.6,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,81.8,60.0,70,0
.goto Burning Steppes,89.8,54.6,70,0
.goto Burning Steppes,91.4,32.6,70,0
.goto Burning Steppes,81.8,27.8,70,0
.goto Burning Steppes,90.6,43.6
>>杀死|cRXP_ENEMY_Black Broodlings|r，|cRXD_ENEMY_ Black Dragons典当行|r，| cRXP__ENEMY_BlackWyrmkins|r和a|cRXP_ENEMY_Black Drake|r
.complete 4182,1 
.complete 4182,2 
.complete 4182,4 
.complete 4182,3 
.isOnQuest 4182
.mob Black Broodling
.mob Black Dragonspawn
.mob Black Drake
.mob Black Wyrmkin
step
#completewith next
>>单击地面上的|cRXP_PICK_Thaurissan遗迹|r
.complete 3701,1 
step
.goto Burning Steppes,54.121,40.757
>>单击|cRXP_PICK_Tablet of the Seven |r。获取|cRXP_Loot_Tablet Transcript|r
.complete 4296,1 
.skipgossip
step
.goto Burning Steppes,54.2,38.3,60,0
.goto Burning Steppes,65.6,43.9,60,0
.goto Burning Steppes,63.5,33.8,60,0
.goto Burning Steppes,57.4,36.4
>>单击地面上的|cRXP_PICK_Thaurissan遗迹|r
.complete 3701,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Blackrock兽人|r和|cRXX_ENEMY_Worgs|r。掠夺他们的|cRXD_Loot_Blackrock奖章|r
.complete 4283,1 
.mob Blackrock Slayer
.mob Blackrock Warlock
.mob Blackrock Sorcerer
.mob Blackrock Soldier
.mob Blackrock Worg
.mob Slavering Ember Worg
.mob Giant Ember Worg
step
.goto Burning Steppes,39.21,55.27
>>杀死|cRXP_ENEMY_Gor'tesh|r。掠夺他的|cRXX_Loot_Head|r
>>|cRXP_ENEMY_Gor’tesh|r|cRXP_WARN非常硬，而且有重击攻击，要小心|r
.complete 3824,1 
.mob Gor'tesh
step
.goto Burning Steppes,39.21,55.27,0
.goto Burning Steppes,41.8,35.4,0
.goto Burning Steppes,49.6,55.4,0
.goto Burning Steppes,50.6,61.8,0
.goto Burning Steppes,55.4,54.6,0
.goto Burning Steppes,39.21,55.27,60,0
.goto Burning Steppes,49.6,55.4,0,60,0
.goto Burning Steppes,50.6,61.8,0,60,0
.goto Burning Steppes,55.4,54.6,0,60,0
.goto Burning Steppes,48.8,59.6
>>杀死|cRXP_ENEMY_Blackrock兽人|r和|cRXX_ENEMY_Worgs|r。掠夺他们的|cRXD_Loot_Blackrock奖章|r
.complete 4283,1 
.mob Blackrock Slayer
.mob Blackrock Warlock
.mob Blackrock Sorcerer
.mob Blackrock Soldier
.mob Blackrock Worg
.mob Slavering Ember Worg
.mob Giant Ember Worg
step
.goto Burning Steppes,84.554,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥拉留斯|r
.turnin 4283 >>交任务: |cRXP_FRIENDLY_五十个！|r
.turnin 3824 >>交任务: |cRXP_FRIENDLY_蛮王戈泰什|r
.accept 3825 >>接任务: |cRXP_WARN_枭首示众|r
.target Oralius
step
.group
.isQuestComplete 4182
.goto Burning Steppes,85.820,68.948
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫林迪斯·河角|r
.turnin 4182 >>交任务: |cRXP_FRIENDLY_黑龙的威胁|r
.accept 4183 >>接任务: |cRXP_LOOT_真正的主人|r
.target Helendis Riverhorn
step
.group
.isQuestTurnedIn 4182
.goto Burning Steppes,85.820,68.948
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫林迪斯·河角|r
.accept 4183 >>接任务: |cRXP_LOOT_真正的主人|r
.target Helendis Riverhorn
step
.group
.abandon 4182 >>放弃龙之威胁
step
.group
.isQuestTurnedIn 4182
#completewith next
.goto Burning Steppes,84.333,68.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博古斯·粗臂|r
.fly Redridge >>飞到雷德里奇山脉
.target Borgus Stoutarm
step
.group
.isQuestTurnedIn 4182
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_所罗门镇长|r
.turnin 4183 >>交任务: |cRXP_FRIENDLY_真正的主人|r
.accept 4184 >>接任务: |cRXP_LOOT_真正的主人|r
.target Magistrate Solomon
step
.isQuestTurnedIn 4182
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Stormwind >>飞到暴风城
.target Ariena Stormfeather
.zoneskip Redridge Mountains,1
step
.group
.isQuestTurnedIn 4182
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
.accept 6182 >>接任务: |cRXP_LOOT_第一个和最后一个|r
.turnin 4184 >>交任务: |cRXP_FRIENDLY_真正的主人|r
.accept 4185 >>接任务: |cRXP_LOOT_真正的主人|r
.target Highlord Bolvar Fordragon
.xp <56,1
step
.group
.isQuestTurnedIn 4182
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
.turnin 4184 >>交任务: |cRXP_FRIENDLY_真正的主人|r
.accept 4185 >>接任务: |cRXP_LOOT_真正的主人|r
.target Highlord Bolvar Fordragon
step
.group
.isQuestTurnedIn 4182
.goto Stormwind City,78.102,17.750
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女伯爵卡特拉娜·普瑞斯托|r
.complete 4185,1 
.skipgossip
.target Lady Katrana Prestor
step
.group
.isQuestTurnedIn 4182
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
.turnin 4185 >>交任务: |cRXP_FRIENDLY_真正的主人|r
.accept 4186 >>接任务: |cRXP_LOOT_真正的主人|r
.target Highlord Bolvar Fordragon
step
.group
.isQuestTurnedIn 4182
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Master Mathias Shaw|r
step
.group
.isQuestTurnedIn 4182
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
.turnin 6182 >>交任务: |cRXP_FRIENDLY_第一个和最后一个|r
.accept 6183 >>接任务: |cRXP_LOOT_逝者的荣耀|r
.turnin 6183 >>交任务: |cRXP_FRIENDLY_逝者的荣耀|r
.accept 6184 >>接任务: |cRXP_LOOT_弗林特·沙多摩尔|r
.target Master Mathias Shaw
.xp <56,1
step
.group
.isQuestTurnedIn 4182
#completewith next
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Redridge>>飞到雷德里奇山脉
.zoneskip Stormwind City,1
.target Dungar Longdrink
step
.group
.isQuestTurnedIn 4182
.goto Redridge Mountains,29.98,44.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_所罗门镇长|r
.turnin 4186 >>交任务: |cRXP_FRIENDLY_真正的主人|r
.accept 4223 >>接任务: |cRXP_LOOT_真正的主人|r
.target Magistrate Solomon
step
.group
.isQuestTurnedIn 4182
.goto Redridge Mountains,30.590,59.410
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Burning Steppes >>飞向燃烧的草原
.zoneskip Redridge Mountains,1
.target Ariena Stormfeather
step
.group
.isQuestTurnedIn 4182
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯韦尔元帅|r
.turnin 4223 >>交任务: |cRXP_FRIENDLY_真正的主人|r
.accept 4224 >>接任务: |cRXP_LOOT_真正的主人|r
.target Marshal Maxwell
step
.destroy 11467 >>摧毁: |cRXP_ENEMY_黑石奖章|r
step
#completewith next
.goto Burning Steppes,65.236,24.007
.subzone 251 >>Travel to Flame Crest
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁奇·斯迪波尔|r, |cRXP_FRIENDLY_麦克斯沃特·尤博格林|r
.turnin 4726 >>交任务: |cRXP_FRIENDLY_雏龙精华|r
.accept 4808 >>接任务: |cRXP_LOOT_菲诺克|r
.goto Burning Steppes,65.236,24.007
.turnin 4296 >>交任务: |cRXP_FRIENDLY_七贤石板|r
.goto Burning Steppes,65.152,23.911
.target Tinkee Steamboil
.target Maxwort Uberglint
step
.group
.isQuestTurnedIn 4182
.goto Burning Steppes,65.012,23.757
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狼狈不堪的约翰|r
.complete 4224,1 
.skipgossip
.target Ragged John
step
.goto Burning Steppes,80.997,46.790
>>单击山顶上的|cRXP_PICK_Soft Dirt Mound|r
.complete 3825,1 
step
.goto Burning Steppes,84.554,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥拉留斯|r
.turnin 3825 >>交任务: |cRXP_FRIENDLY_枭首示众|r
.target Oralius
step
.group
.isQuestTurnedIn 4182
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯韦尔元帅|r
.turnin 4224 >>交任务: |cRXP_FRIENDLY_真正的主人|r
.target Marshal Maxwell
step
.goto Burning Steppes,84.333,68.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博古斯·粗臂|r
.fly Stormwind >>飞到暴风城
.target Borgus Stoutarm
step
.goto Stormwind City,44.274,73.973
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉维斯·纳文哈姆|r, 他在楼上
>>把暴风布翻过来。你需要3叠每一块布。如果无法完成所有任务，请跳过此步骤
.turnin 7791 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7793 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7794 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7795 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
.target Clavicus Knavingham
step
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
.accept 6182 >>接任务: |cRXP_LOOT_第一个和最后一个|r
.target Highlord Bolvar Fordragon
.xp <56,1
step
#completewith next
.goto StormwindClassic,74.90,54.00,20,0
.goto StormwindClassic,78.43,60.15,20,0
.goto StormwindClassic,78.67,60.13,5 >>输入SI:7总部。上楼前往|cRXP_FRIENDLY_Master Mathias Shaw|r
step
.goto StormwindClassic,75.78,59.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
.turnin 6182 >>交任务: |cRXP_FRIENDLY_第一个和最后一个|r
.accept 6183 >>接任务: |cRXP_LOOT_逝者的荣耀|r
.turnin 6183 >>交任务: |cRXP_FRIENDLY_逝者的荣耀|r
.accept 6184 >>接任务: |cRXP_LOOT_弗林特·沙多摩尔|r
.target Master Mathias Shaw
.xp <56,1
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >>训练你的职业技能
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
.goto StormwindClassic,38.54,26.86
.trainer >>训练你的职业技能
.target Brother Joshua
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >>训练你的职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >>训练你的职业技能
.target Osborne the Night Man
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >>训练你的职业技能
.target Einris Brightspear
step << Mage
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >>训练你的职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯巴克尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Spackle Thornberry
step << Druid
.goto StormwindClassic,20.898,55.491
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙德拉斯·月树|r
.trainer >>训练你的职业技能
.target Sheldras Moontree
step
.hs >>前往: |cRXP_PICK_铁炉堡|r
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
.zoneskip Stormwind City,1
step 
#softcoreserver
.goto Ironforge,32.209,63.266
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛泰姆中尉|r
.accept 7261 >>接任务: |cRXP_WARN_国王的命令|r
.target Lieutenant Rotimer
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.bankwithdraw 15788,15790 >>从您的银行提取以下项目：
>>|T134942:0|t[Everlook报告] 
>>|T133737:0|t 
.target Bailey Stonemantle
step
.goto Ironforge,35.90,60.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜雷·石衣|r
.bankdeposit 12438 >>将以下项目存入您的银行：
>>|T133469:0|t[廷基字母] 
.target Bailey Stonemantle
step
#phase 1-5
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_从拍卖行购买以下物品。你稍后需要这些才能在EPL中免费完成任务|r
.collect 12359,2,6026,1 
.collect 11128,1,6026,1 
.collect 10562,8,6026,1 
.collect 10560,8,6026,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#phase 6
#ah
.goto Ironforge,25.800,75.500,-1
.goto Ironforge,24.200,74.600,-1
.goto Ironforge,23.800,71.800,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
>>|cRXP_BUY_从拍卖行购买以下物品。你稍后需要这些才能在EPL中进行多次免费任务登录|r
>>|cRXP_WARN_有5个不同的任务，每个任务需要30个。如果你不能得到一种类型的30个，那么跳过它|r
.collect 22529,30,9136,1 
.collect 22526,30,9126,1 
.collect 22525,30,9124,1 
.collect 22527,30,9128,1 
.collect 22528,30,9131,1 
.collect 12359,2,6026,1 
.collect 11128,1,6026,1 
.collect 10562,8,6026,1 
.collect 10560,8,6026,1 
.target Auctioneer Lympkin
.target Auctioneer Redmuse
.target Auctioneer Buckler
step
#sticky
.goto Ironforge,74.082,48.208
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴巴罗·阿克巴斯|r
>>把Gnomeregan布翻过来。你需要3叠每一块布。如果无法完成所有任务，请跳过此步骤
.turnin 7807 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7808 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7809 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7811 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
.zoneskip Ironforge,1
.target Bubulo Acerbus
step
#sticky
.goto Ironforge,43.224,31.574
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米斯蒂娜·钢盾|r
>>做铁锻布的翻转。你需要3叠每一块布。如果无法完成所有任务，请跳过此步骤
.turnin 7802 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7803 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7804 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7805 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
.zoneskip Ironforge,1
.target Mistina Steelshield
step
.goto Ironforge,38.368,55.303
.target Royal Historian Archesonus
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皇家历史学家阿克瑟努斯|r
.turnin 3701 >>交任务: |cRXP_FRIENDLY_索瑞森废墟|r
step
.goto Ironforge,55.501,47.742
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
.fly Southshore >>飞往南岸
.zoneskip Ironforge,1
.target Gryth Thurden
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 57-58西部/东部瘟疫
#next 58-59 Felwood/冬泉
step
.goto Hillsbrad Foothills,51.170,58.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板安德森|r
.home >>把你的炉石放在南岸
.target Innkeeper Anderson
step
#hardcoreserver
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.fly Western Plaguelands >>飞往西部瘟疫地区
.target Darla Harris
step
#softcoreserver
#completewith next
.goto Alterac Mountains,39.461,81.230,100 >>前往Alterac山脉的|cRXP_FRIENDLY_Lieutent Haggerdin|r
step
#softcoreserver
.isOnQuest 7261
.goto Alterac Mountains,39.461,81.230
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈格丁中尉|r
.turnin 7261 >>交任务: |cRXP_FRIENDLY_国王的命令|r
.target Lieutenant Haggerdin
step
#softcoreserver
#completewith TravelWPL
.goto Western Plaguelands,42.702,84.031
.zone Western Plaguelands >>前往: |cRXP_PICK_西瘟疫之地|r
step
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
.accept 5215 >>接任务: |cRXP_LOOT_瘟疫之锅|r
.accept 5097 >>接任务: |cRXP_LOOT_标记哨塔|r
.target 指挥官Ashlam Valorfist
step
.goto Western Plaguelands,42.967,83.546
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_银色黎明军官普尔哈特|r
.turnin 6028 >>交任务: |cRXP_FRIENDLY_永望镇报告|r
.target Argent Officer Pureheart
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师玛多妮尔|r
.turnin 5215 >>交任务: |cRXP_FRIENDLY_瘟疫之锅|r
.accept 5216 >>接任务: |cRXP_LOOT_目标：费尔斯通农场|r
.target High Priestess MacDonnell
step
#label TravelWPL
.goto Western Plaguelands,43.419,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳萨尼尔·杜马|r
.accept 5903 >>接任务: |cRXP_LOOT_瘟疫与你|r
.target Nathaniel Dumah
step
.isQuestTurnedIn 6183
.goto Western Plaguelands,43.607,84.506
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗林特·沙多摩尔|r
.turnin 6184 >>交任务: |cRXP_FRIENDLY_弗林特·沙多摩尔|r
.accept 6185 >>接任务: |cRXP_LOOT_东部的瘟疫|r
.target Flint Shadowmore
step
#completewith ADC
.cast 17670 >>|cRXP_WARN_采集|r|T133440:0|t[银色黎明委员会]|cRXP_WARN_开始采集|r| T133447:0|t[Surgestones]
.use 12846
step
.goto Western Plaguelands,37.015,57.145
>>杀死|cRXP_ENEMY_鼎王比勒马|r。掠夺他获得|cRXX_Loot_Felstone Field鼎钥匙|r
>>|cRXP_ENEMY_大锅领主比勒马|r|cRXP_WARN_当你接近|r|cRXP_PICK_大锅时可能会产卵|r
.complete 5216,1 
.unitscan Cauldron Lord Bilemaw
step
.goto Western Plaguelands,37.194,56.860
>>单击|cRXP_PICK_Scourge Cauldron|r
.turnin 5216 >>交任务: |cRXP_FRIENDLY_目标：费尔斯通农场|r
.accept 5217 >>接任务: |cRXP_LOOT_返回冰风岗|r
step
#completewith next
.goto Western Plaguelands,38.05,54.59,12 >>Go inside the house
step
.goto Western Plaguelands,38.40,54.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮丝·费尔斯通|r, 他在楼上
.accept 5021 >>接任务: |cRXP_LOOT_迟到总比不到好|r
.target Janice Felstone
step
#completewith next
.goto Western Plaguelands,38.05,54.56,8,0
>>Exit the house
.goto Western Plaguelands,38.58,55.33,6 >>Go inside the barn
step
.goto Western Plaguelands,38.72,55.24
>>点击地面上的|cRXP_PICK_Janice包裹|r
>>|cRXP_WARN_这个有5秒的施放时间|r
>>|cRXP_WARN_你可以在墙后这样做，以避免攻击里面的任何东西|r
>>|cRXP_WARN_避免攻击谷仓外的|cRXP_ENEMY_Scarlets|r。如果你这样做了，就逃跑|r
.turnin 5021 >>交任务: |cRXP_FRIENDLY_迟到总比不到好|r
.accept 5022 >>接任务: |cRXP_LOOT_迟到总比不到好|r
step
#completewith next
.subzone 3197 >>前往寒风营地
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师玛多妮尔|r
.turnin 5217 >>交任务: |cRXP_FRIENDLY_返回冰风岗|r
.accept 5219 >>接任务: |cRXP_LOOT_目标：达尔松之泪|r
.target High Priestess MacDonnell
step
#label ADC
.goto Western Plaguelands,46.681,71.135,-1
.goto Western Plaguelands,46.558,71.156,-1
.use 12815 >>|cRXP_WARN_使用|r|T135432:0|t[Beacon Torch]|cRXP_WARN_next到塔台入口。你可以在不让精英|cRXP_ENEMY_Skeletal Warlord|r搁浅的情况下完成此操作|r
.complete 5097,4 
step
.goto Western Plaguelands,53.733,64.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
>>|cRXP_ENEMY_冷冻食尸鬼|r|cRXP_WARN_cast|r|T135848:0|t[快速冻结]|cRXP_WARN_。此技能眩晕5秒。不惜一切代价避免多次搁浅|r

.accept 4984 >>接任务: |cRXP_LOOT_大自然的苦楚|r
.target Mulgris Deepriver
step
#completewith DalsonCauldron
.goto Western Plaguelands,49.2,58.4,0
.goto Western Plaguelands,51.6,47.6,0
.goto Western Plaguelands,43.0,48.2,0
.goto Western Plaguelands,43.4,57.8,0
.goto Western Plaguelands,46.6,40.4,0
>>杀死|cRXP_ENEMY_Diseased Wolves|r
>>|cRXP_ENEMY_Diseased Wolves |r|cRXP_WARN_share用|cRXD_ENEMY_Carrion Lurkers|r产卵。您可能需要杀死它们才能迫使|cRXP_ENEMY_Diseased Wolfs|r产卵|r
.complete 4984,1 
.unitscan Diseased Wolf
step
.goto Western Plaguelands,47.796,50.671
>>|cRXP_WARN_进入Dalson的眼泪谷仓|r
>>点击地面上的|cRXP_PICK_Dalson夫人日记|r
.accept 5058 >>接任务: |cRXP_WARN_达尔松夫人的日记|r
.turnin 5058 >>交任务: |cRXP_FRIENDLY_达尔松夫人的日记|r
step
.goto Western Plaguelands,47.86,49.88,25,0
.goto Western Plaguelands,48.48,51.56,25,0
.goto Western Plaguelands,47.39,51.77,25,0
.goto Western Plaguelands,46.64,49.21,25,0
.goto Western Plaguelands,47.86,49.88
>>杀死|cRXP_LOOT_Wandering Skeleton |r。获取|cRXP _LOOT_Dalson Outhouse密钥|r
>>|cRXP_WARN_The |cRXP_LOOT_Wandering Skeleton|r patrols around the Dalson's Tear Barn and House|r
.collect 12738,1,5060,1 
.unitscan Wandering Skeleton
step
#completewith next
.goto Western Plaguelands,48.109,49.654
>>单击|cRXP_PICK_Outhouse|r以召唤|cRXP_ENEMY_Farmer Dalson|r
.turnin 5059 >>交任务: |cRXP_FRIENDLY_被锁起来的农夫|r
step
.goto Western Plaguelands,48.115,49.814
>>杀死|cRXP_ENEMY_Farmer Dalson |r。掠夺他获得|cRXD_Loot_Dalson橱柜钥匙|r
.collect 12739,1,5060,1 
.mob Farmer Dalson
step
.goto Western Plaguelands,47.353,49.626
>>单击房子楼梯上的|cRXP_PICK_Locked Cabinet|r
.turnin 5060 >>交任务: |cRXP_FRIENDLY_被锁起来的农夫|r
step
.goto Western Plaguelands,46.156,52.427
>>杀死|cRXP_ENEMY_大锅领主Malvinious|r。为|cRXX_Loot_Dalson的眼泪大锅钥匙而掠夺他|r
>>|cRXP_ENEMY_大锅领主Malvinious|r|cRXP_WARN_当你接近|r|cRXP_PICK_大锅时可能会产卵|r
.complete 5219,1 
.unitscan Cauldron Lord Malvinious
step
#label DalsonCauldron
.goto Western Plaguelands,46.176,52.009
>>单击|cRXP_PICK_Scourge Cauldron|r
.turnin 5219 >>交任务: |cRXP_FRIENDLY_目标：达尔松之泪|r
.accept 5220 >>接任务: |cRXP_LOOT_返回冰风岗|r
step
.goto Western Plaguelands,49.2,58.4,0
.goto Western Plaguelands,51.6,47.6,0
.goto Western Plaguelands,43.0,48.2,0
.goto Western Plaguelands,43.4,57.8,0
.goto Western Plaguelands,49.2,58.4,70,0
.goto Western Plaguelands,51.6,47.6,70,0
.goto Western Plaguelands,43.0,48.2,70,0
.goto Western Plaguelands,43.4,57.8,70,0
.goto Western Plaguelands,46.6,40.4,70,0
.goto Western Plaguelands,49.2,58.4,70,0
.goto Western Plaguelands,51.6,47.6,70,0
.goto Western Plaguelands,43.0,48.2,70,0
.goto Western Plaguelands,43.4,57.8,70,0
.goto Western Plaguelands,46.6,40.4
>>杀死|cRXP_ENEMY_Diseased Wolves|r
>>|cRXP_ENEMY_Diseased Wolves |r|cRXP_WARN_share用|cRXD_ENEMY_Carrion Lurkers|r产卵。您可能需要杀死它们才能迫使|cRXP_ENEMY_Diseased Wolfs|r产卵|r
.complete 4984,1 
.unitscan Diseased Wolf

step << skip 
#requires wolves
.goto Western Plaguelands,38.401,54.053
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮丝·费尔斯通|r
.turnin 5050 >>交任务: |cRXP_FRIENDLY_好运护符|r
.target Janice Felstone
.accept 5051 >>接任务: |cRXP_LOOT_两半合一|r
.isQuestTurnedIn 5022
step << skip 
#sticky
#completewith next
.goto Western Plaguelands,36.9,58.2
>>杀死在农场周围走动的|cRXP_LOOT_Jabbering食尸鬼|r并掠夺他
.collect 12722,1
.isQuestTurnedIn 5022
step << skip 
>>右键单击半符组合它们
.complete 5051,1 
.isQuestTurnedIn 5022
step << skip 
.goto Western Plaguelands,38.401,54.053
.target Janice Felstone
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮丝·费尔斯通|r
.turnin 5051 >>交任务: |cRXP_FRIENDLY_两半合一|r
.isQuestTurnedIn 5022

step
.goto Western Plaguelands,44.217,63.319,-1
.goto Western Plaguelands,44.247,63.131,-1
.use 12815 >>|cRXP_WARN_使用|r|T135432:0|t[Beacon Torch]|cRXP_WARN_next到塔台入口。你可以在不让精英|cRXP_ENEMY_Skeletal Warlord|r搁浅的情况下完成此操作|r
.complete 5097,3 
step
.goto Western Plaguelands,42.326,66.105,-1
.goto Western Plaguelands,42.422,66.222,-1
.use 12815 >>|cRXP_WARN_使用|r|T135432:0|t[Beacon Torch]|cRXP_WARN_next到塔台入口。你可以在不让精英|cRXP_ENEMY_Skeletal Warlord|r搁浅的情况下完成此操作|r
.complete 5097,2 
step
.goto Western Plaguelands,40.116,71.561,-1
.goto Western Plaguelands,40.038,71.713,-1
.use 12815 >>|cRXP_WARN_使用|r|T135432:0|t[Beacon Torch]|cRXP_WARN_next到塔台入口。你可以在不让精英|cRXP_ENEMY_Skeletal Warlord|r搁浅的情况下完成此操作|r
.complete 5097,1 
step
#completewith next
.subzone 3197 >>前往寒风营地
step
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
.turnin 5097 >>交任务: |cRXP_FRIENDLY_标记哨塔|r

.target 指挥官Ashlam Valorfist
.accept 5533 >>接任务: |cRXP_LOOT_通灵学院|r
step
.goto Western Plaguelands,42.665,83.774
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_化学家阿尔比顿|r
.turnin 5533 >>交任务: |cRXP_FRIENDLY_通灵学院|r
.target Alchemist Arbington
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师玛多妮尔|r
.target High Priestess MacDonnell
.turnin 5220 >>交任务: |cRXP_FRIENDLY_返回冰风岗|r
.accept 5222 >>接任务: |cRXP_LOOT_目标：嚎哭鬼屋|r
step
.isQuestTurnedIn 5097
.destroy 12815 >>摧毁: |cRXP_ENEMY_信号火炬|r
step
.goto Western Plaguelands,53.021,66.052
>>杀死|cRXP_ENEMY_大锅领主剃刀|r。掠夺他获得|cRXX_Loot_书写闹鬼大锅钥匙|r
>>|cRXP_ENEMY_大锅领主剃刀|r|cRXP_WARN_当你接近|r|cRXP_PICK_大锅时可能会产卵|r
>>|cRXP_ENEMY_冷冻食尸鬼|r|cRXP_WARN_cast|r|T135848:0|t[快速冻结]|cRXP_WARN_。此技能眩晕5秒。不惜一切代价避免多次搁浅|r
.complete 5222,1 
.unitscan Cauldron Lord Razarch
step
.goto Western Plaguelands,53.020,65.718
>>单击|cRXP_PICK_Scourge Cauldron|r
.turnin 5222 >>交任务: |cRXP_FRIENDLY_目标：嚎哭鬼屋|r
.accept 5223 >>接任务: |cRXP_LOOT_返回冰风岗|r
step
.goto Western Plaguelands,53.733,64.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
>>|cRXP_ENEMY_冷冻食尸鬼|r|cRXP_WARN_cast|r|T135848:0|t[快速冻结]|cRXP_WARN_。此技能眩晕5秒。不惜一切代价避免多次搁浅|r

.turnin 4984 >>交任务: |cRXP_FRIENDLY_大自然的苦楚|r
.accept 4985 >>接任务: |cRXP_LOOT_大自然的苦楚|r
.target Mulgris Deepriver
step
#completewith ArriveTirion
.isOnQuest 4985
>>杀死你在前往东部瘟疫地的途中看到的任何|cRXP_ENEMY_Diseased Grizzlies|r
>>|cRXP_WARN_杀死你一路上看到的任何人都很重要，但你现在不必完成|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
#completewith next
.goto Eastern Plaguelands,9.57,66.20
.zone Eastern Plaguelands >>前往: |cRXP_PICK_东瘟疫之地|r
step
#label ArriveTirion
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提里奥·弗丁|r
.accept 5542 >>接任务: |cRXP_LOOT_恶魔之犬|r
.accept 5543 >>接任务: |cRXP_LOOT_血染的天空|r
.accept 5544 >>接任务: |cRXP_LOOT_腐肉虫|r
.target Tirion Fordring
step
#completewith PamelaRedpath
>>杀死|cRXP_ENEMY_Plaguebats|r
>>杀死|cRXP_ENEMY_瘟疫猎犬符文|r
>>杀死|cRXP_ENEMY_Carrion Grubs|r。掠夺他们的|cRXX_Loot_蠕虫肉|r
.complete 5543,1 
.complete 5542,1 
.complete 5544,1 
.mob Plaguebat
.mob Plaguehound Runt
.mob Carrion Grub
step
.isQuestTurnedIn 6183
.goto Eastern Plaguelands,27.266,74.956
>>单击地面上的|cRXP_PICK_Mangled Human Remains|r。为|cRXP_Loot_SI:7 Insignia（Fredo）|r掠夺它
.complete 6185,2 
step
.isQuestTurnedIn 6183
.goto Eastern Plaguelands,28.805,74.880
>>单击地面上的|cRXP_PICK_Mangled Human Remains|r。为|cRXP_Loot_SI:7 Insignia（Turyen）|r掠夺它
.complete 6185,3 
step
.isQuestTurnedIn 6183
.goto Eastern Plaguelands,28.806,79.853
>>单击地面上的|cRXP_PICK_Mangled Human Remains|r。为|cRXP_Loot_SI:7 Insignia（Rutger）|r掠夺它
.complete 6185,1 
step
#label PamelaRedpath
.goto Eastern Plaguelands,36.489,90.718
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕米拉·雷德帕斯|r
.turnin 5601 >>交任务: |cRXP_FRIENDLY_小妹妹帕米拉|r
.accept 5149 >>接任务: |cRXP_LOOT_帕米拉的洋娃娃|r
.target Pamela Redpath
step
.goto Eastern Plaguelands,38.038,92.549,15,0
.goto Eastern Plaguelands,39.643,92.522,15,0
.goto Eastern Plaguelands,39.622,90.079
>>抢劫|T134164:0|t[|cRXP_Loot_Pamela玩偶的头|r]，|T134230:0|t[|cRXP _Loot_帕梅拉玩偶的左边|r]和|T134230:0|t[]
>>|cRXP_WARN_它们都在达罗郡的3栋建筑中随机产卵|r
.collect 12886,1,5149,1 
.collect 12887,1,5149,1 
.collect 12888,1,5149,1 
step
>>|cRXP_WARN_使用|r|T134164:0|t[|cRXP_LOOT_Pamela娃娃的头|r]|cRXP_WARN_，|r|T134230:0|t[|cRXP _LOOT_帕梅拉娃娃的左边|r]| cRXP_WARN_or|r|t13430:0|t[|cRXP_LOOT_Pamela娃娃的右边|r]]|cRXP_WARN_to将它们组合成|r|cRXD_LOOT_Pamila娃娃|r
.complete 5149,1 
.use 12886
.use 12887
.use 12888
step
.goto Eastern Plaguelands,36.489,90.718
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_帕米拉·雷德帕斯|r
.turnin 5149 >>交任务: |cRXP_FRIENDLY_帕米拉的洋娃娃|r
.accept 5152 >>接任务: |cRXP_LOOT_玛莱恩姑妈|r
.accept 5241 >>接任务: |cRXP_LOOT_卡林叔叔|r
.target Pamela Redpath
step
>>杀死|cRXP_ENEMY_Plaguebats|r
>>杀死|cRXP_ENEMY_Plaguehounds符文|r和|cRXD_ENEMY_Plasguehounds|r
>>杀死|cRXP_ENEMY_Carrion Grubs|r。掠夺他们的|cRXX_Loot_蠕虫肉|r
.complete 5543,1 
.goto Eastern Plaguelands,33.8,82.2,70,0
.goto Eastern Plaguelands,17.2,78.2,70,0
.goto Eastern Plaguelands,16.6,65.8,70,0
.goto Eastern Plaguelands,40.8,71.8,70,0
.goto Eastern Plaguelands,48.8,77.6,70,0
.goto Eastern Plaguelands,32.2,83.4,70,0
.goto Eastern Plaguelands,31.6,71.6
.complete 5542,1 
.goto Eastern Plaguelands,33.8,82.2,70,0
.goto Eastern Plaguelands,17.2,78.2,70,0
.goto Eastern Plaguelands,16.6,65.8,70,0
.goto Eastern Plaguelands,40.8,71.8,70,0
.goto Eastern Plaguelands,48.8,77.6,70,0
.goto Eastern Plaguelands,32.2,83.4,70,0
.goto Eastern Plaguelands,31.6,71.6
.complete 5542,2 
.goto Eastern Plaguelands,46.6,64.6,70,0
.goto Eastern Plaguelands,51.6,61.0,70,0
.goto Eastern Plaguelands,50.0,54.6,70,0
.goto Eastern Plaguelands,53.8,51.6,70,0
.goto Eastern Plaguelands,61.6,61.2,70,0
.goto Eastern Plaguelands,75.0,73.2,70,0
.goto Eastern Plaguelands,68.6,58.4,70,0
.goto Eastern Plaguelands,54.6,59.0
.complete 5544,1 
.goto Eastern Plaguelands,46.6,64.6,70,0
.goto Eastern Plaguelands,51.6,61.0,70,0
.goto Eastern Plaguelands,50.0,54.6,70,0
.goto Eastern Plaguelands,53.8,51.6,70,0
.goto Eastern Plaguelands,61.6,61.2,70,0
.goto Eastern Plaguelands,75.0,73.2,70,0
.goto Eastern Plaguelands,68.6,58.4,70,0
.goto Eastern Plaguelands,54.6,59.0
.mob Plaguebat
.mob Plaguehound Runt
.mob Plaguehound
.mob Carrion Grub
step
.goto Eastern Plaguelands,81.437,59.820
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼古拉斯·瑟伦霍夫公爵|r
.turnin 6030 >>交任务: |cRXP_FRIENDLY_尼古拉斯·瑟伦霍夫公爵|r
.target Duke Nicholas Zverenhoff
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5241 >>交任务: |cRXP_FRIENDLY_卡林叔叔|r
.accept 5211 >>接任务: |cRXP_LOOT_达隆郡的保卫者|r
.target Carlin Redpath
step
#ah
.goto Eastern Plaguelands,80.605,57.979
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_烟鬼拉鲁恩|r
.accept 6026 >>接任务: |cRXP_WARN_狮子大开口|r
.turnin 6026 >>交任务: |cRXP_FRIENDLY_狮子大开口|r
.itemcount 12359,2 
.itemcount 11128,1 
.itemcount 10562,8 
.itemcount 10560,8 
.target Smokey LaRue
step
.goto Eastern Plaguelands,81.637,59.280
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯琳·斯蒂文|r
.fp Chapel >>获得光明希望教堂的飞行路线
.target Khaelyn Steelwing
step
.goto Eastern Plaguelands,79.405,63.983
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护理者奥林|r
.accept 5281 >>接任务: |cRXP_LOOT_永不安息的灵魂|r
.accept 6021 >>接任务: |cRXP_LOOT_流亡者塞达尔|r
.target Caretaker Alen
step
#completewith Egan
.goto Eastern Plaguelands,60.6,68.4,0
.goto Eastern Plaguelands,67.7,41.5,0
.goto Eastern Plaguelands,75.5,51.2,0
.goto Eastern Plaguelands,41.8,30.4,0
.goto Eastern Plaguelands,28.35,28.49,0
>>杀死|cRXP_ENEMY_Diseased Flayer|r，|cRXD_ENEMY_Gibbering Ghoul|r和|cRXP_ENEMY_Cannibal Ghoul| r。与从尸体中产生的|cRXT_FRIENDLY_Darrowshire Spirits|r交谈
.complete 5211,1 
.mob Diseased Flayer
.mob Gibbering Ghoul
.mob Cannibal Ghoul
.target Darrowshire Spirit
step
.goto Eastern Plaguelands,69.2,50.6,70,0
.goto Eastern Plaguelands,64.6,32.0,70,0
.goto Eastern Plaguelands,51.6,30.6,70,0
.goto Eastern Plaguelands,56.6,40.0,70,0
.goto Eastern Plaguelands,44.4,36.4,70,0
.goto Eastern Plaguelands,48.0,24.6,70,0
.goto Eastern Plaguelands,50.9,38.3
>>杀死|cRXP_ENEMY_疯狂瘟疫猎犬|r
.complete 5542,3 
.mob Frenzied Plaguehound
step
.goto Eastern Plaguelands,41.2,25.2,70,0
.goto Eastern Plaguelands,42.1,38.2,70,0
.goto Eastern Plaguelands,32.0,35.8,70,0
.goto Eastern Plaguelands,33.8,25.8,70,0
.goto Eastern Plaguelands,29.9,23.1,70,0
.goto Eastern Plaguelands,26.5,37.5,70,0
.goto Eastern Plaguelands,20.4,20.8,70,0
.goto Eastern Plaguelands,31.4,29.6
>>打开整个Plaguewood的|cRXP_PICK_Large白蚁丘|r。为|cRXP_Loot_Pragueland白蚁|r掠夺它们
.complete 5903,1 
step
#label Egan
.goto Eastern Plaguelands,14.448,33.740
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃根|r
.turnin 5281 >>交任务: |cRXP_FRIENDLY_永不安息的灵魂|r
.target Egan
step
.goto Eastern Plaguelands,60.6,68.4,0
.goto Eastern Plaguelands,67.7,41.5,0
.goto Eastern Plaguelands,75.5,51.2,0
.goto Eastern Plaguelands,41.8,30.4,0
.goto Eastern Plaguelands,28.35,28.49,0
.goto Eastern Plaguelands,28.35,28.49,70,0
.goto Eastern Plaguelands,37.85,31.10,70,0
.goto Eastern Plaguelands,66.0,39.2,80,0
.goto Eastern Plaguelands,59.4,69.0,100,0
.goto Eastern Plaguelands,77.4,54.0,70,0
.goto Eastern Plaguelands,80.6,43.6,80,0
.goto Eastern Plaguelands,66.0,39.2
>>杀死|cRXP_ENEMY_Diseased Flayer|r，|cRXD_ENEMY_Gibbering Ghoul|r和|cRXP_ENEMY_Cannibal Ghoul| r。与从尸体中产生的|cRXT_FRIENDLY_Darrowshire Spirits|r交谈
.complete 5211,1 
.mob Diseased Flayer
.mob Gibbering Ghoul
.mob Cannibal Ghoul
.target Darrowshire Spirit
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5211 >>交任务: |cRXP_FRIENDLY_达隆郡的保卫者|r
.target Carlin Redpath
step
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提里奥·弗丁|r
.turnin 5542 >>交任务: |cRXP_FRIENDLY_恶魔之犬|r
.turnin 5543 >>交任务: |cRXP_FRIENDLY_血染的天空|r
.turnin 5544 >>交任务: |cRXP_FRIENDLY_腐肉虫|r
.accept 5742 >>接任务: |cRXP_LOOT_救赎|r
.target Tirion Fordring
step
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提里奥·弗丁|r
.complete 5742,1 
.skipgossip
.target Tirion Fordring
step
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提里奥·弗丁|r
.turnin 5742 >>交任务: |cRXP_FRIENDLY_救赎|r
.target Tirion Fordring
step
.group
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提里奥·弗丁|r
.accept 5781 >>接任务: |cRXP_LOOT_遗忘的记忆|r
.target Tirion Fordring
step
#completewith next
.goto Eastern Plaguelands,27.850,86.245,15 >>进入Undercroft密码
step
.goto Eastern Plaguelands,27.467,84.853
>>杀死|cRXP_ENEMY_Zaeldarr被驱逐者|r。掠夺他的|cRXX_Loot_Head |r
.complete 6021,1 
.mob Zaeldarr the Outcast
step
.group
.goto Eastern Plaguelands,27.276,85.213
>>单击地面上的|cRXP_PICK_Torn Scroll|r
.accept 6024 >>接任务: |cRXP_LOOT_哈米亚的请求|r
step
.group 3
#completewith next
.goto Eastern Plaguelands,28.307,86.885
.cast 6478 >>单击|cRXP_PICK_Loose Dirt Mound|r以召唤|cRXD_ENEMY_Mercutio Filthgorger|r和另外3名|cRXP_ENEMY_Crypt Robbers|r
step
.group 3
.goto Eastern Plaguelands,28.307,86.885
>>杀死|cRXP_ENEMY_Mercutio Filthgorger|r。掠夺他|cRXX_Loot_Taylan的锤子|r
.complete 5781,1 
.mob Mercutio Filthgorger
step
.group
.isQuestComplete 5781
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提里奥·弗丁|r
.turnin 5781 >>交任务: |cRXP_FRIENDLY_遗忘的记忆|r
.accept 5845 >>接任务: |cRXP_LOOT_失落的荣耀|r
.target Tirion Fordring
step
.group
.isQuestTurnedIn 5781
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提里奥·弗丁|r
.accept 5845 >>接任务: |cRXP_LOOT_失落的荣耀|r
.target Tirion Fordring
step
.group
.abandon 5781 >>放弃被遗忘的记忆
step
.hs >>Hearth到Southshore
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
#completewith next
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.fly Western Plaguelands >>飞往西部瘟疫地区
.target Darla Harris
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师玛多妮尔|r
.turnin 5223 >>交任务: |cRXP_FRIENDLY_返回冰风岗|r
.accept 5225 >>接任务: |cRXP_LOOT_目标：盖罗恩农场|r
.target High Priestess MacDonnell
step
.goto Western Plaguelands,43.418,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳萨尼尔·杜马|r
.turnin 5903 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
.accept 5904 >>接任务: |cRXP_LOOT_瘟疫与你|r
.target Nathaniel Dumah
step
.isQuestTurnedIn 6183
.goto Western Plaguelands,43.607,84.506
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗林特·沙多摩尔|r
.turnin 6185 >>交任务: |cRXP_FRIENDLY_东部的瘟疫|r
.accept 6186 >>接任务: |cRXP_LOOT_凋零者|r
.target Flint Shadowmore
step
.goto Western Plaguelands,42.665,83.774
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_化学家阿尔比顿|r
.accept 5537 >>接任务: |cRXP_LOOT_骸骨碎片|r
.target Alchemist Arbington
step
.isQuestTurnedIn 5903
.destroy 15043 >>摧毁: |cRXP_ENEMY_瘟疫白蚁|r
step
.goto Western Plaguelands,49.2,78.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛莱恩·雷德帕斯|r
>>|cRXP_FRIENDLY_Marlene Redpath |r也可能在楼上
.turnin 5152 >>交任务: |cRXP_FRIENDLY_玛莱恩姑妈|r
.accept 5153 >>接任务: |cRXP_LOOT_古怪的历史学家|r
.target Marlene Redpath
step
.goto Western Plaguelands,49.696,76.754
>>单击|cRXP_PICK_Joseph Redpath的纪念碑|r。掠夺它以获取|cRXP_Loot_Joseph的结婚戒指|r
.complete 5153,1 
step
#completewith CountingTime
>>杀死|cRXP_ENEMY_骨骼执行者|r和|cRXX_ENEMY_骨骼助手|r。掠夺他们的|cRXP_Loot_骨骼碎片|r
.complete 5537,1 
.mob Skeletal Executioner
.mob Skeletal Acolyte
step
.solo
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r, 他在楼上
.turnin 5153 >>交任务: |cRXP_FRIENDLY_古怪的历史学家|r
.accept 5154 >>接任务: |cRXP_LOOT_达隆郡的历史|r
.target Chromie
step
.group
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r, 他在楼上
.turnin 5153 >>交任务: |cRXP_FRIENDLY_古怪的历史学家|r
.accept 5154 >>接任务: |cRXP_LOOT_达隆郡的历史|r
.accept 4971 >>接任务: |cRXP_LOOT_时间问题|r
.target Chromie
step
#completewith next
.goto Western Plaguelands,43.822,69.250,10,0 >>进入Andorhal市政厅遗址
.link https://youtu.be/GUb1Ny4NwQw >>|cRXP_WARN_点击此处获取如何安全进入市政厅的视频参考|r
step
.goto Western Plaguelands,43.50,69.46
>>进入Andorhal市政厅遗址
>>打开|cRXP_PICK_Musty Tomes|r。为|cRXP_Loot_Annals of Darrowshire|r掠夺它们
>>|cRXP_WARN_正确的|cRXP_PICK_Musty Tome|r的页面将是完全深色的，或者有棕色污渍。如果它只有一半白一半黑，那就是一个陷阱|r
>>|cRXP_WARN_有时，所有|cRXP_PICK_Musty Tomes|r都是陷阱，您必须打开它们才能强制生成正确的陷阱|r
.complete 5154,1 
.link https://youtu.be/GUb1Ny4NwQw >>|cRXP_WARN_单击此处获取有关如何识别正确|r|cRXP_PICK_Musty Tome的视频参考|r
step
.group 3
.goto Western Plaguelands,45.172,62.559,25,0
.goto Western Plaguelands,46.858,62.040,25,0
.goto Western Plaguelands,48.324,62.610,25,0
.goto Western Plaguelands,48.10,63.92,20,0
.goto Western Plaguelands,48.06,66.18
>>杀死|cRXP_ENEMY_Temporal Parasites|r
.use 12627 >>|cRXP_WARN_在竖井中使用|r|T134229:0|t[Temporal Displacer]|cRXP_WARN_at使其产卵。如果思洛存储器不是蓝色脉冲，则它无法生成任何|r|cRXP_ENEMY_Temporal寄生虫|r
>>|cRXP_WARN_多个|cRXP_ENEMY_Temporal Parasites|r可以同时产生，一旦一个死亡，另一个可以立即产生|r
.complete 4971,1 
.mob Temporal Parasite
step
.isQuestComplete 4971
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r, 他在楼上
.turnin 4971 >>交任务: |cRXP_FRIENDLY_时间问题|r
.accept 4972 >>接任务: |cRXP_LOOT_找回时间|r
.turnin 5154 >>交任务: |cRXP_FRIENDLY_达隆郡的历史|r
.accept 5210 >>接任务: |cRXP_LOOT_卡林·雷德帕斯|r
.target Chromie
step
.isQuestTurnedIn 4971
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r, 他在楼上
.accept 4972 >>接任务: |cRXP_LOOT_找回时间|r
.turnin 5154 >>交任务: |cRXP_FRIENDLY_达隆郡的历史|r
.accept 5210 >>接任务: |cRXP_LOOT_卡林·雷德帕斯|r
.target Chromie
step
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r, 他在楼上
.turnin 5154 >>交任务: |cRXP_FRIENDLY_达隆郡的历史|r
.accept 5210 >>接任务: |cRXP_LOOT_卡林·雷德帕斯|r
.target Chromie
step
.abandon 4971 >>放弃时间问题
step
.isQuestTurnedIn 4971
.goto Western Plaguelands,38.71,68.25,20,0
.goto Western Plaguelands,38.51,69.74,20,0
.goto Western Plaguelands,40.63,68.40,20,0
.goto Western Plaguelands,41.08,67.45,20,0
.goto Western Plaguelands,40.69,66.16,20,0
.goto Western Plaguelands,41.46,69.85,15,0
.goto Western Plaguelands,42.17,68.88,20,0
.goto Western Plaguelands,42.67,70.31
>>打开|cRXP_PICK_Small Lockboxes|r。偷走它们以获取|cRXP_Loot_Andorhal手表|r
>>|cRXP_WARN_这些是在被烧毁的房子里发现的|r
.complete 4972,1 
step
#label CountingTime
.isQuestTurnedIn 4971
.goto Western Plaguelands,39.456,66.760
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.turnin 4972 >>交任务: |cRXP_FRIENDLY_找回时间|r
.target Chromie
step
.goto Western Plaguelands,37.8,70.6,70,0
.goto Western Plaguelands,42.6,73.8,70,0
.goto Western Plaguelands,49.6,69.4,70,0
.goto Western Plaguelands,49.6,63.6,70,0
.goto Western Plaguelands,43.0,63.4,70,0
.goto Western Plaguelands,39.8,67.4
>>杀死|cRXP_ENEMY_骨骼执行者|r和|cRXX_ENEMY_骨骼助手|r。掠夺他们的|cRXP_Loot_骨骼碎片|r
.complete 5537,1 
.mob Skeletal Executioner
.mob Skeletal Acolyte
step
.goto Western Plaguelands,42.665,83.774
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_化学家阿尔比顿|r
.turnin 5537 >>交任务: |cRXP_FRIENDLY_骸骨碎片|r
.target Alchemist Arbington
step
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比比尔法兹|r
.fly Eastern Plaguelands >>飞往东部瘟疫地区
.zoneskip Western Plaguelands,1
.target Bibilfaz Featherwhistle
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5210 >>交任务: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.accept 5181 >>接任务: |cRXP_LOOT_达隆郡的恶魔|r
.target Carlin Redpath
step
.group
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.accept 5168 >>接任务: |cRXP_LOOT_达隆郡的英雄|r
.target Carlin Redpath
step
.goto Eastern Plaguelands,79.405,63.983
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_护理者奥林|r
.turnin 6021 >>交任务: |cRXP_FRIENDLY_流亡者塞达尔|r
.target Caretaker Alen
step
.isQuestTurnedIn 5781
.goto Eastern Plaguelands,71.300,33.959
>>在水下掠夺|cRXP_Loot_失去荣誉的符号|r
.complete 5845,1 
step
.group 2
.goto Eastern Plaguelands,64.80,21.45,35,0
.goto Eastern Plaguelands,70.8,16.2
>>杀死|cRXP_ENEMY_Infiltator Hameya|r。抢走他|cRXX_Loot_Hameya的钥匙|r
>>|cRXP_ENEMY_Mossflayer Scouts|r|cRXP_WARN_一旦你对他们进行农业耕作，他们就会逃跑并呼救|r
>>|cRXP_ENEMY_渗透者Hameya|r|cRXP_WARN_在祖尔马沙尔的坟墓周围巡逻|r
.complete 6024,1 
.unitscan Infiltrator Hameya
step
.goto Eastern Plaguelands,51.106,49.937
>>在水下掠夺|cRXP_Loot_Horgus|r的头骨
.complete 5181,1 
step
.goto Eastern Plaguelands,53.913,65.755
>>在地上抢夺马尔杜克的|cRXP_Loot_碎剑|r
.complete 5181,2 
step
.group
.isQuestComplete 6024
.goto Eastern Plaguelands,28.036,86.155
>>单击|cRXP_PICK_Mound of Dirt|r
.turnin 6024 >>交任务: |cRXP_FRIENDLY_哈米亚的请求|r
step
.abandon 6024 >>Abandon Hameya's Plea
step
.isQuestTurnedIn 5781
.goto Eastern Plaguelands,7.530,43.635
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提里奥·弗丁|r
.turnin 5845 >>交任务: |cRXP_FRIENDLY_失落的荣耀|r
.accept 5846 >>接任务: |cRXP_LOOT_爱与家庭|r
.target Tirion Fordring
step
#completewith next
>>杀死|cRXP_ENEMY_Diseased Grizzlies|r
>>|cRXP_ENEMY_Diseased Grizzles |r|cRXP_WARN_share用|cRXD_ENEMY_Plague Lurkers|r产卵。您可能需要杀死它们才能迫使|cRXP_ENEMY_Diseased灰熊|r产卵|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
.group
.isOnQuest 5168
.goto Western Plaguelands,63.789,57.192
>>在地面上掠夺|cRXP_OOT_Redpath的盾牌|r
>>|cRXP_WARN_这个任务的另一个目标需要进入哈特格伦。如果你以后和一群人一起去Hearthglen不舒服，现在跳过这一步，放弃达罗郡英雄|r
.complete 5168,2 
step
.goto Western Plaguelands,62.644,58.945
>>杀死|cRXP_ENEMY_鼎主Soulwrath|r。掠夺他获得|cRXX_Loot_Gahron的枯萎鼎钥匙|r
>>|cRXP_ENEMY_大锅领主Soulwrath|r|cRXP_WARN_当你接近|r|cRXP_PICK_大锅时可能会产卵|r
.complete 5225,1 
.unitscan Cauldron Lord Soulwrath
step
.goto Western Plaguelands,62.573,58.573
>>单击|cRXP_PICK_Scourge Cauldron|r
.turnin 5225 >>交任务: |cRXP_FRIENDLY_目标：盖罗恩农场|r
.accept 5226 >>接任务: |cRXP_LOOT_返回冰风岗|r
step
.goto Western Plaguelands,58.8,58.6,70,0
.goto Western Plaguelands,53.6,48.0,70,0
.goto Western Plaguelands,58.8,52.6,70,0
.goto Western Plaguelands,67.2,46.6,70,0
.goto Western Plaguelands,66.0,55.6,70,0
.goto Western Plaguelands,60.8,50.8
>>杀死|cRXP_ENEMY_Diseased Grizzlies|r
>>|cRXP_ENEMY_Diseased Grizzles |r|cRXP_WARN_share用|cRXD_ENEMY_Plague Lurkers|r产卵。您可能需要杀死它们才能迫使|cRXP_ENEMY_Diseased灰熊|r产卵|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
.goto Western Plaguelands,53.733,64.662
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
>>|cRXP_ENEMY_冷冻食尸鬼|r|cRXP_WARN_cast|r|T135848:0|t[快速冻结]|cRXP_WARN_。此技能眩晕5秒。不惜一切代价避免多次搁浅|r

.turnin 4985 >>交任务: |cRXP_FRIENDLY_大自然的苦楚|r
.accept 4986 >>接任务: |cRXP_LOOT_雕文橡木枝|r
.target Mulgris Deepriver
step
#completewith next
.isQuestTurnedIn 5781
.goto Western Plaguelands,65.7,75.4
.subzone 2298 >>Travel to Caer Darrow
step
.isQuestTurnedIn 5781
.goto Western Plaguelands,65.7,75.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_画家瑞弗蕾|r
.turnin 5846 >>交任务: |cRXP_FRIENDLY_爱与家庭|r
.target Artist Renfray
step
.goto Western Plaguelands,48.348,31.996
>>单击|cRXP_PICK_Northridge木材厂板条箱|r以放置|cRXP _PICK_Termite桶|r，然后单击|cRXP_ICK_Termit桶|r
.skipgossip
.turnin 5904 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
.accept 6389 >>接任务: |cRXP_LOOT_瘟疫与你|r
step
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.accept 6004 >>接任务: |cRXP_LOOT_未竟的事业|r
.target Kirsta Deepshadow
step
.goto Western Plaguelands,50.85,40.68,60,0
.goto Western Plaguelands,51.97,44.47,60,0
.goto Western Plaguelands,41.23,51.54,60,0
.goto Western Plaguelands,50.85,40.68
>>杀死|cRXP_ENEMY_Scarlet Medics|r，|cRXD_ENEMY_ Scarlet Hunters|r，| cRXP__ENEMY_猩红法师|r和|cRXP_ENEMY_猩红骑士|r
>>|cRXP_ENEMY_Scarlet Medics|r|cRXP_WARN_and|cRXP-ENEMY_Scarlet Hunters|r共享产卵|r
>>|cRXP_ENEMY_猩红法师|r|cRXP_WARN_and|cRXP_ENEMY_猩红骑士|r共享重生|r
.complete 6004,1 
.complete 6004,2 
.complete 6004,3 
.complete 6004,4 
.mob Scarlet Medic
.mob Scarlet Hunter
.mob Scarlet Mage
.mob Scarlet Knight
step
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6004 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.accept 6023 >>接任务: |cRXP_LOOT_未竟的事业|r
.target Kirsta Deepshadow
step
.goto Western Plaguelands,56.38,34.11,50,0
.goto Western Plaguelands,57.83,36.10
>>杀死|cRXP_ENEMY_Huntsman Radley|r
.complete 6023,1 
.mob Huntsman Radley
step
.goto Western Plaguelands,54.520,23.818
>>杀死|cRXP_ENEMY_Cavalier Durgen|r
>>|cRXP_ENEMY_Cavalier Durgen|r |cRXP_WARN_will patrol up and down the Tower. Wait at the bottom for him to come to you instead of going inside|r
.complete 6023,2 
.unitscan Cavalier Durgen
step
.solo
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6023 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.target Kirsta Deepshadow
step
.group
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6023 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.accept 6025 >>接任务: |cRXP_LOOT_未竟的事业|r
.target Kirsta Deepshadow
step
.group
#completewith HearthglenFinish
.goto Western Plaguelands,45.7,18.8
.subzone 190 >>Travel to Hearthglen
step
.group 2
.goto Western Plaguelands,45.7,18.8
>>登上红心塔
>>|cRXP_WARN_你可以直接跑到顶部跳下去，也可以向上爬|r
>>|cRXP_WARN_避开|cRXP_ENEMY_High Protector Lorik|r，他是漫游Hearthglen的强大精英|r
>>|cRXP_WARN_这个任务可能很困难。如果你对进入Hearthglen没有信心，请跳过它|r
.complete 6025,1 
.link https://www.twitch.tv/videos/680869322?t=00h43m31s >>|cRXP_WARN_点击此处查看视频参考|r
.unitscan High Protector Lorik
step
.group 4
#label HearthglenFinish
.isOnQuest 5168
.goto Western Plaguelands,42.519,18.990
>>在表上掠夺|cRXP_Loot_Davil的Libram|r
>>|cRXP_WARN_避开|cRXP_ENEMY_High Protector Lorik|r，他是漫游Hearthglen的强大精英|r
>>|cRXP_WARN_这个任务可能很困难。如果你对进入Hearthglen没有信心，请跳过它|r
.complete 5168,1 
step
.goto Western Plaguelands,51.923,28.062
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6025 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.isQuestComplete 6025
.target Kirsta Deepshadow
step
.abandon 6025 >>放弃未完成的业务
step
.hs >>Hearth到Southshore
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
.zoneskip Western Plaguelands,1
step
#completewith PlagueUpon
.goto Hillsbrad Foothills,49.338,52.272
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.fly Western Plaguelands >>飞往西部瘟疫地区
.target Darla Harris
step
.goto Western Plaguelands,42.972,84.501
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶牧师玛多妮尔|r
.turnin 5226 >>交任务: |cRXP_FRIENDLY_返回冰风岗|r
.target High Priestess MacDonnell
step
.goto Western Plaguelands,42.702,84.031
.target 指挥官Ashlam Valorfist
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
.accept 5237 >>接任务: |cRXP_LOOT_任务完成！|r
.turnin 5237 >>交任务: |cRXP_FRIENDLY_任务完成！|r
step
#label PlagueUpon
.goto Western Plaguelands,43.418,84.834
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳萨尼尔·杜马|r
.turnin 6389 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
.target Nathaniel Dumah
step << Paladin
.dungeon ST
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
.accept 8418 >>接任务: |cRXP_WARN_铸造力量之石|r
.target 指挥官Ashlam Valorfist
step
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比比尔法兹|r
.fly Eastern Plaguelands >>飞往东部瘟疫地区
.zoneskip Western Plaguelands,1
.target Bibilfaz Featherwhistle
step
.isQuestComplete 5168
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5181 >>交任务: |cRXP_FRIENDLY_达隆郡的恶魔|r
.turnin 5168 >>交任务: |cRXP_FRIENDLY_达隆郡的英雄|r
.target Carlin Redpath
step
.goto Eastern Plaguelands,81.518,59.766
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5181 >>交任务: |cRXP_FRIENDLY_达隆郡的恶魔|r
.target Carlin Redpath
step
#ah
.goto Eastern Plaguelands,80.937,58.515
+|cRXP_WARN_如果您购买了|r|T133614:0|t[黑铁碎片]|cRXP_WARN_/|r|T134139:0|t[元素核心]|cRXP_WARN_//|r|T133571:0|t[地穴恶魔零件]|cRX P_WARN_/|r|t 133724:0|t][骨碎片]| cRX P_WARN_/|r | T136074:0|t[野蛮霜]| cRXP_WARN_请将它们从您的邮件中取出。如果您没有购买，请跳过此步骤|r
.itemcount 22529,<30 
.itemcount 22526,<30 
.itemcount 22525,<30 
.itemcount 22527,<30 
.itemcount 22528,<30 
step
#completewith 5TurnIns
>>|cRXP_WARN_如果你没有接受这些任务所需的声望，就在附近的|cRXP_ENEMY_Undad|r上磨一磨，直到你与银色黎明友好为止|r
.reputation 529,friendly
step
#optional
.goto Eastern Plaguelands,81.200,59.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱茵|r
.accept 9136 >>接任务: |cRXP_WARN_蛮荒之叶|r
.turnin 9136 >>交任务: |cRXP_FRIENDLY_蛮荒之叶|r
.itemcount 22529,30
.target Rayne
step
#optional
.goto Eastern Plaguelands,81.505,58.556
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎手雷奥普德|r
.accept 9124 >>接任务: |cRXP_WARN_地穴追猎者护甲的材料……|r
.turnin 9124 >>交任务: |cRXP_FRIENDLY_地穴追猎者护甲的材料……|r
.itemcount 22525,30
.target Huntsman Leopold
step
#optional
.goto Eastern Plaguelands,81.428,58.507
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杀手洛汗|r
.accept 9126 >>接任务: |cRXP_WARN_骨镰的材料|r
.turnin 9126 >>交任务: |cRXP_FRIENDLY_骨镰的材料|r
.itemcount 22526,30
.target Rohan the Assassin
step
#optional
.goto Eastern Plaguelands,81.523,58.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师安吉拉·杜萨图斯|r
.accept 9128 >>接任务: |cRXP_WARN_元素交易|r
.turnin 9128 >>交任务: |cRXP_FRIENDLY_元素交易|r
.itemcount 22527,30
.target Archmage Angela Dosantos
step
#optional
#label 5TurnIns
.goto Eastern Plaguelands,81.798,58.079
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korfax|r
.accept 9131 >>接任务: |cRXP_WARN_无畏护甲的材料|r
.turnin 9131 >>交任务: |cRXP_FRIENDLY_无畏护甲的材料|r
.itemcount 22528,30
.target Korfax, Champion of the Light
step
#optional
.goto Eastern Plaguelands,80.605,57.979
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_烟鬼拉鲁恩|r
.accept 6026 >>接任务: |cRXP_WARN_狮子大开口|r
.turnin 6026 >>交任务: |cRXP_FRIENDLY_狮子大开口|r
.itemcount 12359,2 
.itemcount 11128,1 
.itemcount 10562,8 
.itemcount 10560,8 
.target Smokey LaRue
step
.abandon 5168 >>抛弃达罗郡的英雄
step << Mage
.dungeon !ST
#completewith next
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
.dungeon !ST
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
step << !Mage
.dungeon !ST
.goto Eastern Plaguelands,81.637,59.280
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯琳·斯蒂文|r
.fly Stormwind >>飞往暴风城
.target Khaelyn Steelwing
step
.dungeon ST
#completewith IntoTheTemple
+你现在将四处飞行，并为沉没的神庙接任务。开始寻找一个团体来经营沉没神庙
>>你仍然需要在爆炸之地完成2个任务才能很快解锁你的职业任务。其中1个需要杀死50个暴徒 << Warrior
step
.dungeon ST
#completewith next
.goto Eastern Plaguelands,81.637,59.280
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯琳·斯蒂文|r
.fly Hinterlands >>飞到腹地
.target Khaelyn Steelwing
step
.dungeon ST
.goto The Hinterlands,33.751,75.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿塔莱流放者|r
.accept 1446 >>接任务: |cRXP_WARN_预言者迦玛兰|r
.target Atal'ai Exile
step
.dungeon ST
.isQuestTurnedIn 3444
#completewith next
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈斯鲁姆|r
.fly Wetlands >>飞到湿地
.target Guthrum Thunderfist
step
.dungeon ST
.isQuestTurnedIn 3444
#completewith next
.goto Wetlands,5.075,63.408
.zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
.zoneskip Tanaris
.zoneskip Thousand Needles
.zoneskip The Barrens
step
.dungeon ST
.isQuestTurnedIn 3444
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴德拉克|r
.goto Dustwallow Marsh,67.476,51.300
.fly Tanaris >>前往: 塔纳利斯
.target Baldruc
step
.dungeon ST
.isQuestTurnedIn 3444
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.accept 3446 >>接任务: |cRXP_WARN_深入神庙|r
.accept 3447 >>接任务: |cRXP_WARN_雕像群的秘密|r
.target Marvon Rivetseeker
step
.dungeon ST
.isQuestTurnedIn 4787 
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.accept 3528 >>接任务: |cRXP_WARN_神灵哈卡|r
.target Yeh'kinya
step << Mage
.dungeon ST
#completewith next
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Mage
.dungeon ST
.goto Stormwind City,36.87,81.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹妮亚·坎农|r
.trainer >>训练你的职业技能
.target Elsharin
.target Jennea Cannon
step << !Mage
.dungeon ST
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
.fly Ratchet >>飞到棘轮
.target Bera Stonehammer
.zoneskip Tanaris,1
step << !Mage
.dungeon ST
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip The Hinterlands
step << !Mage
.dungeon ST
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖尔|r
.goto Stranglethorn Vale,27.530,77.787
.fly Stormwind >>飞到暴风城
.target Gyll
step
.dungeon ST
#label IntoTheTemple
.isQuestTurnedIn 1469
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布罗哈恩·铁桶|r
.accept 1475 >>接任务: |cRXP_WARN_进入阿塔哈卡神庙|r
.target Brohann Caskbelly
step
#completewith next
.goto Stormwind City,47.87,31.31,8,0
.goto Stormwind City,47.87,31.31,6 >>前往楼上|cRXP_FRIENDLY_Royal Factor浴缸|r
step
.goto Stormwind City,48.47,30.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皇家代理人巴瑟罗尔|r
.turnin 5022 >>交任务: |cRXP_FRIENDLY_迟到总比不到好|r
.accept 5048 >>接任务: |cRXP_LOOT_善良的艾玛|r
.target Royal Factor Bathrilor
step
.goto Stormwind City,52.37,42.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_老艾玛|r
>>跳过后续训练，因为你在达到60分之前不会回到WPL
.turnin 5048 >>交任务: |cRXP_FRIENDLY_善良的艾玛|r
.unitscan Ol' Emma
step
.isQuestTurnedIn 6183
.goto Stormwind City,78.213,17.980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
.turnin 6186 >>交任务: |cRXP_FRIENDLY_凋零者|r
.target Highlord Bolvar Fordragon
step << Priest/Paladin
#completewith next
.goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step << Paladin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
.goto StormwindClassic,38.82,31.27,10,0
.goto StormwindClassic,38.67,32.82
.trainer >>训练你的职业技能
.target Arthur the Faithful
step << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔舒修士|r
.goto StormwindClassic,38.54,26.86
.trainer >>训练你的职业技能
.target Brother Joshua
step << Warrior
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
.goto StormwindClassic,76.08,50.14,15,0
.goto StormwindClassic,80.22,45.37,15,0
.goto StormwindClassic,78.68,45.79
.trainer >>训练你的职业技能
.target Wu Shen
.target Ilsa Corbin
step << Rogue
.goto StormwindClassic,74.65,52.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜行者奥斯伯|r
.trainer >>训练你的职业技能
.target Osborne the Night Man
step << Hunter
.goto StormwindClassic,61.609,15.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
.trainer >>训练你的职业技能
.target Einris Brightspear
step << Warlock
#completewith next
.goto Stormwind City,29.2,74.0,20,0
.goto Stormwind City,27.2,78.1,15 >>走进屠宰羔羊，下楼去
step << Warlock
.goto StormwindClassic,26.117,77.225
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厄苏拉·德林|r
.trainer >>训练你的职业技能
.target Ursula Deline
step << Warlock
.goto StormwindClassic,25.665,77.649
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯巴克尔|r
.vendor >>|cRXP_BUY_为您的宠物购买|r|T133738:0|t[Grimoires]|cRXP_Buy_|r
.target Spackle Thornberry
step
.dungeon ST
#completewith STEntry
.zone Blasted Lands >>前往: |cRXP_PICK_诅咒之地|r << !Warrior
.zone Blasted Lands >>前往: |cRXP_PICK_诅咒之地|r << Warrior
.zoneskip Swamp of Sorrows
.zoneskip 1415
step << Warrior
.dungeon !ST
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Blasted Lands >>Fly to Blasted Lands
.target Dungar Longdrink
.isQuestAvailable 8423,8424
step
.dungeon ST
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Blasted Lands >>Fly to Blasted Lands
.target Dungar Longdrink
.zoneskip Stormwind City,1
step << Warrior 
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 8423 >>接任务: |cRXP_WARN_战士的血脉|r
.target Fallen Hero of the Horde
step << Warrior 
.goto Blasted Lands,44.2,34.8,70,0
.goto Blasted Lands,47.7,38.6,70,0
.goto Blasted Lands,52.2,37.4,70,0
.goto Blasted Lands,54.8,44.8,70,0
.goto Blasted Lands,51.2,55.6,70,0
.goto Blasted Lands,45.8,48.2,70,0
.goto Blasted Lands,49.0,36.6
>>杀死|cRXP_ENEMY_Helboars|r
.complete 8423,1 
.mob Helboar
step << Warrior 
#label WarriorST
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 8423 >>交任务: |cRXP_FRIENDLY_战士的血脉|r
.accept 8424 >>接任务: |cRXP_WARN_魔誓者之战|r
.target Fallen Hero of the Horde
step << Warrior 
.goto Blasted Lands,63.8,30.1,60,0
.goto Blasted Lands,63.1,45.8,60,0
.goto Blasted Lands,65.9,33.3,60,0
.goto Blasted Lands,63.6,39.2
>>杀死|cRXP_ENEMY_Shadowswear Adepts|r，|cRXD_ENEMY_Shadeswear Cultiss|r和|cRXP_ENEMY_shadowswear Thugs|r
.complete 8424,1 
.complete 8424,2 
.complete 8424,3 
.mob Shadowsworn Adept
.mob Shadowsworn Cultist
.mob Shadowsworn Thug
step << Warrior 
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 8424 >>交任务: |cRXP_FRIENDLY_魔誓者之战|r
.target Fallen Hero of the Horde
step << Warrior
.dungeon !ST
#completewith TravelRatchet
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚历山大·康斯坦丁|r
.fly Booty Bay >>飞到Booty Bay
.target Alexandra Constantine
step << Warrior
.dungeon ST
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 8425 >>接任务: |cRXP_WARN_巫毒羽毛|r
.target Fallen Hero of the Horde
step
.dungeon ST
#label STEntry
.goto 1415,56.33,76.28
.subzone 1477 >>Travel to Sunken Temple
step
.dungeon ST
.isOnQuest 1475
#completewith next
>>在地上偷走|cRXP_Loot_Atal'ai平板电脑|r
>>|cRXP_WARN_这些可以在前往实例入口的途中以及沉没神庙内被掠夺|r
.complete 1475,1 
step
.dungeon ST
.goto 1415,56.33,76.28,40,0
.goto 1415,56.46,75.54,20,0
.goto 1415,56.83,75.86,20,0
.goto 1415,56.94,76.03,15,0
.goto 1415,57.06,75.58,20,0
.goto 1415,56.76,75.35,15,0
.goto 1415,56.809,75.151
.subzone 1477,2 >>Zone into Sunken Temple
step
.dungeon ST
.isOnQuest 1475
#sticky
>>在地上偷走|cRXP_Loot_Atal'ai平板电脑|r
.complete 1475,1 
step << Druid
.dungeon ST
.isOnQuest 9053
#completewith Altar
>>杀死|cRXP_ENEMY_Atal'alarion|r。为|cRXP_Loot_Putrid Vine|r掠夺他
>>|cRXP_ENEMY_阿塔警报|r|cRXP_WARN_i在下沉神殿的下层，通过点击平台上的所有|cRX_PICK_阿塔艾雕像|r进行召唤|r
.complete 9053,1 
step 
.dungeon ST
.isOnQuest 3446
#completewith next
>>单击Hakkar的|cRXP_PICK_Altar|r
>>|cRXP_WARN_哈卡尔的|cRXP_PICK_祭坛位于下沉神庙的下层|r
.turnin 3446 >>交任务: |cRXP_FRIENDLY_深入神庙|r
step 
.dungeon ST
.isOnQuest 3447
>>点击Hakkar的|cRXP_PICK_Idol |r
>>|cRXP_WARN_点击平台上的所有|cRXP_PICK_Atal'ai状态|r将激活Hakkar的|r|cRX_PICK_Idol|r
>>|cRXP_WARN_哈卡尔的|cRXP_PICK_Idol |r位于下沉神庙的下层|r
.turnin 3447 >>交任务: |cRXP_FRIENDLY_雕像群的秘密|r
step 
.dungeon ST
.isOnQuest 3446
#label Altar
>>单击Hakkar的|cRXP_PICK_Altar|r
>>|cRXP_WARN_哈卡尔的|cRXP_PICK_祭坛位于下沉神庙的下层|r
.turnin 3446 >>交任务: |cRXP_FRIENDLY_深入神庙|r
step << Druid
.dungeon ST
.isOnQuest 9053
>>杀死|cRXP_ENEMY_Atal'alarion|r。为|cRXP_Loot_Putrid Vine|r掠夺他
>>|cRXP_ENEMY_阿塔警报|r|cRXP_WARN_i在下沉神殿的下层，通过点击平台上的所有|cRX_PICK_阿塔艾雕像|r进行召唤|r
.complete 9053,1 
step << Paladin/Warrior/Warlock
.dungeon ST
.isOnQuest 8418,8425,8422
>>杀死|cRXP_ENEMY_Gasher|r和|cRXX_ENEMY_Zul'Lor|r。掠夺他们的|cRXD_Loot_Amber巫毒羽毛|r
>>杀死|cRXP_ENEMY_Mijan|r和|cRXX_ENEMY_Hukku|r。掠夺他们的|cRXP_Loot_蓝色巫毒羽毛|r
>>杀死|cRXP_ENEMY_Zolo|r和|cRXX_ENEMY_Loro|r。掠夺他们的|cRXP_Loot_绿色巫毒羽毛|r
>>|cRXP_WARN_此任务在沉没神庙的上层完成|r
.complete 8418,1 << Paladin 
.complete 8418,2 << Paladin 
.complete 8418,3 << Paladin 
.complete 8425,1 << Warrior 
.complete 8425,2 << Warrior 
.complete 8425,3 << Warrior 
.complete 8422,1 << Warlock 
.complete 8422,2 << Warlock 
.complete 8422,3 << Warlock 
step
.dungeon ST
.isOnQuest 3528
>>|cRXP_WARN_在Dragonflayer Skeleton旁边使用|r|T132834:0|t[Egg of Hakkar]|cRXP_WARN_while，然后完成事件|r
>>杀死|cRXP_ENEMY_Hakkar|r的小黄人，直到Hakkar| r的|cRXP_ENEMY_Avatar加入
>>杀死Hakkar的|cRXP_ENEMY_Avatar |r。为|T136148:0|t[|cRXX_Loot_Hakar|r]掠夺它
>>|cRXP_WARN_使用|r|T136148:0|t[|cRXP_LOOT_哈卡精华|r]|cRXP_WARN_填充|r|T132834:0|t[哈卡蛋]
.collect 10663,1,3528,1 
.disablecheckbox
.complete 3528,1 
.use 10465 
.use 10663 
step
.dungeon ST
.isOnQuest 1446
>>Kill |cRXP_ENEMY_接任务: |cRXP_WARN_预言者迦玛兰|r|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_You must kill the 6 |cRXP_ENEMY_Trolls|r on the upper platforms to gain access to|r |cRXP_ENEMY_接任务: |cRXP_WARN_预言者迦玛兰|r|r
.complete 1446,1 
step << Hunter/Mage/Priest/Rogue
.dungeon ST
.isOnQuest 8232,8253,8257,8236
>>杀死|cRXP_ENEMY_Morphaz|r。为Morphaz的|cRXP_Loot_Toth而掠夺它|r << Hunter
>>杀死|cRXP_ENEMY_Morphaz|r。为|cRXP_Loot_Arcane碎片而掠夺它|r << Mage
>>杀死|cRXP_ENEMY_Morphaz|r。为Morphaz的|cRXP_Loot_血液而掠夺它|r << Priest
>>杀死|cRXP_ENEMY_Morphaz|r。获取|cRXP_Loot_AAzure密钥|r << Rogue
.complete 8232,1 << Hunter 
.complete 8253,1 << Mage 
.complete 8257,1 << Priest 
.complete 8236,1 << Rogue 
step
.dungeon ST
>>杀死Eranikus的|cRXP_ENEMY_Shade|r。为|T135229:0|t[|cRXX_Loot_Eranikus|r]掠夺他
>>|cRXP_WARN_使用|T135229:0|t[|cRXP_LOOT_Eranikus|r]开始任务|r
>>|cRXP_WARN_在与Eranikus|r的|cRXP_ENEMY_Shade交战之前，确保你已经杀死了上层的所有|cRXP_ENEMY_Dragonkin|r暴徒，否则他们会全部攻击你|r
.collect 10454,1,3373,1 
.accept 3373 >>接任务: |cRXP_WARN_伊兰尼库斯精华|r
step
.dungeon ST
.isOnQuest 3373
>>单击|cRXP_PICK_Essence字体|r
.turnin 3373 >>交任务: |cRXP_FRIENDLY_伊兰尼库斯精华|r
step << Warrior
.dungeon ST
.isQuestComplete 8425
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
>>|cRXP_WARN_I强烈建议您选择|r|T132788:0|t[|cFF0070FF钻石烧瓶|r]|cRXP_WARN_a作为奖励。虽然其他奖励也很好，但您永远不会更换|r|T132788:0|t[|cFF0070FF钻石烧瓶|r]
.turnin 8425 >>交任务: |cRXP_FRIENDLY_巫毒羽毛|r
.target Fallen Hero of the Horde
step
.dungeon ST
#completewith TempleTurnIn
.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step
.dungeon ST
.goto Blasted Lands,65.535,24.337
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚历山大·康斯坦丁|r
.fly Stormwind >>飞到暴风城
.target Alexandra Constantine
.zoneskip Stormwind City
step
.dungeon ST
#label TempleTurnIn
.isQuestComplete 1475
.goto Stormwind City,64.328,20.627
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布罗哈恩·铁桶|r
.turnin 1475 >>交任务: |cRXP_FRIENDLY_进入阿塔哈卡神庙|r
.target Brohann Caskbelly
step
.dungeon ST
#completewith next
.hs >>Hearth到Southshore
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
.isOnQuest 1446,8418
step << Rogue
.isQuestComplete 8236
.goto Hillsbrad Foothills,75.575,22.076,20,0
.goto Hillsbrad Foothills,86.026,78.879
.subzone 3486 >>前往拉文霍尔特庄园
step << Rogue
.isQuestComplete 8236
.goto Hillsbrad Foothills,86.026,78.879
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔拉齐·拉文霍德公爵|r, 他在楼上
.turnin 8236 >>交任务: |cRXP_FRIENDLY_碧蓝钥匙|r
.target Lord Jorach Ravenholdt
step << Rogue
.isQuestTurnedIn 8236
.goto Hillsbrad Foothills,83.395,32.309,90,0
.goto The Hinterlands,7.50,58.87
.zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
step
.dungeon ST
.isQuestComplete 1446
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔拉·哈瑞斯|r
.goto Hillsbrad Foothills,49.338,52.272
.fly Hinterlands >>飞到腹地
.target Darla Harris
.zoneskip The Hinterlands
step
.dungeon ST
.isQuestComplete 1446
.goto The Hinterlands,33.751,75.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿塔莱流放者|r
.turnin 1446 >>交任务: |cRXP_FRIENDLY_预言者迦玛兰|r
.target Atal'ai Exile
step << Warrior/Priest/Hunter/Rogue/Warlock
.dungeon ST
#completewith next
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈斯鲁姆|r
.fly Booty Bay >>飞到Booty Bay
.target Guthrum Thunderfist
step << Paladin
.dungeon ST
.isQuestComplete 8418
#completewith next
.goto The Hinterlands,11.071,46.153
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈斯鲁姆|r
.fly Western Plaguelands >>飞往西部瘟疫地区
.target Guthrum Thunderfist
step << Paladin
.dungeon ST
.isQuestComplete 8418
.goto Western Plaguelands,42.702,84.031
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿什拉姆·瓦罗菲斯特|r
.turnin 8418 >>交任务: |cRXP_FRIENDLY_铸造力量之石|r
.target 指挥官Ashlam Valorfist
step << Paladin
.dungeon ST
.isQuestTurnedIn 8418
.goto Western Plaguelands,42.924,85.061
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比比尔法兹|r
.fly Booty Bay >>飞到Booty Bay
.target Bibilfaz Featherwhistle
.zoneskip Western Plaguelands,1
step << Mage
#completewith next
.cast 3565 >>前往: |cRXP_PICK_达纳苏斯|r
step << Mage
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
.turnin 4986 >>交任务: |cRXP_FRIENDLY_雕文橡木枝|r
.target Mathrengyl Bearwalker
step << Mage
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
step << Mage
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 978 >>交任务: |cRXP_FRIENDLY_月光羽毛|r
.target Erelas Ambersky
step << Mage
.goto Teldrassil,58.399,94.016
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
.fly Azshara >>Fly to Azshara
.target Vesprystus
.zoneskip Teldrassil,1
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
step << Druid
>>前往: |cRXP_PICK_月光林地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >>训练你的职业技能
.target Loganaar
step << Druid
.isOnQuest 6762
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 6762 >>交任务: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.target Rabine Saturna
step << Druid
.goto Moonglade,48.102,67.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛德拉尔|r
.fly Azshara >>Fly to Azshara
.target Sindrayl
.zoneskip Moonglade,1
step << !Druid !Mage
#completewith next
.goto Stormwind City,66.277,62.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Booty Bay >>飞到Booty Bay
.target Dungar Longdrink
.zoneskip Stormwind City,1
step << !Druid !Mage
#label TravelRatchet
.goto Stranglethorn Vale,25.8,73.1
.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 58-59 Felwood/冬泉
#next 59-60冬泉/Silithus第1部分
step << !Druid !Mage
.goto The Barrens,63.084,37.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Azshara >>Fly to Azshara
.target Bragok
step << Hunter
.dungeon ST
.isQuestComplete 8232
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
.turnin 8232 >>交任务: |cRXP_FRIENDLY_神庙中的绿龙|r
.target Ogtinc
step << Mage
.dungeon ST
.isQuestComplete 8253
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳斯|r
>>|cRXP_WARN_这将把你传送到山顶|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
step << Mage
.dungeon ST
.isQuestComplete 8253
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r, 他在塔上
.turnin 8253 >>交任务: |cRXP_FRIENDLY_毁灭摩弗拉斯|r
.target Archmage Xylem
step << Mage
.dungeon ST
.isQuestTurnedIn 8253
#completewith ArcaneRunes
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这会把你传送回去|r
.turnin 3421 >>交任务: |cRXP_FRIENDLY_回程|r
.timer 8,Return Trip RP
.target Nyrill
step
#completewith COTF
.goto Ashenvale,55.97,31.97,0
.goto Felwood,54.14,86.83
.zone Felwood >>前往: |cRXP_PICK_费伍德森林|r
step << Priest
.dungeon ST
.isQuestComplete 8257
.goto Felwood,51.21,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 8257 >>交任务: |cRXP_FRIENDLY_摩弗拉斯之血|r
.target Greta Mosshoof
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 3942 >>交任务: |cRXP_FRIENDLY_林克的记忆|r
.accept 4084 >>接任务: |cRXP_WARN_银爪铁心|r
.target Eridan Bluewind
step
#label COTF
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.accept 4421 >>接任务: |cRXP_LOOT_碧火萨特|r
.target Eridan Bluewind
step
#hardcoreserver
.isQuestTurnedIn 3912
#completewith next
>>在费尔伍德杀死|cRXP_ENEMY_Bears|r和|cRXX_ENEMY_Wolves|r。掠夺他们的|cRXP_Loot_银爪|r
.complete 4084,1 
.mob Angerclaw Bear
.mob Angerclaw Mauler
.mob Felpaw Wolf
.mob Felpaw Scavenger
step
>>杀死|cRXP_ENEMY_Jadefire Felswarns|r，|cRXD_ENEMY_Jadefire Shadowspeakers|r，| cRXP__ENEMY_Jadefire Rogues|r和|cRXP_ENEMY_Xavathras|r
>>|cRXP_WARN_这个地区可能非常危险。极其谨慎|r
>>|cRXP_ENEMY_Jadefire Felswarns|r|cRXP_WARN_cast|r|T136135:0|t[Cripple]|cRXP-WARN_which slow your movement speed|r
>>|cRXP_ENEMY_Jadefire Shadowspeakers |r|cRXP_WARN_are in |r|T132320:0|t[潜行]|cRXP_WARN_ and patrol around，and apply a |r|T136093:0|t[减速毒药]|cRXP_WARN_ which Slowing your 25 seconds|r
.complete 4421,1 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,2 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,3 
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91,60,0
.goto Felwood,32.23,67.10,60,0
.goto Felwood,37.19,68.93,60,0
.goto Felwood,37.34,66.91
.complete 4421,4 
.goto Felwood,32.23,67.10
.mob Jadefire Felsworn
.mob Jadefire Shadowstalker
.mob Jadefire Rogue
.mob Xavathras
step
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4421 >>交任务: |cRXP_FRIENDLY_碧火萨特|r
.accept 4906 >>接任务: |cRXP_LOOT_更深重的堕落|r
.target Eridan Bluewind
step << Warlock
.dungeon ST
.isQuestComplete 8422
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊普斯|r
.turnin 8422 >>交任务: |cRXP_FRIENDLY_巨魔的羽毛|r
.target Impsy
step
#hardcoreserver
.isQuestTurnedIn 3912
>>在费尔伍德杀死|cRXP_ENEMY_Bears|r和|cRXX_ENEMY_Wolves|r。掠夺他们的|cRXP_Loot_银爪|r
>>杀死|cRXP_ENEMY_Ironstree Stomper|r或|cRXX_ENEMY_Irontree Wanderers |r。掠夺他们的|cRXD_Loot_Iontree Heart|r
.complete 4084,1 
.goto Felwood,55.6,23.4,70,0
.goto Felwood,56.3,20.6,70,0
.goto Felwood,50.5,12.6,70,0
.goto Felwood,62.4,16.1,70,0
.goto Felwood,53.5,28.1,70,0
.goto Felwood,46.8,19.6,70,0
.goto Felwood,39.8,30.8,70,0
.goto Felwood,55.6,23.4
.complete 4084,2 
.goto Felwood,48.4,29.2,70,0
.goto Felwood,46.8,23.9,70,0
.goto Felwood,50.3,18.6,70,0
.goto Felwood,51.8,25.5
.mob Irontree Stomper
.mob Irontree Wanderer
.mob Angerclaw Grizzly
.mob Angerclaw Mauler
.mob Felpaw Ravager
.mob Felpaw Scavenger
step
.goto Felwood,41.58,19.19,90,0
.goto Felwood,38.98,22.31
>>杀死|cRXP_ENEMY_Xavaric|r。掠夺他以获得|T133942:0|t[|cRXP-Loot_Xavaric| r]的长笛
>>|cRXP_WARN_使用|T133942:0|t[|cRXP_LOOT_Flute of Xavaric|r]开始任务|r
.complete 4906,4 
.collect 11668,1,939,1 
.accept 939 >>接任务: |cRXP_LOOT_萨瓦里克长笛|r
.use 11668 
.mob Xavaric
step
.goto Felwood,38.98,22.31,70,0
.goto Felwood,43.44,14.47,70,0
.goto Felwood,38.98,22.31,70,0
.goto Felwood,38.98,22.31
>>杀死|cRXP_ENEMY_Jadefire地狱召唤者|r、|cRXD_ENEMY_Jadefire背叛者|r和|cRXP_ENEMY_贾defire骗子|r。掠夺他们的|cRXP_Loot_Jadefire Felbinds|r
.complete 4906,1 
.complete 4906,2 
.complete 4906,3 
.complete 939,1 
.mob Jadefire Hellcaller slain (8)
.mob Jadefire Betrayer slain (8)
.mob Jadefire Trickster slain (8)
step
#hardcoreserver
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4084 >>交任务: |cRXP_FRIENDLY_银爪铁心|r
.accept 4005 >>接任务: |cRXP_WARN_亚奎门塔斯|r
.target Eridan Bluewind
step
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 939 >>交任务: |cRXP_FRIENDLY_萨瓦里克长笛|r
.turnin 4906 >>交任务: |cRXP_FRIENDLY_更深重的堕落|r
.accept 4441 >>接任务: |cRXP_LOOT_被禁锢的古树|r
.target Eridan Bluewind
step
#completewith next
.goto Felwood,60.204,5.841
.subzone 1762 >>前往Felpaw村
step
.goto Felwood,60.204,5.841
>>单击|cRXP_PICK_Deadwood Cauldron|r
>>|cRXP_WARN_如果创建了一条逃生路径，只需单击|cRXP_PICK_Deadwood Cauldron|r，然后逃跑。你不需要杀死所有周围的|r|cRXP_ENEMY_Furbolgs|r
.turnin 5084 >>交任务: |cRXP_FRIENDLY_堕落熊怪|r
.accept 5085 >>接任务: |cRXP_LOOT_神秘的粘液|r
step
#completewith next
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Winterspring,27.76,34.59
.zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 5085 >>交任务: |cRXP_FRIENDLY_神秘的粘液|r
.accept 5086 >>接任务: |cRXP_LOOT_剧毒之水|r
.target Donova Snowden
step
#completewith next
.goto Winterspring,27.898,34.449,15,0
.goto Winterspring,27.898,34.449,0
.goto Felwood,65.280,7.515,20 >>前往: |cRXP_PICK_费伍德森林|r via Timbermaw Hold
step
.goto Felwood,50.6,22.4,70,0
.goto Felwood,49.6,26.6,70,0
.goto Felwood,48.0,24.0,70,0
.goto Felwood,49.6,26.6
>>杀死|cRXP_ENEMY_Toxic Horrors|r。掠夺他们的|cRXD_Loot_Toxic Horror Droplets|r
.complete 5086,1 
.mob Toxic Horror
step
#completewith next
.goto Felwood,65.280,7.515,20,0
.goto Felwood,65.280,7.515,0
.goto Winterspring,27.76,34.59
.zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 5086 >>交任务: |cRXP_FRIENDLY_剧毒之水|r
.accept 5087 >>接任务: |cRXP_LOOT_冬泉信使|r
.accept 4842 >>接任务: |cRXP_LOOT_奇怪的源头|r
.target Donova Snowden
step
#sticky
#label runners
>>杀死|cRXP_ENEMY_Winterfall Runner|r。掠夺他们的|cRXD_Loot_ WinterfallCrate|r
>>|cRXP_WARN_它们的产卵点在临冬泉的西侧，靠近Timbermaw隧道。他们的巡逻路线在你的地图上标出了|r
.complete 5087,1 
.line Winterspring,28.07,35.29,28.02,36.46,28.32,37.14,28.47,37.92,28.53,39.39,28.80,39.76,29.32,40.86,29.91,42.27,30.44,42.54,31.65,42.44,32.60,42.17,33.59,41.99,34.67,41.91,36.04,42.16,38.21,41.98,40.23,40.75,42.32,39.97,44.29,39.90,46.45,39.66,48.38,38.86,49.19,38.15,49.35,37.79,49.65,37.59,50.57,36.63,51.67,36.21,52.25,35.75,52.75,35.30,53.46,34.27,53.75,33.38,53.93,32.50,53.97,31.32,54.60,30.91,55.51,30.05,57.14,29.72,58.07,28.93,58.74,27.94,59.01,26.99,59.24,26.48,60.37,25.02,60.62,24.75,61.11,24.44,61.29,24.35,61.92,23.82,62.34,23.92,62.37,24.95,62.21,25.30,62.60,25.99,63.04,26.55,63.50,27.81,63.95,28.34,64.12,28.94,64.10,30.84,64.21,31.40,64.97,33.08,65.44,33.48,66.44,33.71,66.63,33.93,66.80,34.47,66.87,34.87,66.97,35.22,67.53,37.01,68.12,37.76,68.65,38.20,68.76,38.13,68.94,37.84,69.29,38.40,69.61,38.29
.unitscan Winterfall Runner
step
.goto Winterspring,32.4,37.6,0
.goto Winterspring,30.6,35.8,70,0
.goto Winterspring,33.6,36.8,70,0
.goto Winterspring,39.4,43.8,70,0
.goto Winterspring,41.6,42.8
>>杀死|cRXP_ENEMY_Winterfall探路者|r，|cRXD_ENEMY_ WinterfallDen守望者|r和|cRXP_ENEMY_温特fall图腾|r
>>|cRXP_WARN_如果您找到了|T135816:0|t[|cRXP_LOOT_临冬仪式图腾|r]，请不要从此物品开始任务|r
.complete 5082,1 
.complete 5082,2 
.complete 5082,3 
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
#completewith next
.goto Felwood,65.48,3.47,20 >>穿越Timbermaw Hold to |cRXP_FRIENDLY_Kernda|r
step
.goto Felwood,65.48,3.47,20,0
.goto Felwood,65.35,1.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克尔达|r
>>|cRXP_FRIENDLY_Kernda|r|cRXP_WARN_trols the lower Timbermaw Hold path|r
.use 20741 >>|cRXP_WARN_使用|T136232:0|t[|cRXP_LOOT_Dedwood仪式图腾|r]开始任务|r
.accept 8470 >>接任务: |cRXP_LOOT_死木仪祭图腾|r
.turnin 8470 >>交任务: |cRXP_FRIENDLY_死木仪祭图腾|r
.reputation 576,neutral,<0,1 
.itemcount 20741,1 
.target Kernda
step
.goto Felwood,65.48,3.47,20,0
.goto Felwood,65.35,1.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克尔达|r
>>|cRXP_FRIENDLY_Kernda|r|cRXP_WARN_trols the lower Timbermaw Hold path|r
.use 20742 >>|cRXP_WARN_使用|T135816:0|t[|cRXP_LOOT_临冬仪式图腾|r]开始任务|r
>>如果您对Timbermaw Hold不持中立态度，请跳过此步骤
.accept 8471 >>接任务: |cRXP_LOOT_冬泉仪祭图腾|r
.turnin 8471 >>交任务: |cRXP_FRIENDLY_冬泉仪祭图腾|r
.reputation 576,neutral,<0,1 
.itemcount 20742,1 
.target Kernda
step
.goto Felwood,65.692,2.810
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅罗什|r
>>如果您对Timbermaw Hold不友好，请跳过此步骤
.accept 6031 >>接任务: |cRXP_WARN_符文布|r
.turnin 6031 >>交任务: |cRXP_FRIENDLY_符文布|r
.reputation 576,friendly,<0,1 
.itemcount 14047,30 
.target Meilosh
step
#requires runners
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_准备好迅速离开|cRXP_FRIENDLY_Donova Snowden|r，因为在你交上冬季跑步者后，3名|cRXP_ENEMY_Winterfall Ambusher|r将攻击她的位置|r
.turnin 5082 >>交任务: |cRXP_FRIENDLY_冬泉熊怪的威胁|r
.turnin 5087 >>交任务: |cRXP_FRIENDLY_冬泉信使|r
.target Donova Snowden
step
.group
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.accept 5121 >>接任务: |cRXP_LOOT_冬泉酋长|r
.target Donova Snowden
step
#completewith next
.goto Winterspring,51.971,30.387
.subzone 2253 >>前往星光村
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维恩德·夜风|r, |cRXP_FRIENDLY_加隆·塑石者|r
.turnin 5250 >>交任务: |cRXP_FRIENDLY_坠星村|r
.accept 5244 >>接任务: |cRXP_LOOT_凯斯利尔废墟|r
.goto Winterspring,51.971,30.387
.turnin 5244 >>交任务: |cRXP_FRIENDLY_凯斯利尔废墟|r
.accept 4861 >>接任务: |cRXP_LOOT_被激怒的枭兽|r
.goto Winterspring,52.139,30.429
.target Wynd Nightchaser
.target Jaron Stoneshaper
step
.group 3
#completewith next
.goto Winterspring,69.75,38.24
>>杀死|cRXP_ENEMY_临冬城高级首领|r。掠夺他的|T133740:0|t[|cRXP-Loot_Crudely-writted Log|r]
>>|cRXP_WARN_使用|T133740:0|t[|cRXP_LOOT_Crudely-writted Log|r]开始任务|r
.complete 5121,1 
.collect 12842,1,5123,1 
.accept 5123 >>接任务: |cRXP_LOOT_最后一片|r
.use 12842 
.mob High Chief Winterfall
step
.goto Winterspring,66.83,34.86,70,0
.goto Winterspring,68.00,37.71
>>杀死|cRXP_ENEMY_Winterfall萨满|r，|cRXD_ENEMY_温特福尔巢穴守望者|r和|cRXP_ENEMY_温特福尔Ursas|r
.complete 8464,1 
.complete 8464,2 
.complete 8464,3 
.mob Winterfall Shaman
.mob Winterfall Den Watcher
.mob Winterfall Ursa
step
.group 3
.goto Winterspring,69.75,38.24
>>杀死|cRXP_ENEMY_临冬城高级首领|r。掠夺他的|T133740:0|t[|cRXP-Loot_Crudely-writted Log|r]
>>|cRXP_WARN_使用|T133740:0|t[|cRXP_LOOT_Crudely-writted Log|r]开始任务|r
.complete 5121,1 
.collect 12842,1,5123,1 
.accept 5123 >>接任务: |cRXP_LOOT_最后一片|r
.use 12842 
.mob High Chief Winterfall
step
#completewith next
.subzone 2255 >>Travel to Everlook
step << Hunter
.goto Winterspring,60.389,37.916
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿兹雷比|r
.stable >>稳定你的宠物。你很快就会驯服一个|cRXP_ENEMY_Winterspring Screecher|r
.target Azzleby
.zoneskip Winterspring,1
step << Hunter
.goto Winterspring,57.8,26.4,70,0
.goto Winterspring,59.6,18.0
>>|cRXP_WARN_演员阵容|r|T132164:0|t[驯服野兽]|cRXP_WARN_on a|cRXP-ENEMY_Winterspring Screecher|r驯服它|r
.train 3666 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132140:0|t[爪（等级8）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.mob Winterspring Screecher
.zoneskip Winterspring,1
step << Hunter
#completewith next
.subzone 2255 >>Travel to Everlook
step << Hunter
.goto Winterspring,60.389,37.916
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌布雷克·火拳|r
.stable >>Withdraw your pet
.target Azzleby
.zoneskip Winterspring,1
step
.goto Winterspring,61.358,38.837
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.home >>将您的炉石设置为Everlook
.target Innkeeper Vizzie
.zoneskip Winterspring,1
step
.isOnQuest 4808
.goto Winterspring,61.455,36.973
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊兹·考伯加布|r
.bankwithdraw 12438 >>从您的银行提取以下项目：
>>|T133469:0|t[廷基字母] 
.target Izzy Coppergrab
step
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲诺克|r
.turnin 4808 >>交任务: |cRXP_FRIENDLY_菲诺克|r
.accept 4809 >>接任务: |cRXP_WARN_冰风奇美拉角|r
.target Felnok Steelspring
step
.group
.goto Winterspring,61.919,38.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医玛艾里|r
.accept 969 >>接任务: |cRXP_LOOT_祝你好运|r
.target Witch Doctor Mau'ari
step
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.accept 3783 >>接任务: |cRXP_LOOT_雪怪计划！|r
.target Umi Rumplesnicker
step
#completewith YetiCave
>>杀死|cRXP_ENEMY_Fledgling Chillwinds|r，|cRXD_ENEMY_Chillwind Chimaeras|r和|cRXX_ENEMY_Chillwind Ravagers|r。掠夺他们的|cRXP_Loot_未经破解的冷风角|r
>>|cRXP_WARN_还不要刻意完成这件事|r
.complete 4809,1 

.mob Chillwind Chimaera

step
.goto Winterspring,66.3,42.6
>>杀死|cRXP_ENEMY_Ice Thistle Yetis|r和|cRXX_ENEMY_Rogue Ice Thistles|r。掠夺它们的|cRXD_Loot_Theak Yeti Fur|r
.complete 3783,1
.mob Rogue Ice Thistle
.mob Ice Thistle Yeti
step
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.turnin 3783 >>交任务: |cRXP_FRIENDLY_雪怪计划！|r
.accept 977 >>接任务: |cRXP_LOOT_雪怪计划！|r
.target Umi Rumplesnicker
step
#label YetiCave
#completewith next
.goto Winterspring,67.59,42.96,35,0
.goto Winterspring,67.97,41.44,30 >>Enter the Yeti Cave
step
.goto Winterspring,69.90,41.67
>>杀死|cRXP_ENEMY_Ice Thistle Matriarchs|r和|cRXX_ENEMY_Ice Thistle Patriarchs| r。掠夺他们的|cRXD_Loot_Pristine Yeti Horn|r
.complete 977,1 
.mob Ice Thistle Matriarch
.mob Ice Thistle Patriarch
step
#completewith next
>>杀死|cRXP_ENEMY_Fledgling Chillwinds|r，|cRXD_ENEMY_Chillwind Chimaeras|r和|cRXX_ENEMY_Chillwind Ravagers|r。掠夺他们的|cRXP_Loot_未经破解的冷风角|r
>>|cRXP_WARN_还不要刻意完成这件事|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step
#completewith next
.subzone 2248 >>向南行驶至Dun Mandarr
step
.goto Winterspring,58.991,59.784
>>单击地面上的|cRXP_PICK_Damaged Crate|r
.turnin 4861 >>交任务: |cRXP_FRIENDLY_被激怒的枭兽|r
.accept 4863 >>接任务: |cRXP_LOOT_被激怒的枭兽|r
step
.goto Winterspring,61.439,60.691
>>单击|cRXP_PICK_Jaron的货车|r
.turnin 4863 >>交任务: |cRXP_FRIENDLY_被激怒的枭兽|r
.accept 4864 >>接任务: |cRXP_LOOT_被激怒的枭兽|r
step
.goto Winterspring,61.398,60.728
>>地面上的织机|cRXP_Loot_Jaron的补给品|r
.complete 4864,1 
step
.goto Winterspring,63.86,59.39,70,0
.goto Winterspring,65.52,60.29,70,0
.goto Winterspring,65.05,63.03,70,0
.goto Winterspring,65.52,60.29
>>杀死|cRXP_ENEMY_Crazed Owlbeats|r、|cRXD_ENEMY_Moonwhited Owlbeasts|r和|cRXP_ENEMY_Berserk Owlbeasts|r。掠夺它们以获得|cRXP_OOT_Blue-Fathered Amulet|r
.complete 4864,2 
.mob Crazed Owlbeast
.mob Moontouched Owlbeast
.mob Berserk Owlbeast
step
#completewith DDG
>>杀死|cRXP_ENEMY_Fledgling Chillwinds|r，|cRXD_ENEMY_Chillwind Chimaeras|r和|cRXX_ENEMY_Chillwind Ravagers|r。掠夺他们的|cRXP_Loot_未经破解的冷风角|r
>>|cRXP_WARN_还不要刻意完成这件事|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step
.group 3
.goto Winterspring,59.06,68.33
>>掠夺散落在霜语峡谷周围地面上的|cRXP_Loot_Fostmaul碎片|r
.complete 969,1 
step
#label DDG
.goto Winterspring,59.88,73.95
>>探索黑暗低语峡谷。你可以在不搁浅附近任何精英的情况下完成这项任务
.complete 4842,1 
step
.hs >>Hearth to Everlook公司公司
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
.zoneskip Winterspring,1
step
.isQuestComplete 977
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.turnin 977 >>交任务: |cRXP_FRIENDLY_雪怪计划！|r
.accept 5163 >>接任务: |cRXP_LOOT_雪怪计划！|r
.target Umi Rumplesnicker
step
.isQuestTurnedIn 977
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.accept 5163 >>接任务: |cRXP_LOOT_雪怪计划！|r
.target Umi Rumplesnicker
step
.isQuestTurnedIn 977
.goto Winterspring,61.543,38.615
.use 12928 >>|cRXP_WARN_使用|r|T133003:0|t[Umi的机械Yeti]|cRXP_WARN_on|r|cRXP-FRIENDLY_Legacki|r
.complete 5163,1 
.target Legacki
step
.isQuestComplete 4809
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲诺克|r
.turnin 4809 >>交任务: |cRXP_FRIENDLY_冰风奇美拉角|r
.target Felnok Steelspring
step
.group
.isQuestComplete 969
.goto Winterspring,61.919,38.298
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医玛艾里|r
.turnin 969 >>交任务: |cRXP_FRIENDLY_祝你好运|r
.target Witch Doctor Mau'ari
step
.abandon 969 >>放弃好运与你同在
step
#completewith SalfaTurnIn
>>杀死|cRXP_ENEMY_Fledgling Chillwinds|r，|cRXD_ENEMY_Chillwind Chimaeras|r和|cRXX_ENEMY_Chillwind Ravagers|r。掠夺他们的|cRXP_Loot_未经破解的冷风角|r
>>|cRXP_WARN_还不要刻意完成这件事|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step
#completewith next
.goto Winterspring,52.139,30.429
.subzone 2253 >>前往星光村
step
.goto Winterspring,52.139,30.429
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加隆·塑石者|r
.turnin 4864 >>交任务: |cRXP_FRIENDLY_被激怒的枭兽|r
.target Jaron Stoneshaper
step
.group
.isQuestComplete 5121
.isQuestComplete 5123
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 4842 >>交任务: |cRXP_FRIENDLY_奇怪的源头|r
.turnin 5121 >>交任务: |cRXP_FRIENDLY_冬泉酋长|r
.turnin 5123 >>交任务: |cRXP_FRIENDLY_最后一片|r
.accept 5128 >>接任务: |cRXP_LOOT_熊怪酋长的话|r
.target Donova Snowden
step
.group
.isQuestComplete 5121
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 4842 >>交任务: |cRXP_FRIENDLY_奇怪的源头|r
.turnin 5121 >>交任务: |cRXP_FRIENDLY_冬泉酋长|r
.target Donova Snowden
step
.group
.isQuestComplete 5123
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 4842 >>交任务: |cRXP_FRIENDLY_奇怪的源头|r
.turnin 5123 >>交任务: |cRXP_FRIENDLY_最后一片|r
.accept 5128 >>接任务: |cRXP_LOOT_熊怪酋长的话|r
.target Donova Snowden
step
.group
.isQuestTurnedIn 5123
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 4842 >>交任务: |cRXP_FRIENDLY_奇怪的源头|r
.accept 5128 >>接任务: |cRXP_LOOT_熊怪酋长的话|r
.target Donova Snowden
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 4842 >>交任务: |cRXP_FRIENDLY_奇怪的源头|r
.target Donova Snowden
step
.abandon 5121 >>放弃高酋长临冬城
step
#label SalfaTurnIn
.goto Winterspring,27.736,34.499
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔法|r
.turnin 8464 >>交任务: |cRXP_FRIENDLY_冬泉熊怪的活动|r
.target Salfa
step << !Druid
#completewith next
.goto Moonglade,35.77,71.94
.zone Moonglade >>前往: |cRXP_PICK_月光林地|r
step << Druid
#completewith next
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
step << Druid
>>前往: |cRXP_PICK_月光林地|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.goto Moonglade,52.53,40.56
.trainer >>训练你的职业技能
.target Loganaar
step
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 6762 >>交任务: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.accept 1124 >>接任务: |cRXP_WARN_废土|r
.target Rabine Saturna
step
.group
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉比恩·萨图纳|r
>>|cRXP_WARN_如果Dire Maul对话不可用，请跳过此步骤|r
.skipgossip
.accept 5527 >>接任务: |cRXP_WARN_净化之匣|r
.target Rabine Saturna
step << Druid
.goto Moonglade,44.148,45.228
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦·菲纳雯斯|r
.fly Teldrassil >>飞往Teldrassil
.target Silva Fil'naveth
.skipgossip
step << !Druid
.goto Moonglade,48.102,67.346
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛德拉尔|r
.fp Moonglade >>获取Moonglade飞行路线
.fly Teldrassil >>飞往Teldrassil << !Mage
.target Sindrayl
.zoneskip Moonglade,1
step << Mage
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
.zoneskip Moonglade,1
step << Mage
.goto Darnassus,39.31,84.67
.use 11682 >>|cRXP_WARN_使用|r|T134870:0|t[Eridan's小瓶]|cRXP_WARN_at the moonwell in the Temple of the Moon|r
.complete 4441,1 
step << Mage
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darnassus,1
step
.isQuestComplete 978
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 978 >>交任务: |cRXP_FRIENDLY_月光羽毛|r
.target Erelas Ambersky
step
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.accept 979 >>接任务: |cRXP_WARN_兰莎尔拉|r
.target Erelas Ambersky
step << !Mage
#completewith BlessedWater
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << !Mage
.goto Darnassus,35.375,8.405
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
.turnin 4986 >>交任务: |cRXP_FRIENDLY_雕文橡木枝|r
.target Mathrengyl Bearwalker
step << !Mage
#label BlessedWater
.goto Darnassus,39.31,84.67
.use 11682 >>|cRXP_WARN_使用|r|T134870:0|t[Eridan's小瓶]|cRXP_WARN_at the moonwell in the Temple of the Moon|r
.complete 4441,1 
step << !Mage
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
.zoneskip Darnassus,1
step
.goto Teldrassil,58.39,94.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
.fly Ashenvale >>飞到灰谷
.target Vesprystus
step
#completewith FelboundAncients
.goto Ashenvale,55.97,31.97,0
.goto Felwood,54.14,86.83
.zone Felwood >>前往: |cRXP_PICK_费伍德森林|r
step
.group
.isOnQuest 5128
.goto Felwood,51.136,81.754
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科雷克·望天|r
.turnin 5128 >>交任务: |cRXP_FRIENDLY_熊怪酋长的话|r
.target Kelek Skykeeper
step
#label FelboundAncients
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4441 >>交任务: |cRXP_FRIENDLY_被禁锢的古树|r
.timer 16,Felbound Ancients RP
.accept 4442 >>接任务: |cRXP_LOOT_净化！|r
.turnin 4442 >>交任务: |cRXP_FRIENDLY_净化！|r
.target Eridan Bluewind
step
.goto Felwood,54.14,86.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿拉珊蒂丝·银空|r
>>|cRXP_WARN_转入任何剩余的|r|T132884:0|t[|cRXP_LOOT_Corrupted Soul Shard|r]|cRXP_WARN_您必须获得额外的|r| T132804:0|t[|cRXD_LOOT_Cenarion Plant Salves|r]
>>|cRXP_WARN_如果没有，请跳过此步骤|r
.daily 4103 >>接任务: |cRXP_LOOT_狩猎换药膏|r
.dailyturnin 4103 >>交任务: |cRXP_FRIENDLY_狩猎换药膏|r
.target Arathandris Silversky
.zoneskip Felwood,1
step
#completewith next
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
.cast 6478 >>|cRXP_WARN_查找一首|cRXP_PICK_Corrupted Songflower|r。单击它以清除它。单击|cRX_PICK_Cleansed Songflower |r以接收一小时长的|r|T135934:0|t[Songflower Serenade]|cRXP_WARN_buff|r
>>|cRXP_WARN_他们的位置已经在你的地图上标出了。如果找不到，请跳过此步骤|r
.itemcount 11516,2 
step
.goto Felwood,62.488,24.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米萨琳娜|r
.fly Tanaris >>前往: 塔纳利斯
.target Mishellena
.zoneskip Felwood,1
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 59-60冬泉/Silithus第1部分
#next 59-60冬泉/Silithus第2部分
step
.group
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.accept 4507 >>接任务: |cRXP_LOOT_捕捉皇后|r
.target Alchemist Pestlezugg
step
.isQuestTurnedIn 977
.goto Tanaris,51.059,26.873
.use 12928 >>|cRXP_WARN_使用|r|T133003:0|t[Umi的机械Yeti]|cRXP_WARN_on|r|cRXP-FRIENDLY_Sprinkle|r
.complete 5163,2 
.target Sprinkle
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.accept 4504 >>接任务: |cRXP_LOOT_极度粘稠的沥青|r
.target Tran'rek
step
#hardcoreserver
.isQuestTurnedIn 4084
#completewith SummonAquementas
>>打开|T133647:0|t[T133742:0|t[Book of Aquor]，|cRXP_LOOT_银爪|r和|cRXD_LOOT_铁树心|r
.use 11617 
.collect 11169,1,4005,1 
.collect 11172,11,4005,1 
.collect 11173,1,4005,1 
step 
.dungeon ST
.isQuestComplete 3528
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.turnin 3528 >>交任务: |cRXP_FRIENDLY_神灵哈卡|r
.target Yeh'kinya
step
.isQuestTurnedIn 4084
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >>前往Lost Rigger Cove
step
.isQuestTurnedIn 4084
#completewith next
#label SummonAquementas
.goto Tanaris,70.43,49.90
.cast 13978 >>|cRXP_WARN_使用|r|T133742:0|t[Book of Aquor]|cRXP_WARN_to在Lost Rigger Cove内的石头召唤圈召唤|cRXP-ENEMY_Aquementas|r|r
.timer 15,Aquementas RP
.use 11617 
.use 11169 
step
#hardcoreserver
.isQuestTurnedIn 4084
.goto Tanaris,70.43,49.93
>>杀死|cRXP_ENEMY_Aquementas|r
.complete 4005,1 
.use 11617 
.use 11169 
.mob Aquementas
step
#completewith next
.subzone 976 >>前往: |cRXP_PICK_塔纳利斯|r
step
.goto Tanaris,51.006,29.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_博拉·石锤|r
.fly Un'Goro >>飞到Un'Goro火山口
.target Bera Stonehammer
.zoneskip Tanaris,1
step
#hardcoreserver
.isQuestTurnedIn 4084
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.turnin 4005 >>交任务: |cRXP_FRIENDLY_亚奎门塔斯|r
.accept 3961 >>接任务: |cRXP_WARN_林克的冒险|r
.target J.D. Collie
step
#hardcoreserver
.isQuestTurnedIn 4084
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3961 >>交任务: |cRXP_FRIENDLY_林克的冒险|r
.accept 3962 >>接任务: |cRXP_WARN_结伴而行|r
.target Linken
step
.isQuestTurnedIn 977
.goto Un'Goro Crater,43.660,9.371
.use 12928 >>|cRXP_WARN_使用|r|T133003:0|t[Umi的机械Yeti]|cRXP_WARN_on|r|cRXP-FRIENDLY_Quixxil|r
.complete 5163,3 
.target Quixxil
step
#hardcoreserver
.isQuestTurnedIn 4005
.destroy 11169 >>摧毁: |cRXP_ENEMY_阿奎尔之书|r
step
.goto Un'Goro Crater,46.2,19.6,70,0
.goto Un'Goro Crater,50.6,26.6,70,0
.goto Un'Goro Crater,48.4,32.8,70,0
.goto Un'Goro Crater,59.6,32.4,70,0
.goto Un'Goro Crater,63.4,23.6,70,0
.goto Un'Goro Crater,59.4,24.6,70,0
.goto Un'Goro Crater,51.6,24.8
>>杀死|cRXP_ENEMY_Tar野兽|r，|cRXX_ENEMY_焦油爬行者|r，| cRXP__ENEMY_Tar-Luckers|r和|cRXP_ENEMY_Tar领主|r。掠夺他们的|cRXD_Loot_超级粘性焦油|r
.complete 4504,1 
.mob Tar Beast
.mob Tar Creeper
.mob Tar Lurker
.mob Tar Lord
step << Druid
.dungeon ST
.isQuestComplete 9053
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 9053 >>交任务: |cRXP_FRIENDLY_更好的材料|r
.target Torwa Pathfinder
step
#hardcoreserver
.group 3
.isOnQuest 3962
#completewith next
>>|cRXP_WARN_前往火羽岭的顶部|r
.cast 14247 >>|cRXP_WARN_装备|r|T135467:0|t[水之银图腾]|cRXP_WARN_in|r
>>|cRXP_WARN_使用|r|T135467:0|t[水之银图腾]|cRXP_WARN_on|cRXP_ENEMY_Blazerunner|r来驱散他的光环。他的光环会把你击退，他可以在战斗中周期性地重新塑造它。确保有人随时准备使用|r|T135467:0|t[水之银图腾]
.use 11522 
step
#hardcoreserver
.group 3
.isOnQuest 3962
.goto Un'Goro Crater,49.401,49.305
>>|cRXP_WARN_使用|r|T135467:0|t[水之银图腾]|cRXP_WARN_on|cRXX_ENEMY_Blazerunner|r驱散他的光环|r
>>杀死|cRXP_ENEMY_Blazerunner|r
.complete 3962,1 
.use 11522 
.mob Blazerunner
step
#hardcoreserver
.group 3
.isOnQuest 3962
.goto Un'Goro Crater,50.279,49.973
>>打开|cRXP_PICK_Ornate胸脯|r。为|cRXP _Loot_Golden Flame|r掠夺它
.complete 3962,2 
step
.group 3
#completewith next
.goto Un'Goro Crater,49.93,81.70,70 >>进入Slithering Scar Hive
.isOnQuest 4507
step
.group 3
#completewith next
.cast 15627 >>|cRXP_WARN_使用|r|T134809:0|t[Gorishi Queen Lure]|cRXP_WARN_at the |cRX_PICK_Gorishi Silithid Crystal|r in the Slithering Scar。你必须击败3波攻击|cRXP_ENEMY_Gorishi|r。如果你在主房间外杀死每波攻击的最后一群暴徒，你将能够在两波攻击之间喝水/吃饭|r
.use 11833
.isOnQuest 4507
step
.group 3
.goto Un'Goro Crater,43.520,81.079
>>击败3波|cRXP_ENEMY_Gorishi|r攻击者。如果需要，可以将室外房间作为重置点，在波浪之间进食/饮水
>>杀死|cRXP_ENEMY_Gorishi Hive Queen|r。为她掠夺她|cRXX_Loot_Brain|r
.use 11833
.complete 4507,1
.isOnQuest 4507

step
#completewith next
.goto Un'Goro Crater,28.71,21.43,40,0
.goto Un'Goro Crater,29.78,10.25,40,0
.goto Silithus,88.40,23.81,60,0
.goto Un'Goro Crater,28.71,21.43,0
.zone Silithus >>前往: |cRXP_PICK_希利苏斯|r
step
.solo
.isQuestTurnedIn 6762
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱耶·星击|r
.turnin 1124 >>交任务: |cRXP_FRIENDLY_废土|r
.target Layo Starstrike
step
.group
.isQuestTurnedIn 6762
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱耶·星击|r
.turnin 1124 >>交任务: |cRXP_FRIENDLY_废土|r
.accept 1125 >>接任务: |cRXP_WARN_南风村的灵魂|r
.target Layo Starstrike
step
#completewith end
.xpto60 >>一旦你有足够的经验去顶60，就跳到冬泉/Silithus第2部分指南
step
#phase 4
#completewith CH1
.subzone 3425 >>Travel to Cenarion Hold
step
#phase 4
.goto Silithus,51.893,39.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡兰德拉斯|r
.accept 8307 >>接任务: |cRXP_WARN_沙漠食谱|r
.skill cooking,<285,1 
.target Calandrath
step
#phase 4
.goto Silithus,51.80,38.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比提克斯·斯巴格|r, 他在楼上
.accept 8277 >>接任务: |cRXP_LOOT_沙漠中的剧毒|r
.target Beetix Ficklespragg
step
.group
#phase 4
.goto Silithus,51.351,38.273
>>单击|cRXP_PICK_Wanted海报：死亡扣|r
.accept 8283 >>接任务: |cRXP_LOOT_通缉：死亡弯钩|r
step
#phase 4
.isOnQuest 8275
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者梅恩·长角|r
.turnin 8275 >>交任务: |cRXP_FRIENDLY_夺回希利苏斯|r
.accept 8280 >>接任务: |cRXP_LOOT_保护补给线|r
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者梅恩·长角|r
.accept 8280 >>接任务: |cRXP_LOOT_保护补给线|r
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,49.673,37.461
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_地质学家拉克斯班|r
.accept 8284 >>接任务: |cRXP_LOOT_暮光的秘密|r
.target Geologist Larksbane
step
#phase 4
#label CH1
.goto Silithus,48.574,37.781
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲍尔·蛮鬃|r
.accept 8318 >>接任务: |cRXP_LOOT_秘密交流|r
.target Bor Wildmane
step
#phase 4
.goto Silithus,37.943,45.315
>>在黄昏大本营点击|cRXP_PICK_Sandy食谱|r
>>|cRXP_WARN_从南部接近暮光之城大本营，以便更容易地获取|r|cRXP_PICK_Sandy食谱|r
.turnin 8307 >>交任务: |cRXP_FRIENDLY_沙漠食谱|r
.accept 8313 >>接任务: |cRXP_WARN_分享知识|r
.skill cooking,<285,1 
step
#phase 4
.goto Silithus,51.893,39.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡兰德拉斯|r
.turnin 8313 >>交任务: |cRXP_FRIENDLY_分享知识|r
.accept 8317 >>接任务: |cRXP_WARN_下厨|r
.skill cooking,<285,1 
.target Calandrath
step
#phase 4
.goto Silithus,54.6,33.6,70,0
.goto Silithus,53.4,18.6,70,0
.goto Silithus,58.6,14.8,70,0
.goto Silithus,62.4,20.0,70,0
.goto Silithus,58.6,26.6,70,0
.goto Silithus,67.0,32.2,70,0
.goto Silithus,70.0,38.8,70,0
.goto Silithus,61.0,42.8,70,0
.goto Silithus,58.2,23.8
.goto Silithus,36.8,33.0,0
>>杀死|cRXP_ENEMY_Dredge Strikers|r。掠夺他们的|cRXX_Loot_沙虫肉|r
>>杀死|cRXP_ENEMY_铲沙者|r。掠夺他们的|cRXX_Loot_Skitterer獠牙|r
>>杀死|cRXP_ENEMY_Stonewlash Scorpid|r。掠夺他们的|cRXX_Loot_Scorepid毒刺|r
>>|cRXP_WARN_您现在不需要收集所有|cRXP_LOOT_沙虫肉|r|r
.skill cooking,<285,1 
.complete 8280,1 
.collect 20424,10,8317,1,1 
.complete 8277,2 
.complete 8277,1 
.mob Dredge Striker
.mob Sand Skitterer
.mob Stonelash Scorpid
step
#phase 4
.goto Silithus,54.6,33.6,70,0
.goto Silithus,53.4,18.6,70,0
.goto Silithus,58.6,14.8,70,0
.goto Silithus,62.4,20.0,70,0
.goto Silithus,58.6,26.6,70,0
.goto Silithus,67.0,32.2,70,0
.goto Silithus,70.0,38.8,70,0
.goto Silithus,61.0,42.8,70,0
.goto Silithus,58.2,23.8
.goto Silithus,36.8,33.0,0
>>杀死|cRXP_ENEMY_Dredge Strikers|r
>>杀死|cRXP_ENEMY_铲沙者|r。掠夺他们的|cRXX_Loot_Skitterer獠牙|r
>>杀死|cRXP_ENEMY_Stonewlash Scorpid|r。掠夺他们的|cRXX_Loot_Scorepid毒刺|r
.complete 8280,1 
.complete 8277,2 
.complete 8277,1 
.mob Dredge Striker
.mob Sand Skitterer
.mob Stonelash Scorpid
step
#phase 4
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者梅恩·长角|r
.turnin 8280 >>交任务: |cRXP_FRIENDLY_保护补给线|r
.accept 8281 >>接任务: |cRXP_LOOT_确保安全|r
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,51.70,38.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比提克斯·斯巴格|r, 他在楼上
.turnin 8277 >>交任务: |cRXP_FRIENDLY_沙漠中的剧毒|r
.accept 8278 >>接任务: |cRXP_LOOT_诺格的最后一线希望|r
.target Beetix Ficklespragg
step
.group 2
#completewith next
.goto Silithus,63.72,48.98,50,0 
>>杀死|cRXP_ENEMY_Torured Druid|r和|cRXD_ENEMY_torured Sentinel|r。当它们死亡时，它们有机会产生一架|cRXP_ENEMY_Hive'Ashi无人机|r，你也必须杀死它|r
>>|cRXP_ENEMY_Hive'Ashi无人机|r可能掉落|T133463:0|t[|cRXP_LOOT_Brann Bronzebeard丢失的信件|r]
.use 20461 >>|cRXP_WARN_使用|T133463:0|t[|cRXP_LOOT_Brann Bronzebeard的丢失信件|r]开始任务|r
.complete 1125,1 
.complete 1125,2 
.collect 20461,1,8308,1,1 
.accept 8308 >>接任务: |cRXP_WARN_布莱恩·铜须的信|r
.disablecheckbox
.mob Tortured Druid
.mob Tortured Sentinel
step
.group 2
.isOnQuest 5527
.goto Silithus,63.225,55.354
>>Enter the small lodge
>>打开地面上的|cRXP_PICK_Dusty Reliquary|r。掠夺它以获得|cRXP_Loot_纯净圣物|r
.complete 5527,1 
step
.group 2
.goto Silithus,63.72,48.98 
>>杀死|cRXP_ENEMY_Torured Druid|r和|cRXD_ENEMY_torured Sentinel|r。当它们死亡时，它们有机会产生一架|cRXP_ENEMY_Hive'Ashi无人机|r，你也必须杀死它|r
>>|cRXP_ENEMY_Hive'Ashi无人机|r可能掉落|T133463:0|t[|cRXP_LOOT_Brann Bronzebeard丢失的信件|r]
.use 20461 >>|cRXP_WARN_使用|T133463:0|t[|cRXP_LOOT_Brann Bronzebeard的丢失信件|r]开始任务|r
.complete 1125,1 
.complete 1125,2 
.collect 20461,1,8308,1,1 
.accept 8308 >>接任务: |cRXP_WARN_布莱恩·铜须的信|r
.disablecheckbox
.mob Tortured Druid
.mob Tortured Sentinel
step
.group
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱耶·星击|r
.turnin 1125 >>交任务: |cRXP_FRIENDLY_南风村的灵魂|r
.accept 1126 >>接任务: |cRXP_WARN_塔中之巢|r
.target Layo Starstrike
step
.group 2
.goto Silithus,60.354,52.558
>>登上南风村塔。进入塔楼会产生3架|cRXP_ENEMY_Hive'Ashi无人机|r，你需要杀死它
>>单击塔楼顶部的|cRXP_PICK_Hive'Ashi吊舱|r。这将生成2|cRXP_ENEMY_Hive'Ashi救护车|r
>>杀死|cRXP_ENEMY_Hive'Ashi伏击者|r。掠夺它们以获取|cRXD_Loot_封装的Silithid对象|r
.complete 1126,1 
.mob Hive'Ashi Ambusher
step
.group
.goto Silithus,81.871,18.934
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱耶·星击|r
.turnin 1126 >>交任务: |cRXP_FRIENDLY_塔中之巢|r
.accept 6844 >>接任务: |cRXP_WARN_档案管理员阿姆伯尔|r
.target Layo Starstrike
step
.group
.isQuestTurnedIn 1126
.destroy 17345 >>摧毁: |cRXP_ENEMY_异种蝎粘液|r
step
#phase 4
#completewith next
.subzone 2740 >>前往水晶谷。避开途中的精英|cRXP_ENEMY_Hive'Ashi |r暴徒
step
#phase 4
.goto Silithus,26.6,13.3,70,0
.goto Silithus,21.8,10.4,70,0
.goto Silithus,19.7,22.0,70,0
.goto Silithus,21.8,10.4,70,0
.goto Silithus,26.6,13.3,70,0
.goto Silithus,21.8,10.4
>>掠夺地面上的|cRXP_Loot_暮光之城平板碎片|r
.complete 8284,1 
step
#phase 4
#completewith next
.subzone 3425 >>Travel to Cenarion Hold
step
#phase 4
.goto Silithus,49.673,37.461
.target Geologist Larksbane
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_地质学家拉克斯班|r
.turnin 8284 >>交任务: |cRXP_FRIENDLY_暮光的秘密|r
.accept 8285 >>接任务: |cRXP_LOOT_沙漠隐士|r
step
#phase 4
.goto Silithus,49.196,34.184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官玛尔利斯|r
.accept 8304 >>接任务: |cRXP_LOOT_亲爱的纳塔莉亚|r
.target Commander Mar'alith
.xp <58,1
step
#phase 4
#completewith FinishKilling
>>杀死|cRXP_ENEMY_Stonelash Flayer|r和|cRXP_ENEMY_Stonelash Pincers|r。掠夺它们以获取它们的|cRXD_OOT_Stinger|r
>>杀死|cRXP_ENEMY_Rock Stalkers |r。掠夺他们的|cRXX_Loot_Fangs|r
.complete 8278,1 
.complete 8278,2 
.complete 8278,3 
.mob Stonelash Flayer
.mob Stonelash Pincer
.mob Rock Stalker
step
#phase 4
#completewith FinishKilling
>>杀死|cRXP_ENEMY_Dredge Crushers |r。掠夺他们的|cRXX_Loot_Sandworm Meat|r
.complete 8281,1 
.collect 20424,10,8317,1 
.skill cooking,<285,1 
.mob Dredge Crusher
step
#phase 4
#completewith FinishKilling
>>杀死|cRXP_ENEMY_Dredge Crushers|r
.complete 8281,1 
.skill cooking,285,1 
.mob Dredge Crusher
step
#phase 4
.goto Silithus,41.279,88.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特加尔·雕石|r
.accept 8308 >>接任务: |cRXP_WARN_布莱恩·铜须的信|r
.turnin 8308 >>交任务: |cRXP_FRIENDLY_布莱恩·铜须的信|r
.use 20461 
.itemcount 20461,1 
.target Rutgar Glyphshaper
step
#phase 4
.isOnQuest 8304
.goto Silithus,41.279,88.456
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特加尔·雕石|r
.skipgossip
.complete 8304,2 
.target Rutgar Glyphshaper
step
#label FinishKilling
#phase 4
.isOnQuest 8304
.goto Silithus,40.815,88.859
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗兰卡·石桥|r
.skipgossip
.complete 8304,1 
.target Frankal Stonebridge
step
.group 3
#phase 4
.isOnQuest 8283
.goto Silithus,44.06,90.48,25,0
.goto Silithus,44.97,92.48
>>杀死|cRXP_ENEMY_死亡扣|r。为她掠夺她|cRXX_Loot_Picker|r
>>|cRXP_ENEMY_死亡扣|r|cRXP_WARN_有击倒能力和8秒眩晕。确保在任何时候都远离她的近战范围。如果您不自信，请跳过此步骤|r
.complete 8283,1 
.mob Deathclasp
step
#phase 4
#completewith FinishCrushers
>>杀死|cRXP_ENEMY_Stonelash Flayer|r和|cRXP_ENEMY_Stonelash Pincers|r。掠夺它们以获取它们的|cRXD_OOT_Stinger|r
>>杀死|cRXP_ENEMY_Rock Stalkers |r。掠夺他们的|cRXX_Loot_Fangs|r
.complete 8278,1 
.complete 8278,2 
.complete 8278,3 
.mob Stonelash Flayer
.mob Stonelash Pincer
.mob Rock Stalker
step
#phase 4
.goto Silithus,36.4,60.4,75,0
.goto Silithus,39.0,52.6,75,0
.goto Silithus,29.2,41.6,75,0
.goto Silithus,45.4,56.6,75,0
.goto Silithus,58.6,59.2,75,0
.goto Silithus,39.0,56.2
>>杀死|cRXP_ENEMY_Dredge Crushers |r。掠夺他们的|cRXX_Loot_Sandworm Meat|r
.complete 8281,1 
.collect 20424,10,8317,1 
.skill cooking,<285,1 
.mob Dredge Crusher
step
#phase 4
#label FinishCrushers
.goto Silithus,36.4,60.4,75,0
.goto Silithus,39.0,52.6,75,0
.goto Silithus,29.2,41.6,75,0
.goto Silithus,45.4,56.6,75,0
.goto Silithus,58.6,59.2,75,0
.goto Silithus,39.0,56.2
>>杀死|cRXP_ENEMY_Dredge Crushers|r
.complete 8281,1 
.skill cooking,285,1 
.mob Dredge Crusher
step
#phase 4
>>杀死|cRXP_ENEMY_Stonelash Flayer|r和|cRXP_ENEMY_Stonelash Pincers|r。掠夺它们以获取它们的|cRXD_OOT_Stinger|r
>>杀死|cRXP_ENEMY_Rock Stalkers |r。掠夺他们的|cRXX_Loot_Fangs|r
.complete 8278,1 
.goto Silithus,23.8,81.6,70,0
.goto Silithus,31.8,78.0,70,0
.goto Silithus,42.6,83.8,70,0
.goto Silithus,48.4,69.2,70,0
.goto Silithus,34.0,73.2,70,0
.goto Silithus,41.4,80.8
.complete 8278,2 
.goto Silithus,36.4,60.4,75,0
.goto Silithus,39.0,52.6,75,0
.goto Silithus,29.2,41.6,75,0
.goto Silithus,45.4,56.6,75,0
.goto Silithus,58.6,59.2,75,0
.goto Silithus,39.0,56.2
.complete 8278,3 
.goto Silithus,23.8,81.6,70,0
.goto Silithus,31.8,78.0,70,0
.goto Silithus,42.6,83.8,70,0
.goto Silithus,48.4,69.2,70,0
.goto Silithus,34.0,73.2,70,0
.goto Silithus,41.4,80.8
.mob Stonelash Flayer
.mob Stonelash Pincer
.mob Rock Stalker
step
#phase 4
.goto Silithus,67.192,69.757
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_隐士奥泰尔|r
.turnin 8285 >>交任务: |cRXP_FRIENDLY_沙漠隐士|r
.accept 8279 >>接任务: |cRXP_LOOT_暮光词典|r
.target Hermit Ortell
step
#phase 4
#completewith DearestNatalia
.subzone 3425 >>Travel to Cenarion Hold
step
#phase 4
.goto Silithus,51.152,38.289
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者梅恩·长角|r
.turnin 8281 >>交任务: |cRXP_FRIENDLY_确保安全|r
.target Windcaller Proudhorn
step
#phase 4
#optional
.isQuestTurnedIn 8313
.goto Silithus,49.880,36.330
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米什塔|r
>>|cRXP_BUY_从她那里购买10|r|T134059:0|t[舒缓香料]|cRXP_Buy_|r
.collect 3713,10,8317,1 
.skill cooking,<285,1 
.target Mishta
step
#phase 4
#optional
.isQuestTurnedIn 8313
.goto Silithus,50.866,38.414
>>|cRXP_WARN_使用您的|r|T133971:0|t[烹饪]|cRXP_WARN_profession，在Cenarion Hold的烹饪Brazer上烹饪10|r|T134020:0|t[烟熏沙漠饺子]|cRXP_WARN_at|r
.collect 20452,10,8317,1 
.skill cooking,<285,1 
step
#phase 4
#optional
.goto Silithus,51.893,39.163
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡兰德拉斯|r
.turnin 8317 >>交任务: |cRXP_FRIENDLY_下厨|r
.itemcount 20452,10 
.skill cooking,<285,1 
.target Calandrath
step
#phase 4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Beetix Ficklespragg|r and |cRXP_FRIENDLY_Noggle Ficklespragg, 他在楼上
.turnin 8278 >>交任务: |cRXP_FRIENDLY_诺格的最后一线希望|r
.goto Silithus,51.70,38.50
.accept 8282 >>接任务: |cRXP_LOOT_诺格的背包|r
.goto Silithus,51.615,38.517
.target Beetix Ficklespragg
.target Noggle Ficklespragg
step
#phase 4
#label DearestNatalia
.isOnQuest 8304
.goto Silithus,49.196,34.184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官玛尔利斯|r
.turnin 8304 >>交任务: |cRXP_FRIENDLY_亲爱的纳塔莉亚|r
.target Commander Mar'alith
step
#phase 4
.isQuestComplete 8283
.goto Silithus,50.755,33.655
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯·库鲁兹|r, 他在塔上
.turnin 8283 >>交任务: |cRXP_FRIENDLY_通缉：死亡弯钩|r
.target Vish Kozus
step
#phase 4
#completewith FinalKeeper
>>杀死任何|cRXP_ENEMY_Twilight之锤|r。掠夺他们的|cRXD_Loot_加密的Twilight文本|r
.collect 20404,20,8323,1 
.mob Twilight Avenger
.mob Twilight Stonecaller
.mob Twilight Geolord
.mob Twilight Master
step
#phase 4
.goto Silithus,40.86,42.22
>>杀死|cRXP_ENEMY_暮光之城守护者哈文思|r。掠夺他获得|cRXD_Loot_暮光之夜词典-第3章|r
.complete 8279,3 
.unitscan Twilight Keeper Havunth
step
#phase 4
.goto Silithus,26.66,36.08
>>杀死|cRXP_ENEMY_暮光之城守护者Mayna|r。掠夺她获得|cRXD_Loot_暮光之夜词典-第1章|r
.complete 8279,1 
.unitscan Twilight Keeper Mayna
step
#label FinalKeeper
#phase 4
.goto Silithus,16.13,86.52
>>杀死|cRXP_ENEMY_暮光之城守护者Exeter|r。掠夺他获得|cRXD_Loot_T暮光之夜词典-第2章|r
.complete 8279,2 
.unitscan Twilight Keeper Exeter
step
#phase 4
.goto Silithus,18.6,82.2,70,0
.goto Silithus,19.8,87.0
>>杀死任何|cRXP_ENEMY_Twilight之锤|r。掠夺他们的|cRXD_Loot_加密的Twilight文本|r
.collect 20404,20,8323,1 
.mob Twilight Avenger
.mob Twilight Stonecaller
.mob Twilight Geolord
.mob Twilight Master
step
#phase 4
.goto Silithus,44.562,91.379
>>地面上的织机|cRXP_Loot_Noggle的挎包|r
>>|cRXP_WARN_等待|cRXP_ENEMY_Deathclack|r上山巡逻，然后再抢劫|r|cRXX_LOOT_Noggle的背包|r
.complete 8282,1 
step
#phase 4
.goto Silithus,67.192,69.757
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_隐士奥泰尔|r
.turnin 8279 >>交任务: |cRXP_FRIENDLY_暮光词典|r
.accept 8287 >>接任务: |cRXP_LOOT_摆脱困境|r
.accept 8323,1 >>接任务: |cRXP_LOOT_真正的信徒|r
.turnin 8323 >>交任务: |cRXP_FRIENDLY_真正的信徒|r
.target Hermit Ortell
step
#phase 4
#completewith next
.goto Silithus,67.200,69.246,-1
.goto Silithus,66.868,69.481,-1
+|cRXP_WARN_在|cRXP_FRIENDLY_Hermit Ortell|r旁边的任何一个电筒上执行注销跳跃，传送到Cenarion Hold。如果你不能做到这一点，就正常地在那里跑步|r
.link https://www.youtube.com/watch?v=bFS4TUbJse8&ab_channel=RestedXP >>|cRXP_WARN_点击此处查看视频参考|r
.subzoneskip 3447,1
step
#phase 4
.goto Silithus,48.574,37.781
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲍尔·蛮鬃|r
.turnin 8318 >>交任务: |cRXP_FRIENDLY_秘密交流|r
.target Bor Wildmane
step
#phase 4
#label end
.goto Silithus,49.196,34.184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官玛尔利斯|r
.turnin 8287 >>交任务: |cRXP_FRIENDLY_摆脱困境|r
.target Commander Mar'alith
step
#phase 4
.goto Silithus,51.615,38.517
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺格·斯巴格|r, 他在楼上
.turnin 8282 >>交任务: |cRXP_FRIENDLY_诺格的背包|r
.target Noggle Ficklespragg
]])
RXPGuides.RegisterGuide([[
#hardcore
#version 15
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 50-60
#classic
<< Alliance
#name 59-60冬泉/Silithus第2部分
step
#completewith next
.goto Silithus,50.581,34.448
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克劳德·天舞者|r
.fly Un'Goro >>飞到Un'Goro火山口
.target Cloud Skydancer
step
#hardcoreserver
.isQuestComplete 3962
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3962 >>交任务: |cRXP_FRIENDLY_结伴而行|r
.target Linken
step
#hardcoreserver
.abandon 3962 >>放弃独自一人很危险
step
#completewith GadgetzanTurnins
.goto Silithus,50.581,34.448,-1
.goto Un'Goro Crater,45.234,5.833,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克劳德·天舞者|r, |cRXP_FRIENDLY_格莱菲|r
.fly Tanaris >>前往: 塔纳利斯
.target Cloud Skydancer
.target Gryfe
step
.isQuestComplete 4507
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4507 >>交任务: |cRXP_FRIENDLY_捕捉皇后|r
.target Alchemist Pestlezugg
step
.isQuestTurnedIn 4507
.goto Tanaris,50.887,26.963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.accept 4508 >>接任务: |cRXP_LOOT_临危不惧|r
.target Alchemist Pestlezugg
step
.abandon 4507 >>弃爪擒王后
step
#label GadgetzanTurnins
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 4504 >>交任务: |cRXP_FRIENDLY_极度粘稠的沥青|r
.target Tran'rek
step
.hs >>Hearth to Everlook公司公司
>>|cRXP_BUY_如果需要，购买食物/水|r << !Warrior !Rogue
>>|cRXP_BUY_如果需要，购买食物|r << Warrior/Rogue
step
.isQuestComplete 4809
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲诺克|r
.turnin 4809 >>交任务: |cRXP_FRIENDLY_冰风奇美拉角|r
.target Felnok Steelspring
step
.isQuestTurnedIn 977
.goto Winterspring,60.883,37.620
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.turnin 5163 >>交任务: |cRXP_FRIENDLY_雪怪计划！|r
.target Umi Rumplesnicker
step
#completewith next
>>杀死|cRXP_ENEMY_Fledgling Chillwinds|r，|cRXD_ENEMY_Chillwind Chimaeras|r和|cRXX_ENEMY_Chillwind Ravagers|r。掠夺他们的|cRXP_Loot_未经破解的冷风角|r
>>|cRXP_WARN_还不要刻意完成这件事|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step
.goto Winterspring,63.074,59.482
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰莎尔拉|r
.turnin 979 >>交任务: |cRXP_FRIENDLY_兰莎尔拉|r
.accept 4901,1 >>接任务: |cRXP_WARN_[Guardians of the Altar]|r
>>|cRXP_WARN_祭坛守护者将开始一次护送任务。如果你参加了一个聚会，请确保每个人都先来找兰胡拉。祭坛守护者的自动接受功能已关闭|r
.target Ranshalla
step
.goto Winterspring,64.59,61.06,20,0
.goto Winterspring,65.82,58.76,20,0
.goto Winterspring,66.48,60.02,20,0
.goto Winterspring,66.25,61.50,20,0
.goto Winterspring,65.56,64.57,20,0
.goto Winterspring,64.797,63.784
>>护送|cRXP_FRIENDLY_Ranshalla|r穿过猫头鹰翅膀浓密处
>>当|cRXP_FRIENDLY_Ranshalla|r开始在洞穴中施展魔法时，点击洞穴内的|cRXP_PICK_艾露恩之火|r火把，然后在最后点击|cRXP _PICK_艾露恩祭坛|r
.complete 4901,1
.target Ranshalla
step
.isQuestComplete 4809
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲诺克|r
.turnin 4809 >>交任务: |cRXP_FRIENDLY_冰风奇美拉角|r
.target Felnok Steelspring
step 
#label horns
#completewith next
>>杀死|cRXP_ENEMY_Fledgling Chillwinds|r，|cRXD_ENEMY_Chillwind Chimaeras|r和|cRXX_ENEMY_Chillwind Ravagers|r。掠夺他们的|cRXP_Loot_未经破解的冷风角|r
.complete 4809,1 
.goto Winterspring,66.4,47.2,75,0
.goto Winterspring,57.0,40.2,75,0
.goto Winterspring,53.2,37.4,75,0
.goto Winterspring,47.2,43.6,75,0
.goto Winterspring,44.6,41.2,75,0
.goto Winterspring,39.2,36.4,75,0
.goto Winterspring,56.4,25.4,75,0
.goto Winterspring,57.0,20.4,75,0
.goto Winterspring,65.4,27.6,75,0
.goto Winterspring,60.2,24.6
.turnin 4809 >>交任务: |cRXP_FRIENDLY_冰风奇美拉角|r
.goto Winterspring,61.626,38.615
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲诺克|r
.target Felnok Steelspring
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step 
#completewith horns
.xpto60 >>跳过|cRXP_ENEMY_Chimaera|r任务，如果你准备好完成60，则交上你的任务
step << Druid
.isOnQuest 6844,5527
.cast 18960 >>铸造Teleport:Moonglade
.zoneskip Moonglade
step << !Druid
.isOnQuest 6844,5527
.goto Winterspring,62.334,36.609
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦瑟蕾亚|r
.fly Moonglade >>Fly to Moonglade
.target Maethrya
step
.isQuestTurnedIn 1126
.goto Moonglade,47.736,39.678,30,0
.goto Moonglade,44.88,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿姆伯尔|r
>>|cRXP_FRIENDLY_Umber|r|cRXP_WARN_可能在Nighthaven巡逻|r
.turnin 6844 >>交任务: |cRXP_FRIENDLY_档案管理员阿姆伯尔|r
.accept 6845 >>接任务: |cRXP_WARN_发现过去的秘密|r
.target Umber
step
.isQuestTurnedIn 1126
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 6845 >>交任务: |cRXP_FRIENDLY_发现过去的秘密|r
.target Rabine Saturna
step
.isQuestComplete 5527
.goto Moonglade,51.685,45.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 5527 >>交任务: |cRXP_FRIENDLY_净化之匣|r
.target Rabine Saturna
step
.isQuestTurnedIn 1126
.goto Moonglade,47.736,39.678,30,0
.goto Moonglade,44.88,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿姆伯尔|r
>>|cRXP_FRIENDLY_Umber|r|cRXP_WARN_可能在Nighthaven巡逻|r
.accept 1185 >>接任务: |cRXP_WARN_壳中的东西…|r
.turnin 1185 >>交任务: |cRXP_FRIENDLY_壳中的东西…|r
.target Umber
step << !Mage
.dungeon BRD
.goto Felwood,62.488,24.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米萨琳娜|r
.fly Teldrassil >>飞往Teldrassil
.target Mishellena
step << Mage
.dungeon BRD
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << !Mage
.dungeon BRD
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 4901 >>交任务: |cRXP_FRIENDLY_祭坛守护者|r
.target Erelas Ambersky
step << !Mage
.dungeon BRD
.isQuestTurnedIn 4901
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.accept 4902 >>接任务: |cRXP_WARN_艾露恩的枭兽|r
.target Erelas Ambersky
step << !Mage
.dungeon BRD
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step
.dungeon BRD
.isQuestTurnedIn 4507
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格拉希娜·灵风|r, 他在楼上
.turnin 4508 >>交任务: |cRXP_FRIENDLY_临危不惧|r
.accept 4510 >>接任务: |cRXP_LOOT_临危不惧|r
.target Gracina Spiritmight
step
.dungeon BRD
.goto Darnassus,39.38,42.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊迪瑞娜|r
.turnin 4510 >>交任务: |cRXP_FRIENDLY_临危不惧|r
.target Idriana
step << Mage
.dungeon BRD
#completewith next
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
step << Mage
.dungeon BRD
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 4901 >>交任务: |cRXP_FRIENDLY_祭坛守护者|r
.target Erelas Ambersky
step << Mage
.dungeon BRD
.isQuestTurnedIn 4901
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.accept 4902 >>接任务: |cRXP_WARN_艾露恩的枭兽|r
.target Erelas Ambersky
step << Mage
.dungeon BRD
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step
.dungeon BRD
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
.turnin 4902 >>交任务: |cRXP_FRIENDLY_艾露恩的枭兽|r
.target Arch Druid Fandral Staghelm
step
.dungeon BRD
#completewith AcceptBRDQuests
+你现在将四处飞行，接受贝莱德深渊的任务。
>>贝莱德深渊是一个非常复杂的地牢。为了以最有效的方式完成所有任务，需要在中途离开地牢以提交/接受后续任务，这样才能在一次运行中完成所有任务。
>>尽量确保所有成员都完成了相同的任务和预任务，并有2-3小时的游戏时间。
step
.dungeon BRD
.isQuestTurnedIn 3481
>>如果你早些时候在瑟林峡谷完成了任务，记得从你的银行取出|T134430:0|t[黑蜻蜓熔液]。你很快就会需要它
.collect 10575,1,4022,1 
step
.dungeon BRD
#completewith HurleyBlackbreath
.zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step
.dungeon BRD
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板洛雷·火酒|r
>>|cRXP_WARN_如果你的团队中有一个法师，你会把你的红心大战改为莱克郡|r
.goto Ironforge,18.10,51.60
.home >>将您的炉石设置为铁炉堡
.target Innkeeper Firebrew
step 
.dungeon BRD
.isQuestTurnedIn 3701
.goto Ironforge,39.09,56.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦格尼·铜须国王|r
.accept 4341 >>接任务: |cRXP_WARN_卡兰·巨锤|r
.target King Magni Bronzebeard
step
.dungeon BRD
#completewith next
.subzone 131 >>Travel to Kharanos
step
.dungeon BRD
#label HurleyBlackbreath
.goto Dun Morogh,46.825,52.361
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格纳·雷酒|r
.accept 4126 >>接任务: |cRXP_WARN_霍尔雷·黑须|r
.target Ragnar Thunderbrew
step
.dungeon BRD
>>|cRXP_WARN_飞往莱克郡。只有当你的团队中有一个法师进行BRD时，才将你的炉石设置为Lakeshhire，如果没有跳过这一步，将你的炉石留在Ironforge|r
.home >>将你的炉石设置为莱克郡
step
.dungeon BRD
#completewith BSQuests
.fly Burning Steppes >>从最近的飞行大师处飞往燃烧的草原
step
.dungeon BRD
.goto Burning Steppes,84.555,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥拉留斯|r
.accept 4286 >>接任务: |cRXP_WARN_好东西|r
.target Oralius
step
.dungeon BRD

.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯韦尔元帅|r
>>|cRXP_WARN_如果你不能接受这个任务，完成龙之威胁任务链|r
.accept 4241 >>接任务: |cRXP_WARN_温德索尔元帅|r
.target Marshal Maxwell
step
.dungeon BRD
.goto Burning Steppes,85.415,70.064
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加琳达|r
.accept 4262 >>接任务: |cRXP_WARN_征服者派隆|r
.target Jalinda Sprig
step
.dungeon BRD
.isQuestTurnedIn 3481
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
>>选择选项：“我向你出示我的事迹证明，居鲁士。”
.accept 4022 >>接任务: |cRXP_LOOT_烈焰精华|r
.turnin 4022 >>交任务: |cRXP_FRIENDLY_烈焰精华|r
.itemcount 10575,1 
.target Cyrus Therepentous
step
.dungeon BRD
.isQuestAvailable 4022
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
>>如果您错过了|T134430:0|t[黑蜻蜓熔化]，并且无法完成任务，请与|cRXP_FRIENDLY_Cyrus|r交谈并选择选项：“我没有任何证据，Cyrus。”
>>这将在小洞穴的入口处产生一条54级精英龙。确保你身边有队员帮助杀死它，然后掠夺它以获得|T134430:0|t[黑蜻蜓熔化]
>>选择后面的选项：“我向你出示我的事迹证明，居鲁士。”
.collect 10575,1,4022,1 
.accept 4022 >>接任务: |cRXP_LOOT_烈焰精华|r
.turnin 4022 >>交任务: |cRXP_FRIENDLY_烈焰精华|r
.target Cyrus Therepentous
step
.dungeon BRD
.isQuestTurnedIn 4022
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
.accept 4024 >>接任务: |cRXP_LOOT_烈焰精华|r
.target Cyrus Therepentous
step
.dungeon BRD
.goto Burning Steppes,65.152,23.911
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯沃特·尤博格林|r
.accept 4123 >>接任务: |cRXP_WARN_山脉之心|r
.target Maxwort Uberglint
step
.dungeon BRD
#label BSQuests
.goto Burning Steppes,66.058,21.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤卡·斯库比格特|r
.accept 4136 >>接任务: |cRXP_WARN_雷布里·斯库比格特|r
.target Yuka Screwspigot
step
#softcoreserver
#softcore
.dungeon BRD
+故意死在贝莱德山的熔岩中，最好是在熔融核心入口附近
>>要执行此步骤，您必须是|T132331:0|t[Ghost]才能在Blackrock Mountain内与|cRXP_FRIENDLY_Francklorn Forgewright|r对话。完成任务后在尸体前复活
.goto 1415,48.624,64.186
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗兰克罗恩·铸铁|r
.accept 3801 >>接任务: |cRXP_WARN_黑铁的遗产|r
.turnin 3801 >>交任务: |cRXP_FRIENDLY_黑铁的遗产|r
.accept 3802 >>接任务: |cRXP_WARN_黑铁的遗产|r
.target Franclorn Forgewright
step
#hardcoreserver
.dungeon BRD
.goto 1415,48.656,64.134
.cast 417803 >>单击Embersight的|cRXP_PICK_Brazier |r以获得|T136215:0|t[Emberglow Vision]debuff
step
#hardcoreserver
.dungeon BRD
.goto 1415,48.624,64.186
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗兰克罗恩·铸铁|r
>>你必须有|T136215:0|t[Emberglow Vision]的debuff才能看到他
.accept 3801 >>接任务: |cRXP_WARN_黑铁的遗产|r
.turnin 3801 >>交任务: |cRXP_FRIENDLY_黑铁的遗产|r
.accept 3802 >>接任务: |cRXP_WARN_黑铁的遗产|r
.target Franclorn Forgewright
step
.dungeon BRD
#label AcceptBRDQuests
.goto 1415,48.409,63.815
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛索斯·天痕|r
.accept 7848 >>接任务: |cRXP_WARN_熔火之心的传送门|r
.target Lothos Riftwaker
step
.dungeon BRD
.isOnQuest 4262
>>杀死|cRXP_ENEMY_Overmaster Pyron|r
>>|cRXP_ENEMY_BRD实例门户外部的Overmaster Pyron |r|cRXP_WARN_trols|r
.complete 4262,1 
.mob Overmaster Pyron
step
.dungeon BRD
.subzone 1584,2 >>Enter Blackrock Depths
step
.dungeon BRD
#completewith FannyPack
.isOnQuest 4286
>>杀死BRD内的|cRXP_ENEMY_Dwarves |r。掠夺他们的|cRXP_Loot_黑铁范妮包|r
.complete 4286,1 
step
.dungeon BRD
.isOnQuest 4341
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡兰·巨锤|r
>>如果你的团队没有盗贼，你可能需要杀死|cRXP_ENEMY_High Interrogator Gerstahn|r以获得|cRXP_LOOT_Prison Cell Key|r来开门
.turnin 4341 >>交任务: |cRXP_FRIENDLY_卡兰·巨锤|r
.accept 4342 >>接任务: |cRXP_WARN_卡兰的故事|r
step
.dungeon BRD
.isQuestTurnedIn 4341
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡兰·巨锤|r
.accept 4342 >>接任务: |cRXP_WARN_卡兰的故事|r
step
.dungeon BRD
.isQuestTurnedIn 4341
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡兰·巨锤|r
.complete 4342,1 
.skipgossip
step
.dungeon BRD
.isQuestTurnedIn 4341
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡兰·巨锤|r
.turnin 4342 >>交任务: |cRXP_FRIENDLY_卡兰的故事|r
.accept 4361 >>接任务: |cRXP_WARN_糟糕的消息|r
step
.dungeon BRD
.isOnQuest 4241
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温德索尔元帅|r
>>如果你的团队没有盗贼，你可能需要杀死|cRXP_ENEMY_High Interrogator Gerstahn|r以获得|cRXP_LOOT_Prison Cell Key|r来开门
.turnin 4241 >>交任务: |cRXP_FRIENDLY_温德索尔元帅|r
.accept 4242 >>接任务: |cRXP_WARN_被遗弃的希望|r
step
.dungeon BRD
.isQuestTurnedIn 4241
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温德索尔元帅|r
.accept 4242 >>接任务: |cRXP_WARN_被遗弃的希望|r
step
.dungeon BRD
#completewith next
+前往: |cRXP_PICK_铁炉堡|r if your Hearth was set there. If you have a Mage in group, kindly ask them for a portal to Ironforge
step
.dungeon BRD
.isQuestTurnedIn 4341
.goto Ironforge,39.09,56.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦格尼·铜须国王|r
.turnin 4361 >>交任务: |cRXP_FRIENDLY_糟糕的消息|r
.accept 4362 >>接任务: |cRXP_WARN_王国的命运|r
.target King Magni Bronzebeard
step
.dungeon BRD
#completewith PyronIncendius
>>如果你的红心大战就在莱克郡。否则手动飞往燃烧的草原
.fly Burning Steppes >>飞向燃烧的草原
step
.dungeon BRD
.isQuestComplete 4286
.goto Burning Steppes,84.555,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥拉留斯|r
.turnin 4286 >>交任务: |cRXP_FRIENDLY_好东西|r
.target Oralius
step
.dungeon BRD
.isOnQuest 4242
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯韦尔元帅|r
>>|cRXP_WARN_任务链将在此停止，直到您找到|r|T134331:0|t[A Crumpled Up Note]|cRXP_WARN_at BRD|r
.turnin 4242 >>交任务: |cRXP_FRIENDLY_被遗弃的希望|r
.target Marshal Maxwell
step
.dungeon BRD
.isQuestComplete 4262
.goto Burning Steppes,85.415,70.064
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加琳达|r
.turnin 4262 >>交任务: |cRXP_FRIENDLY_征服者派隆|r
.accept 4263 >>接任务: |cRXP_WARN_伊森迪奥斯！|r
.target Jalinda Sprig
step
.dungeon BRD
#label PyronIncendius
.isQuestTurnedIn 4262
.goto Burning Steppes,85.415,70.064
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加琳达|r
.accept 4263 >>接任务: |cRXP_WARN_伊森迪奥斯！|r
.target Jalinda Sprig
step
.dungeon BRD
.subzone 1584,2 >>Enter Blackrock Depths
step
.dungeon BRD
#completewith next
+完成“法律之环”老板活动，然后从隧道出口向上，立即右转，穿过法律之环顶部，前往金库
step
.dungeon BRD
.isOnQuest 4123
>>在安全墙内偷走|cRXP_Loot_The Heart of The Mountain |r。它需要15秒才能重生
>>有一个技巧可以让你在不打开保险箱的情况下抢劫它。查看下面的链接，了解如何完成
.complete 4123,1 
.link https://clips.twitch.tv/GenerousCarefulHerringNomNom-4BUCn6yI1dMozIkF >>点击此处查看如何掠夺山之心
step
.dungeon BRD
.isOnQuest 3802
>>杀死|cRXP_ENEMY_Fineous Darkwire|r。掠夺他获得|cRXX_Loot_INFEL|r
.complete 3802,1 
step
.dungeon BRD
.isOnQuest 4263
>>杀死|cRXP_ENEMY_燃烧领主|r
.complete 4263,1 
step
.dungeon BRD
.isQuestComplete 3802
>>在法律之环上方的位置附近往回跑
>>单击|cRXP_PICK_法国遗忘纪念碑|r
.turnin 3802 >>交任务: |cRXP_FRIENDLY_黑铁的遗产|r
step
.dungeon BRD
.isOnQuest 4024
>>前往入口处的影之门
>>杀死|cRXP_ENEMY_Bael-Gar|r
.use 11231 >>|cRXP_WARN_在他的尸体上使用|r|T134430:0|t[Altered Black Dragonflight Molt]|cRXP_WARN_|r
.complete 4024,1 
step
.dungeon BRD
.isQuestTurnedIn 4242
>>在BRD处杀死|cRXP_ENEMY_Dwarves |r。掠夺它们|T134331:0|t[A Crumpled Up Note]
.use 11446 >>|cRXP_WARN_使用|r|T134331:0|t[A Crumpled Up Note]|cRXP_WARN_to开始任务|r
>>|cRXP_WARN_在杀死老板|cRXP_ENEMY_General Angerforge|r和|r|cRXX_ENEMY_Golem Lord Argelmach之前，你必须做到这一点|r
>>|cRXP_WARN_如果你现在还没有发现这个，请在拘留区周围清理，直到它掉下来|r
.collect 11446,1,4264,1 
.accept 4264 >>接任务: |cRXP_WARN_弄皱的便笺|r
step
.dungeon BRD
.isOnQuest 4264
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温德索尔元帅|r
.turnin 4264 >>交任务: |cRXP_FRIENDLY_弄皱的便笺|r
.accept 4282 >>接任务: |cRXP_WARN_一丝希望|r
step
.dungeon BRD
.isQuestTurnedIn 4264
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温德索尔元帅|r
.accept 4282 >>接任务: |cRXP_WARN_一丝希望|r
step
.dungeon BRD
.isOnQuest 4282
>>杀死|cRXP_ENEMY_Angerforge将军|r和|cRXD_ENEMY_Golem Lord Argelmach|r。掠夺他们两人以获取|cRXP_Loot_温莎元帅丢失的信息|r
.complete 4282,1 
.complete 4282,2 
step
.dungeon BRD
.isQuestTurnedIn 4264
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温德索尔元帅|r
>>|cRXP_WARN_确保所有党员都自动接受此步骤！RestedXP已关闭此步骤的自动接受功能|r
>>|cRXP_WARN_Accepting this quest will begin the Jail Break escort. Ensure you have cleared all of the Detention Block area for an easier time escorting|r |cRXP_FRIENDLY_Marshal Windsor|r
.turnin 4282 >>交任务: |cRXP_FRIENDLY_一丝希望|r
.accept 4322,1 >>接任务: |cRXP_WARN_冲破牢笼！|r
step
.dungeon BRD
.isOnQuest 4322
>>护送|cRXP_FRIENDLY_Marshal Windsor|r通过BRD
.complete 4322,1 
step
.dungeon BRD
#completewith next
.isOnQuest 4126
>>进入酒吧，进入左边的小房间。在酒吧奔跑时，不要攻击任何中立暴徒
>>点击3|cRXP_PICK_Thunderbrew Lager Kegs|r摧毁它们，迫使|cRXD_ENEMY_Hurley Blackbreath |r和他的3|cRX _ENEMY_Blackbreath Cronies|r交战
>>杀死|cRXP_ENEMY_Hurley Blackbreath |r。掠夺他获得|cRXX_Loot_丢失的霹雳配方|r
.complete 4126,1 
step
.dungeon BRD
.isOnQuest 4136
>>进入酒吧，进入左边的小房间。在酒吧奔跑时，不要攻击任何中立暴徒
>>杀死|cRXP_ENEMY_Ribbly Screwspike|r。抢走他的|cRXX_Loot_Head|r
>>要与|cRXP_ENEMY_Ribbly Screwspit|r交战，请你的坦克与他交谈，然后将他和他的|cRXX_ENEMY_Cronies|r带着小桶带回房间
.complete 4136,1 
.skipgossip
step
.dungeon BRD
.isOnQuest 4126
>>进入酒吧，进入左边的小房间。在酒吧奔跑时，不要攻击任何中立暴徒
>>点击3|cRXP_PICK_Thunderbrew Lager Kegs|r摧毁它们，迫使|cRXD_ENEMY_Hurley Blackbreath |r和他的3|cRX _ENEMY_Blackbreath Cronies|r交战
>>杀死|cRXP_ENEMY_Hurley Blackbreath |r。掠夺他获得|cRXX_Loot_丢失的霹雳配方|r
.complete 4126,1 
step
.dungeon BRD
.isOnQuest 7848
>>在熔芯实例入口外的地面上掠夺|cRXP_Loot_Core碎片|r
.complete 7848,1 
step
.dungeon BRD
.isOnQuest 4362
>>杀死|cRXP_ENEMY_达格兰·塔里桑皇帝|r
>>|cRXP_WARN_您不能为了完成并完成此任务而杀死|cRXP_ENEMY_公主莫伊拉·布蓝胡子|r|r
>>|cRXP_WARN_让一名党员风筝|cRXP_ENEMY_公主Moira Bronzebeard|r，而其他人杀死|r|cRXX_ENEMY_Emperor Dagran Thaurissan|r
.complete 4362,1 
step
.dungeon BRD
.isQuestComplete 4362
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁炉堡公主茉艾拉·铜须|r
.turnin 4362 >>交任务: |cRXP_FRIENDLY_王国的命运|r
.accept 4363 >>接任务: |cRXP_WARN_语出惊人的公主|r
.target Princess Moira Bronzebeard
step
.dungeon BRD
.isQuestTurnedIn 4362
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁炉堡公主茉艾拉·铜须|r
.accept 4363 >>接任务: |cRXP_WARN_语出惊人的公主|r
.target Princess Moira Bronzebeard
step
.dungeon BRD
#completewith HurleyTurnin
#label FannyPack
+前往: |cRXP_PICK_铁炉堡|r if your Hearth was set there. If you have a Mage in group, kindly ask them for a portal to Ironforge
step
.dungeon BRD
.isOnQuest 4363
.goto Ironforge,39.09,56.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦格尼·铜须国王|r
.turnin 4363 >>交任务: |cRXP_FRIENDLY_语出惊人的公主|r
.target King Magni Bronzebeard
step
.dungeon BRD
#completewith next
+Travel to Kharanos
step
.dungeon BRD
#label HurleyTurnin
.isQuestComplete 4126
.goto Dun Morogh,46.825,52.361
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格纳·雷酒|r
.turnin 4126 >>交任务: |cRXP_FRIENDLY_霍尔雷·黑须|r
.target Ragnar Thunderbrew
step
.dungeon BRD
#completewith BSTurnins
>>如果你的红心大战就在莱克郡。否则手动飞往燃烧的草原
.fly Burning Steppes >>飞向燃烧的草原
step
.dungeon BRD
.isQuestComplete 4286
.goto Burning Steppes,84.555,68.679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥拉留斯|r
.turnin 4286 >>交任务: |cRXP_FRIENDLY_好东西|r
.target Oralius
step
.dungeon BRD
.isQuestComplete 4322
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯韦尔元帅|r
.turnin 4322 >>交任务: |cRXP_FRIENDLY_冲破牢笼！|r
.accept 6402 >>接任务: |cRXP_WARN_集合在暴风城|r
.target Marshal Maxwell
step
.dungeon BRD
.isQuestTurnedIn 4322
.goto Burning Steppes,84.744,69.015
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯韦尔元帅|r
.accept 6402 >>接任务: |cRXP_WARN_集合在暴风城|r
.target Marshal Maxwell
step
.dungeon BRD
.isQuestComplete 4263
.goto Burning Steppes,85.415,70.064
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加琳达|r
.turnin 4263 >>交任务: |cRXP_FRIENDLY_伊森迪奥斯！|r
.target Jalinda Sprig
step
.dungeon BRD
.isQuestComplete 4024
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
.turnin 4024 >>交任务: |cRXP_FRIENDLY_烈焰精华|r
.target Cyrus Therepentous
step
.dungeon BRD
.isQuestComplete 4123
.goto Burning Steppes,65.152,23.911
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯沃特·尤博格林|r
.turnin 4123 >>交任务: |cRXP_FRIENDLY_山脉之心|r
.target Maxwort Uberglint
step
.dungeon BRD
#label BSTurnins
.isQuestComplete 4136
.goto Burning Steppes,66.058,21.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤卡·斯库比格特|r
.turnin 4136 >>交任务: |cRXP_FRIENDLY_雷布里·斯库比格特|r
.target Yuka Screwspigot
step
.dungeon BRD
.isQuestTurnedIn 4322
.goto Burning Steppes,84.334,68.326
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borgun Stoutarm|r
>>如果你的团队中有一个法师端口，那么你就有一个
.fly Stormwind >>飞到暴风城
.target Borgun Stoutarm
.zoneskip Stormwind City
step
.dungeon BRD
.isQuestTurnedIn 4322
#completewith next
.goto StormwindClassic,70.424,85.171,5,0
.goto StormwindClassic,69.709,86.083
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侍卫洛文|r, |cRXP_FRIENDLY_雷吉纳德·温德索尔|r
>>|cRXP_FRIENDLY_Squire Rowe|r在你与Windsor在暴风之门交谈后，将呼叫|cRXP_FRAIENDLY_Reginald Windsor|r的到来
>>|cRXP_WARN_如果你在派对上，请确保没有人会接受伟大的伪装。此步骤的自动接受已关闭|r
.turnin 6402 >>交任务: |cRXP_FRIENDLY_集合在暴风城|r
.accept 6403,1 >>接任务: |cRXP_WARN_潜藏者|r
.skipgossip
.target Squire Rowe
.target Reginald Windsor
step
.dungeon BRD
.isQuestTurnedIn 4322
.goto StormwindClassic,75.955,19.114,-1
.goto StormwindClassic,76.865,20.830,-1
>>护送|cRXP_FRIENDLY_Reginald Windsor|r进入暴风堡
>>请勿在要塞内协助|cRXP_FRIENDLY_Reginald Windsor|r作战。如果你这样做，你很有可能会死。待在箭头位置，让活动自行结束。这需要几分钟的时间
.complete 6403,1 
.target Reginald Windsor
step
.dungeon BRD
.isQuestComplete 6403
.goto StormwindClassic,77.569,18.864
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯瓦尔·弗塔根公爵|r
.turnin 6403 >>交任务: |cRXP_FRIENDLY_潜藏者|r
.accept 6501 >>接任务: |cRXP_WARN_巨龙之眼|r
.target Highlord Bolvar Fordragon
step
.dungeon BRD
.isQuestComplete 7848
.goto 1415,48.409,63.815
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛索斯·天痕|r
>>|cRXP_WARN_你可以现在就交，也可以下次在贝莱德山时交|r
.turnin 7848 >>交任务: |cRXP_FRIENDLY_熔火之心的传送门|r
.target Lothos Riftwaker
step
#completewith Grindto60
.zone Felwood >>前往: |cRXP_PICK_费伍德森林|r
step
.goto Moonglade,48.102,67.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛德拉尔|r
.fly Felwood >>Fly to Felwood
.target Sindrayl
.zoneskip Moonglade,1
step
.goto Winterspring,62.334,36.609
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦瑟蕾亚|r
.fly Felwood >>Fly to Felwood
.target Maethrya
.zoneskip Winterspring,1
step << !Mage
#sticky
#label Grindto60
.goto Felwood,62.77,10.57,70,0
.goto Felwood,62.77,10.57,0
.xpto60 >>在Felpaw村升级|cRXP_ENEMY_Furbolgs|r，直到你有足够的经验值去钉60，然后飞往Darnassus
.mob Deadwood Shaman
.mob Deadwood Den Watcher
.mob Deadwood Avenger
step << !Mage
.goto Moonglade,48.102,67.345
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_辛德拉尔|r
.fly Teldrassil >>飞往Teldrassil
.target Sindrayl
.zoneskip Moonglade,1
step << !Mage
.goto Felwood,62.488,24.242
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米萨琳娜|r
.fly Teldrassil >>飞往Teldrassil
.target Mishellena
step << Mage
#sticky
.goto Felwood,62.77,10.57
.xpto60 >>Grind |cRXP_ENEMY_Furbolgs|r at Felpaw Village until you have enough XP to ding 60, then 前往: |cRXP_PICK_达纳苏斯|r
.mob Deadwood Shaman
.mob Deadwood Den Watcher
.mob Deadwood Avenger
step << Mage
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << !Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 4901 >>交任务: |cRXP_FRIENDLY_祭坛守护者|r
.target Erelas Ambersky
step << !Mage
.isQuestTurnedIn 4901
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.accept 4902 >>接任务: |cRXP_WARN_艾露恩的枭兽|r
.target Erelas Ambersky
step << !Mage
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step
.isQuestTurnedIn 4507
.goto Darnassus,39.26,92.84,10,0
.goto Darnassus,41.833,85.622
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格拉希娜·灵风|r, 他在楼上
.turnin 4508 >>交任务: |cRXP_FRIENDLY_临危不惧|r
.accept 4510 >>接任务: |cRXP_LOOT_临危不惧|r
.target Gracina Spiritmight
step
.goto Darnassus,39.38,42.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊迪瑞娜|r
.turnin 4510 >>交任务: |cRXP_FRIENDLY_临危不惧|r
.target Idriana
step << Mage
#completewith next
.goto Darnassus,29.466,41.405
.zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
step << Mage
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.turnin 4901 >>交任务: |cRXP_FRIENDLY_祭坛守护者|r
.target Erelas Ambersky
step << Mage
.isQuestTurnedIn 4901
.goto Teldrassil,55.497,92.045
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞拉斯·琥珀|r
.accept 4902 >>接任务: |cRXP_WARN_艾露恩的枭兽|r
.target Erelas Ambersky
step << Mage
.goto Teldrassil,55.889,89.456
.zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step
.goto Darnassus,34.814,9.255
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
.turnin 4902 >>交任务: |cRXP_FRIENDLY_艾露恩的枭兽|r
.target Arch Druid Fandral Staghelm
step
+祝贺您完成RestedXP 1-60硬核生存指南！感谢您使用RestedXP。

]])
