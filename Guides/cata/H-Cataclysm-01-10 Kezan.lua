local _,addon = ...
if addon.game ~= "CATA" or addon.player.faction ~= 'Horde' then return end

RXPGuides.RegisterGuide([[
#cata
<< Horde
#name 1-6 Kezan
#next 6-11 The Lost Isles
#version 1
--#group RXP Cataclysm (H)
#defaultfor Goblin
#group RXP Cataclysm 1-80 (H)
#subweight 10000


step
    .goto 194,56.44,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sassy|r
    .accept 14138 >>接任务: |cRXP_WARN_照看生意|r
    .target Sassy Hardwrench
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25工头戴姆维克|r
    .turnin 14138 >>交任务: |cRXP_FRIENDLY_照看生意|r
    .accept 14069 >>接任务: |cRXP_WARN_好帮手很难找|r
    .accept 14075 >>接任务: |cRXP_WARN_矿井的麻烦事|r
    .target Foreman Dampwick
step
    #completewith next
    .goto 194,65.52,87.82,10 >>进入矿井s
step
    #completewith KezanTroubleintheMines
    >>单击|cRXP_FRIENDLY_Defiant巨魔|r。这些巨魔也可以在矿井外找到。
    .goto 194,66.02,82.39,0,0
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    #label KezanTroubleintheMines
    >>杀死|cRXP_ENEMY_Tunneling蠕虫|r
    .goto 197,50.73,59.55
    .complete 14075,1 --6/6 Tunneling Worm slain
    .mob Tunneling Worm
step
    #completewith next
    .goto 194,65.52,87.82,8 >>Leave the mines
step
    >>单击|cRXP_FRIENDLY_Defiant Trolls|r
    .goto 194,72.45,83.45,50,0
    .goto 194,70.39,77.73,30,0
    .goto 194,68.74,82.87
    .complete 14069,1 --8/8 Attitudes Adjusted
    .target Defiant Troll
step
    .goto 194,60.21,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25工头戴姆维克|r
    .turnin 14075 >>交任务: |cRXP_FRIENDLY_矿井的麻烦事|r
    .turnin 14069 >>交任务: |cRXP_FRIENDLY_好帮手很难找|r
    .accept 25473 >>接任务: |cRXP_WARN_卡亚可乐|r
    .target Foreman Dampwick
step
    .goto 194,56.4,76.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25莎希·硬钳|r
    .turnin 25473 >>交任务: |cRXP_FRIENDLY_卡亚可乐|r
    .accept 28349 >>接任务: |cRXP_WARN_市场部的梅格斯|r
    .target Sassy Hardwrench
step
    .goto 194,58.3,76.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25梅格斯·碎纸机|r
    .turnin 28349 >>交任务: |cRXP_FRIENDLY_市场部的梅格斯|r
    .accept 14071 >>接任务: |cRXP_WARN_呼朋唤友|r
    .target Megs Dreadshredder
step
    .goto 194,58.9,76.3
    >>使用|T134246:0|t[热棒键]
    >>|cRXP_WARN_您可以按escape键绑定RestedXP中的“活动项目”窗口，然后进入“选项”->“键绑定”->“RestedXP指南”。|r
    .use 46856
    .complete 14071,1 --1/1 Keys to the Hot Rod used
step
    .goto 194,59.93,85.52,15,0
    .goto 194,58.9,85.5
    >>前往|cRXP_FRIENDLY_Izzy|r
    >>|cRXP_WARN_使用|r|T135788:0|t[Punch]|cRXP_WARN_to提高速度|r
    .complete 14071,2 --1/1 Izzy picked up
    .target Izzy
step
    .goto 194,59.93,85.52,15,0
    .goto 194,57.95,70.46,20,0
    .goto 194,60.6,49.9
    >>前往|cRXP_FRIENDLY_Gobber|r
    >>|cRXP_WARN_使用|r|T135788:0|t[Punch]|cRXP_WARN_to提高速度|r
    .complete 14071,4 --1/1 Gobber picked up
    .target Gobber
step
    .goto 194,48.5,38.3
    >>向|cRXP_FRIENDLY_Ace|r行进
    >>|cRXP_WARN_使用|r|T135788:0|t[Punch]|cRXP_WARN_to提高速度|r
    .complete 14071,3 --1/1 Ace picked up
    .target Ace
step
    #completewith next
    .goto 194,61.98,54.83,30,0
    .goto 194,60.13,64.59,30,0
    .goto 194,57.90,71.12,20 >>沿着街道往回走
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25梅格斯·碎纸机|r, Sassy, Chip << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25梅格斯·碎纸机|r, Sassy, |cFF00FF25小甜甜|r << Male
    .turnin 14071 >>交任务: |cRXP_FRIENDLY_呼朋唤友|r
    .accept 24567 >>接任务: |cRXP_WARN_参加预选赛|r
    .goto 194,58.28,76.57
    .accept 14070 >>接任务: |cRXP_WARN_亲自动手|r
    .goto 194,56.43,76.95
    .accept 26711 >>接任务: |cRXP_WARN_前往银行|r << Female
    .goto 194,56.32,76.77 << Female
    .accept 26712 >>接任务: |cRXP_WARN_前往银行|r << Male
    .goto 194,56.30,77.12 << Male
    .target Megs Dreadshredder
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00确保使用|r|T134246:0|t[热棒键]
    .use 46856
step
    #completewith next
    .goto 194,57.10,78.44,10,0
    .goto 194,53.39,75.13,20,0
    .goto 194,47.36,78.46,30 >>顺着箭头在房子周围转
step
    .goto 194,45.19,74.76
    >>攻击|cFFFF5722Bruno|r
    .complete 14070,1 --1/1 Bruno Flameretardant beaten down
    .mob Bruno Flameretardant
step
    .goto 194,41.6,81.9
    >>攻击|cFFFF5722 Sudsy|r
    .complete 14070,4 --1/1 Sudsy Magee beaten down
    .mob Sudsy Magee
step
    .goto 194,37.47,75.97,15,0
    .goto 194,35.0,77.8
    >>Attack |cFFFF5722Jack|r
    .complete 14070,3 --1/1 Jack the Hammer beaten down
    .mob Jack the Hammer
step
    .goto 194,36.84,69.95
    >>攻击|cFFFF5722弗兰基|r
    .complete 14070,2 --1/1 Frankie Gearslipper beaten down
    .mob Frankie Gearslipper
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00确保使用|r|T134246:0|t[热棒键]
    .use 46856
step
    .goto 194,34.16,69.32,10,0
    .goto 194,32.27,63.79,12,0
    .goto 194,29.72,64.52,16,0
    .goto 194,30.11,71.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t进入银行并与|cFF00FF25FBok银行柜员通话|r
    .turnin 26711 >>交任务: |cRXP_FRIENDLY_前往银行|r <<Female
    .accept 14110 >>接任务: |cRXP_WARN_崭新的你|r <<Female
    .turnin 26712 >>交任务: |cRXP_FRIENDLY_前往银行|r <<Male
    .accept 14109 >>接任务: |cRXP_WARN_崭新的你|r <<Male
    .target FBok Bank Teller
step
    #completewith TheNewYou
    .vehicle 34840 >>|cFFFCDC00确保使用|r|T134246:0|t[热棒键]
    .use 46856
step
    .goto 194,29.80,63.62,16,0
    .goto 194,34.66,54.73,10,0
    .goto 194,37.63,55.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25苏扎博|r
    >>从他那里获得|cRXP_LOOT_a嘻哈新装备|r
    .complete 14110,2 << Female --1/1 Hip New Outfit
    .complete 14109,2 << Male --1/1 Hip New Outfit
    .use 46856
    .skipgossip
    .target Szabo
step
    .goto 194,34.87,45.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25“大金牙”盖比|r
    >>从他那里获得|cRXP_LOOT_Shiny Bling|r
    .complete 14110,1 << Female --1/1 Shiny Bling
    .complete 14109,1 << Male --1/1 Shiny Bling
    .skipgossip
    .target Gappy Silvertooth
step
    #label TheNewYou
    .goto 194,40.43,45.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25“软糖”米萨|r
    >>从她那里获得|cRXP_OOT_Cool Shades|r
    .complete 14110,3 << Female --1/1 Cool Shades
    .complete 14109,3 << Male --1/1 Cool Shades
    .skipgossip
    .target Missa Spekkies
step
    .goto 194,42.57,55.34,20,0
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25克罗斯彻克教练|r
    .turnin 24567 >>交任务: |cRXP_FRIENDLY_参加预选赛|r
    .accept 24488 >>接任务: |cRXP_WARN_替代品|r
    .target Coach Crosscheck
step
    #loop
    .goto 194,51.883,60.156,0
    .goto 194,46.133,63.902,0
    .waypoint 194,51.883,60.156,25,0
    .waypoint 194,49.085,69.812,25,0
    .waypoint 194,46.133,63.902,25,0
    .waypoint 194,43.062,62.732,25,0
    .waypoint 194,44.868,54.606,25,0
    >>在|cFFFCDC00热棒上时，从地面上拿起|cFFDB2EF更换零件|r
    .complete 24488,1 --6/6 Replacement Parts
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25克罗斯彻克教练|r
    .turnin 24488 >>交任务: |cRXP_FRIENDLY_替代品|r
    .accept 24502 >>接任务: |cRXP_WARN_必要的粗暴|r
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    >>进入|cRXP_FRIENDLY_Bilgewater海盗船|r
    .complete 24502,1 --1/1 Bilgewater Buccaneer
    .target Bilgewater Buccaneer
step
    >>使用|T134480:0|t[投掷脚弹]（1）击杀面前的|cRXP_ENEMY_Steamwatdle Shark|r
    .goto 194,47.7,57.7
    .complete 24502,2 --8/8 Steamwheedle Shark Footbombed
step
    >>单击任务日志中的任务，您可能需要下马才能接受|cFF00FF25Crosscheck|r的下一个任务
    .goto 194,48.79,57.79
    .turnin 24502 >>交任务: |cRXP_FRIENDLY_必要的粗暴|r
    --.accept 24503 >>接任务: |cRXP_WARN_四攻得分|r << Male
    .accept 28414 >>接任务: |cRXP_WARN_四攻得分|r
    .target Coach Crosscheck
step
    #completewith next
    .goto 194,47.71,57.76
    .vehicle >>进入|cRXP_FRIENDLY_Bilgewater海盗船|r
    .target Bilgewater Buccaneer
step
    >>使用|T134480:0|t脚踢炸弹（1）
    --.complete 24503,1 << Male --1/1 Footbomb Kicked Through Smokestacks
    .complete 28414,1 --1/1 Footbomb Kicked Through Smokestacks
step
    #completewith next
    +|cFFFCDC00离开车辆|r
step
    .goto 194,48.79,57.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25克罗斯彻克教练|r
    .turnin 24503 >>交任务: |cRXP_FRIENDLY_四攻得分|r
    --.turnin 28414 >>交任务: |cRXP_FRIENDLY_四攻得分|r << Male
    .accept 24520 >>接任务: |cRXP_WARN_告诉莎希好消息|r
    .target Coach Crosscheck
step
    #completewith next
    .hs >>通往KTC总部的心脏
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sassy|r and |cFF00FF25Chip|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Sassy, |cFF00FF25小甜甜|r << Male
    .turnin 24520 >>交任务: |cRXP_FRIENDLY_告诉莎希好消息|r
    .turnin 14070 >>交任务: |cRXP_FRIENDLY_亲自动手|r
    .goto 194,56.42,76.94
    .turnin 14110 >>交任务: |cRXP_FRIENDLY_崭新的你|r << Female
    .goto 194,56.32,76.77 << Female
    .turnin 14109 >>交任务: |cRXP_FRIENDLY_崭新的你|r << Male
    .goto 194,56.30,77.12 << Male
    .target Sassy Handwrench
    .target Chip Endale << Female
    .target Candy Cane << Male
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25史莉琪·剃刀|r
    .accept 14010 >>接任务: |cRXP_WARN_刺骨|r
    .train 2098 >>列车|T132292:0|t[排出]
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25全能战士NX-01型|r
    .accept 14013 >>接任务: |cRXP_WARN_冲锋|r
    .train 100 >>|T132337:0|t[Charge]
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25巴姆·重磅炸弹|r
    .accept 14007 >>接任务: |cRXP_WARN_稳固射击|r
    .train 56641 >>列车|T132213:0|t[稳定射击]
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Maxx|r
    .accept 14011 >>接任务: |cRXP_WARN_根源打击|r
    .train 73899 >>列车|T460956:0|t[原始打击]
    .target Maxx Avalanche
step << Mage
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Fizz|r
    .accept 14008 >>接任务: |cRXP_WARN_奥术飞弹|r
    .train 5143 >>Train|T136096:0|t[奥术导弹]
    .target Fizz Lighter
    --VV Quest id is 14008#.?
step << Warlock
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Evol|r
    .accept 14012 >>接任务: |cRXP_WARN_献祭|r
    .train 348 >>火车|T135817:0|t[献祭]
    .target Evol Fingers
step << Priest
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25修女金筛|r
    .accept 14009 >>接任务: |cRXP_WARN_快速治疗|r
    .train 2061 >>训练|T135907:0|t[快速治疗]
    .target Sister Goldskimmer
step << Rogue
    .goto 194,60.91,77.39
	>>在|cFFFF5722训练假人|r上铸造|T132292:0|t[驱逐]
	.complete 14010,1 --Cast Eviscerate (x3)
	.mob Training Dummy
step << Warrior
    .goto 194,60.91,77.39
	>>在|cFFFF5722训练假人上投掷|T132337:0|t[冲锋]|r
	.complete 14013,1 --Cast Charge (x3)
	.mob Training Dummy
step << Hunter
    .goto 194,60.91,77.39
	>>在|cFFFF5722训练假人上投掷|T132213:0|t[稳定射击]|r
	.complete 14007,1 --Steady Shot (x3)
	.mob Training Dummy
step << Shaman
    .goto 194,60.91,77.39
	>>在|cFFFF5722训练假人|r上施法|T460956:0|t[原始打击]
	.complete 14011,1 --Cast Primal Strike (x3)
	.mob Training Dummy
step << Mage
    .goto 194,60.91,77.39
	>>在|cFFFF5722训练假人上投掷|T136096:0|t[奥术导弹]|r
	.complete 14008,1 --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Warlock
    .goto 194,60.91,77.39
	>>铸造|T135817:0|t|cFFFF5722训练假人|r
	.complete 14012,1 --Cast Immolate (x3)
	.mob Training Dummy
step << Priest
    .goto 194,58.24,77.40
	>>对|cFF00FF25受伤员工|r施法|T135907:0|t[快速治疗]
	.complete 14009,1 --Cast Flash Heal (x5)
	.target Injured Employee
step << Rogue
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25史莉琪·剃刀|r
    .turnin 14010 >>交任务: |cRXP_FRIENDLY_刺骨|r
    .target Slinky Sharpshiv
step << Warrior
    .goto 194,60.27,77.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25全能战士NX-01型|r
    .turnin 14013 >>交任务: |cRXP_FRIENDLY_冲锋|r
    .target Warrior-Matic NX-01
step << Hunter
    .goto 194,60.42,77.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25巴姆·重磅炸弹|r
    .turnin 14007 >>交任务: |cRXP_FRIENDLY_稳固射击|r
    .target Bamm Megabomb
step << Shaman
    .goto 194,59.68,75.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Maxx|r
    .turnin 14011 >>交任务: |cRXP_FRIENDLY_根源打击|r
    .target Maxx Avalanche
step << Mage
    .goto 194,59.37,73.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Fizz|r
    .turnin 14008 >>交任务: |cRXP_FRIENDLY_奥术飞弹|r
    .target Fizz Lighter
    --VV Quest id is 14008#.?
step << Warlock
    .goto 194,57.96,74.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Evol|r
    .turnin 14012 >>交任务: |cRXP_FRIENDLY_献祭|r
    .target Evol Fingers
step << Priest
    .goto 194,57.87,77.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25修女金筛|r
    .turnin 14009 >>交任务: |cRXP_FRIENDLY_快速治疗|r
    .target Sister Goldskimmer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Chip|r << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25小甜甜|r << Male
    .accept 14153 >>接任务: |cRXP_WARN_聚会生活|r << Female
    .goto 194,56.32,76.77 << Female
    .accept 14113 >>接任务: |cRXP_WARN_聚会生活|r << Male
    .goto 194,56.30,77.12 << Male
    .target Chip Endale << Female
    .target Candy Cane << Male
step
    >>使用|T132809:0|t[Bubbly]（1）在|cRXP_FRIENDLY_Goblins|r谁喝酒
    >>使用|T132806:0|t[Bucket]（2）处理醉酒/表情混乱|cRXP_FRIENDLY_Goblins|r
    >>|T133836:0|t[跳舞]（3）与跳舞的|cRXP_FRIENDLY_Goblins|r
    >>使用|T134285:0|t[烟花]（4）在|cRXP_FRIENDLY_Goblins|r上并产生火花
    >>使用|T237329:0|t[Hors D'oeuvres]（5）在|cRXP_FRIENDLY_Goblins|r谁吃
    .goto 194,59.56,78.75,15,0
    .goto 194,59.09,80.31,10,0
    .goto 194,60.59,82.98,15,0
    .goto 194,60.82,86.33,15,0
    .goto 194,60.6,83.4
    .complete 14153,1 << Female --10/10 Partygoer entertained
	.complete 14113,1 << Male --10/10 Partygoer entertained
    .target Kezan Partygoer
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sassy|r
    .turnin 14153 >>交任务: |cRXP_FRIENDLY_聚会生活|r << Female
	.turnin 14113 >>交任务: |cRXP_FRIENDLY_聚会生活|r << Male
    .accept 14115 >>接任务: |cRXP_WARN_捣乱的海盗|r
    .target Sassy Hardwrench
step
    #loop
    .goto 194/648,1329.20007,-8457.50000,0
    .waypoint 194/648,1329.20007,-8457.50000,20,0
    .waypoint 194/648,1354.90002,-8454.50000,20,0
    .waypoint 194/648,1382.70007,-8468.70020,20,0
    .waypoint 194/648,1377.70007,-8508.90039,20,0
    .waypoint 194/648,1340.09998,-8512.29980,20,0
    .waypoint 194/648,1302.09998,-8503.70020,20,0
    .waypoint 194/648,1304.90002,-8457.29980,20,0
    >>杀死|cRXP_ENEMY_海盗派对破坏者|
    .complete 14115,1 --12/12 Pirate Party Crasher slain
    .target Pirate Party Crasher
step
    .goto 194,56.42,76.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Sassy|r
    .turnin 14115 >>交任务: |cRXP_FRIENDLY_捣乱的海盗|r
    .accept 14116 >>接任务: |cRXP_WARN_不速之客|r
    .target Sassy Hardwrench
step
    #completewith next
    .goto 194,56.41,75.33,5,0
    .goto 194,55.99,75.65,4,0
    .goto 194,55.96,77.07,5 >>上楼梯
step
    .goto 194,56.77,76.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gallywix|r
    .turnin 14116 >>交任务: |cRXP_FRIENDLY_不速之客|r
    .accept 14120 >>接任务: |cRXP_WARN_万亿杏仁币|r
    .target Trade Prince Gallywix
step
    .goto 194,59.67,77.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t跳出窗口，与|cFF00FF25Sassy|r交谈
    .turnin 14120 >>交任务: |cRXP_FRIENDLY_万亿杏仁币|r
    .accept 14122 >>接任务: |cRXP_WARN_紧急措施|r
    .target Sassy Hardwrench
step
    .goto 194,60.054,78.092
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅格斯·碎纸机|r
    .accept 14121 >>接任务: |cRXP_WARN_热力追踪|r
    .target Megs Dreadshredder
step
    .goto 194,62.965,77.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头戴姆维克|r
    .accept 14124 >>接任务: |cRXP_WARN_搜刮卡亚矿石|r
    .target Foreman Dampwick
step
    #completewith next
    .use 46856
    .vehicle 34840 >>|cRXP_WARN_请确保使用您的|r|T134246:0|t[热棒键]|cRXP_WARN_。在车内时，您不会受到坠落伤害|r
step
    .goto 194,67.27,77.69,10,0
    .goto 194,69.59,79.35,10,0
    .goto 194,69.03,83.16,10,0
    .goto 194,66.64,84.03,10,0
    .goto 194,66.09,87.34,10,0
    .goto 194,64.34,83.48,10,0
    .goto 194,64.44,83.52
    >>将|T133712:0|t[Kablooey炸弹]对准|cRXP_PICK_Kaja'mite矿床|r，并掠夺矿井附近地面上的|cFF00BCD4KKaja'mit区块|r
    .use 48768
    .complete 14124,1 --12/12 Kaja'mite Chunk
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25史莉琪·剃刀|r
    .accept 14123 >>接任务: |cRXP_WARN_别墅漫步|r
    .target Slinky Sharpshiv
step
    #completewith next
    .vehicle 34840 >>|cRXP_WARN_请确保使用您的|r|T134246:0|t[热棒键]|cRXP_WARN_。在车内时，您不会受到坠落伤害|r
step
    #completewith next
    .goto 194,57.94,69.61,15,0
    .goto 194,47.67,60.09,25,0
    .goto 194,38.63,78.42,25,0
    .goto 194,32.71,63.68,10,0
    .goto 194,29.79,63.75,10,0
    >>当您看到租用的掠夺者时，请驾车经过|cFFFF5722
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    .goto 194,29.35,69.57
    >>点击|cRXP_PICK_克赞金库第一银行|r
    >>|cRXP_WARN_按照屏幕中央显示的说明进行操作|r
    .complete 14122,1 --1/1 First Bank of Kezan Vault
    .complete 14122,2 --1/1 Personal Riches
step
    .goto 194,35.91,53.68,20,0
    .goto 194,41.33,53.03,20,0
    .goto 194,41.16,42.01,20,0
    .goto 194,35.96,44.39
    >>当您看到租用的掠夺者时，请驾车经过|cFFFF5722
    .complete 14121,1 --12/12 Stolen Loot
    .mob Hired Looter
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00确保使用热棒键。
step
    #completewith KezanWaltzRightIn
    +|cFFFCDC00避免巡逻|r|cFFFF5722Villa Mooks |r|c FFFCDC00and |r|C FFFF5722Keesnoss Potbellys |r| cFFFCDC0，因为它们可以探测并杀死你|r
    .mob Keesnout Potbellys
step
    .goto 194,24.20,40.67,30,0
    .goto 194,19.89,30.65
    >>拿起|cFF00BCD4终极炸弹|r
    .complete 14123,3 --1/1 The Ultimate Bomb
step
    .goto 194,12.88,35.18
    >>拾取|cFF00BCD4妖精丽莎|r
    .complete 14123,2 --1/1 The Goblin Lisa
step
    #completewith next
    .goto 194,17.66,44.49,10,0
    .goto 194,17.66,45.92,10,0
    .goto 194,16.79,46.89,8,0
    .goto 194,17.84,46.82,8,0
    .goto 194,17.34,45.91,8 >>上楼梯
step
    #label KezanWaltzRightIn
    .goto 194,16.72,46.26
    >>拾取|cFF00BCD4麦当劳猎鹰|r
    .complete 14123,1 --1/1 Maldy's Falcon
step
    #completewith next
    >>跳出窗户，跑进充满敌意的|cFFFF5722Villa Mooks |r或|cFFFF5 722Keesnoss Potbellys |r
    .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
    .goto 194,17.65,45.94,5,0
    .goto 194,17.00,33.96
    .mob Keesnout Potbelly
step
    #completewith next
    .goto 194,61.89,54.13,25,0
    .goto 194,57.90,71.17,15 >>沿着去总部的路走
step
    .goto 194,59.47,77.73,-1
    .goto 194,58.27,73.10,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25史莉琪·剃刀|r
    .turnin 14123 >>交任务: |cRXP_FRIENDLY_别墅漫步|r
    .target Slinky Sharpshiv
step
    .goto 194,62.965,77.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头戴姆维克|r
    .target Foreman Dampwick
    .turnin 14124 >>交任务: |cRXP_FRIENDLY_搜刮卡亚矿石|r
step
    .goto 194,60.036,78.125
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅格斯·碎纸机|r
    .target Megs Dreadshredder
    .turnin 14121 >>交任务: |cRXP_FRIENDLY_热力追踪|r
step
    .goto 194,59.607,77.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .target Sassy Hardwrench
    .turnin 14122 >>交任务: |cRXP_FRIENDLY_紧急措施|r
    .accept 14125 >>接任务: |cRXP_WARN_447|r
step
    .goto 194/648,1371.00000,-8420.79980
    >>进入房子并单击|cFF00BCD4有效生成器|r
    .complete 14125,1 --1/1 Overload the Defective Generator
step
    .goto 194,56.05,74.67
    >>单击|cFF00BCD4Leaky Stove|r
    .complete 14125,2 --1/1 Activate the Leaky Stove
step
    .goto 194,55.98,77.11,5,0
    .goto 194,56.64,76.33,5,0
    .goto 194,56.61,74.85
    >>上楼梯，单击|cFF00BCD4可燃床|r
    .complete 14125,3 --1/1 Drop a Cigar on the Flammable Bed
step
    .goto 194,56.60,76.93,8,0
    .goto 194,59.49,76.81
    >>跳出窗口并单击|cFF00BCD4Gasbot控制面板|r
    >>|cRXP_WARN_等待简短的角色扮演|r
    .timer 17,447 RP
    .complete 14125,4 --1/1 KTC Headquarters Set Ablaze with Gasbot!
step
    .goto 194,59.521,76.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_事故勘察员|r
    .target Claims Adjuster
    .turnin 14125 >>交任务: |cRXP_FRIENDLY_447|r
step
    .goto 194,59.607,77.106
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .target Sassy Hardwrench
    .accept 14126 >>接任务: |cRXP_WARN_毕生积蓄|r
step
    #completewith next
    .vehicle 34840 >>|cFFFCDC00确保使用|r|T134246:0|t[热棒键]
step
    #completewith next
    .goto 194,23.18,39.30,15 >>前往Gallywix的别墅
    .subzoneskip 4768
step
    #completewith next
    .goto 194,22.31,16.78
    .cast 92633 >>Click the cannon
step
    .goto 194,20.76,13.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Gallywix|r
    .turnin 14126 >>交任务: |cRXP_FRIENDLY_毕生积蓄|r
    .target Trade Prince Gallywix
    ]])

RXPGuides.RegisterGuide([[
#cata
<< Horde
#name 6-11 The Lost Isles
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H)
#defaultfor Goblin
#group RXP Cataclysm 1-80 (H)
#subweight 10000

step
    #completewith next
    >>有时您可能会陷入困境，不得不重新登录或/重新加载
    .timer 45 >>不要进入光线RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cFF00FF25扎普诺兹医生|r, Gizmo
    .turnin 14239 >>交任务: |cRXP_FRIENDLY_还不是见圣光的时候！|r
    .goto 174,24.62,77.86
    .accept 14001 >>接任务: |cRXP_WARN_地精逃生舱|r
    .goto 174,24.65,77.94
    .target Doc Zapnozzle
    .target Geargrinder Gizmo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎普诺兹医生|r
    >>有时您可能会陷入困境，不得不重新登录或/重新加载
    .goto 174,24.6,77.9
    .turnin 14239 >>交任务: |cRXP_FRIENDLY_还不是见圣光的时候！|r
    .target Doc Zapnozzle
step
    .goto 174,24.65,77.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_“发明家”盖格林登|r
    .accept 14001 >>接任务: |cRXP_WARN_地精逃生舱|r
    .target Geargrinder Gizmo
step
    >>单击|cRXP_PICK_Goblin逃生舱|r
    .goto 174,22.99,75.62,30,0
    .goto 174,25.50,77.65,30,0
    .goto 174,25.37,75.44
    .complete 14001,1 --6/6 Goblin Survivors Rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .goto 174,27.9,75.5
    .turnin 14001 >>交任务: |cRXP_FRIENDLY_地精逃生舱|r
    .accept 14014 >>接任务: |cRXP_WARN_夺回工具箱！|r
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯·雪崩|r
    .goto 174,27.85,74.29
    .accept 14473 >>接任务: |cRXP_WARN_收拾烂摊子|r
    .trainer >>训练你的职业技能 << Shaman
    .target Maxx Avalanche
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴姆·重磅炸弹|r
    .goto 174,27.95,74.43
    .accept 14019 >>接任务: |cRXP_WARN_闯祸的猴子|r
    .trainer >>训练你的职业技能 << Hunter
    .target Bamm Megabomb
step << Priest
    .goto 174,27.697,74.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_修女金筛|r
    .trainer >>训练你的职业技能
    .target Sister Goldskimmer
step << Mage
    .goto 174,27.715,74.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_“点火器”菲兹|r
    .trainer >>训练你的职业技能
    .target Fizz Lighter
step << Warlock
    .goto 174,28.419,75.648
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾沃·邪指|r
    .trainer >>训练你的职业技能
    .target Evol Fingers
step << Warrior
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_全能战士NX-01型|r
    .trainer >>训练你的职业技能
    .target Warrior-Matic NX-01
step << Rogue
    .goto 174,28.654,76.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史莉琪·剃刀|r
    .trainer >>训练你的职业技能
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
--step << Hunter
    --#completewith next
    --.cast 1515 >>驯服a|cRXP_ENEMY_Teraptor孵化|r
    --.mob Teraptor Hatchling
    --VV See if this is needed in Cataclysm
step
    #sticky
    #label TheLostIslesTeraMonkeys
    >>在|cRXP_ENEMY_Bomb投掷猴子|r上使用|T133979:0|t[硝酸钾香蕉]并杀死|cRXX_ENEMY_Teraptor孵化器|r
    .use 49028
    .goto 174,27.32,70.14,0,0
    .complete 14473,1 --6/6 Teraptor Hatchling slain
    .complete 14019,1 --10/10 Bomb-Throwing Monkeys Fed
    .mob Bomb Throwing Monkeys
    .mob Teraptor Hatchlings
step
    #loop
    .goto 174,29.73,75.42,15,0
    .goto 174,30.35,74.49,15,0
    .goto 174,30.10,72.55,20,0
    .goto 174,28.44,70.88,20,0
    .goto 174,27.32,70.14,20,0
    >>收集|cRXP_LOOT_工具箱|r
    .complete 14014,1 --8/8 Crate of Tools
step
    #requires TheLostIslesTeraMonkeys
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯·雪崩|r, |cRXP_FRIENDLY_巴姆·重磅炸弹|r
    .turnin 14473 >>交任务: |cRXP_FRIENDLY_收拾烂摊子|r
    .goto 174,27.85,74.29
    .turnin 14019 >>交任务: |cRXP_FRIENDLY_闯祸的猴子|r
    .goto 174,27.95,74.43
    .target Maxx Avalanche
    .target Bamm Megabomb
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .goto 174,27.9,75.5
    .turnin 14014 >>交任务: |cRXP_FRIENDLY_夺回工具箱！|r
    .accept 14248 >>接任务: |cRXP_WARN_急需帮助|r
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头戴姆维克|r
    .goto 174,31.27,79.26
    .turnin 14248 >>交任务: |cRXP_FRIENDLY_急需帮助|r
    .accept 14021 >>接任务: |cRXP_WARN_矿工的麻烦|r
    .accept 14031 >>接任务: |cRXP_WARN_捕获未知的信息|r
    .target Foreman Dampwick
step
    #completewith DeadOrc
    >>跟随并保护|cRXP_FRIENDLY_FrightedMiner|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2946.00000,568.60004
    >>使用|T134442:0|t[KTC Snapflash]在墙上用浮动相机标记的画作上拍照
    .use 49887
    .complete 14031,1 --1/1 Cave Painting 1 Captured
step
    .goto 174/648,2914.50000,573.20001
    >>使用|T134442:0|t[KTC Snapflash]拍摄天花板上用浮动相机标记的画作
    .use 49887
    .complete 14031,2 --1/1 Cave Painting 2 Captured
step
    .goto 174/648,2857.00000,615.29999
    >>使用|T134442:0|t[KTC Snapflash]在墙上用浮动相机标记的画作上拍照
    .goto 175,86.331,44.317
    .complete 14031,3 --1/1 Cave Painting 3 Captured
step
    .goto 174/648,2969.80005,654.90002
    >>使用|T134442:0|t[KTC Snapflash]在墙上用浮动相机标记的画作上拍照
    .use 49887
    .complete 14031,4 --1/1 Pygmy Altar Captured
step
    #label DeadOrc
    .goto 174/648,2975.60010,651.10004
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t尝试与|cRXP_FRIENDLY_Dead兽人侦察兵|r交谈
    .accept 14233 >>接任务: |cRXP_WARN_兽人会写字？|r
    .target Dead Orc Scout
step
    .goto 174/648,2969.80005,654.90002
    >>跟随并保护|cRXP_FRIENDLY_FrightedMiner|r
    .complete 14021,1 --1/1 Kaja'mite Ore mining a success!
    .target Frightened Miner
step
    .goto 174/648,2971.60010,495.10001
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t离开洞穴，与|cRXP_FRIENDLY_Foreman Dampwick|r交谈
    .turnin 14021 >>交任务: |cRXP_FRIENDLY_矿工的麻烦|r
    .target Foreman Dampwick
step
    .goto 174,27.88,75.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .turnin 14031 >>交任务: |cRXP_FRIENDLY_捕获未知的信息|r
    .turnin 14233 >>交任务: |cRXP_FRIENDLY_兽人会写字？|r
    .accept 14234 >>接任务: |cRXP_WARN_敌人的敌人就是……|r
    .target Sassy Hardwrench
step
    #completewith next
    .goto 174,32.73,80.53,30,0
    .goto 174,34.36,80.78,30,0
    .goto 174,36.96,77.02,20 >>沿着小路上山
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿格娜|r
    .goto 174,37.63,78.02
    .turnin 14234 >>交任务: |cRXP_FRIENDLY_敌人的敌人就是……|r
    .accept 14235 >>接任务: |cRXP_WARN_恶花谷|r
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基拉格·血牙|r
    .goto 174,35.43,75.71
    .turnin 14235 >>交任务: |cRXP_FRIENDLY_恶花谷|r
    .accept 14236 >>接任务: |cRXP_WARN_除草无双|r
    .target Kilag Gorefang
step
    #loop
    .goto 174/648,2813.30005,653.40002,0
    .waypoint 174/648,2813.30005,653.40002,40,0
    .waypoint 174/648,2846.10010,706.79999,40,0
    .waypoint 174/648,2884.69995,661.79999,40,0
    .waypoint 174/648,2922.40015,579.10004,40,0
    >>使用|cRXP_FRIENDLY_Weed Whacker|r并运行|cRXP _ENEMY_plants|r以杀死它们
    .use 49108
    .complete 14236,1 --100/100 Deadly Jungle Plants mowed down
    .mob Deadly Jungle Plant
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基拉格·血牙|r
    .goto 174,35.43,75.71
    .turnin 14236 >>交任务: |cRXP_FRIENDLY_除草无双|r
    .accept 14303 >>接任务: |cRXP_WARN_向阿格娜复命|r
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿格娜|r
    .goto 174,37.63,78.02
    .turnin 14303 >>交任务: |cRXP_FRIENDLY_向阿格娜复命|r
    .accept 14237 >>接任务: |cRXP_WARN_继续前进|r
    .target Aggra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基拉格·血牙|r
    .goto 174,34.62,66.85
    .turnin 14237 >>交任务: |cRXP_FRIENDLY_继续前进|r
    .accept 14238 >>接任务: |cRXP_WARN_死亡的红外光|r
    .target Kilag Gorefang
step
    #loop
    .goto 174,31.252,65.272,0
    .waypoint 174,32.264,67.282,50,0
    .waypoint 174,30.783,67.512,50,0
    .waypoint 174,31.252,65.272,50,0
    .waypoint 174,30.712,64.450,50,0
    .waypoint 174,29.589,62.824,50,0
    .waypoint 174,33.536,64.171,50,0
    >>杀死|cRXP_ENEMY_SI:7名刺客|r
    >>|cRXP_WARN_使用您的|r|T133149:0|t[红外线热焦点]|cRXP_WARN_to查看它们|r
    .use 49611
    .complete 14238,1 --10/10 SI:7 Assassin slain
    .mob SI:7 Assassin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基拉格·血牙|r
    .goto 174,34.61,66.85
    .turnin 14238 >>交任务: |cRXP_FRIENDLY_死亡的红外光|r
    .accept 14240 >>接任务: |cRXP_WARN_前往峭壁|r
    .timer 52,Riding Bastia
    .target Kilag Gorefang
step
    #completewith next
    .goto 174,25.28,59.84,50 >>等到您到达|cRXP_FRIENDLY_Scout文胸|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斥候布拉克斯|r
    .goto 174,25.28,59.84
    .turnin 14240 >>交任务: |cRXP_FRIENDLY_前往峭壁|r
    .accept 14241 >>接任务: |cRXP_WARN_旋翼机！|r
    .target Scout Brax
step
    >>杀死|cRXP_ENEMY_SI:7名操作员|r和|cRXP_ENEMY_Gyrochopper飞行员|r。抢走他们以获取|cRXD_Loot_Gyrochopa钥匙|r
    .goto 174,23.23,67.50
    .complete 14241,1 --1/1 Gyrochoppa Keys
    .mob SI:7 Operative
    .mob Gyrochopper Pilot
step
    .goto 174,23.2,67.5
    >>与|cRXP_FRIENDLY_Gyrocoppera|r交互
    >>|cRXP_WARN_您可以忽略|r|cRXP_ENEMY_Gyrochoppera Pilot|r
    .turnin 14241 >>交任务: |cRXP_FRIENDLY_旋翼机！|r
    .accept 14242 >>接任务: |cRXP_WARN_珍贵的货物|r
    .target Gyrochoppa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t进入飞船并与|cRXP_FRIENDLY_Thrall|r交谈
    .goto 174,11.8,62.7
    .complete 14242,1 --1/1 Precious Cargo located
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .goto 174,11.8,62.8
    .turnin 14242 >>交任务: |cRXP_FRIENDLY_珍贵的货物|r
    .accept 14326 >>接任务: |cRXP_WARN_甲板上见|r
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t走出去，在甲板上与|cRXP_FRIENDLY_Thrall|r会面
    .goto 174,12.68,63.33,10,0
    .goto 174,12.4,63.1
    .turnin 14326 >>交任务: |cRXP_FRIENDLY_甲板上见|r
    .accept 14243 >>接任务: |cRXP_WARN_酋长的复仇|r
    .target Thrall
step
    >>使用|T237589:0|t[雷击]（1）击杀|cRXP_FRIENDLY_联盟水手|r。
    >>|cRXP_WARN_瞄准较小的船只|r
    .complete 14243,1 --50/50 Alliance Sailor slain
    .mob Alliance Sailor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .goto 174,35.92,66.72
    .turnin 14243 >>交任务: |cRXP_FRIENDLY_酋长的复仇|r
    .accept 14445 >>接任务: |cRXP_WARN_暂时的离别|r
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .goto 174,36.02,67.53
    .turnin 14445 >>交任务: |cRXP_FRIENDLY_暂时的离别|r
    .accept 14244 >>接任务: |cRXP_WARN_爬升，爬升，火箭分离！|r
    .target Sassy Hardwrench
step
    >>单击|cRXP_PICK_Rocket Sling|r
    .goto 174,36.34,66.55
    .skipgossip
    .complete 14244,1 --1/1 Rocket Sling Trip Survived
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头戴姆维克|r
    .goto 174,44.54,64.36
    .turnin 14244 >>交任务: |cRXP_FRIENDLY_爬升，爬升，火箭分离！|r
    .accept 14245 >>接任务: |cRXP_WARN_胶囊镇|r
    .target Foreman Dampwick
step
    >>单击|cRXP_PICK_Town-In-ABox柱塞|r
    .goto 174,45.40,65.36
    .complete 14245,1 --1/1 Town-In-A-Box Set Off!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头戴姆维克|r
    .goto 174,45.36,64.74
    .turnin 14245 >>交任务: |cRXP_FRIENDLY_胶囊镇|r
    .accept 27139 >>接任务: |cRXP_WARN_霍巴特需要你|r
    .target Foreman Dampwick
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍巴特·钩锤|r
    .goto 174,45.34,65.22
    .turnin 27139 >>交任务: |cRXP_FRIENDLY_霍巴特需要你|r
    .accept 24671 >>接任务: |cRXP_WARN_飞翔的肉鸡|r
    .target Hobart Grapplehammer
step
    .goto 174,44.928,65.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里米·油指|r
    .home >>将您的炉石设置为Town-In-A-Box
    .target Grimy Greasefingers
step << Priest
    .goto 174,45.586,65.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_修女金筛|r
    .trainer >>训练你的职业技能
    .target Sister Goldskimmer
step << Hunter
    .goto 174,45.246,64.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴姆·重磅炸弹|r
    .trainer >>训练你的职业技能
    .target Bamm Megabomb
step << Mage
    .goto 174,45.119,65.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_“点火器”菲兹|r
    .trainer >>训练你的职业技能
    .target Fizz Lighter
step << Warlock
    .goto 174,45.492,65.593
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾沃·邪指|r
    .trainer >>训练你的职业技能
    .target Evol Fingers
step << Shaman
    .goto 174,45.106,65.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯·雪崩|r
    .trainer >>训练你的职业技能
    .target Maxx Avalanche
step << Warrior
    .goto 174,28.656,76.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_全能战士NX-01型|r
    .trainer >>训练你的职业技能
    .target Warrior-Matic NX-01
step << Rogue
    .goto 174,45.055,65.524
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史莉琪·剃刀|r
    .trainer >>训练你的职业技能
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #loop
    .goto 174,46.490,65.922,0
    .goto 174,44.482,64.109,0
    .waypoint 174,45.178,63.335,40,0
    .waypoint 174,45.938,61.535,40,0
    .waypoint 174,47.170,62.983,40,0
    .waypoint 174,46.490,65.922,40,0
    .waypoint 174,44.674,67.001,40,0
    .waypoint 174,44.482,64.109,40,0
    .use 52712 >>使用您的|T134273:0|t[遥控烟花]捕获城镇周围的|cRXP_PICK_Wild Cluckers|r
    .complete 24671,1 --10/10 Wild Cluckers captured
    .target Wild Clucker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍巴特·钩锤|r, |cRXP_FRIENDLY_巴姆·重磅炸弹|r
    .turnin 24671 >>交任务: |cRXP_FRIENDLY_飞翔的肉鸡|r
    .goto 174,45.34,65.22
    .accept 24741 >>接任务: |cRXP_WARN_以小换大|r
    .goto 174,45.25,64.85
    .target Hobart Grapplehammer
    .target Bamm Megabomb
step
    #loop
    .goto 174,45.93,69.88,0
    .waypoint 174,49.64,63.45,20,0
    .waypoint 174,50.25,65.80,20,0
    .waypoint 174,50.64,68.35,20,0
    .waypoint 174,47.83,69.14,20,0
    .waypoint 174,45.93,69.88,20,0
    >>使用|T236997:0|t[野生簇蛋]将蛋放入陷阱中。然后等待一只|cRXP_ENEMY_Spiny Raptor|r进入陷阱并掠夺|cRX_PICK_Spiny Rator蛋|r
    .use 50232
    .complete 24741,1 --5/5 Spiny Raptor Egg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴姆·重磅炸弹|r, |cRXP_FRIENDLY_霍巴特·钩锤|r
    .turnin 24741 >>交任务: |cRXP_FRIENDLY_以小换大|r
    .goto 174,45.25,64.85
    .accept 24744 >>接任务: |cRXP_WARN_史上第一巨蛋|r
    .goto 174,45.34,65.21
    .target Bamm Megabomb
    .target Hobart Grapplehammer
step
    .goto 174,43.667,54.169
    >>杀死掉在地上的|cRXP_ENEMY_Mechanchicken|r。抢劫|cRXX_Loot_有史以来最大的蛋|r
    .complete 24744,1 --1/1 The Biggest Egg Ever
    .unitscan Mechachicken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍巴特·钩锤|r
    .goto 174,45.34,65.21
    .turnin 24744 >>交任务: |cRXP_FRIENDLY_史上第一巨蛋|r
    .accept 24816 >>接任务: |cRXP_WARN_到底谁站在食物链顶层？|r
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,2455.80005,861.90002,0
    .waypoint 174/648,2415.60010,795.60004,50,0
    .waypoint 174/648,2467.00000,730.10004,50,0
    .waypoint 174/648,2578.30005,794.20001,50,0
    .waypoint 174/648,2455.80005,861.90002,50,0
    >>杀死|cRXP_ENEMY_Ravenous潜伏者|r。掠夺他们的|cRXX_Loot_Shark零件|r
    .complete 24816,1 --5/5 Shark Parts
    .mob Ravenous Lurker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_助手格瑞里|r
    .goto 174,45.27,65.57
    .turnin 24816 >>交任务: |cRXP_FRIENDLY_到底谁站在食物链顶层？|r
    .accept 24817 >>接任务: |cRXP_WARN_披着鲨鱼皮的地精|r
    .target Assistant Greely
step
    >>单击|cRXP_PICK_Mechshark X-Steam控制器|r
    .goto 174,43.68,65.50
    .complete 24817,1 --1/1 Use the Mechashark X-Steam Controller
step
    >>使用|T132345:0|t[Freakin'激光束]（1）和|T135821:0|t[鸡蛋飞溅弹幕]（2）杀死|cRXP_ENEMY_锤子|r
    >>|cRXP_WARN_如果需要，使用|r|T132996:0|t[修复]|cRXP_WARN_修复|r
    .goto 174,41.7,66.7
    .complete 24817,2 --1/1 The Hammer slain
    .mob The Hammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍巴特·钩锤|r
    .goto 174,45.34,65.21
    .turnin 24817 >>交任务: |cRXP_FRIENDLY_披着鲨鱼皮的地精|r
    .accept 24856 >>接任务: |cRXP_WARN_迫在眉睫的威胁|r
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅格斯·碎纸机|r
    .goto 174,52.2,73.2
    .turnin 24856 >>交任务: |cRXP_FRIENDLY_迫在眉睫的威胁|r
    .accept 24858 >>接任务: |cRXP_WARN_锈水财阀的地权主张|r
    .target Megs Dreadshredder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_“硬币”布雷特|r
    .goto 174,52.20,73.22
    .accept 24859 >>接任务: |cRXP_WARN_纳迦皮|r
    .target Brett "Coins" McQuid
step
    #completewith next
    >>杀死|cRXP_ENEMY_Vashj'elan战士|r和|cRXD_ENEMY_ Vashj'elan警报器|r。掠夺他们的|cRXP_Loot_Hides|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    #loop
    .goto 174,53.477,80.146,0
    .waypoint 174,52.22,79.19,10,0
    .waypoint 174,52.76,78.97,10,0
    .waypoint 174,53.47,80.15,10,0
    .waypoint 174,54.14,79.91,10,0
    .waypoint 174,54.81,79.39,10,0
    .waypoint 174,55.50,79.54,10,0
    .waypoint 174,55.49,77.98,10,0
    .waypoint 174,54.86,76.94,10,0
    .waypoint 174,55.04,76.25,10,0
    .waypoint 174,53.53,76.90,10,0
    >>单击|cRXP_PICK_Naga横幅|r
    .complete 24858,1 --10/10 Naga Banners replaced
step
    #loop
    .goto 174/648,2004.30005,498.39999,0
    .waypoint 174/648,2004.30005,498.39999,40,0
    .waypoint 174/648,1873.00000,503.00000,40,0
    .waypoint 174/648,1897.90002,591.50000,40,0
    >>杀死|cRXP_ENEMY_Vashj'elan战士|r和|cRXD_ENEMY_ Vashj'elan警报器|r。掠夺他们的|cRXP_Loot_hides|r
    .complete 24859,1 --5/5 Intact Naga Hide
    .mob Vashj'elan Warriors
    .mob Vashj'elan Siren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_“硬币”布雷特|r, |cRXP_FRIENDLY_梅格斯·碎纸机|r
    .turnin 24859 >>交任务: |cRXP_FRIENDLY_纳迦皮|r
    .goto 174,52.2,73.22
    .turnin 24858 >>交任务: |cRXP_FRIENDLY_锈水财阀的地权主张|r
    .accept 24864 >>接任务: |cRXP_WARN_无法抗拒的池塘小马|r
    .goto 174,52.20,73.14
    .target Brett "Coins" McQuid
    .target Megs Dreadshredder
step
    #completewith next
    .use 50602
    .cast 71914 >>到达水面后，请使用|T132261:0|t[不可抗拒的泳池小马]。
step
    #loop
    .goto 174/648,1713.59998,401.10001,0
    .waypoint 174/648,1766.20007,387.50000,30,0
    .waypoint 174/648,1713.59998,401.10001,30,0
    .waypoint 174/648,1684.20007,416.89999,30,0
    .waypoint 174/648,1661.20007,386.00000,30,0
    .waypoint 174/648,1619.50000,380.10001,30,0
    .waypoint 174/648,1594.09998,415.60001,30,0
    .waypoint 174/648,1567.59998,351.70001,30,0
    .waypoint 174/648,1689.50000,325.50000,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Naga Hatchlings|r
    >>|cRXP_WARN_小心不要杀死具有AoE能力的幼崽|r
    .use 50602
    .complete 24864,1 --12/12 Naga Hatchlings lured
    .target Naga Hatchling
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_Megs Dreadshredder|r
    .goto 174,52.2,73.15
    .turnin 24864 >>交任务: |cRXP_FRIENDLY_无法抗拒的池塘小马|r
    .accept 24868 >>接任务: |cRXP_WARN_和谈的希望|r
    .target Megs Dreadshredder
step
    #completewith next
    .goto 174,54.07,90.06,30 >>向南前往瓦什杰兰遗址
step
    .goto 174,54.07,90.06
    >>杀死|cRXP_ENEMY_Faceless of the Deep|r
    >>|cRXP_WARN_等待生成动画（紫色圆圈）。他不久就会跳下去|r
    .complete 24868,1 --1/1 Leader of the naga dealt with
    .mob Faceless of the Deep
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅格斯·碎纸机|r
    .goto 174,52.20,73.15
    .turnin 24868 >>交任务: |cRXP_FRIENDLY_和谈的希望|r
    .accept 24897 >>接任务: |cRXP_WARN_返回胶囊镇|r
    .target Megs Dreadshredder
step
    #completewith next
    .subzone 4871 >>Return to Town-in-a-Box
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .goto 174,45.18,64.91
    .turnin 24897 >>交任务: |cRXP_FRIENDLY_返回胶囊镇|r
    .accept 24901 >>接任务: |cRXP_WARN_胶囊镇：遭到攻击|r
    .target Sassy Hardwrench
step
    >>单击|cRXP_PICK_B.C.淘汰器|r进入并向|cRXP-ENEMY_Oomlot Warriors|r射击
    .goto 174,45.7,65.0
    .complete 24901,1 --30/30 Oomlot Warriors defeated
step
    #completewith next
    +|cRXP_WARN_Leave the vehicle|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .goto 174,45.2,64.9
    .turnin 24901 >>交任务: |cRXP_FRIENDLY_胶囊镇：遭到攻击|r
    .accept 24924 >>接任务: |cRXP_WARN_乌姆洛特村|r
    .target Sassy Hardwrench
step
    #completewith next
    .subzone 4886 >>前往Oomlot村
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_小静|r
    .goto 174,56.56,71.96
    .turnin 24924 >>交任务: |cRXP_FRIENDLY_乌姆洛特村|r
    .accept 24925 >>接任务: |cRXP_WARN_营救俘虏|r
    .accept 24929 >>接任务: |cRXP_WARN_传递信息|r
    .target Izzy
step
    #completewith next
    >>杀死|cRXP_ENEMY_Oomlot萨满|r以释放|cRXP_FRIENDLY_Goblin俘虏|r
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>杀死|cRXP_ENEMY_Yngwie|r
    .goto 174/648,1710.70007,843.79999,20,0
    .goto 174/648,1543.20007,817.29999
    .complete 24929,1 --1/1 Yngwie slain
    .mob Yngwie
step
    #loop
    .goto 174/648,1753.00000,746.50000,0
    .waypoint 174/648,1593.59998,754.90002,35,0
    .waypoint 174/648,1661.90002,717.40002,35,0
    .waypoint 174/648,1753.00000,746.50000,35,0
    .waypoint 174/648,1698.59998,802.10004,35,0
    >>杀死|cRXP_ENEMY_Oomlot萨满|r以释放|cRXP_FRIENDLY_Goblin俘虏|r
    .complete 24925,1 --5/5 Goblin Captives freed
    .mob Oomlot Shaman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_小静|r
    .goto 174,56.56,71.96
    .turnin 24925 >>交任务: |cRXP_FRIENDLY_营救俘虏|r
    .turnin 24929 >>交任务: |cRXP_FRIENDLY_传递信息|r
    .accept 24937 >>接任务: |cRXP_WARN_危机解除|r
    .target Izzy
step
    #completewith next
    .hs >>Hearth to Town-In-A-Box
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .goto 174,45.2,64.9
    .turnin 24937 >>交任务: |cRXP_FRIENDLY_危机解除|r
    .accept 24940 >>接任务: |cRXP_WARN_前往火山口|r
    .target Sassy Hardwrench
step
    #completewith next
    +|cRXP_WARN_上山时避开|cRXP_ENEMY_Goblin Zombies|r|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗斯彻克教练|r, |cRXP_FRIENDLY_工头戴姆维克|r, |cRXP_FRIENDLY_助手格瑞里|r
    .turnin 24940 >>交任务: |cRXP_FRIENDLY_前往火山口|r
    .accept 24942 >>接任务: |cRXP_WARN_僵尸大战超级火箭靴|r
    .goto 174,51.8,47.1
    .accept 24945 >>接任务: |cRXP_WARN_三个小俾格米人|r
    .goto 174,51.85,47.19
    .accept 24946 >>接任务: |cRXP_WARN_摇滚粉末|r
    .goto 174,51.73,47.38
    .target Coach Crosscheck
    .target Foreman Dampwick
    .target Assistant Greely
step
    #completewith next
    >>|cRXP_WARN_如果你是阴影牧师，你必须取消阴影形态才能使用靴子|r <<Priest
    .use 52013
    .goto 174,51.77,46.97
    .cast 72891 >>|cRXP_WARN_使用|T133029:0|t[超级助推火箭靴]|r
step
    #completewith next
    >>用火箭靴从哥布林僵尸身上走过，杀死|cRXP_ENEMY_哥布林僵尸|r
    >>|cRXP_WARN_避免|cRXP_ENEMY_Oostan猎头公司|r|r|cRXP-WARN_。他们可以很容易地杀死你|r
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    #completewith TheLostIslesGaahl
    >>从地面拾取|cRXP_Pick_Rockin'Powder|r
    .complete 24946,1 --5/5 Rockin' Powder
step
    >>杀死|cRXP_ENEMY_Malmo|r
    .goto 174,58.74,47.16
    .complete 24945,2 --1/1 Malmo slain
    .mob Malmo
step
    >>杀死|cRXP_ENEMY_Teloch|r
    .goto 174,63.7,52.76
    .complete 24945,3 --1/1 Teloch slain
    .mob Teloch
step
    #label TheLostIslesGaahl
    >>Kill |cRXP_ENEMY_Gaahl
    .goto 174,59.59,40.20
    .complete 24945,1 --1/1 Gaahl slain
    .mob Gaahl
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>环顾四周，捡起剩下的|cRXP_pick_Rockin'Powder|r
    .complete 24946,1 --5/5 Rockin' Powder
step
    #loop
    .goto 174/648,1677.50000,1457.09998,0
    .waypoint 174/648,1647.40002,1657.00000,50,0
    .waypoint 174/648,1695.30005,1522.70007,50,0
    .waypoint 174/648,1677.50000,1457.09998,50,0
    .waypoint 174/648,1479.59998,1285.90002,50,0
    .waypoint 174/648,1753.30005,1427.80005,50,0
    >>用火箭靴从哥布林僵尸身上走过，杀死|cRXP_ENEMY_哥布林僵尸|r
    .use 52013
    .complete 24942,1 --50/50 Goblin Zombies slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头戴姆维克|r, Assistant Greedy, |cRXP_FRIENDLY_克罗斯彻克教练|r
    .turnin 24945 >>交任务: |cRXP_FRIENDLY_三个小俾格米人|r
    .goto 174,51.85,47.20
    .turnin 24946 >>交任务: |cRXP_FRIENDLY_摇滚粉末|r
    .goto 174,51.73,47.38
    .turnin 24942 >>交任务: |cRXP_FRIENDLY_僵尸大战超级火箭靴|r
    .accept 24952 >>接任务: |cRXP_WARN_火箭靴的威力|r
    .goto 174,51.8,47.1
    .target Foreman Dampwick
    .target Assistant Greedy
    .target Coach Crosscheck
step
    .goto 174/648,2044.80005,1463.09998
    >>使用|T133029:0|t[Rockin'Powder Infused Rocket Boots]
    .use 52032
    .complete 24952,1 --1/1 Rockin' Powder Infused Rocket Boots used
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍巴特·钩锤|r
    .goto 174,68.93,46.44
    .turnin 24952 >>交任务: |cRXP_FRIENDLY_火箭靴的威力|r
    .accept 24954 >>接任务: |cRXP_WARN_龟神的子嗣|r
    .target Hobart Grapplehammer
step
    #loop
    .goto 174/648,1333.30005,1529.30005,0
    .waypoint 174/648,1333.30005,1529.30005,40,0
    .waypoint 174/648,1368.00000,1597.70007,40,0
    .waypoint 174/648,1263.20007,1570.70007,40,0
    >>杀死|cRXP_ENEMY_火山之子|r。掠夺它们以获取|cRXX_Loot_GRAND|r
    .complete 24954,1 --5/5 Fire Gland
    .mob Childs of Volcanoth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍巴特·钩锤|r
    .goto 174,68.93,46.44
    .turnin 24954 >>交任务: |cRXP_FRIENDLY_龟神的子嗣|r
    .accept 24958 >>接任务: |cRXP_WARN_沃卡洛斯！|r
    .target Hobart Grapplehammer
step
    .goto 174/648,1180.20007,1309.70007
    >>在|cRXP_ENEMY_Volcanoth|r上的航路点位置使用垃圾邮件|T135624:0|t[Bootzooka]
    .use 52043
    .complete 24958,1 --1/1 Volcanoth slain
    .mob Volcanoth
step
    .goto 174/648,1094.00000,1163.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .turnin 24958 >>交任务: |cRXP_FRIENDLY_沃卡洛斯！|r
    .accept 25023 >>接任务: |cRXP_WARN_老朋友|r
    .timer 110,Old Friends Flight
    .target Sassy Hardwrench
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 25023 >>交任务: |cRXP_FRIENDLY_老朋友|r
    .accept 25024 >>接任务: |cRXP_WARN_击退伞兵|r
    .target Thrall
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .accept 25058 >>接任务: |cRXP_WARN_以地精的方式拆除地雷|r
    .target Sassy Hardwrench
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿格娜|r
    .accept 25093 >>接任务: |cRXP_WARN_军情七处的头目们|r
    .target Aggra
step
    #completewith Paratroopers
    >>使用|T133716:0|t[手榴弹背包]摧毁地面上的|cRXP_PICK_Mines|r
    .goto 174,32.38,36.34,0,0
    .use 52280
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith TheLostIslesCyn
    >>杀死|cRXP_ENEMY_联盟伞兵|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    >>杀死|cRXP_ENEMY_Commander Arrington |r。掠夺他的|cRXP_Loot_Head |r
    .goto 174,32.29,42.89
    .complete 25093,1 --1/1 Commander Arrington's Head
    .target Commander Arrington
step
    >>杀死|cRXP_ENEMY_Alexi-Silenthowl|r。掠夺他的|cRXX_Loot_Head|r
    .goto 174,30.80,33.92
    .complete 25093,3 --1/1 Alexi Silenthowl's Head
    .mob Alexi Silenthowl
step
    #label TheLostIslesCyn
    >>杀死|cRXP_ENEMY_Darkblade Cyn|r。掠夺他的|cRXX_Loot_Head|r
    .goto 174,33.44,27.88
    .complete 25093,2 --1/1 Darkblade Cyn's Head
    .mob Darkblade Cyn
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    >>杀死|cRXP_ENEMY_联盟伞兵|r
    .complete 25024,1 --10/10 Alliance Paratrooper slain
    .mob Alliance Paratrooper
step
    #loop
    .goto 174/648,2887.40015,1875.80005,0
    .waypoint 174/648,2822.19995,1920.09998,40,0
    .waypoint 174/648,2887.40015,1875.80005,40,0
    .waypoint 174/648,2920.69995,1819.30005,40,0
    .waypoint 174/648,2911.90015,1718.70007,40,0
    .waypoint 174/648,2871.30005,1639.40002,40,0
    .waypoint 174/648,2884.80005,1523.70007,40,0
    .waypoint 174/648,2883.50000,1522.30005,40,0
    .use 52280 >>使用|T133716:0|t[手榴弹背包]摧毁地面上的|cRXP_PICK_Mines|r
    .complete 25058,1 --10/10 Land Mines detonated
step
    #completewith next
    .subzone 4912 >>前往Warchief‘s Lookout
step
    .goto 174,36.248,43.380
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿格娜|r
    .turnin 25093 >>交任务: |cRXP_FRIENDLY_军情七处的头目们|r
    .target Aggra
step
    .goto 174,36.79,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .turnin 25024 >>交任务: |cRXP_FRIENDLY_击退伞兵|r
    .target Thrall
step
    .goto 174,37.349,41.922
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .turnin 25058 >>交任务: |cRXP_FRIENDLY_以地精的方式拆除地雷|r
    .accept 25066 >>接任务: |cRXP_WARN_科赞的骄傲|r
    .target Sassy Hardwrench
step
    #completewith next
    .skipgossip 38387,1
    .vehicle 39074 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .target Sassy Hardwrench
step
    >>摧毁|cRXP_ENEMY_Gnomeregan隐形战斗机|r
    >>|cRXP_WARN_使用|r|T134273:0|t[野生黄鼠狼火箭]|cRXP_WARN_|r
    .goto 174,30.37,39.89
    .complete 25066,1 --10/10 Gnomeregan Stealth Fighters shot down
    .mob Gnomeregan Stealth Fighter
step
    #completewith next
    .subzone 4912 >>飞回战区了望台
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .goto 174,37.36,41.92
    .turnin 25066 >>交任务: |cRXP_FRIENDLY_科赞的骄傲|r
    .accept 25098 >>接任务: |cRXP_WARN_觐见酋长|r
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .goto 174,36.79,43.13
    .turnin 25098 >>交任务: |cRXP_FRIENDLY_觐见酋长|r
    .accept 25099 >>接任务: |cRXP_WARN_借巴斯蒂亚一用|r
    .target Thrall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基拉格·血牙|r
    .goto 174,33.8,38.8
    .turnin 25099 >>交任务: |cRXP_FRIENDLY_借巴斯蒂亚一用|r
    .accept 25100 >>接任务: |cRXP_WARN_奔跑吧|r
    .timer 87,Panther Ride
    .target Kilag Gorefang
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史莉琪·剃刀|r
    .goto 174,53.71,34.94
    .turnin 25100 >>交任务: |cRXP_FRIENDLY_奔跑吧|r
    .accept 25109 >>接任务: |cRXP_WARN_加里维克斯劳工矿井|r
    .target Slinky Sharpshiv
step << Priest
    .goto 174,53.760,35.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_修女金筛|r
    .trainer >>训练你的职业技能
    .target Sister Goldskimmer
step << Hunter
    .goto 174,53.744,35.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴姆·重磅炸弹|r
    .trainer >>训练你的职业技能
    .target Bamm Megabomb
step << Mage
    .goto 174,53.754,33.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_“点火器”菲兹|r
    .trainer >>训练你的职业技能
    .target Fizz Lighter
step << Warlock
    .goto 174,54.087,34.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾沃·邪指|r
    .trainer >>训练你的职业技能
    .target Evol Fingers
step << Shaman
    .goto 174,53.245,35.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯·雪崩|r
    .trainer >>训练你的职业技能
    .target Maxx Avalanche
step << Warrior
    .goto 174,53.810,35.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_全能战士NX-01型|r
    .trainer >>训练你的职业技能
    .target Warrior-Matic NX-01
step << Rogue
    .goto 174,53.716,34.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史莉琪·剃刀|r
    .trainer >>训练你的职业技能
    .target Slinky Sharpshiv
    --VV Add appropriate .train ID's
step
    #completewith next
    .goto 174,54.09,36.01,10,0
    .goto 174,54.94,33.72,10 >>进入洞穴跳下去
step
    .goto 174,53.17,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_助手格瑞里|r
    .turnin 25109 >>交任务: |cRXP_FRIENDLY_加里维克斯劳工矿井|r
    .accept 25110 >>接任务: |cRXP_WARN_卡亚可乐，给你灵感！(注册商标)|r
    .target Assistant Greely
step
    >>从地面拾取一个|T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero One|r]
    .goto 174,53.59,37.41,10,0
    .goto 174,53.94,37.46,10,0
    .goto 174,53.70,36.67
    .complete 25110,1 --1/1 Kaja'Cola Zero-One
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_助手格瑞里|r
    .goto 174,53.17,36.55
    .turnin 25110 >>交任务: |cRXP_FRIENDLY_卡亚可乐，给你灵感！(注册商标)|r
    .accept 25122 >>接任务: |cRXP_WARN_重振士气|r
    .accept 25123 >>接任务: |cRXP_WARN_摧毁灵魂石！|r
    .target Assistant Greely
step
    #completewith FreeGobber
    >>距离地面|T132808:0|t[|cRXP_Loot_Kaja'Cola Zero One|r]
    >>目标|cRXP_FRIENDLY_Kezan Citizens|r并使用|T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero One|r]
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    #title Free Ace
    >>目标|cRXP_FRIENDLY_Ace|r并使用|T132808:0|t[|cRXP-LOOT_Kaja'Cola Zero One|r]
    .goto 174,57.1,36.9
    .use 52484
    .complete 25122,1 --1/1 Ace's mind freed
    .target Ace
step
    #title Free Izzy
    >>目标|cRXP_FRIENDLY_Izzy|r并使用|T132808:0|t[|cRXP-LOOT_Kaja'Cola Zero One|r]
    .goto 174,57.01,35.02
    .use 52484
    .complete 25122,2 --1/1 Izzy's mind freed
    .target Izzy
step
    >>杀死|cRXP_ENEMY_Blastshadow Brutemaster|r并拿起|cRX_pick_Blastshaw的灵魂石|r。
    .use 52481 >>|cRXP_WARN_使用|r|T134336:0|t[Blastshadow's Soulstone]|cRXP_WARN_on the brtemaster的尸体|r
    .goto 174,56.18,32.29
    .complete 25123,1 --1/1 Blastshadow's Soulstone destroyed
    .mob Blastshadow the Brutemaster
step
    #label FreeGobber
    >>目标|cRXP_FRIENDLY_Gobber|r并使用|T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero One|r]
    .goto 174,57.04,32.17
    .use 52484
    .complete 25122,3 --1/1 Gobber's mind freed
    .target Gobber
step
    #loop
    .goto 174/648,1807.59998,1983.59998,0
    .waypoint 174/648,1807.59998,1983.59998,25,0
    .waypoint 174/648,1830.20007,1860.80005,25,0
    .waypoint 174/648,1820.40002,1784.20007,25,0
    .waypoint 174/648,1917.40002,1809.40002,25,0
    >>距离地面|T132808:0|t[|cRXP_Loot_Kaja'Cola Zero One|r]
    >>目标|cRXP_FRIENDLY_Kezan Citizens|r并使用|T132808:0|t[|cRXP_LOOT_Kaja'Cola Zero One|r]
    .use 52484
    .collect 52484,9,25122,0xF
    .complete 25122,4 --6/6 Other goblin's minds freed
    .target Kezan Citizen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_助手格瑞里|r
    .turnin 25123 >>交任务: |cRXP_FRIENDLY_摧毁灵魂石！|r
    .turnin 25122 >>交任务: |cRXP_FRIENDLY_重振士气|r
    .accept 25125 >>接任务: |cRXP_WARN_矿道尽头的亮光|r
    .target Assistant Greely
step
    >>与|cRXP_PICK_Mine Cart|r交互
    .goto 174,56.29,27.33
    .turnin 25125 >>交任务: |cRXP_FRIENDLY_矿道尽头的亮光|r
    .accept 25184 >>接任务: |cRXP_WARN_乘坐采矿车|r
step
    >>Ride with the Mine Cart
    .goto 174,54.2,17.0
    .complete 25184,1 --1/1 Mine Cart ridden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_助手格瑞里|r
    .goto 174,54.4,16.9
    .turnin 25184 >>交任务: |cRXP_FRIENDLY_乘坐采矿车|r
    .accept 25200 >>接任务: |cRXP_WARN_清理伐木机|r
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗斯彻克教练|r
    .goto 174,54.44,16.93
    .accept 25201 >>接任务: |cRXP_WARN_终极足球炸弹制服|r
    .target Coach Crosscheck
step
    #sticky
    #label TheLostIslesShredderShutdown
    >>杀死|cRXP_ENEMY_Steamwatdle鲨鱼|r
    .goto 174,53.5,18.9,0,0
    .complete 25200,1 --8/8 Steamwheedle Shark slain
    .mob Steamwheedle Shark
step
    >>拿起|cRXP_LOOT_碎纸机备件|r
    .goto 174,53.24,19.55,20,0
    .goto 174,52.16,20.68,20,0
    .goto 174,51.85,19.17,20,0
    .goto 174,52.64,16.93,20,0
    .goto 174,53.13,18.70
    .complete 25201,1 --8/8 Spare Shredder Parts
step
    #requires TheLostIslesShredderShutdown
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗斯彻克教练|r
    .goto 174,54.44,16.93
    .turnin 25201 >>交任务: |cRXP_FRIENDLY_终极足球炸弹制服|r
    .target Coach Crosscheck
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_助手格瑞里|r
    .goto 174,54.4,16.93
    .turnin 25200 >>交任务: |cRXP_FRIENDLY_清理伐木机|r
    .accept 25204 >>接任务: |cRXP_WARN_打开阀门|r
    .target Assistant Greely
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_王牌|r
    .goto 174,54.16,17.21
    .accept 25203 >>接任务: |cRXP_WARN_奇普是什么鬼名字？|r
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_小静|r
    .goto 174,54.01,16.98
    .accept 25202 >>接任务: |cRXP_WARN_通往他的内心的捷径|r
    .target Izzy
step
    >>单击|cRXP_PICK_Valve|r
    .goto 174,50.85,15.86,10,0
    .goto 174,50.72,13.81
    .complete 25204,1 --1/1 Valve #1 released
step
    >>单击|cRXP_PICK_Valve|r
    .goto 174,50.5,13.2
    .complete 25204,3 --1/1 Valve #3 released
step << Female
    >>杀死|cRXP_ENEMY_Chip Endale |r。掠夺他的|cRXX_Loot_心脏|r
    .goto 174,50.1,13.8
    .complete 25202,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step << Male
    >>杀死|cRXP_ENEMY_Chip Endale |r。掠夺他的|cRXX_Loot_心脏|r
    .goto 174,50.1,13.8
    .complete 25203,1 --1/1 Still-Beating Heart
    .mob Chip Endale
step
    >>单击|cRXP_PICK_Valve|r
    .goto 174,49.9,12.8
    .complete 25204,4 --1/1 Valve #4 released
step
    >>单击|cRXP_PICK_Valve|r
    .goto 174,50.2,11.8
    .complete 25204,2 --1/1 Valve #2 released
step
    >>与|cRXP_PICK_Platform控制面板交互|r
    .goto 174,51.4,13.1
    .turnin 25204 >>交任务: |cRXP_FRIENDLY_打开阀门|r
    .accept 25207 >>接任务: |cRXP_WARN_再见，甜蜜的油井|r
step
    >>单击|cRXP_PICK_Red按钮|r
    .goto 174,51.4,13.1
    .complete 25207,1 --1/1 KTC Oil Platform destroyed
step << Male
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_王牌|r
    .goto 174,54.16,17.19
    .turnin 25203 >>交任务: |cRXP_FRIENDLY_奇普是什么鬼名字？|r
    .target Ace
step << Female
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_小静|r
    .goto 174,54.01,16.97
    .turnin 25202 >>交任务: |cRXP_FRIENDLY_通往他的内心的捷径|r
    .target Izzy
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_助手格瑞里|r
    .goto 174,54.4,16.9
    .turnin 25207 >>交任务: |cRXP_FRIENDLY_再见，甜蜜的油井|r
    .accept 25213 >>接任务: |cRXP_WARN_奴隶营|r
    .timer 24,Shredder Ride
    .target Assistant Greely
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .goto 174,43.63,25.32
    .turnin 25213 >>交任务: |cRXP_FRIENDLY_奴隶营|r
    .accept 25244 >>接任务: |cRXP_WARN_小甜甜是什么鬼名字？|r << Female
	.accept 25243 >>接任务: |cRXP_WARN_她爱我，她不爱我！|r << Male
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍巴特·钩锤|r
    .goto 174,43.85,25.30
    .accept 25214 >>接任务: |cRXP_WARN_极速逃逸|r
    .target Hobart Grapplehammer
step
    #completewith next
    >>单击|cRXP_FRIENDLY_Captured Goblin|r
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>杀死|cRXP_ENEMY_Candy Cane|r
    .goto 174,39.68,27.18
    .complete 25244,1 << Female --1/1 Candy Cane slain
	.complete 25243,1 << Male --1/1 Candy Cane slain
    .mob Candy Cane
step
    >>单击|cRXP_FRIENDLY_Captured Goblin|r
    .goto 174,40.03,26.08,10,0
    .goto 174,41.03,25.24,15,0
    .goto 174,41.24,26.35
    .complete 25214,1 --8/8 Cages launched
    .target Captured Goblin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍巴特·钩锤|r
    .goto 174,43.85,25.30
    .turnin 25214 >>交任务: |cRXP_FRIENDLY_极速逃逸|r
    .target Hobart Grapplehammer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .goto 174,43.63,25.32
    .turnin 25244 >>交任务: |cRXP_FRIENDLY_小甜甜是什么鬼名字？|r << Female
	.turnin 25243 >>交任务: |cRXP_FRIENDLY_她爱我，她不爱我！|r << Male
    .accept 25251 >>接任务: |cRXP_WARN_最后的对峙|r
    .target Sassy Hardwrench
step
    >>输入|cRXP_FRIENDLY_Ultimate Footbomb Uniform|r
    .goto 174,43.86,25.16
    .complete 25251,1 --1/1 Ultimate Footbomb Uniform
    .target Ultimate Footbomb Uniform
step
    >>目标|cRXP_ENEMY_交易盖莱维克王子|r并在冷却时使用所有技能
    .goto 174,41.87,17.61,10,0
    .goto 174,43.4,19.9
    .complete 25251,2 --1/1 Trade Prince Gallywix dealt with
    .mob Trade Prince Gallywix
step
    #completewith next
    .goto 174,42.76,18.61,10,0
    .goto 174,42.24,19.45,20 >>往下跳
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .goto 174,43.6,25.3
    .turnin 25251 >>交任务: |cRXP_FRIENDLY_最后的对峙|r
    .accept 25265 >>接任务: |cRXP_WARN_胜利！|r
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
    .goto 174,42.16,17.37
    .turnin 25265 >>交任务: |cRXP_FRIENDLY_胜利！|r
    .accept 25266 >>接任务: |cRXP_WARN_酋长的大使|r
    .target Thrall
step
    #completewith next
    .goto 174,42.57,16.37
    .skipgossip
    .zone 1 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎希·硬钳|r
    .target Sassy Hardwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'Kron Loyalist|r
    .goto 1,57.65,9.78
    .turnin 25266 >>交任务: |cRXP_FRIENDLY_酋长的大使|r
    .accept 25267 >>接任务: |cRXP_WARN_给加尔鲁什的消息|r
    .timer 75,Ride to Orgrimmar
    .target Kor'Kron Loyalist
step
    #completewith next
    .goto 1,45.506,11.949,30,0
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
step
    .goto 1454/1,-4343.20020,1669.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加尔鲁什·地狱咆哮|r
    .turnin 25267 >>交任务: |cRXP_FRIENDLY_给加尔鲁什的消息|r
    .accept 25275 >>接任务: |cRXP_WARN_向劳工队长报道|r
    .target Garrosh Hellscream
]])
