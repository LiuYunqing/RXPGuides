local _,addon = ...
if addon.game ~= "CATA" or addon.player.faction ~= 'Alliance' then return end
--TODO: skip the furbolg quests if xp rate is greater than 1x    
RXPGuides.RegisterGuide([[
<< Alliance
#name 1-10 Azuremyst Isle
#version 1
#group RXP Cataclysm 1-80 (A)
#cata
#defaultfor Draenei
#next 10-18 Darkshore
step
    +1
    .mountcount 0-150,<1
step
    .goto Azuremyst Isle,84.19,43.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦格伦|r
    .accept 9279 >>接任务: |cRXP_LOOT_你活下来了！|r
    .target Megelon
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普罗尼图斯|r
    .turnin 9279 >>交任务: |cRXP_FRIENDLY_你活下来了！|r
    .accept 9280 >>接任务: |cRXP_WARN_补充治疗水晶|r
    .target Proenitus
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    >>杀死|cRXP_ENEMY_Vale蛾|r。掠夺它们的|cRXX_OOT_Blood|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普罗尼图斯|r
    .turnin 9280 >>交任务: |cRXP_FRIENDLY_补充治疗水晶|r
    .accept 9409 >>接任务: |cRXP_WARN_紧急物资！|r
    .target Proenitus
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_植物学家塔蕾克丝|r
    .accept 10302 >>接任务: |cRXP_WARN_暴躁的变异体|r
    .target Botanist Taerix
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>杀死|cRXP_ENEMY_易失性突变|r
    .complete 10302,1 --Kill Volatile Mutation (x8)
    .mob Volatile Mutation
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_植物学家塔蕾克丝|r, |cRXP_FRIENDLY_学徒维莎尔|r
    .turnin 10302 >>交任务: |cRXP_FRIENDLY_暴躁的变异体|r
    .accept 9293 >>接任务: |cRXP_LOOT_必需的措施......|r
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .accept 9799 >>接任务: |cRXP_WARN_跑腿采花|r
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    #loop
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>杀死|cRXP_ENEMY_突变的根睫毛膏|r。掠夺它们的|cRXP_Loot_Lasher样本|r
    >>偷走地上的|cRXP_Loot_腐烂的花朵|r 
    .complete 9293,1 --Collect Lasher Sample (x10)
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .mob Mutated Root Lasher
step << Priest/Shaman
    .goto Azuremyst Isle,79.1,46.5
	.xp 4-470 >>升级到距离4级（930/1400）470xp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_植物学家塔蕾克丝|r, |cRXP_FRIENDLY_学徒维莎尔|r
    .turnin 9293 >>交任务: |cRXP_FRIENDLY_必需的措施......|r
    .accept 9294 >>接任务: |cRXP_WARN_净化湖水|r
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .turnin 9799 >>交任务: |cRXP_FRIENDLY_跑腿采花|r
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧洛克|r
	.vendor >>供应商垃圾
    .target Aurok
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔杜|r
    >>|cRXP_FRIENDLY_Zalduun|r|cRXP_WARN_trols轻微|r
    .turnin 9409 >>交任务: |cRXP_FRIENDLY_紧急物资！|r
    .accept 9283 >>接任务: |cRXP_WARN_拯救幸存者！|r
    .accept 26970 >>接任务: |cRXP_WARN_救治伤者|r << Priest
    .train 2061 >>训练|T135907:0|t[快速治疗] << Priest
    .train 589 >>火车|T136207:0|t[阴影词：痛苦] << Priest
    .target Zalduun
step << Priest
    .goto Azuremyst Isle,80.32,48.30,10,0
    .goto Azuremyst Isle,80.12,49.23
    >>|cRXP_WARN_在你身边的一个|cRXP_FRIENDLY_Injured Draenei|r上施放|r|T135907:0|t[Flash Heal]|cRXP-WARN_5次|r
    .complete 26970,1 -- Heal Injured Draenei
    .target Injured Draenei
step << Priest
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔杜|r
    >>|cRXP_FRIENDLY_Zalduun|r|cRXP_WARN_trols轻微|r
    .turnin 26970 >>交任务: |cRXP_FRIENDLY_救治伤者|r 
    .target Zalduun
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦拉图|r
    .accept 26968 >>接任务: |cRXP_WARN_奥术飞弹|r
	.train 5143 >>Train|T136096:0|t[奥术导弹]
    .target Valaatu
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷伦|r
    >>|cRXP_FRIENDLY_Aurelon|r|cRXP_WARN_我可以稍微巡逻|r
    .accept 26966 >>接任务: |cRXP_WARN_圣光之力|r
    .train 20154 >>列车|T135960:0|t[义章]
	.train 20271 >>列车|T135959:0|t[判断]
    .target Aurelon
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒|r
    .accept 26958 >>接任务: |cRXP_WARN_你的第一课|r
	.train 100 >>列车|T132337:0|t[收费]
    .target Kore
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费曼瓦尔|r
    .accept 26969 >>接任务: |cRXP_WARN_根源打击|r
    .train 8075 >>Train|T136023:0|t[土图腾之力]
    .train 73899 >>列车|T460956:0|t[原始打击]
    .target Firmanvaar
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔尼|r
	.accept 26963 >>接任务: |cRXP_WARN_稳固射击|r
    .train 56641 >>列车|T132213:0|t[稳定射击]
    .target Keilnei
step
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_技师沙娜安|r
    .accept 9305 >>接任务: |cRXP_LOOT_备用零件|r
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官奥达尔|r
    .accept 9303 >>接任务: |cRXP_LOOT_疫苗|r
    .target Vindicator Aldar
step
    #completewith Owlkininoculated
    >>|cRXP_WARN_演员阵容|r|T135923:0|t[Naaru的礼物]|cRXP_WARN_on a|r|cRXP-FRIENDLY_Draenei幸存者|r|cRXP_WARN_。他们分散在起跑线上|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
    .subzoneskip 3559 -- Nestlewood Hills
step
    .goto Azuremyst Isle,77.390,58.779
	>>单击湖中的|cRXP_PICK_辐照功率晶体|r
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    #completewith next
	.use 22962 >>|cRXP_WARN_将|r|T132775:0|t[接种晶体]|cRXP_WARN_on|cRXP_ENEMY_Nestlewood Owlkins|r导通4秒|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	>>将|cRXP_Loot_Emitter Spare Parts|r从地面上偷走
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
    #label Owlkininoculated
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	.use 22962 >>|cRXP_WARN_将|r|T132775:0|t[接种晶体]|cRXP_WARN_on|cRXP_ENEMY_Nestlewood Owlkins|r导通4秒|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
	#completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_植物学家塔蕾克丝|r
    .turnin 9294 >>交任务: |cRXP_FRIENDLY_净化湖水|r
    .target Botanist Taerix
step << Mage
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_在|cRXP_ENEMY_Training Dummy|r上施放|r|T135812:0|t[火球]|cRXP-WARN_，直到获得|r|T135731:0|t[奥术导弹！]|cRX _ WARN_proc，然后施放|r| T136096:0|t]奥术导弹]|cR _ WARN_。重复此操作两次|r
    .complete 26968,1 -- Practice Arcane Missles (1)
    .mob Training Dummy
step << Shaman
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_在|cRXP_ENEMY_训练假人上施法|r|T460956:0|t[Primal Strike]|cRXP-WARN_o三次|r
    .complete 26969,1 -- Practice Primal Strike (1)
    .mob Training Dummy
step << Hunter
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_在|cRXP_ENEMY_训练假人上铸造|r|T132213:0|t[稳定射击]|cRXP-WARN_o |r 5次|r
    .complete 26963,1 -- Practice Steady Shot (1)
    .mob Training Dummy
step << Warrior
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_在|r|cRXP_ENEMY_训练假人上铸造|r|T132337:0|t[充电]|cRXP-WARN_|r
    .complete 26958,1 -- Practice Charge (1)
    .mob Training Dummy
step << Paladin
    .goto Azuremyst Isle,79.662,46.427
    >>|cRXP_WARN_在|r|cRXP_ENEMY_训练假人上铸造|r|T135960:0|t[正义之印]|cRXP_WARN_允许|r|T135959:0|t][判断]|cRXP_WARN_|r
    .complete 26966,1 -- Practice Charge (1)
    .mob Training Dummy
step
	#completewith SpareParts
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧洛克|r
	.vendor >>供应商垃圾
    .target Aurok
step
    .isQuestComplete 9283
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔杜|r
    >>|cRXP_FRIENDLY_Zalduun|r|cRXP_WARN_trols轻微|r
    .turnin 9283 >>交任务: |cRXP_FRIENDLY_拯救幸存者！|r
    .target Zalduun
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦拉图|r
    .turnin 26968 >>交任务: |cRXP_FRIENDLY_奥术飞弹|r
    .target Valaatu
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费曼瓦尔|r
    .turnin 26969 >>交任务: |cRXP_FRIENDLY_根源打击|r
    .target Firmanvaar
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔尼|r
	.turnin 26963 >>交任务: |cRXP_FRIENDLY_稳固射击|r
    .target Keilnei
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒|r
    .turnin 26958 >>交任务: |cRXP_FRIENDLY_你的第一课|r
    .target Kore
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷伦|r
    >>|cRXP_FRIENDLY_Aurelon|r|cRXP_WARN_我可以稍微巡逻|r
    .turnin 26966 >>交任务: |cRXP_FRIENDLY_圣光之力|r
    .target Aurelon
step
    #label SpareParts
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_技师沙娜安|r
    .turnin 9305 >>交任务: |cRXP_FRIENDLY_备用零件|r
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官奥达尔|r
    .turnin 9303 >>交任务: |cRXP_FRIENDLY_疫苗|r
    .accept 9309 >>接任务: |cRXP_WARN_失踪的斥候|r
    .target Vindicator Aldar
step
    #completewith SurveyorCandress
    >>|cRXP_WARN_演员阵容|r|T135923:0|t[Naaru的礼物]|cRXP_WARN_on a|r|cRXP-FRIENDLY_Draenei幸存者|r|cRXP_WARN_。他们分散在起跑线上|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图兰|r
    .turnin 9309 >>交任务: |cRXP_FRIENDLY_失踪的斥候|r
    .accept 10303 >>接任务: |cRXP_WARN_血精灵|r
    .target Tolaan
step
    .goto Azuremyst Isle,69.420,64.608
    >>杀死|cRXP_ENEMY_血精灵童子军|r
    .complete 10303,1 --Kill Blood Elf Scout (x10)
    .mob Blood Elf Scout
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图兰|r
    .turnin 10303 >>交任务: |cRXP_FRIENDLY_血精灵|r
    .accept 9311 >>接任务: |cRXP_LOOT_血精灵间谍|r
    .target Tolaan
step
    #label SurveyorCandress
    .goto Azuremyst Isle,69.271,65.772
    >>杀死|cRXP_ENEMY_Surveyor Candress |r。为|T132319:0|t[|cRXD_Loot_血精灵计划|r]掠夺她
    .use 24414 >>|cRXP_WARN_使用|r|T132319:0|t[|cRXP_OOT_Blood Elf Plans|r]|cRXP-WARN_to开始任务|r
    .complete 9311,1 --Kill Surveyor Candress (x1)
    .collect 24414,1,9798,1 -- Blood Elf Plans
    .accept 9798 >>接任务: |cRXP_LOOT_血精灵计划书|r
    .mob Surveyor Candress
step
    #loop
    .goto Azuremyst Isle,71.8,55.8,80,0
    .goto Azuremyst Isle,77.6,56.0,80,0
    .goto Azuremyst Isle,74.8,43.4,80,0
    .goto Azuremyst Isle,80.2,42.6,80,0
    >>|cRXP_WARN_演员阵容|r|T135923:0|t[Naaru的礼物]|cRXP_WARN_on a|r|cRXP-FRIENDLY_Draenei幸存者|r|cRXP_WARN_。他们分散在起跑线上|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
	#completewith BloodElfSpy
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔杜|r
    >>|cRXP_FRIENDLY_Zalduun|r|cRXP_WARN_trols轻微|r
    .turnin 9283 >>交任务: |cRXP_FRIENDLY_拯救幸存者！|r
    .target Zalduun
step
    #label BloodElfSpy
    .goto Azuremyst Isle,79.488,51.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守备官奥达尔|r
    .turnin 9311 >>交任务: |cRXP_FRIENDLY_血精灵间谍|r
    .turnin 9798 >>交任务: |cRXP_FRIENDLY_血精灵计划书|r
    .accept 9312 >>接任务: |cRXP_LOOT_图像发射器|r
    .target Vindicator Aldar
step
    .goto Azuremyst Isle,79.422,51.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_技师沙娜安|r
    .turnin 9312 >>交任务: |cRXP_FRIENDLY_图像发射器|r
    .accept 9313 >>接任务: |cRXP_WARN_前往碧蓝岗哨|r
    .target Technician Zhanaa
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦拉图|r
	.train 2136 >>列车|T135807:0|t[火灾爆炸]
    .target Valaatu
step << Priest
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔杜|r
    >>|cRXP_FRIENDLY_Zalduun|r|cRXP_WARN_trols轻微|r
    .train 17 >>列车|T135940:0|t[电源字：屏蔽]
    .target Zalduun
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷伦|r
    >>|cRXP_FRIENDLY_Aurelon|r|cRXP_WARN_我可以稍微巡逻|r
	.train 465 >>列车|T135893:0|t[奉献光环]
    .target Aurelon
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库勒|r
	.train 34428 >>火车|T132342:0|t[胜利冲刺]
    .target Kore
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费曼瓦尔|r
	.train 8042 >>|T136026:0|t[地震动]
    .target Firmanvaar
step
    .goto Azuremyst Isle,64.497,54.037
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃文|r
    .accept 9314 >>接任务: |cRXP_WARN_碧蓝岗哨的消息|r
    .target Aeun
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪泰娜|r
    .accept 9452 >>接任务: |cRXP_WARN_美味的红钳鱼|r
    .target Diktynna
step
    .isOnQuest 9452
    .goto Azuremyst Isle,62.38,51.93,40,0
    .goto Azuremyst Isle,61.87,41.62,60 >>|cRXP_WARN_Swim north up the river|r
    .use 23654 >>|cRXP_WARN_使用您沿途看到的|r|T134325:0|t[Dreaenei渔网]|cRXP_WARN_on|r|cRX_PICK_红Snapper学校|r|cRXP_WARN_。一旦你到了河的顶端，就跳过这一步，你稍后会完成的|r
	.collect 23614,10 -- Red Snapper (10)
    .disablecheckbox
step
	#completewith next
    >>|cRXP_WARN_留意|r|cRXP_FRIENDLY_Draenei Youngling|r
    >>|cRXP_WARN_当他们在战斗中时，对他们施放|r|T135923:0|t[Naaru的礼物]|cRXP_WARN_on，然后接受任务|r
	.accept 9612 >>接任务: |cRXP_WARN_非常感谢！|r
	.unitscan Draenei Youngling
step
    .goto Azuremyst Isle,53.9,34.4
    >>杀死|cRXP_ENEMY_Infected Nightstalker符文|r。掠夺它们一个|T134072:0|t[|cRXP_Loot_Fialy Glowing Crystal|r]
    .use 23678 >>|cRXP_WARN_使用|r|T134072:0|t[|cRXP_LOOT_微弱发光水晶|r]|cRXP-WARN_to开始任务|r
	.collect 23678,1,9455,1 -- Faintly Glowing Crystal (1)
    .accept 9455 >>接任务: |cRXP_WARN_奇怪的发现|r
    .mob 受感染的夜行者符文
step
	#completewith NightstalkerCleanUp
    .goto Azuremyst Isle,56.1,39.3
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    >>|cRXP_WARN_确保死在靠近山边的池塘附近|r
step
    #completewith NightstalkerCleanUp
    .subzone 3576 >>Travel to Azure Watch
--not sure what the deal with weapons are
step << Shaman
    .goto Azuremyst Isle,49.577,53.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳贝克|r
    >>|cRXP_BUY_购买并装备一根|r|T135145:0|t[手杖]
    .collect 2495,1 --Walking Stick (1)
    .target Nabek
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    +装备|T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior/Paladin/Rogue
    .goto Azuremyst Isle,48.960,51.063
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜尔维|r
    .train 2575 >>列车|T134708:0|t[采矿]
    .target Dulvi
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者法蒂玛|r
    .accept 9463 >>接任务: |cRXP_WARN_医疗材料|r
    .target Anchorite Fateema
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大主教梅内莱厄斯|r
	.turnin 9612 >>交任务: |cRXP_FRIENDLY_非常感谢！|r
    .turnin 9455 >>交任务: |cRXP_FRIENDLY_奇怪的发现|r
    .accept 9456 >>接任务: |cRXP_WARN_清理夜行豹......|r
    .target Exarch Menelaous
step
    #label NightstalkerCleanUp
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大主教梅内莱厄斯|r
    .turnin 9455 >>交任务: |cRXP_FRIENDLY_奇怪的发现|r
    .accept 9456 >>接任务: |cRXP_WARN_清理夜行豹......|r
    .target Exarch Menelaous
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图伦|r
    .train 331 >>列车|T136052:0|t[治疗波]
    .target Tuluun
    .xp <7,1
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_技师戴维恩|r
    .turnin 9313 >>交任务: |cRXP_FRIENDLY_前往碧蓝岗哨|r
    .target Technician Dyvuun
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看护员谢尔兰|r
    .turnin 9314 >>交任务: |cRXP_FRIENDLY_碧蓝岗哨的消息|r
    .accept 9603 >>接任务: |cRXP_WARN_床铺，绷带，以及更多|r
    .target Caregiver Chellan
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看护员谢尔兰|r
    .home >>将炉石设置为Azure Watch
    .target Caregiver Chellan
step
    .goto Azuremyst Isle,49.67,49.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔达恩|r
    .turnin 9603 >>交任务: |cRXP_FRIENDLY_床铺，绷带，以及更多|r
    .target Zaldaan
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉丝|r
    .train 635 >>列车|T135920:0|t[圣光]
    .target Tullas
    .xp <7,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古安|r
    .accept 9586 >>接任务: |cRXP_LOOT_帮助塔瓦拉|r
    .train 588 >>列车|T135926:0|t[内火]
    .target Guvan
    .xp <7,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古安|r
    .accept 9586 >>接任务: |cRXP_LOOT_帮助塔瓦拉|r
    .target Guvan
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁安达|r
    .train 772 >>列车|T132155:0|t[伦德]
    .target Ruada
    .xp <7,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾克提恩|r
    .train 2973 >>火车|T132223:0|t[猛禽袭击]
    .target Acteon
step
	#completewith level8
    >>|cRXP_WARN_留意|r|cRXP_FRIENDLY_Draenei Youngling|r
    >>|cRXP_WARN_当他们在战斗中时，对他们施放|r|T135923:0|t[Naaru的礼物]|cRXP_WARN_on，然后接受任务|r
	.accept 9612 >>接任务: |cRXP_WARN_非常感谢！|r
	.unitscan Draenei Youngling
step
    #completewith LeavesTree
    >>杀死|cRXP_ENEMY_Root Trappers|r。掠夺他们的|cRXD_Loot_Vines|r
    >>杀死|cRXP_ENEMY_Moonreage雄鹿|r。掠夺它们的|cRXX_Loot_Tenderloin|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    >>|cRXP_WARN_铸造|r|T135907:0|t[Flash Heal]|cRXP_WARN_on|r|cRXP-FRIENDLY_Tavara|r
    .complete 9586,1 --Heal Tavara
    .target Tavara
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海军上将奥德修斯|r
    .accept 9506 >>接任务: |cRXP_LOOT_第三类接触|r
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"曲奇\"米维克索斯|r
    .accept 9512 >>接任务: |cRXP_WARN_曲奇的大餐|r
    .target "Cookie" McWeaksauce
step << Warrior/Rogue/Paladin
    .goto Azuremyst Isle,46.355,71.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁匠卡里普索|r
    >>|cRXP_WARN_这将允许你制造|r|T135248:0|t[粗糙的磨石]|cRXP_WARN_使你的近战伤害增加2|r << Warrior/Rogue
    >>|cRXP_WARN_这将允许你制造|r|T135255:0|t[粗石]|cRXP_WARN_使你的近战伤害增加2|r << Paladin
    >>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
    .train 2018 >>列车|T136241:0|t[铁匠铺]
    .target Blacksmith Calypso
    .train 2575,3 --Mining
step
    .goto Azuremyst Isle,58.607,66.372
	>>在小笼子上偷走|cRXP_Loot_航海图|r
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.578,67.648
	>>将|cRXP_Loot_航海罗盘|r套在小盒子上
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    #loop
    .goto Azuremyst Isle,57.0,69.2,70,0
    .goto Azuremyst Isle,50.8,69.4,70,0
    .goto Azuremyst Isle,46.0,75.6,70,0
	>>杀死|cRXP_ENEMY_Skittering Crawler|r。掠夺它们的|cRXX_Loot_Crawer肉|r
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
    .mob Skittering Crawler
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"曲奇\"米维克索斯|r
    .turnin 9512 >>交任务: |cRXP_FRIENDLY_曲奇的大餐|r
    .target "Cookie" McWeaksauce
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海军上将奥德修斯|r, |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r
    .turnin 9506 >>交任务: |cRXP_FRIENDLY_第三类接触|r
    .target +Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
    .accept 9530 >>接任务: |cRXP_LOOT_天才的方案！|r
    .accept 9513 >>接任务: |cRXP_WARN_夺回废墟|r
    .target +女祭司Kyleen Il'dinare
    .goto Azuremyst Isle,47.131,70.289
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家阿达曼特·铁心|r
    .accept 9523 >>接任务: |cRXP_WARN_贵重物品，小心轻放|r
    .target Archaeologist Adamant Ironheart
step
    #label LeavesTree
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
	>>在地上偷走一棵|cRXP_Loot_空心树|r
    >>织机|cRXP_Loot_地上成堆的树叶|r
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
    >>杀死|cRXP_ENEMY_Root Trappers|r。掠夺他们的|cRXD_Loot_Vines|r
    >>杀死|cRXP_ENEMY_Moonreage雄鹿|r。掠夺它们的|cRXX_Loot_Tenderloin|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海军上将奥德修斯|r
    .turnin 9530 >>交任务: |cRXP_FRIENDLY_天才的方案！|r
    .accept 9531 >>接任务: |cRXP_LOOT_间谍之树|r
    .target Admiral Odesyus
step
    #label level8
	.xp 8-950 >>升级到距离8级（3550/4500）950xp
    >>|cRXP_WARN_尝试在Azure Watch附近完成|r
step
	#completewith next
    .goto Azuremyst Isle,50.43,63.70
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    >>|cRXP_WARN_如果您已经接近Azure Watch，请跳过此步骤|r
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾克提恩|r
	.accept 9454 >>接任务: |cRXP_WARN_狩猎月痕鹿|r
    .turnin 9454 >>交任务: |cRXP_FRIENDLY_狩猎月痕鹿|r
    .accept 10324 >>接任务: |cRXP_WARN_狩猎月痕鹿|r
    .target Acteon
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾克提恩|r
    .train 5116 >>火车|T135860:0|t[震荡射击]
    .train 82243 >>列车|T132269:0|t[Parry]
    .target Acteon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学者法蒂玛|r, |cRXP_FRIENDLY_丹达尔|r
    .turnin 9463 >>交任务: |cRXP_FRIENDLY_医疗材料|r
    .target +Anchorite Fateema
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >>接任务: |cRXP_WARN_备选方案的备选方案|r
    .target +Daedal
    .goto Azuremyst Isle,48.392,51.482
step << Shaman
    .train 331,1
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图伦|r
    .train 331 >>列车|T136052:0|t[治疗波]
    .train 324 >>列车|T136051:0|t[避雷罩]
    .target Tuluun
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图伦|r
    .train 324 >>列车|T136051:0|t[避雷罩]
    .target Tuluun
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉丝|r
    .train 635 >>列车|T135920:0|t[圣光]
    .target Tullas
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古安|r
    .turnin 9586 >>交任务: |cRXP_FRIENDLY_帮助塔瓦拉|r
    .trainer >>训练你的职业技能
    .target Guvan
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞米德|r
    .trainer >>训练你的职业技能
    .target Semid
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁安达|r
    .train 772 >>列车|T132155:0|t[伦德]
    .target Ruada
step
    .goto Azuremyst Isle,48.9,51.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜尔维|r
    .accept 10428 >>接任务: |cRXP_WARN_失踪的渔夫|r
    .target Dulvi
step
    .goto Azuremyst Isle,49.365,51.086
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_译码者奥鲁恩|r
    .accept 9538 >>接任务: |cRXP_WARN_学外语......|r
    .target Cryptographer Aurren
step
	.use 23818 >>|cRXP_WARN_使用|r|T133741:0|t[Stillpine Furbolg语言入门]
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基达图腾|r
    .turnin 9538 >>交任务: |cRXP_FRIENDLY_学外语......|r
    .accept 9539 >>接任务: |cRXP_LOOT_库欧图腾|r
    .target Totem of Akida
step
	#completewith AncientRelics
    >>|cRXP_WARN_留意|r|cRXP_FRIENDLY_Draenei Youngling|r
    >>|cRXP_WARN_当他们在战斗中时，对他们施放|r|T135923:0|t[Naaru的礼物]|cRXP_WARN_on，然后接受任务|r
	.accept 9612 >>接任务: |cRXP_WARN_非常感谢！|r
	.unitscan Draenei Youngling
step
	#completewith TotemofTikti
    >>杀死|cRXP_ENEMY_受感染的夜行者符文|r
	>>杀死|cRXP_ENEMY_Moonreage雄鹿|r。掠夺他们的|cRXX_Loot_Hides|r
    .complete 9456,1 --Kill 受感染的夜行者符文 (x8)
    .mob +受感染的夜行者符文
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.233,41.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库欧图腾|r
    .turnin 9539 >>交任务: |cRXP_FRIENDLY_库欧图腾|r
    .accept 9540 >>接任务: |cRXP_LOOT_提克提图腾|r
    .target Totem of Coo
step
    #completewith next
    .goto Azuremyst Isle,54.531,40.493,10 >>|cRXP_WARN_小心地从山的一侧往下掉|r
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>在地面上掠夺|cRXP_Loot_AAzure Snapdragons|r
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提克提图腾|r
    .turnin 9540 >>交任务: |cRXP_FRIENDLY_提克提图腾|r
    .accept 9541 >>接任务: |cRXP_LOOT_尤尔图腾|r
    .timer 30,Totem of Yor RP
    .target Totem of Tikti
step
    .isOnQuest 9541
    .goto Azuremyst Isle,63.64,40.09
    .aura 30430 >>|cRXP_WARN_关注|r|cRXP_FRIENDLY_Stillpine Ancestor抖音|r|cRXP_WARN_。他会用|r|T132107:0|t[拥抱蛇]|cRXP_WARN_给你增加150%的游泳速度和水呼吸|r
step
    .goto Azuremyst Isle,63.2,68.0
    .use 23654 >>|cRXP_WARN_使用|r|T134325:0|t[Dreaenei渔网]|cRXP_WARN_on|r|cRXP-PICK_红Snapper学校|r
    >>|cRXP_WARN_如果一个|cRXP_ENEMY_Murloc|r从游泳池中冒出，请迅速游走！施法任何hostils都会导致你失去|r|T132107:0|t[蛇的拥抱]|cRXP_WARN_buff|r
    .complete 9452,1 --Collect Red Snapper (x10)
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪泰娜|r
    .turnin 9452 >>交任务: |cRXP_FRIENDLY_美味的红钳鱼|r
    .accept 9453 >>接任务: |cRXP_LOOT_找到艾克提恩！|r
    .target Diktynna
step
    .goto Azuremyst Isle,63.116,67.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤尔图腾|r
    .turnin 9541 >>交任务: |cRXP_FRIENDLY_尤尔图腾|r
    .accept 9542 >>接任务: |cRXP_LOOT_瓦克图腾|r
    .timer 71,Totem of Vark RP
    .target Totem of Yor
step
    .isOnQuest 9542
    .goto Azuremyst Isle,60.971,69.354
    .aura 30448 >>|cRXP_WARN_遵循|r|cRXP_FRIENDLY_Stillpine Ancestor Yor|cRXP_WARN_。他会用|r|T132142:0|t[森林之影]|cRXP_WARN_增强你的移动速度和隐身能力|r
step
    #completewith next
    .goto Azuremyst Isle,28.115,62.391,30 >>|cRXP_WARN_前往西部Azuremyst岛|r
step
    .goto Azuremyst Isle,28.115,62.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦克图腾|r
    .turnin 9542 >>交任务: |cRXP_FRIENDLY_瓦克图腾|r
    .accept 9544 >>接任务: |cRXP_WARN_阿基达的预言|r
    .target Totem of Vark
step
    .aura -30448
    +|cRXP_WARN_单击|r|T132142:0|t[森林的阴影]|cRXP_WARN_buff|r
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>杀死|cRXP_ENEMY_Bristlelimb Furbolgs|r，|cRXX_ENEMY_ Bristlelimb Windcallers |r和|cRXD_ENEMY_布里斯特利姆Ursas|r。掠夺他们的|cRXP_Loot_Bristlelimb密钥|r
    >>打开|cRXP_PICK_Bristlelimb笼子|r以释放|cRXP_FRIENDLY_Stillpine俘虏|r
    .collect 23801,8,9544,1,-1 -- Bristlelimb Key
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    #loop
    .goto Azuremyst Isle,25.6,73.8,80,0
    .goto Azuremyst Isle,31.6,70.4,80,0
    .goto Azuremyst Isle,33.6,60.4,80,0
    >>杀死|cRXP_ENEMY_受感染的夜行者符文|r
	>>杀死|cRXP_ENEMY_Moonreage雄鹿|r。掠夺他们的|cRXX_Loot_Hides|r
    .complete 9456,1 --Kill 受感染的夜行者符文 (x8)
    .mob +受感染的夜行者符文
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
    #completewith next
    >>掠夺地面上的|cRXP_Loot_古代遗迹|r
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #loop
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>杀死|cRXP_ENEMY_Wrathscale Nagas|r，|cRXD_ENEMY_Wrathscale Myrmidons|r和|cRXP_ENEMY_Wrathscale Sirens|r。为|T134462:0|t[|cRXP_Loot_符文覆盖平板|r]掠夺它们
    .use 23759 >>|cRXP_WARN_使用|r|T134462:0|t[|cRXP_OOT_符文覆盖平板电脑|r]|cRXP-WARN_to开始任务|r
    .collect 23759,1,9514 --Collect 符文覆盖平板电脑 (x1)
    .accept 9514>>符文覆盖平板电脑
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .mob +Wrathscale Myrmidon
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .mob +Wrathscale Naga
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .mob +Wrathscale Siren
step
    #label AncientRelics
    #loop
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>掠夺地面上的|cRXP_Loot_古代遗迹|r
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #completewith next
    .subzone 3579 >>游到叛徒湾
step
    .isOnQuest 9531
    .goto Azuremyst Isle,18.473,84.349
    .cast 30298 >>|cRXP_WARN_使用|r|T132288:0|t[Tree Disguise Kit]|cRXP_WARN_at naga标志|r
    .timer 73,Tree's Company RP
    .use 23792
step
    >>|cRXP_WARN_等待RP|r
    .complete 9531,1 -- The Traitor Uncovered 
step
    +|cRXP_WARN_单击|r|T132288:0|t[树伪装]|cRXP_WARN_buff|r
    .aura -30298
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库雷|r
    .turnin 10428 >>交任务: |cRXP_FRIENDLY_失踪的渔夫|r
    .accept 9527 >>接任务: |cRXP_WARN_遗体|r
    .target Cowlen
step
    .goto Azuremyst Isle,13.209,89.742
	>>杀死|cRXP_ENEMY_Owlbeats|r。掠夺它们以换取|cRXX_Loot_ Cowlen家族的残余|r
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
    .mob Aberrant Owlbeast
    .mob Raving Owlbeast
    .mob Deranged Owlbeast
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库雷|r
    .turnin 9527 >>交任务: |cRXP_FRIENDLY_遗体|r
    .target Cowlen
step
	#completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家阿达曼特·铁心|r
    .turnin 9523 >>交任务: |cRXP_FRIENDLY_贵重物品，小心轻放|r
    .target Archaeologist Adamant Ironheart
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海军上将奥德修斯|r
    .turnin 9531 >>交任务: |cRXP_FRIENDLY_间谍之树|r
    .accept 9537 >>接任务: |cRXP_LOOT_绳侏儒以法|r
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r
    .turnin 9513 >>交任务: |cRXP_FRIENDLY_夺回废墟|r
    .target 女祭司Kyleen Il'dinare
step -- to avoid long RP incase turned in in above step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r
    .turnin 9514 >>交任务: |cRXP_FRIENDLY_写满符文的石板|r
    .target 女祭司Kyleen Il'dinare
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
    >>对话: |cRXP_FRIENDLY_工程师欧格林德|r
    >>在短RP后杀死|cRXP_ENEMY_Engineer“Spark”Overgrind|r。掠夺他以获得|cRXP-Loot_Traitor的通信|r
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    .timer 18,Traitor's Communication RP
    .unitscan Engineer "Spark" Overgrind
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海军上将奥德修斯|r
    .turnin 9537 >>交任务: |cRXP_FRIENDLY_绳侏儒以法|r
    .accept 9602 >>接任务: |cRXP_WARN_邪恶的书信|r
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+2430 >>升级到2430+/6500xp
step
    #completewith next
    .hs >>Hearth to Azure手表
step
    .goto Azuremyst Isle,49.367,51.082
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_止松部族的阿鲁古|r
    .turnin 9544 >>交任务: |cRXP_FRIENDLY_阿基达的预言|r
    .target Arugoo of the Stillpine
step
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾克提恩|r
    .turnin 9453 >>交任务: |cRXP_FRIENDLY_找到艾克提恩！|r
    .turnin 10324 >>交任务: |cRXP_FRIENDLY_狩猎月痕鹿|r
    .target Acteon
step
    .goto Azuremyst Isle,48.392,51.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹达尔|r
    .turnin 9473 >>交任务: |cRXP_FRIENDLY_备选方案的备选方案|r
    .target Daedal
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大主教梅内莱厄斯|r
    .turnin 9456 >>交任务: |cRXP_FRIENDLY_清理夜行豹......|r
    .turnin 9602 >>交任务: |cRXP_FRIENDLY_邪恶的书信|r
    .target Exarch Menelaous
step
    .isOnQuest 9612  
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大主教梅内莱厄斯|r
    .turnin 9612 >>交任务: |cRXP_FRIENDLY_非常感谢！|r
    .target Exarch Menelaous
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图伦|r
    .trainer >>训练你的职业技能
    .target Tuluun
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉丝|r
    .trainer >>训练你的职业技能
    .target Tullas
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古安|r
    .trainer >>训练你的职业技能
    .target Guvan
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞米德|r
    .trainer >>训练你的职业技能
    .target Semid
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁安达|r
    .trainer >>训练你的职业技能
    .target Ruada
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾克提恩|r
    .trainer >>训练你的职业技能
    .target Acteon
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔达恩|r
    .accept 9604 >>接任务: |cRXP_WARN_乘坐角鹰兽|r
    .target Zaldaan
step
    .goto Azuremyst Isle,49.712,49.102
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔达恩|r
    .fly The Exodar >>飞到外族人
    .target Zaldaan
step
    .goto The Exodar,57.016,50.081
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_努古尼|r
    .turnin 9604 >>交任务: |cRXP_FRIENDLY_乘坐角鹰兽|r
    .accept 9605 >>接任务: |cRXP_WARN_斯泰法努斯|r
    .target Nurguni
step << Warrior/Paladin
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温恩|r
    >>|cRXP_BUY_从他那里买一个|r|T135350:0|t[Clymore]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Shaman
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温恩|r
    >>|cRXP_BUY_从他那里买一个|r|T132402:0|t[Hattchet]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Ven
step << Hunter
    .goto The Exodar,47.904,89.780
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温恩|r
    >>|cRXP_BUY_从她那里购买|r|T135499:0|t[叠层递归弓]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 2507,1 --Collect Laminated Recurve Bow (1)
    .money <0.1402
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Ven 
step << Warrior/Paladin
    #optional
    #completewith end
    +|cRXP_WARN_调用|r|T135350:0|t[Clymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman
    #optional
    #completewith end
    +|cRXP_WARN_将|r|T132402:0|t[Hatchet]|cRXP_WARN_in装备在您的右手上|r
    .use 853
    .itemcount 853,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_求|r|T135499:0|t[叠层递归弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯泰法努斯|r
    .goto The Exodar,54.488,36.285
    .turnin 9605 >>交任务: |cRXP_FRIENDLY_斯泰法努斯|r
    .target Stephanos
step
    #label end
    .goto The Exodar,54.488,36.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯泰法努斯|r
    .fly Lor'danel >>Fly to Lor'danel
    .target Stephanos
]])