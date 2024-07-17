RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP联盟种族解锁
#groupweight 5
-- #subgroup Maghar Orc
#name 01）Maghar兽人Questline
#displayname Maghar Orc

<< Horde !MagharOrc

step
    #completewith MagharOrcStartQuestline
    .zone 85 >>前往: |cRXP_PICK_奥格瑞玛|r
step
    .isOnQuest 49930
    .isQuestAvailable 49930
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r in Orgrimmar
    .turnin 49930 >>交任务: |cRXP_FRIENDLY_呼唤同盟|r
    .target Ji Firepaw
step
    .isQuestAvailable 50242
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 50242 >>接任务: |cRXP_WARN_选择盟友|r
    .target Ji Firepaw
step
    .isOnQuest 50242
    >>以任何顺序与横幅互动
    .goto 85,37.65,81.43
    .complete 50242,1 -- Learn more about the Highmountain Tauren
    .complete 50242,2 -- Learn more about the nightborne
    .complete 50242,3 -- Learn more about the Maghar Orcs
    .complete 50242,4 -- Learn more about the Zandalari trolls
    .complete 50242,5 -- Learn more about the Vulpera
step
    .isQuestComplete 50242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .goto 85,37.65,81.44
    .turnin 50242 >>Turn in A Choice of Allies
    .target Ji Firepaw
step
    #label MagharOrcStartQuestline
    .goto 85,37.77,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 53466 >>接任务: |cRXP_WARN_时光之眼|r
    .target Ji Firepaw
step
    #completewith next
    #title 把传送门带到祖尔达扎
    .goto 85,53.46,90.42,10,0
    .goto 85,58.56,91.31
    .zone 1163 >>把传送门带到祖尔达扎
step
    .goto 1163,67.03,73.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Telemancer Oculeth|r
    .turnin 53466 >>Turn in Vision of Time
    .accept 53467 >>接任务: |cRXP_WARN_时光之穴|r
    .target Chief Telemancer Oculeth
step
    #completewith next
    #title 前往: |cRXP_PICK_奥格瑞玛|r
    .goto 1163,73.83,69.92
    .zone 85 >>前往: |cRXP_PICK_奥格瑞玛|r
step
    #completewith next
    #title 带着通往楼下时间洞穴的传送门
    .goto 85,54.78,89.74,7,0
    .goto 85,54.64,87.12,7,0
    .goto 85,56.02,86.85,7,0
    .goto 85,56.41,92.56
    .zone 74 >>带着通往楼下时间洞穴的传送门
step
    .goto 74,66.05,28.47,20,0
    .goto 74,61.50,16.78,20,0
    .goto 74,65.75,26.35,20,0
    .goto 74,66.66,16.11,20,0
    .goto 74,50.46,19.50,30,0
    .goto 74,39.19,50.42,30,0
    .goto 75,41.74,49.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t沿着这条路往下走。与|cRXP_FRIENDLY_Anachronos|r交谈
    .turnin 53467 >>Turn in Caverns of Time
    .accept 53354 >>接任务: |cRXP_WARN_古尔丹的回响|r
    .target Anachronos
step << Mage
    .isOnQuest 53354
    .zoneskip 85
    .cast 3567>>Use 电话：Orgrimmar
step
    .zoneskip 85
    .isOnQuest 53354
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>使用协调的外衣
step
    .zoneskip 85
    .isOnQuest 53354
    .zone 627 >>使用达拉然炉石（如果你的玩具盒里有）
step
    .zoneskip 627,1
    .isOnQuest 53354
    .goto 627,55.27,23.97
    .zone 85 >>使用Orgrimmar门户
step
    .zoneskip 85
    .isOnQuest 53354
    #completewith next
    .goto 74,39.19,50.42,30,0
    .goto 74,50.46,19.50,30,0
    .goto 74,66.66,16.11,20,0
    .goto 74,65.75,26.35,20,0
    .goto 74,61.50,16.78,20,0
    .goto 74,66.05,28.47,20,0
    .goto 74,58.17,26.73
    .zone 85 >>前往: |cRXP_PICK_奥格瑞玛|r
step
    .isOnQuest 53354
    #completewith next
    .goto 85,53.20,90.46,10,0
    .goto 85,52.69,52.84
    .zone 50 >>前往: |cRXP_PICK_荆棘谷|r
step
    >>飞到时间裂缝并点击它。杀死古尔丹的|cRXP_ENEMY_Echo|r
    >>道奇液体地狱火。Sidestep Fel Efflux。中断死亡线圈
    .goto 17,54.42,50.49
    .complete 53354,1 --1/1 Echo of Gul'dan slain
    .mob Echo of Gul'dan
step
    .goto 17,54.40,50.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿纳克洛斯|r
    .turnin 53354 >>Turn in Echo of Gul'dan
    .accept 53353 >>接任务: |cRXP_WARN_督军扎伊拉的回响|r
    .target Anachronos
step
    #completewith next
    #title 前往: |cRXP_PICK_奥格瑞玛|r
    .goto 17,72.65,49.50
    .zone 85 >>前往: |cRXP_PICK_奥格瑞玛|r
step
    #completewith next
    #title Take the Portal to Jade Forest
    .goto 85,55.90,86.85,8,0
    .goto 85,54.53,87.12,8,0
    .goto 85,54.79,90.18,8,0
    .goto 85,57.47,92.26
    .zone 371 >>向上。走玉林之门
step
    >>飞到时间裂缝并点击它。杀死军阀Zaela的|cRXP_ENEMY_Echo|r
    .goto 379,68.60,46.08,15,0
    .goto 379,68.80,43.69
    .complete 53353,1 --1/1 Echo of Warlord Zaela slain
    .mob Echo of Warlord Zaela
step
    .goto 379,68.90,43.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿纳克洛斯|r
    .turnin 53353 >>Turn in Echo of Warlord Zaela
    .accept 53355 >>接任务: |cRXP_WARN_加尔鲁什·地狱咆哮的回响|r
    .target Anachronos
step << Mage
    .isOnQuest 53355
    .zoneskip 85
    .cast 3567>>Use 电话：Orgrimmar
step
    .zoneskip 85
    .isOnQuest 53355
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>使用协调的外衣
step
    .zoneskip 85
    .isOnQuest 53355
    .zone 627 >>使用达拉然炉石（如果你的玩具盒里有）
step
    .zoneskip 627,1
    .isOnQuest 53355
    .goto 627,55.27,23.97
    .zone 85 >>使用Orgrimmar门户
step
    .zoneskip 85
    .isOnQuest 53355
    #completewith next
    .goto 371,28.52,14.02
    .zone 85 >>前往: |cRXP_PICK_奥格瑞玛|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往: |cRXP_PICK_杜隆塔尔|r. 对话: |cRXP_FRIENDLY_阿纳克洛斯|r
    .goto 1,40.80,16.36
    .skipgossip
    .complete 53355,1 --1/1 Meet Anachronos outside Orgrimmar
    .target Anachronos
step
    >>（没有箭头）跳下去。单击时间裂缝。杀死伽罗什地狱咆哮的|cRXP_ENEMY_Echo|r
    >>在他的旋风中走开。躲避铁星（战争机器铸造）
    .complete 53355,2 --1/1 Echo of Garrosh Hellscream slain
    .mob Echo of Garrosh Hellscream
step
    #completewith next
    #title 把传送门带到祖尔达扎
    >>离开实例组（右键单击角色框架）
    .goto 85,53.44,90.45,10,0
    .goto 85,58.59,91.32
    .zone 1163 >>把传送门带到祖尔达扎
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Chief Telemancer Oculeth, |cRXP_FRIENDLY_伊崔格|r
    .turnin 53355 >>Turn in Echo of Garrosh Hellscream
    .goto 1163,72.00,65.50
    .accept 52942 >>接任务: |cRXP_WARN_重修旧好|r
    .goto 1163,70.33,69.75
    .target Chief Telemancer Oculeth
    .target Eitrigg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Telemancer Oculeth|r
    .complete 52942,1 --1/1 Speak with Oculeth to go to Draenor
    .goto 1163,72.00,65.50
    .skipgossip 131443,1
    .target Chief Telemancer Oculeth
step
    >>过桥。您可能需要等待RP
    .goto 1170,44.07,55.07,20,0
    .goto 1170,44.87,53.20
    .complete 52942,2 --Meet the Overlord
step
    .goto 1170,44.94,53.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊崔格|r
    .turnin 52942 >>Turn in Restoring Old Bonds
    .accept 52943 >>接任务: |cRXP_WARN_呼唤氏族|r
    .target Eitrigg
step
    >>单击|cRXP_PICK_Blackrock横幅|r。如果无法单击，请重新标记
    .goto 1170,45.17,52.64
    .complete 52943,1 --1/1 Blackrock
step
    >>单击|cRXP_PICK_Blackrock横幅|r。如果无法单击，请重新标记
    .goto 1170,45.48,51.94
    .complete 52943,2 --1/1 Warsong
step
    >>单击|cRXP_PICK_Blackrock横幅|r。如果无法单击，请重新标记
    .goto 1170,44.82,52.00
    .complete 52943,3 --1/1 Frostwolf
step
    .goto 1170,45.14,52.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r
    .turnin 52943 >>Turn in Calling Out the Clans
    .target Overlord Geya'rah
step
    .goto 1170,45.26,52.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。与|cRXP_FRIENDLY_Grommash Hellscreet通话|r
    .accept 52945 >>接任务: |cRXP_WARN_战铸盟约|r
    .target Grommash Hellscream
step
    >>杀死|cRXP_ENEMY_Kor'gall叛逆者|r和|cRXX_ENEMY_Kor'gall搅拌器|r
    .goto 1170,40.23,65.14,25,0
    .goto 1170,39.10,65.72,25,0
    .goto 1170,38.81,67.47,25,0
    .goto 1170,38.25,67.48,25,0
    .goto 1170,37.73,68.32
    .complete 52945,1 --10/10 Kor'gall Defector slain
    .mob Kor'gall Defector
    .mob Kor'gall Agitator
step
    >>在短RP后杀死|cRXP_ENEMY_Kor'gall，Kor'gall|r的长子
    >>侧踏暴力碰撞。躲避巨石
    .goto 1170,36.80,68.06,15,0
    .goto 1170,36.26,68.70,10,0
    .goto 1170,36.49,70.06
    .complete 52945,2 --1/1 Kor'gall, Greatson of Kor'gall slain
    .mob Kor'gall, Greatson of Kor'gall
step
    .goto 1170,36.48,70.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r
    .turnin 52945 >>Turn in Bonds Forged Through Battle
    .accept 52955 >>接任务: |cRXP_WARN_光缚的暴行|r
    .target Overlord Geya'rah
step
    #sticky
    #label MagharOrcTyrannyoftheLight
    .goto 1170,44.13,69.99,0,0
    .complete 52955,1 --"Tyranny of the Light" scenario completed
step
    #completewith next
    .goto 1170,38.59,67.38,10 >>离开洞穴
step
    .isOnQuest 52955
    >>顺着箭头到Beastwatch
    .goto 1170,41.39,66.92,20,0
    .goto 1170,43.02,67.09,30,0
    .goto 1170,43.89,69.46
    .scenario 3973,1
step
    .isOnQuest 52955
    >>销毁|cRXP_ENEMY_Lightbound Battery|r并杀死|cRXX_ENEMY_Lighbornds|r
    .goto 1170,44.76,75.62,15,0
    .goto 1170,45.18,76.10,15,0
    .goto 1170,45.94,74.77,15,0
    .goto 1170,46.00,75.66,25,0
    .goto 1170,44.04,75.25,25,0
    .goto 1170,45.22,73.85,25,0
    .goto 1170,45.17,74.45
    .mob Lightbound Battery
    .scenario 3974,1
step
    .isOnQuest 52955
    >>按照箭头指向|cRXP_ENEMY_Exarch Orelis|r
    .goto 1170,45.49,78.58
    .scenario 3975,1
step
    .isOnQuest 52955
    >>杀死|cRXP_ENEMY_Exarch Orelis|r
    >>侧步躲避普罗米修斯射线。打断圣光
    .goto 1170,45.26,80.33
    .scenario 3976,1
    .mob Exarch Orelis
step
    .isOnQuest 52955
    >>跑回Beastwatch，与|cRXP_FRIENDLY_Grommash Hellscree|r会面
    .goto 1170,44.55,71.37
    .scenario 3977,1
    .timer 55,Order RP
step
    .isOnQuest 52955
    >>Wait for the RP
    .goto 1170,43.89,70.89
    .scenario 3980,1
step
    .isOnQuest 52955
    >>爬上那座塔。登上Mag'har Turrent山。冷却时使用|T879998:0|t[铁光探索者]（2），否则使用垃圾邮件|T252185:0|t[炮塔爆炸]杀死来袭的暴民
    .goto 1170,43.48,71.38,10,0
    .goto 1170,43.63,71.48
    .scenario 3978,1
step
    .isOnQuest 52955
    >>跳下去。去找首领。等待RP
    .goto 1170,44.55,71.37
    .scenario 3981,1
step
    .isOnQuest 52955
    >>Follow the arrow
    .goto 1170,44.13,69.99
    .scenario 3979,1
step
    #requires MagharOrcTyrannyoftheLight
    .goto 1,41.25,16.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r
    .turnin 52955 >>Turn in Tyranny of the Light
    .accept 51479 >>接任务: |cRXP_WARN_纯净者|r
    .target Overlord Geya'rah
step
    .goto 85,38.64,80.07,12,0
    .goto 85,37.78,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 51479 >>Turn in The Uncorrupted
    .target Ji Firepaw
step
    .isQuestTurnedIn 57448
    +祝贺你已经解锁了Maghar兽人！
]])