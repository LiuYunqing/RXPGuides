local _,addon = ...
if addon.game ~= "CATA" or addon.player.faction ~= 'Alliance' then return end
RXPGuides.RegisterGuide([[
#version 1
#group RXP Cataclysm 1-80 (A)
#cata
#name 1-6 幽影谷
#next 6-10 Teldrassil
#defaultfor NightElf
<<Alliance
step
    .goto 460,45.61,74.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .accept 28713 >>接任务: |cRXP_WARN_自然的平衡|r
	.target Ilthalaine
step
    .goto 460,42.44,76.29,20,0
    .goto 460,46.63,79.57,20,0
    .goto 460,50.63,76.87,20,0
    .goto 460,42.44,76.29
    >>杀死|cRXP_ENEMY_Young夜刀|r
    .complete 28713,1 --6/6 Young Nightsaber slain
	.mob Young Nightsaber
step
    .goto 460,45.62,74.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .turnin 28713 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
    .accept 28714 >>接任务: |cRXP_WARN_腐化的魔苔|r
	.target Ilthalaine
step
    .goto 460,45.94,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦利萨尔·鹿盔|r
    .accept 28715 >>接任务: |cRXP_WARN_恶魔窃贼|r
	.target Melithar Staghelm
step
    #completewith next
    >>杀死|cRXP_ENEMY_Grell|r，|cRXX_ENEMY_格雷尔金|r并掠夺他们的|cRXP_loot_Fel Moss|r
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Melithar's Stolen Bags|r
    .complete 28715,1 --5/5 Melithar's Stolen Bags
step
    .goto 460,36.66,79.84,15,0
    .goto 460,34.82,80.53,15,0
    .goto 460,31.70,74.85,15,0
    .goto 460,30.66,70.55,20,0
    .goto 460,36.66,79.84
    >>杀死|cRXP_ENEMY_Grell|r，|cRXX_ENEMY_格雷尔金|r并掠夺他们的|cRXP_loot_Fel Moss|r
    .complete 28714,1 --6/6 Fel Moss
	.mob Grell
	.mob Grellkin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r, |cRXP_FRIENDLY_麦利萨尔·鹿盔|r
    .turnin 28714 >>交任务: |cRXP_FRIENDLY_腐化的魔苔|r
    .target +Ilthalaine
    .goto 460,46.28,73.48
    .turnin 28715 >>交任务: |cRXP_FRIENDLY_恶魔窃贼|r
	.target +Melithar Staghelm
    .goto 460,45.93,72.86
    .accept 3116 >>接任务: |cRXP_LOOT_简易符记|r << Warrior
    .accept 3117 >>接任务: |cRXP_LOOT_风化符记|r << Hunter
    .accept 3118 >>接任务: |cRXP_WARN_密文符记|r << Rogue
    .accept 3119 >>接任务: |cRXP_LOOT_神圣符记|r << Priest
    .accept 3120 >>接任务: |cRXP_LOOT_绿色符记|r << Druid
    .accept 26841 >>接任务: |cRXP_WARN_禁戒魔符|r << Mage
    --class quests are auto from either npc
step << Priest/Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >>沿坡道向上行驶|cRXP_FRIENDLY_Shanda|r << Priest
    .goto 1438/1,761.79999,10415.60059,10 >>沿坡道向上行驶|cRXP_FRIENDLY_Rhyanda|r << Mage
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊达|r
    .turnin 3119 >>交任务: |cRXP_FRIENDLY_神圣符记|r
    .accept 26949 >>接任务: |cRXP_WARN_治愈伤者|r
    .train 2061 >>训练|T135907:0|t[快速治疗]
    .target Shanda
step << Priest
    .goto 1438/1,797.70001,10464.60059
    >>|cRXP_WARN_在你身边的一个|cRXP_FRIENDLY_Wounded Sentinel|r上施放|r|T135907:0|t[Flash Heal]|cRXP-WARN_5次|r
    .complete 26949,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << Priest
    .goto 1438/1,801.60004,10458.79980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊达|r
    .turnin 26949 >>交任务: |cRXP_FRIENDLY_治愈伤者|r
    .accept 28723 >>接任务: |cRXP_WARN_月神女祭司|r
    .target Shanda
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱恩达|r
    .turnin 26841 >>交任务: |cRXP_FRIENDLY_禁戒魔符|r
    .accept 26940 >>接任务: |cRXP_WARN_奥术飞弹|r
    .train 5143 >>Train|T136096:0|t[奥术导弹]
    .target Rhyanda
step << Mage
    .goto 1438/1,813.50000,10417.29980,-1
    .goto 1438/1,808.29999,10412.70020,-1
    .goto 1438/1,803.90002,10407.60059,-1
    .goto 1438/1,798.60004,10402.70020,-1
    .goto 1438/1,793.29999,10397.10059,-1
    .goto 1438/1,787.40002,10393.00000,-1
    .goto 1438/1,781.90002,10389.90039,-1
    >>|cRXP_WARN_在|cRXP_ENEMY_Training Dummy|r上施放|r|T135812:0|t[火球]|cRXP-WARN_，直到获得|r|T135731:0|t[奥术导弹！]|cRX _ WARN_proc，然后施放|r| T136096:0|t]奥术导弹]|cR _ WARN_。重复此操作两次|r
    .complete 26940,1 -- Practice Arcane Missles (1)
    .mob Training Dummy
step << Mage
    #completewith next
    .goto 1438/1,761.79999,10415.60059,10 >>沿坡道向上行驶|cRXP_FRIENDLY_Rhyanda|r
step << Mage
    .goto 1438/1,804.79999,10456.29980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱恩达|r
    .turnin 26940 >>交任务: |cRXP_FRIENDLY_奥术飞弹|r
    .accept 28723 >>接任务: |cRXP_WARN_月神女祭司|r
    .target Rhyanda
step << Warrior/Rogue
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15,0
    .goto 1438/1,794.60004,10506.90039,10 >>朝|cRXP_FRIENDLY_Alyissia|r内侧行驶 << Warrior
    .goto 1438/1,794.60004,10506.90039,10 >>前往|cRXP_FRIENDLY_Frahun Shadewears|r内部 << Rogue
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莉希亚|r
    .turnin 3116 >>交任务: |cRXP_FRIENDLY_简易符记|r
    .accept 26945 >>接任务: |cRXP_WARN_学习新技能|r
	.train 100 >>列车|T132337:0|t[收费]
    .target Alyissia
step << Warrior
    .goto 1438/1,808.79999,10460.79980
    >>|cRXP_WARN_在|r|cRXP_ENEMY_训练假人上铸造|r|T132337:0|t[充电]|cRXP-WARN_|r
    .complete 26945,1 -- Practice Charge (1)
    .mob Training Dummy
step << Warrior
    .goto 1438/1,778.10004,10526.60059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莉希亚|r
    .turnin 26945 >>交任务: |cRXP_FRIENDLY_学习新技能|r
    .accept 28723 >>接任务: |cRXP_WARN_月神女祭司|r
    .target Alyissia
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗拉胡恩·影语者|r
    .turnin 3118 >>交任务: |cRXP_FRIENDLY_密文符记|r
    .accept 26946 >>接任务: |cRXP_WARN_潜行者的优势|r
	.train 2098 >>列车|T132292:0|t[排出]
    .target Frahun Shadewhisper
step << Rogue
    .goto 1438/1,808.79999,10486.00000,-1
    .goto 1438/1,805.60004,10481.79980,-1
    >>|cRXP_WARN_在|r|cRXP_ENEMY_训练假人上施法|r|T136189:0|t[邪恶一击]|cRXP-WARN_允许|r|T132292:0|t[驱逐]|cRX _ WARN_3次|r
    .complete 26946,1 -- Practice Eviscerate (1)
    .mob Training Dummy
step << Rogue
    .goto 1438/1,778.00000,10519.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗拉胡恩·影语者|r
    .turnin 26946 >>交任务: |cRXP_FRIENDLY_潜行者的优势|r
    .accept 28723 >>接任务: |cRXP_WARN_月神女祭司|r
    .target Frahun Shadewhisper
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿亚娜·远途|r
    .turnin 3117 >>交任务: |cRXP_FRIENDLY_风化符记|r
    .accept 26947 >>接任务: |cRXP_WARN_林中的训练|r
	.train 56641 >>列车|T132213:0|t[稳定射击]
    .target Ayanna Everstride
step << Hunter
    .goto 1438/1,801.20001,10454.90039
    >>|cRXP_WARN_在|cRXP_ENEMY_训练假人上铸造|r|T132213:0|t[稳定射击]|cRXP-WARN_o |r 5次|r
    .complete 26947,1 -- Practice Steady Shot (1)
    .mob Training Dummy
step << Hunter
    .goto 1438/1,778.00000,10448.10059
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿亚娜·远途|r
    .turnin 26947 >>交任务: |cRXP_FRIENDLY_林中的训练|r
    .accept 28723 >>接任务: |cRXP_WARN_月神女祭司|r
    .target Ayanna Everstride
step << Druid
    #completewith next
    .goto 1438/1,797.20001,10458.90039,15 >>前往|cRXP_FRIENDLY_Mardant Strongoak|r内部
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛丹特·硬木|r
    .turnin 3120 >>交任务: |cRXP_FRIENDLY_绿色符记|r
    .accept 26948 >>接任务: |cRXP_WARN_回春之触|r
	.train 774 >>列车|T136081:0|t[复兴]
    .target Mardant Strongoak
step << Druid
    .goto 1438/1,769.79999,10436.29980,-1
    .goto 1438/1,788.29999,10417.90039,-1
    >>|cRXP_WARN_铸造|r|T136081:0|t[返老还童]|cRXP_WARN_on a|r|cRXP-FRIENDLY_Wounded Sentinel|r
    .complete 26948,1 -- Heal Wounded Sentinel
    .target Wounded Sentinel
step << Druid
    .goto 1438/1,816.00000,10485.90039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛丹特·硬木|r
    .turnin 26948 >>交任务: |cRXP_FRIENDLY_回春之触|r
    .accept 28723 >>接任务: |cRXP_WARN_月神女祭司|r
    .target Mardant Strongoak
step
    .goto 460,42.49,50.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德塔莉亚·银林|r
    .turnin 28723 >>交任务: |cRXP_FRIENDLY_月神女祭司|r
    .accept 28724 >>接任务: |cRXP_WARN_埃沃隆的解药|r
	.target Dentaria Silverglade
step
    .goto 460,41.87,49.37,5,0
    .goto 460,40.77,47.27,5,0
    .goto 460,39.54,52.27,5,0
    .goto 460,40.18,52.64,5,0
    .goto 460,40.80,53.32,5,0
    .goto 460,42.28,52.68,5,0
    .goto 460,43.60,51.83,5,0
    .goto 460,41.87,49.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Moonpetal Lilies|r
    .complete 28724,1 -- 7/7 Moonpetal Lily
step
    .goto 460,42.49,50.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德塔莉亚·银林|r
    .turnin 28724 >>交任务: |cRXP_FRIENDLY_埃沃隆的解药|r
    .accept 28725 >>接任务: |cRXP_WARN_森林守护者|r
	.target Dentaria Silverglade
step
	#completewith next
	.goto 58,44.87,88.5,5 >>输入|cFFfa9602Cave|r，然后等待|cRXP_FRIENDLY_Tarindrella|r出现
step
    .goto 58,44.87,88.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 28725 >>交任务: |cRXP_FRIENDLY_森林守护者|r
    .accept 28726 >>接任务: |cRXP_WARN_树林蜘蛛的腐蚀|r
	.target Tarindrella
step
    .goto 58,39.44,34.72 <<Hunter
    .goto 58,41.27,33.22,10,0 <<!Hunter
    .goto 58,34.81,15.50,15,0 <<!Hunter
    .waypoint 58,46.33,41.34,-30,0
    >>在洞穴中杀死|cRXP_ENEMY_Spiders|r|cFFfa9602|r
    >>通过在航点位置使用“跨越间隙分离”，您可以节省一些时间 <<Hunter
    >>确保如果你这么做了，你不会因为不久后你需要他而杀死|cRXP_ENEMY_Githyiss the Vile|r << Hunter
    .complete 28726,1 --12/12 Webwood Spider slain
	.mob Webwood Spider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 28726 >>交任务: |cRXP_FRIENDLY_树林蜘蛛的腐蚀|r
    .accept 28727 >>接任务: |cRXP_WARN_邪恶的触摸|r
	.target Tarindrella
step
    .goto 58,34.56,23.87,0 << !Hunter
    .goto 58,42.81,19.50,10,0 << !Hunter
    .goto 58,45.02,31.37
    >>杀死|cRXP_ENEMY_Githyiss the Vile|r
    .complete 28727,1 --1/1 Githyiss the Vile slain
	.mob Githyiss the Vile
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 28727,1 >>交任务: |cRXP_FRIENDLY_邪恶的触摸|r
    .accept 28728 >>接任务: |cRXP_WARN_未来的征兆|r
	.target Tarindrella
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德塔莉亚·银林|r
    .goto 460,42.50,50.50
    .turnin 28728 >>交任务: |cRXP_FRIENDLY_未来的征兆|r
    .accept 28729 >>接任务: |cRXP_WARN_泰达希尔：艾泽拉斯之冠|r
	.target Dentaria Silverglade
step
    #completewith next
    +|cRXP_WARN_要为任务项目启用密钥绑定，请执行以下步骤：|r
    *[1] Press the |cRXP_WARN_Escape key.|r
    *[2] Select |cRXP_WARN_Options.|r
    *[3] Navigate to |cRXP_WARN_Keybindings.|r
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides.|r
    *[5] Select and bind the |cRXP_WARN_Active Buttons.|r
step << Hunter
	#completewith next
    .goto 460,46.36,41.86,30,0
	.goto 460,51.93,37.12,60 >>演员阵容|T132164:0|t让野兽戴上凶狠的夜刀驯服它
	>>将|T132161:0|t拖动宠物和|T132179:0|t设置工具拖到动作栏上
	.target Mangy Nightsaber
step
    .goto 460,50.13,34.49
    >>使用|T967530:0|t[Crystal Phial]|cFFfa9602在Moonwell后面|
    .use 5185
    .complete 28729,1 --1/1 Filled Crystal Phial
step
    .goto 460,42.49,50.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德塔莉亚·银林|r
    .turnin 28729 >>交任务: |cRXP_FRIENDLY_泰达希尔：艾泽拉斯之冠|r
    .accept 28730 >>接任务: |cRXP_WARN_珍贵的水|r
	.target Dentaria Silverglade
step
    .goto 460,41.85,63.54,15,0
    .goto 460,46.45,53.43,15,0
    .goto 460,44.44,56.47,15,0
    .goto 460,45.20,60.69,15,0
    .goto 460,48.01,58.75,15,0
    .goto 460,48.14,54.36,15,0
    .goto 460,47.16,55.95
    >>走上树的斜坡
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特纳隆·雷拳|r
    .turnin 28730 >>交任务: |cRXP_FRIENDLY_珍贵的水|r
    .accept 28731 >>接任务: |cRXP_WARN_泰达希尔：传递信息|r
	.target Tenaron Stormgrip
step
    .goto 460,54.57,84.78
	>>从树上跳下来。你有一个缓慢下降的buff，所以你不会死
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯萨努斯|r
    .accept 2159 >>接任务: |cRXP_LOOT_多兰纳尔的货物|r
	.target Porthannius
]])

RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysm 1-80 (A)
#cata
#name 6-10 Teldrassil
#next 10-18 Darkshore
#defaultfor NightElf

<<Alliance

step
    .goto 57,59.56,49.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .accept 488 >>接任务: |cRXP_LOOT_赛恩的要求|r
	.target Zenn Foulhoof
step
    #completewith next
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r，|cRXD_ENEMY_Nightsabers|r和|cRXP_ENEMY_Strigid Owls|r，并掠夺他们的|cRXT_loot_ Nightsaber Fang，|r，| cRXP_loot_ Strigid猫头鹰羽毛|r和| cRXT_OOT_Webwood蜘蛛丝|r
	>>|cRXP_WARN_您将很快获得另一个完成此任务的机会。|r
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
	.mob Nightsaber
	.mob Strigid Owl
	.mob Webwood Lurker
step
    .goto 57,55.56,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
    .accept 2438 >>接任务: |cRXP_WARN_翡翠摄梦符|r
	.target Tallonkai Swiftroot
step
    #completewith next
    .goto 57,55.48,50.43
    .fp >>获取|cFFfa9602 Dolanaar飞行路径|r
	.target Fidelio
step
    .goto 57,55.70,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .accept 475 >>接任务: |cRXP_WARN_烦恼之风|r
	.target Athridas Bearmantle
step
    .goto 57,55.37,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板凯达米尔|r
    .turnin 2159,1 >>交任务: |cRXP_FRIENDLY_多兰纳尔的货物|r
	.target Innkeeper Keldamyr
step
    #completewith next
    .goto 57,55.36,52.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板凯达米尔|r
    .home >>将您的炉石设置为Dolanar
	.target Innkeeper Keldamyr
step
	#completewith next
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊兰尼斯·影花|r
    .train 2366 >>列车|T136065:0|t[草药学]
	.skipgossip 47420,1,1,1
	.target Iranis Shadebloom
step
    .goto 57,56.00,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊兰尼斯·影花|r
    .train 2575 >>列车|T136248:0|t[采矿]
	.skipgossip 47420,2,3,2
	.target Iranis Shadebloom
step
    .goto 57,55.82,53.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 28731 >>交任务: |cRXP_FRIENDLY_泰达希尔：传递信息|r
    .accept 929 >>接任务: |cRXP_WARN_大地之冠|r
	.target Corithras Moonrage
step
    #completewith TeldrassilEmeraldDreamcatcher
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r，|cRXD_ENEMY_Nightsabers|r和|cRXP_ENEMY_Strigid Owls|r，并掠夺他们的|cRXT_loot_ Nightsaber Fang，|r，| cRXP_loot_ Strigid猫头鹰羽毛|r和| cRXT_OOT_Webwood蜘蛛丝|r
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
	.mob Nightsaber Fang
	.mob Strigid Owl Feather
	.mob Webwood Spider Silk
step
    #completewith next
    +|cRXP_WARN_要为任务项目启用密钥绑定，请执行以下步骤：|r
    *[1] Press the |cRXP_WARN_Escape key.|r
    *[2] Select |cRXP_WARN_Options.|r
    *[3] Navigate to |cRXP_WARN_Keybindings.|r
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides.|r
    *[5] Select and bind the |cRXP_WARN_Active Buttons.|r
step
    .goto 57,61.92,50.69
    >>使用Moonwell旁边的|T967530:0|t[Jade Phial]|cFFfa9602|r
    .complete 929,1 --1/1 Filled Jade Phial
    .use 5619
step
    #completewith next
    +查看房子旁边的宝箱|cFFfa9602|r
step
    .goto 57,64.73,51.70,5,0
    .goto 57,64.90,51.61,5,0
    .goto 57,64.59,51.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖洛拉斯·塔文斯伦|r
    .turnin 475 >>交任务: |cRXP_FRIENDLY_烦恼之风|r
    .accept 476 >>接任务: |cRXP_WARN_瘤背熊怪的堕落|r
	.target Gaerolas Talvethren
step
    #completewith next
    +检查|cRXP_ENEMY_Uruson（稀有）|r在房屋之间巡逻|cFFfa9602|r
	.unitscan Uruson
step
    #label TeldrassilEmeraldDreamcatcher
    .goto 57,66.10,52.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Tailonkai's Dresser.|r
    .complete 2438,1 --1/1 Emerald Dreamcatcher
step
    #completewith next
    .goto 57,64.51,50.46,20,0
    .deathskip >>死亡并重生|cFFfa9602在精神治疗者|r
step
    .goto 57,55.82,53.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >>交任务: |cRXP_FRIENDLY_大地之冠|r
	.target Corithras
step
    .goto 57,55.69,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .turnin 476 >>交任务: |cRXP_FRIENDLY_瘤背熊怪的堕落|r
	.target Athridas
step
    .goto 57,55.56,50.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
    .turnin 2438 >>交任务: |cRXP_FRIENDLY_翡翠摄梦符|r
    .accept 2459 >>接任务: |cRXP_WARN_噬梦者菲罗斯塔|r
	.target Tallonkai
step
    #loop
    .goto 57,57.48,48.54,40,0
    .goto 57,58.21,49.79,40,0
    .goto 57,58.23,52.16,40,0
    .goto 57,59.97,53.47,40,0
    .goto 57,61.28,51.69,40,0
    .goto 57,60.21,50.03,40,0
    .goto 57,57.48,48.54,40,0
    .goto 57,57.48,48.54,0
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r，|cRXD_ENEMY_Nightsabers|r和|cRXP_ENEMY_Strigid Owls|r，并掠夺他们的|cRXT_loot_ Nightsaber Fang，|r，| cRXP_loot_ Strigid猫头鹰羽毛|r和| cRXT_OOT_Webwood蜘蛛丝|r
    .complete 488,1 --2/2 Nightsaber Fang
    .complete 488,2 --2/2 Strigid Owl Feather
    .complete 488,3 --2/2 Webwood Spider Silk
	.mob Nightsaber Fang
	.mob Strigid Owl Feather
	.mob Webwood Spider Silk
step
    .isQuestComplete 488
    .goto 57,59.52,49.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 488 >>交任务: |cRXP_FRIENDLY_赛恩的要求|r
	.target Zenn Foulhoof
step
    #completewith Ferocitas
    +Check for the Treasure Chest |TInterface/cursor/crosshair/interact.blp:20|t |cFFfa9602near Ferocitas.|r
	.unitscan Ferocitas
step
    #completewith next
    >>杀死|cRXP_ENEMY_Gnarlpine神秘人|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    #label Ferocitas
    .goto 57,67.26,46.83
    >>杀死|cRXP_ENEMY_Ferocitas the Dream Eater |r并掠夺他获得|cRXX_loot_Talonkai的宝石|r
    .complete 2459,2 --1/1 Tallonkai's Jewel
	.mob Ferocitas the Dream Eater
step
    .goto 57,66.88,46.87,40,0
    .goto 57,65.76,46.40,40,0
    .goto 57,65.75,44.83,40,0
    .goto 57,67.26,46.83
    >>杀死|cRXP_ENEMY_Gnarlpine神秘人|r
    >>|cRXP_WARN_一旦接近完成，生命值就会降低。你会死后跳过。|r
    .complete 2459,1 --7/7 Gnarlpine Mystic slain
	.mob Gnarlpine Mystic
step
    #completewith next
    .goto 57,66.13,45.25,25,0
    .deathskip >>死亡并重生|cFFfa9602在精神治疗者|r
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
    .turnin 2459 >>交任务: |cRXP_FRIENDLY_噬梦者菲罗斯塔|r
	.target Tallonkai Swiftroot
step
    .goto 57,55.72,50.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞拉尔·刃叶|r
    .accept 489 >>接任务: |cRXP_WARN_寻求救赎！|r
	.target Syral Bladeleaf
step
#loop
    .goto 57,55.94,55.82,20,0
    .goto 57,55.30,56.98,20,0
    .goto 57,55.32,57.04,20,0
    .goto 57,54.22,53.89,20,0
    .goto 57,56.51,55.80,20,0
    .goto 57,57.18,55.55,20,0
    .goto 57,55.94,55.82,20,0
    .goto 57,55.94,55.82,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Fel Cones.|r
    .complete 489,1 --3/3 Fel Cone

step
    .goto 57,59.51,49.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 489 >>交任务: |cRXP_FRIENDLY_寻求救赎！|r
	.target Zenn Foulhoof
step
    .goto Teldrassil,55.77,50.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞拉尔·刃叶|r
    .target Syral Bladeleaf
    .accept 13946 >>接任务: |cRXP_WARN_自然的报复|r
step
    .goto 57,55.55,49.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
    .accept 932 >>接任务: |cRXP_LOOT_扭曲的仇恨|r
	.target Tallonkai Swiftroot
step
#completewith melenas
    .goto 57,54.45,45.43,40 >>朝着北边的洞穴走去
    .subzoneskip 258--Fel Rock
step
    #label ireroot
    #sticky
    .goto 57,51.82,43.85
    --|
    >>用你袋子里的Ireroot种子杀死洞穴里的grellkin
    .complete 13946,1 --12/12 Fel Rock grellkin killed with Ireroot Seeds
    .use 46716
step
#label melenas
    .goto 57,51.82,43.85
    >>杀死|cRXP_ENEMY_Lord Melenas|r。掠夺他的|cRXX_Loot_Head |r
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas

step
#requires ireroot
    .goto 57,55.77,50.47
    >>对话: |cRXP_FRIENDLY_塞拉尔·刃叶|r
    .target Syral Bladeleaf
    .turnin 13946 >>交任务: |cRXP_FRIENDLY_自然的报复|r
step
    .goto 57,55.70,51.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵凯拉·星歌|r 
    .target Sentinel Kyra Starsong
    .accept 13945 >>接任务: |cRXP_WARN_常驻的危险|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r 
    .target Athridas Bearmantle
    .accept 483 >>接任务: |cRXP_WARN_唤醒圣物|r
step
    #completewith sleepingd
    >>在通往下一个目标的路上杀死任何类型的|cRXP_ENEMY_Furbolg|r
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
step
    #completewith next
    .goto 57,45.488,50.760,25 >>进入树屋内的隧道
    .subzoneskip 262
step
    #label sleepingd
    .goto 57,45.038,53.480
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥本·怒爪|r 
    .target Oben Rageclaw
    .accept 2541 >>接任务: |cRXP_WARN_沉睡的德鲁伊|r
step
    #label shamans
    #sticky
    >>杀死并掠夺|cRXP_ENEMY_Gnarlpine萨满|r
    .complete 2541,1 --|1/1 Shaman Voodoo Charm
    .mob Gnarlpine Shaman
step
    #sticky
    #requires shamans
    #label furbolgs
    >>杀死|cRXP_ENEMY_Furbolgs|r
    .complete 13945,1
    .mob Gnarlpine Shaman
	.mob Gnarlpine Defender
	.mob Gnarlpine Augur
--Gossip Ids:
--exit 37751
--raven claw 37753
--black feather quill 37754
--Sapphire of the sky 37755
--Rune of nesting 37756
--TODO: check on beta if gossip id match
step
    .goto 61,54.999,75.209
    >>跑过上层的桥，点击箱子，掠夺里面的符文
    >>你也可以与|cRXP_FRIENDLY_大陆女猎手|r同伴交谈，她会告诉你通往符文的路
    .complete 483,4 --|1/1 Rune of Nesting
    .target Sentinel Huntress
    .skipgossipid 37756
step
    .goto 61,51.956,86.565
    >>进入底层，在一个小房间里洗劫箱子
    >>你也可以与|cRXP_FRIENDLY_大陆女猎手|r同伴交谈，她会告诉你通往符文的路
    .complete 483,2 --|1/1 Black Feather Quill
step
    .goto 61,49.887,36.749
    >>单击中央大房间底部的胸部
    >>你也可以与|cRXP_FRIENDLY_大陆女猎手|r同伴交谈，她会告诉你通往符文的路
    .complete 483,3 --|1/1 Sapphire of Sky
step
    .goto 61,64.380,19.281
    >>登上中央平台，向东穿过大桥，点击阳台顶部的胸部
    >>你也可以与|cRXP_FRIENDLY_大陆女猎手|r同伴交谈，她会告诉你通往符文的路
    .complete 483,1 --|1/1 Raven Claw Talisman
step
    .goto 57,45.053,53.464
    >>朝向隧道出口
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥本·怒爪|r
    .target Oben Rageclaw
    .turnin 2541 >>交任务: |cRXP_FRIENDLY_沉睡的德鲁伊|r
    .accept 2561 >>接任务: |cRXP_WARN_利爪德鲁伊|r
    .skipgossipid 37751
step
    .goto 57,45.581,52.704
    >>跑过另一边的桥，等到锁着的门自动打开
    .use 8149 >>|cRXP_WARN_使用|r|T132502:0|t[Voodoo Charm]|cRXP_WARN_on Rageclaw的尸体|r
    .complete 2561,1 --|
    .mob Rageclaw
step
    .goto 57,45.053,53.464
    >>朝向隧道出口
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥本·怒爪|r
    .target Oben Rageclaw
    .turnin 2561 >>交任务: |cRXP_FRIENDLY_利爪德鲁伊|r
--NOTE: Deathskip or HS, have to test graveyard spawn locations
step
    .goto 57,55.668,51.981
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .target Athridas Bearmantle
    .turnin 483 >>交任务: |cRXP_FRIENDLY_唤醒圣物|r
    .accept 486 >>接任务: |cRXP_WARN_大槌乌萨尔|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵凯拉·星歌|r
    .target Sentinel Kyra Starsong
    .turnin 13945 >>交任务: |cRXP_FRIENDLY_常驻的危险|r
step
    .goto 57,49.351,44.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r 
    .target Moon Priestess Amara
    .accept 487 >>接任务: |cRXP_WARN_达纳苏斯之路|r
step
    #sticky
    #label ambushers
    .goto 57,50.578,36.548,0,0
    >>在穿过山路时杀死|cRXP_ENEMY_Gnarlpine救护车|r
    .complete 487,1 --|8/8 Gnarlpine Ambusher slain
    .mob Gnarlpine Ambusher
step
    .goto 57,51.693,39.805
    >>沿着小路走上斜坡，来到山顶的洞穴
    .complete 486,1 --|1/1 Ursal the Mauler slain
    .mob Ursal the Mauler
step
    .goto 57,49.359,44.663
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    .target Moon Priestess Amara
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
step
    #completewith next
    #requires ambushers
    .deathskip >>在多兰纳尔死去并重生
step
    #requires ambushers
    .goto 57,55.715,51.981
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .target Athridas Bearmantle
    .turnin 486 >>交任务: |cRXP_FRIENDLY_大槌乌萨尔|r
step
    .goto 57,55.759,50.467
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞拉尔·刃叶|r 
    .target Syral Bladeleaf
    .accept 997 >>接任务: |cRXP_LOOT_德纳兰的泥土|r

step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳兰|r
    .target Denalan
    .turnin 997 >>交任务: |cRXP_FRIENDLY_德纳兰的泥土|r
    .accept 918 >>接任务: |cRXP_WARN_林精的种子|r
    .accept 919 >>接任务: |cRXP_WARN_林精的新芽|r
step
    #sticky
    #label fruit1
    .goto 57,57.689,63.063
	>>单击|cRXP_PICK_Strange Fruited Plant|r
    .accept 930 >>接任务: |cRXP_WARN_发光的水果|r
step
    #loop
    .goto 57,57.689,63.063,55,0
    .goto 57,57.249,56.903,55,0
    .goto 57,60.263,58.219,55,0
    .goto 57,57.249,56.903,0
    .goto 57,60.263,58.219,0
    .goto 57,57.689,63.063,0
    >>杀死|cRXP_ENEMY_Timberlings|r。掠夺它们的|cRXX_Loot_Seeds|r
    >>在地面上掠夺|cRXP_Loot_林木萌芽|r
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling


step
    #requires fruit1
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳兰|r
    .target Denalan
    .turnin 918 >>交任务: |cRXP_FRIENDLY_林精的种子|r
    .turnin 919 >>交任务: |cRXP_FRIENDLY_林精的新芽|r
    .accept 922 >>接任务: |cRXP_WARN_雷利亚·绿树|r
step
    .goto 57,59.929,59.738
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳兰|r
    .target Denalan
    .turnin 930 >>交任务: |cRXP_FRIENDLY_发光的水果|r
step
    .goto 57,56.74,53.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈欧玛|r
    .accept 6344 >>接任务: |cRXP_WARN_尼莎·影歌|r
	.target Nyoma
step
    .goto 57,55.871,53.901
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r 
    .target Corithras Moonrage
    .accept 7383 >>接任务: |cRXP_WARN_大地之冠|r
step
    .goto 57,55.47,50.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲德利奥|r
    .turnin 6344 >>交任务: |cRXP_FRIENDLY_尼莎·影歌|r
    .accept 6341 >>接任务: |cRXP_WARN_泰达希尔的渔业|r
    >>|cRXP_WARN_小心不要意外飞往达纳苏斯|r 
	.target Fidelio
--TODO: should be level 10 here, skip the rest of teldrassil?
step
    .goto 57,43.956,44.178
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .target Rellian Greenspyre
    .turnin 922 >>交任务: |cRXP_FRIENDLY_雷利亚·绿树|r
    .accept 923 >>接任务: |cRXP_WARN_青苔之瘤|r
step
    .goto 57,39.482,29.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r 
    .target Sentinel Arynia Cloudsbreak
    .accept 937 >>接任务: |cRXP_WARN_神谕林地|r
step
    .goto 57,39.222,29.729
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司艾茉拉|r 
    .target Priestess A'moora
    .accept 2518 >>接任务: |cRXP_WARN_月神的泪水|r

step
    #loop
    .goto 57,45.297,23.695,40,0
    .goto 57,44.446,30.394,40,0
    .goto 57,45.297,23.695,0
    .goto 57,44.446,30.394,0
    >>杀死|cRXP_ENEMY_Timberling Tramplers|r，|cRXD_ENEMY_ Timberling Mire Beasts|r和|cRXP_ENEMY_Elder Timberlings|r掠夺它们的|cRXP_OOT_Tumors|r
    .complete 923,1 --|5/5 Mossy Tumor
    .mob Timberling Mire Beast
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
step
--NOTE: Seems to be fixed spawn now
>>杀死|cRXP_ENEMY_Lady Sathrah|r。掠夺它的|cRXD_Loot_Spinnerets|r
    .goto 57,40.754,22.233
    .complete 2518,1 --|1/1 Silvery Spinnerets
    .mob Lady Sathrah
step
    #label frond2
    #sticky
    .goto 57,37.131,25.434
    >>单击|cRXP_PICK_Strange Fronded Plant |r
    .accept 931 >>接任务: |cRXP_WARN_发光的树叶|r
step
    #loop
    >>杀死|cRXP_ENEMY_Bloodflowe Harpies|r。掠夺它们的|cRXP-Loot_Barret|r
    .goto 57,36.775,24.398,30,0
    .goto 57,35.843,26.095,30,0
    .goto 57,35.063,28.517,30,0
    .goto 57,35.793,26.151,30,0
    .goto 57,35.793,26.151,0
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
#requires frond2
    .goto 57,34.487,27.811
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密斯特|r
    >>|cRXP_WARN_这将开始一个护送任务|r
    .target Mist
    .accept 938 >>接任务: |cRXP_LOOT_密斯特|r
step
    .goto 57,39.199,29.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .target Priestess A'moora
    .turnin 2518 >>交任务: |cRXP_FRIENDLY_月神的泪水|r
step
    .goto 57,39.448,29.823
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .target Sentinel Arynia Cloudsbreak
    .turnin 937 >>交任务: |cRXP_FRIENDLY_神谕林地|r
    .turnin -938 >>交任务: |cRXP_FRIENDLY_密斯特|r
step
    .goto 57,40.471,29.942
    .use 18152 >>|cRXP_WARN_使用|r|T134798:0|t[Amethyst Phial]|cRXP_WARN_at the Oracle Glade moonwell|r
    .complete 7383,1 --|1/1 Filled Amethyst Phial
step
    .goto 57,43.947,44.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .target Rellian Greenspyre
    .turnin 923 >>交任务: |cRXP_FRIENDLY_青苔之瘤|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳兰|r
    .target Denalan
    .accept 2499 >>接任务: |cRXP_WARN_奥肯斯古尔|r
    .turnin 931 >>交任务: |cRXP_FRIENDLY_发光的树叶|r
step
    .goto 57,47.403,35.829
    >>杀戮和掠夺|cRXP_ENEMY_Oakenscow|r
    .complete 2499,1 --|1/1 Gargantuan Tumor
    .unitscan Oakenscowl
step
    .goto 57,43.949,44.222
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳兰|r
    .target Denalan
    .turnin 2499 >>交任务: |cRXP_FRIENDLY_奥肯斯古尔|r
step
    .goto 57,40.999,45.531
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .target Corithras Moonrage
    .turnin 7383 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .accept 933 >>接任务: |cRXP_WARN_大地之冠|r
step
    .goto 57,43.939,58.534
    .use 5621 >>|cRXP_WARN_使用|r|T134765:0|t[Tourmaline Phial]|cRXP_WARN_at the Pools of Arlithreen moonwell|r
	.complete 933,1
step
    .goto 57,42.525,58.213
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德拉|r
    .target Tarindrella
    .turnin 933 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .accept 14005 >>接任务: |cRXP_WARN_艾露恩的复仇|r
step
--TODO: Big RP quest, might be a huge waste of time, test on beta
    .goto 57,40.909,69.647
    .complete 14005,1 --|1/1 Bough of Corruption slain
step
    .goto 57,42.507,58.184
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德拉|r
    .target Tarindrella
    .turnin 14005 >>交任务: |cRXP_FRIENDLY_艾露恩的复仇|r
    .accept 935 >>接任务: |cRXP_WARN_大地之冠|r
step
    .goto 57,41.007,45.528
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .target Corithras Moonrage
    .turnin 935 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .accept 14039 >>接任务: |cRXP_WARN_卡多雷的家|r
step
    #completewith end
    .zone 89 >>前往: |cRXP_PICK_达纳苏斯|r
step << Warrior
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_从她那里购买|r|T135350:0|t[Clymore]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 1198,1 -- Claymore (1)
    .money <0.2142
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ariyell Skyshadow
step << Rogue
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_从她那里购买|r|T135346:0|t[Cutlass]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 851,1 -- Cutlass (1)
    .money <0.1618
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
    .target Ariyell Skyshadow
    .xp >11,1
    .xp <10,1
step << Rogue
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_从她那里购买|r|T132402:0|t[Hattchet]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 853,1 -- Hatchet (1)
    .money <0.1927
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Ariyell Skyshadow
    .xp >12,1
    .xp <11,1
step << Hunter
    .goto 89,56.327,52.547
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_从她那里购买|r|T135499:0|t[叠层递归弓]|cRXP_Buy_|r
    >>|cRXP_WARN_或者，去拍卖行看看更好或更便宜的东西|r
    .collect 2507,1 --Collect Laminated Recurve Bow (1)
    .money <0.1402
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5
    .target Ariyell Skyshadow 
step << Warrior
    #optional
    #completewith end
    +|cRXP_WARN_调用|r|T135350:0|t[Clymore]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue
    #optional
    #completewith end
    +|cRXP_WARN_在您的右手上装备|r|T135346:0|t[Cutlass]|cRXP_WARN_in|r
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step << Rogue
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
    .goto 89,43.832,76.529
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵柯德蕾莎·楠弓|r 
    .target Sentinel Cordressa Briarbow
    .accept 26383 >>接任务: |cRXP_WARN_乘风破浪|r
step
    .goto 89,43.062,77.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰兰德·语风|r
    .target Tyrande Whisperwind
    .turnin 14039 >>交任务: |cRXP_FRIENDLY_卡多雷的家|r
step
    .goto 89,36.090,53.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾奎恩妮|r
    .target Sister Aquinne
    .turnin 6341 >>交任务: |cRXP_FRIENDLY_泰达希尔的渔业|r
    .accept 6342 >>接任务: |cRXP_WARN_飞往奥伯丁|r
step
    .goto 89,36.641,48.036
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利奥拉|r
    .target Leora
    .turnin 6342 >>交任务: |cRXP_FRIENDLY_飞往奥伯丁|r
step
    .goto 89,35.993,50.342
    .subzone 702 >>步入飞行大师旁边的紫色入口
    .zoneskip Darkshore
step
    #label end
    .goto 57,55.406,88.415
    .fly Lor'danel >>Fly to Lor'danel
    .zoneskip Darkshore

--TELDRASSIL END


]])
