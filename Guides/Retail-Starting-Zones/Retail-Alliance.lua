RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Alliance 10-60
#groupweight 9
#displayname Chapter 1 - Elwynn Forest
#name 1A_Elwynn Forest
#next 2A_Redridge Mountains
#fresh 30
#veteran
<< Alliance
step
#veteran
.goto 84,61.11,70.6
+暗月集市活动现在处于活动状态，|cRXP_WARN_它保证您免费获得额外等级和临时10%的经验提升|r您需要从拍卖行购买|cRXP_WARN_certain物品才能充分利用这一优势|r如有必要，|cRXP_WARN_您可以从其他角色转移黄金进行购买|r然而，如果你发现你买不起所有东西，|cRXP_WARN_I仍然值得去暗月集市获得临时体验增益，并只购买部分物品|r
>>|cRXP_WARN_建议使用至少拥有10000黄金的其他字符登录。使用此字符购买物品，然后将其发送出去。|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师费奇|r
.collect 71715,1
.collect 71638,1
.collect 71637,1
.collect 71636,1
.collect 71635,1
.collect 71952,1
.collect 71951,1
.collect 71953,1
.collect 71716,1
.target Auctioneer Fitch
.target Auctioneer Jaxon
.target Auctioneer Chilton
.dmf
step
#fresh
+暗月集市活动现在处于活动状态，|cRXP_WARN_它保证您免费获得额外等级和临时10%的经验提升|r
.dmf
step
#optional
.goto 37,41.71,52.74,-1
.goto 37,39.48,60.53,-1
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
.isOnQuest 37112 
.skill riding,75,1
step << !Human !KulTiran
.goto 37,41.715,64.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇敢的巴特利|r
.fp Goldshire >>获取Goldshire飞行路线
.target Bartlett the Brave
step
#optional
.goto 37,42.11,65.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
.turnin 54 >>交任务: |cRXP_FRIENDLY_去闪金镇报到|r
.accept 62 >>接任务: |cRXP_WARN_法戈第矿洞|r
.accept 26378 >>接任务: |cRXP_WARN_英雄的召唤：西部荒野！|r
.target Marshal Dughan
.isOnQuest 54

step
.goto 37,42.11,65.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
.accept 62 >>接任务: |cRXP_WARN_法戈第矿洞|r
.accept 26378 >>接任务: |cRXP_WARN_英雄的召唤：西部荒野！|r
.target Marshal Dughan
step << Human/KulTiran
.goto 37,41.708,65.541
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁匠阿古斯|r
.accept 26393 >>接任务: |cRXP_WARN_快递消息|r
.target Smith Argus
step << Human/KulTiran
.goto 37,41.715,64.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇敢的巴特利|r
.turnin 26393 >>交任务: |cRXP_FRIENDLY_快递消息|r
.accept 26394 >>接任务: |cRXP_WARN_前往暴风城|r
.target Bartlett the Brave
step
#optional
#completewith next
.goto 37,43.19,65.74,5,0
.goto 37,43.23,65.95,5,0
.goto 37,43.318,65.705,4 >>前往|cRXP_FRIENDLY_William Pestle|r
step
.goto 37,43.318,65.705
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威廉·匹斯特|r
.accept 60 >>接任务: |cRXP_LOOT_狗头人的蜡烛|r
.target William Pestle
step
#veteran
#completewith 烹饪
.goto 37,43.77,65.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板法雷|r
>>|cRXP_BUY_从他那里购买5|r|T132789:0|t[Moonberry Juice]|cRXP_Buy_|r
>>|cRXP_WARN_|r|T132789:0|t[月莓汁]|cRXP_WARN_i用于|r|T4620669:0|t[Alchemy]|cRXP_WARN_Markmoon Faire任务。如果你不想训练|r|T4620669:0|t[炼金术]|cRXP_WARN_，跳过目标|r
.turnin 37112 >>交任务: |cRXP_FRIENDLY_休息和放松|r
.collect 1645,5,29506,1 
.home >>将您的炉石设置为狮子的骄傲旅馆
.target Innkeeper Farley
.isQuestAvailable 47
.dmf
step
#veteran
.goto 37,43.77,65.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板法雷|r
.turnin 37112 >>交任务: |cRXP_FRIENDLY_休息和放松|r
.home >>将您的炉石设置为狮子的骄傲旅馆
.target Innkeeper Farley
.isQuestAvailable 47
.nodmf
step
#veteran
#label 烹饪
.goto 37,44.37,65.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师托马斯|r
.train 2550 >>火车烹饪
.target Tomas
.dmf
step
#fresh
.goto 37,43.77,65.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板法雷|r
.turnin 37112 >>交任务: |cRXP_FRIENDLY_休息和放松|r
.home >>将您的炉石设置为狮子的骄傲旅馆
.target Innkeeper Farley
.isQuestAvailable 47
step
#optional
#completewith next
.goto 37,43.23,65.95,5,0
.goto 37,43.13,65.74,5,0
.goto 37,42.93,65.71,6,0
.goto 37,42.14,67.26,12 >>向|cRXP_FRIENDLY_我的“两次”旅行|r
step
.goto 37,42.14,67.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷米|r
.accept 40 >>接任务: |cRXP_LOOT_鱼人的威胁|r
.accept 47 >>接任务: |cRXP_WARN_金砂交易|r
.target Remy "Two Times"
step
#veteran
.goto 37,41.95,67.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r
>>|cRXP_WARN_这些职业稍后会用于暗月精灵任务。如果您不想这样做，请跳过此步骤|r
.train 2259 >>列车|T4620669:0|t[炼金术]和|T4620676:0|t[铭文]
.skipgossip 47384,2,1,1
.target Lien Farmer
.dmf
step
#veteran
.goto 37,41.95,67.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r
.train 45357 >>列车|T4620676:0|t[铭文]
.skipgossip 47384,3,6,2
.target Lien Farmer
.dmf
.train 2259,3 
step
#veteran
.goto 37,41.89,67.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨瑞恩·博丁|r



.collect 30817,5,29509,1 
.collect 39354,5,29515,1 
.target Tharynn Bouden
.dmf
.train 45357,3 


step
#veteran
.goto 37,41.89,67.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨瑞恩·博丁|r



.collect 30817,5,29509,1 
.target Tharynn Bouden
.dmf


step
.goto 37,43.2,65.99,5,0
.goto 37,43.2,65.63,5,0
.goto 37,42.9,65.7,5,0
.goto 37,41.78,69.55
.zone 407 >>乘坐|cRXP_PICK_Darkmoon Faire Portal |r|cFFfa9602前往DarkmoonIsland|r
.dmf
step
#completewith next
+|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Strider.|r |cRXP_WARN_only if you don't have a level 1 mount.|r
.dmf
step
#veteran
.goto 407,51.57,24.84,10,0
.goto 407,55.83,53.02,15,0
.goto 407,50.44,59.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kae Ti|r and buy a |T133734:0|t[Ride Ticket Book] from her.
*|cRXP_WARN_buy the cheaper version |cFFfa9602on the left in the window|r|r
.collect 92788,1,92794,1 
.target Kae Ti
.dmf
step
#completewith next
.goto 407,49.45,57.5
.cast 107829 >>|cRXP_WARN_Open Ride Ticket Book|r
.dmf
.use 92788
.use 92794
step
#veteran
.goto 407,49.45,57.5
>>|cRXP_WARN_站在旋转木马上，|cRXP_WARN_wait等待体验自助餐达到60分钟|r|r
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the quest items in your bag |cRXP_WARN_and skip the ones you don't have)|

.accept 29464 >>接任务: |cRXP_WARN_占卜道具|r
.accept 29451 >>接任务: |cRXP_WARN_战略大师|r
.accept 29456 >>接任务: |cRXP_WARN_缴获的旗帜|r
.accept 29457 >>接任务: |cRXP_WARN_敌人的徽记|r
.accept 29458 >>接任务: |cRXP_WARN_缴获的日记|r
.accept 29443 >>接任务: |cRXP_WARN_奇怪的水晶|r
.accept 29444 >>接任务: |cRXP_WARN_古怪的蛋|r
.accept 29445 >>接任务: |cRXP_WARN_奇异的魔典|r
.accept 29446 >>接任务: |cRXP_WARN_精美的武器|r
.zoneskip 407,1
.dmf
step
#fresh
.goto 407,49.45,57.5
>>|cRXP_WARN_站在旋转木马上，|cRXP_WARN_wait等待体验自助餐达到60分钟|r|r
.zoneskip 407,1
.dmf
step
#veteran
.goto 407,51.91,60.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Professor Paleo|r
.turnin -29464 >>Turn in Tools of Divination
.turnin -29451 >>Turn in The Master Strategist
.turnin -29456 >>Turn in A Captured Banner
.turnin -29457 >>Turn in The Enemy's Insignia
.turnin -29458 >>Turn in The Captured Journal
.turnin -29443 >>交任务: |cRXP_FRIENDLY_奇怪的水晶|r
.turnin -29446 >>Turn in A Wondrous Weapon
.zoneskip 407,1
.dmf
step
#veteran
.goto 407,47.76,64.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉瓦斯·格里加特|r
.turnin 7905 >>交任务: |cRXP_FRIENDLY_暗月马戏团|r
.collect 171364,1,29506,1 
.target Gelvas Grimegate
.zoneskip 407,1
.dmf
step
#fresh
.goto 407,47.76,64.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉瓦斯·格里加特|r
.turnin 7905 >>交任务: |cRXP_FRIENDLY_暗月马戏团|r
.target Gelvas Grimegate
.zoneskip 407,1
.dmf
step
.goto 407,52.89,67.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔姆·雷角|r
.accept 29509 >>接任务: |cRXP_WARN_让青蛙肉更松脆|r
.target Stamp Thunderhorn
.zoneskip 407,1
.dmf
step
.goto 407,52.88,67.96
>>使用|T133642:0|t[Plump Frogs]将它们转换为|T237579:0|t[Breaded Frogs]。
.collect 72056,5,29509,1,-1 
.collect 30817,5,29509,1,-1 
.collect 72057,5,29509,1 
.use 72056 
.zoneskip 407,1
.dmf
.isOnQuest 29509
step
.goto 407,52.88,67.96
>>使用|cRXP_FRIENDLY_Stamp Thunderhorn|r附近的|T237579:0|t[Breaded Frogs]
.collect 72057,5,29509,1,-1 
.complete 29509,1 
.use 72057 
.zoneskip 407,1
.dmf
.isOnQuest 29509
step
.goto 407,52.88,67.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔姆·雷角|r
.turnin 29509 >>Turn in Putting the Crunch in the Frog
.target Stamp Thunderhorn
.zoneskip 407,1
.dmf
step
.goto 407,50.54,69.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞兰妮亚|r
.accept 29506 >>接任务: |cRXP_WARN_调制饮料|r
.collect 19299,5,29506,1 
.target Sylannia
.zoneskip 407,1
.dmf
.train 2259,3 
step
.goto 407,50.54,69.56
>>使用|T132793:0|t[鸡尾酒摇壶]制作|T463532:0|t[Moonberry Fizz]
.collect 1645,5,29506,1,-1 
.collect 19299,5,29506,1,-1 
.complete 29506,1 
.use 72043 
.zoneskip 407,1
.dmf
.isOnQuest 29506
step
.goto 407,50.53,69.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞兰妮亚|r
.turnin 29506 >>Turn in A Fizzy Fusion
.target Sylannia
.zoneskip 407,1
.dmf
.isOnQuest 29506
step
.goto 407,53.23,75.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞格|r
.turnin 29445 >>交任务: |cRXP_FRIENDLY_奇异的魔典|r
.accept 29515 >>接任务: |cRXP_WARN_书写未来|r
.target Sayge
.zoneskip 407,1
.dmf
.isOnQuest 29445
.train 45357,3 
step
#optional
.goto 407,53.23,75.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞格|r
.turnin 29445 >>交任务: |cRXP_FRIENDLY_奇异的魔典|r
.target Sayge
.zoneskip 407,1
.dmf
.isOnQuest 29445
step
#optional
.goto 407,53.23,75.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞格|r
.accept 29515 >>接任务: |cRXP_WARN_书写未来|r
.target Sayge
.zoneskip 407,1
.dmf
.train 45357,3 
step
.goto 407,53.23,75.82
>>使用|T413571:0|t[异国草药束]制作|T237061:0|t]预言墨水
.collect 71972,1,29515,1
.use 71971
.zoneskip 407,1
.dmf
.isOnQuest 29515
step
.goto 407,53.23,75.82
>>使用|T237061:0|t[预言墨水]制作|T134943:0|t[Fortunes]
.collect 39354,5,29515,1,-1 
.complete 29515,1 
.use 71972
.zoneskip 407,1
.dmf
.isOnQuest 29515
step
.goto 407,53.23,75.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞格|r
.turnin 29515 >>Turn in Writing the Future
.target Sayge
.skipgossip
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
.goto 407,50.56,90.80
.zone 37 >>乘坐|cRXP_PICK_Darkmoon Faire Portal |r|cFFfa9602前往Elwynn Forest|r
.zoneskip 407,1
.dmf
step
#completewith next
+|cRXP_WARN_放弃你的专业|r
.link /run AbandonSkill(773); AbandonSkill(171); >>|cRXP_WARN_单击此文本可接收一个宏，该宏将放弃您的职业。|r



.isOnQuest 60
.dmf
step
#sticky
#label Professions1
#completewith Professions3
.goto 37,41.95,67.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r
>>|cRXP_WARN_草药和采矿矿脉提供XP。只收集直接路径中的资源|r
>>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
.train 2366 >>列车|T4620675:0|t[草药学]
.train 2575 >>列车|T4620679:0|t[采矿]
.target Lien Farmer
.skipgossip 47396,1,1,1
.train 2366,1 
.train 2575,1 
step
#optional
#requires Professions1
#label Professions2
#completewith Professions3
.goto 37,41.95,67.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r
>>|cRXP_WARN_Herbing Herbs提供XP。只收集直接路径中的资源|r
>>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
.train 2366 >>列车|T4620675:0|t[草药学]
.target Lien Farmer
.skipgossip 47396,2,2,2
.train 2575,3 
step
#optional
#requires Professions2
#label Professions3
.goto 37,41.95,67.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lien Farmer|r
>>|cRXP_WARN_采矿矿脉提供XP。只收集直接路径中的资源|r
>>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
.train 2575 >>列车|T4620679:0|t[采矿]
.target Lien Farmer
.skipgossip 47396,2,3,2
.train 2366,3 
step
#veteran
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia Stevens|r.
>>|cRXP_WARN_如果您没有25级宠物战斗宠物，请跳过此步骤。|r
.goto 37,41.65,83.67
.accept 31693 >>接任务: |cRXP_WARN_茱莉亚·史蒂文斯|r
.target Julia Stevens
.isQuestTurnedIn 31903 
step
#veteran
>>在宠物战中击败|cRXP_ENEMY_Julia Stevens|r。
.complete 31693,1 
.target Julia Stevens
.isOnQuest 31693
step
#veteran
.goto 37,41.66,83.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia Stevens|r
.turnin 31693 >>Turn in Julia Stevens
.target Julia Stevens
.isQuestComplete 31693
step
#completewith FargodeepM
.goto 37,38.22,83.41,0
>>杀死|cRXP_ENEMY_Kobold隧道工|r和|cRXX_ENEMY_Kobold矿工|r。掠夺他们的|cRXD_Loot_大蜡烛|r和| cRXP_Loot_金尘|r
.complete 60,1 
.complete 47,1 
.mob Kobold Tunneler
.mob Kobold Miner
step
#optional
.goto 37,38.22,83.41,40 >>|cRXP_WARN_[RARE] Check for |cRXP_ENEMY_Narg the Taskmaster|r. Kill him if he's up|r
.unitscan Narg the Taskmaster
.isOnQuest 60
.noflyable
step
#optional
#completewith next
.goto 37,38.94,82.23,12,0
.goto 38,42.52,71.63
.subzone 54 >>进入Fargodeep矿场的上层
step
#label FargodeepM
.goto 38,54.31,59.56,-1
.goto 39,66.53,66.18,-1
>>进入法戈迪普矿的一个中心房间
.complete 62,1 
step
.goto 37,37.82,86.14,40,0
.goto 37,37.89,81.45,40,0
.goto 39,47.59,68.00,20,0
.goto 39,60.14,82.29,20,0
.goto 39,78.65,28.65,20,0
.goto 39,57.67,25.29,20,0
.goto 38,53.73,72.25,20,0
.goto 37,37.82,86.14,40,0
.goto 37,37.89,81.45,40,0
.goto 39,47.59,68.00,20,0
.goto 39,60.14,82.29,20,0
.goto 39,78.65,28.65,20,0
.goto 39,57.67,25.29,20,0
.goto 38,53.73,72.25
>>杀死|cRXP_ENEMY_Kobold隧道工|r和|cRXX_ENEMY_Kobold矿工|r。掠夺他们的|cRXD_Loot_大蜡烛|r和| cRXP_Loot_金尘|r
.complete 60,1 
.complete 47,1 
.mob Kobold Tunneler
.mob Kobold Miner
step
.goto 37,34.66,84.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r
.accept 88 >>接任务: |cRXP_WARN_公主必须死！|r
.target Ma Stonefield
step
#optional
.goto 37,33.64,87.76,15 >>|cRXP_WARN_[宝箱]检查马厩内的|cRXP_PICK_宝箱|r。如果它在上面，就把它拿走|r
.isOnQuest 60
.noflyable
step
#loop
.line 37,32.48,86.81,33.41,86.16,33.32,84.95,32.58,84.26,32.04,85.20,32.48,86.81
.goto 37,33.32,84.95,0
.goto 37,32.04,85.20,20,0
.goto 37,32.58,84.26,20,0
.goto 37,33.32,84.95,20,0
.goto 37,33.41,86.16,20,0
.goto 37,32.48,86.81,20,0
>>杀死|cRXP_ENEMY_Princess |r。为她掠夺她|cRXX_Loot_黄铜项圈|r
.complete 88,1 
.mob Princess
step
.goto 37,34.66,84.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r
.turnin 88 >>交任务: |cRXP_FRIENDLY_公主必须死！|r
.target Ma Stonefield
step
#optional
.goto 37,30.81,64.65,40 >>|cRXP_WARN_[稀有]检查Sly|r内部的|cRXP_ENEMY_Morgaine。如果她醒了就杀了她|r
.unitscan Morgaine the Sly
.isOnQuest 60
.noflyable
step
#optional
.goto 37,27.22,67.51,40 >>|cRXP_WARN_[稀有]检查|cRXP_ENEMY_Grizzled Ben |r。如果他醒了就杀了他|r
.unitscan Grizzled Ben
.isOnQuest 60
.noflyable
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Wanted Poster, |cRXP_FRIENDLY_瑞尼尔副队长|r
.accept 176 >>接任务: |cRXP_WARN_通缉：霍格|r
.goto 37,24.55,74.67
.accept 11 >>接任务: |cRXP_WARN_悬赏河爪豺狼人|r
.goto 37,24.23,74.45
.target Deputy Rainer
step
#completewith Bounty
.goto 37,24.36,93.65,0
.goto 37,26.10,91.95,0
.goto 37,25.30,88.95,0
.goto 37,27.80,88.36,0
.goto 37,27.67,86.21,0
.goto 37,26.32,86.82,0
+|cRXP_WARN_[稀有和胸部]留意营地中的|cRXP_PICK_胸部|r和|cRXP-ENEMY_Gruff Swiftbite|r。如果你找到了|cRXP_PICK_Chest|r，就偷走它，如果它上来了，就杀死|cRXP-ENEMY_Gruff Swiftbite|r|r
.unitscan Gruff Swiftbite
.noflyable
step
#sticky
#label Armbands
#loop
.goto 37,24.36,93.65,0
.goto 37,26.10,91.95,0
.goto 37,25.30,88.95,0
.goto 37,27.80,88.36,0
.goto 37,27.67,86.21,0
.goto 37,26.32,86.82,0
.waypoint 37,24.36,93.65,40,0
.waypoint 37,26.10,91.95,40,0
.waypoint 37,25.30,88.95,40,0
.waypoint 37,27.80,88.36,40,0
.waypoint 37,27.67,86.21,40,0
.waypoint 37,26.32,86.82,40,0
>>杀死|cRXP_ENEMY_Riverpaw Outrunners|r和|cRXX_ENEMY_River paw Runts|r。掠夺他们的|cRXD_Loot_彩绘Gnoll臂章|r
.complete 11,1 
.mob *Riverpaw Outrunner
.mob *Riverpaw Runt
step
#sticky
#label Deed
.goto 37,24.78,95.26
>>单击地面上的|cRXP_PICK_Westfall契约|r
.accept 184 >>接任务: |cRXP_LOOT_法布隆的地契|r
step
#label Hogger
.goto 37,24.85,95.14
>>击败|cRXP_ENEMY_Hogger|r
>>|cRXP_WARN_不要在击败RP后等待他|r
.complete 176,1 
.mob Hogger
.mob Minion of Hogger
step
#optional
#requires Deed

step
#label Bounty
#requires Armbands
.goto 37,24.23,74.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
.turnin 11 >>交任务: |cRXP_FRIENDLY_悬赏河爪豺狼人|r
.target Deputy Rainer
step
#veteran
.goto 52,60.85,18.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old MacDonald|r
>>|cRXP_WARN_如果您没有25级宠物战斗宠物，请跳过此步骤。|r
.accept 31780 >>接任务: |cRXP_WARN_老马当劳|r
.target Old MacDonald
.isQuestTurnedIn 31903
step
#veteran
.goto 52,61.04,18.82
>>在宠物战中击败|cRXP_ENEMY_Old MacDonald|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Old MacDonald
.complete 31780,1 
.target Old MacDonald
.skipgossip 65648,1
.isOnQuest 31780
step
#veteran
.goto 52,61.04,18.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old MacDonald|r
.turnin 31780 >>Turn in Old MacDonald
.target Old MacDonald
.isQuestComplete 31780
step
.goto 52,60.05,19.28,5,0
.goto 52,60.18,19.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍拉提奥·莱茵中尉|r
.turnin 184 >>交任务: |cRXP_FRIENDLY_法布隆的地契|r
.turnin 26378 >>交任务: |cRXP_FRIENDLY_英雄的召唤：西部荒野！|r
.accept 26209 >>接任务: |cRXP_WARN_他们把谋杀案撂我这儿了|r
.target Lieutenant Horatio Laine
step
#loop
.goto 52,58.23,18.12,0
.goto 52,58.56,16.21,20,0
.goto 52,59.18,18.16,20,0
.goto 52,58.12,19.58,20,0
.goto 52,57.31,18.33,20,0
.goto 52,58.56,16.21,20,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homeless Stormwind Citizens|r, |cRXP_FRIENDLY_West Plains Drifters|r, and |cRXP_FRIENDLY_Transients|r. Pay them for their |cRXP_LOOT_Clues|r.
.complete 26209,1 
.complete 26209,2 
.complete 26209,3 
.complete 26209,4 
.target Homeless Stormwind Citizen
.target West Plains Drifter
.target Transients
.skipgossip 42383,1 
.skipgossip 42384,1 
.skipgossip 42386,1 
.skipgossip 42391,1 
.skill riding,75,1
step
#loop
#optional
.goto 52,58.23,18.12,0
.goto 52,58.56,16.21,20,0
.goto 52,59.18,18.16,20,0
.goto 52,58.12,19.58,20,0
.goto 52,57.31,18.33,20,0
.goto 52,58.56,16.21,20,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homeless Stormwind Citizens|r, |cRXP_FRIENDLY_West Plains Drifters|r, and |cRXP_FRIENDLY_Transients|r for their |cRXP_LOOT_Clues|r.
>>|cRXP_WARN_原地踏步，与他们进行垃圾邮件交谈，如果他们变得敌对，则忽略他们|r
.complete 26209,1 
.complete 26209,2 
.complete 26209,3 
.complete 26209,4 
.target Homeless Stormwind Citizen
.target West Plains Drifter
.target Transients
.skipgossip 2
.skill riding,<75,1
step
.goto 52,60.05,19.28,5,0
.goto 52,60.18,19.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍拉提奥·莱茵中尉|r
.turnin 26209 >>交任务: |cRXP_FRIENDLY_他们把谋杀案撂我这儿了|r
.accept 26213 >>接任务: |cRXP_WARN_重要线索：河爪氏族|r
.target Lieutenant Horatio Laine
step
#optional
#completewith Horatio
.goto 52,56.46,13.26,30 >>|cRXP_WARN_[宝箱]检查营地中是否有|cRXP_PICK_宝箱|r|r
.noflyable
step
#loop
.goto 52,56.46,13.26,0
.goto 52,58.16,10.71,40,0
.goto 52,57.17,15.12,40,0
.goto 52,51.38,15.89,40,0
.goto 52,50.68,14.77,40,0
.goto 52,56.46,13.26,40,0
>>杀死|cRXP_ENEMY_Riverpaw侦察兵|r和|cRXP_ENEMY_ Riverpav Gnolls|r。掠夺他们以获得|cRXD_Loot_ RiverpawGnoll线索|r
.complete 26213,1 
.mob Riverpaw Scout
.mob Riverpaw Gnoll
step
#label Horatio
.goto 52,60.05,19.28,5,0
.goto 52,60.18,19.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍拉提奥·莱茵中尉|r
.turnin 26213 >>交任务: |cRXP_FRIENDLY_重要线索：河爪氏族|r
.target Lieutenant Horatio Laine
step
#completewith next
.hs >>Heath to Lion‘s Pride Inn
step
.goto 37,43.32,65.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威廉·匹斯特|r
.turnin 60 >>交任务: |cRXP_FRIENDLY_狗头人的蜡烛|r
.target William Pestle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷米|r, |cRXP_FRIENDLY_治安官杜汉|r
.turnin 47 >>交任务: |cRXP_FRIENDLY_金砂交易|r
.goto 37,42.14,67.25
.target +Remy "Two Times"
.turnin 62 >>交任务: |cRXP_FRIENDLY_法戈第矿洞|r
.turnin 40 >>交任务: |cRXP_FRIENDLY_鱼人的威胁|r
.accept 35 >>接任务: |cRXP_WARN_卫兵托马斯|r
.accept 76 >>接任务: |cRXP_WARN_玉石矿洞|r
.turnin 176 >>交任务: |cRXP_FRIENDLY_通缉：霍格|r
.goto 37,42.11,65.93
.target +Marshal Dughan
.isOnQuest 40
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷米|r, |cRXP_FRIENDLY_治安官杜汉|r
.turnin 47 >>交任务: |cRXP_FRIENDLY_金砂交易|r
.goto 37,42.14,67.25
.target +Remy "Two Times"
.turnin 62 >>交任务: |cRXP_FRIENDLY_法戈第矿洞|r
.accept 35 >>接任务: |cRXP_WARN_卫兵托马斯|r
.accept 76 >>接任务: |cRXP_WARN_玉石矿洞|r
.turnin 176 >>交任务: |cRXP_FRIENDLY_通缉：霍格|r
.goto 37,42.11,65.93
.target +Marshal Dughan
step
.goto 37,41.69,65.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德温·克里顿|r
.vendor >>供应商和维修
.isOnQuest 35
.target Andrew Krighton
.noflyable 
step
#optional
.goto 37,52.25,62.90,40 >>|cRXP_WARN_[稀有]检查|cRXP_ENEMY_Lamepaw the Whiper|r。如果他醒了就杀了他|r
.unitscan Lamepaw the Whimperer
.isOnQuest 35
.noflyable
step
#optional
.goto 37,57.49,64.61,45 >>|cRXP_WARN_[CHEST] Scan the murloc islands with your mouse for a|r |cRXP_PICK_Chest|r. Your mouse will become a |TInterface/cursor/crosshair/interact.blp:20|tgear icon if there's a |cRXP_PICK_Chest|r. If you find one. Loot it if it's up|r
.isOnQuest 35
.noflyable
step
#optional
.goto 37,66.51,63.83,40 >>|cRXP_WARN_[稀有]检查|cRXP_ENEMY_Tarantis|r。如果他醒了就杀了他|r
.unitscan Tarantis
.isOnQuest 35
.noflyable
step
#optional
.goto 37,64.7,56.73,30 >>|cRXP_WARN_[宝箱]检查Kobold营地内的|cRXP_PICK_宝箱|r。如果它在上面，就把它拿走|r
.isOnQuest 35
.noflyable
step
#completewith next
.goto 37,61.65,53.93,12,0
.goto 40,48.05,87.33
.subzone 54 >>进入Jasperlode矿
step
.goto 40,44.22,67.89,12,0
.goto 40,38.71,60.84,12,0
.goto 40,35.92,52.81
>>沿着Jasperlode矿内的中间路径
.complete 76,1 
step
#optional
.goto 40,31.02,37.51,20,0
.goto 40,37.01,50.26,20,0
.goto 40,47.25,36.66,20,0
.goto 40,53.93,30.58,20,0
.goto 40,45.14,21.76,20 >>|cRXP_WARN_[稀有]检查Jasperlode矿场后面的|cRXP_ENEMY_Mother Fang|r。如果她醒了就杀了她|r
.unitscan Mother Fang
.isOnQuest 35
.noflyable
step
#completewith next
.goto 37,61.58,70.04,0
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
.isOnQuest 35
.skill riding,75,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵托马斯|r, Bounty Board
.turnin 35 >>交任务: |cRXP_FRIENDLY_卫兵托马斯|r
.accept 37 >>接任务: |cRXP_WARN_失踪的卫兵|r
.accept 52 >>接任务: |cRXP_WARN_保卫边境|r
.goto 37,73.973,72.177
.target +Guard Thomas
.accept 46 >>接任务: |cRXP_WARN_悬赏鱼人|r
.accept 26152 >>接任务: |cRXP_WARN_通缉：詹姆斯·克拉克|r
.goto 37,74.025,72.310
step
#completewith next
>>杀死|cRXP_ENEMY_Prowlers |r和|cRXX_ENEMY_Gray Forest Wolves|r
>>杀死任何|cRXP_ENEMY_年轻的森林熊|r
.complete 52,1 
.mob +*Prowler
.mob +*Gray Forest Wolf
.complete 52,2 
.mob +Young Forest Bear
step
#optional
.goto 37,82.95,84.82,40 >>|cRXP_WARN_[稀有]检查|cRXP_ENEMY_Bushtail|r。如果他醒了就杀了他|r
.isOnQuest 52
.unitscan Bushtail
.noflyable
step
#completewith next
.goto 37,75.71,86.29,0
>>杀死|cRXP_ENEMY_Murloc Foragers|r和|cRXD_ENEMY_ Murloc Lurkers|r。掠夺它们的|cRXP_Loot_Torn MurlocFins|r
.complete 46,1,4 
.mob Murloc Forager
.mob Murloc Lurker
step
.goto 37,75.71,86.29,30,0
.goto 37,77.55,85.75
.deathskip >>在杀死|cRXP_ENEMY_Murloc Foragers|r和|cRXD_ENEMY_Mooloc Lurkers|r时，在|cRXT_FRIENDLY_Spirit Healer|r处死亡并重生
.isOnQuest 46
.skill riding,75,1
step
.goto 37,83.283,66.089
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉里克·费恩|r
.vendor 1198 >>供应商和维修
.target Rallic Finn
.isOnQuest 52
.noflyable 
step
.goto 37,79.462,68.715
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
.accept 83 >>接任务: |cRXP_WARN_红色亚麻布|r
.target Sara Timberlain
step
.goto 37,78.87,67.20,10,0
.goto 37,78.637,67.157
>>杀死里面的|cRXP_FRIENDLY_James Clark|r。抢劫他|cRXP_Loot_James Clark的头|r和|T134939:0|t|cRXX_Loot_[黄金取货时间表]|r
>>|cRXP_WARN_使用|T134939:0|t|cRXP_LOOT_[Gold Pickup Schedule]|r开始任务|r
.complete 26152,1 
.collect 1307,1,123,1 
.accept 123 >>接任务: |cRXP_LOOT_收货人|r
.mob James Clark
.use 1307
step
.goto 37,81.382,66.112
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_管理员莱琳|r
.accept 5545 >>接任务: |cRXP_WARN_木材危机|r
.target Supervisor Raelen
step
.goto 37,81.860,66.040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Patterson|r
.turnin 26152 >>交任务: |cRXP_FRIENDLY_通缉：詹姆斯·克拉克|r
.turnin 123 >>交任务: |cRXP_FRIENDLY_收货人|r
.accept 147 >>接任务: |cRXP_WARN_猎杀收货人|r
.target Marshal Patterson
step
#completewith StoneCairn
.goto 37,81.72,58.57,0
.goto 37,77.99,60.59,0
.goto 37,71.58,60.84,0
.goto 37,74.75,67.13,0
.goto 37,87.15,64.63,0
>>杀死|cRXP_ENEMY_Prowlers |r和|cRXX_ENEMY_Gray Forest Wolves|r
>>杀死任何|cRXP_ENEMY_年轻的森林熊|r
.complete 52,1 
.mob +*Prowler
.mob +*Gray Forest Wolf
.complete 52,2 
.mob +Young Forest Bear
step
#completewith MurlocFins
.goto 37,80.88,53.78,0
.goto 37,80.63,62.25,0
.goto 37,82.79,60.12,0
>>在树旁的地上掠夺|cRXP_Loot_r捆木
.complete 5545,1 
step
#label LostGuards
.goto 37,72.653,60.323
>>点击|cRXP_PICK_地上吃了一半的身体|r
.turnin 37 >>交任务: |cRXP_FRIENDLY_失踪的卫兵|r
.accept 45 >>接任务: |cRXP_WARN_罗尔夫的下落|r
step
#label StoneCairn
.goto 37,79.795,55.510
.subzone 86 >>前往Stone Cairn湖
.isOnQuest 45
step
#sticky
#label MurlocFins
#loop
.goto 37,78.837,55.770,0
.waypoint 37,80.004,53.783,40,0
.waypoint 37,79.222,54.041,40,0
.waypoint 37,78.554,55.834,40,0
.waypoint 37,77.474,57.257,40,0
.waypoint 37,77.991,58.108,40,0
.waypoint 37,79.370,57.016,40,0
>>杀死|cRXP_ENEMY_Murloc Foragers|r和|cRXD_ENEMY_ Murloc Lurkers|r。掠夺它们的|cRXP_Loot_Torn MurlocFins|r
>>|cRXP_WARN_小心，因为|cRXP_ENEMY_Murloc Foragers|r会施放|r|T135915:0|t[喝小药水]|cRXP-WARN_它能治愈61-68的生命值|r
.complete 46,1 
.mob Murloc Forager
.mob Murloc Lurker
step
.goto 37,79.795,55.510
>>点击地面上的|cRXP_PICK_Rolf尸体|r
.turnin 45 >>交任务: |cRXP_FRIENDLY_罗尔夫的下落|r
.accept 71 >>接任务: |cRXP_WARN_回复托马斯|r
step
#sticky
#label PTFrontier
#requires MurlocFins
#loop
.goto 37,81.72,58.57,0
.goto 37,77.99,60.59,0
.goto 37,71.58,60.84,0
.goto 37,74.75,67.13,0
.goto 37,87.15,64.63,0
.waypoint 37,81.72,58.57,60,0
.waypoint 37,77.99,60.59,60,0
.waypoint 37,71.58,60.84,60,0
.waypoint 37,74.75,67.13,60,0
.waypoint 37,87.15,64.63,60,0
>>杀死|cRXP_ENEMY_Prowlers |r和|cRXX_ENEMY_Gray Forest Wolves|r
>>杀死任何|cRXP_ENEMY_年轻的森林熊|r
.complete 52,1 
.mob +*Prowler
.mob +*Gray Forest Wolf
.complete 52,2 
.mob +Young Forest Bear
step
#loop
#requires MurlocFins
.goto 37,80.88,53.78,0
.goto 37,80.63,62.25,0
.goto 37,82.79,60.12,0
.goto 37,80.88,53.78,20,0
.goto 37,80.48,55.18,20,0
.goto 37,79.79,56.71,20,0 
.goto 37,79.04,59.56,20,0
.goto 37,77.30,59.56,20,0 
.goto 37,77.18,60.65,20,0 
.goto 37,76.75,61.76,20,0
.goto 37,77.13,63.00,20,0
.goto 37,78.38,62.35,20,0
.goto 37,79.30,63.34,20,0
.goto 37,80.24,61.47,20,0
.goto 37,80.63,62.25,20,0
.goto 37,81.57,62.64,20,0
.goto 37,81.27,61.59,20,0
.goto 37,82.00,61.01,20,0
.goto 37,83.27,61.12,20,0
.goto 37,84.20,61.55,20,0
.goto 37,83.85,60.48,20,0
.goto 37,82.79,60.12,20,0
>>在树旁的地上掠夺|cRXP_Loot_r捆木
.complete 5545,1 
step << skip
#requires MurlocFins
#completewith next
.goto 37,77.65,57.70
>>|cRXP_WARN_如果你的健康状况不差，就跳过这个|r
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
.goto 37,73.973,72.177
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵托马斯|r
.turnin 46 >>交任务: |cRXP_FRIENDLY_悬赏鱼人|r
.turnin 52 >>交任务: |cRXP_FRIENDLY_保卫边境|r
.turnin 71 >>交任务: |cRXP_FRIENDLY_回复托马斯|r
.accept 59 >>接任务: |cRXP_WARN_布甲和皮甲|r
.target Guard Thomas
step
#completewith Morgan
.goto 37,68.56,82.68,0
.goto 37,67.63,78.01,0
.goto 37,68.23,76.33,0
.goto 37,71.31,76.93,0
.goto 37,71.81,78.51,0
>>杀死|cRXP_ENEMY_Bandits |r、内部的|cRXP_ENEMY_Erlan Drudgemoor|r和内部的|cRXP_ENEMY_Surena Caledon|r。掠夺他们的|cRXP_Loot_LLinen废料|r
.complete 83,1 
.mob Bandit
.mob Erlan Drudgemoor
.mob Surena Caledon
step
#optional
#label Morgan
.goto 37,71.02,80.67
>>杀死里面的收集器|r。抢劫他|cRXP_Loot_收藏者戒指|r和|cRXX_Loot_亚麻废料|r
>>|cRXP_WARN_[宝箱]检查房子内外的|cRXP_PICK_宝箱|r。如果它在上面，就把它拿走|r
.complete 147,1 
.complete 83,1 
.disablecheckbox
.mob Morgan the Collector
.itemcount 1019,<6
.isOnQuest 83
step
.goto 37,71.02,80.67
>>杀死里面的收集器|r。掠夺他|cRXP_Loot_收藏者戒指|r
>>|cRXP_WARN_[宝箱]检查房子内外的|cRXP_PICK_宝箱|r。如果它在上面，就把它拿走|r
.complete 147,1 
.mob Morgan the Collector
step
#optional
#sticky
#label Snoot
.goto 37,69.32,79.31,30 >>|cRXP_WARN_[稀有]检查|cRXP_ENEMY_Snoot the Rooter|r。如果他醒了就杀了他|r
.unitscan Snoot the Rooter
.isOnQuest 83
.noflyable
step
#loop
.goto 37,68.56,82.68,0
.goto 37,67.63,78.01,0
.goto 37,68.23,76.33,0
.goto 37,71.31,76.93,0
.goto 37,71.81,78.51,0
.goto 37,70.62,80.73,50,0
.goto 37,68.56,82.68,50,0
.goto 37,67.83,80.86,50,0
.goto 37,67.63,78.01,50,0
.goto 37,68.55,77.39,50,0
.goto 37,68.23,76.33,50,0
.goto 37,70.97,77.21,10,0
.goto 37,71.31,76.93,10,0
.goto 37,70.84,78.22,50,0
.goto 37,71.81,78.51,50,0
>>杀死|cRXP_ENEMY_Bandits|r。掠夺他们的|cRXX_Loot_Linen废料|r
>>|cRXP_WARN_[宝箱]检查谷仓内和周围的|cRXP_PICK_宝箱|r。如果它在上面，就把它拿走|r
.complete 83,1 
.mob Bandit
step
#completewith next
#requires Snoot
.goto 37,75.71,86.29,30,0
.goto 37,77.55,85.75,-1
.goto 37,83.68,69.74,-1
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
.isOnQuest 83
.skill riding,75
step
#requires Snoot
.goto 37,83.283,66.089
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉里克·费恩|r
.vendor 1198 >>供应商和维修
.target Rallic Finn
.isOnQuest 83
.noflyable 
step << !DarkIronDwarf !KulTiran !LightforgedDraenei !Mechagnome !VoidElf
.goto 37,81.829,66.556
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迅翼高斯|r
.fp Eastvale Logging Camp >>获取Eastvale伐木营地的飞行路线
.target Goss the Swift
step
.goto 37,81.860,66.040
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Patterson|r
.turnin 147 >>交任务: |cRXP_FRIENDLY_猎杀收货人|r
.target Marshal Patterson
step
.goto 37,81.382,66.112
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_管理员莱琳|r
.turnin 5545 >>交任务: |cRXP_FRIENDLY_木材危机|r
.target Supervisor Raelen
step
.goto 37,79.462,68.715
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
.turnin 83 >>交任务: |cRXP_FRIENDLY_红色亚麻布|r
.turnin 59 >>交任务: |cRXP_FRIENDLY_布甲和皮甲|r
.target Sara Timberlain
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Alliance 10-60
#name 2A_Redridge Mountains
#displayname Chapter 2 - Redridge Mountains
#next 3A_Duskwood
#fresh 30
#veteran
<< Alliance
step
#completewith next
.zone 49 >>前往: |cRXP_PICK_赤脊山|r
.isQuestAvailable 26504
step
.goto 49,16.03,64.63
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Wanted Poster.|r
.accept 26504 >>接任务: |cRXP_WARN_通缉：赤脊山豺狼人|r
step
.goto 49,15.622,65.327
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达希·帕克|r
.accept 26506 >>接任务: |cRXP_WARN_茄汁黄豆|r
.target Darcy Parker
step
.goto 49,15.309,64.691
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵队长帕克|r
.accept 26503 >>接任务: |cRXP_WARN_继续评估威胁|r
.target Watch Captain Parker
step
#loop
.goto 49,13.543,66.732,50,0
.goto 49,12.566,69.384,50,0
.goto 49,14.471,75.116,50,0
.goto 49,15.220,73.203,50,0
>>杀死|cRXP_ENEMY_Tarantula |r。掠夺它们的|cRXD_Loot_Tarantula Eyes |r
.complete 26506,1 
.mob Tarantula
step
#completewith Martie
.goto 49,16.461,54.587,0
.goto 49,20.199,58.665,0
.goto 49,20.881,65.321,0
.goto 49,20.123,66.613,0
.goto 49,16.993,63.436,0
.goto 49,13.697,68.732,0
.goto 49,13.265,62.483,0
.goto 49,27.403,59.815,0
.goto 49,29.142,56.606,0
.goto 49,32.433,54.249,0
.goto 49,33.624,57.701,0
.goto 49,35.378,64.225,0
.goto 49,32.309,63.674,0
.goto 49,29.952,64.571,0
>>杀死|cRXP_ENEMY_Dire秃鹰|r在上空飞行或坐在栖息处。掠夺他们的|cRXP_Loot_Condor Giblets|r
>>杀死|cRXP_ENEMY_Great Goretusks|r。掠夺他们的|cRXP-Loot_Goretusk Kidneys|r
.complete 26506,2 
.unitscan +Dire Condor
.complete 26506,3 
.mob +Great Goretusk
step
#completewith next
.goto 49,28.028,74.887,0
.goto 49,30.563,62.710,0
.goto 49,25.600,57.889,0
.goto 49,16.203,55.263,0
>>杀死|cRXP_ENEMY_Redridge Thrasher|r、|cRXD_ENEMY_Redridge Mongrels|r和|cRXP_ENEMY_Redridge Brutes|r
.complete 26504,1 
.mob *Redridge Thrasher
.mob *Redridge Mongrel
.mob *Redridge Brute
step
.goto 49,16.203,55.263
>>在地面上掠夺|cRXP_PICK_Gnoll作战计划|r
.complete 26503,1 
step
#label Martie
.goto 49,22.043,42.696
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
.accept 26509 >>接任务: |cRXP_WARN_不速之客|r
.target Martie Jainrose
step
.goto 49,16.919,45.720,0
.goto 49,17.203,44.935,15,0
.goto 49,16.919,45.720,15,0
.goto 49,17.375,45.858,15,0
.goto 49,16.919,45.720
>>杀死|cRXP_ENEMY_Bellygrub|r。为|cRXX_Loot_Bellygrub's Tusk|r掠夺她
.complete 26509,1 
.mob Bellygrub
step
.goto 49,22.043,42.696
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
.turnin 26509 >>交任务: |cRXP_FRIENDLY_不速之客|r
.target Martie Jainrose
step
#optional
#completewith next
.goto 49,26.093,42.716,10,0
.goto 49,26.138,42.315,8,0
.goto 49,26.306,42.096,8 >>Enter the Lakeshire Inn
.pve
.isOnQuest 76
step
.goto 49,26.393,41.425
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板布瑞安娜|r
.home >>将你的炉石设置为莱克郡
.target Innkeeper Brianna
.pve
.isOnQuest 76
step
#optional
#completewith next
.goto 49,28.282,41.910,8,0
.goto 49,27.972,41.567,8 >>进入莱克郡市政厅
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜里弗·科纳彻尔|r, |cRXP_FRIENDLY_所罗门镇长|r
.accept 26511 >>接任务: |cRXP_WARN_打扫止水湖|r
.accept 26728 >>接任务: |cRXP_WARN_英雄的召唤：暮色森林！|r
.goto 49,28.681,40.955
.target +Bailiff Conacher
.accept 26510 >>接任务: |cRXP_WARN_必须准备万全！|r
.goto 49,28.971,41.123
.target +Magistrate Solomon
step
#optional
#completewith next
.goto 49,27.960,41.519,8,0
.goto 49,28.310,41.910,8,0
.goto 49,28.588,42.644,15 >>离开莱克郡市政厅
step
.goto 49,28.344,48.874
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖恩|r
.accept 26508 >>接任务: |cRXP_WARN_尼达的项链|r
.target Shawn
step
#loop
.goto 49,19.760,47.282,0
.goto 49,21.922,48.497,0
.goto 49,23.938,49.802,0
.goto 49,25.321,49.235,0
.goto 49,25.985,46.815,0
.goto 49,27.096,50.935,0
.goto 49,29.752,49.376,0
.goto 49,32.075,50.279,0
.goto 49,34.767,49.432,0
.goto 49,35.716,49.607,0
.goto 49,19.760,47.282,40,0
.goto 49,21.922,48.497,40,0
.goto 49,23.938,49.802,40,0
.goto 49,25.321,49.235,40,0
.goto 49,25.985,46.815,40,0
.goto 49,27.096,50.935,40,0
.goto 49,29.752,49.376,40,0
.goto 49,32.075,50.279,40,0
.goto 49,34.767,49.432,40,0
.goto 49,35.716,49.607,40,0
>>|cRXP_WARN_在水下游泳并检查产卵位置。有10个地点同时有2个产卵点|r
>>打开|cRXP_PICK_Glating Mud|r。把它偷走|cRXP_Loot_Nida的项链|r
.complete 26508,1 
.isOnQuest 26508
step
.goto 49,29.419,53.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fp Lakeshire >>获取Lakeshhire飞行路线
.target Ariena Stormfeather
step
#sticky
#label EverstillMurlocs
#loop
.goto 49,37.818,42.158,0
.goto 49,39.626,46.404,0
.goto 49,36.095,45.006,40,0
.goto 49,36.580,43.202,40,0
.goto 49,37.798,41.157,40,0
.goto 49,38.840,41.673,40,0
.goto 49,40.457,44.698,40,0
.goto 49,42.557,47.125,40,0
.goto 49,40.397,48.986,40,0
.goto 49,36.943,50.290,40,0
.goto 49,36.640,46.754,40,0
>>杀死|cRXP_ENEMY_Murloc Flesheers|r和|cRXP_ENEMY_ Murloc Scouts|r
.complete 26511,1 
.mob Murloc Flesheater
.mob Murloc Scout
step
#optional
#completewith next
.goto 49,37.742,42.179,20 >>|cRXP_WARN_[稀有]检查|cRXP_PICK_Gnomecorder|r前面的|cRXP_ENEMY_Squiddic|r。如果他醒了就杀了他|r
.unitscan Squiddic
.noflyable
step
.goto 49,37.818,42.158
>>将|cRXP_PICK_Gnomecorder|r洗劫一空
.complete 26510,1 
step
#requires EverstillMurlocs
.goto 49,28.277,48.871
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼达|r
.turnin 26508 >>交任务: |cRXP_FRIENDLY_尼达的项链|r
.isQuestComplete 26508
.target Nida
step
#optional
.abandon 26508 >>Abandon Nida's Necklace
step
#optional
#completewith next
.goto 49,28.282,41.910,8,0
.goto 49,27.972,41.567,8 >>进入莱克郡市政厅
step
#requires EverstillMurlocs
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜里弗·科纳彻尔|r, |cRXP_FRIENDLY_所罗门镇长|r
.turnin 26511 >>交任务: |cRXP_FRIENDLY_打扫止水湖|r
.goto 49,28.681,40.955
.target +Bailiff Conacher
.turnin 26510 >>交任务: |cRXP_FRIENDLY_必须准备万全！|r
.accept 26512 >>接任务: |cRXP_WARN_调试侏儒通讯器|r
.goto 49,28.971,41.123
.target +Magistrate Solomon
step
#optional
#completewith Marris
.goto 49,27.960,41.519,8,0
.goto 49,28.310,41.910,8,0
.goto 49,28.588,42.644,15 >>离开莱克郡市政厅
step
.goto 49,28.836,43.577
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡伦·泰勒|r
.vendor >>供应商和维修
.target Karen Taylor
.isOnQuest 76

step << DarkIronDwarf
#optional
#completewith RRWarmode1
.cast 265225 >>铸造|T1786409:0|t[鼹鼠机器]
.xp <20,1
.pve
.isOnQuest 76
step << DarkIronDwarf
#optional
#completewith RRWarmode1
.zone 84 >>对话: |cRXP_FRIENDLY_挖掘机|r
.skipgossip 143925,1,2
.xp <20,1
.pve
.isOnQuest 76

step << !DarkIronDwarf Monk
#optional
#completewith RRWarmode1
.zone 379 >>演员阵容|T775462:0|t[禅宗朝圣]
.xp <20,1
.pve
.isOnQuest 76
step << !DarkIronDwarf Monk
#optional
#completewith RRWarmode1
.goto 379,48.967,43.368
>>单击|cRXP_PICK_Portal to Stormfind|r
.xp <20,1
.pve
.isOnQuest 76
step << Monk
#optional
#completewith RRWarmode1
.goto 84,49.45,86.60,8,0
.goto 84,49.51,86.67,10 >>Exit the Mage Tower
.pve
.isOnQuest 76
step << !Monk !DarkIronDwarf
#optional
#completewith RRWarmode1
.goto 49,29.419,53.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Stormwind >>飞到暴风城
.target Ariena Stormfeather
.xp <20,1
.pve
.isOnQuest 76
step
#optional
#label RRWarmode1
+|cRXP_WARN_打开你的天赋（默认为N）并打开Warmode以获得经验值buff和额外天赋。
>>|cRXP_WARN_如果您不想打开Warmode，请跳过此步骤。|r
.pve
.xp <20,1
step
#optional
#completewith JasperlodeEnd1
.goto 84,70.938,72.472
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Goldshire >>Fly to Goldshire
.target Dungar Longdrink
.zoneskip 84,1
.xp <20,1
step
#optional
#completewith JasperlodeEnd1
.goto 49,29.419,53.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Goldshire >>Fly to Goldshire
.target Ariena Stormfeather
.zoneskip 49,1
.xp <20,1
step
#optional
#label JasperlodeEnd1
.goto 37,42.105,65.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
.turnin 76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
.target Marshal Dughan
.xp <20,1
step
#optional
#completewith Marris
.goto 37,41.715,64.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇敢的巴特利|r
.fly Lakeshire >>飞往莱克郡
.target Bartlett the Brave
.zoneskip 49
.xp <20,1
.cooldown item,6948,<0

step
#optional
#completewith Marris
.hs >>赫斯到莱克郡
.zoneskip 49
.xp <20,1
.cooldown item,6948,>0,1

step
#label Marris
.goto 49,31.856,44.894
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官马瑞斯|r
.accept 26513 >>接任务: |cRXP_WARN_无影无踪|r
.target Marshal Marris
step
.goto 49,32.330,39.544
>>进入莱克郡墓地
.complete 26512,1 
.turnin 26512 >>交任务: |cRXP_FRIENDLY_调试侏儒通讯器|r
.accept 26514 >>接任务: |cRXP_WARN_峡谷嬉戏|r
step
#sticky
#label DirtScroll
.goto 49,36.305,30.502,0
.goto 49,32.496,24.909,0
.goto 49,30.051,28.018,0
.goto 49,27.453,27.292,0
.goto 49,27.470,34.077,0
.goto 49,21.637,34.274,0
.goto 49,23.390,26.005,0
.waypoint 49,36.305,30.502,50,0
.waypoint 49,32.496,24.909,50,0
.waypoint 49,30.051,28.018,50,0
.waypoint 49,27.453,27.292,50,0
.waypoint 49,27.470,34.077,50,0
.waypoint 49,21.637,34.274,50,0
.waypoint 49,23.390,26.005,50,0
>>杀死|cRXP_ENEMY_Redridge Gnolls|r。为|T134944:0|t|cRXP-Loot_[脏卷轴]|r掠夺它们
>>|cRXP_WARN_使用|T134944:0|t|cRXP_LOOT_[脏卷轴]|r开始任务|r
.collect 58898,1,26519,1 
.accept 26519 >>接任务: |cRXP_WARN_只要控制了双头魔|r
.mob Redridge Drudger
.mob Redridge Mystic
.mob Redridge Basher
.mob Redridge Alpha
.mob Redridge Brute
.use 58898
step
#loop
.goto 49,36.305,30.502,0
.goto 49,32.496,24.909,0
.goto 49,30.051,28.018,0
.goto 49,27.453,27.292,0
.goto 49,27.470,34.077,0
.goto 49,21.637,34.274,0
.goto 49,23.390,26.005,0
.goto 49,36.305,30.502,50,0
.goto 49,32.496,24.909,50,0
.goto 49,30.051,28.018,50,0
.goto 49,27.453,27.292,50,0
.goto 49,27.470,34.077,50,0
.goto 49,21.637,34.274,50,0
.goto 49,23.390,26.005,50,0
>>在地面上掠夺|cRXP_Loot_Redridge补给箱|r
>>杀死|cRXP_ENEMY_Redridge Drudger|r，|cRXD_ENEMY_ Redridge Mystics|r，| cRXP__ENEMY_Redbridge Bashers|r、|cRXT_ENEMY_Redridge Alphas|r和|cRXP_ENEMY_Redridge Brutes|r。掠夺他们的|cRXP_Loot_Redridge Gnoll项圈|r
>>|cRXP_WARN_避免拉动在该区域巡逻的|cRXP_ENEMY_Canyon Ettins|r|r
.complete 26513,1 
.disablecheckbox
.complete 26514,1 
.mob Redridge Drudger
.mob Redridge Mystic
.mob Redridge Basher
.mob Redridge Alpha
.mob Redridge Brute
.unitscan Canyon Ettin
step
.goto 49,20.431,26.655
>>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
.turnin 26514 >>交任务: |cRXP_FRIENDLY_峡谷嬉戏|r
.accept 26544 >>接任务: |cRXP_WARN_他们变聪明了……|r
step
#optional
#completewith next
.goto 49,36.305,30.502,0
.goto 49,32.496,24.909,0
.goto 49,30.051,28.018,0
.goto 49,27.453,27.292,0
.goto 49,27.470,34.077,0
.goto 49,21.637,34.274,0
.goto 49,23.390,26.005,0
>>在地面上掠夺|cRXP_Loot_Redridge补给箱|r
>>|cRXP_WARN_避免拉动在该区域巡逻的|cRXP_ENEMY_Canyon Ettins|r|r
.complete 26513,1 
.unitscan Canyon Ettin
step
#completewith Ardo
#requires DirtScroll
.goto 49,20.431,26.655
.subzone 98 >>进入Rethban洞穴
.isOnQuest 26544
step
#sticky
#requires DirtScroll
#label Missive1
#loop
.goto 49,20.337,15.044,0
.goto 49,22.424,17.323,0
.goto 49,22.425,21.890,0
.goto 49,21.588,23.647,0
.goto 49,19.525,24.078,0
.goto 49,20.141,21.509,0
.goto 49,16.783,19.487,0
.waypoint 49,20.337,15.044,20,0
.waypoint 49,22.424,17.323,20,0
.waypoint 49,22.425,21.890,20,0
.waypoint 49,21.588,23.647,20,0
.waypoint 49,19.525,24.078,20,0
.waypoint 49,20.141,21.509,20,0
.waypoint 49,16.783,19.487,20,0
>>杀死雷思班洞穴内的|cRXP_ENEMY_Blackrock监督|r。为|cRXP_Loot_Blackrock兽人导弹掠夺它们|r
.complete 26544,1 
.mob *Blackrock Overseer
step
#sticky
#label Missive2
#requires Missive1
>>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
.turnin 26544 >>交任务: |cRXP_FRIENDLY_他们变聪明了……|r
.accept 26545 >>接任务: |cRXP_WARN_犹勒必须死！|r
step
#optional
#completewith next
#requires DirtScroll
.goto 49,19.502,24.380,20,0
.goto 49,18.121,22.037,20,0
.goto 49,17.650,17.871,20,0
.goto 49,19.884,17.025,15 >>前往Rethban洞穴内的|cRXP_ENEMY_Ardo Dirtpaw|r
step
#requires DirtScroll
#label Ardo
.goto 49,18.432,18.172
>>杀死|cRXP_ENEMY_Ardo Dirtpaw|r。单击他旁边的|cRX_PICK_Ettin控制Orb|r
>>|cRXP_WARN_[宝箱]检查他旁边的|cRXP_PICK_宝箱|r。如果它在上面，就把它拿走|r
.complete 26519,1 
.goto 49,18.432,18.172
.mob +Ardo Dirtpaw
.turnin 26519 >>交任务: |cRXP_FRIENDLY_只要控制了双头魔|r
.accept 26520 >>接任务: |cRXP_WARN_拯救工头奥斯洛|r
.goto 49,17.841,18.618
step
#requires Missive1
.goto 49,20.431,26.655,25,0
.goto 49,21.318,27.426,40 >>退出Rethban洞穴
.isOnQuest 26520
.zoneskip 49,1 
step
#sticky
#label SupplyCrates
#loop
.goto 49,36.305,30.502,0
.goto 49,32.496,24.909,0
.goto 49,30.051,28.018,0
.goto 49,27.453,27.292,0
.goto 49,27.470,34.077,0
.goto 49,21.637,34.274,0
.goto 49,23.390,26.005,0
.waypoint 49,36.305,30.502,50,0
.waypoint 49,32.496,24.909,50,0
.waypoint 49,30.051,28.018,50,0
.waypoint 49,27.453,27.292,50,0
.waypoint 49,27.470,34.077,50,0
.waypoint 49,21.637,34.274,50,0
.waypoint 49,23.390,26.005,50,0
>>在地面上掠夺|cRXP_Loot_Redridge补给箱|r
>>|cRXP_WARN_避免拉动在该区域巡逻的|cRXP_ENEMY_Canyon Ettins|r|r
.complete 26513,1 
.unitscan Canyon Ettin
step
#requires Missive2
.goto 49,26.870,21.977
>>杀死|cRXP_ENEMY_Yowler|r。为|cRXX_Loot_Blackrock入侵计划而掠夺他|r
.complete 26545,1 
.complete 26545,2 
.mob Yowler
step
#completewith next
#requires SupplyCrates
#loop
.goto 49,23.859,29.302,0
.goto 49,22.766,34.745,0
.goto 49,24.022,35.828,0
.goto 49,28.492,36.235,0
.goto 49,27.799,30.853,0
.line 49,23.859,29.302,23.973,30.595,23.762,32.089,22.766,34.745,23.014,35.134,23.619,34.381,24.022,35.828,25.529,35.789,26.902,36.339,28.492,36.235,28.357,34.410,27.054,32.432,27.799,30.853,27.502,28.865,26.595,28.355,25.013,28.408
.goto 49,23.859,29.302,50,0
.goto 49,23.973,30.595,50,0
.goto 49,23.762,32.089,50,0
.goto 49,22.766,34.745,50,0
.goto 49,23.014,35.134,50,0
.goto 49,23.619,34.381,50,0
.goto 49,24.022,35.828,50,0
.goto 49,25.529,35.789,50,0
.goto 49,26.902,36.339,50,0
.goto 49,28.492,36.235,50,0
.goto 49,28.357,34.410,50,0
.goto 49,27.054,32.432,50,0
.goto 49,27.799,30.853,50,0
.goto 49,27.502,28.865,50,0
.goto 49,26.595,28.355,50,0
.goto 49,25.013,28.408,50,0
.cast 80704 >>站着不动时，在|cRXP_ENEMY_Canyon Ettin|r上使用|T332402:0|t[Ettin Control Orb]
.use 58895
.unitscan Canyon Ettin
.isOnQuest 26520
step
#requires SupplyCrates
.goto 49,31.480,44.344
>>前往|cRXP_FRIENDLY_Foreman Oslow|r。使用他旁边的|T332402:0|t[Ettin Control Orb]，同时控制|cRXP_FRIENDLY_Subdued Canyon Ettin|r
.complete 26520,1 
.use 58895
step
.goto 49,31.856,44.894
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官马瑞斯|r
.turnin 26513 >>交任务: |cRXP_FRIENDLY_无影无踪|r
.target Marshal Marris
step
#completewith next
.goto 49,28.836,43.577
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡伦·泰勒|r
.vendor >>供应商和维修
.target Karen Taylor
step
#optional
#completewith next
.goto 49,28.282,41.910,8,0
.goto 49,27.972,41.567,8 >>进入莱克郡市政厅
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_所罗门镇长|r, |cRXP_FRIENDLY_托德曼上校|r
.turnin 26520 >>交任务: |cRXP_FRIENDLY_拯救工头奥斯洛|r
.turnin 26545 >>交任务: |cRXP_FRIENDLY_犹勒必须死！|r
.goto 49,28.971,41.123
.target +Magistrate Solomon
.accept 26567 >>接任务: |cRXP_WARN_约翰·J·基沙恩|r
.goto 49,28.659,40.744,5,0
.goto 49,28.892,40.894,5,0
.goto 49,28.659,40.744
.target +Colonel Troteman
step
#optional
#completewith next
.goto 49,27.960,41.519,8,0
.goto 49,28.310,41.910,8,0
.goto 49,28.588,42.644,15 >>离开莱克郡市政厅
step
#optional
#completewith KeeshanStart
.goto 49,26.093,42.716,10,0
.goto 49,26.138,42.315,8,0
.goto 49,26.306,42.096,8 >>Enter the Lakeshire Inn
step
.goto 49,26.393,41.425
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板布瑞安娜|r
.home >>将你的炉石设置为莱克郡
.target Innkeeper Brianna
.isQuestAvailable 76
step
#optional
#completewith next
.goto 49,26.253,40.514,8,0
.goto 49,25.945,39.756,6 >>进入密室，然后朝着|cRXP_FRIENDLY_John J.Keeshan|r下楼
step
#label KeeshanStart
.goto 49,26.297,40.131
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
.turnin 26567 >>交任务: |cRXP_FRIENDLY_约翰·J·基沙恩|r
.accept 26568 >>接任务: |cRXP_WARN_和我无关|r
.target John J. Keeshan
step
#optional
#completewith next
.goto 49,25.945,39.756,8,0
.goto 49,26.253,40.514,8,0
.goto 49,26.306,42.096,8,0
.goto 49,26.138,42.315,8,0
.goto 49,26.093,42.716,10 >>Exit the Lakeshire Inn
step
#optional
#completewith next
.goto 49,28.282,41.910,8,0
.goto 49,27.972,41.567,8 >>进入莱克郡市政厅
step
.goto 49,28.659,40.744
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德曼上校|r, 他在里面
.turnin 26568 >>交任务: |cRXP_FRIENDLY_和我无关|r
.accept 26571 >>接任务: |cRXP_WARN_战争的武器|r
.accept 26586 >>接任务: |cRXP_WARN_寻找B连|r
.target Colonel Troteman
step
#optional
#completewith next
.goto 49,27.960,41.519,8,0
.goto 49,28.310,41.910,8,0
.goto 49,28.588,42.644,15 >>离开莱克郡市政厅
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r, |cRXP_FRIENDLY_治安官马瑞斯|r
.accept 26569 >>接任务: |cRXP_WARN_测量设备|r
.goto 49,29.652,44.548
.target +Foreman Oslow
.accept 26570 >>接任务: |cRXP_WARN_撕裂者大军|r
.goto 49,29.731,44.519
.target +Marshal Marris
step
#optional
.goto 49,37.932,34.200,50 >>|cRXP_WARN_[稀有]检查|cRXP_ENEMY_Chatter|r。如果他醒了就杀了他|r
.unitscan Chatter
.isOnQuest 26570
.noflyable
step
#completewith Render
.goto 49,44.299,30.816,0
.goto 49,41.458,35.639,0
.goto 49,44.548,35.896,0
.goto 49,47.950,33.981,0
.goto 49,47.671,40.994,0
.goto 49,51.823,42.459,0
.goto 49,53.901,37.198,0
>>杀死|cRXP_ENEMY_Blackrock叛徒|r和|cRXX_ENEMY_ Blackrock童子军|r
.complete 26570,1 
.mob Blackrock Scout
.mob Blackrock Renegade
step
#completewith next
.goto 49,41.173,36.033,0
.goto 49,43.955,34.962,0
.goto 49,45.024,31.802,0
.goto 49,41.037,32.557,0
>>杀死|cRXP_ENEMY_Dire秃鹰|r在上空飞行。掠夺他们的|cRXP_Loot_Condor Giblets|r
.complete 26506,2 
.mob Dire Condor
step
.goto 49,47.529,41.955
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅森纳|r
.turnin 26586 >>交任务: |cRXP_FRIENDLY_寻找B连|r
.accept 26587 >>接任务: |cRXP_WARN_越狱不容易|r
.target Messner
step
>>杀死|cRXP_ENEMY_Murdunk|r和|cRXP_ENEMY_Homurk|r。掠夺它们以获得|cRXD_Loot_Keeshan的弓|r和| cRXP_Loot_Kishan的生存刀|r
.complete 26571,2 
.goto 49,51.525,41.398
.mob +Homurk
.complete 26571,1 
.goto 49,51.681,41.330
.mob +Murdunk
step
#sticky
#label Heart
>>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
.turnin 26571 >>交任务: |cRXP_FRIENDLY_战争的武器|r
.accept 26573 >>接任务: |cRXP_WARN_他的心必须在|r
step
.goto 49,49.234,38.005
>>打开树桩中的|cRXP_PICK_Blackrock钥匙袋|r。偷走|cRXP_Loot_Messner的笼子钥匙|r
>>|cRXP_WARN_避开|cRXP_ENEMY_Blackrock战虫队长|r和|cRXX_ENEMY_ Blackrock战斗虫|r|r
.complete 26587,1 
.unitscan Blackrock Worg Captain
.mob Blackrock Battle Worg
step
#requires Heart
.goto 49,47.529,41.955
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅森纳|r
.turnin 26587 >>交任务: |cRXP_FRIENDLY_越狱不容易|r
.timer 3,Messner RP
.accept 26560 >>接任务: |cRXP_WARN_约根森|r
.target Messner
step
#loop
.goto 49,41.173,36.033,0
.goto 49,43.955,34.962,0
.goto 49,45.024,31.802,0
.goto 49,41.037,32.557,0
.goto 49,41.173,36.033,50,0
.goto 49,43.955,34.962,50,0
.goto 49,45.024,31.802,50,0
.goto 49,41.037,32.557,50,0
>>杀死|cRXP_ENEMY_Dire秃鹰|r在上空飞行。掠夺他们的|cRXP_Loot_Condor Giblets|r
.complete 26506,2 
.target Dire Condor
step
#completewith Utroka
.goto 49,43.021,11.211,0
.goto 49,43.264,15.478,0
.goto 49,39.373,18.359,0
.goto 49,42.471,22.338,0
.goto 49,45.114,27.577,0
>>杀死|cRXP_ENEMY_Great Goretusks|r。掠夺他们的|cRXP-Loot_Goretusk Kidneys|r
.complete 26506,3 
.mob Great Goretusk
step
#optional
#label Render
.goto 49,43.143,23.741,60 >>前往Render营地的郊区
.isOnQuest 26560
.noflyable 
step
#completewith Danforth
#label Spyglass1
.goto 49,42.789,21.487,0
.goto 49,43.357,17.991,0
.goto 49,42.034,14.041,0
.goto 49,36.291,15.982,0
.goto 49,32.625,10.192,0
>>杀死|cRXP_ENEMY_Blackrock召唤师|r和|cRXD_ENEMY_Blackrock追踪者|r。掠夺|cRXP_ENEMY_ Blackrock追踪器|r的|cRXP_Loot_Black间谍眼镜|r
.complete 26570,1 
.complete 26569,1 
.mob Blackrock Tracker
.mob Blackrock Summoner
.itemcount 58952,<5 
step
#optional
#completewith Danforth
#requires Spyglass1
.goto 49,42.789,21.487,0
.goto 49,43.357,17.991,0
.goto 49,42.034,14.041,0
.goto 49,36.291,15.982,0
.goto 49,32.625,10.192,0
>>杀死|cRXP_ENEMY_Blackrock召唤师|r和|cRXX_ENEMY_Blackrock追踪者|r
.complete 26570,1 
.mob Blackrock Tracker
.mob Blackrock Summoner
.itemcount 58952,5 
step
#label Utroka
.goto 49,43.546,10.819
>>杀死女钥匙|cRXP_ENEMY_Utroka |r。偷走她|cRXX_Loot_Jorgensen的笼钥匙|r
.complete 26560,1 
.mob Utroka the Keymistress
step
#optional
#loop
.goto 49,43.021,11.211,0
.goto 49,43.264,15.478,0
.goto 49,39.373,18.359,0
.goto 49,42.471,22.338,0
.goto 49,45.114,27.577,0
.waypoint 49,43.021,11.211,55,0
.waypoint 49,43.264,15.478,55,0
.waypoint 49,39.373,18.359,55,0
.waypoint 49,42.471,22.338,55,0
.waypoint 49,45.114,27.577,55,0
>>杀死|cRXP_ENEMY_Great Goretusks|r。掠夺他们的|cRXP-Loot_Goretusk Kidneys|r
.complete 26506,3 
.mob Great Goretusk
step
#optional
#completewith next
.goto 49,36.022,15.133,40,0
.goto 49,35.846,14.524,40,0
.goto 49,33.538,11.867,15 >>前往|cRXP_FRIENDLY_Jorgensen|r
.noflyable 
step
#optional
.goto 49,33.538,11.867
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约根森|r
>>|cRXP_WARN_[RARRE&CHEST]留意帐篷前的|cRXP_PICK_宝箱|r和|cRXP-ENEMY_Kazon|r。如果他醒了就杀了他|r
.turnin 26560 >>交任务: |cRXP_FRIENDLY_约根森|r
.timer 3,Jorgensen RP
.accept 26561 >>接任务: |cRXP_WARN_卡拉克尔|r
.target Jorgensen
.unitscan Kazon
step
#completewith BlackrockC
#label RendersRock
.goto 49,30.861,9.190,20 >>Enter Render's Rock
.isOnQuest 265261
step
#sticky
#label Tarak
#requires RendersRock
.goto 49,26.057,10.450,0,0
>>杀死|cRXP_ENEMY_Ritualist Tarak|r内部
>>|cRXP_WARN_[宝箱]留意他附近的|cRXP_PICK_宝箱|r|r
.complete 26561,1 
.mob +Ritualist Tarak
step
#optional
#completewith BlackrockC
#requires RendersRock
.goto 49,30.050,9.353
.goto 49,29.150,10.594
.goto 49,26.586,10.530,15 >>前往|cRXP_PICK_Blackrock Coffer|r内部
step
#label BlackrockC
.goto 49,26.586,10.530
>>打开里面地面上的|cRXP_PICK_Blackrock咖啡壶。为|cRXP_Loot_Keeshan的红头带|r和|cRXX_Loot_Keeshan的玉符|r抢劫
.complete 26573,1 
.complete 26573,2 
step
#requires Tarak
.goto 49,25.906,10.487
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡拉克尔|r
.turnin 26561 >>交任务: |cRXP_FRIENDLY_卡拉克尔|r
.timer 3,Krakauer RP
.accept 26562 >>接任务: |cRXP_WARN_最后但同样重要的……丹弗斯|r
.target Krakauer
step
#optional
#completewith next
.goto 49,26.615,13.314,15,0
.goto 49,25.552,14.772,15,0
.goto 49,25.856,16.403,15,0
.goto 49,27.634,18.155,15 >Travel toward |cRXP_ENEMY_Overlord Barbarius|r inside
step
.goto 49,27.634,18.155
>>杀死里面的|cRXP_ENEMY_霸王巴巴里乌斯|r。抢走他|cRXP_Loot_Blackrock杠杆钥匙|r
>>|cRXP_WARN_当你跳下去时，确保你的守护者传送下来|r
.complete 26562,1 
.complete 26562,2 
.mob Overlord Barbarius
step
#completewith next
.goto 49,27.765,17.943
.cast 80887 >>|cRXP_WARN_单击内部地面上的|cRXP_PICK_Chain Lever|r|r
.isOnQuest 26562
step
#label Danforth
.goto 49,28.326,17.012
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹弗斯|r
.turnin 26562 >>交任务: |cRXP_FRIENDLY_最后但同样重要的……丹弗斯|r
.timer 3,Danforth RP
.accept 26563 >>接任务: |cRXP_WARN_B连归来|r
.target Danforth

step
#optional
#completewith next
.goto 49,30.100,15.657,15,0
.goto 49,30.004,12.928,15,0
.goto 49,29.820,10.349,15,0
.goto 49,30.372,9.117,15,0
.goto 49,31.635,9.630,30 >>Exit Render's Rock
step
#optional
#loop
.goto 49,42.789,21.487,0
.goto 49,43.357,17.991,0
.goto 49,42.034,14.041,0
.goto 49,36.291,15.982,0
.goto 49,32.625,10.192,0
.goto 49,45.155,23.968,55,0
.goto 49,42.789,21.487,55,0
.goto 49,41.185,20.004,55,0
.goto 49,41.167,17.881,55,0
.goto 49,43.357,17.991,55,0
.goto 49,44.269,13.930,55,0
.goto 49,41.899,12.146,55,0
.goto 49,42.034,14.041,55,0
.goto 49,40.282,16.319,55,0
.goto 49,38.889,17.678,55,0
.goto 49,36.291,15.982,55,0
.goto 49,34.239,13.808,55,0
.goto 49,34.298,11.938,55,0
.goto 49,32.625,10.192,55,0
>>杀死|cRXP_ENEMY_Blackrock召唤师|r和|cRXD_ENEMY_Blackrock追踪者|r。掠夺|cRXP_ENEMY_ Blackrock追踪器|r的|cRXP_Loot_Black间谍眼镜|r
.complete 26570,1 
.complete 26569,1 
.mob Blackrock Tracker
.mob Blackrock Summoner
step
#completewith next
.hs >>赫斯到莱克郡
step
.goto 49,26.456,42.038
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_金伯利·海特|r
.vendor >>供应商和维修
.target Kimberly Hiett
.isOnQuest 26573
step
#optional
#completewith next
.goto 49,28.282,41.910,8,0
.goto 49,27.972,41.567,8 >>进入莱克郡市政厅
step
.goto 49,28.659,40.744
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德曼上校|r
.turnin 26563 >>交任务: |cRXP_FRIENDLY_B连归来|r
.turnin 26573 >>交任务: |cRXP_FRIENDLY_他的心必须在|r
.accept 26607 >>接任务: |cRXP_WARN_他们流下第一滴血|r
.target Colonel Troteman
step
#optional
#completewith next
.goto 49,27.960,41.519,8,0
.goto 49,28.310,41.910,8,0
.goto 49,28.588,42.644,15 >>离开莱克郡市政厅
step
#optional
#completewith Keeshan2
.goto 49,26.093,42.716,10,0
.goto 49,26.138,42.315,8,0
.goto 49,26.306,42.096,8 >>Enter the Lakeshire Inn
step
#optional
#completewith next
.goto 49,26.253,40.514,8,0
.goto 49,25.945,39.756,6 >>进入密室，然后朝着|cRXP_FRIENDLY_John J.Keeshan|r下楼
step
#label Keeshan2
.goto 49,26.334,40.112
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
.turnin 26607 >>交任务: |cRXP_FRIENDLY_他们流下第一滴血|r
.accept 26616 >>接任务: |cRXP_WARN_战争不会结束|r
.target John J. Keeshan

step << DarkIronDwarf
#optional
#completewith RRWarmode2
.cast 265225 >>铸造|T1786409:0|t[鼹鼠机器]
.xp <20,1
.pve
.isOnQuest 76
step << DarkIronDwarf
#optional
#completewith RRWarmode2
.zone 84 >>对话: |cRXP_FRIENDLY_挖掘机|r
.skipgossip 143925,1,2
.xp <20,1
.pve
.isOnQuest 76

step << !DarkIronDwarf Monk
#optional
#completewith RRWarmode2
.zone 379 >>演员阵容|T775462:0|t[禅宗朝圣]
.xp <20,1
.pve
.isOnQuest 76
step << !DarkIronDwarf Monk
#optional
#completewith RRWarmode2
.goto 379,48.967,43.368
>>单击|cRXP_PICK_Portal to Stormfind|r
.xp <20,1
.pve
.isOnQuest 76
step << Monk
#optional
#completewith RRWarmode2
.goto 84,49.45,86.60,8,0
.goto 84,49.51,86.67,10 >>Exit the Mage Tower
.pve
.isOnQuest 76
step << !Monk !DarkIronDwarf
#optional
#completewith RRWarmode2
.goto 49,29.419,53.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Stormwind >>飞到暴风城
.target Ariena Stormfeather
.xp <20,1
.pve
.isOnQuest 76
step
#optional
#label RRWarmode2
+|cRXP_WARN_打开你的天赋（默认为N）并打开Warmode以获得经验值buff和额外天赋。
>>|cRXP_WARN_如果您不想打开Warmode，请跳过此步骤。|r
.pve
.xp <20,1
step
#optional
#completewith JasperlodeEnd2
.goto 84,70.938,72.472
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Goldshire >>Fly to Goldshire
.target Dungar Longdrink
.zoneskip 84,1
.xp <20,1
step
#optional
#completewith JasperlodeEnd2
.goto 49,29.419,53.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Goldshire >>Fly to Goldshire
.target Ariena Stormfeather
.zoneskip 49,1
.xp <20,1
step
#optional
#label JasperlodeEnd2
.goto 37,42.105,65.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
.turnin 76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
.target Marshal Dughan
.xp <20,1
step
#optional
#completewith Boat
.goto 37,41.715,64.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇敢的巴特利|r
.fly Lakeshire >>飞往莱克郡
.target Bartlett the Brave
.zoneskip 49
.xp <20,1
.cooldown item,6948,<0
step
#optional
#label HearthLS1
#completewith Boat
.hs >>赫斯到莱克郡
.zoneskip 49
.xp <20,1
.cooldown item,6948,>0,1

step
#optional
#requires HearthLS1
#completewith next
.goto 49,26.306,42.096,8,0
.goto 49,26.138,42.315,8,0
.goto 49,26.108,42.747,10 >>Exit the Lakeshire Inn 
.zoneskip 49,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头奥斯洛|r, |cRXP_FRIENDLY_治安官马瑞斯|r
.turnin 26569 >>交任务: |cRXP_FRIENDLY_测量设备|r
.goto 49,29.652,44.548
.target +Foreman Oslow
.turnin 26570 >>交任务: |cRXP_FRIENDLY_撕裂者大军|r
.goto 49,29.731,44.519
.target +Marshal Marris
step
#label Boat
.goto 49,34.426,45.914
.vehicle >>进入|cRXP_PICK_Keeshan的Riverboat|r
.timer 43,It's Never Over RP
.isOnQuest 26616
step
.goto 49,52.901,52.999
>>等待RP
>>|cRXP_WARN_计时器结束时手动离开船|r
.complete 26616,1 
step
#completewith Muckdwellers
.goto 49,52.920,54.640
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿尔伦·玛尔斯特|r
.fp >>获取营地Everstill飞行路线
.target Arlen Marsters
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r, |cRXP_FRIENDLY_卡拉克尔|r, |cRXP_FRIENDLY_梅森纳|r, |cRXP_FRIENDLY_丹弗斯|r
.turnin 26616 >>交任务: |cRXP_FRIENDLY_战争不会结束|r
.accept 26639 >>接任务: |cRXP_WARN_接头人：布鲁贝克|r
.goto 49,52.551,55.408
.target +John J. Keeshan
.accept 26636 >>接任务: |cRXP_WARN_B连战斗工具：伪装|r
.goto 49,52.402,55.407
.target +Krakauer
.accept 26637 >>接任务: |cRXP_WARN_B连战斗工具：麻醉剂|r
.goto 49,52.432,55.541
.target +Messner
.accept 26638 >>接任务: |cRXP_WARN_猎杀黑石猎人|r
.goto 49,52.533,55.557
.target +Danforth
step
#label Muckdwellers
#loop
.goto 49,48.669,54.976,0
.goto 49,46.956,56.688,0
.goto 49,43.168,55.127,0
.goto 49,39.453,57.087,0
.goto 49,39.358,50.183,0
.goto 49,45.014,49.280,0
.goto 49,48.669,54.976,55,0
.goto 49,48.798,57.741,55,0
.goto 49,46.786,58.420,55,0
.goto 49,46.956,56.688,55,0
.goto 49,44.610,54.864,55,0
.goto 49,44.320,52.796,55,0
.goto 49,43.168,55.127,55,0
.goto 49,41.915,53.874,55,0
.goto 49,40.214,54.370,55,0
.goto 49,39.453,57.087,55,0
.goto 49,38.895,60.012,55,0
.goto 49,38.064,52.309,55,0
.goto 49,39.358,50.183,55,0
.goto 49,40.550,47.338,55,0
.goto 49,42.860,49.655,55,0
.goto 49,45.014,49.280,55,0
>>在水下杀死|cRXP_ENEMY_Muckdwellers|r。掠夺他们的|cRXP_Loot_Muckdweller Glands|r
>>|cRXP_WARN_避免|r|cRXP_ENEMY_Ol'Gummers|r
.complete 26637,1 
.mob Muckdweller
.unitscan Ol' Gummers
step
#sticky
#label Hunters
#loop
.goto 49,55.822,66.568,0
.goto 49,53.086,69.251,0
.goto 49,50.922,65.688,0
.goto 49,49.219,67.953,0
.goto 49,47.151,66.384,0
.goto 49,45.798,69.412,0
.goto 49,43.679,70.878,0
.goto 49,39.093,68.551,0
.waypoint 49,55.822,66.568,20,0
.waypoint 49,54.430,68.474,20,0
.waypoint 49,53.627,69.824,20,0
.waypoint 49,53.086,69.251,20,0
.waypoint 49,52.089,69.305,20,0
.waypoint 49,49.800,69.120,20,0
.waypoint 49,50.922,65.688,20,0
.waypoint 49,50.313,66.097,20,0
.waypoint 49,49.024,66.516,20,0
.waypoint 49,49.219,67.953,20,0
.waypoint 49,48.006,68.721,20,0
.waypoint 49,48.030,67.211,20,0
.waypoint 49,47.151,66.384,20,0
.waypoint 49,46.832,67.484,20,0
.waypoint 49,45.871,66.825,20,0
.waypoint 49,46.634,70.734,20,0
.waypoint 49,45.798,69.412,20,0
.waypoint 49,43.680,66.576,20,0
.waypoint 49,43.679,70.878,20,0
.waypoint 49,41.375,69.805,20,0
.waypoint 49,39.093,68.551,20,0
>>杀死|cRXP_ENEMY_Blackrock猎人|r
>>|cRXP_WARN_小心他们|r|T136041:0|t[伪装]
.complete 26638,1 
.mob Blackrock Hunter
step
.goto 49,43.723,64.583,0 
.goto 49,39.080,69.773,0
.goto 49,41.122,69.990,0
.goto 49,42.532,70.274,0
.goto 49,45.198,68.405,0
.goto 49,47.075,66.697,0
.goto 49,39.080,69.773,40,0
.goto 49,39.687,69.959,40,0
.goto 49,40.424,68.797,40,0
.goto 49,41.122,69.990,40,0
.goto 49,41.557,68.559,40,0
.goto 49,42.280,69.740,40,0
.goto 49,42.532,70.274,40,0
.goto 49,44.090,70.194,40,0
.goto 49,43.958,67.755,40,0
.goto 49,45.198,68.405,40,0
.goto 49,46.057,69.072,40,0
.goto 49,47.075,66.697,40,0
>>将|cRXP_Loot_成堆的树叶|r和|cRXP _Loot_Fox Poop|r洗劫一空
>>|cRXP_WARN_[宝箱]留意Murloc营地的|cRXP_PICK_宝箱|r。如果它在上面，就把它拿走|r
.complete 26636,1 
.complete 26636,2 
step
.goto 49,53.216,67.815,0 
.goto 49,53.052,67.825
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布鲁贝克|r
>>|cRXP_WARN_[宝箱]检查他旁边的|cRXP_PICK_宝箱|r。如果它在上面，就把它拿走|r
.turnin 26639 >>交任务: |cRXP_FRIENDLY_接头人：布鲁贝克|r
.accept 26640 >>接任务: |cRXP_WARN_虐囚|r
.target Brubaker
step
#optional
#questguide
#requires Hunters
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅森纳|r, |cRXP_FRIENDLY_卡拉克尔|r, |cRXP_FRIENDLY_丹弗斯|r, |cRXP_FRIENDLY_约翰·J·基沙恩|r
.turnin 26637 >>交任务: |cRXP_FRIENDLY_B连战斗工具：麻醉剂|r
.goto 49,52.432,55.541
.target +Messner
.turnin 26636 >>交任务: |cRXP_FRIENDLY_B连战斗工具：伪装|r
.goto 49,52.402,55.407
.target +Krakauer
.turnin 26638 >>交任务: |cRXP_FRIENDLY_猎杀黑石猎人|r
.goto 49,52.533,55.557
.target +Danforth
.turnin 26640 >>交任务: |cRXP_FRIENDLY_虐囚|r
.accept 26646 >>接任务: |cRXP_WARN_战俘|r
.goto 49,52.551,55.408
.target +John J. Keeshan
step
#requires Hunters
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅森纳|r, |cRXP_FRIENDLY_卡拉克尔|r, |cRXP_FRIENDLY_丹弗斯|r, |cRXP_FRIENDLY_约翰·J·基沙恩|r
.turnin 26637 >>交任务: |cRXP_FRIENDLY_B连战斗工具：麻醉剂|r
.goto 49,52.432,55.541
.target +Messner
.turnin 26636 >>交任务: |cRXP_FRIENDLY_B连战斗工具：伪装|r
.goto 49,52.402,55.407
.target +Krakauer
.turnin 26638 >>交任务: |cRXP_FRIENDLY_猎杀黑石猎人|r
.goto 49,52.533,55.557
.target +Danforth
.turnin 26640 >>交任务: |cRXP_FRIENDLY_虐囚|r
.goto 49,52.551,55.408
.target +John J. Keeshan

step << DarkIronDwarf
#optional
#completewith RRWarmode3
.cast 265225 >>铸造|T1786409:0|t[鼹鼠机器]
.xp <20,1
.pve
.isOnQuest 76
step << DarkIronDwarf
#optional
#completewith RRWarmode3
.zone 84 >>对话: |cRXP_FRIENDLY_挖掘机|r
.skipgossip 143925,1,2
.xp <20,1
.pve
.isOnQuest 76

step << !DarkIronDwarf Monk
#optional
#completewith RRWarmode3
.zone 379 >>演员阵容|T775462:0|t[禅宗朝圣]
.xp <20,1
.pve
.isOnQuest 76
step << !DarkIronDwarf Monk
#optional
#completewith RRWarmode3
.goto 379,48.967,43.368
>>单击|cRXP_PICK_Portal to Stormfind|r
.xp <20,1
.pve
.isOnQuest 76
step << Monk
#optional
#completewith RRWarmode3
.goto 84,49.45,86.60,8,0
.goto 84,49.51,86.67,10 >>Exit the Mage Tower
.pve
.isOnQuest 76
step << !Monk !DarkIronDwarf
#optional
#completewith RRWarmode3
.goto 49,29.419,53.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Stormwind >>飞到暴风城
.target Ariena Stormfeather
.xp <20,1
.pve
.isOnQuest 76
step
#optional
#label RRWarmode3
+|cRXP_WARN_打开你的天赋（默认为N）并打开Warmode以获得经验值buff和额外天赋。
>>|cRXP_WARN_如果您不想打开Warmode，请跳过此步骤。|r
.pve
.xp <20,1
step
#optional
#completewith JasperlodeEnd3
.goto 84,70.938,72.472
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Goldshire >>Fly to Goldshire
.target Dungar Longdrink
.zoneskip 84,1
.xp <20,1
step
#optional
#completewith JasperlodeEnd3
.goto 49,29.419,53.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Goldshire >>Fly to Goldshire
.target Ariena Stormfeather
.zoneskip 49,1
.xp <20,1
step
#optional
#label JasperlodeEnd3
.goto 37,42.105,65.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
.turnin 76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
.target Marshal Dughan
.xp <20,1
step
#optional
#completewith RedridgeWarmode1
.goto 37,41.715,64.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇敢的巴特利|r
.fly Lakeshire >>飞往莱克郡
.target Bartlett the Brave
.zoneskip 49
.xp <20,1
.cooldown item,6948,<0
step
#optional
#completewith RedridgeWarmode1
.hs >>赫斯到莱克郡
.zoneskip 49
.xp <20,1
.cooldown item,6948,>0,1
step
#optional
#label RedridgeWarmode1
.goto 49,35.45,60.53
.zone 49 >>前往: |cRXP_PICK_赤脊山|r
.isOnQuest 26504

step
#veteran
.goto 49,33.30,52.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lindsay.|r.
>>|cRXP_WARN_如果您没有25级宠物战斗宠物，请跳过此步骤。|r
.accept 31781 >>接任务: |cRXP_WARN_林塞|r
.isQuestTurnedIn 31903
.target Lindsay
step
#veteran
.goto 49,33.30,52.57
>>在宠物战中击败|cRXP_ENEMY_Lindsay|r。
.complete 31781,1 
.skipgossip 65651,1
.isOnQuest 31781
.target Lindsay
step
#veteran
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 31781 >>Turn in Lindsay
.isQuestComplete 31781
step
#label RedridgeGnollKill
#completewith GnollOrders2
>>杀死|cRXP_ENEMY_Redridge Thrasher|r、|cRXD_ENEMY_Brutes|r和|cRXP_ENEMY_Mongrels|r
.complete 26504,1 
.target Redridge Thrasher
.target Redridge Brute
.target Redridge Mongrel
step
.goto 49,35.45,60.53,30 >>在山上检查|cRXP_ENEMY_Snarflare|r（稀有）|cFFfa9602|r
.unitscan Snarlflare
.isOnQuest 26504
step
.goto 49,30.14,61.20,30 >>检查营地中的|cRXP_ENEMY_Ribchaser|r（稀有）|cFFfa9602|r
.unitscan Ribchaser
.isOnQuest 26504
step
.goto 49,30.56,62.71
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Map|r |cFFfa9602on the ground.|r
.complete 26503,3 
step
#label GnollOrders2
.goto 49,28.03,74.88
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gnoll Orders|r on the ground. Check for a |cRXP_PICK_Chest|r nearby
.complete 26503,2 
step
.goto 49,32.82,73.67,40,0
.goto 49,33.08,59.41
>>杀死|cRXP_ENEMY_Redridge Thrasher|r、|cRXD_ENEMY_Brutes|r和|cRXP_ENEMY_Mongrels|r
.complete 26504,1 
.mob Redridge Thrasher
.mob Redridge Brute
.mob Redridge Mongrel
step
.goto 49,24.37,71.20,40 >>检查|cRXP_ENEMY_Gnollfraster|r（罕见）。
.unitscan Gnollfeaster
.isOnQuest 26504
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达希·帕克|r, Parker
.turnin 26506 >>交任务: |cRXP_FRIENDLY_茄汁黄豆|r
.goto 49,15.62,65.33
.turnin 26503 >>交任务: |cRXP_FRIENDLY_继续评估威胁|r
.turnin 26504 >>交任务: |cRXP_FRIENDLY_通缉：赤脊山豺狼人|r
.accept 26505 >>接任务: |cRXP_WARN_帕克的报告|r
.goto 49,15.42,65.91,8,0
.goto 49,15.32,64.59
.target Darcy Parker
.target Watch Captain Parker
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Alliance 10-60
#name 3A_Duskwood
#displayname Chapter 3 - Duskwood
#next 4A_北荆棘
#fresh 30
#veteran
<<Alliance
step
.goto 47,93.30,12.00
.zone 47 >>旅行|cFFfa9602到Duskwood |r
step
#completewith next
.goto 47,74.23,26.09,40,0
.goto 47,77.32,36.47,15 >>前往|cFFfa9602曼诺米斯曼特尔|r检查房子内外是否有|cRXP_PICK_Chest|r|cFFfa9602|r
step
.goto 47,78.74,44.53,8,0
.goto 47,79.09,44.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias|r |cFFfa9602inside the house.|r
.accept 26666 >>接任务: |cRXP_LOOT_斯塔文的传说|r
.target Tobias Mistmantle
step
.goto 47,87.43,35.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚伯克隆比|r
.accept 26653 >>接任务: |cRXP_LOOT_来自夜色镇的货物|r
.target Abercrombie
step
#completewith next
.goto 47,87.98,33.16,20,0
.goto 47,88.1,31.33,20,0
.goto 47,90.98,30.53,30 >>检查|cRXP_ENEMY_Unknown Soldier|r（稀有）。
.unitscan Unknown Soldier
step << !DarkIronDwarf !KulTiran !LightforgedDraenei !Mechagnome !VoidElf
#completewith Kabobs
.goto 47,77.48,44.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fp Darkshire >>获取Darkshire飞行路线
.target Felicia Maline
.isQuestTurnedIn 12801 << DK
step
.goto 47,75.56,45.37,8,0
.goto 47,75.83,45.26
>>对话: |cRXP_FRIENDLY_伊瓦夫人|r
.turnin 26653 >>交任务: |cRXP_FRIENDLY_来自夜色镇的货物|r
.accept 26652 >>接任务: |cRXP_LOOT_幽灵的发丝|r
.target Madame Eva
step
#completewith next
.goto 47,73.82,45.95,8,0
.goto 47,74.07,45.32,8 >>去旅馆旁边|cFFfa9602|r
step
#completewith Daltry1
.goto 47,73.87,44.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板崔莱尼|r
.home >>将你的炉石设置为猩红乌鸦酒馆
.target Innkeeper Trelayne
step
#label Kabobs
.goto 47,73.74,43.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师格鲁奥|r
.accept 26620 >>接任务: |cRXP_WARN_干烤狼肉串|r
.accept 26623 >>接任务: |cRXP_LOOT_黑蟹蛋糕|r
.target Chef Grual
step
#completewith Daltry1
.goto 47,74.07,45.32,8,0
.goto 47,73.82,45.95,8>>出口|cFFfa9602旅馆|r
step
#label Daltry1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_书记员达尔塔|r, |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.turnin 26666 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.accept 26667 >>接任务: |cRXP_WARN_被偷的信件|r
.goto 47,72.44,46.91
.turnin 26728 >>交任务: |cRXP_FRIENDLY_英雄的召唤：暮色森林！|r
.accept 26618 >>接任务: |cRXP_LOOT_恶狼成群|r
.goto 47,73.53,46.92
.target Clerk Daltry
.target 指挥官阿尔西娅·埃本洛克
.isOnQuest 26728
step
#label Daltry1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_书记员达尔塔|r, |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.turnin 26666 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.accept 26667 >>接任务: |cRXP_WARN_被偷的信件|r
.goto 47,72.44,46.91
.accept 26618 >>接任务: |cRXP_LOOT_恶狼成群|r
.goto 47,73.53,46.92
.target Clerk Daltry
.target 指挥官阿尔西娅·埃本洛克
step
.goto 47,75.33,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡洛尔|r
.accept 26688 >>接任务: |cRXP_LOOT_森林里的狼人|r
.target Calor

step << DarkIronDwarf
#optional
#completewith DWWarmode1
.cast 265225 >>铸造|T1786409:0|t[鼹鼠机器]
.xp <20,1
.pve
.isOnQuest 76
step << DarkIronDwarf
#optional
#completewith DWWarmode1
.zone 84 >>对话: |cRXP_FRIENDLY_挖掘机|r
.skipgossip 143925,1,2
.xp <20,1
.pve
.isOnQuest 76

step << !DarkIronDwarf Monk
#optional
#completewith DWWarmode1
.zone 379 >>演员阵容|T775462:0|t[禅宗朝圣]
.xp <20,1
.pve
.isOnQuest 76
step << !DarkIronDwarf Monk
#optional
#completewith DWWarmode1
.goto 379,48.967,43.368
>>单击|cRXP_PICK_Portal to Stormfind|r
.xp <20,1
.pve
.isOnQuest 76
step << Monk
#optional
#completewith DWWarmode1
.goto 84,49.45,86.60,8,0
.goto 84,49.51,86.67,10 >>Exit the Mage Tower
.pve
.isOnQuest 76
step << !Monk !DarkIronDwarf
#optional
#completewith DWWarmode1
.goto 47,77.487,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Stormwind >>飞到暴风城
.target Felicia Maline
.xp <20,1
.pve
.isOnQuest 76
step
#optional
#label DWWarmode1
+|cRXP_WARN_打开你的天赋（默认为N）并打开Warmode以获得经验值buff和额外天赋。
>>|cRXP_WARN_如果您不想打开Warmode，请跳过此步骤。|r
.pve
.xp <20,1
step
#optional
#completewith JasperlodeEnd4
.goto 84,70.938,72.472
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Goldshire >>Fly to Goldshire
.target Dungar Longdrink
.zoneskip 84,1
.xp <20,1
step
#optional
#completewith JasperlodeEnd4
.goto 47,77.487,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Goldshire >>Fly to Goldshire
.target Felicia Maline
.zoneskip 47,1
.xp <20,1
step
#optional
#label JasperlodeEnd4
.goto 37,42.105,65.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
.turnin 76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
.target Marshal Dughan
.xp <20,1
step
#optional
#completewith DuskwoodWarmode1
.goto 37,41.715,64.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇敢的巴特利|r
.fly Darkshire >>飞到Darkhire
.target Bartlett the Brave
.zoneskip 47
.xp <20,1

step
#optional
#label DuskwoodWarmode1
.goto 47,72.60,45.91
.zone 47 >>前往: |cRXP_PICK_暮色森林|r
.isOnQuest 26667

step
#completewith next
>>杀死|cRXP_ENEMY_Venom Web蜘蛛|r并掠夺它们的|cRXX_loot_Dunsky肿块|r
.complete 26623,1 
.mob Venom Web Spider
step
#completewith Letters
>>杀死|cRXP_ENEMY_Nightbane蠕虫。|r
.complete 26688,1 
.mob Nightbane Worgen
step
#completewith next
.goto 47,72.60,45.91,30,0
.goto 47,69.23,44.74,30,0
.goto 47,58.12,30.05,30,0
+检查沃根营地及其周围的|cRXP_ENEMY_Fenros|r（稀有）|cFFfa9602|r
.isOnQuest 26623
.unitscan Fenros
step
#label Letters
.goto 47,61.24,40.50
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bundle of Letters|r |cFFfa9602on the ground.|r
*|cRXP_WARN_Make sure to quickly check for a |cRXP_PICK_Chest|r |cFFfa9602in and around the camp.|r|r
.complete 26667,1 
step
.goto 47,64.12,51.62
>>杀死|cRXP_ENEMY_Nightbane蠕虫|r
.complete 26688,1 
.mob Nightbane Worgen
step
#completewith next
.goto 47,65.54,30.32,40,0
.goto 47,73.29,20.23,40,0
.goto 47,63.90,19.41,40,0
>>杀死|cRXP_ENEMY_Dire Wolves|r并掠夺它们的|cRXD_loot_狼裙牛排|r
>>|cRXP_WARN_检查|cRXP_ENEMY_Lupos|r（稀有），他正在|cRXD_ENEMY_Wolves|r和|cRXP_ENEMY_Spiders周围巡逻|r|r
.complete 26618,1 
.complete 26620,1 
.mob Dire Wolf
.unitscan Lupos
step
.goto 47,68.35,19.48,40,0
.goto 47,60.93,27.34,40,0
.goto 47,65.54,30.32,40,0
.goto 47,73.29,20.23,40,0
.goto 47,63.90,19.41,40,0
.goto 47,68.35,19.48,40,0
.goto 47,60.93,27.34,40,0
.goto 47,65.54,30.32,40,0
.goto 47,73.29,20.23,40,0
.goto 47,63.90,19.41
>>杀死|cRXP_ENEMY_Venom Web蜘蛛|r并掠夺它们的|cRXX_loot_Dunsky块|r
.complete 26623,1 
.mob Venom Web Spider
step
.goto 47,59.00,20.72,40,0
.goto 47,68.35,19.48,40,0
.goto 47,60.93,27.34,40,0
.goto 47,65.54,30.32,40,0
.goto 47,59.00,20.72,40,0
.goto 47,63.90,19.41,40,0
.goto 47,68.35,19.48,40,0
.goto 47,60.93,27.34,40,0
.goto 47,65.54,30.32,40,0
.goto 47,59.00,20.72
>>杀死|cRXP_ENEMY_Dire Wolves|r并掠夺它们的|cRXD_loot_狼裙牛排|r
>>|cRXP_WARN_检查|cRXP_ENEMY_Lupos|r（稀有），他正在|cRXD_ENEMY_Wolves|r和|cRXP_ENEMY_Spiders周围巡逻|r|r
.complete 26618,1 
.complete 26620,1 
.target Dire Wolf
.unitscan Lupos
step
.goto 37,82.95,84.82,40 >>检查|cRXP_ENEMY_Bushtail|r（罕见）。
.unitscan Bushtail
.isOnQuest 26620
step
.goto 37,74.42,85.99,40,0
.goto 37,66.52,84.48,40	>>检查|cRXP_ENEMY_Terrapis|r（稀有）。
.unitscan Terrapis
.isOnQuest 26620
step
.goto 37,69.32,79.31,30 >>检查|cRXP_ENEMY_Snoot the Rooter|r（稀有）。
.unitscan Snoot the Rooter
.isOnQuest 26620
step
#completewith Grual
.hs >>炉石|cFFfa9602到Darkshire|r
.cooldown item,6948,>0
step
#label Grual
.goto 47,73.75,43.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_厨师格鲁奥|r
.turnin 26620 >>交任务: |cRXP_FRIENDLY_干烤狼肉串|r
.turnin 26623 >>交任务: |cRXP_FRIENDLY_黑蟹蛋糕|r
.target Chef Grual
step
#completewith next
.goto 47,74.07,45.32,8,0
.goto 47,73.82,45.95,8>>出口|cFFfa9602旅馆|r
step
.goto 47,73.13,44.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瓦特·菲尔伍德|r
.vendor 228 >>供应商和维修
.target Avette Fellwood
.isOnQuest 26667
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_书记员达尔塔|r, |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.turnin 26667 >>交任务: |cRXP_FRIENDLY_被偷的信件|r
.accept 26669 >>接任务: |cRXP_WARN_黑暗的角落|r
.goto 47,72.44,46.91
.turnin 26618 >>交任务: |cRXP_FRIENDLY_恶狼成群|r
.accept 26645 >>接任务: |cRXP_LOOT_守夜人|r
.goto 47,73.53,46.92
.target Clerk Daltry
.target 指挥官阿尔西娅·埃本洛克
step
.goto 47,75.33,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡洛尔|r
.turnin 26688 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.accept 26689 >>接任务: |cRXP_WARN_烂果园|r
.target Calor

step << DarkIronDwarf
#optional
#completewith DWWarmode2
.cast 265225 >>铸造|T1786409:0|t[鼹鼠机器]
.xp <20,1
.pve
.isOnQuest 76
step << DarkIronDwarf
#optional
#completewith DWWarmode2
.zone 84 >>对话: |cRXP_FRIENDLY_挖掘机|r
.skipgossip 143925,1,2
.xp <20,1
.pve
.isOnQuest 76

step << !DarkIronDwarf Monk
#optional
#completewith DWWarmode2
.zone 379 >>演员阵容|T775462:0|t[禅宗朝圣]
.xp <20,1
.pve
.isOnQuest 76
step << !DarkIronDwarf Monk
#optional
#completewith DWWarmode2
.goto 379,48.967,43.368
>>单击|cRXP_PICK_Portal to Stormfind|r
.xp <20,1
.pve
.isOnQuest 76
step << Monk
#optional
#completewith DWWarmode2
.goto 84,49.45,86.60,8,0
.goto 84,49.51,86.67,10 >>Exit the Mage Tower
.pve
.isOnQuest 76
step << !Monk !DarkIronDwarf
#optional
#completewith DWWarmode2
.goto 47,77.487,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Stormwind >>飞到暴风城
.target Felicia Maline
.xp <20,1
.pve
.isOnQuest 76
step
#optional
#label DWWarmode2
+|cRXP_WARN_打开你的天赋（默认为N）并打开Warmode以获得经验值buff和额外天赋。
>>|cRXP_WARN_如果您不想打开Warmode，请跳过此步骤。|r
.pve
.xp <20,1
step
#optional
#completewith JasperlodeEnd5
.goto 84,70.938,72.472
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Goldshire >>Fly to Goldshire
.target Dungar Longdrink
.zoneskip 84,1
.xp <20,1
step
#optional
#completewith JasperlodeEnd5
.goto 47,77.487,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Goldshire >>Fly to Goldshire
.target Felicia Maline
.zoneskip 47,1
.xp <20,1
step
#optional
#label JasperlodeEnd5
.goto 37,42.105,65.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
.turnin 76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
.target Marshal Dughan
.xp <20,1
step
#optional
#completewith LookStars
.goto 37,41.715,64.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇敢的巴特利|r
.fly Darkshire >>飞到Darkhire
.target Bartlett the Brave
.zoneskip 47
.xp <20,1
.cooldown item,6948,<0
step
#optional
#completewith LookStars
.hs >>赫斯到达克希尔
.zoneskip 47
.xp <20,1
.cooldown item,6948,>0,1

step
#label LookStars
.goto 47,79.53,47.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.accept 26683 >>接任务: |cRXP_WARN_仰望星空|r
.target Viktori Prism'Antras
step
#completewith next
>>杀死|cRXP_ENEMY_腐烂恐怖|r
>>|cRXP_WARN_检查房子内外是否有|cRXP_ENEMY_Watcher Eva|r（稀有）|cFFfa9602|r|r
.complete 26645,1 
.mob Rotting Horror
.unitscan Watcher Eva
step
.goto 47,81.66,59.16,8,0
.goto 47,81.92,58.98,5,0
.goto 47,82.05,59.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mary|r |cFFfa9602inside the house.|r
.turnin 26652 >>交任务: |cRXP_FRIENDLY_幽灵的发丝|r
.accept 26654 >>接任务: |cRXP_LOOT_归还梳子|r
.turnin 26683 >>交任务: |cRXP_FRIENDLY_眺望群星|r
.accept 26684 >>接任务: |cRXP_WARN_疯狂的食尸鬼|r
.target Blind Mary
step
#loop
.line 47,82.30,61.22,82.45,56.25,80.91,56.65,79.48,60.41,82.30,61.22
.goto 47,82.30,61.22,30,0
.goto 47,82.45,56.25,30,0
.goto 47,80.91,56.65,30,0
.goto 47,79.48,60.41,30,0
.goto 47,82.30,61.22,30,0
>>杀死|cRXP_ENEMY_腐烂恐怖|r
>>|cRXP_WARN_检查房子内外是否有|cRXP_ENEMY_Watcher Eva|r（稀有）|cFFfa9602|r|r
.complete 26645,1 
.mob Rotting Horror
.unitscan Watcher Eva
step
.goto 47,75.56,45.37,8,0
.goto 47,75.83,45.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊瓦夫人|r
.turnin 26654 >>交任务: |cRXP_FRIENDLY_归还梳子|r
.accept 26655 >>接任务: |cRXP_LOOT_幽灵的发丝|r
.target Madame Eva
step
.goto 47,87.43,35.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚伯克隆比|r
.turnin 26655 >>交任务: |cRXP_FRIENDLY_幽灵的发丝|r
.accept 26660 >>接任务: |cRXP_LOOT_僵尸|r
.target Abercrombie
step
#completewith next
.goto 47,87.98,33.16,20,0
.goto 47,88.1,31.33,20,0
.goto 47,90.98,30.53,30 >>|cRXP_WARN_检查|cRXP_ENEMY_Unknown Soldier|r（稀有）。|r
.unitscan Unknown Soldier
step
#completewith next
.goto 47,73.82,45.95,8,0
.goto 47,74.07,45.32,8 >>去旅馆旁边|cFFfa9602|r
step
.goto 47,74.09,44.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板斯密茨|r
.turnin 26660 >>交任务: |cRXP_FRIENDLY_僵尸|r
.accept 26661 >>接任务: |cRXP_LOOT_收集腐败之花|r
.mob Tavernkeep Smitts
step
#completewith next
.goto 47,74.07,45.32,8,0
.goto 47,73.82,45.95,8 >>出口|cFFfa9602旅馆|r
step
.goto 47,73.53,46.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.turnin 26645 >>交任务: |cRXP_FRIENDLY_守夜人|r
.accept 26686 >>接任务: |cRXP_WARN_说话的骨头|r
.target 指挥官阿尔西娅·埃本洛克

step << DarkIronDwarf
#optional
#completewith DWWarmode3
.cast 265225 >>铸造|T1786409:0|t[鼹鼠机器]
.xp <20,1
.pve
.isOnQuest 76
step << DarkIronDwarf
#optional
#completewith DWWarmode3
.zone 84 >>对话: |cRXP_FRIENDLY_挖掘机|r
.skipgossip 143925,1,2
.xp <20,1
.pve
.isOnQuest 76

step << !DarkIronDwarf Monk
#optional
#completewith DWWarmode3
.zone 379 >>演员阵容|T775462:0|t[禅宗朝圣]
.xp <20,1
.pve
.isOnQuest 76
step << !DarkIronDwarf Monk
#optional
#completewith DWWarmode3
.goto 379,48.967,43.368
>>单击|cRXP_PICK_Portal to Stormfind|r
.xp <20,1
.pve
.isOnQuest 76
step << Monk
#optional
#completewith DWWarmode3
.goto 84,49.45,86.60,8,0
.goto 84,49.51,86.67,10 >>Exit the Mage Tower
.pve
.isOnQuest 76
step << !Monk !DarkIronDwarf
#optional
#completewith DWWarmode3
.goto 47,77.487,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Stormwind >>飞到暴风城
.target Felicia Maline
.xp <20,1
.pve
.isOnQuest 76
step
#optional
#label DWWarmode3
+|cRXP_WARN_打开你的天赋（默认为N）并打开Warmode以获得经验值buff和额外天赋。
>>|cRXP_WARN_如果您不想打开Warmode，请跳过此步骤。|r
.pve
.xp <20,1
step
#optional
#completewith JasperlodeEnd6
.goto 84,70.938,72.472
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Goldshire >>Fly to Goldshire
.target Dungar Longdrink
.zoneskip 84,1
.xp <20,1
step
#optional
#completewith JasperlodeEnd6
.goto 47,77.487,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Goldshire >>Fly to Goldshire
.target Felicia Maline
.zoneskip 47,1
.xp <20,1
step
#optional
#label JasperlodeEnd6
.goto 37,42.105,65.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
.turnin 76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
.target Marshal Dughan
.xp <20,1
step
#optional
#completewith DuskwoodWarmode2
.goto 37,41.715,64.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇敢的巴特利|r
.fly Darkshire >>飞到Darkhire
.target Bartlett the Brave
.zoneskip 47
.xp <20,1
.cooldown item,6948,<0
step
#optional
#completewith DuskwoodWarmode2
.hs >>赫斯到达克希尔
.zoneskip 47
.xp <20,1
.cooldown item,6948,>0,1
step
#optional
#label DuskwoodWarmode2
.goto 47,72.60,45.91
.zone 47 >>前往: |cRXP_PICK_暮色森林|r
.isOnQuest 26684

step
#completewith next
>>杀死|cRXP_ENEMY_Skeletal Warriors|r和|cRXX_ENEMY_ Skeletal Mages|r
>>检查Cemetary中央/北侧附近的|cRXP_ENEMY_Watcher Eva|r（稀有）（如果你最近没有杀死他）
>>掠夺地上的|cRXP_PICK_Rot Blossoms|r
.complete 26686,1 
.complete 26686,2 
.complete 26661,1 
.target Skeletal Warrior
.target Skeletal Mage
.unitscan Watcher Eva
step
.goto 47,80.31,71.10,15,0
.goto 47,80.88,71.58
>>杀死墓地旁的|cRXP_ENEMY_Insane食尸鬼|r|cFFfa9602|r并将其掠夺为|cRXP_loot_Mary的镜子|r
.complete 26684,1 
.target Insane Ghoul
step
#loop
.line 47,81.85,68.34,78.33,66.13,77.02,69.85,80.89,74.21,81.85,68.34
.goto 47,81.85,68.34,40,0
.goto 47,78.33,66.13,40,0
.goto 47,77.02,69.85,40,0
.goto 47,80.89,74.21,40,0
.goto 47,81.85,68.34,40,0
>>杀死|cRXP_ENEMY_Skeletal Warriors|r和|cRXX_ENEMY_ Skeletal Mages|r
>>检查Cemetary中央/北侧附近的|cRXP_ENEMY_Watcher Eva|r（稀有）（如果你最近没有杀死他）
>>掠夺地上的|cRXP_PICK_Rot Blossoms|r
.complete 26686,1 
.complete 26686,2 
.complete 26661,1 
.target Skeletal Warrior
.target Skeletal Mage
.unitscan Watcher Eva
step
.goto 47,73.53,74.24,20 >>检查矿井前方是否有|cRXP_PICK_Chest|r|cFFfa9602|r
.isOnQuest 26669
step
#completewith Marus
>>杀死|cRXP_ENEMY_Nightbane Shadow Weavers|r
.complete 26689,1 
.target Nightbane Shadow Weavers
step
#completewith next
.goto 47,66.03,75.79,8,0
.goto 47,65.98,76.42,8 >>Go inside the barn
step
.goto 47,66.59,76.44
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Torn Journal|r |cFFfa9602on the ground.|r Keep an eye out for a |cRXP_PICK_Chest|r |cFFfa9602inside the barn.|r
.complete 26669,1 
step
#label Marus
.goto 47,65.32,68.08,8,0
.goto 47,64.98,67.48,8,0
.goto 47,65.72,67.12,8 >>检查建筑物内的|cRXP_ENEMY_Marus|r和a|cRX_PICK_Chest|r|cFFfa9602|r
.unitscan Marus
.isOnQuest 26689
step
.goto 47,63.50,76.61,40,0
.goto 47,60.88,73.19,40,0
.goto 47,64.19,65.03,40,0
.goto 47,63.50,76.61,40,0
.goto 47,60.88,73.19,40,0
.goto 47,64.19,65.03,40,0
.goto 47,63.50,76.61
>>杀死|cRXP_ENEMY_Nightbane Shadow Weavers|r。如果你看到他（而且你还没有杀死他），就杀死|cRXP_ENEMY_Marus|r
.complete 26689,1 
.target Nightbane Shadow Weavers
.unitscan Marus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_Althea|r和|cRXP-FRIENDLY_Daltry交谈|r
.turnin 26686 >>交任务: |cRXP_FRIENDLY_说话的骨头|r
.goto 47,73.53,46.92
.turnin 26669 >>交任务: |cRXP_FRIENDLY_黑暗的角落|r
.accept 26670 >>接任务: |cRXP_WARN_罗兰之墓|r
.goto 47,72.44,46.91
.target 指挥官阿尔西娅·埃本洛克
.target Clerk Daltry
step
#completewith next
.goto 47,73.82,45.95,8,0
.goto 47,74.07,45.32,8 >>前往旅馆|cFFfa9602
step
.goto 47,74.09,44.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板斯密茨|r
.turnin 26661 >>交任务: |cRXP_FRIENDLY_收集腐败之花|r
.accept 26676 >>接任务: |cRXP_LOOT_僵尸酒|r
.target Tavernkeep Smitts
step
#completewith next
.goto 47,74.07,45.32,8,0
.goto 47,73.82,45.95,8 >>出口|cFFfa9602旅馆|r
step
.goto 47,75.33,48.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡洛尔|r
.turnin 26689,1 >>交任务: |cRXP_FRIENDLY_烂果园|r
.accept 26690 >>接任务: |cRXP_WARN_邪齿和堕落|r
.target Calor

step << DarkIronDwarf
#optional
#completewith DWWarmode4
.cast 265225 >>铸造|T1786409:0|t[鼹鼠机器]
.xp <20,1
.pve
.isOnQuest 76
step << DarkIronDwarf
#optional
#completewith DWWarmode4
.zone 84 >>对话: |cRXP_FRIENDLY_挖掘机|r
.skipgossip 143925,1,2
.xp <20,1
.pve
.isOnQuest 76

step << !DarkIronDwarf Monk
#optional
#completewith DWWarmode4
.zone 379 >>演员阵容|T775462:0|t[禅宗朝圣]
.xp <20,1
.pve
.isOnQuest 76
step << !DarkIronDwarf Monk
#optional
#completewith DWWarmode4
.goto 379,48.967,43.368
>>单击|cRXP_PICK_Portal to Stormfind|r
.xp <20,1
.pve
.isOnQuest 76
step << Monk
#optional
#completewith DWWarmode4
.goto 84,49.45,86.60,8,0
.goto 84,49.51,86.67,10 >>Exit the Mage Tower
.pve
.isOnQuest 76
step << !Monk !DarkIronDwarf
#optional
#completewith DWWarmode4
.goto 47,77.487,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Stormwind >>飞到暴风城
.target Felicia Maline
.xp <20,1
.pve
.isOnQuest 76
step
#optional
#label DWWarmode4
+|cRXP_WARN_打开你的天赋（默认为N）并打开Warmode以获得经验值buff和额外天赋。
>>|cRXP_WARN_如果您不想打开Warmode，请跳过此步骤。|r
.pve
.xp <20,1
step
#optional
#completewith JasperlodeEnd7
.goto 84,70.938,72.472
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Goldshire >>Fly to Goldshire
.target Dungar Longdrink
.zoneskip 84,1
.xp <20,1
step
#optional
#completewith JasperlodeEnd7
.goto 47,77.487,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Goldshire >>Fly to Goldshire
.target Felicia Maline
.zoneskip 47,1
.xp <20,1
step
#optional
#label JasperlodeEnd7
.goto 37,42.105,65.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
.turnin 76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
.target Marshal Dughan
.xp <20,1
step
#optional
#completewith Insane
.goto 37,41.715,64.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇敢的巴特利|r
.fly Darkshire >>飞到Darkhire
.target Bartlett the Brave
.zoneskip 47
.xp <20,1
.cooldown item,6948,<0
step
#optional
#completewith Insane
.hs >>赫斯到达克希尔
.zoneskip 47
.xp <20,1
.cooldown item,6948,>0,1

step
#label Insane
.goto 47,79.53,47.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.turnin 26684 >>交任务: |cRXP_FRIENDLY_疯狂的食尸鬼|r
.accept 26685 >>接任务: |cRXP_WARN_高级玻璃|r
.target Viktori Prism'Antras
step
.goto 47,87.43,35.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚伯克隆比|r
.turnin 26676 >>交任务: |cRXP_FRIENDLY_僵尸酒|r
.accept 26680 >>接任务: |cRXP_LOOT_食人魔潜行者|r
.target Abercrombie
step
.goto 47,87.98,33.16,20,0
.goto 47,88.1,31.33,20,0
.goto 47,90.98,30.53,30 >>检查|cRXP_ENEMY_Unknown Soldier|r（稀有）。
.unitscan Unknown Soldier
.isOnQuest 26670
step
#completewith JPages
>>杀死|cRXP_ENEMY_Nightbane Tained Ones|r和|cRXX_ENEMY_Vile Fans|r
.complete 26690,2 
.complete 26690,1 
step
#completewith next
.goto 47,73.05,75.17,20 >>检查矿井前方是否有|cRXP_PICK_Chest|r。进入矿井
.isOnQuest 26690
step
#label JPages
.goto 47,73.44,76.86,20,0
.goto 47,74.26,77.92,20,0
.goto 47,73.62,79.21
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pages|r |cFFfa9602on the ground.|r
>>检查矿井边是否有|cRXP_ENEMY_Nefaru|r（稀有）和|cRX_PICK_Chest|r|cFFfa9602|r
.complete 26670,1 
step
.goto 47,74.84,67.51,40,0
.goto 47,72.13,67.77,40,0
.goto 47,72.03,74.77,40,0
.goto 47,74.25,73.86,40,0
.goto 47,73.46,73.17,40,0
.goto 47,74.84,67.51,40,0
.goto 47,72.13,67.77,40,0
.goto 47,72.03,74.77,40,0
.goto 47,74.25,73.86,40,0
.goto 47,73.46,73.17
>>杀死|cRXP_ENEMY_Nightbane受污染的人|r和|cRXX_ENEMY_ Nightbane-Vile Fans|r
.complete 26690,2 
.complete 26690,1 
.mob Nightbane Tainted One
.mob Nightbane Vile Fang
step
#completewith next
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
.goto 47,72.44,46.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_书记员达尔塔|r
.turnin 26670 >>交任务: |cRXP_FRIENDLY_罗兰之墓|r
.accept 26671 >>接任务: |cRXP_WARN_斯塔文·密斯特曼托的命运|r
.target Clerk Daltry
step
.goto 47,73.13,44.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瓦特·菲尔伍德|r
.vendor 228 >>供应商和维修
.target Avette Fellwood
.isOnQuest 26671
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡洛尔|r, |cRXP_FRIENDLY_乔纳森·卡尔文|r
.turnin 26690 >>交任务: |cRXP_FRIENDLY_邪齿和堕落|r
.accept 26691 >>接任务: |cRXP_LOOT_森林里的狼人|r
.goto 47,75.33,48.02
.turnin 26691 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.goto 47,75.24,48.23,5,0
.goto 47,75.39,49.00
.target Calor
.target Jonathan Carevin
step
.goto 47,78.74,44.53,8,0
.goto 47,79.09,44.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托比亚斯·密斯特曼托|r
.turnin 26671 >>交任务: |cRXP_FRIENDLY_斯塔文·密斯特曼托的命运|r
.accept 26672 >>接任务: |cRXP_WARN_挖掘真相|r
.target Tobias Mistmantle

step << DarkIronDwarf
#optional
#completewith DWWarmode4
.cast 265225 >>铸造|T1786409:0|t[鼹鼠机器]
.xp <20,1
.pve
.isOnQuest 76
step << DarkIronDwarf
#optional
#completewith DWWarmode4
.zone 84 >>对话: |cRXP_FRIENDLY_挖掘机|r
.skipgossip 143925,1,2
.xp <20,1
.pve
.isOnQuest 76

step << !DarkIronDwarf Monk
#optional
#completewith DWWarmode5
.zone 379 >>演员阵容|T775462:0|t[禅宗朝圣]
.xp <20,1
.pve
.isOnQuest 76
step << !DarkIronDwarf Monk
#optional
#completewith DWWarmode5
.goto 379,48.967,43.368
>>单击|cRXP_PICK_Portal to Stormfind|r
.xp <20,1
.pve
.isOnQuest 76
step << Monk
#optional
#completewith DWWarmode5
.goto 84,49.45,86.60,8,0
.goto 84,49.51,86.67,10 >>Exit the Mage Tower
.pve
.isOnQuest 76
step << !Monk !DarkIronDwarf
#optional
#completewith DWWarmode5
.goto 47,77.487,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Stormwind >>飞到暴风城
.target Felicia Maline
.xp <20,1
.pve
.isOnQuest 76
step
#optional
#label DWWarmode5
+|cRXP_WARN_打开你的天赋（默认为N）并打开Warmode以获得经验值buff和额外天赋。
>>|cRXP_WARN_如果您不想打开Warmode，请跳过此步骤。|r
.pve
.xp <20,1
step
#optional
#completewith JasperlodeEnd8
.goto 84,70.938,72.472
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
.fly Goldshire >>Fly to Goldshire
.target Dungar Longdrink
.zoneskip 84,1
.xp <20,1
step
#optional
#completewith JasperlodeEnd8
.goto 47,77.487,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Goldshire >>Fly to Goldshire
.target Felicia Maline
.zoneskip 47,1
.xp <20,1
step
#optional
#label JasperlodeEnd8
.goto 37,42.105,65.927
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_治安官杜汉|r
.turnin 76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
.target Marshal Dughan
.xp <20,1
step
#optional
#completewith Clawing
.goto 37,41.715,64.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇敢的巴特利|r
.fly Darkshire >>飞到Darkhire
.target Bartlett the Brave
.zoneskip 47
.xp <20,1
.cooldown item,6948,<0
step
#optional
#completewith Clawing
.hs >>赫斯到达克希尔
.zoneskip 47
.xp <20,1
.cooldown item,6948,>0,1

step
#label Clawing
.goto 47,75.56,45.37,8,0
.goto 47,75.83,45.26
>>对话: |cRXP_FRIENDLY_伊瓦夫人|r
.turnin 26672 >>交任务: |cRXP_FRIENDLY_挖掘真相|r
.accept 26674 >>接任务: |cRXP_WARN_密斯特曼托的复仇|r
.target Madame Eva
step
.goto 47,77.42,35.85,10,0
.goto 47,77.33,36.18
>>|cRXP_WARN_使用|r|T332402:0|t[Mistmantle Family Ring]|cRXP_WARN_inside Stalvan的房子。等待RP|r
>>杀死|cRXP_ENEMY_Fetid尸体|r，并在等待|cRXX_ENEMY_Stalvan|r变得敌对时，检查房子内外是否有|cRXP_PICK_Chest|r。
>>杀死|cRXP_ENEMY_Stalvan|r
.complete 26674,1 
.mob Fetid Corpse
.mob Stalvan Mistmantle
.cast 82029
.timer 33,Mistmantle's Revenge RP
.use 59363
step
.goto 47,78.74,44.53,8,0
.goto 47,79.09,44.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托比亚斯·密斯特曼托|r
.turnin 26674 >>交任务: |cRXP_FRIENDLY_密斯特曼托的复仇|r
.accept 26785 >>接任务: |cRXP_WARN_族群的一部分|r
.target Tobias Mistmantle
step
#completewith next
.goto 47,69.51,48.83,30 >>沿着市政厅后面的小路|cFFfa9602到Brightwood Grove|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守夜人道茨|r, |cRXP_FRIENDLY_学徒菲斯|r
.accept 25235 >>接任务: |cRXP_WARN_粗野的沃古尔|r
.goto 47,45.12,67.02
.turnin 26785 >>交任务: |cRXP_FRIENDLY_族群的一部分|r
.accept 26707 >>接任务: |cRXP_WARN_致命的植物|r
.accept 26717 >>接任务: |cRXP_WARN_约根狼人|r
.goto 47,44.92,67.43
.target Watcher Dodds
.target Apprentice Fess
step
#completewith next
>>杀死|cRXP_ENEMY_Corpsewed|r并掠夺他们的|cRXD_loot_COrpsewed|r
>>检查是否有|cRXP_ENEMY_Carved One|r（稀有）。
.complete 26707,1 
.mob Corpseweed
.unitscan Carved One
step
.goto 47,49.86,77.69
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dirt Pile|r |cFFfa9602on the ground.|r
.complete 26717,1 
step
.goto 47,51.99,73.61,40,0
.goto 47,49.04,70.73,40,0
.goto 47,47.12,73.79,40,0
.goto 47,49.28,76.56,40,0
.goto 47,51.99,73.61,40,0
.goto 47,49.04,70.73,40,0
.goto 47,47.12,73.79,40,0
.goto 47,49.28,76.56
>>杀死|cRXP_ENEMY_Corpsewed|r并掠夺他们的|cRXD_loot_COrpsewed|er
>>检查|cRXP_ENEMY_雕刻件|r（稀有）
.complete 26707,1 
.mob Corpseweed
.unitscan Carved One
step
#completewith Zzarc
>>杀死|cRXP_ENEMY_Splinter拳头食人魔|r、|cRXP_ENEMY_Firemongers|r和|cRXD_ENEMY_Warriors|r
.complete 25235,1 
.mob Splinter Fist Ogre
.mob Splinter Fist Firemonger
.mob Splinter Fist Warrior
step
.goto 47,33.52,75.33
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crate|r |cFFfa9602on the ground.|r
.complete 26680,1 
step
#completewith next
.goto 47,34.20,77.47,15 >>在矿井入口|r处检查|cRXP_PICK_Chest|r|cFFfa9602，然后在矿井边检查|cFFFA9602|r
step
#completewith next
.goto 47,35.56,80.07,15,0
.goto 47,34.86,81.36,15 >>检查矿井边是否有|cRXP_PICK_Chest|r|cFFfa9602|r
step
#label Zzarc
.goto 47,37.87,84.33
>>杀死|cRXP_ENEMY_Zzarc'Vul|r并掠夺他的|cRXX_loot_Ogre的Monocle|r
.complete 26685,1 
.target Zzarc' Vul
step
#completewith DeadlyV
.goto 47,34.20,77.47,15 >>退出|cFFfa9602矿井|r
.isOnQuest 25235
step
.goto 47,33.32,74.63,40,0
.goto 47,32.82,68.37,40,0
.goto 47,39.06,70.59,40,0
.goto 47,40.66,74.97,40,0
.goto 47,33.32,74.63,40,0
.goto 47,32.82,68.37,40,0
.goto 47,39.06,70.59,40,0
.goto 47,40.66,74.97
>>杀死|cRXP_ENEMY_Splinter Fist Ogres|r、|cRXP_ENEMY_Splinter Fish Firemonger|r和|cRXD_ENEMY_Sprinter Fisk Warrior|r
.complete 25235,1 
.mob Splinter Fist Ogre
.mob Splinter Fist Firemonger
.mob Splinter Fist Warrior
step
#label DeadlyV
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒菲斯|r, |cRXP_FRIENDLY_守夜人道茨|r
.turnin 26707 >>交任务: |cRXP_FRIENDLY_致命的植物|r
.turnin 26717 >>交任务: |cRXP_FRIENDLY_约根狼人|r
.accept 26719 >>接任务: |cRXP_WARN_给哈里斯大师的货物|r
.goto 47,44.92,67.43
.turnin 25235 >>交任务: |cRXP_FRIENDLY_粗野的沃古尔|r
.goto 47,45.12,67.02
.target Apprentice Fess
.target Watcher Dodds
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Alliance 10-60
#name 4A_北荆棘
#displayname Chapter 4 - Northern Stranglethorn
#next 5A_Duskwood 2
#fresh 30
#veteran
<< Alliance
step
.goto 50,51.86,12.01
.zone 50 >>旅行|cFFfa9602到北Stranglethorn|r
step
#completewith next
.goto 50,47.74,12.69,30,0
.goto 50,47.87,11.86,40 >>前往叛军营地|r
step
#completewith next
.goto 50,47.87,11.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹姆斯·斯蒂莱尔|r
.fp Rebel Camp >>获取叛军营地飞行路线
.target James Stillair
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r, |cRXP_FRIENDLY_卡雷布下士|r, |cRXP_FRIENDLY_尼麦兹修士|r
.accept 26735 >>接任务: |cRXP_WARN_库尔森的命运|r
.goto 50,47.57,10.25
.accept 26740 >>接任务: |cRXP_LOOT_克拉兹克的烹调锅|r
.goto 50,47.10,10.70
.accept 26732 >>接任务: |cRXP_LOOT_库尔森的药物|r
.goto 50,47.25,11.10
.target Lieutenant Doren
.target Corporal Kaleb
.target Brother Nimetz
step
#label Nesingwary
#completewith Camp1
.goto 50,49.36,14.78,40,0
.goto 50,44.26,22.26,40 >>旅行|cFFfa9602到奈辛瓦利的远征|r
step
#sticky
#label Jaq
#requires Nesingwary
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加奎琳娜·德拉米特|r
.goto 50,43.69,23.19,0,0
.vendor 2483 >>|cRXP_WARN_供应商和维修.|r
.target Jaquilina Dramet
.isOnQuest 26685
step
#label Camp1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尼尔·石罐|r, |cRXP_FRIENDLY_赫米特·奈辛瓦里二世|r, |cRXP_FRIENDLY_崔斯里克|r, |cRXP_FRIENDLY_克拉兹克|r
.accept 583 >>接任务: |cRXP_LOOT_欢迎来到丛林|r
.goto 50,44.25,22.12
.turnin 583 >>交任务: |cRXP_FRIENDLY_欢迎来到丛林|r
.accept 194 >>接任务: |cRXP_WARN_猎龙|r
.goto 50,44.18,22.97,10,0
.goto 50,44.02,23.29
.accept 26343 >>接任务: |cRXP_LOOT_供与求|r
.goto 50,43.62,23.40
.turnin 26740 >>交任务: |cRXP_FRIENDLY_克拉兹克的烹调锅|r
.accept 26763 >>接任务: |cRXP_LOOT_风险投资公司|r
.goto 50,43.60,23.13
.target Barnil Stonepot
.target Hemet Nesingwary Jr.
.target Drizzlik
.target Krazek
step
#requires Jaq
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔加丁爵士|r, |cRXP_FRIENDLY_巴尼尔·石罐|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r
.accept 190 >>接任务: |cRXP_WARN_猎豹|r
.goto 50,43.72,22.27,10,0
.goto 50,43.96,22.49,10,0
.goto 50,44.18,22.26
.accept 26269 >>接任务: |cRXP_LOOT_荆棘谷的青山|r
.goto 50,44.25,22.12
.accept 185 >>接任务: |cRXP_WARN_猎虎|r
.goto 50,44.50,22.66
.target Sir S. J. Erlgadin
.target Barnil Stonepot
.target Ajeck Rouack
step
>>杀死|cRXP_ENEMY_河鳄|r并掠夺他们的|cRXD_loot_大河鳄皮肤|r
.complete 26343,1 
.mob River Crocolisk
step
#completewith next
>>杀死|cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
.goto 50,45.97,20.58,40,0
.goto 50,43.88,18.04,40,0
.goto 50,41.96,17.77,40,0
.goto 50,41.02,19.93,40,0
.goto 50,42.49,21.96,40,0
.goto 50,38.92,18.96,40,0
.goto 50,45.97,20.58,40,0
.goto 50,43.88,18.04,40,0
.goto 50,41.96,17.77,40,0
.goto 50,41.02,19.93,40,0
.goto 50,42.49,21.96,40,0
.goto 50,38.92,18.96
>>杀死|cRXP_ENEMY_河鳄|r并掠夺他们的|cRXD_loot_大河鳄皮肤|r
.complete 26343,1 
.mob River Crocolisk
step
.goto 50,37.50,19.98,40,0
.goto 50,39.10,22.12,40,0
.goto 50,40.72,24.52,40,0
.goto 50,42.95,28.10,40,0
.goto 50,44.46,26.17,40,0
.goto 50,46.28,23.20,40,0
.goto 50,37.50,19.98,40,0
.goto 50,39.10,22.12,40,0
.goto 50,40.72,24.52,40,0
.goto 50,42.95,28.10,40,0
.goto 50,44.46,26.17,40,0
.goto 50,46.28,23.20
>>杀死|cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
.goto 50,43.65,23.46
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 185 >>交任务: |cRXP_FRIENDLY_猎虎|r
.accept 186 >>接任务: |cRXP_WARN_猎虎|r
step
.goto 50,43.62,23.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.turnin 26343 >>交任务: |cRXP_FRIENDLY_供与求|r
.accept 26344 >>接任务: |cRXP_LOOT_收集鳄鱼皮|r
.mob Drizzlik
step
#completewith next
.goto 50,46.52,27.94,8,0
.goto 50,46.93,27.81,8,0
>>杀死|cRXP_ENEMY_年轻的黑豹|r。|cRXP-WARN_它们在树和灌木丛周围潜行|r。
.complete 190,1,5 
.mob Young Panther
step
.goto 50,47.19,31.84,30 >>检查|cRXP_ENEMY_Tsul'Kalu|r（稀有）。
.unitscan Tsul'Kalu
.isOnQuest 190
step
.goto 50,48.71,29.33,8,0
.goto 50,49.24,27.9,8,0
.goto 50,48.66,26.77,8,0
.goto 50,48.62,26.9,10,0
>>杀死|cRXP_ENEMY_年轻的黑豹|r.|cRXP-WARN_它们在树和灌木丛中潜行|r
.complete 190,1,5 
.mob Young Panther
step
#completewith next
.goto 50,50.67,29.62,35,0
.goto 50,52.15,28.82,35,0
.goto 50,49.99,33.55,35,0
.goto 50,51.20,36.00,35,0
>>杀死|cRXP_ENEMY_Snapjaw鳄鱼|r|cRXP_WARN_（即使它们在水下）|r并掠夺它们的|cRXD_loot_ Snapjaw鳄皮|r
.complete 26344,1 
.mob Snapjaw Crocolisk
step
#veteran
.goto 50,46.00,40.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steven Lisbane.|r
>>|cRXP_WARN_如果您没有25级宠物战斗宠物，请跳过此步骤|r
.accept 31852 >>接任务: |cRXP_WARN_史蒂文·里斯班|r
.target Steven Lisbane
.isQuestTurnedIn 31903,31889,31891,31902
step
#veteran
.goto 50,46.00,40.45
>>在宠物战中击败|cRXP_ENEMY_Steven|r。
.complete 31852,1 
.target Steven Lisbane
.skipgossip 63194,1
.isOnQuest 31852
step
#veteran
.goto 50,46.00,40.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steven Lisbane.|r
.turnin 31852 >>Turn in Steven Lisbane
.target Steven Lisbane
.isQuestTurnedIn 31852
step
#veteran
.goto 50,40.88,39.16,40,0
.goto 50,41.64,40.66,40,0
.goto 50,43.33,40.88,40,0
.goto 50,43.16,43.43,40,0
.goto 50,43.78,43.27,30 >>检查|cRXP_ENEMY_Gluggle|r（稀有）。
.unitscan Gluggl
.isQuestTurnedIn 31903,31889,31891,31902
step
#label CrocoSkin
#completewith Mahamba
.goto 50,50.13,39.89,35,0
.goto 50,51.70,39.86,35,0
.goto 50,54.32,38.65,35,0
>>杀死|cRXP_ENEMY_Snapjaw鳄鱼|r|cRXP_WARN_（即使它们在水下）|r并掠夺它们的|cRXD_loot_Snapjaw鳄鱼皮|r
.complete 26344,1 
.mob Snapjaw Crocolisk
.isQuestTurnedIn 31903,31889,31891,31902
step
#label CrocoSkin
#completewith next
.goto 50,50.67,29.62,35,0
.goto 50,52.15,28.82,35,0
.goto 50,49.99,33.55,35,0
.goto 50,51.20,36.00,35,0
.goto 50,50.13,39.89,35,0
.goto 50,51.70,39.86,35,0
.goto 50,54.32,38.65,35,0
>>杀死|cRXP_ENEMY_Snapjaw鳄鱼|r|cRXP_WARN_（即使它们在水下）|r并掠夺它们的|cRXD_loot_Snapjaw鳄鱼皮|r
.complete 26344,1 
.mob Snapjaw Crocolisk
.isQuestAvailable 31903
step
#label Mahamba
#completewith CrocoSkin
.goto 50,54.29,30.43,30 >>检查|cRXP_ENEMY_Mahamba|r（罕见）。
.unitscan Mahamba
.isOnQuest 26344
step
#requires Mahamba
.goto 50,50.67,29.62,35,0
.goto 50,52.15,28.82,35,0
.goto 50,49.99,33.55,35,0
.goto 50,51.20,36.00,35,0
.goto 50,50.13,39.89,35,0
.goto 50,51.70,39.86,35,0
.goto 50,54.32,38.65
>>杀死|cRXP_ENEMY_Snapjaw鳄鱼|r|cRXP_WARN_（即使它们在水下）|r并掠夺它们的|cRXD_loot_Snapjaw鳄鱼皮|r
.complete 26344,1 
.mob Snapjaw Crocolisk
step
#completewith next
>>杀死|cRXP_ENEMY_Venture Co.地质学家|r和|cRXX_ENEMY_Venture Co.碎纸机|r，并掠夺他们的|cRXD_loot_Tumbled水晶|r
>>|cRXP_WARN_检查是否有|cRXP_PICK_Chests|r可以在伐木场和石油钻机上产卵|r
.complete 26763,1 
.mob Venture Co. Geologist
.mob Venture Co. Shredder
step
.goto 50,54.29,30.43,30 >>检查|cRXP_ENEMY_Mahamba|r（罕见）。
>>|cRXP_WARN_如果你已经杀了他，跳过这一步|r
.unitscan Mahamba
.isOnQuest 26344
step
#label VentureCo
>>杀死|cRXP_ENEMY_Venture Co.地质学家|r和|cRXX_ENEMY_Venture Co.碎纸机|r并掠夺他们的|cRXP_loot_翻滚晶体|r
>>|cRXP_WARN_检查是否有|cRXP_PICK_Chests|r可以在伐木场和石油钻机上产卵|r
.goto 50,54.08,33.65,15,0
.goto 50,54.48,34.08,15,0
.goto 50,54.43,35.29,10,0
.goto 50,55.35,35.7,15,0
.goto 50,55.87,42.43,40,0
.goto 50,59.59,36.22,40,0
.goto 50,55.29,30.48,40,0
.goto 50,55.87,42.43,40,0
.goto 50,59.59,36.22,40,0
.goto 50,55.29,30.48
.complete 26763,1 
.mob Venture Co. Geologist
.mob Venture Co. Shredder
step
.goto 50,56.39,28.08,40,0
.goto 50,58.47,26.80,40,0
.goto 50,60.65,30.98,40,0
.goto 50,61.80,31.60,40,0
.goto 50,60.96,25.20,40,0
.goto 50,56.39,28.08,40,0
.goto 50,58.47,26.80,40,0
.goto 50,60.65,30.98,40,0
.goto 50,61.80,31.60,40,0
.goto 50,60.96,25.20
>>杀死|cRXP_ENEMY_Stranglethorn Tigers|r
.complete 186,1 
.mob Stranglethorn Tiger
step
.goto 50,57.92,23.65
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 186 >>交任务: |cRXP_FRIENDLY_猎虎|r
.accept 187 >>接任务: |cRXP_WARN_猎虎|r
step
#completewith next
>>杀死|cRXP_ENEMY_Kurzen Medicine Men|r和|cRXD_ENEMY_Kurzen Jungle Fighters |r，并掠夺他们的|cRXP_loot_ Jungle Remedies|r
.complete 26732,1 
.accept 26738 >>接任务: |cRXP_WARN_刚刚孵化|r
.mob Kurzen Medicine Man
.mob Kurzen Jungle Fighter
step
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Scrolls|r |cFFfa9602on the ground.|r
.complete 26735,2 
.goto 50,57.92,23.66
.complete 26735,1 
.goto 50,57.89,22.86
step
.goto 50,58.82,23.14,15,0
.goto 50,57.66,21.06,40,0
.goto 50,56.87,20.28,15,0
.goto 50,56.47,20.31,8,0
.goto 50,56.84,20.73,8,0
.goto 50,56.51,20.25,8,0
.goto 50,58.38,18.57,15,0
.goto 50,56.74,22.87,40,0
.goto 50,58.82,23.14,15,0
.goto 50,57.66,21.06,40,0
.goto 50,56.87,20.28,15,0
.goto 50,56.47,20.31,8,0
.goto 50,56.84,20.73,8,0
.goto 50,56.51,20.25,8,0
.goto 50,58.38,18.57,15,0
.goto 50,56.74,22.87
>>杀死|cRXP_ENEMY_Kurzen Medicine Men|r和|cRXD_ENEMY_Kurzen Jungle Fighters |r。掠夺他们的|cRXP_Loot_Jungle补救措施|r
>>|cRXP_WARN_检查房子楼上或楼下是否有|cRXP_PICK_Chest|r|r
.complete 26732,1 
.mob Kurzen Medicine Man
.mob Kurzen Jungle Fighter
step
.goto 50,52.56,23,00
>>|cRXP_WARN_从任务日志的弹出窗口中选择接受任务的选项。|r
.accept 26738 >>接任务: |cRXP_WARN_刚刚孵化|r
step
.goto 50,55.65,21.57,10,0
.goto 50,54.58,23.24,10,0
.goto 50,55.10,24.59,10,0
.goto 50,54.69,26.78,10,0
.goto 50,53.30,25.50,10,0
.goto 50,52.56,23,00,10,0
.goto 50,55.65,21.57,10,0
.goto 50,54.58,23.24,10,0
.goto 50,55.10,24.59,10,0
.goto 50,54.69,26.78,10,0
.goto 50,53.30,25.50,10,0
.goto 50,52.56,23,00
>>杀死|cRXP_ENEMY_年轻的黑豹|r.|cRXP-WARN_它们在树和灌木丛中潜行|r
.complete 190,1 
.mob Young Panther
step
.goto 50,47.58,10.25
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 190 >>交任务: |cRXP_FRIENDLY_猎豹|r
.accept 191 >>接任务: |cRXP_WARN_猎豹|r
step
#completewith next
.goto 50,49.44,14.20,30,0
.goto 50,47.74,12.69,30,0
.goto 50,47.57,10.25,40 >>返回|cFFfa9602叛军营地|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多伦上尉|r, |cRXP_FRIENDLY_塞斯曼下士|r, |cRXP_FRIENDLY_尼麦兹修士|r
.turnin 26735 >>交任务: |cRXP_FRIENDLY_库尔森的命运|r
.accept 26736 >>接任务: |cRXP_WARN_逃离疯狂|r
.goto 50,47.57,10.25
.turnin 26738 >>交任务: |cRXP_FRIENDLY_刚刚孵化|r
.accept 26739 >>接任务: |cRXP_WARN_我想她饿了|r
.goto 50,46.98,10.84
.turnin 26732 >>交任务: |cRXP_FRIENDLY_库尔森的药物|r
.accept 26733 >>接任务: |cRXP_WARN_比对样本|r
.goto 50,47.25,11.10
.target Lieutenant Doren
.target Corporal Sethman
.target Brother Nimetz
step
#completewith next
.goto 50,47.74,12.69,30,0
.goto 50,49.44,14.20,30 >>退出|cFFfa9602叛军营地|r
step
.goto 50,56.87,20.28,15,0
.goto 50,56.47,20.31,8,0
.goto 50,56.84,20.73,8,0
.goto 50,56.41,20.29
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cage|r |cFFfa9602upstairs in the house.|r
>>|cRXP_WARN_检查房子楼上或楼下是否有|cRXP_PICK_Chest|r|r
.complete 26736,1 
.complete 26736,2 
.complete 26736,3 
step
.goto 50,60.48,21.98,40,0
.goto 50,61.73,19.96,40,0
.goto 50,63.63,18.48,40,0
.goto 50,64.67,21.11,40,0
.goto 50,63.17,22.43,40,0
.goto 50,61.43,22.78,40,0
.goto 50,63.44,24.93,40,0
.goto 50,63.65,31.49,40,0
.goto 50,60.48,21.98,40,0
.goto 50,61.73,19.96,40,0
.goto 50,63.63,18.48,40,0
.goto 50,64.67,21.11,40,0
.goto 50,63.17,22.43,40,0
.goto 50,61.43,22.78,40,0
.goto 50,63.44,24.93,40,0
.goto 50,63.65,31.49
>>|cRXP_WARN_使用|r|T132835:0|t[Lashtail Raptor Egg Fragment]|cRXP_WARN_to召唤一个|r|cRXP-FRIENDLY_Hatchling。|r
>>杀死|cRXP_ENEMY_Crystal Spine Basilisk|r。掠夺他们的|cRXD_Loot_Blood|r。让|cRXP_FRIENDLY_Hatching|r吃掉他们的尸体，换取他们的|c|r
.complete 26739,1 
.complete 26733,1 
.mob Crystal Spine Basilisk
.use 58165
step
#completewith next
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
#completewith next
.goto 50,49.44,14.20,30,0
.goto 50,47.74,12.69,30,0
.goto 50,47.57,10.25,40 >>返回|cFFfa9602叛军营地|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼麦兹修士|r, |cRXP_FRIENDLY_塞斯曼下士|r, |cRXP_FRIENDLY_多伦上尉|r
.turnin 26733 >>交任务: |cRXP_FRIENDLY_比对样本|r
.accept 26734 >>接任务: |cRXP_WARN_疯狂的源头|r
.goto 50,47.25,11.10
.turnin 26739 >>交任务: |cRXP_FRIENDLY_我想她饿了|r
.accept 26744 >>接任务: |cRXP_WARN_深深扎根|r
.goto 50,46.98,10.84
.turnin 26736 >>交任务: |cRXP_FRIENDLY_逃离疯狂|r
.accept 26737 >>接任务: |cRXP_WARN_消灭库尔森的后继者|r
.goto 50,47.57,10.25
.target Brother Nimetz
.target Corporal Sethman
.target Lieutenant Doren
step
.goto 50,47.98,12.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔林·燃翎|r
>>|cRXP_WARN_如果他不在这里，要么重新出发，要么进入Duskwood并回来|r
.accept 26742 >>接任务: |cRXP_LOOT_血顶巨魔的魔法|r
.target Berrin Burnquill
step
#completewith next
.goto 50,47.74,12.69,30,0
.goto 50,49.44,14.20,30 >>退出|cFFfa9602叛军营地|r
step
#completewith next
.goto 50,59.53,18.52,40 >>进入|cFFfa9602洞穴|r
step
#completewith Esquivel
>>杀死洞穴中的所有|cRXP_ENEMY_Kurzen|r|cFFfa9602 |r|cRXP_WARN_EXCEPT指挥官|r，并掠夺他们获得|cRXD_loot_Blue Stone|r
.complete 26734,1 
.mob Kurzen Headshrinker
.mob Kurzen Witch Doctor
.mob Kurzen Elite
.mob Kurzen Shadow Hunter
.mob Kurzen Subchief
step
.goto 50,60.48,17.05,20,0
.goto 50,62.42,17.61,20,0
.goto 50,63.22,16.90,20,0
.goto 50,63.75,16.74
>>杀死|cRXP_ENEMY_首领安德斯|r
>>|cRXP_WARN_小心洞穴里的隐形突击队员，因为他们眩晕了。|r
.complete 26737,1 
.mob Chief Anders
step
.goto 50,63.11,17.66,8,0
.goto 50,62.86,16.66,15,0
.goto 50,62.45,14.07
>>杀死|cRXP_ENEMY_高卢斯酋长|r
.complete 26737,2 
.mob Chief Gaulus
step
.goto 50,64.09,19.02,20,0
.goto 50,65.78,17.13
>>杀死|cRXP_ENEMY_Chief Miranda|r
>>|cRXP_WARN_检查桶和板条箱附近是否有|cRXP_PICK_Chest|r。|r
.complete 26737,3 
.mob Chief Miranda
step
#label Esquivel
.goto 50,64.20,13.36,20,0
.goto 50,66.09,11.73
>>杀死|cRXP_ENEMY_Chief Esquivel|r
>>|cRXP_WARN_检查他附近是否有|cRXP_PICK_Chest|r|r
.complete 26737,4 
.mob Chief Esquivel
step
.goto 50,59.53,18.52,40,0
.goto 50,63.75,16.74,20,0
.goto 50,62.45,14.07,20,0
.goto 50,65.78,17.13,20,0
.goto 50,66.09,11.73,20,0
.goto 50,59.53,18.52,40,0
.goto 50,63.75,16.74,20,0
.goto 50,62.45,14.07,20,0
.goto 50,65.78,17.13,20,0
.goto 50,66.09,11.73
>>杀死洞穴中的所有|cRXP_ENEMY_Kurzen|r|cFFfa9602 |r|cRXP_WARN_EXCEPT指挥官|r，并掠夺他们获得|cRXD_loot_Blue Stone|r
.complete 26734,1 
.mob Kurzen Headshrinker
.mob Kurzen Witch Doctor
.mob Kurzen Elite
.mob Kurzen Shadow Hunter
.mob Kurzen Subchief
step
.goto 50,60.48,21.98,40,0
.goto 50,61.73,19.96,40,0
.goto 50,63.63,18.48,40,0
.goto 50,64.67,21.11,40,0
.goto 50,63.17,22.43,40,0
.goto 50,61.43,22.78,40,0
.goto 50,63.44,24.93,40,0
.goto 50,63.65,31.49,40,0
.goto 50,60.48,21.98,40,0
.goto 50,61.73,19.96,40,0
.goto 50,63.63,18.48,40,0
.goto 50,64.67,21.11,40,0
.goto 50,63.17,22.43,40,0
.goto 50,61.43,22.78,40,0
.goto 50,63.44,24.93,40,0
.goto 50,63.65,31.49
>>杀死|cRXP_ENEMY_Crystal Spine Basilisk|r并掠夺它们以获取|cRXP_loot_Page 14|r
.complete 26269,1 
.mob Crystal Spine Basilisk
step
#completewith next
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
#sticky
#label Jaq2
.goto 50,43.69,23.19,0,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加奎琳娜·德拉米特|r
.vendor 2483 >>供应商和维修|cRXP_WARN_在此处修复非常重要|r
.target Jaquilina Dramet
.isOnQuest 26737
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尼尔·石罐|r, |cRXP_FRIENDLY_克拉兹克|r, |cRXP_FRIENDLY_崔斯里克|r
.turnin 26269 >>交任务: |cRXP_FRIENDLY_荆棘谷的青山|r
.goto 50,44.25,22.12
.turnin 26763 >>交任务: |cRXP_FRIENDLY_风险投资公司|r
.accept 26765 >>接任务: |cRXP_WARN_向卡雷布下士回报|r
.goto 50,43.60,23.13
.turnin 26344 >>交任务: |cRXP_FRIENDLY_收集鳄鱼皮|r
.goto 50,43.62,23.40
.target Barnil Stonepot
.target Krazek
.target Drizzlik
step
#requires Jaq2
#completewith next
>>杀死|cRXP_ENEMY_Elder Stranglethorn Tigers|r
>>|cRXP_WARN_不要杀辛德尔如果你看到她|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
#requires Jaq2
.goto 50,36.24,28.89,30 >>检查|cRXP_ENEMY_Pogeyan |r（稀有）。
.unitscan Pogeyan
.isOnQuest 191
step
.goto 50,36.39,32.58,40,0
.goto 50,37.61,33.55,40,0
.goto 50,37.17,36.85,40,0
.goto 50,38.56,36.44,40,0
.goto 50,39.82,32.34,40,0
.goto 50,38.58,28.25,40,0
.goto 50,36.39,32.58,40,0
.goto 50,37.61,33.55,40,0
.goto 50,37.17,36.85,40,0
.goto 50,38.56,36.44,40,0
.goto 50,39.82,32.34,40,0
.goto 50,38.58,28.25
>>杀死|cRXP_ENEMY_Elder Stranglethorn Tigers|r
>>|cRXP_WARN_不要杀辛德尔如果你看到她|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
.goto 50,38.48,32.59
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 187 >>交任务: |cRXP_FRIENDLY_猎虎|r
.accept 188 >>接任务: |cRXP_LOOT_猎虎|r
step
.goto 50,40.47,31.78,30,0
.goto 50,38.50,32.47,30,0
.goto 50,37.26,32.81,30,0
.goto 50,37.48,29.60,30,0
.goto 50,40.47,31.78,30,0
.goto 50,38.50,32.47,30,0
.goto 50,37.26,32.81,30,0
.goto 50,37.48,29.60
>>杀死|cRXP_ENEMY_Sin'Dall|r并为她掠夺|cRXX_loot_Paw of Sin'Dall|r
>>|cRXP_WARN_她立即在山的东面重生，然后在山的顶部巡逻，然后在它的西面、北面或东面巡逻|r
.complete 188,1 
.unitscan Sin'Dall
step
.goto 50,36.63,27.97,40,0
.goto 50,36.13,30.34,40,0
.goto 50,32.22,26.43,40,0
.goto 50,33.77,25.57,40,0
.goto 50,36.44,22.90,40,0
.goto 50,33.86,18.86,40,0
.goto 50,31.35,20.62,40,0
.goto 50,36.63,27.97,40,0
.goto 50,36.13,30.34,40,0
.goto 50,32.22,26.43,40,0
.goto 50,33.77,25.57,40,0
.goto 50,36.44,22.90,40,0
.goto 50,33.86,18.86,40,0
.goto 50,31.35,20.62
>>杀死|cRXP_ENEMY_Panthers|r
.complete 191,1 
.mob Panther
step
.goto 50,31.13,30.25
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 191 >>交任务: |cRXP_FRIENDLY_猎豹|r
step
.goto 50,31.23,28.02,40,0
.goto 50,30.31,30.27,40,0
.goto 50,31.66,33.19,40,0
.goto 50,32.11,29.87,40,0
.goto 50,28.93,30.25,40,0
.goto 50,25.03,29.71,40,0
.goto 50,31.23,28.02,40,0
.goto 50,30.31,30.27,40,0
.goto 50,31.66,33.19,40,0
.goto 50,32.11,29.87,40,0
.goto 50,28.93,30.25,40,0
.goto 50,25.03,29.71
>>杀死|cRXP_ENEMY_Stranglethorn猛禽|r
.complete 194,1 
.mob Stranglethorn Raptor
step
.goto 50,30.86,29.66
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 194 >>交任务: |cRXP_FRIENDLY_猎龙|r
.accept 195 >>接任务: |cRXP_WARN_猎龙|r
step
#requires Prowess
#label BloodscalpT
#completewith BloodTablet
>>杀死|cRXP_ENEMY_Bloodscap萨满|r并掠夺他们的|cRXX_loot_ Bloodscapt图腾|r
.complete 26742,1 
.mob Bloodscalp Shaman
step
#requires BloodscalpT
#completewith next
.goto 50,33.64,36.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Hatchling|r |cFFfa9602next to you.|r
.accept 26745 >>接任务: |cRXP_WARN_心爱的颅骨|r
.target Lashtail Hatchling
step
#requires Prowess
#label BloodTablet
.goto 50,33.64,36.91
>>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Tablet|r |cFFfa9602on the ground.|r
>>|cRXP_WARN_检查废墟附近是否有|cRXP_PICK_Chest|r|r
.complete 26744,1 
step
.goto 50,34.49,35.89,40,0
.goto 50,33.68,33.98,40,0
.goto 50,35.49,31.58,40,0
.goto 50,35.89,37.88,40,0
.goto 50,33.73,38.03,40,0
.goto 50,34.49,35.89,40,0
.goto 50,33.68,33.98,40,0
.goto 50,35.49,31.58,40,0
.goto 50,35.89,37.88,40,0
.goto 50,33.73,38.03
>>杀死|cRXP_ENEMY_Bloodscap萨满|r并掠夺他们的|cRXX_loot_ Bloodscapt图腾|r
>>|cRXP_WARN_检查废墟附近是否有|cRXP_PICK_Chest|r。|r
.complete 26742,1 
.mob Bloodscalp Shaman
step
.goto 50,33.64,36.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Hatchling|r |cFFfa9602next to you.|r
.accept 26745 >>接任务: |cRXP_WARN_心爱的颅骨|r
.target Lashtail Hatchling
step
#completewith next
>>杀死|cRXP_ENEMY_Lashtail猛禽|r
.complete 195,1 
.mob Lashtail Raptor
step
.goto 50,40.88,39.16,40,0
.goto 50,41.64,40.66,40,0
.goto 50,43.33,40.88,40,0
.goto 50,43.16,43.43,40,0
.goto 50,43.78,43.27,30 >>检查|cRXP_ENEMY_Gluggle|r（稀有）。
.unitscan Gluggl
.isOnQuest 26734
step
#completewith next
.goto 50,41.11,45.48,40,0
.goto 50,43.15,47.39,40,0
>>杀死|cRXP_ENEMY_Lashtail猛禽|r
.complete 195,1 
.mob Lashtail Raptor
step
.goto 50,47.33,44.85,40,0
.goto 50,45.79,47.50,40,0
.goto 50,46.05,51.59,40,0
.goto 50,45.23,53.03,40,0
.goto 50,45.55,54.89,30 >>检查|cRXP_ENEMY_Roloch|r（罕见）。
.unitscan Roloch
.isOnQuest 26734
step
.goto 50,48.87,46.00,40,0
.goto 50,49.48,39.87,40,0
.goto 50,47.92,36.54,40,0
.goto 50,41.11,45.48,40,0
.goto 50,43.15,47.39,40,0
.goto 50,48.87,46.00,40,0
.goto 50,49.48,39.87,40,0
.goto 50,47.92,36.54,40,0
.goto 50,41.11,45.48,40,0
.goto 50,43.15,47.39
>>杀死|cRXP_ENEMY_Lashtail猛禽|r
.complete 195,1 
.mob Lashtail Raptor
step
.goto 50,47.19,31.84
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 195 >>交任务: |cRXP_FRIENDLY_猎龙|r
.accept 196 >>接任务: |cRXP_WARN_猎龙|r
step
.goto 50,47.19,31.84,40 >>检查|cRXP_ENEMY_Tsul'Kalu|r（稀有）。
.unitscan Tsul'Kalu
.isOnQuest 26734
step
#sticky
#label Jaq3
.goto 50,43.69,23.19,0,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加奎琳娜·德拉米特|r
.vendor 2483 >>供应商和维修
.target Jaquilina Dramet
.isOnQuest 26685
step
.goto 50,44.50,22.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r
.turnin 188 >>交任务: |cRXP_FRIENDLY_猎虎|r
.target Ajeck Rouack
step
#requires Jaq3
#completewith next
.goto 50,49.44,14.20,30,0
.goto 50,47.74,12.69,30,0
.goto 50,47.25,11.10,40 >>返回|cFFfa9602叛军营地|r
step
#requires Jaq3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Brother Nimetzz, |cRXP_FRIENDLY_塞斯曼下士|r, |cRXP_FRIENDLY_卡雷布下士|r, |cRXP_FRIENDLY_奥斯伯恩·奥布诺提斯|r, |cRXP_FRIENDLY_多伦上尉|r, |cRXP_FRIENDLY_贝尔林·燃翎|r
.turnin 26734 >>交任务: |cRXP_FRIENDLY_疯狂的源头|r
.goto 50,47.25,11.10
.turnin 26744 >>交任务: |cRXP_FRIENDLY_深深扎根|r
.goto 50,46.98,10.84
.turnin 26765 >>交任务: |cRXP_FRIENDLY_向卡雷布下士回报|r
.goto 50,47.10,10.70
.turnin 26745 >>交任务: |cRXP_FRIENDLY_心爱的颅骨|r
.goto 50,47.14,10.56
.turnin 26737 >>交任务: |cRXP_FRIENDLY_消灭库尔森的后继者|r
.goto 50,47.57,10.25
.turnin 26742 >>交任务: |cRXP_FRIENDLY_血顶巨魔的魔法|r
.goto 50,47.98,12.01
.target Brother Nimetz
.target Corporal Sethman
.target Corporal Kaleb
.target Osborn Obnoticus
.target Lieutenant Doren
.target Berrin Burnquill
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Alliance 10-60
#name 5A_Duskwood 2
#displayname Chapter 5 - Duskwood [2]
#next 6A_Redridge Mountains 2
#fresh 30
#veteran
<<Alliance
step
#completewith next
.zone 47 >>乘坐|cFFfa9602前往Duskwood的捷径（可选）|r
.link https://www.youtube.com/watch?v=PLrBG2G5dKs >>单击此处
.zoneskip 50,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾丽辛顿修女|r, |cRXP_FRIENDLY_基特斯|r, |cRXP_FRIENDLY_奥莉芙·哈里斯|r
.accept 26777 >>接任务: |cRXP_WARN_抚慰灵魂|r
.goto 47,20.03,57.82
.accept 26721 >>接任务: |cRXP_WARN_基特斯的虫子|r
.goto 47,18.62,58.36
.turnin 26719 >>交任务: |cRXP_FRIENDLY_给哈里斯大师的货物|r
.accept 26720 >>接任务: |cRXP_WARN_我们无法解除的诅咒|r
.goto 47,18.32,57.67
.target Sister Elsington
.target Jitters
.target Oliver Harris
step
#completewith LurkingW
>>在|cRXP_FRIENDLY_Forlorn Spirits上使用|T134547:0|t[Holy Censer]|r
.complete 26777,1 
.mob Forlon Spirit
.use 60225
step
#completewith next
.goto 47,21.65,72.34,8,0
.goto 47,21.29,72.73,8 >>转到|cFFfa9602马厩旁边|r
step
#label LurkingW
.goto 47,21.61,73.15
>>|cRXP_WARN_伤害产生20%或更少生命值的蠕虫，然后使用|r|T134825:0|t[哈里斯安瓿]|cRXP_WARN_on。|r
.complete 26720,1 
.mob Lurking Worgen
.use 60206
step
.goto 47,19.20,68.25,40,0
.goto 47,19.95,64.85,40,0
.goto 47,23.23,66.58,40,0
.goto 47,25.13,70.24,40,0
.goto 47,22.85,72.11,40,0
.goto 47,19.20,68.25,40,0
.goto 47,19.95,64.85,40,0
.goto 47,23.23,66.58,40,0
.goto 47,25.13,70.24,40,0
.goto 47,22.85,72.11
>>在|cRXP_FRIENDLY_Forlorn Spirits上使用|T134547:0|t[Holy Censer]|r
.complete 26777,1 
.mob Forlon Spirit
.use 60225
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莉芙·哈里斯|r, |cRXP_FRIENDLY_艾丽辛顿修女|r
.turnin 26720 >>交任务: |cRXP_FRIENDLY_我们无法解除的诅咒|r
.accept 26760 >>接任务: |cRXP_WARN_异想天开|r
.timer 58,Cry For The Moon RP
.goto 47,18.32,57.67
.turnin 26777 >>交任务: |cRXP_FRIENDLY_抚慰灵魂|r
.goto 47,20.03,57.82
.target Oliver Harris
.target Sister Elsington
step
.goto 47,20.26,58.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威尔金森|r
.vendor 44114 >>供应商垃圾箱
.target Wilkinson
.isOnQuest 26760
step
.goto 47,21.08,56.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·谢尔比|r
.fp Raven Hill >>获取Raven Hill飞行路线
.target John Shelby
step
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_如果你在计时器到期后没有获得积分，放弃“为月亮哭泣”，再次接受任务|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莉芙·哈里斯|r, |cRXP_FRIENDLY_斯温·约根|r, |cRXP_FRIENDLY_艾丽辛顿修女|r
.complete 26760,1 
.turnin 26760 >>交任务: |cRXP_FRIENDLY_异想天开|r
.goto 47,18.32,57.67
.accept 26723 >>接任务: |cRXP_WARN_摩本特·费尔的命运|r
.goto 47,18.34,58.06
.accept 26778 >>接任务: |cRXP_WARN_亡者的哭泣|r
.goto 47,20.03,57.82
.target Oliver Harris
.target Sven Yorgen
.target Sister Elsington
step
.goto 47,31.66,50.31,50,0
.goto 47,37.52,25.18,50,0
.goto 47,30.98,31.14,50,0
.goto 47,31.66,50.31,50,0
.goto 47,37.52,25.18,50,0
.goto 47,30.98,31.14
>>杀死|cRXP_ENEMY_黑寡妇|r并掠夺他们的|cRXX_loot_寡妇毒液袋|r
>>|cRXP_WARN_它们有时会在战斗中消失1-2秒|r
.complete 26721,1 
.mob Black Widow
step
#completewith EChest
+|cRXP_WARN_避免Mor'Ladim在附近巡逻|r
.unitscan Mor'Ladim
step
.goto 47,17.72,29.05
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_A Weathered Grave.|r
.accept 26793 >>接任务: |cRXP_LOOT_饱经风霜的墓碑|r
step
#completewith EChest
>>杀死|cRXP_ENEMY_瘟疫传播者|r，|cRXD_ENEMY_食肉者|r、|cRXP_ENEMY_Rotted Ones|r和|cRXP_ENEMY_Bone Chewers|r |cRXT_WARN_不要专注于此|r
.complete 26778,1 
.mob Plague Spreader
.mob Flesh Eater
.mob Rotted One
.mob Bone Chewer
step
.goto 47,17.49,33.40,8,0
.goto 47,17.44,34.17,5,0
.goto 47,16.97,33.42
>>|cRXP_WARN_检查一个|cRXP_PICK_Chest|r|r，并掠夺地上的|cRXP _PICK_Hat|r |cFFfa9602房子旁边的|r|cRXP_PICK_Morbent的残骸。|r
.complete 26723,1 
step
#label EChest
.goto 47,19.88,44.53,20 >>检查|cRXP_FRIENDLY_Eric后面是否有|cRXP_PICK_Chest|r|r
.isOnQuest 26723
step
#veteran
.goto 47,19.88,44.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eric Davidson.|r
>>|cRXP_WARN_如果您没有25级宠物战斗宠物，请跳过此步骤|r
.accept 31850 >>接任务: |cRXP_WARN_埃里克·戴维森|r
.target Eric Davidson
.isQuestTurnedIn 31903,31889,31891,31902
step
#veteran
.goto 47,19.88,44.61
>>在宠物战中击败|cRXP_ENEMY_Eric |r。
.complete 31850,1 
.target Eric Davidson
.skipgossip 65655,1
.isOnQuest 31850
step
#veteran
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 31850 >>Turn in Questlog
.isQuestComplete 31850
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r, |cRXP_FRIENDLY_基特斯|r, |cRXP_FRIENDLY_艾丽辛顿修女|r
.turnin 26723 >>交任务: |cRXP_FRIENDLY_摩本特·费尔的命运|r
.accept 26724 >>接任务: |cRXP_WARN_潜藏的巫妖|r
.goto 47,18.34,58.06
.turnin 26721 >>交任务: |cRXP_FRIENDLY_基特斯的虫子|r
.accept 26787 >>接任务: |cRXP_WARN_熊脑子|r
.goto 47,18.62,58.36
.turnin 26724 >>交任务: |cRXP_FRIENDLY_潜藏的巫妖|r
.accept 26725 >>接任务: |cRXP_WARN_在圣光的指引下|r
.turnin 26778 >>交任务: |cRXP_FRIENDLY_亡者的哭泣|r
.goto 47,20.03,57.82
.target Sven Yorgen
.target Jitters
.target Sister Elsington
.isQuestComplete 26778
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r, |cRXP_FRIENDLY_基特斯|r, |cRXP_FRIENDLY_艾丽辛顿修女|r
.turnin 26723 >>交任务: |cRXP_FRIENDLY_摩本特·费尔的命运|r
.accept 26724 >>接任务: |cRXP_WARN_潜藏的巫妖|r
.goto 47,18.34,58.06
.turnin 26721 >>交任务: |cRXP_FRIENDLY_基特斯的虫子|r
.accept 26787 >>接任务: |cRXP_WARN_熊脑子|r
.goto 47,18.62,58.36
.turnin 26724 >>交任务: |cRXP_FRIENDLY_潜藏的巫妖|r
.accept 26725 >>接任务: |cRXP_WARN_在圣光的指引下|r
.goto 47,20.03,57.82
.target Sven Yorgen
.target Jitters
.target Sister Elsington
step
#completewith CatacombsX
>>杀死|cRXP_ENEMY_瘟疫传播者|r，|cRXD_ENEMY_食肉者|r、|cRXX_ENEMY_腐烂者|r和|cRXP_ENEMY_骨咀嚼者|r
.complete 26778,1 
.mob Plague Spreader
.mob Flesh Eater
.mob Rotted One
.mob Bone Chewer
step
.goto 47,23.45,35.41
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Lightforged Rod|r |cFFfa9602on the ground.|r
.turnin 26725 >>交任务: |cRXP_FRIENDLY_在圣光的指引下|r
.accept 26753 >>接任务: |cRXP_WARN_亡者的大厅|r
step
#label CatacombsX
#completewith next
.goto 47,23.94,34.80,10,0
.goto 47,25.68,33.76,15,0
.goto 47,25.46,31.50,15,0
.goto 47,23.47,27.99,15,0
.goto 47,20.37,27.46,20 >>深入|cFFfa9602地下墓穴|r
step
.goto 47,20.37,27.46
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Lightforged Arch|r |cFFfa9602on the ground.|r
.turnin 26753 >>交任务: |cRXP_FRIENDLY_亡者的大厅|r
.accept 26722 >>接任务: |cRXP_WARN_深埋|r
step
#completewith next
.goto 47,20.33,26.81,10,0
.goto 47,19.47,26.81,10,0
.goto 47,18.53,24.94,10,0
.goto 47,18.01,25.37,10 >>穿过墙上的洞，深入地下|cFFfa9602进入地下墓穴|r
step
.goto 47,18.01,25.37
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Lightforged Crest|r |cFFfa9602on the ground.|r
.turnin 26722 >>交任务: |cRXP_FRIENDLY_深埋|r
.accept 26754 >>接任务: |cRXP_WARN_摩本特的克星|r
step
#completewith next
.goto 47,17.33,26.27,10,0
.goto 47,18.16,27.63,10,0
.goto 47,17.63,28.45,10 >>深入|cFFfa9602地下墓穴的秘密部分|r
step
#completewith next
.goto 47,16.53,31.06
.cast 82130 >>|cRXP_WARN_使用|r|T135142:0|t[Morbent's Bane]|cRXP_WARN_on|r|cRXP_ENEMY_Morbent Fel|r|cRXP_WARN_to削弱他。|r
.mob Morbent Fel
.use 60212
step
.goto 47,16.53,31.06
>>杀死|cRXP_ENEMY_Morbent Fel|r
.complete 26754,1 
.mob Morbent Fel
.use 60212
step
#completewith CoalB
.goto 47,16.18,33.19,15,0
.goto 47,15.31,38.48,15,0
.goto 47,16.09,38.78,15 >>从另一侧退出地下墓穴|cFFfa9602|r
step
.goto 47,20.72,35.33,40,0
.goto 47,22.70,32.95,40,0
.goto 47,16.20,33.17,40,0
.goto 47,14.27,41.46,40,0
.goto 47,20.72,35.33,40,0
.goto 47,22.70,32.95,40,0
.goto 47,16.20,33.17,40,0
.goto 47,14.27,41.46
>>杀死|cRXP_ENEMY_瘟疫传播者|r，|cRXD_ENEMY_食肉者|r、|cRXX_ENEMY_腐烂者|r和|cRXP_ENEMY_骨咀嚼者|r
>>|cRXP_WARN_避免Mor'Ladim在附近巡逻|r
.complete 26778,1 
.mob Plague Spreader
.mob Flesh Eater
.mob Rotted One
.mob Bone Chewer
.unitscan Mor'Ladim
step
#label CoalB
.goto 47,13.92,34.34,40,0
.goto 47,7.91,33.71,40,0
.goto 47,11.17,60.22,40,0
.goto 47,16.99,76.07,40,0
.goto 47,13.92,34.34,40,0
.goto 47,11.17,60.22,40,0
.goto 47,16.99,76.07
>>杀死|cRXP_ENEMY_Coalpelt Bear|r并掠夺它们的|cRXX_loot_Black Bear Brains|r
>>|cRXP_WARN_检查|cRXP_ENEMY_Marina|r（罕见）。|r
.complete 26787,1 
.mob Coalpelt Bear
.unitscan Marina DeSirrus
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r, |cRXP_FRIENDLY_基特斯|r, |cRXP_FRIENDLY_艾丽辛顿修女|r
.turnin 26754,1 >>交任务: |cRXP_FRIENDLY_摩本特的克星|r
.goto 47,18.34,58.06
.turnin 26787 >>交任务: |cRXP_FRIENDLY_熊脑子|r
.goto 47,18.62,58.36
.turnin 26778 >>交任务: |cRXP_FRIENDLY_亡者的哭泣|r
.goto 47,20.03,57.82
.target Sven Yorgen
.target Jitters
.target Sister Elsington
.isOnQuest 26778
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯温·约根|r, |cRXP_FRIENDLY_基特斯|r
.turnin 26754 >>交任务: |cRXP_FRIENDLY_摩本特的克星|r
.goto 47,18.34,58.06
.turnin 26787 >>交任务: |cRXP_FRIENDLY_熊脑子|r
.goto 47,18.62,58.36
.target Sven Yorgen
.target Jitters
step
#completewith next
.hs >>炉石|cFFfa9602到Darkshire|r
step
#completewith next
.goto 47,74.07,45.32,8,0
.goto 47,73.82,45.95,8,0
.goto 47,72.86,46.82,10,0
.goto 47,72.53,47.21,8 >>离开旅馆|cFFfa9602，然后进入市政厅|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希拉·沃宁迪|r, |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
.turnin 26793 >>交任务: |cRXP_FRIENDLY_饱经风霜的墓碑|r
.accept 26794 >>接任务: |cRXP_LOOT_摩根·拉迪莫尔|r
.goto 47,72.60,47.76
.turnin 26794 >>交任务: |cRXP_FRIENDLY_摩根·拉迪莫尔|r
.goto 47,73.53,46.92
.target Sirra Von'Indi
.target 指挥官阿尔西娅·埃本洛克
step
#sticky
#label Morladim
.destroy 2154 >>|cRXP_WARN_摧毁: |cRXP_ENEMY_摩根·拉迪莫尔的故事|r, 它在你的背包中. 不再需要它了|r
step
.goto 47,79.53,47.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
.turnin 26685 >>交任务: |cRXP_FRIENDLY_高级玻璃|r
.target Viktori Prism'Antras
step
.goto 47,87.43,35.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚伯克隆比|r
.turnin 26680 >>交任务: |cRXP_FRIENDLY_食人魔潜行者|r
.accept 26677 >>接任务: |cRXP_LOOT_食尸鬼假人|r
.target Abercrombie
step
#completewith next
.goto 47,87.98,33.16,20,0
.goto 47,88.1,31.33,20,0
.goto 47,90.98,30.53,30 >>检查|cRXP_ENEMY_Unknown Soldier|r（稀有）。
.unitscan Unknown Soldier
step
.goto 47,77.34,36.27,15,0
.goto 47,75.08,37.23,40,0
.goto 47,76.73,30.50,40,0
.goto 47,81.23,32.15,40,0
.goto 47,79.79,35.41,40,0
.goto 47,75.08,37.23,40,0
.goto 47,76.73,30.50,40,0
.goto 47,81.23,32.15,40,0
.goto 47,79.79,35.41
>>杀死|cRXP_ENEMY_Fetid尸体|r并掠夺它们的|cRXX_loot_Goul肋骨|r
>>|cRXP_WARN_检查房子内外是否有|cRXP_PICK_Chest|r|r
.complete 26677,1 
.mob Fetid Corpse
step
.goto 47,87.43,35.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亚伯克隆比|r
.turnin 26677 >>交任务: |cRXP_FRIENDLY_食尸鬼假人|r
.accept 26681 >>接任务: |cRXP_LOOT_给镇长的信|r
.target Abercrombie
step
#completewith next
.goto 47,72.86,46.82,10,0
.goto 47,72.53,47.21,8,0
.goto 47,72.35,47.75,8 >>进入|cFFfa9602市政厅|r
step
.goto 47,71.93,46.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
.turnin 26681 >>交任务: |cRXP_FRIENDLY_给镇长的信|r
.accept 26727 >>接任务: |cRXP_WARN_藏尸者的复仇|r
.target Lord Ello Ebonlocke
step
#completewith next
.goto 47,72.35,47.75,8,0
.goto 47,72.53,47.21,8,0
.goto 47,72.86,46.82,10 >>出口|cFFfa9602市政厅|r
step
.goto 47,74.17,46.47
>>杀死|cRXP_ENEMY_Stiches|r
.complete 26727,1 
.mob Stitches
step
#completewith next
.goto 47,72.86,46.82,10,0
.goto 47,72.53,47.21,8,0
.goto 47,72.35,47.75,8 >>进入|cFFfa9602市政厅|r
step
.goto 47,71.93,46.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
.turnin 26727 >>交任务: |cRXP_FRIENDLY_藏尸者的复仇|r
.target Lord Ello Ebonlocke
step << DarkIronDwarf !Monk
#completewith Believe
.zone 84 >>Use |T1786409:0|t|cRXP_FRIENDLY_Mole Machine|r and |TInterface/cursor/crosshair/interact.blp:20|tinteract with it.
.skipgossip 143925,1,2
.xp <30,1
step << !DarkIronDwarf Monk
.goto 379,48.96,43.36
.zone 84 >>Cast |T775462:0|tZen Pilgrimage and |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_portal to Stormwind.|r
.xp <30,1
step << !DarkIronDwarf Monk
#completewith next
.goto 84,49.45,86.60,8,0
.goto 84,49.51,86.67,10 >>穿过入口，离开法师塔
.xp <30,1
step << !Monk !DarkIronDwarf
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Stormwind >>飞到暴风城
.goto 47,77.48,44.28
.target Felicia Maline
.zoneskip 84
.xp <30,1
step << !Monk !DarkIronDwarf
.zone 84 >>前往: |cRXP_PICK_暴风城|r
.xp <30,1
]])
RXPGuides.RegisterGuide([[
#df
#version
#group RestedXP Alliance 10-60
#displayname Chapter 6 - Redridge Mountains [2]
#name 6A_Redridge Mountains 2
#next 7A_Tirangarde Sound
#fresh 30
#veteran
<< Alliance
step
#completewith RedridgeStart
.next << 30
.goto 47,77.487,44.287
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Camp Everstill >>Fly to Camp Everstill
.target Felicia Maline
.zoneskip 49
step
#optional
.goto 49,52.551,55.408
.accept 26646 >>接任务: |cRXP_WARN_战俘|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
.target John J. Keeshan
step
#label RedridgeStart
#optional
.goto 49,68.486,75.120
.zone 49 >>前往: |cRXP_PICK_赤脊山|r
step << Druid
#completewith SeaforiumD
+|cRXP_WARN_使用|r|T133878:0|t[Bravo公司现场工具包]|cRXP_WARN_in|r|cRXP-WARN_Rander's Valley|r
>>|cRXP_WARN_您可以正常装载物品，但不能|r|T136041:0|t[伪装]
>>铸造|T136074:0|t[伪装]（1）变成隐形|r
>>施放|T132289:0|t[分散注意力]（2）使|cRXP_ENEMY_Blackrock兽人|r移动
>>铸造|T136090:0|t[三氯甲烷]（3）使|cRXP_ENEMY_Blackrock Wardens|r和|cRXD_ENEMY_Blackrock Guards|r休眠。这对|cRXP_ENEMY_ Blackrock Drake Riders|r无效
.use 60384
.mob Blackrock Drake Rider
.mob Blackrock Warden
.mob Blackrock Guard
.isOnQuest 26646
.noflyable 
step
#optional << Druid
#completewith SeaforiumD
+|cRXP_WARN_使用|r|T133878:0|t[Bravo公司现场工具包]|cRXP_WARN_in|r|cRXP-WARN_Rander's Valley|r
>>|cRXP_WARN_您可以正常装载物品，但不能|r|T136041:0|t[伪装] << !Druid
>>|cRXP_WARN_您可以正常装载物品并飞入|r|T132144:0|t[旅行表格]|cRXP_WARN_hilst|r|T136041:0|t[Camouflaged] << Druid
>>铸造|T136074:0|t[伪装]（1）变成隐形|r
>>施放|T132289:0|t[分散注意力]（2）使|cRXP_ENEMY_Blackrock兽人|r移动
>>铸造|T136090:0|t[三氯甲烷]（3）使|cRXP_ENEMY_Blackrock Wardens|r和|cRXD_ENEMY_Blackrock Guards|r休眠。这对|cRXP_ENEMY_ Blackrock Drake Riders|r无效
.use 60384
.mob Blackrock Drake Rider
.mob Blackrock Warden
.mob Blackrock Guard
.isOnQuest 26646
.flyable << Druid 
step
#optional
#completewith next
.goto 49,68.486,75.120,20 >>进入Render山谷的洞穴
step
.goto 49,69.525,76.315
>>打开里面的|cRXP_PICK_Blackrock钥匙袋|r。为|cRXP_Loot_Blackrock握笔键|r抢劫它
>>|cRXP_WARN_[宝箱]检查内部是否有|cRXP_PICK_宝箱|r。如果它在上面，就把它拿走|r
.collect 59261,1,26646,1 
step
.goto 49,68.665,61.444,0
.goto 49,69.805,59.125,-1
.goto 49,68.970,60.132,-1
>>打开任何|cRXP_PICK_Blackrock Holding Pens|r
>>|cRXP_WARN_[宝箱]检查横幅以西的|cRXP_PICK_宝箱|r。如果它在上面，就把它拿走|r
.complete 26646,1 
step
#sticky
#label Prisoners
>>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
.turnin 26646 >>交任务: |cRXP_FRIENDLY_战俘|r
.accept 26651 >>接任务: |cRXP_WARN_要赢得战争，就要比战争还残酷|r
step
#optional
#completewith next
.goto 49,66.318,70.789,15 >>Go inside the tower
.noflyable 
step
.goto 49,66.411,71.479
>>在配备了|T133878:0|t[Bravo公司现场工具包]的情况下，将|T136173:0|t[Plant Seaforium]（4）浇筑在塔架中间的中间楼层
>>|cRXP_WARN_[宝箱]检查塔中的|cRXP_PICK_宝箱|r。如果它在上面，就把它拿走|r
.complete 26651,2 

step
#label SeaforiumD
.goto 49,65.031,70.244,0
.goto 49,64.112,70.826
>>配备了|T133878:0|t[Bravo公司现场工具包]，在小屋外墙上浇筑|T136173:0|t[Plant Seaforium]（4）
>>|cRXP_WARN_[宝箱]检查日志前面的|cRXP_PICK_宝箱|r。如果它在上面，就把它拿走|r
.complete 26651,1 
step
#optional
#completewith War
.goto 49,63.501,65.692,40 >>|cRXP_WARN_[稀有]检查|cRXP_ENEMY_Chitter|r。如果他醒了就杀了他|r
.unitscan Chitter
.noflyable
step
#optional
#label FieldKit
#completewith War
.aura -82587 >>|cRXP_WARN_单击|r|T133878:0|t[Bravo公司现场工具包]|cRXP_WARN_buff|r
.isOnQuest 26651
step
#optional
#requires FieldKit
#completewith War
>>|cRXP_WARN_避开|r|cRXP_ENEMY_Blackrock Wardens|r、|cRXX_ENEMY_Blackrock Guards|r和|cRXD_ENEMY_ Blackrock Drake Riders|r
.goto 49,77.683,65.506,15 >>前往|cRXP_FRIENDLY_John J.Keeshan|r
.noflyable 
step
#label War
.goto 49,77.683,65.506
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
.turnin 26651 >>交任务: |cRXP_FRIENDLY_要赢得战争，就要比战争还残酷|r
.accept 26668 >>接任务: |cRXP_WARN_引爆山谷|r
.target John J. Keeshan
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r, |cRXP_FRIENDLY_丹弗斯|r
.turnin 26668 >>交任务: |cRXP_FRIENDLY_引爆山谷|r
.accept 26693 >>接任务: |cRXP_WARN_黑暗之塔|r
.goto 49,77.683,65.506
.target +John J. Keeshan
.accept 26692 >>接任务: |cRXP_WARN_暗皮大灭绝|r
.goto 49,77.628,65.341
.target +Danforth
step
#sticky
#label Shadowhide
.goto 49,73.167,48.650,0
.goto 49,74.650,52.479,0
.goto 49,72.277,51.252,0
.goto 49,69.079,50.430,0
.goto 49,67.317,43.754,0
.goto 49,66.197,37.545,0
.goto 49,71.332,33.267,0
.goto 49,70.571,38.254,0
.goto 49,73.004,43.909,0
.waypoint 49,73.167,48.650,50,0
.waypoint 49,73.795,49.819,50,0
.waypoint 49,76.102,53.026,50,0
.waypoint 49,74.650,52.479,50,0
.waypoint 49,73.531,53.657,50,0
.waypoint 49,73.185,50.399,50,0
.waypoint 49,72.277,51.252,50,0
.waypoint 49,71.567,50.196,50,0
.waypoint 49,71.349,48.124,50,0
.waypoint 49,69.079,50.430,50,0
.waypoint 49,66.885,47.661,50,0
.waypoint 49,67.015,45.857,50,0
.waypoint 49,67.317,43.754,50,0
.waypoint 49,65.054,40.527,50,0
.waypoint 49,64.633,37.658,50,0
.waypoint 49,66.197,37.545,50,0
.waypoint 49,66.330,33.341,50,0
.waypoint 49,68.025,35.534,50,0
.waypoint 49,71.332,33.267,50,0
.waypoint 49,72.209,34.231,50,0
.waypoint 49,71.606,35.978,50,0
.waypoint 49,70.571,38.254,50,0
.waypoint 49,70.569,41.638,50,0
.waypoint 49,73.004,43.909,50,0
>>杀死|cRXP_ENEMY_Rabid Shadowwhide Gnolls|r，|cRXD_ENEMY_Shadowwhide Darkwavers|r，| cRXP__ENEMY_ShadowWhide Assassins|r，|1cRXP_ENDEMY_Shadowwhide Warriors|r、|cRXC_ENEMY_ShadeWhide Slayers|r、|1cRXD_ENDEMY_ Shadowwhide Brutes|r和|cRXT_ENDEMY_Shadewhide Gnills|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Shadowwhide Assassins|r是|r|T132320:0|t[隐身]
.complete 26692,1 
.mob Rabid Shadowhide Gnoll
.mob *Shadowhide Darkweaver
.mob *Shadowhide Assassins
.mob *Shadowhide Warrior
.mob *Shadowhide Slayer
.mob *Shadowhide Brute
.mob *Shadowhide Gnoll
step
#sticky
#requires Shadowhide
#label Extinction
>>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
.turnin 26692 >>交任务: |cRXP_FRIENDLY_暗皮大灭绝|r
step
#optional
#completewith next
.goto 49,71.920,50.206,0
.goto 49,70.711,41.350,0
.goto 49,69.921,34.906,0
.goto 49,71.920,50.206,30,0
.goto 49,70.711,41.350,30,0
.goto 49,69.921,34.906,30,0
.goto 49,68.302,35.596,20 >>|cRXP_WARN_[稀有]检查|cRXP_ENEMY_Rohh the Silent |r。如果他醒了就杀了他|r
>>|cRXP_WARN_小心他|r|T132320:0|t[偷窃]
>>|cRXP_WARN_[宝箱]留意Galardell山谷的|cRXP_PICK_Chests|r。如果找到|cRXP_PICK_Chest|r，请将其洗劫一空|r
.unitscan Rohh the Silent
.noflyable
step
#optional
#completewith next
.goto 49,67.611,30.650 >>进入|cRXP_ENEMY_General Fangore|r的洞穴
step
.goto 49,67.542,28.902
>>杀死里面的|cRXP_ENEMY_General Fangore|r。为Ilgalar|r的|cRXP_Loot_Key抢劫他
>>|cRXP_WARN_[宝箱]检查内部是否有|cRXP_PICK_宝箱|r。如果它在上面，就把它拿走|r
.complete 26693,1 
.mob General Fangore
step
>>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
.turnin 26693 >>交任务: |cRXP_FRIENDLY_黑暗之塔|r
.accept 26694 >>接任务: |cRXP_WARN_大魔导师杜内|r
step
#optional
#label Ilgalar1
#completewith next
.goto 49,72.538,44.629,20,0
.goto 49,71.952,44.819,15 >>前往Ilgalar塔的入口
.noflyable 
step
#optional
#label Ilgalar2
#requires Ilgalar1
#completewith next
.goto 49,71.952,44.819
.cast 81776 >>点击Ilgalar塔底部的|cRXP_PICK_Ward|r
.isOnQuest 26694
step
.goto 49,71.491,44.896,0
.goto 49,71.256,45.402
>>在Ilgalar塔顶上击败|cRXP_ENEMY_Grand Magus Doane|r
>>|cRXP_WARN_[宝箱]留意底层和第二高层的内部|cRXP_PICK_Chests|r。如果找到|cRXP_PICK_Chest|r，请将其洗劫一空|r
.complete 26694,1 
.mob Grand Magus Doane
step
#requires Extinction
#completewith next
.goto 49,76.973,52.844,40,0
.goto 49,77.906,58.960,40,0
.goto 49,77.683,65.506,15 >>返回|cRXP_FRIENDLY_John J.Keeshan|r
.noflyable 
step
#requires Extinction
.goto 49,77.683,65.506
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
.turnin 26694 >>交任务: |cRXP_FRIENDLY_大魔导师杜内|r
.timer 29,The Grand Magus Doane RP
.target John J. Keeshan
step
.goto 49,77.204,65.923
>>|cRXP_WARN_等待RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德曼上校|r
.accept 26708 >>接任务: |cRXP_WARN_啊啊啊啊啊啊啊啊啊啊啊！啊啊啊啊啊啊啊啊啊！！！|r
.target Colonel Troteman
step
#completewith BlackrockInvaders
#label BravoCompany
.goto 49,76.916,66.133
.vehicle >>进入|cRXP_FRIENDLY_Bravo连围攻坦克|r
.target Bravo Company Siege Tank
.isOnQuest 26708
step
#optional
#completewith BlackrockInvaders
#requires BravoCompany
.goto 49,77.906,58.960,40,0
.goto 49,76.869,54.470,40 >>|cRXP_WARN_儿童乘坐|cRXP_FRIENDLY_Bravo连围攻坦克|r，返回加拉德尔山谷
.isOnQuest 26708
step
#label BlackrockInvaders
.goto 49,75.045,50.854,0
.goto 49,71.179,48.591,0
.goto 49,67.150,44.692,0
.goto 49,63.587,39.740,0
.goto 49,63.587,39.740,50,0
.goto 49,75.045,50.854,50,0
.goto 49,60.660,36.666
>>|cRXP_WARN_在|cRXP_FRIENDLY_Bravo连围攻坦克|r中，穿过|cRXP_ENEMY_Blackrock入侵者|r驶向基山哨所，投掷|r|T252187:0|t[Ram]（1）|cRXP _WARN_on冷却|r
.complete 26708,1 
.mob Blackrock Invader
step
#optional
#completewith next
>>|cRXP_WARN_退出|r|cRXP_FRIENDLY_Bravo连围攻坦克|r
>>|cRXP_WARN_这将立即使您退出与|cRXP_ENEMY_Blackrock Invaders|r的阶段，并返回到与|r|cRXX_ENEMY_Shadowwhide Gnolls的阶段|r
.goto 49,60.660,36.666,15 >>返回|cRXP_FRIENDLY_Colonel Troteman|r
step
.goto 49,60.660,36.666
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德曼上校|r
.turnin 26708 >>交任务: |cRXP_FRIENDLY_啊啊啊啊啊啊啊啊啊啊啊！啊啊啊啊啊啊啊啊啊！！！|r
.accept 26713 >>接任务: |cRXP_WARN_决战石堡要塞|r
.target Colonel Troteman
step
#optional
#completewith Darkblaze
+|cRXP_WARN_继续之前，请确保您的团队与您在一起。它们应该在你接近|cRXP_ENEMY_Tharil'zun|r时繁殖。如果没有，请注销并重新登录|r
step
.goto 49,60.307,47.402
>>杀死|cRXP_ENEMY_Tharil'zun|r
.complete 26713,1 
.mob Tharil'zun
step
#optional
#completewith next
.goto 49,60.307,47.402,40,0
.goto 49,57.775,56.285,45 >>前往|cRXP_ENEMY_Gath'Ilzog|r
.noflyable 
step
.goto 49,57.775,56.285
>>杀死|cRXP_ENEMY_Gath'Izog|r
.complete 26713,2 
.mob Gath'Ilzogg
step
>>|cRXP_WARN_单击您的任务日志中的弹出窗口|r
.turnin 26713 >>交任务: |cRXP_FRIENDLY_决战石堡要塞|r
.goto 49,58.651,55.469
.accept 26714 >>接任务: |cRXP_WARN_黑暗烈焰，灭世者的子嗣|r
.timer 25,Darkblaze RP
.goto 49,60.660,36.666
step
#label Darkblaze
.goto 49,58.651,55.469
>>|cRXP_WARN_等待|cRXP_ENEMY_Grand Magus Doane|r变换RP|r
>>|cRXP_WARN_RP完成后击败|cRXP_ENEMY_Darkblaire|r|r
>>|cRXP_WARN_如果失败，使用地面上的|r|cRXP_PICK_召唤之角|r来恢复公共|r|cRXP_ENEMY_Grand Magus Doane|r
.complete 26714,1 
.mob Darkblaze
.mob *Grand Magus Doane

step
.goto 49,60.660,36.666
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德曼上校|r
.turnin 26714 >>交任务: |cRXP_FRIENDLY_黑暗烈焰，灭世者的子嗣|r
.accept 26726 >>接任务: |cRXP_WARN_凯旋而归|r
.target Colonel Troteman
step
#optional
.goto 49,37.932,34.200,50 >>|cRXP_WARN_[稀有]检查|cRXP_ENEMY_Chatter|r。如果他醒了就杀了他|r
.unitscan Chatter
.isOnQuest 26726
.noflyable
step
#optional
#completewith Triumph
.goto 49,28.282,41.910,8,0
.goto 49,27.972,41.567,8 >>进入莱克郡市政厅
.isOnQuest 26726
step
.goto 49,28.971,41.123
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_所罗门镇长|r, 他在里面
.turnin 26726 >>交任务: |cRXP_FRIENDLY_凯旋而归|r
.turnin 26505 >>交任务: |cRXP_FRIENDLY_帕克的报告|r
.target Magistrate Solomon
.isQuestComplete 26505
.isOnQuest 26726
step
#optional
#label Triumph
.goto 49,28.971,41.123
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_所罗门镇长|r, 他在里面
.turnin 26726 >>交任务: |cRXP_FRIENDLY_凯旋而归|r
.target Magistrate Solomon
.isOnQuest 26726
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Alliance 10-60
#name 7A_Tiragarde Sound
#displayname Chapter 7 - Tiragarde Sound
#next 8A_蒂拉加德之声第2部分
<<Alliance
step << DarkIronDwarf
#completewith Herald
.zone 84 >>Use |T1786409:0|t|cRXP_FRIENDLY_Mole Machine|r and |TInterface/cursor/crosshair/interact.blp:20|tinteract with it.
.skipgossip 143925,1,2
.isQuestAvailable 46727
step << Monk
#completewith Herald
.goto 379,48.96,43.36
.zone 84 >>Cast |T775462:0|tZen Pilgrimage and |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_portal to Stormwind.|r
.isQuestAvailable 46727
step << !Monk !DarkIronDwarf
#completewith Herald
.goto 47,77.48,44.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲利希亚·玛林|r
.fly Stormwind >>飞|cFFfa9602到暴风|r
.target Felicia Maline
.zoneskip 47,1
.isQuestAvailable 46727
step << !Monk !DarkIronDwarf
#completewith Herald
.goto 49,29.42,53.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾蕾娜·斯托姆法瑟|r
.fly Stormwind >>飞|cFFfa9602到暴风|r
.target Ariena Stormfeather
.zoneskip 49,1
.isQuestAvailable 46727
step << !Monk !DarkIronDwarf
.zone 84 >>旅行|cFFfa9602到暴风|r
.isQuestAvailable 46727
step << Monk
.goto 84,60.39,75.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板奥里森|r
.home >>将您的炉石|cFFfa9602设置为暴风贸易区|r
.target Innkeeper Allison
step << Monk




#completewith next
>>如果您需要更大的袋子，请考虑从拍卖行购买|T348525:0|t[Wilderloth Bags]|r但是，如果您已经拥有较大的行李，则可以忽略此步骤|cRXP_WARN_购买后，前往邮箱收集并装备它们|r
.collect 194017,4 
.target Auctioneer Fitch
.target Auctioneer Chilton
.target Auctioneer Jaxon
step
#label Herald
.goto 84,62.82,71.74,-1
.goto 84,62.17,30.14,-1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_英雄传令官|r
.accept 46727 >>接任务: |cRXP_WARN_争霸艾泽拉斯：战争之潮|r
.target Hero's Herald
step << !Monk




#completewith next
>>如果您需要更大的袋子，请考虑从拍卖行购买|T348525:0|t[Wilderloth Bags]|r但是，如果您已经拥有较大的行李，则可以忽略此步骤|cRXP_WARN_购买后，前往邮箱收集并装备它们|r
.collect 194017,4 
.target Auctioneer Fitch
.target Auctioneer Chilton
.target Auctioneer Jaxon
step << !Monk
.goto 84,60.39,75.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板奥里森|r
.home >>将您的炉石设置为暴风贸易区
.target Innkeeper Allison
step
#completewith next
.goto 84,80.65,37.82,25,0
.goto 84,80.26,33.12,36 >>旅行|cFFfa9602到暴风城|r
.timer 49,Battle for Azeroth: Tides of War RP
step
.goto 84,80.49,33.52
>>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
.complete 46727,1 
step
.goto 84,80.49,33.52
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal.|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
.complete 46727,2 
step
.goto 84,80.26,33.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安度因·乌瑞恩|r
.turnin 46727 >>Turn in Battle for Azeroth: Tides of War
.accept 46728 >>接任务: |cRXP_WARN_库尔提拉斯王国|r
.target Anduin Wrynn
step
.goto 84,81.56,35.59,5,0
.goto 84,80.72,37.73,5,0
.goto 84,56.26,17.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
>>|cRXP_WARN_选择“大灾难”战役|r
.turnin 62567 >>交任务: |cRXP_FRIENDLY_招募冒险者：克罗米的召唤|r
.accept 60891 >>接任务: |cRXP_WARN_大地的裂变：东部王国的冒险|r
.target Chromie
.skipgossip
.isOnQuest 62567
step
.goto 84,81.56,35.59,5,0
.goto 84,80.72,37.73,5,0
.goto 84,56.26,17.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r, "The Cataclysm" Campaign
.accept 60891 >>接任务: |cRXP_WARN_大地的裂变：东部王国的冒险|r
.target Chromie
.skipgossip
step
.goto 84,63.76,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t谈话|cRXP_FRIENDLY_Renato Gallina |r
.accept 332 >>接任务: |cRXP_WARN_酒店的广告|r
.target Renato Gallina
.isOnQuest 62567
step
.goto 84,62.32,67.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t谈话|cRXP_FRIENDLY_Harlan Bagley|r
.accept 333 >>接任务: |cRXP_WARN_哈兰需要供货|r
.target Harlan Bagley
.isOnQuest 62567
step
.goto 84,58.09,67.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t谈话|cRXP_FRIENDLY_Rema Schneider |r
.turnin 333 >>交任务: |cRXP_FRIENDLY_哈兰需要供货|r
.accept 334 >>接任务: |cRXP_WARN_萨尔曼的针线包|r
.target Rema Schneider
.isOnQuest 62567
step
.goto 84,60.28,76.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_Suzetta Gallina |r
.turnin 332 >>交任务: |cRXP_FRIENDLY_酒店的广告|r
.target Suzetta Gallina
.isOnQuest 62567
step
.goto 84,52.59,83.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_Thurman Schneider |r
.turnin 334 >>交任务: |cRXP_FRIENDLY_萨尔曼的针线包|r
.target Thurman Schneider
.isOnQuest 62567
step
.goto 84,22.79,24.68
.achievementIncomplete 12582,1
.isOnQuest 46728
.gossipoption 47615 >>对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
>>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
.turnin 46728 >>Turn in The Nation of Kul Tiras
.accept 51341 >>接任务: |cRXP_WARN_大海的女儿|r
.timer 7,Daughter of the Sea RP
.target Lady Jaina Proudmoore
step
.goto 84,22.79,24.68
.achievementComplete 12582,1
.isOnQuest 46728
.gossipoption 47616 >>对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r, "the Kultiras Introduction Quests"
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
.target Lady Jaina Proudmoore
step
.goto 84,22.79,24.68
.achievementComplete 12582,1
.isOnQuest 46728
.gossipoption 47616 >>对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
.target Lady Jaina Proudmoore
step
.goto 1169,47.42,46.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
.turnin 51341 >>Turn in Daughter of the Sea
.accept 47098 >>接任务: |cRXP_WARN_逃之夭夭|r
.timer 5,Out Like Flynn RP
.target Flynn Fairwind
step
.goto 1169,46.62,45.47
>>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Flynn Fairwind|r to punch him.
.complete 47098,1 
.timer 10,Out Like Flynn RP
.target Flynn Fairwind
.skipgossip
step
.goto 1169,46.66,40.94
>>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
>>跑出单元格并拉动|cRXP_PICK_Lever|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
.complete 47098,2 
step
.goto 1169,46.84,44.71
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chest|r |cFFfa9602on the ground.|r
.complete 47098,3 
step
.goto 1169,40.25,54.78
>>杀死|cRXP_ENEMY_Carmine|r
.complete 47098,4 
.mob Block Warden Carmine
step
.goto 1169,43.58,54.08
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gunpowder|r |cFFfa9602on the table.|r
.complete 47098,5 
step
.isOnQuest 47098
.goto 1169,42.71,46.78,10,0
.goto 1169,41.17,43.49,10,0
.goto 1169,43.24,36.66,15 >>运行|cFFfa9602到单元块门|r
step
.isOnQuest 47098
.goto 1169,43.24,36.66
.cast 271399 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cell Block Gate|r
.timer 12,Out Like Flynn RP
step
.goto 1169,44.48,35.69,12,0
.goto 1169,45.51,36.76,12,0
.goto 1169,49.31,42.18,12,0
.goto 1169,48.59,42.70,12,0
.goto 1169,46.69,42.80,12,0
.goto 1169,44.19,42.22,12,0
.goto 1169,37.94,53.79
>>运行|cFFfa9602使大厅向下进入下水道|r
.complete 47098,7 
step
.goto 1169,44.48,35.69,12,0
.goto 1169,45.51,36.76,12,0
.goto 1169,49.31,42.18,12,0
.goto 1169,48.59,42.70,12,0
.goto 1169,46.69,42.80,12,0
.goto 1169,44.19,42.22,12,0
.goto 1169,37.94,53.79
>>顺着大厅跑进下水道
.complete 47098,7 
step
.isOnQuest 47098
.goto 1169,42.23,58.92,10,0
.goto 1169,48.87,45.24,10,0
.goto 1169,50.96,47.27,10 >>铺设|cRXP_WARN_down排水管至海岸|r
step
.isOnQuest 47098
.goto 1169,61.53,47.69,30,0
.goto 1169,64.04,33.31,30,0
.goto 1169,60.59,25.53,20 >>跑到|cRXP_PICK_Getaway Boat|r
step
.goto 1169,60.59,25.53
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Getaway Boat.|r
.complete 47098,8 
.timer 36,Out Like Flynn RP
step
#completewith next
+|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
*|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
.isOnQuest 47098
step << KulTiran
.goto 1161,68.16,21.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia|r
.accept 47189 >>接任务: |cRXP_WARN_分裂的国度|r
.target Taelia
step << KulTiran
.goto 1161,68.38,22.11
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Scouting Map|r
.complete 47189,1 
step << KulTiran
.goto 1161,75.72,23.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia|r
.accept 47960 >>接任务: |cRXP_WARN_提拉加德海峡|r
.turnin 47189 >>Turn in A Nation Divided
.target Taelia
step << KulTiran
.goto 1161,67.60,22.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
.accept 47181 >>接任务: |cRXP_WARN_冒烟的枪|r
.complete 47181,1 
.target Flynn Fairwind
step << KulTiran
.goto 1161,67.58,22.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
.turnin 47181 >>Turn in The Smoking Gun
.target Flynn Fairwind
step << KulTiran
.goto 1161,67.97,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r
.accept 47485 >>接任务: |cRXP_WARN_艾什凡贸易公司|r
.target Cyrus Crestfall
step << !KulTiran
.goto 1161,75.73,23.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia|r
.turnin 47098 >>Turn in Out Like Flynn
.accept 47099 >>接任务: |cRXP_WARN_熟悉环境|r
.target Taelia
step << !KulTiran
.goto 1161,74.17,24.80,10 >>靠近|cRXP_FRIENDLY_Will Melborne|r
.timer 6.5, Wait at Tradewinds Counting House
.isOnQuest 47099
step << !KulTiran
.goto 1161,75.59,19.51
>>|cRXP_WARN_在|cFFfa9602TradewindesCountingHouse|r前等待简短的角色扮演，该角色扮演将在计时器用完时完成。|r
>>|cFFd0342现在还不要进入|cFFfa9602顺风计数室|r|r
.complete 47099,1 
.target Will Melborne
step << !KulTiran
.goto 1161,75.47,17.94,5 >>进入|cFFfa9602TradewindesCountingHouse|r
.timer 3.6, bank rp.
.isOnQuest 47099
step << !KulTiran
.goto 1161,75.6,19.15,5,0
.goto 1161,73.53,13.81,5 >>走进|cFFfa9602新港湾旅馆|r
.timer 7.5, Inn RP
.isOnQuest 47099
step << !KulTiran
.goto 1161,74.13,12.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wesley Rockhold|r
.home >>将你的炉石设置为宝来罗斯
.target Wesley Rockhold
.isOnQuest 47099
step << !KulTiran
.isOnQuest 47099
.goto 1161,73.52,13.8,5,0
.goto 1161,67.02,14.96
>>顺着箭头走|cRXP_WARN_然后等待简短的角色扮演，当计时器用完时，角色扮演将完成|r
.complete 47099,3 
step << !KulTiran
.isOnQuest 47099
.goto 1161,67.2,15.05,10,0
.goto 1161,68.93,21.13,5,0
.goto 1161,67.45,21.39,5,0
.goto 1161,68.73,18.86,10,0
.goto 1161,68.96,21.15,5,0
.goto 1161,67.55,21,5,0
.goto 1161,67.16,22.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joan Weber|r to unlock the flightpath |cRXP_WARN_then follow the arrow to continue.|r
.complete 47099,4 

step << !KulTiran
.goto 1161,67.18,22.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia|r |cFFfa9602next to you.|r
.turnin 47099 >>Turn in Get Your Bearings
.accept 46729 >>接任务: |cRXP_WARN_老迈骑士|r
.target Taelia
step << !KulTiran
.goto 1161,67.13,23.06
>>进入|cFFfa9602校长办公室|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
.complete 46729,1 
.timer 13,The Old Knight RP
step << !KulTiran
.isOnQuest 46729
.goto 1161,67.99,21.88
>>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
.gossipoption 48242 >>Talk to |cRXP_FRIENDLY_Cyrus Crestfall|r
.timer 83,Cyrus Tale RP
.target Cyrus Crestfall
step
#label WorkersR
.goto 1161,67.08,23.7,5,0
.goto 1161,68.59,25.26,15,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Davey Brindle|r and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Formal Invitation|r |cFFfa9602on the table|r, as well as |cRXP_FRIENDLY_Wanted Poster|r
.accept 50699 >>接任务: |cRXP_WARN_工人权益|r
.goto 895,67.40,24.14
.accept 48070 >>接任务: |cRXP_WARN_诺文顿节|r
.goto 895,67.14,24.80,-1
.accept 51358 >>接任务: |cRXP_WARN_通缉：狮鹫窃贼|r
.goto 895,66.84,24.36,-1
.target Davey Brindle
step
#completewith next
+|cRXP_WARN_打开你遇到的任何|cRXP_PICK_“小宝箱”|r，因为它们提供了大量的经验值|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maynard Algerson|r and |cRXP_FRIENDLY_Benjamin Algerson|r
.turnin 50699 >>Turn in Worker's Rights
.accept 49465 >>接任务: |cRXP_WARN_最大化资源|r
.accept 49452 >>接任务: |cRXP_WARN_库存短缺|r
.goto 895,68.92,20.43,10,0
.goto 895,68.93,20.59
.accept 49451 >>接任务: |cRXP_WARN_休假请求|r
.goto 895,68.89,20.44,5,0
.goto 895,68.89,19.84
.target Maynard Algerson
.target Benjamin Algerson
step
#completewith Wood-Adorned Skull
>>杀死|cRXP_ENEMY_Timberborough入侵者|r和|cRXP_ENEMY_ Timberfang潜伏者|r，并掠夺他们的|cRXD_loot_Sulls|r
.complete 49465,1 
.mob Timberbough Invader
.mob Timberfang Lurker
step
.goto 895,68.41,19.7
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Reclaimed Axe|r
.complete 49452,1,1 
step
.goto 895,68.17,18.95
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Entangled Lumberjack.|r
.complete 49451,1,1 
.target Entangled Lumberjack
step
.goto 895,68.06,18.9
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Reclaimed Axe|r
.complete 49452,1,2 
step
.goto 895,67.64,19.38
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Entangled Lumberjack.|r
.complete 49451,1,2 
.target Entangled Lumberjack
step
.goto 895,67.37,19.44
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Entangled Lumberjack.|r
.complete 49451,1,3 
.target Entangled Lumberjack
step
.goto 895,67.4,19.36
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Reclaimed Axe|r
.complete 49452,1,3 
step
.goto 895,67.41,18.84
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Reclaimed Axe|r
.complete 49452,1,4 
step
.goto 895,67.43,18.6
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Entangled Lumberjack.|r
.complete 49451,1,4 
.target Entangled Lumberjack
step
.goto 895,67.53,18.07
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Reclaimed Axe|r
.complete 49452,1,5 
step
.goto 895,67.27,17.9
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Entangled Lumberjack.|r
.complete 49451,1,5 
.target Entangled Lumberjack
step
#label Wood-Adorned Skull
.goto 895,66.62,17.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyssa Treewarden|r
.accept 49453 >>接任务: |cRXP_WARN_找木头的河狸|r
.accept 48557 >>接任务: |cRXP_WARN_种树苗|r
.target Lyssa Treewarden
step
#completewith Loamy Soil
>>杀死|cRXP_ENEMY_Timberborough入侵者|r和|cRXP_ENEMY_ Timberfang潜伏者|r，并掠夺他们的|cRXD_loot_Sulls|r
.complete 49465,1 
.mob Timberbough Invader
.mob Timberfang Lurker
step
#completewith Loamy Soil
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_PICK_Woodchewing Beavers|r
.complete 49453,1 
.target Woodchewing Beaver
step
.goto 895,66.55,16.8
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Loamy Soil |r|cFFfa9602on the ground.|r
.complete 48557,1,1 
step
.goto 895,66.29,16.2
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Loamy Soil |r|cFFfa9602on the ground.|r
.complete 48557,1,2 
step
.goto 895,66.51,15.65
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Loamy Soil |r|cFFfa9602on the ground.|r
.complete 48557,1,3 
step
#label Loamy Soil
.goto 895,66.7,16.61
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Loamy Soil |r|cFFfa9602on the ground.|r
.complete 48557,1,4 
step
#completewith next
>>杀死|cRXP_ENEMY_Timberborough入侵者|r和|cRXP_ENEMY_ Timberfang潜伏者|r，并掠夺他们的|cRXD_loot_Sulls|r
.complete 49465,1 
.mob Timberbough Invader
.mob Timberfang Lurker
step
.goto 895,68.93,20.59
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_PICK_Woodchewing Beavers|r
.complete 49453,1 
.target Woodchewing Beaver

step
.goto 895,68.93,20.59
>>杀死|cRXP_ENEMY_Timberborough入侵者|r和|cRXP_ENEMY_ Timberfang潜伏者|r，并掠夺他们的|cRXD_loot_Sulls|r
.complete 49465,1 
.mob Timberbough Invader
.mob Timberfang Lurker

step
.goto 895,66.62,17.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyssa Treewarden|r
.turnin 49453 >>Turn in Give a Dam
.turnin 48557 >>Turn in Sowing Saplings
.target Lyssa Treewarden
step
.goto 895,68.92,20.43,10,0
.goto 895,68.93,20.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maynard Algerson|r
.turnin 49465 >>Turn in Maximizing Resources
.turnin 49452 >>Turn in Inventory Deficit
.turnin 49451 >>Turn in Time Off Requests
.accept 48369 >>接任务: |cRXP_WARN_紧急措施|r
.target Maynard Algerson
step
.goto 895,68.9,20.44,5,0
.goto 895,70.09,18.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Benjamin Algerson|r
.turnin 48369 >>Turn in Emergent Strategy
.accept 49468 >>接任务: |cRXP_WARN_蛛网会谈|r
.accept 49454 >>接任务: |cRXP_WARN_害虫防治|r
.accept 49450 >>接任务: |cRXP_WARN_事故报告|r
.target Benjamin Algerson
step
#completewith Webbed Lumberjack freed
>>杀死|cRXP_ENEMY_吞噬灰爪|r，|cRXP_ENEMY_吞噬苔藓虫，|r和|cRXX_ENEMY_苔藓虫蛋|r
.complete 49450,1 
.complete 49454,1 
.mob Enthralled Ashclaw
.mob Enthralled Mossfang
.mob Mossfang Egg
step
.goto 895,70.63,18.07
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Webbed Lumberjack|r
.complete 49468,1,1 
.target Webbed Lumberjack
step
.goto 895,71.29,17.98
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Webbed Lumberjack|r
.complete 49468,1,2 
.target Webbed Lumberjack
step
.goto 895,71.84,18.17
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Webbed Lumberjack|r
.complete 49468,1,3 
.target Webbed Lumberjack
step
.goto 895,72.33,17.87
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Webbed Lumberjack|r
.complete 49468,1,4 
.target Webbed Lumberjack
step
.goto 895,72.96,17.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terrence Foster|r
.accept 50058 >>接任务: |cRXP_WARN_女巫的宠物|r
.target Terrence Foster
step
.goto 895,73.49,18.71
>>杀死|cRXP_ENEMY_Mossfang女族长|r
>>|cRXP_WARN_避开她的毒液波额锥|r
.complete 50058,1 
.mob Mossfang Matriarch
step
#label Webbed Lumberjack freed
.goto 895,73.61,19.07
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Webbed Lumberjack|r
.complete 49468,1,5 
.target Webbed Lumberjack
step
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 50058 >>Turn in The Witch's Pet
step
.goto 895,72.93,17.72,10,0
.goto 895,71.54,17.67,20,0
.goto 895,70.89,18.52,20,0
.goto 895,70.09,18.58
>>杀死|cRXP_ENEMY_吞噬灰爪|r，|cRXP_ENEMY_吞噬苔藓虫，|r和|cRXX_ENEMY_苔藓虫蛋|r
.complete 49450,1 
.complete 49454,1 
.mob Enthralled Ashclaw
.mob Enthralled Mossfang
.mob Mossfang Egg
step
.goto 895,70.09,18.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Benjamin Algerson|r
.turnin 49468 >>Turn in Required Webinar
.turnin 49454 >>Turn in Pest Prevention
.turnin 49450 >>Turn in Incident Reports
.accept 49467 >>接任务: |cRXP_WARN_森林女巫|r
.target Benjamin Algerson
step
.goto 895,70.45,13.75
>>杀死|cRXP_ENEMY_森林女巫|r并掠夺她以获得|cRXX_loot_Locket|r
>>|cRXP_WARN_避开她的爬行群额锥|r
.complete 49467,1 
.mob Witch of the Woods
step
.goto 895,68.85,13.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maynard Algerson|r
.turnin 49467 >>Turn in Witch of the Woods
.target Maynard Algerson
step
.isOnQuest 51358
.goto 895,67.38,22.07,20 >>输入|cFFfa9602保存|r
step
.goto 895,67.2,21.70
>>杀死|cRXP_ENEMY_Boris|r和|cRXX_ENEMY_Lindel|r
>>这项任务具有挑战性|cRXP_WARN_如果无法击败他们，请跳过此步骤|r
.complete 51358,1 
.complete 51358,2 
.mob Lindel the Snatcher
.mob Silent Boris
step
.goto 895,66.93,23.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mariah McKee|r
.fp Hatherford >>获取Hatherford飞行路线
.target Mariah McKee
step
.isOnQuest 51358
.goto 895,66.42,24.42,10 >>进入|cFFfa9602房子|r
step
.goto 895,66.27,24.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dandy Jones|r
.turnin 51358 >>Turn in WANTED: Gryphon 'Nappers
.target Dandy Jones
.isQuestComplete 51358
step
.goto 895,66.32,24.80
.abandon 51358 >>遗弃通缉犯：鹰头狮Nappers
step
#completewith next
.goto 895,66.42,24.42,5 >>离开|cFFfa9602房子|r
step
.goto 895,66.32,24.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Hatherford Guard.|r
.accept 50700 >>接任务: |cRXP_WARN_搜寻德鲁斯特|r
.target Hatherford Guard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drogrin Alewhisker|r and |cRXP_FRIENDLY_Recruit Brutis.|r
.turnin 50700 >>Turn in Drust in Time
.accept 49225 >>接任务: |cRXP_WARN_追上领队|r
.accept 49229 >>接任务: |cRXP_WARN_废墟的反击|r
.goto 895,62.73,29.95
.accept 49234 >>接任务: |cRXP_WARN_虎落平阳|r
.goto 895,62.95,29.92
.target Drogrin Alewhisker
.target Recruit Brutis
step
#completewith BirchT
>>杀死|cRXP_ENEMY_古代保护者|r
.complete 49229,1 
.mob Ancient Protector
step
#completewith next
.goto 1171,44.51,88.32,15,0
.goto 1171,40.22,71.90,15 >>去|cFFfa9602洞穴边|r
step
#label BirchT
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Birch Tomlin|r and |cRXP_FRIENDLY_Pendi Cranklefuse|r
.accept 49233 >>接任务: |cRXP_WARN_我是德鲁伊，不是牧师|r
.goto 1171,50.39,70.36
.accept 49232 >>接任务: |cRXP_WARN_灾祸回收|r
.goto 1171,51.27,70.58
.target Birch Tomlin
.target Pendi Cranklefuse
step
#completewith Ancient Protector
>>杀死|cRXP_ENEMY_古代保护者|r
.complete 49229,1 
.mob Ancient Protector
step
#completewith Ancient Protector
>>在|cRXP_ENEMY_Cursed Raiders|r上使用|T329590:0|t[重新调整用途的Gilnean杖]
.complete 49233,1 
.use 153350
.mob Cursed Raider
step
.goto 1171,57.34,65.78
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Drust Relic|r
.complete 49232,1,1 
step
.goto 1171,64.17,53.31,20,0
.goto 1171,58.63,37.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilde Firebreaker|r
.turnin 49225 >>Turn in Chasing the Leader
.accept 49260 >>接任务: |cRXP_WARN_掩护打包|r
.target Hilde Firebreaker
step
#completewith Ancient Protector
>>你不需要保护Firebreaker；你只需继续，任务就会自动完成|cRXP_WARN_但是，请注意，如果你在任务完成前死亡，你必须重新开始|r
.complete 49260,1 
step
.goto 1171,62.59,55.61,10,0
.goto 1171,41.39,50.8
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Drust Relic|r
.complete 49232,1,2 
step
.goto 1172,44.19,69.85
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Drust Relic|r
.complete 49232,1,3 
step
.goto 1172,59.84,18.18
>>杀死|cRXP_ENEMY_觉醒守护者|r
.complete 49234,1 
.mob Awakened Guardian
step
.goto 1172,59.55,13.12
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Drust Relic|r
.complete 49232,1,4 
step
.goto 1171,46.34,54.89
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Drust Relic|r
.complete 49232,1,5 
step
.goto 1171,44.99,60.75
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Drust Relic|r
.complete 49232,1,6 
step
#label Ancient Protector
.goto 1171,64.17,53.31,15,0
.goto 1171,58.63,37.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilde Firebreaker|r
.turnin 49260 >>Turn in Backup While I Pack Up
.target Hilde Firebreaker
.isQuestComplete 49260
step
#completewith next
>>杀死|cRXP_ENEMY_古代保护者|r
.complete 49229,1 
.mob Ancient Protector
step
.goto 1171,51.27,70.58
>>在|cRXP_ENEMY_Cursed Raiders|r上使用|T329590:0|t[重新调整用途的Gilnean杖]
.complete 49233,1 
.use 153350
.mob Cursed Raider
step
.goto 1171,51.27,70.58
>>杀死|cRXP_ENEMY_古代保护者|r
.complete 49229,1 
.mob Ancient Protector
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pendi Cranklefuse|r and |cRXP_FRIENDLY_Birch Tomlin|r
.turnin 49232 >>Turn in Salvaging a Disaster
.goto 1171,51.27,70.58
.turnin 49233 >>Turn in I'm a Druid, Not a Priest
.goto 1171,50.39,70.36
.target Pendi Cranklefuse
.target Birch Tomlin
step
#completewith next
.goto 1171,40.22,71.90,15,0
.goto 1171,44.51,88.32,15 >>退出|cRXP_WARN_洞穴|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Recruit Brutis|r and |cRXP_FRIENDLY_Drogrin Alewhisker|r
.turnin 49234 >>Turn in A Marine Out of Water
.goto 895,62.82,29.88
.turnin 49229 >>Turn in The Ruins Fought Back
.goto 895,62.73,29.95
.target Recruit Brutis
.target Drogrin Alewhisker
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abbey Watkins|r and |cRXP_FRIENDLY_Harold Beckett|r
.turnin 48070 >>Turn in The Norwington Festival
.accept 48077 >>接任务: |cRXP_WARN_白鼬狩猎|r
.goto 895,55.45,24.67
.accept 48080 >>接任务: |cRXP_WARN_危险元素|r
.accept 48616 >>接任务: |cRXP_WARN_套索与鸟|r
.goto 895,55.52,24.59
.target Abbey Watkins
.target Harold Beckett
step
#completewith Mudbrush
>>在|cRXP_ENEMY_Hollowbike Falcons|r上使用|T135553:0|t[Bola Launcher]
.use 152643
.complete 48616,1 
.mob Hollowbeak Falcon
step
#completewith Mudbrush
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stoat Den|r and kill |cRXP_ENEMY_Faintstep Stoat|r loot them for |T1029741:0|t|cRXP_LOOT_[Soft Stoat Pelt]|r
.complete 48077,1 
.mob Faintstep Stoat
step
#completewith Mudbrush
>>杀死|cRXP_ENEMY_Mudbush Boar|r并掠夺它们|T133722:0|t|cRXP-loot_结实的Boar Tusk|r
.complete 48080,1 
.mob Mudbrush Boar
step
.goto 895,56.26,23.88,15,0
.goto 895,56.9,23.44,10,0
.goto 895,56.31,25.08,10,0
.goto 895,56.19,26.51,10,0
.goto 895,58.03,27.5,10,0
.goto 895,58.3,25.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caleb Batharen|r
.accept 48965 >>接任务: |cRXP_WARN_算清旧账|r
.target Caleb Batharen
step
.isOnQuest 48965
.goto 895,61.18,22.09 >>输入|cFFfa9602保存|r
step
.goto 895,61.67,22.73
>>杀死|cRXP_ENEMY_Chartusk|r
.complete 48965,1 
step
#label Mudbrush
.goto 895,58.29,25.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caleb Batharen|r
.turnin 48965 >>Turn in Settle the Score
.target Caleb Batharen
step
#completewith next
>>在|cRXP_ENEMY_Hollowbike Falcons|r上使用|T135553:0|t[Bola Launcher]
.complete 48616,1 
.mob Hollowbeak Falcon
.use 152643
step
.goto 895,58.03,27.5,10,0
.goto 895,56.19,26.51,10,0
.goto 895,56.31,25.08,10,0
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stoat Den|r and kill |cRXP_ENEMY_Faintstep Stoat|r loot them for |T1029741:0|t|cRXP_LOOT_[Soft Stoat Pelt]|r
.complete 48077,1 
.mob Faintstep Stoat
step
.goto 895,58.03,27.5,10,0
.goto 895,56.19,26.51,10,0
.goto 895,56.31,25.08,10,0
>>在|cRXP_ENEMY_Hollowbike Falcons|r上使用|T135553:0|t[Bola Launcher]
.complete 48616,1 
.use 152643
.mob Hollowbeak Falcon
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harold Beckett|r, |cRXP_FRIENDLY_Abbey Watkins|r and |cRXP_FRIENDLY_Melissa Kenny|r
.turnin 48616 >>Turn in Bolas and Birds
.turnin 48080 >>Turn in An Element of Danger
.goto 895,55.52,24.59
.turnin 48077,1 >>Turn in The Stoat Hunt
.goto 895,55.45,24.66
.accept 48670 >>接任务: |cRXP_WARN_落跑的骑士|r
.goto 895,55.59,24.6
.target Harold Beckett
.target Abbey Watkins
.target Melissa Kenny
step
.goto 895,54.47,19.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melissa Kenny|r
.turnin 48670 >>Turn in Runaway Rider
.accept 48196 >>接任务: |cRXP_WARN_跟踪埃迪的踪迹|r
.accept 48195 >>接任务: |cRXP_WARN_麻烦的穴居人|r
.target Melissa Kenny
step
#completewith Stone Soup
>>杀死|cRXP_ENEMY_Grimestone Bullies |r和|cRXX_ENEMY_Grimestone Thrower|r
.complete 48195,1 
.complete 48195,2 
.mob Grimestone Bully
.mob Grimestone Thrower
step
.goto 895,56.09,17.95
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Hotshot's corpse|r
.complete 48196,1 
step
.goto 895,56.17,17.96
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Recipe Rock|r
>>|cRXP_WARN_理想情况下，在杀死|cRXP_ENEMY_Grimestone厨师之前接受此任务|r|r
.accept 48778 >>接任务: |cRXP_WARN_石头汤|r
step
#completewith Stone Soup
>>杀死|cRXP_ENEMY_Grimestone厨师|r并掠夺他们|T237350:0|t|cRXP-loot_[无法辨认的肉]|r
.complete 48778,2 
.mob Grimestone Chef
step
.goto 895,56.15,17.99
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Soup Stone|r
.complete 48778,1,1 
step
.goto 895,55.95,17.51
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Trapped Saurolisk|r
.accept 48597 >>接任务: |cRXP_WARN_巨蜥逃亡|r
.target Trapped Saurolisk
step
.goto 895,56.38,17.79
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Post|r to free |cRXP_FRIENDLY_Trapped Saurolisk|r
.complete 48597,1,1 
.target Trapped Saurolisk
step
.goto 895,56.44,16.72
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Soup Stone|r
.complete 48778,1,2 
step
.goto 895,56.47,16.67
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Post|r to free |cRXP_FRIENDLY_Trapped Saurolisk|r
.complete 48597,1,2 
.target Trapped Saurolisk
step
.goto 895,56.22,16.14
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag of Horse Treats|r
.complete 48196,2 
step
.goto 895,56.03,15.3
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Soup Stone|r
.complete 48778,1,3 
step
.goto 895,55.88,14.45
>>杀死|cRXP_ENEMY_Boneface巨人|r并掠夺他|T135233:0|t|cRXX_loot_Boneface的“钥匙”|r
.complete 48196,3 
.mob Boneface the Giant
step
.goto 895,55.89,14.47
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Post|r to free |cRXP_FRIENDLY_Trapped Saurolisk|r
.complete 48597,1,3 
.target Trapped Saurolisk
step
.goto 895,55.62,14.58
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Trogg Cage|r to free |cRXP_FRIENDLY_Eddie Norwington|r
.complete 48196,4 
.target Eddie Norwingto
step
.goto 895,55.61,14.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eddie Norwington|r
.turnin 48196 >>Turn in Following Eddie's Trail
.target Eddie Norwington
step
.goto 895,55.99,15.36,5,0
.goto 895,56.87,15.1
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Soup Stone|r
.complete 48778,1,4 
step
#completewith Stone Soup
>>杀死|cRXP_ENEMY_Grimestone处理者|r并掠夺它们|T152620:0|t|cRXP-loot_[Saurolisk等级]|r
.complete 48778,3 
.mob Grimestone Handlers
step
.goto 895,58.07,14.57
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stirring Bone|r
.complete 48778,4 
step
.goto 895,58.32,14.43
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Post|r to free |cRXP_FRIENDLY_Trapped Saurolisk|r
.complete 48597,1,4 
.target Trapped Saurolisk
step
.goto 895,58.44,15.27
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Post|r to free |cRXP_FRIENDLY_Trapped Saurolisk|r
.complete 48597,1,5 
.target Trapped Saurolisk
step
#label Stone Soup
.goto 895,58.18,15.63
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Post|r to free |cRXP_FRIENDLY_Trapped Saurolisk|r
.complete 48597,1,6 
.target Trapped Saurolisk
step
#completewith Bullies
>>杀死|cRXP_ENEMY_Grimestone处理者|r并掠夺它们|T152620:0|t|cRXP-loot_[Saurolisk等级]|r
.complete 48778,3 
.mob Grimestone Handler
step
#completewith Bullies
>>杀死|cRXP_ENEMY_Grimestone厨师|r并掠夺他们|T237350:0|t|cRXP-loot_[无法辨认的肉]|r
.complete 48778,2 
.mob Grimestone Chef
step
.goto 895,56.56,15.55
#label Bullies
>>杀死|cRXP_ENEMY_Grimestone Bullies |r和|cRXX_ENEMY_Grimestone Thrower|r
.complete 48195,1 
.complete 48195,2 
.mob Grimestone Bully
.mob Grimestone Thrower
step
#completewith next
>>杀死|cRXP_ENEMY_Grimestone处理者|r并掠夺它们|T152620:0|t|cRXP-loot_[Saurolisk等级]|r
.goto 895,58.07,14.57
.complete 48778,3 
.mob Grimestone Handler
step
.goto 895,56.56,15.55
>>杀死|cRXP_ENEMY_Grimestone厨师|r并掠夺他们|T237350:0|t|cRXP-loot_[无法辨认的肉]|r
.complete 48778,2 
.mob Grimestone Chef
step
.goto 895,56.56,15.55
>>杀死|cRXP_ENEMY_Grimestone处理者|r并掠夺它们|T152620:0|t|cRXP-loot_[Saurolisk等级]|r
.complete 48778,3 
.mob Grimestone Handler
step
.goto 895,56.56,15.55
>>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_鼓泡釜|r
.turnin 48778 >>Turn in Stone Soup
step
.goto 895,54.47,19.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melissa Kenny|r
.turnin 48195 >>Turn in Troublesome Troglodytes
.turnin 48597 >>Turn in Saurolisk Escape
.accept 48003 >>接任务: |cRXP_WARN_勋爵的邀请|r
.target Melissa Kenny
step
.goto 895,51.57,27.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Aldrius Norwington|r
.turnin 48003 >>Turn in The Lord's Behest
.accept 48005 >>接任务: |cRXP_WARN_热情好客|r
.target Lord Aldrius Norwington
step
.goto 895,51.57,27.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Aldrius Norwington|r
.turnin 48003 >>Turn in The Lord's Behest
.accept 48005 >>接任务: |cRXP_WARN_热情好客|r
.target Lord Aldrius Norwington
step
.goto 895,51.45,26.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dolan Northfield|r
.target Dolan Northfield
.complete 48005,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joma|r and |cRXP_FRIENDLY_Majo|r
.accept 48898 >>接任务: |cRXP_WARN_好运符|r
.accept 48902 >>接任务: |cRXP_WARN_充沛能量|r
.goto 895,51.31,25.90
.accept 48899 >>接任务: |cRXP_LOOT_安全第一|r
.goto 895,51.29,25.87
.target Joma
.target Majo
step
.goto 895,49.74,25.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur Seville|r
.complete 48005,2 
.target Arthur Seville
step
#completewith next
.goto 895,49.74,25.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur Seville|r
.vendor 126600 >>|cRXP_WARN_空袋子/必要时在Arthur Seville补充食物和水|r
.target Arthur Seville
step
.goto 895,48.7,28.1
>>站在箭头上使|cRXP_ENEMY_Lucktail |r产生|cRXP-WARN_并对其造成60%|r的伤害
.complete 48898,1 
.mob Lucktail
step
.goto 895,48.12,25.43
>>顺着箭头移动，伤害|cRXP_ENEMY_Lucktail|r至30%
.complete 48898,2 
.mob Lucktail
step
#completewith LucktailWaterfall
>>杀死|cRXP_ENEMY_Venomscale Slitherer|r并掠夺它们以获得|cRXD_loot_Pursating Extract|r
*|cRXP_WARN_Kill every |cRXP_ENEMY_Venomscale Slitherer|r that you see in close proximity.|r
.complete 48902,1 
.mob Venomscale Slitherer
step
.goto 895,48.56,24.91
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Durable Seashell|r |cFFfa9602on the ground.|r
.complete 48899,1,1 
step
.goto 895,48.58,23.57
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Durable Seashell|r |cFFfa9602on the ground.|r
.complete 48899,1,2 
step
.goto 895,49.1,23.66
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Durable Seashell|r |cFFfa9602on the ground.|r
.complete 48899,1,3 
step
.goto 895,49.51,22.55
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Durable Seashell|r |cFFfa9602on the ground.|r
.complete 48899,1,4 
step
.goto 895,49.42,22.02
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Durable Seashell|r |cFFfa9602on the ground.|r
.complete 48899,1,5 
step
.goto 895,49.67,22.37
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Durable Seashell|r |cFFfa9602on the ground.|r
.complete 48899,1,6 
step
.goto 895,49.67,22.37
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Durable Seashell|r |cFFfa9602on the ground.|r
.complete 48899,1,7 
step
.goto 895,50.18,22.51
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Durable Seashell|r |cFFfa9602on the ground.|r
.complete 48899,1,8 
step
.goto 895,50.7,22.19
#label LucktailWaterfall
>>杀死|cRXP_ENEMY_Lucktail |r并掠夺他获得|cRXD_loot_Lucktail的尾巴|r
.complete 48898,3 
.mob Lucktail
step
.goto 895,47.63,23.92,15,0
.goto 895,50.7,22.19
>>杀死|cRXP_ENEMY_Venomscale Slitherer|r并掠夺它们以获得|cRXD_loot_Pursating Extract|r
.complete 48902,1 
.mob Venomscale Slitherer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joma|r and |cRXP_FRIENDLY_Majo|r
.turnin 48898 >>Turn in Lucky Charm
.turnin 48902 >>Turn in Monstrous Energy
.goto 895,51.32,25.90
.turnin 48899 >>交任务: |cRXP_FRIENDLY_安全第一|r
.accept 48903 >>接任务: |cRXP_WARN_一定要完美的马|r
.goto 895,51.28,25.87
.timer 27, Majo RP
.target Majo
.target Joma
step
#completewith
>>|cRXP_WARN_匆忙如果你行动迅速，你可以在Majo到达马厩之前完成几个目标。|r
.complete 48903,1 
.target Majo
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hestia Strongbolt|r
.fp >>获取诺温顿庄园飞行路线
.target Hestia Strongbolt
step
.goto 895,53.10,28.36
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Wanted Posters|r
.accept 48347 >>接任务: |cRXP_WARN_尖角码头|r
.accept 51367 >>接任务: |cRXP_WARN_通缉：暴怒的大地卫士|r
step
.goto 895,53.31,28.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terry Rigglesmith|r |cFFfa9602inside the small house.|r
.complete 48005,4 
.target Terry Rigglesmith
step
.goto 895,53.48,28.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_George Mitchell|r |cFFfa9602outside the small house.|r
.complete 48005,3 
.target George Mitchell
step
.goto 895,51.68,25.67
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Goldie|r
.complete 48903,2 
.timer 5, Horse RP
.target Goldie
step
.goto 895,51.79,25.83
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Scout|r
.complete 48903,3 
.timer 5, Horse RP
.target Scout
step
.goto 895,51.87,25.98
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Avalon|r
.complete 48903,4 
.timer 5, Horse RP
.target Avalon
step
.goto 895,51.83,26.31
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Maxwell|r
.complete 48903,5 
.target Maxwell
step
.goto 895,51.81,26.14
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Majo|r
.complete 48903,6 
.target Majo
step
.goto 895,51.81,26.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joma|r
.turnin 48903,1 >>Turn in The Perfect Horse, of Course
.target Joma
step
.goto 895,51.65,26.21
.vehicle >>与|cRXP_FRIENDLY_Cooper|r交互

.target Cooper
.isOnQuest 48005
step
.goto 895,51.57,27.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Aldrius Norwington|r
.turnin 48005 >>Turn in Be Our Guest
.accept 48004 >>接任务: |cRXP_WARN_新手骑术|r
.target Lord Aldrius Norwington
step
.goto 895,51.41,26.86
>>使用|T132226:0|t（1）[快速冲刺]|cRXP_WARN_to冲刺|r和|T1661331:0|t|r
.complete 48004,2,1 
step
.goto 895,51.1,26.79
>>使用|T132226:0|t（1）[快速冲刺]|cRXP_WARN_to冲刺|r和|T1661331:0|t|r
.complete 48004,2,2 
step
.goto 895,50.8,26.66
>>使用|T132226:0|t（1）[快速冲刺]|cRXP_WARN_to冲刺|r和|T1661331:0|t|r
.complete 48004,2,3 
step
.goto 895,51.08,26.33
>>使用|T132226:0|t（1）[快速冲刺]|cRXP_WARN_to冲刺|r和|T1661331:0|t|r
.complete 48004,2,4 
step
.goto 895,51.41,26.87
>>使用|T132226:0|t（1）[快速冲刺]|cRXP_WARN_to冲刺|r和|T1661331:0|t|r
.complete 48004,2,5 
step
.goto 895,51.1,26.79
>>使用|T132226:0|t（1）[快速冲刺]|cRXP_WARN_to冲刺|r和|T1661331:0|t|r
.complete 48004,2,6 
step
#loop
.line 895,51.6,26.92,50.94,27.92,50.33,27.04,50.99,25.99,51.27,26.44
.goto 895,51.60,26.92,15,0
.goto 895,50.94,27.92,15,0
.goto 895,50.33,27.04,15,0
.goto 895,50.99,25.99,15,0
.goto 895,51.27,26.44,15,0
>>|cRXP_WARN_目标|r|cRXP_FRIENDLY_Paper Zeppelins|r和|cRXP-WARN_throw|T1661331:0|t（3）[Bolas]。|r
>>使用|T132226:0|t（1）[快速冲刺]|cRXP_WARN_to冲刺|r
.complete 48004,3 
.target Paper Zeppelin
step
.goto 895,50.9,26.81
>>|cRXP_WARN_你只需要在围栏附近/沿着围栏跳，不一定要跳过围栏。|r
>>使用|T132226:0|t（1）[快速冲刺]|cRXP_WARN_to冲刺|r
.complete 48004,4 
step
.goto 895,51.57,27.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Aldrius Norwington|r
.turnin 48004 >>Turn in Beginner Equitation
.accept 48087 >>接任务: |cRXP_WARN_取回马匹|r
.accept 48939 >>接任务: |cRXP_WARN_展示你的能力|r
.target Lord Aldrius Norwington
step
#completewith next
#title Challenge Explanation
+|cFFFF0000继续前读取|r
+最初，使用|T132226:0|t（1）[快速冲刺]|cRXP_WARN_to通过围栏跳跃进行冲刺和构建堆栈。达到15层后，优先用“博拉斯”和刺破Gnolls摧毁齐柏林飞船，同时每5秒更新一次以保持增益|r保持“快速冲刺”有效。
.isOnQuest 48939
step
.goto 895,51.52,27.03,5 >>|cRXP_WARN_一旦你到达目的地，计时器就会启动。你只有60秒的时间完成挑战。|r
.timer 66, Challenge Time
.isOnQuest 48939
step
#loop
.line 895,51.61,26.92,50.94,27.9,50.33,27.05,50.99,26.02
.goto 895,51.61,26.92,10,0
.goto 895,50.94,27.90,10,0
.goto 895,50.33,27.05,10,0
.goto 895,50.99,26.02,10,0
>>最初，使用|T132226:0|t（1）[快速冲刺]|cRXP_WARN_to通过围栏跳跃进行冲刺和构建堆栈。达到15层后，优先用“博拉斯”和刺破Gnolls摧毁齐柏林飞船，同时每5秒更新一次以保持增益|r保持“快速冲刺”有效。
.complete 48939,2
step
.goto 895,51.57,27.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Aldruis Norwington|r
.turnin 48939 >>Turn Show Me What You have
.target Lord Aldruis Norwington
step
.goto 895,52.57,28.72
.exitvehicle >>|cRXP_WARN_按操作栏上的|r[Exit]|cRXP_WARN_button，卸下Cooper。|r
*|cRXP_WARN_或者，您可以使用此宏；|r
.link /leavevehicle>>单击此处 FOR MACRO.
*|cRXP_WARN_建议保护此宏以备将来使用。|r
step
.goto 895,53.16,30.7
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Rose|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
.complete 48087,1 
.target Rose
step
.goto 895,52.54,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Aldrius Norwington|r
.complete 48087,2 
.target Lord Aldrius Norwington
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Aldrius Norwington|r and |cRXP_FRIENDLY_Gora Layton|r
.turnin 48087 >>Turn in Equine Retrieval
.accept 48088 >>接任务: |cRXP_WARN_没有穴居人的派对|r
.goto 895,52.54,28.50
.accept 48089 >>接任务: |cRXP_WARN_高山之声|r
.goto 895,52.48,28.55
.target Lord Aldrius Norwington
.target Gora Layton
step
#completewith Grimestone Intruders
>>杀死|cRXP_ENEMY_Grimestone入侵者|r
.complete 48088,1 
.mob Grimestone Invader
step
.goto 895,52.5,28.52
>>使用|T134228:0|t[山之号角]|cRXP_WARN_near Kul Tirans|r
>>|cRXP_WARN_不要安装|cRXP_FRIENDLY_Cooper|r，因为没有他你会更快。|r
.complete 48089,1,3 
.use 153357
step
#label Grimestone Intruders
.goto 895,51.61,29.59,15,0
.goto 895,51.01,28.48,15,0
.goto 895,50.96,27.04,15,0
.goto 895,51.63,25.97,15,0
.goto 895,53.06,28.64
>>使用|T134228:0|t[山之号角]在Kul Tirans附近集结。
>>|cRXP_WARN_不要安装|cRXP_FRIENDLY_Cooper|r，因为没有他你会更快。|r
.use 153357
.complete 48089,1 
step
#loop
.line 895,51.61,29.59,51.01,28.48,50.96,27.04,51.63,25.97,53.06,28.64
.goto 895,51.61,29.59,20,0
.goto 895,51.01,28.48,20,0
.goto 895,50.96,27.04,20,0
.goto 895,51.63,25.97,20,0
.goto 895,53.06,28.64,20,0
>>杀死|cRXP_ENEMY_Grimestone入侵者|r
.complete 48088,1 
.mob Grimestone intruders
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gora Layton|r and |cRXP_FRIENDLY_Lord Aldrius Norwington.|r
.turnin 48088 >>Turn in No Party Like a Trogg Party
.goto 895,52.54,28.46
.turnin 48089 >>Turn in Mountain Sounds
.goto 895,52.49,28.55
.target Lord Aldrius Norwington
.target Gora Layton
step
.goto 895,51.67,29.66
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Job Flyer|r
.accept 49393 >>接任务: |cRXP_WARN_蛮项人|r
step
.goto 895,47.26,32.37
>>杀死|cRXP_ENEMY_Raging Earthguard|r|cRXP-WARN_However，如果它太具挑战性，可以跳过它。|r
.complete 51367,1 
.mob Raging Earthguard
step
.goto 895,49.56,30.20,15,0
.goto 895,49.46,31.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Pinker|r
.accept 50026 >>接任务: |cRXP_WARN_救救我们的船员|r
step
.goto 895,50.31,37.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Henry Hardwick|r
.turnin 50026 >>Turn in Save Our Shipmates
.accept 47755 >>接任务: |cRXP_WARN_沉迷的俘虏|r
.accept 50002 >>接任务: |cRXP_WARN_“宝贝”货物|r

.target Henry Hardwick
step
#completewith Joe
.use 151135 >>|T133700:0|t在|cRXP_ENEMY_Enthralled Sailors上使用[Stein of Grog]|r
.complete 47755,1 
.mob Enthralled Sailor
step
.goto 895,51.11,35.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earless Joe|r
.accept 50059 >>接任务: |cRXP_WARN_充耳不闻|r
.target Earless Joe
step
#label Anthemusa
.line 895,51.11,35.80,52.07,35.62,52.81,34.62,53.89,33.72,53.64,32.66
.goto 895,53.7,32.8,15,0
.goto 895,52.07,35.62,15,0
.goto 895,52.81,34.62,15,0
.goto 895,53.89,33.72,15,0
.goto 895,53.64,32.66
>>杀死|cRXP_ENEMY_Anthemusa|r
.complete 50059,1 
.mob Anthemusa
.use 151135
step
.goto 895,55.49,35.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Penny "Precious" Hardwick|r
.turnin 50002 >>Turn in A Very Precious Cargo
.target Penny "Precious" Hardwick
step
.line 895,55.49,35.94,53.87,35.19,51.59,35.02,51.11,35.8
.goto 895,53.87,35.19,15,0
.goto 895,51.59,35.02,15,0
.goto 895,51.11,35.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earless Joe|r
.turnin 50059 >>Turn in Can't Hear A Thing
.target Earless Joe
step
.goto 895,50.31,37.23
.use 151135 >>|T133700:0|t在|cRXP_ENEMY_Enthralled Sailors上使用[Stein of Grog]|r
.complete 47755,1 
.mob Enthralled Sailor
step <<skip
#loop
.line 895,54.77,34.77,53.87,35.19,52.79,35.29,51.49,36.72,51.11,35.8,51.59,35.02,53.95,33.82,54.77,34.77
.goto 895,54.77,34.77,15,0
.goto 895,53.87,35.19,15,0
.goto 895,52.79,35.29,15,0
.goto 895,51.49,36.72,15,0
.goto 895,51.11,35.80,15,0
.goto 895,51.59,35.02,15,0
.goto 895,53.95,33.82,15,0
.goto 895,54.77,34.77,15,0
>>完成对诱惑警报器和巫妖怪的杀戮。点击失事物资和警报器风铃
.complete 50009,1 
step
.goto 895,50.31,37.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Henry Hardwick|r
.turnin 47755 >>Turn in Captured and Enraptured
.target Henry Hardwick
step
.goto 895,51.65,26.21
.vehicle >>与|cRXP_FRIENDLY_Cooper|r交互
.target Cooper
.isOnQuest 51367
step
.goto 895,51.57,27.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Aldrius Norwington|r
.turnin 51367 >>Turn in WANTED: Raging Earthguard
.accept 49036 >>接任务: |cRXP_WARN_最佳表演|r
.target Lord Aldrius Norwington
step
#completewith next
#title Challenge Explanation 2
+|cFFFF0000继续前读取；这比以前更难了|r
+最初，使用|T132226:0|t（1）[快速冲刺]|cRXP_WARN_to通过围栏跳跃进行冲刺和构建堆栈。达到15层后，优先用“博拉斯”和刺破Gnolls摧毁齐柏林飞船，同时每5秒更新一次以保持增益|r保持“快速冲刺”有效。
.isOnQuest 49036
step
.goto 895,51.52,27.03,5 >>|cRXP_WARN_一旦你到达目的地，计时器就会启动。你只有60秒的时间完成挑战。|r
.timer 66, Challenge Time
.isOnQuest 49036
step
#loop
.line 895,51.61,26.92,50.94,27.9,50.33,27.05,50.99,26.02
.goto 895,51.61,26.92,10,0
.goto 895,50.94,27.90,10,0
.goto 895,50.33,27.05,10,0
.goto 895,50.99,26.02,10,0
>>最初，使用|T132226:0|t（1）[快速冲刺]|cRXP_WARN_to通过围栏跳跃进行冲刺和构建堆栈。达到15层后，优先用“博拉斯”和刺破Gnolls摧毁齐柏林飞船，同时每5秒更新一次以保持增益|r保持“快速冲刺”有效。
.complete 49036,2
step
.goto 895,51.57,27.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Aldruis Norwington|r
.turnin 49036 >>Turn in Best In Show
.target Lord Aldruis Norwington
step
.goto 895,52.57,28.72
.exitvehicle >>|cRXP_WARN_按操作栏上的|r[Exit]|cRXP_WARN_button，卸下Cooper。|r
*|cRXP_WARN_或者，您可以使用此宏；|r
.link /leavevehicle>>单击此处 FOR MACRO.
*|cRXP_WARN_建议保护此宏以备将来使用。|r
step
#completewith next
.goto 895,42.48,23.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dagin|r
.fp >>获取Roughneck营地飞行路线
.target Dagin
step
.goto 895,42.16,22.99
>>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Wanted海报|r
.accept 51368 >>接任务: |cRXP_WARN_通缉：大黄蜂|r
step
#label HelloTagart
.goto 895,42.36,22.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tagart|r
.turnin 49393 >>Turn in The Roughnecks
.accept 49394 >>接任务: |cRXP_WARN_站稳别动|r
.accept 49395 >>接任务: |cRXP_WARN_熊与蜂蜜|r
.target Tagart
step
#completewith HelpingHenry
>>在|cRXP_ENEMY_Gentle Goats上使用|T135649:0|t[山羊剪]|r
>>|cRXP_WARN_Gots可能会变得敌对|r*。
.complete 49394,1 
.use 153596
.target Gentle Goat
step
#completewith HelpingHenry
>>杀死|cRXP_ENEMY_Scrufffhide熊|r
.complete 49395,2 
.mob Scruffhide Bear
step
.goto 895,45.39,20.32
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sticky Bee Honey|r
.complete 49395,1,1 
step
.goto 895,45.94,20.55
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sticky Bee Honey|r
.complete 49395,1,2 
step
.goto 895,46.49,19.59
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sticky Bee Honey|r
.complete 49395,1,3 
step
.goto 895,47.44,19.38
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sticky Bee Honey|r
.complete 49395,1,4 
step
.goto 895,47.1,18.7
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sticky Bee Honey|r
.complete 49395,1,5 
step
.goto 895,47.46,18.22,10,0
.goto 895,47.11,18.2
>>杀死洞穴中的|cRXP_ENEMY_Hornet|r|cFFfa9602 |r|cRXP_WARN_If此任务可能非常困难；请随意跳过它|r
.complete 51368,1 
.mob The Hornet
step
.goto 895,47.44,18.04
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sticky Bee Honey|r
.complete 49395,1,6 
step
.goto 895,47.7,17.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Helpless" Henry|r
.accept 49412 >>接任务: |cRXP_WARN_帮助亨利|r
.target "Helpless" Henry
step
.goto 895,48.18,18.11
>>杀死|cRXP_ENEMY_Brawr|r
.complete -49412,1 
.mob Brawr
step
#label HelpingHenry
.goto 895,47.68,17.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Helpless" Henry|r
.turnin -49412 >>Turn in Helping Henry
.target "Helpless" Henry
step
#completewith next
>>在|cRXP_ENEMY_Gentle Goats上使用|T135649:0|t[山羊剪]|r
>>|cRXP_WARN_燕麦在剪切时可能会变得敌对。
.complete 49394,1 
.use 153596
.target Gentle Goat
step
.goto 895,42.36,22.27
>>杀死|cRXP_ENEMY_Scrufffhide熊|r
.complete 49395,2 
.mob Scruffhide Bear
step
.goto 895,42.36,22.27
>>在|cRXP_ENEMY_Gentle Goats上使用|T135649:0|t[山羊剪]|r
>>|cRXP_WARN_燕麦在剪切时可能会变得敌对。
.complete 49394,1 
.use 153596
.target Gentle Goat
step
.goto 895,42.36,22.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jagart|r
.turnin 51368 >>Turn in WANTED: The Hornet
.turnin 49394 >>Turn in Hold Still
.turnin 49395 >>Turn in The Bears and the Bees
.isQuestComplete 51368
.target Jagart
step
.goto 895,42.36,22.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jagart|r
.turnin 49394 >>Turn in Hold Still
.turnin 49395 >>Turn in The Bears and the Bees
.target Jagart
step
#completewith HelloAgainTagart
.abandon 51368 >>放弃通缉：黄蜂
.isOnQuest 51368
step
.goto 895,42.49,22.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rulf|r
.accept 49735 >>接任务: |cRXP_WARN_保护巢穴|r
.accept 49710 >>接任务: |cRXP_WARN_狮鹫蛋供品|r
.target Rulf
step
#completewith Spotted Gryphon Egg
>>杀死|cRXP_ENEMY_Hungry Dewscales|r
.complete 49735,1 
.mob Hungry Dewscale
step
.goto 895,44.76,20.21
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Spotted Gryphon Egg|r
.complete 49710,1,1 
step
.goto 895,45.87,18.48
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Spotted Gryphon Egg|r
.complete 49710,1,2 
step
.goto 895,46.38,18.25
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Spotted Gryphon Egg|r
.complete 49710,1,3 
step
#label Spotted Gryphon Egg
.goto 895,46.38,18.25
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Spotted Gryphon Egg|r
.complete 49710,1.4 
step
.goto 895,47.94,16.47
>>杀死|cRXP_ENEMY_Hungry Dewscales|r
.complete 49735,1 
.mob Hungry Dewscales
step
.goto 895,47.94,16.47
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gryphon Nest|r
.turnin 49710 >>Turn in An Offering of Eggs
step
.goto 895,47.85,16.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shawn McClinter|r
.turnin 49735 >>Turn in Protect the Nests
.accept 49417 >>接任务: |cRXP_WARN_蛮项骑手|r
.target Shawn McClinter
step
.goto 895,47.91,18.53
>>使用|T1373906:0|t[Tether Shot]在|cRXP_FRIENDLY_Greatfheet|r上
>>|cRXP_WARN_冷却时使用[1]、[2]、[3]。|r
.complete 49417,1 
.use 153679
.target Greatfeather
step
#label HelloAgainTagart
.goto 895,42.36,22.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_cTagart|r
.turnin 49417,1 >>Turn in Roughneck Riders
.accept 49418 >>接任务: |cRXP_WARN_大老板|r
.target Tagart
step
.goto 895,41.99,16.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss Tak|r
.turnin 49418 >>Turn in Big Boss
.accept 49433 >>接任务: |cRXP_WARN_雪怪|r
.accept 49435 >>接任务: |cRXP_WARN_他们去哪了？|r
.target Boss Tak
step
.goto 895,42.27,15.49
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bloodied Boot|r
.complete 49435,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Savage Wendigos|r
.complete 49433,1 
.mob Savage Wendigo
step
.goto 895,43.68,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Helpless" Henry|r
.accept 49419 >>接任务: |cRXP_WARN_急冻人|r
.target "Helpless" Henry
step
.goto 895,43.73,14.66
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Roughneck Supplies|r |cFFfa9602by the Supply Cart|r
.complete 49435,2 
step
.goto 895,44.91,15.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Griddon|r
.accept 49431 >>接任务: |cRXP_WARN_温暖舒适|r
.target Griddon
step
#completewith Prince Rathaw
>>杀死|cRXP_LOOT_Steam元素|r并掠夺它们以获得|cRXP_LOOT_Steamy Essence |r。
.complete 49431,1 
step
.goto 895,45.72,14.97
.cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Steam Shards|r
.isOnQuest 49431
step
.goto 895,46.77,15.15
.cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Steam Shards|r
.isOnQuest 49431
step
.goto 895,46.81,14.72
.cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Steam Shards|r
.isOnQuest 49431
step
.goto 895,46.81,13.79
.cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Steam Shards|r
.isOnQuest 49431
step
#label Prince Rathaw
.goto 895,48.67,14.62
>>杀死|cRXP_ENEMY_Prince Rathaw|r并掠夺他获得|cRXX_ENEMY_Fiery Essence |r
.complete 49419,1 
.mob Prince Rathaw
step
.goto 895,44.91,15.5
>>杀死|cRXP_LOOT_Steam元素|r并掠夺它们以获得|cRXP_LOOT_Steamy Essence |r。
.complete 49431,1 
step
.goto 895,44.91,15.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Griddon|r
.turnin 49431,1 >>Turn in Warm and Cozy
.target Griddon
step
.goto 895,43.68,15.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Helpless" Harry|r
.target "Helpless" Harry
.turnin 49419 >>Turn in Frozen
step
#completewith Rucksack
>>杀死|cRXP_ENEMY_Savage Wendigos|r
.complete 49433,1 
.mob Savage Wendigo
step
.goto 895,41.58,13.99
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Roughneck Axe|r
.complete 49435,3 
step
.goto 895,39.68,13.35
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Discarded Rucksack|r
.complete 49435,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss Tak|r |cFFfa9602next to you.|r
.turnin 49435 >>Turn in Where'd They Go?
.accept 49439 >>接任务: |cRXP_WARN_老板的复仇|r
.target Boss Tak
step
#label Rucksack
.goto 895,39.33,12.37
>>在洞穴中杀死|cRXP_ENEMY_Whumpus|r|cFFfa9602|r
.complete 49439,1 
.mob Whompus
step
.goto 895,42.27,15.49
>>杀死|cRXP_ENEMY_Savage Wendigos|r
.complete 49433,1 
.mob Savage Wendigo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss Tak|r |cFFfa9602next to you.|r
.turnin 49433 >>Turn in Wendies
.turnin 49439 >>Turn in Boss' Revenge
.accept 49719 >>接任务: |cRXP_WARN_领取报酬|r
.target Boss Tak
step
.goto 895,42.37,22.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tagart|r
.turnin 49719 >>Turn in Getting Paid
.target Tagart
step
.goto 895,43.74,25.38,20,0
.goto 895,43.71,26.64,20,0
.goto 895,42.28,29.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Therold|r
.turnin 48347 >>Turn in Anglepoint Wharf
.accept 48540 >>接任务: |cRXP_WARN_帮助码头|r
step
.goto 895,42.28,29.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Therold|r
.turnin 48347 >>Turn in Anglepoint Wharf
.accept 48540 >>接任务: |cRXP_WARN_帮助码头|r
.target Brother Therold
step
.goto 895,43.23,29.67
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bundle of Vellum|r on the barrel.
>>|cRXP_WARN_it's very small.|r
.complete 48540,2 
step
.goto 895,41.93,30.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hera Copeland|r
.complete 48540,1 
.skipgossip
.target Hera Copeland
step
.goto 895,41.79,30.04
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Jar of Blubber|r
.complete 48540,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Therold|r and |cRXP_FRIENDLY_Okri Putterwrench|r
.turnin 48540 >>Turn in Aiding the Wharf
.accept 48352 >>接任务: |cRXP_WARN_来自海洋的解药|r
.accept 49268 >>接任务: |cRXP_WARN_水中的鲨鱼|r
.goto 895,42.28,29.31
.accept 48348 >>接任务: |cRXP_WARN_刺人的倒刺|r
.goto 895,42.19,29.32
.target Brother Therold
.target Okri Putterwrench
step
#completewith Intact Venomous Barb
>>杀死|cRXP_ENEMY_入侵的Dreadmaw|r
>>|cRXP_WARN_在海底跑步以加快运动速度。|r
.complete 49268,1 
.mob Invading Dreadmaw
step
#completewith Intact Venomous Barb
>>杀死|cRXP_ENEMY_Barbtail毒刺|r并掠夺它们|T132274:0|t|cRXP-loot_[完整的毒刺]|r
.complete 48348,1 
.mob Barbtail Stingray
step
.goto 895,41.7,29.07
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seaweed|r on the seafloor.
>>|cRXP_WARN_拾取|cRXP_PICK_Seaweed|r时杀死|cRXP_ENEMY_Invading Dreadmaw|r和|cRXD_ENEMY_Barbtail Stingray |r|r
.complete 48352,1,1 
step
.goto 895,41.47,28.98
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seaweed|r on the seafloor.
>>|cRXP_WARN_拾取|cRXP_PICK_Seaweed|r时杀死|cRXP_ENEMY_Invading Dreadmaw|r和|cRXD_ENEMY_Barbtail Stingray |r|r
.complete 48352,1,2 
step
.goto 895,40.93,28.25
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seaweed|r on the seafloor.
>>|cRXP_WARN_拾取|cRXP_PICK_Seaweed|r时杀死|cRXP_ENEMY_Invading Dreadmaw|r和|cRXD_ENEMY_Barbtail Stingray |r|r
.complete 48352,1,3 
step
.goto 895,40.12,28.58
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seaweed|r on the seafloor.
>>|cRXP_WARN_拾取|cRXP_PICK_Seaweed|r时杀死|cRXP_ENEMY_Invading Dreadmaw|r和|cRXD_ENEMY_Barbtail Stingray |r|r
.complete 48352,1,4 
step
.goto 895,40.24,29.19
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seaweed|r on the seafloor.
>>|cRXP_WARN_拾取|cRXP_PICK_Seaweed|r时杀死|cRXP_ENEMY_Invading Dreadmaw|r和|cRXD_ENEMY_Barbtail Stingray |r|r
.complete 48352,1,5 
step
.goto 895,40.26,29.79
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seaweed|r on the seafloor.
>>|cRXP_WARN_拾取|cRXP_PICK_Seaweed|r时杀死|cRXP_ENEMY_Invading Dreadmaw|r和|cRXD_ENEMY_Barbtail Stingray |r|r
.complete 48352,1,6 
step
.goto 895,40.86,29.55
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seaweed|r on the seafloor.
>>|cRXP_WARN_拾取|cRXP_PICK_Seaweed|r时杀死|cRXP_ENEMY_Invading Dreadmaw|r和|cRXD_ENEMY_Barbtail Stingray |r|r
.complete 48352,1,7 
step
#label Intact Venomous Barb
.goto 895,41.04,29.46
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seaweed|r on the seafloor.
>>|cRXP_WARN_拾取|cRXP_PICK_Seaweed|r时杀死|cRXP_ENEMY_Invading Dreadmaw|r和|cRXD_ENEMY_Barbtail Stingray |r|r
.complete 48352,1,8 
.mob Invading Dreadmaw
.mob Barbtail Stingray
step
#completewith next
>>杀死|cRXP_ENEMY_入侵的Dreadmaw|r
>>|cRXP_WARN_在海底跑步以加快运动速度。|r
.complete 49268,1 
.mob Invading Dreadmaw
step
#loop
.line 895,40.58,30.41,40.09,30.9,41.04,31.54,41.78,31.05
.goto 895,40.58,30.41,15,0
.goto 895,40.09,30.90,15,0
.goto 895,41.04,31.54,15,0
.goto 895,41.78,31.05,15,0
>>杀死|cRXP_ENEMY_Barbtail毒刺|r并掠夺它们|T132274:0|t|cRXP-loot_[完整的毒刺]|r
.complete 48348,1 
.mob Barbtail Stingray
step
#loop
.line 895,40.58,30.41,40.09,30.9,41.04,31.54,41.78,31.05
.goto 895,40.58,30.41,15,0
.goto 895,40.09,30.90,15,0
.goto 895,41.04,31.54,15,0
.goto 895,41.78,31.05,15,0
>>杀死|cRXP_ENEMY_入侵的Dreadmaw|r
>>|cRXP_WARN_在海底跑步以加快运动速度。|r
.complete 49268,1 
.mob Invading Dreadmaw
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Okri Putterwrench|r and |cRXP_FRIENDLY_Brother Therold|r
.turnin 48348 >>Turn in Stinging Barbs
.goto 895,42.19,29.32
.turnin 48352,2 >>Turn in A Cure from the Sea
.turnin 49268 >>Turn in Sharks in the Water
.accept 49292 >>接任务: |cRXP_WARN_海藻摇剂|r
.accept 48353 >>接任务: |cRXP_WARN_尖角的动向|r
.goto 895,42.28,29.31
.target Okri Putterwrench
.target Brother Therold
step
.goto 895,42.61,27.42
>>与|cRXP_FRIENDLY_Nauseated Village|r互动以治疗他。
>>|cRXP_WARN_治疗后迅速飞走，避免感染|cRXP_ENEMY_感染性肠虫|r|r
.use 153513
.complete 49292,1,1 
.target Nauseated Villager
step
.goto 895,42.30,26.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julian Nichols|r
.complete 48353,1 
.skipgossip
.target Julian Nichols
step
.goto 895,42.24,27.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginger Freelin|r
.complete 48353,2 
.skipgossip
.target Ginger Freelin
step
.goto 895,42.1,27.23
>>与|cRXP_FRIENDLY_Nauseated Village|r互动以治疗他。
>>|cRXP_WARN_治疗后迅速飞走，避免感染|cRXP_ENEMY_感染性肠虫|r|r
.use 153513
.complete 49292,1,2 
.target Nauseated Villager
step
.goto 895,41.9,27.31
>>与|cRXP_FRIENDLY_Nauseated Village|r互动以治疗他。
>>|cRXP_WARN_治疗后迅速飞走，避免感染|cRXP_ENEMY_感染性肠虫|r|r
.use 153513
.complete 49292,1,3 
.target Nauseated Villager
step
.isOnQuest 48353
.goto 895,41.68,26.98
.gossipoption 47948 >>Talk to |cRXP_FRIENDLY_Aaron Gutier|r
.timer 9, Time until |cRXP_ENEMY_Aaron Gutier's|r vulnerability.
.target Aaron Gutier
step
.goto 895,41.53,26.5
>>与|cRXP_FRIENDLY_Nauseated Village|r互动以治疗他。
>>|cRXP_WARN_治疗后迅速飞走，避免感染|cRXP_ENEMY_感染性肠虫|r|r
.use 153513
.complete 49292,1,4 
.target Nauseated Villager
step
.goto 895,41.87,26.68
>>与|cRXP_FRIENDLY_Nauseated Village|r互动以治疗他。
>>|cRXP_WARN_治疗后迅速飞走，避免感染|cRXP_ENEMY_感染性肠虫|r|r
.use 153513
.complete 49292,1,5 
.target Nauseated Villager
step
.goto 895,41.94,26.81
>>与|cRXP_FRIENDLY_Nauseated Village|r互动以治疗他。
>>|cRXP_WARN_治疗后迅速飞走，避免感染|cRXP_ENEMY_感染性肠虫|r|r
.use 153513
.complete 49292,1,6 
.target Nauseated Villager
step
.goto 895,41.9,27.3
>>与|cRXP_FRIENDLY_Nauseated Village|r互动以治疗他。
>>|cRXP_WARN_治疗后迅速飞走，避免感染|cRXP_ENEMY_感染性肠虫|r|r
.use 153513
.complete 49292,1,6 
.target Nauseated Villager
step
.goto 895,41.64,26.96
>>杀死|cRXP_ENEMY_Aaron Gutier|r
.complete 48353,3 
.mob Aaron Gutier
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Therold|r
.goto 895,41.29,27.00
.turnin 49292 >>Turn in Algae Shakes
.turnin 48353 >>Turn in Pulse of the Wharf
.accept 48355 >>接任务: |cRXP_WARN_疏散场地|r
.accept 48354 >>接任务: |cRXP_WARN_被污染的货物|r
.target Brother Therold
step
.goto 895,40.96,26.94
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrels of Fish|r
>>|cRXP_WARN_杀死|cRXP_ENEMY_感染Brainworm|r|r
.complete 48354,1,1 
.mob Infesting Brainworm
step
.goto 895,40.73,26.93
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrels of Fish|r
>>|cRXP_WARN_杀死|cRXP_ENEMY_感染Brainworm|r|r
.complete 48354,1,2 
.mob Infesting Brainworm
step
.goto 895,40.73,26.93
>>使用您的|cRXP_WARN_[额外操作按钮]|r疏散|cRXP-FRIENDLY_Anglepoint Fishpacker|r
.complete 48355,1,2 
.target Anglepoint Fishpackers
step
.goto 895,40.39,26.86
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrels of Fish|r
>>|cRXP_WARN_杀死|cRXP_ENEMY_感染Brainworm|r|r
.complete 48354,1,3 
.mob Infesting Brainworm
step
.goto 895,40.73,26.93
>>使用您的|cRXP_WARN_[额外操作按钮]|r疏散|cRXP-FRIENDLY_Anglepoint Fishpacker|r
.complete 48355,1,3 
.target Anglepoint Fishpackers
step
#completewith Barrel of Fish
>>使用您的|cRXP_WARN_[额外操作按钮]|r疏散|cRXP-WARN_earby|r|cRXP_FRIENDLY_Anglepoint Fishbacker|r
.complete 48355,1 
.target Anglepoint Fishpackers
step
.goto 895,39.94,27.13
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrels of Fish|r
>>|cRXP_WARN_杀死|cRXP_ENEMY_感染Brainworm|r|r
.complete 48354,1,4 
.mob Infesting Brainworm
step
#label Barrel of Fish
.goto 895,40.01,26.91
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrels of Fish|r
>>|cRXP_WARN_杀死|cRXP_ENEMY_感染Brainworm|r|r
.complete 48354,1,5 
.mob Infesting Brainworm
step
.goto 895,40.15,26.68,10,0
.goto 895,39.96,26.4,10,0
.goto 895,39.75,26.56
.goto 895,39.49,26.68
>>使用您的|cRXP_WARN_[额外操作按钮]|r疏散|cRXP-WARN_earby|r|cRXP_FRIENDLY_Anglepoint Fishbacker|r
.complete 48355,1 
.target Anglepoint Fishpackers
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Therold|r and |cRXP_FRIENDLY_Keegan Alby|r
.turnin 48354 >>Turn in Tainted Shipments
.turnin 48355 >>Turn in Evacuate the Premises
.accept 48356 >>接任务: |cRXP_WARN_附体之人|r
.goto 895,39.49,26.68
.accept 48365 >>接任务: |cRXP_WARN_年轻的斯托颂勋爵|r
.accept 48009 >>接任务: |cRXP_WARN_叛徒守卫|r
.goto 895,39.52,26.74
.target Keegan Alby
.target Brother Therold
step
#completewith Overseer Bates
>>杀死|cRXP_ENEMY_Mind-added Enforcers|r、|cRXD_ENEMY_Possesed Dockworkers |r和|cRXP_ENEMY_Parasitic Mindspeers |r。
.complete 48356,1 
.complete 48009,1 
.mob Possessed Dockworkers
.mob Mind-addled Enforcers
.mob Parasitic Mindstealer
step
.goto 895,37.94,29.58,15,0
.goto 895,37.56,29.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Manager Yerold|r inside the building.
.accept 48008 >>接任务: |cRXP_WARN_危险货物|r
.accept 49299 >>接任务: |cRXP_WARN_深入敌后|r
.target Manager Yerold
step
.goto 895,38.03,29.81
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrels|r to burn |cRXP_PICK_Infested Cargo|r
.complete 48008,1,1 
step
.goto 895,39.49,31.67
>>杀死|cRXP_ENEMY_康威兄弟|r
.complete 48365,1 
.mob Brother Conway
step
.goto 895,38.09,30.54
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrels|r to burn |cRXP_PICK_Infested Cargo|r
.complete 48008,1,2 
step
.goto 895,37.62,29.69
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrels|r to burn |cRXP_PICK_Infested Cargo|r
.complete 48008,1,3
step
.goto 895,37.5,29.74
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrels|r to burn |cRXP_PICK_Infested Cargo|r
.complete 48008,1,4 
step
.goto 895,37.27,29.91
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrels|r to burn |cRXP_PICK_Infested Cargo|r
.complete 48008,1,5 
step
#label Overseer Bates
.goto 895,37.25,28.83
>>杀死楼梯顶部的|cRXP_ENEMY_Oversear Bates|r。
>>|cRXP_WARN_侧步/离开虚空之扫|r
.complete 49299,1 
.mob Overseer Bates
step
#loop
.line 895,36.84,30.21,37.38,31.11,38.21,31.79,39.23,31.02,38.87,28.98
.goto 895,36.84,30.21,30,0
.goto 895,37.38,31.11,30,0
.goto 895,38.21,31.79,30,0
.goto 895,39.23,31.02,30,0
.goto 895,38.87,28.98,30,0
>>杀死|cRXP_ENEMY_Mind-added Enforcers|r、|cRXD_ENEMY_Possesed Dockworkers |r和|cRXP_ENEMY_Parasitic Mindspeers |r。
.complete 48356,1 
.complete 48009,1 
.mob Possessed Dockworkers
.mob Mind-addled Enforcers
.mob Parasitic Mindstealer
step
.goto 895,37.57,29.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Manager Yerold|r inside the building.
.turnin 48008 >>Turn in Dangerous Cargo
.turnin 49299,1 >>Turn in Enemy Within
.target Manager Yerold
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Therold|r and |cRXP_FRIENDLY_Keegan Alby|r
.turnin 48356 >>Turn in Possessive Headgear
.goto 895,37.98,29.5,8,0
.goto 895,39.50,26.68
.turnin 48009 >>交任务: |cRXP_FRIENDLY_背叛|r of the Guard
.turnin 48365 >>Turn in The Young Lord Stormsong
.goto 895,39.52,26.74
.target Keegan Alby
.target Brother Therold
step
.goto 895,39.54,26.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brannon Stormsong|r
.accept 48366 >>接任务: |cRXP_WARN_划船求生|r
.target Brannon Stormsong
step
.goto 895,39.60,26.96
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Escape Rowboat|r
.complete 48366,1 
.timer 40, Rowboat Time
step
.goto 895,35.20,24.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brannon Stormsong|r
.turnin 48366 >>Turn in Paddle to Safety
.accept 48372 >>接任务: |cRXP_WARN_可怕的祈祷|r
.target Brannon Stormsong
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keegan Alby|r and |cRXP_FRIENDLY_Brother Therold|r
.accept 48370 >>接任务: |cRXP_WARN_深海死亡|r
.goto 895,35.25,24.17
.accept 48368 >>接任务: |cRXP_WARN_深海污秽|r
.goto 895,35.24,24.27
.target Keegan Alby
.target Brother Therold
step
.goto 895,34.95,24.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rosaline Madison|r
.accept 48367 >>接任务: |cRXP_WARN_那些不是鱼卵|r
.target Rosaline Madison
step
#completewith Western Corrupting Pylon
>>杀死|cRXP_ENEMY_Deepwarden追随者|r并摧毁|cRXX_ENEMY_Corrupted Eggs|r
>>|cRXP_WARN_在海底跑步，提高运动速度。|r
.complete 48367,1 
.complete 48370,1 
.mob Merciless Aberration
.mob K'thir Harbinger
.mob Willing Cultist
.mob Corrupted Egg
step
#completewith next
.isOnQuest 48368
.goto 895,33.86,25.77,15 >>沉入水中。
.goto 895,34.99,24.61,10 >>进入水下洞穴。
step
.goto 895,35.39,24.32
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pylon|r
.complete 48368,2 
step
#completewith next
.isOnQuest 48368
.goto 895,33.78,25.63,20 >>离开水下洞穴。
step
#completewith next
.isOnQuest 48368
.isOnQuest 48367
.goto 895,33.9,26.1,15 >>检查是否有腐烂的鸡蛋1
.goto 895,33.17,26.91,15 >>检查是否有腐烂的鸡蛋2
.goto 895,32.25,27.34,15 >>检查是否有腐烂的鸡蛋3
.goto 895,31.87,29.18,15 >>检查是否有腐烂的鸡蛋4
.goto 895,30.84,30.25,20 >>进入水下洞穴。
step
.goto 895,30.37,31.11
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pylon|r
.complete 48368,1 
step
#completewith next
.isOnQuest 48367
.isOnQuest 48368
.goto 895,31.35,29.13,20 >>离开水下洞穴。
.goto 895,32.01,26.68,15 >>检查是否有腐烂的鸡蛋5
.goto 895,32.44,24.65,15 >>检查是否有腐烂的鸡蛋6
.goto 895,32.8,24.01,15 >>检查是否有腐烂的鸡蛋7
.goto 895,32.55,23.52,15 >>检查是否有腐烂的鸡蛋8
.goto 895,31.86,22.69,15 >>检查是否有腐烂的鸡蛋9
.goto 895,31.56,21.88,15 >>检查是否有腐烂的鸡蛋1
.goto 895,30.3,20.17,15 >>进入水下洞穴。
step
.goto 895,29.99,19.40
>>杀死|cRXP_ENEMY_Director Deepwarden|r
.complete 48372,1 
.mob Director Deepwarden
step
#label Western Corrupting Pylon
.goto 895,30,19.36
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pylon|r
.complete 48368,3 
.mob Director Deepwarden
step
#loop
.line 895,31.56,21.88,31.86,22.69,32.55,23.52,32.8,24.0,32.44,24.65,32.01,26.68,31.87,29.18,32.25,27.34,33.17,26.9,33.9,26.1
.goto 895,31.56,21.88,20,0
.goto 895,31.86,22.69,20,0
.goto 895,32.55,23.52,20,0
.goto 895,32.80,24.00,20,0
.goto 895,32.44,24.65,20,0
.goto 895,32.01,26.68,20,0
.goto 895,31.87,29.18,20,0
.goto 895,32.25,27.34,20,0
.goto 895,33.17,26.90,20,0
.goto 895,33.90,26.10,20,0
>>杀死|cRXP_ENEMY_Deepwarden追随者|r并摧毁|cRXX_ENEMY_Corrupted Eggs|r
>>|cRXP_WARN_在海底跑步，提高运动速度。|r
.complete 48367,1 
.complete 48370,1 
.mob Merciless Aberration
.mob K'thir Harbinger
.mob Willing Cultist
.mob Corrupted Egg
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Therold|r, |cRXP_FRIENDLY_Brannon Stormsong|r and |cRXP_FRIENDLY_Rosaline Madison.|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
.turnin 48368 >>Turn in Deep Sea Defilement
.goto 895,31.02,21.91,30,0
.goto 895,35.23,24.27
.turnin 48370 >>Turn in Death in the Depths
.turnin 48372 >>Turn in Eldritch Invocations
.goto 895,35.2,24.19
.turnin 48367 >>Turn in Those Aren't Fish Eggs
.accept 49302 >>接任务: |cRXP_WARN_最致命的猎物|r
.goto 895,34.95,24.21
.target Brother Therold
.target Brannon Stormsong
.target Rosaline Madison
step
.hs >>炉石|cFFfa9602到Boralus|r
.isOnQuest 49302
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Alliance 10-60
#name 8A_蒂拉加德之声第2部分
#displayname Chapter 8 - Tiragarde Sound [2]
#next 9A_Drustvar
<<Alliance
step
.goto 1161,73.52,13.72,5,0
.goto 1161,68.76,21.09,10,0
.goto 1161,67.43,21.39,10,0
.goto 1161,68.16,21.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia|r
.turnin 46729 >>Turn in The Old Knight
.accept 47186 >>接任务: |cRXP_WARN_贤者圣殿|r
.target Taelia
step
.goto 1161,67.99,21.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r
.accept 52128 >>接任务: |cRXP_WARN_渡船通行证|r
.turnin 52128 >>Turn in Ferry Pass
.target Cyrus Crestfall
step
.goto 1161,67.33,22.75,5,0
.goto 1161,67.48,21.11,5,0
.goto 1161,68.96,21.19,5,0
.goto 1161,70.74,16.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_7th Legion Magus|r
.complete 47186,1 
.skipgossip
.target 7th Legion Magus
step
.goto 1161,68.76,21.09,10,0
.goto 1161,67.43,21.39,10,0
.goto 1161,68.16,21.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia|r
.turnin 47186 >>Turn in Sanctum of the Sages
.accept 47189 >>接任务: |cRXP_WARN_分裂的国度|r
.target Taelia
step
.goto 1161,68.38,22.10
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Scouting Map|r, then click Tiragarde Sound and accept the quest.
.complete 47189,1 
.accept 47960 >>接任务: |cRXP_WARN_提拉加德海峡|r
step
.goto 1161,68.17,22.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia|r
.turnin 47189 >>Turn in A Nation Divided
.turnin 47960 >>Turn in Tiragarde Sound
.target Taelia
step
.goto 1161,68.04,22.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·格雷迈恩|r
.accept 52654 >>接任务: |cRXP_WARN_阵营战役|r
.target Genn Greymane
step
.goto 1161,67.58,22.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
.accept 47181 >>接任务: |cRXP_WARN_冒烟的枪|r
.target Flynn Fairwind
step
.goto 1161,67.56,22.25
>>按下|cRXP_WARN_[额外操作按钮]|r
.complete 47181,1 
step
.goto 1161,67.56,22.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
.turnin 47181 >>Turn in The Smoking Gun
.target Flynn Fairwind
step
.goto 1161,67.99,21.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus Crestfall|r
.accept 47485 >>接任务: |cRXP_WARN_艾什凡贸易公司|r
.target Cyrus Crestfall
step
.goto 1161,67.09,23.4,10,0
.goto 1161,69.26,26.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
.turnin 52654 >>Turn in The War Campaign
.accept 52544 >>接任务: |cRXP_WARN_战争储备|r
.accept 51569 >>接任务: |cRXP_WARN_赞达拉战役|r
.target Halford Wyrmbane
step
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Zandalar Campaign table|r, then click Zuldazar and accept the quest
>>|TInterface/cursor/crosshair/interact.blp:20|Click on the Quest Complete pop-up in your Quest Tracker
.goto 1161,69.26,26.98
.accept 51570 >>接任务: |cRXP_WARN_据点：祖达萨|r
.turnin 51570 >>Turn in Foothold: Zuldazar
step
>>在地图上选择|cRXP_PICK_Zuldazar|r
.goto 1161,69.26,26.98
.complete 51569,1 
step
.goto 1161,69.26,26.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
.target Halford Wyrmbane
.turnin 51569 >>Turn in The Zandalar Campaign
.accept 51308 >>接任务: |cRXP_WARN_祖达萨|r Foothold
step
.goto 1161,69.27,26.98
.gossipoption 49384 >>对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
.timer 44, Halford Wyrmbane RP
.target Halford Wyrmbane
.isQuestAvailable 52462
step
#sticky
>>|cRXP_WARN_匆忙如果你行动迅速，你可以在角色扮演结束前完成几个目标|r
.complete 51308,1 
step <<skip
#completewith next
.goto 1161,74.13,12.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wesley Rockhold|r
.target Wesley Rockhold
.home >>将你的炉石设置为宝来罗斯
step << !KulTiran
.goto 1161,77.18,16.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crenzo Sparkshatter|r
.accept 52462 >>接任务: |cRXP_WARN_一大堆原料|r
.target Crenzo Sparkshatter
step << !KulTiran
.goto 1161,77.18,16.46
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Scrap-O-Matic 1000.|r
>>|T1698808:0|t插入纹身长裤并按压废料
.complete 52462,1 
step << !KulTiran
.goto 1161,77.18,16.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crenzo Sparkshatter|r
.turnin 52462 >>Turn in A Load of Scrap
.target Crenzo Sparkshatter
step
.goto 1161,74.17,24.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Will Melborne|r but **DON'T USE THE FERRY!*
.complete 47485,1 
.target Will Melborne
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Lloyd|r and |cRXP_FRIENDLY_Tallis Skyheart|r |cFFfa9602inside the tent.|r
.accept 51226 >>接任务: |cRXP_WARN_腹背受敌|r
.goto 895,80.63,42.07
.accept 49733 >>接任务: |cRXP_WARN_医疗后勤|r
.goto 895,81.10,42.49
.target Hawkmaster Lloyd
.target Tallis Skyheart
step
#completewith Injured Marine
>>杀死|cRXP_ENEMY_Brinefang Saurolisk|r
.complete 51226,1 
.mob Brinefang Saurolisk
step
.goto 895,80.81,41.48
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Injured Marines|r
.complete 49733,1,1 
.target Injured Marine
step
.goto 895,81.17,41.19
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Injured Marines|r
.complete 49733,1,2 
.target Injured Marine
step
.goto 895,81.85,40.54
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Injured Marines|r
.complete 49733,1,3 
.target Injured Marine
step
.goto 895,82.48,43.82
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Injured Marines|r
.complete 49733,1,4 
.target Injured Marine
step
#labelInjured Marine
.goto 895,82.21,44.06
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Injured Marines|r
.complete 49733,1,5 
.target Injured Marine
step
.goto 895,81.09,42.49
>>杀死|cRXP_ENEMY_Brinefang Saurolisk|r
.complete 51226,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tallis Skyheart|r, |cRXP_FRIENDLY_Officer Jovan|r |cFFfa9602inside the tent.|r and |cRXP_FRIENDLY_Hawkmaster Lloyd|r
.turnin 49733 >>交任务: |cRXP_FRIENDLY_修修补补|r the Rear
.accept 49734 >>接任务: |cRXP_WARN_叛徒之死|r
.accept 49716 >>接任务: |cRXP_WARN_忠诚的教训|r
.goto 895,81.09,42.49
.turnin 51226 >>Turn in Death from Two Sides
.accept 49720 >>接任务: |cRXP_WARN_自由之鸟|r
.goto 895,80.62,42.03
.accept 50249 >>接任务: |cRXP_WARN_伯拉勒斯的三重威胁|r
.target Hawkmaster Lloyd
.target Tallis Skyheart
.target Officer Jovan
step
#completewith Seahawk freed
>>杀死|cRXP_ENEMY_Harded Mutineer|r、|cRXD_ENEMY_Mutinous Falconer|r和|cRXP_ENEMY_mutinuous Halberdier|r掠夺它们以获得|cRXP_loot_海洋识别徽章|r
.complete 49716,1 
.mob Hardened Mutineer
.mob Mutinous Falconer
.mob Mutinous Halberdier
step
.goto 895,79.95,38.75
>>杀死|cRXP_ENEMY_Fernn Turncoat|r
*|cRXP_WARN_冷却时使用额外动作按钮.|r
.complete 49734,1 
.mob Fernn the Turncoat
step
.goto 895,80.41,37.63
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hawk Cage|r
.complete 49720,1,1 
step
.goto 895,80.17,37.13
>>杀死|cRXP_ENEMY_Stablemaster Diana|r
.complete 50249,2 
.mob Stablemaster Diana
step
.goto 895,79.28,36.89
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hawk Cage|r
.complete 49720,1,2 
step
.goto 895,78.08,36.74
>>杀死|cRXP_PICK_Hayden the Madshot|r
|cRXP_WARN_*冷却时使用额外动作按钮.|r
.complete 50249,3 
.mob Hayden the Madshot
step
.goto 895,78.85,38.04
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hawk Cage|r
.complete 49720,1,3 
step
.goto 895,79.11,37.92
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hawk Cage|r
.complete 49720,1,4 
step
.goto 895,78.78,38.82
>>杀死|cRXP_ENEMY_Oversear嚎叫|r
|cRXP_WARN_*冷却时使用额外动作按钮.|r
.complete 50249,1 
.mob Overseer Howling
step
#label Seahawk freed
.goto 895,79.49,38.59
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hawk Cage|r
.complete 49720,1,5 
step
.goto 895,80.17,37.13,10,0
.goto 895,78.08,36.74,10,0
.goto 895,79.49,38.59
>>杀死|cRXP_ENEMY_Harded Mutineer|r、|cRXD_ENEMY_Mutinous Falconer|r和|cRXP_ENEMY_mutinuous Halberdier|r掠夺它们以获得|cRXP_loot_海洋识别徽章|r
.complete 49716,1 
.mob Hardened Mutineer
.mob Mutinous Falconer
.mob Mutinous Halberdier
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Lloyd|r and |cRXP_FRIENDLY_Tallis Skyheart|r |cFFfa9602inside the tent.|r
.turnin 49720 >>Turn in Free Bird
.goto 895,80.62,42.05
.turnin 49734,2 >>Turn in Targeting a Turncoat
.turnin 49716 >>Turn in A Lesson on Trust
.turnin 50249 >>Turn in A Boralus Triple Threat
.goto 895,81.09,42.46
.target Hawkmaster Lloyd
.target Tallis Skyheart
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cagney|r and |cRXP_FRIENDLY_Olive|r
.turnin 47485 >>Turn in The Ashvane Trading Company
.accept 47486 >>接任务: |cRXP_WARN_可疑的货物|r
.accept 47487 >>接任务: |cRXP_WARN_劳动纠纷|r
.goto 895,76.83,43.43
.accept 47488 >>接任务: |cRXP_WARN_小小搬运工|r
.goto 895,76.82,43.49
.target Cagney
.target Olive
step
#completewith next
>>杀死|cRXP_ENEMY_Ashvane连警卫|r
.complete 47487,1 
.mob Company Enforcer
.mob Company Watchman
.mob Company Fusilier
step
.goto 895,79.02,45.78
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Posted Notice|r |cFFfa9602next to the door of the small house.|r
.accept 50573 >>接任务: |cRXP_WARN_管理层的消息|r
step
#completewith Labor Dispute
>>杀死|cRXP_ENEMY_Ashvane连警卫|r
.complete 47487,1 
.mob Company Enforcer
.mob Company Watchman
.mob Company Fusilier
step
.goto 895,79.56,45.67
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Marked Goods|r
.complete 47486,1,1 
step
.goto 895,80.63,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urchin Worker|r
.complete 47488,1,1 
.skipgossip
.target Urchin Worker
step
.goto 895,82.14,48.62
>>杀死|cRXP_ENEMY_Forgemaster Farthing|r并掠夺它们以获得|T1505961:0|t|cRXP-loot_Note|r
.complete 50573,1 
.mob Forgemaster Farthing
step
.goto 895,82.11,48.54
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Marked Goods|r
.complete 47486,1,2 
step
.goto 895,81.93,48.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urchin Worker|r
.complete 47488,1,2 
.skipgossip
.target Urchin Worker
step
.goto 895,81.51,49.11
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Marked Goods|r
.complete 47486,1,3 
step
.goto 895,81.34,49.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urchin Worker|r
.complete 47488,1,3 
.skipgossip
.target Urchin Worker
step
.goto 895,81.1,49.33
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Marked Goods|r
.complete 47486,1,4 
step
.goto 895,80.77,49.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urchin Worker|r
.complete 47488,1,4 
.skipgossip
.target Urchin Worker
step
.goto 895,80.46,48.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urchin Worker|r
.complete 47488,1,5 
.skipgossip
.target Urchin Worker
step
.goto 895,80.03,47.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urchin Worker|r
.complete 47488,1,6 
.skipgossip
.target Urchin Worker
step
.goto 895,80.18,47.27
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Marked Goods|r
.complete 47486,1,5 
step
.goto 895,79.13,46.96
>>杀死|cRXP_ENEMY_Taskmaster Williams|r|cFFfa9602在房子|r旁边，并掠夺它们以获得|T1505962:0|t|cRXP-loot_Note|r
.complete 50573,2 
.mob Taskmaster Williams
step
#loop
.line 895,79.68,48.71,,80.44,48.89,79.96,50.42,81.21,49.75
.goto 895,79.68,48.71,15,0
.goto 895,80.44,48.89,15,0
.goto 895,79.96,50.42,15,0
.goto 895,81.21,49.75,15,0
>>杀死|cRXP_ENEMY_Ashvane连警卫|r
.complete 47487,1 
.mob Company Enforcer
.mob Company Watchman
.mob Company Fusilier
step
#label Labor Dispute
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cagney|r and |cRXP_FRIENDLY_Flynn Fairwind|r
.turnin 47487 >>Turn in Labor Dispute
.goto 895,79.22,47.07,5,0
.goto 895,78.10,47.84
.turnin 47486 >>Turn in Suspicious Shipments
.turnin 47488 >>Turn in Small Haulers
.turnin 50573,1 >>Turn in Message from the Management
.accept 50531 >>接任务: |cRXP_WARN_眼皮底下|r
.goto 895,78.11,47.95
.target Cagney
.target Flynn Fairwind
step
.goto 895,75.85,49.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
.turnin 50531 >>Turn in Under Their Noses
.accept 53041 >>接任务: |cRXP_WARN_货物采样|r
.target Flynn Fairwind
step
.goto 895,74.75,50.13
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_LOOT_Raw Azerite Sample|r
.complete 53041,2 
step
.goto 895,75.17,50.75
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chemist Notes|r
.complete 53041,1 
.skipgossip
step
.goto 895,75.42,49.81,5,0
#completewith next
.vendor >>|cRXP_WARN_如有必要，请在修理工|r|cRXP_FRIENDLY_Jen处清空行李/修理设备|r
.target Jen the Fixer
step
.goto 895,75.55,49.94
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Wanted Poster.|r
.accept 50544 >>接任务: |cRXP_WARN_凯宁斯营地的猎人|r
step
.goto 895,75.88,50.64,5,0
#completewith next
.vendor >>|cRXP_WARN_如有必要，清空袋子/在|r|cRXP_FRIENDLY_Lidia Plank|r|cRXP_WARN_i处补充食物和水|r
.target Lidia Plank
step
.goto 895,75.7,50.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Junior Miner Joe|r
.accept 50349 >>接任务: |cRXP_WARN_矿石成灾|r
.target Junior Miner Joe
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Miner Theock|r and |cRXP_FRIENDLY_Head Chemist Walters.|r
.turnin 50349 >>Turn in An Overrun Mine
.accept 50351 >>接任务: |cRXP_WARN_开矿行动|r
.goto 895,78.16,55.94
.accept 50352 >>接任务: |cRXP_WARN_一撮艾泽里特|r
.goto 895,78.12,56.01
.target Chief Miner Theock
.target Head Chemist Walters
step
#completewith OrdnancePrim
>>杀死|cRXP_ENEMY_Animated Azerite|r、|cRXX_ENEMY_Bubbling Azerite|1r和|cRXP_ENEMY_Azerite Nibblers |r，并掠夺它们以获得|cRXD_loot_Azerite Dust|r
.complete 50352,1 
.mob Animated Azerite
.mob Bubbling Azerite
.mob Azerite Nibbler
step
.goto 895,76.24,57.21,5 >>输入|cFFfa9602房屋|r
.isOnQuest 50352
step
.goto 895,76.1,57.43
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Walter's Chemistry Kit|r |cFFfa9602next to the wall shelf.|r
.complete 50352,2 
step
.goto 895,76.15,57.62,5 >>离开|cFFfa9602房子|r
.isOnQuest 50352
step
.goto 895,76.98,57.78
.gossipoption 48413 >>Talk to |cRXP_FRIENDLY_Civil Technician Alena|r
.isOnQuest 50351
.target Civil Technician Alena
.timer 7, Civil Technician Alena RP
step
#label OrdnancePrim
.goto 895,77.31,60.49
.gossipoption 48300 >>Talk to |cRXP_FRIENDLY_Ordnance Handler Prim|r
.timer 6, Ordnance Handler Prim RP
.target Ordnance Handler Prim
.isOnQuest 50351
step
.goto 895,75.56,59.37
>>杀死|cRXP_ENEMY_Animated Azerite|r、|cRXX_ENEMY_Bubbling Azerite|1r和|cRXP_ENEMY_Azerite Nibblers |r，并掠夺它们以获得|cRXD_loot_Azerite Dust|r
.complete 50352,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ordnance Handler Prim|r and |cRXP_FRIENDLY_Civil Technician Alena.|r
.turnin 50351 >>Turn in Miner Operation
.turnin 50352 >>Turn in Pinch of Azerite
.goto 895,75.56,59.37
.accept 50356 >>接任务: |cRXP_WARN_当石头遇见炸药|r
.target Ordnance Handler Prim
.target Civil Technician Alena
step
.goto 895,76.11,59.92,5 >>进入|cFFfa9602洞穴|r
.isOnQuest 50356
step
.goto 895,76.16,60.32,10,0
.goto 895,76.51,60.59,8,0
.goto 895,76.61,59.90,8,0
.goto 895,76.27,59.31,10,0
.goto 895,74.96,59.94
>>杀死|cRXP_ENEMY_Earthshapper Brugaw|r。
>>|cRXP_WARN_冷却时使用额外动作按钮|r
.complete 50356,1 
.mob Earthshaper Brugaw
step
.goto 895,76.27,59.31,10,0
.goto 895,76.61,59.90,8,0
.goto 895,76.51,60.59,8,0
.goto 895,76.16,60.32,10,0
.goto 895,76.10,59.74,10 >>离开|cFFfa9602洞穴|r
.isOnQuest 50356
step
.goto 895,78.14,55.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Miner Theock|r
.turnin 50356 >>Turn in Rock Meet Dynamite
.target Chief Miner Theock
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanna Holton|r and |cRXP_FRIENDLY_Lord Kennings.|r
.turnin 50544 >>交任务: |cRXP_FRIENDLY_狩猎|rers of Kennings Lodge
.accept 48874 >>接任务: |cRXP_WARN_生锈陷阱|r
.goto 895,75.84,65.86
.accept 48873 >>接任务: |cRXP_WARN_灰熊末日|r
.accept 48879 >>接任务: |cRXP_WARN_寻找天鹰蛋|r
.goto 895,75.82,65.79
.target Chief Miner Theock
.target Lord Kennings
step
.goto 895,76.13,65.52
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weathered Job List|r
.accept 49028 >>接任务: |cRXP_WARN_鲁伯特的毛衣|r
.accept 49069 >>接任务: |cRXP_WARN_通缉：年迈的霜爪|r
step
#completewith Sprung Beartrap 1
>>杀死|cRXP_ENEMY_防护被子|r并掠夺它们以获得|cRXD_loot_结实被子|r
.complete 49028,1 
.mob Guarded Quillrat
step
#completewith Sprung Beartrap 2
>>杀死|cRXP_ENEMY_Monstrous Grizzlies|r，然后使用|T463557:0|t[简单剥皮刀]
.complete 48873,1 
.use 152800
.mob Monstrous Grizzly
step
.goto 895,77.99,65.58
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sprung Beartrap|r
.complete 48874,1,1 
step
.goto 895,79.69,65.71,5 >>输入|cFFfa9602洞穴|r
.isOnQuest 49069
step
.goto 895,80.07,65.6
>>杀死|cRXP_ENEMY_Ol'霜爪|r
.complete 49069,1 
.mob Old Frostclaw
step
.goto 895,78.14,64.58
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sprung Beartrap|r
.complete 48874,1,2 
step
#label Sprung Beartrap 1
.goto 895,77.66,64.75
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sprung Beartrap|r
.complete 48874,1,3 
step
#completewith Sprung Beartrap 2
>>杀死|cRXP_ENEMY_Mountain Raccoon|r，|cRXD_ENEMY_Guarded Quillrats|r并掠夺它们以获得|cRXP_loot_Fuzzy Tails |r，| cRXP_loot_Strurdy Quills|r
.complete 49028,1 
.complete 49028,2 
.mob Mountain Raccoon
.mob Guarded Quillrat
step
#completewith Sprung Beartrap 2
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hawk Eggs|r
.complete 48879,1 
step
.goto 895,77.85,64.41
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sprung Beartrap|r
.complete 48874,1,4 
step
#label Sprung Beartrap 2
.goto 895,77.42,62.82
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sprung Beartrap|r
.complete 48874,1,5 
step
#completewith Sprung Beartrap 3
>>杀死|cRXP_ENEMY_Monstrous Grizzlies|r，然后使用|T463557:0|t[简单剥皮刀]
.complete 48873,1 
.use 152800
.mob Monstrous Grizzly
step
#completewith Sprung Beartrap 3
>>杀死|cRXP_ENEMY_Mountain Raccoon|r，|cRXD_ENEMY_Guarded Quillrats|r并掠夺它们以获得|cRXP_loot_Fuzzy Tails |r，| cRXP_loot_Strurdy Quills|r
.complete 49028,1 
.complete 49028,2 
.mob Mountain Raccoon
.mob Guarded Quillrat
step
#label Sprung Beartrap 3
.goto 895,77.52,62.83,10,0
.goto 895,76.83,62.42,10,0
.goto 895,76.73,61.82,10,0
.goto 895,76.34,61.02,10,0
.goto 895,75.91,61.08,10,0
.goto 895,75.16,61.11,10,0
.goto 895,74.54,61.1,10,0
.goto 895,75.13,61.95
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hawk Eggs|r
.complete 48879,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Monstrous Grizzlies|r，然后使用|T463557:0|t[简单剥皮刀]
.complete 48873,1 
.use 152800
.mob Monstrous Grizzly
step
.goto 895,75.13,61.95,10,0
.goto 895,74.54,61.1,10,0
.goto 895,75.16,61.11,10,0
.goto 895,75.91,61.08,10,0
.goto 895,76.34,61.02,10,0
.goto 895,76.73,61.82,10,0
.goto 895,76.83,62.42,10,0
.goto 895,77.52,62.83
>>杀死|cRXP_ENEMY_Mountain Raccoon|r，|cRXD_ENEMY_Guarded Quillrats|r并掠夺它们以获得|cRXP_loot_Fuzzy Tails |r，| cRXP_loot_Strurdy Quills|r
.complete 49028,1 
.complete 49028,2 
.mob Mountain Raccoon
.mob Guarded Quillrat
step << skip
.cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hawk Eggs|r
step
.goto 895,76.68,65.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kolta|r
.turnin 49028 >>Turn in A Sweater for Rupert
.target Kolta
step
.goto 895,75.84,65.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Kennings|r and |cRXP_FRIENDLY_Alanna Holton|r
.turnin 48879 >>Turn in A Hunt for Hawk Eggs
.goto 895,75.82,65.78
.turnin 48873 >>Turn in A Grizzly End
.turnin 48874 >>Turn in Pardon Our Rust
.turnin 49069 >>Turn in WANTED: Ol' Frostclaw
.goto 895,75.85,65.87
.accept 49072 >>接任务: |cRXP_WARN_西行贵族|r
.target Alanna Holton
.target Lord Kennings
step
.goto 895,70.9,61.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Kennings.|r
.turnin 49072 >>Turn in Westward Noble
.accept 49039 >>接任务: |cRXP_WARN_开始狩猎怪物|r
.target Lord Kennings
step
.goto 895,70.88,61.68
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Smashed Crate.|r
.complete 49039,1 
step
.goto 895,70.81,61.43
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Disturbed Trap.|r
.complete 49039,3 
step
.goto 895,70.68,61.95
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bloody Trail.|r
.complete 49039,2 
step
#label LordKennings
.goto 895,70.89,61.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Kennings|r
.turnin 49039 >>Turn in The Start of a Monster Hunt
.accept 48909 >>接任务: |cRXP_WARN_贵族责任|r
.target Lord Kennings
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Kennings|r |cFFfa9602next to you.|r
.accept 49066 >>接任务: |cRXP_WARN_速冻|r
step
#completewith KuroktheLost
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ice Block|r and kill |cRXP_ENEMY_Agitated Ice Shardling|r and loot them for |cRXP_LOOT_Pristine Ice Chunks|r
.complete 49066,1 
.mob Agitated Ice Shardling
step
.goto 895,70.32,62.93
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Cold Corpse|r
.complete 48909,1 
.target Cold Corpse
step
.goto 895,69.23,62.42
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Hunter Corpse|r
.complete 48909,2 
.target Hunter Corpse
step
.goto 895,68.89,63.93
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Dead Quillrat.|r
.complete 48909,3 
.target Dead Quillrat
step
.goto 895,68.2,65.13
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_PICK_Fresh Stag Corpse|r
.complete 48909,4 
.target Fresh Stag Corpse
step
.goto 895,68.21,65.76,5 >>输入|cFFfa9602保存|r
.isOnQuest 48909
step
#label KuroktheLost
.goto 895,68.07,66.50
>>杀死|cRXP_ENEMY_Kurok the Lost|r
.complete 48909,5 
.mob Kurok the Lost
step
.goto 895,70.88,61.68,10,0
.goto 895,70.81,61.43,10,0
.goto 895,70.68,61.95,10,0
.goto 895,70.68,61.95
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ice Block|r and kill |cRXP_ENEMY_Agitated Ice Shardling|r and loot them for |cRXP_LOOT_Pristine Ice Chunks|r
.complete 49066,1 
.mob Agitated Ice Shardling
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Kennings|r |cFFfa9602next to you|r
.turnin 49066 >>Turn in Encase of Emergency
.target Lord Kennings
step
.goto 895,75.84,65.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanna Holton|r
.turnin 48909,1 >>Turn in Noble Responsibilities
.target Alanna Holton
step
.goto 895,75.85,49.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
.turnin 53041 >>Turn in Sampling the Goods
.accept 47489 >>接任务: |cRXP_WARN_偷偷上船|r
.target Flynn Fairwind
step
.goto 895,75.84,49.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
.complete 47489,1 
.skipgossip
.target Flynn Fairwind
step
#completewith next
.goto 895,75.79,48.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeb Johnson|r
.fp >>获取Bridgeport飞行路线
.target Jeb Johnson
step
.goto 895,75.5,48.08,5 >>|cFFfa9602登上少女的美德|r

.isOnQuest 47489
step
.goto 895,75.5,48.08
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel of Fish|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
.complete 47489,3 
step
.goto 895,85.56,83.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beachcomber Bob|r
.turnin 47489 >>Turn in Stow and Go
.accept 49218 >>接任务: |cRXP_WARN_漂泊者|r
.accept 48419 >>接任务: |cRXP_WARN_致命吸引|r
.target Beachcomber Bob
step
.goto 895,85.46,80.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stabby Jane|r
.turnin 49218 >>Turn in The Castaways
.target Stabby Jane
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stabby Jane|r and |cRXP_FRIENDLY_Hungry Sam|r
.complete 48419,1 
.accept 49178 >>接任务: |cRXP_WARN_我最爱的东西|r
.accept 49226 >>接任务: |cRXP_WARN_让两姐妹闭嘴|r
.goto 895,85.46,80.81
.complete 49178,1 
.accept 49230 >>接任务: |cRXP_WARN_当地风味|r
.goto 895,85.47,80.72
.skipgossip 128229,1
.skipgossip 128228,1
.target Stabby Jane
.target Hungry Sam
step
.goto 895,85.27,80.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Friendly Pete|r
.complete 49178,2 
.skipgossip
.target Friendly Pete
step
.goto 895,86.43,81.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Handy Bill|r
.complete 49178,3 
.skipgossip
.target Handy Bill
step
#completewith next
.goto 895,86.42,80.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skinny Tim|r
.fp >>获取Bridgeport飞行路线
.target Skinny Tim
step
.goto 895,86.35,79.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Keelson|r
.accept 48421 >>接任务: |cRXP_WARN_海潮之血|r
.target Captain Keelson
step
#completewith SilencingtheSisters
>>杀死|cRXP_ENEMY_Wailing警报器|r
>>杀死|cRXP_ENEMY_Tide Lurker|r并掠夺它们|T237328:0|t|cRXP-loot_Juicy Lurker Tail|r
.complete 48421,1 
.complete 49230,1 
.mob Wailing Siren
.mob Tide Lurker
step
.goto 895,88.26,78.14
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Silver Compass|r
.complete 49178,5 
step
.goto 895,90.13,74.38,15 >>|cRXP_WARN_发现|cRXP_FRIENDLY_Flynn Fairwind|r|r

.target Flynn Fairwind
.isOnQuest 48419
step
.goto 895,90.13,74.38
>>杀死|cRXP_ENEMY_Lugeia|r
.complete 48419,3 
.mob Lugeia
step
.goto 895,88.28,72.92
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Steel Lunchbox|r
.complete 49178,4 
step
.goto 895,86.98,72.56,5 >>进入|cFFfa9602洞穴|r
.isOnQuest 49178
step
.goto 895,86.51,72.5
>>杀死|cRXP_ENEMY_Nolpe|r和|cRXX_ENEMY_Patheope|r
.complete 49226,2 
.complete 49226,1 
.mob Nolpe
.mob Patheope
step
.goto 895,87.11,72.64,8,0
.goto 895,87.98,75.01
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Glimmering Seaweed|r
.accept 49181 >>接任务: |cRXP_WARN_微光坠饰|r
step
#label SilencingtheSisters
.goto 895,87.69,75.12
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Robot|r
.complete 49178,6 
step
.goto 895,85.47,80.82
>>杀死|cRXP_ENEMY_Wailing警报器|r
>>杀死|cRXP_ENEMY_Tide Lurker|r并掠夺它们|T237328:0|t|cRXP-loot_Juicy Lurker Tail|r
.complete 48421,1 
.complete 49230,1 
.mob Wailing Siren
.mob Tide Lurker
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stabby Jane|r and |cRXP_FRIENDLY_Hungry Sam|r
.turnin 49178 >>Turn in My Favorite Things
.turnin 49226 >>Turn in Silencing the Sisters
.turnin 49181 >>Turn in Glimmering Locket
.goto 895,85.47,80.82
.turnin 49230 >>Turn in Local Flavor
.goto 895,85.47,80.72
.target Stabby Jane
.target Hungry Sam
step
.goto 895,85.72,76.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t谈话|cRXP_FRIENDLY_Captain Keelson|r
.turnin 48421,2 >>Turn in Blood in the Tides
.target Captain Keelson
step
.goto 895,84.91,76.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
.turnin 48419 >>Turn in Lured and Allured
.accept 48505 >>接任务: |cRXP_WARN_相思解脱|r
.target Flynn Fairwind
step
#completewith ToxicCommunity
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
>>|cRXP_WARN_离他近一点。如果你不这样做，他会停下来，直到你接近为止。|r
.complete 48505,1 
.timer 8, Flynn RP
.skipgossip
.target Flynn Fairwind
step
.goto 895,82.74,72.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skinner MacGuff|r
.target Skinner MacGuff
.accept 48516 >>接任务: |cRXP_WARN_剧毒群落|r
step
>>杀死|cRXP_LOOT_Venomspine Saurolisk|r，并在护送过程中为|cRXX_LOOT_Marrowflies|r|cFFfa9602掠夺它们|r
.complete 48516,1 
step
#label ToxicCommunity
.goto 895,82.75,72.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skinner MacGuff|r
.turnin 48516 >>Turn in Toxic Community
step
.goto 895,80.21,75.25
>>|cRXP_WARN_离他近一点。如果你不这样做，他会停下来，直到你接近为止。|r
.skipgossip
.complete 48505,1 
.target Flynn Fairwind
step
.goto 895,80.21,75.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
>>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
.turnin 48505 >>Turn in Lovesick and Lost
.accept 48539 >>接任务: |cRXP_WARN_自由镇|r
.target Flynn Fairwind
step
.goto 895,80.17,75.3
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Spyglass|r on the rock.
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
.complete 48539,1 
step
.goto 895,80.19,75.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
.turnin 48539 >>Turn in Freehold
.accept 48773 >>接任务: |cRXP_WARN_文件，谢谢|r
.accept 48558 >>接任务: |cRXP_WARN_铁潮帮|r
.target Flynn Fairwind
step
#completewith Dockmaster's Records
>>杀死|cRXP_ENEMY_Irotide Trickshot|r并掠夺它们|T133593:0|t|cRXP-loot_[Trickshot的阿塞拜疆粉角]|r
>>杀死|cRXP_ENEMY_Irotide Cuthroat|r并掠夺它们|T135325:0|t|cRXP-loot_[Azerite Cutlass]|r
.complete 48558,1 
.complete 48558,2 
.mob Irontide Trickshot
.mob Irontide Cutthroat
step
.goto 895,79.19,76.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geraldine|r
.accept 48774 >>接任务: |cRXP_WARN_暴行继续|r
.accept 48776 >>接任务: |cRXP_WARN_偷取索具|r
.target Geraldine
step
#completewith Dockmaster's Records
>>杀死|cRXP_ENEMY_Irotide监督者|r和|cRXX_ENEMY_ Irotide痞子|r
.complete 48774,1 
.complete 48774,2 
.mob Irontide Trickshot
.mob Irontide Cutthroat
.mob Irontide Ruffian
step
.isOnQuest 48773
.goto 895,79.13,78.79
>>杀死|cRXP_ENEMY_Dockmaster Marl|r并掠夺他|T237379:0|t|cRXP_loot_[Dockmaster的钥匙]|r
.collect 152722,1 
.mob Dockmaster Marl
step
.goto 895,79.13,78.79
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dockmaster's Strongbox|r
.complete 48773,1 
step
.goto 895,78.6,77.86
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Azerite Cannonball|r
.accept 48606 >>接任务: |cRXP_WARN_火炮上膛|r
step
.goto 895,78.57,77.82
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Azerite Cannonball|r
.collect 152628,2
.isOnQuest 48606
step
.goto 895,78.41,77.6
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Azerite Cannonball|r
.collect 152628,3
.isOnQuest 48606
step
.goto 895,78.44,77.69
.vehicle >>单击|cRXP_PICK_Ashvane Cannon|r
.isOnQuest 48606
step
.goto 895,78,78.71
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ashvane Cannon|r
.complete 48606,1,1 
step
.goto 895,78,78.71
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ashvane Cannon|r
.complete 48606,1,3 
step
.goto 895,77.83,76.76
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Azerite Cannonball|r
.collect 152628,4
.isOnQuest 48606
step
.goto 895,77.81,76.72
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Azerite Cannonball|r
.collect 152628,5
.isOnQuest 48606
step
.goto 895,78.01,76.52
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Azerite Cannonball|r
.collect 152628,6
.isOnQuest 48606
step
.goto 895,77.73,76.65
.vehicle >>单击|cRXP_PICK_Ashvane Cannon|r
.isOnQuest 48606
step
.goto 895,77.06,77.25
>>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Ashvane Cannon|r
.complete 48606,1,6 
step
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 48606 >>Turn in Loaded for Bear
step
.goto 895,77.04,76.28
#label Dockmaster's Records
.cast 252484 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tangled Rigging.|r|cRXP_WARN_(1)|r
.isOnQuest 48776
step
.goto 895,77.27,75.88,10 >>|cRXP_WARN_把绳子从水中拉开|r|cRXP_WARN_（1）|r
.isOnQuest 48776
step
.goto 895,77.04,76.28
.cast 252484 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tangled Rigging.|r|cRXP_WARN_(2)|r
.isOnQuest 48776
step
.goto 895,77.27,75.88,9 >>|cRXP_WARN_把绳子从水中拉开|r|cRXP_WARN_（2）|r
.isOnQuest 48776
step
.goto 895,77.04,76.28
.cast 252484 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tangled Rigging.|r|cRXP_WARN_(3)|r
.isOnQuest 48776
step
.goto 895,77.27,75.88,12 >>|cRXP_WARN_把绳子从水中拉开|r|cRXP_WARN_（3）|r
.isOnQuest 48776
step
.goto 895,77.04,76.28
.cast 252484 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tangled Rigging.|r|cRXP_WARN_(4)|r
.isOnQuest 48776
step
.goto 895,77.27,75.88,11 >>|cRXP_WARN_把绳子从水中拉开|r|cRXP_WARN_（4）|r
.isOnQuest 48776
step
.goto 895,77.04,76.28
.cast 252484 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tangled Rigging.|r|cRXP_WARN_(5)|r
.isOnQuest 48776
step
.goto 895,77.27,75.88,12 >>|cRXP_WARN_把绳子从水中拉开|r|cRXP_WARN_（5）|r
.isOnQuest 48776
step
.goto 895,77.17,76.04
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bottle|r |cFFfa9602on the ground.|r
.complete 48776,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Irotide Trickshot|r并掠夺它们|T133593:0|t|cRXP-loot_[Trickshot的阿塞拜疆粉角]|r
>>杀死|cRXP_ENEMY_Irotide Cuthroat|r并掠夺它们|T135325:0|t|cRXP-loot_[Azerite Cutlass]|r
.complete 48558,1 
.complete 48558,2 
.mob Irontide Trickshot
.mob Irontide Cutthroat
step
.goto 895,79.21,76.34
>>杀死|cRXP_ENEMY_Irotide监督者|r和|cRXX_ENEMY_ Irotide痞子|r
.complete 48774,1 
.complete 48774,2 
.mob Irontide Trickshot
.mob Irontide Cutthroat
.mob Irontide Ruffian
step
.goto 895,79.21,76.34
>>杀死|cRXP_ENEMY_Irotide Trickshot|r并掠夺它们|T133593:0|t|cRXP-loot_[Trickshot的阿塞拜疆粉角]|r
>>杀死|cRXP_ENEMY_Irotide Cuthroat|r并掠夺它们|T135325:0|t|cRXP-loot_[Azerite Cutlass]|r
.complete 48558,1 
.complete 48558,2 
.mob Irontide Trickshot
.mob Irontide Cutthroat
step
.goto 895,79.21,76.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geraldine|r
.turnin 48774 >>Turn in The Beatings Will Continue
.turnin 48776 >>Turn in Rig Robbing
.target Geraldine
step
.goto 895,80.35,81.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
.turnin 48773 >>Turn in Papers, Please
.turnin 48558,2 >>Turn in The Irontide Crew
.accept 49239 >>接任务: |cRXP_WARN_人靠衣装|r
.target Flynn Fairwind
step
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 48606 >>Turn in Loaded for Bear
step
.goto 895,79.70,81.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roko|r.
.accept 49290 >>接任务: |cRXP_WARN_陈年佳酿|r
.target Roko
step
.goto 895,79.81,82.37
>>使用您的|cRXP_WARN_[额外操作按钮]|r伪装自己，然后与|cRXP-FRIENDLY_Irontide Recruiter交谈|r
.complete 49239,1 
.skipgossip
.target Irontide Recruiter
step
.goto 895,77.35,84.18,5,0
.goto 895,77.31,83.96
>>|cFFfa9602进入右侧经过大桥的第一栋建筑|r
.complete 49239,2 
.timer 23, Dead Man's Tale RP
step
#completewith next
.target Jill McHoonigan
.vendor >>|cRXP_WARN_在角色扮演过程中，如有必要，清空袋子/在|cRXP_FRIENDLY_Jill McHoonigan|r处补充食物和水|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r and |cRXP_FRIENDLY_Venrik.|r
>>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
.turnin 49239 >>Turn in Dress to Impress
.accept 49401 >>接任务: |cRXP_WARN_罗德里格的鸟窝|r
.goto 895,77.33,83.97
.accept 49398 >>接任务: |cRXP_WARN_举杯！|r
.goto 895,77.36,83.92
.target Flynn Fairwind
.target Venrik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Venrik|r
.complete 49398,1 
.skipgossip 128927,2
.target Venrik
step
>>|cRXP_WARN_使用|T132815:0|t[山羊奶]|r
.complete 49398,2 
.use 153600
step
.goto 895,77.36,83.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Venrik|r
.turnin 49398 >>Turn in Raise a Glass!
.target Venrik
step
.goto 895,77.03,82.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rodrigo|r
.accept 49402 >>接任务: |cRXP_WARN_离巢的鹦鹉|r
.target Rodrigo
step
#completewith Irontide Recruiting Poster
>>|cRXP_WARN_在天空中的|cRXP_FRIENDLY_Runaway Macaw|r|cFFfa9602上使用您的|r[ExtraActionButton]|cRXP_WARN_|r|r
.complete 49402,1 
.use 154878
step
.goto 895,77.03,82.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rodrigo|r
.complete 49401,1 
.skipgossip 129098,1
.target Rodrigo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r and |cRXP_FRIENDLY_Venrik|r
.turnin 49401 >>Turn in Rodrigo's Roost
.accept 49399 >>接任务: |cRXP_WARN_一票大案|r
.goto 895,77.33,83.97
.accept 49400 >>接任务: |cRXP_WARN_招募工作|r
.goto 895,77.36,83.92
.target Flynn Fairwind
.target Venrik
step
.goto 895,77.34,84.17,5,0
.goto 895,77.19,84.85
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sternly Worded Letter|r
.accept 49409 >>接任务: |cRXP_WARN_失落的宝藏！|r
step
#completewith Irontide Recruiting Poster
>>杀死|cRXP_ENEMY_Bilge Rats|r、|cRXD_ENEMY_Cutwaters|r和|cRXP_ENEMY_Blacktooths|r并掠夺它们的|T1505940:0|t|cRXP_OOT_Orders|r
>>|cRXP_WARN_使用|r[ExtraActionButton]|cRXP_WARN_to伪装自己，避免受到攻击。如果你需要攻击敌人，这将解开你的伪装。记住，你可以在需要的时候重新伪装|r
.complete 49399,1 
.complete 49399,2 
.complete 49399,3 
.mob Cutwater Duelist
.mob Blacktooth Knuckleduster
.mob Blacktooth Scrapper
.mob Vulpera Padfoot
.use 254873
step
.goto 895,77.78,85.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ned|r
.skipgossip
.complete 49409,1 
.target Ned
step
.goto 895,77.77,85.27,5 >>离开|cFFfa9602房子|r
.isOnQuest 49409
step
.goto 895,77.29,85.84
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Irontide Recruiting Poster|r
>>|cRXP_WARN_使用|r[ExtraActionButton]|cRXP_WARN_to伪装自己以避免受到攻击。|r
.complete 49400,1,1 
step
.goto 895,76.85,85.8
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Irontide Recruiting Poster|r
>>|cRXP_WARN_使用|r[ExtraActionButton]|cRXP_WARN_to伪装自己以避免受到攻击。|r
.complete 49400,1,2 
step
.goto 895,76.75,85.93 >>输入|cFFfa9602House|r
.isOnQuest 49400
step
.goto 895,76.90,85.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carentan|r
.turnin 49290 >>Turn in Aged to Perfection
.accept 49407 >>接任务: |cRXP_WARN_崔克茜的事务|r
.target Carentan
step
.goto 895,76.52,84.91
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Irontide Recruiting Poster|r
>>|cRXP_WARN_使用|r[ExtraActionButton]|cRXP_WARN_to伪装自己以避免受到攻击。|r
.complete 49400,1,3 
step
.goto 895,76.38,84.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nub Nub|r
.skipgossip
.complete 49409,2 
.target Nub Nub
step
.goto 895,76.45,84.25,5,0
.goto 895,76.28,84.24,5,0
.goto 895,76.13,83.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nance Barmy|r
.skipgossip
.complete 49409,3 
.target Nance Barmy
step
.goto 895,76.47,82.63
.gossipoption 48508 >>Talk to |cRXP_FRIENDLY_First Mate Trixie Tornsail|r, |cRXP_WARN_then continue to follow the guide afterwards.|r
.timer 27, Trixie RP
.isOnQuest 49407
.target First Mate Trixie Tornsail
step
.goto 895,76.28,83.77
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Irontide Recruiting Poster|r
>>|cRXP_WARN_敌人可能会变得敌对|r
.complete 49400,1,4 
step
.goto 895,76.77,82.65
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Irontide Recruiting Poster|r
>>|cRXP_WARN_敌人可能会变得敌对|r
.complete 49400,1,5 
step
.goto 895,77.24,83.49
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Irontide Recruiting Poster|r
.complete 49400,1,6 
step
#completewith next
>>|cRXP_WARN_跟随|cRXP_FRIENDLY_First Mate Trixie Tornsail|r，等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
.isOnQuest 49407
.target First Mate Trixie Tornsail
step
.goto 895,76.47,82.63
>>杀死|cRXP_ENEMY_大副崔茜·龙卷风|r
.complete 49407,1 
.mob First Mate Trixie Tornsail
step
.goto 895,75.62,80.57
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sandy Seaweed-covered Chest.|r
.complete 49409,4 
step
.goto 895,76.29,80.77
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dirty Diamond.|r
.complete 49409,5 
step
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 49409 >>Turn in Missing Treasure!
step
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 49409 >>Turn in Missing Treasure!
step
.goto 895,77.04,82.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rodrigo|r
.turnin 49402 >>Turn in Flew the Coop
.accept 49403 >>接任务: |cRXP_WARN_罗德里格复仇记|r
.target Rodrigo
.isQuestComplete 49402
step
.goto 895,77.06,82.62
.vehicle >>与|cRXP_FRIENDLY_Riding Macaw|r交互
.target Riding Macaw
.isOnQuest 49403
step
>>在|cRXP_ENEMY_Pirates|r上使用|T1500941:0|t[Vile Bombardment]
.complete 49403,1 
.isOnQuest 49403
.mob Cutwater Duelist
.mob Blacktooth Knuckleduster
.mob Blacktooth Scrapper
.mob Vulpera Padfoot
step
.goto 895,77.36,83.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Venrik|r
.turnin 49399 >>Turn in The Big Job
.accept 49404 >>接任务: |cRXP_WARN_法温德的“朋友”|r
.turnin 49400,1 >>Turn in Recruiting Efforts
.target Venrik
.isQuestComplete 49402,49400
step
.goto 895,77.04,82.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rodrigo|r
.turnin 49403 >>Turn in Rodrigo's Revenge
.target Rodrigo
.isOnQuest 49403
step
.goto 895,76.75,85.93,5 >>输入|cFFfa9602House|r
.isOnQuest 49407
step
.goto 895,76.90,85.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carentan|r
.turnin 49407 >>Turn in Trixie Business
.accept 49522 >>接任务: |cRXP_WARN_卡灵顿的报酬|r
.target Carentan
step
.goto 895,76.81,85.97
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dusty Crate|r
>>|cRXP_WARN_10秒后你会目瞪口呆|r
.complete 49522,1 
.timer 10, Stun RP
step
#label Irontide Recruiting Poster
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 49522 >>Turn in Carentan's Payment
.accept 49523 >>接任务: |cRXP_WARN_赔本买卖|r
step
#completewith next
>>|cRXP_WARN_在天空中的|cRXP_FRIENDLY_Runaway Macaw|r|cFFfa9602上使用您的|r[ExtraActionButton]|cRXP_WARN_|r|r
.complete 49402,1 
.use 154878
step
>>杀死|cRXP_ENEMY_Bilge Rats|r、|cRXD_ENEMY_Cutwaters|r和|cRXP_ENEMY_Blacktooths|r并掠夺它们的|T1505940:0|t|cRXP_OOT_Orders|r
>>|cRXP_WARN_使用|r[ExtraActionButton]|cRXP_WARN_to伪装自己，避免受到攻击。如果你需要攻击敌人，这将解开你的伪装。记住，你可以在需要的时候重新伪装|r
.complete 49399,1 
.complete 49399,2 
.complete 49399,3 
.mob Cutwater Duelist
.mob Blacktooth Knuckleduster
.mob Blacktooth Scrapper
.mob Vulpera Padfoot
.use 254873
step
>>|cRXP_WARN_在天空中的|cRXP_FRIENDLY_Runaway Macaw|r|cFFfa9602上使用您的|r[ExtraActionButton]|cRXP_WARN_|r|r
.complete 49402,1 
.use 154878
step
>>在|cRXP_ENEMY_Pirates|r上使用|T1500941:0|t[Vile Bombardment]
.complete 49403,1 
.isOnQuest 49403
.mob Cutwater Duelist
.mob Blacktooth Knuckleduster
.mob Blacktooth Scrapper
.mob Vulpera Padfoot
step
.goto 895,77.36,83.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Venrik|r
.turnin 49399 >>Turn in The Big Job
.accept 49404 >>接任务: |cRXP_WARN_法温德的“朋友”|r
.turnin 49400,1 >>Turn in Recruiting Efforts
.target Venrik
.isQuestComplete 49402,49400
step
.goto 895,77.04,82.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rodrigo|r
.turnin 49402 >>Turn in Flew the Coop
.accept 49403 >>接任务: |cRXP_WARN_罗德里格复仇记|r
.target Rodrigo
.isQuestComplete 49402
step
.goto 895,77.06,82.62
.vehicle >>与|cRXP_FRIENDLY_Riding Macaw|r交互
.target Riding Macaw
.isOnQuest 49403
step
.goto 895,73.83,83.44,5 >>输入|cFFfa9602靴之环|r
.isOnQuest 49404
step
.goto 895,73.84,83.44
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Flynn Fairwind|r
.complete 49404,2 
.timer 42, Ring of Booty
.target Flynn Fairwind
step
.goto 895,73.56,83.43
>>|cRXP_WARN_Defend Flynn Fairwind.|r
.complete 49404,3 
.mob Cutwater Duelist
.mob Bristleback Horker
.mob Blacktooth Knuckleduster
.mob Cutwater Reaver
step
.goto 895,77.14,82.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia|r
>>|cRXP_WARN_如果你足够快，你可以避免被|cRXP_FRIENDLY_Gryphon|r；手动飞行到|cRXP_ FRIENDLY_Taelia|r比使用|cRXP_|r|r
>>|cRXP_WARN_你可能必须先跑，然后才能飞出战场。|r
.turnin 49404,1 >>Turn in Fairwind's "Friends"
.accept 49405 >>接任务: |cRXP_WARN_戴林之门的守卫|r
.target Taelia
step
.goto 895,77.14,82.9
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Galeheart|r
.complete 49405,1 
.target Galeheart
.timer 62,Flight
step
>>|cRXP_WARN_等待短暂的飞行，当计时器用完时，飞行将完成。|r
.complete 49405,2 
step
.goto 895,60.92,59.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vigil Hill Refugee|r
.turnin 49405 >>Turn in Defenders of Daelin's Gate
.accept 52431 >>接任务: |cRXP_WARN_禁止登陆|r
.target Vigil Hill Refugee
step
.goto 895,61.07,61.43
>>杀死|cRXP_ENEMY_Burnsy the Blade|r
.complete 52431,1 
.timer 13, Wiley Jaki appears
.mob Burnsy the Blade
step
.goto 895,61.07,61.43
>>杀死|cRXP_ENEMY_Wiley Jaki|r
.complete 52431,2 
.timer 13, Skullcrusher Cotner appears
.mob Wiley Jaki
step
.goto 895,61.07,61.43
>>杀死|cRXP_ENEMY_Skullcrusher Cotner|r
.complete 52431,3 
.mob Skullcrusher Cotner
step
.goto 895,60.92,59.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vigil Hill Refugee.|r
.turnin 52431 >>Turn in No-Landing Zone
.accept 49869 >>接任务: |cRXP_WARN_防守危机|r
.target Vigil Hill Refugee
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Tarenfold|r and |cRXP_FRIENDLY_Taelia.|r
.turnin 49869 >>Turn in A Desperate Defense
.accept 52750 >>接任务: |cRXP_WARN_武装农民|r
.accept 49737 >>接任务: |cRXP_WARN_空袭|r
.goto 895,56.67,61.19
.accept 52787 >>接任务: |cRXP_WARN_麻醉止痛|r
.goto 895,56.47,61.72
.target Lieutenant Tarenfold
.target Taelia
step
#completewith Vigil Hill Farmer
>>杀死|cRXP_ENEMY_Irotide Skyrider|r|cFFfa9602它们中的大多数都在天空中|r
.complete 49737,1 
.mob Irontide Skyrider
step
.goto 895,55.98,61.27
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Evermoss Clump.|r
.complete 52787,1,1 
step
.goto 895,55.17,60.73
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Evermoss Clump.|r
.complete 52787,1,2 
step
.goto 895,55.16,60.4
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Evermoss Clump.|r
.complete 52787,1,3 
step
.goto 895,55.4,60.1
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Vigil Hill Farmer.|r
.complete 52750,1,1 
.target Vigil Hill Farmer
step
.goto 895,55.57,59.67
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Vigil Hill Farmer.|r
.complete 52750,1,2 
.target Vigil Hill Farmer
step
.goto 895,55.84,59.37
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Vigil Hill Farmer.|r
.complete 52750,1,3 
.target Vigil Hill Farmer
step
.goto 895,55.97,59.81
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Evermoss Clump|r
.complete 52787,1,4 
step
.goto 895,56.69,59.38
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Vigil Hill Farmer.|r
.complete 52750,1,4 
.target Vigil Hill Farmer
step
.goto 895,56.8,59.28
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Vigil Hill Farmer.|r
.complete 52750,1,5 
.target Vigil Hill Farmer
step
.goto 895,57.13,59.56
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Evermoss Clump.|r
.complete 52787,1,5 
step
#label Vigil Hill Farmer
.goto 895,57.02,59.89
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Vigil Hill Farmer.|r
.complete 52750,1,6 
.target Vigil Hill Farmer
step
#loop
.line 895,56.32,59.7,55.72,59.75,55.08,59.78,55.3,60.68
.goto 895,56.32,59.70,15,0
.goto 895,55.72,59.75,15,0
.goto 895,55.08,59.78,15,0
.goto 895,55.30,60.68,15,0
>>杀死|cRXP_ENEMY_Irotide Skyrider|r
.complete 49737,1 
.mob Irontide Skyrider
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Tarenfold|r and |cRXP_FRIENDLY_Taelia.|r
.turnin 52750 >>Turn in Farmers Who Fight
.turnin 49737 >>Turn in Air Raid
.accept 49738 >>接任务: |cRXP_WARN_别碰我的财宝！|r
.goto 895,56.67,61.18
.turnin 52787 >>Turn in Numbing the Pain
.goto 895,56.48,61.73
.target Taelia
.target Lieutenant Tarenfold
step
.goto 895,56.2,64.47
.isOnQuest 49738
.vehicle >>单击|cRXP_FRIENDLY_Vigil Hill Cannon|r以输入它。
.target Vigil Hill Cannon
step
>>使用|T1035038:0|t（1）杀死|cRXP_ENEMY_Looters|r
.complete 49738,1 
.mob Looters
step
.isOnQuest 49738
.exitvehicle >>|cRXP_WARN_按操作栏上的|r[Exit]|cRXP_WARN_button，跳下大炮。|r
>>|cRXP_WARN_或者，您可以使用此宏；|r
.link /leavevehicle>>单击此处 FOR MACRO.
>>|cRXP_WARN_建议保护此宏以备将来使用。|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Tarenfold|r and |cRXP_FRIENDLY_Taelia.|r
.turnin 49738,2 >>Turn in Hands Off My Booty!
.accept 49740 >>接任务: |cRXP_WARN_停火！|r
.accept 49736 >>接任务: |cRXP_WARN_为了库尔提拉斯！|r
.goto 895,56.67,61.18
.accept 49741 >>接任务: |cRXP_WARN_天降正义|r
.goto 895,56.48,61.73
.target Lieutenant Tarenfold
.target Taelia
step <<skip
.goto 895,56.83,65.58
>>使用|T967530:0|t[Prodmoore战斗标准]|r激励|cRXP_FRIENDLY_Vigil Hill民兵|r
.complete 49736,1,2 
.use 156520
.target Vigil Hill Marine
step
.goto 895,57.15,65.94
>>使用|T967530:0|t[Prodmoore战斗标准]|r激励|cRXP_FRIENDLY_Vigil Hill民兵|r
.complete 49736,1,3 
.use 156520
.target Vigil Hill Marine
step
.goto 895,55.37,67.82
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crate.|r
.complete 49741,1 
step
.goto 895,55.75,67.48
>>转到|cFFfa9602打开Campfire|r并使用您的|cRXP_WARN_[额外操作按钮]|r
.complete 49741,2 
step
.goto 895,57.13,67.21
>>使用|T967530:0|t[Prodmoore战斗标准]|r激励|cRXP_FRIENDLY_Vigil Hill民兵|r
>>|cRXP_WARN_您可能需要等待光盘再次备份。|r
.complete 49736,1,8 
.use 156520
.target Vigil Hill Marine
step
.goto 895,57.68,67.37
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Captured Cannon.|r
.complete 49740,1,1 
.target Captured Cannon
step
.goto 895,58.43,67.08
>>使用|T967530:0|t[Prodmoore战斗标准]|r激励|cRXP_FRIENDLY_Vigil Hill民兵|r
.complete 49736,1,11 
.use 156520
.target Vigil Hill Marine
step
.isOnQuest 49741
.goto 895,59.09,66.6
.vehicle >>单击|cRXP_PICK_Boat|r
step
>>当出现|cRXP_WARN_[额外操作按钮]|r时，按下它。
.complete 49741,4 
step
.isOnQuest 49741
.exitvehicle >>|cRXP_WARN_按操作栏上的|r[Exit]|cRXP_WARN_button，跳下船。|r
>>|cRXP_WARN_或者，您可以使用此宏；|r
.link /leavevehicle>>单击此处 FOR MACRO.
>>|cRXP_WARN_建议保护此宏以备将来使用。|r
step
.goto 895,57.56,71.58
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Gryphon.|r
.complete 49741,5 
.target Gryphon
step
>>在5|cRXP_ENEMY_火药桶上投掷|T136173:0|t（1）[阿塞拜疆炸弹]|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
.complete 49741,6 
step
.goto 895,57.2,70.09
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Captured Cannon.|r
.complete 49740,1,2 
.target Captured Cannon
step
.goto 895,57.41,69.67
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Captured Cannon.|r
.complete 49740,1,3 
.target Captured Cannon
step
.goto 895,56.75,68.91
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Captured Cannon.|r
.complete 49740,1,4 
.target Captured Cannon
step
.goto 895,57.15,67.21
>>使用|T967530:0|t[Prodmoore战斗标准]|r激励|cRXP_FRIENDLY_Vigil Hill民兵|r
.complete 49736,1,15 
.use 156520
.target Vigil Hill Marine
step
.goto 895,58.61,61.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meredith|r
.accept 49757 >>接任务: |cRXP_WARN_热“锅”上的猫|r
.target Meredith
step
.goto 895,58.86,61.34
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Scratchy|r twice.
.complete 49757,1 
.target Scratchy
step
.goto 895,58.6,61.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meredith|r
.turnin 49757 >>Turn in Cat on a Hot Copper Roof
.target Meredith
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Tarenfold|r and |cRXP_FRIENDLY_Taelia.|r
.turnin 49740 >>Turn in Cease Fire!
.turnin 49736,2 >>Turn in For Kul Tiras!
.goto 895,56.67,61.19
.turnin 49741 >>Turn in Righteous Retribution
.accept 50110 >>接任务: |cRXP_WARN_噩耗信使|r
.goto 895,56.5,61.27
.target Taelia
.target Lieutenant Tarenfold
step
.goto 895,56.5,61.27
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Gryphon.|r
.complete 50110,1 
.timer 49, Flight Time
.target Gryphon
step
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 52544 >>Turn in The War Cache
.accept 53332 >>接任务: |cRXP_WARN_战争来临|r
step
.goto 1161,49.12,75.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia.|r
.turnin 50110 >>Turn in Bearers of Bad News
.accept 50795 >>接任务: |cRXP_WARN_万全准备|r
.target Taelia
step
.goto 1161,49.29,76.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Proudmoore Guard.|r
.skipgossip
.complete 50795,1,1 
.target Proudmoore Guard
step
.goto 1161,49.16,79.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Proudmoore Guard.|r
.skipgossip
.complete 50795,1,2 
.target Proudmoore Guard
step
.goto 1161,48.17,81.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Proudmoore Guard.|r
.skipgossip
.complete 50795,1,3 
.target Proudmoore Guard
step
.goto 1161,47.42,81.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Proudmoore Guard.|r
.skipgossip
.complete 50795,1,4 
.target Proudmoore Guard
step
.goto 1161,47.40,81.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia|r |cFFfa9602next to you.|r
.turnin 50795 >>Turn in Prepare for Trouble
.accept 50787 >>接任务: |cRXP_WARN_陈述实情|r
.target Taelia
step
.goto 1161,48.57,83.98
>>Follow the Arrow
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
.complete 50787,1 
step
.goto 1161,50.01,87.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia.|r
.turnin 50795 >>Turn in Prepare for Trouble
.accept 50787 >>接任务: |cRXP_WARN_陈述实情|r
.target Taelia
step
.goto 1161,50.01,87.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia.|r
.turnin 50787 >>Turn in Make Our Case
.accept 50788 >>接任务: |cRXP_WARN_内忧|r
.accept 50789 >>接任务: |cRXP_WARN_清除烟雾|r
.target Taelia
step
#completewith Smoking Payload
>>杀死|cRXP_ENEMY_Ashvane阴谋家|r
.complete 50788,1 
.mob Ashvane Conspirator
step
.goto 1161,49.37,86.93
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel.|r
.complete 50789,1,1 
step
.goto 1161,49.5,84.7
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel.|r
.complete 50789,1,2 
step
.goto 1161,48.54,85.5
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel.|r
.complete 50789,1,3 
step
#label Smoking Payload
.goto 1161,48.2,82.48
>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel.|r
.complete 50789,1,4 
step
#loop
.line 1161,49.37,86.93,49.5,84.7,48.54,85.5,48.2,82.48
.goto 1161,49.37,86.93,10,0
.goto 1161,49.50,84.70,10,0
.goto 1161,48.54,85.50,10,0
.goto 1161,48.20,82.48,10,0
>>杀死|cRXP_ENEMY_Ashvane阴谋家|r
.complete 50788,1 
.mob Ashvane Conspirator
step
.goto 1161,47.76,81.39
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 50789 >>Turn in Clear the Air
.turnin 50788 >>Turn in Enemies Within
.accept 50790 >>接任务: |cRXP_WARN_热力追击|r
step
.goto 1161,47.76,81.39
>>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Proudmoore Charger.|r
.complete 50790,1 
.timer 82, Ashvane Pursuit
.target Proudmoore Charger
step
>>垃圾邮件|T236171:0|t（1）和|T136103:0|t。
.complete 50790,2 
step
>>|cRXP_WARN_BE QUICK!|r
.exitvehicle >>|cRXP_WARN_按操作栏上的|r[Exit]|cRXP_WARN_button，离开木马。|r
*|cRXP_WARN_或者，您可以使用此宏；|r
.link /leavevehicle>>单击此处 FOR MACRO.
*|cRXP_WARN_建议保护此宏以备将来使用。|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia|r and |cRXP_FRIENDLY_Katherine Proudmoore.|r
.turnin 50790 >>Turn in Hot Pursuit
.goto 1161,48.26,80.67
.accept 50972 >>接任务: |cRXP_WARN_普罗德摩尔的谈判|r
.goto 1161,48.42,80.87
.target Taelia
.target Katherine Proudmoore
step
.goto 1161,68.05,22.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·格雷迈恩|r
.turnin 50972,1 >>Turn in Proudmoore's Parley
.target Genn Greymane
step
.goto 1161,68.42,22.00
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Scouting Map|r
.accept 47961 >>接任务: |cRXP_WARN_德鲁斯瓦|r
step
.goto 1161,68.16,21.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia|r
.turnin 47961 >>Turn in Drustvar
.accept 48622 >>接任务: |cRXP_WARN_消失的勋爵|r
.target Taelia
step
.goto 1161,69.27,26.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
.turnin 53332 >>Turn in Time for War
.target Halford Wyrmbane
step
.goto 1161,69.72,27.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗斯塔德·蛮锤|r
.accept 51714 >>接任务: |cRXP_WARN_国王的任务|r
.target Halford Wyrmbane
step
.goto 1161,70.72,27.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
.turnin 51714 >>Turn in Mission from the King
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Alliance 10-60
#name 9A_Drustvar
#displayname Chapter 9 - Drustvar
#next ZA_WarCampaign
<<Alliance
step
>>放弃此任务以使Teleport接近下一个目标
.abandon 49302
step
.goto 895,35.22,24.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rosaline Madison|r
.accept 49302 >>接任务: |cRXP_WARN_最致命的猎物|r
step
.goto 895,35.29,24.57
.skipgossip 1
.complete 49302,1 
step
>>单击|cRXP_PICK_Cannon|r
.goto 895,36.33,29.82
.complete 49302,2 
step
>>向紫色泡泡发射鱼叉
.complete 49302,3 
step
>>单击|cRXP_PICK_Gryphon|r
.goto 895,36.77,29.71
.complete 49302,5 
step
.goto 895,42.47,29.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brannon Stormsong|r
.turnin 49302,1 >>Turn in The Deadliest Catch
step
.goto 896,62.54,23.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_David Maldus|r
.accept 48677,1 >>接任务: |cRXP_WARN_柳魔崇拜|r
step
.goto 896,59.45,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Autumnvale|r
.turnin 48677,1 >>Turn in Wicker Worship
.accept 48678,1 >>接任务: |cRXP_WARN_先给供品再提问|r
step
>>将|cRXP_PICK_Entrails|r交付给Autumvale勋爵
.goto 896,59.88,21.99
.complete 48678,1,1 
step
>>将|cRXP_PICK_Wicker|r交付给Autumvale勋爵
.goto 896,59.88,21.99
.complete 48678,1,2 
step
>>将|cRXP_PICK_Bones|r交给Autumvale勋爵
.goto 896,59.89,21.96
.complete 48678,1,3 
step
>>等待角色扮演持续时间
.complete 48678,2 

step
.goto 896,59.45,21.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Autumnvale|r
.turnin 48678 >>Turn in Questionable Offerings
.accept 48679 >>接任务: |cRXP_WARN_小心蜂巢|r
step
.goto 896,60.65,18.19,10,0 >>Go inside the Cave
.goto 896,60.62,17.77
.complete 48679,1 
step
>>保护Edwin免受|cRXP_ENEMY_Bee的|r攻击
.goto 896,60.62,17.77
.complete 48679,2 

step
.goto 896,60.65,18.19,10,0 >>到外面去 the Cave
.goto 896,59.03,22.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Peony|r
.turnin 48679 >>Turn in Mind the Hives
.accept 48682 >>接任务: |cRXP_WARN_简单的献祭|r
step
>>杀死|cRXP_ENEMY_Lord Autumnvale|r
.goto 896,56.50,24.05
.complete 48682,1 
step
.goto 896,56.49,24.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwin Maldus|r
.turnin 48682 >>Turn in A Simple Sacrifice
.accept 48683 >>接任务: |cRXP_WARN_终结柳魔人|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwin Maldus|r
.goto 896,59.35,21.98
.complete 48683,1 
step
>>单击|cRXP_PICK_Wickerman|r
.goto 896,59.35,21.98
.complete 48683,2 
step
.goto 896,59.35,21.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Edwin Maldus|r
.turnin 48683 >>Turn in Changing Seasons
step
.goto 896,63.25,27.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Staughton|r
.accept 47946 >>接任务: |cRXP_WARN_待宰猪猡|r
.accept 47947 >>接任务: |cRXP_WARN_大灰狼|r
.accept 47948 >>接任务: |cRXP_WARN_嫩煎猪排|r
step
#sticky
#label bacon
.goto 896,64.07,31.70
>>杀死|cRXP_ENEMY_野兽|r
.complete 47947,1 
step
>>单击|cRXP_FRIENDLY_Pig Trevor|r
.goto 896,64.24,28.31
.complete 47946,1 
step
>>单击|cRXP_FRIENDLY_Pig Travis|r
.goto 896,63.62,29.32
.complete 47946,2 
step
.goto 896,63.35,30.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pig Effigy|r
.accept 47949 >>接任务: |cRXP_WARN_非我所爱|r
step
>>杀死|cRXP_ENEMY_Roland|r
.goto 896,63.61,30.41
.complete 47948,1 
step
>>单击|cRXP_FRIENDLY_Pig Purke|r
.goto 896,64.05,31.52
.complete 47946,4 
step
>>单击|cRXP_FRIENDLY_Pig Kyle|r
.goto 896,64.70,30.21
.complete 47946,3 
step
#requires bacon
.goto 896,63.25,27.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Staughton|r
.turnin 47946 >>Turn in Save Their Bacon
.turnin 47947 >>Turn in Big Bad Wolves
.turnin 47948,1 >>Turn in Pork Chop
.turnin 47949 >>Turn in That's Not My Fetish
.accept 47950 >>接任务: |cRXP_WARN_被诅咒的火腿|r
step
>>使用你袋子里的Questitem，把猪粪扔进火里
.complete 47950,1 
.use 153432
step
.goto 896,63.25,27.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas Staughton|r
.turnin 47950 >>Turn in Cured Ham
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cyril White by talking to Cyril White you skip the Ferry Step
.goto 896,56.14,35.29
.skipgossip 1
.complete 48622,2 
step
>>单击|cRXP_PICK_Effigy|r
.goto 896,55.87,35.07
.complete 48622,3 
step
.goto 896,55.87,35.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cursed Effigy|r
.turnin 48622 >>Turn in The Vanishing Lord
step
.goto 896,56.13,35.30
>>单击|cRXP_PICK_Major的公告|r
.accept 47968 >>接任务: |cRXP_WARN_迹象和征兆|r
step
>>单击|cRXP_PICK_Letter|r
.goto 896,57.95,35.69
.complete 47968,2 
step
>>单击|cRXP_PICK_Notebook|r
.goto 896,55.21,35.97
.complete 47968,3 
step
>>单击|cRXP_PICK_Journal|r
.goto 896,55.27,35.48,5,0
.goto 896,53.22,35.13
.complete 47968,1 
step
.goto 896,55.64,35.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallhaven Ledger|r
.turnin 47968 >>Turn in Signs and Portents
.accept 47978 >>接任务: |cRXP_WARN_任性的老妪|r
step
.goto 896,60.51,31.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helena Gentle|r
.turnin 47978 >>Turn in The Wayward Crone
.accept 47979 >>接任务: |cRXP_WARN_猎巫|r
step
>>单击|cRXP_PICK_Chair|r
.goto 896,60.48,31.59
.complete 47979,1 
.timer 13, Helene Gentle RP
step
.goto 896,60.58,31.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gentle's Spellbook|r
.accept 47981 >>接任务: |cRXP_WARN_破解诅咒|r
step
.goto 896,60.85,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fallhaven Villager|r
.accept 47980 >>接任务: |cRXP_WARN_愤怒的爪牙|r
step
#sticky
#completewith Enthralled Wildlife
>>杀死区域内的|cRXP_ENEMY_Wildlife|r
.complete 47980,1 
.mob Ensorcelled Bonepicker
.mob Bewitched Darkmaw
step
>>单击|cRXP_PICK_Lesser Effigy|r
.goto 896,59.58,28.32
.complete 47981,1,1 
step
>>杀死|cRXP_ENEMY_Helena |r并单击|cRX_PICK_Lesser Effigy|r
.goto 896,57.79,28.14
.mob Helena
.complete 47979,2 
.complete 47981,1,2 
.goto 896,57.66,27.81
step
>>单击|cRXP_PICK_Lesser Effigy|r
.goto 896,57.54,30.06
.complete 47981,1,3 
step
#label Enthralled Wildlife
>>单击|cRXP_PICK_Lesser Effigy|r
.goto 896,56.15,29.09
.complete 47981,1,4 
step
#loop
.line 896,59.58,28.32,57.79,28.14,57.54,30.06,56.15,29.09
.goto 896,59.58,28.32,30,0
.goto 896,57.79,28.14,30,0
.goto 896,57.54,30.06,30,0
.goto 896,56.15,29.09,30,0
>>杀死区域内的|cRXP_ENEMY_Wildlife|r
.complete 47980,1 
.mob Ensorcelled Bonepicker
.mob Bewitched Darkmaw
step
>>|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
.turnin 47980 >>Turn in Furious Familiars
.turnin 47979 >>Turn in Witch Hunt
step
.goto 896,55.87,35.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cursed Effigy|r
.turnin 47981 >>Turn in Cracking the Curse
.accept 47982 >>接任务: |cRXP_WARN_最后的雕像|r
step
>>单击|cRXP_PICK_Cursed Effy|r
.goto 896,55.87,35.06
.complete 47982,1 
step
>>杀死|cRXP_ENEMY_诅咒死亡的恐怖|r
.complete 47982,2 
step
.goto 896,55.87,35.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyril White|r
.turnin 47982,2 >>Turn in The Final Effigy
.accept 48108 >>接任务: |cRXP_WARN_维克雷斯之女|r
step
.goto 896,55.74,34.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wanted Poster|r
.accept 51547 >>接任务: |cRXP_WARN_通缉：涓流之悲|r
step
.goto 896,55.16,35.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maude Rifthold|r
.accept 48948 >>接任务: |cRXP_WARN_北径山洞|r
step
>>杀死|cRXP_ENEMY_Rindlewood|r
>>|cRXP_WARN_如果太难，请跳过此任务|r
.goto 896,52.33,28.94
.complete 51547,1 
step
.goto 896,53.93,26.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thaddeus "Gramps" Rifthold|r
.turnin 48948 >>Turn in The North Pass Caverns
step
.goto 896,53.93,26.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thaddeus "Gramps" Rifthold|r
.accept 48793 >>接任务: |cRXP_WARN_冒险者联盟|r
.accept 48792 >>接任务: |cRXP_WARN_社会威胁|r
step
#sticky
#label troggs
>>杀死Troggs
.complete 48792,1 
step
>>单击|cRXP_PICK_Backpack|r
.goto 896,53.37,25.78
.skipgossip 1
.complete 48793,1 
step
>>单击洞穴中的|cRXP_PICK_Scroll|r
.goto 896,53.52,23.24
.complete 48793,2 
step
>>单击|cRXP_PICK_Book|r
.goto 896,53.05,22.42
.complete 48793,3 
step
>>单击|cRXP_PICK_Journal|r
.goto 896,51.81,24.14
.complete 48793,4 
step
.goto 896,51.37,23.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marcus Howlingdale|r
.turnin 48793 >>Turn in The Adventurer's Society
.accept 48804 >>接任务: |cRXP_WARN_错估形势|r
step
.goto 896,51.82,22.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t单击|cRXP_PICK_Scroll|r
.accept 48805 >>接任务: |cRXP_WARN_寻回研究|r
step
>>单击|cRXP_PICK_Disk |r
.goto 896,51.59,21.92
.complete 48805,2 
step
>>与|cRXP_FRIENDLY_Amelia|r交互
.goto 896,51.66,21.46
.complete 48804,2 
step
>>与|cRXP_FRIENDLY_Jonathan交互|r
.goto 896,52.67,20.97
.complete 48804,1 
step
.goto 896,50.76,20.22
.complete 48805,1 
step
>>与|cRXP_FRIENDLY_Chase|r交互
.goto 896,50.64,22.09
.complete 48804,3 
step
>>单击|cRXP_PICK_Shard|r
.goto 896,51.14,22.53
.complete 48805,3 
step
#requires troggs
.goto 896,50.61,24.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marcus Howlingdale|r
.turnin 48805 >>Turn in Research Recovery
.turnin 48804 >>交任务: |cRXP_FRIENDLY_密斯特|rakes Were Made
.turnin 48792 >>Turn in Menace to Society
.accept 48853 >>接任务: |cRXP_WARN_终极学位|r
step
.goto 896,49.68,23.52
>>杀死|cRXP_ENEMY_Cragg|r
.complete 48853,1 
step
.goto 896,49.41,23.39
>>与|cRXP_PICK_Nigel|r交互
.complete 48853,2 
step
.goto 896,50.59,24.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thaddeus "Gramps" Rifthold|r
.turnin 48853 >>Turn in Terminal Degree
step
.goto 896,55.87,35.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyril White|r
.turnin 51547 >>Turn in WANTED: Rindlewoe
step
.goto 896,54.55,39.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abby Lewis|r
.accept 47289 >>接任务: |cRXP_WARN_泰迪熊和茶|r
step
.goto 896,56.29,38.15
>>单击|cRXP_PICK_Plush 1|r
.complete 47289,3 
step
.goto 896,55.61,38.55
>>单击|cRXP_PICK_Plush 2|r
.complete 47289,1 
step
.goto 896,55.39,39.76
>>单击|cRXP_PICK_Plush 3|r
.complete 47289,2 
step
.goto 896,56.29,38.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abby Lewis|r
.turnin 47289 >>Turn in Teddies and Tea
.accept 47428 >>接任务: |cRXP_WARN_猫咪？|r
step
.goto 896,55.60,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smoochums|r
.turnin 47428 >>Turn in Kitty?
step
.goto 896,54.55,39.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abby Lewis|r
.accept 47289 >>接任务: |cRXP_WARN_泰迪熊和茶|r
step
.goto 896,55.39,39.76
.complete 47289,2 
step
.goto 896,55.61,38.55
.complete 47289,1 
step
.goto 896,56.29,38.15
.complete 47289,3 
step
.goto 896,56.29,38.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abby Lewis|r
.turnin 47289 >>Turn in Teddies and Tea
.accept 47428 >>接任务: |cRXP_WARN_猫咪？|r
step
.goto 896,55.60,41.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smoochums|r
.turnin 47428 >>Turn in Kitty?
.accept 45079 >>接任务: |cRXP_WARN_格伦布鲁克村|r
step
.goto 896,55.53,45.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samuel|r
.complete 45079,3 
step
.goto 896,57.16,46.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan|r
.complete 45079,2 
step
.goto 896,53.15,44.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mary|r
.complete 45079,1 
step
.goto 896,54.74,49.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Annie Warren|r
.turnin 45079 >>Turn in The Village of Glenbrook
.accept 44785 >>接任务: |cRXP_WARN_茶话会|r
step
>>Follow the Waypoint
.goto 896,56.39,49.04
.complete 44785,1 
step
>>单击|cRXP_PICK_Tea|r
.goto 896,58.19,47.90
.complete 44785,2 
step
>>单击|cRXP_PICK_Monster |r
.goto 896,58.19,47.90
.complete 44785,3 
step
.goto 896,57.70,47.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Annie Warren|r
.turnin 44785 >>Turn in Tea Party
step
.goto 896,70.09,42.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Henry Framer|r
.turnin 48108 >>Turn in The Waycrest Daughter
.accept 48283 >>接任务: |cRXP_WARN_接受指控|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucille Waycrest|r
.goto 896,70.09,42.94
.skipgossip 1
.complete 48283,1 
step
.goto 896,69.67,43.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Everit Reade|r
.turnin 48283 >>Turn in Standing Accused
.accept 48109 >>接任务: |cRXP_WARN_林中有眼|r
.accept 48110 >>接任务: |cRXP_WARN_预防伏击|r
step
#sticky
#completewith Trap
>>杀死|cRXP_ENEMY_乌鸦和狼|r
.complete 48109,2 
.complete 48109,1 
.mob Darkmaw Prowler
.mob Watchful Raven
step
.goto 896,68.97,44.00
>>单击|cRXP_PICK_Trap|r
.complete 48110,1,1 
step
.goto 896,68.48,44.83
>>单击|cRXP_PICK_Trap|r
.complete 48110,1,2 
step
.goto 896,68.03,44.76
>>单击|cRXP_PICK_Trap|r
.complete 48110,1,3 
step
.goto 896,68.25,44.17
>>单击|cRXP_PICK_Trap|r
.complete 48110,1,4 
step
.goto 896,67.57,43.01
>>单击|cRXP_PICK_Trap|r
.complete 48110,1,5 
step
.goto 896,68.43,42.92
#label Trap
>>单击|cRXP_PICK_Trap|r
.complete 48110,1,6 
step
>>杀死|cRXP_ENEMY_乌鸦和狼|r
#loop
.line 896,68.97,44.00,68.48,44.83,68.03,44.76,68.25,44.17,67.57,43.01,68.43,42.92
.goto 896,68.97,44.00,30,0
.goto 896,68.48,44.83,30,0
.goto 896,68.03,44.76,30,0
.goto 896,68.25,44.17,30,0
.goto 896,67.57,43.01,30,0
.goto 896,68.43,42.92,30,0
.complete 48109,2 
.complete 48109,1 
.mob Darkmaw Prowler
.mob Watchful Raven
step
.goto 896,69.66,43.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Everit Reade|r
.turnin 48109 >>Turn in The Woods Have Eyes
.turnin 48110 >>Turn in In Case of Ambush
step
.goto 896,70.08,42.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucille Waycrest|r
.accept 48111 >>接任务: |cRXP_WARN_迷信审判|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Villager 1|r
.goto 896,69.89,42.83
.skipgossip 1
.complete 48111,1,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Villager 2|r
.goto 896,69.90,42.91
.skipgossip 1
.complete 48111,1,2 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Villager 3|r
.goto 896,69.98,42.99
.skipgossip 1
.complete 48111,1,3 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Villager 4|r
.goto 896,70.04,43.03
.skipgossip 1
.complete 48111,1,4 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Villager 5|
.goto 896,70.04,43.14
.skipgossip 1
.complete 48111,1,5 
step
.goto 896,70.08,42.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tr与|cRXP_FRIENDLY_Lucille Waycrest|r交谈
.turnin 48111 >>Turn in Trial by Superstition
.accept 48113 >>接任务: |cRXP_WARN_刺鼻的计划|r
.accept 48165 >>接任务: |cRXP_WARN_吞食有害|r
.accept 48170 >>接任务: |cRXP_WARN_一朝被咬，十年胆小|r
step
>>单击|cRXP_PICK_Jar|r
.goto 896,69.52,43.85
.complete 48170,1 
step
#completewith flies
>>杀死|cRXP_ENEMY_Saurolisk|r并掠夺它们的|cRXP_Loot_Gand|r
.complete 48165,1 
step
.goto 896,69.06,41.7
>>单击|cRXP_PICK_Fly|r
.complete 48170,2,1 
step
.goto 896,68.7,41.33
>>单击|cRXP_PICK_Fly|r
.complete 48170,2,2 
step
.goto 896,69.23,40.67
>>单击|cRXP_PICK_Fly|r
.complete 48170,2,3 
step
.goto 896,69.02,40.16
>>单击|cRXP_PICK_Fly|r
.complete 48170,2,4 
step
.goto 896,68.14,40.39
>>单击|cRXP_PICK_Fly|r
.complete 48170,2,5 
step
#label flies
.goto 896,67.29,41.23
>>单击|cRXP_PICK_Fly|r
.complete 48170,2,6 
step
.goto 896,66.91,42.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adela Hawthorne|r
.accept 49242 >>接任务: |cRXP_WARN_有刺或没刺|r
step
#completewith next
>>杀死|cRXP_ENEMY_Quillrats|r
.complete 49242,1 
.mob Invasive Quillrat
step
>>单击地面上的|cRXP_PICK_Onions|r，直到找到|cRXP_LOOT_Juicy Onion|r
#loop
.line 896,66.69,42.05,66.15,42.84,65.58,42.21,66.02,41.55
.goto 896,66.69,42.05,15,0
.goto 896,66.15,42.84,15,0
.goto 896,65.58,42.21,15,0
.goto 896,66.02,41.55,15,0
.complete 48113,1,1 
step
>>杀死|cRXP_ENEMY_Quillrats|r
#loop
.line 896,66.69,42.05,66.15,42.84,65.58,42.21,66.02,41.55
.goto 896,66.69,42.05,15,0
.goto 896,66.15,42.84,15,0
.goto 896,65.58,42.21,15,0
.goto 896,66.02,41.55,15,0
.complete 49242,1 
.mob Invasive Quillrat
step
.goto 896,66.93,42.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adela Hawthorne|r
.turnin 49242 >>Turn in Quill or Be Quilled
step
#loop
.line 69.06,41.7,68.7,41.33,69.23,40.67,69.02,40.16,68.14,40.39
.goto 69.06,41.70,68.70,896,0
.goto 69.06,41.33,69.23,896,0
.goto 69.06,40.67,69.02,896,0
.goto 69.06,40.16,68.14,896,0
>>杀死|cRXP_ENEMY_Saurolisk|r并掠夺它们的|cRXP_Loot_Gand|r
.complete 48165,1 
step
.goto 896,70.07,42.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucille Waycrest|r
.turnin 48113 >>Turn in A Pungent Solution
.turnin 48170 >>Turn in Once Bitten, Twice Shy
.turnin 48165 >>Turn in Harmful If Swallowed
step
.goto 896,71.80,50.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Art Hughie|r
.accept 48880 >>接任务: |cRXP_WARN_卑鄙的河鸥|r
.accept 48904 >>接任务: |cRXP_WARN_上钩|r
step
#completewith Guts
>>杀死|cRXP_ENEMY_螃蟹|r掠夺它们的|cRXX_Loot_Meat|r
.complete 48904,1 
step
#completewith Guts
>>Kill Gulls
.complete 48880,1 
step
#completewith Guts
>>单击地面上的对象
.complete 48882,1 
step
#label Guts
.goto 896,70.75,50.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Intact Mudfish|r
.accept 48882 >>接任务: |cRXP_WARN_我喜欢鱼内脏，我不撒谎|r
step
#completewith Guts2
>>杀死|cRXP_ENEMY_螃蟹|r掠夺它们的|cRXX_Loot_Meat|r
.complete 48904,1 
step
#completewith Guts2
>>Kill Gulls
.complete 48880,1 
step
#completewith Guts2
>>单击地面上的对象
.complete 48882,1 
step
#label Guts2
.goto 896,71.14,52.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_钓鱼 Rod|r
.accept 48881 >>接任务: |cRXP_WARN_收杆高手|r
step
#completewith Guts3
>>杀死|cRXP_ENEMY_螃蟹|r掠夺它们的|cRXX_Loot_Meat|r
.complete 48904,1 
step
#completewith Guts3
>>Kill Gulls
.complete 48880,1 
step
#completewith Guts3
>>单击地面上的对象
.complete 48882,1 
step
#label Guts3
>>Click the Rod
.goto 896,71.24,51.68
.complete 48881,1,1 
step
#completewith Guts4
>>杀死|cRXP_ENEMY_螃蟹|r掠夺它们的|cRXX_Loot_Meat|r
.complete 48904,1 
step
#completewith Guts4
>>Kill Gulls
.complete 48880,1 
step
#completewith Guts4
>>单击地面上的对象
.complete 48882,1 
step
#label Guts4
>>Click the Rod
.goto 896,71.08,52.84
.complete 48881,1,2 
step
#completewith Guts5
>>杀死|cRXP_ENEMY_螃蟹|r掠夺它们的|cRXX_Loot_Meat|r
.complete 48904,1 
step
#completewith Guts5
>>Kill Gulls
.complete 48880,1 
step
#completewith Guts5
>>单击地面上的对象
.complete 48882,1 
step
#label Guts5
>>Click the Rod
.goto 896,70.83,53.43
.complete 48881,1,3 
step
#completewith Guts6
>>杀死|cRXP_ENEMY_螃蟹|r掠夺它们的|cRXX_Loot_Meat|r
.complete 48904,1 
step
#completewith Guts6
>>Kill Gulls
.complete 48880,1 
step
#completewith Guts6
>>单击地面上的对象
.complete 48882,1 
step
#label Guts6
>>Click the Rod
.goto 896,70.49,54.14
.complete 48881,1,4 
step
#completewith Guts7
>>杀死|cRXP_ENEMY_螃蟹|r掠夺它们的|cRXX_Loot_Meat|r
.complete 48904,1 
step
#completewith Guts7
>>Kill Gulls
.complete 48880,1 
step
#completewith Guts7
>>单击地面上的对象
.complete 48882,1 
step
#label Guts7
>>Click the Rod
.goto 896,70.11,55.07
.complete 48881,1,5 
step
.goto 896,69.69,55.52
>>点击你的任务日志中的任务弹出菜单以打开任务
.turnin 48881 >>Turn in The Reel Deal
step
>>如果你还没有完成
.complete 48904,1 
.complete 48880,1 
.complete 48882,1 
step
.goto 896,71.80,50.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Art Hughie|r
.turnin 48880 >>Turn in Mean Gulls
.turnin 48882 >>Turn in I Like Fish Guts and I Cannot Lie
.turnin 48904 >>Turn in Take the Bait
.accept 48883 >>接任务: |cRXP_WARN_大鸟不死|r
step
>>Kill Brinebeak
.goto 896,71.46,49.11
.complete 48883,1 
step
.goto 896,71.81,50.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Art Hughie|r
.turnin 48883 >>Turn in Big Gulls Won't Die
step
.goto 896,62.62,42.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Caretaker Allen
.accept 48475 >>接任务: |cRXP_WARN_看见幽灵|r
step
>>点击区域中的坟墓花朵
.goto 896,60.31,44.88
.complete 48475,1 
step
>>Click the Ritual Urn
.goto 896,59.99,45.86
.complete 48475,2 
step
>>Click Aaron
.goto 896,60.75,46.60
.complete 48475,3 
step
.goto 896,60.75,46.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aaron Cresterly|r
.turnin 48475 >>Turn in Seeing Spirits
.accept 48476 >>接任务: |cRXP_WARN_分裂派对|r
step
>>杀死邪恶的猎人
.goto 896,60.32,47.96
.complete 48476,1 
step
.goto 896,59.80,48.94
>>等待小角色扮演
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bridget Fairwater|r
.turnin 48476 >>Turn in Split Party
.accept 48477 >>接任务: |cRXP_WARN_还有一个|r
step
>>Kill Sister Westwood
.goto 896,59.07,50.33
.complete 48477,1 
step
.goto 896,59.50,51.19
>>等待小型角色扮演
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mercy Fairwater|r
.turnin 48477 >>Turn in Looking For One More
step
.goto 896,64.58,54.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rebecca Hale|r
.accept 52074 >>接任务: |cRXP_WARN_超脱|r
step
.goto 896,61.91,59.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Wons|r
.turnin 52074 >>Turn in Deliverance
.accept 48179 >>接任务: |cRXP_WARN_救助游侠|r
.accept 52075 >>接任务: |cRXP_WARN_白骨贯体|r
step
.goto 896,61.87,59.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thornspeaker Birchgrove|r
.accept 48182 >>接任务: |cRXP_WARN_石碑之逝|r
.accept 48183 >>接任务: |cRXP_WARN_活化山丘|r
step
>>Kill the Skeletons
#completewith 1
.complete 52075,1 
step
>>点击受伤的Npcs或治愈Npcs
#completewith 1
.complete 48179,1 
step
#completewith 1
>>杀死|cRXP_ENEMY_Elements|r掠夺它们的|cRXP_Loot_核心|r
.complete 48183,1 
step
#label 1
>>Click the Ancient Cairn
.goto 896,60.89,60.96
.complete 48182,1,1 
step
>>Kill Skeletons
#completewith 2
.complete 52075,1 
step
>>点击受伤的Npcs或治愈Npcs
#completewith 2
.complete 48179,1 
step
#completewith 2
>>杀死|cRXP_ENEMY_Elements|r掠夺它们的|cRXP_Loot_核心|r
.complete 48183,1 
step
#label 2
>>Click the Ancient Cairn
.goto 896,62.55,64.68
.complete 48182,1,2 
step
>>Kill Skeletons
#completewith 3
.complete 52075,1 
step
>>点击受伤的Npcs或治愈Npcs
#completewith 3
.complete 48179,1 
step
#completewith 3
>>杀死|cRXP_ENEMY_Elements|r掠夺它们的|cRXP_Loot_核心|r
.complete 48183,1 
step
#label 3
>>Click the Ancient Cairn
.goto 896,59.46,63.74
.complete 48182,1,3 
step
.goto 896,58.45,63.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur Tradewind|r
.accept 48180 >>接任务: |cRXP_WARN_超大问题|r
step
>>哨兵附近有卷轴，使战斗更容易
>>杀死古代哨兵
.complete 48180,1 
step
>>Kill Skeletons
#completewith 4
.complete 52075,1 
step
>>点击受伤的Npcs或治愈Npcs
#completewith 4
.complete 48179,1 
step
#completewith 4
>>杀死|cRXP_ENEMY_Elements|r掠夺它们的|cRXP_Loot_核心|r
.complete 48183,1 
step
#label 4
>>Click the Ancient Cairn
.goto 896,59.34,66.25
.complete 48182,1,4 
step
>>Kill Skeletons
#completewith 5
.complete 52075,1 
step
>>点击受伤的Npcs或治愈Npcs
#completewith 5
.complete 48179,1 
step
#completewith 5
>>杀死|cRXP_ENEMY_Elements|r掠夺它们的|cRXP_Loot_核心|r
.complete 48183,1 
step
#label 5
>>点击主要的古代凯恩斯
.goto 896,59.14,67.88
.complete 48182,2
step
>>如果你还没有完成
.complete 52075,1 
.complete 48179,1 
.complete 48183,1 
step
.goto 896,61.88,59.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thornspeaker Birchgrove|r
.turnin 48180 >>Turn in Really Big Problem
.turnin 48182 >>Turn in Total Cairnage
.turnin 48183 >>Turn in The Hills Are Alive
step
.goto 896,61.91,59.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Wons|r
.turnin 48179,2 >>Turn in Rescue Rangers
.turnin 52075 >>Turn in Boned
step
>>Use Hearthstone
#completewith next
.hs >>Hearthstone to Boralus
step
>>Done
]])
RXPGuides.RegisterGuide([[
#df
#version 4
#group RestedXP Alliance 10-60
#name ZA_WarCampaign
#displayname Final Chapter - Zuldazar War Campaign
<<Alliance
step
#completewith Brigadier Thom
.goto 1161,67.96,26.66
.gossipoption 48168 >>对话: |cRXP_FRIENDLY_杰塔瑞斯将军|r
.target Grand Admiral Jes-Tereth
step
#label Brigadier Thom
.goto 862,77.54,54.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brigadier Thom|r
.turnin 51308 >>交任务: |cRXP_FRIENDLY_祖达萨据点|r
.accept 51201 >>接任务: |cRXP_WARN_巨魔的故事|r
.target Brigadier Thom
step
.goto 862,77.51,54.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Captured Zandalari Troll|r
>>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
.skipgossip 1
.complete 51201,1 
.target Captured Zandalari Troll
step
.goto 862,77.54,54.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brigadier Thom|r
.turnin 51201 >>Turn in The Troll's Tale
.accept 51190 >>接任务: |cRXP_WARN_暂时得救|r
.accept 51544 >>接任务: |cRXP_WARN_拆卸火炮|r
.target Brigadier Thom
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Medic Feorea|r and |cRXP_FRIENDLY_Degdod|r
.accept 51191 >>接任务: |cRXP_WARN_全部救出|r
.goto 862,77.13,55.54
.accept 51192 >>接任务: |cRXP_WARN_配额匮乏|r
.accept 51193 >>接任务: |cRXP_WARN_那是我的|r
.goto 862,77.13,55.59
.target Degdod
.target Medic Feorea
step
#completewith ZandalariForsakens
>>杀死|cRXP_ENEMY_Zandalari|r和|cRXX_ENEMY_Forsakens|r
.complete 51190,2 
.complete 51190,1 
.mob Zandalari Quickblade
.mob Forsaken Deathguard
.mob Zandalari Axe Thrower
.mob Bleak Conjurer
step
.goto 862,78.46,52.01
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
.complete 51192,1,1 
step
.goto 862,78.51,51.95
>>与|cRXP_FRIENDLY_受伤水手交互|r
.complete 51191,1,1 
.use 160433
.target Injured Shipwrecked Sailor
step
.goto 862,78.55,53.05
>>与|cRXP_FRIENDLY_受伤水手交互|r
.complete 51191,1,2 
.use 160433
.target Injured Shipwrecked Sailor
step
.goto 862,79.00,53.96
>>与|cRXP_FRIENDLY_受伤水手交互|r
.complete 51191,1,3 
.use 160433
.target Injured Shipwrecked Sailor
step
.goto 862,79.71,53.63
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
.complete 51192,1,2 
step
.goto 862,79.52,55.02
>>与|cRXP_FRIENDLY_受伤水手交互|r
.complete 51191,1,4 
.use 160433
.target Injured Shipwrecked Sailor
step
.goto 862,80.14,55.02
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
.complete 51192,1,3 
step
.goto 862,80.19,55.26
>>与|cRXP_FRIENDLY_受伤水手交互|r
.complete 51191,1,5 
.use 160433
.target Injured Shipwrecked Sailor
step
.goto 862,80.96,54.31
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
.complete 51192,1,4 
step
.goto 862,80.90,53.69
>>与|cRXP_FRIENDLY_受伤水手交互|r
.complete 51191,1,5 
.use 160433
.target Injured Shipwrecked Sailor
step
.goto 862,80.90,53.69
>>与|cRXP_FRIENDLY_受伤水手交互|r
.complete 51191,1,6 
.use 160433
.target Injured Shipwrecked Sailor
step
.goto 862,80.81,53.27
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
.complete 51192,1,5 
step
.goto 862,80.93,53.44
>>与|cRXP_FRIENDLY_受伤水手交互|r
.complete 51191,1,7 
.use 160433
.target Injured Shipwrecked Sailor
step
.goto 862,80.89,53.39
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
.complete 51192,1,6 
step
.goto 862,81.09,53.86
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
.complete 51192,1,7 
step
.goto 862,81.47,53.84
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
.complete 51192,1,8 
step
.goto 862,81.52,53.78
>>与|cRXP_FRIENDLY_受伤水手交互|r
.complete 51191,1,8 
.use 160433
.target Injured Shipwrecked Sailor
step
.goto 862,83.35,54.73
>>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Cannon|r
.complete 51544,1,1 
step
.goto 862,83.34,54.4
>>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Cannon|r
.complete 51544,1,2 
step
.goto 862,83.34,54.21
>>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Cannon|r
.complete 51544,1,3 
step
#label ZandalariForsakens
.goto 862,81.94,51.43
>>杀死|cRXP_ENEMY_少校Alan Hawkins |r并掠夺他的|T133041:0|t|cRXP-loot_Hammer |r
|cRXP_WARN_Kill the remaining Zandalari and Forsakens|r
.complete 51193,1 
step
#loop
.line 862,80.71,52.64;79.85,53.56,80.82,55.67,82.23,54.63
.goto 862,80.71,80.82,15,0
.goto 862,53.56,82.23,15,0
>>杀死|cRXP_ENEMY_Zandalari|r和|cRXX_ENEMY_Forsakens|r
.complete 51190,2 
.complete 51190,1 
.mob Zandalari Quickblade
.mob Forsaken Deathguard
.mob Zandalari Axe Thrower
.mob Bleak Conjurer
step
.goto 862,77.54,54.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brigadier Thom|r
.turnin 51190 >>Turn in Granting a Reprieve
.turnin 51544 >>Turn in Disarming the Cannons
.target Brigadier Thom
step
.goto 862,77.12,55.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Medic Feorea|r
.turnin 51191 >>Turn in Save Them All
.target Medic Feorea
step
.goto 862,77.13,55.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Degdod|r
.turnin 51192 >>Turn in A Lack of Surplus
.turnin 51193 >>Turn in That One's Mine
.target Degdod
step
.goto 862,77.50,55.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔希·钢烁|r
.accept 51418 >>接任务: |cRXP_WARN_希巴拉|r
.target Kelsey Steelspark
step
.goto 862,80.35,55.41
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_boat|r
.complete 51418,1 
.timer 128,Travel to Xibala RP
step
.goto 862,40.74,70.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anvil-Thane Thurgaden|r
.turnin 51418 >>Turn in Xibala
.accept 51331 >>接任务: |cRXP_WARN_内藏玄机|r
.accept 51309 >>接任务: |cRXP_WARN_拉格纳罗斯之石|r
.target Anvil-Thane Thurgaden
step
.goto 862,39.56,72.78
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
.complete 51309,1,1 
step
.goto 862,39.62,72.86
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
.complete 51309,1,2 
step
.goto 862,39.57,73.13
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
.complete 51331,1,1 
step
.goto 862,39.63,73.45
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
.complete 51309,1,3 
step
.goto 862,39.63,73.52
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
.complete 51309,1,4 
step
.goto 862,39.58,73.61
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
.complete 51309,1,5 
step
.goto 862,39.37,73.7
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
.complete 51331,1,2 
step
.goto 862,39.15,73.86
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
.complete 51309,1,6 
step
.goto 862,39.11,73.82
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
.complete 51309,1,7 
step
.goto 862,39.05,73.79
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
.complete 51309,1,8 
step
.goto 862,39.12,73.67
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
.complete 51309,1,9 
step
.goto 862,39.1,72.98
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
.complete 51331,1,3 
step
.goto 862,39.03,72.35
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
.complete 51331,1,4 
step
.goto 862,40.74,70.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anvil-Thane Thurgaden|r
.turnin 51331 >>Turn in Mole Machinations
.turnin 51309 >>Turn in Rocks of Ragnaros
.accept 51359 >>接任务: |cRXP_WARN_火焰之地碎片|r
.target Anvil-Thane Thurgaden
step
.goto 862,40.65,70.88
>>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Unstable Magma|r
.complete 51359,1 
.use 160058
.target Unstable Magma
step
.goto 862,32.92,69.69
>>要有效杀死|cRXP_ENEMY_Goblin|r，请在可用时使用|T135808:0|t（2），并在|T135808-0|t（2）冷却时切换到|T525023:0|t。
.complete 51359,2 
step
#completewith next
+按下技能|T236372:0|t解除岩浆元素
step
.goto 862,40.74,70.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anvil-Thane Thurgaden|r
.turnin 51359 >>Turn in Fragment of the Firelands
.target Anvil-Thane Thurgaden
step
.goto 862,40.77,70.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔希·钢烁|r
.turnin 52003 >>交任务: |cRXP_FRIENDLY_勇士：凯尔希·钢烁|r
.accept 51968 >>接任务: |cRXP_WARN_返回伯拉勒斯|r
.target Kelsey Steelspark
step
.goto 862,40.46,71.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria|r
.complete 51968,1 
.skipgossip 1
.target Daria Smithson
step
.goto 1161,69.29,26.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
.turnin 51968 >>Turn in Return to Boralus
.target Halford Wyrmbane
step
.next << 5
]])
