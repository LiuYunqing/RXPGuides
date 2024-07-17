RXPGuides.RegisterGuide([[
#df
#version 9
#group RestedXP Horde 10-60
#groupweight 9
#name 1 BfA Intro
#displayname Chapter 1 - BfA Intro
#next 1部落银松森林新鲜；1部落德拉诺场景
<< Horde
step << DK !Orc !Undead !Tauren !Troll !BloodElf !Goblin
.goto 1602,49.55,90.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫妖王|r
.accept 58877 >>接任务: |cRXP_WARN_死亡之力的增长|r
.target The Lich King
step << DK !Orc !Undead !Tauren !Troll !BloodElf !Goblin
.goto 1602,49.55,90.80
>>使用“额外操作”按钮
.complete 58877,1 
step << DK !Orc !Undead !Tauren !Troll !BloodElf !Goblin
.goto 1602,49.55,90.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫妖王|r
.turnin 58877 >>Turn in Death's Power Grows
.accept 58903 >>接任务: |cRXP_WARN_艾泽拉斯的守护者|r
.target The Lich King
step << DK !Orc !Undead !Tauren !Troll !BloodElf !Goblin
.goto 1602,50.74,71.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darion|r
.complete 58903,1 
.target Highlord Darion Mograine
.skipgossip
step << DK !Orc !Undead !Tauren !Troll !BloodElf !Goblin
.goto 1602,49.96,38.98
>>带着死亡之门去奥格里玛
.complete 58903,2 






















step
#veteran
.goto 85,40.83,80.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
>>|cRXP_WARN_选择“艾泽拉斯之战”战役|r
*|cRXP_WARN_It's possible that it bugs out and doesn't give you the quest. If this is the case select a different campaign and swap back to the "Battle for Azeroth" one until you get the quest|r
.turnin 62568 >>交任务: |cRXP_FRIENDLY_招募冒险者：克罗米的召唤|r
.accept 51443 >>接任务: |cRXP_WARN_争霸艾泽拉斯：使命宣言|r
.target Chromie
.skipgossip
.isOnQuest 62568
.isQuestAvailable 60360
.zoneskip 85,1
step
#veteran
.goto 85,40.83,80.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
>>|cRXP_WARN_选择“艾泽拉斯之战”战役|r
*|cRXP_WARN_It's possible that it bugs out and doesn't give you the quest. If this is the case select a different campaign and swap back to the "Battle for Azeroth" one until you get the quest|r
.accept 51443 >>接任务: |cRXP_WARN_争霸艾泽拉斯：使命宣言|r
.target Chromie
.skipgossip
.isQuestAvailable 60360
.zoneskip 85,1
step
.goto 85,49.40,76.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_酋长的传令官|r
.target Warchief's Herald
.isQuestAvailable 60360
#fresh
step
.goto 85,49.34,74.02
>>输入Grommash Hold
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
.complete 51443,1 
.isQuestAvailable 60360
#fresh
step
.goto 85,49.40,76.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_酋长的传令官|r
.accept 51443 >>接任务: |cRXP_WARN_争霸艾泽拉斯：使命宣言|r
.target Warchief's Herald
.isQuestAvailable 60360
#veteran
step
.goto 85,49.34,74.02
>>输入Grommash Hold
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
.complete 51443,1 
.isQuestAvailable 60360
#veteran
step
#completewith MeetTeam
.goto 85,54.43,78.47,23 >>进入客栈
.timer 16,Meet your team RP
.nodmf
step
.goto 85,53.56,78.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
.home >>将你的炉石设置为破碎的图斯克
>>|cRXP_BUY_如果需要，购买食物/水|r
.target Innkeeper Gryshka
.zoneskip 85,1
step
#veteran
#label DMFBuyAHItems
>>|cRXP_BUY_从拍卖行购买以下物品或通过邮件发送给自己|r
>>|cRXP_WARN_这一步骤是可选的，如果你不想/买不起，就不需要购买这些物品|r
+|cRXP_WARN_完成后手动跳过此步骤|r
.goto 85,53.98,73.26
.collect 71951,1,29456,1,1
.collect 71635,1,29443,1,1
.collect 71715,1,29451,1,1
.collect 71716,1,29464,1,1
.collect 71952,1,29457,1,1
.collect 71636,1,29444,1,1
.collect 71637,1,29445,1,1
.collect 71638,1,29446,1,1
.target Auctioneer Drezmit
.dmf
step << Goblin
>>从拍卖行购买Netherweave包，然后前往您的邮箱进行掠夺。装备他们。如果你已经有更好的包，跳过这一步
.goto 85,53.98,73.26
.collect 21841,4 
.target Auctioneer Drezmit
.isQuestAvailable 60360
step << !Goblin !DK
#completewith DMFDarkmoonPortalTaken
.goto 85,53.83,82.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特拉克根|r
.vendor >>|cRXP_BUY_从他那里购买|r|T133634:0|t[Brown Leather Satchels]|cRXP_Buy_|r
>>|cRXP_WARN_如果你已经有更好的包，跳过这一步|r
.target Trak'gen

step
#completewith DMFDarkmoonPortalTaken
.goto 85,53.38,90.48,10,0
.goto 85,56.26,91.70
.zone 125 >>将传送门带到达拉然
.dmf
step
.goto 125,50.29,50.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗月马戏团秘法师|r
.accept 7926 >>接任务: |cRXP_WARN_暗月马戏团|r
.zone 7 >>电传至暗月集市
.target Darkmoon Faire Mystic Mage
.skipgossip
.dmf
step
#completewith next
.goto 7,36.85,35.86
.zone 407 >>乘坐暗月集市入口前往暗月岛
.dmf
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the Strider if you don't have an Heirloom Mount
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kae Ti|r. |cRXP_BUY_Buy a|r |T133734:0|t[Ride Ticket Book] |cRXP_BUY_from her|r
.goto 407,50.44,59.33
.collect 92788,1,7926,1 
.target Kae Ti
.dmf
step
#veteran
>>|cRXP_WARN_打开|r|T133734:0|t[乘车票簿]
>>|cRXP_WARN_站在旋转木马上，等待体验自助餐达到60分钟|r
>>|cRXP_WARN_点击你包里的任务物品（跳过你没有的）|r
.goto 407,49.45,57.5
.collect 81055,5,7926,1 
.accept 29464 >>接任务: |cRXP_WARN_占卜道具|r
.accept 29451 >>接任务: |cRXP_WARN_战略大师|r
.accept 29456 >>接任务: |cRXP_WARN_缴获的旗帜|r
.accept 29457 >>接任务: |cRXP_WARN_敌人的徽记|r
.accept 29458 >>接任务: |cRXP_WARN_缴获的日记|r
.accept 29443 >>接任务: |cRXP_WARN_奇怪的水晶|r
.accept 29444 >>接任务: |cRXP_WARN_古怪的蛋|r
.accept 29445 >>接任务: |cRXP_WARN_奇异的魔典|r
.accept 29446 >>接任务: |cRXP_WARN_精美的武器|r
.use 92788
.zoneskip 407,1
.dmf


step
#fresh
.goto 407,49.45,57.5
>>|cRXP_WARN_打开|r|T133734:0|t[乘车票簿]
.collect 81055,5,7926,1 
+|cRXP_WARN_站在旋转木马上，等待体验自助餐达到60分钟。完成后跳过此步骤|r
.use 92788
.zoneskip 407,1
.dmf


step
#veteran
.goto 407,51.91,60.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Paleo|r
.turnin 29464 >>Turn in Tools of Divination
.target Professor Thaddeus Paleo
.itemcount 71716,1
.zoneskip 407,1
.dmf
step
#veteran
.goto 407,51.91,60.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Paleo|r
.turnin 29451 >>Turn in The Master Strategist
.target Professor Thaddeus Paleo
.itemcount 71715,1
.zoneskip 407,1
.dmf
step
#veteran
.goto 407,51.91,60.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Paleo|r
.turnin 29456 >>Turn in A Captured Banner
.target Professor Thaddeus Paleo
.itemcount 71951,1
.zoneskip 407,1
.dmf
step
#veteran
.goto 407,51.91,60.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Paleo|r
.turnin 29457 >>Turn in The Enemy's Insignia
.target Professor Thaddeus Paleo
.itemcount 71952,1
.zoneskip 407,1
.dmf
step
#veteran
.goto 407,51.91,60.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Paleo|r
.turnin 29458 >>Turn in The Captured Journal
.target Professor Thaddeus Paleo
.itemcount 71953,1
.zoneskip 407,1
.dmf
step
#veteran
.goto 407,51.91,60.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Paleo|r
.turnin 29443 >>交任务: |cRXP_FRIENDLY_奇怪的水晶|r
.target Professor Thaddeus Paleo
.itemcount 71635,1
.zoneskip 407,1
.dmf
step
#veteran
.goto 407,51.91,60.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Paleo|r
.turnin 29446 >>Turn in A Wondrous Weapon
.target Professor Thaddeus Paleo
.itemcount 71638,1
.zoneskip 407,1
.dmf
step
.goto 407,47.76,64.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉瓦斯·格里加特|r, Buy as many, from him as you can
.turnin 7926 >>交任务: |cRXP_FRIENDLY_暗月马戏团|r
.collect 171364,1,29506,1 
.target Gelvas Grimegate
.zoneskip 407,1
.dmf
step
.goto 407,53.23,75.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞格|r
.collect 19422,1
.target Sayge
.skipgossip 1
.zoneskip 407,1
.dmf

step
#veteran
.goto 407,51.11,82.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚布·尼比盖尔|r
.turnin 29444 >>Turn in An Exotic Egg
.target Yebb Neblegear
.zoneskip 407,1
.dmf
.isOnQuest 29444
step
#label DMFHeartBackToOrgrimmar
#completewith BFAStatement
.hs >>心碎的图斯克
.dmf
.zoneskip 85
step
#label MeetTeam
.goto 85,54.43,78.47
>>等待RP
.complete 51443,2 
.isOnQuest 51443
step
.goto 85,48.26,71.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布蕾卡·狼女|r
.accept 60361 >>接任务: |cRXP_WARN_争霸艾泽拉斯：使命宣言|r
.target Warlord Breka Grimaxe
.isQuestTurnedIn 60359

step
.goto 85,48.26,71.39
>>|cRXP_WARN_等待RP|r
.complete 60361,1 
.isQuestTurnedIn 60359

step
.goto 85,48.51,71.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.complete 60361,2 
.target Nathanos Blightcaller
.skipgossip
.isQuestTurnedIn 60359

step
.goto 85,51.26,77.09
>>登上|cRXP_FRIENDLY_Sturdy Wyvern|r
.complete 60361,4 
.target Sturdy Wyvern
.isOnQuest 60361

step
#veteran
.goto 85,54.43,78.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r to get teleported to Zandalar
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
.turnin 51443 >>Turn in Battle for Azeroth: Mission Statement
.accept 50769 >>接任务: |cRXP_WARN_逃出暴风城|r
.zone 862 >>Teleport to Zandalar
.target Nathanos Blightcaller
.skipgossip
.isQuestAvailable 60360
.isQuestTurnedIn 52969
step
#label BFAStatement
.goto 85,54.43,78.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.turnin 51443 >>Turn in Battle for Azeroth: Mission Statement
.accept 50769 >>接任务: |cRXP_WARN_逃出暴风城|r
.target Nathanos Blightcaller
.isQuestAvailable 60360
step
.goto 85,54.58,78.36
>>掠夺表上的|cRXP_PICK_Potion|r
.complete 50769,1 
.zoneskip 862
.isOnQuest 50769
step
.goto 85,51.19,83.57
.vehicle >>登上|cRXP_FRIENDLY_Skyhorn Eagle|r
.timer 95,The Stormwind Extraction RP
.target Skyhorn Eagle
.zoneskip 862
.isOnQuest 50769
step << skip
>>|cRXP_WARN_等待RP|r
.complete 50769,2 
.target Skyhorn Eagle
.zoneskip 862
.isOnQuest 50769
step
>>|cRXP_WARN_等待RP|r
.scenario 3718,1
.zoneskip 862
.isOnQuest 50769
step
.goto 1012,46.31,58.20,-1
.goto 1012,46.16,58.04,-1
>>单击地面上的|cRXP_PICK_Padlocks|r
.scenario 3719,2
.zoneskip 862
.isOnQuest 50769
step
.goto 1012,46.31,57.96
>>|cRXP_WARN_沿着水里的寨门往下走|r
.scenario 3719,1
.zoneskip 862
.isOnQuest 50769
step << skip

step
.goto 1013,31.52,62.04,8,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t打开|cRXP_PICK_Cell门|r到|cRXP_FRIENDLY_Saurfang |r的监狱
>>|cRXP_WARN_忽略所有|r|cRXP_ENEMY_7th Legion Enforcers|r|cRXP_WARN_and|r|C RXP_ENEMY_7th Region Sharpshoters |r |C RXP _WARN_当你打开|r | C RXP_PICK_Cell门时，它们会消失|r
.scenario 3721,2
.goto 1013,50.67,38.88
.gossipoption 48752 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saurfang|r
.timer 48,The Stormwind Extraction RP
.goto 1013,48.05,33.52
.target High Overlord Saurfang
.skipgossip
.zoneskip 862
.isOnQuest 50769
step << skip

step
#completewith next
.goto 1013,59.60,59.72,8,0
.goto 1013,55.65,64.12,5 >>跑到下一个牢房
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t打开|cRXP_PICK_Cell门|r到|cRXP_FRIENDLY_Talanji |r和|cRXP_RIENDLY_Zul|r的监狱
>>您可能需要等待|cRXP_FRIENDLY_Saurfang |r's RP
.goto 1013,55.65,64.48
.scenario 3722,1
.timer 61,The Stormwind Extraction RP
.mob 7th Legion Sharpshooter
.mob 7th Legion Enforcer
.zoneskip 862
.isOnQuest 50769
step
#completewith next
.goto 1013,59.44,37.24,8 >>|cRXP_WARN_等待RP结束。跟随小组|r
step
.goto 1013,75.57,26.40,8,0
.goto 1013,87.15,23.20
>>在大圆形房间中杀死|cRXP_ENEMY_7th Legion Enforcers|r、|cRXD_ENEMY_7 Legion Sharpshoters |r和|cRXP_ENEMY_7-th Legion Battlemages|r
>>杀死|cRXP_ENEMY_Lyra|r和她的|cRXP_ENEMY_7th Legion Battlemages|r
>>杀死|cRXP_ENEMY_Lyra|r后，点击地面上的|cRX_PICK_Sewer检修门|r
.scenario 3722,2
.mob 7th Legion Enforcer
.mob 7th Legion Sharpshooter
.mob 7th Legion Battlemage
.mob Mage-Commander Lyra
.zoneskip 862
.isOnQuest 50769
step
#completewith next
.goto 1012,71.09,46.72
>>|cRXP_WARN_解散您的宠物|r << Hunter/Warlock
.gossipoption 48518 >>对话: |cRXP_FRIENDLY_洛坎|r
.target Rokhan
step
.goto 1012,70.22,47.53,15,0
.goto 1012,68.51,49.84,15,0
.goto 1012,66.05,51.25,15,0
.goto 1012,64.00,49.59,15,0
.goto 1012,64.30,48.72,8,0
.goto 1012,62.34,47.46,15,0
.goto 1012,61.50,44.77,15,0
.goto 1012,60.00,44.85,8,0
.goto 1012,59.59,43.55
>>|cRXP_WARN_关注|r|cRXP_FRIENDLY_Rokhan|r
>>|cRXP_WARN_呆在|r|cRXP_FRIENDLY_Rokhan|r|cRXP_WARN_的圈子里保持隐秘|r
>>|cRXP_WARN_避开红圈以避免检测|r
.gossipoption 48339 >>对话: |cRXP_FRIENDLY_洛坎|r
.target Rokhan
.zoneskip 862
.isOnQuest 50769
step
.goto 1012,61.21,44.93,12,0
.goto 1012,60.48,45.70,15,0
.goto 1012,59.66,46.81,15,0
.goto 1012,60.29,49.05,15,0
.goto 1012,58.13,52.45,15,0
.goto 1012,57.57,54.49,15,0
.goto 1012,55.96,57.10
>>|cRXP_WARN_关注|r|cRXP_FRIENDLY_Rokhan|r
>>|cRXP_WARN_呆在|r|cRXP_FRIENDLY_Rokhan|r|cRXP_WARN_的圈子里保持隐秘|r
>>|cRXP_WARN_避开红圈以避免检测|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
.scenario 3727,1
.target Rokhan
.zoneskip 862
.isOnQuest 50769
step
.goto 1012,55.97,57.09
>>杀死攻击盾牌的|cRXP_ENEMY_Gilnean Maulers|r
>>|cRXP_WARN_等待RP|r
.scenario 3729,1
.mob Gilnean Mauler
.zoneskip 862
.isOnQuest 50769
step
.goto 1012,53.79,55.25,20,0
.goto 1012,51.69,54.93,20,0
.goto 1012,49.60,52.21,20,0
.goto 1012,47.33,51.66,20,0
.goto 1012,47.43,47.28,20,0
.goto 1012,49.32,42.49,20,0
.goto 1012,45.43,43.18
>>跟随团队同时杀死|cRXP_ENEMY_Gilnean Maulers|r|cRXD_ENEMY_Stormfind Guards|r和|cRXP_ENEMY_ Stormfinde Battlemages|r
.gossipoption 48198 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.scenario 3729,2
.mob Gilnean Mauler
.mob Stormwind Guard
.mob Stormwind Battlemage
.target Nathanos Blightcaller
.zoneskip 862
.isOnQuest 50769
step
.goto 1012,43.53,42.81,20,0
.goto 1012,42.41,42.79,20,0
.goto 1012,39.79,40.59
>>|cRXP_WARN_躲避地面上的白色漩涡|r
>>|cRXP_WARN_待在|r|cRXP_FRIENDLY_Talanji |r|cRXP_WARN_的泡泡里|r
>>杀死|cRXP_ENEMY_Ice Barrier |r
.scenario 3730,1
.mob Ice Barrier
.zoneskip 862
.isOnQuest 50769
step
>>|cRXP_WARN_Follow the group|r
>>杀死|cRXP_ENEMY_Alliance|r以到达|cRXP_FRIENDLY_Talanji |r的飞船|cRXP-WARN_with the group|r
.scenario 3788,1
.goto 1012,33.54,34.75,30,0
.goto 1012,31.47,31.73,30,0
.goto 1012,29.14,31.42,30,0
.goto 1012,29.69,26.64,30,0
.goto 1012,19.64,25.70
.mob Gilnean Mauler
.mob Stormwind Guard
.mob Stormwind Knight
.mob Stormwind Battlemage
.mob Teldrassil Sentinel
.mob Dwarven Rifleman
.mob Gnomish Gyro-Engineer
.mob Exodar Peacekeeper
.zoneskip 862
.isOnQuest 50769
step
.goto 1012,20.07,28.76,10,0
.goto 1012,20.54,28.94
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talanji|r when she gets onto the ship
.complete 50769,3 
.target Princess Talanji
.skipgossip
.zoneskip 862
.isOnQuest 50769
steps
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.goto 862,57.95,62.76
.turnin 60361 >>Turn in Battle for Azeroth: Mission Statement
.target Nathanos Blightcaller
.isOnQuest 60361
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.turnin 50769 >>Turn in The Stormwind Extraction
.goto 1164,40.11,71.56,-1
.goto 862,57.96,62.76,-1
.target Nathanos Blightcaller
.isQuestComplete 50769
step
#label ZuldazarWelcometoZuldazar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talanji|r
.accept 46957 >>接任务: |cRXP_WARN_欢迎来到祖达萨|r
.goto 862,57.95,62.46
.target Princess Talanji
.zoneskip 1164
step
.goto 1165,50.78,92.73,40,0
.goto 1165,50.35,90.93,40,0
.goto 1165,49.94,85.84,40,0
.goto 1165,48.89,83.91,40,0
.goto 1165,49.98,82.33
>>|cRXP_WARN_靠近|cRXP_FRIENDLY_Pincess Talanji |r否则她将停止移动|r
.complete 46957,1 
.target Princess Talanji
.zoneskip 1164
step
.goto 1165,49.98,82.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Jakra'zet|r
.turnin 46957 >>Turn in Welcome to Zuldazar
.accept 46930 >>接任务: |cRXP_WARN_拉斯塔哈|r
.target General Jakra'zet
.zoneskip 1164
step
.goto 1165,49.98,82.58
>>|cRXP_WARN_请勿乘坐Pterrordax|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t相反，请与|cRXP_FRIENDLY_Talanji|r交谈
>>按键盘上的“Escape”可跳过电影
.complete 46930,1 
.target Princess Talanji
.skipgossip
.zoneskip 1164
step
.goto 1165,49.91,42.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.turnin 46930 >>Turn in Rastakhan
.accept 46931 >>接任务: |cRXP_WARN_部落的代言人|r
.target King Rastakhan
.zoneskip 1164
step
#completewith next
>>|cRXP_WARN_按箭头操作|r你不需要跟着佐拉尼
.goto 1165,49.43,44.67,10,0
.goto 1165,48.66,44.61,20,0
.goto 1165,49.93,39.86
.complete 46931,1 
.isOnQuest 46931
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the shade of the |cRXP_PICK_Horde Banner|r
.goto 1165,49.93,39.86
.complete 46931,2 
.isOnQuest 46931
step
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
.isOnQuest 46931
step
>>Go into the three rooms
.complete 46931,3 
.goto 1163,49.78,73.50
.complete 46931,4 
.goto 1163,67.67,70.75
.complete 46931,5 
.goto 862,57.57,44.37
.isOnQuest 46931
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上去与|cRXP_FRIENDLY_Talanji|r交谈
*If you're very fast then you can skip Talanji's roleplay by relogging
.goto 1164,44.67,70.33,20,0
.goto 1164,41.22,66.75
.turnin 46931 >>Turn in Speaker of the Horde
.target Princess Talanji
.isOnQuest 46931
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#group RestedXP Horde 10-60
#name 1部落银松森林新鲜
#displayname Chapter 2 - Silverpine Forest
#next 1部落Zuldazar上半场
#maxlevel 30
#fresh
<< Horde
step
#completewith SilverpinePortaltoUndercity
+欢迎来到艾泽拉斯之战的新玩家友好指南。
+本指南假设你什么都没有，并且是刚开始玩魔兽世界的新玩家。
step
#completewith next
.goto 1163,74.00,69.92
.zone 85 >>前往: |cRXP_PICK_杜隆塔尔|r
step
.isQuestAvailable 26965
.goto 85,56.02,88.25
.zone 110 >>乘坐通往银月的门户
step
.isQuestAvailable 26965
#label SilverpinePortaltoUndercity
#completewith SilverpineTheWarchiefCometh
.zoneskip 18
.goto 110,51.84,17.95,8,0
.goto 110,49.52,17.19,8,0
.goto 110,48.87,14.04,8,0
.goto 110,49.52,14.81
.zone 18 >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Orb of Translocation|r
step
#completewith SilverpineTheWarchiefCometh
.goto 18,69.45,62.81
.gossipoption 49018 >>如果你看到前方有火，请与|cRXP_FRIENDLY_Zidormi|r交谈。否则跳过此步骤
step
.isQuestAvailable 26965
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
#label SilverpineTheWarchiefCometh
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大执行官摩尔图斯|r
.goto 18,55.06,70.76,75,0
.goto 21,66.98,6.68,30,0
.goto 21,57.43,10.14
.accept 26965 >>接任务: |cRXP_WARN_酋长驾到|r
.timer 300,Garrosh Roleplay
.target Grand Executor Mortuus
step
#completewith next
+|cRXP_WARN_将RestedXP目标宏拖动到条形图中。你可以用它来检查稀有动物|r
step
>>Wait for the RP
.goto 21,57.42,10.13
.complete 26965,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大执行官摩尔图斯|r
.goto 21,57.42,10.13
.turnin 26965 >>交任务: |cRXP_FRIENDLY_酋长驾到|r
.accept 26989 >>接任务: |cRXP_WARN_吉尔尼斯解放阵线|r
.target Grand Executor Mortuus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶药剂师莎娜·特维恩|r
.goto 21,56.26,8.40
.accept 26995 >>接任务: |cRXP_WARN_鲜血淋漓的内脏|r
.target High Apothecary Shana T'veen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师凋叶|r
.goto 21,56.77,9.19
.accept 26992 >>接任务: |cRXP_WARN_痛苦不堪|r
.target Apothecary Witherbloom
step
#completewith SilverpineWorgenRenegade
>>杀死该区域的|cRXP_ENEMY_bears|r。掠夺他们的|cRXP_Loot_内脏|r
>>留意稀有|cRXP_ENEMY_Kree|r和|cRXX_ENEMY_Gorefang |r
.goto 21,60.83,6.82,30,0
.goto 21,62.24,12.54,25,0
.goto 21,61.76,13.12,20,0
.goto 21,59.36,12.96,20,0
.goto 21,55.66,20.18,20,0
.goto 21,56.01,22.62,20,0
.complete 26995,1 
.mob Ferocious Grizzled Bear
.mob Worg
step
#completewith SilverpineWorgenRenegade
*>>从地面拾取|cRXP_Pick_凶猛的Doomweed|r
.complete 26992,1 
step
#label SilverpineWorgenRenegade
>>杀死该区域的|cRXP_ENEMY_Worgen叛徒|r
.goto 21,56.01,22.62,30,0
.goto 21,53.93,17.13,15,0
.goto 21,56.07,12.92
.complete 26989,1 
.mob Worgen Renegade
step
#sticky
#label SilverpineCleanBeastGuts
>>杀死该区域的|cRXP_ENEMY_bears|r。掠夺他们的|cRXP_Loot_内脏|r
>>留意稀有|cRXP_ENEMY_Kree和Gorefang |r
.unitscan Kree
.unitscan Gorefang
.goto 21,59.26,16.38,20,0
.goto 21,60.52,9.07,20,0
.complete 26995,1 
.mob Ferocious Grizzled Bear
.mob Worg
step
*>>从地面拾取|cRXP_Pick_凶猛的Doomweed|r
.goto 21,55.54,13.17,20,0
.goto 21,58.30,15.89,20,0
.goto 21,61.04,13.36,30,0
.goto 21,60.46,8.74
.complete 26992,1 
step
#requires SilverpineCleanBeastGuts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大执行官摩尔图斯|r
.target Grand Executor Mortuus
.goto 21,57.41,10.12
.turnin 26989 >>交任务: |cRXP_FRIENDLY_吉尔尼斯解放阵线|r
.target Grand Executor Mortuus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师凋叶|r, |cRXP_FRIENDLY_高阶药剂师莎娜·特维恩|r
.turnin 26992 >>交任务: |cRXP_FRIENDLY_痛苦不堪|r
.goto 21,56.76,9.19
.turnin 26995 >>交任务: |cRXP_FRIENDLY_鲜血淋漓的内脏|r
.accept 26998 >>接任务: |cRXP_WARN_延续成功|r
.goto 21,56.26,8.40
.target Apothecary Witherbloom
.target High Apothecary Shana T'veen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蝙蝠管理员玛格特布里斯|r
.goto 21,57.91,8.71
.skipgossip 1
.complete 26998,1 
.target Bat Handler Maggotbreath
step
>>|cRXP_ENEMY_Murlocs|r上的垃圾邮件|T236885:0|t[Blight Concotion]（1）
*|cRXP_WARN_DON'T USE (2)|r
.complete 26998,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶药剂师莎娜·特维恩|r
.target High Apothecary Shana T'veen
.goto 21,56.26,8.40
.turnin 26998 >>交任务: |cRXP_FRIENDLY_延续成功|r
.target High Apothecary Shana T'veen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_死亡猎手指挥官贝尔蒙特|r
.target Deathstalker Commander Belmont
.goto 21,58.09,8.98
.accept 27039 >>接任务: |cRXP_WARN_危险的意图|r
.target Deathstalker Commander Belmont
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Abandoned Outhouse|r
.goto 21,53.90,13.01
.turnin 27039 >>交任务: |cRXP_FRIENDLY_危险的意图|r
.accept 27045 >>接任务: |cRXP_WARN_等着下手|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Armoire|r. |cRXP_WARN_DON'T SKIP THE CINEMATIC|r
.goto 21,53.41,13.19,8,0
.goto 21,53.04,13.11,8,0
.goto 21,53.44,13.08,8,0
.goto 21,53.30,12.56
.complete 27045,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_死亡猎手指挥官贝尔蒙特|r
.target Deathstalker Commander Belmont
.goto 21,58.09,8.98
.turnin 27045 >>交任务: |cRXP_FRIENDLY_等着下手|r
.accept 27056 >>接任务: |cRXP_WARN_贝尔蒙特的报告|r
.target Deathstalker Commander Belmont
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.target Lady Sylvanas Windrunner
.goto 21,57.37,10.20
.turnin 27056 >>交任务: |cRXP_FRIENDLY_贝尔蒙特的报告|r
.accept 27065 >>接任务: |cRXP_WARN_酋长的舰队|r
.target Lady Sylvanas Windrunner
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战斧上将|r, |cRXP_FRIENDLY_督军托尔罗克|r
>>按照箭头检查稀有|cRXP_ENEMY_Nightlash|r、|cRXD_ENEMY_Gnath|r和|cRXP_ENEMY_Bolgaff|r的位置
.goto 21,52.57,25.71,15,0
.goto 21,48.38,24.48,15,0
.goto 21,44.06,21.36
.turnin 27065 >>交任务: |cRXP_FRIENDLY_酋长的舰队|r
.accept 27069 >>接任务: |cRXP_WARN_钢雷|r
.accept 27073 >>接任务: |cRXP_WARN_让他们尝尝苦头|r
.target Admiral Hatchet
.target Warlord Torok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师虫污|r
.target Apothecary Wormcrud
.goto 21,44.80,20.91
.accept 27082 >>接任务: |cRXP_WARN_肮脏的游戏|r
.target Apothecary Wormcrud
step
#completewith next
>>杀死|cRXP_ENEMY_Worgs|r和|cRXP_ENEMY_Bear|r。掠夺它们的|cRXP_Loot_器官|r
.goto 21,42.44,20.06,20,0
.goto 21,38.58,23.93,10,0
.goto 21,37.45,23.73
.complete 27082,1 
.mob Giant Rabid Bear
.mob Rabid Worg
step
#completewith next
>>杀死|cRXP_ENEMY_Bloodfang清道夫|r
.goto 21,39.41,25.88,20,0
.goto 21,37.89,27.44,20,0
.goto 21,38.79,30.30,20,0
.goto 21,40.19,29.25
.goto 21,39.20,28.09,0,0
.complete 27073,1 
.mob Bloodfang Scavenger
step
>>捡起地上的|cRXP_Pick_crates|r
.goto 21,39.20,28.09
.complete 27069,1 
step
#sticky
#label SilverpineBloodfangScavenger
>>杀死|cRXP_ENEMY_Bloodfang清道夫|r
.goto 21,39.20,28.09
.complete 27073,1 
.mob Bloodfang Scavenger
step
>>杀死|cRXP_ENEMY_Worgen|r和|cRXX_ENEMY_Bears|r，掠夺它们的器官
.goto 21,45.69,27.85
.complete 27082,1 
.mob Giant Rabid Bear
.mob Rabid Worg
step
#requires SilverpineBloodfangScavenger
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战斧上将|r, |cRXP_FRIENDLY_督军托尔罗克|r
.goto 21,44.00,21.34
.turnin 27069 >>交任务: |cRXP_FRIENDLY_钢雷|r
.turnin 27073 >>交任务: |cRXP_FRIENDLY_让他们尝尝苦头|r
.accept 27095 >>接任务: |cRXP_WARN_粘丝的威胁|r
.accept 27093 >>接任务: |cRXP_WARN_迷失在黑暗中|r
.target Admiral Hatchet
.target Warlord Torok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师虫污|r
.goto 21,44.79,20.91
.turnin 27082 >>交任务: |cRXP_FRIENDLY_肮脏的游戏|r
.accept 27088 >>接任务: |cRXP_WARN_你摄取的不过是毒素|r
.target Apothecary Wormcrud
step
#completewith SilverpineSkitterwebMatriarch
>>摧毁|cRXP_ENEMY_Webbed Victims|r以释放|cRXP_FRIENDLY_Orc海狗|r
>>留意罕见的|cRXP_ENEMY_Krethis the Shadowspinner|r
.goto 21,35.90,14.58,0,0
.complete 27093,1 
.mob Webbed Victim
step
#completewith SilverpineSkitterwebMatriarch
>>杀死|cRXP_ENEMY_Skitterweb蜘蛛|r
.goto 21,35.90,14.58,0,0
.complete 27095,1 
.mob Skitterweb Spider
step
>>顺着箭头进入矿井。跳上岩石
>>|cRXP_WARN_跳跃位置旁边可能有一个箱子|r
.goto 21,35.14,11.29,10,0
.goto 21,35.47,10.51,10,0
.goto 21,34.95,10.29,10,0
.goto 21,35.56,9.29
.accept 27094 >>接任务: |cRXP_WARN_黑暗的更深处|r
step
#label SilverpineSkitterwebMatriarch
>>杀死|cRXP_ENEMY_Skitterweb矩阵|r
.goto 21,35.94,8.65
.complete 27094,1 
.mob Skitterweb Matriarch
step
#completewith next
.goto 21,35.85,7.98,10 >>检查是否有可能的|cRXP_PICK_胸部|r
.goto 21,34.67,7.82,15,0
.goto 21,35.60,13.38,10 >>离开洞穴
step
#sticky
#label SilverpineOrcSeaDog
>>摧毁|cRXP_ENEMY_Webbed Victims|r以释放|cRXP_FRIENDLY_Orc海狗|r
>>留意罕见的|cRXP_ENEMY_Kreths|r
.goto 21,34.80,15.02,30,0
.goto 21,35.60,17.69,30,0
.goto 21,35.90,14.58,0,0
.complete 27093,1 
.mob Webbed Victim
step
>>杀死|cRXP_ENEMY_Skitterweb蜘蛛|r
.goto 21,37.11,16.23,30,0
.goto 21,34.80,15.02,30,0
.goto 21,35.60,17.69,30,0
.goto 21,35.90,14.58
.complete 27095,1 
.mob Skitterweb Spider
step
>>在你的任务日志中点击你的小地图下的任务
.turnin 27095 >>交任务: |cRXP_FRIENDLY_粘丝的威胁|r
step
#requires SilverpineOrcSeaDog
>>在|cRXP_ENEMY_Ettin|r上使用|T132598:0|t[突变体布什鸡笼]。
*|cRXP_WARN_The |cRXP_ENEMY_Ettin|r runs around the village. Click on the quest on the map/quest tracker to track the |cRXP_ENEMY_Ettin|r. You should see a small yellow waypoint at his position.|r
.goto 21,46.68,18.04,30,0
.goto 21,46.20,28.45,30,0
.goto 21,39.64,29.99,30,0
.goto 21,39.90,16.58
.use 60808
.complete 27088,1 
.mob Forest Ettin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师虫污|r, |cRXP_FRIENDLY_战斧上将|r, |cRXP_FRIENDLY_督军托尔罗克|r
.turnin 27088 >>交任务: |cRXP_FRIENDLY_你摄取的不过是毒素|r
.goto 21,44.79,20.91
.turnin 27093 >>交任务: |cRXP_FRIENDLY_迷失在黑暗中|r
.turnin 27094 >>交任务: |cRXP_FRIENDLY_黑暗的更深处|r
.accept 27096 >>接任务: |cRXP_WARN_兽人准备就绪|r
.goto 21,44.01,21.32
.target Apothecary Wormcrud
.target Admiral Hatchet
.target Warlord Torok
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蝙蝠管理员玛格特布里斯|r
.goto 21,45.94,21.88
.fly Forsaken High Command >>飞往被遗忘的最高指挥部
.target Bat Handler Maggotbreath
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
*Dismount before talking to Sylvanas
.goto 21,57.37,10.20
.turnin 27096 >>交任务: |cRXP_FRIENDLY_兽人准备就绪|r
.accept 27097 >>接任务: |cRXP_WARN_崛起吧，被遗忘者|r
.target Lady Sylvanas Windrunner
step
>>杀死|cRXP_ENEMY_Hillsbrad难民|r，而|cRXP_FRIENDLY_Agatha|r就在你旁边
*|cRXP_WARN_Wait until Agatha spawns before mounting up. If she despawns just dismount and wait for her to reappear|r
.goto 21,64.87,19.37,30,0
.goto 21,65.70,26.35
.complete 27097,1 
.mob Hillsbrad Refugee
step
>>在你的任务日志中点击你的小地图下的任务
.goto 21,65.70,26.35
.turnin 27097 >>交任务: |cRXP_FRIENDLY_崛起吧，被遗忘者|r
.accept 27099 >>接任务: |cRXP_WARN_无处可逃|r
step
.goto 21,65.73,24.39,10,0
.goto 21,66.27,24.34,10,0
.goto 21,66.07,23.92,10,0
.goto 21,65.54,23.44,10,0
.goto 21,65.92,23.35,8,0
.goto 21,65.94,23.91,8,0
.goto 21,65.29,23.94,10,0
.goto 21,65.27,24.97
>>找那些上层领导。如果你能活下来，你不需要杀死任何暴徒。
*|cRXP_WARN_DON'T SKIP THE CINEMATIC|r
.complete 27099,1 
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.goto 21,57.35,10.21
.turnin 27099 >>交任务: |cRXP_FRIENDLY_无处可逃|r
.accept 27098 >>接任务: |cRXP_WARN_洛丹伦|r
.target Lady Sylvanas Windrunner
step
.complete 27098,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.goto 21,44.89,41.65
.turnin 27098 >>交任务: |cRXP_FRIENDLY_洛丹伦|r
.accept 27180 >>接任务: |cRXP_LOOT_逝者的荣耀|r
.target Lady Sylvanas Windrunner
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战斧上将|r, |cRXP_FRIENDLY_督军托尔罗克|r
.goto 21,45.78,41.94
.accept 27226 >>接任务: |cRXP_WARN_解醉酒|r
.accept 27231 >>接任务: |cRXP_WARN_芬里斯的援兵|r
.target Admiral Hatchet
.target Warlord Torok
step
#completewith SilverpineAcceptExcisingtheTaint
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡洛斯·拉佐克|r
.goto 21,45.41,42.48
.fp >>获取the Sepulcher飞行路线
.target Karos Razok
step
#label SilverpineAcceptExcisingtheTaint
>>杀死一个|cRXP_ENEMY_Bloodfang Stalker|r以触发任务
.goto 21,47.28,46.68
.accept 27181 >>接任务: |cRXP_WARN_洗刷污点|r
.mob Bloodfang Stalker
step
#completewith next
>>在地面上掠夺|cRXP_FRIENDLY_Veteran被遗弃士兵的尸体|r
.complete 27180,1 
.target Veteran Forsaken Trooper
step
>>杀死|cRXP_ENEMY_Bloodfang跟踪者|r
>>留意罕见的|cRXP_ENEMY_Berard the Moon Crazed|r
.goto 21,43.34,50.79,15,0
.goto 21,46.27,51.27,25,0
.goto 21,47.48,49.47,30,0
.goto 21,47.03,53.10
.complete 27181,1 
.mob Bloodfang Stalker
step
>>在你的任务日志中点击你的小地图下的任务
.turnin 27181 >>交任务: |cRXP_FRIENDLY_洗刷污点|r
.accept 27193 >>接任务: |cRXP_WARN_搜索并毁灭|r
step
>>杀死|cRXP_ENEMY_Caretaker Smithers|r。抢走他的|cRXX_Loot_日志|r
.goto 21,45.90,54.23
.complete 27193,1 
.mob Caretaker Smithers
step
>>在你的任务日志中点击你的小地图下的任务
.turnin 27193 >>交任务: |cRXP_FRIENDLY_搜索并毁灭|r
.accept 27194 >>接任务: |cRXP_WARN_走投无路！|r
step
>>在地面上掠夺|cRXP_FRIENDLY_Veteran被遗弃士兵的尸体|r
.goto 21,47.03,53.10,30,0
.goto 21,46.27,51.27,25,0
.goto 21,47.48,49.47,30,0
.goto 21,47.03,53.10
.complete 27180,1 
.target Veteran Forsaken Trooper
step
#requires SilverpineForsakenInsignia
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_士官长弗尔特斯基|r
.goto 21,55.88,46.35
.turnin 27194 >>交任务: |cRXP_FRIENDLY_走投无路！|r
.accept 27195 >>接任务: |cRXP_WARN_无处可跑|r
.target Master Forteski
step
*|cRXP_WARN_Don't run too far away from |cRXP_FRIENDLY_Master Forteski|r|r
.goto 21,58.05,44.89
.complete 27195,1 
.target Master Forteski
step
#completewith next
.goto 21,56.46,46.06,10 >>离开洞穴
step
#completewith SilverpineHairoftheDog
>>杀死|cRXP_ENEMY_Hillsbrad Worgen|r
.goto 21,56.64,34.11,0,0
.complete 27231,1 
.mob Hillsbrad Worgen
step
#title Orc roused 1
>>在|cRXP_FRIENDLY_Orc Sea Dogs|r上使用|T252176:0|t[炸药桶]
*Keep an eye out for chests
.goto 21,54.25,38.83
.use 60870
.complete 27226,1,1 
.target Orc Sea Dog
step
#completewith next
.goto 21,53.51,38.64,10 >>检查是否有可能的胸部
step
#title Orc roused 2
>>在|cRXP_FRIENDLY_Orc Sea Dogs|r上使用|T252176:0|t[炸药桶]
*Keep an eye out for chests
.goto 21,53.86,37.49
.use 60870
.complete 27226,1,2 
.target Orc Sea Dog
step
#title Orc roused 3
>>在|cRXP_FRIENDLY_Orc Sea Dogs|r上使用|T252176:0|t[炸药桶]
*Keep an eye out for chests
.goto 21,54.37,36.25
.use 60870
.complete 27226,1,3 
.target Orc Sea Dog
step
#title Orc roused 4
>>在|cRXP_FRIENDLY_Orc Sea Dogs|r上使用|T252176:0|t[炸药桶]
*Keep an eye out for chests
.goto 21,53.91,35.74
.use 60870
.complete 27226,1,4 
.target Orc Sea Dog
step
#completewith next
.goto 21,54.43,34.34,10 >>检查是否有可能的胸部
step
#title Orc roused 5
>>在|cRXP_FRIENDLY_Orc Sea Dogs|r上使用|T252176:0|t[炸药桶]
*Keep an eye out for chests
.goto 21,54.47,33.00
.use 60870
.complete 27226,1,5 
.target Orc Sea Dog
step
#title Orc roused 6
>>在|cRXP_FRIENDLY_Orc Sea Dogs|r上使用|T252176:0|t[炸药桶]
*Keep an eye out for chests
.goto 21,56.08,32.18
.use 60870
.complete 27226,1,6 
.target Orc Sea Dog
step
#title Orc roused 7
>>在|cRXP_FRIENDLY_Orc Sea Dogs|r上使用|T252176:0|t[炸药桶]
*Keep an eye out for chests
.goto 21,57.05,32.67
.use 60870
.complete 27226,1,7 
.target Orc Sea Dog
step
#label SilverpineHairoftheDog
#title Orc roused 8
>>在|cRXP_FRIENDLY_Orc Sea Dogs|r上使用|T252176:0|t[炸药桶]
*Keep an eye out for chests
.goto 21,57.76,34.06
.use 60870
.complete 27226,1 
.target Orc Sea Dog
step
>>杀死|cRXP_ENEMY_Hillsbrad Worgen|r
.goto 21,57.01,34.96,30,0
.goto 21,54.34,34.19,30,0
.goto 21,52.93,31.90,30,0
.goto 21,56.64,34.11,0,0
.complete 27231,1 
.mob Hillsbrad Worgen
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Horde Communication Panel|r
.goto 21,59.24,34.22
.turnin 27231 >>交任务: |cRXP_FRIENDLY_芬里斯的援兵|r
.accept 27232 >>接任务: |cRXP_WARN_血染湖水……|r
step
#completewith next
.goto 21,59.62,33.53
.vehicle 45263 >>输入|cRXP_PICK_Horde Cannon|r
step
>>使用|T133032:0|t[火箭爆炸]（1）杀死到达的|cRXP_ENEMY_Worgen|r
>>留意罕见的|cRXP_ENEMY_Fenwick Thatros|r
.goto 21,59.38,33.46,8,0
.goto 21,59.62,33.53
.complete 27232,1 
step
#completewith SilverpineTheWatersRunRed
.deathskip >>拉一些暴徒，死后向精神治疗师猛扑
step
#completewith next
.goto 21,46.43,42.70
.vendor
step
#label SilverpineTheWatersRunRed
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战斧上将|r, |cRXP_FRIENDLY_督军托尔罗克|r
.goto 21,45.79,41.90
.turnin 27232 >>交任务: |cRXP_FRIENDLY_血染湖水……|r
.turnin 27226 >>交任务: |cRXP_FRIENDLY_解醉酒|r
.target Admiral Hatchet
.target Warlord Torok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.goto 21,44.94,41.66
.turnin 27180 >>交任务: |cRXP_FRIENDLY_逝者的荣耀|r
.turnin 27195 >>交任务: |cRXP_FRIENDLY_无处可跑|r
.target Lady Sylvanas Windrunner
step
.maxlevel 19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.goto 21,44.94,41.66
.accept 27290 >>接任务: |cRXP_WARN_到被遗忘者前线指挥部去|r
.target Lady Sylvanas Windrunner
step
.maxlevel 19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_Arthura|r一起飞行，并与|cRXP_RIENDLY_Dathstalker指挥官Belmont|r交谈
.goto 217,57.46,18.77
.turnin 27290 >>交任务: |cRXP_FRIENDLY_到被遗忘者前线指挥部去|r
.accept 27342 >>接任务: |cRXP_WARN_迟早，一切都会清楚的|r
.target Arthura
.target Deathstalker Commander Belmont
step
.maxlevel 19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_前锋军指挥官昂斯洛特|r
.goto 217,57.54,18.24
.accept 27333 >>接任务: |cRXP_WARN_失地|r
.accept 27345 >>接任务: |cRXP_WARN_死亡通讯器|r
.target Forward Commander Onslaught
step
.isOnQuest 27333
#completewith next
>>杀死|cRXP_ENEMY_沃根叛军|r
.goto 217,55.39,13.66,20,0
.complete 27333,1 
.mob Worgen Rebel
step
.isOnQuest 27333
#sticky
#label SilverpineKorokSecondHead
>>杀死|cRXP_ENEMY_Korok|r（巡逻）。抢劫他的|cRXP_Loot_head|r。在你的包里点击它
.goto 217,50.26,19.52,15,0
.goto 217,50.26,19.52,0,0
.collect 60956,1,27322,1
.accept 27322 >>接任务: |cRXP_WARN_双头巨人克洛科|r
.mob Korok the Colossus
step
.isOnQuest 27345
>>拿起地面上的|cRXP_Pick_device|r
.goto 217,45.76,21.96
.complete 27345,1 
step
.isOnQuest 27333
#requires SilverpineKorokSecondHead
#sticky
#label SilverpineWorgenRebel
>>杀死|cRXP_ENEMY_沃根叛军|r
.goto 217,54.21,22.11,20,0
.goto 217,55.10,26.28,15,0
.goto 217,54.84,19.34,0,0
.complete 27333,1 
.mob Worgen Rebel
step
.isOnQuest 27342
#requires SilverpineKorokSecondHead
>>航路点周围的织机|cRXP_PICK_Wolfsbane|r
*Spawn is too random to place exact waypoints
.goto 217,58.82,32.55,20,0
.goto 217,62.30,33.88,30,0
.goto 217,63.78,31.96,30,0
.goto 217,59.83,28.20
.complete 27342,1 
step
#requires SilverpineWorgenRebel
.goto 217,57.49,18.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Onslaught, |cRXP_FRIENDLY_死亡猎手指挥官贝尔蒙特|r
.turnin -27333 >>交任务: |cRXP_FRIENDLY_失地|r
.turnin -27345 >>交任务: |cRXP_FRIENDLY_死亡通讯器|r
.turnin -27322 >>交任务: |cRXP_FRIENDLY_双头巨人克洛科|r
.turnin -27342 >>交任务: |cRXP_FRIENDLY_迟早，一切都会清楚的|r
.target Forward Commander Onslaught
.target Deathstalker Commander Belmont
step
.isQuestTurnedIn 27342
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Onslaught, |cRXP_FRIENDLY_死亡猎手指挥官贝尔蒙特|r
.goto 217,57.49,18.48
.accept 27349 >>接任务: |cRXP_WARN_联络中断：恐惧之卫哨所|r
.target Forward Commander Onslaught
.target Deathstalker Commander Belmont
step
.isOnQuest 27349
*It may not complete if you fly too high.
>>Follow the arrow
.goto 217,52.70,32.23
.complete 27349,1 
step
>>在你的任务日志中点击你的小地图下的任务
.goto 217,52.76,32.36
.turnin -27349 >>交任务: |cRXP_FRIENDLY_联络中断：恐惧之卫哨所|r
step
.isQuestTurnedIn 27349
>>在你的任务日志中点击你的小地图下的任务
.goto 217,52.76,32.36
.accept 27350 >>接任务: |cRXP_WARN_联络中断：拉特萨克营地|r
step
.isOnQuest 27350
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉特萨克队长|r
.goto 217,65.64,34.21
.turnin 27350 >>交任务: |cRXP_FRIENDLY_联络中断：拉特萨克营地|r
.target Captain Rutsak
step
.maxlevel 19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉特萨克队长|r
.goto 217,65.64,34.21
.accept 27360 >>接任务: |cRXP_WARN_为我们的士兵们复仇|r
.accept 27364 >>接任务: |cRXP_WARN_谁下的令？|r
.target Captain Rutsak
step
.isOnQuest 27360
#completewith next
>>杀死该区域的|cRXP_ENEMY_Submariners|r
.complete 27360,1 
.mob 7th Legion Submariner
step
.isOnQuest 27364
>>杀死|cRXP_ENEMY_Master Seargent Pietro Zaren |r。掠夺他以获得|cRXP_Loot_orders|r
.goto 217,58.76,47.38
.complete 27364,1 
.mob Master Seargent Pietro Zaren
step
>>在你的任务日志中点击你的小地图下的任务
.goto 217,58.17,47.43
.turnin -27364 >>交任务: |cRXP_FRIENDLY_谁下的令？|r
step
.isQuestTurnedIn 27364
>>在你的任务日志中点击你的小地图下的任务
.goto 217,58.17,47.43
.accept 27401 >>接任务: |cRXP_WARN_明天的希望|r
step
.isOnQuest 27360
>>杀死该区域的|cRXP_ENEMY_7th Legion Sumbariners|r
*|cRXP_WARN_Be careful not to pull too many because they can do a lot of damage.|r
.goto 217,60.12,45.39,20,0
.goto 217,59.17,42.96,20,0
.goto 217,57.91,45.44,20,0
.goto 217,56.73,48.52
.complete 27360,1 
.mob 7th Legion Submariner
step
.isOnQuest 27401
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_spyglass|r
*|cRXP_WARN_DON'T SKIP THE CINEMATIC|r
.goto 217,54.72,44.45
.complete 27401,1 
step
>>在你的任务日志中点击你的小地图下的任务
.goto 217,54.72,44.45
.turnin -27401 >>交任务: |cRXP_FRIENDLY_明天的希望|r
step
.isQuestTurnedIn 27401
>>在你的任务日志中点击你的小地图下的任务
.goto 217,54.72,44.45
.accept 27405 >>接任务: |cRXP_WARN_撤退！|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉特萨克队长|r
.goto 217,65.70,34.29
.turnin -27360 >>交任务: |cRXP_FRIENDLY_为我们的士兵们复仇|r
.target Captain Rutsak
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_死亡猎手指挥官贝尔蒙特|r
.goto 217,72.88,30.21
.turnin -27405 >>交任务: |cRXP_FRIENDLY_撤退！|r
.target Deathstalker Commander Belmont
step
.maxlevel 19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_死亡猎手指挥官贝尔蒙特|r
.goto 217,72.88,30.21
.accept 27406 >>接任务: |cRXP_WARN_一个名叫高弗雷的人|r
.target Deathstalker Commander Belmont
step
.isOnQuest 27406
>>到达航路点时自动接受
.goto 217,73.76,32.85
.accept 27423 >>接任务: |cRXP_WARN_抵抗是徒劳的|r
step
.isOnQuest 27406
#completewith next
+|cRXP_WARN_如果没有NPC跟随你使其产卵，则解散|r
step
.isOnQuest 27423
*Focus on killing the the |cRXP_ENEMY_Bloodfang Scout|r + 5|cRXP_ENEMY_Gilnean Warhound|r包
.goto 217,71.84,42.71,20,0
.goto 217,71.78,51.53,20,0
.goto 217,76.38,56.02,20,0
.goto 217,77.65,61.04
.complete 27423,1 
.mob Bloodfang Scout
.mob Gilnean Warhound
step
.isOnQuest 27406
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_corpse|r of |cRXP_FRIENDLY_Lord Godfrey|r
.goto 217,79.70,75.78
.complete 27406,1 
.target Lord Godfrey
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_死亡猎手指挥官贝尔蒙特|r
*如果没有NPC跟随你使其产卵，则解散.
.goto 217,79.70,75.78
.turnin -27406 >>交任务: |cRXP_FRIENDLY_一个名叫高弗雷的人|r
.turnin -27423 >>交任务: |cRXP_FRIENDLY_抵抗是徒劳的|r
.target Deathstalker Commander Belmont
step
.isQuestTurnedIn 27423
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_死亡猎手指挥官贝尔蒙特|r
*如果没有NPC跟随你使其产卵，则解散.
.goto 217,79.70,75.78
.accept 27438 >>接任务: |cRXP_WARN_大逃亡|r
.target Deathstalker Commander Belmont
step
.goto 21,51.77,66.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.turnin -27438 >>交任务: |cRXP_FRIENDLY_大逃亡|r
.target Lady Sylvanas Windrunner
step
.maxlevel 19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.goto 21,51.77,66.06
.accept 27472 >>接任务: |cRXP_WARN_复活吧，高弗雷|r
.target Lady Sylvanas Windrunner
step
.isOnQuest 27472
#completewith SilverpineLordGodfreyReborn
+|cRXP_WARN_您只有大约40秒的时间来搜索接下来的两个稀有|r。如果速度太慢，请早点回来。如果你错过了计时器，放弃任务，重新开始。
step
.isOnQuest 27472
#completewith next
*You have to pull him with a ranged ability as you can't see him near the Forsaken Front
.goto 21,48.53,69.00,15 >>搜索身后的尸体
step
.isOnQuest 27472
#completewith next
.goto 21,47.43,69.93,15 >>Search for Effritus
step
.isOnQuest 27472
#label SilverpineLordGodfreyReborn
.unitscan Effritus
.unitscan Corpsefeeder
.goto 21,51.73,65.50
.complete 27472,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r, |cRXP_FRIENDLY_达丝琪拉|r
.goto 21,51.88,65.08
.turnin -27472 >>交任务: |cRXP_FRIENDLY_复活吧，高弗雷|r
.target Lady Sylvanas Windrunner
.target Daschla
step
.maxlevel 19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r, |cRXP_FRIENDLY_达丝琪拉|r
.accept 27474 >>接任务: |cRXP_WARN_突破屏障|r
.goto 21,51.88,65.08
.accept 27475 >>接任务: |cRXP_WARN_不屈的仆从|r
.goto 21,51.91,64.69
.target Lady Sylvanas Windrunner
.target Daschla
step
.isOnQuest 27475
#completewith next
#title Check for Chest
.goto 21,58.48,61.62,8 >>检查可能的|cRXP_PICK_Chest|r位置
step
.isOnQuest 27475
#completewith SilverpineBreakingtheBarrier
>>杀死该区域中的|cRXP_ENEMY_elementals|r。掠夺它们的|cRXP_Loot_cores|r
.goto 21,59.51,64.29,0,0
.complete 27475,1 
.mob Elemental Servitor
step
.isOnQuest 27474
#completewith next
.goto 21,62.84,64.02,8 >>进入大楼
step
.isOnQuest 27474
#label SilverpineBreakingtheBarrier
>>拿起|cRXP_Pick_book|r。
.goto 21,63.48,64.25
.complete 27474,1 
step
.isOnQuest 27475
#completewith next
.goto 21,62.84,64.02,8 >>Leave the building
step
.isOnQuest 27475
>>杀死该区域中的|cRXP_ENEMY_elementals|r。掠夺它们的|cRXP_Loot_cores|r
.goto 21,59.51,64.29,0,0
.complete 27475,1 
.mob Elemental Servitor
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达丝琪拉|r, |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.turnin -27475 >>交任务: |cRXP_FRIENDLY_不屈的仆从|r
.goto 21,51.89,64.67
.turnin -27474 >>交任务: |cRXP_FRIENDLY_突破屏障|r
.goto 21,51.94,64.99
.target Daschla
.target Lady Sylvanas Windrunner
step
.zoneskip 85
.hs >>心碎的图斯克（Orgrimmar）
step
#completewith next
+点击天赋窗口右下角（键盘上的N），激活战争模式。这将使所有经验增益增加10%，但打开你的pvp模式。如果你愿意，你可以跳过这一步/在未来轻松禁用它
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#group RestedXP Horde 10-60
#name 1部落Zuldazar上半场
#displayname Chapter 3 - Zuldazar Beginning
#next 2 Horde Nazmir
#maxlevel 60
#fresh
<< Horde
step
#completewith next
.goto 85,53.49,90.43,10,0
.goto 85,58.53,91.28
.zone 1163 >>走祖尔达扎的入口
step
.goto 1164,41.67,69.17
>>单击|cRXP_PICK_Scouting Map|r，然后单击Zuldazar。接受任务
.accept 47514 >>接任务: |cRXP_WARN_祖达萨|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talanji|r
.goto 1164,41.22,66.75
.turnin 47514 >>Turn in Zuldazar
.accept 49615 >>接任务: |cRXP_WARN_大王的信任|r
.target Princess Talanji
step
#completewith next
.goto 1164,22.67,72.08,5,0
.goto 1165,48.72,44.92,10,0
.goto 1165,49.56,44.60,18 >>乘电梯直达|cRXP_FRIENDLY_King Rastakhan|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r, |cRXP_FRIENDLY_Zolani|r, and |cRXP_FRIENDLY_Yazma|r
.goto 1164,22.67,72.08,5,0
.goto 1165,48.72,44.92,10,0
.goto 1165,49.56,44.60,18,0
.goto 1165,49.93,46.62
.turnin 49615 >>Turn in Trust of a King
.accept 49488 >>接任务: |cRXP_WARN_塔尔格拉布|r
.target King Rastakhan
step
#completwith next
>>坐骑|cRXP_FRIENDLY_Ata the Wingflord|r
.goto 1164,49.94,43.13
.complete 49488,1 
.target Ata the Winglord
step
.goto 862,62.82,32.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul|r
.turnin 49488 >>Turn in Tal'gurub
.accept 49489 >>接任务: |cRXP_WARN_原料需求|r
.accept 49490 >>接任务: |cRXP_WARN_声之瓮|r
.target Zul
step
#completewith ZuldazarVoodooTotemEight
>>为他们的灵魂杀死|cRXP_ENEMY_Jambani|r和|cRXX_ENEMY_Mask|r
.complete 49490,1 
.mob Howling Voodoo Mask
.mob Jambani Spirit Twister
.mob Jambani Crusher
step
.goto 862,63.62,31.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izita's Spirit|r
.accept 49491 >>接任务: |cRXP_WARN_巫毒燃料|r
.target Izita's Spirit
step
#title Totem 1
.goto 862,64.19,32.82
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,1 
step
#title Totem 2
.goto 862,64.72,32.98
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,2 
step
#sticky
#label Totem3
#title Totem 3
.goto 862,64.98,32.91,-1
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,3 
step
#title Concotion 1
>>进入大楼。单击|cRXP_FRIENDLY_Atal'jamba Ungo|r
.goto 862,65.03,32.98,-1
.complete 49489,1,1 
.target Atal'jamba Ungo
step
#requires Totem3
#completewith next
.goto 862,64.36,33.14,15,0
.goto 862,63.94,32.49,20 >>穿过桥往回走，然后上楼梯时向右转
step
#requires Totem3
#title Totem 4
.goto 862,63.91,31.92
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,4 
step
#title Totem 5
.goto 862,63.74,30.83
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,5 
step
#title Totem 6
.goto 862,63.11,30.22
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,6 
step
#title Concotion 2
>>进入大楼。单击|cRXP_FRIENDLY_Atal'jamba Iri|r
.goto 862,63.07,29.06,12,0
.goto 862,63.20,29.06
.complete 49489,1 
.target Atal'jamba Iri
step
#title Totem 7
.goto 862,62.70,29.09
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,7 
step
#label ZuldazarVoodooTotemEight
#title Totem 8
.goto 862,62.88,28.61
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,8 
step
.goto 862,62.70,29.09,40,0
.goto 862,63.11,30.22,40,0
.goto 862,63.74,30.83,40,0
.goto 862,63.91,31.92,40,0
.goto 862,64.19,32.82,40,0
.goto 862,64.72,32.98
>>为他们的灵魂杀死|cRXP_ENEMY_Jambani|r和|cRXX_ENEMY_Mask|r
.complete 49490,1 
.mob Howling Voodoo Mask
.mob Jambani Spirit Twister
.mob Jambani Crusher
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_PICK_火盆|r, Zul
.turnin 49491 >>Turn in Fuel for the Voodoo
.goto 862,62.74,28.43
.turnin 49489 >>Turn in Needs a Little Body
.turnin 49490 >>Turn in The Urn of Voices
.accept 49492 >>接任务: |cRXP_WARN_沃加巴的傲慢|r
.goto 862,62.86,28.24
.target Zul
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Masks|r on the wall. Don't worry about their traps
.complete 49492,1 
.goto 862,62.90,28.00
.complete 49492,2 
.goto 862,63.55,28.08
.complete 49492,3 
.goto 862,64.12,28.37
.timer 20,Zul RP
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待|cRXP_FRIENDLY_Zul|r走上楼梯。与|cRXP_FRIENDLY_him|r交谈
.goto 862,64.38,28.55
.turnin 49492 >>Turn in Arrogance of Vol'jamba
.accept 49493 >>接任务: |cRXP_WARN_道德困境|r
.accept 49494 >>接任务: |cRXP_WARN_祖维比酒|r
.target Zul
step
#completewith ZuldazarJambaniStockpiles
>>当站在|cRXP_ENEMY_Mindslaved狂战士|r和|cRXX_ENEMY_ Mindslaved古鲁巴什|r的近战范围内时，使用|T237388:0|t[破心圣歌]。尝试一次释放多个施放
.use 155458
.complete 49493,1 
.mob Mindslaved Berserker
.mob Mindslaved Gurubashi
step
.goto 862,64.88,27.00
>>杀死|cRXP_ENEMY_Zuvembi Brewer Zekal|r
.complete 49494,1 
.mob Zuvembi Brewer Zekal
step
.goto 862,65.29,28.19
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Jambani Stockpile|r, then click it again to burn it
.accept 51663 >>接任务: |cRXP_WARN_做好准备|r
.complete 51663,1,1 
step
#title Stockpile 2
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,65.39,27.86
.complete 51663,1,2 
step
#title Stockpile 3
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,65.00,28.34
.complete 51663,1,3 
step
#title Stockpile 4
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,64.92,28.36
.complete 51663,1,4 
step
#title Stockpile 5
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,64.66,28.64
.complete 51663,1,5 
step
#title Stockpile 6
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,64.61,29.82
.complete 51663,1,6 
step
#title Stockpile 7
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,65.02,29.62
.complete 51663,1,7 
step
#label ZuldazarJambaniStockpiles
#title Stockpile 8
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,65.59,29.14
.complete 51663,1 
step
>>当站在|cRXP_ENEMY_Mindslaved狂战士|r和|cRXX_ENEMY_ Mindslaved古鲁巴什|r的近战范围内时，使用|T237388:0|t[破心圣歌]。尝试一次释放多个施放
.use 155458
.goto 862,66.35,29.55,30,0
.goto 862,66.47,28.56,30,0
.goto 862,66.07,28.57,30,0
.goto 862,64.66,28.64,30,0
.goto 862,64.61,29.82
.complete 49493,1 
.mob Mindslaved Berserker
.mob Mindslaved Gurubashi
step
#completewith next
.goto 862,65.71,30.21,40 >>Climb the stairs
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul|r
.goto 862,65.71,30.21
.turnin 49493 >>Turn in Zul's Ethical Dilemma
.turnin 49494 >>Turn in Zuvembi Brew
.turnin 51663 >>Turn in Preparing for the Fall
.accept 49495 >>接任务: |cRXP_WARN_命中注定|r
.target Zul
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Gong of Command|r
.goto 862,65.89,31.09
.complete 49495,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_shade of the urn|r
.goto 862,65.89,30.67
.complete 49495,2 
.timer 6,Urn of Voices RP
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_shade of the urn|r again when it appears
.goto 862,65.86,30.65
.complete 49495,3 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_potion|r on the table
.goto 862,65.56,31.30
.complete 49495,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul|r
.goto 862,65.71,30.21
.turnin 49495 >>Turn in Enforcing Fate
.accept 49905 >>接任务: |cRXP_WARN_剧情反转|r
.timer 30,Plot Twist RP
.target Zul
step
>>等待RP攻击|cRXP_ENEMY_Vol'jamba|r
.goto 862,65.68,31.03
.complete 49905,1 
.mob Vol'jamba
step
.goto 862,65.68,31.03
>>杀死|cRXP_ENEMY_Vol'Jamba|r
.complete 49905,2 
.mob Vol'jamba
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul|r
.goto 862,65.58,30.51
.turnin 49905 >>Turn in Plot Twist
.accept 49663 >>接任务: |cRXP_WARN_虚假预言|r
.target Zul
step
#completewith HuntKing
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
step
#completewith next
.goto 862,66.99,29.79,30 >>顺着悬崖的这一部分往下跑
step
#label HuntKing
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Hunter's Board, |cRXP_FRIENDLY_赫米特·奈辛瓦里|r, Erak, Tracker Burke
.accept 47706 >>接任务: |cRXP_WARN_狩猎魔暴龙王科塔尔|r
.goto 862,67.44,17.90
.turnin 49768 >>交任务: |cRXP_FRIENDLY_奈辛瓦里之途|r
.accept 50466 >>接任务: |cRXP_WARN_它已经疯了！|r
.goto 862,67.50,17.70
.accept 47584 >>接任务: |cRXP_WARN_肉中刺|r
.goto 862,67.45,17.72
.accept 47583 >>接任务: |cRXP_WARN_去死吧，双帆龙|r
.goto 862,67.56,17.73
.target Hemet Nesingwary
.target Erak
.target Tracker Burke
step
#completewith next
>>杀死|cRXP_ENEMY_甲龙|r
.complete 47584,1 
.mob Ankylodons
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the dead |cRXP_FRIENDLY_Trapper|r on the ground
.goto 862,68.85,19.44
.accept 47585 >>接任务: |cRXP_WARN_螳螂捕蝉|r
.target Trapper Custer
step
#completewith ZuldazarWildtusk
>>杀死|cRXP_ENEMY_Vemomus Diemetradons|r和|cRXX_ENEMY_Ankylons|r
.complete 47583,1 
.complete 47584,1 
.mob Venomous Diemetradons
.mob Ankylodons
step
.line 862,71.69,20.36,71.40,20.93,71.33,21.89,71.50,22.41,70.84,22.62,70.14,22.88,68.99,22.64,68.26,21.95,67.98,22.04,67.93,22.32,68.10,22.90,68.25,22.74,68.42,23.03,69.76,22.59,70.84,22.62
.goto 862,71.69,20.36,40,0
.goto 862,71.40,20.93,40,0
.goto 862,71.33,21.89,40,0
.goto 862,71.50,22.41,40,0
.goto 862,70.84,22.62,40,0
.goto 862,70.14,22.88,40,0
.goto 862,68.99,22.64,40,0
.goto 862,68.26,21.95,40,0
.goto 862,67.98,22.04,40,0
.goto 862,67.93,22.32,40,0
.goto 862,68.10,22.90,40,0
.goto 862,68.25,22.74,40,0
.goto 862,68.42,23.03,40,0
.goto 862,69.76,22.59,40,0
.goto 862,70.84,22.62
>>杀死|cRXP_ENEMY_King K'tal|r。掠夺他的|cRXX_Loot_skull|r。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。
.complete 47706,1 
.isOnQuest 47706
.mob King K'tal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Paalu|r on the ground
.goto 862,70.63,22.09
.complete 47585,1 
.target Ranger Paalu
step
#label ZuldazarWildtusk
.goto 862,70.94,26.26
>>杀死|cRXP_ENEMY_Wildtusk|r
.complete 50466,1 
.mob Wildtusk
step
#completewith next
>>杀死|cRXP_ENEMY_毒蜥|r
.complete 47583,1 
.mob Venomous Diemetradons
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Julyen|r on the ground
.goto 862,67.81,25.03
.complete 47585,2 
.target Marksman Julyen
step
>>杀死|cRXP_ENEMY_毒蜥|r
#loop
.line 862,68.00,26.14,68.86,25.70,68.80,25.22,68.41,25.03,68.56,24.19,67.78,24.33,67.41,24.86,68.00,26.14
.goto 862,68.00,26.14,40,0
.goto 862,68.86,25.70,40,0
.goto 862,68.80,25.22,40,0
.goto 862,68.41,25.03,40,0
.goto 862,68.56,24.19,40,0
.goto 862,67.78,24.33,40,0
.goto 862,67.41,24.86,40,0
.goto 862,68.00,26.14,40,0
.complete 47583,1 
.mob Venomous Diemetradons
step
>>杀死|cRXP_ENEMY_甲龙|r
.goto 862,67.81,22.89,45,0
.goto 862,68.74,21.43,45,0
.goto 862,68.63,20.44,45,0
.goto 862,67.66,20.12,45,0
.goto 862,68.26,18.54,45,0
.goto 862,69.11,18.71
.complete 47584,1 
.mob Ankylodon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t回到奈辛瓦利的迷航。与|cRXP_PICK_Tracker Burke’s Hat |r、|cRXP_RIENDLY_Erak|r和|cRXT_RIENDLY_Huntmaster Vol'ka|r交谈
.turnin 47583 >>Turn in Die, Die, Diemetradon
.goto 862,67.50,18.89
.turnin 47584 >>Turn in A Thorn in the Side
.goto 862,68.01,18.03
.turnin 47585 >>Turn in Predatory
.turnin 47706 >>Turn in Hunt for King K'tal
.turnin 50466 >>Turn in He's Gone Mad!
.accept 47586 >>接任务: |cRXP_WARN_狩猎王牌猎人|r
.goto 862,67.50,17.62
.isQuestComplete 47706
.target Erak
.target Huntmaster Vol'ka
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t回到奈辛瓦利的迷航。与|cRXP_PICK_Tracker Burke’s Hat |r、|cRXP_RIENDLY_Erak|r和|cRXT_RIENDLY_Huntmaster Vol'ka|r交谈
.turnin 47583 >>Turn in Die, Die, Diemetradon
.goto 862,67.50,18.89
.turnin 47584 >>Turn in A Thorn in the Side
.goto 862,68.01,18.03
.turnin 50466 >>Turn in He's Gone Mad!
.turnin 47585 >>Turn in Predatory
.accept 47586 >>接任务: |cRXP_WARN_狩猎王牌猎人|r
.goto 862,67.50,17.62
.target Erak
.target Huntmaster Vol'ka
step
.abandon 47706 >>放弃对国王克塔尔的狩猎
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lasa the Galerider|r
.goto 862,66.19,17.60
.fp Nesingwary's Gameland >>获取Nesingwary的Gameland飞行路线
.target Lasa the Galerider
step
#completewith ZuldazarFollowNesingwary
>>杀死|cRXP_ENEMY_Feathered Vipers|r、它们的|cRXD_ENEMY_Egg|r和|cRXP_ENEMY_Wild Sabertusk|r
.complete 50178,1 
.mob Feathered Viper
.mob Feathered Viper Egg
.mob Wild Sabertusk
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on |cRXP_PICK_Nesingwary's Campfire|r on the ground
.goto 862,62.45,19.26
.complete 47586,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Dwarf Trap|r on the ground
.goto 862,61.48,17.95
.complete 47586,2 
step
#label ZuldazarFollowNesingwary
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Nesingwary's Rifle|r on the ground
.goto 862,62.32,16.87
.complete 47586,3 
step
.goto 862,62.76,17.45,40,0
.goto 862,62.88,17.04,40,0
.goto 862,64.01,19.36,40,0
.goto 862,64.14,17.29,40,0
.goto 862,65.83,17.90,40,0
.goto 862,65.17,20.05,40,0
.goto 862,62.76,17.45
>>杀死|cRXP_ENEMY_Feathered Vipers|r、它们的|cRXD_ENEMY_Egg|r和|cRXP_ENEMY_Wild Sabertusk|r
.turnin 50178,1 
.mob Feathered Viper
.mob Feathered Viper Egg
.mob Wild Sabertusk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.goto 862,63.49,16.15
.turnin 47586 >>Turn in Hunting the Hunter
.accept 47587 >>接任务: |cRXP_WARN_猎头者乔|r
.target Hemet Nesingwary
step
.goto 862,62.96,15.81
>>在外面杀死|cRXP_ENEMY_Headhunter Jo|r
.complete 47587,1 
.mob Headhunter Jo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.goto 862,63.49,16.15
.turnin 47587 >>Turn in Headhunter Jo
.target Hemet Nesingwary
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lasa the Galerider|r
.goto 862,63.88,18.27,20,0
.goto 862,66.19,17.60
.fly The Great Seal >>Fly to The Great Seal
.target Lasa the Galerider
step
#completewith next
.isQuestTurnedIn 49905
.goto 1165,49.93,42.24,10,0
.goto 1164,37.75,71.70,10,0
.goto 1164,20.56,72.09,5 >>乘电梯到|cRXP_FRIENDLY_King Rastakhan|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r, |cRXP_FRIENDLY_Zolani|r, and |cRXP_FRIENDLY_Yazma|r
.turnin 49663 >>Turn in False Prophecies
.goto 1165,49.93,46.62
.accept 50835 >>接任务: |cRXP_WARN_赞达拉港|r
.goto 1165,49.82,46.55
.accept 47445 >>接任务: |cRXP_WARN_赞枢利议会|r
.goto 1165,49.73,46.51
.target King Rastakhan
.target Zolani
.target Yazma
step
#completewith next
.goto 1165,48.58,42.83,20,0
.goto 1165,48.51,37.82,15,0
.goto 1165,47.79,37.53,15,0
.goto 1165,46.97,37.19,15,0
.goto 1165,45.20,37.20,15,0
.goto 1165,45.22,31.83,20,0
.goto 1165,42.19,26.22,20 >>|cRXP_WARN_按箭头操作|r小心地跳下达扎勒。小心跌落损坏
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.goto 1165,45.26,24.02
.turnin 47445 >>Turn in The Zanchuli Council
.accept 47423 >>接任务: |cRXP_WARN_违禁行为|r
.target Wardruid Loti
step
.goto 1165,47.30,21.67,30,0
.goto 1165,48.09,20.82,30,0
.goto 1165,48.92,18.10,30,0
.goto 1165,49.84,17.92,30,0
.goto 1165,50.31,15.00,30,0
.goto 1165,50.40,13.00,30,0
.goto 1165,50.65,10.74,30,0
.goto 1165,51.65,10.35,30,0
.goto 1165,47.30,21.67
.complete 47423,1 
>>使用|T13600:0|t[Loti‘s Totem]靠近|cRXP_FRIENDLY_Zanchuli Acolytes|r来展示它们
.use 152627
.target Zanchuli Acolyte
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r
.goto 1165,51.90,11.89
.turnin 47423 >>Turn in Forbidden Practices
.accept 47433 >>接任务: |cRXP_WARN_以攻为守|r
.target Hexlord Raal
step
>>Mount|cRXP_FRIENDLY_Ata the Windlord|r
.goto 1165,53.20,11.63
.complete 47433,2 
.target Ata the Windlord
step
>>在发光的圆圈上使用|T136232:0|t[先知图腾]（1）。确保缩小并环顾四周
*|cRXP_WARN_The first one is directly below the starting position|r
.complete 47433,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.goto 1165,46.21,19.25
.turnin 47433 >>Turn in Offensively Defensive
.accept 47435 >>接任务: |cRXP_WARN_翼手龙患|r
.accept 47434 >>接任务: |cRXP_WARN_限制令|r
.target Wardruid Loti
step
.goto 1165,42.88,19.90,30,0
.goto 1165,41.91,16.04,30,0
.goto 1165,40.91,15.02,30,0
.goto 1165,38.59,15.73,30,0
.goto 1165,38.35,10.85,30,0
.goto 1165,39.42,14.08,30,0
.goto 1165,42.88,19.90
>>运行|cRXP_FRIENDLY_Hatchlings|r以清除它们。杀死|cRXP_ENEMY_狂暴的Pterrordax|r
.complete 47434,1 
.complete 47435,1 
.mob Bloodraged Pterrordax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r
.goto 1165,40.92,11.33
.turnin 47435 >>Turn in Pterrortorial Dispute
.turnin 47434 >>Turn in Restraining Order
.accept 47437 >>接任务: |cRXP_WARN_信仰之争|r
.target Hexlord Raal
step
>>杀死大楼内的|cRXP_ENEMY_Guardians|r
.complete 47437,1 
.goto 1167,65.69,69.07
.complete 47437,2 
.goto 1167,36.71,25.13,15,0
.goto 1167,43.96,14.80,15,0
.goto 1167,43.47,33.73,15,0
.goto 1166,65.91,30.73
.mob Guardian of the Tombs
.mob Guardian of the Rites
step
>>杀死|cRXP_ENEMY_亡灵守护者|r
.complete 47437,3 
.goto 1166,66.62,69.40,15,0
.goto 1166,78.58,86.53,15,0
.goto 1165,44.29,16.71
.mob Guardian of the Dead
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t爬上金字塔，与|cRXP_FRIENDLY_Wardruid Loti|r交谈
.goto 1165,46.06,15.65,14,0
.goto 1165,46.11,13.07
.turnin 47437 >>Turn in Competitive Devotion
.accept 47422 >>接任务: |cRXP_WARN_恐怖事态|r
step
>>杀死|cRXP_ENEMY_Dregada|r
.goto 1165,43.64,7.39
.complete 47422,1 
.mob Dregada
step
.isQuestAvailable 47438
#completewith next
+|cRXP_WARN_请完全按照航路点和说明进行操作，并在下一个任务中选择|cRXP_FRIENDLY_Pterrodax|r而不是|cRXP_ENEMY_Raptor|r。禁用其他自动提交任务的加载项。|r
step
.isQuestAvailable 47438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.turnin 47422 >>Turn in Dire Situation
.accept 47438 >>接任务: |cRXP_WARN_选择神灵|r
.goto 1165,42.30,9.10
.target Wardruid Loti
step
.isQuestAvailable 47438
#completewith next
+|cRXP_WARN_请完全按照航路点和说明进行操作，并在下一个任务中选择|cRXP_FRIENDLY_Pterrodax|r而不是|cRXP_ENEMY_Raptor|r。禁用其他自动提交任务的加载项。|r
step
.isQuestAvailable 47438
>>单击|cRXP_FRIENDLY_Pa'ku|r选择她
.complete 47438,1 
.goto 1165,42.61,9.21
.target Pa'ku
step
.isQuestTurnedIn 47443
>>|cRXP_WARN_你选择了错误的loa，重新接受任务并选择翼龙。如果你已经意外地完成了任务，跳过这一步。|r
.abandon 47438
step
.isQuestAvailable 47438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.accept 47438 >>接任务: |cRXP_WARN_选择神灵|r
.goto 1165,42.30,9.10
.target Wardruid Loti
step
.isQuestAvailable 47438
>>单击|cRXP_FRIENDLY_Pa'ku|r选择她
.complete 47438,1 
.goto 1165,42.61,9.21
.target Pa'ku
step
.isQuestTurnedIn 47436
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.turnin 47438 >>Turn in Picking a Side
.goto 1165,42.30,9.10
.target Wardruid Loti
step
.isQuestTurnedIn 47436
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raa|r
.accept 47440 >>接任务: |cRXP_WARN_风之主宰帕库|r
.goto 1165,42.54,9.49
.target Hexlord Raa
step
.isQuestTurnedIn 47443
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.goto 1165,42.30,9.10
.accept 47439 >>接任务: |cRXP_WARN_兽群主宰贡克|r
.target Wardruid Loti
step
.isQuestTurnedIn 47443
#completewith next
.goto 1165,42.27,9.47,1 >>Run through the |cRXP_PICK_Totem of Gonk|r to gain his buff. The buff reduces your falling damage and increases your movement speed
.goto 1165,40.51,9.40,15,0
.goto 1165,37.95,11.25,20,0
.goto 1165,36.28,7.99,25 >>往下跳
step
.isQuestTurnedIn 47443
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gonk|r
.goto 862,48.18,32.27
.skipgossip
.complete 47439,1 
.target Gonk
step
.isQuestTurnedIn 47443
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Paku'ai Rip'nata|r
.goto 862,48.05,28.70,20,0
.goto 862,48.56,26.87,20,0
.goto 862,49.72,26.27
.fly The Great Seal >>Fly to The Great Seal
.target Paku'ai Rip'nata
step
.isQuestTurnedIn 47443
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntmaster Kil'ja|r
.accept 49768 >>Accept Nesingwary's Trek
.goto 1165,52.00,41.39
.target Huntmaster Kil'ja
step
.isQuestTurnedIn 47443
#completewith next
.goto 1165,50.49,40.70,10 >>运行|cRXP_PICK_Gonk图腾|r以获得他的buff
step
.isQuestTurnedIn 47443
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t跳下来与|cRXP_FRIENDLY_Wardruid Loti|r交谈
.goto 1165,49.92,33.42
.turnin 47439 >>Turn in Gonk, Lord of the Pack
.accept 48897 >>接任务: |cRXP_WARN_陷入僵局|r
.target Wardruid Loti
step
.isQuestTurnedIn 47443
#completewith Hatchling
.cast 6478 >>点击|cRXP_PICK_Gonk|r祭坛获得被动伤害增益
.goto 1165,49.92,33.10
step
.isQuestTurnedIn 47443
#completewith Hatchling
.itemcount 109076,<1
.goto 1165,52.27,32.40,18,0
.goto 1165,54.56,32.10,20,0
.goto 1165,58.14,26.43,25,0
.goto 1165,58.40,18.28,25,0
.goto 1165,61.83,35.70,25 >>Follow the arrow down
step
.isQuestTurnedIn 47443
#completewith next
.itemcount 109076,1
.use 109076
.cast 126389 >>使用哥布林滑翔机套件向下滑翔到任务
step
.isQuestTurnedIn 47443
#label Hatchling
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Direhorn Hatchling|r
.goto 862,65.66,41.35
.accept 47226 >>接任务: |cRXP_WARN_孤儿幼崽|r
.target Direhorn Hatchling
step
.isOnQuest 47440
>>坐骑|cRXP_FRIENDLY_Ata the Wingflord|r
.goto 1165,42.51,10.05
.complete 47440,1 
.target Ata the Winglord
step
.isQuestTurnedIn 47436
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pa'ku|r
.goto 862,71.31,48.67,15,0
.goto 862,71.52,49.40
.complete 47440,2 
.target Pa'ku
step
.isQuestTurnedIn 47436
#completewith next
+如果您希望节省时间，请打开计算机上的战网客户端
step
.isQuestTurnedIn 47436
.goto 862,71.78,49.24,12,0
.goto 862,72.1,49.5
>>顺着箭头走下悬崖
.complete 47440,3 
.timer 52,Flight Duration
step
.isQuestTurnedIn 47436
#completewith next
+在战网客户端上按“播放”打开第二个魔兽世界客户端。不要关闭你的第一个客户。登录您的第二个客户端，等待您可以移动，然后关闭您的第一个客户端
step
.isQuestTurnedIn 47436
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r
.goto 1165,49.92,33.41
.turnin 47440 >>Turn in Pa'ku, Master of Winds
.accept 47432 >>接任务: |cRXP_WARN_陷入僵局|r
.target Hexlord Raal
step
.isQuestTurnedIn 47436
#completewith next
.cast 6478 >>点击帕库的|cRXP_PICK_Altar|r获得移动速度buff
.goto 1165,49.92,33.10
step
.isQuestTurnedIn 47436
#completewith next
.vehicle 131154 >>点击帕库的|cRXP_PICK_Totem|r
.goto 1165,49.54,32.83
.target Totem of Pa'ku
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntmaster Kil'ja|r
.accept 49768 >>Accept Nesingwary's Trek
.goto 1165,52.00,41.39
.target Huntmaster Kil'ja
step << !DemonHunter
.isQuestTurnedIn 47436
#completewith TotemPaku1
.goto 1165,51.12,40.45,15,0
.goto 1165,51.35,37.81,15,0
.goto 1165,52.96,37.08,15,0
.goto 1165,54.54,35.71,20,0
.goto 1165,58.28,35.06,25,0
.goto 1165,58.30,32.63,40 >>Travel down Dazar'alor
.itemcount 109076,<1
step
.isQuestTurnedIn 47436
#completewith next
.cast 126389 >>从金王座顶部使用哥布林滑翔机套件向下滑翔
.use 109076
.itemcount 109076,1
step
.isQuestTurnedIn 47436
#label TotemPaku1
#completewith Hatchling2
.goto 1165,58.30,32.63
.vehicle 131154 >>点击帕库的|cRXP_PICK_Totem|r
.timer 11,Pa'ku Flight
.itemcount 109076,<1
.target Totem of Pa'ku
step
#label Hatchling2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Direhorn Hatchling|r
.goto 862,65.66,41.35
.accept 47226 >>接任务: |cRXP_WARN_孤儿幼崽|r
.target Direhorn Hatchling
step
.goto 862,66.57,40.25,20,0
.goto 862,66.69,40.94,10,0
.goto 862,66.81,42.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beastlord L'kala|r
.turnin 47226 >>Turn in The Orphaned Hatchling
.accept 47259 >>接任务: |cRXP_WARN_照料恐角龙|r
.accept 48527 >>接任务: |cRXP_WARN_贪食恶兽|r
.target Beastlord L'kala
step
#completewith DirehornD
.goto 862,66.56,42.35
.home >>将您的炉石设置为Beastcaller Inn
step
#completewith next
>>杀死|cRXP_ENEMY_刺激性Diemetradon|r
.goto 862,68.35,45.75,0,0
.complete 48527,1 
.mob Irritable Diemetradon
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Soothing Lilybuds|r
*When the plant keeps glowing you have to click it again
.goto 862,68.09,43.42,6,0
.goto 862,68.70,43.99,6,0
.goto 862,68.96,44.07,6,0
.goto 862,69.90,44.22,6,0
.goto 862,69.53,44.95,6,0
.goto 862,69.20,45.51,6,0
.goto 862,68.88,45.34,6,0
.goto 862,68.65,44.48,6,0
.goto 862,68.11,44.31,6,0
.complete 47259,1 
step
.goto 862,69.04,47.68,30,0
.goto 862,69.61,44.45,30,0
.goto 862,68.96,43.89
>>杀死|cRXP_ENEMY_易激Diemetradons|r
.complete 48527,1 
.mob Irritable Diemetradon
step
#label DirehornD
#requires ZuldazarIrritableDiemetraden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beastlord L'kala|r and |cRXP_FRIENDLY_Trader Alexxi|r
.turnin 47259 >>Turn in Direhorn Daycare
.turnin 48527 >>Turn in Ravenous Landsharks
.accept 47311 >>接任务: |cRXP_WARN_头槌基础教程|r
.goto 862,66.81,42.51
.accept 47272 >>接任务: |cRXP_WARN_恐角龙生长素|r
.goto 862,66.81,42.58
.target Beastlord L'kala
.target Trader Alexxi
step
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_PICK_Poster|r and |cRXP_FRIENDLY_Wingrider Nivek|r
.accept 51980 >>接任务: |cRXP_WARN_通缉：加布拉坎|r
.goto 862,69.07,40.85
.accept 47312 >>接任务: |cRXP_WARN_翎后|r
.goto 862,69.02,40.69
.target Wingrider Nivek
step
#completewith next
>>|cRXP_WARN_在|cRXP_ENEMY_Savagemane Ravasaurs|r和|cRXX_ENEMY_Invasive Eggsnaptcher|r上使用[ExtraActionButton]ON COOLDOWN|r
>>在地面上掠夺|cRXP_PICK_Steaming Fresh Carrions |r
.complete 47311,1 
.complete 47272,1 
.mob Savagemane Ravasaur
.mob Invasive Eggsnatcher
step
>>杀死|cRXP_ENEMY_Queenweather |r。为她掠夺她|cRXX_Loot_plux|r
.goto 862,71.14,40.26
.complete 47312,1 
.mob Queenfeather
step
#loop
.line 862,71.36,41.35,71.40,40.68,70.72,39.81,70.76,39.47,70.48,38.95,70.00,39.24,70.00,40.50,70.13,40.39,70.53,40.62,70.82,40.94,71.36,41.35
.goto 862,71.36,41.35,30,0
.goto 862,71.40,40.68,30,0
.goto 862,70.72,39.81,30,0
.goto 862,70.76,39.47,30,0
.goto 862,70.48,38.95,30,0
.goto 862,70.00,39.24,30,0
.goto 862,70.00,40.50,30,0
.goto 862,70.13,40.39,30,0
.goto 862,70.53,40.62,30,0
.goto 862,70.82,40.94,30,0
.goto 862,71.36,41.35,30,0
>>|cRXP_WARN_在|cRXP_ENEMY_Savagemane Ravasaurs|r和|cRXX_ENEMY_Invasive Eggsnaptcher|r上使用冷却时的额外操作按钮|r
>>在地面上掠夺|cRXP_PICK_Steaming Fresh Carrions |r
.complete 47311,1 
.complete 47272,1 
.mob Savagemane Ravasaur
.mob Invasive Eggsnatcher
step
.goto 862,67.07,37.11
>>杀死|cRXP_ENEMY_Jabra'kan|r.|cRXP-WARN_远离他向你投掷的陷阱和他的Volley|r造成的锥形伤害
.complete 51980,1 
.mob Jabra'kan the Poacher
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wingrider Nivek|r
.goto 862,69.02,40.69
.turnin 51980 >>Turn in WANTED: Jabra'kan
.turnin 47312 >>Turn in Queenfeather
.target Wingrider Nivek
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beastlord L'kala|r, |cRXP_FRIENDLY_Trader Alexxi|r, then |cRXP_FRIENDLY_L'kala|r again
.turnin 47311 >>Turn in Headbutting 101
.goto 862,66.81,42.51
.turnin 47272 >>Turn in Direhorn Growth Hormone
.accept 51998 >>接任务: |cRXP_WARN_DGH：添加真正的恐角龙成分|r
.goto 862,66.81,42.58
.accept 51990 >>接任务: |cRXP_WARN_兽栏猛禽|r
.goto 862,66.81,42.51
.target Beastlord L'kala
.target Trader Alexxi
step
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
step
#completewith ZuldazarNearlyHatchungEgg
>>杀死|cRXP_ENEMY_Pterrordax Skyrenders|r和|cRXP_ENEMY_Wild Pterrocks|r。掠夺它们的|cRXD_Loot_prof肉|r
.complete 51998,1 
.mob Pterrordax Skyrender
.mob Wild Pterrorchick
step
#completewith next
.goto 862,67.05,36.42,30,0
.goto 862,66.80,36.17,20 >>沿着路径运行到Skyrender Eyrie
step
#title Egg 1
.goto 862,66.77,35.52
>>将|cRXP_PICK_Egg|r洗劫一空
.complete 51990,1,1 
step
#title Egg 2
.goto 862,66.95,34.98
>>将|cRXP_PICK_Egg|r洗劫一空
.complete 51990,1,2 
step
#title Egg 3
.goto 862,67.05,34.47
>>将|cRXP_PICK_Egg|r洗劫一空
.complete 51990,1,3 
step
#title Egg 4
.goto 862,67.01,33.87
>>将|cRXP_PICK_Egg|r洗劫一空
.complete 51990,1,4 
step
#title Egg 5+6
.goto 862,66.81,33.98,-1
.goto 862,66.85,34.10,-1
>>将|cRXP_PICK_Egg|r洗劫一空
.complete 51990,1,6 
step
#label ZuldazarNearlyHatchungEgg
#title Egg 7+8
.goto 862,66.71,34.50
>>将|cRXP_PICK_Egg|r洗劫一空
.complete 51990,1 
step
.goto 862,66.02,32.86,40,0
.goto 862,67.71,31.93,40,0
.goto 862,66.77,35.52
>>杀死|cRXP_ENEMY_Pterrordax Skyrenders|r和|cRXP_ENEMY_Wild Pterrocks|r。掠夺它们的|cRXD_Loot_prof肉|r
.complete 51998,1 
.mob Pterrordax Skyrender
.mob Wild Pterrorchick
step
#completewith next
.goto 862,65.81,34.78,25,0
.goto 862,64.83,34.99,25,0
.goto 862,63.79,35.11,50 >>往下跳 the cliffs
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回战兽克拉尔。与|cRXP_FRIENDLY_Beastlond L'kala|r和|cRXP_FRIENDLY_Trader Alexxi|r交谈
.turnin 51990 >>Turn in Wings for the Kraal
.goto 862,66.81,42.51
.turnin 51998 >>Turn in DGH: Now With Real Direhorn
.goto 862,66.81,42.58
.target Beastlord L'kala
.target Trader Alexxi
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Paku'ai Verraki|r
.goto 862,67.26,43.03
.fly Port of Zandalar >>Fly to Port of Zandalar
.target Paku'ai Verraki
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r and |cRXP_FRIENDLY_Yazma|r
.turnin 50835 >>Turn in The Port of Zandalar
.accept 46926 >>接任务: |cRXP_WARN_整顿港口|r
.goto 1165,50.06,85.07
.accept 46846 >>接任务: |cRXP_WARN_祖尔之语|r
.goto 1165,50.05,84.76
.target Zolani
.target Yazma
step
#completewith ZuldazarDocksideThugs
.goto 1165,47.83,87.31,0
>>杀死|cRXP_ENEMY_Gurubash|r、|cRXD_ENEMY_Amani|r和|cRXP_ENEMY_Sandfury Thugs|r
.complete 46926,1 
.mob Gurubashi Thug
.mob Amani Thug
.mob Sandfury Thug
step
.goto 1165,51.52,91.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nokali|r. |cRXP_WARN_Do NOT go downstairs.|r
.skipgossip
.complete 46846,1 
.target Nokali
step
#completewith next
.goto 1165,53.48,90.62,20 >>从墙上的缝隙跳下来
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volkini|r
.goto 1165,53.89,91.20
.skipgossip
.complete 46846,2 
.target Volkini
step
#completewith next
.goto 1165,56.03,89.72,20 >>Go under the overhang
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scrollsage Rooka|r
.goto 1165,55.95,88.83
.accept 48404 >>接任务: |cRXP_WARN_街头无赖|r
.target Scrollsage Rooka
step
#completewith next
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_FRIENDLY_Street Scamps|r. |cRXP_WARN_Be careful as they vanish after a few seconds|r
*You can find some at the waypoint marks on your minimap but they run around everywhere
.goto 1165,51.65,93.32,0
.goto 1165,49.19,89.77,0
.goto 1165,52.30,82.86,0
.goto 1165,48.74,89.43,0
.goto 1165,49.19,89.77,10,0
.complete 48404,1 
.target Street Scamp
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Cobo|r
.goto 1165,45.31,79.78
.skipgossip
.complete 46846,3 
.target Dockmaster Cobo
step
#label ZuldazarDocksideThugs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jala|r
.goto 1165,44.25,82.15
.accept 48452 >>接任务: |cRXP_WARN_鲜血集市|r
.target Witch Doctor Jala
step
#completewith next
>>杀死|cRXP_ENEMY_Crimson邪教分子|r。掠夺他们的|cRXD_Loot_黑暗崇拜物|r
.complete 48452,1 
.mob Crimson Cultist
step
>>|cRXP_WARN_上车时一定要往下跳，否则你的宠物会拉到所有东西|r << Hunter/Warlock
>>|TInterface/GossipFrame/HealerGossipIcon:0|t往下跳 below, then go inside the building. Click the |cRXP_PICK_Chalice of Calling|r
.goto 1165,42.76,83.64,12,0
.goto 1165,43.13,83.07
.complete 48452,2 
step
.goto 1165,41.82,82.83,30,0
.goto 1165,41.67,77.10,30,0
.goto 1165,43.13,83.07
>>杀死|cRXP_ENEMY_Crimson邪教分子|r。掠夺他们的|cRXD_Loot_黑暗崇拜物|r
.complete 48452,1 
.mob Crimson Cultist
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jala|r
.goto 1165,44.25,82.15
.turnin 48452 >>Turn in The Red Market
.accept 48454 >>接任务: |cRXP_WARN_邪恶罪证|r
.target Witch Doctor Jala
step
#completewith next
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_FRIENDLY_Street Scamps|r. |cRXP_WARN_Be careful as they vanish after a few seconds|r
*You can find some at the waypoint marks on your minimap but they run around everywhere
.goto 1165,51.65,93.32,0
.goto 1165,49.19,89.77,0
.goto 1165,52.30,82.86,0
.goto 1165,48.74,89.43,0
.complete 48404,1 
.target Street Scamp
step
.goto 1165,45.31,80.04,30,0
.goto 1165,47.52,87.26,30,0
.goto 1165,46.97,89.89,30,0
.goto 1165,48.45,83.77,30,0
.goto 1165,45.31,80.04
>>杀死|cRXP_ENEMY_Gurubash|r、|cRXD_ENEMY_Amani|r和|cRXP_ENEMY_Sandfury Thugs|r
.complete 46926,1 
.mob Gurubashi Thug
.mob Amani Thug
.mob Sandfury Thug
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r and |cRXP_FRIENDLY_Yazma|r
.turnin 46926 >>Turn in Shakedown
.turnin 48454 >>Turn in Evidence of Evil
.accept 46929 >>接任务: |cRXP_WARN_威慑|r
.goto 1165,50.06,85.07
.turnin 46846 >>Turn in The Word of Zul
.accept 46927 >>接任务: |cRXP_WARN_塔阿曼的惩罚|r
.accept 46928 >>接任务: |cRXP_WARN_塔尔法拉克的惩罚|r
.goto 1165,50.05,84.76
.target Zolani
.target Yazma
step
#completewith Gong
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_FRIENDLY_Street Scamps|r. |cRXP_WARN_Be careful as they vanish after a few seconds|r
*You can find some at the waypoint marks on your minimap but they run around everywhere
.goto 1165,51.65,93.32,0
.goto 1165,49.19,89.77,0
.goto 1165,52.30,82.86,0
.goto 1165,48.74,89.43,0
.goto 1165,52.08,83.02,15,0
.goto 1165,50.02,89.97,0,0
.complete 48404,1 
.target Street Scamp
step
#completewith GahzRagon
.goto 1165,48.39,77.83,40,0
>>杀死|cRXP_ENEMY_Sandfury巨魔|r。掠夺它们的|cRXX_Loot_头|r
.complete 46929,2 
.mob Sandfury Axe Thrower
.mob Sandfury Axe Dunerider
.mob Sandfury Axe Speaker
step
#label Gong
#completewith next
.goto 1165,46.61,73.87
.cast 3365 >>点击|cRXP_PICK_Ancient Gong|r召唤|cRXP-ENEMY_Gahz'ragon|r
step
#label GahzRagon
.goto 1165,46.63,72.61
>>杀死|cRXP_ENEMY_Gahz'ragon|r。掠夺他的|cRXP_Loot_tunes|r
.complete 46928,1 
.mob Gahz'ragon
step
.goto 1165,46.61,70.64,40,0
.goto 1165,47.71,72.37,40,0
.goto 1165,45.82,77.73,40,0
.goto 1165,48.39,77.83
>>杀死|cRXP_ENEMY_Sandfury巨魔|r。掠夺它们的|cRXX_Loot_头|r
.complete 46929,2 
.mob Sandfury Axe Thrower
.mob Sandfury Axe Dunerider
.mob Sandfury Axe Speaker
step
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
step
.goto 1165,51.74,77.65,40,0
.goto 1165,54.22,79.81,40,0
.goto 1165,57.31,80.80
>>杀死|cRXP_ENEMY_Amani巨魔|r。掠夺它们的|cRXX_Loot_heads|r
.complete 46929,1 
.mob Amani Warrior
step
#completewith next
.goto 1165,56.19,87.53
.cast 3365 >>点击|cRXP_PICK_Ancient Gong|r召唤一名|cRXP_ENEMY_Amani弟子|r
step
>>杀死|cRXP_ENEMY_Amani弟子|r
*|cRXP_WARN_Don't use the gong too fast. Sometimes it can bug and you have to wait for around 2 minutes until you can interact with the gong again|r
.goto 1165,56.04,86.88
.complete 46927,1,1 
.mob Disciple of Akil'zon
.mob Disciple of Nalorakk
.mob Disciple of Jan'alai
.mob Disciple of Halazzi
step
#completewith next
.goto 1165,56.19,87.53
.cast 3365 >>点击|cRXP_PICK_Ancient Gong|r召唤一名|cRXP_ENEMY_Amani弟子|r
step
>>杀死|cRXP_ENEMY_Amani弟子|r
*|cRXP_WARN_Don't use the gong too fast. Sometimes it can bug and you have to wait for around 2 minutes until you can interact with the gong again|r
.goto 1165,56.04,86.88
.complete 46927,1,2 
.mob Disciple of Akil'zon
.mob Disciple of Nalorakk
.mob Disciple of Jan'alai
.mob Disciple of Halazzi
step
#completewith next
.goto 1165,56.19,87.53
.cast 3365 >>点击|cRXP_PICK_Ancient Gong|r召唤一名|cRXP_ENEMY_Amani弟子|r
step
>>杀死|cRXP_ENEMY_Amani弟子|r
*|cRXP_WARN_Don't use the gong too fast. Sometimes it can bug and you have to wait for around 2 minutes until you can interact with the gong again|r
.goto 1165,56.04,86.88
.complete 46927,1,3 
.mob Disciple of Akil'zon
.mob Disciple of Nalorakk
.mob Disciple of Jan'alai
.mob Disciple of Halazzi
step
#completewith next
.goto 1165,56.19,87.53
.cast 3365 >>点击|cRXP_PICK_Ancient Gong|r召唤一名|cRXP_ENEMY_Amani弟子|r
step
>>杀死|cRXP_ENEMY_Amani弟子|r
*|cRXP_WARN_Don't use the gong too fast. Sometimes it can bug and you have to wait for around 2 minutes until you can interact with the gong again|r
.goto 1165,56.04,86.88
.complete 46927,1 
.mob Disciple of Akil'zon
.mob Disciple of Nalorakk
.mob Disciple of Jan'alai
.mob Disciple of Halazzi
step
#completewith Rooka
.goto 1165,54.41,87.92,25 >>抄近路跳下去
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_FRIENDLY_Street Scamps|r. |cRXP_WARN_Be careful as they vanish after a few seconds|r
.goto 1165,51.65,93.32,30,0
.goto 1165,49.19,89.77,30,0
.goto 1165,52.30,82.86,30,0
.goto 1165,48.74,89.43,30,0
.goto 1165,51.65,93.32,30,0
.goto 1165,49.19,89.77,30,0
.goto 1165,52.30,82.86,30,0
.goto 1165,48.74,89.43
.complete 48404,1 
.target Street Scamp
step
#label Rooka
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scrollsage Rooka|r
.goto 1165,56.25,89.70,15,0
.goto 1165,55.95,88.83
.turnin 48404 >>Turn in The Scamps
.accept 48405 >>接任务: |cRXP_WARN_好人先生|r
.target Scrollsage Rooka
step
>>|cRXP_WARN_爬起来，顺着箭头走。不要和任何人说话|r
.goto 1165,59.06,90.73,12,0
.goto 1165,59.11,88.71,12,0
.goto 1165,57.21,87.77
.complete 48405,1 
step
.goto 1165,57.20,87.39
>>杀死|cRXP_ENEMY_Mista Nice|r。|cRXP_WARN_移出他放置的巫毒图腾|r
.complete 48405,2 
.mob Mista Nice
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t再跳下去。与|cRXP_FRIENDLY_Scrollsage Rooka|r交谈
.goto 1165,55.95,88.83
.turnin 48405 >>交任务: |cRXP_FRIENDLY_密斯特|ra Nice
.target Scrollsage Rooka
step
#completewith Treasures
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavesinger De'zan|r to take a boat to Seeker's Outpost
.goto 1165,52.83,95.78
.vehicle 133540 >>探索者的前哨船之旅
.timer 59,Seeker's Outpost RP
.target Wavesinger De'zan
step
#label Treasures
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koba|r and |cRXP_FRIENDLY_Batu|r
.accept 49285 >>接任务: |cRXP_WARN_小小宝藏|r
.goto 862,70.27,65.02
.accept 49284 >>接任务: |cRXP_WARN_喜讯传来|r
.goto 862,70.28,64.95,12,0
.goto 862,70.49,65.18,12,0
.goto 862,70.56,64.98,12,0
.goto 862,70.69,65.30,12,0
.target Koba
.target Batu
step
#completewith ClueThree
>>杀死|cRXP_ENEMY_Murlocs|r并在|cRXP_FRIENDLY_Tadpoles|r上运行以恐吓它们
.complete 49315,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tSearch the |cRXP_PICK_Bag|r under the tree
.goto 862,71.19,64.58
.complete 49284,1 
step
>>掠夺|cRXP_PICK_cage|r
.goto 862,71.66,64.15
.complete 49285,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tSearch the |cRXP_PICK_Scroll|r against the tree
.goto 862,72.65,63.05
.complete 49284,2 
step
>>地面上的织机|cRXP_PICK_Spitzy|r
.goto 862,73.10,64.81
.complete 49285,3 
step
>>掠夺漂浮在水面上的|cRXP_PICK_炼金师之石|r
.goto 862,73.19,67.22
.complete 49285,2 
step
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
step
#label ClueThree
>>|TInterface/GossipFrame/HealerGossipIcon:0|tSearch the |cRXP_PICK_Scroll Case|r
.goto 862,74.02,62.08
.complete 49284,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choa|r and |cRXP_FRIENDLY_Deyon|r
.goto 862,73.68,60.99
.turnin 49285 >>Turn in Tiny Treasures
.turnin 49284 >>Turn in Perfect Tidings
.accept 49286 >>接任务: |cRXP_WARN_笼中智计|r
.target Choa
.target Deyon
step
>>进入洞穴。杀死|cRXP_ENEMY_Sil'thrus|r。抢走他的|cRXX_Loot_key|r
.goto 862,73.66,60.49,20,0
.goto 862,74.60,59.34
.complete 49286,1 
.mob Sil'thrus
step
.goto 862,73.68,60.99
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_cage|r, then talk to |cRXP_FRIENDLY_Deyon|r
.complete 49286,2 
.turnin 49286 >>Turn in Caged Wisdom
.accept 49287 >>接任务: |cRXP_WARN_失踪的龟群|r
.accept 49288 >>接任务: |cRXP_WARN_卷轴猎手|r
.target Deyon
step
#completewith TortollanScrolls
>>杀死|cRXP_ENEMY_Murlocs|r和|cRXX_ENEMY_Nagas|r。在|cRXP_FRIENDLY_Tadpoles|r上运行以恐吓它们
.complete 49315,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Nazeshi Tempest Wielders|r。掠夺他们的|cRXX_Loot_卷轴|r
.complete 49288,1 
.mob Nazeshi Tempest-Wielder
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_cages|r to free |cRXP_FRIENDLY_Kono|r, |cRXP_FRIENDLY_Rauloo|r, |cRXP_FRIENDLY_Akru|r, and |cRXP_FRIENDLY_Crosh|r
*|cRXP_WARN_DO NOT PULL Tidecaller Nezara, she is level 60|r
.complete 49287,1 
.goto 862,73.92,65.87
.complete 49287,2 
.goto 862,75.16,66.56
.complete 49287,3 
.goto 862,77.07,66.47
.complete 49287,4 
.goto 862,77.32,64.34
.unitscan Tidecaller Nezara
.target Kono
.target Rauloo
.target Akru
.target Crosh
step
#label TortollanScrolls
#loop
.line 862,77.44,63.72,76.80,64.28,76.10,65.58,76.61,65.68,76.48,65.95,76.13,66.67,74.99,66.58,74.73,66.00,74.41,66.54,74.19,65.91,73.75,66.40,73.80,65.68,74.13,65.03,74.63,65.16,77.44,63.72
.goto 862,77.44,63.72,45,0
.goto 862,76.80,64.28,45,0
.goto 862,76.10,65.58,45,0
.goto 862,76.61,65.68,45,0
.goto 862,76.48,65.95,45,0
.goto 862,76.13,66.67,45,0
.goto 862,74.99,66.58,45,0
.goto 862,74.73,66.00,45,0
.goto 862,74.41,66.54,45,0
.goto 862,74.19,65.91,45,0
.goto 862,73.75,66.40,45,0
.goto 862,73.80,65.68,45,0
.goto 862,74.13,65.03,45,0
.goto 862,74.63,65.16,45,0
.goto 862,77.44,63.72,45,0
>>杀死|cRXP_ENEMY_Nazeshi Tempest Wielders|r。掠夺他们的|cRXX_Loot_卷轴|r
.complete 49288,1 
.mob Nazeshi Tempest-Wielder
step
#loop
.line 862,77.44,63.72,76.80,64.28,76.10,65.58,76.61,65.68,76.48,65.95,76.13,66.67,74.99,66.58,74.73,66.00,74.41,66.54,74.19,65.91,73.75,66.40,73.80,65.68,74.13,65.03,74.63,65.16,77.44,63.72
.goto 862,77.44,63.72,45,0
.goto 862,76.80,64.28,45,0
.goto 862,76.10,65.58,45,0
.goto 862,76.61,65.68,45,0
.goto 862,76.48,65.95,45,0
.goto 862,76.13,66.67,45,0
.goto 862,74.99,66.58,45,0
.goto 862,74.73,66.00,45,0
.goto 862,74.41,66.54,45,0
.goto 862,74.19,65.91,45,0
.goto 862,73.75,66.40,45,0
.goto 862,73.80,65.68,45,0
.goto 862,74.13,65.03,45,0
.goto 862,74.63,65.16,45,0
.goto 862,77.44,63.72,45,0
>>杀死|cRXP_ENEMY_Murlocs|r和|cRXX_ENEMY_Nagas|r。在|cRXP_FRIENDLY_Tadpoles|r上运行以恐吓它们
.complete 49315,1 
step
.goto 862,75.22,61.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deyon|r
.turnin 49287 >>Turn in Lost Chelonians
.turnin 49288 >>Turn in Scrollhunters
.accept 49289 >>接任务: |cRXP_WARN_特别的石头|r
.target Deyon
step
#completewith next
.cast 262324 >>使用您的|T1392955:0|t[风暴控制卷轴]获得“风暴打击”能力，在她施放“来自下方的礼物”时造成更多伤害并眩晕她
.use 157539
step
>>在湖心石中掠夺|cRXP_PICK_Stone Fragment|r
>>杀死|cRXP_ENEMY_Tidemistress Nazesh|r。为她掠夺她|cRXX_Loot_orders|r
.complete 49289,2 
.goto 862,76.67,61.41
.complete 49289,1 
.goto 862,76.62,61.20,20,0
.goto 862,76.89,61.08,20,0
.goto 862,76.77,61.65
.mob Tidemistress Nazesh
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deyon|r. 等待RP事件
.goto 862,75.22,61.49
.turnin 49289 >>Turn in A Special Stone
.timer 12,A Special Stone RP
.accept 51407 >>接任务: |cRXP_WARN_寻找他们的文字|r
.target Deyon
step
>>接受门户|cRXP_FRIENDLY_Deyon|r传票。
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akru|r
.goto 862,75.19,61.46,-1
.goto 862,70.56,64.89
.turnin 51407 >>Turn in Find Their Words
.target Akru
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Scroll of Flight|r
.goto 862,70.45,65.30
.fly Port of Zandalar >>Fly to Port of Zandalar
.target Scroll of Flight
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yazma|r and |cRXP_FRIENDLY_Zolani|r
.turnin 46928 >>Turn in Punishment of Tal'farrak
.turnin 46927 >>Turn in Punishment of Tal'aman
.goto 1165,50.05,84.76
.turnin 46929 >>Turn in Deterrent
.accept 50881 >>接任务: |cRXP_WARN_皇家报告|r
.goto 1165,50.05,85.07
.target Yazma
.target Zolani
step
#completewith ZuldazarFalseProphecies
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Ripa the Wind Ripper|r
.goto 1165,52.09,90.10
.fly The Great Seal >>Fly to The Great Seal
.target Ripa the Wind Ripper
step
#completewith ZuldazarFalseProphecies
.isQuestTurnedIn 47436
.vehicle 131154 >>点击帕库的|cRXP_PICK_Totem|r
.goto 1165,51.37,40.95
.target Totem of Pa'ku
step
#completewith ZuldazarFalseProphecies
.isQuestTurnedIn 47443
.goto 1165,49.93,42.24,10,0
.goto 1164,37.75,71.70,10,0
.goto 1164,20.56,72.09,5 >>乘电梯到|cRXP_FRIENDLY_King Rastakhan|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Habutu|r. You may have to wait when you turned in the other quests first
.goto 1165,49.43,44.77,20,0
.goto 1165,50.03,46.54
.turnin 50881 >>Turn in Royal Report
.target Habutu
step
#label ZuldazarFalseProphecies
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.goto 1165,49.92,46.63
.turnin 47432 >>Turn in The Bargain is Struck
.turnin 49663 >>Turn in False Prophecies
.accept 49122 >>接任务: |cRXP_WARN_港口激战|r
.target King Rastakhan
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#group RestedXP Horde 10-60
#name 1部落德拉诺场景
#displayname Chapter 2 - Draenor Scenario
#next 2德拉诺部落驻军
#veteran
<< Horde
step
#completewith AcceptTheDarkPortal
+欢迎使用RestedXP退伍军人指南！它将引导你尽快达到60级|cRXP_WARN_ALWAYS阅读说明，尤其是橙色的|r。
step
.goto 1163,74.00,69.92
.zone 85 >>前往: |cRXP_PICK_杜隆塔尔|r















































step
#completewith next
>>|cRXP_WARN_Follow the arrow.|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Thrallmar Battlemage|r downstairs
.goto 85,54.81,89.85,8,0
.goto 85,54.64,87.10,8,0
.goto 85,56.03,86.99,8,0
.goto 85,57.14,90.69
.skipgossip 1
.zone 17 >>前往: |cRXP_PICK_诅咒之地|r
.target Thrallmar Mage
step
#label AcceptTheDarkPortal
.goto 17,54.93,50.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
.accept 36881 >>接任务: |cRXP_WARN_德拉诺之王：黑暗之门|r
.target Archmage Khadgar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r |cRXP_WARN_and accept the popup|r
.skipgossip 78423,1,1
.goto 17,54.93,50.26
.complete 36881,1 
.target Archmage Khadgar
step
.goto 577,54.79,48.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
.target Archmage Khadgar
.turnin 34398 >>交任务: |cRXP_FRIENDLY_德拉诺之王：黑暗之门|r
.accept 35933 >>接任务: |cRXP_WARN_艾泽拉斯最后的防线|r
step
>>杀死一名|cRXP_ENEMY_Iron Grunt|r。掠夺他获得|T133469:0|t[铁部落导弹]
.goto 577,52.76,43.25
.complete 35933,1 
step
>>你可能需要点击你的任务日志中的小地图下的任务。
.turnin 35933 >>Turn in Azeroth's Last Stand
.accept 34392 >>接任务: |cRXP_WARN_猛攻结束|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Fel Spire|r
.goto 577,51.03,42.00
.complete 34392,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Fel Spire|r
.goto 577,51.26,54.58
.complete 34392,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
.target Archmage Khadgar
.goto 577,52.98,48.30,30,0
.goto 577,54.70,48.25
.turnin 34392 >>Turn in Onslaught's End
.accept 34393 >>接任务: |cRXP_WARN_传送门的能量|r
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>Follow the arrow
.goto 577,54.92,45.03,8,0
.goto 577,54.93,46.13
.complete 34393,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Mark|r
.goto 577,56.02,46.32
.complete 34393,2 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Mark|r
.goto 577,57.26,48.18
.complete 34393,3 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Mark|r
.goto 577,56.07,50.20
.complete 34393,4 
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Stasis Rune|r on the ground
.goto 577,55.99,48.23
.complete 34393,5 
step
#completewith next
.goto 577,54.94,45.20,8 >>Leave the Prison
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
.target Archmage Khadgar
.goto 577,56.82,45.84,8,0
.goto 577,54.76,48.28
.turnin 34393 >>Turn in The Portal's Power
.accept 34420 >>接任务: |cRXP_WARN_战争的代价|r
step
.itemcount 132516,1
#completewith BlastedLandsTheDarkPortal
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
.target Archmage Khadgar
.goto 577,60.26,56.32
.turnin 34420 >>Turn in The Cost of War
.accept 34422 >>接任务: |cRXP_WARN_荣耀之焰|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿什卡兹|r, Korag
.goto 577,62.26,52.92
.accept 35241 >>接任务: |cRXP_WARN_为逝者复仇|r
.accept 34421 >>接任务: |cRXP_WARN_鲜血流尽|r
.target Ashka
.target Korag
step
#sticky
#label TanaanJungleIntroBleedingHollow
>>杀死侧面的|cRXP_ENEMY_流血的空心兽人|r
.goto 577,63.57,64.18,0,0
.complete 35241,1 
.mob Bleeding Hollow Savage
.mob Bleeding Hollow Berserker
.mob Bleeding Hollow Hatchet
step
>>使用|T132839:0|t[Lucifrium Bead]燃烧3|cRXP_PICK_huts|r
.use 113191
.goto 577,63.61,50.07
.complete 34422,1,3 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 577,65.74,54.21
.complete 34421,1 
step
>>使用|T132839:0|t[Lucifrium Bead]燃烧2|cRXP_PICK_huts|r
.use 113191
.goto 577,66.49,56.09
.complete 34422,1,5 
step
#completewith next
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 577,61.02,62.77,0
.complete 34421,2 
step
>>使用|T132839:0|t[Lucifrium Bead]烧掉丢失的|cRXP_PICK_huts|r
.use 113191
.goto 577,61.43,61.97,0,0
.complete 34422,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 577,61.02,62.77
.complete 34421,2 
step
#requires TanaanJungleIntroBleedingHollow
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r, Archmage Khadgar
.turnin 35241 >>Turn in Vengeance for the Fallen
.goto 577,71.94,62.08
.turnin 34422 >>Turn in Blaze of Glory
.turnin 34421 >>Turn in Bled Dry
.accept 34423 >>接任务: |cRXP_WARN_祭坛争斗|r
.goto 577,71.54,62.38
.target Thrall
.target Archmage Khadgar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿里乌克|r
.target Ariok
.goto 577,71.99,62.19
.skipgossip
.complete 34423,1 
step
>>Follow the arrow
.goto 577,76.98,58.04
.complete 34423,2 
step
#completewith next
.goto 577,79.22,57.04,8 >>上楼梯
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Blood Ritual Orb|r
.goto 577,79.22,57.04,8,0
.goto 577,78.64,53.38
.complete 34423,3,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|t往下跳 and interact with the |cRXP_PICK_Blood Ritual Orb|r
.goto 577,78.19,53.52
.complete 34423,3,2 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Blood Ritual Orb|r
*您可以跳过下一个过场（Esc->是）
.goto 577,76.68,53.87
.complete 34423,3 
step
>>过桥.
.goto 577,72.02,41.90
.complete 34423,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
.target Archmage Khadgar
.goto 577,71.95,40.47
.turnin 34423 >>Turn in Altar Altercation
.accept 34425 >>接任务: |cRXP_WARN_卡加萨训练场|r
.timer 30,Roleplay Duration
step
>>在航路点等待约30秒
.goto 577,73.03,38.11
.complete 34425,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
.target Archmage Khadgar
.goto 577,73.03,38.11
.turnin 34425 >>Turn in The Kargathar Proving Grounds
.accept 34427 >>接任务: |cRXP_WARN_潜在的盟友|r
step
>>在火灾附近使用|T252270:0|t[Fostfire Focus]
*Spam use the item if you have a bleed on you.
.use 110799
.goto 577,68.91,33.73
.complete 34427,1 
.timer 22,Wait for Farseer Drek'Thar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Drek'Thar|r and |cRXP_FRIENDLY_Archmage Khadgar|r
.turnin 34427 >>Turn in A Potential Ally
.goto 577,73.18,38.95
.accept 34429 >>接任务: |cRXP_WARN_兵来将挡|r
.goto 577,73.03,38.10
.target Farseer Drek'Thar
.target Archmage Khadgar
step
>>在航路点位置等待大约20秒
.goto 577,73.38,27.13
.complete 34429,1 
step
>>杀死|cRXP_ENEMY_破碎的护手器|r
.goto 577,73.37,27.40
.complete 34429,2,99 
.mob Shattered Hand Brawler
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>Follow the arrow
.goto 578,81.88,49.92
.complete 34429,3 
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Archmage Khadgar, |cRXP_FRIENDLY_萨尔|r, Luuka
.turnin 34429 >>Turn in Kill Your Hundred
.goto 578,81.31,50.26
.accept 34739 >>接任务: |cRXP_WARN_影月氏族|r
.goto 578,81.56,44.78
.accept 34737 >>接任务: |cRXP_WARN_暗影大师|r
.goto 578,82.90,44.35
.target Archmage Khadgar
.target Thrall
.target Luuka
step
#sticky
#label TanaanJungleIntroEnemyUmbralHalls
>>杀死|cRXP_ENEMY_虚空之狼|r，|cRXD_ENEMY_Shadowmoon仪式者|r或|cRXP_ENEMY_Shademoon虚空|r
.goto 578,56.93,51.91,0,0
.complete 34739,1 
.mob Void Wolf
.mob Shadowmoon Ritualist
.mob Shadowmoon Voidaxe
step
>>杀死|cRXP_ENEMY_Taskmaster Gurran|r
.goto 578,46.37,38.95,10,0
.goto 578,52.69,24.16
.complete 34737,2 
-mob Taskmaster Gurran
step
>>跳下去，顺着箭头走
.goto 578,53.52,19.81,4,0
.goto 578,45.59,15.27
.complete 34737,3 
step
.goto 578,45.20,15.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yrel|r
.target Yrel
.accept 34740 >>接任务: |cRXP_WARN_伊瑞尔|r
step
>>顺着箭头到护送地点
*After that you can ingore her
.goto 578,57.43,37.36,8,0
.goto 578,46.79,41.78,8,0
.complete 34740,1 
step
>>杀死|cRXP_ENEMY_Ungra|r
.goto 578,46.41,41.62,20,0
.goto 578,43.78,77.37
.complete 34737,1 
.mob Ungra
step
#requires TanaanJungleIntroEnemyUmbralHalls
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Olin Umberhide, Yrel, |cRXP_FRIENDLY_女伯爵莉亚德琳|r
.turnin 34739 >>Turn in The Shadowmoon Clan
.goto 578,51.19,46.86
.turnin 34740 >>Turn in Yrel
.goto 578,50.55,48.28
.turnin 34737 >>Turn in Masters of Shadow
.accept 34741 >>接任务: |cRXP_WARN_击碎者克里丹|r
.goto 578,50.13,48.25
.target Olin Umberhide
.target Yrel
.target Lady Liadrin
step
>>杀死|cRXP_ENEMY_Keli'dan|r
*|cRXP_WARN_Talent info some self healing or a pet before pulling him (without Heirlooms)|r. Hold your interrupt/stun for his ability 'Void Vacuum'.
*|cRXP_WARN_Drag him away from the totems otherwise he will deal a lot more damage|r
.goto 578,36.30,48.95
.complete 34741,1 
.mob Keli'dan the Breaker
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
.target Archmage Khadgar
.goto 577,49.53,14.46
.turnin 34741 >>Turn in Keli'dan the Breaker
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
.target Thrall
.goto 577,50.08,13.34
.accept 35005 >>接任务: |cRXP_WARN_准备作战|r
step
#completewith next
+贝莱德武器的最佳来源：
>>1） |cRXP_PICK_铁部落武器架|r
>>2） |cRXP_ENEMY_Blackrock锻造工人|r“携带武器”
step
>>拾取|cRXP_Pick_Blackrock武器|r
.goto 577,43.21,15.75,20,0
.goto 577,41.46,17.75,25,0
.goto 577,44.81,19.62,8,0
.goto 577,46.94,21.23,15,0
.goto 577,45.91,19.15
.complete 35005,1 
.mob Blackrock Forgeworker
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r, Cordana Felsong
.turnin 35005 >>Turn in Prepare for Battle
.goto 577,50.06,13.31
.accept 34439 >>接任务: |cRXP_WARN_锻炉大战|r
.goto 577,49.50,14.22
.target Thrall
.target Cordana Felsong
step
>>杀死区域内的|cRXP_ENEMY_Grunts|r和|cRXP-ENEMY_Ogrons|r
>>|cRXP_WARN_Focus on low HP mobs|r
.goto 577,44.13,15.06,30,0
.goto 577,43.21,19.33
.complete 34439,1 
.complete 34439,2 
.mob Blackrock Grunt
.mob Ogron Warcrusher
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Drek'Thar|r
.target Farseer Drek'Thar
.goto 577,43.04,26.37
.turnin 34439 >>Turn in The Battle of the Forge
.accept 34442 >>接任务: |cRXP_WARN_霜狼氏族的贾纳尔|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉瑟尔·重拳|r, Thaelin Darkanvil
.accept 34987 >>接任务: |cRXP_WARN_火药计谋|r
.goto 577,44.10,29.54
.target Hansel Heavyhands
.accept 34958 >>接任务: |cRXP_WARN_灭世者的阴影|r
.goto 577,44.07,29.69
.target Thaelin Darkanvil
step
#sticky
#label TanaanJungleIntroWorldbreakerSchematics
>>杀死该区域的|cRXP_ENEMY_orcs|r。掠夺它们以获取|cRXP_Loot_示意图|r
.goto 577,42.56,39.85,0,0
.complete 34958,1 
.mob Blackrock Laborer
.mob Blackrock Machinist
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ga'nar|r
.target Ga'nar
.goto 577,41.92,42.05
.turnin 34442 >>Turn in Ga'nar of the Frostwolf
.accept 34925 >>接任务: |cRXP_WARN_肃清钢铁王座|r
step
#completewith next
.goto 577,44.29,38.07,8 >>进入大楼
step
>>在楼下杀死|cRXP_ENEMY_Oversear Gotrigg|r。抢劫他以获取|cRXP_Loot_key|r
*|cRXP_WARN_If necessary run away from him when his blade is burning.|r
.goto 577,45.64,39.71
.complete 34925,1 
.mob Overseer Gotrigg
step
#completewith next
.goto 577,44.29,38.07,8 >>Leave the building
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ga'nar|r
.target Ga'nar
.goto 577,41.86,42.10
.turnin 34925 >>Turn in Polishing the Iron Throne
.accept 34437 >>接任务: |cRXP_WARN_霜狼浪子|r
step
#completewith next
.goto 577,45.54,31.69,8 >>进入大楼
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_keg|r
.goto 577,46.98,32.15
.complete 34987,1 
step
#requires TanaanJungleIntroWorldbreakerSchematics
#sticky
#label TanaanJungleIntroMakeshiftPlunger
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Makeshift Plunger|r
.goto 577,44.08,29.62
.complete 34987,2 
step
#requires TanaanJungleIntroWorldbreakerSchematics
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Thaelin Darkanvil, |cRXP_FRIENDLY_汉瑟尔·重拳|r
.turnin 34958 >>Turn in The Shadow of the Worldbreaker
.goto 577,44.09,29.69
.turnin 34987 >>Turn in The Gunpowder Plot
.goto 577,44.09,29.56
.target Thaelin Darkanvil
.target Hansel Heavyhands
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Drek'Thar|r and |cRXP_FRIENDLY_Archmage Khadgar|r
>>在任务弹出之前，你可能需要等待几秒钟
.turnin 34437 >>Turn in The Prodigal Frostwolf
.goto 577,43.03,26.38
.accept 35747 >>接任务: |cRXP_WARN_前往坦克的顶部|r
.goto 577,43.13,28.74
.target Farseer Drek'Thar
.target Archmage Khadgar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thaelin Darkanvil|r
.target Thaelin Darkanvil
.goto 577,44.08,29.69
.skipgossip 78568,1
.complete 35747,1 
step
.itemcount 132516,1
#completewith next
.use 132516
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
>>杀死|cRXP_ENEMY_Gogluk|r
.goto 577,37.45,48.33
.complete 35747,2 
.mob Gogluk
step
>>沿着箭头向上。小心不要掉链子
.goto 577,40.14,48.32
.complete 35747,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thaelin Darkanvil|r
.target Thaelin Darkanvil
.goto 577,40.11,48.43
.turnin 35747 >>Turn in Taking a Trip to the Top of the Tank
.accept 34445 >>接任务: |cRXP_WARN_钢铁的味道|r
step
>>安装|cRXP_PICK_Worldbreaker侧炮塔|r
.goto 577,40.17,48.99
.complete 34445,1 
step
>>垃圾邮件|T252185:0|t[炮塔爆炸]（1）如图所示。你可以忽略大炮
.link https://i.imgur.com/C5x3cTM.jpeg >>Spot to shoot at
.goto 577,40.18,48.74
.complete 34445,2 
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Main Cannon Trigger|r
.goto 577,40.30,48.30
.complete 34445,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thaelin Darkanvil|r
.target Thaelin Darkanvil
.goto 577,40.12,48.43
.turnin 34445 >>Turn in A Taste of Iron
.accept 34446 >>接任务: |cRXP_WARN_冲刺阶段|r
step
.itemcount 132516,1
#completewith next
.use 132516
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
>>Follow the arrow
.goto 577,44.30,79.91
.complete 34446,1 
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r
.target Archmage Khadgar
.goto 577,44.38,80.73
.turnin 34446 >>Turn in The Home Stretch
.accept 33868 >>接任务: |cRXP_WARN_霜狼氏族的家园|r
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#group RestedXP Horde 10-60
#name 2 Horde Nazmir
#displayname Chapter 4 - Nazmir
#next 3 Horde Vol'dun << !Monk
#next 99 Monk Quest Horde << Monk
#maxlevel 60
#fresh
<< Horde
step
#label NazmirMap
.goto 1164,41.67,69.17
>>点击侦察地图，然后点击Nazmir
.accept 47512 >>接任务: |cRXP_WARN_纳兹米尔|r
.zoneskip 863
step
.goto 1164,41.22,66.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r
.turnin 47512 >>Turn in Nazmir
.accept 47103 >>接任务: |cRXP_WARN_前往纳兹米尔|r
.zoneskip 863
.target Princess Talanji
step
.goto 1165,51.65,41.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t到外面去。与|cRXP_FRIENDLY_Rokhan|r交谈
.turnin 47103 >>Turn in Journey to Nazmir
.accept 48535 >>接任务: |cRXP_WARN_禁忌沼泽，纳兹米尔|r
.zoneskip 863
.target Rokhan
step
#completewith TalanjiMeet
#label Pakuai
.goto 1165,51.92,41.20
.fly >>Talk to Paku'ai Rokota to fly to Nazmir
.skipgossip 2
.zoneskip 863
step
#requires Pakuai
#completewith next
.noflyable 862
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
step
#label TalanjiMeet
.groundgoto 862,52.74,20.62,15,0
.groundgoto 862,53.74,18.75,15,0
.groundgoto 863,43.39,86.96,15,0
.goto 863,43.00,86.03
>>前往纳兹密尔的|cRXP_FRIENDLY_Pincess Talanji |r
.complete 48535,2 
.isOnQuest 48535
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r
.goto 863,43.00,86.03
.turnin 48535 >>Turn in Nazmir, the Forbidden Swamp
.accept 47105 >>接任务: |cRXP_WARN_深入黑暗|r
.isOnQuest 48535
.target Princess Talanji
step
.goto 863,47.25,79.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往堕落前哨。与|cRXP_FRIENDLY_Pincess Talanji交谈|r
.complete 47105,1 
.turnin 47105 >>Turn in Into The Darkness
.accept 47264 >>接任务: |cRXP_WARN_一个不留|r
.accept 47130 >>接任务: |cRXP_WARN_超度已逝的赞达拉巨魔|r
.target Princess Talanji
step
#completewith ZandBurn
.goto 863,47.49,79.53
.cast 3365 >>单击|cRXP_PICK_Woven Idol |r

step << skip
#completewith ZandBurn
.goto 863,47.41,79.35
.cast 3365 >>单击|cRXP_PICK_Krag'wa的Ire|r


step << skip
#completewith ZandBurn
.goto 863,47.36,80.30
.cast 281885 >>Eat the Roasted Raptor


step
#sticky
#label NazmirBloodTrollsSlain
>>杀死该区域的|cRXP_ENEMY_Blood Trolls|r
.goto 863,48.6,76.7,0,0
.complete 47264,1 
.mob Blood Troll Hexxer
.mob Blood Troll Brutalizer
step
#label ZandBurn
>>使用|T135433:0|t[仪式火炬]焚烧|cRXP_FRIENDLY_Dead Zandalari尸体|r
.goto 863,48.71,79.77,25,0
.goto 863,48.97,79.18,25,0
.goto 863,48.38,78.75,25,0
.goto 863,48.24,78.11,25,0
.goto 863,48.56,76.90,25,0
.goto 863,48.18,76.34,25,0
.goto 863,48.71,79.77,25,0
.goto 863,48.97,79.18,25,0
.goto 863,48.38,78.75,25,0
.goto 863,48.24,78.11,25,0
.goto 863,48.56,76.90,25,0
.goto 863,48.18,76.34
.complete 47130,1 
.use 154724
.target Zandalari Corpse
step
.goto 863,45.65,74.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talanji|r
.target Princess Talanji
.turnin 47264 >>Turn in Leave None Standing
.turnin 47130 >>Turn in Improper Burial
.accept 47262 >>接任务: |cRXP_WARN_终结鲜血巨魔|r
step
#completewith next
.goto 863,44.78,71.27
.cast 3365 >>单击|cRXP_PICK_Woven Idol |r
step
.goto 863,44.91,71.65
>>杀死|cRXP_ENEMY_Grand Ma'Da Ateena|r
.complete 47262,1 
.mob Grand Ma'da Ateena
step
.goto 863,45.21,71.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talanji|r
.target Princess Talanji
.turnin 47262 >>Turn in Ending the Blood Trolls
.accept 47263 >>接任务: |cRXP_WARN_天启之时|r
.timer 20,A Time of Revelation RP
step
.goto 863,45.57,68.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talanji|r when she arrives at the Overlook. 按键盘上的“Escape”可跳过电影
.complete 47263,1 
.timer 40,Zul'jan Ruins Ride RP
.skipgossip
.target Princess Talanji
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_PICK_Scouting Report|r and |cRXP_FRIENDLY_Talanji|r
.accept 51089 >>接任务: |cRXP_WARN_通缉：托杰克|r
.goto 863,39.56,79.95
.turnin 47263 >>Turn in A Time of Revelation
.accept 47188 >>接任务: |cRXP_WARN_神灵相助|r
.skipgossip 121288,1
.goto 863,39.14,79.07
.target Princess Talanji
step
#completewith AidoftheLoa
.goto 863,39.14,79.07,10,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talanji|r. Don't wait around for her RP
.complete 47188,1 
.skipgossip 121288,1
.timer 107,The Aid of the Loa RP
.target Princess Talanji

step
#completewith AidoftheLoa
.goto 863,38.62,78.66
.home >>将你的炉石设置为祖尔扬废墟
step
#label ZuljanFP
#completewith AidoftheLoa
.goto 863,38.85,78.14
.fp Zul'jan >>获取Zul'jan废墟飞行路线
step
#requires ZuljanFP
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
step
.goto 863,26.44,65.21,30,0
.goto 863,26.64,66.17,30,0
.goto 863,27.07,67.10,30,0
.goto 863,27.08,67.64,30,0
.goto 863,26.67,68.48,30,0
.goto 863,26.44,65.21,30,0
.goto 863,26.64,66.17,30,0
.goto 863,27.07,67.10,30,0
.goto 863,27.08,67.64,30,0
.goto 863,26.67,68.48
>>杀死|cRXP_ENEMY_Tojek|r。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步
.complete 51089,1 
.mob Tojek
step
#completewith next
.hs >>Hearth to Zul'jan Ruins
.cooldown item,6948,>0
step
#label AidoftheLoa
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回祖尔詹废墟。与|cRXP_FRIENDLY_Talanji |r和|cRXP-FRIENDLY_Rovash|r交谈
.turnin 47188 >>Turn in The Aid of the Loa
.accept 47241 >>接任务: |cRXP_WARN_死亡之影|r
.goto 863,39.14,79.07
.turnin 51089 >>Turn in WANTED: Tojek
.goto 863,39.13,79.86
.target Princess Talanji
.target Rovash the One Eyed
step << skip
#completewith next
.vendor >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Lija|r
.target Provisioner Lija
.goto 863,39.10,79.46
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sur'jan|r
.target Sur'jan
.goto 863,38.83,77.71
.accept 48669 >>接任务: |cRXP_WARN_湿地魔龙尤洛克|r
.skipgossip 126713,1
.timer 38, Urok, Terror of the Wetlands RP
step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sur'jan|r again and select the 1st gossip option
*Skip this step after you've spoken to her
.goto 863,38.83,77.71
.skipgossip 126713,1
.target Sur'jan

step
.goto 863,39.63,64.95
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Weathered Shrine|r
.complete 47241,1 
step
.goto 863,37.50,63.06
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the Broken Spear on the ground. If you run away fast enough you don't have to fight the mobs that spawn
.complete 47241,2 
step
.goto 863,39.06,60.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shinga|r
.target Shinga Deathwalker
.accept 48468 >>接任务: |cRXP_WARN_邦桑迪赐予的解脱|r
.accept 48473 >>接任务: |cRXP_WARN_遵从祭礼|r
step
#completewith LastTorch
>>杀死|cRXP_ENEMY_Defiled Embalmers |r和|cRXX_ENEMY_Toshipers |r。在他们的尸体上使用|T135433:0|t[火葬火炬]。你可以同时焚烧多具尸体
.use 153178
.complete 48468,1 
.mob Defiled Embalmer
step
.goto 863,40.30,62.37
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Torch|r
.complete 48473,1,1 
step
.goto 863,40.94,63.43
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Torch|r
.complete 48473,1,2 
step
.goto 863,41.31,62.56
>>捡起外面地上的|cRXP_Pick_Ritual Powder|r
.complete 48473,2 
step
.goto 863,41.69,63.00
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Torch|r
.complete 48473,1,3 
step
.goto 863,42.21,64.58
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Torch|r
.complete 48473,1,4 
step
#label LastTorch
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Torch|r
.goto 863,41.61,65.16
.complete 48473,1 
step
.goto 863,40.93,64.14,30,0
.goto 863,42.72,63.15,30,0
.goto 863,42.38,62.37,30,0
.goto 863,40.93,64.14,30,0
.goto 863,42.72,63.15,30,0
.goto 863,42.38,62.37
>>杀死|cRXP_ENEMY_Defiled Embalmers |r和|cRXX_ENEMY_Toshipers |r。在他们的尸体上使用|T135433:0|t[火葬火炬]。你可以同时焚烧多具尸体
.use 153178
.complete 48468,1 
.mob Defiled Embalmer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shinga|r and |cRXP_FRIENDLY_Kol'Jun|r
.turnin 48468 >>Turn in Bwonsamdi's Deliverance
.turnin 48473 >>Turn in Respecting the Rites
.accept 48478 >>接任务: |cRXP_WARN_凯瓦克斯的家|r
.goto 863,38.93,59.91
.accept 48479 >>接任务: |cRXP_WARN_骨之防护|r
.goto 863,39.00,59.93
.target Shinga Deathwalker
.target Kol'Jun Deathwalker
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_ENEMY_Blood Scavenger|r corpse
.goto 863,35.62,58.58
.complete 47241,3 
step
.goto 863,36.61,53.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanzabu|r
.target Hanzabu
.turnin 47241 >>Turn in The Shadow of Death
.accept 47244 >>接任务: |cRXP_WARN_灵魂甄选|r
step
.goto 863,38.55,49.98
>>杀死|cRXP_ENEMY_血巫纳吉玛|r
.complete 47244,1 
.mob Blood Witch Najima
step
.goto 863,39.52,43.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanzabu|r
.target Hanzabu
.turnin 47244 >>Turn in A Culling of Souls
.accept 49278 >>接任务: |cRXP_WARN_灵魂复原|r
step
.goto 863,39.04,43.91
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_spirit|r on the ground
.complete 49278,1,1 
step
.goto 863,38.86,43.50
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_spirit|r on the ground
.complete 49278,1,2 
step
.goto 863,40.88,43.54
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_spirit|r on the ground
.complete 49278,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanzabu|r and |cRXP_FRIENDLY_Kejabu|r when he arrives
.turnin 49278 >>Turn in Spiritual Restoration
.accept 47868 >>接任务: |cRXP_WARN_冥宫|r
.goto 863,39.52,43.83
.timer 4,Blood Troll on the Outside RP
.accept 49440 >>接任务: |cRXP_WARN_鲜血巨魔间谍|r
.goto 863,39.63,43.86
.target Hanzabu
.target Witch Doctor Kejabu
step
#title Skull placed 1/3
.goto 863,39.58,43.75
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Blood Troll Skull|r
.complete 49440,1,1 
step
#title Skull placed 2/3
.goto 863,39.75,43.50
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Blood Troll Skull|r
.complete 49440,1,2 
step
#title Skull placed 3/3
.goto 863,39.42,43.50
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Blood Troll Skull|r
.complete 49440,1 
step
.goto 863,39.63,43.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kejabu|r
.target Witch Doctor Kejabu
.complete 49440,2 
.skipgossip 122795,1
.timer 23,Blood Troll on the Outside RP
step
.goto 863,39.58,32.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanzabu|r
.target Hanzabu
.turnin 47868 >>Turn in The Necropolis
.accept 47880 >>接任务: |cRXP_WARN_死神贡品|r
step
.goto 863,39.58,32.31
>>沿着地面上的标记行走，绘制|cRXP_PICK_Ritual Circle|r
.complete 47880,1 
step
.goto 863,39.59,31.77
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Drum of Spirits|r
.complete 47880,2 
step
.goto 863,39.57,26.43,30,0
.goto 863,39.57,24.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_邦桑迪|r
.turnin 47880 >>Turn in A Tribute for Death
.accept 47247 >>接任务: |cRXP_WARN_亡灵作祟|r
.accept 47491 >>接任务: |cRXP_WARN_邪恶残留|r
.accept 49348 >>接任务: |cRXP_WARN_被亵渎的神庙|r
.target Bwonsamdi
step
#completewith Salazae
>>杀死|cRXP_ENEMY_Corrupted Spirits|r和|cRXX_ENEMY_Tizeja的助手|r
.complete 48934,1 
.mob Corrupted Spirit
.mob Acolyte of Tizeja
step
#completewith VileDes
.goto 863,39.55,26.72,30,0
.goto 863,40.97,27.21,30,0
>>杀死|cRXP_ENEMY_Reanimated Horrors|r。掠夺他们的|cRXX_Loot_血石|r
.complete 47491,1 
.mob Reanimated Horror
step
#title Desecration destroyed 1/5
.goto 863,42.13,27.87
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Vile Desecration|r to destroy it
.complete 49348,1,1 
step
#title Desecration destroyed 2/5
.goto 863,43.31,27.88
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Vile Desecration|r to destroy it
.complete 49348,1,2 
step
#title Desecration destroyed 3/5
.goto 863,43.63,28.49
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Vile Desecration|r to destroy it
.complete 49348,1,3 
step
#label NazmirWarlordMalaja
.goto 863,43.43,30.02
>>杀死|cRXP_ENEMY_军阀马拉加|r
.complete 47247,1 
.mob Warlord Malaja
step
#title Desecration destroyed 4/5
.goto 863,42.93,31.98
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Vile Desecration|r to destroy it
.complete 49348,1,4 
step
.goto 863,42.58,31.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keula|r
.target Keula
.accept 49432 >>接任务: |cRXP_WARN_被遗弃的灵魂|r
step
#label VileDes
#title Desecration destroyed 5/5
.goto 863,42.25,31.91
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Vile Desecration|r to destroy it
.complete 49348,1 
step
#completewith Shaazula
.goto 863,41.65,33.42,30,0
.goto 863,40.58,33.25,30,0
>>杀死|cRXP_ENEMY_Reanimated Horrors|r。掠夺他们的|cRXX_Loot_血石|r
.complete 47491,1 
.mob Reanimated Horror
step
.goto 863,39.59,31.60,15,0
.goto 863,39.58,34.99
>>进入地下墓穴。打开|cRXP_PICK_Sarcophagus盖子|r
.complete 49432,1 
.timer 10,The Forlon Soul RP
step
#label Shaazula
.goto 863,39.65,35.00
>>等待RP。杀死|cRXP_ENEMY_Matron Shaazula |r
.complete 49432,2 
.mob Matron Shaazula
step
#completewith next
.goto 863,39.59,31.63,30,0
.goto 863,38.72,29.46,30,0
>>杀死|cRXP_ENEMY_Reanimated Horrors|r。掠夺他们的|cRXX_Loot_血石|r
.complete 47491,1 
.mob Reanimated Horror
step
.goto 863,37.58,30.98,30,0
.goto 863,36.09,29.89
>>杀死Tizeja|r的|cRXP_ENEMY_门徒，然后杀死|cRXX_ENEMY_Tizeja| r
.complete 47247,2 
.mob Disciple of Tizeja
.mob Hex Priestess Tizeja
step
.goto 863,36.66,27.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theurgist Salazae|r
.target Theurgist Salazae
.accept 47248 >>接任务: |cRXP_WARN_至死不渝|r
step
.goto 863,39.59,31.63,30,0
.goto 863,38.72,29.46,30,0
.goto 863,39.55,26.72,30,0
.goto 863,40.97,27.21,30,0
.goto 863,41.65,33.42,30,0
.goto 863,40.58,33.25,30,0
.goto 863,39.59,31.63,30,0
.goto 863,38.72,29.46,30,0
.goto 863,39.55,26.72,30,0
.goto 863,40.97,27.21,30,0
.goto 863,41.65,33.42,30,0
.goto 863,40.58,33.25
>>杀死|cRXP_ENEMY_Reanimated Horrors|r。掠夺他们的|cRXX_Loot_血石|r
.complete 47491,1 
.mob Reanimated Horror
step
.goto 863,39.57,26.43,30,0
.goto 863,39.57,24.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_邦桑迪|r
.turnin 47491 >>Turn in Remnants of the Damned
.turnin 47247 >>Turn in That Which Haunts the Dead
.turnin 49348 >>Turn in A Desecrated Temple
.turnin 49432 >>Turn in The Forlorn Soul
.accept 47249 >>接任务: |cRXP_WARN_缚魂契约|r
.target Bwonsamdi
step
.goto 863,39.58,30.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_邦桑迪|r
.target Bwonsamdi
.complete 47249,1 
.skipgossip
.timer 47,Soulbound RP
step
.goto 863,40.36,28.95,20,0
.goto 863,40.37,26.48
>>进入地下墓穴。掠夺|cRXP_PICK_Ancient Urn|r。|cRXP_WARN_您可以完全忽略|cRXP_ENEMY_Gee'dae|r
.complete 47248,1 
step
.goto 863,39.57,30.95
>>RP结束后杀死|cRXP_ENEMY_Grand Ma'Da Ateena|r|cRXP_WARN_忽略小骨架|r
.complete 47249,2 
.mob Grand Ma'Da Ateena
step
.goto 863,39.58,30.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_邦桑迪|r
.target Bwonsamdi
.turnin 47249 >>Turn in Soulbound
.accept 47250 >>接任务: |cRXP_WARN_后会有期|r
step
#label Salazae
.goto 863,36.66,27.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theurgist Salazae|r
.target Theurgist Salazae
.turnin 47248 >>Turn in 'Til Death Do Us Part
step
#loop
.line 863,37.27,27.84,36.94,31.05,35.97,28.78,37.27,27.84
.goto 863,37.27,27.84,40,0
.goto 863,36.94,31.05,40,0
.goto 863,35.97,28.78,40,0
.goto 863,37.27,27.84,40,0
>>杀死|cRXP_ENEMY_Corrupted Spirits|r和|cRXX_ENEMY_Tizeja的助手|r
.complete 48934,1 
.mob Corrupted Spirit
.mob Acolyte of Tizeja
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanzabu|r and |cRXP_FRIENDLY_Kejabu|r
.turnin 47250 >>Turn in We'll Meet Again
.goto 863,39.52,43.83
.turnin 49440 >>Turn in Blood Troll on the Outside
.accept 48699 >>接任务: |cRXP_WARN_潜入扎拉玛|r
.goto 863,39.63,43.86
.target Hanzabu
.target Kejabu
step
#completewith X
+|cRXP_WARN_对于这些任务，你将自动伪装。不要攻击任何其他东西，否则你会失去伪装。离开战斗，找回伪装|r
step
.goto 863,32.37,46.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodseeker Jo'chunga|r
.target Bloodseeker Jo'chunga
.skipgossip
.complete 48699,1 
.timer 16,Sneaking into Zalamar RP
step
.goto 863,33.23,46.10,20,0
.goto 863,33.35,45.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jo'chunga|r when he arrives inside the building
.turnin 48699 >>Turn in Sneaking into Zalamar
.accept 48801 >>接任务: |cRXP_WARN_隔离扎拉玛|r
.accept 48890 >>接任务: |cRXP_WARN_如何成为鲜血巨魔|r
.target Bloodseeker Jo'chunga
step
.goto 863,35.30,46.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t爬上那座塔。与|cRXP_FRIENDLY_Wardrummer Sheej|r交谈
.target Wardrummer Sheej
.complete 48801,2 
.skipgossip
step
.goto 863,32.20,47.68
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Unproven Drudges|r to test them
.complete 48890,1,1 
.target Unproven Drudge
step
#completewith next
.goto 863,32.34,48.54,8,0
+右击|cRXP_PICK_血怒瓶|r获得伤害增益

step
.goto 863,32.21,48.69
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Unproven Drudges|r to test them
.complete 48890,1,2 
.target Unproven Drudge
step
.goto 863,31.21,49.42
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Unproven Drudges|r to test them
.complete 48890,1,3 
.target Unproven Drudge
step
.goto 863,31.16,49.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t爬上那座塔。与|cRXP_FRIENDLY_Wardrummer Gix|r交谈
.target Wardrummer Gix
.complete 48801,3 
step
.goto 863,30.97,52.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardrax|r
.target Zardrax the Empowerer
.accept 48854 >>接任务: |cRXP_WARN_力量的代价|r
.skipgossip
.complete 48854,1 
step
.goto 863,30.97,52.17
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on |cRXP_ENEMY_Zadrax|r to break free
.complete 48854,2 
.mob Zardrax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Da'jul|r and |cRXP_FRIENDLY_Kal'dran|r
.turnin 48854 >>Turn in Offer of Power
.accept 48823 >>接任务: |cRXP_WARN_破坏计划|r
.complete 48823,1 
.goto 863,31.05,52.08
.accept 48825 >>接任务: |cRXP_WARN_断绝力量来源|r
.goto 863,30.91,52.03
.skipgossip 127215,1
.target Shadow Hunter Da'jul
.target Kal'dran
step
#completewith Zardrax
>>|cRXP_WARN_专注于摧毁|cRXP_PICK_Empowered图腾|r|r
>>杀死|cRXP_ENEMY_有能力的崇拜者|r和|cRXX_ENEMY_返回的捕食者|r
.complete 48852,1 
step
.goto 863,30.87,55.16
>>使用|T132847:0|t[Da'jul's Fire Mojo]摧毁|cRXP_PICK_Skeletal Mound|r
.complete 48823,2,1 
.use 152727
step
.goto 863,32.16,55.43
>>使用|T132847:0|t[Da'jul's Fire Mojo]摧毁|cRXP_PICK_Skeletal Mound|r
.complete 48823,2,2 
.use 152727
step
.goto 863,32.84,56.90
>>使用|T132847:0|t[Da'jul's Fire Mojo]摧毁|cRXP_PICK_Skeletal Mound|r
.complete 48823,2 
.use 152727
step
.goto 863,33.08,58.81
>>杀死|cRXP_ENEMY_Hexxer Nana'kwug|r。为她掠夺她|cRXX_Loot_血癖|r
.complete 48825,1 
.mob Hexxer Nana'kwug
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Da'jul|r and |cRXP_FRIENDLY_Kal'dran|r
.turnin 48823 >>Turn in Projection Destruction
.turnin 48825 >>Turn in Power Denied
.accept 48856 >>接任务: |cRXP_WARN_阻断引导|r
.accept 48855 >>接任务: |cRXP_WARN_击败恐魔|r
.goto 863,31.05,52.08
.accept 48857 >>接任务: |cRXP_WARN_希望破灭|r
.complete 48857,1 
.goto 863,30.91,52.03
.skipgossip
.target Shadow Hunter Da'jul
.target Kal'dran
step
#completewith next
>>杀死|cRXP_ENEMY_Zardrax导管|r和|cRXX_ENEMY_重建恐怖|r
>>|cRXP_WARN_使用|cRXP_ENEMY_Reconstructed Terrors|r上的|T458256:0|t[改良血癖]来削弱它们|r
.complete 48856,1 
.complete 48855,1 
.use 153483
.mob Zardrax Conduits
.mob Reconstructed Terror
step
.goto 863,29.36,56.99,20,0
.goto 863,29.08,56.74
>>在树洞内杀死|cRXP_ENEMY_Empowered Kal'dran|r
.complete 48857,2 
.mob Empowered Kal'dran
step
#loop
.line 863,32.66,61.25,30.23,61.71,28.79,60.87,29.13,58.20,32.66,61.25
.goto 863,32.66,61.25,50,0
.goto 863,30.23,61.71,50,0
.goto 863,28.79,60.87,50,0
.goto 863,29.13,58.20,50,0
.goto 863,32.66,61.25,50,0
>>杀死|cRXP_ENEMY_Zardrax导管|r和|cRXX_ENEMY_重建恐怖|r
>>|cRXP_WARN_使用|cRXP_ENEMY_Reconstructed Terrors|r上的|T458256:0|t[改良血癖]来削弱它们|r
.complete 48856,1 
.complete 48855,1 
.use 153483
.mob Zardrax Conduits
.mob Reconstructed Terror
step
.goto 863,30.96,52.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Da'jul|r
.target Shadow Hunter Da'jul
.turnin 48856 >>Turn in All Hope is Lost
.turnin 48855 >>Turn in Humbling the Terrors
.turnin 48857 >>Turn in All Hope is Lost
.accept 48869 >>接任务: |cRXP_WARN_向巫妖复仇|r
step
#label Zardrax
.goto 863,31.56,57.87
>>杀死|cRXP_ENEMY_Zardrax|r
.complete 48869,1 
.mob Zardrax the Empowerer
step
.goto 863,33.74,58.18,20,0
.goto 863,33.99,57.46,20,0
.goto 863,33.00,56.57,20,0
.goto 863,30.38,54.79
>>|cRXP_WARN_专注于摧毁|cRXP_PICK_Empowered图腾|r|r
>>杀死|cRXP_ENEMY_有能力的崇拜者|r和|cRXX_ENEMY_返回的捕食者|r
.complete 48852,1 
.mob Empowered Worshipper
.mob Returned Predator
step
.goto 863,30.96,52.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Da'jul|r
.target Shadow Hunter Da'jul
.turnin 48869 >>Turn in Payback's a Lich
step
.goto 863,29.20,52.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Imperial Guard corpse|r
.accept 50933 >>接任务: |cRXP_WARN_不幸的事件|r
.target Imperial Guard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaluto|r and |cRXP_FRIENDLY_Jin'Tiki|r
.turnin 50933 >>Turn in An Unfortunate Event
.accept 49777 >>接任务: |cRXP_WARN_在逃囚犯|r
.goto 863,24.13,53.20
.accept 49776 >>接任务: |cRXP_WARN_万用焦油|r
.accept 49774 >>接任务: |cRXP_WARN_救命甘叶|r
.goto 863,24.11,53.14
.target Zaluto
.target Jin'Tiki
step
#completewith Mojoba
>>杀死|cRXP_ENEMY_Tar Ooze|r。掠夺他们的|cRXP_Loot_Tar|r
.complete 49776,1 
.mob Tar Ooze
step
#title Sweetleaf 1/8
.goto 863,23.53,54.64
>>将|cRXP_PICK_Sweetleaf|r洗劫一空
.complete 49774,1,1 
step
#title Sweetleaf 2/8
.goto 863,23.72,56.24
>>将|cRXP_PICK_Sweetleaf|r洗劫一空
.complete 49774,1,2 
step
#title Sweetleaf 3/8
.goto 863,23.36,58.19
>>将|cRXP_PICK_Sweetleaf|r洗劫一空
.complete 49774,1,3 
step
#title Sweetleaf 4/8
.goto 863,22.76,57.71
>>将|cRXP_PICK_Sweetleaf|r洗劫一空
.complete 49774,1,4 
step
#title Sweetleaf 5/8
.goto 863,22.03,54.70
>>将|cRXP_PICK_Sweetleaf|r洗劫一空
.complete 49774,1,5 
step
#title Sweetleaf 6/8
.goto 863,21.85,55.06
>>将|cRXP_PICK_Sweetleaf|r洗劫一空
.complete 49774,1,6 
step
.goto 863,21.56,55.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razjuto|r
.target Razjuto
.complete 49777,1 
.skipgossip
step
#title Sweetleaf 7/8
.goto 863,20.86,54.16
>>将|cRXP_PICK_Sweetleaf|r洗劫一空
.complete 49774,1,7 
step
#title Sweetleaf 8/8
>>将|cRXP_PICK_Sweetleaf|r洗劫一空
.goto 863,21.29,51.07
.complete 49774,1 
step
.goto 863,21.32,50.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teshyambi|r
.target Teshyambi
.complete 49777,3 
.skipgossip
step
#label Mojoba
.goto 863,23.59,47.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mojoba|r |cRXP_WARN_WHILE MOUNTED|r, then run away. You don't have to kill him
.complete 49777,2 
.skipgossip
.target Mojoba
step
#loop
.line 863,21.46,50.76,22.61,52.02,23.28,53.65,23.99,55.95,23.47,59.73,22.67,58.45,22.64,54.95,21.59,54.21,21.29,52.95,21.46,50.76
.goto 863,21.46,50.76,40,0
.goto 863,22.61,52.02,40,0
.goto 863,23.28,53.65,40,0
.goto 863,23.99,55.95,40,0
.goto 863,23.47,59.73,40,0
.goto 863,22.67,58.45,40,0
.goto 863,22.64,54.95,40,0
.goto 863,21.59,54.21,40,0
.goto 863,21.29,52.95,40,0
.goto 863,21.46,50.76,40,0
>>杀死|cRXP_ENEMY_Tar Ooze|r。掠夺他们的|cRXP_Loot_Tar|r
.complete 49776,1 
.mob Tar Ooze
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaluto|r and |cRXP_FRIENDLY_Jin'Tiki|r
.turnin 49777 >>Turn in On The Run
.goto 863,24.13,53.20
.turnin 49776 >>Turn in No Problem Tar Can't Solve
.turnin 49774 >>Turn in Won't Leaf Him to Die
.accept 49778 >>接任务: |cRXP_WARN_莫入鬼门关|r
.goto 863,24.11,53.14
.target Zaluto
.target Jin'Tiki
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaluto|r to hold him down while |cRXP_FRIENDLY_Jin'Tiki|r cures him
.complete 49778,1 
.goto 863,24.13,53.20
.skipgossip
.target Zaluto
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Tiki|r and |cRXP_FRIENDLY_Zaluto|r
.turnin 49778 >>Turn in Don't Go into the Light
.accept 49780 >>接任务: |cRXP_WARN_找回上古之火|r
.goto 863,24.11,53.14
.accept 49779 >>接任务: |cRXP_WARN_坏到骨子里|r
.goto 863,24.14,53.20
.target Jin'Tiki
.target Zalutor
step
#completewith FireMojoAbs
>>杀死|cRXP_ENEMY_Bone Raptors|r
.complete 49779,1 
.mob Bone Raptor
step
.goto 863,25.64,51.55
>>使用|T458256:0|t[Jin'Tiki Fetish]从|cRXP_PICK_Statues|r吸收火魔。射程为40码
.complete 49780,1,1 
.use 156480
step
.goto 863,24.64,50.00
>>使用|T458256:0|t[Jin'Tiki Fetish]从|cRXP_PICK_Statues|r吸收火魔。射程为40码
.complete 49780,1,2 
.use 156480
step
.goto 863,26.08,47.72
>>使用|T458256:0|t[Jin'Tiki Fetish]从|cRXP_PICK_Statues|r吸收火魔。射程为40码
.complete 49780,1,3 
.use 156480
step
#label FireMojoAbs
.goto 863,24.73,45.02
>>使用|T458256:0|t[Jin'Tiki Fetish]从|cRXP_PICK_Statues|r吸收火魔。射程为40码
.complete 49780,1 
.use 156480
step
#loop
.line 863,25.60,44.47,23.78,44.29,23.70,46.79,24.59,47.70,23.97,50.31,25.48,51.89,25.87,47.65,25.60,44.47
.goto 863,25.60,44.47,50,0
.goto 863,23.78,44.29,50,0
.goto 863,23.70,46.79,50,0
.goto 863,24.59,47.70,50,0
.goto 863,23.97,50.31,50,0
.goto 863,25.48,51.89,50,0
.goto 863,25.87,47.65,50,0
.goto 863,25.60,44.47,50,0
>>杀死|cRXP_ENEMY_Bone Raptors|r
.complete 49779,1 
.mob Bone Raptor
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Tiki|r and |cRXP_FRIENDLY_Zaluto|r
.turnin 49780 >>Turn in Recovering Ancient Fire
.goto 863,24.11,53.14
.turnin 49779 >>Turn in Bad to The Bone
.accept 49781 >>接任务: |cRXP_WARN_来追我呀|r
.goto 863,24.13,53.20
.target Jin'Tiki
.target Zaluto
step
#completewith next
.vehicle >>安装|cRXP_FRIENDLY_Riding Raptor|r
.goto 863,24.18,53.36
.target Riding Raptor
step
.goto 863,28.28,52.05
>>目标|cRXP_ENEMY_Zulajin|r和施法|T132333:0|t[喊叫]（1），然后施法|T135810:0|t[火能恋物癖]（1。之后垃圾邮件广播|T135808:0|t[野火冲击]（1）。
.complete 49781,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Tiki|r
.target Jin'Tiki
.goto 863,28.36,52.03
.turnin 49781 >>Turn in Catch Me If You Can
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chadwick Paxton|r on the ground, then click his legs
.accept 48492 >>接任务: |cRXP_WARN_接上断腿|r
.goto 863,28.63,43.75
.complete 48492,1 
.goto 863,28.65,43.72
.target Chadwick Paxton
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chadwick|r then jump. Talk to |cRXP_FRIENDLY_Chadwick|r again
.complete 48492,2 
.goto 863,28.63,43.75
.turnin 48492 >>Turn in Getting a Leg Up
.accept 48497 >>接任务: |cRXP_WARN_力量的展示|r
.accept 48496 >>接任务: |cRXP_WARN_小队重聚|r
.goto 863,28.62,43.78
.skipgossip
.target Chadwick Paxton
step
#completewith Sithis
>>杀死|cRXP_ENEMY_Sethrak Warbringers|r，|cRXD_ENEMY_Wardens|r，| cRXP__ENEMY_Ravagers|r和|cRXP_ENEMY_Skycallers |r
.complete 48497,1 
.mob Sethrak Warbringer
.mob Sethrak Warden
.mob Sethrak Ravager
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the cages to free |cRXP_FRIENDLY_Clayton|r, |cRXP_FRIENDLY_Anna|r, |cRXP_FRIENDLY_Timothy|r, and |cRXP_FRIENDLY_Ingrid|r. Talk to |cRXP_FRIENDLY_Ingrid|r
.target Ingrid Bellix
.complete 48496,3 
.goto 863,27.37,41.20
.complete 48496,1 
.goto 863,26.13,40.42
.complete 48496,2 
.goto 863,27.45,38.51
.complete 48496,4 
.accept 48498 >>接任务: |cRXP_WARN_希提斯必须死|r
.goto 863,26.60,37.87
.target Clayton Backston
.target Anna Bizrim
.target Timothy Zartlin
.target Ingrid Bellix
step
#label Sithis
.goto 863,25.93,38.15,20,0
.goto 863,25.40,37.65
>>杀死|cRXP_ENEMY_Fangcaller Sithis|r。掠夺他的|cRXP_Loot_gem|r
.complete 48498,1 
.mob Fangcaller Sithis
step
#loop
.line 863,26.20,38.11,26.16,40.41,26.92,42.07,28.13,41.40,28.31,39.88,28.17,37.96,26.20,38.11
.goto 863,26.20,38.11,50,0
.goto 863,26.16,40.41,50,0
.goto 863,26.92,42.07,50,0
.goto 863,28.13,41.40,50,0
.goto 863,28.31,39.88,50,0
.goto 863,28.17,37.96,50,0
.goto 863,26.20,38.11,50,0
>>杀死|cRXP_ENEMY_Sethrak Warbringers|r，|cRXD_ENEMY_Wardens|r，| cRXP__ENEMY_Ravagers|r和|cRXP_ENEMY_Skycallers |r
.complete 48497,1 
.mob Sethrak Warbringer
.mob Sethrak Warden
.mob Sethrak Ravager
.mob Sethrak Skycaller
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Paxton|r and |cRXP_FRIENDLY_Ingrid|r
.turnin 48497 >>Turn in Show of Force
.turnin 48498 >>Turn in No Mercy for Sithis
.turnin 48496 >>Turn in Reuniting the Company
.accept 49479 >>接任务: |cRXP_WARN_缺乏思考|r
.goto 863,25.83,36.02
.complete 49479,1 
.goto 863,25.80,35.91
.skipgossip
.timer 14,Skycaller Gem RP
.target Chadwick Paxton
.target Ingrid Bellix
step
.goto 863,25.83,36.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Paxton|r. 按键盘上的“Escape”可跳过电影
.turnin 49479 >>Turn in Didn't Stop to Think if They Should
.accept 48499 >>接任务: |cRXP_WARN_归于尘土|r
.target Chadwick Paxton
step
.goto 863,27.12,39.56
>>使用[ExtraActionButton]终止|cRXP_ENEMY_Enrared Sethrak|r
.complete 48499,1 
.mob Enraged Sethrak
step
.goto 863,27.12,39.56
>>在|cRXP_PICK_Spire|r旁边使用[ExtraActionButton]
.complete 48499,2 
step
.goto 863,25.83,36.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Paxton|r
.target Chadwick Paxton
.turnin 48499 >>Turn in Return to Dust
step
.goto 863,31.48,43.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t爬上那座塔。与|cRXP_FRIENDLY_Wardrummer Saljo|r交谈
.target Wardrummer Saljo
.complete 48801,1 
.skipgossip
step
.goto 863,32.72,43.97
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Unproven Drudges|r to test them
.complete 48890,1,4 
.target Unproven Drudge
step
.goto 863,33.05,44.20
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Unproven Drudges|r to test them
.complete 48890,1 
.target Unproven Drudge
step
.goto 863,33.23,46.10,20,0
.goto 863,33.35,45.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jo'chunga|r
.target Bloodseeker Jo'chunga
.turnin 48801 >>Turn in Isolating Zalamar
.turnin 48890 >>Turn in How to Be a Blood Troll
.accept 48800 >>接任务: |cRXP_WARN_蝙蝠印记|r
.accept 49078 >>接任务: |cRXP_WARN_集体“净化”|r
step << skip
#completewith X
+注意航路点位置的buff
.goto 863,33.48,49.34,0
.goto 863,33.13,48.65,0
.goto 863,32.67,49.62,0
.goto 863,32.36,48.57,0
.goto 863,31.02,48.46,0
.goto 863,30.25,48.95,0
.goto 863,30.50,47.55,0
.goto 863,31.62,45.13,0
step
#completewith TamedWarspawn
>>杀死|cRXP_ENEMY_Warspawn Riders|r、|cRXD_ENEMY_Obedent Drudges|r、| cRXP__ENEMY_Zalamar Warriors|r和|cRXT_ENEMY_Blood Crawgs|r
>>排空|cRXP_PICK_Brewing Cauldrons|r并解锁|cRX_PICK_Blood Troll Cauls|r
*|cRXP_WARN_Make sure to drink the Flasks of Blood Rage, Vials of Vampiric Mojo, and eat Roasted Raptor, Krag'wa's Ire for buffs|r
.complete 49406,1 
step
#completewith next
>>在|cRXP_ENEMY_Tamed Warspawns|r上使用您的|T650637:0|t[中毒的Mojo烧瓶]
.complete 49078,1 
.use 153012
.mob Tamed Warspawn
step
>>杀死|cRXP_ENEMY_Yialu|r、|cRXD_ENEMY_Zu'Anji |r和|cRXP_ENEMY_Vashera|r。掠夺他们的|cRXP_Loot_Talisman|r
.complete 48800,1 
.goto 863,33.65,49.33
.complete 48800,3 
.goto 863,32.60,48.18,5,0
.goto 863,32.68,49.48
.complete 48800,2 
.goto 863,31.03,45.46,5,0
.goto 863,30.73,45.27
.mob Yialu
.mob Zu'Anji
.mob Vashera
step
#label TamedWarspawn
.goto 863,31.25,45.19,30,0
.goto 863,31.80,44.65,30,0
.goto 863,31.69,43.54,30,0
.goto 863,33.20,45.48,30,0
.goto 863,33.28,49.20,30,0
.goto 863,33.21,48.70,30,0
.goto 863,33.11,48.85,30,0
.goto 863,32.02,47.57,30,0
.goto 863,31.64,47.72,30,0
.goto 863,31.01,47.52,30,0
.goto 863,30.94,46.97,30,0
.goto 863,30.20,47.20,30,0
.goto 863,30.65,45.62
>>在|cRXP_ENEMY_Tamed Warspawns|r上使用您的|T650637:0|t[中毒的Mojo烧瓶]
.complete 49078,1 
.use 153012
.mob Tamed Warspawn
step
.goto 863,31.25,45.19,30,0
.goto 863,31.80,44.65,30,0
.goto 863,31.69,43.54,30,0
.goto 863,33.20,45.48,30,0
.goto 863,33.28,49.20,30,0
.goto 863,33.21,48.70,30,0
.goto 863,33.11,48.85,30,0
.goto 863,32.02,47.57,30,0
.goto 863,31.64,47.72,30,0
.goto 863,31.01,47.52,30,0
.goto 863,30.94,46.97,30,0
.goto 863,30.20,47.20,30,0
.goto 863,30.65,45.62
>>杀死|cRXP_ENEMY_Warspawn Riders|r、|cRXD_ENEMY_Obedent Drudges|r、| cRXP__ENEMY_Zalamar Warriors|r和|cRXT_ENEMY_Blood Crawgs|r
>>排空|cRXP_PICK_Brewing Cauldrons|r并解锁|cRX_PICK_Blood Troll Cauls|r
*|cRXP_WARN_Make sure to drink the Flasks of Blood Rage, Vials of Vampiric Mojo, and eat Roasted Raptor, Krag'wa's Ire for buffs|r
.complete 49406,1 
.mob Warspawn Rider
.mob Obedient Drudge
.mob Zalamar Warrior
.mob Blood Crawg
step
.goto 863,33.23,46.10,20,0
.goto 863,33.35,45.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jo'chunga|r. 等待RP
.target Bloodseeker Jo'chunga
.turnin 48800 >>Turn in Mark of the Bat
.turnin 49078 >>Turn in Poisoning the Brood
.timer 12,Hir'eek the Bat Loa RP
.accept 49079 >>接任务: |cRXP_WARN_蝙蝠之神希里克|r
step
.goto 863,32.18,46.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t站在血圈中，然后与|cRXP_FRIENDLY_Jo'chunga|r交谈
.complete 49079,1 
.skipgossip
.timer 29,Hir'eek the Bat Loa RP
.target Bloodseeker Jo'chunga
step
.goto 863,31.41,46.99
>>冷却时在|cRXP_ENEMY_Hir'eek|r上使用|T135705:0|t[毒刺]（1）
.complete 49079,2 
step
.goto 863,31.23,46.80
>>|cRXP_WARN_尽快下车并摔倒（你不应该因摔倒而死亡）|r。
>>快速与|cRXP_FRIENDLY_Jo'chunga|r通话
.turnin 49079 >>Turn in Hir'eek, the Bat Loa
.accept 49081 >>接任务: |cRXP_WARN_弑神|r
.target Bloodseeker Jo'chunga
step
.goto 863,29.14,46.57
>>在洞穴内杀死|cRXP_ENEMY_Hir'eek|r|cRXP_WARN_开始施放血腥恐怖时躲在柱子后面|r
.complete 49081,1 
.mob Hir'eek
step
.goto 863,31.25,46.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jo'chunga|r
.target Bloodseeker Jo'chunga
.turnin 49081 >>Turn in To Kill a Loa
.accept 49082 >>接任务: |cRXP_WARN_勇往直前|r
step
#completewith next
.goto 863,31.27,46.72
>>安装|cRXP_FRIENDLY_Hir'eek产卵|r
.complete 49082,1 
.timer 15,Hir'eek Lair Flight RP
.target Hir'eek Spawnling
step
.goto 863,39.63,43.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kejabu|r
.target Kejabu
.complete 49082,2 
.turnin 49082 >>Turn in Upward and Onward
.skipgossip 122795,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talanji|r and |cRXP_FRIENDLY_Lashk|r
.accept 49185 >>接任务: |cRXP_WARN_了解情况|r
.complete 49185,1 
.turnin 49185 >>Turn in Catching Up
.goto 863,39.40,44.00
.accept 49064 >>接任务: |cRXP_WARN_乌龟之神托加|r
.goto 863,39.46,44.02
.skipgossip 127961,1
.target Princess Talanji
.target Lashk
step << skip
#completewith next
+注意航路点位置的buff
.goto 863,38.93,55.60,0
.goto 863,40.77,50.40,0
step
#completewith next
>>杀死|cRXP_ENEMY_Phylactery Guardians|r、|cRXD_ENEMY_Kel'vax|r、| cRXP__ENEMY_Resurrected Warriors|r和|cRXT_ENEMY_Bound Scavengers|r。掠夺他们的|cRXP_Loot_bones|r
.complete 48479,1 
.mob Phylactery Guardian
.mob Kel'vax Skeleton Shaper
.mob Kel'vax Warrior
.mob Bound Scavenger
step
>>使用|T134380:0|t[灵粉]获得灵旅增益，可以掠夺|cRXP_PICK_Phylacteries|r
.complete 48478,1 
.goto 863,40.99,51.98
.complete 48478,3 
.goto 863,38.32,54.39
.complete 48478,2 
.goto 863,39.39,57.48
.use 154130
step
#loop
.line 863,40.68,58.82,40.70,55.76,39.51,53.03,38.75,55.17,38.79,56.85,40.68,58.82
.goto 863,40.68,58.82,50,0
.goto 863,40.70,55.76,50,0
.goto 863,39.51,53.03,50,0
.goto 863,38.75,55.17,50,0
.goto 863,38.79,56.85,50,0
.goto 863,40.68,58.82,50,0
>>杀死|cRXP_ENEMY_Phylactery Guardians|r、|cRXD_ENEMY_Kel'vax|r、| cRXP__ENEMY_Resurrected Warriors|r和|cRXT_ENEMY_Bound Scavengers|r。掠夺他们的|cRXP_Loot_bones|r
.complete 48479,1 
.mob Phylactery Guardian
.mob Kel'vax Skeleton Shaper
.mob Kel'vax Warrior
.mob Bound Scavenger
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kol'jun|r and |cRXP_FRIENDLY_Shinga|r
.turnin 48479 >>Turn in Bones for Protection
.goto 863,39.00,59.93
.turnin 48478 >>Turn in Kel'vax Home
.accept 48480 >>接任务: |cRXP_WARN_凯瓦克斯的陨落|r
.goto 863,38.93,59.91
.target Kol'jun Deathwalker
.target Shinga Deathwalker
step
.goto 863,42.22,57.47
>>杀死|cRXP_ENEMY_Kel'vax死亡步行者|r
.complete 48480,1 
.mob Kel'vax Deathwalker
step
.goto 863,38.93,59.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shinga Deathwalker|r
.target Shinga Deathwalker
.turnin 48480 >>Turn in The Fall of Kel'vax
step
.goto 863,55.65,39.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kisha|r
.target Kisha
.complete 49064,1 
.skipgossip 2
step
.goto 863,55.15,36.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kajosh|r
.target Kajosh
.accept 47924 >>接任务: |cRXP_WARN_净化亵渎|r
step
.goto 863,54.14,36.00
>>使用|cRXP_PICK_Profane图腾|r附近的|T1500879:0|t[地狱卷轴]摧毁它们
.complete 47924,1,1 
.use 151849
step
#completewith ProfaneTotems
>>|cRXP_WARN_专注于燃烧鳄鱼。垃圾邮件点击它们可能会燃烧两次|r
>>杀死|cRXP_ENEMY_跟踪Mawfield|r和|cRXX_ENEMY_Young Mawfield |r
.complete 47996,1 
.mob Stalking Mawfiend
.mob Young Mawfiend
step
.goto 863,54.31,33.34
>>使用|cRXP_PICK_Profane图腾|r附近的|T1500879:0|t[地狱卷轴]摧毁它们
.complete 47924,1,2 
.use 151849
step
.goto 863,54.14,32.26
>>使用|cRXP_PICK_Profane图腾|r附近的|T1500879:0|t[地狱卷轴]摧毁它们
.complete 47924,1,3 
.use 151849
step
.goto 863,53.19,31.68
>>使用|cRXP_PICK_Profane图腾|r附近的|T1500879:0|t[地狱卷轴]摧毁它们
.complete 47924,1,4 
.use 151849
step
#label ProfaneTotems
.goto 863,52.67,33.68
>>使用|cRXP_PICK_Profane图腾|r附近的|T1500879:0|t[地狱卷轴]摧毁它们
.complete 47924,1 
.use 151849
step
.goto 863,52.50,31.34,30,0
.goto 863,52.10,30.60,30,0
.goto 863,54.04,32.25,30,0
.goto 863,54.34,33.53,30,0
.goto 863,53.02,34.10,30,0
.goto 863,52.50,31.34,30,0
.goto 863,52.10,30.60,30,0
.goto 863,54.04,32.25,30,0
.goto 863,54.34,33.53,30,0
.goto 863,53.02,34.10
>>|cRXP_WARN_专注于燃烧鳄鱼。垃圾邮件点击它们可能会燃烧两次|r
>>杀死|cRXP_ENEMY_跟踪Mawfield|r和|cRXX_ENEMY_Young Mawfield |r
.complete 47996,1 
.mob Stalking Mawfiend
.mob Young Mawfiend
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kajosh|r. Wait out his RP
.goto 863,51.75,33.25
.complete 47924,2 
.turnin 47924 >>Turn in Profanity Filter
.accept 47919 >>接任务: |cRXP_WARN_不要嗜食|r
.accept 47925 >>接任务: |cRXP_WARN_砧板上的修克|r
.accept 47998 >>接任务: |cRXP_WARN_消灭嗜食者|r
.skipgossip 124933,1
.timer 21,Profanity Filter RP
.target Kajosh
step << skip
#completewith next
+一些可能的buff位置，如|cRXP_PICK_Woven Idol |r或|cRX_PICK_Krag'wa的Ire|r
.goto 863,48.56,35.65,0
.goto 863,49.21,35.53,0
.goto 863,48.86,35.04,0
.goto 863,50.81,37.17,0
.goto 863,50.42,39.69,0
step
#completewith Jalaka
>>杀死|cRXP_ENEMY_Nath'vor食人族|r
.complete 47998,1 
.mob Nath'vor Cannibal
step
>>杀死小屋内的|cRXP_ENEMY_Nog'shra|r和|cRXX_ENEMY_Yon'gi|r
.complete 47919,1 
.goto 863,49.21,33.09
.complete 47919,2 
.goto 863,50.70,35.66
.mob Corpse Monger Nog'shra
.mob Corpse Monger Yon'gi
step
#completewith next
.goto 863,49.50,38.40,45,0
>>拖动|cRXP_ENEMY_Jal'aka|r到|cRXP_FRIENDLY_Shoak|r，在营救时杀死她|cRXT_FRIENDLY_Shoak| r
.complete 47919,3 
.mob Corpse Monger Jal'aka
step
.goto 863,49.43,39.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoak|r and kill all the attacking mobs
.complete 47925,1 
.skipgossip
.timer 5,Shoak RP
.target Shoak
step
#label Jalaka
.goto 863,49.50,38.40
>>杀死|cRXP_ENEMY_Jal'aka|r
.complete 47919,3 
.mob Corpse Monger Jal'aka
step
#loop
.line 863,50.52,39.69,49.48,40.46,47.56,37.24,48.31,36.88,48.77,35.44,48.51,33.99,50.61,33.49,49.41,34.56,49.47,36.37,50.52,39.69
.goto 863,50.52,39.69,40,0
.goto 863,49.48,40.46,40,0
.goto 863,47.56,37.24,40,0
.goto 863,48.31,36.88,40,0
.goto 863,48.77,35.44,40,0
.goto 863,48.51,33.99,40,0
.goto 863,50.61,33.49,40,0
.goto 863,49.41,34.56,40,0
.goto 863,49.47,36.37,40,0
.goto 863,50.52,39.69,40,0
>>杀死|cRXP_ENEMY_Nath'vor食人族|r
.complete 47998,1 
.mob Nath'vor Cannibal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kajosh|r and |cRXP_FRIENDLY_Shoak|r
.turnin 47919 >>Turn in Just Say No to Cannibalism
.turnin 47998 >>Turn in Killing Cannibals
.goto 863,55.84,32.35
.turnin 47925 >>Turn in Shaok's on the Menu
.goto 863,55.81,32.25
.target Kajosh
.target Shoak
step
>>按照箭头指向|cRXP_FRIENDLY_Torga|r
.goto 863,55.56,28.79
.complete 49064,2 
.timer 29,Torga, The Turtle Loa RP
step
.goto 863,56.57,26.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。与|cRXP_FRIENDLY_Talanji|r通话。
>>|cRXP_WARN_与她交谈时请勿移动，否则您将不得不再次与|cRXP_FRIENDLY_Talanji|r交谈|r
.turnin 49064 >>Turn in Torga, the Turtle Loa
.accept 49067 >>接任务: |cRXP_WARN_求助邦桑迪|r
.complete 49067,1 
.turnin 49067 >>Turn in Beseeching Bwonsamdi
.accept 49080 >>接任务: |cRXP_WARN_终止召唤|r
.skipgossip 127961,1
.target Princess Talanji
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lashk, |cRXP_FRIENDLY_邦桑迪|r
.accept 49071 >>接任务: |cRXP_WARN_焚烧恐虱|r
.goto 863,56.51,26.65
.accept 49070 >>接任务: |cRXP_WARN_献给死神的灵魂|r
.goto 863,56.66,26.53
.target Lashk
.target Bwonsamdi
step
#completewith DreadtickL
>>杀死|cRXP_ENEMY_Loa-Gutter Drudges|r和|cRXX_ENEMY_Hexers|r
.complete 49070,1 
.mob Loa-Gutter Drudge
.mob Loa-Gutter Hexxer
step
#completewith next
>>杀死|cRXP_ENEMY_Dreadtick Leechrs|r。或者，使用|cRXD_ENEMY_Dreadtick Lee chers|r上的|T1500879:0|t[燃烧卷轴]
.complete 49071,1 
.use 153024
.mob Dreadtick Leecher
step
.goto 863,61.04,18.08
>>杀死Torga Innards内的|cRXP_ENEMY_召唤师雅兹|r
.complete 49080,1 
.mob Summoner Yarz
step
#label DreadtickL
#loop
.line 863,60.08,18.94,59.90,19.82,59.58,20.04,59.47,20.03,58.72,20.52,58.73,22.11,60.86,23.31,60.71,21.99,60.95,21.96,61.51,21.60,61.55,21.19,61.08,20.41,61.80,19.68,60.08,18.94
.goto 863,60.08,18.94,40,0
.goto 863,59.90,19.82,40,0
.goto 863,59.58,20.04,40,0
.goto 863,59.47,20.03,40,0
.goto 863,58.72,20.52,40,0
.goto 863,58.73,22.11,40,0
.goto 863,60.86,23.31,40,0
.goto 863,60.71,21.99,40,0
.goto 863,60.95,21.96,40,0
.goto 863,61.51,21.60,40,0
.goto 863,61.55,21.19,40,0
.goto 863,61.08,20.41,40,0
.goto 863,61.80,19.68,40,0
.goto 863,60.08,18.94,40,0
>>杀死|cRXP_ENEMY_Dreadtick Leechrs|r。或者，使用|cRXD_ENEMY_Dreadtick Lee chers|r上的|T1500879:0|t[燃烧卷轴]
.complete 49071,1 
.use 153024
.mob Dreadtick Leecher
step
#loop
.line 863,60.08,18.94,59.90,19.82,59.58,20.04,59.47,20.03,58.72,20.52,58.73,22.11,60.86,23.31,60.71,21.99,60.95,21.96,61.51,21.60,61.55,21.19,61.08,20.41,61.80,19.68,60.08,18.94
.goto 863,60.08,18.94,40,0
.goto 863,59.90,19.82,40,0
.goto 863,59.58,20.04,40,0
.goto 863,59.47,20.03,40,0
.goto 863,58.72,20.52,40,0
.goto 863,58.73,22.11,40,0
.goto 863,60.86,23.31,40,0
.goto 863,60.71,21.99,40,0
.goto 863,60.95,21.96,40,0
.goto 863,61.51,21.60,40,0
.goto 863,61.55,21.19,40,0
.goto 863,61.08,20.41,40,0
.goto 863,61.80,19.68,40,0
.goto 863,60.08,18.94,40,0
>>杀死|cRXP_ENEMY_Loa-Gutter Drudges|r和|cRXX_ENEMY_Hexers|r
.complete 49070,1 
.mob Loa-Gutter Drudge
.mob Loa-Gutter Hexxer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Talanji, Lashk, |cRXP_FRIENDLY_邦桑迪|r
.turnin 49080 >>Turn in Cease all Summoning
.goto 863,56.57,26.67
.turnin 49071 >>Turn in Dreadtick Combustion
.goto 863,56.51,26.65
.turnin 49070 >>Turn in Souls for the Death Loa
.accept 49120 >>接任务: |cRXP_WARN_与死者对话|r
.complete 49120,1 
.goto 863,56.66,26.53
.skipgossip
.timer 28,Speaking with the Dead RP
.target Princess Talanji
.target Lashk
.target Bwonsamdi
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t取消频道。与|cRXP_FRIENDLY_Talanji |r和|cRXP-FRIENDLY_Kisha|r交谈
.turnin 49120 >>Turn in Speaking with the Dead
.goto 863,56.57,26.67
.accept 49125 >>接任务: |cRXP_WARN_堕落之血|r
.goto 863,56.59,26.75
.target Princess Talanji
.target Kisha
step
#completewith NazmirCorruptedLoaBloodSix
>>确保释放|cRXP_FRIENDLY_Tortollan俘虏|r
>>杀死侧面的|cRXP_ENEMY_Blood Crawgs|r和|cRXX_ENEMY_Crawg Riders|r
.complete 51689,1 
.mob Blood Crawg
.mob Crawg Rider
step
.goto 863,59.99,25.95
>>在|cRXP_PICK_Corrupted Loa Blood|r上使用|T1500879:0|t[净化卷轴]
.complete 49125,1,1 
step
.goto 863,60.46,25.52
>>在|cRXP_PICK_Corrupted Loa Blood|r上使用|T1500879:0|t[净化卷轴]
.complete 49125,1,2 
step
.goto 863,62.07,24.51
>>在|cRXP_PICK_Corrupted Loa Blood|r上使用|T1500879:0|t[净化卷轴]
.complete 49125,1,3 
step
.goto 863,62.28,24.58
>>在地上抢夺卷轴
.complete 49125,2 
step
.goto 863,63.23,23.81
>>在|cRXP_PICK_Corrupted Loa Blood|r上使用|T1500879:0|t[净化卷轴]
.complete 49125,1,4 
step
.goto 863,62.83,23.12
>>在|cRXP_PICK_Corrupted Loa Blood|r上使用|T1500879:0|t[净化卷轴]
.complete 49125,1,5 
step
#label NazmirCorruptedLoaBloodSix
.goto 863,63.07,22.27
>>在|cRXP_PICK_Corrupted Loa Blood|r上使用|T1500879:0|t[净化卷轴]
.complete 49125,1,6 
step
>>确保释放|cRXP_FRIENDLY_Tortollan俘虏|r
>>杀死|cRXP_ENEMY_Blood Crawgs|r和|cRXX_ENEMY_Crawg Riders|r
.complete 51689,1 
.mob Blood Crawg
.mob Crawg Rider
step
.goto 863,63.81,21.18
>>在|cRXP_PICK_Corrupted Loa Blood|r上使用|T1500879:0|t[净化卷轴]
.complete 49125,1,7 
step
.goto 863,64.66,20.86
>>在|cRXP_PICK_Corrupted Loa Blood|r上使用|T1500879:0|t[净化卷轴]
.complete 49125,1 
step
#loop
.line 863,59.99,25.95,60.46,25.52,62.07,24.51,63.23,23.81,62.83,23.12,63.07,22.27,63.81,21.18,64.66,20.86,59.99,25.95
.goto 863,59.99,25.95,40,0
.goto 863,60.46,25.52,40,0
.goto 863,62.07,24.51,40,0
.goto 863,63.23,23.81,40,0
.goto 863,62.83,23.12,40,0
.goto 863,63.07,22.27,40,0
.goto 863,63.81,21.18,40,0
.goto 863,64.66,20.86,40,0
.goto 863,59.99,25.95,40,0
>>|cRXP_WARN_专注于释放|cRXP_FRIENDLY_Tortollan俘虏|r|r
>>杀死|cRXP_ENEMY_Blood Crawgs|r和|cRXX_ENEMY_Crawg Riders|r
.complete 51689,1 
.mob Blood Crawg
.mob Crawg Rider
step
.goto 863,65.45,17.95,30,0
.goto 863,65.72,17.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kisha|r under the tree
.turnin 49125 >>Turn in Negative Blood
.accept 49126 >>接任务: |cRXP_WARN_降下命运之手|r
.target Kisha
step
>>使用【ExtraActionButton】召唤命运之手
.goto 863,65.37,17.98
.complete 49126,1 
step
>>|cRXP_WARN_尽量把注意力集中在大群暴徒身上。|r
>>使用|T132298:0|t[命运一击]（1）造成伤害。使用|T1122134:0|t[命运之手贝肯]（2）造成AOE伤害。使用|T1014022:0|t【命运的刷新】（3）治疗命运之手。
.goto 863,64.28,17.83,20,0
.goto 863,63.33,16.62,20,0
.goto 863,63.30,15.44,20,0
.goto 863,63.13,14.11,20,0
.goto 863,61.87,13.95,20,0
.goto 863,61.55,15.29,20,0
.complete 49126,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kisha|r, |cRXP_FRIENDLY_Talanji|r, and |cRXP_FRIENDLY_Lashk|r
.turnin 49126 >>Turn in Forcing Fate's Hand
.accept 49130 >>接任务: |cRXP_WARN_无“神”饮食|r
.goto 863,58.48,13.78
.accept 49131 >>接任务: |cRXP_WARN_圣化土地|r
.goto 863,58.47,13.86
.accept 49132 >>接任务: |cRXP_WARN_粉碎碾颅者|r
.goto 863,58.51,13.89
.target Kisha
.target Princess Talanji
.target Lashk
step
#completewith SanctifyingT
>>杀死|cRXP_ENEMY_Skullcrusher|r、|cRXD_ENEMY_Loa-Gater屠夫|r和|cRXP_ENEMY_ Loa-Gateer飞镖|r。为|cRXP_Loot_Torga的零件|r掠夺|cRXT_ENEMY_屠夫|r
.complete 49132,1 
.complete 49130,1 
.mob Loa-Gutter Skullcrusher
.mob Loa-Gutter Butcher
.mob Loa-Gutter Darter
step
#title Totem placed 1/4
.goto 863,57.41,18.62
>>|TInterface/GossipFrame/HealerGossipIcon:0|tPlace the |cRXP_PICK_totem|r on the ground
.complete 49131,1,1 
step
#title Totem placed 2/4
.goto 863,56.73,20.94
>>|TInterface/GossipFrame/HealerGossipIcon:0|tPlace the |cRXP_PICK_totem|r on the ground
.complete 49131,1,2 
step
#title Totem placed 3/4
.goto 863,56.63,22.11
>>|TInterface/GossipFrame/HealerGossipIcon:0|tPlace the |cRXP_PICK_totem|r on the ground
.complete 49131,1,3 
step
#label SanctifyingT
#title Totem placed 4/4
.goto 863,55.64,21.58
>>|TInterface/GossipFrame/HealerGossipIcon:0|tPlace the |cRXP_PICK_totem|r on the ground
.complete 49131,1 
step
#loop
.line 863,54.48,23.27,55.96,23.38,57.17,22.88,58.09,21.44,58.11,20.19,58.81,17.23,57.52,15.52,55.99,17.07,56.10,18.58,54.39,18.72,54.11,20.19,55.06,20.43,54.48,23.27
.goto 863,54.48,23.27,50,0
.goto 863,55.96,23.38,50,0
.goto 863,57.17,22.88,50,0
.goto 863,58.09,21.44,50,0
.goto 863,58.11,20.19,50,0
.goto 863,58.81,17.23,50,0
.goto 863,57.52,15.52,50,0
.goto 863,55.99,17.07,50,0
.goto 863,56.10,18.58,50,0
.goto 863,54.39,18.72,50,0
.goto 863,54.11,20.19,50,0
.goto 863,55.06,20.43,50,0
.goto 863,54.48,23.27,50,0
>>杀死|cRXP_ENEMY_Skullcrusher|r、|cRXD_ENEMY_Loa-Gater屠夫|r和|cRXP_ENEMY_ Loa-Gateer飞镖|r。为|cRXP_Loot_Torga的零件|r掠夺|cRXT_ENEMY_屠夫|r
.complete 49132,1 
.complete 49130,1 
.mob Loa-Gutter Skullcrusher
.mob Loa-Gutter Butcher
.mob Loa-Gutter Darter
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lashk|r, |cRXP_FRIENDLY_Kisha|r, and |cRXP_FRIENDLY_Talanji|r
.turnin 49132 >>Turn in Crushing the Skullcrushers
.goto 863,56.51,26.65
.turnin 49130 >>Turn in Loa-Free Diet
.goto 863,56.59,26.75
.turnin 49131 >>Turn in Sanctifying Ground
.accept 49136 >>接任务: |cRXP_WARN_加恩诺，血神使徒|r
.goto 863,56.57,26.67
.target Lashk
.target Kisha
.target Princess Talanji
step
.goto 863,61.12,17.71
>>杀死|cRXP_ENEMY_Jungo|r。等待RP出来
.complete 49136,1 
.mob Jungo, Herald of G'huun
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talanji|r and |cRXP_FRIENDLY_Lashk|r
.turnin 49136 >>Turn in Jungo, Herald of G'huun
.goto 863,56.57,26.67
.accept 49160 >>接任务: |cRXP_WARN_托加的不灭轮回|r
.goto 863,56.51,26.65
.target Princess Talanji
.target Lashk
step
>>使用|T1103069:0|t[永恒回归卷轴]，然后与|cRXP_FRIENDLY_Kisha|r对话
.target Kisha
.complete 49160,1 
.goto 863,56.57,26.67
.turnin 49160 >>Turn in Torga's Eternal Return
.accept 49902 >>接任务: |cRXP_WARN_前往林荫巨木|r
.goto 863,56.59,26.75
.use 153131
step
.goto 863,55.73,39.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crez|r
.target Crez
.complete 49902,1,1 
.skipgossip
step
.goto 863,60.23,46.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korkush|r
.target Korkush
.complete 49902,1,2 
.skipgossip
step
.goto 863,63.87,47.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yash|r
.target Yash
.complete 49902,1 
.skipgossip
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛坎|r, Mutumba
.turnin 49902 >>Turn in To Gloom Hollow
.accept 47245 >>接任务: |cRXP_WARN_获得消息|r
.goto 863,67.43,42.31
.accept 47525 >>接任务: |cRXP_WARN_保持隐蔽|r
.goto 863,67.41,42.06
.target Rokhan
.target Shadow Hunter Mutumba
step
.goto 863,68.55,43.80
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Message Rocket|r
.complete 47245,1 
step
>>顺着箭头走到青蛙沼泽
.goto 863,68.57,46.17
.complete 47525,1 
step
.goto 863,68.59,46.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Zentimo|r
.target Witch Doctor Zentimo
.turnin 47525 >>Turn in Staying Hidden
.accept 47659 >>接任务: |cRXP_WARN_猎人与猎物|r
.accept 47660 >>接任务: |cRXP_WARN_遗落的雕像|r
step
.goto 863,69.46,48.57
>>将|cRXP_PICK_Idol|r洗劫一空
.complete 47660,1,1 
step
.goto 863,69.58,48.96
>>将|cRXP_PICK_Idol|r洗劫一空
.complete 47660,1,2 
step
.goto 863,69.22,49.74
>>将|cRXP_PICK_Idol|r洗劫一空
.complete 47660,1,3 
step
.goto 863,69.15,50.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mag'ash|r on the ground
.accept 48402 >>接任务: |cRXP_WARN_剧毒之触|r
.target Mag'ash the Poisonous
step
#completewith NazmirStolenIdolofKragwa
>>在|cRXP_ENEMY_Bloodhunter Drudges|r、|cRXX_ENEMY_Stalkers|r或|cRXD_ENEMY_Boatema|r上使用[ExtraActionButton]。|cRXP_WARN_不能多次毒死同一个巨魔|r
.complete 48402,1 
.mob Bloodhunter Drudge
.mob Bloodhunter Stalker
step
.goto 863,68.50,50.36
>>将|cRXP_PICK_Idol|r洗劫一空
.complete 47660,1,4 
step
#sticky
#label Boatema
.goto 863,68.24,51.61,0,0
>>杀死|cRXP_ENEMY_Warmhother Boatema|r
.complete 47659,1 
.mob Warmother Boatema
step
.goto 863,68.65,50.89
>>将|cRXP_PICK_Idol|r洗劫一空
.complete 47660,1,5 
step
.goto 863,68.17,51.40
>>将|cRXP_PICK_Idol|r洗劫一空
.complete 47660,1,6 
step
.goto 863,68.20,51.97
>>将|cRXP_PICK_Idol|r洗劫一空
.complete 47660,1,7 
step
#requires Boatema
#label NazmirStolenIdolofKragwa
.goto 863,68.96,51.75
>>将|cRXP_PICK_Idol|r洗劫一空
.complete 47660,1 
step
.goto 863,69.03,52.39,40,0
.goto 863,68.71,52.98,40,0
.goto 863,67.88,53.77,40,0
.goto 863,67.08,52.39,40,0
.goto 863,67.15,50.06,40,0
.goto 863,69.03,52.39,40,0
.goto 863,68.71,52.98,40,0
.goto 863,67.88,53.77,40,0
.goto 863,67.08,52.39,40,0
.goto 863,67.15,50.06
>>使用|cRXP_ENEMY_Bloodhunter Drudges|r、|cRXD_ENEMY_Stalkers|r或|cRXP_ENEMY_Boatema|r上的“额外操作”按钮。|cRXP_WARN_您不能多次毒死同一个巨魔|r
.complete 48402,1 
.mob Bloodhunter Drudge
.mob Bloodhunter Stalker
.mob Warmother Boatema
step
.goto 863,73.37,53.68,40,0
.goto 863,75.49,56.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krag'wa the Huge|r
.target Krag'wa the Huge
.turnin 47659 >>Turn in Hunt the Hunter
.turnin 47660 >>Turn in Fallen Idols
.turnin 48402 >>Turn in A Poisonous Touch
.accept 47623 >>接任务: |cRXP_WARN_卡格瓦最后的巫医|r
step
.goto 863,75.13,56.69
>>掠夺漂浮的|cRXP_PICK_Scepter|r，然后点击地上的|cRXP_FRIENDLY_Zentimo|r尸体
.complete 47623,1 
.complete 47623,2 
.target Zentimo
step
.goto 863,75.49,56.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krag'wa the Huge|r
.target Krag'wa the Huge
.turnin 47623 >>Turn in The Last Witch Doctor of Krag'wa
.accept 47621 >>接任务: |cRXP_WARN_神之盛宴|r
.accept 47622 >>接任务: |cRXP_WARN_魔幻萤光|r
step
#completewith next
>>杀死|cRXP_ENEMY_Frogmarsh剃刀|r、|cRXX_ENEMY_Frogmarsh河兽|r和|cRXP_ENEMY_Angry Dreadcrocs|r。掠夺它们的|cRXD_OOT_meat|r
.complete 47621,1 
.mob Frogmarsh Razormaw
.mob Frogmarsh Riverbeast
.mob Angry Dreadcroc
step
>>使用|cRXP_FRIENDLY_Beautiful Glowflies|r附近的|T135446:0|t[Glowfly Bottle]收集它们
.goto 863,73.25,48.21,20,0
.goto 863,73.36,48.29,20,0
.goto 863,73.22,47.65,20,0
.goto 863,74.69,45.60,20,0
.goto 863,75.07,45.59,20,0
.goto 863,75.46,45.16,20,0
.goto 863,75.99,46.02,20,0
.goto 863,76.36,45.63,20,0
.goto 863,76.60,44.67,20,0
.goto 863,77.47,45.89,20,0
.goto 863,77.18,47.32,20,0
.goto 863,76.12,47.44,20,0
.goto 863,73.25,48.21,20,0
.goto 863,73.36,48.29
.complete 47622,1 
.use 151237
step
.goto 863,73.25,48.21,20,0
.goto 863,73.36,48.29,20,0
.goto 863,73.22,47.65,20,0
.goto 863,74.69,45.60,20,0
.goto 863,75.07,45.59,20,0
.goto 863,75.46,45.16,20,0
.goto 863,75.99,46.02,20,0
.goto 863,76.36,45.63,20,0
.goto 863,76.60,44.67,20,0
.goto 863,77.47,45.89,20,0
.goto 863,77.18,47.32,20,0
.goto 863,76.12,47.44,20,0
.goto 863,73.25,48.21,20,0
.goto 863,73.36,48.29
>>杀死|cRXP_ENEMY_Frogmarsh剃刀|r、|cRXX_ENEMY_Frogmarsh河兽|r和|cRXP_ENEMY_Angry Dreadcrocs|r。掠夺它们的|cRXD_OOT_meat|r
.complete 47621,1 
.mob Frogmarsh Razormaw
.mob Frogmarsh Riverbeast
.mob Angry Dreadcroc
step
.goto 863,77.73,53.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Narez|r
.target Shadow Hunter Narez
.accept 48092 >>接任务: |cRXP_WARN_青蛙的复仇|r
.accept 48090 >>接任务: |cRXP_WARN_卡格瓦的勇士|r
step
#completewith Kroldra
>>|cRXP_WARN_专注于销毁青蛙容器|r
>>杀死|cRXP_ENEMY_Vilescale Mana品尝者|r和|cRXX_ENEMY_Villescale守护者|r
.complete 48093,1 
.mob Vilescale Mana Taster
.mob Vilescale Guardian
step
.goto 863,79.37,53.85
>>在|cRXP_FRIENDLY_Wok'grug|r上使用|T236885:0|t[授权药剂]
.complete 48090,3 
.use 158071
.target Wok'grug the Clever
step
.goto 863,82.36,55.80
>>在|cRXP_FRIENDLY_Wag'sash|r上使用|T236885:0|t[授权药剂]
.complete 48090,1 
.use 158071
.target Wag'shash the Bold
step
.goto 863,85.34,54.91
>>杀死|cRXP_ENEMY_女祭司Zaldraxia|r
.complete 48092,1 
.mob Priestess Zaldraxia
step
#label Kroldra
.goto 863,80.35,50.32
>>在|cRXP_FRIENDLY_Kro'dra|r上使用|T236885:0|t[授权药剂]
.complete 48090,2 
.use 158071
.target Krol'dra the Wise
step
#loop
.line 863,80.66,53.80,81.12,55.26,82.87,54.44,83.14,53.54,83.07,53.19,83.79,53.20,81.75,47.61,81.49,48.41,82.55,51.58,80.66,53.80
.goto 863,80.66,53.80,40,0
.goto 863,81.12,55.26,40,0
.goto 863,82.87,54.44,40,0
.goto 863,83.14,53.54,40,0
.goto 863,83.07,53.19,40,0
.goto 863,83.79,53.20,40,0
.goto 863,81.75,47.61,40,0
.goto 863,81.49,48.41,40,0
.goto 863,82.55,51.58,40,0
.goto 863,80.66,53.80,40,0
>>|cRXP_WARN_专注于销毁青蛙容器|r
>>杀死|cRXP_ENEMY_Vilescale Mana品尝者|r和|cRXX_ENEMY_Villescale守护者|r
.complete 48093,1 
.mob Vilescale Mana Taster
.mob Vilescale Guardian
step
.goto 863,77.73,53.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Narez|r
.target Shadow Hunter Narez
.turnin 48090 >>Turn in Krag'wa's Chosen
.turnin 48092 >>Turn in Vengeance of the Frogs
step
#completewith next
.goto 863,77.43,54.83,20,0
.goto 863,76.02,54.80,10,0
.goto 863,75.52,54.85,12 >>抄近路回克拉格瓦
step
.goto 863,75.49,56.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krag'wa the Huge|r
.target Krag'wa the Huge
.turnin 47621 >>Turn in A True Loa Feast
.turnin 47622 >>Turn in A Magical Glow
.accept 47540 >>接任务: |cRXP_WARN_图腾恢复仪式|r
step
.goto 863,75.34,56.35
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Totem Pile|r
.complete 47540,1,1 
step
.goto 863,75.19,56.70
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Totem Pile|r
.complete 47540,1,2 
step
.goto 863,75.68,56.37
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Totem Pile|r
.complete 47540,1 
step
.goto 863,75.49,56.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krag'wa the Huge|r
.target Krag'wa the Huge
.turnin 47540 >>Turn in Totemic Restoration
.accept 47696 >>接任务: |cRXP_WARN_强大的卡格瓦|r
step
>>按照箭头指向|cRXP_FRIENDLY_Krag'wa the Juge|r
.goto 863,67.43,55.82
.complete 47696,1 
.target Krag'wa the Huge
step
#completewith next
.vehicle >>前往Razorjaw河。与|cRXP_FRIENDLY_Krag'wa the Juge|r交谈
.target Krag'wa the Huge
.goto 863,67.12,56.24
.skipgossip
step
>>使用|T135800:0|t[腹部粉碎]（1）跳到|cRXP_ENEMY_trolls|r上杀死它们。使用|T237579:0|t[舌头鞭笞]（2）在近战范围内杀死|cRXP_ENEMY_trolls|r
>>杀死|cRXP_ENEMY_Ren'Zuli|r和|cRXD_ENEMY_Bloodhunter Warriors|r、|cRXP_ENEMY_War Slaves |r和| cRXP__ENEMY_War-Witches|r
.complete 47696,3 
.goto 863,60.01,53.35
.complete 47696,2 
.goto 863,60.81,52.56,60,0
.goto 863,61.85,52.67,60,0
.goto 863,62.22,54.44,60,0
.goto 863,62.79,55.60
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krag'wa|r and |cRXP_FRIENDLY_Mutumba|r
.turnin 47696 >>Turn in Krag'wa the Terrible
.goto 863,75.49,56.81
.accept 47697 >>接任务: |cRXP_WARN_卡格瓦的帮助|r
.goto 863,75.18,56.67
.target Krag'wa the Huge
.target Shadow Hunter Mutumba
step
>>沿着箭头返回Gloom Hollow
.goto 863,67.53,43.23
.complete 47697,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛坎|r, Talanji
.turnin 47245 >>Turn in Getting the Message
.accept 47631 >>接任务: |cRXP_WARN_与祭酒号会合|r
.goto 863,67.43,42.31
.turnin 47697 >>Turn in Krag'wa's Aid
.goto 863,67.43,42.24
.target Rokhan
.target Princess Talanji
step
>>按照箭头指向|cRXP_FRIENDLY_Patch|r
.goto 863,74.45,39.48
.complete 47631,1 
.target Patch
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补丁|r, |cRXP_FRIENDLY_钟摆|r
.turnin 47631 >>Turn in Rendezvous with the Libation
.accept 47597 >>接任务: |cRXP_WARN_一个地精都不能少|r
.goto 863,74.59,38.86
.accept 47599 >>接任务: |cRXP_WARN_火热的复仇|r
.goto 863,74.76,39.01
.target Patch
.target Ticker
step
#completewith TickersRL
>>重点抢救|cRXP_FRIENDLY_受伤|r和|cRXP_FRIENDLY_适应水手|r
>>杀死|cRXP_ENEMY_Vilescale奴隶|r、|cRXD_ENEMY_魔法师|r和|cRXP_ENEMY_Fathom-Hunters|r
.complete 47756,1 
.mob Vilescale Slaver
.mob Vilescale Sorceress
.mob Vilescale Fathom-Hunter
.target Injured Sailor
.target Captive Sailor
step
.goto 863,77.69,36.14
.turnin 49867 >>将|cRXP_PICK_箱子|r洗劫一空
step
#completewith next
>>在|cRXP_ENEMY_Vilescale Behemoths|r上使用|T369278:0|t[Ticker’s Rocket Launcher]
.complete 47599,1 
.use 151363
.mob Vilescale Behemoth
step
>>营救|cRXP_FRIENDLY_Newt|r、|cRXP_RIENDLY_Grit|r和|cRXP_RIENDLY_Volt|r
.complete 47597,2 
.goto 863,79.30,36.73
.complete 47597,1 
.goto 863,76.99,32.64
.complete 47597,3 
.goto 863,79.95,32.36
.target Newt
.target Grit
.target Volt
step
#label TickersRL
.goto 863,80.50,30.12,40,0
.goto 863,80.34,32.57,40,0
.goto 863,81.05,33.56,40,0
.goto 863,81.26,33.32,40,0
.goto 863,79.57,35.34,40,0
.goto 863,78.56,34.92,40,0
.goto 863,78.34,37.10,40,0
.goto 863,78.71,32.47,40,0
.goto 863,77.55,29.65,40,0
>>在|cRXP_ENEMY_Vilescale Behemoths|r上使用|T369278:0|t[Ticker’s Rocket Launcher]
.complete 47599,1 
.use 151363
.mob Vilescale Behemoth
step
#loop
.line 863,78.54,30.05,80.01,31.77,79.85,33.79,78.93,33.32,78.67,34.31,78.20,34.73,76.56,33.56,77.67,33.17,76.90,31.62,78.54,30.05
.goto 863,78.54,30.05,50,0
.goto 863,80.01,31.77,50,0
.goto 863,79.85,33.79,50,0
.goto 863,78.93,33.32,50,0
.goto 863,78.67,34.31,50,0
.goto 863,78.20,34.73,50,0
.goto 863,76.56,33.56,50,0
.goto 863,77.67,33.17,50,0
.goto 863,76.90,31.62,50,0
.goto 863,78.54,30.05,50,0
>>集中力量救助伤病船员
>>杀死邪恶的奴隶、魔法师和Fathom猎人
.complete 47756,1 
step << skip
.goto 863,82.15,26.70
.fp Forlon Ruins >>获取Forlon Ruins的飞行路线
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补丁|r, |cRXP_FRIENDLY_钟摆|r, |cRXP_FRIENDLY_蝾螈|r
.goto 863,82.10,26.94,20,0
.turnin 47597 >>Turn in No Goblin Left Behind
.accept 47711 >>接任务: |cRXP_WARN_毒蛇首领|r
.goto 863,82.37,27.30
.turnin 47599 >>Turn in Revenge: Served Hot
.accept 47596 >>接任务: |cRXP_WARN_没有替代方案|r
.goto 863,82.10,26.94
.accept 47598 >>接任务: |cRXP_WARN_不择手段|r
.goto 863,82.28,27.41
.target Patch
.target Ticker
.target Newt
step
#completewith FiringMechanism
>>杀死|cRXP_ENEMY_Vilescale Warriors|r、|cRXD_ENEMY_Hydromancers|r和|cRXP_ENEMY_Tidebinder|r。掠夺他们的|cRXP_Loot_遗迹|r
.complete 47598,1 
.mob Vilescale Warrior
.mob Vilescale Hydromancer
.mob Vilescale Tidebinder
step
.goto 863,79.16,27.43
>>在地面上掠夺|cRXP_PICK_Gears|r
.complete 47596,2 
step
.goto 863,78.63,25.15
>>杀死|cRXP_ENEMY_Lord Slithin|r
.complete 47711,1 
.mob Lord Slithin
step
.goto 863,77.67,25.28
>>将|cRXP_PICK_Barrel|r从地上偷走
.complete 47596,1 
step
#label FiringMechanism
.goto 863,79.57,22.25
>>地面上的|cRXP_PICK_Mechanism|r被盗
.complete 47596,3 
step
#loop
.line 863,79.16,27.43,77.67,25.28,79.57,22.25
.goto 863,79.16,27.43,50,0
.goto 863,77.67,25.28,50,0
.goto 863,79.57,22.25,50,0
>>杀死|cRXP_ENEMY_Vilescale Warriors|r、|cRXD_ENEMY_Hydromancers|r和|cRXP_ENEMY_Tidebinder|r。掠夺他们的|cRXP_Loot_遗迹|r
.complete 47598,1 
.mob Vilescale Warrior
.mob Vilescale Hydromancer
.mob Vilescale Tidebinder
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蝾螈|r, |cRXP_FRIENDLY_补丁|r, |cRXP_FRIENDLY_钟摆|r
.goto 863,82.10,26.94,20,0
.turnin 47598 >>Turn in Pilfering and Fencing
.goto 863,82.28,27.41
.turnin 47711 >>Turn in Head of the Viper
.accept 47601 >>接任务: |cRXP_WARN_实战评估|r
.goto 863,82.37,27.30
.turnin 47596 >>Turn in There Is No Plan "B"
.goto 863,82.37,27.30
.target Newt
.target Patch
.target Ticker
step
>>安装|cRXP_FRIENDLY_A.M.OD.|r
.goto 863,81.45,26.02
.complete 47601,1 
.target A.M.O.D.
step
.goto 863,75.22,20.81
>>使用|T236179:0|t[烈性炸药]（1）杀死|cRXP_ENEMY_Naga|r
.complete 47601,2,10 
step
.goto 863,75.48,18.12
>>使用|T134291:0|t[集群射击]（2）杀死|cRXP_ENEMY_Nagas|r。|cRXP-WARN_Ignore the turrets|r
.complete 47601,2 
step
.goto 863,77.56,16.55
>>使用|T1141394:0|t[Azerite Empowered Shell]（3）杀死|cRXP_ENEMY_Grobathan|r
.complete 47601,3 
step
.goto 863,81.34,26.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_补丁|r
.target Patch
.turnin 47601 >>Turn in Field Evaluation
.accept 47602 >>接任务: |cRXP_WARN_整装待发|r
.timer 6,Ready for Action RP
step
.goto 863,81.31,26.23
>>在RP后安装|cRXP_PICK_Newt的应急火箭|r
.complete 47602,1 
.skipgossip
.timer 21, Ready for Action Flight
step
>>运行回|cRXP_FRIENDLY_Talanji|r
.goto 863,67.26,42.86
.complete 47602,2 
.target Princess Talanji
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talanji|r and |cRXP_FRIENDLY_Lashk|r
.turnin 47602 >>Turn in Ready For Action
.goto 863,67.43,42.24
.accept 49932 >>接任务: |cRXP_WARN_不再沉睡|r
.goto 863,67.49,41.95
.target Princess Talanji
.target Lashk
step
#completewith next
.goto 863,67.01,41.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crez|r
.target Crez
.vendor
step
>>单击|cRXP_FRIENDLY_Titan-Keeper|r、|cRXP_PICK_Damaged Core |r，然后再次单击|cRXP_RIENDLY_Titan-Keeper |r。短RP后与|cRXP_FRIENDLY_him|r通话
.complete 49932,1 
.goto 863,66.92,38.88
.complete 49932,2 
.goto 863,66.96,38.79
.complete 49932,3 
.goto 863,66.92,38.88
.target Titan Keeper Hezrel
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Titan Keeper Hezrel|r
.target Titan Keeper Hezrel
.turnin 49932 >>Turn in Slumber No More
.accept 49935 >>接任务: |cRXP_WARN_泰坦守护者的修复方法|r
.accept 49938 >>接任务: |cRXP_WARN_腐化世界|r
.accept 49937 >>接任务: |cRXP_WARN_取回护甲残片|r
.goto 863,66.92,38.88
step
#completewith next
>>杀死|cRXP_ENEMY_Blood-Infused Lashers|r和|cRXD_ENEMY_Nawathan Spectres|r。掠夺|cRXP_ENEMY_Spectres| r以获得它们的|cRXP_Loot_TTitan镀层|r
.complete 49937,1 
.complete 49938,1 
.mob Blood-Infused Lasher
.mob Nawathan Spectre
step
.goto 863,66.18,33.65
>>单击|cRXP_ENEMY_Titan Keeper Bolcan|r。
>>杀死|cRXP_ENEMY_him|r。掠夺他的|cRXX_OOT_core|r
.complete 49935,2 
.target Titan Keeper Bolcan
.mob Titan Keeper Bolcan
step
#completewith next
.goto 863,67.87,36.23,30,0
>>杀死|cRXP_ENEMY_Blood-Infused Lashers|r和|cRXD_ENEMY_Nawathan Spectres|r。掠夺|cRXP_ENEMY_Spectres| r以获得它们的|cRXP_Loot_TTitan镀层|r
.complete 49937,1 
.complete 49938,1 
.mob Blood-Infused Lasher
.mob Nawathan Spectre
step
.goto 863,69.24,39.77
>>在地面上拾取|cRXP_Pick_Shavras的核心|r
.complete 49935,1 
step
#loop
.line 863,67.60,37.69,65.81,38.31,66.41,36.02,65.63,32.81,66.71,32.93,67.74,34.00,67.45,36.10,67.92,36.77,69.12,36.64,69.96,39.46,67.60,37.69
.goto 863,67.60,37.69,40,0
.goto 863,65.81,38.31,40,0
.goto 863,66.41,36.02,40,0
.goto 863,65.63,32.81,40,0
.goto 863,66.71,32.93,40,0
.goto 863,67.74,34.00,40,0
.goto 863,67.45,36.10,40,0
.goto 863,67.92,36.77,40,0
.goto 863,69.12,36.64,40,0
.goto 863,69.96,39.46,40,0
.goto 863,67.60,37.69,40,0
>>杀死|cRXP_ENEMY_Blood-Infused Lashers|r和|cRXD_ENEMY_Nawathan Spectres|r。掠夺|cRXP_ENEMY_Spectres| r以获得它们的|cRXP_Loot_TTitan镀层|r
.complete 49937,1 
.complete 49938,1 
.mob Blood-Infused Lasher
.mob Nawathan Spectre
step
.goto 863,68.68,35.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Titan Keeper Hezrel|r
.target Titan Keeper Hezrel
.turnin 49935 >>Turn in How to Repair a Titan Keeper
.turnin 49937 >>Turn in Recovering Remnants
.turnin 49938 >>Turn in Corrupted Earth
.accept 49941 >>接任务: |cRXP_WARN_行走的巨兽|r
.accept 49949 >>接任务: |cRXP_WARN_不受欢迎的亡灵|r
step
#completewith Monstrosity
>>杀死|cRXP_ENEMY_Nazwathan守护者|r和|cRXX_ENEMY_Blood Benders|r
.complete 49949,1 
.mob Nazwathan Guardian
.mob Nazwathan Blood Bender
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Minor Corruption|r
.target Minor Corruption
.goto 863,69.25,33.81
.accept 49950 >>接任务: |cRXP_WARN_鲜血净化|r
step
#completewith next
>>使用|cRXP_ENEMY_Reanimated Monstersions|r上的|T897143:0|t[泰坦操纵器]削弱并杀死它们。掠夺它们的|cRXP_Loot_bones|r
.complete 49941,1 
.use 156528
.mob Reanimated Monstrosity
step
.goto 863,69.50,33.30
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Corrupted Energy|r to destroy it
.complete 49950,1,1 
step
#completewith next
.goto 863,72.32,33.32,40,0
.goto 863,73.03,37.19,40,0
>>使用|cRXP_ENEMY_Reanimated Monstersions|r上的|T897143:0|t[泰坦操纵器]削弱并杀死它们。掠夺它们的|cRXP_Loot_bones|r
.complete 49941,1 
.use 156528
.mob Reanimated Monstrosity
step
.goto 863,68.80,31.61
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Corrupted Energy|r to destroy it
.complete 49950,1,2 
step
.goto 863,69.44,30.56,15,0
.goto 863,69.25,30.28
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Corrupted Energy|r to destroy it
.complete 49950,1,3 
step
#label CEnergy
.goto 863,70.10,29.86
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Corrupted Energy|r to destroy it
.complete 49950,1 
step
#label Monstrosity
.goto 863,67.09,28.98,40,0
.goto 863,66.44,31.53,40,0
.goto 863,73.03,37.19,40,0
.goto 863,72.32,33.32,40,0
.goto 863,68.80,31.61,40,0
.goto 863,70.10,29.86,40,0
.goto 863,67.09,28.98,40,0
.goto 863,66.44,31.53,40,0
.goto 863,73.03,37.19,40,0
.goto 863,72.32,33.32,40,0
.goto 863,68.80,31.61,40,0
.goto 863,70.10,29.86,40,0
>>使用|cRXP_ENEMY_Reanimated Monstersions|r上的|T897143:0|t[泰坦操纵器]削弱并杀死它们。掠夺它们的|cRXP_Loot_bones|r
.complete 49941,1 
.use 156528
.mob Reanimated Monstrosity
step
#loop
.line 863,69.31,34.13,69.89,33.36,69.30,32.36,70.54,29.97,69.87,27.55,68.68,27.81,69.31,34.13,71.77,36.71,73.56,34.64,72.74,32.87,70.94,35.02,69.89,33.36
.goto 863,69.31,34.13,50,0
.goto 863,69.89,33.36,50,0
.goto 863,69.30,32.36,50,0
.goto 863,70.54,29.97,50,0
.goto 863,69.87,27.55,50,0
.goto 863,68.68,27.81,50,0
.goto 863,69.31,34.13,50,0
.goto 863,71.77,36.71,50,0
.goto 863,73.56,34.64,50,0
.goto 863,72.74,32.87,50,0
.goto 863,70.94,35.02,50,0
.goto 863,69.89,33.36,50,0
>>杀死|cRXP_ENEMY_Nazwathan守护者|r和|cRXX_ENEMY_Blood Benders|r
.complete 49949,1 
.mob Nazwathan Guardian
.mob Nazwathan Blood Bender
step
.goto 863,68.68,35.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Titan Keeper Hezrel|r
.target Titan Keeper Hezrel
.turnin 49941 >>Turn in Bone Procession
.turnin 49949 >>Turn in Unwelcome Undead
.turnin 49950 >>Turn in Blood Purification
.accept 49957 >>接任务: |cRXP_WARN_夺回协议|r
.accept 49956 >>接任务: |cRXP_WARN_禁止虚空通道|r
.accept 49955 >>接任务: |cRXP_WARN_不应在此界|r
step
#completewith VoidPortals
>>杀死|cRXP_ENEMY_Faceless Corruptors|r、|cRXD_ENEMY_Destroyers|r和|cRXP_ENEMY_Subjugators|r
.complete 49955,1 
.mob Faceless Corruptor
.mob Faceless Destroyer
.mob Faceless Subjugator
step
.goto 863,70.52,32.34
>>使用|cRXP_PICK_Void门户|r旁边的|T2347445:0|t[Void Disruptor]
.complete 49956,1,1 
.use 156542
step
.goto 863,70.70,31.72,15,0
.goto 863,70.32,31.17
>>使用|cRXP_PICK_Void门户|r旁边的|T2347445:0|t[Void Disruptor]
.complete 49956,1,2 
.use 156542
step
.goto 863,71.38,30.08
>>使用|cRXP_PICK_Void门户|r旁边的|T2347445:0|t[Void Disruptor]
.complete 49956,1,3 
.use 156542
step
#label VoidPortals
.goto 863,71.22,31.32
>>使用|cRXP_PICK_Void门户|r旁边的|T2347445:0|t[Void Disruptor]
.complete 49956,1 
.use 156542
step
.goto 863,71.22,32.55,20,0
.goto 863,72.30,31.15,20,0
.goto 863,74.51,31.56,30,0
.goto 863,72.30,31.15,40,0
.goto 863,70.93,29.20,20,0
.goto 863,70.99,27.56,20,0
>>杀死|cRXP_ENEMY_Faceless Corruptors|r、|cRXD_ENEMY_Destroyers|r和|cRXP_ENEMY_Subjugators|r
.complete 49955,1 
.mob Faceless Corruptor
.mob Faceless Destroyer
.mob Faceless Subjugator
step
.goto 863,71.96,30.20,20,0
.goto 863,72.83,28.92
>>杀死|cRXP_ENEMY_Overlord Kraxis|r。掠夺他的|cRXP_Loot_协议|r
.complete 49957,1 
.mob Overlord Kraxis
step
.goto 863,72.47,29.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Titan Keeper Hezrel|r. 按键盘上的“Escape”可跳过电影
.turnin 49955 >>Turn in Not Fit for This Plane
.turnin 49956 >>Turn in Void is Prohibited
.turnin 49957 >>交任务: |cRXP_FRIENDLY_准则|r Recovery
.accept 49980 >>接任务: |cRXP_WARN_抑制程序|r
.complete 49980,1 
.skipgossip 131253,1
.target Titan Keeper Hezrel
step
.goto 863,72.82,28.92
>>Kill Grand Ma'da Ateena
*Run to Hezrel's bubble when Ateena casts Bloody Apocalypse
.complete 49980,2 
step
.goto 863,72.47,29.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Titan Keeper Hezrel|r
.target Titan Keeper Hezrel
.turnin 49980 >>交任务: |cRXP_FRIENDLY_全面遏制|r Procedure
.accept 49985 >>接任务: |cRXP_WARN_返回林荫巨木|r
step
.goto 863,71.85,30.39
.vehicle >>外部安装|cRXP_FRIENDLY_Hezrel|r
.timer 18,Hezrel Ride RP
.isOnQuest 49985
.complete 49985,1 
.target Titan Keeper Hezrel
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talanji|r and |cRXP_FRIENDLY_Yash|r
.turnin 49985 >>Turn in Return to Gloom Hollow
.goto 863,67.43,42.24
.accept 50934 >>接任务: |cRXP_WARN_偶然的发现|r
.goto 863,66.84,41.93
.target Princess Talanji
.target Yash
step << skip
.goto 863,66.98,43.78
.fp Gloom Hollow >>获取Gloom Hollow飞行路线
step
.goto 863,64.01,50.39
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Antidote|r on the ground
.turnin 50934 >>Turn in A Chance Sighting
.accept 49366 >>接任务: |cRXP_WARN_治疗伤员|r
step
.goto 863,63.99,50.39
>>使用|cRXP_FRIENDLY_Guard Satao |r上的|T650641:0|t[小瓶液体]启动RP
.complete 49366,1 
.timer 46,Aid the Wounded RP
.use 153676
.target Guard Satao
step
.goto 863,63.16,52.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP结束。与|cRXP_FRIENDLY_Guard Satao通话|r
.target Guard Satao
.turnin 49366 >>Turn in Aid the Wounded
.accept 49370 >>接任务: |cRXP_WARN_营救记载者|r
.accept 49380 >>接任务: |cRXP_WARN_邪恶魂能|r
.accept 49377 >>接任务: |cRXP_WARN_消灭首领|r
step
.goto 863,62.53,53.56
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Cage Anchor|r
.complete 49370,1 
step
.goto 863,62.72,53.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chronicler Jabari|r
.target Chronicler Jabari
.turnin 49370 >>Turn in Rescue the Chronicler
.accept 49378 >>接任务: |cRXP_WARN_赢取信任|r
.accept 49379 >>接任务: |cRXP_WARN_无“兽”区|r
step
.goto 863,61.84,52.48
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on a |cRXP_FRIENDLY_Crawgling|r to bond with it
.complete 49378,1 
step
#completewith Nagla
>>杀死|cRXP_ENEMY_Battle Crawgs|r，|cRXD_ENEMY_Amaki War Slaves |r，| cRXP__ENEMY_Amaki-Guards|r和|cRXP_ENEMY_Amaki Bloodsinger|r
.complete 49378,2 
.complete 49379,1 
.mob Amaki War Slave
.mob Amaki Guard
.mob Amaki Bloodsinger
.mob Battle Crawg
step
.goto 863,60.17,53.42
>>使用|cRXP_PICK_Blood Orb|r上的|T134865:0|t[样品瓶]
.complete 49380,1 
.use 153678
step
.goto 863,60.47,55.82
>>使用|cRXP_PICK_Blood Orb|r上的|T134865:0|t[样品瓶]
.complete 49380,3 
.use 153678
step
#label Nagla
.goto 863,62.12,57.32
>>杀死|cRXP_ENEMY_Warmhother Nagla|r。为他的|cRXX_Loot_head而掠夺她|r
.complete 49377,1 
.mob Warmother Nagla
step
#completewith BloodOrbD
>>杀死|cRXP_ENEMY_Amaki War Slaves |r、|cRXD_ENEMY_ Amaki Guards|r和|cRXP_ENEMY_Amaki Bloodsinger|r，以喂给|cRXT_FRIENDLY_Crawling|r
.complete 49378,2 
.mob Amaki War Slave
.mob Amaki Guard
.mob Amaki Bloodsinger
step
#loop
.line 863,62.79,57.23,62.93,57.79,62.20,58.34,60.74,58.57,61.56,56.58,62.60,55.29,62.79,57.23
.goto 863,62.79,57.23,30,0
.goto 863,62.93,57.79,30,0
.goto 863,62.20,58.34,30,0
.goto 863,60.74,58.57,30,0
.goto 863,61.56,56.58,30,0
.goto 863,62.60,55.29,30,0
.goto 863,62.79,57.23,30,0
>>杀死该区域的|cRXP_ENEMY_Battle Crawgs|r
.complete 49379,1 
.mob Battle Crawg
step
#label BloodOrbD
.goto 863,62.18,54.47
>>使用|cRXP_PICK_Blood Orb|r上的|T134865:0|t[样品瓶]
.complete 49380,2 
.use 153678
step
#loop
.line 863,62.18,54.47,60.17,53.42,60.47,55.82,62.18,54.47
.goto 863,62.18,54.47,40,0
.goto 863,60.17,53.42,40,0
.goto 863,60.47,55.82,40,0
.goto 863,62.18,54.47,40,0
>>杀死|cRXP_ENEMY_Amaki War Slaves |r、|cRXD_ENEMY_ Amaki Guards|r和|cRXP_ENEMY_Amaki Bloodsinger|r，以喂给|cRXT_FRIENDLY_Crawling|r
.complete 49378,2 
.mob Amaki War Slave
.mob Amaki Guard
.mob Amaki Bloodsinger
step
#requires NazmirBloodOrbDrained
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabari|r and |cRXP_FRIENDLY_Satao|r
.turnin 49379 >>Turn in Crawg Free Zone
.turnin 49378 >>Turn in Earn Their Trust
.goto 863,63.17,52.75
.turnin 49380 >>Turn in Bad Juju
.turnin 49377 >>Turn in Off With Her Head
.goto 863,63.16,52.69
.target Chronicler Jabari
.target Guard Satao
step
#completewith SnapjawM
.hs >>Hearth to Zul'jan Ruins
step
#completewith SnapjawM
.goto 863,39.15,77.66
.cast 6478 >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Altar of Bwonsamdi|r
step
.goto 863,38.83,77.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sur'jan|r
.target Sur'jan
.turnin 48669 >>Turn in Urok, Terror of the Wetlands
.accept 48573 >>接任务: |cRXP_WARN_鳄鱼的生命力|r
.accept 48574 >>接任务: |cRXP_WARN_拔牙|r
step
#completewith next
>>杀死|cRXP_ENEMY_Saurids|r。掠夺他们的|cRXX_Loot_牙齿|r
.complete 48574,1 
.mob Sickly Saurid
step
#label SnapjawM
.goto 863,38.17,75.32,40,0
.goto 863,35.68,76.50,40,0
.goto 863,37.00,79.93,40,0
.goto 863,36.23,79.53,40,0
.goto 863,34.08,74.17,40,0
.goto 863,38.17,75.32,40,0
.goto 863,35.68,76.50,40,0
.goto 863,37.00,79.93,40,0
.goto 863,36.23,79.53,40,0
.goto 863,34.08,74.17
>>杀死|cRXP_ENEMY_Primal Snapjaws |r。在尸体附近使用|T250628:0|t[Sur'jan仪式匕首]
.complete 48573,1 
.use 152596
.mob Primal Snapjaw
step
#loop
.line 863,34.14,75.89,36.48,71.33,36.38,73.79,38.16,74.64,38.68,75.65,36.09,77.53,36.47,80.15,34.14,75.89
.goto 863,34.14,75.89,40,0
.goto 863,36.48,71.33,40,0
.goto 863,36.38,73.79,40,0
.goto 863,38.16,74.64,40,0
.goto 863,38.68,75.65,40,0
.goto 863,36.09,77.53,40,0
.goto 863,36.47,80.15,40,0
.goto 863,34.14,75.89,40,0
>>杀死|cRXP_ENEMY_Saurids|r。掠夺他们的|cRXX_Loot_牙齿|r
.complete 48574,1 
.mob Sickly Saurid
step
.goto 863,34.08,78.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sur'jan|r. Wait out his RP
.turnin 48573 >>Turn in Crocolisk Life
.turnin 48574 >>Turn in Pulling Fangs
.timer 9,Sur'jan RP
.accept 48576 >>接任务: |cRXP_WARN_安全飞行|r
.accept 48577 >>接任务: |cRXP_WARN_恐卵危机|r
.accept 48578 >>接任务: |cRXP_WARN_恐天飞龙不该有眼睛|r
.target Sur'jan
step
#completewith Jarkadiax
>>杀死|cRXP_ENEMY_Primal Skyterrors|r。使用|T1373906:0|t[Sur'jan抓钩]钩住正在飞行的人
.complete 48576,1 
.use 152610
.mob Primal Skyterror
step
.goto 863,33.40,85.29
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_eggs|r to destroy them
.complete 48577,1,2 
step
.goto 863,33.64,85.19
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_eggs|r to destroy them
.complete 48577,1,3 
step
.goto 863,33.87,84.81
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_eggs|r to destroy them
.complete 48577,1 
step
#label Jarkadiax
>>上山旅行。杀死|cRXP_ENEMY_Jarkadiax|r。掠夺他的|cRXX_Loot_ey|r
.goto 863,34.89,84.83,15,0
.goto 863,34.51,86.07,20,0
.goto 863,33.81,86.04
.complete 48578,1 
.mob Jarkadiax
step
.goto 863,35.38,86.60,40,0
.goto 863,35.28,85.27,40,0
.goto 863,34.10,83.15,40,0
.goto 863,35.76,81.28,40,0
.goto 863,32.36,81.50,40,0
.goto 863,35.38,86.60,40,0
.goto 863,35.28,85.27,40,0
.goto 863,34.10,83.15,40,0
.goto 863,35.76,81.28,40,0
.goto 863,32.36,81.50
>>杀死|cRXP_ENEMY_Primal Skyterrors|r。使用|T1373906:0|t[Sur'jan抓钩]钩住正在飞行的人
.complete 48576,1 
.use 152610
.mob Primal Skyterror
step
.goto 863,34.08,78.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sur'jan|r. Wait out his RP
.turnin 48576 >>Turn in Safe Flying
.turnin 48578 >>Turn in There's No Eye in Skyterror
.turnin 48577 >>Turn in Terrorizing their Eggs
.timer 8,Sur'jan RP
.accept 48584 >>接任务: |cRXP_WARN_敌人的鲜血|r
.accept 48590 >>接任务: |cRXP_WARN_我的头与肩|r
.target Sur'jan
step
#completewith DreadtickB
>>杀死|cRXP_ENEMY_Infected Saurolisk|r。此外，碾过它们的|cRX_PICK_eggs |r
.goto 863,27.71,77.90,40,0
.complete 48588,1 
.mob Infected Saurolisk
step
.goto 863,28.73,76.74
>>将|cRXP_PICK_Shoulderpad|r从树下的地上偷走
.complete 48590,3 
step
#completewith Shoulderpad
>>使用|T136173:0|t[Sur'jan Dreadtick Gasser]杀死|cRXP_ENEMY_DreadtickLatcher|r。掠夺他们的|cRXP_Loot_血液|r
.complete 48584,1 
.mob Dreadtick Latcher
step
.goto 863,30.27,75.27,25,0
.goto 863,31.62,73.48
>>将|cRXP_PICK_Helm|r从地面上抢走
.complete 48590,1 
step
#label Shoulderpad
.goto 863,31.05,71.37
>>拾取骨骼旁边的|cRXP_PICK_Shoulderpad|r
.complete 48590,2 
step
#label DreadtickB
.goto 863,30.70,71.28,40,0
.goto 863,29.37,70.44,40,0
.goto 863,28.13,70.68,40,0
.goto 863,29.54,74.78,40,0
.goto 863,30.13,75.30,40,0
.goto 863,30.89,75.16
>>使用|T136173:0|t[Sur'jan Dreadtick Gasser]杀死|cRXP_ENEMY_DreadtickLatcher|r。掠夺他们的|cRXP_Loot_血液|r
.complete 48584,1 
.mob Dreadtick Latcher
step
#loop
.line 863,29.99,69.78,28.40,69.86,29.39,75.15,27.03,77.66,27.21,78.55,28.34,78.80,30.32,76.84,30.97,74.43,33.42,71.77,29.99,69.78
.goto 863,29.99,69.78,40,0
.goto 863,28.40,69.86,40,0
.goto 863,29.39,75.15,40,0
.goto 863,27.03,77.66,40,0
.goto 863,27.21,78.55,40,0
.goto 863,28.34,78.80,40,0
.goto 863,30.32,76.84,40,0
.goto 863,30.97,74.43,40,0
.goto 863,33.42,71.77,40,0
.goto 863,29.99,69.78,40,0
>>杀死|cRXP_ENEMY_Infected Saurolisk|r。此外，碾过它们的|cRX_PICK_eggs |r
.complete 48588,1 
.mob Infected Saurolisk
step
.goto 863,28.76,72.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sur'jan|r. Wait out his RP
.turnin 48584 >>Turn in The Blood of My Enemies
.turnin 48590 >>Turn in My Head and Shoulders
.timer 14,Sur'jan RP
.accept 48591 >>接任务: |cRXP_WARN_尤洛克的灭亡|r
.target Sur'jan
step
.goto 863,25.65,73.58
>>杀死洞穴内的|cRXP_ENEMY_Urok|r
.complete 48591,1 
.mob Urok
step
.goto 863,28.76,72.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sur'jan|r. Wait out his RP
.turnin 48591 >>Turn in Urok's True Death
.target Sur'jan
step
#completewith next
.hs >>Hearth to Zul'jan Ruins
.cooldown item,6948,>0
step
.goto 863,38.85,78.14
.fly The Great Seal >>Fly to The Great Seal
.zoneskip 863,1
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#group RestedXP Horde 10-60
#name 2德拉诺部落驻军
#displayname Chapter 3 - Draenor Garrison Intro
#next 3 Horde Zuldazar
#veteran
<< Horde
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farseer Drek'Thar|r
.target Farseer Drek'Thar
.goto 525,40.79,67.09
.turnin -33868 >>Turn in The Home of the Frostwolves
.accept 33815 >>接任务: |cRXP_WARN_冰与火之歌|r
.timer 32,Introduction Roleplay
step
>>在|cRXP_FRIENDLY_Durotan|r旁边等待
.goto 525,41.54,67.61,20,0
.goto 525,41.81,69.65
.complete 33815,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜隆坦|r
.target Durotan
.goto 525,41.81,69.65
.turnin 33815 >>Turn in A Song of Frost and Fire
.accept 34402 >>接任务: |cRXP_WARN_狼群与战士|r
step
>>顺着箭头上山
.goto 590,43.54,68.35,20,0
.goto 590,16.70,73.02,20,0
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t顺着这条路上山。在他到达后与|cRXP_FRIENDLY_Thrall|r交谈。
.goto 590,51.17,43.27
.turnin 34402 >>Turn in Of Wolves and Warriors
.accept 34364 >>接任务: |cRXP_WARN_为了部落！|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the shade of the |cRXP_PICK_Horde Banner|r
.goto 590,50.67,39.48
.complete 34364,1 
.timer 16,Roleplay Duration
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待|cRXP_FRIENDLY_Gazlowe|r并与他交谈
.goto 590,51.25,39.61
.turnin 34364 >>Turn in For the Horde!
.accept 34375 >>接任务: |cRXP_WARN_回去工作|r
.accept 34592 >>接任务: |cRXP_WARN_麻烦的小戈隆|r
.target Gazlowe
step
#sticky
#label FrostfireRidgeFrostfireGronnling
>>杀死|cRXP_ENEMY_Frostfire Gronnlings|r
.goto 590,40.18,28.26,0,0
.complete 34592,1 
.mob Frostfire Gronnling
step
#title Tree marked 1/6
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Tree Marking|r
.goto 590,47.29,57.32
.complete 34375,1,1 
step
#title Tree marked 2/6
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Tree Marking|r
.goto 590,48.59,62.82
.complete 34375,1,2 
step
#title Tree marked 3/6
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Tree Marking|r
.goto 590,56.86,69.14
.complete 34375,1,3 
step
#title Tree marked 4/6
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Tree Marking|r
.goto 590,59.53,72.74
.complete 34375,1,4 
step
#title Tree marked 5/6
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Tree Marking|r
.goto 590,62.64,55.31
.complete 34375,1,5 
step
#title Tree marked 6/6
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Tree Marking|r
.goto 590,63.30,51.90
.complete 34375,1 
step
#requires FrostfireRidgeFrostfireGronnling
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
.target Gazlowe
.goto 590,51.26,39.63
.turnin 34375 >>Turn in Back to Work
.turnin 34592 >>Turn in A Gronnling Problem
.accept 34765 >>接任务: |cRXP_WARN_斯库戈之巢|r
step
>>Kill |cRXP_ENEMY_Skog|r
>>|cRXP_WARN_注意他的破土能力|r
.goto 590,48.88,84.72
.complete 34765,1 
.mob Skog
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
.target Gazlowe
.goto 590,51.26,39.63
.turnin 34765 >>Turn in The Den of Skog
.accept 34378 >>接任务: |cRXP_WARN_建立你的要塞|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Master Surveyor|r
.goto 590,35.60,52.46
.complete 34378,1 
step
#completewith GarridonEndStartQuests
+|cRXP_WARN_AddOns无法追踪角色在驻军内的位置。因此，无法创建路点。|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
.turnin 34378 >>Turn in Establish Your Garrison
.target Gazlowe
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
.target Gazlowe
.accept 34824 >>接任务: |cRXP_WARN_我们有什么|r
.accept 34822 >>接任务: |cRXP_WARN_我们缺什么|r
step
.isOnQuest 34824
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Garrison Cache|r to the left
.complete 34824,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_Rokhan|r在|cRXP_RIENDLY_Gazlowe|r附近交谈
.accept 34823 >>接任务: |cRXP_WARN_活着的独眼魔？|r
.target Rokhan
step
.isOnQuest 34824
#completewith next
.fp >>获取驻军飞行点
step
.isOnQuest 34824
>>把驻军留在飞行指挥官旁边
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skaggit|r to the left
.skipgossip
.complete 34824,1 
.target Skaggit
step
.isOnQuest 34824
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t向北，与|cRXP_FRIENDLY_Senior Peon II|r通话
*He's marked on your minimap with a yellow dot
.skipgossip
.complete 34824,3 
.target Senior Peon II
step
.isOnQuest 34822
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
.isOnQuest 34822
#completewith next
.goto 525,40.24,60.14,30 >>向西跑，进入洞穴。右键单击地图，它会显示您的位置。
step
.isOnQuest 34822
#completewith next
>>杀死|cRXP_ENEMY_Pack Boars|r。为|cRXD_Loot_securve|r掠夺它们。或者直接拿起|cRXT_pick_Drudgeboat Salvages|r
.complete 34822,1 
.mob Pack Boar
step
.isOnQuest 34823
>>杀死|cRXP_ENEMY_Groog|r
>>一定要避免他的横冲直撞和大灌篮。
.goto 525,40.29,58.95,10,0
.goto 525,41.92,59.19
.complete 34823,1 
.mob Groog
step
.isOnQuest 34822
>>杀死|cRXP_ENEMY_Pack Boars|r。为|cRXD_Loot_securve|r掠夺它们。或者直接拿起|cRXT_pick_Drudgeboat Salvages|r
.goto 525,42.04,59.51,5,0
.goto 525,42.17,50.09,5,0
.goto 525,41.79,58.30,10,0
.goto 525,40.18,59.91,10,0
.complete 34822,1 
.mob Pack Boar
step
.isOnQuest 34823
.zoneskip 590
#completewith next
.use 110560
.cast 171253 >>使用你的加里森炉石。它在你的玩具盒子里
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在大楼外与|cRXP_FRIENDLY_Gazlowe|r和|cRXP-FRIENDLY_Rokhan|r交谈
.turnin -34824 >>Turn in What We Got
.turnin -34822 >>Turn in What We Need
.turnin -34823 >>Turn in The Ogron Live?
.target Gazlowe
.target Rokhan
step
.isQuestTurnedIn 34823
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
.target Gazlowe
.accept 34461 >>接任务: |cRXP_WARN_建造你的兵营|r
step
.isOnQuest 34461
>>看看你的小地图，走到黄色标记处，拿起蓝图
.collect 111956,1,34461,1
.complete 34461,1 
step
.isOnQuest 34461
>>在你的包里使用蓝图|T1001489:0|t[兵营，一级]
.use 111956
.complete 34461,2 
step
.isOnQuest 34461
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r, Architect Table
*Drag and drop 'Barrack' from the list on the left onto the glowing circle on the right
.complete 34461,3 
.target Gazlowe
step
.isOnQuest 34461
>>现在，您必须等待约10秒，然后按照|cRXP_FRIENDLY_Gazlowe|r操作。如果他不动，请与他交谈，再次打开架构师表，或者再等待1-2分钟。
.complete 34461,4 
step
.isOnQuest 34461
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_flying scroll|r
.complete 34461,5 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
.target Gazlowe
.turnin -34461 >>Turn in Build Your Barracks
step
.isQuestTurnedIn 34461
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
.target Gazlowe
.accept 34861 >>接任务: |cRXP_WARN_我们需要一支军队|r
step
.isQuestTurnedIn 34461
#label GarridonEndStartQuests
>>在“建筑师表”旁边输入建筑
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warmaster Zog|r
.turnin -34861 >>Turn in We Need An Army
.accept 34462 >>接任务: |cRXP_WARN_变换之风|r
.target Warmaster Zog
step
.zoneskip 85
.hs >>心碎的图斯克
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#group RestedXP Horde 10-60
#name 3 Horde Vol'dun
#displayname Chapter 5 - Vol'dun
#next 4部落祖尔达扎下半场
#maxlevel 60
#fresh
<< Horde
step
.goto 1164,41.67,69.17
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Scouting Map|r, then click on Vol'dun
.accept 47513 >>接任务: |cRXP_WARN_沃顿|r
step
.goto 1164,41.22,66.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talanji|r
.turnin 47513 >>Turn in Vol'dun
.accept 47313 >>接任务: |cRXP_WARN_谨慎的调查|r
.target Princess Talanji
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Araka|r and buy 3 Explorer's Packs from her. Equip them. Skip this step if your bags are better
.goto 1163,61.06,30.25
.collect 138293,3 

step
.goto 1165,50.10,37.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Sekal|r
.target Lieutenant Sekal
.complete 47313,1,1 
.skipgossip
step
.goto 1165,51.71,37.79,15,0
.goto 1165,52.19,37.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bladeguard Gortok|r
.target Bladeguard Gortok
.complete 47313,1,2 
.skipgossip
step
.goto 1165,54.28,35.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Dakanji|r
.target Lieutenant Dakanji
.complete 47313,1 
.skipgossip
step << skip
>>忽略暴徒，顺着箭头走
.goto 1165,52.81,32.61
.complete 47313,2 
step
.goto 1165,51.58,31.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bladeguard Kaja|r
.target Bladeguard Kaja
.turnin 47313 >>Turn in Discreet Discussions
.accept 47314 >>接任务: |cRXP_WARN_流放的谣言|r
.timer 41,Rumors of Exile RP
step
.goto 1165,49.92,31.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP结束。与|cRXP_FRIENDLY_Bladeguard Kaja|r交谈
.turnin 47314 >>Turn in Rumors of Exile
.accept 47315 >>接任务: |cRXP_WARN_深入沙丘|r
.target Bladeguard Kaja
step
.goto 1165,50.04,31.67
>>Mount the Pterrordax
.complete 47315,1 
.timer 93,Into the Dunes RP
step
.goto 864,66.08,36.43
>>等待RP结束。按键盘上的“Escape”跳过电影
.complete 47315,2 
.timer 24,Into the Dunes Nisha RP
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r
.target Nisha
.goto 864,65.98,36.65
.turnin 47315 >>Turn in Into the Dunes
.accept 51357 >>接任务: |cRXP_LOOT_整装待发|r
step
>>掠夺左侧的|cRXP_PICK_Sethrak弯刀|r。
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r
.target Nisha
.complete 51357,1 
.goto 864,65.93,36.68
.turnin 51357 >>交任务: |cRXP_FRIENDLY_整装待发|r
.accept 47327 >>接任务: |cRXP_WARN_还击|r
.accept 49676 >>接任务: |cRXP_WARN_整装备战|r
.goto 864,65.98,36.65
step
#completewith VoldunNishasAttackPlans
>>杀死|cRXP_ENEMY_Sethrak|r
.complete 47327,1 
.mob Sethrak Sandcout
.mob Sethrak Aggressor
.mob Sethrak Skycaller
step
>>将|cRXP_PICK_Banner |r套在轮胎上，将|cRXP_ICK_Helmet|r套到木头上，将| cRXP_PICK_Explorers|r套放在地上
.complete 49676,1 
.goto 864,64.67,33.91
.complete 49676,2 
.goto 864,63.63,32.70
.complete 49676,3 
.goto 864,61.88,33.78
step
.goto 864,61.88,33.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r when out of combat
.turnin 47327 >>Turn in Answering Their Attacks
.turnin 49676 >>Turn in Dressed for Battle
.accept 49677 >>接任务: |cRXP_WARN_攻击计划|r
.isQuestComplete 47327
.target Nisha
step
.goto 864,61.88,33.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r when out of combat
.turnin 49676 >>Turn in Dressed for Battle
.accept 49677 >>接任务: |cRXP_WARN_攻击计划|r
.target Nisha
step
#label VoldunNishasAttackPlans
>>杀死|cRXP_ENEMY_Fangcaller Sraka|r。为她掠夺她|cRXP_Loot_攻击计划|r
.goto 864,60.87,32.67
.complete 49677,1 
.mob Fangcaller Sraka
step
.goto 864,61.41,32.00,40,0
.goto 864,61.39,32.59,40,0
.goto 864,62.30,32.72,40,0
.goto 864,63.04,34.43,40,0
.goto 864,63.88,34.77,40,0
.goto 864,64.09,36.26,40,0
.goto 864,61.41,32.00,40,0
.goto 864,61.39,32.59,40,0
.goto 864,62.30,32.72,40,0
.goto 864,63.04,34.43
>>杀死|cRXP_ENEMY_Sethrak|r
.complete 47327,1 
.mob Sethrak Sandcout
.mob Sethrak Aggressor
.mob Sethrak Skycaller
.mob Sethrak Ravager
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r when out of combat
.turnin 47327 >>Turn in Answering Their Attacks
.turnin 49677 >>Turn in Plans for Attack
.accept 51364 >>接任务: |cRXP_WARN_惊艳离场|r
.target Nisha
step << skip
>>Wait for the RP
.goto 864,60.06,34.58
.complete 51364,1 
step
.goto 864,60.05,34.59
>>登上|cRXP_PICK_Wagon|r
.complete 51364,2 
.timer 63,Wagon Ride RP
step
.goto 864,56.79,50.54
>>等待RP

.complete 51364,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r, Meerah
.turnin 51364 >>Turn in An Explosive Exit
.accept 47319 >>接任务: |cRXP_WARN_滋补毒液|r
.goto 864,56.79,50.54
.accept 51574 >>接任务: |cRXP_WARN_新鲜压榨|r
.goto 864,56.76,50.52
.target Kiro
.target Meerah
step << skip
.goto 864,56.96,49.25
.fp Vulpera Hideaway >>获取Vulpera Hideaway飞行路线
step
.goto 864,55.20,48.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vivi|r
.target Vivi
.accept 50739 >>接任务: |cRXP_WARN_寻鼬启事|r
step
#completewith Polecats
>>杀死|cRXP_ENEMY_毒刺机|r和|cRXX_ENEMY_Sandstinger无人机|r。掠夺它们的|cRXP_Loot_腺体|r
>>将|cRXP_PICK_Picklevine|r从地上取汁|cRXP_WARN_Spam单击此按钮可获得4-5个果汁每|cRXP_PICK_Picklevin|r|r
.complete 47319,1 
.complete 51574,1 
.mob Venomous Sandstinger
.mob Sandstinger Drone
step
#title Polecat revived 1/7
.goto 864,54.13,49.26
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Polecat|r to revive it
.complete 50739,1,1 
.use 159729
.target Sable Polecat
step
#title Polecat revived 2/7
.goto 864,53.84,49.72
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Polecat|r to revive it
.complete 50739,1,2 
.use 159729
.target Sable Polecat
step
#title Polecat revived 4/7
.goto 864,53.32,50.32
>>使用|cRXP_FRIENDLY_Polecats|r附近的|T650640:0|t[沙坑补救措施]使它们同时复活
.complete 50739,1,4 
.use 159729
.target Sable Polecat
step
#title Polecat revived 5/7
.goto 864,53.49,50.85
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Polecat|r to revive it
.complete 50739,1,5 
.use 159729
.target Sable Polecat
step
#title Polecat revived 6/7
.goto 864,53.94,50.49
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Polecat|r to revive it
.complete 50739,1,6 
.use 159729
.target Sable Polecat
step
#label Polecats
#title Polecat revived 7/7
.goto 864,54.35,51.22
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Polecat|r to revive it
.complete 50739,1 
.use 159729
.target Sable Polecat
step
#loop
.line 864,54.29,51.10,54.49,48.68,53.31,49.11,52.89,49.86,53.06,50.54,53.32,51.45,52.73,52.30,53.32,51.45,54.29,51.10
.goto 864,54.29,51.10,30,0
.goto 864,54.49,48.68,30,0
.goto 864,53.31,49.11,30,0
.goto 864,52.89,49.86,30,0
.goto 864,53.06,50.54,30,0
.goto 864,53.32,51.45,30,0
.goto 864,52.73,52.30,30,0
.goto 864,53.32,51.45,30,0
.goto 864,54.29,51.10,30,0
>>杀死|cRXP_ENEMY_毒刺机|r和|cRXX_ENEMY_Sandstinger无人机|r。掠夺它们的|cRXP_Loot_腺体|r
>>将|cRXP_PICK_Picklevine|r从地上取汁|cRXP_WARN_Spam单击此按钮可获得4-5个果汁每|cRXP_PICK_Picklevin|r|r
.complete 47319,1 
.complete 51574,1 
.mob Venomous Sandstinger
.mob Sandstinger Drone
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回秃鹫藏身处。与|cRXP_FRIENDLY_Meerah|r和|cRXP-FRIENDLY_Kiro|r交谈
.goto 864,54.62,50.94,30,0
.turnin 51574 >>Turn in Freshly Squeezed
.goto 864,56.76,50.53
.turnin 47319 >>Turn in Restorative Venom
.accept 47320 >>接任务: |cRXP_WARN_凝神香油|r
.goto 864,56.79,50.54
.target Meerah
.target Kiro
step
.goto 864,56.83,50.52
>>在地面上的|cRXP_FRIENDLY_Kaja|r上使用|T134737:0|t[修复性药膏]
.complete 47320,1 
.cast 244636
.timer 5,A Balm to Calm RP
.use 150759
.target Bladeguard Kaja
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP结束。与|cRXP_FRIENDLY_Kaja|r、|cRXT_FRIENDLY_Kiro|r和|cRXP_FRIENDLY _Meerah|r交谈
.turnin 47320 >>Turn in A Balm to Calm
.accept 47317 >>接任务: |cRXP_WARN_搜寻幸存者|r
.goto 864,56.83,50.52
.accept 47321 >>接任务: |cRXP_WARN_夺回小玩意儿|r
.goto 864,56.79,50.54
.accept 47316 >>接任务: |cRXP_WARN_沙中的秘密|r
.goto 864,56.76,50.53
.target Bladeguard Kaja
.target Kiro
.target Meerah
step
#title Page recovered 1/4
.goto 864,55.78,48.68
>>将|cRXP_PICK_page|r洗劫一空
.complete 47316,1,1 
step
.goto 864,55.20,48.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vivi|r
.target Vivi
.turnin 50739 >>Turn in Missing Business
step
#title Page recovered 2/4
.goto 864,52.80,46.41
>>将|cRXP_PICK_page|r洗劫一空
.complete 47316,1,2 
step
#title Page recovered 3/4
.goto 864,52.78,41.79
>>将|cRXP_PICK_page|r洗劫一空
.complete 47316,1,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neri|r and |cRXP_FRIENDLY_Mekaru|r
.accept 47322 >>接任务: |cRXP_WARN_逃亡援助|r
.goto 864,54.69,42.49
.accept 50755 >>接任务: |cRXP_WARN_秃鹫的美餐|r
.goto 864,54.75,42.40
.target Neri
.target Mekaru
step
#completewith Hakasi
>>杀死|cRXP_ENEMY_Faithless|r。掠夺他们的|cRXP_Loot_Knickknacks|r
.complete 47321,1 
.mob Faithless Skycaller
.mob Faithless Ravager
.mob Faithless Aggressor
.mob Faithless Champion
step
.goto 864,54.75,40.27
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_cage|r to free |cRXP_FRIENDLY_Kipp|r
.complete 47322,2 
.target Kipp
step
.goto 864,54.82,39.64,15,0
.goto 864,54.61,39.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t进入洞穴。与|cRXP_PICK_Sword|r对话
.complete 47317,1 
step
#label Hakasi
.goto 864,56.41,39.30
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the cage to free |cRXP_FRIENDLY_Hakasi|r
.complete 47322,1 
.target Hakasi
step
.goto 864,56.24,38.99,40,0
.goto 864,55.36,39.19,40,0
.goto 864,54.84,40.39,40,0
.goto 864,54.74,41.16,40,0
.goto 864,55.85,41.01,40,0
.goto 864,56.24,38.99,40,0
.goto 864,55.36,39.19,40,0
.goto 864,54.84,40.39,40,0
.goto 864,54.74,41.16,40,0
.goto 864,55.85,41.01,40,0
.goto 864,56.24,38.99
>>杀死|cRXP_ENEMY_Faithless|r。掠夺他们的|cRXP_Loot_Knickknacks|r
.complete 47321,1 
.mob Faithless Skycaller
.mob Faithless Ravager
.mob Faithless Aggressor
.mob Faithless Champion
step
#completewith next
>>杀死|cRXP_ENEMY_Bonebeak秃鹫|r、|cRXP_ENEMY_Brine Beetles|r、| cRXP__ENEMY_Saltscree Krolusks|r和|cRXD_ENEMY_Krolusk Dunemites|r
.complete 50755,1 
.mob Bonebeak Vulture
.mob Brine Beetle
.mob Saltspine Krolusk
.mob Krolusk Dunemites
step
.goto 864,57.41,40.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorana's|r corpse
.complete 47317,2 
.target Jorana
step
.goto 864,58.24,40.61,40,0
.goto 864,59.15,42.98,40,0
.goto 864,55.19,43.43,40,0
.goto 864,58.24,40.61,40,0
.goto 864,59.15,42.98,40,0
.goto 864,55.19,43.43
>>杀死|cRXP_ENEMY_Bonebeak秃鹫|r、|cRXP_ENEMY_Brine Beetles|r、| cRXP__ENEMY_Saltscree Krolusks|r和|cRXD_ENEMY_Krolusk Dunemites|r
.complete 50755,1 
.mob Bonebeak Vulture
.mob Brine Beetle
.mob Saltspine Krolusk
.mob Krolusk Dunemites
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mekaru|r and |cRXP_FRIENDLY_Neri|r
.turnin 50755 >>Turn in A Meal for Birds
.goto 864,54.75,42.40
.turnin 47322 >>Turn in Aided Escape
.goto 864,54.69,42.49
.target Mekaru
.target Neri
step
#title Page recovered 4/4
.goto 864,56.33,43.90
>>将|cRXP_PICK_page|r洗劫一空
.complete 47316,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r, |cRXP_FRIENDLY_卡加|r, Merrah
.turnin 47321 >>Turn in Knickknack Takeback
.goto 864,56.79,50.54
.turnin 47316 >>Turn in Secrets in the Sand
.turnin 47317 >>Turn in Searching for Survivors
.accept 47959 >>接任务: |cRXP_WARN_戎卫的足迹|r
.goto 864,56.83,50.52
.complete 47959,1 
.goto 864,56.76,50.53
.skipgossip
.timer 59,The Warguard's Trail RP
.target Kiro
.target Bladeguard Kaja
.target Merrah
step
.goto 864,53.42,65.89
>>等待RP
.complete 47959,2 
step
.goto 864,52.97,66.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorak|r
.target Jorak
.turnin 47959 >>Turn in The Warguard's Trail
.accept 48549 >>接任务: |cRXP_WARN_“黑心”格罗兹托克|r
.accept 48550 >>接任务: |cRXP_WARN_失窃的背包|r
step
.goto 864,53.87,69.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranah|r
.target Ranah
.accept 48551 >>接任务: |cRXP_WARN_缺水枯萎|r
.accept 48553 >>接任务: |cRXP_WARN_再度流淌|r
.accept 48555 >>接任务: |cRXP_WARN_种子救援|r
step
#completewith next
>>杀死|cRXP_ENEMY_食肉Thistlevines|r。掠夺它们的|cRXX_Loot_种子|r
.collect 152644,8,48555,1 
.mob Carnivorous Thistlevine
step
.goto 864,52.90,71.96
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Fountain|r to fix it
.complete 48553,2 
step
.goto 864,53.18,68.42,40,0
.goto 864,52.48,68.74,40,0
.goto 864,52.95,71.13,40,0
.goto 864,53.18,68.42,40,0
.goto 864,52.48,68.74,40,0
.goto 864,52.95,71.13
>>在|cRXP_PICK_Withered Thistlevines|r上使用|T607527:0|t[Ranah’s Watering Can]
>>杀死|cRXP_ENEMY_食肉Thistlevines|r。掠夺它们的|cRXX_Loot_种子|r
>>点击地面上的|cRXP_PICK_肥沃土壤|r播种
.complete 48551,1 
.collect 152644,8,48555,0x1,-1 
.complete 48555,1 
.use 152630
step
.goto 864,53.46,67.65
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Fountain|r to fix it
.complete 48553,1 
step
>>在|cRXP_PICK_Withered Thistlevines|r上使用|T607527:0|t[Ranah’s Watering Can]
.complete 48551,1 
.use 152630
step
.goto 864,53.87,69.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranah|r
.target Ranah
.turnin 48555 >>Turn in We Can Salvage the Seeds
.turnin 48551 >>Turn in Wither Without Water
.turnin 48553 >>Turn in Let it Flow
.accept 48554 >>接任务: |cRXP_WARN_问题之源|r
step
#completewith next
.goto 864,53.89,68.29,20,0
.goto 864,54.36,66.88,20,0
.goto 864,54.96,67.26,20 >>沿着山路往上走
step
#completewith next
.goto 864,55.38,69.37
>>点击水中的|cRXP_PICK_Loose Boulder|r，召唤|cRXP-ENEMY_water Cobra|r
.complete 48554,1 
step
.goto 864,55.38,69.37
>>杀死|cRXP_ENEMY_Water Cobra|r
.complete 48554,2 
.mob Colossal Water Cobra
step
#completewith next
.goto 864,53.87,69.40,40 >>下山前往|cRXP_FRIENDLY_Ranah|r
step
.goto 864,53.87,69.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranah|r
.target Ranah
.turnin 48554 >>Turn in The Source of the Problem
step
#completewith next
>>杀死|cRXP_ENEMY_Sandfury刺客|r。掠夺他们的|cRXX_Loot_背包|r
.complete 48550,1 
.mob Sandfury Assassin
step
.goto 864,49.18,64.73
>>等待你靠近时发生的RP
>>杀死|cRXP_ENEMY_Grozztok黑心|r
.complete 48549,1 
.mob Grozztok the Blackheart
step
.goto 864,49.18,66.16,40,0
.goto 864,48.82,66.44,40,0
.goto 864,48.26,67.22,40,0
.goto 864,49.87,66.41,40,0
.goto 864,50.64,65.02
>>杀死|cRXP_ENEMY_Sandfury刺客|r。掠夺他们的|cRXX_Loot_背包|r
.complete 48550,1 
.mob Sandfury Assassin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Jorak, |cRXP_FRIENDLY_卡加|r, Meerah
.turnin 48550 >>Turn in Stolen Satchels
.goto 864,53.34,66.00
.turnin 48549 >>Turn in Grozztok the Blackheart
.accept 48684 >>接任务: |cRXP_WARN_时刻行动|r
.goto 864,53.19,66.06
.complete 48684,1 
.goto 864,53.22,66.04
.skipgossip
.timer 122,On the Move RP
.target Jorak
.target Bladeguard Kaja
.target Meerah
step
.goto 864,52.80,89.17
>>等待RP
.complete 48684,2 
step
.goto 864,52.83,89.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorak|r
.target Jorak
.turnin 48684 >>Turn in On the Move
.accept 48895 >>接任务: |cRXP_WARN_完美贡品|r
step
.goto 864,53.18,90.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akunda the Exalted|r
.target Akunda the Exalted
.turnin 48895 >>Turn in The Perfect Offering
.accept 48991 >>接任务: |cRXP_WARN_邪恶滋生|r
.accept 48992 >>接任务: |cRXP_WARN_神圣遗骨|r
.accept 48993 >>接任务: |cRXP_WARN_强力导体|r
step
#completewith next
.goto 864,53.72,89.17
.fp Temple of Akunda >>获取阿昆达神庙飞行路线
step
#completewith SacredR
>>杀死侧面的|cRXP_ENEMY_Ranishu Gorgers|r
.complete 48991,1 
.mob Ranishu Gorger
step
#title Sacred Remains 1/6
.goto 864,54.08,88.73
>>将|cRXP_PICK_bone|r从地上抢走
.complete 48992,1,1 
step
#title Sacred Remains 2/6
.goto 864,54.16,88.15
>>将|cRXP_PICK_bone|r从地上抢走
.complete 48992,1,2 
step
#title Sacred Remains 3/6
.goto 864,54.71,87.83
>>将|cRXP_PICK_bone|r从地上抢走
.complete 48992,1,3 
step
#title Sacred Remains 4/6
.goto 864,54.99,87.82
>>将|cRXP_PICK_bone|r从地上抢走
.complete 48992,1,4 
step
#completewith VoldunRorgog
.goto 864,55.09,86.20,20 >>进入红岩洞穴
.isOnQuest 48992
step
#title Sacred Remains 5/6
.goto 864,55.92,84.89
>>将|cRXP_PICK_bone|r从地上抢走
.complete 48992,1,5 
step
#label VoldunRorgog
.goto 864,56.12,83.46
>>杀死|cRXP_ENEMY_Rorgog|r。掠夺他的|cRXX_Loot_Annants|r
.complete 48993,1 
.mob Rorgog
step
#label SacredR
#title Sacred Remains 6/6
.goto 864,55.46,84.49
>>将|cRXP_PICK_bone|r从地上抢走
.complete 48992,1 
step
.goto 864,54.52,84.69,40,0
.goto 864,53.21,86.68,40,0
.goto 864,54.08,88.73,40,0
.goto 864,54.99,87.82,40,0
.goto 864,54.52,84.69,40,0
.goto 864,53.21,86.68,40,0
.goto 864,54.08,88.73,40,0
.goto 864,54.99,87.82
>>杀死|cRXP_ENEMY_Ranishu Gorgers|r
.complete 48991,1 
.mob Ranishu Gorger
step
.goto 864,53.18,90.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akunda the Exalted|r
.target Akunda the Exalted
.turnin 48991 >>Turn in Vile Infestation
.turnin 48992 >>Turn in Sacred Remains
.turnin 48993 >>Turn in Powerful Conductors
.accept 48887 >>接任务: |cRXP_WARN_净化心灵|r
.accept 48888 >>接任务: |cRXP_WARN_万世流淌|r
step
.goto 864,52.83,89.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorak|r
.target Jorak
.accept 49040 >>接任务: |cRXP_WARN_惜别|r
step
#completewith InnerD
>>杀死|cRXP_ENEMY_Redrock拾荒者|r或|cRXX_ENEMY_Howlers|r
.complete 48888,1 
.mob Redrock Scavenger
.mob Redrock Howler
step
#completewith next
.goto 864,52.17,83.75,20 >>进入洞穴
step
#label InnerD
>>点击|cRXP_PICK_雷霆神殿|r。杀死生下的|cRXP_ENEMY_内鬼|r
.complete 48887,1 
.goto 864,52.17,83.34
.complete 48887,2 
.goto 864,52.14,83.39
.mob Inner Demon
step
.goto 864,51.01,83.83,40,0
.goto 864,51.65,84.34,40,0
.goto 864,50.82,85.65,40,0
.goto 864,52.29,85.60,40,0
.goto 864,51.01,83.83,40,0
.goto 864,51.65,84.34,40,0
.goto 864,50.82,85.65,40,0
.goto 864,52.29,85.60
>>杀死|cRXP_ENEMY_Redrock拾荒者|r或|cRXX_ENEMY_Howlers|r
.complete 48888,1 
.mob Redrock Scavenger
.mob Redrock Howler
step
#completewith next
.goto 864,52.22,89.73,20,0
.goto 864,51.98,89.81
.home >>将你的炉石设置为阿昆达神庙
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Akunda the Exalted, |cRXP_FRIENDLY_卡加|r
.turnin 48887 >>Turn in Cleanse the Mind
.turnin 48888 >>Turn in It Springs Eternal
.accept 48894 >>接任务: |cRXP_WARN_真实试炼|r
.complete 48894,1 
.turnin 48894 >>Turn in Trial of Truth
.goto 864,53.18,90.30
.accept 48715 >>接任务: |cRXP_WARN_会见阿昆达|r
.goto 864,53.16,90.21
.skipgossip 127992,1
.target Akunda the Exalted
.target Bladeguard Kaja
step
#completewith next
.goto 864,53.58,91.66
>>Enter the Temple
.complete 48715,1 
.timer 12,Akunda Awaits RP
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。与|cRXP_FRIENDLY_Kaja|r和|cRXP-FRIENDLY_Akunda Sensible|r通话
.turnin 48715 >>Turn in Akunda Awaits
.goto 864,53.58,91.66
.accept 48987 >>接任务: |cRXP_WARN_哀痛峡谷|r
.goto 864,53.58,91.34
.target Bladeguard Kaja
.target Akunde the Sensible
step
.goto 864,53.01,78.77
>>前往悲伤谷。
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meijani|r
.target Meijani
.turnin 48987 >>Turn in Valley of Sorrows
.accept 48988 >>接任务: |cRXP_WARN_窥探记忆|r
.accept 49005 >>接任务: |cRXP_WARN_支离破碎|r
step
#completewith UnwantedM
>>杀死|cRXP_ENEMY_Distorted|r和|cRXP_ENEMY_Fractured Memories|r
.complete 49005,1 
.complete 49005,2 
.mob Distorted Memory
.mob Fractured Memory
step
#title Memories 1/8
.goto 864,53.44,78.22
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Unwanted Memory|r on the ground. 按键盘上的“Escape”可跳过电影
.complete 48988,1,1 
step
#title Memories 2/8
.goto 864,54.91,76.01
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Unwanted Memory|r on the ground. 按键盘上的“Escape”可跳过电影
.complete 48988,1,2 
step
#title Memories 3/8
.goto 864,54.80,75.40
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Unwanted Memory|r on the ground. 按键盘上的“Escape”可跳过电影
.complete 48988,1,3 
step
#title Memories 4/8
.goto 864,54.57,75.45
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Unwanted Memory|r on the ground. 按键盘上的“Escape”可跳过电影
.complete 48988,1,4 
step
#title Memories 5/8
.goto 864,53.15,77.46
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Unwanted Memory|r on the ground. 按键盘上的“Escape”可跳过电影
.complete 48988,1,5 
step
#title Memories 6/8
.goto 864,52.65,76.40
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Unwanted Memory|r on the ground. 按键盘上的“Escape”可跳过电影
.complete 48988,1,6 
step
#title Memories 7/8
.goto 864,52.78,77.66
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Unwanted Memory|r on the ground. 按键盘上的“Escape”可跳过电影
.complete 48988,1,7 
step
#label UnwantedM
#title Memories 8/8
.goto 864,52.85,78.05
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Unwanted Memory|r on the ground. 按键盘上的“Escape”可跳过电影
.complete 48988,1 
step
#loop
.line 864,53.44,78.22,54.91,76.01,54.80,75.40,54.57,75.45,53.15,77.46,52.65,76.40,52.78,77.66,52.85,78.05,53.44,78.22
.goto 864,53.44,78.22,40,0
.goto 864,54.91,76.01,40,0
.goto 864,54.80,75.40,40,0
.goto 864,54.57,75.45,40,0
.goto 864,53.15,77.46,40,0
.goto 864,52.65,76.40,40,0
.goto 864,52.78,77.66,40,0
.goto 864,52.85,78.05,40,0
.goto 864,53.44,78.22,40,0
>>杀死|cRXP_ENEMY_Distorted|r和|cRXP_ENEMY_Fractured Memories|r
.complete 49005,1 
.complete 49005,2 
.mob Distorted Memory
.mob Fractured Memory
step
.goto 864,53.01,78.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meijani|r
.target Meijani
.turnin 48988 >>Turn in Memory Breach
.turnin 49005 >>Turn in Shattered and Broken
.accept 48889 >>接任务: |cRXP_WARN_修复记忆|r
.timer 31,Repairing the Past RP
step
.goto 864,52.34,79.68
>>跟随梅佳妮进入洞穴。杀死生成的|cRXP_ENEMY_Memories|r
.complete 48889,1 
step
.goto 864,52.19,79.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akunda|r
.target Akunda
.turnin 48889 >>Turn in Repairing the Past
.accept 48996 >>接任务: |cRXP_WARN_扼止疯狂|r
step
#completewith next
.hs >>阿昆达神庙之心
step
.goto 864,53.17,89.96,30,0
.goto 864,53.19,91.25
>>杀死|cRXP_ENEMY_Akunda the Exalted|r。使用[ExtraActionButton]造成伤害并增加你所造成的伤害。按键盘上的“Escape”可跳过电影
.complete 48996,1 
.mob Akunda the Exalted
step
.goto 864,53.18,91.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akunda|r
.target Akunda
.turnin 48996 >>Turn in Ending the Madness
.accept 50913 >>接任务: |cRXP_WARN_阿昆达的祝福|r
step
.goto 864,53.18,92.14
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Altar of Akunda|r
.complete 50913,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akunda|r and |cRXP_FRIENDLY_Rakera|r
.turnin 50913 >>Turn in Akunda's Blessing
.goto 864,53.18,91.65
.accept 47874 >>接任务: |cRXP_WARN_破除迷雾|r
.goto 864,53.61,91.66
.timer 45,Clearing the Fog RP
.target Akunda
.target Warguard Rakera
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP结束。与|cRXP_FRIENDLY_Rakera|r和|cRXP-FRIENDLY_Meerah|r交谈
.turnin 47874 >>Turn in Clearing the Fog
.accept 48896 >>接任务: |cRXP_WARN_昔日奥秘|r
.goto 864,52.81,89.24
.complete 48896,1 
.goto 864,52.70,89.29
.skipgossip
.timer 52,Knowledge of the Past RP
.target Warguard Rakera
.target Meerah
step
.goto 864,47.86,82.29
>>等待RP
.complete 48896,2 
step
.goto 864,47.60,81.81
>>杀死|cRXP_ENEMY_Sandfury刺客|r
.complete 48896,3 
.mob Sandfury Assassin
step
.goto 864,47.60,81.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rakera|r
.target Warguard Rakera
.turnin 48896 >>Turn in Knowledge of the Past
.accept 47716 >>接任务: |cRXP_WARN_搜索废墟|r
step
.goto 864,46.63,76.11,30,0
.goto 864,47.07,75.66
>>进入洞穴
.complete 47716,1 
.timer 18,Searching the Ruins RP
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP结束。与|cRXP_FRIENDLY_Julwaba|r和|cRXP-FRIENDLY_Kiro|r交谈
.turnin 47716 >>Turn in Searching the Ruins
.goto 864,47.07,75.66
.accept 48313 >>接任务: |cRXP_WARN_天然疗效|r
.accept 48314 >>接任务: |cRXP_WARN_死亡爬虫|r
.goto 864,47.05,75.60
.target Julwaba
.target Kiro
step
#completewith PlumC
>>杀死|cRXP_ENEMY_Scorpashi Venomtails|r和|cRXX_ENEMY_Scorpashi Direclaws|r。掠夺它们的|cRXD_Loot_毒刺|r
.complete 48314,1 
.mob Scorpashi Venomtail
.mob Scorpashi Direclaws
step
#title Cactus 1/6
.goto 864,46.25,76.25
>>掠夺地上的|cRXP_PICK_Prickly Plum Cactus|r
.complete 48313,1,1 
step
#title Cactus 2/6
.goto 864,45.62,76.94
>>掠夺地上的|cRXP_PICK_Prickly Plum Cactus|r
.complete 48313,1,2 
step << skip
.goto 864,43.90,75.92
.fp Scorched Sands Outpost >>获取焦沙前哨的飞行路线
step
.goto 864,43.39,75.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razgaji|r
.target Razgaji
.accept 51573 >>接任务: |cRXP_WARN_我来保护你|r
.complete 51573,1 
.skipgossip 126576,1
.timer 74,I've Got Your Back RP
step
#sticky
#label RazgajiE
.goto 864,43.39,75.37,0
>>|cRXP_WARN_不要护送拉兹加吉。此任务将自动完成|r
.complete 51573,2 

step
#title Cactus 3/6
.goto 864,45.62,74.71
>>掠夺地上的|cRXP_PICK_Prickly Plum Cactus|r
.complete 48313,1,3 
step
#label PlumC
#title Cactus 4/6
.goto 864,45.61,73.52
>>掠夺地上的|cRXP_PICK_Prickly Plum Cactus|r
.complete 48313,1,4 
step
.goto 864,45.63,70.19,50,0
.goto 864,46.67,69.19,50,0
.goto 864,48.01,70.06,50,0
.goto 864,47.06,71.36,50,0
.goto 864,46.11,72.21,50,0
.goto 864,45.96,76.98,50,0
.goto 864,45.63,70.19,50,0
.goto 864,46.67,69.19,50,0
.goto 864,48.01,70.06,50,0
.goto 864,47.06,71.36,50,0
.goto 864,46.11,72.21,50,0
.goto 864,45.96,76.98
>>杀死|cRXP_ENEMY_Scorpashi Venomtails|r和|cRXX_ENEMY_Scorpashi Direclaws|r。掠夺它们的|cRXD_Loot_毒刺|r
.complete 48314,1 
.mob Scorpashi Venomtail
.mob Scorpashi Direclaws
step
#title Cactus 5/6
.goto 864,46.37,73.16
>>在地上抢夺刺梅仙人掌
.complete 48313,1,5 
step
#title Cactus 6/6
.goto 864,46.44,73.53
>>在地上抢夺刺梅仙人掌
.complete 48313,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r
.target Kiro
.goto 864,47.06,75.60
.turnin 48313 >>Turn in Nature's Remedy
.turnin 48314 >>Turn in Creeping Death
.accept 50770 >>接任务: |cRXP_WARN_有效的抗毒药剂|r
step
.goto 864,47.06,75.71
>>在|cRXP_FRONDLY_SERIK|r上使用|T967559:0|t[抗毒毒素]
.complete 50770,1 
.timer 6,Effective Antivenom RP
.use 158678
.target Serrik
step
.goto 864,47.06,75.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP结束。与|cRXP_FRONDLY_SERIK|r通话
.target Serrik
.turnin 50770 >>Turn in Effective Antivenom
.accept 50539 >>接任务: |cRXP_WARN_祖阿金的秘密|r
step
.goto 864,46.56,75.08,20,0
.goto 864,46.87,74.07,20,0
.goto 864,47.14,75.12,20,0
.goto 864,47.32,72.73
>>离开洞穴。走楼梯上去，然后进入北边的大楼
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maaz|r
.target Maaz
.accept 50536 >>接任务: |cRXP_WARN_魔力解码器|r
step
.goto 864,47.36,72.66
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Scepter|r
.complete 50536,1 
step
#completewith CrumblingS
.goto 864,47.36,72.66,0
+|cRXP_WARN_如果你失去了蛇形态，返回权杖并再次点击。您不能以这种形式挂载|r << !Druid !Shaman
+|cRXP_WARN_如果你失去了蛇形态，返回权杖并再次点击。你不能以这种形式装裱或变形|r << Druid
+|cRXP_WARN_如果你失去了蛇形态，返回权杖并再次点击。你不能以这种形式登上战狼或鬼狼|r << Shaman
step
.goto 864,48.30,74.49,30,0
.goto 864,48.05,74.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_PICK_Statue|r under the overhang
.complete 50536,2 
step
.goto 864,48.89,76.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_PICK_Statue|r under the overhang
.complete 50536,3 
step
.goto 864,48.90,74.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_PICK_Crumbling Statue|r
.turnin 50539 >>Turn in The Secrets of Zul'Ahjin
.accept 48315 >>接任务: |cRXP_WARN_空洞眼神|r
step
#title Sapphire 1/2
.goto 864,49.85,73.19
>>在地面上掠夺|cRXP_PICK_Sapphire|r
.complete 48315,1,1 
step
#completewith next
.goto 864,50.67,73.73,12 >>沿着墙的一侧上去
step
#title Sapphire 2/2
.goto 864,51.05,72.35
>>在地面上掠夺|cRXP_PICK_Sapphire|r
.complete 48315,1 
step
.goto 864,50.85,73.94,30,0
.goto 864,49.75,75.67
.goto 864,49.76,76.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jethek|r. He patrols along the path
.accept 50596 >>接任务: |cRXP_WARN_清理害虫|r
.target Foreman Jethek
step
#title Excavator freed 1/3
.goto 864,50.21,75.36
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Shackles|r to free the |cRXP_FRIENDLY_Excavator|r
.complete 50596,1,1 
step
.goto 864,49.49,74.97,15,0
.goto 864,49.73,74.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t放下。与悬挑下的|cRXP_PICK_Statue|r对话
.complete 50536,4 
step
#title Excavator freed 2/3
.goto 864,49.54,77.56
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Shackles|r to free the |cRXP_FRIENDLY_Excavator|r
.complete 50596,1,2 
step
#title Excavator freed 3/3
.goto 864,48.67,77.59
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Shackles|r to free the |cRXP_FRIENDLY_Excavator|r
.complete 50596,1 
step
#label CrumblingS
.goto 864,48.90,74.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_PICK_Crumbling Statue|r
.turnin 48315 >>Turn in Hollow, Empty Eyes
step
>>|cRXP_WARN_你不再需要保持蛇的状态|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maaz|r and |cRXP_FRIENDLY_Amre|r
.turnin 50536 >>Turn in Magic Decoder Device
.accept 48871 >>接任务: |cRXP_WARN_抢救圣物|r
.goto 864,47.32,72.73
.turnin 50596 >>Turn in Exterminate the Vermin
.accept 48872 >>接任务: |cRXP_WARN_加速发掘|r
.goto 864,47.40,72.74,3,0
.goto 864,47.44,72.61,3,0
.goto 864,47.24,72.67,3,0
.goto 864,47.40,72.74,3,0
.goto 864,47.44,72.61,3,0
.goto 864,47.24,72.67
.target Amre
.target Maaz
step
#completewith RelicSix
>>杀死|cRXP_ENEMY_Sethrak站点守护者|r和|cRXX_ENEMY_Relic猎人|r
.complete 48872,1 
.mob Sethrak Site Guardian
.mob Sethrak Relic Hunter
step
#title Relic 1/8
.goto 864,47.96,73.15
>>将|cRXP_PICK_Relic|r从地上抢走
.complete 48871,1,1 
step
#title Relic 2/8
.goto 864,48.61,74.16
>>将|cRXP_PICK_Relic|r从地上抢走
.complete 48871,1,2 
step
.goto 864,48.90,74.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_PICK_Ancient Reliquary|r
.accept 50561 >>接任务: |cRXP_WARN_苏尔西斯之石|r
step
#title Relic 3/8
.goto 864,49.01,74.59
>>将|cRXP_PICK_Relic|r从地上抢走
.complete 48871,1,3 
step
#title Relic 4/8
.goto 864,49.10,73.51
>>将|cRXP_PICK_Relic|r从地上抢走
.complete 48871,1,4 
step
#title Relic 5/8
.goto 864,49.59,73.48
>>将|cRXP_PICK_Relic|r从地上抢走
.complete 48871,1,5 
step
#label RelicSix
#title Relic 6/8
.goto 864,50.39,74.11,10,0
.goto 864,50.13,75.47
>>将|cRXP_PICK_Relic|r从地上抢走
.complete 48871,1,6 
step
.goto 864,50.17,75.90,30,0
.goto 864,50.13,76.80
>>杀死|cRXP_ENEMY_Sethrak站点守护者|r和|cRXX_ENEMY_Relic猎人|r
.complete 48872,1,8 
.mob Sethrak Site Guardian
.mob Sethrak Relic Hunter
step
#completewith RelicKeep
>>杀死|cRXP_ENEMY_Sethrak站点守护者|r和|cRXX_ENEMY_Relic猎人|r
.complete 48872,1 
.mob Sethrak Site Guardian
.mob Sethrak Relic Hunter
step
#title Relic 7/8
.goto 864,49.20,76.05
>>将|cRXP_PICK_Relic|r从地上抢走
.complete 48871,1,7 
step
#label RelicKeep
#title Relic 8/8
.goto 864,48.24,75.15
>>将|cRXP_PICK_Relic|r从地上抢走
.complete 48871,1 
step
.goto 864,48.32,77.02,20,0
.goto 864,47.57,75.69
>>杀死|cRXP_ENEMY_Sethrak站点守护者|r和|cRXX_ENEMY_Relic猎人|r
.complete 48872,1 
.mob Sethrak Site Guardian
.mob Sethrak Relic Hunter
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amre|r and |cRXP_FRIENDLY_Maaz|r
.turnin 48872 >>Turn in Expedite the Excavation
.goto 864,47.40,72.74,3,0
.goto 864,47.44,72.61,3,0
.goto 864,47.24,72.67,3,0
.goto 864,47.40,72.74,3,0
.goto 864,47.44,72.61,3,0
.goto 864,47.24,72.67
.turnin 48871 >>Turn in Rescue the Relics
.accept 50535 >>接任务: |cRXP_WARN_监工之力|r
.goto 864,47.32,72.73
.target Amre
.target Maaz
step
.goto 864,48.34,76.89,10,0
.goto 864,48.83,76.75
>>杀死|cRXP_ENEMY_Oversear Nerzet|r|cRXP-WARN_BOVE the overhead|r。为她掠夺她|cRXP_OOT_shard|r
.complete 50535,1 
.mob Overseer Nerzet
step
.goto 864,47.32,72.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maaz|r
.target Maaz
.turnin 50535 >>Turn in Power of the Overseer
step
>>跳下去，钻到悬挑下面。
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serrik|r
.target Serrik
.goto 864,46.61,75.72,20,0
.goto 864,47.06,75.71
.turnin 50561 >>Turn in Sulthis' Stone
.accept 47324 >>接任务: |cRXP_WARN_不可能的盟友|r
step
.goto 864,43.39,75.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razgaji|r
.target Razgaji
.accept 51573 >>接任务: |cRXP_WARN_我来保护你|r
.complete 51573,1 
.skipgossip 126576,1
.timer 74,I've Got Your Back RP
step
.goto 864,43.39,75.37,15,0
.goto 864,43.40,73.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razgaji|r again. Escort |cRXP_FRIENDLY_him|r
.complete 51573,2 
.target Razgaji

step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razgaji|r, |cRXP_FRIENDLY_Sezahjin|r, and |cRXP_FRIENDLY_Mugjabu|r
.turnin 51573 >>Turn in I've Got Your Back
.accept 48529 >>接任务: |cRXP_WARN_嗷嗷待哺|r
.accept 48530 >>接任务: |cRXP_WARN_走失的牧群|r
.goto 864,43.39,75.37
.turnin 48529 >>交任务: |cRXP_FRIENDLY_饿！|r Mouths To Feed
.accept 48531 >>接任务: |cRXP_WARN_神秘的肉|r
.accept 48533 >>接任务: |cRXP_WARN_沃顿炸鸡|r
.goto 864,43.70,76.78
.turnin 48530 >>Turn in I Heard You Lost the Herd
.accept 48532 >>接任务: |cRXP_WARN_疯狂羊驼|r
.goto 864,42.13,76.20
.target Razgaji
.target Sezahjin
.target Mugjabu
step
.goto 864,42.50,75.55,40,0
.goto 864,42.50,72.24,40,0
.goto 864,44.27,72.25,40,0
.goto 864,44.28,75.55,40,0
.goto 864,42.50,75.55,40,0
.goto 864,42.50,72.24,40,0
.goto 864,44.27,72.25,40,0
.goto 864,44.28,75.55
>>在|cRXP_ENEMY_Fattened Buzzards|r上使用|T135491:0|t[Sezahjin's Trusty Vulture Bow]并杀死它们。为|cRXP_OOT_Roasted Buzzard|r掠夺它们
.complete 48533,1 
.use 152572
.mob Fattened Buzzard
step
#completewith ScaSupplies
>>杀死|cRXP_ENEMY_Vol'duni Dunecrawlers|r。掠夺他们的|cRXP-Loot_INARD|r
>>使用|cRXP_FRIENDLY_Alpacas|r附近的|T132161:0|t[Alpaca Whistle]。如果他们变成敌人，就攻击他们
.complete 48531,1 
.complete 48532,1 
.use 152570
.mob Vol'duni Dunecrawler
.mob Alpaca
step
.goto 864,40.43,73.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_PICK_地精工兵背包|r
.accept 48585 >>接任务: |cRXP_WARN_废土幸存者|r
step
#title Supplies 1/10
.goto 864,40.17,74.07
>>将|cRXP_PICK_小袋|r洗劫一空
.complete 48585,1,1 
step
#title Supplies 2/10
.goto 864,40.33,74.90
>>将|cRXP_PICK_小袋|r洗劫一空
.complete 48585,1,2 
step
#title Supplies 3/10
.goto 864,39.27,74.83
>>将|cRXP_PICK_小袋|r洗劫一空
.complete 48585,1,3 
step
#title Supplies 4/10
.goto 864,39.00,75.20
>>将|cRXP_PICK_小袋|r洗劫一空
.complete 48585,1,4 
step
#title Supplies 5/10
.goto 864,38.43,74.65
>>将|cRXP_PICK_小袋|r洗劫一空
.complete 48585,1,5 
step
#title Supplies 6/10
.goto 864,37.97,74.62
>>将|cRXP_PICK_小袋|r洗劫一空
.complete 48585,1,6 
step
#title Supplies 7/10
.goto 864,37.75,72.27
>>将|cRXP_PICK_小袋|r洗劫一空
.complete 48585,1,7 
step
#title Supplies 8/10
.goto 864,38.52,71.68
>>将|cRXP_PICK_小袋|r洗劫一空
.complete 48585,1,8 
step
#title Supplies 9/10
.goto 864,39.27,72.39
>>将|cRXP_PICK_小袋|r洗劫一空
.complete 48585,1,9 
step
#label ScaSupplies
#title Supplies 10/10
.goto 864,40.46,72.92
>>将|cRXP_PICK_小袋|r洗劫一空
.complete 48585,1 
step
.goto 864,40.67,72.53,45,0
.goto 864,39.14,72.39,45,0
.goto 864,38.78,73.20,45,0
.goto 864,37.16,72.34,45,0
.goto 864,38.63,70.05,45,0
.goto 864,38.68,72.40,45,0
.goto 864,40.67,72.53,45,0
.goto 864,39.14,72.39,45,0
.goto 864,38.78,73.20,45,0
.goto 864,37.16,72.34,45,0
.goto 864,38.63,70.05,45,0
.goto 864,38.68,72.40
>>杀死|cRXP_ENEMY_Vol'duni Dunecrawlers|r。掠夺他们的|cRXP-Loot_INARD|r
>>使用|cRXP_FRIENDLY_Alpacas|r附近的|T132161:0|t[Alpaca Whistle]。如果他们变成敌人，就攻击他们
.complete 48531,1 
.complete 48532,1 
.use 152570
.mob Vol'duni Dunecrawler
.mob Alpaca
step
.goto 864,43.39,75.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razgaji|r
.target Razgaji
.turnin 48585 >>交任务: |cRXP_FRIENDLY_废土|r Survivor
step
#completewith Junji
.goto 864,43.05,76.46
.home >>将你的炉石设置为焦沙前哨
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sezahjin|r and |cRXP_FRIENDLY_Mugjabu|r
.turnin 48531 >>Turn in Mystery Meat
.turnin 48533 >>Turn in Vol'duni Fried Chicken
.accept 48655 >>接任务: |cRXP_WARN_厨师学徒|r
.goto 864,43.70,76.78
.turnin 48532 >>Turn in Alpacas Gone Wild
.accept 48534 >>接任务: |cRXP_WARN_啸齿终嚎|r
.goto 864,42.13,76.20
.target Sezahjin
.target Mugjabu
step
#completewith next
.goto 864,43.40,79.29,15 >>向下跳向|cRXP_FRIENDLY_Junji|r
step
#label Junji
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junji|r. |cRXP_WARN_DON'T kill the two Saurolisks in front of him|r
.goto 864,43.39,78.63
.turnin 48655 >>Turn in The Chef's Apprentice
.accept 48656 >>接任务: |cRXP_WARN_野蛮的巨蜥|r
.accept 48657 >>接任务: |cRXP_WARN_它们可能非常美味|r
.target Junji
step
#completewith SauroliskEgg
>>杀死|cRXP_ENEMY_Scaleclaw Saurolisk|r
.complete 48656,1 
.mob Scaleclaw Saurolisk
step
#title Eggs 2/10
.goto 864,44.76,80.86
>>将|cRXP_PICK_Eggs|r从地上偷走|cRXP_WARN_不要聚集|cRXP_ENEMY_Broodmoth|r|r
.complete 48657,1,2 
step
#title Eggs 5/10
.goto 864,44.49,81.79
>>偷走地上的|cRXP_PICK_Eggs|r
.complete 48657,1,5 
step
#completewith next
.goto 864,43.49,82.86,15 >>进入洞穴
step
.goto 864,42.82,84.33
>>杀死|cRXP_ENEMY_Snarltoth|r。掠夺他的|cRXX_Loot_head|r
.complete 48534,1 
step
#title Eggs 8/10
.goto 864,42.70,81.99
>>偷走地上的|cRXP_PICK_Eggs|r
.complete 48657,1,8 
step
#label SauroliskEgg
#title Eggs 10/10
.goto 864,42.33,82.06
>>偷走地上的|cRXP_PICK_Eggs|r
.complete 48657,1 
step
.goto 864,41.46,81.49,40,0
.goto 864,42.24,79.96,40,0
.goto 864,44.76,80.86,40,0
.goto 864,42.33,82.06,40,0
.goto 864,41.46,81.49,40,0
.goto 864,42.24,79.96,40,0
.goto 864,44.76,80.86,40,0
.goto 864,42.33,82.06
>>杀死|cRXP_ENEMY_Scaleclaw Saurolisk|r
.complete 48656,1 
.mob Scaleclaw Saurolisk
step
.goto 864,43.39,78.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junji|r
.target Junji
.turnin 48656 >>Turn in Savage Saurolisks
.turnin 48657 >>Turn in They Might Be Delicious
step
#completewith next
.goto 864,45.09,83.15,20,0
.goto 864,45.54,83.11,15 >>沿着通往兰德尔的路走
step
.goto 864,45.65,82.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randall|r
.target Randall Redmond
.accept 47870 >>接任务: |cRXP_WARN_死无对证|r
.accept 47871 >>接任务: |cRXP_WARN_航海必需品|r
step
#completewith next
.goto 864,45.92,84.62,40,0
.goto 864,47.22,86.20,40,0
.goto 864,47.62,86.12,40 >>骑过所有的执法人员和劳工/如果可能的话，不要停下来攻击他们
step
.goto 864,47.62,86.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keerin|r
.target Keerin
.accept 47939 >>接任务: |cRXP_WARN_如果这把钥匙对得上……|r
step
#completewith Perry
>>杀死|cRXP_ENEMY_Ashvane Enforcers|r、|cRXD_ENEMY_Prospectors|r和|cRXP_ENEMY_Redrock Labours|r。掠夺他们的|cRXT_Loot_key|r和| cRXP_Loot_garb|r
.complete 47939,1 
.collect 160735,5,49261,1 
.mob Ashvane Enforcer
.mob Ashvane Prospector
.mob Redrock Laborer
step
#sticky
#label NautMap
.goto 864,47.97,87.05,0,0
>>掠夺表上的|cRXP_PICK_Map|r
.complete 47871,2 
step
.goto 864,48.08,86.90
>>杀死|cRXP_ENEMY_Boatswain Hendricks|r。|cRXP-WARN_当他投掷烟雾弹时，把他从烟雾弹中拖出来|r
.complete 47870,2 
.mob Boatswain Hendricks
step
#sticky
#requires NautMap
#label WeaSpyglass
.goto 864,46.72,87.29,0,0
>>将|cRXP_PICK_Spyglass|r从桌子上偷走
.complete 47871,3 
step
#label Perry
#requires NautMap
>>杀死|cRXP_ENEMY_First Mate Perry |r和|cRXD_ENEMY_Gunner Erikson |r
.complete 47870,3 
.goto 864,46.89,87.93
.complete 47870,1 
.goto 864,46.73,87.35
.mob First Mate Perry
.mob Gunner Erikson
step
#requires WeaSpyglass
.goto 864,47.62,86.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keerin|r
.target Keerin
.turnin 47939 >>Turn in If the Key Fits...
.isQuestComplete 47939
step
#requires WeaSpyglass
#completewith next
>>杀死|cRXP_ENEMY_Expedition Leader Augustus|r。抢走他的|cRXX_Loot_Seafaring Hat |r
.goto 864,46.18,86.46
.complete 47871,1 
.mob Expedition Leader Augustus
step
#requires WeaSpyglass
#loop
.line 864,47.96,87.70,48.34,87.30,47.96,86.55,47.32,86.06,46.16,85.20,46.66,86.50,47.08,86.99,47.96,87.70
.goto 864,47.96,87.70,40,0
.goto 864,48.34,87.30,40,0
.goto 864,47.96,86.55,40,0
.goto 864,47.32,86.06,40,0
.goto 864,46.16,85.20,40,0
.goto 864,46.66,86.50,40,0
.goto 864,47.08,86.99,40,0
.goto 864,47.96,87.70,40,0
>>杀死|cRXP_ENEMY_Ashvane Enforcers|r、|cRXD_ENEMY_Prospectors|r和|cRXP_ENEMY_Redrock Labours|r。掠夺他们的|cRXT_Loot_key|r和| cRXP_Loot_garb|r
.complete 47939,1 
.collect 160735,5,49261,1 
.mob Ashvane Enforcer
.mob Ashvane Prospector
.mob Redrock Laborer
step
.goto 864,47.62,86.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keerin|r
.target Keerin
.turnin 47939 >>Turn in If the Key Fits...
step
>>杀死|cRXP_ENEMY_Expedition Leader Augustus|r。抢走他的|cRXX_Loot_Seafaring Hat |r
.goto 864,46.18,86.46
.complete 47871,1 
.mob Expedition Leader Augustus
step
.goto 864,44.65,86.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randall|r
.target Randall Redmond
.turnin 47870 >>Turn in Dead Men Tell No Tales
.turnin 47871 >>Turn in Seafaring Necessities
.accept 51810 >>接任务: |cRXP_WARN_哈弗德船长|r
step
#completewith next
.collect 160735,5,49261,1 
step
#completewith next
.goto 864,44.65,86.99
.cast 247648 >>使用Ashvane Garb伪装5分钟
.timer 300,Ashvane Disguise Timer
.use 160735
step
.goto 864,44.60,88.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Herrington|r whilst disguised
.accept 49261 >>接任务: |cRXP_WARN_水手螃蟹汤|r
.target Dockmaster Herrington
step
#completewith Herrington
+|cRXP_WARN_避开Ashvane监督，因为他们可以去除你的伪装|r
+如果你的伪装掉了，杀死|cRXP_ENEMY_Ashvane|r和|cRXX_ENEMY_Shady Deckhand|r。偷走他们的|cRXD_Loot_服装|r。当你有5个时重新戴上
.use 160735
.mob Shady Deckhand

step
#completewith CapCache
>>杀死|cRXP_ENEMY_Sand Scuttlers|r。掠夺他们的|cRXX_Loot_肉|r
.complete 49261,1 
.mob Sand Scuttler
step
.goto 864,44.29,90.45,20,0
.goto 864,43.21,90.13,15,0
.goto 864,43.13,90.83
>>杀死|cRXP_ENEMY_哈特福德船长|r在船的顶部
.complete 51810,1 
.mob Captain Hartford
step
#label CapCache
.goto 864,43.30,90.74,8,0
>>走下一层，然后进入船内。
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Redmond|r and the |cRXP_PICK_Lockbox|r
.turnin 51810 >>Turn in Captain Hartford
.accept 47873 >>接任务: |cRXP_WARN_船长的宝藏|r
.goto 864,43.20,90.90
.turnin 47873 >>Turn in The Captain's Cache
.goto 864,43.20,90.76
.target Captain Redmond
step
.goto 864,44.10,90.54,40,0
.goto 864,44.54,88.84,40,0
.goto 864,42.22,86.42,40,0
.goto 864,44.10,90.54,40,0
.goto 864,44.54,88.84,40,0
.goto 864,42.22,86.42
>>杀死|cRXP_ENEMY_Sand Scuttlers|r。掠夺他们的|cRXX_Loot_肉|r
.complete 49261,1 
.mob Sand Scuttler
step
#label Herrington
.goto 864,44.60,88.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Herrington|r whilst disguised
.turnin 49261 >>Turn in Crabby Crew Stew
.target Dockmaster Herrington
step
#completewith next
.hs >>焦沙之心前哨
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mugjabu|r and |cRXP_FRIENDLY_Zauljin|r
.turnin 48534 >>Turn in Snarltooth's Last Laugh
.goto 864,42.13,76.20
.accept 48846 >>接任务: |cRXP_WARN_劝君一瓶酒|r
.goto 864,43.23,76.96
.target Mugjabu
.target Zauljin
step
.goto 864,42.86,76.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taz'jin|r. Buy a |T132798:0|t[Zanchuli Reserve] from |cRXP_FRIENDLY_him|r
.complete 48846,1 
.target Taz'jin

step
.goto 864,43.23,76.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zauljin|r
.target Zauljin
.complete 48846,2 
.skipgossip
step
.goto 864,43.39,75.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razgaji|r
.target Razgaji
.turnin 48846 >>Turn in Liquid Motivation
.accept 48790 >>接任务: |cRXP_WARN_失窃的货物|r
.accept 48850 >>接任务: |cRXP_WARN_汤戈|r
.accept 51602 >>接任务: |cRXP_WARN_强盗之刃|r
step
#completewith Tongo
>>杀死|cRXP_ENEMY_Zandalari流放者|r。掠夺他们的|cRXX_Loot_刀刃|r。
>>你也可以掠夺地面上的刀刃
.complete 51602,1 
.mob Zandalari Exile
step
#title Stolen supplies 1/6
.goto 864,40.73,74.66,10,0
.goto 864,40.63,74.50
>>进入大楼。将左侧的|cRXP_PICK_hides|r放在地上
.complete 48790,1,1 
step
#title Stolen supplies 3/6
.goto 864,40.88,74.37
>>掠夺表上的|cRXP_PICK_Box|r和|cRX_PICK_Pot|r
.complete 48790,1,3 
step
#title Stolen supplies 5/6
.goto 864,40.34,75.28,10,0
.goto 864,40.11,75.37,8,0
.goto 864,40.04,75.19,8,0
.goto 864,40.11,75.37,-1
.goto 864,40.04,75.19,-1
>>进入洞穴建筑。将|cRXP_PICK_Pouch|r和|cRXP _PICK_Basket|r洗劫一空
.complete 48790,1,5 
step
#title Stolen supplies 6/6
.goto 864,40.45,75.27,5,0
.goto 864,40.04,75.62
>>将|cRXP_PICK_Waterskin|r从桶外取出
.complete 48790,1 
step
#label Tongo
.goto 864,40.84,76.03
>>杀死|cRXP_ENEMY_Tongo|r。掠夺他的|cRXX_Loot_head|r。
>>|cRXP_WARN_这个任务很难。如果你感到虚弱并想要安全，请先杀死Snarl和Gnarl|r
.complete 48850,1 
.mob Tongo
step
.goto 864,40.99,74.61,40,0
.goto 864,41.04,73.43,40,0
.goto 864,39.72,75.41,40,0
.goto 864,39.99,76.36,40,0
.goto 864,40.99,74.61,40,0
.goto 864,41.04,73.43,40,0
.goto 864,39.72,75.41,40,0
.goto 864,39.99,76.36
>>杀死|cRXP_ENEMY_Zandalari流放者|r。掠夺他们的|cRXX_Loot_刀刃|r。
>>你也可以掠夺地面上的刀刃
.complete 51602,1 
.mob Zandalari Exile
step
.goto 864,43.39,75.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razgaji|r
.target Razgaji
.turnin 48790 >>Turn in Stolen Goods
.turnin 48850 >>Turn in Tongo
.turnin 51602 >>Turn in Bandit Blades
.accept 48847 >>接任务: |cRXP_WARN_武装起来|r
step
#title Villager armed 1/8
.goto 864,42.87,76.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Scorched Sands Outcast|r
.complete 48847,1,1 
.skipgossip
step
#title Villager armed 2/8
.goto 864,42.86,76.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Scorched Sands Outcast|r
.complete 48847,1,2 
.skipgossip
step
#title Villager armed 3/8
.goto 864,43.61,76.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Scorched Sands Outcast|r
.complete 48847,1,3 
.skipgossip
step
#title Villager armed 4/8
.goto 864,43.82,77.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Scorched Sands Outcast|r
.complete 48847,1,4 
.skipgossip
step
#title Villager armed 5/8
.goto 864,42.97,77.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Scorched Sands Outcast|r
.complete 48847,1,5 
.skipgossip
step
#title Villager armed 6/8
.goto 864,42.56,76.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Scorched Sands Outcast|r
.complete 48847,1,6 
.skipgossip
step
#title Villager armed 7/8
.goto 864,42.52,76.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Scorched Sands Outcast|r
.complete 48847,1,7 
.skipgossip
step
#title Villager armed 8/8
.goto 864,42.14,76.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Scorched Sands Outcast|r
.complete 48847,1 
.skipgossip
step
.goto 864,43.39,75.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razgaji|r
.target Razgaji
.turnin 48847 >>Turn in Arming the Tribe
.accept 51668 >>接任务: |cRXP_WARN_莫加波|r
step
.goto 864,43.40,73.86
>>在|cRXP_ENEMY_Mojambo|r上使用|T1405809:0|t[Tongo's Head]使其具有敌意
.complete 51668,1 
.use 160525
.mob Mojambo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razgaji|r, |cRXP_FRIENDLY_Sezahjin|r, the |cRXP_PICK_Wanted Poster|r, and |cRXP_FRIENDLY_Mugjabu|r
.turnin 51668 >>Turn in Mojambo
.goto 864,43.39,75.37
.accept 51772 >>接任务: |cRXP_WARN_托卡塔部族|r
.goto 864,43.70,76.78
.accept 51161 >>接任务: |cRXP_WARN_通缉：扎罗科|r
.goto 864,43.12,76.57
.accept 51775 >>接任务: |cRXP_WARN_止风营地|r
.goto 864,42.13,76.20
.target Razgaji
.target Sezahjin
.target Mugjabu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norah|r and the |cRXP_PICK_Wanted Poster|r
.turnin 51775 >>Turn in Camp Lastwind
.accept 48324 >>接任务: |cRXP_WARN_迷失泽姆兰|r
.goto 864,38.88,77.32
.accept 51162 >>接任务: |cRXP_WARN_通缉：叛徒塔兹拉卡|r
.goto 864,38.86,76.96
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meeki|r's corpse and |cRXP_FRIENDLY_Jamboya|r
.turnin 48324 >>Turn in Lost in Zem'lan
.goto 864,35.46,83.47
.accept 51053 >>接任务: |cRXP_WARN_港口陷落之日|r
.goto 864,35.44,83.82
.target Meeki
.target First Mate Jamboya
step
.goto 864,34.32,85.18
>>在死亡巨魔附近使用|T1121020:0|t【大副詹波亚勋章】
.complete 51053,1 
.use 159747
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamboya|r, then click on |cRXP_FRIENDLY_him|r to free him
.goto 864,35.44,83.82
.turnin 51053 >>Turn in The Day the Port Fell
.accept 51054 >>接任务: |cRXP_WARN_迟来的叛变|r
.complete 51054,1 
.timer 10,Overdue Mutiny RP
.target First Mate Jamboya
step
.goto 864,35.31,83.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP结束。与|cRXP_FRIENDLY_Jamboya|r交谈
.turnin 51054 >>Turn in Overdue Mutiny
.accept 51055 >>接任务: |cRXP_WARN_执法的横桅|r
.accept 51056 >>接任务: |cRXP_WARN_生前的最后一天|r
.target First Mate Jamboya
step
#completewith PirateBoat
>>|cRXP_WARN_这个领域很难。尽量不要拉太多暴徒，注意“泽姆兰黑眼酿造”的健康再生buff|r
>>杀死|cRXP_ENEMY_Undad Trolls|r和他们的宠物，释放|cRXP_FRIENDLY_Vulpera|r，然后点击|cRX_PICK_Pirate Maps|r/|cRXP_ICK_Hats|r/| cRXP_ICK_Grog|r
.complete 47647,1 
.xp >50,1

step
.goto 864,36.92,78.06
>>进入悬挑下的洞穴。
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on|cRXP_FRIENDLY_Tulmac|r to free him
.complete 51055,1 
.target Quartermaster Tulmac
step
.goto 864,35.90,78.26
>>在楼梯上使用|T1121020:0|t[詹波亚大副奖章]
.complete 51056,1 
.use 159757
step
.goto 864,35.14,77.98
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick |cRXP_FRIENDLY_Bosanya|r to free him
.complete 51055,2 
.target Gunner Bosanya
step
>>在尸体附近使用|T1121020:0|t[詹波亚大副奖章]
.goto 864,35.68,75.56
.complete 51056,2 
.use 159757
step
.goto 864,35.77,70.75,10,0
.goto 864,35.51,70.87
>>杀死建筑物内的|cRXP_ENEMY_Taz'raka|r。
>>|cRXP_WARN_你可以把他放在大楼周围。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。|r
.complete 51162,1 
.mob Taz'raka
step
.goto 864,34.92,76.76,20,0
.goto 864,34.64,77.14
>>进入大楼.
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on |cRXP_FRIENDLY_Jukanga|r to free him
.complete 51055,3 
.target Jukanga the Snitch
step
.goto 864,36.43,81.99,20,0
.goto 864,35.31,83.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamboya|r
.target First Mate Jamboya
.turnin 51055 >>Turn in The Yard Arm of the Law
.turnin 51056 >>Turn in My Last Day Alive
.accept 47499 >>接任务: |cRXP_WARN_咧笑雕像|r
.accept 51057 >>接任务: |cRXP_WARN_用火困住他们|r
step
#title Canoes burned 1/8
.goto 864,35.57,82.18
>>使用|cRXP_PICK_Canoe|r上的|T135432:0|t[割炬]。您可以在移动时使用割炬
.complete 51057,1,1 
.use 159774
step
#title Canoes burned 2/8
.goto 864,35.51,81.50
>>使用|cRXP_PICK_Canoe|r上的|T135432:0|t[割炬]。您可以在移动时使用割炬
.complete 51057,1,2 
.use 159774
step
.goto 864,35.05,80.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_PICK_Treasure Map|r on the crate
.accept 49138 >>接任务: |cRXP_WARN_古尔纳库船长的宝藏|r
step
#completewith PirateBoat
+如果你找到海盗帽，就用它。它给你一个游泳速度的buff
step
>>杀死|cRXP_ENEMY_Boonzali|r、|cRXD_ENEMY_Da Cabin Boy|r和|cRXP_ENEMY_Torwec|r。掠夺他们的|cRXT_Loot_Ido象|r
.complete 47499,1 
.goto 864,33.87,81.25
.complete 47499,2 
.goto 864,34.36,77.59
.complete 47499,3 
.goto 864,33.24,77.63,30,0
.goto 864,32.86,78.20
.mob Boonzali
.mob Da Cabin Boy
.mob Torwec
step
>>顺着箭头去找宝藏
.goto 864,31.82,79.36
.complete 49138,1 
step
>>杀死|cRXP_ENEMY_古尔纳库上尉|r。抢走他的|cRXP_Loot_key|r，然后与|cRX_PICK_Chest|r交谈
.complete 49138,2 
.goto 864,31.74,79.26
.turnin 49138 >>Turn in Captain Gulnaku's Treasure
.goto 864,31.78,79.31
.mob Captain Gulnaku
step
#title Canoes burned 3/8
.goto 864,31.55,78.97
>>使用|cRXP_PICK_Canoe|r上的|T135432:0|t[割炬]。您可以在移动时使用割炬
.complete 51057,1,3 
.use 159774
step
#title Canoes burned 4/8
.goto 864,32.22,80.38
>>使用|cRXP_PICK_Canoe|r上的|T135432:0|t[割炬]。您可以在移动时使用割炬
.complete 51057,1,4 
.use 159774
step
#title Canoes burned 5/8
.goto 864,32.61,80.40
>>使用|cRXP_PICK_Canoe|r上的|T135432:0|t[割炬]。您可以在移动时使用割炬
.complete 51057,1,5 
.use 159774
step
#title Canoes burned 6/8
.goto 864,32.88,79.37
>>使用|cRXP_PICK_Canoe|r上的|T135432:0|t[割炬]。您可以在移动时使用割炬
.complete 51057,1,6 
.use 159774
step
#title Canoes burned 7/8
.goto 864,33.27,80.17
>>使用|cRXP_PICK_Canoe|r上的|T135432:0|t[割炬]。您可以在移动时使用割炬
.complete 51057,1,7 
.use 159774
step
#title Canoes burned 8/8
.goto 864,32.99,81.03
>>使用|cRXP_PICK_Canoe|r上的|T135432:0|t[割炬]。您可以在移动时使用割炬
.complete 51057,1 
.use 159774
step
.goto 864,33.28,81.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamboya|r
.target First Mate Jamboya
.turnin 47499 >>Turn in The Grinning Idols
.turnin 51057 >>Turn in Maroon 'em with Fire
.accept 51059 >>接任务: |cRXP_WARN_金银岛|r
step
#label PirateBoat
.goto 864,33.25,81.85
.vehicle >>安装|cRXP_PICK_Boat|r
.timer 35,The Golden Isle RP
step
#completewith next
>>等待RP
.complete 51059,1 
step
.goto 864,30.24,86.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamboya|r
.target First Mate Jamboya
.turnin 51059 >>Turn in The Golden Isle
.accept 51060 >>接任务: |cRXP_WARN_战利品分赃|r
.accept 51061 >>接任务: |cRXP_WARN_我的首次死亡|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Altar|r, and then the |cRXP_PICK_idol|r that appears on it
.complete 51061,1 
.goto 864,29.71,87.99
.complete 51061,2 
.goto 864,29.71,87.99
step
.goto 864,30.47,88.11,15,0
.goto 864,30.74,88.88,15,0
.goto 864,30.40,88.84,15,0
.goto 864,29.86,88.57,15,0
.goto 864,29.41,88.58,15,0
.goto 864,29.25,88.33,15,0
.goto 864,28.89,89.25,15,0
.goto 864,28.73,88.67,15,0
.goto 864,28.85,87.88,15,0
.goto 864,29.63,85.58,30,0
.goto 864,29.71,87.99,30,0
.goto 864,30.40,88.84
>>杀死|cRXP_ENEMY_Goldslaves|r和|cRXX_ENEMY_Animated Treasures|r。掠夺他们的|cRXP_Loot_诅咒宝藏|r。
>>此外，掠夺地上的|cRXP_PICK_Cursed Treasure|r
.complete 51060,1 
.mob Animated Treasure
.mob Goldslave
step
.goto 864,28.57,88.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamboya|r
.target First Mate Jamboya
.turnin 51060 >>Turn in Our Share of the Plunder
.turnin 51061 >>Turn in The First Time I Died
.accept 48326 >>接任务: |cRXP_WARN_这是叛变|r
step
.goto 864,28.57,88.69
>>|TInterface/GossipFrame/HealerGossipIcon:0|tRing the |cRXP_PICK_Gong|r
.complete 48326,1 
.timer 9,This Be Mutiny RP
step
.goto 864,28.58,88.37
>>杀死|cRXP_ENEMY_Zem'lan|r。如果你黏糊糊的话，让|cRXP_FRIENDLY_Jamboya|r坦克攻击他（通过停止伤害）
.complete 48326,2 
.mob Zem'lan
step
.goto 864,29.38,87.42
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_sand|r on the ground
.turnin 51137 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_PICK_珍宝|r
step
.goto 864,30.24,86.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamboya|r
.target First Mate Jamboya
.turnin 48326 >>Turn in This Be Mutiny
.accept 51062 >>接任务: |cRXP_WARN_逃离泽姆兰|r
step
.goto 864,30.27,86.31
.vehicle >>安装|cRXP_PICK_Boat|r
.timer 36,Escaping Zem'lan RP
step
#completewith EscapingZ
.goto 864,37.68,82.62
>>等待RP
.complete 51062,1 
step
.goto 864,36.80,82.92,40,0
.goto 864,37.67,79.07,40,0
.goto 864,35.03,77.28,40,0
.goto 864,36.80,82.92,40,0
.goto 864,37.67,79.07,40,0
.goto 864,35.03,77.28
>>|cRXP_WARN_留意“泽姆兰黑眼酿造”以获得健康再生buff|r
>>杀死|cRXP_ENEMY_Undad Trolls|r和他们的宠物，释放|cRXP_FRIENDLY_Vulpera|r，并使用|cRX_PICK_Pirate Maps/Hats/Grog|r
.complete 47647,1 
.xp >50,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norah|r
.target Norah
.goto 864,38.88,77.31
.turnin 51062 >>Turn in Escaping Zem'lan
.turnin 51162 >>Turn in WANTED: Taz'raka the Traitor
.accept 48327 >>接任务: |cRXP_WARN_奇怪的货物|r
.isQuestComplete 51162
step
#label EscapingZ
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Norah|r
.target Norah
.goto 864,38.88,77.31
.turnin 51062 >>Turn in Escaping Zem'lan
.accept 48327 >>接任务: |cRXP_WARN_奇怪的货物|r
step
>>|cRXP_WARN_放弃传送回|cRXP_FRIENDLY_Serik|r的任务|r
.abandon 47324 >>Abandon Unlikely Allies
step
.goto 864,47.06,75.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seerik|r. |cRXP_WARN_请勿安装Pterrordax after|r
.accept 47324 >>接任务: |cRXP_WARN_不可能的盟友|r
.target Seerik
step
.goto 864,46.98,73.66,30,0
.goto 864,47.30,73.69
>>|cRXP_WARN_请勿安装Pterrordax|r
>>Kill |cRXP_ENEMY_Za'roco the Grifter|r under the overhang. Try to interrupt "Mask of Fear"
.complete 51161,1 
.mob Za'roco the Grifter
step
#completewith next
.goto 864,43.05,60.87,20 >>进入洞穴
step
.goto 864,43.51,60.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhan'ka|r
.target Rhan'ka
.turnin 48327 >>Turn in A Strange Delivery
.accept 47497 >>接任务: |cRXP_WARN_与金牙帮见面|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Man'zul|r (the skull) and the |cRXP_PICK_Wanted Poster|r
.complete 47497,3 
.goto 864,43.64,59.93
.accept 51164 >>接任务: |cRXP_WARN_通缉：眼镜蛇巡游者|r
.goto 864,43.65,59.94
.skipgossip 4
.target Man'zul
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grenja|r and |cRXP_FRIENDLY_Volni|r
.complete 47497,1 
.goto 864,43.66,60.35
.complete 47497,2 
.goto 864,43.38,60.15
.skipgossip 4
.target Grenja
.target Volni
step
.goto 864,43.51,60.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhan'ka|r
.target Rhan'ka
.turnin 47497 >>Turn in Meet the Goldtusk Gang
.accept 47498 >>接任务: |cRXP_WARN_拉恩卡失踪的朋友|r
.accept 47501 >>接任务: |cRXP_WARN_脏活累活只为酒|r
step
>>|cRXP_WARN_放弃任务，传送回西瑞克|r
.abandon 47324 >>Abandon Unlikely Allies
step
.goto 864,47.06,75.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seerik|r. |cRXP_WARN_请勿安装Pterrordax after|r
.accept 47324 >>接任务: |cRXP_WARN_不可能的盟友|r
.target Seerik
step
.goto 864,43.39,75.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razgaji|r
.target Razgaji
.turnin 51161 >>Turn in WANTED: Za'roco
.isQuestComplete 51161
step
.isQuestTurnedIn 51161
>>|cRXP_WARN_放弃任务，传送回西瑞克|r
.abandon 47324 >>Abandon Unlikely Allies
step
.goto 864,47.06,75.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seerik|r
.target Seerik
.accept 47324 >>接任务: |cRXP_WARN_不可能的盟友|r
step
.goto 864,46.78,75.45
>>安装|cRXP_FRONDLY_Pterrordax|r
.complete 47324,1 
.timer 43,Unlikely Allies RP
.target Pterrordax
step
#completewith next
.goto 864,27.22,53.93
>>等待RP
.complete 47324,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serrik|r and |cRXP_FRIENDLY_Zissiah|r
.turnin 47324 >>Turn in Unlikely Allies
.accept 49334 >>接任务: |cRXP_WARN_强大的囚犯|r
.goto 864,27.22,53.93
.accept 49327 >>接任务: |cRXP_WARN_击退他们！|r
.accept 50641 >>接任务: |cRXP_WARN_粉碎进攻|r
.goto 864,27.20,53.86
.target Serrik
.target Zissiah
step
#completewith SpiresShat
.goto 864,28.94,53.91,40,0
>>杀死|cRXP_ENEMY_Faithless攻击者|r、|cRXD_ENEMY_Ravagers|r、| cRXP__ENEMY_Skycallers |r和|cRXP_ENEMY_Sentries|r
.complete 50641,1 
.mob Faithless Aggressor
.mob Faithless Skycaller
.mob Faithless Ravager
.mob Faithless Sentry
step
.goto 864,28.97,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_PICK_Flute|r on the ground
.accept 50818 >>接任务: |cRXP_WARN_丢失的笛子|r
step
#title Spire shattered 1/2
.goto 864,29.05,54.95
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Spire|r to destroy it
.complete 49327,3,1 
step
#title Banner burned 1/4
.goto 864,30.09,54.44
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Banner|r to burn it
.complete 49327,1,1 
step
#label SpiresShat
#title Spire shattered 2/2
.goto 864,30.35,54.98
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Spire|r to destroy it
.complete 49327,3 
step
.goto 864,29.52,59.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenoh|r
.target Jenoh
.turnin 50818 >>Turn in A Lost Flute
.accept 50817 >>接任务: |cRXP_WARN_迷人的尾巴|r
.accept 50979 >>接任务: |cRXP_WARN_只要一点点|r
step
#completewith next
.goto 864,30.45,58.98,30,0
.goto 864,30.95,58.57,30,0
.goto 864,31.12,59.77,30,0
.goto 864,30.59,60.13,30,0
.goto 864,29.17,61.78,30,0
>>杀死|cRXP_ENEMY_Atrivax Lashers|r和|cRXP_ENEMY_Lashets|r。掠夺它们的|cRXD_OOT_Gel样品|r
.complete 50979,1 
.mob Atrivax Lasher
.mob Atrivax Lashet
step
.goto 864,28.64,62.20,30,0
.goto 864,28.59,63.58,30,0
.goto 864,27.36,63.72,30,0
.goto 864,27.56,63.07,30,0
.goto 864,28.16,62.17,30,0
.goto 864,28.64,62.20,30,0
.goto 864,28.59,63.58,30,0
.goto 864,27.36,63.72,30,0
.goto 864,27.56,63.07,30,0
.goto 864,28.16,62.17
>>在|cRXP_FRIENDLY_Strand Cobras|r附近使用|T136008:0|t[Charming Flute]。|cRXP-WARN_It在安装时可用|r
.complete 50817,1 
.use 158883
.target Strand Cobra
step
.goto 864,28.82,64.07,30,0
.goto 864,29.84,62.47,30,0
.goto 864,30.45,58.98,30,0
.goto 864,30.95,58.57,30,0
.goto 864,31.12,59.77,30,0
.goto 864,30.59,60.13
>>杀死|cRXP_ENEMY_Atrivax Lashers|r和|cRXP_ENEMY_Lashets|r。掠夺它们的|cRXD_OOT_Gel样品|r
.complete 50979,1 
.mob Atrivax Lasher
.mob Atrivax Lashet
step
.goto 864,29.52,59.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenoh|r
.target Jenoh
.turnin 50817 >>Turn in A Charming Tail
.turnin 50979 >>Turn in Just a Nip
.accept 50980 >>接任务: |cRXP_WARN_我的饥饿邻居|r
step
.goto 864,29.17,61.78,30,0
.goto 864,27.91,61.21
>>杀死|cRXP_ENEMY_Territorial Hydra|r
.complete 50980,1 
.mob Territorial Hydra
step
.goto 864,29.52,59.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenoh|r
.target Jenoh
.turnin 50980 >>Turn in My Hungry Neighbor
step
#completewith Vorrik
>>杀死|cRXP_ENEMY_Faithless攻击者|r、|cRXD_ENEMY_Ravagers|r、| cRXP__ENEMY_Skycallers |r和|cRXP_ENEMY_Sentries|r
.complete 50641,1 
.mob Faithless Aggressor
.mob Faithless Skycaller
.mob Faithless Ravager
.mob Faithless Sentry
step
#completewith next
.goto 864,31.01,54.40,15,0
.goto 864,30.95,53.65,15,0
.goto 864,30.78,53.87,15 >>返回献身者的露台
step
#title Banner burned 2/4
.goto 864,29.42,54.47,20,0
.goto 864,29.40,54.01
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Banner|r to burn it
.complete 49327,1,2 
step
#title Cannon crushed 1/2
.goto 864,29.51,53.85
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Cannon|r to crush it
.complete 49327,1,1 
step
#title Cannon crushed 2/2
.goto 864,29.64,53.66
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Cannon|r to crush it
.complete 49327,1 
step
#title Banner burned 3/4
.goto 864,29.75,53.04
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Banner|r to burn it
.complete 49327,1,3 
step
#title Banner burned 4/4
.goto 864,29.75,52.10
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Banner|r to burn it
.complete 49327,1 
step
#label Vorrik
.goto 864,30.04,52.02
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_cage|r to rescue |cRXP_FRIENDLY_Vorrik|r
.complete 49334,1 
step
.goto 864,29.51,53.85
>>杀死|cRXP_ENEMY_Faithless攻击者|r、|cRXD_ENEMY_Ravagers|r、| cRXP__ENEMY_Skycallers |r和|cRXP_ENEMY_Sentries|r
.complete 50641,1 
.mob Faithless Aggressor
.mob Faithless Skycaller
.mob Faithless Ravager
.mob Faithless Sentry
step
.goto 864,27.97,54.04,50,0
.goto 864,27.21,53.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zissiah|r
.target Zissiah
.turnin 49327 >>Turn in Push Them Back!
.turnin 50641 >>Turn in Break Their Ranks
step
#completewith next
.goto 864,26.88,52.23
.home >>将你的炉石设置为虔诚者的避难所
step
.goto 864,27.61,52.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r. 按键盘上的“Escape”可跳过电影
.turnin 49334 >>Turn in A Powerful Prisoner
.accept 49340 >>接任务: |cRXP_WARN_守护者的钥匙|r
.complete 49340,1 
.skipgossip
.target Vorrik
step
.goto 864,27.11,52.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r
.target Vorrik
.turnin 49340 >>Turn in The Keepers' Keys
.accept 49662 >>接任务: |cRXP_WARN_遗失的钥匙|r
step
#completewith Zulsan
>>杀死|cRXP_ENEMY_Deathsnap看护人|r、|cRXD_ENEMY_Carvers|r、| cRXP__ENEMY_Elders|r和|cRXP_ENEMY_Hatchlings |r。掠夺他们的|cRXP_Loot_血液|r
.complete 47501,1 
.mob Deathsnap Caretaker
.mob Deathsnap Carver
.mob Deathsnap Elder
.mob Deathsnap Hatchling
step
#completewith next
.goto 864,33.24,50.93,25,0
.goto 864,33.28,50.86,25,0
.goto 864,36.63,50.92,15 >>沿着通往洞穴的小路走
step
#label Zulsan
.goto 864,36.91,50.44
>>在洞穴内偷走|cRXP_PICK_较小的头骨|r
.complete 47498,1 
step
.goto 864,37.12,51.85,30,0
.goto 864,36.35,52.14,30,0
.goto 864,35.91,51.55,30,0
.goto 864,35.24,50.43,30,0
.goto 864,36.42,50.36,30,0
.goto 864,37.12,51.85,30,0
.goto 864,36.35,52.14,30,0
.goto 864,35.91,51.55,30,0
.goto 864,35.24,50.43,30,0
.goto 864,36.42,50.36
>>杀死|cRXP_ENEMY_Deathsnap看护人|r、|cRXD_ENEMY_Carvers|r、| cRXP__ENEMY_Elders|r和|cRXP_ENEMY_Hatchlings |r。掠夺他们的|cRXP_Loot_血液|r
.complete 47501,1 
.mob Deathsnap Caretaker
.mob Deathsnap Carver
.mob Deathsnap Elder
.mob Deathsnap Hatchling
step
.goto 864,37.41,51.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhan'ka|r
.target Rhan'ka
.turnin 47498 >>Turn in Rhan'ka's Lost Friend
.turnin 47501 >>Turn in Dirty Work for Dirty Drinks
.accept 47502 >>接任务: |cRXP_WARN_帮派军师|r
.accept 47503 >>接任务: |cRXP_WARN_奴隶主苟兹达昆|r
.accept 51717 >>接任务: |cRXP_WARN_沃顿头牌蜂蜜|r
step
.goto 864,40.45,55.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rikati|r
.target Rikati
.turnin 51717 >>Turn in The Best Honey In Vol'dun
.accept 51718 >>接任务: |cRXP_WARN_收集“蜂蜜”|r
step
.goto 864,40.45,54.49,35,0
.goto 864,42.01,55.13,35,0
.goto 864,42.87,55.40,35,0
.goto 864,42.07,57.40,45,0
.goto 864,39.11,56.23,45,0
.goto 864,40.45,54.49,35,0
.goto 864,42.01,55.13,35,0
.goto 864,42.87,55.40,35,0
.goto 864,42.07,57.40,45,0
.goto 864,39.11,56.23
>>杀死|cRXP_ENEMY_Bilewing Hives|r以繁殖|cRXX_ENEMY_Creepers|r
>>杀死|cRXP_ENEMY_Bilewing Cripplers|r、|cRXD_ENEMY_Creepers|r和|cRXP_ENEMY_Infester|r。掠夺它们的|cRXP_Loot_毒刺|r
.goto 864,42.65,55.24
.complete 51718,1 
.mob Bilewing Hive
.mob Bilewing Crippler
.mob Bilewing Creeper
.mob Bilewing Infester
step
#completewith Sevriss
.goto 864,40.45,55.36
.vendor >>将垃圾出售给|cRXP_FRIENDLY_Rikati|r
.target Rikati
step
.goto 864,40.45,55.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rikati|r
.target Rikati
.turnin 51718 >>Turn in Harvesting "Honey"
.accept 50328 >>接任务: |cRXP_WARN_打破传统的香料|r
step
#label Sevriss
.line 864,39.70,59.47,40.28,59.45,41.28,58.39,41.66,58.11,42.95,57.95
.goto 864,39.70,59.47,50,0
.goto 864,40.28,59.45,50,0
.goto 864,41.28,58.39,50,0
.goto 864,41.66,58.11,50,0
.goto 864,42.95,57.95,50,0
.goto 864,39.70,59.47,50,0
.goto 864,40.28,59.45,50,0
.goto 864,41.28,58.39,50,0
.goto 864,41.66,58.11,50,0
.goto 864,42.95,57.95
>>杀死|cRXP_ENEMY_Sevriss|r.|cRXP-WARN_如果需要，为他找一个小组。如果您找不到团队或独自一人，请跳过此步骤|r
.complete 51164,1 
.mob Sevriss
step
#sticky
#label Gozda
.goto 864,47.33,58.82,0,0
>>杀死|cRXP_ENEMY_Gozda'kun|r
.complete 47503,1 
.mob Gozda'kun the Slaver
step
>>在废墟上掠夺|cRXP_PICK_Volni的|r和|cRX_PICK_Grenja的头骨|r
.complete 47502,2 
.goto 864,46.46,57.87
.complete 47502,3 
.goto 864,47.39,58.08
step
#requires Gozda
.goto 864,47.09,59.74
>>Loot |cRXP_PICK_Man'zul's Skull|r on the ruin
.complete 47502,1 
step
#completewith next
.goto 864,43.05,60.87,20 >>进入洞穴
step
.goto 864,43.70,60.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rhan'ka|r
.target Rhan'ka
.turnin 47502 >>Turn in The Great Cranium Caper
.turnin 47503 >>Turn in Gozda'kun the Slaver
.turnin 50328 >>Turn in Unconventional Aromatics
.timer 14,Unconventional Aromatics RP
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP结束。与|cRXP_FRIENDLY_Rhan'ka|r交谈
.target Rhan'ka
.goto 864,43.53,60.39
.accept 47638 >>接任务: |cRXP_WARN_酒劲十足|r
.turnin 51164 >>Turn in WANTED: Cobra Excursion Participants
step
.goto 864,43.51,60.43
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Cup of Blood|r on the rock to drink it
.complete 47638,1 
.timer 23,Powerful Spirits RP
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。与|cRXP_FRIENDLY_Rhan'ka|r、|cRXT_FRIENDLY_Man'zul|r和|cRXP_FRIENDLY _Zulsan|r通话
.turnin 47638 >>Turn in Powerful Spirits
.goto 864,43.51,60.21
.accept 48321 >>接任务: |cRXP_WARN_创意营销|r
.goto 864,43.58,59.88
.accept 47564 >>接任务: |cRXP_WARN_自助餐补货|r
.goto 864,43.71,60.22
.target Rhan'ka
.target Man'zul
.target Zulsan
step
.goto 864,42.75,61.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volni|r outside
.accept 48320 >>接任务: |cRXP_WARN_大杀特杀|r
.target Volni
step
#completewith WhistleFruit
>>杀死|cRXP_ENEMY_Whistlebloom蜂巢|r以繁殖|cRXX_ENEMY_Drones|r
>>杀死|cRXP_ENEMY_Whistlebloom收割机|r、|cRXD_ENEMY_Drones|r、| cRXP__ENEMY_Sentries|r和|cRXP_ENEMY_Impallers|r
.complete 48320,1 
.mob Whistlebloom Harvester
.mob Whistlebloom Drone
.mob Whistlebloom Sentry
step
#title Whistlebloom Fruid 1/10
.goto 864,42.22,61.64
>>掠夺地上的|cRXP_PICK_ Whistlebloom|r以获取果实
.complete 47564,1,1 
step
#title Whistlebloom Fruid 3/10
.goto 864,41.90,62.02,10,0
.goto 864,41.80,61.78,10,0
.goto 864,41.90,62.02,10,0
.goto 864,41.80,61.78,10,0
.goto 864,41.90,62.02
>>掠夺地上的|cRXP_PICK_ Whistlebloom|r以获取果实
step
#title Whistlebloom Fruid 4/10
.goto 864,40.87,62.17
>>掠夺地上的|cRXP_PICK_ Whistlebloom|r以获取果实
.complete 47564,1,4 
step
#title Whistlebloom Fruid 5/10
.goto 864,40.75,62.33
>>掠夺地上的|cRXP_PICK_ Whistlebloom|r以获取果实
.complete 47564,1,5 
step
#title Whistlebloom Fruid 6/10
.goto 864,41.07,62.79
>>掠夺地上的|cRXP_PICK_ Whistlebloom|r以获取果实
.complete 47564,1,6 
step
#title Whistlebloom Fruid 7/10
.goto 864,41.47,62.66
>>掠夺地上的|cRXP_PICK_ Whistlebloom|r以获取果实
.complete 47564,1,7 
step
#title Whistlebloom Fruid 8/10
.goto 864,41.99,62.65
>>掠夺地上的|cRXP_PICK_ Whistlebloom|r以获取果实
.complete 47564,1,8 
step
.goto 864,42.51,63.63
>>杀死|cRXP_ENEMY_Bloodcrest |r。掠夺它，因为它是|cRXP_Loot_rib |r
.complete 48321,1 
.mob Bloodcrest
step
#title Whistlebloom Fruid 9/10
.goto 864,42.76,62.65
>>掠夺地上的|cRXP_PICK_ Whistlebloom|r以获取果实
.complete 47564,1,9 
step
#label WhistleFruit
#title Whistlebloom Fruid 10/10
.goto 864,43.03,61.97
>>掠夺地上的|cRXP_PICK_ Whistlebloom|r以获取果实
.complete 47564,1 
step
.goto 864,43.29,61.63,40,0
.goto 864,39.88,62.12,40,0
.goto 864,40.81,62.69,40,0
.goto 864,42.86,62.80,40,0
.goto 864,43.29,61.63,40,0
.goto 864,39.88,62.12,40,0
.goto 864,40.81,62.69,40,0
.goto 864,42.86,62.80
>>杀死|cRXP_ENEMY_Whistlebloom蜂巢|r以繁殖|cRXX_ENEMY_Drones|r
>>杀死|cRXP_ENEMY_Whistlebloom收割机|r、|cRXD_ENEMY_Drones|r、| cRXP__ENEMY_Sentries|r和|cRXP_ENEMY_Impallers|r
.complete 48320,1 
.mob Whistlebloom Harvester
.mob Whistlebloom Hive
.mob Whistlebloom Drone
.mob Whistlebloom Sentry
step
.goto 864,42.75,61.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volni|r
.target Volni
.turnin 48320 >>Turn in The Best Kill is Overkill
step
#completewith Omi
.goto 864,42.75,61.07
.fp Whistlebloom Oasis >>获取Whistlebloom Oasis飞行路线
step
#completewith next
.goto 864,43.05,60.87,15 >>进入洞穴
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zulsan|r and |cRXP_FRIENDLY_Man'zul|r
.turnin 47564 >>Turn in Restocking the Buffet
.goto 864,43.71,60.22
.turnin 48321 >>Turn in Creative Marketing
.goto 864,43.58,59.88
.target Zulsan
.target Man'zul
step
#completewith next
.goto 864,43.05,60.87,15 >>离开洞穴
step
#label Omi
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_邪恶之云|r, Tacha, Kenzou
.accept 48332 >>接任务: |cRXP_WARN_球潮虫也是资源|r
.goto 864,45.37,46.15
.accept 48334 >>接任务: |cRXP_WARN_他们有魔像|r
.goto 864,45.39,46.15
.accept 49001 >>接任务: |cRXP_WARN_烦人的灵魂|r
.goto 864,45.40,46.18
.target Omi
.target Tacha
.target Kenzou
step
#completewith next
>>杀死|cRXP_ENEMY_Torged Spirits|r和|cRXD_ENEMY_Ranishu Nibblers |r。掠夺|cRXP_ENEMY_Ranishu |r的|cRXP_Loot_胃|r
.complete 49001,1 
.complete 48332,1 
.mob Tortured Spirit
.mob Ranishu Nibbler
step
.goto 864,47.05,50.42
>>杀死|cRXP_ENEMY_功能失常的Golem|r
.complete 48334,1 
.mob Malfunctioning Golem
step
>>杀死|cRXP_ENEMY_Torged Spirits|r和|cRXD_ENEMY_Ranishu Nibblers |r。掠夺|cRXP_ENEMY_Ranishu |r的|cRXP_Loot_胃|r
.complete 49001,1 
.goto 864,46.77,51.82,40,0
.goto 864,47.52,50.57,40,0
.goto 864,48.20,47.92,40,0
.goto 864,46.43,47.23,40,0
.goto 864,46.77,51.82,40,0
.goto 864,47.52,50.57,40,0
.goto 864,48.20,47.92,40,0
.goto 864,46.43,47.23
.complete 48332,1 
.goto 864,48.93,49.17,40,0
.goto 864,47.57,49.50,40,0
.goto 864,46.95,47.49,40,0
.goto 864,47.32,51.82,40,0
.goto 864,48.93,49.17,40,0
.goto 864,47.57,49.50,40,0
.goto 864,46.95,47.49,40,0
.goto 864,47.32,51.82
.mob Tortured Spirit
.mob Ranishu Nibbler
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Kenzou, Tacha, |cRXP_FRIENDLY_邪恶之云|r
.turnin 49001 >>Turn in Inconvenient Spirits
.goto 864,45.40,46.18
.turnin 48334 >>Turn in They've Got Golems
.goto 864,45.39,46.15
.turnin 48332 >>Turn in Ranishu Are Resources
.accept 49139 >>接任务: |cRXP_WARN_军械库|r
.goto 864,45.37,46.15
.accept 48331 >>接任务: |cRXP_WARN_虹吸灵魂|r
.goto 864,45.39,46.15
.accept 48335 >>接任务: |cRXP_WARN_全沃顿最牢的绳子|r
.goto 864,45.40,46.18
.target Kenzou
.target Tacha
.target Omi
step
#completewith Scepters
>>杀死|cRXP_ENEMY_Sandspiner Eggs |r以产卵|cRXX_ENEMY_Hatchlings |r
>>杀死|cRXP_ENEMY_Sandspiner编织者|r、|cRXD_ENEMY_Hatchlings |r、| cRXP__ENEMY_Hunters |r和|cRXP_ENEMY_Lurkers |r。掠夺他们的|cRXT_Loot_silk|r
.complete 48335,1 
.mob Sandspinner Weaver
.mob Sandspinner Hatchling
step
#completewith next
>>杀死|cRXP_ENEMY_Soul-Trapped Guardians|r。在他们的尸体旁边使用|T136019:0|t[打捞上来的Soulcatcher图腾]
.complete 48331,1 
.use 154051
.mob Soul-Trapped Guardian
step
#label Scepters
>>杀死穆加布的|cRXP_ENEMY_Scepter|r和|cRXX_ENEMY_Jam'jen|r
.complete 49139,2 
.goto 864,46.06,43.11,20,0
.goto 864,46.11,42.69
.complete 49139,1 
.goto 864,48.12,44.38,20,0
.goto 864,48.34,44.43
.mob Scepter of Mugabu
.mob Scepter of Jam'jen
step
#completewith next
.goto 864,47.33,42.80,30,0
>>杀死|cRXP_ENEMY_Sandspiner Eggs |r以产卵|cRXX_ENEMY_Hatchlings |r
>>杀死|cRXP_ENEMY_Sandspiner编织者|r、|cRXD_ENEMY_Hatchlings |r、| cRXP__ENEMY_Hunters |r和|cRXP_ENEMY_Lurkers |r。掠夺他们的|cRXT_Loot_silk|r
.complete 48335,1 
.mob Sandspinner Weaver
.mob Sandspinner Hatchling
.mob Sandspinner Hunter
step
.goto 864,47.33,43.09,40,0
.goto 864,47.09,44.07,40,0
.goto 864,46.60,45.14,40,0
.goto 864,45.86,45.29,40,0
.goto 864,45.78,43.43,40,0
.goto 864,47.33,43.09,40,0
.goto 864,47.09,44.07,40,0
.goto 864,46.60,45.14,40,0
.goto 864,45.86,45.29,40,0
.goto 864,45.78,43.43
>>杀死|cRXP_ENEMY_Soul-Trapped Guardians|r。在他们的尸体旁边使用|T136019:0|t[打捞上来的Soulcatcher图腾]
.complete 48331,1 
.use 154051
.mob Soul-Trapped Guardian
step
.goto 864,45.57,45.90,40,0
.goto 864,44.25,43.65,40,0
.goto 864,45.41,43.26,40,0
.goto 864,45.82,44.17,40,0
.goto 864,47.02,43.66,40,0
.goto 864,47.33,42.80,40,0
.goto 864,45.57,45.90,40,0
.goto 864,44.25,43.65,40,0
.goto 864,45.41,43.26,40,0
.goto 864,45.82,44.17,40,0
.goto 864,47.02,43.66,40,0
.goto 864,47.33,42.80
>>杀死|cRXP_ENEMY_Sandspiner Eggs |r以产卵|cRXX_ENEMY_Hatchlings |r
>>杀死|cRXP_ENEMY_Sandspiner编织者|r、|cRXD_ENEMY_Hatchlings |r、| cRXP__ENEMY_Hunters |r和|cRXP_ENEMY_Lurkers |r。掠夺他们的|cRXT_Loot_silk|r
.complete 48335,1 
.mob Sandspinner Weaver
.mob Sandspinner Hatchling
.mob Sandspinner Hunter
.mob Sandspinner Lurker
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Kenzou, Tacha, |cRXP_FRIENDLY_邪恶之云|r
.goto 864,45.39,46.17
.turnin 48335 >>Turn in The Strongest Rope in Vol'dun
.goto 864,45.40,46.18
.turnin 48331 >>Turn in Siphoning Souls
.goto 864,45.39,46.15
.turnin 49139 >>Turn in An Army's Arsenal
.accept 48330 >>接任务: |cRXP_WARN_赞达拉寻宝|r
.goto 864,45.37,46.15
.target Kenzou
.target Tacha
.target Omi
step
#completewith next
.goto 864,47.26,41.65,20 >>Travel to Zak'rajan
.timer 11,Zak'rajan RP
step
.goto 864,47.26,41.65
>>等待RP.杀死|cRXP_ENEMY_Zak'rajan|r。
>>|cRXP_WARN_当他变得刀枪不入时，避开他的灵魂屏障|r
.complete 48330,1 
.mob Zak'rajan
step
.goto 864,45.37,46.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_邪恶之云|r
.target Omi
.turnin 48330 >>Turn in Zandalari Treasure Trove
step
.goto 864,42.91,35.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r
.target Vorrik
.turnin 49662 >>Turn in The Missing Key
.accept 50745 >>接任务: |cRXP_WARN_潜入帝国|r
.timer 73,Infiltrating the Empire RP
step
>>前往沃里克圣地。
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP结束。与|cRXP_FRIENDLY_Vorrik|r和|cRXP-FRIENDLY_Meerah|r通话
.goto 864,42.89,33.89,20,0
.goto 864,44.12,34.54,20,0
.goto 864,47.94,35.48,20,0
.goto 864,47.96,36.38
.turnin 50745 >>Turn in Infiltrating the Empire
.accept 49664 >>接任务: |cRXP_WARN_混乱中的盟友|r
.goto 864,47.96,36.38
.accept 49667 >>接任务: |cRXP_WARN_孩子们|r
.goto 864,47.99,36.51
.target Vorrik
.target Meerah
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r
.target Nisha
.goto 864,46.15,33.21
.turnin 49664 >>Turn in Allies in Anarchy
.accept 49666 >>接任务: |cRXP_WARN_让他们害怕|r
.accept 49665 >>接任务: |cRXP_WARN_奋起反抗|r
step
#completewith next
>>杀死|cRXP_ENEMY_Faithless|r。在尸体附近使用|T236352:0|t[Vulpera Banners]
>>从武器架上掠夺|cRXP_PICK_Faithless Scimitar|r，然后与|cRXP-FRIENDLY_Vulpera Slaves|r交谈
.goto 864,46.79,32.88,10,0
.goto 864,47.71,32.87,10,0
.goto 864,47.24,31.24,10,0
.goto 864,47.75,30.82,10,0
.complete 49666,1 
.collect 159470,8,49665,0x1,-1
.complete 49665,1 
.use 158884
.skipgossip
.target Vulpera Slave
step
.goto 864,48.46,32.18
>>杀死|cRXP_ENEMY_Assesser Versik|r
.complete 49667,1 
.mob Appraiser Versik
step
.goto 864,46.50,32.17,30,0
.goto 864,49.07,33.16,30,0
.goto 864,48.18,33.23,30,0
.goto 864,48.74,32.52,30,0
.goto 864,48.02,32.63,30,0
.goto 864,47.87,32.12,30,0
.goto 864,46.33,32.42,30,0
.goto 864,47.83,30.79,30,0
.goto 864,46.50,32.17,30,0
.goto 864,49.07,33.16,30,0
.goto 864,48.18,33.23,30,0
.goto 864,48.74,32.52,30,0
.goto 864,48.02,32.63,30,0
.goto 864,47.87,32.12,30,0
.goto 864,46.33,32.42,30,0
.goto 864,47.83,30.79
>>杀死|cRXP_ENEMY_Faithless|r。在尸体附近使用|T236352:0|t[Vulpera Banners]
>>从武器架上掠夺|cRXP_ENEMY_Faithless Scimitar|r，然后与|cRXP_FRIENDLY_Vulpera Slaves|r交谈
.complete 49666,1 
.collect 159470,8,49665,0x1,-1
.complete 49665,1 
.use 158884
.skipgossip
.target Vulpera Slave
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Nisha, |cRXP_FRIENDLY_基罗|r
.turnin 49666 >>Turn in Make Them Fear Us
.turnin 49665 >>Turn in Ready to Riot
.accept 50746 >>接任务: |cRXP_WARN_被征服的地坑|r
.goto 864,46.15,33.22
.accept 49668 >>接任务: |cRXP_WARN_点亮峡谷|r
.goto 864,46.10,33.26
.target Nisha
.target Kiro
step
>>在|cRXP_PICK_Jars of Oil|r上使用|T135432:0|t[Kiro's Torch]FROM RANGE来焚烧奴隶市场
.complete 49668,1 
.goto 864,50.84,32.84
.complete 49668,2 
.goto 864,52.37,33.00
.complete 49668,3 
.goto 864,53.56,33.16
.use 158896
step
.goto 864,54.36,34.27
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Note|r on the ground
.accept 49437 >>接任务: |cRXP_WARN_破烂的笔记|r
step
.goto 864,55.43,35.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r
.target Kiro
.turnin 49668 >>Turn in Light Up the Gulch
.accept 50757 >>接任务: |cRXP_WARN_蛇挡灭蛇，佛挡灭佛|r
.accept 49669 >>接任务: |cRXP_WARN_群兽奔腾|r
step
#completewith Traskniss
>>杀死侧面的|cRXP_ENEMY_Faithless|r
.complete 50757,1 
.mob Faithless Beastlord
.mob Faithless Deadeye
.mob Faithless Suppressor
step
#completewith next
.goto 864,55.81,34.16,20 >>沿着通往Shath'kar的路走
step
.goto 864,54.43,33.16
>>杀死岩架附近的|cRXP_ENEMY_Shath'kar|r
.complete 49437,1 
.mob Shath'kar
step
#completewith next
.goto 864,55.81,32.16,15 >>进洞里去
step
#label Traskniss
.goto 864,55.30,30.77
>>在洞穴内杀死|cRXP_ENEMY_Traskniss|r
.complete 49669,1 
.mob Crawg Tamer Traskniss
step
.goto 864,55.81,32.16,20,0
.goto 864,56.28,31.13,40,0
.goto 864,56.38,32.58,40,0
.goto 864,56.51,33.71,40,0
.goto 864,56.20,34.64,40,0
.goto 864,55.92,35.24,40,0
.goto 864,55.41,33.68,40,0
.goto 864,56.28,31.13,40,0
.goto 864,56.38,32.58,40,0
.goto 864,56.51,33.71,40,0
.goto 864,56.20,34.64,40,0
.goto 864,55.92,35.24,40,0
.goto 864,55.41,33.68
>>杀死|cRXP_ENEMY_Faithless|r
.complete 50757,1 
.mob Faithless Beastlord
.mob Faithless Deadeye
.mob Faithless Suppressor
.mob Faithless Tamer
step
.goto 864,55.43,35.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r
.target Kiro
.turnin 50757 >>Turn in Untame Slaughter
.turnin 49669 >>交任务: |cRXP_FRIENDLY_释放兽性|rs
.accept 50749 >>接任务: |cRXP_WARN_免费搭车|r
step
#completewith next
.goto 864,55.25,35.22
>>安装|cRXP_FRIENDLY_Battle Krolusk|r
.complete 50749,1 
.target Battle Krolusk
step
.goto 864,49.90,33.70,15,0
.goto 864,47.94,35.57,70 >>骑着战斗克鲁斯克回到沃里克的圣地。冷却时使用“横冲直撞冲锋”（1）移动速度更快
.isOnQuest 50746
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Vorrik, |cRXP_FRIENDLY_基罗|r, Meerah
.goto 864,47.94,35.57,20,0
.turnin 50746 >>Turn in Crater Conquered
.accept 49141 >>接任务: |cRXP_WARN_外交与统治|r
.accept 50748 >>接任务: |cRXP_WARN_小心轻放|r
.goto 864,47.96,36.38
.turnin 50749 >>Turn in Free Ride
.goto 864,48.02,36.44
.turnin 49437 >>Turn in Tattered Note
.turnin 49667 >>Turn in The Little Ones
.goto 864,47.99,36.51
.target Vorrik
.target Kiro
.target Meerah
step
#completewith Suppression1
.goto 864,49.54,35.34,20,0
.goto 864,49.07,35.96,30,0
.goto 864,48.48,37.18,20 >>前往开裂山脊
step
#completewith SuppressionSpire
>>杀死|cRXP_ENEMY_Sethrak|r。掠夺他们的|cRXX_Loot_闪电炸弹|r
.complete 50748,1 
.mob Ridge Muzzler
.mob Ridge Skycaller
.mob Ridge Subjugator
.mob Ridge Beastbreaker
step
#label Suppression1
#title Spire drained 1/6
.goto 864,49.08,36.97
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Suppression Spire|r to drain it
.complete 49141,1,1 
step
#title Spire drained 2/6
.goto 864,49.93,38.90
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Suppression Spire|r to drain it
.complete 49141,1,2 
step
#title Spire drained 3/6
.goto 864,48.16,37.79
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Suppression Spire|r to drain it
.complete 49141,1,3 
step
#title Spire drained 4/6
.goto 864,47.32,36.52
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Suppression Spire|r to drain it
.complete 49141,1,4 
step
#title Spire drained 5/6
.goto 864,46.32,36.37
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Suppression Spire|r to drain it
.complete 49141,1,5 
step
#label SuppressionSpire
#title Spire drained 6/6
.goto 864,46.12,37.67
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Suppression Spire|r to drain it
.complete 49141,1 
step
.goto 864,46.12,37.67,40,0
.goto 864,46.32,36.37,40,0
.goto 864,47.32,36.52,40,0
.goto 864,48.16,37.79,40,0
.goto 864,49.93,38.90,40,0
.goto 864,49.08,36.97,40,0
.goto 864,46.12,37.67,40,0
.goto 864,46.32,36.37,40,0
.goto 864,47.32,36.52,40,0
.goto 864,48.16,37.79,40,0
.goto 864,49.93,38.90,40,0
.goto 864,49.08,36.97
>>杀死|cRXP_ENEMY_Sethrak|r。掠夺他们的|cRXX_Loot_闪电炸弹|r
.complete 50748,1 
.mob Ridge Muzzler
.mob Ridge Skycaller
.mob Ridge Subjugator
.mob Ridge Beastbreaker
step
#completewith next
.goto 864,47.79,38.24,20,0
.goto 864,47.99,39.20,15 >>沿着小路爬上山
step
.goto 864,47.10,38.70
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Faithless Trapper's Spear|r
.accept 49002 >>接任务: |cRXP_WARN_紧急迫降|r
step
#completewith next
.goto 864,47.06,38.60
.cast 257490 >>在|cRXP_ENEMY_Hrillik的Pterrordax|r上使用|T644382:0|t[Faithless Trapper's Spear]
.use 154893
.mob Hrillik's Pterrordax
step
.goto 864,47.06,38.60
>>杀死|cRXP_ENEMY_Hrillik的Pterrordax|r，然后杀死|cRXP_ENEMY_Hrillik|r
.complete 49002,1 
.mob Hrillik's Pterrordax
.mob Hrillik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r and |cRXP_FRIENDLY_Rakjan|r
.turnin 49141 >>Turn in Diplomacy of Dominance
.turnin 50748 >>Turn in Don't Drop It... Yet
.accept 49003 >>接任务: |cRXP_WARN_天降复仇|r
.goto 864,47.20,39.14
.turnin 49002 >>Turn in Forced Grounding
.complete 49003,1 
.goto 864,47.16,39.34
.target Vorrik
.target Rakjan the Unbroken
step
>>使用|T317243:0|t[闪电炸弹]（1）击杀|cRXP_ENEMY_Faithless|r
.goto 864,47.50,32.30,-1
.goto 864,50.36,33.20,-1
.goto 864,52.56,35.52,-1
.complete 49003,2 
step
>>使用|T237584:0|t[Vorrik的弹幕]（2）摧毁尖塔屏障
.goto 864,51.96,29.02
.complete 49003,3 
step
.goto 864,51.95,28.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r
.target Vorrik
.turnin 49003 >>Turn in Vengeance From Above
.accept 50750 >>接任务: |cRXP_WARN_激怒大帝|r
.accept 50752 >>接任务: |cRXP_WARN_塞塔里斯的遗物|r
step
#completewith SkullSky
>>闪电球体从杀戮中产生|cRXP_ENEMY_Acolytes|r和|cRXX_ENEMY_Scrollkeepers|r。拿起它们为你的Bulwark力量充电，继续立即杀死Faithless
.complete 50750,1 
.mob Faithless Acolyte
.mob Faithless Scrollkeeper
step
.goto 864,49.89,28.50
>>掠夺表上的|cRXP_PICK_Scrolls|r
.complete 50752,1 
step
.goto 864,48.25,26.15
>>将|cRXP_PICK_Crystal Ball|r掠夺到地上
.complete 50752,3 
step
.goto 864,49.56,24.36
>>偷走祭坛上的|cRXP_PICK_Vase|r
.complete 50752,4 
step
#completewith next
.goto 864,50.25,26.69,10 >>Jump over the wall
step
#label SkullSky
>>Jump over the wall
.goto 864,50.25,26.69
>>掠夺祭坛上的|cRXP_PICK_Skull|r
.complete 50752,2 
step
.goto 864,49.89,28.50,40,0
.goto 864,48.25,26.15,40,0
.goto 864,49.56,24.36,40,0
.goto 864,49.56,24.36,40,0
.goto 864,49.89,28.50,40,0
.goto 864,48.25,26.15,40,0
.goto 864,49.56,24.36,40,0
.goto 864,49.56,24.36
>>闪电球体从杀戮中产生|cRXP_ENEMY_Acolytes|r和|cRXX_ENEMY_Scrollkeepers|r。拿起它们为你的Bulwark力量充电，继续立即杀死Faithless
.complete 50750,1 
.mob Faithless Acolyte
.mob Faithless Scrollkeeper
step
.goto 864,51.95,28.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r. 等待RP, then talk to |cRXP_FRIENDLY_him|r again.
>>按键盘上的“Escape”可跳过电影
.turnin 50750 >>Turn in Infuriating the Emperor
.turnin 50752 >>Turn in Relics of Sethraliss
.timer 9,Relics of Sethraliss RP
.accept 50550 >>接任务: |cRXP_WARN_柯泰克大帝的陨落|r
.complete 50550,1 
.skipgossip
.target Vorrik
step
.goto 864,51.96,27.22
>>杀死|cRXP_ENEMY_Korthek|r。避开他的风墙
.complete 50550,2 
.timer 24,The Fall of Emperor Korthek RP
.mob Emperor Korthek
step
.goto 864,51.98,27.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP结束。与|cRXP_FRIENDLY_Vorrik|r通话
.target Vorrik
.turnin 50550 >>Turn in The Fall of Emperor Korthek
.accept 50751 >>接任务: |cRXP_WARN_圣殿围城|r
step << skip
.goto 864,54.95,25.36,8,0
.goto 864,55.01,27.82,8,0
.goto 864,55.00,28.06,5,0
.goto 864,55.40,27.06
.complete 50805,1 

step
#completewith next
.hs >>虔诚者之心
step
#completewith next
.goto 864,27.04,51.98,12,0
.goto 864,26.51,52.06,12,0
.goto 864,26.75,52.56,12 >>上楼去
step
.goto 864,27.09,52.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r
.target Vorrik
.turnin 50751 >>Turn in Sanctuary Under Siege
.accept 50617 >>接任务: |cRXP_WARN_阿图阿曼|r
step
#completewith next
.goto 864,26.75,52.56,12,0
.goto 864,26.61,51.31,30,0
.goto 864,27.65,50.33
.fly Goldtusk Inn >>Fly to Goldtusk Inn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r
.target Vorrik
.goto 864,43.05,68.21
.turnin 50617 >>Turn in Atul'Aman
.accept 50904 >>接任务: |cRXP_WARN_废弃过道|r
.complete 50904,1 
.skipgossip
step
#completewith next
.goto 1009,31.52,80.51,12,0
.goto 1009,37.89,78.14,15 >>进入洞穴
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the Tentacles around |cRXP_FRIENDLY_Kaja|r and |cRXP_FRIENDLY_Rakera|r to destroy them. If you're fast enough you won't get interrupted by the Tendrils
.complete 50904,2 
.goto 1009,42.84,91.93
.complete 50904,3 
.goto 1009,44.62,69.98,20,0
.goto 1009,51.66,67.30
step
.goto 1009,55.64,36.28
>>忽略所有的暴徒（他们躲在隔壁房间）。
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rakera|r
.target Warguard Rakera
.turnin 50904 >>Turn in The Abandoned Passage
.accept 50702 >>接任务: |cRXP_WARN_击败加卡泽|r
step
#completewith next
.goto 1009,67.89,35.86,70 >>跑进Jakra'zet的房间
.timer 14,Defeat Jakra'zet RP
step
.goto 1009,67.89,35.86
>>杀死|cRXP_ENEMY_Jakra'zet|r。
>>当他的Sanguine Ward产卵时，将注意力集中在它们身上。按键盘上的“Escape”可跳过电影
.complete 50702,1 
.mob Jakra'zet
step
.goto 864,27.09,52.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rakera|r
.target Warguard Rakera
.turnin 50702 >>Turn in Defeat Jakra'zet
.accept 50703 >>接任务: |cRXP_WARN_通知部落|r
step
#completewith BaineNa
.goto 864,26.75,52.56,12,0
.goto 864,26.61,51.31,30,0
.goto 864,27.65,50.33
.fly The Great Seal >>Fly to The Great Seal
step
#completewith PortofZandaFly
.goto 1163,48.78,19.92,30,0
.goto 1163,48.72,72.00
.home >>将你的炉石设定为伟大的封印
step
#label BaineNa
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r and |cRXP_FRIENDLY_Nathanos|r
.turnin 50703 >>Turn in Keep Them On Task
.goto 1164,41.44,72.50
.accept 52749 >>接任务: |cRXP_WARN_阵营战役|r
.goto 1164,40.17,71.75
.target Baine Bloodhoof
.target Nathanos Blightcaller
step
#label PortofZandaFly
#completewith next
.goto 1163,48.78,19.92,30,0
.goto 1165,51.91,41.21
.fly Port of Zandalar >>Fly to Port of Zandalar
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r on the boat. Click on the quest popups under your minimap
.goto 1165,50.25,96.47,40,0
.goto 1165,50.79,99.97,15,0
.goto 862,58.44,62.67
.turnin 52749 >>Turn in Send the Fleet
.accept 51803 >>接任务: |cRXP_WARN_库尔提拉斯战役|r
.complete 51803,1 
.accept 52746 >>接任务: |cRXP_WARN_战争储备|r
.turnin 52746 >>Turn in The War Cache
.accept 53333 >>接任务: |cRXP_WARN_战争来临|r
.turnin 53333 >>Turn in Time for War
.accept 51770 >>接任务: |cRXP_WARN_大酋长的任务|r
.target Nathanos Blightcaller
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_War Table|r, then click on |cRXP_WARN_Stormsong Valley|r. Afterwards click on the popup under your minimap
.goto 862,58.44,62.67

.accept 51802 >>接任务: |cRXP_WARN_据点：斯托颂谷地|r
.turnin 51802 >>Turn in Foothold: Stormsong Valley
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Nathanos, |cRXP_FRIENDLY_高阶督军克鲁姆什|r, |cRXP_FRIENDLY_迦罗娜|r
.turnin 51803 >>Turn in The Kul Tiras Campaign
.accept 51526 >>接任务: |cRXP_WARN_督军的召唤|r
.goto 862,58.44,62.67
.turnin 51526 >>Turn in The Warlord's Call
.accept 51532 >>接任务: |cRXP_WARN_迅捷出击|r
.goto 862,58.54,62.49
.turnin 51770 >>Turn in Mission from the Warchief

.goto 1165,51.69,99.69
.target Nathanos Blightcaller
.target High Warlord Cromush
.target Garona Halforcen
step
.goto 862,58.46,62.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼去。与|cRXP_FRIENDLY_Tattersaine|r通话以驶向风暴之歌
.complete 51532,1 
.skipgossip
.target Dread-Admiral Tattersail
step
.goto 942,51.11,21.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶督军克鲁姆什|r
.target High Warlord Cromush
.turnin 51532 >>Turn in Storming In
.accept 51643 >>接任务: |cRXP_WARN_钢铁之墙|r
step
#completewith next
.goto 942,51.50,20.76,12,0
.goto 942,51.18,21.12
>>在船上下去。操纵|cRXP_PICK_Cannon|r
.complete 51643,1 
step
>>对Kul Tiran部队使用|T236179:0|t[炮击]（1）
.complete 51643,2 
step
.goto 942,51.53,20.75,10,0
.goto 942,51.10,20.81,10,0
.goto 942,51.11,21.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶督军克鲁姆什|r
.target High Warlord Cromush
.turnin 51643 >>Turn in A Wall of Iron
.accept 51536 >>接任务: |cRXP_WARN_狩猎开始|r
step << !DK !Shaman
#completewith next
.goto 942,51.00,21.26
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Rope Coil|r on the ground to take a Landing Craft to the dock
.complete 51536,1 
.timer 12,Landing Craft RP
step
.goto 942,50.88,26.59,30,0
.goto 942,50.38,26.19
>>将鱼叉从|cRXP_FRIENDLY_Huelo|r中拔出
.complete 51536,2 
.timer 28,On the Hunt RP
.skipgossip
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
.target Rexxar
.goto 942,50.40,26.17
.turnin 51536 >>Turn in On the Hunt
.accept 51587 >>接任务: |cRXP_WARN_前进！|r
step
#completewith next
.goto 942,52.32,29.57,30,0
.goto 942,52.10,29.96,30 >>Travel up the Mountain
.complete 51587,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Kaga, |cRXP_FRIENDLY_雷克萨|r
.turnin 51587 >>Turn in Onward!
.accept 51674 >>接任务: |cRXP_WARN_扑灭大火|r
.accept 51675 >>接任务: |cRXP_WARN_绝命猎杀|r
.goto 942,51.65,29.83
.accept 51691 >>接任务: |cRXP_WARN_小命还算值钱|r
.goto 942,51.68,29.89
.target Centurion Kaga Warmstone
.target Rexxar
step
#completewith Barricade
>>杀死|cRXP_ENEMY_Storm的守灵步兵|r和|cRXX_ENEMY_Tidesages|r
>>为|T433449:0|t[褪色的雨伞魔杖]掠夺|cRXP_ENEMY_Tidesages|r。在火焰上使用魔杖。一次使用可以获得2个
.complete 51675,2 
.collect 160565,4,51674,0x1,-1 
.complete 51674,1 
.use 160565
.mob Storm's Wake Tidesage
.mob Storm's Wake Footmen
step
#sticky
#label Ara
.goto 942,51.73,33.53
>>杀死|cRXP_ENEMY_阿队长|r
.complete 51675,1 
.mob Captain Ara
step
#label Barricade
.goto 942,51.83,33.58
.cast 272499 >>摧毁|cRXP_PICK_Barricade|r后方的|cRXP_ENEMY_Captain Ara|r
.isOnQuest 51691

step
#requires Ara
#loop
.line 942,51.90,32.68,51.80,32.36,51.30,31.63,50.63,30.88,50.23,30.99,50.05,31.76,50.06,32.19,49.72,32.95,49.87,33.13,50.64,33.54,51.06,33.04,51.90,32.68
.goto 942,51.90,32.68,30,0
.goto 942,51.80,32.36,30,0
.goto 942,51.30,31.63,30,0
.goto 942,50.63,30.88,30,0
.goto 942,50.23,30.99,30,0
.goto 942,50.05,31.76,30,0
.goto 942,50.06,32.19,30,0
.goto 942,49.72,32.95,30,0
.goto 942,49.87,33.13,30,0
.goto 942,50.64,33.54,30,0
.goto 942,51.06,33.04,30,0
.goto 942,51.90,32.68,30,0
>>杀死|cRXP_ENEMY_Storm的守灵步兵|r和|cRXX_ENEMY_Tidesages|r
>>为|T433449:0|t[褪色的雨伞魔杖]掠夺|cRXP_ENEMY_Tidesages|r。在火焰上使用魔杖。一次使用可以获得2个
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_FRIENDLY_Frightened Peons|r to rescue them
.complete 51675,2 
.collect 160565,4,51674,0x1,-1 
.complete 51674,1 
.complete 51691,1 
.use 160565
.mob Storm's Wake Tidesage
.mob Storm's Wake Footmen
.target Frightened Peon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Kaga, |cRXP_FRIENDLY_雷克萨|r
.turnin 51675 >>Turn in Hunt Them Down
.turnin 51691 >>Turn in Almost Worth Saving
.goto 942,49.19,34.21
.turnin 51674 >>Turn in Douse the Flames
.accept 51696 >>接任务: |cRXP_WARN_夺回我们的东西|r
.goto 942,49.24,34.26
.target Centurion Kaga Warmstone
.target Rexxar
step
.goto 942,49.61,34.79
>>Climb the tower.
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Warhorn|r to sound it. 按键盘上的“Escape”可跳过电影
.complete 51696,1 
step
.goto 942,52.13,33.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
.target Rexxar
.turnin 51696 >>Turn in Reclaiming What's Ours
.turnin 51753 >>Turn in Champion: Rexxar
.accept 51986 >>接任务: |cRXP_WARN_回到祖达萨|r
step
.goto 942,51.43,33.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t到外面去。与|cRXP_FRIENDLY_Muka|r交谈
.target Muka Stormbreaker
.complete 51986,1 
.skipgossip 2
step
.goto 862,58.44,62.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.target Nathanos Blightcaller
.turnin 51986 >>Turn in Return to Zuldazar
.accept 51979 >>接任务: |cRXP_WARN_继续作战|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_War Table|r, then click on |cRXP_WARN_Tiragarde Sound|r. Click on the popup under your minimap to turn in the quest
.goto 862,58.44,62.67
.accept 51800 >>接任务: |cRXP_WARN_据点：提拉加德海峡|r
.turnin 51800 >>Turn in Foothold: Tiragarde Sound

step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Nathanos, |cRXP_FRIENDLY_伊崔格|r, |cRXP_FRIENDLY_伊崔格|r
.turnin 51979 >>Turn in The Ongoing Campaign
.accept 51421 >>接任务: |cRXP_WARN_坐船前行|r
.goto 862,58.44,62.67
.accept 53602 >>接任务: |cRXP_WARN_战略精进|r
.complete 53602,1 
.goto 862,58.55,62.72
.skipgossip 143913,1
.target Nathanos Blightcaller
.target Eitrigg
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊崔格|r
.target Eitrigg
.turnin 53602 >>Turn in Adapting Our Tactics
.goto 862,58.55,62.72
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊崔格|r
.goto 862,58.55,62.72
.complete 53602,1 
.target Eitrigg

step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊崔格|r
.goto 862,58.56,62.72
.turnin 53602 >>Turn in Adapting Our Tactics
.target Eitrigg
step
.goto 862,58.46,62.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上楼去。与|cRXP_FRIENDLY_Tattersaine|r通话以驶向蒂拉加德湾
.complete 51421,1 
.skipgossip
.target Dread-Admiral Tattersail

step
.goto 895,89.33,53.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影猎手塔金|r
.turnin 51421 >>Turn in Shiver Me Timbers
.accept 51435 >>接任务: |cRXP_WARN_另类海盗|r
.target Shadow Hunter Ty'jin
step
.goto 895,89.46,53.67
>>掠夺地面上的|cRXP_PICK_Pirate Garb|r
.complete 51435,1 
step
.goto 895,89.33,53.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影猎手塔金|r
.turnin 51435 >>Turn in Swashbuckling in Style
.accept 51436 >>接任务: |cRXP_WARN_与海盗打交道|r
.target Shadow Hunter Ty'jin
step
#completewith next
.goto 895,89.33,53.36
.vehicle >>单击地面上的|cRXP_PICK_Rope|r
.timer 14,Parleyin' Wit Pirates RP
step
.goto 895,88.22,51.17
>>等待RP
.complete 51436,1 
step
.goto 895,88.21,51.11,-1
.goto 895,87.31,49.99,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影猎手塔金|r
.complete 51436,2 
.skipgossip
.timer 65, Ty'jin Walk RP
.target Shadow Hunter Ty'jin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: First Mate Owings, |cRXP_FRIENDLY_暗影猎手塔金|r
.turnin 51436 >>Turn in Parleyin' Wit Pirates
.accept 51437 >>接任务: |cRXP_WARN_混合烈酒|r
.goto 895,87.31,49.99
.accept 51439 >>接任务: |cRXP_WARN_收集炮弹|r
.goto 895,87.28,50.01
.target First Mate Owings
.target Shadow Hunter Ty'jin
step
#completewith KegGrog
>>杀死|cRXP_ENEMY_Fogsail炮手|r。掠夺他们的|cRXX_Loot_炮弹|r
.complete 51439,1 
.mob Fogsail Cannoneer
step
#title Keg spiked 1/6
.goto 895,87.20,50.36
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Keg of Grog|r to spike it
.complete 51437,1,1 
step
#title Keg spiked 2/6
.goto 895,87.53,50.96
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Keg of Grog|r to spike it
.complete 51437,1,2 
step
#title Keg spiked 3/6
.goto 895,87.73,51.59
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Keg of Grog|r to spike it
.complete 51437,1,3 
step
#title Keg spiked 4/6
.goto 895,87.82,50.92
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Keg of Grog|r to spike it
.complete 51437,1,4 
step
#title Keg spiked 5/6
.goto 895,88.01,50.76
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Keg of Grog|r to spike it
.complete 51437,1,5 
step
#label KegGrog
#title Keg spiked 6/6
.goto 895,88.27,50.74
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Keg of Grog|r to spike it
.complete 51437,1 
step
.goto 895,88.51,49.46,26,0
.goto 895,87.16,49.58,26,0
.goto 895,87.47,50.84,26,0
.goto 895,87.76,50.49,26,0
.goto 895,87.11,51.90,26,0
.goto 895,87.30,52.93,26,0
#loop
.line 895,88.51,49.46,87.16,49.58,87.47,50.84,87.76,50.49,87.11,51.90,87.30,52.93,
.goto 895,88.51,49.46,25,0
.goto 895,87.16,49.58,25,0
.goto 895,87.47,50.84,25,0
.goto 895,87.76,50.49,25,0
.goto 895,87.11,51.90,25,0
.goto 895,87.30,52.93,25,0
>>杀死|cRXP_ENEMY_Fogsail炮手|r。掠夺他们的|cRXX_Loot_炮弹|r
.complete 51439,1 
.mob Fogsail Cannoneer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影猎手塔金|r, First Mate Owings
.turnin 51439 >>Turn in Cannonball Collection
.goto 895,87.28,50.01
.turnin 51437 >>Turn in Spike the Punch
.accept 51440 >>接任务: |cRXP_WARN_改变方向|r
.goto 895,87.31,49.99
.accept 51441 >>接任务: |cRXP_WARN_轰炸信号|r
.goto 895,87.28,50.01
.target Shadow Hunter Ty'jin
.target First Mate Owings
step
#sticky
#label FogRowboat
>>在水中的|cRXP_PICK_boats|r上使用|T252185:0|t[哥布林特制手炮]
.complete 51441,1,2 
.use 160405
step
.goto 895,87.47,49.98,10,0
.goto 895,87.43,49.73,20,0
.goto 895,87.29,49.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Navigator Swink|r. Wait out his RP, then kill him
.complete 51440,3 
.skipgossip
.timer 13,Swink RP
.mob Navigator Swink
step
#requires FogRowboat
#completewith KillianMbappe
>>在水中的|cRXP_PICK_boats|r上使用|T252185:0|t[哥布林特制手炮]
.complete 51441,1 
.use 160405
step
#requires FogRowboat
.goto 895,87.83,50.41,8,0
.goto 895,87.85,50.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Boatswain Taryn|r. Wait out her RP, then kill her
.complete 51440,1 
.skipgossip
.mob Boatswain Taryn
step
#label KillianMbappe
.goto 895,87.00,52.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Killian|r
.complete 51440,2 
.skipgossip
.target Quartermaster Killian
step
.goto 895,87.21,49.25
>>在水中的|cRXP_PICK_boats|r上使用|T252185:0|t[哥布林特制手炮]
.complete 51441,1 
.use 160405
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影猎手塔金|r, First Mate Owings
.turnin 51441 >>Turn in Thar She Blows!
.goto 895,87.28,50.01
.turnin 51440 >>Turn in A Change in Direction
.accept 51442 >>接任务: |cRXP_WARN_现在我是船长了|r
.goto 895,87.31,49.99
.target Shadow Hunter Ty'jin
.target First Mate Owings
step
.goto 895,86.92,53.16
>>在洞穴内杀死|cRXP_ENEMY_Rhenik|r
.complete 51442,1 
.mob Captain Rhenik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: First Mate Owings, |cRXP_FRIENDLY_暗影猎手塔金|r
>>Talk to Owings and Ty'jin
.turnin 51442 >>Turn in I'm the Captain Now
.goto 895,87.31,49.99
.accept 51438 >>接任务: |cRXP_WARN_标记领地|r
.goto 895,87.28,50.01
.target First Mate Owings
.target Shadow Hunter Ty'jin
step
.goto 895,87.47,50.41
>>单击|cRXP_PICK_banner |r将其植入。按键盘上的“Escape”可跳过电影
.complete 51438,1 
step
.goto 895,87.28,50.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影猎手塔金|r
.turnin 51438 >>Turn in Marking Our Territory
.turnin 51975 >>交任务: |cRXP_FRIENDLY_勇士：暗影猎手塔金|r
.accept 51984 >>接任务: |cRXP_WARN_回到祖达萨|r
.target Shadow Hunter Ty'jin
step
.goto 895,87.84,51.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t到外面去。与|cRXP_FRIENDLY_Erul Dawnbrook|r交谈
.complete 51984,1 
.skipgossip
.target Erul Dawnbrook
step
.goto 862,58.44,62.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.turnin 51984 >>Turn in Return to Zuldazar
.turnin 52451 >>交任务: |cRXP_FRIENDLY_赞达拉众志成城|r
.target Nathanos Blightcaller
step
.isQuestAvailable 51994
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.goto 862,58.44,62.67
.accept 51870 >>接任务: |cRXP_WARN_海岛探险|r
.target Nathanos Blightcaller
step
.isQuestAvailable 51994
.goto 1165,44.48,95.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rez'okun|r
.turnin 51870 >>Turn in Island Expedition
.accept 51888 >>接任务: |cRXP_WARN_海岛探险|r
.target Captain Rez'okun
step
.isQuestAvailable 51994
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rez'okun|r
.goto 1165,44.48,95.46
.complete 51888,1 
.skipgossip 123000,1
.target Captain Rez'okun
step
.isOnQuest 51888
#sticky
#label ZandalariTrollIslandExpedition
>>完成岛屿探险场景
.complete 51888,2 
step
.isOnQuest 51888
>>沿着箭头到达航路点位置
.goto 1022,79.23,63.90
.scenario 3838,1 
step
.isOnQuest 51888
#title Crystal mined 1/3
>>开采|cRXP_PICK_Azerite晶体|r
.goto 1022,79.23,63.90
.scenario 3839,1,1 
step
.isOnQuest 51888
#title Crystal mined 2/3
>>开采|cRXP_PICK_Azerite晶体|r
.goto 1022,75.50,55.76
.scenario 3839,1,2 
step
.isOnQuest 51888
#title Crystal mined 3/3
>>开采|cRXP_PICK_Azerite晶体|r
.goto 1022,77.46,50.15
.scenario 3839,1 
step
.isOnQuest 51888
>>沿着箭头到达航路点位置
.goto 1022,62.41,26.06
.scenario 3840,1 
step
.isOnQuest 51888
>>杀死|cRXP_ENEMY_Encrusted Kingscatter|r
.goto 1022,62.41,26.06
.scenario 3841,1 
.target Encrusted Kingscuttler
step
.isOnQuest 51888
>>沿着箭头到达航路点位置
.goto 1022,43.77,47.77
.scenario 3842,1 
step
.isOnQuest 51888
>>杀死|cRXP_ENEMY_Akakakoo|r或拾取|cRX_pick_袋/袋Azerite|r
.goto 1022,29.49,58.76,15,0
.goto 1022,36.36,68.65,15,0
.goto 1022,40.33,52.26,15,0
.goto 1022,29.49,58.76
.scenario 3843,1 
.mob Akakakoo
.mob Kunzen Hozen
.mob Kunzen Hunter
.mob Kunzen Leafeater
step
.isOnQuest 51888
>>跑回船上。您可以使用ESC跳过即将到来的过场。
.goto 1022,77.39,73.61
.scenario 3844,1 
step
.isQuestAvailable 51994
.isOnQuest 51888
#requires ZandalariTrollIslandExpedition
.goto 1165,44.48,95.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rez'okun|r
.turnin 51888 >>Turn in Island Expedition
.target Captain Rez'okun
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.accept 52444 >>接任务: |cRXP_WARN_最后的据点|r
.target Nathanos Blightcaller
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the Kultiras Campaign table and select |cRXP_WARN_Drustvar|r. Click on the popup under your minimap to turn in the quest
.goto 862,58.44,62.67
.accept 51801 >>接任务: |cRXP_WARN_据点：德鲁斯瓦|r
.turnin 51801 >>Turn in Foothold: Drustvar
.complete 52444,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.goto 862,58.44,62.67
.turnin 52444 >>Turn in The Final Foothold
.accept 51332 >>接任务: |cRXP_WARN_跨越大洋的旅途|r
.target Nathanos Blightcaller
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t下船与|cRXP_FRIENDLY_Trade Prince Gallywix|r交谈
.goto 862,58.50,62.36,8,0
.goto 862,58.45,62.64
.turnin 51332 >>Turn in A Trip Across the Ocean
.accept 51340 >>接任务: |cRXP_WARN_德鲁斯瓦呀！|r
.target Trade Prince Gallywix
step
#completewith next
.goto 862,58.39,62.26,10,0
.goto 862,58.55,62.72
.gossipoption 49250 >>上楼去。与|cRXP_FRIENDLY_Eitrigg|r交谈
step
.goto 862,58.55,62.72
.skipgossip 2
.complete 51340,1 
.target Eitrigg
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tattersail|r
.complete 51340,2 
.goto 862,58.46,62.99
.skipgossip 1
.target Dread-Admiral Tattersail
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊崔格|r
.goto 896,20.78,43.85
.turnin 51340 >>Turn in Drustvar Ho!
.target Eitrigg
step
.zoneskip 862
+|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swellthrasher|r
.goto 896,20.60,43.34
.skipgossip
.target Swellthrasher
step
#completewith Freedom
.hs >>向伟大的封印致敬
.cooldown item,6948,>0
step
#completewith Freedom
.goto 1165,50.48,85.70,50,0
.goto 1165,52.09,90.12
.fly The Great Seal >>Fly to The Great Seal
.cooldown item,6948,<0
step
#completewith Freedom
.goto 1163,48.72,18.58,20 >>走进伟大的封印
.cooldown item,6948,<0
step
#label Freedom
.goto 1163,57.61,70.33,15,0 >>前往: |cRXP_PICK_杜隆塔尔|r
.zone 85 >>前往: |cRXP_PICK_杜隆塔尔|r
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#veteran
#group RestedXP Horde 10-60
#groupweight 9
#name 3 Horde Zuldazar
#displayname Chapter 4 - Zuldazar Beginning
#next 3 Horde Zuldazar 2
<< Horde
step
.isQuestAvailable 51443
.goto 85,40.83,80.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
>>|cRXP_WARN_选择“艾泽拉斯之战”战役|r
*|cRXP_WARN_It's possible that it bugs out and doesn't give you the quest. If this is the case select the "Cataclysm" campaign and swap back to the "Battle for Azeroth" one until you get the quest|r
.accept 51443 >>接任务: |cRXP_WARN_争霸艾泽拉斯：使命宣言|r
.skipgossip
.target Chromie
step
.isOnQuest 51443
>>进入大楼
.goto 85,49.43,75.11
*You can skip most cinematics/cutscene by presseing ESC and then clicking yes
.complete 51443,1 
step
.isOnQuest 51443
.goto 85,54.43,78.47
>>走进客栈
.complete 51443,2 
step
.isQuestAvailable 50769
.goto 85,54.43,78.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos BLightcaller|r
.turnin -51443 >>Turn in Battle for Azeroth: Mission Statement
.accept 50769 >>接任务: |cRXP_WARN_逃出暴风城|r
.target Nathanos Blightcaller
step
.isOnQuest 50769
.isQuestTurnedIn 52969
.zoneskip 862
+|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳萨诺斯·凋零者|r
*|cRXP_WARN_Don't take the potion. If you did then abandon the quest and accept it again.|r
.goto 85,54.43,78.47
.skipgossip 1
.target Nathanos Blightcaller
step
.isOnQuest 50769
.zoneskip 862
>>掠夺表上的|cRXP_PICK_port|r
.goto 85,54.58,78.36
.complete 50769,1 
step
.isOnQuest 50769
.zoneskip 85,1
.isQuestTurnedIn 52969
>>你吃了药。放弃任务，重新接受并使用跳跃。如果您真的想再次执行该场景，请跳过此步骤
.abandon 50769
step
.isOnQuest 50769
#completewith next
.isQuestTurnedIn 52969
.zoneskip 85,1
+|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳萨诺斯·凋零者|r
*|cRXP_WARN_Don't take the potion. If you did then abandon the quest and accept it again.|r
.goto 85,54.43,78.47
.skipgossip 1
.target Nathanos Blightcaller
step
.isOnQuest 50769
.zoneskip 85,1
>>掠夺表上的|cRXP_PICK_port|r
.goto 85,54.58,78.36
.complete 50769,1 
step
.isQuestComplete 50769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.turnin 50769 >>Turn in The Stormwind Extraction
.goto 1164,40.11,71.56,-1
.goto 862,57.96,62.76,-1
.target Nathanos Blightcaller
step
.isOnQuest 50769
.zoneskip 862
>>离开大楼。在外面乘坐|cRXP_FRIENDLY_Skyhorn Eagle|r|cRXP_WARN_值得至少执行一次该场景，以便在后续字符上跳过它|r
.goto 85,51.19,83.57
.complete 50769,2 
.target Skyhorn Eagle
step
.isOnQuest 50769
.zoneskip 862
.scenario 3718,1
step
.isOnQuest 50769
.zoneskip 862
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the two |cRXP_PICK_Padlocks|r next to the waypoint by clicking on them. Afterwards follow the arrow into the trapdoor
.scenario 3719,2
.goto 1012,46.31,58.22
.scenario 3719,1
.goto 1012,46.31,57.96
step
.isOnQuest 50769
.zoneskip 862
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t如果可能，忽略所有暴徒，尽快打开最后的门，并与|cRXP_FRIENDLY_Saurfang |r交谈
.scenario 3720,1
.goto 1013,31.52,62.04,3,0
.goto 1013,50.99,39.32
step
.isOnQuest 50769
.zoneskip 862
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t如果可能，忽略所有暴徒，尽快打开最后的门，并与|cRXP_FRIENDLY_Saurfang |r交谈
.scenario 3721,2
.scenario 3721,1
.goto 1013,48.03,33.56,10,0
.goto 1013,55.92,64.00
>>你已经可以在下一个牢房等了
.skipgossip
step
.isOnQuest 50769
.zoneskip 862
>>在航路点等待，直到你能看到障碍物，然后等待，直到障碍物消失
.scenario 3722,1
.goto 1013,55.92,64.00
step
.isOnQuest 50769
.zoneskip 862
>>你只需要杀死大圆形房间前面和里面的暴徒。如果你有经验，你可以忽略其他人
*|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Stormwind Sewer Access|r at the end
.scenario 3722,2
.goto 1013,53.68,44.44,5,0
.goto 1013,87.17,23.20
step
.isOnQuest 50769
.zoneskip 862
>>|cRXP_WARN_将您的宠物解除为猎人或术士|r << Hunter/Warlock
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛坎|r
.scenario 3727,1
.goto 1012,71.07,46.71,3,0
.skipgossip
.target Rokhan
step
.isOnQuest 50769
.zoneskip 862
>>跟随箭头，当你看到暴徒时杀死他们。
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t最后与|cRXP_FRIENDLY_Nathanos|r交谈
.scenario 3729,1
.goto 1012,55.81,56.85
.scenario 3729,2
.goto 1012,53.20,55.42,15,0
.goto 1012,47.38,51.81,10,0
.goto 1012,49.42,42.23,15,0
.goto 1012,45.43,43.18
.skipgossip
.target Nathanos Blightcaller
step
.isOnQuest 50769
.zoneskip 862
>>跟随箭头，躲避地面上的漩涡，摧毁|cRXP_ENEMY_Ice Barrier|r
.scenario 3730,1
.goto 1012,39.79,40.59
.mob Ice Barrier
step
.isOnQuest 50769
.zoneskip 862
>>跟随箭头，杀死路上的所有暴徒。如果你不相信你能单独杀死他们，就等着NPC攻击他们
.scenario 3788,1
.goto 1012,36.61,34.81,20,0
.goto 1012,34.40,34.65,10,0
.goto 1012,31.79,31.66,10,0
.goto 1012,28.72,31.54,20,0
.goto 1012,29.81,26.57,25,0
.goto 1012,19.64,25.70
step
.isOnQuest 50769
.zoneskip 862
#completewith next
+按ESC键并单击“是”，可以跳过最后的过场
step
.isOnQuest 50769
.zoneskip 862
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t关注|cRXP_FRIENDLY_Pincess Talanji |r并与她交谈
.goto 1012,19.34,28.66,10,0
.goto 1012,20.54,28.93
.skipgossip
.complete 50769,3 
.mob Princess Talanji
steps
.isOnQuest 60361
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.goto 862,57.95,62.76
.turnin 60361 >>Turn in Battle for Azeroth: Mission Statement
.target Nathanos Blightcaller
step
.isQuestComplete 50769
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.turnin 50769 >>Turn in The Stormwind Extraction
.goto 1164,40.11,71.56,-1
.goto 862,57.96,62.76,-1
.target Nathanos Blightcaller
step
.zoneskip 1164
#label ZuldazarWelcometoZuldazar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r
.accept 46957 >>接任务: |cRXP_WARN_欢迎来到祖达萨|r
.goto 862,57.95,62.46
.mob Princess Talanji
step
.isOnQuest 46957
.zoneskip 1164
>>|cRXP_WARN_靠近|cRXP_FRIENDLY_Talanji，否则她将停止移动|r
.goto 1165,50.02,60.63,40,0
.goto 1165,50.78,92.73,40,0
.goto 1165,50.35,90.93,40,0
.goto 1165,49.94,85.84,40,0
.goto 1165,48.89,83.91,40,0
.goto 1165,49.98,82.33
.complete 46957,1 
step
.isQuestAvailable 46930
.zoneskip 1164
.goto 1165,49.98,82.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Jakra'zet|r
.turnin -46957 >>Turn in Welcome to Zuldazar
.accept 46930 >>接任务: |cRXP_WARN_拉斯塔哈|r
.target General Jakra'zet
step
.isOnQuest 46930
.zoneskip 1164
.goto 1165,49.98,82.58
>>|cRXP_WARN_请勿乘坐Pterrordax|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t相反，请与|cRXP_FRIENDLY_Pincess Talanji |r交谈
*Skip the next cinematic with ESC
.complete 46930,1 
.skipgossip
.mob Princess Talanji
step
.isQuestAvailable 46931
.zoneskip 1164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.goto 1165,49.91,42.72
.turnin -46930 >>Turn in Rastakhan
.accept 46931 >>接任务: |cRXP_WARN_部落的代言人|r
.target King Rastakhan
step
.isOnQuest 46931
#completewith next
>>|cRXP_WARN_顺着箭头走|r您不需要遵循|cRXP_FRIENDLY_Zolani|r
.goto 1165,49.43,44.67,10,0
.goto 1165,48.66,44.61,20,0
.goto 1165,49.93,39.86
.complete 46931,1 
step
.isOnQuest 46931
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the shade of the |cRXP_PICK_Horde Banner|r
.goto 1165,49.93,39.86
.complete 46931,2 
step
.isOnQuest 46931
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
step
.isOnQuest 46931
>>Go into the three rooms
.complete 46931,3 
.goto 1163,49.78,73.50
.complete 46931,4 
.goto 1163,67.67,70.75
.complete 46931,5 
.goto 862,57.57,44.37
step
.isOnQuest 46931
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上去与|cRXP_FRIENDLY_Talanji|r交谈
*If you're very fast then you can skip Talanji's roleplay by relogging
.goto 1164,44.67,70.33,20,0
.goto 1164,41.22,66.75
.turnin 46931 >>Turn in Speaker of the Horde
.target Princess Talanji
step << DemonHunter
.xp <20,1
.pve
.zoneskip 85,1
#title Active War Mode. Skip if you don't want to.
+如果你不想激活战争模式（天赋窗口右下角（N）），即使它会增加你至少10%的经验增益，也可以跳过
step
#label PortalToZuldazarCatchupA
.isQuestAvailable 27484
.goto 85,53.38,90.49,10,0
.goto 85,58.52,91.31
.zone 862 >>输入|cRXP_PICK_Portal到Zuldazar|r
.zoneskip 85,1
step
#requires PortalToZuldazarCatchupA
.zoneskip 1164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t上去和|cRXP_FRIENDLY_Ripa the Wind Ripper|r交谈
.goto 1165,50.72,85.21,20,0
.goto 1165,52.10,90.13
.fly The Great Seal >>Fly to The Great Seal
.target Ripa the Wind Ripper
step
#label ZuldazarAcceptZuldazar
.goto 1164,41.72,69.33
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Scouting Map|r, click on Zuldazar. Accept the quest
.accept 47514 >>接任务: |cRXP_WARN_祖达萨|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talanji|r
.goto 1164,41.22,66.75
.turnin 47514 >>Turn in Zuldazar
.accept 49615 >>接任务: |cRXP_WARN_大王的信任|r
.target Princess Talanji
step
#completewith next
.goto 1164,22.67,72.08,5,0
.goto 1165,48.72,44.92,10,0
.goto 1165,49.56,44.60,18 >>乘电梯直达|cRXP_FRIENDLY_King Rastakhan|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r, |cRXP_FRIENDLY_Zolani|r, and |cRXP_FRIENDLY_Yazma|r |cRXP_WARN_upstairs|r
.goto 1164,22.67,72.08,5,0
.goto 1165,48.72,44.92,10,0
.goto 1165,49.56,44.60,18,0
.goto 1165,49.93,46.62
.turnin 49615 >>Turn in Trust of a King
.accept 49488 >>接任务: |cRXP_WARN_塔尔格拉布|r
.target King Rastakhan
step
#completwith next
>>坐骑|cRXP_FRIENDLY_Ata the Wingflord|r
.goto 1164,49.94,43.13
.complete 49488,1 
.target Ata the Winglord
step
.goto 862,62.82,32.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul|r
.turnin 49488 >>Turn in Tal'gurub
.accept 49489 >>接任务: |cRXP_WARN_原料需求|r
.accept 49490 >>接任务: |cRXP_WARN_声之瓮|r
.target Zul
step
#completewith ZuldazarVoodooTotemEight
>>为他们的灵魂杀死|cRXP_ENEMY_Jambani|r和|cRXX_ENEMY_Mask|r
.complete 49490,1 
.mob Howling Voodoo Mask
.mob Jambani Spirit Twister
.mob Jambani Crusher
step
.goto 862,63.62,31.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izita's Spirit|r
.accept 49491 >>接任务: |cRXP_WARN_巫毒燃料|r
.target Izita's Spirit
step
#title Totem 1/8
.goto 862,64.19,32.82
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,1 
step
#title Totem 2/8
.goto 862,64.72,32.98
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,2 
step
#sticky
#label Totem3
#title Totem 3/8
.goto 862,64.98,32.91,-1
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,3 
step
#title Concotion 1/2
>>进入大楼。单击|cRXP_FRIENDLY_Atal'jamba Ungo|r
.goto 862,65.03,32.98,-1
.complete 49489,1,1 
.target Atal'jamba Ungo
step
#requires Totem3
#completewith next
.goto 862,64.36,33.14,15,0
.goto 862,63.94,32.49,20 >>穿过桥往回走，然后上楼梯时向右转
step
#requires Totem3
#title Totem 4/8
.goto 862,63.91,31.92
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,4 
step
#title Totem 5/8
.goto 862,63.74,30.83
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,5 
step
#title Totem 6/8
.goto 862,63.11,30.22
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,6 
step
#title Concotion 2/2
>>进入大楼。单击|cRXP_FRIENDLY_Atal'jamba Iri|r
.goto 862,63.07,29.06,12,0
.goto 862,63.20,29.06
.complete 49489,1 
.target Atal'jamba Iri
step
#title Totem 7/8
.goto 862,62.70,29.09
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,7 
step
#label ZuldazarVoodooTotemEight
#title Totem 8/8
.goto 862,62.88,28.61
>>在地面上掠夺|cRXP_PICK_Totem|r
.complete 49491,1,8 
step
.goto 862,62.70,29.09,40,0
.goto 862,63.11,30.22,40,0
.goto 862,63.74,30.83,40,0
.goto 862,63.91,31.92,40,0
.goto 862,64.19,32.82,40,0
.goto 862,64.72,32.98
>>为他们的灵魂杀死|cRXP_ENEMY_Jambani|r和|cRXX_ENEMY_Mask|r
.complete 49490,1 
.mob Howling Voodoo Mask
.mob Jambani Spirit Twister
.mob Jambani Crusher
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_PICK_火盆|r, Zul
.turnin 49491 >>Turn in Fuel for the Voodoo
.goto 862,62.74,28.43
.turnin 49489 >>Turn in Needs a Little Body
.turnin 49490 >>Turn in The Urn of Voices
.accept 49492 >>接任务: |cRXP_WARN_沃加巴的傲慢|r
.goto 862,62.86,28.24
.target Zul
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Masks|r on the wall. Don't worry about their traps
.complete 49492,1 
.goto 862,62.90,28.00
.complete 49492,2 
.goto 862,63.55,28.08
.complete 49492,3 
.goto 862,64.12,28.37
.timer 20,Zul RP
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待|cRXP_FRIENDLY_Zul|r走上楼梯并与他交谈
.goto 862,64.38,28.55
.turnin 49492 >>Turn in Arrogance of Vol'jamba
.accept 49493 >>接任务: |cRXP_WARN_道德困境|r
.accept 49494 >>接任务: |cRXP_WARN_祖维比酒|r
.target Zul
step
#completewith ZuldazarJambaniStockpiles
>>当站在|cRXP_ENEMY_Mindslaved狂战士|r和|cRXX_ENEMY_ Mindslaved古鲁巴什|r的近战范围内时，使用|T237388:0|t[破心圣歌]。尝试一次释放多个施放
.use 155458
.complete 49493,1 
.mob Mindslaved Berserker
.mob Mindslaved Gurubashi
step
.goto 862,64.88,27.00
>>杀死|cRXP_ENEMY_Zuvembi Brewer Zekal|r
.complete 49494,1 
.mob Zuvembi Brewer Zekal
step
.goto 862,65.29,28.19
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Jambani Stockpile|r, then click it again to burn it
.accept 51663 >>接任务: |cRXP_WARN_做好准备|r
.complete 51663,1,1 
step
#title Stockpile 2/8
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,65.39,27.86
.complete 51663,1,2 
step
#title Stockpile 3/8
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,65.00,28.34
.complete 51663,1,3 
step
#title Stockpile 4/8
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,64.92,28.36
.complete 51663,1,4 
step
#title Stockpile 5/8
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,64.66,28.64
.complete 51663,1,5 
step
#title Stockpile 6/8
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,64.61,29.82
.complete 51663,1,6 
step
#title Stockpile 7/8
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,65.02,29.62
.complete 51663,1,7 
step
#label ZuldazarJambaniStockpiles
#title Stockpile 8/8
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Jambani Stockpile|r to burn it
.goto 862,65.59,29.14
.complete 51663,1 
step
>>当站在|cRXP_ENEMY_Mindslaved狂战士|r和|cRXX_ENEMY_ Mindslaved古鲁巴什|r的近战范围内时，使用|T237388:0|t[破心圣歌]。尝试一次释放多个施放
.use 155458
.goto 862,66.35,29.55,30,0
.goto 862,66.47,28.56,30,0
.goto 862,66.07,28.57,30,0
.goto 862,64.66,28.64,30,0
.goto 862,64.61,29.82
.complete 49493,1 
.mob Mindslaved Berserker
.mob Mindslaved Gurubashi
step
#completewith next
.goto 862,65.71,30.21,40 >>Climb the stairs
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul|r
.goto 862,65.71,30.21
.turnin 49493 >>Turn in Zul's Ethical Dilemma
.turnin 49494 >>Turn in Zuvembi Brew
.turnin 51663 >>Turn in Preparing for the Fall
.accept 49495 >>接任务: |cRXP_WARN_命中注定|r
.target Zul
step
.isOnQuest 49495
>>|cRXP_WARN_请确保接受带有两个免费袋子插槽的任务。如果你看到这个消息，那么释放一些袋子空间，放弃任务并重新接受它|r
.collect 160523,1,49495,1
.collect 160524,1,49495,1
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Gong of Command|r
.goto 862,65.89,31.09
.complete 49495,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_shade of the urn|r
.goto 862,65.89,30.67
.complete 49495,2 
.timer 6,Urn of Voices RP
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_shade of the urn|r again when it appears
.goto 862,65.86,30.65
.complete 49495,3 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_potion|r on the table
.goto 862,65.56,31.30
.complete 49495,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul|r
.goto 862,65.71,30.21
.turnin 49495 >>Turn in Enforcing Fate
.accept 49905 >>接任务: |cRXP_WARN_剧情反转|r
.timer 30,Plot Twist RP
.target Zul
step
>>等待RP攻击|cRXP_ENEMY_Vol'jamba|r
.goto 862,65.68,31.03
.complete 49905,1 
.mob Vol'jamba
step
.goto 862,65.68,31.03
>>杀死|cRXP_ENEMY_Vol'Jamba|r
.complete 49905,2 
.mob Vol'jamba
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zul|r
.goto 862,65.58,30.51
.turnin 49905 >>Turn in Plot Twist
.accept 49663 >>接任务: |cRXP_WARN_虚假预言|r
.target Zul
step
#completewith HuntKing
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
step
#completewith next
.goto 862,66.99,29.79,30 >>顺着悬崖的这一部分往下跑
step
#label HuntKing
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Hunter's Board, |cRXP_FRIENDLY_赫米特·奈辛瓦里|r, Erak, Tracker Burke
.accept 47706 >>接任务: |cRXP_WARN_狩猎魔暴龙王科塔尔|r
.goto 862,67.44,17.90
.accept 50466 >>接任务: |cRXP_WARN_它已经疯了！|r
.goto 862,67.50,17.70
.accept 47584 >>接任务: |cRXP_WARN_肉中刺|r
.goto 862,67.45,17.72
.accept 47583 >>接任务: |cRXP_WARN_去死吧，双帆龙|r
.goto 862,67.56,17.73
.target Hemet Nesingwary
.target Erak
.target Tracker Burke
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the dead |cRXP_FRIENDLY_Trapper|r on the ground
.goto 862,68.85,19.44,0,0
.accept 47585 >>接任务: |cRXP_WARN_螳螂捕蝉|r
.target Trapper Custer
step
#completewith ZuldazarWildtusk
>>杀死|cRXP_ENEMY_Vemomus Diemetradons|r和|cRXX_ENEMY_Ankylons|r
.goto 862,70.84,20.31,40,0
.complete 47583,1 
.complete 47584,1 
.mob Venomous Diemetradons
.mob Ankylodons
step
#completewith next
.line 862,71.69,20.36,71.40,20.93,71.33,21.89,71.50,22.41,70.84,22.62,70.14,22.88,68.99,22.64,68.26,21.95,67.98,22.04,67.93,22.32,68.10,22.90,68.25,22.74,68.42,23.03,69.76,22.59,70.84,22.62
>>杀死|cRXP_ENEMY_King K'tal|r。掠夺他的|cRXX_Loot_skull|r。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。
.complete 47706,1 
.isOnQuest 47706
.mob King K'tal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Paalu|r on the ground
.goto 862,70.63,22.09
.complete 47585,1 
.target Ranger Paalu
step << Hunter
#completewith next
+推荐：驯服甲龙（解散宠物->驯服野兽）
*Ferocity pets are far more durable.
*Ignore this step if you aready have a Ferocity pet or want to keep using your current one.
.goto 862,70.21,21.95,25,0
step
#label ZuldazarWildtusk
.goto 862,70.94,26.26
>>杀死|cRXP_ENEMY_Wildtusk|r
.complete 50466,1 
.mob Wildtusk
step
#completewith next
>>杀死|cRXP_ENEMY_毒蜥|r
.complete 47583,1 
.mob Venomous Diemetradons
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Julyen|r on the ground
.goto 862,67.81,25.03
.complete 47585,2 
.target Marksman Julyen
step
#loop
.line 862,68.00,26.14,68.86,25.70,68.80,25.22,68.41,25.03,68.56,24.19,67.78,24.33,67.41,24.86,68.00,26.14
.goto 862,68.00,26.14,40,0
.goto 862,68.86,25.70,40,0
.goto 862,68.80,25.22,40,0
.goto 862,68.41,25.03,40,0
.goto 862,68.56,24.19,40,0
.goto 862,67.78,24.33,40,0
.goto 862,67.41,24.86,40,0
.goto 862,68.00,26.14,40,0
>>杀死|cRXP_ENEMY_毒蜥|r
.complete 47583,1 
.mob Venomous Diemetradons
step
#completewith next
.line 862,71.69,20.36,71.40,20.93,71.33,21.89,71.50,22.41,70.84,22.62,70.14,22.88,68.99,22.64,68.26,21.95,67.98,22.04,67.93,22.32,68.10,22.90,68.25,22.74,68.42,23.03,69.76,22.59,70.84,22.62
>>杀死|cRXP_ENEMY_King K'tal|r。掠夺他的|cRXX_Loot_skull|r。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。
.complete 47706,1 
.isOnQuest 47706
.mob King K'tal
step
>>杀死|cRXP_ENEMY_甲龙|r
.goto 862,67.81,22.89,45,0
.goto 862,68.74,21.43,45,0
.goto 862,68.63,20.44,45,0
.goto 862,67.66,20.12,45,0
.goto 862,68.26,18.54,45,0
.goto 862,69.11,18.71
.complete 47584,1 
.mob Ankylodon
step
#completewith ZuldazarNesingwarysTrekTurnins
.line 862,71.69,20.36,71.40,20.93,71.33,21.89,71.50,22.41,70.84,22.62,70.14,22.88,68.99,22.64,68.26,21.95,67.98,22.04,67.93,22.32,68.10,22.90,68.25,22.74,68.42,23.03,69.76,22.59,70.84,22.62
.goto 862,67.81,23.37,40,0
.goto 862,71.39,21.48,40,0
.goto 862,67.81,23.37
>>杀死|cRXP_ENEMY_King K'tal|r。掠夺他的|cRXX_Loot_skull|r。如果需要，为他找一个小组。如果你找不到一个团队或独自一人，请跳过这一步。
.complete 47706,1 
.isOnQuest 47706
.mob King K'tal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t回到奈辛瓦利的迷航。与|cRXP_PICK_Tracker Burke’s Hat |r、|cRXP_RIENDLY_Erak|r和|cRXT_RIENDLY_Huntmaster Vol'ka|r交谈
.turnin 47583 >>Turn in Die, Die, Diemetradon
.goto 862,67.50,18.89
.turnin 47584 >>Turn in A Thorn in the Side
.goto 862,68.01,18.03
.turnin 47585 >>Turn in Predatory
.turnin 47706 >>Turn in Hunt for King K'tal
.turnin 50466 >>Turn in He's Gone Mad!
.accept 47586 >>接任务: |cRXP_WARN_狩猎王牌猎人|r
.goto 862,67.50,17.62
.isQuestComplete 47706
.target Erak
.target Huntmaster Vol'ka
step
#label ZuldazarNesingwarysTrekTurnins
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t回到奈辛瓦利的迷航。与|cRXP_PICK_Tracker Burke’s Hat |r、|cRXP_RIENDLY_Erak|r和|cRXT_RIENDLY_Huntmaster Vol'ka|r交谈
.turnin 47583 >>Turn in Die, Die, Diemetradon
.goto 862,67.50,18.89
.turnin 47584 >>Turn in A Thorn in the Side
.goto 862,68.01,18.03
.turnin 50466 >>Turn in He's Gone Mad!
.turnin 47585 >>Turn in Predatory
.accept 47586 >>接任务: |cRXP_WARN_狩猎王牌猎人|r
.goto 862,67.50,17.62
.target Erak
.target Huntmaster Vol'ka
step
.abandon 47706 >>放弃对国王克塔尔的狩猎
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lasa the Galerider|r
.goto 862,66.19,17.60
.fp Nesingwary's Gameland >>获取Nesingwary的Gameland飞行路线
.target Lasa the Galerider
step
#completewith ZuldazarFollowNesingwary
>>杀死|cRXP_ENEMY_Feathered Vipers|r、它们的|cRXD_ENEMY_Egg|r和|cRXP_ENEMY_Wild Sabertusk|r
.complete 50178,1 
.mob Feathered Viper
.mob Feathered Viper Egg
.mob Wild Sabertusk
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on |cRXP_PICK_Nesingwary's Campfire|r on the ground
.goto 862,62.45,19.26
.complete 47586,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Dwarf Trap|r on the ground
.goto 862,61.48,17.95
.complete 47586,2 
step
#label ZuldazarFollowNesingwary
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the |cRXP_PICK_Nesingwary's Rifle|r on the ground
.goto 862,62.32,16.87
.complete 47586,3 
step
>>杀死|cRXP_ENEMY_Feathered Vipers|r、它们的|cRXD_ENEMY_Egg|r和|cRXP_ENEMY_Wild Sabertusk|r
.goto 862,62.76,17.45,40,0
.goto 862,62.88,17.04,40,0
.goto 862,64.01,19.36,40,0
.goto 862,64.14,17.29,40,0
.goto 862,65.83,17.90,40,0
.goto 862,65.17,20.05,40,0
.goto 862,62.76,17.45
.complete 50178,1 
.mob Feathered Viper
.mob Feathered Viper Egg
.mob Wild Sabertusk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.goto 862,63.49,16.15
.turnin 47586 >>Turn in Hunting the Hunter
.accept 47587 >>接任务: |cRXP_WARN_猎头者乔|r
.target Hemet Nesingwary
step
.goto 862,62.96,15.81
>>在外面杀死|cRXP_ENEMY_Headhunter Jo|r
.complete 47587,1 
.mob Headhunter Jo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.goto 862,63.49,16.15
.turnin 47587 >>Turn in Headhunter Jo
.target Hemet Nesingwary
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lasa the Galerider|r
.goto 862,63.88,18.27,20,0
.goto 862,66.19,17.60
.fly The Great Seal >>Fly to The Great Seal
.target Lasa the Galerider
step
#completewith next
.isQuestTurnedIn 49905
.goto 1165,49.93,42.24,10,0
.goto 1164,37.75,71.70,10,0
.goto 1164,20.56,72.09,5 >>乘电梯到|cRXP_FRIENDLY_King Rastakhan|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r, |cRXP_FRIENDLY_Zolani|r, and |cRXP_FRIENDLY_Yazma|r
.turnin 49663 >>Turn in False Prophecies
.goto 1165,49.93,46.62
.accept 50835 >>接任务: |cRXP_WARN_赞达拉港|r
.goto 1165,49.82,46.55
.accept 47445 >>接任务: |cRXP_WARN_赞枢利议会|r
.goto 1165,49.73,46.51
.target King Rastakhan
.target Zolani
.target Yazma
step
.itemcount 109076,<1
#completewith ZuldazarTheZanchuliCouncil
.goto 1165,48.58,42.83,20,0
.goto 1165,48.51,37.82,15,0
.goto 1165,47.79,37.53,15,0
.goto 1165,46.97,37.19,15,0
.goto 1165,45.20,37.20,15,0
.goto 1165,45.22,31.83,20,0
.goto 1165,42.19,26.22,20 >>|cRXP_WARN_按箭头操作|r小心地跳下达扎勒。小心跌落损坏
step
.itemcount 109076,>0
#completewith ZuldazarTheZanchuliCouncil
.goto 1165,45.26,24.02
.use 109076
.cast 109076>>使用哥布林滑翔机套件飞往沃德鲁伊德乳液
step
#label ZuldazarTheZanchuliCouncil
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.goto 1165,45.26,24.02
.turnin 47445 >>Turn in The Zanchuli Council
.accept 47423 >>接任务: |cRXP_WARN_违禁行为|r
.target Wardruid Loti
step
.use 152627
.goto 1165,47.30,21.67,30,0
.goto 1165,48.09,20.82,30,0
.goto 1165,48.92,18.10,30,0
.goto 1165,49.84,17.92,30,0
.goto 1165,50.31,15.00,30,0
.goto 1165,50.40,13.00,30,0
.goto 1165,50.65,10.74,30,0
.goto 1165,51.65,10.35,30,0
.goto 1165,47.30,21.67
>>使用|T136008:0|t[Loti图腾]靠近|cRXP_ENEMY_Zanchuli附子|r来展示它们
.complete 47423,1 
.use 152627
.target Zanchuli Acolyte
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r
.goto 1165,51.90,11.89
.turnin 47423 >>Turn in Forbidden Practices
.accept 47433 >>接任务: |cRXP_WARN_以攻为守|r
.target Hexlord Raal
step
>>Mount|cRXP_FRIENDLY_Ata the Windlord|r
.goto 1165,53.20,11.63
.complete 47433,2 
.target Ata the Windlord
step
>>在发光的圆圈上使用|T136232:0|t[先知图腾]（1）。确保缩小并环顾四周
*The first one is directly below the starting position
.complete 47433,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.goto 1165,46.21,19.25
.turnin 47433 >>Turn in Offensively Defensive
.accept 47435 >>接任务: |cRXP_WARN_翼手龙患|r
.accept 47434 >>接任务: |cRXP_WARN_限制令|r
.target Wardruid Loti
step
.goto 1165,42.88,19.90,30,0
.goto 1165,41.91,16.04,30,0
.goto 1165,40.91,15.02,30,0
.goto 1165,38.59,15.73,30,0
.goto 1165,38.35,10.85,30,0
.goto 1165,39.42,14.08,30,0
.goto 1165,42.88,19.90
>>运行|cRXP_FRIENDLY_Hatchlings|r以清除它们。杀死|cRXP_ENEMY_狂暴的Pterrordax|r
.complete 47434,1 
.complete 47435,1 
.mob Bloodraged Pterrordax
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r
.goto 1165,40.92,11.33
.turnin 47435 >>Turn in Pterrortorial Dispute
.turnin 47434 >>Turn in Restraining Order
.accept 47437 >>接任务: |cRXP_WARN_信仰之争|r
.target Hexlord Raal
step
>>杀死|cRXP_ENEMY_坟墓守护者|r
.goto 1167,65.69,69.07
.complete 47437,1 
.mob Guardian of the Tombs
step
>>杀死|cRXP_ENEMY_仪式守护者|r
.goto 1167,36.67,25.67,15,0
.goto 1167,44.14,15.47,15,0
.goto 1166,65.91,30.73
.complete 47437,2 
.mob Guardian of the Rites
step
>>杀死|cRXP_ENEMY_亡灵守护者|r
.goto 1166,66.62,69.40,15,0
.goto 1166,78.58,86.53,15,0
.goto 1165,44.29,16.71
.complete 47437,3 
.mob Guardian of the Dead
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t爬上金字塔，与|cRXP_FRIENDLY_Wardruid Loti|r交谈
.goto 1165,46.06,15.65,14,0
.goto 1165,46.11,13.07
.turnin 47437 >>Turn in Competitive Devotion
.accept 47422 >>接任务: |cRXP_WARN_恐怖事态|r
.target Wardruid Loti
step
>>杀死|cRXP_ENEMY_Dregada|r。躲避跳跃。穿过边缘的图腾来获得buff。
.goto 1165,43.64,7.39
.complete 47422,1 
.mob Dregada
step
.isQuestAvailable 47438
#completewith next
+|cRXP_WARN_请完全按照航路点和指示，在下一次任务中选择翼龙而不是猛禽。禁用其他自动提交任务的加载项。|r
step
.isQuestAvailable 47438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.turnin 47422 >>Turn in Dire Situation
.accept 47438 >>接任务: |cRXP_WARN_选择神灵|r
.goto 1165,42.30,9.10
.target Wardruid Loti
step
.isQuestAvailable 47438
#completewith next
+|cRXP_WARN_请完全按照航路点和指示，在下一次任务中选择翼龙而不是猛禽。禁用其他自动提交任务的加载项。|r
step
.isQuestAvailable 47438
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on |cRXP_FRIENDLY_Pa'ku|r to choose her
.complete 47438,1 
.goto 1165,42.61,9.21
.target Pa'ku
step
.isQuestTurnedIn 47443
>>你选择了错误的loa，重新接受任务并选择翼龙。如果你已经意外地完成了任务，跳过这一步。
.abandon 47438
step
.isQuestAvailable 47438
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.accept 47438 >>接任务: |cRXP_WARN_选择神灵|r
.goto 1165,42.30,9.10
.target Wardruid Loti
step
.isQuestAvailable 47438
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on |cRXP_FRIENDLY_Pa'ku|r to choose her
.complete 47438,1 
.goto 1165,42.61,9.21
.target Pa'ku
step
.isQuestTurnedIn 47436
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.turnin 47438 >>Turn in Picking a Side
.goto 1165,42.30,9.10
.target Wardruid Loti
step
.isQuestTurnedIn 47436
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r
.accept 47440 >>接任务: |cRXP_WARN_风之主宰帕库|r
.goto 1165,42.54,9.49
.target Hexlord Raal
step
.isQuestTurnedIn 47443
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.goto 1165,42.30,9.10
.accept 47439 >>接任务: |cRXP_WARN_兽群主宰贡克|r
.target Wardruid Loti
step
.isQuestTurnedIn 47443
#completewith next
.goto 1165,42.27,9.47,1 >>Run through the |cRXP_PICK_Totem of Gonk|r to gain his buff. The buff reduces your falling damage and increases your movement speed
.goto 1165,40.51,9.40,15,0
.goto 1165,37.95,11.25,20,0
.goto 1165,36.28,7.99,25 >>往下跳
step
.isQuestTurnedIn 47443
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gonk|r
.goto 862,48.18,32.27
.skipgossip
.complete 47439,1 
.target Gonk
step
.isQuestTurnedIn 47443
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Paku'ai Rip'nata|r
.goto 862,48.05,28.70,20,0
.goto 862,48.56,26.87,20,0
.goto 862,49.72,26.27
.fly The Great Seal >>Fly to The Great Seal
.target Paku'ai Rip'nata
step
.isQuestTurnedIn 47443
#completewith next
.goto 1165,50.49,40.70,10 >>穿过Gonk|r的|cRXP_PICK_Totem获得他的buff
step
.isQuestTurnedIn 47443
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t跳下来与|cRXP_FRIENDLY_Wardruid Loti|r交谈
.goto 1165,49.92,33.42
.turnin 47439 >>Turn in Gonk, Lord of the Pack
.accept 48897 >>接任务: |cRXP_WARN_陷入僵局|r
.target Wardruid Loti
step
.isQuestTurnedIn 47443
#completewith Hatchling
.cast 6478 >>点击|cRXP_PICK_Gonk|r祭坛获得被动伤害增益
.goto 1165,49.92,33.10
step
.isQuestTurnedIn 47443
#completewith Hatchling
.itemcount 109076,<1
.goto 1165,52.27,32.40,18,0
.goto 1165,54.56,32.10,20,0
.goto 1165,58.14,26.43,25,0
.goto 1165,58.40,18.28,25,0
.goto 1165,61.83,35.70,25 >>Follow the arrow down
step
.isQuestTurnedIn 47443
#completewith next
.itemcount 109076,1
.use 109076
.cast 126389 >>使用哥布林滑翔机套件向下滑翔到任务
step
.isQuestTurnedIn 47443
#label Hatchling
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Direhorn Hatchling|r
.goto 862,65.66,41.35
.accept 47226 >>接任务: |cRXP_WARN_孤儿幼崽|r
.target Direhorn Hatchling
step
.isOnQuest 47440
>>坐骑|cRXP_FRIENDLY_Ata the Wingflord|r
.goto 1165,42.51,10.05
.complete 47440,1 
.target Ata the Winglord
step
.isQuestTurnedIn 47436
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pa'ku|r
.goto 862,71.31,48.67,15,0
.goto 862,71.52,49.40
.complete 47440,2 
.target Pa'ku
step
.isQuestTurnedIn 47436
#completewith next
+如果您希望节省时间，请打开计算机上的战网客户端
step
.isQuestTurnedIn 47436
.goto 862,71.78,49.24,12,0
.goto 862,72.1,49.5
.complete 47440,3 
.timer 52,Flight Duration
step
.isQuestTurnedIn 47436
#completewith next
+在战网客户端上按“播放”打开第二个魔兽世界客户端。不要关闭你的第一个客户。登录您的第二个客户端，等待您可以移动，然后关闭您的第一个客户端
step
.isQuestTurnedIn 47436
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r
.goto 1165,49.92,33.41
.turnin 47440 >>Turn in Pa'ku, Master of Winds
.accept 47432 >>接任务: |cRXP_WARN_陷入僵局|r
.target Hexlord Raal
step
.isQuestTurnedIn 47436
#completewith next
.cast 6478 >>点击帕库的|cRXP_PICK_Altar|r获得移动速度buff
.goto 1165,49.92,33.10
step
.isQuestTurnedIn 47436
#completewith Hatchling2
.cast 126389 >>使用|T133632:0|t[哥布林滑翔机套件]从金王座顶部向下滑翔
.use 109076
.itemcount 109076,1
step
.isQuestTurnedIn 47436
#label TotemPaku1
#completewith Hatchling2
.goto 1165,58.30,32.63
.vehicle 131154 >>点击帕库的|cRXP_PICK_Totem|r
.timer 11,Pa'ku Flight
.itemcount 109076,<1
.target Totem of Pa'ku
step
#label Hatchling2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Direhorn Hatchling|r
.goto 862,65.66,41.35
.accept 47226 >>接任务: |cRXP_WARN_孤儿幼崽|r
.target Direhorn Hatchling
step
.goto 862,66.57,40.25,20,0
.goto 862,66.69,40.94,10,0
.goto 862,66.81,42.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beastlord L'kala|r
.turnin 47226 >>Turn in The Orphaned Hatchling
.accept 47259 >>接任务: |cRXP_WARN_照料恐角龙|r
.accept 48527 >>接任务: |cRXP_WARN_贪食恶兽|r
.target Beastlord L'kala
step
.goto 862,66.56,42.35
.home >>将您的炉石设置为Beastcaller Inn
step << Monk
.xp <20,1
.zoneskip 379
.cast 126892 >>Use Zen Pilgrimage
step << Monk
.xp <20,1
.goto 379,48.53,43.57
.zone 85 >>前往: |cRXP_PICK_奥格瑞玛|r
step << !DemonHunter !Monk
.xp <20,1
.goto 862,67.26,43.02
.fly The Great Seal >>Fly to The Great Seal
step << !DemonHunter !Monk
.zoneskip 85
.xp <20,1
#completewith next
.goto 1163,48.74,29.28,20 >>Enter The Great Seal
step << !DemonHunter !Monk
.xp <20,1
.goto 1163,74.06,69.92
.zone 85 >>前往: |cRXP_PICK_杜隆塔尔|r
step << !DemonHunter
.xp <20,1
.pve
.zoneskip 85,1
#title Active War Mode. Skip if you don't want to.
+如果你不想激活战争模式（天赋窗口右下角（N）），即使它会增加你至少10%的经验增益，也可以跳过
step << !DemonHunter
.zoneskip 85,1
.xp <20,1
.cooldown item,6948,<1,1
#completewith ZuldazarNearlyHatchungEgg
.goto 85,43.93,72.96,15,0
.goto 85,53.17,90.47,10,0
.zone 1163 >>走祖尔达扎的入口
.goto 85,58.54,91.30
.fly Warbeast Kraal >>Fly to Warbeast Kraal
.goto 1165,51.81,41.25
step << !DemonHunter
.xp <20,1
.zoneskip 85,1
#completewith ZuldazarNearlyHatchungEgg
.hs >>Heath to Warbeast Kraal
.cooldown item,6948,>0,1
step
#completewith next
>>杀死|cRXP_ENEMY_刺激性Diemetradon|r
.goto 862,68.35,45.75,0,0
.complete 48527,1 
.mob Irritable Diemetradon
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_Soothing Lilybuds|r
*When the plant keeps glowing you have to click it again
.goto 862,68.09,43.42,6,0
.goto 862,68.70,43.99,6,0
.goto 862,68.96,44.07,6,0
.goto 862,69.90,44.22,6,0
.goto 862,69.53,44.95,6,0
.goto 862,69.20,45.51,6,0
.goto 862,68.88,45.34,6,0
.goto 862,68.65,44.48,6,0
.goto 862,68.11,44.31,6,0
.goto 862,68.38,45.78
.complete 47259,1 
step
.goto 862,69.04,47.68,30,0
.goto 862,69.61,44.45,30,0
.goto 862,68.96,43.89
>>杀死|cRXP_ENEMY_易激Diemetradons|r
.complete 48527,1 
.mob Irritable Diemetradon
step
#label DirehornD
#requires ZuldazarIrritableDiemetraden
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beastlord L'kala|r and |cRXP_FRIENDLY_Trader Alexxi|r
.turnin 47259 >>Turn in Direhorn Daycare
.turnin 48527 >>Turn in Ravenous Landsharks
.accept 47311 >>接任务: |cRXP_WARN_头槌基础教程|r
.goto 862,66.81,42.51
.accept 47272 >>接任务: |cRXP_WARN_恐角龙生长素|r
.goto 862,66.81,42.58
.target Beastlord L'kala
.target Trader Alexxi
step
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_PICK_Poster|r and |cRXP_FRIENDLY_Wingrider Nivek|r
.accept 51980 >>接任务: |cRXP_WARN_通缉：加布拉坎|r
.goto 862,69.07,40.85
.accept 47312 >>接任务: |cRXP_WARN_翎后|r
.goto 862,69.02,40.69
.target Wingrider Nivek
step
#completewith ZuldazarDirehornGrowthHormone
>>|cRXP_WARN_在|cRXP_ENEMY_Savagemane Ravasaurs|r和|cRXX_ENEMY_Invasive Eggsnaptcher|r上使用[ExtraActionButton]ON COOLDOWN|r
.complete 47311,1 
.mob Savagemane Ravasaurs
.mob Invasive Eggsnatchers
step
#completewith ZuldazarDirehornGrowthHormone6
>>杀死|cRXP_ENEMY_Queenweather |r。为她掠夺她|cRXX_Loot_plux|r
.goto 862,71.14,40.26,0,0
.complete 47312,1 
.mob Queenfeather
step
#title Fresh Carrion 1/10
>>在地面上掠夺|cRXP_PICK_Steaming Fresh Carrions |r
.goto 862,70.01,40.40
.complete 47272,1,1 
step
#title Fresh Carrion 2/10
>>在地面上掠夺|cRXP_PICK_Steaming Fresh Carrions |r
.goto 862,70.18,40.26
.complete 47272,1,2 
step
#title Fresh Carrion 3/10
>>在地面上掠夺|cRXP_PICK_Steaming Fresh Carrions |r
.goto 862,70.54,40.60
.complete 47272,1,3 
step
#title Fresh Carrion 4/10
>>在地面上掠夺|cRXP_PICK_Steaming Fresh Carrions |r
.goto 862,70.82,40.95
.complete 47272,1,4 
step
#title Fresh Carrion 5/10
>>在地面上掠夺|cRXP_PICK_Steaming Fresh Carrions |r
.goto 862,71.37,41.36
.complete 47272,1,5 
step
#label ZuldazarDirehornGrowthHormone6
#title Fresh Carrion 6/10
>>在地面上掠夺|cRXP_PICK_Steaming Fresh Carrions |r
.goto 862,71.38,40.68
.complete 47272,1,6 
step
#label ZuldazarQueenfeather
>>杀死|cRXP_ENEMY_Queenweather |r。为她掠夺她|cRXX_Loot_plux|r
.goto 862,71.14,40.26,0,0
.complete 47312,1 
.mob Queenfeather
step
#title Fresh Carrion 7/10
>>在地面上掠夺|cRXP_PICK_Steaming Fresh Carrions |r
.goto 862,70.73,39.81
.complete 47272,1,7 
step
#title Fresh Carrion 8/10
>>在地面上掠夺|cRXP_PICK_Steaming Fresh Carrions |r
.goto 862,70.76,39.51
.complete 47272,1,8 
step
#title Fresh Carrion 9/10
>>在地面上掠夺|cRXP_PICK_Steaming Fresh Carrions |r
.goto 862,70.35,39.59
.complete 47272,1,9 
step
#label ZuldazarDirehornGrowthHormone
#title Fresh Carrion 10/10
>>在地面上掠夺|cRXP_PICK_Steaming Fresh Carrions |r
.goto 862,70.00,39.25
.complete 47272,1 
step
>>|cRXP_WARN_在|cRXP_ENEMY_Savagemane Ravasaurs|r和|cRXX_ENEMY_Invasive Eggsnaptcher|r上使用[ExtraActionButton]ON COOLDOWN|r
.goto 862,70.37,39.76
.complete 47311,1 
.mob Savagemane Ravasaurs
.mob Invasive Eggsnatchers
step
.goto 862,67.07,37.11
>>杀死|cRXP_ENEMY_Jabra'kan|r.|cRXP-WARN_远离他向你投掷的陷阱和他的Volley|r造成的锥形伤害
*|cRXP_WARN_Skip this step if he's not up during an assault|r
.complete 51980,1 
.mob Jabra'kan the Poacher
step
.isQuestComplete 51980
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wingrider Nivek|r
.target Wingrider Nivek
.goto 862,69.02,40.69
.turnin 51980 >>Turn in WANTED: Jabra'kan
.turnin 47312 >>Turn in Queenfeather
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wingrider Nivek|r
.goto 862,69.02,40.69
.abandon 51980 >>放弃通缉：Jabra'kan
.turnin 47312 >>Turn in Queenfeather
.target Wingrider Nivek
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beastlord L'kala|r, |cRXP_FRIENDLY_Trader Alexxi|r, then |cRXP_FRIENDLY_L'kala|r again
.turnin 47311 >>Turn in Headbutting 101
.goto 862,66.81,42.51
.turnin 47272 >>Turn in Direhorn Growth Hormone
.accept 51998 >>接任务: |cRXP_WARN_DGH：添加真正的恐角龙成分|r
.goto 862,66.81,42.58
.accept 51990 >>接任务: |cRXP_WARN_兽栏猛禽|r
.goto 862,66.81,42.51
.target Beastlord L'kala
.target Trader Alexxi
step
#requires JourneymanPortalBack3
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
step
#requires JourneymanPortalBack3
#completewith next
.goto 862,67.78,40.52,30,0
.goto 862,67.05,36.42,30,0
.goto 862,66.80,36.17,20 >>沿着路径运行到Skyrender Eyrie
step
#requires JourneymanPortalBack3
#completewith ZuldazarNearlyHatchungEgg
>>杀死|cRXP_ENEMY_Pterrordax Skyrenders|r和|cRXP_ENEMY_Wild Pterrocks|r。掠夺它们的|cRXD_Loot_prof肉|r
.complete 51998,1 
.mob Pterrordax Skyrender
.mob Wild Pterrorchick
step
#requires JourneymanPortalBack3
#title Egg 1/8
.goto 862,66.95,34.99
>>将|cRXP_PICK_Egg|r洗劫一空
.complete 51990,1,1 
step
#title Egg 2/8
.goto 862,67.05,34.48
>>将|cRXP_PICK_Egg|r洗劫一空
.complete 51990,1,2 
step
#title Egg 3/8
.goto 862,67.01,33.89
>>将|cRXP_PICK_Egg|r洗劫一空
.complete 51990,1,3 
step
#title Egg 4+5/8
.goto 862,66.83,34.04
>>将|cRXP_PICK_Egg|r洗劫一空
.complete 51990,1,5 
step
#title Egg 6+7/8
.goto 862,66.71,34.50
>>将|cRXP_PICK_Egg|r洗劫一空
.complete 51990,1,7 
step
#label ZuldazarNearlyHatchungEgg
#title Egg 8/8
.goto 862,66.50,34.89
>>将|cRXP_PICK_Egg|r洗劫一空
.complete 51990,1 
step
.goto 862,66.02,32.86,40,0
.goto 862,67.71,31.93,40,0
.goto 862,66.77,35.52
>>杀死|cRXP_ENEMY_Pterrordax Skyrenders|r和|cRXP_ENEMY_Wild Pterrocks|r。掠夺它们的|cRXD_Loot_prof肉|r
.complete 51998,1 
.mob Pterrordax Skyrender
.mob Wild Pterrorchick
step
#completewith next
.goto 862,68.88,40.43,25,0
.goto 862,67.89,40.51,25 >>Follow the arrow back
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回战兽克拉尔。与|cRXP_FRIENDLY_Beastlond L'kala|r和|cRXP_FRIENDLY_Trader Alexxi|r交谈
.turnin 51990 >>Turn in Wings for the Kraal
.goto 862,66.81,42.51
.turnin 51998 >>Turn in DGH: Now With Real Direhorn
.goto 862,66.81,42.58
.target Beastlord L'kala
.target Trader Alexxi
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Paku'ai Verraki|r
.goto 862,67.26,43.03
.fly Port of Zandalar >>Fly to Port of Zandalar
.target Paku'ai Verraki
step
#label ZuldazarPortofZuldazar
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r and |cRXP_FRIENDLY_Yazma|r
.turnin 50835 >>Turn in The Port of Zandalar
.accept 46926 >>接任务: |cRXP_WARN_整顿港口|r
.goto 1165,50.06,85.07
.accept 46846 >>接任务: |cRXP_WARN_祖尔之语|r
.goto 1165,50.05,84.76
.target Zolani
.target Yazma
step
#completewith ZuldazarDocksideThugs
.goto 1165,47.83,87.31,0
>>杀死|cRXP_ENEMY_Gurubash|r、|cRXD_ENEMY_Amani|r和|cRXP_ENEMY_Sandfury Thugs|r
.complete 46926,1 
.mob Gurubashi Thug
.mob Amani Thug
.mob Sandfury Thug
step
.goto 1165,51.52,91.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nokali|r. |cRXP_WARN_Do NOT go downstairs.|r
.skipgossip
.complete 46846,1 
.target Nokali
step
#completewith next
.goto 1165,53.48,90.62,20 >>从墙上的缝隙跳下来
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volkini|r
.goto 1165,53.89,91.20
.skipgossip
.complete 46846,2 
.target Volkini
step
#completewith next
.goto 1165,56.03,89.72,20 >>Go under the overhang
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scrollsage Rooka|r
.goto 1165,55.95,88.83
.accept 48404 >>接任务: |cRXP_WARN_街头无赖|r
.target Scrollsage Rooka
step
#completewith next
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_FRIENDLY_Street Scamps|r. |cRXP_WARN_Be careful as they vanish after a few seconds|r
*You can find some at the waypoint marks on your minimap but they run around everywhere. If you don't finish this now, we will finish it later.
.goto 1165,51.65,93.32,0
.goto 1165,49.19,89.77,0
.goto 1165,52.30,82.86,0
.goto 1165,48.74,89.43,0
.goto 1165,49.19,89.77,10,0
.complete 48404,1 
.target Street Scamp
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Cobo|r
.goto 1165,45.31,79.78
.skipgossip
.complete 46846,3 
.target Dockmaster Cobo
step
#label ZuldazarDocksideThugs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jala|r
.goto 1165,44.25,82.15
.accept 48452 >>接任务: |cRXP_WARN_鲜血集市|r
.target Witch Doctor Jala
step
#completewith next
>>杀死|cRXP_ENEMY_Crimson邪教分子|r。掠夺他们的|cRXD_Loot_黑暗崇拜物|r
.complete 48452,1 
.mob Crimson Cultist
step
>>|cRXP_WARN_上车时一定要往下跳，否则你的宠物会拉到所有东西|r << Hunter/Warlock
>>|TInterface/GossipFrame/HealerGossipIcon:0|t往下跳 below, then go inside the building. Click the |cRXP_PICK_Chalice of Calling|r
.goto 1165,42.76,83.64,12,0
.goto 1165,43.13,83.07
.complete 48452,2 
step
.goto 1165,41.82,82.83,30,0
.goto 1165,41.67,77.10,30,0
.goto 1165,43.13,83.07
>>杀死|cRXP_ENEMY_Crimson邪教分子|r。掠夺他们的|cRXD_Loot_黑暗崇拜物|r
.complete 48452,1 
.mob Crimson Cultist
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Witch Doctor Jala|r
.goto 1165,42.87,79.27,15,0
.goto 1165,44.25,82.15
.turnin 48452 >>Turn in The Red Market
.accept 48454 >>接任务: |cRXP_WARN_邪恶罪证|r
.target Witch Doctor Jala
step
#completewith next
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_FRIENDLY_Street Scamps|r. |cRXP_WARN_Be careful as they vanish after a few seconds|r
*You can find some at the waypoint marks on your minimap but they run around everywhere
.goto 1165,51.65,93.32,0
.goto 1165,49.19,89.77,0
.goto 1165,52.30,82.86,0
.goto 1165,48.74,89.43,0
.complete 48404,1 
.target Street Scamp
step
.goto 1165,45.31,80.04,30,0
.goto 1165,47.52,87.26,30,0
.goto 1165,46.97,89.89,30,0
.goto 1165,48.45,83.77,30,0
.goto 1165,45.31,80.04
>>杀死|cRXP_ENEMY_Gurubash|r、|cRXD_ENEMY_Amani|r和|cRXP_ENEMY_Sandfury Thugs|r
.complete 46926,1 
.mob Gurubashi Thug
.mob Amani Thug
.mob Sandfury Thug
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r and |cRXP_FRIENDLY_Yazma|r
.turnin 46926 >>Turn in Shakedown
.turnin 48454 >>Turn in Evidence of Evil
.accept 46929 >>接任务: |cRXP_WARN_威慑|r
.goto 1165,50.06,85.07
.turnin 46846 >>Turn in The Word of Zul
.accept 46927 >>接任务: |cRXP_WARN_塔阿曼的惩罚|r
.accept 46928 >>接任务: |cRXP_WARN_塔尔法拉克的惩罚|r
.goto 1165,50.05,84.76
.target Zolani
.target Yazma
step
#completewith Gong
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_FRIENDLY_Street Scamps|r. |cRXP_WARN_Be careful as they vanish after a few seconds|r
*You can find some at the waypoint marks on your minimap but they run around everywhere
.goto 1165,51.65,93.32,0
.goto 1165,49.19,89.77,0
.goto 1165,52.30,82.86,0
.goto 1165,48.74,89.43,0
.goto 1165,52.08,83.02,15,0
.goto 1165,50.02,89.97,0,0
.complete 48404,1 
.target Street Scamp
step
#completewith GahzRagon
.goto 1165,48.39,77.83,40,0
>>杀死|cRXP_ENEMY_Sandfury巨魔|r。掠夺它们的|cRXX_Loot_头|r
.complete 46929,2 
.mob Sandfury Axe Thrower
.mob Sandfury Axe Dunerider
.mob Sandfury Axe Speaker
step
#label Gong
#completewith next
.goto 1165,46.61,73.87
.cast 3365 >>点击古宫召唤伽师
step
#label GahzRagon
.goto 1165,46.63,72.61
>>杀死|cRXP_ENEMY_Gahz'ragon|r。掠夺他的|cRXP_Loot_tunes|r
.complete 46928,1 
.mob Gahz'ragon
step
.goto 1165,46.61,70.64,40,0
.goto 1165,47.71,72.37,40,0
.goto 1165,45.82,77.73,40,0
.goto 1165,48.39,77.83
>>杀死|cRXP_ENEMY_Sandfury巨魔|r。掠夺它们的|cRXX_Loot_头|r
.complete 46929,2 
.mob Sandfury Axe Thrower
.mob Sandfury Axe Dunerider
.mob Sandfury Axe Speaker
step
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
step
.goto 1165,51.74,77.65,40,0
.goto 1165,54.22,79.81,40,0
.goto 1165,57.31,80.80
>>杀死|cRXP_ENEMY_Amani巨魔|r。掠夺它们的|cRXX_Loot_heads|r
.complete 46929,1 
.mob Amani Warrior
step
#completewith next
.goto 1165,56.19,87.53
.cast 3365 >>点击|cRXP_PICK_Ancient Gong|r召唤一名|cRXP_ENEMY_Amani弟子|r
step
>>杀死|cRXP_ENEMY_Amani弟子|r
*|cRXP_WARN_Don't use the gong too fast. Sometimes it can bug and you have to wait for around 2 minutes until you can interact with the gong again|r
.goto 1165,56.04,86.88
.complete 46927,1,1 
.mob Disciple of Akil'zon
.mob Disciple of Nalorakk
.mob Disciple of Jan'alai
.mob Disciple of Halazzi
step
#completewith next
.goto 1165,56.19,87.53
.cast 3365 >>点击|cRXP_PICK_Ancient Gong|r召唤一名|cRXP_ENEMY_Amani弟子|r
step
>>杀死|cRXP_ENEMY_Amani弟子|r
*|cRXP_WARN_Don't use the gong too fast. Sometimes it can bug and you have to wait for around 2 minutes until you can interact with the gong again|r
.goto 1165,56.04,86.88
.complete 46927,1,2 
.mob Disciple of Akil'zon
.mob Disciple of Nalorakk
.mob Disciple of Jan'alai
.mob Disciple of Halazzi
step
#completewith next
.goto 1165,56.19,87.53
.cast 3365 >>点击|cRXP_PICK_Ancient Gong|r召唤一名|cRXP_ENEMY_Amani弟子|r
step
>>杀死|cRXP_ENEMY_Amani弟子|r
*|cRXP_WARN_Don't use the gong too fast. Sometimes it can bug and you have to wait for around 2 minutes until you can interact with the gong again|r
.goto 1165,56.04,86.88
.complete 46927,1,3 
.mob Disciple of Akil'zon
.mob Disciple of Nalorakk
.mob Disciple of Jan'alai
.mob Disciple of Halazzi
step
#completewith next
.goto 1165,56.19,87.53
.cast 3365 >>点击|cRXP_PICK_Ancient Gong|r召唤一名|cRXP_ENEMY_Amani弟子|r
step
>>杀死|cRXP_ENEMY_Amani弟子|r
*|cRXP_WARN_Don't use the gong too fast. Sometimes it can bug and you have to wait for around 2 minutes until you can interact with the gong again|r
.goto 1165,56.04,86.88
.complete 46927,1 
.mob Disciple of Akil'zon
.mob Disciple of Nalorakk
.mob Disciple of Jan'alai
.mob Disciple of Halazzi
step
#completewith Rooka
.goto 1165,54.41,87.92,25 >>抄近路跳下去
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_FRIENDLY_Street Scamps|r. |cRXP_WARN_Be careful as they vanish after a few seconds|r
.goto 1165,51.65,93.32,30,0
.goto 1165,49.19,89.77,30,0
.goto 1165,52.30,82.86,30,0
.goto 1165,48.74,89.43,30,0
.goto 1165,51.65,93.32,30,0
.goto 1165,49.19,89.77,30,0
.goto 1165,52.30,82.86,30,0
.goto 1165,48.74,89.43
.complete 48404,1 
.target Street Scamp
step
#label Rooka
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scrollsage Rooka|r
.goto 1165,56.25,89.70,15,0
.goto 1165,55.95,88.83
.turnin 48404 >>Turn in The Scamps
.accept 48405 >>接任务: |cRXP_WARN_好人先生|r
.target Scrollsage Rooka
step
>>|cRXP_WARN_爬起来，顺着箭头走。不要和任何人说话|r
.goto 1165,59.06,90.73,12,0
.goto 1165,59.11,88.71,12,0
.goto 1165,57.21,87.77
.complete 48405,1 
step
.goto 1165,57.20,87.39
>>杀死|cRXP_ENEMY_Mista Nice|r。|cRXP_WARN_移出他放置的巫毒图腾|r
.complete 48405,2 
.mob Mista Nice
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t再跳下去。与|cRXP_FRIENDLY_Scrollsage Rooka|r交谈
.goto 1165,55.95,88.83
.turnin 48405 >>交任务: |cRXP_FRIENDLY_密斯特|ra Nice
.target Scrollsage Rooka
step
.isQuestAvailable 49285
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavesinger De'zan|r to take a boat to Seeker's Outpost
.goto 1165,52.83,95.78
.vehicle 133540 >>探索者的前哨船之旅
.timer 59,Seeker's Outpost RP
.target Wavesinger De'zan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koba|r and |cRXP_FRIENDLY_Batu|r
.accept 49285 >>接任务: |cRXP_WARN_小小宝藏|r
.goto 862,70.27,65.02,0,0
.accept 49284 >>接任务: |cRXP_WARN_喜讯传来|r
.goto 862,70.28,64.95,0,0
.target Koba
.target Batu
step
#completewith ClueThree
>>杀死|cRXP_ENEMY_Murlocs|r并在|cRXP_FRIENDLY_Tadpoles|r上运行以恐吓它们
.complete 49315,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tSearch the |cRXP_PICK_Bag|r under the tree
.goto 862,71.19,64.58
.complete 49284,1 
step
>>掠夺|cRXP_PICK_cage|r
.goto 862,71.66,64.15
.complete 49285,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tSearch the |cRXP_PICK_Scroll|r against the tree
.goto 862,72.65,63.05
.complete 49284,2 
step
>>地面上的织机|cRXP_PICK_Spitzy|r
.goto 862,73.10,64.81
.complete 49285,3 
step
>>掠夺漂浮在水面上的|cRXP_PICK_炼金师之石|r
.goto 862,73.19,67.22
.complete 49285,2 
step
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]移动速度更快
.use 132516
.itemcount 132516,1
step
#label ClueThree
>>|TInterface/GossipFrame/HealerGossipIcon:0|tSearch the |cRXP_PICK_Scroll Case|r
.goto 862,74.02,62.08
.complete 49284,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Choa|r and |cRXP_FRIENDLY_Deyon|r
.goto 862,73.68,60.99
.turnin 49285 >>Turn in Tiny Treasures
.turnin 49284 >>Turn in Perfect Tidings
.accept 49286 >>接任务: |cRXP_WARN_笼中智计|r
.target Choa
.target Deyon
step
>>进入洞穴。杀死|cRXP_ENEMY_Sil'thrus|r。抢走他的|cRXX_Loot_key|r
.goto 862,73.66,60.49,20,0
.goto 862,74.60,59.34
.complete 49286,1 
.mob Sil'thrus
step
.goto 862,73.68,60.99
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_cage|r, then talk to |cRXP_FRIENDLY_Deyon|r
.complete 49286,2 
.turnin 49286 >>Turn in Caged Wisdom
.accept 49287 >>接任务: |cRXP_WARN_失踪的龟群|r
.accept 49288 >>接任务: |cRXP_WARN_卷轴猎手|r
.target Deyon
step
#completewith ZuldazarLostChelonians
>>杀死|cRXP_ENEMY_Murlocs|r和|cRXX_ENEMY_Nagas|r。在|cRXP_FRIENDLY_Tadpoles|r上运行以恐吓它们
.complete 49315,1 
step
#sticky
#completewith ZuldazarLostChelonians
>>杀死|cRXP_ENEMY_Nazeshi Tempest Wielders|r。掠夺他们的|cRXX_Loot_卷轴|r
.complete 49288,1 
.mob Nazeshi Tempest-Wielder
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_cages|r to free |cRXP_FRIENDLY_Kono|r
.goto 862,73.90,65.85
.complete 49287,1 
.target Kono
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_cages|r to free |cRXP_FRIENDLY_Rauloo|r
.goto 862,75.13,66.55
.complete 49287,2 
.target Rauloo
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_cages|r to free |cRXP_FRIENDLY_Akru|r
.goto 862,75.49,66.25,5,0
.goto 862,75.75,66.55,5,0
.goto 862,77.05,66.48
.complete 49287,3 
.target Akru
step
#label ZuldazarLostChelonians
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_cages|r to free |cRXP_FRIENDLY_Crosh|r
*|cRXP_WARN_DO NOT PULL Tidecaller Nezara, she is level 60|r
.goto 862,76.66,65.67,25,0
.goto 862,76.66,64.88,25,0
.goto 862,77.29,64.36
.complete 49287,4 
.target Crosh
step
#label ShallowsTI
>>杀死|cRXP_ENEMY_Murlocs|r和|cRXX_ENEMY_Nagas|r。在|cRXP_FRIENDLY_Tadpoles|r上运行以恐吓它们
.goto 862,74.67,65.85
.complete 49315,1 
step
>>杀死|cRXP_ENEMY_Nazeshi Tempest Wielders|r。掠夺他们的|cRXX_Loot_卷轴|r
.goto 862,76.66,65.67,25,0
.goto 862,76.66,64.88,25,0
.goto 862,77.29,64.36
.complete 49288,1 
.mob Nazeshi Tempest-Wielder
step
#requires ShallowsTI
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deyon|r
.goto 862,75.22,61.49
.turnin 49287 >>Turn in Lost Chelonians
.turnin 49288 >>Turn in Scrollhunters
.accept 49289 >>接任务: |cRXP_WARN_特别的石头|r
.target Deyon
step
>>在湖心石中掠夺|cRXP_PICK_Stone Fragment|r
>>杀死|cRXP_ENEMY_Tidemistress Nazesh|r。为她掠夺她|cRXX_Loot_orders|r
*You can use the Scroll of Storm Control for an extra ability
.goto 862,76.67,61.42
.use 157539
.complete 49289,2 
.complete 49289,1 
.mob Tidemistress Nazesh
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deyon|r. 等待RP事件
.goto 862,75.22,61.49
.turnin 49289 >>Turn in A Special Stone
.target Deyon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。再次与|cRXP_FRIENDLY_Dyon|r通话
.goto 862,75.22,61.49
.accept 51407 >>接任务: |cRXP_WARN_寻找他们的文字|r
.target Deyon
step
>>接受门户|cRXP_FRIENDLY_Deyon|r传票。
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akru|r
.goto 862,70.56,64.89
.turnin 51407 >>Turn in Find Their Words
.target Akru
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Scroll of Flight|r
.goto 862,70.45,65.30
.fly Port of Zandalar >>Fly to Port of Zandalar
.target Scroll of Flight
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yazma|r and |cRXP_FRIENDLY_Zolani|r
.turnin 46927 >>Turn in Punishment of Tal'aman
.turnin 46928 >>Turn in Punishment of Tal'farrak
.goto 1165,50.05,84.76
.turnin 46929 >>Turn in Deterrent
.accept 50881 >>接任务: |cRXP_WARN_皇家报告|r
.goto 1165,50.05,85.08
.target Yazma
.target Zolani
step
#completewith ZuldazarRoyalReport
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Ripa the Wind Ripper|r
.goto 1165,52.09,90.10
.fly The Great Seal >>Fly to The Great Seal
.target Ripa the Wind Ripper
step
#completewith ZuldazarRoyalReport
.isQuestTurnedIn 47436
.vehicle 131154 >>点击帕库的|cRXP_PICK_Totem|r
.goto 1165,51.37,40.95
.target Totem of Pa'ku
step
#completewith ZuldazarRoyalReport
.isQuestTurnedIn 47443
.goto 1165,49.93,42.24,10,0
.goto 1164,37.75,71.70,10,0
.goto 1164,20.56,72.09,5 >>乘电梯到|cRXP_FRIENDLY_King Rastakhan|r
step
#label ZuldazarRoyalReport
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Habutu|r. You may have to wait when you turned in the other quests first
.goto 1165,49.43,44.77,20,0
.goto 1165,50.03,46.54
.turnin 50881 >>Turn in Royal Report
.target Habutu
step
#label ZuldazarFalseProphecies
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.goto 1165,49.92,46.63
.turnin 47432 >>Turn in The Bargain is Struck
.turnin 49663 >>Turn in False Prophecies
.target King Rastakhan
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#veteran
#group RestedXP Horde 10-60
#name 3 Horde Zuldazar 2
#displayname Chapter 5 - Zuldazar End
#next 4部落银松森林
<< Horde

step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.target King Rastakhan
.goto 1165,49.92,46.63
.accept 49122 >>接任务: |cRXP_WARN_港口激战|r
step
.maxlevel 29
#completewith ZuldazarWantedSabertuskPrime

.goto 1165,41.93,40.74,10,0
.goto 1165,41.27,40.58,5,0
.goto 862,54.94,42.00,5,0
.goto 862,54.58,41.60,15 >>爬起来跳进水里
.goto 862,53.46,42.25,8 >>|TInterface/GossipFrame/HealerGossipIcon:0|tClimb the mountain by Clicking on the |cRXP_PICK_Ropes|r
.itemcount 109076,<1
step
#completewith ZuldazarWantedSabertuskPrime
.use 109076
.goto 862,51.62,45.45
.cast 126389 >>Use a Goblin Glider Kit
.itemcount 109076,1
step
.maxlevel 29
#label ZuldazarWantedSabertuskPrime
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the |cRXP_PICK_WANTED board|r
.goto 862,51.62,45.45
.accept 51071 >>接任务: |cRXP_WARN_通缉：剜齿龙后|r
.accept 51072 >>接任务: |cRXP_WARN_通缉：肥指猩猩长者|r
step
.isOnQuest 51071
>>杀死一个|cRXP_ENEMY_Prime Thumpknock|r
>>|cRXP_WARN_半硬精英，不应该太难杀死|r
.goto 862,52.69,45.05
.complete 51072,1 
.mob Prime Thumpknuckle
step
.isOnQuest 51071
>>杀死一个|cRXP_ENEMY_Sabertusk女皇|r
>>|cRXP_WARN_非常强硬的精英，只有当你知道该做什么和/或正在使用传家宝时才能尝试|r
*Even with heirlooms this elite can be very difficult depending on your class
.goto 862,52.36,47.76
.complete 51071,1 
.mob Sabertusk Empress
step
.isQuestComplete 51071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaz'ki|r
.target Shaz'ki
.goto 862,51.65,50.53
.turnin 51071 >>Turn in WANTED: Sabertusk Empress
step
.isQuestComplete 51072
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saz'ki|r
.target Saz'ki
.goto 862,51.65,50.53
.turnin 51072 >>Turn in WANTED: Prime Thumpknuckle
step
.maxlevel 29
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
.maxlevel 29
#label ZuldazarGorillaGorge
#completewith ZuldazarPeaceLovingGorillas
>>杀死区域内的|cRXP_ENEMY_Gorillas|r
.accept 49918 >>接任务: |cRXP_WARN_猩猩峡谷|r
.complete 49918,1 
.mob Da'kani Pugilist
.mob Da'kani Highbrow
.mob Zayoos
.mob King Da'ka
step
.maxlevel 29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tsunga|r
.goto 862,51.51,53.77,15,0
.goto 862,50.17,54.57
.accept 49920 >>接任务: |cRXP_WARN_大猩猩之战|r
.target Tsunga
step
.isOnQuest 49920
#completewith ZuldazarDakaniGorillas
+拿起一个|cRXP_Pick_Kaja'mite Chunk|r获得伤害增益
step
#title Gorilla released 1/6
.isOnQuest 49920
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,49.95,54.94
.complete 49920,1,1 
step
#title Gorilla released 2/6
.isOnQuest 49920
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,49.56,55.26
.complete 49920,1,2 
step
#title Gorilla released 3/6
.isOnQuest 49920
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,49.03,54.79
.complete 49920,1,3 
step
#title Gorilla released 4/6
.isOnQuest 49920
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,48.63,53.91
.complete 49920,1,4 
step
.isOnQuest 49920
#completewith next
.goto 862,48.00,54.24,30,0
+如果你愿意，你可以杀死稀有的|cRXP_ENEMY_Zayoos|r。他扔下了一个很好的小饰品，并计入奖金目标
step
#title Gorilla released 5/6
.isOnQuest 49920
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,48.14,53.16
.complete 49920,1,5 
step
#title Gorilla released 6/6
.isOnQuest 49920
#label ZuldazarPeaceLovingGorillas
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,48.09,51.24
.complete 49920,1 
step
.isQuestComplete 49920
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tsunga|r
.goto 862,48.20,51.83,20,0
.goto 862,48.62,52.39,20,0
.goto 862,47.42,52.43
.turnin 49920 >>Turn in Gorilla Warfare
.target Tsunga
step
.isOnQuest 49918
#label ZuldazarDakaniGorillas
>>杀死区域内的|cRXP_ENEMY_Gorillas|r
.waypoint 862,48.93,54.52,-25,0
.complete 49918,1 
.mob Da'kani Pugilist
.mob Da'kani Highbrow
.mob Zayoos
.mob King Da'ka
step
.maxlevel 29
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
.maxlevel 29
.isQuestTurnedIn 49920
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r
.goto 862,47.92,60.45
.turnin 49122 >>Turn in A Port in Peril
.accept 49144 >>接任务: |cRXP_WARN_赞达拉巨魔的愤怒|r
.target Zolani
step
.maxlevel 29
.isQuestTurnedIn 49122
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Habutu|r
.target Habutu
.goto 862,47.86,60.45
.accept 49145 >>接任务: |cRXP_WARN_一个都不能少|r
step
.maxlevel 29
.isQuestTurnedIn 49122
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaza'Jin|r
.target Kaza'Jin
.goto 862,47.13,60.47
.accept 49146 >>接任务: |cRXP_WARN_灵魂财产|r
step
.isOnQuest 49144
#completewith ZuldazarGrimoireoftheOtherSide
>>杀死该区域的|cRXP_ENEMY_Mogu入侵者|r
.complete 49144,1 
.mob Kao-Tien Marauder
.mob Charged Sentinel
.mob Kao-Tien Subjugator
step
.isOnQuest 49145
#title Rally Rastair Defenders
>>使用|cRXP_FRIENDLY_Rastari Defenders|r附近的|T133729:0|t[Rastari Skull Whistle]来召集他们
.goto 862,46.80,60.66
.use 153524
.complete 49145,1,2 
step
.isOnQuest 49145
#title Rally Rastair Defenders
>>使用|cRXP_FRIENDLY_Rastari Defenders|r附近的|T133729:0|t[Rastari Skull Whistle]来召集他们
.goto 862,46.34,60.17
.use 153524
.complete 49145,1,5 
step
.isOnQuest 49146
#title Reclaimed Bijous
>>拿起|cRXP_Pick_Reclaimed Bijous|r
.goto 862,45.61,60.38
.complete 49146,1 
step
.isOnQuest 49145
#title Rally Rastair Defenders
>>使用|cRXP_FRIENDLY_Rastari Defenders|r附近的|T133729:0|t[Rastari Skull Whistle]来召集他们
.goto 862,45.61,60.38
.use 153524
.complete 49145,1,7 
step
.isOnQuest 49145
#title Rally Rastair Defenders
>>使用|cRXP_FRIENDLY_Rastari Defenders|r附近的|T133729:0|t[Rastari Skull Whistle]来召集他们
.goto 862,45.30,60.91
.use 153524
.complete 49145,1,12 
step
.isOnQuest 49146
#title Venerated Remains
>>拾取|cRXP_Pick_Venered Remains|r
.goto 862,45.30,60.91,10,0
.goto 862,45.81,62.45
.complete 49146,3 
step
.isOnQuest 49146
#label ZuldazarGrimoireoftheOtherSide
#title Grimoire of the Other Side
>>跳下去拿起另一边的|cRXP_pick_Grimoire |r
.goto 862,46.80,61.90
.complete 49146,2 
step
.isOnQuest 49144
>>杀死|cRXP_ENEMY_Mogu入侵者|r
.goto 862,46.45,60.75
.goto 862,46.45,60.80
.complete 49144,1 
.mob Kao-Tien Marauder
.mob Charged Sentinel
.mob Kao-Tien Subjugator
step
.isQuestComplete 49145
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Habutu|r
.goto 862,47.87,60.44
.turnin 49145 >>Turn in No Troll Left Behind
.target Habutu
step
.isQuestComplete 49144
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalani|r
.goto 862,47.92,60.45
.turnin 49144 >>Turn in Wrath of the Zandalari
.target Zalani
step
.isOnQuest 49146
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaza'jin|r
.goto 862,48.08,60.37
.turnin 49146 >>Turn in Spirits' Belongings
.target Kaza'jin
step
.maxlevel 29
.isQuestTurnedIn 49146
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaza'jin|r
.goto 862,48.08,60.37
.accept 49149 >>接任务: |cRXP_WARN_妙用巫毒|r
.target Kaza'jin
step
.maxlevel 29
.isQuestTurnedIn 49146
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalani|r
.goto 862,47.92,60.45
.accept 49148 >>接任务: |cRXP_WARN_分崩离析|r
.target Zalani
step
.maxlevel 29
.isQuestTurnedIn 49146
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Habutu|r
.goto 862,47.87,60.44
.accept 49147 >>接任务: |cRXP_WARN_展现实力|r
.target Habutu
step
.isOnQuest 49148
#completewith ZuldazarBlueRunesTurnin
+|cRXP_WARN_站在地上的蓝色符文中会给你100%的暴击几率|r
step
.isOnQuest 49148
#completewith ZuldazarSpiritObelisksactivated
>>杀死|cRXP_ENEMY_Stormbound征服者|r
.complete 49148,1 
.mob Stormbound Conquerer
step
#title Obelisk activated 1/5
.isOnQuest 49149
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Spirit Obelisk|r
.goto 862,47.22,61.86
.complete 49149,1,1 
step
#title Obelisk activated 2/5
.isOnQuest 49149
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Spirit Obelisk|r
.goto 862,47.97,63.06
.complete 49149,1,2 
step
.isOnQuest 49147
>>杀死|cRXP_ENEMY_Jao-Ti|r
.goto 862,48.15,64.48
.complete 49147,1 
.mob Jao-Ti the Thunderous
step
#title Obelisk activated 3/5
.isOnQuest 49149
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Spirit Obelisk|r
.goto 862,47.45,65.14
.complete 49149,1,3 
step
#title Obelisk activated 4/5
.isOnQuest 49149
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Spirit Obelisk|r
.goto 862,47.86,67.24,10,0
.goto 862,47.38,66.92,5,0
.goto 862,47.48,66.76
.complete 49149,1,4 
step
.isOnQuest 49147
>>杀死|cRXP_ENEMY_Zheng|r
.goto 862,45.83,66.51
.complete 49147,2 
.mob Subjugator Zheng
step
#title Obelisk activated 5/5
.isOnQuest 49149
#label ZuldazarSpiritObelisksactivated
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Spirit Obelisk|r
.goto 862,47.26,66.11,15,0
.goto 862,48.18,65.42,15,0
.goto 862,48.55,64.51
.complete 49149,1 
step
.isOnQuest 49148
>>杀死|cRXP_ENEMY_Stormbound征服者|r
.goto 862,48.61,65.60
.complete 49148,1 
.mob Stormbound Conquerer
step
.isQuestComplete 49149
#label ZuldazarBlueRunesTurnin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaza'jin|r
.goto 862,49.59,64.48
.turnin 49149 >>Turn in Embrace the Voodoo
.turnin 49147 >>Turn in Show of Strength
.turnin 49148 >>Turn in Crumbling Apart
.target Kaza'jin
step
.maxlevel 29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaza'jin|r
.goto 862,49.59,64.48
.accept 49309 >>接任务: |cRXP_WARN_雷霆陨落|r
.target Kaza'jin
step
.isOnQuest 49309
>>杀死船上的|cRXP_ENEMY_军阀高|r
.goto 862,50.19,65.38
.complete 49309,1 
.mob Warlord Kao
step
.isQuestTurnedIn 49148
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaza'jin|r
.goto 862,49.59,64.48
.turnin 49309 >>Turn in Thunder's Fall
.accept 49310 >>接任务: |cRXP_WARN_先知的工作|r
.target Kaza'jin
step
.isOnQuest 49310
#completewith next
+您可以跳过下一个过场（Esc->是）
step
.isOnQuest 49310
>>安装|cRXP_FRIENDLY_Scarbeak|r
.goto 862,49.51,64.34
.complete 49310,1 
.target Scarbeak
step
.isQuestComplete 49310
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r
.goto 1164,41.33,72.25
.turnin 49310 >>Turn in The Prophet's Play
.target Baine Bloodhoof
step
.maxlevel 29
.isQuestTurnedIn 49310
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r
.accept 47509 >>接任务: |cRXP_WARN_选民之台|r
.accept 51101 >>接任务: |cRXP_WARN_受伤的大王|r
.target Baine Bloodhoof
step
.isQuestTurnedIn 47436
#completewith ZuldazarTerraceoftheChosen
.goto 1165,49.92,33.18
.cast 6478 >>点击帕库的|cRXP_PICK_Altar|r获得移动速度buff
step
.isQuestTurnedIn 47443
#completewith ZuldazarTerraceoftheChosen
.goto 1165,49.92,33.18
.cast 6478 >>点击|cRXP_PICK_Gonk|r祭坛获得被动伤害增益
step
.isQuestComplete 47509
#label ZuldazarTerraceoftheChosen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaza'jin|r
.goto 1165,42.30,26.63,20,0
.goto 1165,42.6,21.4
.turnin 47509 >>Turn in Terrace of the Chosen
.target Kaza'jin
step
.isQuestTurnedIn 47509
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaza'jin|r
.goto 1165,42.6,21.4
.accept 47897 >>接任务: |cRXP_WARN_赞枢利的背叛者|r
.accept 47915 >>接任务: |cRXP_WARN_即刻救援|r
.target Kaza'jin
step
.isOnQuest 47897
#completewith next
>>杀死该区域的|cRXP_ENEMY_Zanchuli|r
.complete 47897,1 
.mob Zanchuli Betrayer
.mob Zanchuli Berserker
.mob Zanchuli Backstabber
step
.isOnQuest 47915
>>杀死|cRXP_ENEMY_Hexmater Kala|r。为她掠夺她|cRXX_Loot_恋物癖|r
.goto 1165,41.42,18.84,8,0
.goto 1165,43.51,17.71
.complete 47915,1 
.mob Hexmother Kala
step
.isOnQuest 47897
>>杀死该区域的|cRXP_ENEMY_Zanchuli|r
.goto 1165,39.62,13.19
.complete 47897,1 
.mob Zanchuli Betrayer
.mob Zanchuli Berserker
.mob Zanchuli Backstabber
.mob Zulian Inquisitor
step
.isQuestTurnedIn 47509
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.goto 1165,39.3,13.7
.turnin 47897 >>Turn in Zanchuli Traitors
.turnin 47915 >>Turn in Rescuing the Taken
.target Wardruid Loti
step
.isQuestTurnedIn 47915
.maxlevel 29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.goto 1165,39.3,13.7
.accept 47518 >>接任务: |cRXP_WARN_拉尔|r
.accept 47520 >>接任务: |cRXP_WARN_隔墙有耳|r
.target Wardruid Loti
step
.isOnQuest 47520
#sticky
#label ZuldazarEyesEarsYazma
>>尝试在到达顶部之前杀死5-6个|cRXP_ENEMY_spider|r
.goto 1165,43.63,7.41,0,0
.complete 47520,1 
.mob Eye of Yazma
.mob Ear of Yazma
step
.isOnQuest 47518
>>爬上吡喃酰胺。杀死|cRXP_ENEMY_Crazzak|r
.goto 1167,46.31,39.87,10,0
.goto 1167,36.76,25.53,10,0
.goto 1167,44.09,15.00,10,0
.goto 1166,78.67,86.33,10,0
.goto 1165,46.08,15.98,10,0
.goto 1165,43.63,7.39
.complete 47518,1 
.mob Crazzak
step
.isQuestComplete 47518
#requires ZuldazarEyesEarsYazma
.goto 1165,43.63,7.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r and |cRXP_FRIENDLY_Wardruid Loti|r
.turnin -47518 >>Turn in Raal
.turnin -47520 >>Turn in Walls Have Ears
.target Hexlord Raal
.target Wardruid Loti
step
.isQuestTurnedIn 47518
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r
.goto 1165,42.55,9.48
.accept 47521 >>接任务: |cRXP_WARN_洛阿神灵之园的午夜|r
.target Hexlord Raal
step
.isOnQuest 47521
>>坐骑|cRXP_FRIENDLY_Ata the Wingflord|r
.goto 1165,42.51,10.04
.complete 47521,1 
.target Ata the Winglord
step
.isQuestTurnedIn 47518
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.goto 862,50.69,29.66
.turnin 47521 >>Turn in Midnight in the Garden of the Loa
.accept 47522 >>接任务: |cRXP_WARN_猎人|r
.target Wardruid Loti
step
.isQuestTurnedIn 47521
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r
.goto 862,50.69,29.57
.accept 47963 >>接任务: |cRXP_WARN_远古神灵|r
.target Hexlord Raal
step
.isOnQuest 47522
#completewith ZuldazarMistressofLies
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the small |cRXP_PICK_Voodoo Piles|r on the ground and kill every |cRXP_ENEMY_mob|r you see
.accept 47527 >>接任务: |cRXP_WARN_异端仪式|r
.complete 47527,1 
.mob Atal'Shadra Bloodletter
.mob Atal'Shadra Tormentor
.mob Spawn of Shadra
step
.isOnQuest 47963
>>杀死周围的|cRXP_ENEMY_Shadra背叛者|r以营救他
.goto 862,50.24,30.58,15,0
.goto 862,50.99,32.17,20,0
.goto 862,51.28,31.99,10,0
.goto 862,52.07,33.14
.complete 47963,1 
.mob Shadra Betrayer
step
.isOnQuest 47963
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pa'ku|r
.goto 862,52.1,33.1
.turnin 47963 >>Turn in The Ancient One
.target Pa'ku
step
.isOnQuest 47522
>>跑上小山营救|cRXP_FRIENDLY_Gonk|r
.goto 862,50.13,33.46,15,0
.goto 862,49.18,32.45,15,0
.goto 862,48.79,31.79
.complete 47522,1 
step
.isQuestTurnedIn 47436
#completewith ZuldazarTheHunter
.goto 862,48.79,32.08
.cast 6478 >>点击帕库的|cRXP_PICK_Altar|r获得移动速度buff
step
.isQuestTurnedIn 47443
#completewith ZuldazarTheHunter
.goto 862,48.59,31.59
.cast 6478 >>点击|cRXP_PICK_Gonk|r祭坛获得被动伤害增益
step
#label ZuldazarTheHunter
.isQuestComplete 47522
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gonk|r
.goto 862,48.4,32.1
.turnin 47522 >>交任务: |cRXP_FRIENDLY_狩猎|rer
.target Gonk
step
.isQuestTurnedIn 47522
#label ZuldazarMistressofLies
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acolyte Mali|r
.goto 862,48.54,31.95
.accept 47528 >>接任务: |cRXP_WARN_谎言女神|r
.target Acolyte Mali
step
.isOnQuest 47527
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the small |cRXP_PICK_Voodoo Piles|r on the ground and kill every |cRXP_ENEMY_mob|r you see
.goto 862,48.69,31.21,10,0
.goto 862,48.91,29.76,8,0
.goto 862,49.35,29.46,8,0
.goto 862,49.34,29.08,8,0
.goto 862,47.70,28.85,5,0
.goto 862,49.15,28.39,20,0
.goto 862,48.00,30.44,30,0
.goto 862,49.95,29.84,30,0
.goto 862,49.41,28.39
.complete 47527,1 
.mob Atal'Shadra Bloodletter
.mob Atal'Shadra Tormentor
.mob Spawn of Shadra
step
.isOnQuest 47528
#label ZuldazarVolkaalYazma
>>进入神殿并击败|cRXP_ENEMY_Vol'kaal|r
.goto 862,47.72,28.85,10,0
.goto 862,47.10,27.79
.complete 47528,1 
.complete 47528,2 
.mob Vol'kaal
step
.isQuestComplete 47528
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
*You have to relog if you don't see her
.goto 862,47.92,29.07,15,0
.goto 862,48.57,26.79
.turnin 47528 >>交任务: |cRXP_FRIENDLY_密斯特|rress of Lies
step
.maxlevel 29
.isQuestTurnedIn 47528
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beastmother Jabati|r
.goto 862,47.32,25.13
.accept 49679 >>接任务: |cRXP_WARN_蛇人入侵|r
.target Beastmother Jabati
step
.maxlevel 29
.isQuestTurnedIn 47528
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bladeguard Sonji|r
.goto 862,47.25,24.95
.accept 49678 >>接任务: |cRXP_WARN_尖塔行动|r
.accept 49680 >>接任务: |cRXP_WARN_唤天者索尔托克|r
.target Bladeguard Sonji
step
.isOnQuest 49679
#sticky
#label ZuldazarSethrakInvader
>>杀死区域中的|cRXP_ENEMY_Sethrak|r和|cRXX_ENEMY_Krolusk|r
.goto 862,45.80,23.70,0,0
.complete 49679,1 
.mob Sethrak Invader
.mob Sethrak Skycaller
.mob Krolusk Warcrawler
step
.isOnQuest 49679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lil'Tika|r
.goto 862,46.20,23.35
.accept 49681 >>接任务: |cRXP_WARN_小提|r
.target Lil'Tika
step
.isOnQuest 49681
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,46.20,23.35
.complete 49681,1 
step
.isOnQuest 49678
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Sethrak Spire|r to destroy it
.goto 862,46.00,22.78
.complete 49678,1,1 
step
.isOnQuest 49678
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Sethrak Spire|r to destroy it
.goto 862,45.62,23.03
.complete 49678,1,2 
step
.isOnQuest 49678
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Sethrak Spire|r to destroy it
.goto 862,45.11,24.06
.complete 49678,1,3 
step
.isOnQuest 49678
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Sethrak Spire|r to destroy it
.goto 862,44.34,24.49
.complete 49678,1 
step
.isOnQuest 49681
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with |cRXP_FRIENDLY_Chief Chan'tika|r on the ground
.goto 862,45.37,26.40
.complete 49681,2 
step
.isOnQuest 49680
>>杀死二楼的|cRXP_ENEMY_Skycaller Soltok|r
.goto 862,45.19,25.95,10,0
.goto 862,45.05,26.14,5,0
.goto 862,45.31,26.25
.complete 49680,1 
.mob Skycaller Soltok
step
#requires ZuldazarSethrakInvader
.isQuestComplete 49680
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bladeguard Sonji|r
.goto 862,47.25,24.95
.turnin 49678 >>Turn in I Spy a Spire
.turnin 49680 >>Turn in Skycaller Soltok
step
.isQuestComplete 49679
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beastmother Jabati|r
.goto 862,47.33,25.14
.turnin 49679 >>Turn in The Sethrak Incursion
.turnin 49681 >>Turn in Lil' Tika
step
.maxlevel 29
.isQuestTurnedIn 47436
#completewith ZuldazarTheWoundedKing
.goto 862,49.97,26.76
.cast 6478 >>点击帕库的|cRXP_PICK_Altar|r获得移动速度buff
step
.maxlevel 29
#completewith ZuldazarTheWoundedKing
.goto 862,49.72,26.29
.fly Nesingwary's Gameland, Zuldazar >>飞往内辛瓦利的游戏之地祖尔达扎
step
.maxlevel 29
#completewith next
.itemcount 132516,1
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
.maxlevel 29
#label ZuldazarTheWoundedKing
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r
.goto 862,70.71,20.31,40,0
.goto 862,76.69,18.98,40,0
.goto 862,76.70,16.28
.turnin 51101 >>Turn in The Wounded King
.accept 51680 >>接任务: |cRXP_WARN_邦桑迪的阴影下|r
.target Zolani
step
.isOnQuest 51680
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Jamil, |cRXP_FRIENDLY_约尔|r
.complete 51680,1 
.goto 862,76.47,16.00
.complete 51680,2 
.goto 862,76.45,16.16
.skipgossip 1
.skipgossip 124063,1
.target Jol the Ancient
.target Jamil Abul'housin
step
.isQuestComplete 51680
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jol the Ancient|r
.goto 862,76.45,16.16
.turnin 51680 >>Turn in In Bwonsamdi's Shadow
.accept 47735 >>接任务: |cRXP_WARN_古代始祖龟疗法|r
.target Jol the Ancient
step
.maxlevel 29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamil|r
.target Jamil Abul'housin
.goto 862,76.47,16.00
.accept 47739 >>接任务: |cRXP_WARN_复仇的气息|r
step
.maxlevel 29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r
.goto 862,76.69,16.25
.accept 50235 >>接任务: |cRXP_WARN_无处可逃|r
.target Zolani
step
.isOnQuest 47735
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with |cRXP_FRIENDLY_Laelani|r
.goto 862,78.59,13.12
.complete 47735,2 
.target Laelani
step
.isOnQuest 47739
#sticky
#label ZuldazarTraitorBlood
>>杀死该区域的|cRXP_ENEMY_trolls|r。掠夺他们的|cRXP_Loot_blood|r
.goto 862,78.23,19.48,0,0
.complete 47739,1 
.mob Atal'zul Executioner
.mob Atal'zul Assassin
step
.isOnQuest 50235
>>确保释放你看到的每一个村民
*|cRXP_WARN_You can free them while mounted|r
.goto 862,79.78,13.62,20,0
.goto 862,80.13,13.37,20,0
.goto 862,80.90,14.59,15,0
.goto 862,80.07,16.36
.complete 50235,1 
.target Zeb'ahari Villager
step
.isOnQuest 47735
>>拿起封套河豚脊
.goto 862,79.80,16.52
.complete 47735,1 
step
.isOnQuest 47735
.goto 862,79.34,16.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zeb'ahari Villager|r
.accept 47733 >>接任务: |cRXP_WARN_神语者的背叛|r
.target Zeb'ahari Villager
step
.isOnQuest 47733
>>杀死|cRXP_ENEMY_Loa-Speaker Kihara|r
.goto 862,78.51,20.24
.complete 47733,1 
.mob Loa-Speaker Kihara
step
.isOnQuest 47735
>>杀死|cRXP_ENEMY_Ol'Bubbly|r。掠夺他的|cRXX_Loot_foam|r
.goto 862,79.50,21.60
.complete 47735,3 
.mob Ol'Bubbly
step
.isQuestComplete 50235
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r
.goto 862,76.70,16.27
.turnin 50235 >>Turn in No Safe Haven
.turnin 47733 >>Turn in The Loa-Speaker's Betrayal
.target Zolani
step
.isQuestComplete 47739
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamil Abul'housin|r
.goto 862,76.47,16.01
.turnin 47739 >>Turn in The Scent of Vengeance
.target Jamil Abul'housin
step
.isQuestComplete 47735
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约尔|r
.goto 862,76.44,16.16
.turnin 47735 >>Turn in Ancient Tortollan Remedies
.target Jol the Ancient
step
.maxlevel 29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约尔|r
.goto 862,76.44,16.16
.accept 51677 >>接任务: |cRXP_WARN_疗体愈灵|r
.target Jol the Ancient
step
.isOnQuest 51677
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约尔|r
.goto 862,76.47,16.01
.skipgossip 124063,1
.complete 51677,1 
.target Jol the Ancient
step
.isOnQuest 51677
#label ZuldazarMendingBodyandSoul
>>这个房间里不时有人发光，把它捡起来，和|cRXP_FRIENDLY_Jol|r谈谈，把它带给他
.skipgossip
.goto 862,76.47,16.01
.complete 51677,2 
.target Jol the Ancient
step
.isQuestComplete 51677
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。与|cRXP_FRIENDLY_Jol the Ancient|r交谈
.goto 862,76.45,16.16
.turnin 51677 >>Turn in Mending Body and Soul
.target Jol the Ancient
step
.maxlevel 29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamil|r
.goto 862,76.47,16.00
.accept 47738 >>接任务: |cRXP_WARN_洛阿神灵的意志|r
.target Jamil
step
.isOnQuest 47738
>>与Rezan|r偶像的|cRXP_PICK_Shade交互
.goto 862,76.87,13.23
.complete 47738,1 
step
.isOnQuest 47738
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。与|cRXP_FRIENDLY_Rezan|r通话
.goto 862,77.01,13.24
.skipgossip
.complete 47738,2 
.target Rezan
step
.isOnQuest 47738
>>等待RP。拾取|cRXP_Pick_Rastakhan的灵魂|r
.goto 862,76.87,13.23
.complete 47738,3 
step
.isOnQuest 47738
>>|TInterface/GossipFrame/HealerGossipIcon:0|tYou have to wait a moment and then interact with |cRXP_PICK_Rastakhan's Body|r
.goto 862,76.46,16.06
.complete 47738,4 
step
.isQuestComplete 47738
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。与|cRXP_FRIENDLY_King Rastakhan|r通话
.goto 862,76.65,16.14
.turnin 47738 >>Turn in The Will of the Loa
.target King Rastakhan
step
.maxlevel 29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。与|cRXP_FRIENDLY_King Rastakhan|r和|cRXP-FRIENDLY_Zolani|r通话
.goto 862,76.65,16.14
.accept 47742 >>接任务: |cRXP_WARN_祖尔的叛乱|r
.accept 51678 >>接任务: |cRXP_WARN_拉斯塔哈之力|r
.accept 51679 >>接任务: |cRXP_WARN_奇怪的停靠|r
.target King Rastakhan
.target Zolani
step
.isOnQuest 47742
#completewith next
.goto 862,78.99,19.13
.vehicle 139838 >>安装|cRXP_PICK_钓鱼 Canoe|r
step
.isOnQuest 47742
#completewith ZuldazarSkullUlajan
*|cRXP_WARN_When the boat is in front of the ship you have to dismount manually otherwise it will bring you back to the coast|r
+与绳索互动进入飞船
step
.isOnQuest 47742
#completewith ZuldazarChroniclerTokini
>>杀死|cRXP_ENEMY_Mutonic Zandalari|r
.complete 47742,1 
.mob Atal'zul Chosen
.mob Atal'zul Fatesinger
.mob Rastakhan's Might Mutineer
step
.isOnQuest 51678
#label ZuldazarSkullUlajan
>>上楼去。杀死|cRXP_ENEMY_Ula'jan|r。掠夺他的|cRXX_Loot_头骨|r
.goto 862,81.27,19.59
.complete 51678,1 
.mob Windcaller Ula'jan
step
.isOnQuest 51679
#completewith next
.goto 862,81.16,20.48,10 >>Follow the arrow down
step
.isOnQuest 51679
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the Temple of |cRXP_PICK_Rezan Map|r
.goto 862,81.27,19.74
.complete 51679,1 
step
.isOnQuest 51679
>>|cRXP_WARN_下楼梯上船|r
.goto 1173,51.36,75.07
.complete 51679,2 
step
.isOnQuest 51679
#label ZuldazarChroniclerTokini
>>|TInterface/GossipFrame/HealerGossipIcon:0|tGo down the stairs one more time and interact with |cRXP_FRIENDLY_Chronicler To'kini|r
.goto 1174,43.58,81.73,5,0
.goto 1174,48.20,41.48
.complete 51679,3 
.target Chronicler To'kini
step
.isOnQuest 47742
>>杀死|cRXP_ENEMY_Mutonic Zandalari|r
.waypoint 862,81.14,20.55,-30,0
.complete 47742,1 
.mob Atal'zul Chosen
.mob Atal'zul Fatesinger
.mob Rastakhan's Might Mutineer
step << Warlock/Hunter
.isQuestComplete 47742
#completewith next
+|cRXP_WARN_点击宠物栏中的“被动”或宠物标签中的魔法书，将宠物设置为被动|r
step
.isQuestComplete 47742
#completewith next
.waypoint 862,81.14,20.55,-30,0
.deathskip >>死在船上，在精神治疗师那里复活
step << Warlock/Hunter
.isQuestComplete 47742
#completewith next
+|cRXP_WARN_提醒：将您的宠物设置为“辅助”|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.goto 862,76.67,16.13
.turnin -47742 >>Turn in Zul's Mutiny
.turnin -51678 >>Turn in Rastakhan's Might
.turnin -51679 >>Turn in A Strange Port of Call
.target King Rastakhan
step
.isQuestTurnedIn 51679
.maxlevel 29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.goto 862,76.67,16.13
.accept 47737 >>接任务: |cRXP_WARN_莱赞神殿|r
.target King Rastakhan
step
.isOnQuest 47737
#completewith ZuldazarTheTempleofRezan
>>Repair your gear
.goto 862,77.12,16.63
.vendor
step
.isOnQuest 47737
#requires ZuldazarVendor1
.itemcount 132516,1
#completewith ZuldazarTheTempleofRezan
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
.isOnQuest 47737
#label ZuldazarTheTempleofRezan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.goto 862,72.03,21.04
.turnin 47737 >>Turn in The Temple of Rezan
.target King Rastakhan
step
.maxlevel 29
#requires ZuldazarTheTempleofRezan
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.goto 862,72.03,21.04
.accept 47740 >>接任务: |cRXP_WARN_净化王宫|r
.target King Rastakhan
step
.isOnQuest 47740
#completewith ZuldazarHouseoftheKing
*|cRXP_WARN_Free |cRXP_FRIENDLY_Priests of Rezan|r and open the |cRXP_PICK_Training Gates|r|r
>>杀死|cRXP_ENEMY_Pillargers|r和|cRXX_ENEMY_Priests|r
.goto 862,72.95,23.78,0
.goto 862,73.42,23.00,0
.goto 862,73.56,22.79,0
.goto 862,73.77,22.37,0
.goto 862,74.07,22.58,0
.goto 862,73.87,23.39,0
.goto 862,73.60,23.77,0
.goto 862,73.37,24.03,0
.goto 862,71.74,24.19,0
.goto 862,71.56,24.66,0
.goto 862,71.83,24.78,0
.goto 862,73.35,25.28,0
.goto 862,73.15,25.64,0
.goto 862,72.62,25.76,0
.goto 862,74.37,23.93,0
.goto 862,72.16,23.92,0,0
.accept 47797 >>接任务: |cRXP_WARN_清除危害|r
.complete 47797,1 
.mob Kao-Tien Pillager
.mob Priest of Rezan
step
.isOnQuest 47736
#completewith ZuldazarHouseoftheKing
>>杀死该区域的|cRXP_ENEMY_Zanchuli|r。掠夺他们的|cRXP_Loot_heads|r。
.complete 47736,1 
.mob Zanchuli Oathbreaker
.mob Atal'zul Zealot
step
.isOnQuest 47740
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Corrupting Totems|r around the waypoint
.goto 862,72.16,23.92
.complete 47740,1 
step
.isOnQuest 47740
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Corrupting Totems|r around the waypoint
.goto 862,73.91,22.83
.complete 47740,3 
step
.isOnQuest 47740
#label ZuldazarHouseoftheKing
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Corrupting Totems|r around the waypoint
.goto 862,73.36,24.05,15,0
.goto 862,73.11,24.44,15,0
.goto 862,73.79,25.89
.complete 47740,2 
step
#sticky
#label ZuldazarOccupationHazard
.isOnQuest 47736
>>杀死该区域的|cRXP_ENEMY_Zanchuli|r。掠夺他们的|cRXP_Loot_heads|r。
.goto 862,72.16,23.92,0,0
.complete 47736,1 
.mob Zanchuli Oathbreaker
.mob Atal'zul Zealot
step
.isOnQuest 47740
*|cRXP_WARN_Free |cRXP_FRIENDLY_Priests of Rezan|r and open the |cRXP_PICK_Training Gates|r|r
>>杀死|cRXP_ENEMY_Pillargers|r和|cRXX_ENEMY_Priests|r
.goto 862,73.62,26.34,20,0
.goto 862,72.62,25.65,20,0
.goto 862,71.62,24.64,20,0
.goto 862,72.56,24.48,20,0
.goto 862,72.94,23.78,20,0
.goto 862,73.76,22.34,20,0
.goto 862,73.91,23.34,20,0
.goto 862,72.95,24.22,20,0
.goto 862,73.69,25.29
.accept 47797 >>接任务: |cRXP_WARN_清除危害|r
.complete 47797,1 
.mob Kao-Tien Pillager
.mob Priest of Rezan
step
#requires ZuldazarOccupationHazard
.goto 862,74.84,24.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r
.turnin -47736 >>交任务: |cRXP_FRIENDLY_杀鸡儆猴|r
.turnin -47740 >>Turn in House of the King
.target Zolani
step
.maxlevel 29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r
.goto 862,74.84,24.91
.accept 47734 >>接任务: |cRXP_WARN_异端同谋|r
.target Zolani
step
.isOnQuest 47734
>>杀死|cRXP_ENEMY_Darkwaver Ji'tan|r
.goto 862,75.16,23.24
.complete 47734,1 
.mob Darkweaver Ji'tan
step
.isOnQuest 47734
>>杀死|cRXP_ENEMY_Soulrender Gao'tan|r
.goto 862,75.12,26.41
.complete 47734,2 
.mob Soulrender Gao'tan
step
.isQuestTurnedIn 47736
.goto 862,74.87,24.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.turnin 47734 >>Turn in Partners in Heresy
.accept 47741 >>接任务: |cRXP_WARN_献祭神灵|r
.target King Rastakhan
step
.isOnQuest 47741
>>等到维尔纳克多的buff还剩0堆。杀死|cRXP_ENEMY_Vilnak'dor|r
*Run away during Blood Nova
.goto 862,76.01,24.91
.complete 47741,1 
.mob Vilnak'dor
step
.isOnQuest 47741
>>Wait for the roleplay
.goto 862,75.96,24.91
.complete 47741,2 
step
.isOnQuest 47741
>>沿着箭头到达航路点位置
.goto 862,73.60,28.19
.complete 47741,3 
step
.isQuestTurnedIn 47734
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezan|r and |cRXP_FRIENDLY_King Rastakhan|r
.turnin 47741 >>Turn in To Sacrifice a Loa
.goto 862,70.91,29.89
.accept 51111 >>接任务: |cRXP_WARN_是大王还是猎物|r
.goto 862,70.98,29.91
.target Rezan
.target King Rastakhan
step
.isOnQuest 51111
#completewith next
.goto 862,70.79,29.60
.fp >>获取Scaletrader飞行后路径
step
.zoneskip 862,1
.goto 862,70.79,29.60,-1
.goto 862,54.26,56.52,-1
.goto 862,49.65,26.50,-1
.goto 862,66.10,18.12,-1
.fly The Great Seal >>Fly to The Great Seal
step
.isOnQuest 75874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beast Handler Kalatak|r
.goto 1165,45.77,36.28
.turnin 75874 >>交任务: |cRXP_FRIENDLY_飞翔时间|r
.target Beast Handler Kalatak
.collectmount 1772 >>您现在可以使用
step
.isOnQuest 51111
.goto 1164,41.26,71.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝恩·血蹄|r
.turnin 51111 >>Turn in King or Prey
.target Baine Bloodhoof
step
.goto 1163,53.39,70.58,10,0
.goto 1163,73.83,69.92
.zone 85 >>前往: |cRXP_PICK_杜隆塔尔|r
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#group RestedXP Horde 10-60
#name 4部落祖尔达扎下半场
#displayname Chapter 6 - Zuldazar End
#maxlevel 60
#fresh
<< Horde
step
#label WantedQuests

.goto 1165,41.93,40.74,10,0
.goto 1165,41.27,40.58,5,0
.goto 862,54.94,42.00,5,0
.goto 862,54.58,41.60,15 >>爬起来跳进水里
.goto 862,53.46,42.25,8 >>用鼠标右键点击绳索登山
.goto 862,51.62,45.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_PICK_WANTED板交谈|r
>>你可以跳过通缉令：Sabertusk女皇
.accept 51071 >>接任务: |cRXP_WARN_通缉：剜齿龙后|r -> |cRXP_WARN_半硬精英，不应该太难杀死|r
.accept 51072 >>接任务: |cRXP_WARN_通缉：肥指猩猩长者|r -> |cRXP_WARN_VERY HARD elite, only try it if you know what to do and/or use heirlooms|r
step
.isOnQuest 51071
>>杀死|cRXP_ENEMY_Prime Thumpknock|r
.goto 862,52.69,45.05
.complete 51072,1 
.mob Prime Thumpknuckle
step
.isOnQuest 51071
>>|cRXP_WARN_非常强硬的精英，只有当你知道该做什么和/或正在使用传家宝时才能尝试|r
*Even with heirlooms this elite can be very difficult depending on your class
.goto 862,52.36,47.76
.complete 51071,1 
.mob Sabertusk Empress
step
.isQuestComplete 51071
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaz'ki|r
.target Shaz'ki
.goto 862,51.65,50.53
.turnin 51071 >>Turn in WANTED: Sabertusk Empress
step
.isQuestComplete 51072
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Saz'ki|r
.target Saz'ki
.goto 862,51.65,50.53
.turnin 51072 >>Turn in WANTED: Prime Thumpknuckle
step
#completewith ZuldazarPeaceLovingGorillas
>>杀死该区域的|cRXP_ENEMY_gorillas|r
.complete 49918,1 
.mob Da'kani Pugilist
.mob Da'kani Highbrow
.mob Zayoos
.mob King Da'ka
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tsunga|r
.target Tsunga
.goto 862,51.51,53.77,15,0
.goto 862,50.17,54.57
.accept 49920 >>接任务: |cRXP_WARN_大猩猩之战|r
step
#completewith ZuldazarDakaniGorillas
+|cRXP_WARN_拿起一个|cRXP_Pick_Kaja'mite Chunk|r获得伤害增益|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,49.95,54.94
.complete 49920,1,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,49.56,55.26
.complete 49920,1,2 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,49.03,54.79
.complete 49920,1,3 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,48.63,53.91
.complete 49920,1,4 
step
#completewith next
+如果你愿意，你可以杀死稀有的|cRXP_ENEMY_Zayoos|r。他扔下了一个很好的小饰品，并计入奖金目标
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,48.14,53.16
.complete 49920,1,5 
step
#label ZuldazarPeaceLovingGorillas
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,48.09,51.24
.complete 49920,1 
step
#label ZuldazarDakaniGorillas
.waypoint 862,48.93,54.52,-25,0
.complete 49918,1 
.mob Da'kani Pugilist
.mob Da'kani Highbrow
.mob Zayoos
.mob King Da'ka
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tsunga|r
.target Tsunga
.goto 862,47.42,52.43
.turnin 49920 >>Turn in Gorilla Warfare
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r
.target Zolani
.goto 862,47.92,60.45
.turnin 49122 >>Turn in A Port in Peril
.accept 49144 >>接任务: |cRXP_WARN_赞达拉巨魔的愤怒|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Habutu|r
.target Habutu
.goto 862,47.86,60.45
.accept 49145 >>接任务: |cRXP_WARN_一个都不能少|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaza'Jin|r
.target Kaza'Jin
.goto 862,47.13,60.47
.accept 49146 >>接任务: |cRXP_WARN_灵魂财产|r
step
#completewith ZuldazarGrimoireoftheOtherSide
>>杀死该区域的|cRXP_ENEMY_Mogu|r
.complete 49144,1 
.mob Kao-Tien Marauder
.mob Charged Sentinel
.mob Kao-Tien Subjugator
step
#title Rally Rastair Defenders
>>使用|cRXP_FRIENDLY_Rastari Defenders|r附近的|T133729:0|t[Rastari Skull Whistle]来召集他们
.goto 862,46.80,60.66
.use 153524
.complete 49145,1,2 
.target Rastari Defender
step
#title Rally Rastair Defenders
>>使用|cRXP_FRIENDLY_Rastari Defenders|r附近的|T133729:0|t[Rastari Skull Whistle]来召集他们
.goto 862,46.34,60.17
.use 153524
.complete 49145,1,5 
.target Rastari Defender
step
#title Reclaimed Bijous
>>拿起|cRXP_Pick_Reclaimed Bijous|r
.goto 862,45.61,60.38
.complete 49146,1 
step
#title Rally Rastair Defenders
>>使用|cRXP_FRIENDLY_Rastari Defenders|r附近的|T133729:0|t[Rastari Skull Whistle]来召集他们
.goto 862,45.61,60.38
.use 153524
.complete 49145,1,7 
.target Rastari Defender
step
#title Rally Rastair Defenders
>>使用|cRXP_FRIENDLY_Rastari Defenders|r附近的|T133729:0|t[Rastari Skull Whistle]来召集他们
.goto 862,45.30,60.91
.use 153524
.complete 49145,1,12 
.target Rastari Defender
step
#title Venerated Remains
>>拾取|cRXP_Pick_Venered Remains|r
.goto 862,45.30,60.91,10,0
.goto 862,45.81,62.45
.complete 49146,3 
step
#label ZuldazarGrimoireoftheOtherSide
#title Grimoire of the Other Side
>>跳下去拿起另一边的|cRXP_pick_Grimoire |r
.goto 862,46.80,61.90
.complete 49146,2 
step
>>杀死该区域的|cRXP_ENEMY_Mogu|r
.goto 862,46.45,60.75
.waypoint 862,46.45,60.80,-30,0
.complete 49144,1 
.mob Kao-Tien Marauder
.mob Charged Sentinel
.mob Kao-Tien Subjugator
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Habutu|r
.goto 862,47.87,60.44
.turnin 49145 >>Turn in No Troll Left Behind
.target Habutu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalani|r
.goto 862,47.92,60.45
.turnin 49144 >>Turn in Wrath of the Zandalari
.target Zalani
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaza'jin|r
.goto 862,48.08,60.37
.turnin 49146 >>Turn in Spirits' Belongings
.accept 49149 >>接任务: |cRXP_WARN_妙用巫毒|r
.target Kaza'jin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zalani|r
.target Zalani
.goto 862,47.92,60.45
.accept 49148 >>接任务: |cRXP_WARN_分崩离析|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Habutu|r
.target Habutu
.goto 862,47.87,60.44
.accept 49147 >>接任务: |cRXP_WARN_展现实力|r
step
#completewith ZuldazarBlueRunesTurnin
+|cRXP_WARN_站在地上的蓝色符文中会给你100%的暴击几率|r
step
#completewith ZuldazarSpiritObelisksactivated
>>杀死|cRXP_ENEMY_Stormbound征服者|r
.complete 49148,1 
.mob Stormbound Conquerer
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Spirit Obelisk|r
.goto 862,47.22,61.86
.complete 49149,1,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Spirit Obelisk|r
.goto 862,47.97,63.06
.complete 49149,1,2 
step
>>杀死|cRXP_ENEMY_Jao-Ti|r
.goto 862,48.15,64.48
.complete 49147,1 
.mob Jao-Ti the Thunderous
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Spirit Obelisk|r
.goto 862,47.45,65.14
.complete 49149,1,3 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Spirit Obelisk|r
.goto 862,47.86,67.24,10,0
.goto 862,47.38,66.92,5,0
.goto 862,47.48,66.76
.complete 49149,1,4 
step
>>杀死|cRXP_ENEMY_Zheng|r
.goto 862,45.83,66.51
.complete 49147,2 
.mob Subjugator Zheng
step
#label ZuldazarSpiritObelisksactivated
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Spirit Obelisk|r
.goto 862,47.26,66.11,10,0
.goto 862,48.18,65.42,10,0
.goto 862,48.55,64.51
.complete 49149,1 
step
>>杀死|cRXP_ENEMY_Stormbound征服者|r
.waypoint 862,48.69,64.62,-50,0
.complete 49148,1 
.mob Stormbound Conquerer
step
#label ZuldazarBlueRunesTurnin
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaza'jin|r
.target Kaza'jin
.goto 862,49.59,64.48
.turnin 49149 >>Turn in Embrace the Voodoo
.turnin 49147 >>Turn in Show of Strength
.turnin 49148 >>Turn in Crumbling Apart
.accept 49309 >>接任务: |cRXP_WARN_雷霆陨落|r
step
>>杀死船上的|cRXP_ENEMY_军阀高|r
.goto 862,50.19,65.38
.complete 49309,1 
.mob Warlord Kao
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaza'jin|r
.goto 862,49.59,64.48
.turnin 49309 >>Turn in Thunder's Fall
.accept 49310 >>接任务: |cRXP_WARN_先知的工作|r
.target Kaza'jin
step
>>安装|cRXP_FRIENDLY_Scarbeak|r
.goto 862,49.51,64.34
.complete 49310,1 
.target Scarbeak
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r
.target Baine Bloodhoof
.goto 1164,41.33,72.25
.turnin 49310 >>Turn in The Prophet's Play
.accept 47509 >>接任务: |cRXP_WARN_选民之台|r
step
.isQuestTurnedIn 47436
#completewith ZuldazarTerraceoftheChosen
.goto 1165,49.92,33.18
.cast 6478 >>点击帕库祭坛获得移动速度增益
step
.isQuestTurnedIn 47443
#completewith ZuldazarTerraceoftheChosen
.goto 1165,49.92,33.18
.cast 6478 >>点击Gonk祭坛获得被动伤害增益
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_B'wizati|r
.target B'wizati
.goto 1165,40.28,19.27
.turnin 49040 >>Turn in Fond Farewells
step
#label ZuldazarTerraceoftheChosen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaza'jin|r
.target Kaza'jin
.goto 1165,42.30,26.63,20,0
.goto 1165,42.6,21.4
.turnin 47509 >>Turn in Terrace of the Chosen
.accept 47897 >>接任务: |cRXP_WARN_赞枢利的背叛者|r
.accept 47915 >>接任务: |cRXP_WARN_即刻救援|r
step
#completewith next
>>杀死该区域的|cRXP_ENEMY_Zanchuli|r
.complete 47897,1 
.mob Zanchuli Betrayer
.mob Zanchuli Berserker
.mob Zanchuli Backstabber
step
>>杀死|cRXP_ENEMY_Hexmater Kala|r。为她掠夺她|cRXX_Loot_恋物癖|r
.goto 1165,41.42,18.84,8,0
.goto 1165,43.51,17.71
.complete 47915,1 
.mob Hexmother Kala
step
>>杀死该区域的|cRXP_ENEMY_Zanchuli|r
.waypoint 1165,41.66,17.10,-70,0
.complete 47897,1 
.mob Zanchuli Betrayer
.mob Zanchuli Berserker
.mob Zanchuli Backstabber
.mob Zanchuli Inquisitor
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.target Wardruid Loti
.goto 1165,39.3,13.7
.turnin 47897 >>Turn in Zanchuli Traitors
.turnin 47915 >>Turn in Rescuing the Taken
.accept 47518 >>接任务: |cRXP_WARN_拉尔|r
.accept 47520 >>接任务: |cRXP_WARN_隔墙有耳|r
step
#sticky
#label ZuldazarEyesEarsYazma
>>尝试在到达顶部之前杀死5-6个|cRXP_ENEMY_spider|r
.complete 47520,1 
.mob Eye of Yazma
.mob Ear of Yazma
step
>>爬上吡喃酰胺。杀死|cRXP_ENEMY_Crazzak|r
.goto 1167,46.31,39.87,10,0
.goto 1167,36.76,25.53,10,0
.goto 1167,44.09,15.00,10,0
.goto 1166,78.67,86.33,10,0
.goto 1165,46.08,15.98,10,0
.goto 1165,43.63,7.39
.complete 47518,1 
.mob Crazzak
step
#requires ZuldazarEyesEarsYazma
.goto 1165,43.63,7.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r and |cRXP_FRIENDLY_Wardruid Loti|r
.turnin 47518 >>Turn in Raal
.turnin 47520 >>Turn in Walls Have Ears
.target Hexlord Raal
.target Wardruid Loti
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r
.target Hexlord Raal
.goto 1165,42.55,9.48
.accept 47521 >>接任务: |cRXP_WARN_洛阿神灵之园的午夜|r
step
>>坐骑|cRXP_FRIENDLY_Ata the Wingflord|r
.goto 1165,42.51,10.04
.complete 47521,1 
.target Ata the Winglord
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.target Wardruid Loti
.goto 862,50.69,29.66
.turnin 47521 >>Turn in Midnight in the Garden of the Loa
.accept 47527 >>Accept Rituals of Heresy
.accept 47522 >>接任务: |cRXP_WARN_猎人|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hexlord Raal|r
.target Hexlord Raal
.goto 862,50.69,29.57
.accept 47963 >>接任务: |cRXP_WARN_远古神灵|r
step
#completewith ZuldazarMistressofLies
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the small |cRXP_PICK_Voodoo Piles|r on the ground and kill every |cRXP_ENEMY_mob|r you see
.complete 47527,1 
.mob Atal'Shadra Bloodletter
.mob Atal'Shadra Tormentor
.mob Spawn of Shadra
step
>>杀死帕库周围的|cRXP_ENEMY_Shadra背叛者|r以营救他
.goto 862,50.24,30.58,15,0
.goto 862,50.99,32.17,20,0
.goto 862,51.28,31.99,10,0
.goto 862,52.07,33.14
.complete 47963,1 
.mob Shadra Betrayer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pa'ku|r
.target Pa'ku
.goto 862,52.1,33.1
.turnin 47963 >>Turn in The Ancient One
step
>>跑上小山去救Gonk
.goto 862,49.18,32.45,15,0
.goto 862,48.79,31.79
.complete 47522,1 
step
.isQuestTurnedIn 47436
#completewith ZuldazarTheHunter
.goto 862,48.79,32.08
.cast 6478 >>点击帕库祭坛获得移动速度增益
step
.isQuestTurnedIn 47443
#completewith ZuldazarTheHunter
.goto 862,48.59,31.59
.cast 6478 >>点击Gonk祭坛获得被动伤害增益
step
#label ZuldazarTheHunter
.isQuestComplete 47522
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gonk|r
.target Gonk
.goto 862,48.4,32.1
.turnin 47522 >>交任务: |cRXP_FRIENDLY_狩猎|rer
step
#label ZuldazarMistressofLies
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Acolyte Mali|r
.target Acolyte Mali
.goto 862,48.54,31.95
.accept 47528 >>接任务: |cRXP_WARN_谎言女神|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the small |cRXP_PICK_Voodoo Piles|r on the ground and kill every |cRXP_ENEMY_mob|r you see
.goto 862,48.69,31.21,10,0
.goto 862,48.91,29.76,8,0
.goto 862,49.35,29.46,8,0
.goto 862,49.34,29.08,8,0
.goto 862,47.70,28.85,5,0
.goto 862,49.15,28.39
.complete 47527,1 
.mob Atal'Shadra Bloodletter
.mob Atal'Shadra Tormentor
.mob Spawn of Shadra
step
#label ZuldazarVolkaalYazma
>>进入大楼并击败|cRXP_ENEMY_Vol'kaal|r
.goto 862,47.10,27.79
.complete 47528,1 
.complete 47528,2 
.mob Vol'kaal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wardruid Loti|r
.target Wardruid Loti
*You have to relog if you don't see her
.goto 862,47.92,29.07,15,0
.goto 862,48.57,26.79
.turnin 47528 >>交任务: |cRXP_FRIENDLY_密斯特|rress of Lies
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beastmother Jabati|r
.target Beastmother Jabati
.goto 862,47.32,25.13
.accept 49679 >>接任务: |cRXP_WARN_蛇人入侵|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bladeguard Sonji|r
.target Bladeguard Sonji
.goto 862,47.25,24.95
.accept 49678 >>接任务: |cRXP_WARN_尖塔行动|r
.accept 49680 >>接任务: |cRXP_WARN_唤天者索尔托克|r
step
#sticky
#label ZuldazarSethrakInvader
>>杀死区域中的|cRXP_ENEMY_Sethrak|r和|cRXX_ENEMY_Krolusk|r
.complete 49679,1 
.mob Sethrak Invader
.mob Sethrak Skycaller
.mob Krolusk Warcrawler
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lil'Tika|r
.target Lil'Tika
.goto 862,46.20,23.35
.accept 49681 >>接任务: |cRXP_WARN_小提|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 862,46.20,23.35
.complete 49681,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Sethrak Spire|r to destroy it
.goto 862,46.00,22.78
.complete 49678,1,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Sethrak Spire|r to destroy it
.goto 862,45.62,23.03
.complete 49678,1,2 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Sethrak Spire|r to destroy it
.goto 862,45.11,24.06
.complete 49678,1,3 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Sethrak Spire|r to destroy it
.goto 862,44.34,24.49
.complete 49678,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with |cRXP_FRIENDLY_Chief Chan'tika|r on the ground
.goto 862,45.37,26.40
.complete 49681,2 
.mob Chief Chan'tika
step
>>杀死|cRXP_ENEMY_Soltok|r
.goto 862,45.19,25.95,10,0
.goto 862,45.05,26.14,5,0
.goto 862,45.31,26.25
.complete 49680,1 
.mob Skycaller Soltok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bladeguard Sonji|r
.goto 862,47.25,24.95
.turnin 49678 >>Turn in I Spy a Spire
.turnin 49680 >>Turn in Skycaller Soltok
.target Bladeguard Sonji
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beastmother Jabati|r
.goto 862,47.33,25.14
.turnin 49679 >>Turn in The Sethrak Incursion
.turnin 49681 >>Turn in Lil' Tika
.target Beastmother Jabati
step
#completewith next
.isQuestTurnedIn 47436
.goto 862,49.97,26.76
.cast 6478 >>点击帕库祭坛获得移动速度增益
step
#completewith next
.goto 862,49.73,26.33
.fp >>获得Loa飞行路线的花园
step
#completewith next
.goto 862,49.72,26.29
.fly Nesingwary's Gameland >>飞往奈辛瓦利的游戏之地
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r
.target Zolani
.goto 862,76.70,16.28
.turnin 51101 >>Turn in The Wounded King
.accept 51680 >>接任务: |cRXP_WARN_邦桑迪的阴影下|r
step
>>当您与|cRXP_FRIENDLY_Jol|r通话时，您必须手动选择第一个八卦选项
.complete 51680,1 
.goto 862,76.47,16.00
.complete 51680,2 
.goto 862,76.45,16.16
.target Jamil Abul'housin
.target Jol the Ancient
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jol the Ancient|r
.target Jol the Ancient
.goto 862,76.45,16.16
.turnin 51680 >>Turn in In Bwonsamdi's Shadow
.accept 47735 >>接任务: |cRXP_WARN_古代始祖龟疗法|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamil|r
.target Jamil Abul'housin
.goto 862,76.47,16.00
.accept 47739 >>接任务: |cRXP_WARN_复仇的气息|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r
.target Zolani
.goto 862,76.69,16.25
.accept 50235 >>接任务: |cRXP_WARN_无处可逃|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with |cRXP_FRIENDLY_Laelani|r
.goto 862,78.59,13.12
.complete 47735,2 
.target Laelani
step
#sticky
#label ZuldazarTraitorBlood
>>杀死该区域的|cRXP_ENEMY_trolls|r。掠夺他们的|cRXP_Loot_blood|r
.goto 862,78.23,19.48,0,0
.complete 47739,1 
.mob Atal'zul Executioner
.mob Atal'zul Assassin
step
>>确保释放你看到的每一个村民
*|cRXP_WARN_You can free them while mounted|r
.goto 862,80.48,13.98,10,0
.goto 862,80.07,16.36
.complete 50235,1 
step
>>拿起水中的|cRXP_Pick_Puffer Spine|r
.goto 862,79.80,16.52
.complete 47735,1 
step
.goto 862,79.34,16.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zeb'ahari Villager|r
.target Zeb'ahari Villager
.accept 47733 >>接任务: |cRXP_WARN_神语者的背叛|r
step
>>杀死|cRXP_ENEMY_Kihara|r
.goto 862,78.51,20.24
.complete 47733,1 
.mob Loa-Speaker Kihara
step
>>杀死|cRXP_ENEMY_Ol'Bubbly|r。掠夺他的|cRXX_Loot_foam|r
.goto 862,79.50,21.60
.complete 47735,3 
.mob Ol'Bubbly
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r
.goto 862,76.70,16.27
.turnin 50235 >>Turn in No Safe Haven
.turnin 47733 >>Turn in The Loa-Speaker's Betrayal
.target Zolani
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamil Abul'housin|r
.goto 862,76.47,16.01
.turnin 47739 >>Turn in The Scent of Vengeance
.target Jamil Abul'housin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约尔|r
.goto 862,76.44,16.16
.turnin 47735 >>Turn in Ancient Tortollan Remedies
.accept 51677 >>接任务: |cRXP_WARN_疗体愈灵|r
.target Jol the Ancient
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约尔|r
.goto 862,76.47,16.01
.skipgossip
.complete 51677,1 
.target Jol the Ancient
step
>>这个房间里不时有东西发光，把它捡起来，和|cRXP_FRIENDLY_Jol|r说话，把它带给他
.goto 862,76.47,16.01
.skipgossip
.complete 51677,2 
.target Jol the Ancient
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。与|cRXP_FRIENDLY_Jol the Ancient|r交谈
.goto 862,76.45,16.16
.turnin 51677 >>Turn in Mending Body and Soul
.target Jol the Ancient
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jamil|r
.target Jamil
.goto 862,76.47,16.00
.accept 47738 >>接任务: |cRXP_WARN_洛阿神灵的意志|r
step
>>与Rezan|r偶像的|cRXP_PICK_Shade交互
.goto 862,76.87,13.23
.complete 47738,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。与|cRXP_FRIENDLY_Rezan|r通话
.target Rezan
.goto 862,77.01,13.24
.skipgossip
.complete 47738,2 
.target Rezan
step
>>等待RP。拾取|cRXP_Pick_Rastakhan的灵魂|r
.goto 862,76.87,13.23
.complete 47738,3 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tYou have to wait a moment and then interact with |cRXP_PICK_Rastakhan's Body|r
.goto 862,76.46,16.06
.complete 47738,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。与|cRXP_FRIENDLY_King Rastakhan|r和|cRXP-FRIENDLY_Zolani|r通话
.goto 862,76.65,16.14
.turnin 47738 >>Turn in The Will of the Loa
.accept 47742 >>接任务: |cRXP_WARN_祖尔的叛乱|r
.accept 51678 >>接任务: |cRXP_WARN_拉斯塔哈之力|r
.accept 51679 >>接任务: |cRXP_WARN_奇怪的停靠|r
.target King Rastakhan
.target Zolani
step
#completewith next
>>安装|cRXP_PICK_钓鱼 Canoe|r
*When the boat is on front of the ship you have to dismount manually otherwise it will bring you back to the coast
.goto 862,78.99,19.13
.vehicle 139838
step
#sticky
+|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Ropes|r to enter the ship
step
#completewith ZuldazarChroniclerTokini
>>杀死船上的|cRXP_ENEMY_Mutonic Zandalari|r
.complete 47742,1 
.mob Atal'zul Chosen
.mob Atal'zul Fatesinger
.mob Rastakhan's Might Mutineer
step
>>在楼梯顶部杀死|cRXP_ENEMY_Ula'jan|r。找他的|cRXP_LOOT_头骨|r
.goto 862,81.27,19.59
.complete 51678,1 
.mob Windcaller Ula'jan
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the Temple of |cRXP_PICK_Rezan Map|r
.goto 862,81.16,20.48,10,0
.goto 862,81.27,19.74
.complete 51679,1 
step
>>Go down the stairs
.goto 1173,51.36,75.07
.complete 51679,2 
step
#label ZuldazarChroniclerTokini
>>|TInterface/GossipFrame/HealerGossipIcon:0|tGo down the stairs one more time and interact with |cRXP_FRIENDLY_Chronicler To'kini|r
.goto 1174,43.58,81.73,5,0
.goto 1174,48.20,41.48
.complete 51679,3 
.target Chronicler To'kini
step
>>杀死船上的|cRXP_ENEMY_Mutonic Zandalari|r
.waypoint 862,81.14,20.55,-30,0
.complete 47742,1 
.mob Atal'zul Chosen
.mob Atal'zul Fatesinger
.mob Rastakhan's Might Mutineer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.goto 862,76.67,16.13
.turnin 47742 >>Turn in Zul's Mutiny
.turnin 51678 >>Turn in Rastakhan's Might
.turnin 51679 >>Turn in A Strange Port of Call
.accept 47737 >>接任务: |cRXP_WARN_莱赞神殿|r
.target King Rastakhan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.goto 862,72.03,21.04
.turnin 47737 >>Turn in The Temple of Rezan
.accept 47740 >>接任务: |cRXP_WARN_净化王宫|r
.target King Rastakhan
step
#sticky
*|TInterface/GossipFrame/HealerGossipIcon:0|tMake sure to interact with anything that you can find around the waypoint positions of this step
>>杀死|cRXP_ENEMY_Pillargers|r和|cRXX_ENEMY_Priests|r
.goto 862,72.95,23.78,0
.goto 862,73.42,23.00,0
.goto 862,73.56,22.79,0
.goto 862,73.77,22.37,0
.goto 862,74.07,22.58,0
.goto 862,73.87,23.39,0
.goto 862,73.60,23.77,0
.goto 862,73.37,24.03,0
.goto 862,71.74,24.19,0
.goto 862,71.56,24.66,0
.goto 862,71.83,24.78,0
.goto 862,73.35,25.28,0
.goto 862,73.15,25.64,0
.goto 862,72.62,25.76,0
.goto 862,74.37,23.93,0
.complete 47797,1 
.mob Kao-Tien Pillager
.mob Priest of Rezan
step
#sticky
#label ZuldazarTraitorousZandalariHead
>>杀死该区域的|cRXP_ENEMY_Zanchuli|r。掠夺他们的|cRXP_Loot_heads|r。
.complete 47736,1 
.mob Zanchuli Oathbreaker
.mob Atal'zul Zealot
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Corrupting Totems|r around the waypoint
.goto 862,72.16,23.92
.complete 47740,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Corrupting Totems|r around the waypoint
.goto 862,73.91,22.83
.complete 47740,3 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Corrupting Totems|r around the waypoint
.goto 862,73.79,25.89
.complete 47740,2 
step
#requires ZuldazarTraitorousZandalariHead
.goto 862,74.84,24.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zolani|r
.turnin 47736 >>交任务: |cRXP_FRIENDLY_杀鸡儆猴|r
.turnin 47740 >>Turn in House of the King
.accept 47734 >>接任务: |cRXP_WARN_异端同谋|r
.target Zolani
step
>>杀死|cRXP_ENEMY_Ji'tan|r
.goto 862,75.16,23.24
.complete 47734,1 
.mob Darkweaver Ji'tan
step
>>杀死|cRXP_ENEMY_Gao'tan|r
.goto 862,75.12,26.41
.complete 47734,2 
.mob Soulrender Gao'tan
step
.goto 862,74.87,24.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.turnin 47734 >>Turn in Partners in Heresy
.accept 47741 >>接任务: |cRXP_WARN_献祭神灵|r
.target King Rastakhan
step
>>等到维尔纳克多的buff还剩0堆。杀死|cRXP_ENEMY_Vilnak'dor|r
.goto 862,76.01,24.91
.complete 47741,1 
.mob Vilnak'dor
step
>>Wait for the roleplay
.goto 862,75.96,24.91
.complete 47741,2 
step
>>沿着箭头到达航路点位置
.goto 862,73.60,28.19
.complete 47741,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rezan|r
.goto 862,70.91,29.89
.turnin 47741 >>Turn in To Sacrifice a Loa
.accept 51111 >>接任务: |cRXP_WARN_是大王还是猎物|r
.target Rezan
step
#completewith next
.goto 862,70.79,29.60
.fp >>获取Scaletrader飞行后路径
step
.zoneskip 862,1
.goto 862,70.79,29.60
.fly The Great Seal >>Fly to The Great Seal
step
.isOnQuest 75874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beast Handler Kalatak|r
.goto 1165,45.77,36.28
.turnin 75874 >>交任务: |cRXP_FRIENDLY_飞翔时间|r
.target Beast Handler Kalatak
.collectmount 1772 >>您现在可以使用
step
.goto 1164,41.26,71.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝恩·血蹄|r
.turnin 51111 >>Turn in King or Prey
.accept 52210 >>接任务: |cRXP_WARN_发出求救信号|r
.accept 49421 >>接任务: |cRXP_WARN_追杀祖尔|r
.target Baine Bloodhoof
step
.goto 1165,38.92,27.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Rastakhan|r
.turnin 49421 >>Turn in Hunting Zul
.accept 49965 >>接任务: |cRXP_WARN_战事|r
.target King Rastakhan
step
>>安装|cRXP_FRIENDLY_Wardruid乳液|r并等待RP
.goto 862,38.82,27.04
.complete 49965,1 
.target Wardruid Loti
step
.goto 862,49.27,44.36
>>Return to Gonk
.turnin 49965 >>Turn in The Warpack
.accept 49422 >>接任务: |cRXP_WARN_异端信徒|r
.accept 49424 >>接任务: |cRXP_WARN_完整的预言|r
step
#completewith ZuldazarWordofZulI
.complete 49422,1 
step
>>与祖尔语互动（右键单击）
.goto 862,48.81,42.75
.complete 49424,3 
step
>>与祖尔语互动（右键单击）
.goto 862,49.01,40.65
.complete 49424,2 
step
#label ZuldazarWordofZulI
>>与祖尔语互动（右键单击）
.goto 862,48.93,39.43
.complete 49424,1 
step
.waypoint 862,48.93,39.43,-20,0
.complete 49422,1 
step
.goto 862,48.82,39.42
>>Return to Wardruid Loti
.turnin 49424 >>Turn in The Full Prophecy
step
>>Return to Hexlord Raal
.turnin 49422 >>Turn in Heretics
.accept 49425 >>接任务: |cRXP_WARN_黄金之城|r
step
>>坐骑（右击）阿塔翼主
.goto 862,49.65,37.98
.complete 49425,1 
step
>>使用你的能力杀死你下面的力量
.goto 862,45.99,36.82
.complete 49425,2 
step
.goto 862,43.73,39.43
>>Return to Rezan
.turnin 49425 >>Turn in City of Gold
.accept 49426 >>接任务: |cRXP_WARN_君王的赌局|r
step
>>按ESC键可以跳过电影
.goto 862,42.18,39.47
.complete 49426,1 
.complete 49426,2 
step
.goto 862,42.71,37.61
.complete 49426,3 
step
.goto 862,42.72,37.65
>>返回拉斯塔汗国王
.turnin 49426 >>Turn in The King's Gambit
.accept 49901 >>接任务: |cRXP_WARN_阿塔达萨：堕落的女祭司亚兹玛|r
.accept 50963 >>接任务: |cRXP_WARN_黑暗契约与黑暗岁月|r
step
.goto 862,46.14,35.85
.fp >>获取黄金之路飞行路线
step
.goto 1165,51.87,41.28
.fly Port of Zandalar >>Fly to Port of Zandalar
step
.goto 1165,46.12,94.55
>>返回Grez'ko上尉
.turnin 52210 >>Turn in Sending Out An SOS
.accept 49758 >>接任务: |cRXP_WARN_点燃烽火！|r
step
>>装载（右键单击）舰队侦察兵
.goto 1165,46.39,94.63
.complete 49758,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bo'tzun Maset|r
.target Bo'tzun Maset
.goto 862,54.42,87.00
.turnin 49758 >>Turn in Send the Signal!
.accept 49775 >>接任务: |cRXP_WARN_牢笼钥匙|r
step
>>杀死并LOOT军需官加尔扎
.goto 862,52.34,86.71,8,0
.goto 862,52.26,86.94,5,0
.goto 862,51.58,86.88
.complete 49775,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t下楼去。与|cRXP_FRIENDLY_Wavemaster Lanfa|r交谈
.target Wavemaster Lanfa
.goto 1176,28.31,33.97,5,0
.goto 1176,44.02,50.83
.turnin 49775 >>Turn in Key to the Brig
.accept 49754 >>接任务: |cRXP_WARN_祖尔的信徒|r
step
#sticky
#label ZuldazarSpoilsofPandaria
*Go down one more time and loot the |cRXP_PICK_Spoils of Pandaria|r for some extra experience
.turnin 49936 >>掠夺熊猫的|cRXP_PICK_战利品|r
step
>>杀死|cRXP_ENEMY_Trolls|r和|cRXX_ENEMY_Moghus|r
.waypoint 1176,44.09,50.84,-25,0
.complete 49754,1 
.mob Zulian Crewman
.mob Lei-zhi Oppressor
.mob Lei-zhi Slaver
step
#requires ZuldazarSpoilsofPandaria
.goto 862,54.38,87.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wavemaster Lanfa|r
.turnin 49754 >>Turn in Not "Only Zul"
.accept 49871 >>接任务: |cRXP_WARN_逆潮而上|r
.target Wavemaster Lanfa
step
*Walk as far to the edge as possible and ignore every mob you pull
>>Kill |cRXP_ENEMY_Xiar|r
.goto 862,53.89,87.58,8,0
.goto 862,54.70,89.41,8,0
.goto 862,54.58,90.20
.complete 49871,1 
.mob Warlord Xiar
step
>>使用|T463545:0|t[火焰魔咒]
.goto 862,54.58,90.20
.use 156473
.complete 49871,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grez'ko|r
.target Captain Grez'ko
.goto 862,54.70,89.71
.turnin 49871 >>Turn in Against the Tide
.accept 49785 >>接任务: |cRXP_WARN_摧毁武器|r
step
#completewith next
.goto 862,54.70,89.71
.vehicle 130759 >>安装|cRXP_FRONDLY_Pterrordax|r
.target Pterrordax
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Weapons|r
.goto 862,58.28,76.96,15,0
.goto 862,58.01,76.69
.complete 49785,1 
step
>>杀死|cRXP_ENEMY_Reo'kah|r
.goto 862,57.45,75.58
.complete 49785,2 
.mob Reo'kah
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grez'ko|r
.goto 862,57.81,76.65
.turnin 49785 >>Turn in Destroy the Weapon
.accept 49884 >>接任务: |cRXP_WARN_希望之光|r
.target Captain Grez'ko
step
#completewith next
.goto 862,57.81,76.65
.vehicle 131271 >>安装|cRXP_FRONDLY_Pterrordax|r
step
>>在塔架附近使用|T135777:0|t[点火]（1）
.complete 49884,1 
step
.goto 1165,44.49,95.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Rez'okun|r
.turnin 49884 >>Turn in Hope's Blue Light
.target Captain Rez'okun
step
#completewith next
.goto 862,46.17,35.82
.fly The Great Seal >>Fly to The Great Seal
step
.isOnQuest 75874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beast Handler Kalatak|r
.goto 1165,45.77,36.28
.turnin 75874 >>交任务: |cRXP_FRIENDLY_飞翔时间|r
.target Beast Handler Kalatak
.collectmount 1772 >>您现在可以使用
step
.goto 1164,40.94,66.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Princess Talanji|r
.turnin 50963 >>Turn in Of Dark Deeds and Dark Days
.target Princess Talanji
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#group RestedXP Horde 10-60
#name 4部落银松森林
#displayname Chapter 6 - Silverpine Forest
#next 5 Horde Hillsbrad山麓
#veteran
<< Horde
step
.xp <30,1
#completewith next
#title Active War Mode. Skip if you don't want to.
+如果你不想激活战争模式（天赋窗口右下角（N）），即使它会增加你至少10%的经验增益，也可以跳过

step
#completewith next
+|cRXP_WARN_将飞行坐骑拖到栏杆上|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r, "The Iron Horde"
.goto 85,40.81,80.08
.accept 60968 >>接任务: |cRXP_WARN_德拉诺之王：德拉诺的冒险|r
.target Chromie
step
>>打开冒险指南（Shift+J），点击右箭头，直到你看到“Arak的尖塔”，点击“开始探索”
>>|cRXP_WARN_确保你处于德拉诺时间漫步的军阀阶段|r
*You have to be at least level 30 to do this. The guide is written in a way that you should be level 30 at this point.
.goto 85,40.81,80.08
.accept 36951 >>接任务: |cRXP_WARN_逃亡的鸦人|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.goto 85,40.81,80.08
.accept 43926 >>接任务: |cRXP_WARN_军团再临：军团回归|r
.target Chromie
step
.isOnQuest 43926
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍加尔·雷斧|r
.goto 1,46.00,13.80
.turnin 43926 >>Turn in Legion: The Legion Returns
.target Holgar Stormaxe
step
.isQuestTurnedIn 43926
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍加尔·雷斧|r
.goto 1,46.00,13.80
.accept 44281 >>接任务: |cRXP_WARN_整装待发|r
.target Holgar Stormaxe
step
.isOnQuest 44281
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with any of the |cRXP_PICK_meals|r
.goto 1,47.85,13.59
.complete 44281,3 
step
.isOnQuest 44281
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with a |cRXP_PICK_Keg of Armor Polish|r
.goto 1,49.67,14.13
.complete 44281,1 
step
.isOnQuest 44281
#completewith next
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Cauldron of Mojo|r
.goto 1,50.12,13.81,10,0
.collect 141295,1
step
.isQuestTurnedIn 43926
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍加尔·雷斧|r
*If you can't skip it then skip this step
.goto 1,46.01,13.81
.skipgossip
.accept 44184 >>接任务: |cRXP_WARN_眨眼之间|r
step
.isOnQuest 44184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Emissary Auldbridge|r
.target Emissary Auldbridge
.goto 627,57.60,45.78
.turnin 44184 >>Turn in In the Blink of an Eye
step
#completewith SilverpineTheWarchiefCometh
.zoneskip 627,1
.goto 627,55.24,24.01
.zone 85 >>前往: |cRXP_PICK_杜隆塔尔|r
step
#completewith SilverpineTheWarchiefCometh
.goto 85,56.02,88.25
.zone 110 >>乘坐通往银月的门户
step
.zoneskip 18
#completewith SilverpineTheWarchiefCometh
.goto 110,51.84,17.95,8,0
.goto 110,49.52,17.19,8,0
.goto 110,48.87,14.04,8,0
.goto 110,49.52,14.81
.zone 18 >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Orb of Translocation|r
step
.isQuestAvailable 26965
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
#label SilverpineTheWarchiefCometh
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大执行官摩尔图斯|r
.target Grand Executor Mortuus
.goto 21,57.43,10.14
.accept 26965 >>接任务: |cRXP_WARN_酋长驾到|r
.timer 300,Garrosh Roleplay
step
#completewith SilverpineStandbyWarchiefGarroshArrival
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_PICK_大执行官摩尔图斯|r
.goto 21,57.23,10.39
.accept 28089 >>接任务: |cRXP_WARN_酋长的命令：希尔斯布莱德丘陵！|r
.target Grand Executor Mortuus
step
#completewith next
+|cRXP_WARN_将RestedXP目标宏拖动到条形图中。你可以用它来检查稀有动物|r
step
#label SilverpineStandbyWarchiefGarroshArrival
.goto 21,57.42,10.13
.complete 26965,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大执行官摩尔图斯|r
.target Grand Executor Mortuus
.goto 21,57.42,10.13
.turnin 26965 >>交任务: |cRXP_FRIENDLY_酋长驾到|r
.accept 26989 >>接任务: |cRXP_WARN_吉尔尼斯解放阵线|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师凋叶|r, |cRXP_FRIENDLY_高阶药剂师莎娜·特维恩|r
.accept 26992 >>接任务: |cRXP_WARN_痛苦不堪|r
.goto 21,56.77,9.19
.accept 26995 >>接任务: |cRXP_WARN_鲜血淋漓的内脏|r
.goto 21,56.26,8.40
.target Apothecary Witherbloom
.target High Apothecary Shana T'veen
step
#completewith SilverpineWorgenRenegade
>>杀死该区域的|cRXP_ENEMY_bears|r。掠夺他们的|cRXP_Loot_内脏|r
>>留意稀有|cRXP_ENEMY_Kree|r和|cRXX_ENEMY_Gorefang |r
.goto 21,60.83,6.82,30,0
.goto 21,62.24,12.54,25,0
.goto 21,61.76,13.12,20,0
.goto 21,59.36,12.96,20,0
.goto 21,55.66,20.18,20,0
.goto 21,56.01,22.62,20,0
.complete 26995,1 
.mob Ferocious Grizzled Bear
.mob Worg
step
#completewith SilverpineWorgenRenegade
*>>从地面拾取|cRXP_Pick_凶猛的Doomweed|r
.complete 26992,1 
step
#label SilverpineWorgenRenegade
>>杀死该区域的|cRXP_ENEMY_Worgen叛徒|r
.goto 21,56.01,22.62,30,0
.goto 21,53.93,17.13,15,0
.goto 21,56.07,12.92
.complete 26989,1 
.mob Worgen Renegade
step
#sticky
#label SilverpineCleanBeastGuts
>>杀死该区域的|cRXP_ENEMY_bears|r。掠夺他们的|cRXP_Loot_内脏|r
>>留意稀有|cRXP_ENEMY_Kree|r和|cRXX_ENEMY_Gorefang |r
.goto 21,59.26,16.38,20,0
.goto 21,60.52,9.07,20,0
.complete 26995,1 
.mob Ferocious Grizzled Bear
.mob Worg
step
*>>从地面拾取|cRXP_Pick_凶猛的Doomweed|r
.goto 21,55.54,13.17,20,0
.goto 21,58.30,15.89,20,0
.goto 21,61.04,13.36,30,0
.goto 21,60.46,8.74
.complete 26992,1 
step
#requires SilverpineCleanBeastGuts
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大执行官摩尔图斯|r
.target Grand Executor Mortuus
.goto 21,57.41,10.12
.turnin 26989 >>交任务: |cRXP_FRIENDLY_吉尔尼斯解放阵线|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师凋叶|r, |cRXP_FRIENDLY_高阶药剂师莎娜·特维恩|r
.turnin 26992 >>交任务: |cRXP_FRIENDLY_痛苦不堪|r
.goto 21,56.76,9.19
.turnin 26995 >>交任务: |cRXP_FRIENDLY_鲜血淋漓的内脏|r
.accept 26998 >>接任务: |cRXP_WARN_延续成功|r
.goto 21,56.26,8.40
.target Apothecary Witherbloom
.target High Apothecary Shana T'veen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蝙蝠管理员玛格特布里斯|r
.target Bat Handler Maggotbreath
.goto 21,57.91,8.71
.skipgossip 1
.complete 26998,1 
step
>>|cRXP_ENEMY_Murlocs|r上的垃圾邮件|T236885:0|t[Blight Concotion]（1）
*|cRXP_WARN_DON'T USE (2)|r
.complete 26998,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶药剂师莎娜·特维恩|r
.target High Apothecary Shana T'veen
.goto 21,56.26,8.40
.turnin 26998 >>交任务: |cRXP_FRIENDLY_延续成功|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_死亡猎手指挥官贝尔蒙特|r
.target Deathstalker Commander Belmont
.goto 21,58.09,8.98
.accept 27039 >>接任务: |cRXP_WARN_危险的意图|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Abandoned Outhouse|r
.goto 21,53.90,13.01
.turnin 27039 >>交任务: |cRXP_FRIENDLY_危险的意图|r
.accept 27045 >>接任务: |cRXP_WARN_等着下手|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Armoire|r. |cRXP_WARN_DON'T SKIP THE CINEMATIC|r
.goto 21,53.41,13.19,8,0
.goto 21,53.04,13.11,8,0
.goto 21,53.44,13.08,8,0
.goto 21,53.30,12.56
.complete 27045,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_死亡猎手指挥官贝尔蒙特|r
.target Deathstalker Commander Belmont
.goto 21,58.09,8.98
.turnin 27045 >>交任务: |cRXP_FRIENDLY_等着下手|r
.accept 27056 >>接任务: |cRXP_WARN_贝尔蒙特的报告|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.target Lady Sylvanas Windrunner
.goto 21,57.37,10.20
.turnin 27056 >>交任务: |cRXP_FRIENDLY_贝尔蒙特的报告|r
.accept 27065 >>接任务: |cRXP_WARN_酋长的舰队|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战斧上将|r, |cRXP_FRIENDLY_督军托尔罗克|r
>>按照箭头检查稀有|cRXP_ENEMY_Nightlash|r、|cRXD_ENEMY_Gnath|r和|cRXP_ENEMY_Bolgaff|r的位置
.goto 21,52.57,25.71,25,0
.goto 21,50.06,29.25,25,0
.goto 21,48.38,24.48,25,0
.goto 21,44.06,21.36
.turnin 27065 >>交任务: |cRXP_FRIENDLY_酋长的舰队|r
.accept 27069 >>接任务: |cRXP_WARN_钢雷|r
.accept 27073 >>接任务: |cRXP_WARN_让他们尝尝苦头|r
.target Admiral Hatchet
.target Warlord Torok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师虫污|r
.target Apothecary Wormcrud
.goto 21,44.80,20.91
.accept 27082 >>接任务: |cRXP_WARN_肮脏的游戏|r
step
#completewith next
>>杀死|cRXP_ENEMY_Worgs|r和|cRXP_ENEMY_Bear|r。掠夺它们的|cRXP_Loot_器官|r
.goto 21,42.44,20.06,20,0
.goto 21,38.58,23.93,10,0
.goto 21,37.45,23.73
.complete 27082,1 
.mob Giant Rabid Bear
.mob Rabid Worg
step
#completewith next
>>杀死|cRXP_ENEMY_Bloodfang清道夫|r
.goto 21,39.41,25.88,20,0
.goto 21,37.89,27.44,20,0
.goto 21,38.79,30.30,20,0
.goto 21,40.19,29.25
.goto 21,39.20,28.09,0,0
.complete 27073,1 
.mob Bloodfang Scavenger
step
>>捡起地上的|cRXP_Pick_crates|r
.goto 21,39.20,28.09
.complete 27069,1 
step
#sticky
#label SilverpineBloodfangScavenger
>>杀死|cRXP_ENEMY_Bloodfang清道夫|r
.goto 21,39.20,28.09
.complete 27073,1 
.mob Bloodfang Scavenger
step
>>杀死|cRXP_ENEMY_Worgs|r和|cRXP_ENEMY_Bear|r。掠夺它们的|cRXP_Loot_器官|r
.goto 21,45.69,27.85
.complete 27082,1 
.mob Giant Rabid Bear
.mob Rabid Worg
step
#requires SilverpineBloodfangScavenger
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战斧上将|r, |cRXP_FRIENDLY_督军托尔罗克|r
.goto 21,44.00,21.34
.turnin 27069 >>交任务: |cRXP_FRIENDLY_钢雷|r
.turnin 27073 >>交任务: |cRXP_FRIENDLY_让他们尝尝苦头|r
.accept 27095 >>接任务: |cRXP_WARN_粘丝的威胁|r
.accept 27093 >>接任务: |cRXP_WARN_迷失在黑暗中|r
.target Admiral Hatchet
.target Warlord Torok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师虫污|r
.target Apothecary Wormcrud
.goto 21,44.79,20.91
.turnin 27082 >>交任务: |cRXP_FRIENDLY_肮脏的游戏|r
.accept 27088 >>接任务: |cRXP_WARN_你摄取的不过是毒素|r
step
#completewith SilverpineSkitterwebMatriarch
>>摧毁|cRXP_ENEMY_Webbed Victims|r以释放|cRXP_FRIENDLY_Orc海狗|r
>>留意罕见的|cRXP_ENEMY_Krethis the Shadowspinner|r
.goto 21,35.90,14.58,0,0
.complete 27093,1 
.mob Webbed Victim
step
#completewith SilverpineSkitterwebMatriarch
>>杀死|cRXP_ENEMY_Skitterweb蜘蛛|r
.goto 21,35.90,14.58,0,0
.complete 27095,1 
.mob Skitterweb Spider
step
>>顺着箭头进入矿井。跳上岩石
>>|cRXP_WARN_跳跃位置旁边可能有一个箱子|r
.goto 21,35.14,11.29,10,0
.goto 21,35.47,10.51,10,0
.goto 21,34.95,10.29,10,0
.goto 21,35.56,9.29
.accept 27094 >>接任务: |cRXP_WARN_黑暗的更深处|r
step
#label SilverpineSkitterwebMatriarch
>>杀死|cRXP_ENEMY_Skitterweb矩阵|r
.goto 21,35.94,8.65
.complete 27094,1 
.mob Skitterweb Matriarch
step
#completewith next
.goto 21,35.85,7.98,10 >>检查是否有可能的|cRXP_PICK_胸部|r
.goto 21,34.67,7.82,10,0
.goto 21,35.60,13.38,10 >>离开洞穴
step
#sticky
#label SilverpineOrcSeaDog
>>摧毁|cRXP_ENEMY_Webbed Victims|r以释放|cRXP_FRIENDLY_Orc海狗|r
>>留意罕见的|cRXP_ENEMY_Krethis the Shadowspinner|r
.goto 21,34.80,15.02,30,0
.goto 21,35.60,17.69,30,0
.goto 21,35.90,14.58,0,0
.complete 27093,1 
.mob Webbed Victim
step
>>杀死|cRXP_ENEMY_Skitterweb蜘蛛|r
.goto 21,37.11,16.23,30,0
.goto 21,34.80,15.02,30,0
.goto 21,35.60,17.69,30,0
.goto 21,35.90,14.58
.complete 27095,1 
.mob Skitterweb Spider
step
>>在你的任务日志中点击你的小地图下的任务
.turnin 27095 >>交任务: |cRXP_FRIENDLY_粘丝的威胁|r
step
#requires SilverpineOrcSeaDog
>>在|cRXP_ENEMY_Ettin|r上使用|T132598:0|t[突变体布什鸡笼]。
*|cRXP_WARN_The |cRXP_ENEMY_Ettin|r runs around the village. Click on the quest on the map/quest tracker to track the |cRXP_ENEMY_Ettin|r. You should see a small yellow waypoint at his position.|r
.goto 21,46.68,18.04,30,0
.goto 21,46.20,28.45,30,0
.goto 21,39.64,29.99,30,0
.goto 21,39.90,16.58
.use 60808
.complete 27088,1 
.mob Forest Ettin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师虫污|r, |cRXP_FRIENDLY_战斧上将|r, |cRXP_FRIENDLY_督军托尔罗克|r
.turnin 27088 >>交任务: |cRXP_FRIENDLY_你摄取的不过是毒素|r
.goto 21,44.79,20.91
.turnin 27093 >>交任务: |cRXP_FRIENDLY_迷失在黑暗中|r
.turnin 27094 >>交任务: |cRXP_FRIENDLY_黑暗的更深处|r
.accept 27096 >>接任务: |cRXP_WARN_兽人准备就绪|r
.goto 21,44.01,21.32
.target Apothecary Wormcrud
.target Admiral Hatchet
.target Warlord Torok
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蝙蝠管理员玛格特布里斯|r
.goto 21,45.94,21.88
.fly Forsaken High Command >>飞往被遗忘的最高指挥部
.target Bat Handler Maggotbreath
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
*Dismount before talking to Sylvanas
.target Lady Sylvanas Windrunner
.goto 21,57.37,10.20
.turnin 27096 >>交任务: |cRXP_FRIENDLY_兽人准备就绪|r
.accept 27097 >>接任务: |cRXP_WARN_崛起吧，被遗忘者|r
step
>>杀死|cRXP_ENEMY_Hillsbrad难民|r，而|cRXP_FRIENDLY_Agatha|r就在你旁边
*|cRXP_WARN_Wait until Agatha spawns before mounting up. If she despawns just dismount and wait for her to reappear|r
.goto 21,64.87,19.37,30,0
.goto 21,65.70,26.35
.complete 27097,1 
step
>>在你的任务日志中点击你的小地图下的任务
.goto 21,65.70,26.35
.turnin 27097 >>交任务: |cRXP_FRIENDLY_崛起吧，被遗忘者|r
.accept 27099 >>接任务: |cRXP_WARN_无处可逃|r
step
.goto 21,65.73,24.39,10,0
.goto 21,66.27,24.34,10,0
.goto 21,66.07,23.92,10,0
.goto 21,65.54,23.44,10,0
.goto 21,65.92,23.35,8,0
.goto 21,65.94,23.91,8,0
.goto 21,65.29,23.94,10,0
.goto 21,65.27,24.97
>>找到上层的领导者。如果你能活下来，你不需要杀死任何暴徒|cRXP_WARN_i。|r
*|cRXP_WARN_DON'T SKIP THE CINEMATIC|r
.complete 27099,1 
step
#completewith next
+您可以跳过下一个过场（Esc->是）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.target Lady Sylvanas Windrunner
.goto 21,57.35,10.21
.turnin 27099 >>交任务: |cRXP_FRIENDLY_无处可逃|r
.accept 27098 >>接任务: |cRXP_WARN_洛丹伦|r
step
.complete 27098,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.target Lady Sylvanas Windrunner
.goto 21,44.89,41.65
.turnin 27098 >>交任务: |cRXP_FRIENDLY_洛丹伦|r
.accept 27180 >>接任务: |cRXP_LOOT_逝者的荣耀|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战斧上将|r, |cRXP_FRIENDLY_督军托尔罗克|r
.goto 21,45.78,41.94
.accept 27226 >>接任务: |cRXP_WARN_解醉酒|r
.accept 27231 >>接任务: |cRXP_WARN_芬里斯的援兵|r
.target Admiral Hatchet
.target Warlord Torok
step
#completewith SilverpineAcceptExcisingtheTaint
.goto 21,46.42,42.70
.skipgossip 6739,1
.home >>将你的炉石设定为坟墓
step
#completewith SilverpineAcceptExcisingtheTaint
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡洛斯·拉佐克|r
.goto 21,45.41,42.48
.fp >>获取the Sepulcher飞行路线
.target Karos Razok
step
#label SilverpineAcceptExcisingtheTaint
>>杀死一个|cRXP_ENEMY_Bloodfang Stalker|r以触发任务
.goto 21,47.28,46.68
.accept 27181 >>接任务: |cRXP_WARN_洗刷污点|r
.mob Bloodfang Stalker
step
#completewith next
>>在地面上掠夺|cRXP_FRIENDLY_Veteran被遗弃士兵的尸体|r
.complete 27180,1 
.target Veteran Forsaken Trooper
step
>>杀死|cRXP_ENEMY_Bloodfang跟踪者|r
>>留意罕见的|cRXP_ENEMY_Berard the Moon Crazed|r
.goto 21,43.34,50.79,15,0
.goto 21,46.27,51.27,25,0
.goto 21,47.48,49.47,30,0
.goto 21,47.03,53.10
.complete 27181,1 
.mob Bloodfang Stalker
step
>>在你的任务日志中点击你的小地图下的任务
.turnin 27181 >>交任务: |cRXP_FRIENDLY_洗刷污点|r
.accept 27193 >>接任务: |cRXP_WARN_搜索并毁灭|r
step
>>杀死|cRXP_ENEMY_Caretaker Smithers|r。抢走他的|cRXX_Loot_日志|r
.goto 21,45.90,54.23
.complete 27193,1 
.mob Caretaker Smithers
step
>>在你的任务日志中点击你的小地图下的任务
.turnin 27193 >>交任务: |cRXP_FRIENDLY_搜索并毁灭|r
.accept 27194 >>接任务: |cRXP_WARN_走投无路！|r
step
>>在地面上掠夺|cRXP_FRIENDLY_Veteran被遗弃士兵的尸体|r
.goto 21,47.03,53.10,30,0
.goto 21,46.27,51.27,25,0
.goto 21,47.48,49.47,30,0
.goto 21,45.55,49.45,30,0
.goto 21,47.03,53.10
.complete 27180,1 
.target Veteran Forsaken Trooper
step
#requires SilverpineForsakenInsignia
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_士官长弗尔特斯基|r
.goto 21,55.88,46.35
.turnin 27194 >>交任务: |cRXP_FRIENDLY_走投无路！|r
.accept 27195 >>接任务: |cRXP_WARN_无处可跑|r
.target Master Forteski
step
*|cRXP_WARN_Don't run too far away from |cRXP_FRIENDLY_Master Forteski|r|r
.goto 21,58.05,44.89
.complete 27195,1 
.target Master Forteski
step
#completewith next
.goto 21,56.46,46.06,10 >>离开洞穴
step
#completewith SilverpineHairoftheDog
>>杀死|cRXP_ENEMY_Hillsbrad Worgen|r
.goto 21,56.64,34.11,0,0
.complete 27231,1 
.mob Hillsbrad Worgen
step
#title Orc roused 1/8
>>对兽人海狗使用|T252176:0|t[一桶爆炸性的啤酒]
*Keep an eye out for chests
.goto 21,54.25,38.83
.use 60870
.complete 27226,1,1 
.target Orc Sea Dog
step
#completewith next
.goto 21,53.51,38.64,10 >>检查是否有可能的|cRXP_PICK_胸部|r
step
#title Orc roused 2/8
>>对兽人海狗使用|T252176:0|t[一桶爆炸性的啤酒]
*Keep an eye out for chests
.goto 21,53.86,37.49
.use 60870
.complete 27226,1,2 
.target Orc Sea Dog
step
#title Orc roused 3/8
>>对兽人海狗使用|T252176:0|t[一桶爆炸性的啤酒]
*Keep an eye out for chests
.goto 21,54.37,36.25
.use 60870
.complete 27226,1,3 
.target Orc Sea Dog
step
#title Orc roused 4/8
>>对兽人海狗使用|T252176:0|t[一桶爆炸性的啤酒]
*Keep an eye out for chests
.goto 21,53.91,35.74
.use 60870
.complete 27226,1,4 
.target Orc Sea Dog
step
#completewith next
.goto 21,54.43,34.34,10 >>检查是否有可能的胸部
step
#title Orc roused 5/8
>>对兽人海狗使用|T252176:0|t[一桶爆炸性的啤酒]
*Keep an eye out for chests
.goto 21,54.47,33.00
.use 60870
.complete 27226,1,5 
.target Orc Sea Dog
step
#title Orc roused 6/8
>>对兽人海狗使用|T252176:0|t[一桶爆炸性的啤酒]
*Keep an eye out for chests
.goto 21,56.08,32.18
.use 60870
.complete 27226,1,6 
.target Orc Sea Dog
step
#title Orc roused 7/8
>>对兽人海狗使用|T252176:0|t[一桶爆炸性的啤酒]
*Keep an eye out for chests
.goto 21,57.05,32.67
.use 60870
.complete 27226,1,7 
.target Orc Sea Dog
step
#label SilverpineHairoftheDog
#title Orc roused 8/8
>>对兽人海狗使用|T252176:0|t[一桶爆炸性的啤酒]
*Keep an eye out for chests
.goto 21,57.76,34.06
.use 60870
.complete 27226,1 
.target Orc Sea Dog
step
>>杀死|cRXP_ENEMY_Hillsbrad Worgen|r
.goto 21,57.01,34.96,30,0
.goto 21,54.34,34.19,30,0
.goto 21,52.93,31.90,30,0
.goto 21,56.64,34.11,0,0
.complete 27231,1 
.mob Hillsbrad Worgen
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Horde Communication Panel|r
.goto 21,59.24,34.22
.turnin 27231 >>交任务: |cRXP_FRIENDLY_芬里斯的援兵|r
.accept 27232 >>接任务: |cRXP_WARN_血染湖水……|r
step
#completewith next
.goto 21,59.62,33.53
.vehicle 45263 >>输入|cRXP_PICK_Horde Cannon|r
step
>>使用|T133032:0|t[火箭爆炸]（1）杀死到达的|cRXP_ENEMY_Worgen|r
>>留意罕见的|cRXP_ENEMY_Fenwick Thatros|r
.goto 21,59.38,33.46,8,0
.goto 21,59.62,33.53
.complete 27232,1 
step
#completewith SilverpineTheWatersRunRed
.goto 21,56.64,34.11
.deathskip >>拉一些暴徒，死后向精神治疗师猛扑
step
#completewith next
.goto 21,46.43,42.70
.vendor
step
#label SilverpineTheWatersRunRed
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战斧上将|r, |cRXP_FRIENDLY_督军托尔罗克|r
.goto 21,45.79,41.90
.turnin 27232 >>交任务: |cRXP_FRIENDLY_血染湖水……|r
.turnin 27226 >>交任务: |cRXP_FRIENDLY_解醉酒|r
.target Admiral Hatchet
.target Warlord Torok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.target Lady Sylvanas Windrunner
.goto 21,44.94,41.66
.turnin 27180 >>交任务: |cRXP_FRIENDLY_逝者的荣耀|r
.turnin 27195 >>交任务: |cRXP_FRIENDLY_无处可跑|r
.accept 27290 >>接任务: |cRXP_WARN_到被遗忘者前线指挥部去|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_Arthura|r一起飞行，并与|cRXP_RIENDLY_Dathstalker指挥官Belmont|r交谈
.goto 217,57.46,18.77
.turnin 27290 >>交任务: |cRXP_FRIENDLY_到被遗忘者前线指挥部去|r
.accept 27342 >>接任务: |cRXP_WARN_迟早，一切都会清楚的|r
.target Arthura
.target Deathstalker Commander Belmont
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_前锋军指挥官昂斯洛特|r
.target Forward Commander Onslaught
.goto 217,57.54,18.24
.accept 27333 >>接任务: |cRXP_WARN_失地|r
.accept 27345 >>接任务: |cRXP_WARN_死亡通讯器|r
step
#completewith next
>>杀死|cRXP_ENEMY_沃根叛军|r
.goto 217,55.39,13.66,20,0
.complete 27333,1 
.mob Worgen Rebel
step
#sticky
#label SilverpineKorokSecondHead
>>杀死|cRXP_ENEMY_Korok|r（巡逻）。抢劫他的|cRXP_Loot_head|r。在你的包里点击它
.goto 217,50.26,19.52,15,0
.goto 217,50.26,19.52,0,0
.collect 60956,1,27322,1
.accept 27322 >>接任务: |cRXP_WARN_双头巨人克洛科|r
.mob Korok the Colossus
step
>>拿起地面上的|cRXP_Pick_device|r
.goto 217,45.76,21.96
.complete 27345,1 
step
#requires SilverpineKorokSecondHead
#sticky
#label SilverpineWorgenRebel
>>杀死|cRXP_ENEMY_沃根叛军|r
.goto 217,54.21,22.11,20,0
.goto 217,55.10,26.28,15,0
.goto 217,54.84,19.34,0,0
.complete 27333,1 
.mob Worgen Rebel
step
#requires SilverpineKorokSecondHead
>>航路点周围的织机|cRXP_PICK_Wolfsbane|r
*Spawn is too random to place exact waypoints
.goto 217,58.82,32.55,20,0
.goto 217,62.30,33.88,30,0
.goto 217,63.78,31.96,30,0
.goto 217,59.83,28.20
.complete 27342,1 
step
#requires SilverpineWorgenRebel
.goto 217,57.49,18.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Onslaught, |cRXP_FRIENDLY_死亡猎手指挥官贝尔蒙特|r
.turnin 27333 >>交任务: |cRXP_FRIENDLY_失地|r
.turnin 27345 >>交任务: |cRXP_FRIENDLY_死亡通讯器|r
.turnin 27322 >>交任务: |cRXP_FRIENDLY_双头巨人克洛科|r
.turnin 27342 >>交任务: |cRXP_FRIENDLY_迟早，一切都会清楚的|r
.accept 27349 >>接任务: |cRXP_WARN_联络中断：恐惧之卫哨所|r
.target Forward Commander Onslaught
.target Deathstalker Commander Belmont
step
*It may not complete if you fly too high.
>>Follow the arrow
.goto 217,52.70,32.23
.complete 27349,1 
step
>>在你的任务日志中点击你的小地图下的任务
.goto 217,52.76,32.36
.turnin 27349 >>交任务: |cRXP_FRIENDLY_联络中断：恐惧之卫哨所|r
.accept 27350 >>接任务: |cRXP_WARN_联络中断：拉特萨克营地|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉特萨克队长|r
.target Captain Rutsak
.goto 217,65.64,34.21
.turnin 27350 >>交任务: |cRXP_FRIENDLY_联络中断：拉特萨克营地|r
.accept 27360 >>接任务: |cRXP_WARN_为我们的士兵们复仇|r
.accept 27364 >>接任务: |cRXP_WARN_谁下的令？|r
step
#completewith next
>>杀死该区域的|cRXP_ENEMY_Submariners|r
.complete 27360,1 
.mob 7th Legion Submariner
step
>>杀死|cRXP_ENEMY_Master Seargent Pietro Zaren |r。掠夺他以获得|cRXP_Loot_orders|r
.goto 217,58.76,47.38
.complete 27364,1 
.mob Master Seargent Pietro Zaren
step
>>在你的任务日志中点击你的小地图下的任务
.goto 217,58.17,47.43
.turnin 27364 >>交任务: |cRXP_FRIENDLY_谁下的令？|r
.accept 27401 >>接任务: |cRXP_WARN_明天的希望|r
step
>>杀死该区域的|cRXP_ENEMY_7th Legion Sumbariners|r
*|cRXP_WARN_Be careful not to pull too many because they can do a lot of damage.|r
.goto 217,60.12,45.39,20,0
.goto 217,59.17,42.96,20,0
.goto 217,57.91,45.44,20,0
.goto 217,56.73,48.52
.complete 27360,1 
.mob 7th Legion Submariner
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_spyglass|r
*|cRXP_WARN_DON'T SKIP THE CINEMATIC|r
.goto 217,54.72,44.45
.complete 27401,1 
step
>>在你的任务日志中点击你的小地图下的任务
.goto 217,54.72,44.45
.turnin 27401 >>交任务: |cRXP_FRIENDLY_明天的希望|r
.accept 27405 >>接任务: |cRXP_WARN_撤退！|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉特萨克队长|r
.target Captain Rutsak
.goto 217,65.70,34.29
.turnin 27360 >>交任务: |cRXP_FRIENDLY_为我们的士兵们复仇|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_死亡猎手指挥官贝尔蒙特|r
.target Deathstalker Commander Belmont
.goto 217,72.88,30.21
.turnin 27405 >>交任务: |cRXP_FRIENDLY_撤退！|r
.accept 27406 >>接任务: |cRXP_WARN_一个名叫高弗雷的人|r
step
>>到达航路点时自动接受
.goto 217,73.76,32.85
.accept 27423 >>接任务: |cRXP_WARN_抵抗是徒劳的|r
step
#completewith next
+|cRXP_WARN_如果没有NPC跟随你使其产卵，则解散|r
step
*Focus on killing the the |cRXP_ENEMY_Bloodfang Scout|r + 5|cRXP_ENEMY_Gilnean Warhound|r包
.goto 217,71.84,42.71,35,0
.goto 217,71.78,51.53,35,0
.goto 217,76.38,56.02,35,0
.goto 217,77.65,61.04
.complete 27423,1 
.mob Bloodfang Scout
.mob Gilnean Warhound
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_corpse|r of |cRXP_FRIENDLY_Lord Godfrey|r
.goto 217,79.70,75.78
.complete 27406,1 
.target Lord Godfrey
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_死亡猎手指挥官贝尔蒙特|r
.target Deathstalker Commander Belmont
*如果没有NPC跟随你使其产卵，则解散.
.goto 217,79.70,75.78
.turnin 27406 >>交任务: |cRXP_FRIENDLY_一个名叫高弗雷的人|r
.turnin 27423 >>交任务: |cRXP_FRIENDLY_抵抗是徒劳的|r
.accept 27438 >>接任务: |cRXP_WARN_大逃亡|r
step
.goto 21,51.77,66.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.target Lady Sylvanas Windrunner
.turnin 27438 >>交任务: |cRXP_FRIENDLY_大逃亡|r
.accept 27472 >>接任务: |cRXP_WARN_复活吧，高弗雷|r
step
#completewith SilverpineLordGodfreyReborn
+|cRXP_WARN_您只有大约40秒的时间来搜索接下来的两个稀有|r。如果速度太慢，请早点回来。如果你错过了计时器，放弃任务，重新开始。
step
#completewith next
*You have to pull him with a ranged ability as you can't see him near the Forsaken Front
.goto 21,48.53,69.00,15 >>搜索身后的尸体
step
#completewith next
.goto 21,47.43,69.93,15 >>Search for Effritus
step
#label SilverpineLordGodfreyReborn
.goto 21,51.73,65.50
.complete 27472,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r, |cRXP_FRIENDLY_达丝琪拉|r
.turnin 27472 >>交任务: |cRXP_FRIENDLY_复活吧，高弗雷|r
.accept 27474 >>接任务: |cRXP_WARN_突破屏障|r
.goto 21,51.88,65.08
.accept 27475 >>接任务: |cRXP_WARN_不屈的仆从|r
.goto 21,51.91,64.69
.target Lady Sylvanas Windrunner
.target Daschla
step
#completewith next
#title Check for Chest
.goto 21,58.48,61.62,8 >>检查可能的|cRXP_PICK_Chest|r位置
step
#completewith SilverpineBreakingtheBarrier
>>杀死该区域中的|cRXP_ENEMY_elementals|r。掠夺它们的|cRXP_Loot_cores|r
.goto 21,59.51,64.29,0,0
.complete 27475,1 
.mob Elemental Servitor
step
#completewith next
.goto 21,62.84,64.02,8 >>进入大楼
step
#label SilverpineBreakingtheBarrier
>>拿起|cRXP_Pick_book|r。
.goto 21,63.48,64.25
.complete 27474,1 
step
#completewith next
.goto 21,62.84,64.02,8 >>Leave the building
step
>>杀死该区域中的|cRXP_ENEMY_elementals|r。掠夺它们的|cRXP_Loot_cores|r
.goto 21,59.51,64.29,0,0
.complete 27475,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达丝琪拉|r, |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.turnin 27475 >>交任务: |cRXP_FRIENDLY_不屈的仆从|r
.goto 21,51.89,64.67
.turnin 27474 >>交任务: |cRXP_FRIENDLY_突破屏障|r
.accept 27476 >>接任务: |cRXP_WARN_达拉尔·道恩维沃尔|r
.goto 21,51.94,64.99
.target Daschla
.target Lady Sylvanas Windrunner
step
#completewith next
.goto 21,50.85,63.72
.fly The Sepulcher >>飞向坟墓
step
.goto 21,47.06,43.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达拉尔·道恩维沃尔|r
.target Dalar Dawnweaver
.turnin 27476 >>交任务: |cRXP_FRIENDLY_达拉尔·道恩维沃尔|r
.accept 27478 >>接任务: |cRXP_WARN_圣物守护者莱利斯|r
.accept 27483 >>接任务: |cRXP_WARN_实用主义的复仇|r
step
#completewith next
.goto 25,30.10,37.07,50 >>点击达拉然陨石坑入口
step
>>杀死一个|cRXP_ENEMY_奥术遗存者|r。为|cRXD_Loot_Arcane遗存者|r掠夺它。点击你的包中
.goto 25,30.10,37.07
.collect 61310,1,27480
.accept 27480 >>接任务: |cRXP_WARN_地脉能量|r
.mob Arcane Remnant
step
#completewith next
>>杀死|cRXP_ENEMY_奥术残余物|r。掠夺他们的|cRXX_Loot_残余物|r
.goto 25,31.86,37.55,15,0
.complete 27480,1 
.mob Arcane Remnant
step
#completewith next
*Focus on killing |cRXP_ENEMY_Dalaran Workers|r. The summoners are not worth it
.goto 25,29.72,44.21,0,0
.unitscan Indigos
.complete 27483,1 
.mob Dalaran Worker
step
>>杀死|cRXP_ENEMY_Relios圣物|r。掠夺他获得|cRXX_Loot_ring
>>留意罕见的|cRXP_ENEMY_Indigos|r
.goto 25,31.73,39.82,15,0
.goto 25,32.76,43.09
.complete 27478,1 
.mob Relios the Relic
step
#sticky
#label SilverpineDalaranHuman
*Focus on killing |cRXP_ENEMY_Dalaran Workers|r. The summoners are not worth it
.goto 25,30.78,43.81,15,0
.goto 25,29.01,43.88
.complete 27483,1 
.mob Dalaran Worker
step
>>杀死|cRXP_ENEMY_奥术残余物|r。掠夺他们的|cRXX_Loot_残余物|r
.goto 25,30.31,40.28,15,0
.goto 25,30.40,38.09
.complete 27480,1 
.mob Arcane Remnant
step
#requires SilverpineDalaranHuman
#completewith next
.goto 25,30.29,36.62
.zone 21 >>带上通往坟墓的传送门
step
#requires SilverpineDalaranHuman
.goto 21,47.07,43.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达拉尔·道恩维沃尔|r
.target Dalar Dawnweaver
.turnin 27478 >>交任务: |cRXP_FRIENDLY_圣物守护者莱利斯|r
.accept 27484 >>接任务: |cRXP_WARN_只有一个人能进|r
.turnin 27483 >>交任务: |cRXP_FRIENDLY_实用主义的复仇|r
.turnin 27480 >>交任务: |cRXP_FRIENDLY_地脉能量|r
step
#completewith next
.goto 21,45.50,42.47
.fly The Forsaken Front >>飞向被遗忘的前线
step
#label SilverpineOnlyOneMayEnter
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔瓦娜斯·风行者|r
.target Lady Sylvanas Windrunner
.goto 21,51.85,64.94
.turnin 27484 >>交任务: |cRXP_FRIENDLY_只有一个人能进|r
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#group RestedXP Horde 10-60
#name 5 Horde Hillsbrad山麓
#displayname Chapter 7 - Hillsbrad Foothills
#next 6 Horde Spires of Arak <<!Monk
#next 99 Monk Quest Horde <<Monk
#veteran
<< Horde
step
.zoneskip 85,1
#completewith HillsbradHillsbradFoothills
.goto 85,56.02,88.25
.zone 110 >>乘坐通往银月的门户
step
.zoneskip 18,1
#completewith HillsbradHillsbradFoothills
.goto 110,51.84,17.95,8,0
.goto 110,49.52,17.19,8,0
.goto 110,48.87,14.04,8,0
.goto 110,49.52,14.81
.zone 18 >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Orb of Translocation|r
step
.zoneskip 18,1
.itemcount 132516,<1
#completewith HillsbradHillsbradFoothills
+Fly to Hillsbrad
step
.zoneskip 18,1
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
#label HillsbradHillsbradFoothills
.isOnQuest 28089
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_to High Executor Darthalia|r
.target to High Executor Darthalia
.goto 25,29.24,63.34
.turnin 28089 >>交任务: |cRXP_FRIENDLY_酋长的命令：希尔斯布莱德丘陵！|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_to High Executor Darthalia|r
.target to High Executor Darthalia
.goto 25,29.24,63.34
.accept 28096 >>接任务: |cRXP_WARN_任务给予者的体验|r
step
#completewith next
.goto 25,29.34,63.44
.vehicle 47488 >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Skeletal Steed|r
.target Skeletal Steed
step
>>待在|cRXP_FRIENDLY_Steed|r上，与靠近的|cRXP-FRIENDLY_NPCs|r交谈
.skipgossip 1
.complete 28096,1 
.complete 28096,2 
.complete 28096,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.target High Executor Darthalia
.goto 25,29.24,63.34
.turnin 28096 >>交任务: |cRXP_FRIENDLY_任务给予者的体验|r
.accept 28111 >>接任务: |cRXP_WARN_碧玉矿洞的麻烦|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师安德希尔|r
.target Apothecary Underhill
.goto 25,29.21,64.04
.accept 28115 >>接任务: |cRXP_WARN_雄风尽失|r
.accept 28114 >>接任务: |cRXP_WARN_惊人的产量|r
step
#completewith next
.goto 25,29.46,64.12
.vendor
step
>>杀死|cRXP_ENEMY_被感染的熊|r。从它们的背上抢走蛋
*|cRXP_WARN_Don't use AOE abilities otherwise you'll kill the Eggs|r. Each Bear has 8 Eggs.
.goto 25,36.04,70.81
.complete 28115,1 
.complete 28114,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯东上尉|r, |cRXP_FRIENDLY_驯蛛人萨露丝|r
.goto 25,33.29,73.58
.turnin 28111 >>交任务: |cRXP_FRIENDLY_碧玉矿洞的麻烦|r
.turnin 28115 >>交任务: |cRXP_FRIENDLY_雄风尽失|r
.turnin 28114 >>交任务: |cRXP_FRIENDLY_惊人的产量|r
.accept 28144 >>接任务: |cRXP_WARN_可恶的小偷！|r
.accept 28138 >>接任务: |cRXP_WARN_人类的侵扰|r
.target Captain Keyton
.target Spider-Handler Sarus
step
#completewith next
.goto 25,33.50,71.99,5 >>Enter the Mine
step
#sticky
#label SilverpineHillbradHuman
>>|cRX_WARN_不要杀死人类|r。在35%生命值或以下使用|T134881:0|t[钛制镣铐]。
.use 63079
.complete 28138,1 
.mob Hillsbrad Miner
.mob Hillsbrad Sentry
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜马斯|r
.target Dumass
.goto 25,35.71,71.51,10,0
.goto 25,36.63,70.19
.accept 28156 >>接任务: |cRXP_WARN_逃出深矿|r
step
#completewith next
+扫描稀有后离开洞穴
step
*|cRXP_WARN_Dumass follows you but he will randomly attack Miners so be careful not to loose him!|r
>>留意罕见的|cRXP_ENEMY_Miasmiss|r
.goto 25,36.77,68.39,15,0
.complete 28156,1 
.goto 25,33.29,73.58
step
#requires SilverpineHillbradHuman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_ENEMY_驯蛛人萨露丝|r
.goto 25,33.27,73.62
.accept 28146 >>接任务: |cRXP_WARN_海滩上的美餐！|r
.target Spider-Handler Sarus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keytron|r
.isQuestComplete 28138
.goto 25,33.27,73.67
.turnin 28138 >>交任务: |cRXP_FRIENDLY_人类的侵扰|r
.target Captain Keytron
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keytron|r
.goto 25,33.27,73.67
.turnin 28156 >>交任务: |cRXP_FRIENDLY_逃出深矿|r
.target Captain Keytron
step
#completewith next
>>杀死|cRXP_ENEMY_Muckgill|r。抢走他|cRXX_Loot_Muckgill的Flipper|r。点击你的包里
.use 63090
.collect 63090,1,28154
.accept 28154 >>接任务: |cRXP_WARN_泥鳃的鳍……是吗？|r
.mob Muckgill
step
#sticky
#label HillsbradMurlocsFedSpider
>>杀死区域中的|cRXP_ENEMY_murlocs|r
>>留意罕见的|cRXP_ENEMY_Scargil|r
.goto 25,33.14,79.60,0,0
.complete 28146,1 
.mob Torn Fin Muckdweller
.mob Torn Fin Coastrunner
step
>>拿起地面上的|cRXP_Pick_supply|r
.goto 25,31.37,75.71,10,0
.goto 25,32.52,79.91,10,0
.goto 25,34.47,81.14,10,0
.goto 25,35.81,81.72,10,0
.goto 25,37.60,80.94,10,0
.goto 25,32.60,79.96
.complete 28144,1 
step
>>杀死|cRXP_ENEMY_Muckgill|r。抢走他|cRXX_Loot_Muckgill的Flipper|r。点击你的包里
.use 63090
.collect 63090,1,28154
.accept 28154 >>接任务: |cRXP_WARN_泥鳃的鳍……是吗？|r
.mob Muckgill
step
#requires HillsbradMurlocsFedSpider
#completewith next
.unitscan Little Bjorn
.goto 25,35.08,78.48,25 >>在跑回营地之前，试着瞄准|cRXP_ENEMY_Little Bjorn|r。
.mob Little Bjorn
step
#requires HillsbradMurlocsFedSpider
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驯蛛人萨露丝|r, |cRXP_FRIENDLY_凯东上尉|r
.goto 25,33.27,73.67
.turnin 28146 >>交任务: |cRXP_FRIENDLY_海滩上的美餐！|r
.turnin 28138 >>交任务: |cRXP_FRIENDLY_人类的侵扰|r
.turnin 28144 >>交任务: |cRXP_FRIENDLY_可恶的小偷！|r
.turnin 28156 >>交任务: |cRXP_FRIENDLY_可恶的小偷！|r

.turnin 28154 >>交任务: |cRXP_FRIENDLY_可恶的小偷！|r
.accept 28168 >>接任务: |cRXP_WARN_药渣农场的麻烦|r
.target Spider-Handler Sarus
.target Captain Keyton
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者斯蒂沃特|r
.target Warden Stillwater
*Skip the next cinematic with ESC
.goto 25,36.22,61.16
.turnin 28168 >>交任务: |cRXP_FRIENDLY_药渣农场的麻烦|r
.accept 28192 >>接任务: |cRXP_WARN_无人生还|r
.turnin 28192 >>交任务: |cRXP_FRIENDLY_无人生还|r
.accept 28197 >>接任务: |cRXP_WARN_谨慎行事|r
step
#completewith SilverpineForScience
.goto 25,35.85,61.26
.home >>将你的炉石设置为污泥场
step
#completewith next
.goto 25,36.12,60.68
.vendor >>卖你所有的垃圾。
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血肉塑造者阿尔瑙德|r
.goto 25,36.34,60.24
.accept 28199 >>接任务: |cRXP_WARN_为了科学！|r
.target Flesh-Shaper Arnauld
step
#sticky
#label HillsbradFleshSample
>>杀死该区域的|cRXP_ENEMY_僵尸|r。获取一些|cRXP_Loot_samples|r
.goto 25,38.89,63.91,0,0
.complete 28199,1 
.mob Risen Hillsbrad Peasant
.mob Risen Hillsbrad Farmer
step
>>杀死|cRXP_ENEMY_Clerk Horrace|r。为|cRXD_Loot_希尔斯堡之战|r而掠夺他。点击你的包里
.goto 25,37.82,63.37,10,0
.goto 25,38.26,63.19
.use 63249
.complete 28197,2 
.collect 63249,1,28196
.accept 28196 >>接任务: |cRXP_WARN_希尔斯布莱德之战|r
.mob Clerk Horrace Whitesteed
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Shovel|r
.goto 25,39.73,63.04
.accept 28189 >>接任务: |cRXP_WARN_做正确的事|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_FRIENDLY_Human Seedlings|r
.complete 28197,1 
.goto 25,38.98,64.14
.complete 28189,1 
.goto 25,39.14,63.57
.target Human Seedling
step
>>点击你的小地图下的任务弹出窗口，或在你的任务日志中搜索任务
.goto 25,38.45,63.16
.turnin 28189 >>交任务: |cRXP_FRIENDLY_做正确的事|r
step
#label SilverpineForScience
#requires HillsbradFleshSample
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血肉塑造者阿尔瑙德|r
.goto 25,36.34,60.23
.turnin 28199 >>交任务: |cRXP_FRIENDLY_为了科学！|r
.target Flesh-Shaper Arnauld
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者斯蒂沃特|r
.target Warden Stillwater
.goto 25,36.18,61.14
.turnin 28196 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.turnin 28197 >>交任务: |cRXP_FRIENDLY_谨慎行事|r
.accept 28206 >>接任务: |cRXP_WARN_失踪的小伙|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_强尼·傲森|r, |cRXP_FRIENDLY_大药剂师林度恩|r
*|cRXP_WARN_DON'T KILL ANYTHING ON YOUR WAY|r
.goto 25,40.33,59.40
.turnin 28206 >>交任务: |cRXP_FRIENDLY_失踪的小伙|r
.accept 28209 >>接任务: |cRXP_WARN_释放林度恩|r
.target Johnny Awesome
.target Master Apothecary Lydon
step
#completewith next
.goto 25,39.55,60.36,15 >>检查|cRXP_PICK_Chest|r位置
step
>>杀死|cRXP_ENEMY_Infected Sludge Guards|r。掠夺它们以获取|cRXP_Loot_key|r
.goto 25,38.97,59.66
.complete 28209,1 
.mob Infected Sludge Guard
step
#completewith HillsbradHeadOfWardenStillwater
+|cRXP_WARN_如果您看不到|cRXP_FRIENDLY_Lydon|r或|cRXP_FRIENDLY_Johnny|r，请下车并等待它们重新出现|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师林度恩|r
.target Master Apothecary Lydon
.goto 25,40.25,59.32
.turnin 28209 >>交任务: |cRXP_FRIENDLY_释放林度恩|r
.accept 28230 >>接任务: |cRXP_WARN_准则|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_强尼·傲森|r
.target Johnny Awesome
.goto 25,40.25,59.32
.accept 28231 >>接任务: |cRXP_WARN_为烁影报仇|r
step
>>杀死|cRXP_ENEMY_Monstrosity|r和|cRXP_ENEMY_Verringtan|r
.goto 25,38.37,56.61
.complete 28230,1 
.complete 28231,1 
.mob The Ray-Getz-Kalaba Monstrosity
.mob Blacksmith Verringtan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_强尼·傲森|r, |cRXP_FRIENDLY_大药剂师林度恩|r
.goto 25,38.22,56.71
.turnin 28230 >>交任务: |cRXP_FRIENDLY_准则|r
.turnin 28231 >>交任务: |cRXP_FRIENDLY_为烁影报仇|r
.accept 28235 >>接任务: |cRXP_WARN_波恩塞德必须死|r
.target Johnny Awesome
.target Master Apothecary Lydon
step
>>走到|cRXP_ENEMY_治安法官伯恩赛德|r面前杀死他。
.goto 25,36.64,58.00
.complete 28235,1 
.mob Magistrate Burnside
step
.goto 25,36.65,58.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师林度恩|r
.target Master Apothecary Lydon
.turnin 28235 >>交任务: |cRXP_FRIENDLY_波恩塞德必须死|r
.accept 28237 >>接任务: |cRXP_WARN_大地的疫病|r
step
>>杀死|cRXP_ENEMY_Warden Stillwater|r。掠夺他的|cRXX_Loot_head|r
*Make sure to face Warden Stillwater to the house because he will knock you back
.goto 25,36.37,61.16
.complete 28237,1 
.mob Warden Stillwater
step
#label HillsbradHeadOfWardenStillwater
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师林度恩|r
.target Master Apothecary Lydon
.goto 25,36.65,61.20
.turnin 28237 >>交任务: |cRXP_FRIENDLY_大地的疫病|r
.accept 28251 >>接任务: |cRXP_WARN_南海镇的麻烦|r
step
#completewith next
.goto 25,49.03,66.22
.fp >>获取南岸航线的废墟
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟尔格·希诺特|r
.target Serge Hinott
>>留意罕见的|cRXP_ENEMY_Alitus|r
.unitscan Alitus
.goto 25,49.10,66.36
.turnin 28251 >>交任务: |cRXP_FRIENDLY_南海镇的麻烦|r
.accept 28325 >>接任务: |cRXP_WARN_绿色生活|r
.accept 28324 >>接任务: |cRXP_WARN_致命性研究|r
step
#sticky
#label HillsbradBlightSample
>>在区域中的|cRXP_ENEMY_slimes|r上使用|T307036:0|t[致死率分析器]
*|cRXP_WARN_Remember that you can also just click on the slimes to use the item|r
.use 63426
.goto 25,48.90,72.12,0,0
.complete 28324,1 
.mob Blight Slime
step
#completewith HillsbradAngryBlightSlime
>>从地面拾取|cRXP_Pick_用过的水泡罐|r
.goto 25,48.56,72.02,0,0
.complete 28325,1 
step
>>杀死一个|cRXP_ENEMY_Angry Blight Slime|r
.goto 25,48.73,72.07
.accept 28329 >>接任务: |cRXP_WARN_愤怒的软泥怪|r
.mob Angry Blight Slime
step
*|cRXP_WARN_Make sure to drain them before killing them|r
>>杀死|cRXP_ENEMY_Angry Blight Slimes|r
.goto 25,49.20,72.21,15,0
.goto 25,46.27,73.67,20,0
.goto 25,47.20,70.96,20,0
.goto 25,48.71,72.55
.complete 28329,1 
.mob Angry Blight Slime
step
#label HillsbradAngryBlightSlime
>>点击你的小地图下的任务弹出窗口，或在你的任务日志中搜索任务
.goto 25,48.71,72.55
.turnin 28329 >>交任务: |cRXP_FRIENDLY_愤怒的软泥怪|r
.accept 28330 >>接任务: |cRXP_WARN_污秽的试炼|r
step
>>在房子里找到并杀死|cRXP_ENEMY_Chet|r|cRXP_WARN_你可以抽干他，让战斗更轻松|r
.goto 25,47.87,72.44
.complete 28330,1 
.mob Chet the Slime-Breeder
step
>>从地面拾取|cRXP_Pick_用过的水泡罐|r
.goto 25,49.33,71.34,20,0
.goto 25,50.12,70.69,20,0
.goto 25,49.63,69.59,20,0
.goto 25,48.56,72.02,0,0
.complete 28325,1 
step
#requires HillsbradBlightSample
#completewith next
.goto 25,46.89,75.48,10 >>尝试针对罕见的|cRXP_ENEMY_Carcinak|r
.mob Carcinak
step
#requires HillsbradBlightSample
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弑君者奥尔库斯|r
.target Kingslayer Orkus
.goto 25,49.57,74.40
.skipgossip 1
.accept 28345 >>接任务: |cRXP_WARN_*咕噜*救命！*咕噜*|r
.complete 28345,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弑君者奥尔库斯|r
.target Kingslayer Orkus
*Skip the next cinematic with ESC
.goto 25,50.02,74.34
.turnin 28345 >>交任务: |cRXP_FRIENDLY_*咕噜*救命！*咕噜*|r
.accept 28348 >>接任务: |cRXP_WARN_雷矛集合点|r
.turnin 28348 >>交任务: |cRXP_FRIENDLY_雷矛集合点|r
.accept 28354 >>接任务: |cRXP_WARN_振翅高飞|r
step
>>杀死|cRXP_ENEMY_Daggerspine|r。掠夺他以获取|cRXD_Loot_Daggerspine攻击计划|r。在你的包里点击它
.goto 25,51.62,74.95
.use 63686
.collect 63686,1,28356
.accept 28356 >>接任务: |cRXP_WARN_先发制人|r
.mob Daggerspine
step
#completewith next
.mob Lady Zephris
.goto 25,54.92,76.36,15 >>尝试瞄准罕见的|cRXP_ENEMY_Lady Zephrins|r
step
>>杀死|cRXP_ENEMY_Daggerspine Nagas|r
.goto 25,54.34,77.17,25,0
.goto 25,55.11,81.10
.complete 28356,1 
.mob Daggerspine Shorestalker
.mob Daggerspine Shorehunter
.mob Daggerspine Screamer
.mob Daggerspine Siren
step
#sticky
#label HillsbradMudsnoutBlossom
>>拿起|cRXP_Pick_Mushrooms|r
.goto 25,57.72,74.66,0,0
.complete 28354,1 
step
>>杀死场上的|cRXP_ENEMY_Mudsouth Gnoll|r或|cRXP_ENEMY_Shaman|r|cRXT_WARN_
*If this doesn't trigger after the first kill, turn on "Trivial Quests" in your tracking menu next to the minimap.
.accept 28355 >>接任务: |cRXP_WARN_可怖的小兽|r
.mob Mudsnout Gnoll
.mob Mudsnout Shaman
step
#completewith next
.goto 25,57.49,74.48,8 >>检查可能的|cRXP_PICK_Chest|r位置
step
>>杀死|cRXP_ENEMY_Mudsount Gnolls|r或|cRXX_ENEMY_Shamans|r
>>留意罕见的|cRXP_ENEMY_Ro'Bark|r和|cRX_PICK_胸脯|r
.goto 25,57.16,75.18
.complete 28355,1 
.mob Mudsnout Gnoll
.mob Mudsnout Shaman
step
>>点击你的小地图下的任务弹出窗口，或在你的任务日志中搜索任务
.goto 25,57.16,75.18
.turnin 28355 >>交任务: |cRXP_FRIENDLY_可怖的小兽|r
step
#requires HillsbradMudsnoutBlossom
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰克尔队长|r, |cRXP_FRIENDLY_尼尔斯·毕若特|r
.accept 28635 >>接任务: |cRXP_WARN_闹鬼事件|r
.accept 28643 >>接任务: |cRXP_WARN_敦霍尔德挑战赛：泽菲鲁斯|r
.goto 25,60.01,63.34
.accept 28634 >>接任务: |cRXP_WARN_大灭绝|r
.goto 25,60.14,63.76
.target Captain Jekyll
.target Nils Beerot
step
>>杀死|cRXP_ENEMY_Rampaging猫头鹰|r
>>留意稀有|cRXP_ENEMY_Big Samras|r和|cRXX_ENEMY_Lopex|r
.goto 25,63.61,52.69,0
.goto 25,68.8,56.0,0
.goto 25,63.52,60.82,25,0
.goto 25,63.05,57.45,25,0
.goto 25,64.42,57.03,25,0
.goto 25,65.50,54.18,25,0
.goto 25,63.61,52.69,25,0
.goto 25,67.46,54.00,25,0
.goto 25,68.89,55.88,25,0
.goto 25,71.22,57.08,25,0
.goto 25,73.03,59.96,25,0
.complete 28634,1 
.mob Rampaging Owlbeast
step
#completewith next
+|cRXP_WARN_以下元素非常困难。你可以跳过它们。|r
step
>>杀死|cRXP_ENEMY_Zephyrus|r
*Run away when it summons a Tornado
.goto 25,68.64,59.43
.use 141295
.complete 28643,1 
.mob Zephyrus
step
.isQuestComplete 28643
>>点击你的小地图下的任务弹出窗口，或在你的任务日志中搜索任务
.turnin 28643 >>交任务: |cRXP_FRIENDLY_敦霍尔德挑战赛：泽菲鲁斯|r
.accept 28644 >>接任务: |cRXP_WARN_敦霍尔德挑战赛：特拉库纳|r
step
.isOnQuest 28644
>>杀死|cRXP_ENEMY_Teracula|r
*Dodge or interrupt the Rupture Line
.goto 25,67.28,59.86
.use 141295
.complete 28644,1 
.mob Teracula
step
.isQuestComplete 28644
>>点击你的小地图下的任务弹出窗口，或在你的任务日志中搜索任务
.turnin -28644 >>交任务: |cRXP_FRIENDLY_敦霍尔德挑战赛：特拉库纳|r
.accept 28645 >>接任务: |cRXP_WARN_敦霍尔德挑战赛：布纳维隆|r
step
.isOnQuest 28645
>>杀死|cRXP_ENEMY_Bloodvenom|r
*Move out of the blue void zones
.goto 25,66.26,60.10
.use 141295
.complete 28645,1 
.mob Bloodvenom
step
.isQuestComplete 28645
.goto 25,66.26,60.22
>>点击你的小地图下的任务弹出窗口，或在你的任务日志中搜索任务
.turnin 28645 >>交任务: |cRXP_FRIENDLY_敦霍尔德挑战赛：布纳维隆|r
.accept 28646 >>接任务: |cRXP_WARN_敦霍尔德挑战赛：因弗努斯|r
step
.isOnQuest 28646
>>杀死|cRXP_ENEMY_Infernus|r
*|cRXP_WARN_This one is very hard without a pet because he will disorient you periodically|r
.goto 25,68.01,63.17
.complete 28646,1 
.mob Infernus
step
.isQuestComplete 28646
>>你可能需要在你的任务日志中点击最小地图下的任务
.turnin 28646 >>交任务: |cRXP_FRIENDLY_敦霍尔德挑战赛：因弗努斯|r
.accept 28647 >>接任务: |cRXP_WARN_敦霍尔德挑战赛：D-1000|r
step
.isOnQuest 28647
>>杀死|cRXP_ENEMY_D-1000|r
*|cRXP_WARN_This one is also very hard because of his hard hitting melee hits|r
.goto 25,70.27,61.05
.complete 28647,1 
.mob D-1000
step
#completewith next
.goto 25,77.05,59.90,30 >>Search for Zorn
.unitscan Zorn
.goto 14,26.26,28.21,30 >>搜索鼻烟和歌手
.unitscan Singer
.unitscan Snuffles
.goto 14,18.87,31.20,30 >>搜索Ruul Onestone
.unitscan Ruul Onestone
step
>>Follow the arrow
.goto 25,61.75,83.93
.complete 28635,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁山上尉的鬼魂|r
.target Captain Ironhill's Ghost
.goto 25,61.78,84.39
.turnin 28635 >>交任务: |cRXP_FRIENDLY_闹鬼事件|r
.accept 28636 >>接任务: |cRXP_WARN_沉默的矮人|r
step
>>杀死|cRXP_ENEMY_Dun加罗精灵|r
>>留意罕见的|cRXP_ENEMY_Tamra Stormpike|r
.goto 25,63.16,87.01,10,0
.goto 25,63.31,86.61,10,0
.goto 25,63.20,85.71,20,0
.goto 25,62.43,83.75
.complete 28636,1 
.mob Dun Garok Spirit
step
.isQuestComplete 28647
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰克尔队长|r, |cRXP_FRIENDLY_尼尔斯·毕若特|r
.turnin 28636 >>交任务: |cRXP_FRIENDLY_沉默的矮人|r
.goto 25,59.98,63.36
.turnin 28634 >>交任务: |cRXP_FRIENDLY_大灭绝|r
.turnin 28647 >>交任务: |cRXP_FRIENDLY_敦霍尔德挑战赛：D-1000|r
.goto 25,60.06,63.66
.target Captain Jekyll
.target Nils Beerot
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰克尔队长|r, |cRXP_FRIENDLY_尼尔斯·毕若特|r
.turnin 28636 >>交任务: |cRXP_FRIENDLY_沉默的矮人|r
.goto 25,59.98,63.36
.turnin 28634 >>交任务: |cRXP_FRIENDLY_大灭绝|r
.goto 25,60.06,63.66
.target Captain Jekyll
.target Nils Beerot
step
.abandon 28643 >>放弃杜恩霍尔德挑战赛：Zephyrus
.abandon 28644 >>放弃杜恩霍尔德挑战：Teracula
.abandon 28645 >>放弃杜恩霍尔德挑战：血毒
.abandon 28646 >>放弃杜恩霍尔德挑战：地狱
.abandon 28647 >>放弃杜恩霍尔德挑战：D-1000
step
#completewith next
.goto 25,59.67,63.24
.fly Ruins of Southshore >>飞往希尔斯堡南岸废墟
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟尔格·希诺特|r, |cRXP_FRIENDLY_赫尔库拉|r
.goto 25,49.13,66.30
.turnin 28324 >>交任务: |cRXP_FRIENDLY_致命性研究|r
.turnin 28330 >>交任务: |cRXP_FRIENDLY_污秽的试炼|r
.turnin 28325 >>交任务: |cRXP_FRIENDLY_南海镇的麻烦|r
.turnin 28356 >>交任务: |cRXP_FRIENDLY_先发制人|r
.target Serge Hinott
.target Helcular
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弑君者奥尔库斯|r
.target Kingslayer Orkus
*Skip the cinmatic with ESC
.goto 25,50.00,74.28
.turnin 28354 >>交任务: |cRXP_FRIENDLY_振翅高飞|r
.accept 28375 >>接任务: |cRXP_WARN_前往赎罪岛|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弑君者奥尔库斯|r
.target Kingslayer Orkus
.goto 25,29.25,83.99
.turnin 28375 >>交任务: |cRXP_FRIENDLY_前往赎罪岛|r
.accept 28397 >>接任务: |cRXP_WARN_他们料不到吧……|r
step
>>杀死该区域的|cRXP_ENEMY_Bloodfang哨兵|r和|cRXP_ENEMY_Stormpike矮人|r
*Be careful these NPCs deal a lot of damage.
>>留意罕见的|cRXP_ENEMY_Dustwing|r
.goto 25,27.55,84.22
.complete 28397,2 
.complete 28397,1 
.mob Bloodfang Sentry
.mob Stormpike Dwarf
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_ENEMY_弑君者奥尔库斯|r
*Type '/reload' into the chat if you can't turn in the quest
.goto 25,27.28,88.20
.turnin 28397 >>交任务: |cRXP_FRIENDLY_他们料不到吧……|r
.accept 28400 >>接任务: |cRXP_WARN_部落的英雄！|r
.target Kingslayer Orkus
step
>>沿着小路上山
*Wait next to |cRXP_FRIENDLY_Orkus|r until you can talk to him
>>杀死|cRXP_ENEMY_Stormpike战斗大师|r后，将其洗劫一空
.goto 25,27.35,87.35
.skipgossip 1
.complete 28400,1 
.timer 150,Flying RP
step
>>飞行大约需要2分钟。等待RP
.goto 25,57.48,46.87
.complete 28400,2 
step
#label HillsbradAcceptAFightingChance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_顾问达斯多恩|r
.target Advisor Duskingdawn
.goto 25,56.75,47.36
.accept 28495 >>接任务: |cRXP_WARN_生存的机会|r
step
#label HillsbradHeroesoftheHorde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶督军克鲁姆什|r
.target High Warlord Cromush
.goto 25,57.08,46.24
.turnin 28400 >>交任务: |cRXP_FRIENDLY_部落的英雄！|r
.accept 28587 >>接任务: |cRXP_WARN_霜狼的帮助|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝瓦里尔|r
.target Keeper Bel'varil
.goto 25,56.99,45.72
.accept 28484 >>接任务: |cRXP_WARN_雪人的毛发|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵亨伯特|r, |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
*If you jump backwards while standing on the stairs you can accept the quest from downstairs. Otherwise go up the stairs in the building.
.goto 25,57.16,45.55
.accept 28487 >>接任务: |cRXP_WARN_亨伯特的私人问题|r
.accept 28485 >>接任务: |cRXP_WARN_雪怪之王耶提玛斯|r
.target Deathguard Humbert
.target Samsa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃加·死爪|r
.target Voggah Deathgrip
*Skip the cinematic with ESC
.goto 25,58.70,34.24
.turnin 28587 >>交任务: |cRXP_FRIENDLY_霜狼的帮助|r
.accept 28600 >>接任务: |cRXP_WARN_忠诚问题|r
step
#completewith next
.goto 25,60.37,28.92,20 >>检查AV隧道上方是否存在罕见的|cRXP_FRIENDLY_Maggarrak|r
.unitscan Maggarrak
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶督军克鲁姆什|r
.target High Warlord Cromush
*Skip the cinematic with ESC
.goto 25,57.08,46.24
.turnin 28600 >>交任务: |cRXP_FRIENDLY_忠诚问题|r
.accept 28506 >>接任务: |cRXP_WARN_雷矛行军|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶督军克鲁姆什|r
.target High Warlord Cromush
.goto 25,57.08,46.24
.turnin 28506 >>交任务: |cRXP_FRIENDLY_雷矛行军|r
.accept 28556 >>接任务: |cRXP_WARN_消灭先头部队|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅里萨拉|r
.target Melisara
.goto 25,57.27,46.35
.accept 28538 >>接任务: |cRXP_WARN_女王之泣|r
step
#sticky
#label HillsbradNukeSoferasNaze
>>在航路点位置使用|T237030:0|t[哥布林口袋Nuke]
.use 64471
.goto 25,55.48,38.34,0,0
.complete 28556,1 
step
>>伤害|cRXP_FRIENDLY_Assasins|r至35%生命值，并使用|T458243:0|t[女妖镜]
>>留意|cRXP_PICK_胸脯|r
.use 64445
.goto 25,55.50,38.46,20,0
.goto 25,55.64,40.70
.complete 28538,1 
.mob SI:7 Assassin
step
>>在你的任务日志中点击你的小地图下的任务
.turnin 28538 >>交任务: |cRXP_FRIENDLY_女王之泣|r
.accept 28566 >>接任务: |cRXP_WARN_总攻|r
step
#requires HillsbradNukeSoferasNaze
#sticky
#label HillsbradNukeCorrahnsDagger
>>在航路点位置使用|T237030:0|t[哥布林口袋Nuke]
.use 64471
.goto 25,49.40,46.69,0,0
.complete 28556,2 
step
#requires HillsbradNukeSoferasNaze
#completewith next
>>杀死|cRXP_ENEMY_Stormpike士兵|r
.goto 25,50.20,46.59,15,0
.goto 25,49.46,46.82,15,0
.complete 28566,2 
.mob Stormpike Soldier
step
#requires HillsbradNukeSoferasNaze
>>杀死|cRXP_ENEMY_冰心队长|r（巡逻）
.goto 25,49.46,46.76
.complete 28566,1 
.mob Captain Iceheart
step
>>杀死|cRXP_ENEMY_Stormpike士兵|r
.goto 25,49.43,48.22,20,0
.goto 25,50.20,46.59,15,0
.goto 25,48.88,47.05
.complete 28566,2 
.mob Stormpike Soldier
step
>>在你的任务日志中点击你的小地图下的任务
.turnin 28566 >>交任务: |cRXP_FRIENDLY_总攻|r
.accept 28603 >>接任务: |cRXP_LOOT_秘密潜入|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉莉丝|r
.accept 28604 >>接任务: |cRXP_WARN_圈套与计谋|r
.target Lilith
step
#completewith next
.unitscan Jimmy the Bleeder
.goto 25,49.88,50.38,25 >>搜索吉米的Bleder和检查胸部
step
#completewith next
>>使用|cRXP_FRIENDLY_Stormpike培训生|r旁边的|T132814:0|t[水桶]
*Don't use the item again until you get credit for the last trainees
.use 64583
.complete 28604,1 
.target Stormpike Trainee
step
#requires HillsbradNukeCorrahnsDagger
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_教官鲁夫斯|r
>>杀死|cRXP_ENEMY_克鲁德巴德上尉|r
.complete 28603,1 
.goto 25,44.51,49.07
.complete 28603,3 
.goto 25,44.31,50.39
.skipgossip
.mob Instructor Rufus
.mob Captain Crudbeard
step
#completewith next
.goto 25,44.20,52.32,10 >>检查可能的|cRXP_PICK_Chest|r位置
.goto 25,44.32,53.83,25 >>检查罕见的|cRXP_ENEMY_Araga|r
.unitscan Araga
step
#sticky
#label HillsbradNukeHeadland
>>在航路点位置使用|T237030:0|t[哥布林口袋Nuke]
.use 64471
.goto 25,43.97,48.99,0,0
.complete 28556,3 
step
#completewith HillsbradTurninInfiltration
>>使用|cRXP_FRIENDLY_Stormpike培训生|r旁边的|T132814:0|t[水桶]
*Don't use the item again until you get credit for the last trainees
.use 64583
.complete 28604,1 
.target Stormpike Trainee
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drill Seargent Magnus|r
.target Drill Seargent Magnus
*You have to stay in meele range otherwise he may evade
.goto 25,43.41,49.97
.skipgossip
.complete 28603,2 
step
#label HillsbradTurninInfiltration
>>在你的任务日志中点击你的小地图下的任务
.turnin 28603 >>交任务: |cRXP_FRIENDLY_秘密潜入|r
step
#requires HillsbradNukeHeadland
>>使用|cRXP_FRIENDLY_Stormpike培训生|r旁边的|T132814:0|t[水桶]
*Don't use the item again until you get credit for the last trainees
.use 64583
.goto 25,44.65,48.99,20,0
.goto 25,44.14,50.89,20,0
.goto 25,44.16,52.43,20,0
.goto 25,44.14,50.89
.complete 28604,1 
.target Stormpike Trainee
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莉莉丝|r
.turnin 28604 >>交任务: |cRXP_FRIENDLY_圈套与计谋|r
.accept 28605 >>接任务: |cRXP_WARN_控制权|r
.target Lilith
step
#sticky
#label HillsbradStormpikeEngineer
>>杀死|cRXP_ENEMY_Stormpike工程师|r
.goto 25,39.93,48.52,0,0
.complete 28605,1 
.mob Stormpike Engineer
step
>>在航路点位置使用|T237030:0|t[哥布林口袋Nuke]
.use 64471
.goto 25,39.48,49.06
.complete 28556,4 
step
#requires HillsbradStormpikeEngineer
#completewith next
>>使用|T135468:0|t[黄昏魔杖]|cRXP_WARN_一定要远离小鹿，否则它们可能会攻击你，导致你死亡|r
.use 64416
.complete 28495,1 
step
#requires HillsbradStormpikeEngineer
#completewith next
.goto 25,46.62,54.41,10 >>进入洞穴
step
#requires HillsbradStormpikeEngineer
#sticky
#label HillsbrandBeatingYetiHeart
>>杀死|cRXP_ENEMY_Cave Yetis|r。掠夺他们的|cRXD_Loot_心|r
.complete 28484,1 
.mob Cave Yeti
step
#requires HillsbradStormpikeEngineer
>>拿起|cRXP_Pick_发光之剑|r
.goto 25,45.09,51.34
.complete 28487,1 
step
>>拿起|cRXP_Pick_small helm|r
.goto 25,45.53,52.26,8,0
.goto 25,45.86,51.54,10,0
.goto 25,44.58,50.93
.complete 28487,2 
step
#completewith next
.goto 25,45.86,51.54,20,0
.goto 25,45.77,53.39,20 >>搜索稀有|cRXP_FRIENDLY_Weevil|r
.unitscan Weevil
step
>>拿起|cRXP_Pick_pants|r
.goto 25,43.79,55.16,15,0
.goto 25,44.09,53.21
.complete 28487,3 
step
#completewith next
.goto 25,45.51,52.11,10,0
.goto 25,44.78,53.30,15,0
.goto 25,46.51,54.28,10 >>离开洞穴
step
#sticky
#label HillsbradHillFawnSaved
>>使用|T135468:0|t[黄昏魔杖]|cRXP_WARN_一定要远离小鹿，否则它们可能会攻击你，导致你死亡|r
.goto 25,44.61,57.82,30,0
.goto 25,45.22,60.38,30,0
.goto 25,48.77,55.69,20,0
.goto 25,50.03,55.52,30,0
.goto 25,48.56,53.08,30,0
.goto 25,48.77,55.69
.use 64416
.complete 28495,1 
step
.isOnQuest 28485
>>|cRXP_WARN_非常硬的精英。甚至可能不会用传宗室杀死他。|r
*Within a party you should be able to kill him. You can skip this.
.goto 25,48.37,56.74
.complete 28485,1 
step
#requires HillsbradHillFawnSaved
#completewith next
.goto 25,55.86,54.57,35 >>搜索稀有|cRXP_ENEMY_Chordix|r
.unitscan Chordix
step
#requires HillsbradHillFawnSaved
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_顾问达斯多恩|r
.target Advisor Duskingdawn
.goto 25,56.74,47.47
.turnin 28495 >>交任务: |cRXP_FRIENDLY_生存的机会|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅里萨拉|r
.target Melisara
.goto 25,57.25,46.35
.turnin 28605 >>交任务: |cRXP_FRIENDLY_控制权|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高阶督军克鲁姆什|r
.target High Warlord Cromush
*Skip the cinematic with ESC
.goto 25,57.08,46.23
.turnin 28556 >>交任务: |cRXP_FRIENDLY_消灭先头部队|r
.accept 28616 >>接任务: |cRXP_WARN_雷矛的末日|r
.turnin 28616 >>交任务: |cRXP_FRIENDLY_雷矛的末日|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝瓦里尔|r
.target Keeper Bel'varil
.goto 25,57.00,45.73
.turnin 28484 >>交任务: |cRXP_FRIENDLY_雪人的毛发|r
step
.isQuestComplete 28485
.goto 25,57.19,45.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.target Deathguard Samsa
.turnin 28485 >>交任务: |cRXP_FRIENDLY_雪怪之王耶提玛斯|r
step
.abandon 28485
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵亨伯特|r
.target Deathguard Humbert
.goto 25,57.16,45.53
.turnin 28487 >>交任务: |cRXP_FRIENDLY_亨伯特的私人问题|r
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#group RestedXP Horde 10-60
#name 6 Horde Spires of Arak
#displayname Chapter 8 - Spires of Arak
#next 7 Horde Gorgrond
#veteran
<< Horde
step
.zoneskip 590
#completewith next
.cast 171253 >>使用你的加里森炉石
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Murla Longeye|r
.target Murla Longeye
.accept 36862 >>接任务: |cRXP_WARN_宾奇维斯零件工厂|r
step
>>打开冒险指南（Shift+J），点击右箭头，直到你看到“Arak的尖塔”，点击“开始探索”
.accept 36951 >>接任务: |cRXP_WARN_逃亡的鸦人|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bron Skyhorn the Flight Master to be flown out to Spires of Arak.
.skipgossip 3
.turnin 36951 >>Turn in Arakkoa Exodus
.accept 34655 >>接任务: |cRXP_WARN_斯克提斯的暗影|r
.goto 542,37.89,18.02
step
.goto 542,36.81,17.14
.turnin 36243 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 001 - Outcast's Basket|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reshad|r
.target Reshad
.goto 542,43.65,12.93
.skipgossip 79519
.complete 36243,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reshad|r
.target Reshad
.goto 542,43.65,12.93
.turnin 34655 >>Turn in The Shadows of Skettis
.accept 34656 >>接任务: |cRXP_WARN_光天化日之下的秘密|r
.accept 34657 >>接任务: |cRXP_WARN_太阳神的信徒|r
step
#completewith SpiresofArakHiddenInPlainSight
>>杀死|cRXP_ENEMY_附着的剑翼|r
.complete 34657,1 
step
>>Pick up the Wingblades
.goto 542,41.23,16.27
.complete 34656,1 
step
>>|cRXP_WARN_Keep the item for later|r
.goto 542,43.91,15.03
.turnin 36395 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 003 - Elixir of Shadow Sight 01|r
step
#label SpiresofArakHiddenInPlainSight
>>Pick up the Ragged Mask
.goto 542,44.93,15.14
.complete 34656,2 
step
>>杀死|cRXP_ENEMY_附着的剑翼|r
.goto 542,45.62,13.06,25,0
.goto 542,43.63,14.16,30,0
.goto 542,41.56,16.22,30,0
.goto 542,45.62,13.06
.complete 34657,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reshad|r
.target Reshad
.goto 542,43.65,12.93
.turnin 34656 >>Turn in Hidden in Plain Sight
.turnin 34657 >>Turn in Adherents of the Sun God
.accept 34658 >>接任务: |cRXP_WARN_高等鸦人首领|r
step
>>杀死|cRXP_ENEMY_Sun-Sage Rathyx。抢劫他以获得公告
*When he or his bird cast Blinding Flash/Flash Bang |cRXP_WARN_look away|r
*|cRXP_WARN_Interrupt Solar Radiance (50% heal)|r
.goto 542,45.97,15.43
.complete 34658,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reshad|r
.target Reshad
.goto 542,45.39,18.26
.turnin 34658 >>Turn in Orders From On High
.accept 34659 >>接任务: |cRXP_WARN_长者|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Reshad again
.goto 542,45.39,18.26
.skipgossip 1
.train 78670 >>培训学徒考古
step
.goto 542,42.96,16.37
.turnin 36245 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 004 - Relics of the Outcasts|r
step
.goto 542,42.70,18.32
.turnin 36244 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 002 - Misplaced Scrolls|r
step
.goto 542,50.51,22.10
.turnin 36246>>捡起水中破碎的太阳石
step
>>尽量不要抢劫，只需关闭抢劫窗口。这跳过了击倒
.goto 542,50.32,25.80
.turnin 36444 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 006 - Iron Horde Explosives|r
step
.goto 542,50.75,28.74
.turnin 36247 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 007 - Lost Herb Satchel|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ornekka|r
.target Ornekka
.goto 542,51.62,31.37
.skipgossip 79890,1
.complete 34659,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ornekka and Reshad
.goto 542,51.62,31.37
.turnin 34659 >>Turn in The Crone
.accept 34756 >>接任务: |cRXP_WARN_迷人的假象|r
.accept 35636 >>接任务: |cRXP_WARN_应有的尊重|r
.accept 34805 >>接任务: |cRXP_WARN_回声猎手|r
step
#completewith SpiresofArakAllDueRespect
>>杀死|cRXP_ENEMY_Echo猎人|r
.complete 34805,1 
step
#title Illusion Charm 1
>>拿起幻术符
.goto 542,50.97,31.31
.complete 34756,1,1 
step
#title Illusion Charm 2
>>拿起幻术符
.goto 542,51.31,33.58
.complete 34756,1,2 
step
#title Illusion Charm 3
>>拿起幻术符
.goto 542,51.83,36.40
.complete 34756,1,3 
step
#title Illusion Charm 4
>>拿起幻术符
.goto 542,51.13,36.50
.complete 34756,1,4 
step
>>与Syth的尸体互动
.goto 542,50.26,36.38
.complete 35636,1 
step
>>与Syth的书架互动。之后击败三波来袭
*If you see Echo Hunter nearby, kill them
.goto 542,50.02,36.73
.complete 35636,2 
step
#label SpiresofArakAllDueRespect
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reshad|r
.target Reshad
.goto 542,50.28,36.70
.turnin 35636 >>Turn in All Due Respect
.accept 35668 >>接任务: |cRXP_WARN_塞斯的秘密|r
step
#completewith SpiresofArakSythsSecret
>>杀死|cRXP_ENEMY_Echo猎人|r
.goto 542,50.46,34.97,20,0
.goto 542,51.27,38.71,30,0
.complete 34805,1 
step
#title Illusion Charm 5
>>拿起幻术符
.goto 542,50.40,40.05
.complete 34756,1,5 
step
.goto 542,49.20,37.30
.turnin 36445 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 015 - Iron Horde Spear|r
step
#completewith next
.goto 542,49.06,41.26,10 >>进入洞穴
step
#label SpiresofArakSythsSecret
>>杀死|cRXP_ENEMY_Sun-Talon Oberyx|r。抢走他的眼睛
*Dodge the chakrams (void zones)
.goto 542,48.34,42.87
.complete 35668,1 
step
>>杀死|cRXP_ENEMY_Echo猎人|r
.goto 542,47.79,42.68,25,0
.goto 542,48.90,43.08,25,0
.goto 542,50.04,39.01
.complete 34805,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reshad|r
.target Reshad
.goto 542,48.56,44.48
.turnin 34756 >>Turn in A Charming Deception
.turnin 34805 >>Turn in Echo Hunters
.turnin 35668 >>Turn in Syth's Secret
.accept 35671 >>接任务: |cRXP_WARN_暗影滋长|r
step
#completewith next
.use 115463
.cast 170183 >>使用阴影视线的Elixier
step
.goto 542,48.58,44.49
.turnin 36386 >>交任务: |cRXP_FRIENDLY_Spires - Shrine Treasure 02 - Gift of Anzu|r
step
>>Wait at the waypoint
.goto 542,46.51,45.61
.complete 35671,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shadow-Sage Iskar
.goto 542,46.51,45.61
.turnin 35671 >>Turn in A Gathering of Shadows
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ukambe|r
.target Shadow Hunter Ukambe
.goto 542,45.89,46.37
.accept 35272 >>接任务: |cRXP_WARN_自己人|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Shadow-Sage Iskar
.goto 542,46.51,45.61
.skipgossip
.complete 35272,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ukambe|r
.target Shadow Hunter Ukambe
.goto 542,45.89,46.36
.turnin 35272 >>Turn in One of Our Own
.accept 35275 >>接任务: |cRXP_WARN_检阅你的部队|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shadow Hunter Ukambe|r
.target Shadow Hunter Ukambe
.goto 542,40.07,44.05
.turnin 35275 >>Turn in Inspecting the Troops
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Gornek|r
.target Taskmaster Gornek
.goto 542,40.19,43.50
.accept 35277 >>接任务: |cRXP_WARN_有何指令，指挥官？|r
step
>>与绘图表交互并选择“Home Away From Home”（Hearthfire Tavern在左侧）
.goto 542,40.19,43.50
.complete 35277,1 
.complete 35277,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Gornek|r
.target Taskmaster Gornek
.goto 542,40.18,43.50
.turnin 35277 >>Turn in Orders, Commander?
.accept 37326 >>接任务: |cRXP_WARN_结交当地人|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侍从皮尔斯|r
.target Percy
.goto 542,40.10,43.97
.accept 35611 >>接任务: |cRXP_WARN_返回泰罗克鸦巢|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dusk-Seer Irizzar
.goto 542,43.90,48.91
.turnin 37326 >>Turn in Befriending the Locals
.accept 37296 >>接任务: |cRXP_WARN_先除掉毒蜂再说|r
step
>>杀死|cRXP_ENEMY_Widow Wasps|r
.goto 542,44.63,49.50,20,0
.goto 542,43.23,50.56,20,0
.goto 542,43.53,47.20
.complete 37296,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Dusk-Seer Irizzar
.goto 542,43.90,48.92
.turnin 37296 >>Turn in A Lack of Wasps
.accept 37328 >>接任务: |cRXP_WARN_择日再议|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Reshad and Shadow-Sage Iskar
.turnin 35611 >>Turn in Return to Veil Terokk
.accept 34998 >>接任务: |cRXP_WARN_鸦爪岗哨|r
.accept 34884 >>接任务: |cRXP_WARN_卡利鸟驯养者|r
.goto 542,45.87,45.73
.accept 34827 >>接任务: |cRXP_WARN_最后的鸦爪祭司|r
.goto 542,45.94,45.78
step
.goto 542,45.94,44.17
.turnin 36354 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 009 - Relics of the Outcasts|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与Skizziks尸体互动
.goto 542,45.43,36.32
.skipgossip
.complete 34884,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Skizzik and the Kaliri Egg
.accept 34885 >>接任务: |cRXP_WARN_棘母|r
.goto 542,45.43,36.32
.accept 34838 >>接任务: |cRXP_WARN_伊奇的蛋|r
.goto 542,45.39,36.74
step
>>Click on the egg
.goto 542,45.39,36.74
.complete 34838,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalkTalk to Ikky
.goto 542,45.39,36.74
.turnin 34838 >>交任务: |cRXP_FRIENDLY_伊奇|r's Egg
.accept 34886 >>接任务: |cRXP_WARN_小小鸟|r
step
#completewith next
>>杀死|cRXP_ENEMY_Shadeback Ravagers|r并捡起Ravager Grubs
.complete 34886,1 
.complete 34885,1 
step
>>杀死|cRXP_ENEMY_Shadeback Thornmoth|r
.goto 542,44.19,37.96
.complete 34885,2 
step
>>杀死|cffShadeback Ravager|r并捡起Ravager Grubs（小蛆）
.goto 542,45.10,37.92
.complete 34886,1 
.complete 34885,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikky|r
.target Ikky
.goto 542,45.40,36.75
.turnin 34886 >>Turn in Baby Bird
step
.goto 542,47.77,36.11
.turnin 36411 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 014 - A Lost Ring|r
step
>>使用|T134711:0|t[Elixier of Shadows]
.use 112100
.goto 542,47.98,34.69
.complete 34827,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鸦爪祭司伊沙尔|r
.target Talonpriest Ishaal
.goto 542,48.01,34.76
.turnin 34827 >>Turn in Last of the Talonpriests
.accept 34828 >>接任务: |cRXP_WARN_伊沙尔的宝珠|r
.accept 34829 >>接任务: |cRXP_WARN_新邻居|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ravager Egg|r
.target Ravager Egg
.goto 542,47.13,31.66
.accept 36425 >>接任务: |cRXP_WARN_踢蛋|r
step
#completewith SpiresofArakIshaalsOrb
>>杀死|cRXP_ENEMY_碎手兽人|r
.complete 34829,1 
step
#completewith SpiresofArakIshaalsOrb
>>点击地上的掠夺者蛋
.complete 36425,1 
step
.goto 542,47.93,30.66
.turnin 36361 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 017 - Shattered Hand Lockbox|r
step
#label SpiresofArakIshaalsOrb
>>Pick up Ishaal's Orb
.goto 542,48.09,28.47
.complete 34828,1 
step
#completewith next
>>杀死|cRXP_ENEMY_碎手兽人|r
*|cRXP_WARN_Dodge the Blade Flurries to the side|r
.complete 34829,1 
step
>>点击地上的掠夺者蛋
.goto 542,46.62,29.37,25,0
.goto 542,47.14,31.56,25,0
.goto 542,47.33,30.56
.complete 36425,1 
step
>>完成杀戮|cRXP_ENEMY_碎手兽人|r
.goto 542,47.33,30.56
.complete 34829,1 
step
#sticky
#label SpiresofArakEggPunt
>>点击你的小地图下的任务日志中的任务
.turnin 36425 >>Turn in Egg Punt
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鸦爪祭司伊沙尔|r
.target Talonpriest Ishaal
.goto 542,48.01,34.75
.turnin 34828 >>Turn in Ishaal's Orb
.turnin 34829 >>Turn in New Neighbors
.accept 34830 >>接任务: |cRXP_WARN_暗影之界|r
step
.goto 542,46.92,34.04
.turnin 36446 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 016 - Outcast's Pouch|r
step
>>使用|T134711:0|t[阴影特效药]
.use 112099
.goto 542,44.48,24.01
.complete 34830,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鸦爪祭司塞尔利克|r
.target Talonpriest Zellek
.goto 542,44.48,24.01
.turnin 34830 >>Turn in Behind the Veil
step
.goto 542,43.82,24.63
.turnin 36397 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 003 - Elixir of Shadow Sight 01|r
step
.goto 542,43.21,27.26
.turnin 36355 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 018 - Relics of the Outcasts|r
step
#completewith next
.cast 168499 >>在家外使用家（|cRXP_WARN_Zone能力而非炉石|r）
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Gornek|r
.target Taskmaster Gornek
.goto 542,40.19,43.50
.turnin 37328 >>Turn in Not Here, Not Now
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ikky|r
.target Ikky
.goto 542,46.20,45.69
.turnin 34898 >>交任务: |cRXP_FRIENDLY_伊奇|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Reshad|r
.target Reshad
.goto 542,45.87,45.74
.turnin 34884 >>Turn in The Kaliri Whisperer
.turnin 34885 >>Turn in Mother of Thorns
step
.goto 542,48.35,52.61
.turnin 36405 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 051 - Offering to the Raven Mother 02|r
step
#completewith next
.use 118267
.cast 174031 >>使用Ravenmother产品
step
.goto 542,48.91,54.71
.turnin 36406 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 051 - Offering to the Raven Mother 02|r
step
#completewith next
.use 118267
.cast 174031 >>使用Ravenmother产品
step
.goto 542,53.32,55.51
.turnin 36403 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 051 - Offering to the Raven Mother 02|r
step
#completewith next
.use 118267
.cast 174031 >>使用Ravenmother产品
step
.goto 542,60.97,63.88
.turnin 36410 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 051 - Offering to the Raven Mother 02|r
step
#completewith next
.use 118267
.cast 174031 >>使用Ravenmother产品
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kimzee Pinchwhistle and Engineer Gazwitz
.goto 542,61.47,72.94
.turnin 36862 >>Turn in Pinchwhistle Gearworks
.accept 35077 >>接任务: |cRXP_WARN_消灭真菌|r
.accept 35079 >>接任务: |cRXP_WARN_杀菌炮台|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exterminator Lemmy|r
.target Exterminator Lemmy
.goto 542,62.57,73.91
.accept 36179 >>接任务: |cRXP_WARN_恼人的昆虫|r
step
#completewith SpiresofArakSporebeGone
>>杀死|cRXP_ENEMY_Sport漂流者|r。避开真菌绿巨人
.complete 36179,1 
step
#completewith SpiresofArakSporebeGone
>>使用|T134538:0|t[QR58火焰喷射器]燃烧地面上的黄色/绿色孢子
.use 112683
.complete 35077,1 
step
#title Turret 1
>>Activate the turret
.goto 542,63.16,73.92,20,0
.goto 542,63.59,74.08
.complete 35079,1,1 
step
#title Turret 2
>>Activate the turret
.goto 542,64.49,74.26
.complete 35079,1,2 
step
#title Turret 3
>>Activate the turret
.goto 542,64.76,74.23
.complete 35079,1,3 
step
#title Turret 4
>>Activate the turret
.goto 542,64.36,75.01,15,0
.goto 542,63.72,74.94
.complete 35079,1,4 
step
#title Turret 5
>>Activate the turret
.goto 542,63.36,75.78
.complete 35079,1,5 
step
#label SpiresofArakSporebeGone
#title Turret 6
>>Activate the turret
.goto 542,63.63,76.41
.complete 35079,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Sport漂流者|r。避开真菌绿巨人。QR58火焰堡垒也会伤害这些暴徒
.complete 36179,1 
step
#completewith SpiresofArakSporebeGone
>>使用|T134538:0|t[QR58火焰喷射器]燃烧地面上的黄色/绿色孢子
.use 112683
.goto 542,62.68,76.40,20,0
.goto 542,63.60,75.34,20,0
.goto 542,64.57,75.18,20,0
.goto 542,63.31,74.30
.complete 35077,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Sport漂流者|r。避开真菌绿巨人
.goto 542,62.68,76.40,20,0
.goto 542,63.60,75.34,20,0
.goto 542,64.57,75.18,20,0
.goto 542,63.31,74.30
.complete 36179,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kimzee Pinchwhistle and Engineer Gazwitz
.goto 542,61.46,72.95
.turnin 35077 >>Turn in Defungination
.turnin 35079 >>Turn in Spore-be-Gone
.turnin 36179 >>Turn in Unwanted Pests
.accept 35080 >>接任务: |cRXP_WARN_矿脉号|r
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
>>Follow the arrow
.goto 542,59.12,79.18
.complete 35080,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kimzee Pinchwhistle and Engineer Gazwitz
.turnin 35080 >>Turn in The Mother Lode
.accept 35082 >>接任务: |cRXP_WARN_拯救船员|r
.goto 542,59.12,79.18
.accept 35081 >>接任务: |cRXP_WARN_清理之前需要先清场|r
.goto 542,59.10,79.23
step
#completewith SpiresofArakGettingtheCrewBackTogether
>>杀死|cRXP_ENEMY_深红之翼黄蜂|r
.complete 35081,1 
step
#title Crew Revived 1
>>点击受伤的船员
.goto 542,60.25,79.77
.complete 35082,1,1 
step
#title Crew Revived 2
>>点击受伤的船员
.goto 542,60.43,80.66
.complete 35082,1,2 
step
#title Crew Revived 3
>>点击受伤的船员
.goto 542,60.19,81.49
.complete 35082,1,3 
step
#title Crew Revived 4
>>点击受伤的船员
.goto 542,60.54,81.65
.complete 35082,1,4 
step
#title Crew Revived 5
>>点击受伤的船员
.goto 542,60.43,82.33
.complete 35082,1,5 
step
#label SpiresofArakGettingtheCrewBackTogether
#title Crew Revived 6
>>点击受伤的船员
.goto 542,60.00,82.09
.complete 35082,1 
step
>>杀死|cRXP_ENEMY_深红之翼黄蜂|r
.goto 542,59.20,81.89,25,0
.goto 542,60.91,82.22,20,0
.goto 542,59.91,80.80
.complete 35081,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kimzee Pinchwhistle and Engineer Gazwitz
.goto 542,59.11,79.20
.turnin 35082 >>Turn in Getting the Crew Back Together
.turnin 35081 >>Turn in Clearing Out Before Cleaning Up
.accept 35285 >>接任务: |cRXP_WARN_跟上改装车！|r
step
>>Talk to Kimzee Pinchwhistle and Kimzee Pinchwhistle and Krixel Pinchwhistle
.turnin 35285 >>Turn in Follow that Hotrod!
.accept 35090 >>接任务: |cRXP_WARN_合适的零件|r
.accept 35089 >>接任务: |cRXP_WARN_捞油水|r
.goto 542,58.48,92.33
.accept 36384 >>接任务: |cRXP_WARN_实地试验|r
.goto 542,58.49,92.20
step
#completewith next
.goto 542,58.81,91.99
.vendor
step
.goto 542,59.15,90.63
.turnin 36366 >>交任务: |cRXP_FRIENDLY_Spires - Treasure 046 - Goblin Rum|r
step
#completewith next
>>杀死|cRXP_ENEMY_挥发性污泥|r。掠夺它们以获取油
.complete 35089,1 
step
>>使用|T133032:0|t[G-14巴斯特火箭]摧毁碎纸机并拿起产卵装备
.goto 542,59.32,89.90,20,0
.goto 542,59.81,87.54,20,0
.goto 542,58.95,88.51,20,0
.goto 542,58.29,89.51,20,0
.goto 542,57.94,90.36
.use 112698
.complete 35090,1 
step
>>杀死|cRXP_ENEMY_挥发性污泥|r。掠夺它们以获取油
.goto 542,59.31,88.91
.complete 35089,1 
step
>>在受感染的伐木工人身上使用|T609895:0|t[未经测试的血清小瓶]
.goto 542,58.64,87.10
.use 115457
.complete 36384,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克里希·宾奇维斯|r
.goto 542,58.49,92.21
.turnin 36384 >>Turn in Field Trial
.target Krixel Pinchwhistle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kimzee Pinchwhistle|r
.target Kimzee Pinchwhistle
.goto 542,58.83,92.84
.turnin 35089 >>Turn in Skimming Off the Top
.turnin 35090 >>Turn in The Right Parts for the Job
.accept 35091 >>接任务: |cRXP_WARN_孢子杀手|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克里希·宾奇维斯|r
.target Krixel Pinchwhistle
.goto 542,58.48,92.20
.accept 35211 >>接任务: |cRXP_WARN_防患于未然|r
.accept 36428 >>接任务: |cRXP_WARN_暴力治疗|r
step
#completewith next
>>杀死|cRXP_ENEMY_Spore Shamblers|r
.complete 35091,1 
.mob Spore Shambler
step
#completewith next
>>在|cRXP_ENEMY_Infected Bruisers|r或|cRXX_ENEMY_Infected Bar Patrons|r上使用|T609892:0|t[精制血清小瓶]，低于30%生命值
.use 115533
.complete 36428,1 
.mob Infected Bruiser
.mob Infected Bar Patron
step
#title Bomb Placed 1/5
>>将|cRXP_PICK_bom|r放置在小楼内
.goto 542,56.62,89.99
.complete 35211,1,1 
step
#title Bomb Placed 2/5
>>放置|cRXP_PICK_bom|r
.goto 542,56.46,89.45
.complete 35211,1,2 
step
>>杀死|cRXP_ENEMY_Spore Shamblers|r
.goto 542,54.91,87.97
.complete 35091,1 
.mob Spore Shambler
step
#completewith SpiresofArakPreventingtheWorst
>>在|cRXP_ENEMY_Infected Bruisers|r或|cRXX_ENEMY_Infected Bar Patrons|r上使用|T609892:0|t[精制血清小瓶]，生命值低于30
.use 115533
.complete 36428,1 
step
#title Bomb Placed 3/5
>>放置|cRXP_PICK_bom|r
.goto 542,55.69,90.99
.complete 35211,1,3 
step
#title Bomb Placed 4/5
>>放置|cRXP_PICK_bom|r
.goto 542,56.29,91.61
.complete 35211,1,4 
step
#label SpiresofArakPreventingtheWorst
#title Bomb Placed 5/5
>>放置|cRXP_PICK_bom|r
.goto 542,56.74,91.56
.complete 35211,1 
step
>>在|cRXP_ENEMY_Infected Bruisers|r或|cRXX_ENEMY_Infected Bar Patrons|r上使用|T609892:0|t[精制血清小瓶]，生命值低于30
.use 115533
.goto 542,56.20,90.70,20,0
.goto 542,58.28,87.30,40,0
.goto 542,56.20,90.70
.complete 36428,1 
.mob Infected Bruiser
.mob Infected Bar Patron
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kimzee Pinchwhistle and Krixel Pinchwhistle
.turnin 35091 >>Turn in Sporicide
.goto 542,58.82,92.83
.turnin 35211 >>Turn in Preventing the Worst
.turnin 36428 >>Turn in Curing With Force
.accept 35298 >>接任务: |cRXP_WARN_烈焰飞舞|r
.goto 542,58.49,92.20
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Plunger|r
.goto 542,58.51,92.22
.complete 35298,1 
step
>>安装|cRXP_FRIENDLY_配对飞行器|r
.goto 542,58.87,92.86
.complete 35298,2 
.target Repaired Flying Machine
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kimzee Pinchwhistle|r
.goto 542,61.60,72.85
.turnin 35298 >>Turn in Flame On
.turnin 36062 >>交任务: |cRXP_FRIENDLY_基姆兹·宾奇维斯|r
.target Kimzee Pinchwhistle
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#group RestedXP Horde 10-60
#name 7 Horde Gorgrond
#displayname Chapter 9 - Gorgrond
#veteran
<< Horde
step
.zoneskip 590
#completewith FrostfireRidgeAcceptGutGuttra
.cast 171253 >>使用你的加里森炉石
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warmaster Zog|r next to the Innkeeper.
.accept 34462 >>接任务: |cRXP_WARN_变换之风|r
.target Warmaster Zog
step
>>登上飞机向东飞行。航路点不能显示在驻军内部。
>>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on |cRXP_FRIENDLY_Olin Umberhide|r inside the cave.
.goto 525,57.29,62.90
.complete 34462,1 
.target Olin Umberhide
step
#label FrostfireRidgeAcceptGutGuttra
.goto 525,66.02,49.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t向东飞行并与|cRXP_FRIENDLY_Outrider Urukag|r通话
.accept 33132 >>接任务: |cRXP_WARN_消灭古特拉|r
.target Outrider Urukag
step
>>杀死|cRXP_ENEMY_Grimfrost Ogres|r并释放|cRXP_FRIENDLY_捕获的霜狼|r
.goto 525,66.33,47.49,20,0
.goto 525,67.19,49.06,20,0
.goto 525,67.96,48.51,30,0
.goto 525,67.14,46.70
.complete 33145,1 
.complete 33145,2 
.mob Grimfrost Wolfslayer
.mob Grimfrost Lavaslinger
.mob Grimfrost Drudge
.target Captured Frostwolf
step
>>杀死|cRXP_ENEMY_Guttra Wolfchew|r
.goto 525,68.27,45.53
.complete 33132,1 
.mob Guttra Wolfchew
step
.goto 525,66.06,49.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Outrider Urukag|r
.target Outrider Urukag
.turnin 33132 >>Turn in Gut Guttra
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞往戈尔格罗德并与|cRXP_FRIENDLY_Durotan|r通话
.goto 543,37.28,77.01
.accept 33543 >>接任务: |cRXP_WARN_嘲颅氏族|r
.target Durotan
step
>>Follow the arrow
.goto 543,38.42,74.29
.complete 33543,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ripfist|r
.target Ripfist
.goto 543,38.77,73.62
.turnin 33543 >>Turn in The Laughing Skull
.accept 33544 >>接任务: |cRXP_WARN_消失吧，鬣蜥人！|r
step
#sticky
#label GorgrondAcidtoothDevourers
>>杀死|cRXP_ENEMY_Acidtooth吞噬者|r并在你的小地图下完成任务
.goto 543,40.81,73.87,0,0
.complete 33544,1 
.turnin 33544 >>Turn in Goren, Goren, Gone!
.mob Acidtooth Devourer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz the Shrieker|r
.target Kaz the Shrieker
.goto 543,39.33,71.98
.accept 33548 >>接任务: |cRXP_WARN_我们笑对死亡！|r
step
#title Mask 1/5
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Dead Laughing Skull|r
.goto 543,39.66,72.46
.complete 33548,1,1 
step
.goto 543,40.01,72.26
.turnin 36170 >>交任务: |cRXP_FRIENDLY_Treasure: Femur of Improbability|r
step
#title Mask 2/5
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Dead Laughing Skull|r
.goto 543,40.21,72.52
.complete 33548,1,2 
step
.goto 543,40.48,71.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Limbflayer|r
.target Limbflayer
.accept 33563 >>接任务: |cRXP_WARN_迷人的眼睛|r
step
#title Mask 3/5
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Dead Laughing Skull|r
.goto 543,41.12,72.26
.complete 33548,1,3 
step
>>杀死|cRXP_ENEMY_Skothwa|r。抢走他的眼睛
.goto 543,41.46,72.68
.complete 33563,1 
step
#title Mask 4/5
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Dead Laughing Skull|r
.goto 543,41.14,72.87
.complete 33548,1,4 
step
#title Mask 5/5
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Dead Laughing Skull|r
.goto 543,41.06,73.74
.complete 33548,1 
step
#requires GorgrondAcidtoothDevourers
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Limbflayer, Kaz, |cRXP_FRIENDLY_杜隆坦|r
.goto 543,41.48,74.13
.turnin 33563 >>Turn in Eye Candy
.turnin 33548 >>Turn in We Die Laughing!
.accept 33593 >>接任务: |cRXP_WARN_紧急求援|r
.target Limbflayer
.target Kaz the Shrieker
.target Durotan
step
>>使用|T391128:0|t[Penny's Flare Gun]
.use 115534
.goto 543,41.38,74.10
.complete 33593,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜隆坦|r
.target Durotan
*Skip the next cinematic with ESC
.goto 543,41.49,74.08
.turnin 33593 >>Turn in A Flare for the Dramatic
.accept 36434 >>接任务: |cRXP_WARN_来自天堂的佩妮|r
step
.turnin 36621 >>交任务: |cRXP_FRIENDLY_Treasure: Gnome Canister|r
.goto 543,40.37,76.60
step
.turnin 36658 >>交任务: |cRXP_FRIENDLY_Treasure: Botani Stockpile|r
.goto 543,41.82,78.04
step
.turnin 35709 >>交任务: |cRXP_FRIENDLY_Treasure: Laughing Skull Cache I|r
.goto 543,44.19,74.23
step
.turnin 36118 >>交任务: |cRXP_FRIENDLY_Treasure: Pile of Rubble|r
.goto 543,43.94,70.49
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Penny Clobberbottom|r
.target Penny Clobberbottom
.goto 543,45.69,70.59
.turnin 36434 >>Turn in Penny From Heaven
.accept 36460 >>接任务: |cRXP_WARN_在墙上多开一个洞而已|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with |cRXP_PICK_Penny's Plunger|r
.goto 543,45.69,70.59
.complete 36460,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜隆坦|r
.target Durotan
.goto 543,45.86,70.30
.turnin 36460 >>Turn in Just Another Stick in the Wall
.accept 35151 >>接任务: |cRXP_WARN_你的基地你做主|r
step
*|cRXP_WARN_Select the right building 'Savage Fight Club'|r
.goto 543,45.85,70.26
.complete 35151,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜隆坦|r
.target Durotan
.goto 543,46.10,70.19
.turnin 35151 >>Turn in Your Base, Your Choice
.accept 35880 >>接任务: |cRXP_WARN_愤怒与智慧|r
step
#completewith next
.goto 543,45.98,69.71
.home >>将你的炉石设置为Beastwatch
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Limbflayer|r
.target Limbflayer
.goto 543,46.33,69.71
.accept 34697 >>接任务: |cRXP_WARN_传奇再现|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marrow|r
.target Marrow
.goto 543,46.29,69.98
.accept 35667 >>接任务: |cRXP_WARN_赤红沼泽的割颅者|r
.accept 33694 >>接任务: |cRXP_WARN_拉克索斯的材料|r
step
.itemcount 132516,1
#completewith next
.cooldown item,132516,>0,1
.cast 202844 >>使用|T1405809:0|t[枪鞋]
step
#completewith next
>>使用该技能后，您有60秒的时间获得以下3项|cRXP_WARN_在使用该技能之前，拉一些怪物并伤害他们，直到他们只剩下大约20%的生命值。
*Skip the ones you didn't get
.goto 543,45.26,79.82,30,0
.cast 164012 >>使用冠军荣誉（区域能力）
step
*1) Loot 'Ravager Claw' from |cRXP_ENEMY_Thicket Ravagers|r
*2) Loot 'Wasp Sting' from the |cRXP_ENEMY_Golden Pollinator|r
*3) Loot 'Orc Thorn' from the |cRXP_ENEMY_Vined Guardians|r
*Skip if you don't loot it after 60 seconds.
.goto 543,45.16,78.14,20,0
.goto 543,43.52,82.00,15,0
.goto 543,42.52,82.67,15,0
.goto 543,40.59,83.83,15,0
.goto 543,40.13,83.24,15,0
.collect 114032,1,36097,1
.collect 114034,1,36101,1
.collect 114027,1,36091,1
.accept 36097 >>接任务: |cRXP_WARN_力量的证明：掠食者利爪|r
.accept 36101 >>接任务: |cRXP_WARN_力量的证明：黄蜂尾针|r
.accept 36091 >>接任务: |cRXP_WARN_力量的证明：兽人荆棘|r
.mob Thicket Ravager
.mob Golden Pllinator
.mob Vined Guardian
step
.goto 543,43.57,90.18
.accept 36520 >>接任务: |cRXP_WARN_鞭尾盆地|r
step
#completewith next
#title Destroy Rope Spikes
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Spikes|r to free the |cRXP_FRIENDLY_Acebeak|r
.goto 543,43.57,90.78,10,0
.complete 36520,2 
step
#completewith next
.goto 543,44.73,90.17,8 >>进入洞穴
step
>>杀死|cRXP_ENEMY_Skull垃圾箱|r
.goto 543,44.43,88.89
.complete 36520,3 
.mob Skull Thrash
step
#sticky
#label GorgrondJungleAxebeakFreed
#title Destroy Rope Spikes
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Spikes|r to free the |cRXP_FRIENDLY_Acebeak|r
.goto 543,45.13,90.61,10,0
.goto 543,44.57,91.58,10,0
.goto 543,45.93,89.72,10,0
.complete 36520,2 
step
>>杀死|cRXP_ENEMY_Tailthraster Saberons|r
.goto 543,44.18,91.01,0,0
.complete 36520,1 
.mob Tailthrasher Saberon
step
#requires GorgrondJungleAxebeakFreed
.goto 543,49.29,81.57
.accept 35881 >>接任务: |cRXP_WARN_第一堡垒废墟|r
step
#sticky
#label GorgrondFrenziedPodlingsSlain
>>杀死|cRXP_ENEMY_疯狂播客|r
.goto 543,50.69,79.66,0,0
.complete 35881,1 
.mob Frenzied Podling
step
#title Ancient Jar 1/8
>>捡起地上的|cRXP_Pick_Ancient Jar|r
.goto 543,49.72,80.42
.complete 35881,2,1 
step
#title Ancient Jar 2/8
>>捡起地上的|cRXP_Pick_Ancient Jar|r
.goto 543,49.85,80.34
.complete 35881,2,2 
step
#title Ancient Jar 3/8
>>捡起地上的|cRXP_Pick_Ancient Jar|r
.goto 543,50.57,80.09
.complete 35881,2,3 
step
#title Ancient Jar 4/8
>>捡起地上的|cRXP_Pick_Ancient Jar|r
.goto 543,50.47,80.55
.complete 35881,2,4 
step
#title Ancient Jar 5/8
>>捡起地上的|cRXP_Pick_Ancient Jar|r
.goto 543,51.09,80.96
.complete 35881,2,5 
step
#title Ancient Jar 6/8
>>捡起地上的|cRXP_Pick_Ancient Jar|r
.goto 543,51.26,80.71
.complete 35881,2,6 
step
>>杀死|cRXP_ENEMY_Malkor|r
.goto 543,52.08,81.25
.complete 35881,3 
.mob Malkor
step
#title Ancient Jar 7/8
>>捡起地上的|cRXP_Pick_Ancient Jar|r
.goto 543,51.74,80.49
.complete 35881,2,7 
step
#title Ancient Jar 8/8
>>捡起地上的|cRXP_Pick_Ancient Jar|r
.goto 543,51.65,79.85
.complete 35881,2 
step
#requires GorgrondFrenziedPodlingsSlain
.goto 543,48.49,75.19
.accept 36500 >>接任务: |cRXP_WARN_刀叶林地|r
step
#completewith next
>>走过|cRXP_ENEMY_slimes|r
.complete 36500,3 
step
>>杀死该区域的感染者
.goto 543,48.38,73.97,20,0
.goto 543,47.12,74.81,20,0
.goto 543,47.04,73.27,20,0
.goto 543,47.85,72.54
.complete 36500,1 
.mob Infested Orc
.mob Infested Behemoth
step
#sticky
#label GorgrondToxicSlimemold
>>走过飞行架上的|cRXP_FRIENDLY_slimes|r。
.goto 543,48.25,73.02,0,0
.complete 36500,3 
step
>>杀死Iyu的|cRXP_ENEMY_Voice|r
.goto 543,49.43,71.65
.complete 36500,2 
.mob Voice of Iyu
step
#requires GorgrondToxicSlimemold
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bony Xuk|r
.target Bony Xuk
.goto 543,43.56,65.01
.turnin 35880 >>Turn in Rage and Wisdom
.accept 35248 >>接任务: |cRXP_WARN_严厉的提醒|r
.accept 35035 >>接任务: |cRXP_WARN_挫骨扬灰|r
step
#completewith next
>>使用该技能后，您有60秒的时间获得以下3项|cRXP_WARN_在使用该技能之前，拉一些怪物并伤害他们，直到他们只剩下大约20%的生命值。
*Skip the ones you didn't get
.cast 164012 >>使用冠军荣誉（区域能力）
step
*1) Loot 'Gronnling Scale' from |cRXP_ENEMY_'Gronnling Bonebreaker'|r
*2) Loot 'Acid-Stained Goren Tooth' from the |cRXP_ENEMY_'Goren Gouger'|r
*3) Loot 'Botani Bloom' from |cRXP_ENEMY_'Botani Greensworn'|r
*Skip the items you haven't looted after 60 seconds.
.goto 543,44.02,64.88,15,0
.goto 543,44.52,64.66,15,0
.goto 543,45.41,63.76,15,0
.collect 114021,1,36080,1
.collect 113590,1,35948,1
.collect 114025,1,36086,1
.accept 36080 >>接任务: |cRXP_WARN_力量的证明：小戈隆鳞片|r
.accept 35948 >>接任务: |cRXP_WARN_力量的证明：鬣蜥人牙齿|r
.accept 36086 >>接任务: |cRXP_WARN_力量的证明：木精花蕾|r
.mob Gronnling Bonebreaker
.mob Goren Gouger
.mob Botani Greensworn
step
#sticky
#label GorgrondDenizensOfWasteland
>>杀死|cRXP_ENEMY_Gronnlings|r、|cRXP_ENEMY_Ogrons|r和|cRXP-ENEMY_Gorens|r
.goto 543,44.76,64.22,0,0
.complete 35248,1 
.mob Gronnling Bonebreker
.mob Goren Gouger
.mob Gorgrond Ogron
.mob Gronn Rockthrower
step
>>燃烧飞行架上的|cRXP_FRIENDLY_Ancients|r。
.goto 543,44.76,64.22
.complete 35035,1 
.target Ancient Seedbearer
step
#requires GorgrondDenizensOfWasteland
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bony Xuk|r
.target Bony Xuk
.goto 543,43.56,65.01
.turnin 35248 >>Turnin A Harsh Reminder
.turnin 35035 >>坏消息的种子持有者
.accept 35025 >>接任务: |cRXP_WARN_我们有伴了|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kash'drakor|r, |cRXP_FRIENDLY_Beatface|r and |cRXP_FRIENDLY_Akaani|r
.goto 543,42.77,63.12
.accept 36603 >>接任务: |cRXP_WARN_硫磺之泉|r
.turnin 34697 >>Turn in A Rediscovered Legend
.accept 34698 >>接任务: |cRXP_WARN_奴隶猎手|r
.accept 34700 >>接任务: |cRXP_WARN_纳兹格雷尔|r
.accept 34702 >>接任务: |cRXP_WARN_激怒对手|r
.accept 34699 >>接任务: |cRXP_WARN_解救角斗士|r
.target Kash'drakor
.target Beatface
.target Akaani
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prowler Sasha|r
.target Prowler Sasha
.goto 543,41.42,66.11
.accept 34012 >>接任务: |cRXP_WARN_需要更多牙齿|r
step
#sticky
#label GorgrondOgreTeeth
>>杀死|cRXP_ENEMY_Ogres|r。掠夺它们的|cRXX_Loot_tooth|r
.goto 543,38.94,68.04,0,0
.complete 34012,1 
step
>>杀死建筑物顶部的|cRXP_ENEMY_Slave Hunter Krag|r。抢劫他的|cRXP_Loot_吊坠|r
.goto 543,41.12,66.23
.complete 34698,2 
.mob Slave Hunter Krag
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tBreak the |cRXP_PICK_Shackles|r to free |cRXP_FRIENDLY_Bruto|r
.goto 543,40.30,64.83
.complete 34699,3 
step
>>杀死|cRXP_FRIENDLY_Slave Hunter Brol|r。掠夺他的|cRPX_Loot_吊坠|r
.goto 543,40.47,66.70
.complete 34698,1 
.mob Slave Hunter Brol
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Gong|r until |cRXP_ENEMY_Slavemaster Ok'mok|r jumps down
*You have to use the Gong three times and after each use you've to kill an NPC
.goto 543,40.40,67.56
.complete 34702,1 
.mob Slavemaster Ok'mok
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tBreak the |cRXP_PICK_Shackles|r to free |cRXP_FRIENDLY_Y'kish|r
.goto 543,39.75,67.83
.complete 34699,2 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tBreak the |cRXP_PICK_Shackles|r to free |cRXP_FRIENDLY_Vaandaam|r inside the hut
.goto 543,39.17,67.23
.complete 34699,1 
step
>>杀死塔里的|cRXP_ENEMY_Slave Hunter Mol|r。抢劫他的|cRXP_Loot_吊坠|r
.goto 543,38.99,68.73
.complete 34698,3 
.mob Slave Hunter Mol
step
#completewith next
.goto 543,38.58,67.38,10 >>进入洞穴
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bruto|r
.goto 543,36.85,67.90
.turnin 34699 >>Turn in Getting Gladiators
.accept 34703 >>接任务: |cRXP_WARN_考戈尔的斧子|r
.target Bruto
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tBreak down the |cRXP_PICK_Barricade|r and cross the bridge to the throne.
*|cRXP_WARN_If you're not confident then wait for your cooldown before you attack |cRXP_ENEMY_Kor'gall|r|r: Loot him for his |cRXP_LOOT_axe|r
.goto 543,36.25,68.78,10,0
.goto 543,36.41,69.66
.complete 34703,1 
.mob Kor'gall
step
*往下跳 and hug the right wall
>>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_cage|r
.goto 543,37.38,69.17,10,0
.goto 543,36.85,70.56
.complete 34700,1 
step
#requires GorgrondOgreTeeth
#completewith next
.goto 543,38.58,67.38,10 >>离开洞穴
step
#requires GorgrondOgreTeeth
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prowler Sasha|r
.target Prowler Sasha
.goto 543,41.43,66.09
.turnin 34012 >>Turn in Need More Teeth
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beatface|r, |cRXP_FRIENDLY_Y'kish|r, |cRXP_FRIENDLY_Bruto|r, |cRXP_FRIENDLY_Akaani|r and |cRXP_FRIENDLY_Kash'drakor|r
.goto 543,42.73,63.03
.turnin 34702 >>Turn in Krav'ogra
.turnin 34703 >>Turn in The Axe of Kor'gall
.turnin 34700 >>Turn in Slave Hunters
.turnin 34698 >>Turn in Slave Hunters
.accept 35152 >>接任务: |cRXP_WARN_格斗竞技场|r
.turnin 35882 >>交任务: |cRXP_FRIENDLY_布鲁托的兴趣|r
.target Beatface
.target Yikish
.target Bruto
.target Akaani
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Dying Beast|r
.target Dying Beast
.goto 543,44.24,61.61
.skipgossip
.complete 35025,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
.target Rexxar
.goto 543,44.27,61.64
.turnin 35025 >>Turn in We Have Company
.accept 35730 >>接任务: |cRXP_WARN_灼烧伤口|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Bonfire|r
.goto 543,44.37,61.33
.complete 35730,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with |cRXP_FRIENDLY_Nisha|r
.goto 543,44.26,61.60
.complete 35730,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
.target Rexxar
.goto 543,44.28,61.64
.turnin 35730 >>Turn in Cauterizing Wounds
.accept 35026 >>接任务: |cRXP_WARN_康复中|r
.accept 35870 >>接任务: |cRXP_WARN_蜥蜴屠夫|r
step
#completewith next
>>使用该技能后，您有60秒的时间获得以下四项|cRXP_WARN_在使用该技能之前，拉一些怪物并伤害他们，直到他们只剩下大约20%的生命值。
*Skip the ones you didn't get
.cast 164012 >>使用冠军荣誉（区域能力）
step
#sticky
#label GorgrondGonnEyeRockthrower
*1) Loot 'Gronn Eye' from |cRXP_ENEMY_'Gronn Rockthrowers'|r
*Skip the items you haven't looted after 60 seconds.
.goto 543,43.86,62.71,15,0
.goto 543,43.85,63.35,15,0
.goto 543,44.74,62.84,15,0
.goto 543,45.76,64.53,15,0
.collect 114023,1,36083,1
.accept 36083 >>接任务: |cRXP_WARN_力量的证明：戈隆眼球|r
.mob Gronn Rockthrower
step
*2) Loot 'Elemental Crystal' from the |cRXP_ENEMY_'Steamfuries'|r
*Skip the items you haven't looted after 60 seconds.
.goto 543,45.28,62.63,15,0
.goto 543,45.38,61.77,15,0
.collect 114038,1,36106,1
.accept 36106 >>接任务: |cRXP_WARN_力量的证明：元素水晶|r
.mob Rippling Steamfury
.mob Turbulent Steamfury
step
#requires GorgrondGonnEyeRockthrower
#completewith next
>>杀死水池周围的|cRXP_ENEMY_Steamfuries|r。为|cRXP_Loot_water|r掠夺它们
.goto 543,45.53,59.40,15,0
.complete 35026,1 
.mob Rippling Steamfury
.mob Turbulent Steamfury
step
#requires GorgrondGonnEyeRockthrower
>>杀死|cRXP_ENEMY_Basilisk|r。掠夺它们的|cRXD_Loot_肉|r。或者从|cRXX_ENEMY_Decating Basilisk|1r中捡起它
.goto 543,44.50,60.03
.complete 35870,1 
.mob Stoneshamble Basilisk
step
>>杀死水池周围的|cRXP_ENEMY_Steamfuries|r。为|cRXP_Loot_water|r掠夺它们
.goto 543,44.15,57.57
.complete 35026,1 
.mob Rippling Steamfury
.mob Turbulent Steamfury
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r
.target Nisha
.goto 543,45.87,54.95
.turnin 35870 >>Turn in Basilisk Butcher
.turnin 35026 >>Turn in On the Mend
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
.target Rexxar
.goto 543,46.02,54.75
.skipgossip
.accept 35036 >>接任务: |cRXP_WARN_这是你的同伴吗？|r
.complete 35036,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bony Xuk|r
.target Bony Xuk
.goto 543,46.18,55.09
.turnin 35036 >>Turn in Is This One of Yours?
.accept 35038 >>接任务: |cRXP_WARN_嗜骨如命的艾苏克是什么人？|r
.accept 35202 >>接任务: |cRXP_WARN_艾苏克就是我！|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
.target Rexxar
.goto 543,46.05,54.75
.accept 35037 >>接任务: |cRXP_WARN_一探究竟|r
.accept 35934 >>接任务: |cRXP_WARN_为尼莎复仇|r
step
>>杀死|cRXP_ENEMY_Gorger|r。掠夺他们的|cRXX_Loot_shells|r。
>>从|cRXP_ENEMY_Longtooth Gorgers|r的尸体上捡起|cRX_Pick_Crystals|r
#loop
.line 543,45.57,52.41,44.59,53.72,43.77,53.54,44.58,51.32
.goto 543,45.57,52.41,20,0
.goto 543,44.59,53.72,20,0
.goto 543,43.77,53.54,20,0
.goto 543,44.58,51.32,20,0
.complete 35038,1 
.complete 35202,1 
.mob Boneyard Tunneler
.mob Boneyard Gorger
.target Longtooth Gorger
step
#sticky
#label GorgrondGromkarGrunt
>>杀死|cRXP_ENEMY_Grom'kar Grunts|r
.goto 543,47.91,52.91,0,0
.complete 35934,1 
.mob Grom'kar Grunt
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Orders|r
.goto 543,47.75,52.07
.accept 35925 >>接任务: |cRXP_WARN_戈隆战术|r
step
>>杀死|cRXP_ENEMY_Gronnslaver Raz|r
.goto 543,47.78,51.81
.complete 35037,2 
.mob Gronnslaver Raz
step
>>杀死|cRXP_ENEMY_Mangled Boulderbreaker|r
.goto 543,47.94,54.31
.complete 35037,1 
.mob Mangled Boulderbreaker
step
#requires GorgrondGromkarGrunt
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
.target Rexxar
.goto 543,46.04,54.75
.turnin 35037 >>Turn in Bad at Breaking
.turnin 35934 >>Turn in Nisha's Vengeance
.turnin 35925 >>Turn in The Gronn Strategy
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bony Xuk|r
.target Bony Xuk
.goto 543,46.20,55.09
.turnin 35202 >>Turn in Xuk Me, Right?
.turnin 35038 >>Turn in What the Bony Xuk?
.accept 35041 >>接任务: |cRXP_WARN_艾苏克教你诈！|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Tunnel|r
.goto 543,46.92,55.38
.complete 35041,1 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Rylak corpse|r
.goto 543,45.75,50.39
.complete 35041,2 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Tunnel|r
.goto 543,45.75,50.39
.complete 35041,3 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Tunnel|r
.goto 543,44.30,41.77
.complete 35041,4 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_corpse|r
.goto 543,43.16,42.30
.complete 35041,5 
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Tunnel|r
.goto 543,43.01,42.49
.complete 35041,6 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
.target Rexxar
.goto 543,46.04,54.74
.turnin 35041 >>Turn in Xuk It!
.accept 35129 >>接任务: |cRXP_WARN_孤身上路|r
.accept 35128 >>接任务: |cRXP_WARN_擒敌先擒王|r
step
#completewith next
>>使用该技能后，您有60秒的时间获得以下四项|cRXP_WARN_在使用该技能之前，拉一些怪物并伤害他们，直到他们只剩下大约20%的生命值。
*Skip the ones you didn't get
.cast 164012 >>使用冠军荣誉（区域能力）
step
*Loot 'Worn Ogron Horn' from the |cRXP_ENEMY_'Ogron Spinecrushers'|r
*Skip the items you haven't looted after 60 seconds.
.goto 543,43.49,48.05,15,0
.goto 546,58.71,79.16,15,0
.goto 543,35.77,65.86,15,0
.collect 114019,1,36076,1
.accept 36076 >>接任务: |cRXP_WARN_力量的证明：独眼魔角|r
.mob Ogron Spinecrusher
step
#sticky
#label GorgrondOgronSpinecrusher
>>杀死|cRXP_ENEMY_Ogron脊椎粉碎器|r
.goto 546,51.76,64.72,0,0
.complete 35128,1 
.mob Ogron Spinecrusher
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Thukmar|r and pick up the |cRXP_PICK_intel|r afterwards.
.goto 546,46.50,57.62,20,0
.goto 546,41.17,58.75,12,0
.goto 546,44.84,85.81
.skipgossip
.complete 35129,1 
.complete 35129,2 
.target Corporal Thukmar
step
>>杀死|cRXP_ENEMY_Borogahn|r
.goto 547,31.07,75.36
.complete 35128,2 
.mob Borogahn
step
#requires GorgrondOgronSpinecrusher
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Tunnel|r
.goto 547,34.77,66.63
.accept 35210 >>接任务: |cRXP_WARN_大逃亡|r
.complete 35210,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bony Xuk|r
.target Bony Xuk
.goto 543,43.89,48.85
.accept 35247 >>接任务: |cRXP_WARN_艾苏克的忧惧|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bony Xuk|r again
.target Bony Xuk
.goto 543,43.89,48.85
.skipgossip
.complete 35247,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
.target Rexxar
.goto 543,43.94,48.86
.turnin 35128 >>Turn in Fair Warning
.turnin 35129 >>Turn in Leave Every Soldier Behind
.turnin 35210 >>Turn in A Great Escape
.accept 35139 >>接任务: |cRXP_WARN_天空之眼|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r
.target Nisha
*Skip the next cinematic with ESC
.goto 543,43.87,48.91
.skipgossip
.complete 35139,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
.target Rexxar
.goto 543,43.94,48.86
.turnin 35139 >>Turn in Eye in the Sky
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the Spirit
.goto 543,44.12,48.81
.turnin 35247 >>Turn in Zero Xuks Given
.turnin 36832 >>交任务: |cRXP_FRIENDLY_把艾苏克带走！|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷克萨|r
.target Rexxar
.goto 543,43.94,48.86
.accept 35136 >>接任务: |cRXP_WARN_钢铁锁链|r
step
.goto 543,44.71,48.69
.accept 36480 >>接任务: |cRXP_WARN_毁灭谷|r
step
#sticky
#label GorgrondCanyonBoulderbreak
>>杀死航路点附近最近的|cRXP_ENEMY_Boulderbreakers|r
.goto 543,45.73,46.44
.complete 36480,1 
.mob Canyon Boulderbreaker
step
>>在航路点附近击破|cRXP_ENEMY_Goren Egg|r并杀死|cRXX_ENEMY_Nibblers|r
.goto 543,47.62,48.11
.complete 36480,2 
.complete 36480,3 
.mob Goren Nibbler
step
#requires GorgrondCanyonBoulderbreak
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rakthoth|r
.target Rakthoth
.goto 543,49.37,49.70
.turnin 33694 >>Turn in Reagents from Rakthoth
.accept 33689 >>接任务: |cRXP_WARN_修剪植物|r
.accept 33685 >>接任务: |cRXP_WARN_古树大使|r
step
#sticky
#label defendersdionor
#loop
.line 543,49.80,47.63,49.46,47.19,49.82,46.36,50.28,46.09,50.89,46.31
.goto 543,49.80,47.63,15,0
.goto 543,49.46,47.19,15,0
.goto 543,49.82,46.36,15,0
.goto 543,50.28,46.09,15,0
.goto 543,50.89,46.31,15,0
>>杀死|cRXP_ENEMY_种子牧师|r或|cRXX_ENEMY_Growth|r
.complete 33689,1 
.mob Dionor Seedpriest
.mob Primal Growth
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Birchus|r
.goto 543,50.29,47.52
.skipgossip 1
.complete 33685,1 
.target Birchus
step
#requires defendersdionor
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rakthoth|r
.target Rakthoth
.goto 543,51.28,47.98
.turnin 33689 >>Turn in Plant Pruning
.turnin 33685 >>Turn in Ambassador to the Ancient
.accept 33662 >>接任务: |cRXP_WARN_打脸vs巨石|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Boulder|r
.goto 543,50.63,51.45
.complete 33662,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rakthoth|r
.target Rakthoth
.goto 543,50.91,51.43
.turnin 33662 >>Turn in Beatface vs. Boulder
.accept 33661 >>接任务: |cRXP_WARN_汽痕“材料”|r
step
>>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Saberon Stash|r
.goto 543,51.05,51.62
.accept 33660 >>接任务: |cRXP_WARN_虎人的草药包|r
step
#sticky
#label GorgrondSaberonHeart
>>杀死|cRXP_ENEMY_Streamscars|r。掠夺它们的|cRXX_Loot_Heart|r
.goto 543,51.86,51.27,0,0
.complete 33661,1 
.mob Streamscar Warrior
.mob Streamscar Primalist
step
#title Herb Bundle 1/8
>>拿起|cRXP_Pick_bundle|r
.goto 543,51.41,51.87
.complete 33660,1,1 
step
#title Herb Bundle 2/8
>>拿起|cRXP_Pick_bundle|r
.goto 543,51.66,52.47
.complete 33660,1,2 
step
#title Herb Bundle 3/8
>>拿起|cRXP_Pick_bundle|r
.goto 543,51.95,51.04
.complete 33660,1,3 
step
#title Herb Bundle 4/8
>>拿起|cRXP_Pick_bundle|r
.goto 543,53.23,50.98
.complete 33660,1,4 
step
#title Herb Bundle 5/8
>>拿起|cRXP_Pick_bundle|r
.goto 543,53.64,50.82
.complete 33660,1,5 
step
#title Herb Bundle 6/8
>>拿起|cRXP_Pick_bundle|r
.goto 543,53.70,51.20
.complete 33660,1,6 
step
#title Herb Bundle 7/8
>>拿起|cRXP_Pick_bundle|r
.goto 543,53.59,51.75
.complete 33660,1,7 
step
#title Herb Bundle 8/8
>>拿起|cRXP_Pick_bundle|r
.goto 543,53.47,51.82
.complete 33660,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rakthoth|r
.target Rakthoth
.goto 543,52.86,51.76
.turnin 33660 >>Turn in The Sacking of the Saberon
.turnin 33661 >>Turn in Steamscar "Reagents"
.accept 33695 >>接任务: |cRXP_WARN_夺取凋零之蕾|r
step
>>杀死|cRXP_ENEMY_Smokemaster Snar|r。掠夺他以获得|cRXX_Loot_Death Bloom|r
.goto 543,54.27,52.61
.complete 33695,1 
.mob Smokemaster Snarl
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Birchus|r
.target Birchus
.goto 543,50.30,47.53
.turnin 33695 >>Turn in Taking the Death Bloom
.accept 33706 >>接任务: |cRXP_WARN_让迪奥诺安息|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待约5秒钟。再次与|cRXP_FRIENDLY_Birchus|r交谈
.goto 543,50.30,47.53
.turnin 33706 >>Turn in Laying Dionor to Rest
.target Birchus
step
.goto 543,48.93,47.31
.turnin 36203 >>交任务: |cRXP_FRIENDLY_Treasure: Goren Egg|r
step
>>击败来袭的巨浪。最后杀死|cRXP_ENEMY_ Brak|r队长
*|cRXP_WARN_If you're squishy only attack NPCs Rexxar is attacking and wait for him to generate some threat.|r
.goto 543,49.21,44.90
.complete 35136,1 
.mob Captain Brak
step
>>拿起|cRXP_Pick_Heart|r
.goto 543,49.73,43.85
.complete 35136,2 
step
#completewith next
.hs >>Hearth to Beastwatch
step
.goto 543,48.88,69.68
.accept 36563 >>接任务: |cRXP_WARN_漫雾沼泽|r
step
#completewith next
>>使用该技能后，您有60秒的时间获得以下物品|cRXP_WARN_在使用该技能之前，拉一些怪物并伤害他们，直到他们只剩下大约20%的生命值。
*Skip the ones you didn't get
.cast 164012 >>使用冠军荣誉（区域能力）
step
*Loot 'Basilik Scale' from the |cRXP_ENEMY_'Mire Basilisks'|r
*Skip the items you haven't looted after 60 seconds.
.goto 543,50.09,69.19,15,0
.goto 543,51.58,68.46
.collect 114036,1,36104,1
.accept 36104 >>接任务: |cRXP_WARN_力量的证明：蜥蜴鳞片|r
.mob Mire Basilisk
step
#sticky
#label hydravilescale
>>在航路点附近击破|cRXP_ENEMY_Egg|r并击杀|cRXP_ENEMY_Vilescales|r
.goto 543,51.84,66.54,0,0
.complete 36563,1 
.complete 36563,2 
.mob Lernaea Vilescale
.mob Hydra Egg
step
.goto 543,52.50,66.95
.turnin 36509 >>交任务: |cRXP_FRIENDLY_Treasure: Hydra Treasure Pile|r
step
#requires hydravilescale
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grulkor|r
.target Grulkor
.goto 543,54.45,66.65
.turnin 35667 >>Turn in Skulltakers in Crimson Fen
.accept 35016 >>接任务: |cRXP_WARN_割颅者基本教程|r
step
#sticky
#label GorgrondFungalLurcher
>>杀死该区域的|cRXP_ENEMY_真菌潜伏者|r
.goto 543,56.79,63.49,0,0
.complete 35017,1 
.mob Fungal Lurcher
step
#sticky
#label laughingskull1
#title Laughing Skull 1/5
>>从|cRXP_ENEMY_Dead Skulltaker|r中取出|cRX_PICK_Laughing Skull|r
.goto 543,54.56,65.58
.complete 35016,1,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dying Skulltaker|r
.target Dying Skulltaker
.goto 543,54.84,65.31
.accept 35017 >>接任务: |cRXP_WARN_割颅者的复仇|r
step
>>杀死|cRXP_ENEMY_真菌潜伏者|r。为|cRXD_Loot_发光的红色吊舱|r掠夺它们。在你的包里点击它
.goto 543,54.84,65.31
.collect 112378,1,35021
.accept 35021 >>接任务: |cRXP_WARN_神秘的豆荚|r
.mob Fungal Lurcher
step
#requires laughingskull1
#title Laughing Skull 2/5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dying Skulltaker|r
.goto 543,55.25,65.19
.complete 35016,1,2 
step
#title Laughing Skull 3/5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dying Skulltaker|r
.goto 543,55.54,64.68
.complete 35016,1,3 
step
#title Laughing Skull 4/5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dying Skulltaker|r
.goto 543,55.83,64.66
.complete 35016,1,4 
step
#title Laughing Skull 5/5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dying Skulltaker|r
.goto 543,56.11,64.59
.complete 35016,1 
step
#requires GorgrondFungalLurcher
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grulkor|r
.target Grulkor
.goto 543,57.20,61.95
.turnin 35016 >>Turn in Basic Skulltaking
.turnin 35017 >>Turn in Skulltaker's Revenge
.turnin 35021 >>Turn in Mysterious Pod
.accept 35027 >>接任务: |cRXP_LOOT_清理道路|r
.accept 35029 >>接任务: |cRXP_WARN_真菌的秘密|r
step
#sticky
#label GorgrondFungusCoveredShamblers
>>杀死|cRXP_ENEMY_真菌覆盖的Shambler|r
.goto 543,57.31,60.74,0,0
.complete 35027,1 
.mob Fungus Covered Shambler
step
>>拾取离航路点最近的五个|cRXP_PICK_蘑菇|r。
.goto 543,57.31,60.74
.complete 35029,1 
step
#requires GorgrondFungusCoveredShamblers
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grulkor|r
.target Grulkor
.goto 543,57.20,61.95
.turnin 35027 >>交任务: |cRXP_FRIENDLY_清理道路|r
.turnin 35029 >>Turn in The Secret of the Fungus
.accept 35030 >>接任务: |cRXP_WARN_恐怖的收割者|r
.accept 35031 >>接任务: |cRXP_WARN_寻心之旅|r
step
>>Follow the arrow
.goto 543,58.93,62.53
.complete 35031,1 
step
>>杀死|cRXP_ENEMY_Fungal Stomper|r。为|cRXP_Loot_pods|r掠夺它们
.goto 543,58.48,62.79,20,0
.goto 543,58.92,61.34,20,0
.goto 543,59.91,62.75
.complete 35030,1 
.mob Fungal Stomper
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grulkor|r
.target Grulkor
.goto 543,58.91,62.52
.turnin 35030 >>Turn in A Grim Harvest
.turnin 35031 >>Turn in A Heartfelt Search
.accept 35040 >>接任务: |cRXP_WARN_沼泽之心|r
step
>>杀死|cRXP_ENEMY_Grulkor|r
*If you damage is low wait for your cooldowns.
.goto 543,61.22,61.83
.complete 35040,1 
.mob Grulkor
step
.goto 543,61.20,57.58
.accept 36571 >>接任务: |cRXP_WARN_艾韵荒野|r
step
#sticky
#label GorgrondWealdStinger
>>杀死|cRXP_ENEMY_Weal毒刺|r
>>它们在你的上空飞行。使用远程能力拉住他们。
.complete 36571,3 
.mob Weald Stinger
step
>>杀死|cRXP_ENEMY_Thorny Stabbers|r
>>单击|cRXP_ENEMY_Leaflings|r以安装并杀死它们
.goto 543,61.35,56.61,15,0
.goto 543,60.88,55.54,15,0
.goto 543,61.01,54.37,15,0
.goto 543,60.61,53.62,15,0
.goto 543,61.12,53.22
.complete 36571,1 
.complete 36571,2 
.mob Thorny Stabber
.mob Thorny Leafling
step
#requires GorgrondWealdStinger
.goto 543,61.52,63.20
.accept 36564 >>接任务: |cRXP_WARN_丛林之心|r
step
#sticky
#label GorgrondTangleheartCultivator
>>杀死|cRXP_ENEMY_Tangleheart培育器|r
.goto 543,58.60,71.52,0,0
.complete 36564,1 
step
#title Pod 1/10
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Pod.|r
.goto 543,61.89,63.64
.complete 36564,2,1 
step
#title Pod 2/10
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Pod.|r
.goto 543,62.03,65.41
.complete 36564,2,2 
step
#title Pod 3/10
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Pod.|r
.goto 543,61.56,66.39
.complete 36564,2,3 
step
#title Pod 4/10
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Pod.|r
.goto 543,60.74,65.95
.complete 36564,2,4 
step
#title Pod 5/10
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Pod.|r
.goto 543,59.43,65.68
.complete 36564,2,5 
step
#title Pod 6/10
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Pod.|r
.goto 543,59.31,66.99
.complete 36564,2,6 
step
#title Pod 7/10
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Pod.|r
.goto 543,59.38,67.88
.complete 36564,2,7 
step
#title Pod 8/10
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Pod.|r
.goto 543,59.86,68.72
.complete 36564,2,8 
step
#title Pod 9/10
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Pod.|r
.goto 543,60.16,69.79
.complete 36564,2,9 
step
>>杀死|cRXP_ENEMY_Ontogen收割机|r
.goto 543,59.87,71.06
.complete 36564,3 
.mob Ontogen the Harvester
step
#title Pod 10/10
>>|TInterface/GossipFrame/HealerGossipIcon:0|tDestroy the |cRXP_PICK_Pod.|r
.goto 543,59.39,71.03
.complete 36564,2 
step
#completewith next
>>使用该技能后，您有60秒的时间获得以下2项|cRXP_WARN_在使用该技能之前，拉一些怪物并伤害他们，直到他们只剩下大约20%的生命值。
*Skip the ones you didn't get
.cast 164012 >>使用冠军荣誉（区域能力）
step
*1) Loot 'Orc Thorn' from |cRXP_ENEMY_'Infested Behemoths'|r
*2) Loot 'Ancient Branch' from the |cRXP_ENEMY_'Bloom Defender'|r
*Skip if you don't loot it after 60 seconds.
.goto 543,48.44,74.05,20,0
.goto 543,47.06,73.15,20,0
.goto 543,46.11,73.29,20,0
.collect 114027,1,36091,1
.collect 114030,1,36094,1
.accept 36091 >>接任务: |cRXP_WARN_力量的证明：兽人荆棘|r
.accept 36094 >>接任务: |cRXP_WARN_力量的证明：古树树枝|r
.mob Infested Behemoth
.mob Bloom Defender
step
#requires GorgrondTangleheartCultivator
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Limbflayer|r
.target Limbflayer
.goto 543,46.33,69.71
.turnin -35152 >>Turn in The Sparring Arena
.turnin -35948 >>Turn in Proof of Strength: Goren Tooth
.turnin -36076 >>Turn in Proof of Strength: Ogron Horn
.turnin -36080 >>Turn in Proof of Strength: Gronnling Scale
.turnin -36083 >>Turn in Proof of Strength: Gronn Eye
.turnin -36086 >>Turn in Proof of Strength: Botani Bloom
.turnin -36091 >>Turn in Proof of Strength: Orc Thorn
.turnin -36097 >>Turn in Proof of Strength: Ravager Claw
.turnin -36101 >>Turn in Proof of Strength: Wasp Stinger
.turnin -36104 >>Turn in Proof of Strength: Basilisk Scale
.turnin -36106 >>Turn in Proof of Strength: Elemental Crystal
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marrow|r
.target Marrow
.goto 543,46.28,69.98
.turnin 35040 >>Turn in Heart of the Fen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜隆坦|r
.target Durotan
.goto 543,46.10,70.19
.turnin 35136 >>Turn in Chains of Iron
step
.zoneskip 590
#completewith next
.cast 171253 >>使用你的加里森炉石
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warmaster Zog|r in front of you
.turnin 34462 >>Turn in Winds of Change
.accept 34775 >>接任务: |cRXP_WARN_可执行的任务|r
.target Warmaster Zog
step
>>与任务表交互并跳过教程
*If you can't press on the mission then type '/reload' into the chat.
*Click on the first Mission then drag |cRXP_FRIENDLY_Olin Umberhide|r into the follower slot and start it.
.complete 34775,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warmaster Zog|r
.target Warmaster Zog
.turnin 34775 >>Turn in Mission Probable
step
.isQuestTurnedIn 44184
#completewith next
.use 140192
.cast 222695 >>Use Dalaran Hearthstone
step
.isQuestTurnedIn 44184
.goto 627,55.28,23.95
.zone 85 >>前往: |cRXP_PICK_杜隆塔尔|r
step
.isQuestAvailable 44184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
.target Gazlowe
.accept 36706 >>接任务: |cRXP_WARN_阿什兰一览|r
step
.isQuestAvailable 44184
>>去找飞行大师，和他谈谈
.skipgossip 2
.complete 36706,1 
step
.isQuestAvailable 44184
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stomphoof|r
.target Stomphoof
.goto 624,45.55,34.64
.turnin 36706 >>Turn in Ashran Appearance
step
.isQuestAvailable 44184
.zoneskip 85
.goto 624,60.76,51.59,1 >>使用门户组织
]])
RXPGuides.RegisterGuide([[
#df
#version 9
#group RestedXP Horde 10-60
#name 99 Monk Quest Horde
#displayname Monk Quests
#next 3沃尔顿部落；6阿拉克部落的尖塔
<< Horde Monk
step
.abandon 12103 >>暴风雨来临前放弃
step
.isQuestAvailable 31834
.zoneskip 379
.cast 126892 >>Use Zen Pilgrimage
step
.isQuestAvailable 31834
.goto 379,48.53,43.57
.zone 85 >>前往: |cRXP_PICK_奥格瑞玛|r
step
.isQuestAvailable 31834
.goto 85,53.17,90.53,10,0
.goto 85,40.80,80.10
.gossipoption 51903 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.cast 335595 >>回到现在。如果您已经在当前时间线中，请跳过此步骤
.target Chromie
step
.isQuestAvailable 31834
.zoneskip 379
.cast 126892 >>Use Zen Pilgrimage
step
.goto 379,48.60,42.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.accept 31834 >>接任务: |cRXP_WARN_开始训练：程大师|r
.target Master Hight
step
.isOnQuest 31834
.goto 379,47.06,40.15
.gossipoption 41015 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Cheng|r
.target Master Cheng
step
.isOnQuest 31834
>>在航路点位置等待|cRXP_FRIENDLY_Master Cheng|r，当他告诉你时，在聊天中键入/鞠躬。然后击败他
.emote BOW,66138
.goto 379,48.07,40.40
.complete 31834,1 
.target Master Cheng
.mob Master Cheng
step
.goto 379,48.60,42.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞回并与|cRXP_FRIENDLY_Master Hight|r通话
.turnin 31834 >>Turn in Begin Your Training: Master Cheng
.accept 31835 >>接任务: |cRXP_WARN_继续训练：吉斯坦大师|r
.accept 31840 >>接任务: |cRXP_WARN_熟能生巧：程大师|r
.target Master Hight
step
.isOnQuest 31834
.goto 379,47.06,40.15
.gossipoption 41015 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Cheng|r
.target Master Cheng
step
.isOnQuest 31840
.goto 379,48.05,39.02
.gossipoption 40841 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Kistane|r
.target Master Kistane
step
>>在航路点位置等待|cRXP_FRIENDLY_Master Cheng|r，瞄准他，当他告诉你时，在聊天中键入/鞠躬，然后击败他
.emote BOW,66138
.goto 379,48.11,40.31
.complete 31840,1 
.target Master Cheng
.mob Master Cheng
step
>>在航路点位置等待|cRXP_FRIENDLY_Master Kistane|r，瞄准她，当他告诉你时，在聊天中打字/鞠躬，然后击败她
.emote BOW,65899
.goto 379,48.11,40.31
.complete 31835,1 
.target Master Kistane
.mob Master Kistane
step
.goto 379,48.60,42.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞回并与|cRXP_FRIENDLY_Master Hight|r通话
.turnin 31835 >>Turn in Continue Your Training: Master Kistane
.turnin -31840 >>Turn in Practice Makes Perfect: Master Cheng
.accept 31836 >>接任务: |cRXP_WARN_继续训练：尹大师|r
.target Master Hight
step
#completewith next
.isOnQuest 31836
.goto 379,48.71,40.49
.gossipoption 40843 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Yoon|r
.target Master Yoon
step
>>在航路点位置等待|cRXP_FRIENDLY_Master Yoon|r，瞄准他，当他告诉你时，在聊天中键入/鞠躬，然后击败他
.emote BOW,66073
.goto 379,48.11,40.36
.complete 31836,1 
.target Master Yoon
step
.goto 379,48.60,42.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞回并与|cRXP_FRIENDLY_Master Hight|r通话
.turnin 31836 >>Turn in Continue Your Training: Master Yoon
.accept 31837 >>接任务: |cRXP_WARN_继续训练：程大师|r
.target Master Hight
step
#completewith next
.isOnQuest 31837
.goto 379,48.53,41.49
.gossipoption 40975 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Cheng|r
.target Master Cheng
step
>>在航路点位置等待|cRXP_FRIENDLY_Master Cheng|r，瞄准她，当他告诉你时，在聊天中打字/鞠躬，然后击败她
.emote BOW,66180
.goto 379,48.10,40.31
.complete 31837,1 
.target Master Cheng
step
.goto 379,48.60,42.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞回并与|cRXP_FRIENDLY_Master Hight|r通话
.turnin 31837 >>Turn in Continue Your Training: Master Cheng
.accept 31838 >>接任务: |cRXP_WARN_继续训练：曾大师|r
.target Master Hight
step
#completewith next
.isOnQuest 31838
.goto 379,48.07,41.37
.gossipoption 41014 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Tsang|r
.target Master Tsang
step
>>在航路点位置等待|cRXP_FRIENDLY_Master Tsang |r，瞄准他，当他告诉你
*Use |T606542:0|tCrackling Jade Lightning on the Monk Trainees around you on the Balance Poles, then deafeat Master Tsang
.emote BOW,66149
.goto 379,48.12,40.37
.complete 31838,1 
.target Master Tsang
step
.goto 379,48.60,42.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞回并与|cRXP_FRIENDLY_Master Hight|r通话
.turnin 31838 >>Turn in Continue Your Training: Master Tsang
.accept 31839 >>接任务: |cRXP_WARN_继续训练：许大师|r
.target Master Hight
step
#completewith next
.isOnQuest 31839
.goto 379,47.49,40.93
.gossipoption 40709 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hsu|r
.target Master Hsu
step
>>在航路点位置等待|cRXP_FRIENDLY_Master Hsu|r，瞄准他，当他告诉你时，在聊天中键入/鞠躬，然后击败他
.emote BOW,65977
.goto 379,48.11,40.36
.complete 31839,1 
.target Master Hsu
step
.goto 379,48.60,42.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞回并与|cRXP_FRIENDLY_Master Hight|r通话
.turnin 31839 >>Turn in Continue Your Training: Master Hsu
.accept 31944 >>接任务: |cRXP_WARN_完成训练：终极试炼|r
.target Master Hight
step
#completewith next
.isOnQuest 31944
.goto 379,48.32,41.52
.gossipoption 41235 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.target Master Hight
step
>>在航路点位置等待|cRXP_FRIENDLY_Master Hight|r，瞄准他，当他告诉你时，在聊天中键入/鞠躬，然后击败他
.emote BOW,66732
.goto 379,48.15,40.46
.complete 31944,1 
.target Master Hight
step
.goto 379,48.60,42.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t飞回并与|cRXP_FRIENDLY_Master Hight|r通话
.turnin 31944 >>Turn in Complete Your Training: The Final Test
.target Master Hight
]])
