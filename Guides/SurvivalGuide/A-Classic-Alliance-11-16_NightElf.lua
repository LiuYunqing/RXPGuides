RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 11-13黑暗海岸（暗夜精灵）
#version 1
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 1-20
#next 13-13莫丹湖（暗夜精灵）
#defaultfor NightElf

step << NightElf
    .goto Teldrassil,56.25,92.44
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6344 >>交任务: |cRXP_FRIENDLY_尼莎·影歌|r
    .accept 6341 >>接任务: |cRXP_WARN_泰达希尔的渔业|r
    .target Nessa Shadowsong
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
	.goto Teldrassil,58.39,94.01
    .turnin 6341 >>交任务: |cRXP_FRIENDLY_泰达希尔的渔业|r
    .accept 6342 >>接任务: |cRXP_WARN_飞往奥伯丁|r
    .target Vesprystus
step << NightElf
    #completewith WashedA
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Auberdine >>飞到黑海岸
    .target Vesprystus
step << !NightElf
#map Darkshore
    #completewith next
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .fp Auberdine >>获取奥伯丁飞行路线
    .target Gwennyth Bly'Leggonde
step << NightElf
#map Darkshore
    #label WashedA
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .accept 3524 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
step << !NightElf
#map Darkshore
    #label WashedA
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .accept 3524 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
step << NightElf
#map Darkshore
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尔德|r
    .turnin 6342 >>交任务: |cRXP_FRIENDLY_飞往奥伯丁|r
    .target Laird
step
#map Darkshore
    #completewith next
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尔德|r
    >>|cRXP_BUY_如果需要，购买食物|r
    .vendor >>|T133918:0|t[长颌式泥浆抓斗]|cRXP_WARN_i很便宜|r
    .target Laird
step
    #completewith next
    .goto Darkshore,36.70,43.78,5 >>上楼前往|cRXP_FRIENDLY_Wizbang曲柄开关|r
step
#map Darkshore
    .goto Felwood,19.51,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹班恩·曲针|r
    .accept 983 >>接任务: |cRXP_LOOT_传声盒827号|r
    .target Wizbang Cranktoggle
step << !Warrior !Rogue
    #completewith next
    .goto Darkshore,37.120,43.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥林迪雅|r
    >>|cRXP_BUY_Buy water if needed|r
    .target Allyndia
step
    #completewith BigThreat
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板莎希因|r
    .home >>将您的炉石设置为Auberdine
    .target Innkeeper Shaussiy
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.250,41.008
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库德拉姆·石锤|r
    .train 2581 >>训练采矿，铸造寻找矿物
    .skill mining,1,1
    .target Kurdram Stonehammer
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.191,40.934
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪尔弗拉姆·火须|r
    .train 2020 >>火车铁匠。这将允许你为你的武器制造+2伤害磨石，这些磨石非常坚固。 << Warrior/Rogue
    .train 2020 >>这将允许你为你的武器制造+2伤害的重石，这些重石非常强大。 << Paladin
    .skill blacksmithing,1,1
    .target Delfrum Flintbeard
step << Warrior/Rogue/Paladin
    .goto Darkshore,38.225,41.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟尔格拉姆·石锤|r
    >>|cRXP_BUY_购买|r|T134708:0|t[采矿选择]|cRXP_Buy_from|r|cRXP-FRIENDLY_Thelgrum Stonehammer|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Thelgrum Stonehammer
step
    .goto Darkshore,38.844,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 2118 >>接任务: |cRXP_LOOT_瘟疫蔓延|r
    .target Tharnariun Treetender
step
#map Darkshore
    #label BigThreat
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
    .accept 984 >>接任务: |cRXP_WARN_熊怪的威胁|r
    .target Terenthis
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_古博·布拉普|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >>接任务: |cRXP_WARN_钓鱼世家|r
    .turnin 1141 >>交任务: |cRXP_FRIENDLY_钓鱼世家|r
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #completewith RabidThistle
    .goto Darkshore,35.88,47.01,0
    .goto Darkshore,36.50,53.30,0
    .goto Darkshore,35.72,55.84,0
    >>杀死|cRXP_ENEMY_Pygmy潮汐爬行器|r和|cRXP_ENEMY_Young Reef爬行器|r.掠夺它们的|cRXD_Loot_Legs|r
    >>|cRXP_WARN_你可能需要为他们下水|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,18.81,26.69
    >>为|cRXP_Loot_海洋生物骨骼|r掠夺|cRXP _PICK_Beached海洋生物|r
    .complete 3524,1
step << Druid
    #completewith end
    >>|cRXP_WARN_等级|T136065:0|t[草药学]至15。收集5|T134187:0|t[Earthroot]用于未来的任务|r
    .collect 2449,5,6123,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
    >>发现Furbolg营地（跑向图腾然后逃跑）
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #label RabidThistle
    .goto Darkshore,38.47,57.92,50,0
    .goto Darkshore,39.79,58.33,50,0
    .goto Darkshore,38.86,60.72,50,0
    .goto Darkshore,38.47,57.92
    .use 7586 >>|cRXP_WARN_使用|r|T134335:0|t[Tarnariun的希望]|cRXP_WARN_on a|r|cRXP_ENEMY_Rabid Thistle Bear|r
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,36.53,53.39,55,0
    .goto Darkshore,36.38,55.96,55,0
    .goto Darkshore,35.11,54.69,55,0
    .goto Darkshore,35.79,47.35,55,0
    .goto Darkshore,36.53,53.39
    >>杀死|cRXP_ENEMY_Pygmy潮汐爬行器|r和|cRXP_ENEMY_Young Reef爬行器|r.掠夺它们的|cRXD_Loot_Legs|r
    >>|cRXP_WARN_你可能需要为他们下水|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .xp 12-3550 >>升级到距离12级3550xp（5250+/8800xp）
step
#map Darkshore
    .goto Felwood,19.13,21.39
    >>单击地面上的|cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>交任务: |cRXP_FRIENDLY_传声盒827号|r
step
#map Darkshore
    #era/som
	.goto Felwood,19.13,21.39
    >>单击地面上的|cRXP_PICK_Buzzbox 827|r
    .accept 1001 >>接任务: |cRXP_LOOT_传声盒411号|r
step
#map Darkshore
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 3524 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
    .accept 4681 >>接任务: |cRXP_LOOT_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
step
#map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 2118 >>交任务: |cRXP_FRIENDLY_瘟疫蔓延|r
    .accept 2138 >>接任务: |cRXP_WARN_清除疫病|r
    .target Tharnariun Treetender
step
#map Darkshore
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦希斯|r
    .turnin 984 >>交任务: |cRXP_FRIENDLY_熊怪的威胁|r
    .accept 985 >>接任务: |cRXP_WARN_熊怪的威胁|r
    .accept 4761 >>接任务: |cRXP_WARN_桑迪斯·织风|r
    .target Terenthis
step << !Warrior !Rogue
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达蒙德|r
    .vendor >>|cRXP_WARN_根据需要购买|r|T133634:0|t[棕色小袋子]|cRXP_WARN_a|r
    >>|cRXP_WARN_Buy|r|T132382:0|t[尖箭]|cRXP_WARN_or|r|T132384:0|t[Heavy Shots] << Hunter
    .target Dalmond
step
#map Darkshore
    .goto Felwood,19.98,14.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 4761 >>交任务: |cRXP_FRIENDLY_桑迪斯·织风|r
    .accept 958 >>接任务: |cRXP_WARN_上层精灵的工具|r
    .accept 954 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Thundris Windweaver
step << Druid
    #completewith next
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    >>|cRXP_WARN_Enter the Moonkin Cave|r
    .cast 18974 >>|cRXP_WARN_使用|r|T132857:0|t[Cenarion Moonsdust]|cRXP_WARN_at洞穴内的|cRX_PICK_Moonkin Stone|r召唤|r|cRXP_ENEMY_Lunaclaw|r
    .use 15208
step << Druid
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    .use 15208 >>杀死|cRXP_ENEMY_Lunaclaw|r。与|cRXP_FRIENDLY_Lunaclaw精灵交谈|r
    .skipgossip
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
step << NightElf
#map Darkshore
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尔德|r
    .accept 6343 >>接任务: |cRXP_LOOT_飞回泰达希尔|r
    .target Laird
step << NightElf
    #completewith next
    .goto Darkshore,36.71,44.98,5,0
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
    .fly Teldrassil >>飞往Teldrassil——12号列车
    .target Caylais Moonfeather
step << NightElf
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6343 >>交任务: |cRXP_FRIENDLY_飞回泰达希尔|r
    .target Nessa Shadowsong
step << NightElf
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Druid
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .turnin 6001 >>交任务: |cRXP_FRIENDLY_身心之力|r
    .trainer >>训练你的职业技能
    .target Mathrengyl Bearwalker
step << NightElf Warrior
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷亚斯塔·刃歌|r
    .goto Darnassus,58.72,34.92
    .trainer >>训练你的职业技能
    .target Arias'ta Bladesinger
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .goto Darnassus,57.56,46.72
    .train 2567 >>火车抛锚
    .target Ilyenia Moonfire
step << NightElf Warrior
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    .goto Darnassus,58.765,44.494
    >>|cRXP_WARN_买一堆|r|T135425:0|t[锋利的飞刀]
    .collect 3107,200
    .target Ariyell Skyshadow
step << NightElf Priest
    .goto Darnassus,37.90,82.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贾德莉亚|r
    .trainer >>训练你的职业技能
    .target Jandria
step << NightElf Rogue
    >>进入塞纳里昂飞地
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
    .goto Darnassus,31.84,16.69,30,0
    .goto Darnassus,37.00,21.92
    .trainer >>训练你的职业技能
    .target Syurna
step << NightElf Hunter
    #completewith start
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
    .trainer >>训练你的职业技能
    .target Jocaste
step
    #completewith next
    .hs >>奥伯丁之炉
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >>前往码头上的|cRXP_FRIENDLY_Cerellean Whiteclaw|r
step
    .goto Darkshore,35.743,43.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .accept 963 >>接任务: |cRXP_WARN_永志不渝|r
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto 1439,32.432,43.744,15 >>行驶到码头尽头，然后跳入水中
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>掠夺|cRXP_PICK_Skeletal Sea Turtle|r以获取|cRXP_OOT_Sea Turtle Remains|r
    .complete 4681,1 -- Turtle Remains
step
#map Darkshore
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_温尼斯·布莱葛|r
    .turnin 4681 >>交任务: |cRXP_FRIENDLY_搁浅的巨兽|r
    .target Gwennyth Bly'Leggonde
step << Warrior/Rogue
#map Darkshore
    #completewith next
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱尔德|r
    .vendor >>|cRXP_WARN_Buy 40|r|T133918:0|t[长颌式泥浆抓斗]
    .target Laird
step
    .goto Darkshore,37.708,43.431
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .accept 4811 >>接任务: |cRXP_WARN_红色水晶|r
    .target Sentinel Glynda Nal'Shea
step
#map Darkshore
    #label Bashal1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    >>|cRXP_WARN_沿着通往巴沙尔阿兰的路走|r
    >>|cRXP_WARN_避免在途中杀死|cRXP_ENEMY_Wild Grells|r和|cRXX_ENEMY_Vile Sprites|r|r
    .turnin 954 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 955 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >>杀死|cRXP_ENEMY_Wild Grells|r和|cRXD_ENEMY_Vile Sprites|r。偷走它们的|cRXP_Loot_Errings |r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 955 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 956 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>杀死|cRXP_ENEMY_Deth'ryl Satyr|r。掠夺它们以获得|cRXX_Loot_Moonstone封印|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 956 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
    .accept 957 >>接任务: |cRXP_LOOT_巴莎兰|r
    .target Asterion
step
    #completewith Tysha
    >>|cRXP_WARN_沿着这条路往南走，寻找附近的|r|cRXP_ENEMY_Foreststrider Fledglings|r
    >>杀死|cRXP_ENEMY_Foreststrider Fledgling|r。掠夺它们的|cRXX_Loot_Strider Meat|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
    #label Tysha
    .goto Darkshore,40.30,59.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .accept 953 >>接任务: |cRXP_WARN_亚米萨兰的毁灭|r
    .target Sentinel Tysha Moonblade
step
    #completewith TheLay
    >>杀死|cRXP_ENEMY_诅咒的高出生者|r、|cRXD_ENEMY_Writing Highbornes |r和|cRXP_ENEMY_Wailing Highbornes | r。掠夺他们的|cRXP_Loot_Erencies|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,43.30,58.70
    >>单击|cRXP_PICK_the Lay of Ameth'Aran |r
    .complete 953,1 -- The Lay of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>单击|cRXP_PICK_Ancient Flame|r
    .complete 957,1 -- Ancient Moonstone Destroyed
step
#map Darkshore
    #label TheLay
    .goto Felwood,25.98,40.62
    >>单击|cRXP_PICK_the Fall of Ameth'Aran |r
    .complete 953,2 -- The Fall of Ameth'Aran
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>杀死|cRXP_ENEMY_诅咒的高出生者|r，|cRXD_ENEMY_Writing Highbornes |r和|cRXP_ENEMY_Wailing Highbornes | r。掠夺他们的|cRXP_Loot_ERCURES |r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .turnin 953 >>交任务: |cRXP_FRIENDLY_亚米萨兰的毁灭|r
step
    #completewith BashalFinal
    >>|cRXP_WARN_沿着这条路向北走，寻找附近的|r|cRXP_ENEMY_Foreststrider Fledglings|r
    >>杀死|cRXP_ENEMY_Foreststrider Fledgling|r。掠夺它们的|cRXX_Loot_Strider Meat|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
#map Darkshore
    #completewith BashalFinal
    .goto Felwood,27.70,10.03,60 >>Travel to Bashal'Aran
step
#map Darkshore
    #label BashalFinal
    .goto Felwood,27.70,10.03
    .target Asterion
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯特利安|r
    .turnin 957 >>交任务: |cRXP_FRIENDLY_巴莎兰|r
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>杀死|cRXP_ENEMY_Moonkins|r。掠夺他们的|T132832:0|t[|cRXP-Loot_Smal Egg|r]
    >>|cRXP_WARN_您稍后将使用|r|T132832:0|t[|cRXP_OOT_Small Eggs|r]将|r|T133971:0|t[烹饪]|cRXP-WARN_to 10升级
    .collect 6889,10,2178 -- Small Egg
    .skill cooking,10,1 -- step displays if cooking skill is less than 10
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
    .goto Darkshore,42.014,33.796,80,0
    .goto Darkshore,38.717,33.659,100,0
    .goto Darkshore,46.254,42.955,100,0
    .goto Darkshore,41.216,50.191,100,0
    .goto Darkshore,37.662,49.162,100,0
    .goto Darkshore,46.254,42.955
    >>|cRXP_WARN_小心|cRXP_ENEMY_Thistle Bears|r它们会眩晕|r
    >>杀死|cRXP_ENEMY_Foreststrider Fledlings|r。掠夺它们的|cRXX_OOT_Strider Meat|r
    .collect 5469,5
    .mob Foreststrider Fledgling
step
    .goto Darkshore,38.109,41.170,5,0
    .goto Darkshore,37.512,41.674
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    +购买|T134059:0|t[淡香料]
    >>|cRXP_WARN_使用|r|T134059:0|t[温和的香料]|cRXP_WARN_和|r|T132832:0|t[小鸡蛋]|cRXP_WARN__制作香草烤鸡蛋。这样做直到你的烹饪达到10级|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .accept 2178 >>接任务: |cRXP_WARN_炖陆行鸟|r
    .turnin 2178 >>交任务: |cRXP_FRIENDLY_炖陆行鸟|r
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
    .target Alanndarian Nightsong
step
    #label ToolsTurnin
    #map Darkshore
    .goto Felwood,19.98,14.40
    .target Thundris Windweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .turnin 958 >>交任务: |cRXP_FRIENDLY_上层精灵的工具|r
step
    #label end
    .goto Darkshore,32.417,43.809,15,0
    .goto Darkshore,32.417,43.809,0
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
    >>|cRXP_WARN_在等待船只到达Menethil港时，将您的|r|T135966:0|t[急救]|cRXP_WARN_调平|r
step
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_谢尔雷·布隆迪尔|r
    .fp Menethil Harbor >>获取Menethil Harbor航线
    .target Shellei Brondir
step
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>跳下码头的尽头，游到航路点
step
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>点击此处查看视频参考
    --*Please note that the unstuck feature doesn't work on the PTR
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 13-13莫丹湖（暗夜精灵）
#version 1
#group RestedXP生存指南（A）
#subgroup RXP Survival Guide 1-20
#next 13-15 西部荒野
#defaultfor NightElf

step
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
step
    .goto Westfall,54.28,9.26,50,0
    .goto Westfall,55.12,14.64,40,0
    .goto Westfall,56.36,17.81,65,0
    .goto Elwynn Forest,23.24,77.80
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,55.724,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯德雷克·布舍尔|r
    .vendor >>|cRXP_BUY_购买|r|T134830:0|t[小治疗药剂]|cRXP_Buy_if有库存|r
    .target Keldric Boucher
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >>获得暴风城飞行路线
    .target Dungar Longdrink
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    >>|cRXP_WARN_电车一到就上车。从另一边下车，在中间平台上寻找|cRXP_FRIENDLY_Monty|r|r
    >>|cRXP_WARN_铸造|r|T136221:0|t[召唤虚空行者]|cRXP_WARN_and|r|T135230:0|t[创建健康石]|cRX P_WARN_while waiting|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙提|r
    .accept 6661 >>接任务: |cRXP_WARN_捕捉矿道老鼠|r
    .target Monty
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    .use 17117 >>|cRXP_WARN_使用|r|T133942:0|t[Rat Catcher’s Flute]|cRXP_WARN_on|r|cRXP-ENEMY_Deeprun Rats|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙提|r
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >>接任务: |cRXP_LOOT_我的兄弟，尼普希|r
    .target Monty
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
    #completewith next
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << Warrior
    .goto Ironforge,70.774,90.279
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆伦·雷矛|r
    .accept 1680 >>接任务: |cRXP_LOOT_托姆斯·深炉|r
    .target Muren Stormpike
step
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .fp Ironforge >>获得铁炉堡飞行路线
    .target Gryth Thurden
step << Warrior
    .goto Ironforge,48.640,42.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托姆斯·深炉|r
    .turnin 1680 >>交任务: |cRXP_FRIENDLY_托姆斯·深炉|r
    .target Tormus Deepforge
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>购买以下物品，以便很快在莫丹湖更快地办理登机手续
    >>这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤
    >>|T134342:0|t[肥肠]
    >>|T134027:0|t[Bear Meat]
    >>|T134437:0|t[蜘蛛Ichor]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step
    .goto Dun Morogh,53.305,35.112,10,0
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .target Rudra Amberstill
    .goto Dun Morogh,56.503,47.923,100,0
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >>接任务: |cRXP_WARN_保护牲畜|r
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>跑上山的这一部分
step
    .goto Dun Morogh,62.6,46.1
    >>杀死|cRXP_ENEMY_Vagash|r。掠夺他的|cRXX_Loot_Fang |r
    >>|cRXP_WARN_这个任务很难。如果需要，为他找一个小组。如果你找不到一个小组或独自一人，请跳过这一步|r
    >>|cRXP_WARN_在你试图杀死|cRXP_ENEMY_Vagash|r之前，请观看下面的视频。它可以在任何课程中单独使用|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>|cRXP_WARN_点击此处查看视频参考|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
step
    #completewith next
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡杉·莫格什|r
    .vendor >>|cRXP_BUY_购买|r|T133968:0|t[新鲜烘焙面包]|cRXP_Buy_如果需要|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_购买|r|T133968:0|t[新鲜烘焙面包]|cRXP_Buy_和|r|T132815:0|t[冰牛奶]|cRX|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r, |cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 433 >>接任务: |cRXP_WARN_公众之仆|r
    .goto Dun Morogh,68.671,55.969
    .accept 432 >>接任务: |cRXP_WARN_该死的石腭怪！|r
    .goto Dun Morogh,69.084,56.330
    .target 参议员Mehr Stonehallow
    .target Foreman Stonebrow
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丹克·利刃|r
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>列车|T134708:0|t[采矿]
step << Warrior/Paladin/Rogue
    .cast 2580 >>|cRXP_WARN_Cast|r|T136025:0|t[查找矿物]
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>杀死|cRXP_ENEMY_Rockjaw颅骨重击者|r和|cRXX_ENEMY_ Rockjaw骨绑架者|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工头乔尼·石眉|r, |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>交任务: |cRXP_FRIENDLY_公众之仆|r
    .goto Dun Morogh,68.671,55.969
    .target 参议员Mehr Stonehallow
    .target Foreman Stonebrow
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .accept 419 >>接任务: |cRXP_LOOT_失踪的驾驶员|r
step
    >>单击|cRXP_PICK_Dwarven语料库|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >>交任务: |cRXP_FRIENDLY_失踪的驾驶员|r
    .accept 417 >>接任务: |cRXP_WARN_驾驶员的复仇|r
step
    >>杀死|cRXP_ENEMY_Mangcaw|r。掠夺他的|cRXX_Loot_Caw|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .unitscan Mangeclaw
step
    #som
    .goto Dun Morogh,83.892,39.188
    >>选择匕首，用它作为你的副手，直到你得到一把小贩的剑 << Rogue
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .turnin 417 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    >>|cRXP_WARN_选择|r|T135641:0|t[|cRXP_FRIENDLY_Craftsman's Dagger|r]|cRXP_WARN_a作为奖励。把它装备在你的手上|r << Rogue
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r
step
    #completewith next
    .goto Dun Morogh,84.4,31.1,25 >>前往: |cRXP_PICK_洛克莫丹|r
step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高索·布鲁姆|r
    .vendor >>|cRXP_WARN_供应商和维修（如需要）|r
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .target Mountaineer Stormpike
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
    >>|cRXP_WARN_还不接受风暴派克的命令|r
step
    #completewith ThelsamarFirst
    >>杀死|cRXP_ENEMY_Elder Black Bear|r。掠夺它们的|cRXX_Loot_Bear Meat|r
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|cRXX_Loot_野猪肠道|r
    >>杀死|cRXP_ENEMY_Forest潜伏者|r。掠夺他们的|cRXX_Loot_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>|cRXP_WARN_保存任意|r|T133970:0|t|cRXP_LOOT_[猪肉块]|r|cRXP_WARN_to用于整平|T133971:0|t[烹饪]|cRXP-WARN_water|r
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    #completewith next
    .goto Loch Modan,34.828,49.283,130 >>Travel to Thelsamar
step
    #label ThelsamarFirst
    .goto Loch Modan,34.828,49.283
    .target Vidra Hearthstove
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .accept 418 >>接任务: |cRXP_WARN_塞尔萨玛血肠|r
step
    #competewith StormpikeO
    .abandon 1338 >>放弃风暴派克的命令。这是为了解锁登山者风暴派克的任务，该任务将免费提供550xp的回合
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尼·铁心|r
    .vendor >>|cRXP_WARN_购买1或2个|r|T133634:0|t[棕色小袋子]|cRXP_WARN_if needed|r
    .target Yanni Stoutheart
step
    #label StormpikeO
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板纳克罗·壁炉|r
    .vendor >>|cRXP_BUY_购买|r|T133968:0|t[新鲜面包]|cRXP_Buy_。目标是拥有大约40|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_BUY|r|T133968:0|t[新鲜烘焙面包]|cRXP_BUY_and|r|T132815:0|t[冰牛奶]|cRX P_BUY_。目标是吃大约20个|r|T133968:0|t[新鲜烘焙面包]|cRXP_BUY_和40个|r| T132815:0|t[冰冷牛奶] << !Warrior !Rogue
    .target Innkeeper Hearthstove
step
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
step
    .group
    #completewith BraveSoul
    >>杀死|cRXP_ENEMY_Elder Black Bear|r。掠夺它们的|cRXX_Loot_Bear Meat|r
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|cRXX_Loot_野猪肠道|r
    >>杀死|cRXP_ENEMY_Forest潜伏者|r。掠夺他们的|cRXX_Loot_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    .solo
    #completewith StormpikeStop
    >>杀死|cRXP_ENEMY_Elder Black Bear|r。掠夺它们的|cRXX_Loot_Bear Meat|r
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|cRXX_Loot_野猪肠道|r
    >>杀死|cRXP_ENEMY_Forest潜伏者|r。掠夺他们的|cRXX_Loot_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
    .group
    #completewith MinerGear
    >>杀死|cRXP_ENEMY_Tunnel Rats|r。掠夺它们的|cRXX_Loot_Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    .group
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >>进入银流矿
step
    .group
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>打开|cRXP_PICK_Miners’League Crates|r。掠夺它们以获取|cRXP_Loot_Miners’Gear|r
    >>|cRXP_WARN_|cRXP_PICK_Miners’League Crates|r遍布矿井|r
    >>|cRXP_WARN_如果你现在想跳过，你可以在更高的级别上完成这个任务|r
    .complete 307,1 -- Miners' Gear (4)
step
    .group
    #completewith StormpikeStop
    >>杀死|cRXP_ENEMY_Elder Black Bear|r。掠夺它们的|cRXX_Loot_Bear Meat|r
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|cRXX_Loot_野猪肠道|r
    >>杀死|cRXP_ENEMY_Forest潜伏者|r。掠夺他们的|cRXX_Loot_Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step << Paladin/Warrior
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔伦·安德玛|r
    .vendor >>|cRXP_FRIENDLY_Nillen Andemar|r|cRXP_WARN_sells|r|T133476:0|t[|cRXP_FRIENDLY_Heavy Spiked Mace|r]|cRXP _WARN_这是一个有限供应项目|r
    >>|cRXP_WARN_看看是否有货，如果可以的话就买。如果你负担不起，那就从附近的|cRXP_ENEMY_Tunnel Rats|r那里磨钱，直到你有足够的钱|r
    >>|cRXP_WARN_快速完成此操作，因为其他玩家可能会在您之前购买|r
    .target Nillen Andemar
step
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
    >>|cRXP_ENEMY_隧道鼠|r|cRXP_WARN_can在莫丹湖产卵。查看您的世界地图以了解它们的位置|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高索·布鲁姆|r
    .vendor >>|cRXP_WARN_供应商和维修（如需要）|r
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >>交任务: |cRXP_FRIENDLY_肮脏的爪子|r
    .target Mountaineer Stormpike
step
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r
    .target Mountaineer Stormpike
step
    >>杀死|cRXP_ENEMY_Elder Black Bear|r。掠夺它们的|cRXX_Loot_Bear Meat|r
    >>杀死|cRXP_ENEMY_野猪|r。掠夺它们的|cRXX_Loot_野猪肠道|r
    >>杀死|cRXP_ENEMY_Forest潜伏者|r。掠夺他们的|cRXX_Loot_Ichor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
step
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >>交任务: |cRXP_FRIENDLY_塞尔萨玛血肠|r
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅尼·铁心|r
    >>|cRXP_WARN_购买|r|T135237:0|t[Flint and Tinder]|cRXP_WARN_along with 1|r|T135435:0|t[简单木材]|cRXP_WARN_。购买任何|r|T133634:0|t[棕色小袋子]|cRXP_WARN_if needed|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fp Thelsamar >>获取Thelsamar飞行路线
    .target Thorgrum Borrelson
step
    .goto Loch Modan,22.071,73.127
    .target Mountaineer Cobbleflint
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >>接任务: |cRXP_WARN_保卫国王的领土|r
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .target Captain Rugelfuss
    .accept 267 >>接任务: |cRXP_LOOT_穴居人的威胁|r
step
    #completewith next
    .goto Loch Modan,29.9,68.2,45,0
    .goto Loch Modan,30.76,69.97,20 >>前往斯通斯普利特山谷
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58,45,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58
    >>杀死|cRXP_ENEMY_Stonessplit Troggs|r和|cRXX_ENEMY_ Stonessplet Scouts|r。掠夺他们的|cRXD_Loot_Tethes|r
    >>|cRXP_WARN_确保您有10|r|T132889:0|t[Linen Cloth]|cRXP_WARN_form用于您即将进行的圣骑士类任务|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >>交任务: |cRXP_FRIENDLY_保卫国王的领土|r
step
    #label TroggT
    .goto Loch Modan,23.233,73.675
    .target Captain Rugelfuss
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .turnin 267 >>交任务: |cRXP_FRIENDLY_穴居人的威胁|r
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .fly Ironforge >>飞往铁炉堡
    .target Thorgrum Borrelson
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈瑞克·石鼓|r
    >>|cRXP_BUY_购买一个|r|T135468:0|t[Smoldering Wand]|cRXP_Buy_。如果你还没有在15级的时候装备它|r
    .goto Ironforge,23.141,15.922
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托德雷·铁矿|r
    .goto Ironforge,25.204,10.749
    .trainer >>训练你的职业技能
    .target Toldren Deepiron
step << Rogue
    .goto Ironforge,51.494,15.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬斯维克|r
    .trainer >>训练你的职业技能
    .target Fenthwick
step << Rogue
    .goto Ironforge,51.494,15.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布里维夫·石拳|r
    .train 198 >>火车1h梅斯
    .target Buliwyf Stonehand
step << Hunter
    .goto Ironforge,69.865,82.886
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷格努斯·雷石|r
    .trainer >>训练你的职业技能
    .target Regnus Thundergranite
step << Warrior
    .goto Ironforge,65.907,88.409
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比尔班·飞钳|r
    .trainer >>训练你的职业技能
    .target Bilban Tosslespanner
step << Warrior
    .goto Ironforge,61.170,89.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布里维夫·石拳|r
    .train 199 >>列车2h梅斯
    .target Buliwyf Stonehand
step << Rogue
    .goto Ironforge,61.170,89.539
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布里维夫·石拳|r
    .train 198 >>火车1h梅斯
    .target Buliwyf Stonehand
step << Warrior
    .goto Ironforge,62.551,88.699
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯洛米尔·铁手|r
    .vendor >>|cRXP_BUY_购买|r|T133046:0|t[石锤]|cRXP_Buy_如果你买得起的话|r
    .target Kelomir Ironhand
step
    .goto Ironforge,74.40,51.10,30,0
    .goto Ironforge,74.40,51.10,0
    >>|cRXP_WARN_进入Deeprun Tram|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙提|r
    .target Monty
    .accept 6661 >>接任务: |cRXP_WARN_捕捉矿道老鼠|r
step
    .use 17117 >>|cRXP_WARN_使用|r|T133942:0|t[Rat Catcher’s Flute]|cRXP_WARN_on|r|cRXP-ENEMY_Deeprun Rats|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_蒙提|r
    .target Monty
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
    .timer 11,Deeprun Rat Roundup RP
    .accept 6662 >>接任务: |cRXP_LOOT_我的兄弟，尼普希|r
step
    #completewith next
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    >>|cRXP_WARN_如果在等电车时需要，请调整|r|T135966:0|t[急救]|cRXP_WARN_and|r|T133971:0|t[烹饪]|cRX P_WARN_if needed for the Tram|r
    >>|cRXP_WARN_你需要|r|T135966:0|t[急救]|cRXP_WARN_to达到80才能完成24级任务|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼普希|r
    >>|cRXP_FRIENDLY_Nipsy|r|cRXP_WARN_is在中心平台上|r
    .turnin 6662 >>交任务: |cRXP_FRIENDLY_我的兄弟，尼普希|r
step
    #completewith next
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >>接任务: |cRXP_WARN_雷矛的包裹|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗伦·长须|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >>交任务: |cRXP_FRIENDLY_卡尔·雷矛的订单|r
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙德拉斯·月树|r
    .trainer >>训练你的职业技能
    .target Sheldras Moontree
step << Druid
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>如果你不打算将|T136065:0|t[草药学]作为主要职业，请购买5|T134187:0|t[Earthroot]进行未来的探索
    >>购买以下物品，很快就能在Westfall快速上车
    >>这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤
    >>|T133972:0|t
    >>|T133884:0|t[鼠眼]
    >>|T135997:0|t[Goretusk Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusk肝脏]
    >>|T132794:0|t[油瓶]
    .collect 2449,5,6123,1 -- Earthroot (5)
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step << !Druid
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师亚克森|r
    >>购买以下物品，很快就能在Westfall快速上车
    >>这将节省你的时间，因为你不需要到处寻找暴徒来杀人。如果您不想购买，请跳过此步骤
    >>|T133972:0|t
    >>|T133884:0|t[鼠眼]
    >>|T135997:0|t[Goretusk Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusk肝脏]
    >>|T132794:0|t[油瓶]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step
    .goto StormwindClassic,55.724,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯德雷克·布舍尔|r
    .vendor >>|cRXP_BUY_购买|r|T134830:0|t[小治疗药剂]|cRXP_Buy_if有库存|r
    .target Keldric Boucher
step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fp Stormwind >>获得暴风城飞行路线
    .target Dungar Longdrink
]])
