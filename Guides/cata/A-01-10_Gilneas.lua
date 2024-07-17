local _,addon = ...
if addon.game ~= "CATA" or addon.player.faction ~= 'Alliance' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysm 1-80 (A)
#cata
#name 1-10 Gilneas
#displayname 1-10 Gilneas
#next 10-18 Darkshore
#defaultfor !DK
#next 10-18 Darkshore

<< Worgen

step
    .goto 202,59.130,23.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r
    .accept 14078 >>接任务: |cRXP_WARN_戒严！|r
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,56.879,17.856,15,0
    .goto 202,54.626,16.717,15 >>前往|cRXP_FRIENDLY_Lieutent Walden|r的尸体
step
    .goto 202,54.626,16.717
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃登中尉|r
    .turnin 14078 >>交任务: |cRXP_FRIENDLY_戒严！|r
    .accept 14091 >>接任务: |cRXP_WARN_事有蹊跷|r
	.target Lieutenant Walden
step
    #optional
    #completewith next
    .goto 202,56.872,17.840,15,0
    .goto 202,58.366,20.712,15,0
    .goto 202,59.830,22.192,15 >>返回|cRXP_FRIENDLY_Pince Liam Greymane|r
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r
    .turnin 14091 >>交任务: |cRXP_FRIENDLY_事有蹊跷|r
    .accept 14093 >>接任务: |cRXP_WARN_天下大乱|r
    .accept 14098 >>接任务: |cRXP_WARN_疏散商人广场|r
	.target Prince Liam Greymane
step
    #completewith next
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    >>杀死|cRXP_ENEMY_Rampaging蠕虫|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格温·阿姆斯特|r
    .accept 14094 >>接任务: |cRXP_WARN_抢救补给品|r
	.target Gwen Armstead
step
    #sticky
    #label Salvaged
    #loop
    .goto 202,58.931,25.445,0
    .goto 202,61.954,36.882,0
    .goto 202,55.539,33.642,0
    .waypoint 202,58.931,25.445,12,0
    .waypoint 202,62.280,26.295,12,0
    .waypoint 202,59.193,28.776,12,0
    .waypoint 202,59.012,35.683,12,0
    .waypoint 202,61.954,36.882,12,0
    .waypoint 202,59.174,38.938,12,0
    .waypoint 202,56.253,42.897,12,0
    .waypoint 202,58.449,36.570,12,0
    .waypoint 202,55.539,33.642,12,0
    .waypoint 202,60.040,20.806,12,0
    >>打开地面上的|cRXP_PICK_Supply板条箱|r。掠夺它们以获取|cRXP_Loot_打捞物资|r
    .complete 14094,1 --Salvaged Supplies (4)
step
    #sticky
    #label Gwen
    #requires Salvaged
    .goto 202,59.561,26.776,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格温·阿姆斯特|r
    .turnin 14094 >>交任务: |cRXP_FRIENDLY_抢救补给品|r
	.target Gwen Armstead
step
    #optional
    #sticky
    #label RampWorgen
    #loop
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    .waypoint 202,57.678,23.371,45,0
    .waypoint 202,60.799,22.195,45,0
    .waypoint 202,63.387,19.323,45,0
    .waypoint 202,64.497,24.603,45,0
    .waypoint 202,65.642,33.161,45,0
    .waypoint 202,60.451,34.024,45,0
    .waypoint 202,59.696,41.857,45,0
    .waypoint 202,57.192,40.351,45,0
    >>杀死|cRXP_ENEMY_Rampaging蠕虫|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    #label Area1
    #loop
    .goto 202,63.192,31.620,0
    .goto 202,55.001,26.559,0
    .goto 202,58.493,19.345,0
    .goto 202,63.192,31.620,8,0
    .goto 202,63.199,34.791,8,0
    .goto 202,55.001,26.559,8,0
    .goto 202,55.839,20.215,8,0
    .goto 202,58.493,19.345,8,0
    >>敲门|cRXP_PICK_Merchant Square Door|r
    >>|cRXP_WARN_这可能会产生敌对的|r|cRXP_ENEMY_Rampaging蠕虫|r
    .complete 14098,1 --Market Homes Evacuated (3)
step
    #optional
    #requires RampWorgen
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Gwen
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格温·阿姆斯特|r
    .turnin 14094 >>交任务: |cRXP_FRIENDLY_抢救补给品|r
	.target Gwen Armstead
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r
    .turnin 14093 >>交任务: |cRXP_FRIENDLY_天下大乱|r
    .turnin 14098 >>交任务: |cRXP_FRIENDLY_疏散商人广场|r
    .accept 14099 >>接任务: |cRXP_WARN_皇家命令|r
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,62.290,31.759,15,0
    .goto 202,64.098,34.535,15,0
    .goto 202,68.809,45.472,15,0
    .goto 202,70.770,55.050,15 >>前往|cRXP_FRIENDLY_Gwen Armstead|r
step
    .goto 202,70.770,55.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格温·阿姆斯特|r
    .turnin 14099 >>交任务: |cRXP_FRIENDLY_皇家命令|r
    .accept 14265 >>接任务: |cRXP_WARN_你的导师|r << Warrior
    .accept 14269 >>接任务: |cRXP_WARN_有人在找你|r << Rogue
    .accept 14273 >>接任务: |cRXP_WARN_神秘的联系人|r << Warlock
    .accept 14275 >>接任务: |cRXP_WARN_有人想联系你|r << Hunter
    .accept 14277 >>接任务: |cRXP_WARN_探究奥术|r << Mage
    .accept 14278 >>接任务: |cRXP_WARN_寻找修女|r << Priest
    .accept 14280 >>接任务: |cRXP_WARN_风中的名字|r  << Druid
	.target Gwen Armstead
step << skip
    #completewith next
    .goto 202,71.023,55.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛丽·艾伦|r
    .vendor 38853 >>|cRXP_BUY_如果需要，从她那里购买|r|T133634:0|t[棕色小袋子]|cRXP_Buy_|r
	.target Marie Allen
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seargent Cleese|r
    .turnin 14265 >>交任务: |cRXP_FRIENDLY_你的导师|r
    .accept 14266 >>接任务: |cRXP_WARN_冲锋|r
    .train 100 >>列车|T132337:0|t[收费]
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侠盗萝伦|r
    >>|cRXP_WARN_他是|r|T132320:0|t[偷的]
    .turnin 14269 >>交任务: |cRXP_FRIENDLY_有人在找你|r
    .accept 14272 >>接任务: |cRXP_WARN_刺骨|r
    .train 2098 >>列车|T132292:0|t[排出]
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维图斯·暗行者|r
    .turnin 14273 >>交任务: |cRXP_FRIENDLY_神秘的联系人|r
    .accept 14274 >>接任务: |cRXP_WARN_献祭|r
    .train 348 >>火车|T135817:0|t[献祭]
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎手布雷克|r
    .turnin 14275 >>交任务: |cRXP_FRIENDLY_有人想联系你|r
    .accept 14276 >>接任务: |cRXP_WARN_稳固射击|r
    .train 56641 >>列车|T132213:0|t[稳定射击]
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米莉安·唤法者|r
    .turnin 14277 >>交任务: |cRXP_FRIENDLY_探究奥术|r
    .accept 14281 >>接任务: |cRXP_WARN_奥术飞弹|r
    .train 5143 >>Train|T136096:0|t[奥术导弹]
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔米拉修女|r
    .turnin 14278 >>交任务: |cRXP_FRIENDLY_寻找修女|r
    .accept 14279 >>接任务: |cRXP_WARN_快速治疗|r
    .train 2061 >>训练|T135907:0|t[快速治疗]
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丰收女巫塞莱斯廷|r
    .turnin 14280 >>交任务: |cRXP_FRIENDLY_风中的名字|r
    .accept 14283 >>接任务: |cRXP_WARN_回春之触|r
    .train 774 >>列车|T136081:0|t[复兴]
	.target Celestine of the Harvest
step << !Priest !Druid
    .goto 202,67.168,64.124
    >>在|cRXP_ENEMY_Bloodfang Worgen|r上施放|T132337:0|t[冲锋] << Warrior
    >>在|cRXP_ENEMY_Bloodfang Worgen|r上施放|T136189:0|t[邪恶一击]，然后施放|T132292:0|t][驱逐] << Rogue
    >>铸造|T135817:0|t|cRXP_ENEMY_Bloodfang Worgen|r << Warlock
    >>在|cRXP_ENEMY_Bloodfang Worgen|r上施法|T132213:0|t[稳定射击]2次 << Hunter
    >>投掷|T135812:0|t[火球]，然后在|cRXP_ENEMY_Bloodfang Worgen|r上进行时投掷|T136096:0|t[奥术导弹] << Mage
    .complete 14266,1 << Warrior --Cast Charge (1)
    .complete 14272,1 << Rogue --Cast Eviscerate (1) 
    .complete 14274,1 << Warlock --Cast Immolate (1)
    .complete 14276,1 << Hunter --Cast Steady Shot (2)
    .complete 14281,1 << Mage --Cast Arcane Missiles (1)
    .mob Bloodfang Worgen
step << Priest/Druid
    #loop
    .goto 202,70.421,65.541,0
    .goto 202,71.003,66.538,8,0
    .goto 202,70.523,67.189,8,0
    .goto 202,69.416,66.577,8,0
    .goto 202,69.782,63.306,5,0
    >>在|cRXP_FRIENDLY_Wounded Guard|r上施放|T135907:0|t[Flash Heal]2次 << Priest
    >>在|cRXP_FRIENDLY_Wounded Guard|r上铸造|T136081:0|t[返老还童] << Druid
    .complete 14279,1 << Priest --Cast Flash Heal (2)
    .complete 14283,1 << Druid --Cast Rejuvenation (1)
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seargent Cleese|r
    .turnin 14266 >>交任务: |cRXP_FRIENDLY_冲锋|r
    .accept 14286 >>接任务: |cRXP_WARN_人多安全|r
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侠盗萝伦|r
    >>|cRXP_WARN_他是|r|T132320:0|t[偷的]
    .turnin 14272 >>交任务: |cRXP_FRIENDLY_刺骨|r
    .accept 14285 >>接任务: |cRXP_WARN_人多安全|r
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维图斯·暗行者|r
    .turnin 14274 >>交任务: |cRXP_FRIENDLY_献祭|r
    .accept 14287 >>接任务: |cRXP_WARN_人多安全|r
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎手布雷克|r
    .turnin 14276 >>交任务: |cRXP_FRIENDLY_稳固射击|r
    .accept 14290 >>接任务: |cRXP_WARN_人多安全|r
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米莉安·唤法者|r
    .turnin 14281 >>交任务: |cRXP_FRIENDLY_奥术飞弹|r
    .accept 14288 >>接任务: |cRXP_WARN_人多安全|r
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔米拉修女|r
    .turnin 14279 >>交任务: |cRXP_FRIENDLY_快速治疗|r
    .accept 14289 >>接任务: |cRXP_WARN_人多安全|r
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丰收女巫塞莱斯廷|r
    .turnin 14283 >>交任务: |cRXP_FRIENDLY_回春之触|r
    .accept 14291 >>接任务: |cRXP_WARN_人多安全|r
	.target Celestine of the Harvest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r, |cRXP_FRIENDLY_高弗雷勋爵|r
    .turnin 14285 >>交任务: |cRXP_FRIENDLY_人多安全|r << Rogue
    .turnin 14286 >>交任务: |cRXP_FRIENDLY_人多安全|r << Warrior
    .turnin 14287 >>交任务: |cRXP_FRIENDLY_人多安全|r << Warlock
    .turnin 14288 >>交任务: |cRXP_FRIENDLY_人多安全|r << Mage
    .turnin 14289 >>交任务: |cRXP_FRIENDLY_人多安全|r << Priest
    .turnin 14290 >>交任务: |cRXP_FRIENDLY_人多安全|r << Hunter
    .turnin 14291 >>交任务: |cRXP_FRIENDLY_人多安全|r << Druid
    .accept 14157 >>接任务: |cRXP_WARN_旧日的分歧|r
    .goto 202,65.810,77.714
	.target +King Genn Greymane
    .accept 24930 >>接任务: |cRXP_WARN_顺路除害|r
    .goto 202,65.279,77.607
	.target +Lord Godfrey
step
    #sticky
    #label Bloodfang
    #loop
    .goto 202,57.890,72.582,0
    .goto 202,59.334,63.772,0
    .goto 202,61.376,70.799,0
    .goto 202,67.168,64.124,0
    .waypoint 202,57.890,72.582,20,0
    .waypoint 202,55.652,68.601,20,0
    .waypoint 202,56.961,66.801,20,0
    .waypoint 202,58.605,63.555,20,0
    .waypoint 202,59.334,63.772,20,0
    .waypoint 202,61.343,66.187,20,0
    .waypoint 202,61.898,66.760,20,0
    .waypoint 202,59.853,70.005,20,0
    .waypoint 202,61.376,70.799,20,0
    .waypoint 202,61.872,71.789,20,0
    .waypoint 202,64.690,69.474,20,0
    .waypoint 202,67.168,64.124,20,0
	>>杀死|cRXP_ENEMY_Bloodfang蠕虫|r
    .complete 24930,1 --Bloodfang Worgen slain (5)
	.mob *Bloodfang Worgen
step
    #optional
    #completewith next
    .goto 202,59.984,71.904,15,0
    .goto 202,58.006,72.476,15,0
    .goto 202,57.736,73.926,15,0
    .goto 202,57.925,75.584,10 >>朝|cRXP_FRIENDLY_Captain Broderick|r内部行驶
step
    .goto 202,57.925,75.584
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布罗德里克队长|r, 他在里面
    .turnin 14157 >>交任务: |cRXP_FRIENDLY_旧日的分歧|r
    .accept 28850 >>接任务: |cRXP_WARN_监狱的屋顶|r
	.target Captain Broderick
step
    #optional
    #completewith Rooftop
    #label Staircase1
    .goto 202,57.001,74.780,5,0
    .goto 202,55.627,72.484,12 >>沿着螺旋楼梯上行
step
    #optional
    #completewith Rooftop
    #requires Staircase1
    .goto 202,54.046,69.362,12,0
    .goto 202,53.759,67.454,12,0
    .goto 202,55.224,62.906,12 >>前往|cRXP_FRIENDLY_Lord Darius Crowley|r
step
    #label Rooftop
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r
    .turnin 28850 >>交任务: |cRXP_FRIENDLY_监狱的屋顶|r
    .accept 14154 >>接任务: |cRXP_WARN_命悬一线|r
    .timer 118,By the Skin of His Teeth RP
	.target Lord Darius Crowley
step
    .goto 202,55.224,62.906
    >>杀死迎面而来的|cRXP_ENEMY_Worgen字母|r和|cRXP-ENEMY_Bloodfang符文|r波，持续2分钟
    >>|cRXP_WARN_靠近|cRXP_FRIENDLY_Lord Darius Crowley|r获得|r|T236310:0|t[反抗军战士]|cRXP-WARN_（被动光环：极大地增加急速、生命值再生和资源再生）|r
    .complete 14154,1 --Survive while holding back the worgen for 2 分钟 (1)
    .mob Worgen Alpha
    .mob Bloodfang Runt
step
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r
    .turnin 14154 >>交任务: |cRXP_FRIENDLY_命悬一线|r
    .accept 26129 >>接任务: |cRXP_WARN_兄弟情深|r
	.target Lord Darius Crowley
step
    #optional
    #completewith Brothers
    #label Staircase2
    .goto 202,53.759,67.454,12,0 
    .goto 202,54.046,69.362,12 >>向螺旋楼梯行进
--XX NOTE: You can longjump up behind Darius to jump down, but I doubt the avg user can do it (evident of Wetlands skip despite it being easier)
step
    #optional
    #completewith Brothers
    #requires Staircase2
    .goto 202,55.627,72.484,15,0
    .goto 202,57.707,74.729,5,0
    .goto 202,59.984,71.904,20 >>沿着螺旋楼梯往下走。到外面去
step
    #label Brothers
    #requires Bloodfang
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高弗雷勋爵|r, |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r
    .turnin 24930 >>交任务: |cRXP_FRIENDLY_顺路除害|r
    .goto 202,65.279,77.607
	.target +Lord Godfrey
    .turnin 26129 >>交任务: |cRXP_FRIENDLY_兄弟情深|r
    .accept 14159 >>接任务: |cRXP_WARN_叛军领主的军械库|r
    .goto 202,65.810,77.714
	.target +King Genn Greymane
step
    #optional
    #completewith Arsenal
    #requires Cellar1
    .goto 202,61.383,80.814,15,0
    .goto 202,56.181,82.790,15,0
    .goto 202,55.945,81.481,5,0
    .goto 202,56.805,81.599,6,0
    .goto 202,56.768,85.448,10 >>单击|cRXP_PICK_Cellar Door|r打开它，然后朝着里面的|cRXP_FRIENDLY_Josiah Avery|r行进
--XX no spell for this
step
    #label Arsenal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Josiah Avery|r and |cRXP_FRIENDLY_Lorna Crowley, 他在里面
    .turnin 14159 >>交任务: |cRXP_FRIENDLY_叛军领主的军械库|r
    .goto 202,56.768,85.448
	.target +Josiah Avery
    .accept 14204 >>接任务: |cRXP_WARN_来自阴影|r
    .goto 202,56.873,81.421
	.target +Lorna Crowley
step << skip
    #completewith next
    +|cRXP_WARN_要为任务项目启用密钥绑定，请执行以下步骤：|r
    *[1] Press the |cRXP_WARN_Escape key.|r
    *[2] Select |cRXP_WARN_Options.|r
    *[3] Navigate to |cRXP_WARN_Keybindings.|r
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides.|r
    *[5] Select and bind the |cRXP_WARN_Active Buttons.|r
step
    #loop
    .goto 202,54.026,81.617,0
    .goto 202,50.457,81.103,0
    .goto 202,47.100,77.204,0
    .goto 202,53.263,76.819,0
    .goto 202,54.026,81.617,20,0
    .goto 202,55.209,84.131,20,0
    .goto 202,51.607,83.495,20,0
    .goto 202,50.679,83.942,20,0
    .goto 202,50.457,81.103,20,0
    .goto 202,48.050,84.424,20,0
    .goto 202,47.075,81.792,20,0
    .goto 202,46.153,81.533,20,0
    .goto 202,47.100,77.204,20,0
    .goto 202,48.918,76.770,20,0
    .goto 202,51.200,76.089,20,0
    .goto 202,53.263,76.819,20,0
    >>杀死|cRXP_ENEMY_Bloodfang潜伏者|r
    >>|cRXP_WARN_小心它们|r|T132320:0|t[偷窃]
    >>|cRXP_WARN_如果需要，使用您的|cRXP_FRIENDLY_Gilnean Mastiff|r's |r|T236186:0|t[攻击潜伏器]|cRXP_WARN_pell帮助定位|cRXP _ENEMY_Bloodfang潜伏器|r|r
    >>|cRXP_WARN_I如果您丢失了|cRXP_FRIENDLY_Gilnean獒|r，请使用|r|T236926:0|t[Gilnean獒犬项圈]重新分配
    .complete 14204,1 --Bloodfang Lurker slain (6)
	.mob Bloodfang Lurker
    .use 48707
step
    .goto 202,56.873,81.421
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗娜·克罗雷|r, 他在里面
    .turnin 14204 >>交任务: |cRXP_FRIENDLY_来自阴影|r
    .accept 14214 >>接任务: |cRXP_WARN_给格雷迈恩的消息|r
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 202,55.818,81.572,6,0
    .goto 202,56.184,82.795,12,0
    .goto 202,59.207,83.777,15 >>前往|cRXP_FRIENDLY_King Genn Greymane|r
step
    .goto 202,59.207,83.777
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r
    .turnin 14214 >>交任务: |cRXP_FRIENDLY_给格雷迈恩的消息|r
    .accept 14293 >>接任务: |cRXP_WARN_救援克雷南·阿朗纳斯|r
    .timer 16,Save Krennan Aranas RP
	.target King Genn Greymane
step << skip
    #completewith next
    .goto 202,58.710,77.289,0
    .deathskip >>保存|cRXP_FRIENDLY_Krennan Aranas|r后，在|cRXP_RIENDLY_Spirit Healer处死亡并重生
    .target Spirit Healer
step
    .goto 202,59.207,83.777,0
    .goto 202,66.171,61.811
    >>在|cRXP_FRIENDLY_King Greymane's Horse|r上时：
    >>施法|T134149:0|t[营救克伦南]（1）当你接近他时救|cRXP_FRIENDLY_Krennan Aranas|r
-- >>|cRXP_WARN_救了他之后，按下下马|cRXP_FRIENDLY_King Greymane's Horse|r，然后死于|r|cRXP-ENEMY_Bloodfang Rippers|r
    >>|cRXP_WARN_如果失败，请与|cRXP_FRIENDLY_King Genn Greymane|r联系再试一次|r
    .complete 14293,1 --Krennan Aranas rescued (1)
    .timer 19,Save Krennan Aranas RP 
	.target Krennan Aranas
    .target *King Genn Greymane
    .skipgossip 35550,1
    .timer 16,Save Krennan Aranas RP
--XX 19s slower to not deathskip, not gonna risk it
step << skip
    #optional
    #completewith next
    .goto 202,58.710,77.289
    .deathskip >>保存|cRXP_FRIENDLY_Krennan Aranas|r后，在|cRXP_RIENDLY_Spirit Healer处死亡并重生
    .target Spirit Healer
step
    .goto 202,55.715,80.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高弗雷勋爵|r
    .turnin 14293 >>交任务: |cRXP_FRIENDLY_救援克雷南·阿朗纳斯|r
    .accept 14294 >>接任务: |cRXP_WARN_重整旗鼓|r
	.target Lord Godfrey
--XX 14293 didn't complete after turning in quest, worked again after accepting followup (very minor issue)
step
    #optional
    #completewith next
    .goto 202,53.411,82.729,15,0
    .goto 202,44.351,82.504,15,0
    .goto 202,41.103,81.945,15,0
    .goto 202,30.373,73.142,15 >>前往|cRXP_FRIENDLY_King Genn Greymane|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r, |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r
    .turnin 14294 >>交任务: |cRXP_FRIENDLY_重整旗鼓|r
    .goto 202,30.373,73.142
	.target +King Genn Greymane
    .accept 14212 >>接任务: |cRXP_WARN_牺牲|r
    .goto 202,31.103,72.365
	.target +Lord Darius Crowley
step
    #completewith next
    .goto 202,31.282,72.645
    .vehicle >>输入|cRXP_FRIENDLY_Crowley的马|r
    .timer 79,Sacrifices RP
    .target Crowley's Horse
step
    .goto 202,31.282,72.645,-1
    .goto 202,40.749,39.219,-1
    >>在|cRXP_FRIENDLY_Crowley的马|r上时：
    >>围捕|cRXP_ENEMY_Bloodfang Stalkers |r
    >>施法|T135433:0|t[投掷火炬]（1）（射程瞬间：四舍五入|cRXP_ENEMY_Bloodfang Stalkers|r）
    .complete 14212,1 --Bloodfang Stalker rounded up (30)
	.mob Bloodfang Stalker
--XX about 40s slower not to d
step
    #completewith next
    >>|cRXP_WARN_等待RP|r
    .goto 202,40.548,39.446,20 >>乘坐|cRXP_FRIENDLY_Crowley的马|r前往|cRXP_FRIENDLY_Tobias Mistmant|r
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托比亚斯·密斯特曼托|r
    .turnin 14212 >>交任务: |cRXP_FRIENDLY_牺牲|r
    .accept 14218 >>接任务: |cRXP_WARN_以鲜血与灰烬之名|r
	.target Tobias Mistmantle
step
    #completewith next
    .goto 202,40.883,36.449,-1
    .goto 202,40.120,36.463,-1
    .goto 202,38.786,37.390,-1
    .goto 202,38.395,38.282,-1
    .goto 202,37.896,39.535,-1
    .goto 202,37.955,40.949,-1
    .vehicle >>输入|cRXP_FRIENDLY_Rebel Cannon|r
    .target Rebel Cannon
step
    .goto 202,40.13,36.52
    >>在|cRXP_FRIENDLY_Rebel Cannon|r中时：
    >>杀死|cRXP_ENEMY_Bloodfang跟踪者|r
    >>施法|T252185:0|t[反抗军大炮]（1）（远程瞬间：造成大量伤害）
    .complete 14218,1 --Bloodfang Stalker slain (80)
    .mob Bloodfang Stalker
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托比亚斯·密斯特曼托|r
    .turnin 14218 >>交任务: |cRXP_FRIENDLY_以鲜血与灰烬之名|r
    .accept 14221 >>接任务: |cRXP_WARN_绝不投降，偶尔撤退|r
	.target Tobias Mistmantle
step
    #optional
    #completewith next
    .goto 202,41.075,40.477,8,0
    .goto 202,43.584,44.647,12 >>Enter the Cathedral
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r, 他在里面
    .turnin 14221 >>交任务: |cRXP_FRIENDLY_绝不投降，偶尔撤退|r
    .accept 14222 >>接任务: |cRXP_WARN_破釜沉舟|r
	.target Lord Darius Crowley
step
    #loop
    .goto 202,42.708,43.201,0
    .goto 202,46.550,49.292,0
    .goto 202,47.789,46.937,20,0
    .goto 202,43.825,45.568,20,0
    .goto 202,42.708,43.201,20,0
    .goto 202,45.161,50.530,20,0
    >>杀死|cRXP_ENEMY_疯狂跟踪者|r
    >>|cRXP_WARN_靠近|cRXP_FRIENDLY_Lord Darius Crowley|r获得|r|T236310:0|t[反抗军战士]|cRXP-WARN_（被动光环：极大地增加急速、生命回复和魔法回复）|r
    .complete 14222,1 --Frenzied Stalker slain (8)
	.mob Frenzied Stalker
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r, 他在里面
	>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
    .turnin 14222 >>交任务: |cRXP_FRIENDLY_破釜沉舟|r
    .timer 46,Last Stand RP
	.target Lord Daruius Crowley
step
    .goto 179,36.47,61.39
    >>|cRXP_WARN_等待RP|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r
    .accept 14375 >>接任务: |cRXP_WARN_人性的最后希望|r
    .turnin 14375 >>交任务: |cRXP_FRIENDLY_人性的最后希望|r
    .timer 7,Last Chance at Humanity RP
	.target King Genn Greymane
--XX 2dp waypoints here on out (gc bug)
step
    .goto 179,36.51,62.27
    >>|cRXP_WARN_等待RP|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高弗雷勋爵|r
    .accept 14313 >>接任务: |cRXP_WARN_恢复人性|r
	.target Lord Godfrey
step
    #optional
    #completewith next
    .goto 179,37.17,63.58,8,0
    .goto 179,37.41,63.24,10 >>Enter the house
step
    .goto 179,37.41,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷南·阿朗纳斯|r, 他在里面
    .turnin 14313 >>交任务: |cRXP_FRIENDLY_恢复人性|r
    .accept 14320 >>接任务: |cRXP_WARN_急需药材|r
	.target Krennan Aranas
step
    #sticky
    #label Professions1
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_草药和采矿矿脉提供XP。只收集直接路径中的资源|r
    >>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
    .train 2366 >>列车|T136065:0|t[草药学]
    .train 2575 >>列车|T136248:0|t[采矿]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,1,1,1
    .train 2366,1 --Herbalism
    .train 2575,1 --Mining
step
    #optional
    #requires Professions1
    #label Professions2
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_Herbing Herbs提供XP。只收集直接路径中的资源|r
    >>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
    .train 2366 >>列车|T136065:0|t[草药学]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,2,2
    .train 2575,3 --Mining
step
    #optional
    #requires Professions2
    #label Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_采矿矿脉提供XP。只收集直接路径中的资源|r
    >>|cRXP_WARN_如果您不想这样做，请跳过此步骤|r
    .train 2575 >>列车|T136248:0|t[采矿]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,3,2
    .train 2366,3 --Herbalism
step
    #completewith INOG
    #optional
    .cast 2383 >>|cRXP_WARN_Cast|r[查找草药]
    .cast 2580 >>|cRXP_WARN_Cast|r[查找矿物]
    .train 2575,3 --Mining
    .train 2366,3 --Herbalism
    .subzoneskip 4786,1
step
    #optional
    .goto 179,36.228,64.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨曼莎·贝克利|r
    .collect 2901,1 >>|cRXP_BUY_从她那里购买一个|r|T134708:0|t[采矿选择]|cRXP_Buy_|r
    .target Samantha Buckley
    .train 2575,3 --Mining
    .subzoneskip 4786,1
step
    #label INOG
    .goto 179,32.77,66.39
    >>点击地面上的|cRXP_PICK_Mandrake Essence的板条箱|r
	>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
    .turnin 14320 >>交任务: |cRXP_FRIENDLY_急需药材|r
step
    #label MiningWorgen
    .goto 179,32.77,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被杀死的巡逻兵|r
	>>|cRXP_WARN_如果无法执行此操作，请在聊天中键入/重新加载|r
    .accept 14321 >>接任务: |cRXP_WARN_入侵|r
    .target Slain Watchman
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格温·阿姆斯特|r, 他在里面
    .turnin 14321 >>交任务: |cRXP_FRIENDLY_入侵|r
    .accept 14336 >>接任务: |cRXP_WARN_猎物还是猎人|r
	.target Gwen Armstead
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r
    .turnin 14336 >>交任务: |cRXP_FRIENDLY_猎物还是猎人|r
    .accept 14347 >>接任务: |cRXP_WARN_坚守阵地|r
    .accept 14348 >>接任务: |cRXP_WARN_合作|r
	.target Prince Liam Greymane
step
    #sticky
    #label ForsakenInvader
    .goto 179,35.61,66.62,0,0
    >>杀死|cRXP_ENEMY_Forsaken入侵者|r
    .complete 14347,1 --Forsaken Invader slain (10)
	.mob Forsaken Invader
step
    #label Abominations
    #loop
    .goto 179,37.77,69.30,0
    .goto 179,34.23,69.98,0
    .goto 179,33.63,64.76,0
    .goto 179,37.77,69.30,30,0
    .goto 179,38.48,71.45,30,0
    .goto 179,37.24,71.34,30,0
    .goto 179,36.02,71.29,30,0
    .goto 179,34.23,69.98,30,0
    .goto 179,33.39,70.65,30,0
    .goto 179,33.33,71.73,30,0
    .goto 179,33.33,67.76,30,0
    .goto 179,33.63,64.76,30,0
    >>地面上的织机|T132620:0|t|cRXP_Loot_[黑色火药桶]|r
    >>将|T132620:0|t|cRXP_LOOT_[黑色火药桶]|r投掷到|cRXP-ENEMY_Horrid Abominations|r
    .collect 49202,4,14348,1,-1 --Black Gunpowder Keg (4)
    .complete 14348,1 --Gunpowder thrown at Abominations (4)
    .use 49202 
	.mob Horrid Abomination
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r
    .turnin 14347 >>交任务: |cRXP_FRIENDLY_坚守阵地|r
    .turnin 14348,1 >>交任务: |cRXP_FRIENDLY_合作|r << !Warrior !Rogue !Monk
    .turnin 14348,2 >>交任务: |cRXP_FRIENDLY_合作|r << Warrior/Rogue/Monk
    .accept 14366 >>接任务: |cRXP_WARN_沉着迎敌|r
	.target Prince Liam Greymane
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格温·阿姆斯特|r, 他在里面
    .turnin 14366 >>交任务: |cRXP_FRIENDLY_沉着迎敌|r
    .accept 14367 >>接任务: |cRXP_WARN_艾伦农场的防风地窖|r
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Enter the Cellar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lord Godfrey|r and |cRXP_FRIENDLY_Melinda Hammond, 他在里面
    .turnin 14367 >>交任务: |cRXP_FRIENDLY_艾伦农场的防风地窖|r
    .accept 14369 >>接任务: |cRXP_WARN_释放兽性|r
    .accept 14382 >>接任务: |cRXP_WARN_海边的船长|r
    .goto 179,28.97,63.93
	.target +Lord Godfrey
    .accept 14368 >>接任务: |cRXP_WARN_救救我的孩子！|r
    .goto 179,28.93,64.04
	.target +Melinda Hammond
step
    #optional
    #label ChildrenHouse1
    #completewith Ashley
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Exit the Cellar
step
    #optional
	#completewith Cynthia
    >>杀死|cRXP_ENEMY_被遗忘的步兵|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob Forsaken Footsoldier
step
    #optional
    #label ChildrenHouse2
    #requires ChildrenHouse1
    #completewith Ashley
    .goto 179,27.83,66.83,7 >>Enter the house
step
    #optional
    #completewith Ashley
    #requires ChildrenHouse2
    .goto 179,27.90,66.12,3,0
    .goto 179,28.19,66.32,3 >>上楼去
step
    #label Ashley
    .goto 179,27.88,66.66
    .cast 68598 >>对话: |cRXP_FRIENDLY_阿什莉|r, 他在楼上
--  .complete 14368,2 --Ashley rescued (1)
	.target Ashley
    .isOnQuest 14368
--XX talk spell is about 0.5s faster than credit
step
    .goto 179,28.53,66.73,8,0
    .goto 179,28.71,66.78
    .cast 68596 >>对话: |cRXP_FRIENDLY_詹姆斯|r, 他在外面
--  .complete 14368,3 --James rescued (1)
	.target James
    .isOnQuest 14368
step
    #label Cynthia
    .goto 179,29.59,69.31
    .cast 68597 >>对话: |cRXP_FRIENDLY_辛西娅|r
--  .complete 14368,1 --Cynthia rescued (1)
	.target Cynthia
    .isOnQuest 14368
step
	#sticky
    #label Combatants
    #loop
    .goto 179,27.59,75.20,0
    .goto 179,26.15,74.55,0
    .goto 179,24.40,70.19,0
    .goto 179,24.55,69.00,0
    .waypoint 179,27.59,75.20,45,0
    .waypoint 179,27.39,73.94,45,0
    .waypoint 179,26.15,74.55,45,0
    .waypoint 179,24.29,73.29,45,0
    .waypoint 179,24.40,70.19,45,0
    .waypoint 179,24.55,69.00,45,0
    >>杀死|cRXP_ENEMY_被遗忘的步兵|r和|cRXX_ENEMY_被遗忘的水手|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob *Forsaken Footsoldier
	.mob *Forsaken Sailor
step
    #optional
    #completewith Anson
    #loop
    .goto 179,28.39,72.09,0
    .goto 179,26.90,71.55,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    .goto 179,26.73,73.45,45,0
    >>杀死|cRXP_ENEMY_Forsaken机械师|r（如果有），以在|cRXP_FRIENDLY_Forsaken弹射器|r中腾出空间
    .vehicle >>输入|cRXP_FRIENDLY_Forsaken弹射器|r
    .timer 59,Catapult Implodes
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #completewith Anson
    +在|cRXP_FRIENDLY_Forsaken弹射器|r中时：
    >>小心瞄准，然后投掷|T252175:0|t[发射]（1）发射到|cRXP_ENEMY_ Anson|r船长的北方飞船上
    *|cRXP_WARN_Remember that you can move whilst in the|r |cRXP_FRIENDLY_Forsaken Catapult|r
    *|cRXP_WARN_Make sure you aim carefully, as you can be launched into the side of the boat, or into the water past the boat|r
--XX Subzone 4714 (Gilneas) - can tie this to cast ID or subzone ID but there's no good way to hide this/detect if the player gets onto the boat or not
step
    #label Anson
    .goto 179,24.74,76.26,6,0
    .goto 179,24.94,76.50,6,0
    .goto 179,23.77,74.70
    >>杀死北方飞船底层内部的|cRXP_ENEMY_船长Anson|r
    .complete 14382,1 --Captain Anson slain (1)
	.mob Captain Anson
--XX Would add waypoints but the Catapult step gives enough bloat as is
--XX Check if body type 2s can exit via cannon holes
step
    #optional
    #completewith Morris
    #label Catapult3
    .goto 179,24.94,76.50,6 >>Go back upstairs
step
    #optional
    #requires Catapult3
    #completewith Morris
    #loop
    .goto 179,26.73,73.45,0
    .goto 179,26.90,71.55,0
    .goto 179,28.39,72.09,0
    .goto 179,29.61,74.10,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,29.61,74.10,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    >>杀死一名|cRXP_ENEMY_Forsaken机械师|r以在|cRXP_FRIENDLY_Forsaken弹射器|r中腾出空间
    .vehicle >>输入|cRXP_FRIENDLY_Forsaken弹射器|r
    .timer 59,Catapult Implodes
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #requires Catapult3
    #completewith Morris
    +在|cRXP_FRIENDLY_Forsaken弹射器|r中时：
    >>小心瞄准，然后投掷|T252175:0|t[发射]（1），发射到|cRXP_ENEMY_Morris船长|r的南船上
    *|cRXP_WARN_Remember that you can move whilst in the|r |cRXP_FRIENDLY_Forsaken Catapult|r
    *|cRXP_WARN_Make sure you aim carefully, as you can be launched into the side of the boat, or into the water past the boat|r
step
	#label Morris
    .goto 179,27.90,81.11,6,0
    .goto 179,28.06,81.32,6,0
    .goto 179,26.85,79.32
    >>杀死南舰底层的|cRXP_ENEMY_Morris船长|r
    .complete 14382,2 --Captain Morris slain (1)
	.mob Captain Morris
step << skip
    #requires Combatants
    #completewith Unleash
    .goto 179,27.65,66.05,0
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .target Spirit Healer
    .subzoneskip 4792
--XX not worth the timesave
step
    #optional
    #requires Combatants
    #completewith Unleash
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Enter the Cellar
step
    #label Unleash
    #requires Combatants
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Melinda Hammond|r and |cRXP_FRIENDLY_Lord Godfrey, 他在里面
    .turnin 14368 >>交任务: |cRXP_FRIENDLY_救救我的孩子！|r
    .goto 179,28.93,64.04
	.target +Melinda Hammond
    .turnin 14369 >>交任务: |cRXP_FRIENDLY_释放兽性|r
    .turnin 14382 >>交任务: |cRXP_FRIENDLY_海边的船长|r
    .accept 14386 >>接任务: |cRXP_WARN_敌军的首领|r
    .goto 179,28.97,63.93
	.target +Lord Godfrey
step
    .isOnQuest 14386
    #optional
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Exit the Cellar
step
    .isOnQuest 14386
    #completewith Thyala
    .cast 68682 >>使用|T132161:0|t[獒哨]召唤|cRXP_FRIENDLY_攻击獒|r攻击|cRXP_ENEMY_Dark Ranger Thyala|r
step
    #label Thyala
    .goto 179,23.48,67.53
    >>杀死|cRXP_ENEMY_黑暗游侠Thyala|r
    .complete 14386,1 --Dark Ranger Thyala slain (1)
    .use 49240
	.mob Dark Ranger Thyala
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Enter the Cellar
step
    .goto 179,28.97,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高弗雷勋爵|r
    .turnin 14386 >>交任务: |cRXP_FRIENDLY_敌军的首领|r
    .accept 14396 >>接任务: |cRXP_WARN_天崩地裂|r
	.target Lord Godfrey
step
    #optional
    #label Cellar6
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Exit the Cellar
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r
    .turnin 14396 >>交任务: |cRXP_FRIENDLY_天崩地裂|r
    .accept 14395 >>接任务: |cRXP_WARN_屏住呼吸|r
	.target Prince Liam Greymane
step
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>拿起一个|cRXP_FRIENDLY_Drowning Watchman|r
	.target Drowning Watchman
    .isOnQuest 14395
--XXZ Zarant function
step
    .goto 179,29.03,65.05
    >>将|cRXP_FRIENDLY_Drowning Watchman|r带回|cRXP_FRIENDLY_Pince Liam Greymane|r
    .complete 14395,1,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>拿起一个|cRXP_FRIENDLY_Drowning Watchman|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>将|cRXP_FRIENDLY_Drowning Watchman|r带回|cRXP_FRIENDLY_Pince Liam Greymane|r
    .complete 14395,1,2 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>拿起一个|cRXP_FRIENDLY_Drowning Watchman|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>将|cRXP_FRIENDLY_Drowning Watchman|r带回|cRXP_FRIENDLY_Pince Liam Greymane|r
    .complete 14395,1,3 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>拿起一个|cRXP_FRIENDLY_Drowning Watchman|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>将|cRXP_FRIENDLY_Drowning Watchman|r带回|cRXP_FRIENDLY_Pince Liam Greymane|r
    .complete 14395,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r
    .turnin 14395,1 >>交任务: |cRXP_FRIENDLY_屏住呼吸|r
    .accept 14397 >>接任务: |cRXP_WARN_撤退行动|r
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 179,35.95,63.54,20,0
    .goto 179,37.63,65.23,12 >>前往|cRXP_FRIENDLY_Gwen Armstead|r
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格温·阿姆斯特|r
    .turnin 14397 >>交任务: |cRXP_FRIENDLY_撤退行动|r
    .accept 14398 >>接任务: |cRXP_WARN_薇儿外婆|r
    .accept 14403 >>接任务: |cRXP_WARN_海瓦尔德兄弟|r
    .accept 14406 >>接任务: |cRXP_WARN_克罗雷果园|r
	.target Gwen Armstead
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗娜·克罗雷|r
    .turnin 14406 >>交任务: |cRXP_FRIENDLY_克罗雷果园|r
    .accept 14416 >>接任务: |cRXP_WARN_饥饿的双头怪|r
	.target Lorna Crowley
step
    #optional
    #completewith next
    #loop
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,39.82,75.32,20,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,39.72,77.14,20,0
    .goto 179,40.11,79.92,20,0
    .goto 179,39.90,81.96,20,0
    .goto 179,38.21,81.88,20,0
    .vehicle >>输入|cRXP_FRIENDLY_Mountain Horse|r
    .target Mountain Horse
step
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,37.68,72.76
    >>在|cRXP_FRIENDLY_Mountain Horse|r上时：
    >>铸造|T134326:0|t[围捕马]（1）在|cRXP_FRIENDLY_Mountain Horses|r上，使它们跟随您
    >>指南5|cRXP_FRIENDLY_Mountain Horses|r（包括您自己的）返回|cRXP_FRIENDLY_Lorna Crowley|r
    >>|cRXP_WARN_避免|cRXP_ENEMY_Koroth Hillbreaker|r
    .complete 14416,1 --Mountain Horse rescued (5)
	.target Mountain Horse
	.target Lorna
    .unitscan Koroth the Hillbreaker
--XXZ Zarant function
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗娜·克罗雷|r
    .turnin 14416 >>交任务: |cRXP_FRIENDLY_饥饿的双头怪|r
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Enter the Wahl Cottage
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_薇儿外婆|r, 他在里面
    .turnin 14398 >>交任务: |cRXP_FRIENDLY_薇儿外婆|r
    .accept 14399 >>接任务: |cRXP_WARN_失踪的宝贝|r
	.target Grandma Wahl
step
    .goto 179,33.96,77.38
    >>将|cRXP_Loot_LLinen-Wrapped Book|r洗劫一空
    .complete 14399,1 --Linen-Wrapped Book (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_薇儿外婆|r, 他在里面
    .turnin 14399 >>交任务: |cRXP_FRIENDLY_失踪的宝贝|r
    .accept 14400 >>接任务: |cRXP_WARN_我不要穿成这样|r
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,32.50,76.06,8,0
    .goto 179,32.27,76.07,10,0
    .goto 179,32.04,75.45,10 >>前往|cRXP_LOOT_奶奶的好衣服|r外面
step
    .goto 179,32.04,75.45
    >>外面的织机|cRXP_Loot_奶奶的好衣服|r
    .complete 14400,1 --Grandma's Good Clothes (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_薇儿外婆|r, 他在里面
    .turnin 14400 >>交任务: |cRXP_FRIENDLY_我不要穿成这样|r
    .accept 14401 >>接任务: |cRXP_WARN_外婆的猫咪|r
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,35.16,74.82
    .cast 68743 >>点击|cRXP_FRIENDLY_增强地面上的猫|r，召唤|cRXP-ENEMY_Lucius the Crumal|r
	.mob Lucius the Cruel
    .isOnQuest 14401
step
    .goto 179,35.24,74.98
    >>杀死|cRXP_ENEMY_Lucius the Crumal|r。掠夺他|cRXD_Loot_Chance the Cat |r
    .complete 14401,1 --Chance the Cat (1)
	.mob Lucius the Cruel
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Enter the Wahl Cottage
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_薇儿外婆|r, 他在里面
    .turnin 14401 >>交任务: |cRXP_FRIENDLY_外婆的猫咪|r
	.target Grandma Wahl
step
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞巴斯蒂安·海瓦尔德|r
    .turnin 14403 >>交任务: |cRXP_FRIENDLY_海瓦尔德兄弟|r
    .accept 14404 >>接任务: |cRXP_WARN_丢三落四|r
    .accept 14412 >>接任务: |cRXP_WARN_清理渔场|r
	.target Sebastian Hayward
step
	#sticky
    #label Castaways
    #loop
    .goto 179,36.89,84.68,0
    .waypoint 179,37.31,84.32,6,0
    .waypoint 179,36.89,84.68,6,0
    .waypoint 179,36.57,84.53,6,0
    >>杀死|cRXP_ENEMY_Forsaken漂流者|r
    .complete 14412,1 --Forsaken Castaway slain (6)
	.mob Forsaken Castaway
step
    .goto 179,37.58,85.98
    >>打开地面上的|cRXP_PICK_煤焦油桶|r。为|cRXP_Loot_煤焦|r抢劫它
    .complete 14404,3 --Coal Tar (1)
step
    #optional
    #completewith next
    .goto 179,37.05,86.81,6 >>进入海沃德渔场
step
    .goto 179,37.46,87.15
    >>将|cRXP_Loot_Shipwright的工具|r从里面的地上偷走
    .complete 14404,1 --Shipwright's Tools (1)
step
    .goto 179,36.09,86.44
    >>在地面上掠夺|cRXP_Loot_木板|r
    .complete 14404,2 --Planks of Wood (1)
step
    #requires Castaways
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞巴斯蒂安·海瓦尔德|r
    .turnin 14404 >>交任务: |cRXP_FRIENDLY_丢三落四|r
    .turnin 14412 >>交任务: |cRXP_FRIENDLY_清理渔场|r
    .accept 14405 >>接任务: |cRXP_WARN_海路出逃|r
	.target Sebastian Hayward
step
    #completewith next
    .hs >>Hearth to Duskhaven
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格温·阿姆斯特|r
    .turnin 14405 >>交任务: |cRXP_FRIENDLY_海路出逃|r
    .accept 14465 >>接任务: |cRXP_WARN_前往格雷迈恩庄园|r
	.timer 32,Greymane Manor RP
	.target Gwen Armstead
step << skip
    #optional
    #label Manor01
    #completewith next
    >>|cRXP_WARN_等待RP|r
--XX add waypoint to tie to timer
step
    #optional
    #completewith next
    .goto 179,30.27,52.03,15,0
    .goto 179,29.54,51.55,15,0
    .goto 179,28.67,51.02,10 >>Enter Graymane Manor
step
    .goto 179,28.132,50.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米亚·格雷迈恩王后|r, 他在里面
    .turnin 14465 >>交任务: |cRXP_FRIENDLY_前往格雷迈恩庄园|r
    .accept 14466 >>接任务: |cRXP_WARN_国王的瞭望台|r
	.target Queen Mia Greymane
step
    #optional
    #label Manor1
    #completewith AlasGilneas
    .goto 179,27.89,48.10,15,0
    .goto 179,27.11,48.12,15 >>上楼去阳台
step
    #optional
    #label Manor2
    #requires Manor1
    #completewith AlasGilneas
    .goto 179,26.16,46.41,10,0
    .goto 179,26.74,46.34,10 >>登上庄园的塔顶
step
    #label AlasGilneas
    .goto 179,26.44,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r, 他在塔上
	>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
    .turnin 14466 >>交任务: |cRXP_FRIENDLY_国王的瞭望台|r
    .turnin 14467 >>交任务: |cRXP_FRIENDLY_天哪，吉尔尼斯！|r
    .accept 24438 >>接任务: |cRXP_WARN_逃亡|r
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 179,29.12,51.80,20,0
    .goto 179,29.86,52.22,15 >>下塔，然后离开格雷曼庄园。向下跳向|cRXP_FRIENDLY_Stagecoach车厢|r
step
    .goto 179,28.90,54.22
    .isOnQuest 24438
    .vehicle >>输入|cRXP_FRIENDLY_Stagecoach Carriage|r
    .timer 80,Stagecoach Carriage Ride RP
    .target Stagecoach Carriage
step
    .isOnQuest 24438
    .goto 179,51.81,80.49,10 >>|cRXP_WARN_等待RP|r
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r
    .turnin 24438 >>交任务: |cRXP_FRIENDLY_逃亡|r
    .accept 24468 >>接任务: |cRXP_WARN_沼泽困境|r
	.target Prince Liam Greymane
step
    #loop
    .goto 179,53.08,74.25,0
    .goto 179,52.73,72.07,0
    .goto 179,52.23,68.59,0
    .goto 179,53.08,74.25,45,0
    .goto 179,52.04,73.67,45,0
    .goto 179,51.75,72.92,45,0
    .goto 179,51.41,71.57,45,0
    .goto 179,52.73,72.07,45,0
    .goto 179,53.59,71.89,45,0
    .goto 179,53.95,73.95,45,0
    .goto 179,53.56,68.69,45,0
    .goto 179,52.23,68.59,45,0
    .goto 179,50.45,68.07,45,0
    .goto 179,51.46,69.67,45,0
    >>通过杀死正在攻击它们的|cRXP_ENEMY_Swamp Crocolis|r来保存|cRXP_FRIENDLY_Crash Survivors|r 
    .complete 24468,1 --Crash Survivor rescued (5)
	.mob Swamp Crocolisk
    .target Crash Survivor
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r
    .turnin 24468 >>交任务: |cRXP_FRIENDLY_沼泽困境|r
    .accept 24472 >>接任务: |cRXP_WARN_恰当的欢迎|r
	.target Prince Liam Greymane
step
    #optional
    #completewith Koroth
    .goto 179,50.38,84.87,15,0
    .goto 179,48.88,84.64,15,0
    .goto 179,48.14,85.41,15,0
    .goto 179,46.74,83.20,12 >>前往|cRXP_LOOT_Koroth旗|r山顶
step
    #sticky
    #label Ogres
    #loop
    .goto 179,46.93,85.06,0
    .goto 179,50.56,85.62,0
    .waypoint 179,46.93,85.06,45,0
    .waypoint 179,45.77,87.30,45,0
    .waypoint 179,45.77,88.95,45,0
    .waypoint 179,45.26,87.21,45,0
    .waypoint 179,48.10,86.57,45,0
    .waypoint 179,49.25,83.82,45,0
    .waypoint 179,50.56,85.62,45,0
    >>杀死|cRXP_ENEMY_Ogre小黄人|r
    .complete 24472,1 --Ogre Minion slain (4)
	.mob Ogre Minion
step
    #label Koroth
    .goto 179,46.74,83.20
    >>地面上的抢劫|cRXP_Loot_Koroth的横幅|r
    .complete 24472,2 --Koroth's Banner (1)
step
    #requires Ogres
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利亚姆·格雷迈恩王子|r
    .turnin 24472 >>交任务: |cRXP_FRIENDLY_恰当的欢迎|r
    .accept 24483 >>接任务: |cRXP_WARN_风谷村|r
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 179,53.19,84.01,30,0
    .goto 179,55.27,87.50,30,0
    .goto 179,58.49,91.88,30,0
    .goto 179,59.33,92.34,12,0
    .goto 179,59.84,91.92,6 >>输入|cRXP_FRIENDLY_Gwen Armstead|r在Stormglen的房子
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格温·阿姆斯特|r, 他在里面
    .turnin 24483 >>交任务: |cRXP_FRIENDLY_风谷村|r
    .accept 24484 >>接任务: |cRXP_LOOT_害虫控制|r
	.target Gwen Armstead
step
    #sticky
    #label Stormglen
    .goto 179,60.06,91.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_薇拉·阿尔尼斯|r, 他在里面
    .home >>将你的炉石设置为风暴峡谷村
    .isQuestAvailable 24495
step
    .goto 179,60.26,91.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗娜·克罗雷|r, 他在里面
    .accept 24495 >>接任务: |cRXP_WARN_破碎的往昔|r
	.target Lorna Crowley
step
    #optional
    #requires Stormglen
    #completewith next
    .goto 179,60.44,91.30,8 >>Exit the house
step
    #sticky
    #requires Stormglen
    #label JournalP
    #loop
    .goto 179,62.32,92.85,0
    .goto 179,65.14,90.76,0
    .goto 179,67.36,92.29,0
    .goto 179,62.32,92.85,15,0
    .goto 179,62.98,92.74,15,0
    .goto 179,63.84,91.65,15,0
    .goto 179,64.33,90.99,15,0
    .goto 179,64.82,90.71,15,0
    .goto 179,65.14,90.76,15,0
    .goto 179,65.45,90.92,15,0
    .goto 179,65.78,90.96,15,0
    .goto 179,65.22,92.46,15,0
    .goto 179,65.48,91.64,15,0
    .goto 179,65.91,90.76,15,0
    .goto 179,66.40,90.82,15,0
    .goto 179,67.18,90.80,15,0
    .goto 179,67.41,91.41,15,0
    .goto 179,67.36,92.29,15,0
    >>Loot |cRXP_LOOT_Old Journal Pages|r on the ground
    .complete 24495,1 --Old Journal Page (6)
step
    #requires Stormglen
    #loop
    .goto 179,65.32,92.71,0
    .goto 179,65.53,88.51,0
    .goto 179,65.59,90.93,0
    .goto 179,65.32,92.71,45,0
    .goto 179,66.30,91.16,45,0
    .goto 179,67.59,92.29,45,0
    .goto 179,67.50,88.31,45,0
    .goto 179,65.53,88.51,45,0
    .goto 179,62.70,91.02,45,0
    .goto 179,63.53,89.30,45,0
    .goto 179,63.64,91.38,45,0
    .goto 179,65.12,91.93,45,0
    .goto 179,65.59,90.93,45,0
    >>杀死|cRXP_ENEMY_Vilebrood滑雪者|r
    .complete 24484,1 --Vilebrood Skitterer slain (6)
	.mob Vilebrood Skitterer
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>Enter the house
step
    #requires JournalP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lorna Crowley|r and |cRXP_FRIENDLY_Gwen Armstead, 他在里面
    .turnin 24495 >>交任务: |cRXP_FRIENDLY_破碎的往昔|r
    .goto 179,60.26,91.85
	.target +Lorna Crowley
    .turnin 24484 >>交任务: |cRXP_FRIENDLY_害虫控制|r
    .accept 24501 >>接任务: |cRXP_WARN_蛛后的麻烦|r
    .goto 179,59.86,91.71
	.target +Gwen Armstead
step
    .goto 179,68.35,81.65
    >>杀死|cRXP_ENEMY_Rygna|r
    .complete 24501,1 --Rygna slain (1)
	.mob Rygna
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>Enter the house
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Gwen Armstead|r and |cRXP_FRIENDLY_Lorna Crowley, 他在里面
    .turnin 24501 >>交任务: |cRXP_FRIENDLY_蛛后的麻烦|r
    .goto 179,59.86,91.71
	.target +Gwen Armstead
    .accept 24578 >>接任务: |cRXP_WARN_黑瘴林|r
    .goto 179,60.26,91.85
	.target +Lorna Crowley
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝瑞莎·星风|r
    .turnin 24578 >>交任务: |cRXP_FRIENDLY_黑瘴林|r
    .accept 24616 >>接任务: |cRXP_WARN_反跟踪|r
	.target Belysra Starbreeze
step
    #optional
    #sticky
    #label Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura 70794 >>|cRXP_WARN_驶入道路，卡在|r|T134916:0|t[冰冻陷阱]|cRXP_WARN_并召唤|cRXP_ENEMY_黑暗侦察兵|r。使用|r|T133443:0|t[贝利斯拉的符师]|cRX P_WARN__驱散|r|T1 34916:0| t[冻结陷阱]
    .use 49944
step
    #optional
    #sticky
    #requires Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura -70794 >>|cRXP_WARN_Use|r|T133443:0|t[贝利斯拉的符师]|cRXP_WARN_to驱散|r|T134916:0|t[冰冻陷阱]
    .use 49944
--XXZ Currently doesnt work (aura needs to count debuffs)
step
    #label Scout
    .goto 179,64.12,80.52
    >>杀死|cRXP_ENEMY_Dark Scout|r
    .complete 24616,1 --Dark Scout slain (1)
	.mob Dark Scout
    .use 49944
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝瑞莎·星风|r
    .turnin 24616 >>交任务: |cRXP_FRIENDLY_反跟踪|r
    .accept 24617 >>接任务: |cRXP_WARN_塔多伦，野性的家园|r
	.target Belysra Starbreeze
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r
    .turnin 24617 >>交任务: |cRXP_FRIENDLY_塔多伦，野性的家园|r
    .accept 24627 >>接任务: |cRXP_WARN_兵临城下|r
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法珊德拉·暴风爪|r
    .accept 24628 >>接任务: |cRXP_WARN_仪式前的准备|r
	.target Vassandra Stormclaw
step
    #sticky
    #label Banshees
    #loop
    .goto 179,64.34,75.55,0
    .goto 179,60.44,78.54,0
    .goto 179,64.23,72.55,0
    .goto 179,64.34,75.55,45,0
    .goto 179,61.21,77.57,45,0
    .goto 179,61.38,79.02,45,0
    .goto 179,61.86,79.10,45,0
    .goto 179,60.44,78.54,45,0
    .goto 179,60.19,80.23,45,0
    .goto 179,60.41,76.88,45,0
    .goto 179,59.79,75.62,45,0
    .goto 179,63.38,74.31,45,0
    .goto 179,64.23,72.55,45,0
    >>杀死|cRXP_ENEMY_Howling Banshees|r
    .complete 24627,1 --Howling Banshee slain (6)
	.mob Howling Banshee
step
    #optional
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>地面上的织机|cRXP_Loot_Moonleaf|r
    *|cRXP_WARN_You can see the location of |cRXP_LOOT_Moonleaf|r on your minimap if you have|r |T133939:0|t[Find Herbs] |cRXP_WARN_enabled|r
    .complete 24628,1 --Moonleaf (6)
	.skill herbalism,1,1
step
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>地面上的织机|cRXP_Loot_Moonleaf|r
    .complete 24628,1 --Moonleaf (6)
    .skill herbalism,<1,1
step
    #requires Banshees
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r
    .turnin 24627 >>交任务: |cRXP_FRIENDLY_兵临城下|r
    .accept 24646 >>接任务: |cRXP_WARN_夺回镰刀|r
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法珊德拉·暴风爪|r
    .turnin 24628 >>交任务: |cRXP_FRIENDLY_仪式前的准备|r
	.target Vassandra Stormclaw
step
    #optional
    #label Taldoren
    #completewith ScytheOfElune
    .goto 179,58.14,75.79
    .cast 71061 >>|cRXP_WARN_使用|r|T134229:0|t[塔尔多伦之角]|cRXP_WARN_to分散|r|cRXP-ENEMY_资深黑暗游侠的注意力|r
    .use 50134
    .unitscan Veteran Dark Ranger
step
    #optional
    #requires Taldoren
    #completewith ScytheOfElune
    .goto 179,57.85,75.95,8 >>Enter the house
step
    #label ScytheOfElune
    .goto 179,57.51,75.59
	>>打开里面的|cRXP_PICK_Worn Coffer|r。为|cRXP_Loot_Mysterious Artifact|r掠夺它
    .complete 24646,1 --Mysterious Artifact (1)
    .use 50134
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r
    .turnin 24646 >>交任务: |cRXP_FRIENDLY_夺回镰刀|r
    .accept 24593 >>接任务: |cRXP_WARN_非人非兽|r
	.target Lord Darius Crowley
step
    >>从|cRXP_PICK_愤怒之井|r、|cRXP_PICK_平静之井|r和|cRX_PICK_平衡之井|尔中饮用
    .complete 24593,1 --Well of Fury (1)
    .goto 179,68.98,72.80,-1
    .complete 24593,2 --Well of Tranquility (1)
    .goto 179,69.26,73.10,-1
    .complete 24593,3 --Well of Balance (1)
    .goto 179,69.14,73.52,-1
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r
    .turnin 24593 >>交任务: |cRXP_FRIENDLY_非人非兽|r
    .accept 24673 >>接任务: |cRXP_WARN_返回风谷村|r
	.target Lord Darius Crowley
step
    #completewith next
    .hs >>Hearth to Stormglen
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格温·阿姆斯特|r, 他在里面
    .turnin 24673 >>交任务: |cRXP_FRIENDLY_返回风谷村|r
    .accept 24672 >>接任务: |cRXP_WARN_勇敢向前|r
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,60.44,91.30,8,0
    .goto 179,68.80,85.65,45,0
    .goto 179,72.02,82.07,30,0
    .goto 179,72.73,80.05,12 >>前往|cRXP_FRIENDLY_Krennas Aranas|r
step
    .goto 179,72.73,80.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennas Aranas|r
    .turnin 24672 >>交任务: |cRXP_FRIENDLY_勇敢向前|r
    .accept 24592 >>接任务: |cRXP_WARN_风暴海崖的背叛|r
	.target Krennas Aranas
step
    #optional
    #label Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75
    .subzone 4788 >>前往暴风城
step
    #optional
    #sticky
    #label KrennanStealth
    #requires Walden1
    #completewith TempestBetrayal
    .cast 70456 >>|cRXP_WARN_Use|r|T135446:0|t[Krennan的潜行药剂]|cRXP_WARN_to being|r|T132320:0|t[Stealted]
    >>|cRXP_WARN_当|r|T132320:0|t[潜行]|cRXP_WARN_时，你可以施放大多数法术。进入战斗时|r|T132320:0|t[潜行]|cRXP_WARN_breaks|r 
    >>|cRXP_WARN_注：|cRXP_ENEMY_Mountain Mastiff|r已增加|r|T132320:0|t[Stealth]|cRXP-WARN_detection|r
    .use 50218
step
    #optional
    #sticky
    #requires KrennanStealth
    #completewith TempestBetrayal
    +|cRXP_WARN_如果你的|r|T132320:0|t[Stealth]|cRXP_WARN_breaks，使用|r|T135446:0|t[Krennan's Potion of Stealth]|cRXP-WARN_tobe|r|T232320:0| t[Steadd]|cRX P_WARN_gain（在战斗中使用）|r
    >>|cRXP_WARN_当|r|T132320:0|t[潜行]|cRXP_WARN_时，你可以施放大多数法术。进入战斗时|r|T132320:0|t[潜行]|cRXP_WARN_breaks|r
    >>|cRXP_WARN_注：|cRXP_ENEMY_Mountain Mastiff|r已增加|r|T132320:0|t[Stealth]|cRXP-WARN_detection|r
    .use 50218
step
    #optional
    #requires Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75,15,0
    .goto 179,76.84,72.10,12,0
    .goto 179,76.88,71.32,12,0
    .goto 179,78.25,70.46,15,0
    .goto 179,79.25,67.92,15,0
    .goto 179,79.29,64.84,35 >>小心地在建筑物和山丘之间向|cRXP_ENEMY_Lord Walden|r行进
step
    #label Walden
    .goto 179,79.29,64.84,30,0
    .goto 179,78.25,65.86,6,0
    .goto 179,78.03,66.47,4,0
    .goto 179,77.83,66.14,4,0
    .goto 179,78.20,65.97,4,0
    .goto 179,78.11,66.23
    >>杀死|cRXP_ENEMY_沃尔登勋爵|r
    >>|cRXP_WARN_他在屋外和楼上的屋内巡逻|r
    >>|cRXP_WARN_当他施放|r|T132797:0|t[调味白兰地]|cRXP_WARN_（范围瞬间：眩晕4秒并造成伤害）时要小心|r
    .complete 24592,2 --Lord Walden slain (1)
	.mob Lord Walden
step
    #optional
    #completewith next
    .goto 179,82.67,69.63,30,0
    .goto 179,84.22,72.50,30,0
    .goto 179,85.47,73.25,15,0
    .goto 179,79.29,64.84,35 >>前往|cRXP_ENEMY_Baron Ashbury|r
step
    #label Ashbury
    .goto 179,85.44,74.22,15,0
    .goto 179,84.93,74.37,15,0
    .goto 179,84.21,74.80
    >>杀死|cRXP_ENEMY_Baron Ashbury|r
    >>|cRXP_WARN_他在家门口巡逻|r
    .complete 24592,1 --Baron Ashbury slain (1)
	.mob Baron Ashbury
step
    #label TempestBetrayal
    .goto 179,78.28,72.07
    .use 50218 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r
    .turnin 24592 >>交任务: |cRXP_FRIENDLY_风暴海崖的背叛|r
    .accept 24677 >>接任务: |cRXP_WARN_包抄被遗忘者|r
	.target King Genn Greymane
step
    #completewith next
    .goto 179,78.33,71.88
    .vehicle >>对话: |cRXP_FRIENDLY_赫维尔勋爵|r, |cRXP_FRIENDLY_壮实的高山马|r, |cRXP_FRIENDLY_罗娜·克罗雷|r
    .timer 100.5,Flank the Forsaken RP
    .target Lord Hewell
    .skipgossip 38764,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗娜·克罗雷|r, |cRXP_FRIENDLY_麦格达·白墙|r, |cRXP_FRIENDLY_玛库斯|r
    .turnin 24677 >>交任务: |cRXP_FRIENDLY_包抄被遗忘者|r
    .accept 24575 >>接任务: |cRXP_WARN_解放村民|r
    .goto 179,70.88,39.84
	.target +Lorna Crowley
    .accept 24675 >>接任务: |cRXP_WARN_最后的美餐|r
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .accept 24674 >>接任务: |cRXP_WARN_揭竿而起|r
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
step
    #loop
    .goto 179,75.70,39.60,0
    .goto 179,76.24,45.37,0
    .goto 179,77.83,35.81,0
    .goto 179,75.70,39.60,45,0
    .goto 179,76.12,42.77,45,0
    .goto 179,76.24,45.37,45,0
    .goto 179,77.22,46.97,45,0
    .goto 179,78.11,43.54,45,0
    .goto 179,78.05,38.73,45,0
    .goto 179,77.83,35.81,45,0
    >>杀死|cRXP_ENEMY_Brown雄鹿|r。掠夺它们获取|cRXX_Loot_Sides of Stag Meat|r
    .complete 24675,1 --Side of Stag Meat (10)
	.mob Brown Stag
step
    #sticky
    #label Enslaved
    #loop
    .goto 179,75.71,31.17,0
    .waypoint 179,82.16,30.73,20,0
    .waypoint 179,81.95,26.18,20,0
    .waypoint 179,78.75,25.15,20,0
    .waypoint 179,79.37,27.64,20,0
    >>杀死|cRXP_ENEMY_Forsaken Slavedrivers|r。掠夺它们|T134247:0|t|cRXP-Loot_[奴隶的钥匙]|r
    >>使用Emberstone矿内和周围|cRXP_FRIENDLY_被翻译村民|r的|cRXP_PICK_球和链|r上的|T134247:0|t|cRXP_LOOT_[奴隶的钥匙]|r来释放他们
    .collect 49881,5,24575,1,-1 --Slaver's Key (5)
    .complete 24575,1 --Enslaved Gilnean freed (5)
	.mob Forsaken Slavedriver
	.target Enslaved Villagers
--XX may need key drop
step
    #optional
    #label Emberstone1
    #completewith Brothogg
    .goto 179,76.71,30.84,10 >>Enter Emberstone Mine
    .isOnQuest 24674
step
    #optional
    #requires Emberstone1 
    #completewith Brothogg
    .goto 179,78.13,24.95,15,0
    .goto 179,79.39,26.51,15 >>前往|cRXP_ENEMY_Brothogg内部的奴隶主|r
    .isOnQuest 24674
step
    #label Brothogg
    .goto 179,80.32,32.11
    >>Kill |cRXP_ENEMY_Brothogg the Slavemaster|r inside
    .complete 24674,1 --Brothogg the Slavemaster slain (1)
	.mob Brothogg the Slavemaster
step
    #optional
    #requires Enslaved 
    #completewith next
    .goto 179,76.71,30.84,10 >>Exit Emberstone Mine
    .subzoneskip 4732,1 
step << skip
    #requires Enslaved
	#completewith next
    .deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
    .subzoneskip 4732,1
--XX skipping because theres 0 repair vendors in Gilneas past duskhaven?
step
    #requires Enslaved
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦格达·白墙|r, |cRXP_FRIENDLY_玛库斯|r, |cRXP_FRIENDLY_罗娜·克罗雷|r
    .turnin 24675 >>交任务: |cRXP_FRIENDLY_最后的美餐|r
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .turnin 24674 >>交任务: |cRXP_FRIENDLY_揭竿而起|r
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
    .turnin 24575 >>交任务: |cRXP_FRIENDLY_解放村民|r
    .accept 24676 >>接任务: |cRXP_WARN_手刃仇人|r
    .goto 179,70.88,39.84
	.target +Lorna Crowley
step
    #sticky
    #label Infantry
    #loop
	.goto 179,74.71,27.21,0
	.goto 179,73.51,30.96,0
	.goto 179,71.72,31.08,0
	.waypoint 179,74.71,27.21,45,0
	.waypoint 179,74.95,27.98,45,0
    .waypoint 179,73.54,29.99,45,0
	.waypoint 179,73.51,30.96,45,0
    .waypoint 179,72.88,29.98,45,0
	.waypoint 179,72.30,30.37,45,0
    .waypoint 179,71.90,29.52,45,0
	.waypoint 179,71.72,31.08,45,0
    >>杀死|cRXP_ENEMY_被遗忘的步兵|r
	.complete 24676,1 --Forsaken Infantry slain (4)
	.mob Forsaken Infantry
step
    #sticky
    #label Cornell
	.goto 179,72.86,28.42
    >>杀死|cRXP_ENEMY_Executor Cornell|r
    .complete 24676,2 --Executor Cornell (1)
	.mob Executor Cornell
step
	.goto 179,74.15,27.40
    >>杀死|cRXP_ENEMY_Valov the Mad|r
    .complete 24676,3 --Valnov the Mad slain (1)
	.mob Valnov the Mad
step
    #optional
    #requires Cornell
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Infantry
    .goto 179,70.88,39.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗娜·克罗雷|r
    .turnin 24676 >>交任务: |cRXP_FRIENDLY_手刃仇人|r
    .accept 24904 >>接任务: |cRXP_WARN_吉尔尼斯城保卫战|r
	.target Lorna Crowley
step
    .isOnQuest 24904
    .goto 179,70.049,40.897
    .gossip 38553,0 >>对话: |cRXP_FRIENDLY_克雷南·阿朗纳斯|r
    >>|cRXP_WARN_在这个过程中，你将没有箭头可以跟随，因为你可能会被传送到Gilneas的一个随机位置。密切关注|cRXP_FRIENDLY_Pince Liam Greymane|r和|cRXP_FRIENDLY_Lord Darius Crowley|r|r
    .skipgossip 38553,1
    .target Krennan Aranas
step
    .isOnQuest 24904
    >>|cRXP_WARN_跟随|cRXP_FRIENDLY_Pince Liam Greymane|r和|cRXP_FRIENDLY_Lord Darius Crowley|r通过Gilneas|r
    .use 50334 >>|cRXP_WARN_使用|r|T135340:0|t[Gilnean Patriots]|cRXP_WARN_on您的|cRXP_FRIENDLY_Gilnean Militia|r守护者来增加他们的速度和生命恢复|r
    >>|cRXP_WARN_输入|cRXP_FRIENDLY_Emberstone Cannon|r和|cRXP_FRIENDLY_Damaged Catapult|r以击败|cRXP_ENEMY_Vile Abominations|r和| r|cRXP_ENEMY_Gorerot|r
    >>|cRXP_WARN_击败|cRXP_ENEMY_Lady Sylvanas Windrunner|r，使其达到40%的生命值|r
    .complete 24904,1 --Battle for Gilneas City Complete (1)
    .timer 17,The Battle for Gilneas City RP
    .target Prince Liam Greymane
    .target Lord Darius Crowley
    .target Emberstone Cannon
    .target Damaged Catapult
    .mob Vile Abomination
    .mob Gorerot
    .mob Lady Sylvanas Windrunner
step
    #optional
    #completewith next
    >>|cRXP_WARN_等待RP|r
    .goto 202,36.89,59.09,8 >>Enter the house
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 对话: |cRXP_FRIENDLY_罗娜·克罗雷|r, 他在里面
    .turnin 24904 >>交任务: |cRXP_FRIENDLY_吉尔尼斯城保卫战|r
    .accept 24902 >>接任务: |cRXP_WARN_追踪希尔瓦娜斯|r
    .timer 170,The Hunt For Sylvanas RP
	.target Lorna Crowley
step
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_密切关注|cRXP_FRIENDLY_Tobias Mistmant|r，否则他将无法移动，可能会逃跑|r
    >>|cRXP_WARN_跟着他，直到他躲在大教堂的水里，然后等RP出来|r
    >>|cRXP_WARN_如果|cRXP_FRIENDLY_Tobias Mistmant|r出现故障，请跳过此步骤|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24902
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>返回|cRXP_FRIENDLY_Lorna Crowley|r
    .isQuestComplete 24902
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 对话: |cRXP_FRIENDLY_罗娜·克罗雷|r, 他在里面
    .turnin 24902 >>交任务: |cRXP_FRIENDLY_追踪希尔瓦娜斯|r
    .accept 24903 >>接任务: |cRXP_WARN_复仇或是生存|r
	.target Lorna Crowley
    .isQuestComplete 24902
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 对话: |cRXP_FRIENDLY_罗娜·克罗雷|r, 他在里面
    .accept 24903 >>接任务: |cRXP_WARN_复仇或是生存|r
	.target Lorna Crowley
    .isQuestTurnedIn 24902
step
    #optional
    #completewith next
    .abandon 24902 >>放弃对西尔瓦纳斯的追捕
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t 对话: |cRXP_FRIENDLY_罗娜·克罗雷|r, 他在里面
    .accept 24902 >>接任务: |cRXP_WARN_追踪希尔瓦娜斯|r
    .timer 193.5,The Hunt For Sylvanas RP
	.target Lorna Crowley
step
    #optional
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_密切关注|cRXP_FRIENDLY_Tobias Mistmant|r，否则他将无法移动，可能会逃跑|r
    >>|cRXP_WARN_跟着他，直到他躲在大教堂的水里，然后等RP出来|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24092
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>返回|cRXP_FRIENDLY_Lorna Crowley|r
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗娜·克罗雷|r, 他在里面
    .turnin 24902 >>交任务: |cRXP_FRIENDLY_追踪希尔瓦娜斯|r
    .accept 24903 >>接任务: |cRXP_WARN_复仇或是生存|r
	.target Lorna Crowley
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗娜·克罗雷|r, 他在里面
    .accept 24903 >>接任务: |cRXP_WARN_复仇或是生存|r
	.target Lorna Crowley
step
    #optional
    #requires GennHouse1
    #completewith Vengeance
    .goto 202,32.10,58.01,8 >>进入|cRXP_FRIENDLY_King Genn Greymane|r的房子
step
    #label Vengeance
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r
    .turnin 24903 >>交任务: |cRXP_FRIENDLY_复仇或是生存|r
    .accept 24920 >>接任务: |cRXP_WARN_拖延不可避免的局势|r
	.target King Genn Greymane
step
    #optional
    #label RidingBat
    #completewith Survival
    .goto 202,30.24,60.96
    .vehicle >>输入|cRXP_FRIENDLY_Captured Riding Bat|r
    .timer 21,Slowing the Inevitable RP
    .target Captured Riding Bat
step
    #optional
    #requires RidingBat
    #completewith Survival
    .goto 179,57.11,39.50,5 >>|cRXP_WARN_等待RP|r
step
    #label Survival
    .goto 179,54.83,35.83,-1
    .goto 179,56.43,28.49,-1
    .goto 179,56.77,20.70,-1
    .goto 179,57.12,15.66,-1
    .goto 179,61.45,19.86,-1
    .goto 179,64.89,27.43,-1
    .goto 179,61.30,35.14,-1
    >>在|cRXP_FRIENDLY_Captured Riding Bat|r上时：
    >>杀死|cRXP_ENEMY_Forsaken瘟疫锻造师|r、|cRXD_ENEMY_Forsaken入侵者|r和|cRXP_ENEMY_Forsaken弹射器|r
    >>施法|T133709:0|t[铁弹]（1）（远程瞬发：造成伤害）
    .complete 24920,2 --Invading Forsaken (40)
    .complete 24920,1 --Forsaken Catapult slain (6)
    .mob Forsaken Catapult
    .mob Invading Forsaken
step
    #optional
    #completewith next
    >>在|cRXP_FRIENDLY_Captured Riding Bat|r上时：
    .goto 202,30.43,60.88,5 >>铸造|T132182:0|t[飞回]（2）返回|cRXP_FRIENDLY_King Genn Greymane|r
step
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·格雷迈恩国王|r
    .turnin 24920 >>交任务: |cRXP_FRIENDLY_拖延不可避免的局势|r
    .accept 24678 >>接任务: |cRXP_WARN_齐膝的危险|r
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 202,33.75,57.09,6 >>下楼到地下室
step
    #optional
    #completewith Knee
    .goto 179,53.56,55.10,20,0
    .goto 179,49.87,57.26,10,0
    >>|cRXP_WARN_使用|r|T135432:0|t[半燃火炬]|cRXP_WARN_to吓跑|cRXP_ENEMY_Putrescent Maggots|r、|cRXD_ENEMY_Underground Spiders|r和|r|cRXT_ENEMY_Graveyard Rats|r
    .goto 179,49.78,57.88,6 >>走向墓穴的尽头
    .mob Putrescent Maggot
    .mob Underground Spider
    .mob Graveyard Rat
    .use 50220
step
    #label Knee
    .goto 179,49.71,57.28,8,0
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷南·阿朗纳斯|r, 他在外面
    .turnin 24678 >>交任务: |cRXP_FRIENDLY_齐膝的危险|r
    .accept 24602 >>接任务: |cRXP_WARN_入土为安|r
    .target Krennan Aranas
step
    #loop
    .goto 179,48.60,54.28,0
    .goto 179,46.85,54.23,0
    .goto 179,46.71,56.03,0
    .goto 179,49.33,49.77,0
    .goto 179,51.18,54.22,0
    .goto 179,48.60,54.28,15,0
    .goto 179,48.08,54.11,15,0
    .goto 179,47.59,53.54,15,0
    .goto 179,46.85,54.23,15,0
    .goto 179,48.04,56.35,15,0
    .goto 179,46.71,56.03,15,0
    .goto 179,45.76,54.87,15,0
    .goto 179,45.80,53.49,15,0
    .goto 179,46.79,53.32,15,0
    .goto 179,48.82,50.70,15,0
    .goto 179,49.33,49.77,15,0
    .goto 179,51.01,53.23,15,0
    .goto 179,51.18,54.22,15,0
    >>打开地面上的|cRXP_PICK_扰动土|r。掠夺它的|cRXP_Loot_Unearth Memento|r
    .complete 24602,1 --Unearthed Memento (5)
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷南·阿朗纳斯|r
    .turnin 24602 >>交任务: |cRXP_FRIENDLY_入土为安|r
    .accept 24679 >>接任务: |cRXP_WARN_先祖的祝福|r
    .target Krennan Aranas
step
    .goto 179,48.89,53.14
    >>将|T134344:0|t[圣物]放在神社
	>>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
    .complete 24679,1 --Offering placed (1)
    .use 51956
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷南·阿朗纳斯|r
    .turnin 24679 >>交任务: |cRXP_FRIENDLY_先祖的祝福|r
    .accept 24680 >>接任务: |cRXP_WARN_覆舟海湾|r
	.target Krennan Aranas
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r
    .turnin 24680 >>交任务: |cRXP_FRIENDLY_覆舟海湾|r
    .accept 24681 >>接任务: |cRXP_WARN_他们有盟友，我们也有|r
	.target Lord Darius Crowley
step
    #optional
    #label Glaive
	#completewith Allies
    .goto 179,42.47,37.84
    .vehicle >>输入|cRXP_FRIENDLY_Glaive Thrower|r
    .target Glaive Thrower
step
    #optional
    #requires Glaive
    #completewith Allies
    .goto 179,40.32,38.58,20,0
    .goto 179,35.59,35.80
    >>在|cRXP_FRIENDLY_Glaive Thrower|r中时：
    .subzone 4725 >>前往海岬
step
    #label Allies
    #loop
    .goto 179,35.03,36.16,0
    .goto 179,31.05,20.09,0
    .goto 179,28.07,23.84,0
    .goto 179,26.35,29.74,0
    .goto 179,30.78,38.88,0
    .goto 179,35.03,36.16,60,0
    .goto 179,31.05,20.09,60,0
    .goto 179,29.52,21.20,60,0
    .goto 179,28.07,23.84,60,0
    .goto 179,27.64,25.32,60,0
    .goto 179,26.83,26.13,60,0
    .goto 179,27.64,27.00,60,0
    .goto 179,26.35,29.74,60,0
    .goto 179,26.56,31.40,60,0
    .goto 179,30.78,38.88,60,0
    >>在|cRXP_FRIENDLY_Glaive Thrower|r中时：
    >>杀死|cRXP_ENEMY_兽人突袭者|r、|cRXP_ENEMY_Wolfmaw Outrider|r和|cRXX_ENEMY_Orcish War Machines|r
    >>施法|T132330:0|t[发射Glaive]（1）（远程瞬发：造成伤害并反击）
    >>|T236303:0|t[玻璃弹幕]（2）（远程瞬发：造成大量伤害并反击）
    >>|T136106:0|t[双倍速度]（3）（自瞬：移动速度提高100%，持续10秒）
    >>|cRXP_WARN_不要让|cRXP_FRIENDLY_Glaive Thrower|r死亡|r
    .complete 24681,1 --Orc Raider slain (40)
    .complete 24681,2 --Wolfmaw Outrider slain (8)
    .complete 24681,3 --Orcish War Machine slain (4)
step
    #optional
    #completewith next
    .goto 179,41.93,37.60
    >>在|cRXP_FRIENDLY_Glaive Thrower|r中时：
    >>施法|T136106:0|t[双倍速度]（3）（自瞬：移动速度提高100%，持续10秒）
    .subzone 4726 >>Return to Keel Harbor
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达利乌斯·克罗雷领主|r
    .turnin 24681 >>交任务: |cRXP_FRIENDLY_他们有盟友，我们也有|r
	.target Lord Darius Crowley
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗娜·克罗雷|r
    .accept 26706 >>接任务: |cRXP_WARN_最后的较量|r
	.target Lorna Crowley
step
	#completewith next
    .goto 179,41.65,36.14
    >>|cRXP_WARN_注：此任务使用独立计时器，这意味着您需要等待5分钟才能进入|r|cRXP_FRONDLY_Hippogryph|r
    .vehicle >>输入|cRXP_FRIENDLY_Hippogryph|r
	.timer 58,Endgame RP
step
    >>杀死顶层甲板上的|cRXP_ENEMY_炮舰Grunts|r
    >>清除顶层甲板后，单击船中间的|cRXP_PICK_Rope|r，跟随|cRXP-FRIENDLY_Lorna-Crowley|r
    >>在跟随|cRXP_FRIENDLY_Lorna Crowley|r时杀死|cRXP_ENEMY_Gunship Grunts|r
    >>|cRXP_WARN_|cRXP_FRIENDLY_Lorna Crowley|r引爆炸药后，等待RP结束|r
    .complete 26706,1 --Gunship destroyed (1)
	.timer 43,Endgame RP
    .mob Gunship Grunt
    .target Lorna Crowley
--XX Gunship moves, can't use waypoints and timer may be off
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗娜·克罗雷|r
    .turnin 26706 >>交任务: |cRXP_FRIENDLY_最后的较量|r
	.target Lorna Crowley
step
    .goto 179,42.59,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_夜风将军|r
    .accept 14434 >>接任务: |cRXP_WARN_鲁瑟兰村|r
    .turnin 14434 >>交任务: |cRXP_FRIENDLY_鲁瑟兰村|r
	.target Admiral Nightwind
step
    .goto 57,55.229,89.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克雷南·阿朗纳斯|r 
    .accept 28517 >>接任务: |cRXP_WARN_风嚎橡树|r
    .target Krennan Aranas
step
    #optional
    #label Darnassus
    #completewith Oak
    .goto 57,55.045,88.301
    .zone 89 >>穿过入口到达达纳苏斯
--XX Training around here
step
    #optional
    #requires Darnassus
    #completewith Oak
    .goto 89,48.960,19.200,20,0
    .goto 89,48.126,14.432,60 >>Enter The Howling Oak
step
    #label Oak
    .goto 89,48.126,14.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉恩·格雷迈恩|r
    .turnin 28517 >>交任务: |cRXP_FRIENDLY_风嚎橡树|r
    .accept 26385 >>接任务: |cRXP_WARN_乘风破浪|r
    .target Genn Greymane
--XX no longer "King"
--XX No need to set hs as it adjusts automatically
--XX Accepting Breaking Waves closes Hero's Call Darkshore (supposedly)
step
    #optional
    #label DarkshoreTravel
    #completewith Darkshore
    .goto 89,48.960,19.200,20 >>Exit The Howling Oak
step
    #optional
    #requires DarkshoreTravel
    #completewith Darkshore
    .goto 89,36.547,50.413
    .zone 57 >>穿过入口返回Rut'Thean村
step
    #label Darkshore
    .goto 57,55.415,88.398
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Lor'Danel >>Fly to Lor'danel
    .target Vesprystus
    .zoneskip 62
]])
