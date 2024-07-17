RXPGuides.RegisterGuide([[
#df
#name A1醒岸龙雕文
#displayname Waking Shores Dragon Glyphs
#version 2
#groupweight 7
#group RestedXP Dragon Glyphs
#next B1奥恩阿兰平原龙雕文

step
    #completewith WakingShoreDragonGlyphs
    +欢迎使用龙雕指南
    *This will guide you through all the Dragon Glyphs.
step
    #title Dragon Glyph: Skytop Observatory Rostrum
    >>使用|T4640498:0|t[Skyward Ascend]一次
    .goto 2022,75.26,57.07
    .achievement 16575,2 >>拿起龙雕文：Skytop Observatory Rostrum
step
    #completewith next
    .goto 2022,75.01,55.57,10 >>如果你解锁了渡船，就使用它
step
    #title Dragon Glyph: Skytop Observatory Tower
    >>使用|T4640498:0|t[Skyward Ascend]三次|cRXP_WARN_if you have unlock the ferry |r
    .goto 2022,75.26,57.07
    .achievement 16575,1 >>拿起龙雕文：塔顶天文台塔
step
    #completewith next
    +从Skytop天文台塔：它应该足以向下滑翔。
    *From somewhere else: Use |T4640498:0|t[Skyward Ascend] 1-3 times from the base of the tower
step
    #title Dragon Glyph: Dragonheart Outpost
    .line 2022,75.26,57.07,69.18,46.23
    .goto 2022,69.18,46.23
    .achievement 16575,10 >>拿起龙雕文：上半部分塔后的龙艺术前哨
step
    #completewith next
    +从Dragonhart前哨站出发：沿着箭头滑行
    *From somewhere else: Use |T4640498:0|t[Skyward Ascend] 1-3 times from the base of the tower
step
    #title Dragon Glyph: Wingrest Embassy
    >>|cRXP_WARN_仅在必要时使用|T4640498:0|t[Skyward Ascend]|r
    .line 2022,73.58,37.09,30,0
    .goto 2022,74.94,37.50
    .achievement 16575,5 >>拿起龙雕文：在一座破碎的塔顶上的Wingrest大使馆
step
    #title Dragon Glyph: Scalecracker Peak
    >>|cRXP_WARN_花费所有已经收集的字形，等待至少3次vigar费用|r
    >>尽可能频繁地使用|T4640498:0|t[Skyward Ascend]，但在两次投射之间始终等待几秒钟。
    >>你可能需要偶尔充电（地图上标出了一些好的地方）。
    .line 2022,74.94,37.50,73.21,20.51
    .goto 2022,72.96,22.67,0
    .goto 2022,74.09,22.00,0
    .goto 2022,72.87,26.31,0
    .goto 2022,72.85,21.06,0
    .goto 2022,73.21,20.51
    .achievement 16575,11 >>拾取龙雕文：大山顶的Scalecracker峰
step
    #completewith next
    +从Scalecracker峰：滑翔即可。全速滑行时尽量保持高姿态
    *From somewhere else: Just fly there, wait for at least 3 vigor charges and use |T4640498:0|t[Skyward Ascend] to reach the tower
step
    #title Dragon Glyph: Life-Binder Observatory
    >>仅在需要时使用|T4640498:0|t[Skyward Ascend]
    .line 2022,21.91,51.41,52.60,17.12
    .goto 2022,52.60,17.12
    .achievement 16575,8 >>拿起龙雕文：塔上的Life Binder天文台
step
    #completewith next
    +来自Life Binder天文台：滑翔即可。全速滑行时尽量保持高姿态
    *From somewhere else: Fly to the Obsidian Throne, wait form 4 vigor charges and use |T4640498:0|t[Skyward Ascend] to reach the tower
step
    #title Dragon Glyph: Obisidan Throne
    >>仅当您需要飞上山时才使用|T4640498:0|t[向上攀登]。
    >>你可能需要在两者之间休息一下，等待活力（地图上标出了一些好的地方）
    .line 2022,73.21,20.51,21.91,51.41
    .goto 2022,26.42,53.52,0
    .goto 2022,27.52,48.74,0
    .goto 2022,30.02,47.88,0
    .goto 2022,21.91,51.41
    .achievement 16575,12 >>拿起龙雕文：Obisidan王座在熔岩池上方的山顶
step
    #completewith next
    +从奥比西丹王座：全速滑行时，尽量保持高姿态。应该没有必要使用任何活力
    *From somwhere else: Fly to the Obsidian Bulwark. Use |T4640498:0|t[Skyward Ascend] 1-3 times to reach the glyph
step
    #title Dragon Glyph: Obsidian Bulwark
    .line 2022,21.91,51.41,40.98,71.91
    .goto 2022,40.98,71.91
    .achievement 16575,6 >>拾取龙雕文：薄山顶黑石壁垒
step
    #completewith next
    +从黑曜石堡垒：使用|T4640498:0|t[Skyward Ascend]2-4次。
    *From somewhere else: Fly to the Obsidian Bulwark and spam |T4640498:0|t[Skyward Ascend] to reach the glyph
step
    #title Dragon Glyph: The Overflowing Spring
    .line 2022,40.98,71.91,46.39,52.07
    .goto 2022,46.39,52.07
    .achievement 16575,7 >>拾龙雕文：山顶泉水漫溢
step
    #completewith next
    +从溢出的春天：只需滑动到字形
    *From somewhere else: An easy way is to get to Ruby Life Pools and fly directly to the glyph
step
    #title Dragon Glyph: Crumbling Life Archway
    >>应该没有必要使用任何活力。
    .line 2022,46.39,52.07,57.65,54.83
    .goto 2022,57.65,54.83
    .achievement 16575,9 >>捡起龙雕文：在其中一个牌楼下摇摇欲坠的生命牌楼
step
    #completewith next
    +来自摇摇欲坠的生命拱门：三次使用|T4640498:0|t[Skyward Ascend]应该足够了，但如果需要，你可以使用更多
    *From somewhere else: The easiest way is to get to Ruby Life Pools and fly up to the glyph
step
    #title Dragon Glyph: Ruby Life Pools Peaks
    .line 2022,57.65,54.83,54.43,74.22
    .goto 2022,54.43,74.22
    .achievement 16575,4 >>拿起龙雕文：红宝石生命池高山之上的山峰
step
    #completewith next
    +来自Ruby Life Pools Peaks：你不应该使用任何活力电荷
    *From somewhere else: An easy way is to get to Ruby Life Pools and fly directly to the glyph
step
    #title Dragon Glyph: Flashfrost Enclave
    >>|cRXP_WARN_花费你所有已经收集的字形，然后等待，直到你之后至少有3个vigar费用|r
    .line 2022,54.43,74.22,58.09,78.58
    .goto 2022,58.09,78.58
    .achievement 16575,3 >>拿起龙雕文：飞地入口上方的闪霜飞地
step
    #completewith next
    +从闪霜飞地：等待，直到你有至少3个维加电荷。尽量至少节省一次活力充电
    *From somewhere else: The easiest way is to fly from Valdrakken
step
    #label WakingShoreDragonGlyphs
    #title Dragon Glyph: Rubyscale Outpost
    >>|cRXP_WARN_花费所有已收集的字形|r
    >>三次使用|T4640498:0|t[Skyward Ascend]应该足够了，但如果需要，您可以使用更多
    .line 2022,58.09,78.58,48.82,86.64
    .goto 2022,51.01,82.30,45,0
    .goto 2022,48.82,86.64
    .achievement 16576,11 >>拿起龙雕文：Rubyscale前哨站离地面几码远
]])

RXPGuides.RegisterGuide([[
#df
#name B1奥恩阿兰平原龙雕文
#displayname Ohn'ahran Plains Dragon Glyphs
#version 2
#group RestedXP Dragon Glyphs
#next C1 Azure Span Dragon雕文

step
    #title Dragon Glyph: Mirewood Fen
    >>使用|T4640498:0|t[Skyward Ascend]一到两次
    .goto 2023,78.31,21.31
    .achievement 16576,12 >>捡起龙雕文：Mirewood Fen离地几码远
step
    #completewith next
    +来自Mirewood Fen：等待3次能量充电。尽可能频繁地使用|T4640498:0|t[Skyward Ascend]，但在两次投射之间始终等待几秒钟。
    +从其他地方：一个简单的方法是从瓦尔德拉肯飞往那里
step
    #title Dragon Glyph: Rusza'thar Reach
    .line 2023,78.31,21.31,86.51,39.40
    .goto 2023,86.51,39.40
    .achievement 16576,9 >>拿起龙雕文：鲁萨之塔到达塔上方
step
    #completewith next
    +从Rusza'tar河段：全速滑行时，尽量保持在尽可能高的位置。你应该能够在路上至少充电2次。当你到达山顶时，根据需要经常使用|T4640498:0|t[Skyward Ascend]
    *From somewhere else: Fly to Maruukai, wait for 4 vigor charges and use |T4640498:0|t[Skyward Ascend] to reach the glyph
step
    #title Dragon Glyph: Ohn'ahran's Roost
    .line 2023,86.51,39.40,57.97,31.11
    .goto 2023,57.97,31.11
    .achievement 16576,1 >>拿起龙雕文：在雕像上方的山顶上的奥的公鸡
step
    #completewith next
    +来自奥的雄鸡：全速滑行时尽量保持高姿态。你应该能够在路上充满活力。使用|T4640498:0|t[Skyward Ascend]2-3次即可登顶
    *From somewhere else: Get to the bottom of the mountain, wait for your vigor charges and spam |T4640498:0|t[Skyward Ascend] until you're at the top
step
    #title Dragon Glyph: Nokhud Hold
    .line 2023,57.97,31.11,30.71,35.57
    .goto 2023,30.71,35.57
    .achievement 16576,2 >>拿起龙雕文：诺胡德守住山顶
step
    #completewith next
    +从Nokhud Hold：在全速滑行的同时，尽量保持在尽可能高的位置。你应该能够在路上充满活力
    *From somewhere else: Fly to the Shady Sanctuary. Wait for your vigor charges and spam |T4640498:0|t[Skyward Ascend] until you're at the top.
step
    #title Dragon Glyph: Emerald Gardens
    .line 2023,30.71,35.57,30.12,61.35
    .goto 2023,30.12,61.35
    .achievement 16576,3 >>拿起龙雕文：Shady Sanctuary上方的翡翠花园
step
    #completewith next
    +从翡翠花园：根据需要经常使用|T4640498:0|t[Skyward Ascend]
    *From somewhere else: Get to the bottom of the mountain, wait for your vigor charges and spam |T4640498:0|t[Skyward Ascend] until you reach the glyph
step
    #title Dragon Glyph: The Eternal Kurgans
    >>|cRXP_WARN_Spend all your glyphs|r
    .line 2023,30.12,61.35,29.44,75.72
    .goto 2023,29.44,75.72
    .achievement 16576,4 >>拿起龙雕文：空中永恒的库尔干人
step
    #completewith next
    +来自永恒的库尔干人：等到你有3个维加冲锋。在全速滑行时，尽量保持高姿态。只有在真正需要时才使用|T4640498:0|t[Skyward Ascend]
    *From somewhere else: Fly to Teerakai, wait for your vigor charges and spam |T4640498:0|t[Skyward Ascend] until you reach the glyph
step
    #title Dragon Glyph: Szar Skeleth
    .line 2023,29.44,75.72,44.61,64.57
    .goto 2023,44.61,64.57
    .achievement 16576,5 >>拿起龙雕文：萨尔在塔顶
step
    #completewith next
    +来自Szar Skeleth：如果你的能量较少，请等待3次能量。使用|T4640498:0|t[Skyward Ascend]2-3次到达字形
    *From somewhere else: Fly to Teerakai, wait for your vigor charges and spam |T4640498:0|t[Skyward Ascend] until you reach the glyph
step
    #title Dragon Glyph: Mirror of the Sky
    .line 2023,44.61,64.57,46.97,72.84
    .goto 2023,46.97,72.84
    .achievement 16576,6 >>拿起龙雕文：山上空中的天空之镜
step
    #completewith next
    +来自天空之镜：使用|T4640498:0|t[Skyward Ascend]2-3次应该足以到达字形
    +从其他地方：飞往Ohn'iri Springs，等待2次能量充电和垃圾邮件|T4640498:0|t[天空上升]，直到你到达字形
step
    #title Dragon Glyph: Ohn'iri Springs
    .line 2023,46.97,72.84,57.08,80.47
    .goto 2023,57.08,80.47
    .achievement 16576,7 >>拿起龙雕文：奥恩伊里泉上方的空中奥恩伊里泉
step
    #completewith next
    +从Ohn'iri泉出发：全速滑行时，尽量保持高度。使用|T4640498:0|t[Skyward Ascends]1-2次到达字形
    *From somewhere else: Get to the Windsong Rise area, wait for 2-3 vigor charges and spam |T4640498:0|t[Skyward Ascend] until you reach the glyph
step
    #title Dragon Glyph: Windsong Rise
    .line 2023,57.08,80.47,61.48,64.36
    .goto 2023,61.48,64.36
    .achievement 16576,10 >>拿起龙雕文：风在空中升起
step
    #completewith next
    +从Windsong Rise：全速滑行时，尽量保持在高处。你应该能够在路上重新充电。|T4640498:0|t[Skyward Ascend]的2-3次使用应该足够了，但如有必要，您可以使用更多
    *From somewhere else: Fly to the Cobalt Assembly, wait for 1-2 vigor charges and spam |T4640498:0|t[Skyward Ascend] until you reach the glyph
step
    #title Dragon Glyph: Dragonsprings Summit
    .line 2023,61.48,64.36,84.57,77.79
    .goto 2023,84.57,77.79
    .achievement 16576,8 >>拿起龙雕文：龙在大海上方的空中登顶
]])

RXPGuides.RegisterGuide([[
#df
#name C1 Azure Span Dragon雕文
#displayname Azure Span Dragon Glyphs
#version 2
#group RestedXP Dragon Glyphs
#next D1 Thaldraszus龙雕文

step
    #title Dragon Glyph: Forkriver Crossing
    >>使用|T4640498:0|t[Skyward Ascend]一到两次
    .goto 2023,36.58,27.96
    .achievement 16577,11 >>拿起龙雕文：叉河穿越离地面几码远的地方
step
    #completewith next
    +来自Forkriver Crossing：尽量少用活力电荷
    *From somewhere else: Fly to the Cobalt Assembly and use |T4640498:0|t[Skyward Ascend] to reach the glyph
step
    #title Dragon Glyph: The Fallen Course
    .line 2024,36.58,27.96,56.81,16.12
    .goto 2024,56.81,16.12
    .achievement 16577,12 >>捡起龙雕文：离地面几码远的堕落球场
step
    #completewith next
    +来自堕落球场：在全速滑行的同时，尽量保持高度。你应该能够在路上补充1-2次活力。使用|T4640498:0|t[Skyward Ascend]2-3次以保持足够高
    *From somewhere else: Get to the bottom of the mountain, wait for your vigor charges and spam |T4640498:0|t[Skyward Ascend] until you're at the top. It's possible that you have to recharge your vigor on the way up
step
    #title Dragon Glyph: Rhonin's Shield
    >>|cRXP_WARN_Spend all your glyphs|r
    .line 2024,56.81,16.12,67.64,29.13
    .goto 2024,67.64,29.13
    .achievement 16577,9 >>拿起龙雕文：塔顶的罗宁之盾
step
    .isQuestTurnedIn 70220
    #completewith next
    .goto 2024,71.97,35.37,15 >>飞入“岛上的风”
step
    #title Dragon Glyph: Vakthros Range
    >>使用|T4640498:0|t[Skyward Ascend]2-3次到达字形
    .line 2024,67.64,29.13,72.62,39.78
    .goto 2024,72.62,39.78
    .achievement 16577,10 >>拿起龙雕文：冰冻海洋上方的瓦克斯山脉
step
    #completewith next
    +从Vakthros靶场：试着向下瞄准以全速飞行。你应该能够在路上重新充电
    *From somewhere else: Follow the way to the glyph from Rhonin's Shield or Camp Nowhere and use |T4640498:0|t[Skyward Ascend] to reach the glyph. You may have to recharge your vigor occasionally
step
    #title Dragon Glyph: Lost Ruins
    .line 2024,72.62,39.78,70.58,46.26
    .goto 2024,70.58,46.26
    .achievement 16577,4 >>捡起龙雕文：塔顶失落的废墟
step
    #completewith next
    +从失落的废墟中：全速滑行时，尽量保持高度。只有在真正需要时才使用|T4640498:0|t[Skyward Ascend]
    *From somewhere else: Fly to Camp Nowhere and use |T4640498:0|t[Skyward Ascend] from the bottom of the tower to reach the glyph
step
    #title Dragon Glyph: Ruins of Karnthar
    .line 2024,70.58,46.26,68.64,60.26
    .goto 2024,68.64,60.26
    .achievement 16577,3 >>捡起龙雕文：断壁后塔顶的卡尔塔废墟
step
    #completewith next
    +来自卡尔塔废墟：试着通过向下瞄准来全速飞行。你应该能够在路上重新充电
    *From somewhere else: Fly to Camp Nowhere, use |T4640498:0|t[Skyward Ascend] one time and fly down to the glyph
step
    #title Dragon Glyph: Imbu
    .line 2024,68.64,60.26,60.58,70.25
    .goto 2024,60.58,70.25
    .achievement 16577,7 >>在瀑布旁边的空中捡起龙雕文：英布。你必须把目标定得低一点
step
    #completewith next
    +从Imbu:Spam|T4640498:0|t[Skyward Ascend]到达字形。使用该功能时目标稍高
    *From somewhere else: Fly to Camp Nowhere, follow the way to the waypoint and spam |T4640498:0|t[Skyward Ascend] to reach the glyph
step
    #title Dragon Glyph: Zelthrak Outpost
    .line 2024,60.58,70.25,52.95,49.09
    .goto 2024,52.95,49.09
    .achievement 16577,8 >>拿起龙雕文：Zelthrak前哨站在大树的一半
step
    #completewith TheAzureSpanDragonGlyphAzureArchives
    +从任何地方：飞到Azure档案馆，然后执行下一步操作
step
    .isQuestTurnedIn 65852
    #completewith TheAzureSpanDragonGlyphAzureArchives
    .goto 2024,39.57,60.25,5 >>使用ExtraActionButton
step
    .isQuestAvailable 65852
    #completewith TheAzureSpanDragonGlyphAzureArchives
    +|cRXP_WARN_在塔的底部等待，直到你的能量重新充电|r
    *Use |T4640498:0|t[Skyward Ascend] four times. You can let your vigor charges recharge on a lower plataeu if necessary
    .goto 2024,40.63,59.45,30,0
step
    #label TheAzureSpanDragonGlyphAzureArchives
    #title Dragon Glyph: Azure Archives
    >>当你在塔顶时，只需使用|T4640498:0|t[Skyward Ascend]一次，就可以飞越字形
    .line 2024,52.95,49.09,40.63,59.45,39.30,63.12
    .goto 2024,39.30,63.12
    .achievement 16577,2 >>在奥术塔上方的空中拾取龙雕文：Azure档案
step
    #completewith next
    +来自Azure档案：全速滑行时，尽量保持高姿态。你应该能够恢复大部分精力。如果可能，请仅使用|T4640498:0|t[Skyward Ascend]一次
    *From somewhere else: Fly to the Three-Falls Lookout and then glide down to the glyph
step
    #title Dragon Glyph: Brackenhide Hollow
    .line 2024,39.30,63.12,10.40,35.89
    .goto 2024,10.40,35.89
    .achievement 16577,5 >>拿起龙雕文：空中的Brackenhide空心
step
    #completewith next
    +从Brackenhide Hollow：全速滑行时，尽量保持高度。你应该能够恢复大部分精力。使用|T4640498:0|t[Skyward Ascend]3-5次。使用该功能时目标稍高
    *From somewhere else: Fly to the Three-Falls Lookout and then use |T4640498:0|t[Skyward Ascend] to reach the glyph
step
    #title Dragon Glyph: Creektooth Den
    .line 2024,10.40,35.89,26.74,31.67
    .goto 2024,26.74,31.67
    .achievement 16577,6 >>捡起龙雕文：树顶的爬藤穴
step
    #completewith next
    +从Creektooth巢穴：在塔的底部等待，直到所有的vigar电荷都重新充电。尽可能频繁地使用|T4640498:0|t[Skyward Ascend]，但每次施放之间要等待2秒。
    *From somewhere else: Fly to the Cobalt Assembly and use all your vigor charges to reach the glyph
step
    #title Dragon Glyph: Cobalt Assembly
    >>|cRXP_WARN_Spend all your glyphs|r
    .line 2024,26.74,31.67,45.83,25.73
    .goto 2024,45.83,25.73
    .achievement 16577,1 >>捡起塔上方的龙雕文：钴装
]])

RXPGuides.RegisterGuide([[
#df
#name D1 Thaldraszus龙雕文
#displayname Thaldraszus Dragon Glyphs
#version 2
#group RestedXP Dragon Glyphs
#next E1禁足龙雕文

step
    #title Dragon Glyph: South Hold Gate
    >>使用|T4640498:0|t[Skyward Ascend]2-3次到达字形
    .goto 2025,35.5,85.5
    .achievement 16578,3 >>拿起龙雕文：塔顶南门
step
    #completewith next
    +从任何地方出发：尽可能多地使用|T4640498:0|t[Skyward Ascend]登上山顶。你可能不得不在某些时候停下来给自己充电
step
    #title Dragon Glyph: Stormshroud Peak
    .line 2025,35.5,85.5,46.0,73.0
    .goto 2025,46.0,73.0
    .achievement 16578,2 >>拿起龙雕文：山顶的风暴峰
step
    #completewith next
    +从风暴峰：它应该足以滑翔下来
    *From somewhere else: Teleport to Alexstrasza in Valdrakken and fly up
step
    #title Dragon Glyph: Valdrakken
    --x .line 2025,46.0,73.0, 2112 58.7,38.1
    .goto 2112,58.7,38.1
    .achievement 16578,4 >>拿起龙雕文：瓦尔德拉肯在塔顶
step
    #completewith next
    +从任何地方：只要下滑就足够了
step
    #title Dragon Glyph: Gelikyr Overlook
    --x line from map to map
    .goto 2025,52.7,67.4
    .achievement 16578,11 >>拿起龙雕文：盖利基尔俯瞰下桥
step
    #completewith next
    +从任何地方：使用|T4640498:0|t[Skyward Ascend]2-3次到达字形
step
    #title Dragon Glyph: Passage of Time
    .line 2025,52.7,67.4,55.6,72.1
    .goto 2025,55.6,72.1
    .achievement 16578,12 >>捡起龙雕文：通道拱门下的时间流逝
step
    #completewith next
    .goto 2025,57.46,66.55,50,0
    +从任何地方：在龙卷风中飞行以获得上升气流。使用|T4640498:0|t[Skyward Ascend]四到五次到达字形
step
    #title Dragon Glyph: Tyrhold
    .line 2025,55.6,72.1,61.5,56.6
    .goto 2025,61.5,56.6
    .achievement 16578,6 >>拿起龙雕文：飞石上的暴君
step
    #completewith next
    +泰勒霍尔德：只要下滑就足够了
    *From somewhere else: The easiest way is to start in Valdrakken from the top
step
    #title Dragon Glyph: Algeth'era
    .line 2025,61.5,56.6,49.8,40.2
    .goto 2025,49.8,40.2
    .achievement 16578,5 >>拿起龙雕文：阿尔盖特拉在塔顶
step
    #completewith next
    +从任何地方：使用|T4640498:0|t[Skyward Ascend]四到五次。你可能需要让你的活力充电
step
    #title Dragon Glyph: Algeth'ar Academy
    .line 2025,49.8,40.2,62.4,40.4
    .goto 2025,62.4,40.4
    .achievement 16578,7 >>拿起龙雕文：阿尔盖特拉学院在圆顶的塔顶
step
    #completewith next
    +阿尔及利亚学院：下滑就足够了
    *From somewhere else: The easiest way is to start in Valdrakken from the top and to glide down
step
    #title Dragon Glyph: Veiled Ossuary
    .line 2025,62.4,40.4,67.0,11.7
    .goto 2025,67.0,11.7
    .achievement 16578,8 >>拿起龙雕文：塔顶的面纱石棺
step
    #completewith next
    +最佳选择：如果你在瓦尔德拉肯有炉石，那么就使用它，去阿列克斯特拉萨，只使用|T4640498:0|t[Skyward Ascend]3-4次就可以飞到那里
step
    #title Dragon Glyph: Vault of the Incarnates
    >>小心你在这里使用你的活力——你需要很多，或者飞一条间接的路。
    >>滑翔以补充体力并经常使用|T4640498:0|t[向上上升]来增加高度
    .line 2025,67.0,11.7,72.4,51.7
    .goto 2025,72.4,51.7
    .achievement 16578,9 >>拿起龙雕文：突袭左侧的空中化身金库
step
    #completewith next
    +从任何地方：滑翔为活力充电并尽可能多地使用|T4640498:0|t[Skyward Ascend]，你可能不得不在山崖上休息
step
    #title Dragon Glyph: Thaldraszus Apex
    .line 2025,72.4,51.7,72.9,69.2
    .goto 2025,72.9,69.2
    .achievement 16578,10 >>拿起龙雕文：塔尖上的Thaldraszus Apex
step
    #completewith next
    +来自Thaldraszus Apex：只要下滑就足够了。你可以使用浪涌前进来加快速度。
    *From somewhere else: Fly to the Temporal Conflux and use |T4640498:0|t[Skyward Ascend] to reach the glyph
step
    #title Dragon Glyph: Temporal Conflux
    .line 2025,72.9,69.2,66.0,82.3
    .goto 2025,66.0,82.3
    .achievement 16578,1 >>拿起龙雕文：塔顶的时间交汇
]])

RXPGuides.RegisterGuide([[
#df
#name E1禁足龙雕文
#displayname Forbidden Reach Dragon Glyphs
#next F1 Zaralek洞穴龙雕文
#version 2
#group RestedXP Dragon Glyphs

step
    #completewith next
    .hs >>使用你的炉石，如果它在瓦尔德拉肯
step
    >>如果这个任务还没有出现在你的Questlog中，或者你已经完成了，那么当你进入Valdrakken时，它应该会弹出在你的Quistlog中
    .accept 74381 >>接任务: |cRXP_WARN_隐世的传承|r
    .goto 2112,60.80,39.73
step
    #completewith next
    .cast 395219 >>电传到各方面的席位
    .goto 2112,61.93,32.2
    >>|cRXP_WARN_或者，你可以直接飞到瓦尔德拉肯塔的顶部，跳过这一步|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurazidaia|r
    >>|cRXP_WARN_您可以使用ESC跳过即将到来的过场。|r
    .isOnQuest 74381
    .goto 2112,61.03,26.07
    .skipgossip 201398,1
    .complete 74381,1 --1/1 Hear Kurazidaia's report
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurazidaia|r
    .goto 2112,61.03,26.07
    .turnin 74381 >>Turn in Hidden Legacies
    .accept 73076 >>接任务: |cRXP_WARN_再登离岛|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flightmaster Aluri|r
    .goto 2112,44.05,67.90
    .skipgossip 2
    .complete 73076,1 --1/1 Speak with Flightmaster Aluri to fly to the Forbidden Reach (Optional)
    .timer 158, Forbidden Reach Flight Time
step
    #completewith next
    +使用|T4640498:0|t[Skyward Ascend]上升，|T2103880:0|t向前加速
    *Be sure not to use up all your Vigor charges at once. If you need to recharge Vigor try gliding instead.
step
    #title Dragon Glyph: Winglord's Perch
    >>|cRXP_WARN_Spend all your glyphs|r
    .line 2151,35.86,59.11,18.3,13.2
    .goto 2151,18.3,13.2
    .achievement 17411,1 >>拿起龙雕文：藏在岛上一座破碎的小楼里的翼主鲈鱼
step
    #completewith next
    +使用|T4640498:0|t[Skyward Ascend]上升，|T2103880:0|t向前加速
    *Be sure not to use up all your Vigor charges at once. If you need to recharge Vigor try gliding instead.
step
    #title Dragon Glyph: Caldera of the Menders
    >>|cRXP_WARN_Spend all your glyphs|r
    .line 2151,18.3,13.2,37.73,30.58
    .goto 2151,37.73,30.58
    .achievement 17411,8 >>拿起龙雕文：隐藏在一座破碎建筑内的门德斯之丘
step
    #completewith next
    +要想登上天空之塔，请经常使用|T4640498:0|t[Skyward Ascend]
    *To recharge Vigor, glide down to the nearest ground.
step
    #title Dragon Glyph: Froststone Peak
    .line 2151,37.73,30.58,62.51,32.35
    .goto 2151,62.51,32.35
    .achievement 17411,3 >>捡起龙雕文：天空中一座塔的天花板下隐藏着霜石峰
step
    #completewith next
    +使用|T4640498:0|t[Skyward Ascend]上升，|T2103880:0|t向前加速
    *Be sure not to use up all your Vigor charges at once. If you need to recharge Vigor try gliding instead.
step
    #title Dragon Glyph: Dragonskull Island
    .line 2151,62.51,32.35,79.45,32.63
    .goto 2151,79.45,32.63
    .achievement 17411,4 >>拿起龙雕文：隐藏在3棵树之间的龙库尔岛
step
    #completewith next
    +要到达这座山，请经常使用|T4640498:0|t[向上攀登]
    *To recharge Vigor, glide down to the nearest ground.
step
    #title Dragon Glyph: Stormsunder Mountain
    .line 2151,79.45,32.63,77.29,55.09
    .goto 2151,77.29,55.09
    .achievement 17411,5 >>拾取龙雕文：隐藏在山顶上的风暴山
step
    #completewith next
    +使用|T4640498:0|t[Skyward Ascend]上升，|T2103880:0|t向前加速
    *Be sure not to use up all your Vigor charges at once. If you need to recharge Vigor try gliding instead.
step
    #title Dragon Glyph: Talonlord's Perch
    .line 2151,77.29,55.09,59.07,65.05
    .goto 2151,59.07,65.05
    .achievement 17411,7 >>捡起龙雕文：塔隆洛德的珀奇藏在塔顶
step
    #completewith next
    +要到达雪山，请经常使用|T4640498:0|t[向上攀登]
    *To recharge Vigor, glide down to the nearest ground.
step
    #title Dragon Glyph: The Frosted Spine
    .line 2151,59.07,65.05,48.53,69.0
    .goto 2151,48.53,69.0
    .achievement 17411,6 >>捡起龙雕文：雪山上的霜脊
step
    #completewith next
    +使用|T4640498:0|t[Skyward Ascend]上升，|T2103880:0|t向前加速
    *Be sure not to use up all your Vigor charges at once. If you need to recharge Vigor try gliding instead.
step
    #title Dragon Glyph: Talon's Watch
    .line 2151,48.53,69.0,20.6,91.4
    .goto 2151,20.6,91.4
    .achievement 17411,2 >>拿起龙雕文：藏在岛上塔底的塔龙手表
]])

RXPGuides.RegisterGuide([[
#df
#name F1 Zaralek洞穴龙雕文
#displayname Zaralek Cavern Dragon Glyphs
#version 2
#group RestedXP Dragon Glyphs


step
    .zoneskip 2200
    +本指南要求您解锁|cFFfa9602Zaralek洞穴|r。
step
    .zone 2200 >>从Thaldraszus入口进入Zaralek洞穴|cFFfa9602|r
step
    #completewith next
    +使用|T4640498:0|t[天空上升]来提升，使用|T2103880:0|t][向前冲]来加速。
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead.|r
step
    #title Dragon Glyph: The Throughway
    .line 2200,73.39,50.08,72.0,48.3
    .goto 2200,72.0,48.3
    .achievement 19306,6 >>拿起龙雕文：洞穴天花板下的通道
step
    #completewith next
    +使用|T4640498:0|t[天空上升]来提升，使用|T2103880:0|t][向前冲]来加速。
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead.|r
step
    #title Dragon Glyph: Loamm
    .line 2200,72.0,48.3,54.7,54.8
    .goto 2200,54.7,54.8
    .achievement 19306,3 >>捡起龙雕文：泥沼上方洞穴天花板下方的泥沼
step
    #completewith next
    +使用|T4640498:0|t[天空上升]来提升，使用|T2103880:0|t][向前冲]来加速。
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead.|r
step
    #title Dragon Glyph: Nal ks'kol
    .line 2200,54.7,54.8,62.7,70.3
    .goto 2200,62.7,70.3
    .achievement 19306,2 >>拿起龙雕文：Nal ks'kol|cFFfa9602在洞穴天花板旁|r
step
    #completewith next
    +使用|T4640498:0|t[天空上升]来提升，使用|T2103880:0|t][向前冲]来加速。
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead.|r
step
    #title Dragon Glyph: Glimmerogg
    .line 2200,62.7,70.3,41.6,80.3
    .goto 2200,41.6,80.3
    .achievement 19306,1 >>拿起龙雕文：Glimmerogg|cFFfa9602在洞穴天花板旁边的墙上|r
step
    #completewith next
    +使用|T4640498:0|t[天空上升]来提升，使用|T2103880:0|t][向前冲]来加速。
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead.|r
step
    #title Dragon Glyph: Zaqali Caldera
    >>|cRXP_WARN_到达10堆|T3163628:0|t碎片玩家的视线前暂停|r
    .line 2200,41.6,80.3,30.4,45.2
    .goto 2200,30.4,45.2
    .achievement 19306,4 >>在岩架上方拾取龙雕文：Zaqali Caldera|cFFfa9602|r
step
    #completewith next
    +使用|T4640498:0|t[Skyward Ascend]上升，使用|T2103880:0|t向前冲刺加速。
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead.|r
step
    #title Dragon Glyph: Acidbite Ravine
    .line 2200,30.4,45.2,46.5,36.2
    .goto 2200,46.5,36.2
    .achievement 19306,7 >>从洞穴天花板旁捡起龙雕文：酸性熔岩峡谷|cFFfa9602|r
step
    #completewith next
    +使用|T4640498:0|t[天空上升]来提升，使用|T2103880:0|t][向前冲]来加速。
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead.|r
step
    #title Dragon Glyph: Slitherdrake Roost
    .line 2200,46.5,36.2,55.2,27.8
    .goto 2200,55.2,27.8
    .achievement 19306,5 >>从隐藏在土冰柱之间的洞穴天花板旁捡起龙雕文：Slitherdrake Roost|cFFfa9602|r
step
    #completewith next
    +使用|T4640498:0|t[天空上升]来提升，使用|T2103880:0|t][向前冲]来加速。
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead.|r
step
    #title Dragon Glyph: Aberrus Approach
    .line 2200,55.2,27.8,48.0,4.4
    .goto 2200,48.0,4.4
    .achievement 19306,8 >>在熔岩瀑布顶部的突袭实例|cFFfa9602后面拾取龙雕文：阿伯鲁斯接近|r
]])

RXPGuides.RegisterGuide([[
#df
#name G1翡翠梦龙雕文
#displayname Emerald Dream Dragon Glyphs
#version 1
#group RestedXP Dragon Glyphs


step
    .zoneskip 2200
    +本指南要求您解锁|cFFfa9602Emerald Dream|r。
step
    .goto 2112,62.70,57.33,-1
    .goto 2023,18.40,52.37,-1
    .zone 2200 >>进入Emerald Dream|cFFfa9602通过Ohn'ahnran Planes门户或银行上方瓦尔德拉肯的门户|r
step
    #completewith DragonGlpyhsEmeraldDream
    +使用|T4640498:0|t[天空上升]来提升，使用|T2103880:0|t][向前冲]来加速。
    *|cRXP_WARN_Be sure not to use up all of your Vigor charges at once. If you need to recharge Vigor try gliding instead.|r
step
    #title Dragon Glyph: Eye of Ysera
    .goto 2200,60.38,30.14
    .achievement 19306,1 >>拿起龙雕文：Ysera之眼|cRXP_WARN_between the trees on the floating rock|r
step
    #title Dragon Glyph: Cinder Summit
    .line 2200,60.38,30.14,29.81,21.24
    .goto 2200,29.81,21.24
    .achievement 19306,4 >>捡起龙雕文：煤渣峰
step
    #title Dragon Glyph: Furnace Coil
    .line 2200,29.81,21.24,21.22,26.74
    .goto 2200,21.22,26.74
    .achievement 19306,2 >>在山顶拾取龙雕文：炉卷|cRXP_WARN_|r
step
    #title Dragon Glyph: Smoldering Copse
    .line 2200,21.22,26.74,33.81,45.56
    .goto 2200,33.81,45.56
    .achievement 19306,3 >>拿起树枝顶部的龙雕文：烟雾警察|cRXP_WARN_|r
step
    #title Dragon Glyph: Dreamsurge Basin
    .line 2200,33.81,45.56,45.51,45.82
    .goto 2200,45.51,45.82
    .achievement 19306,5 >>在树梢上拿起龙雕文：浪涌之泉|cRXP_WARN_in|r
step
    #title Dragon Glyph: Amirdrassil
    .line 2200,45.51,45.82,49.96,64.30
    .goto 2200,49.96,64.30
    .achievement 19306,6 >>在树梢上拾取龙雕文：Amirdrassil|cRXP_WARN_in|r
step
    #title Dragon Glyph: Wakeful Vista
    .line 2200,49.96,64.30,61.68,75.40
    .goto 2200,61.68,75.40
    .achievement 19306,8 >>拿起龙雕文: Wakeful Vista |cRXP_WARN_in the treetop.|r
step
    #label DragonGlpyhsEmeraldDream
    #title Dragon Glyph: Whorlwing Basin
    .line 2200,61.68,75.40,31.84,80.60
    .goto 2200,31.84,80.60
    .achievement 19306,7 >>拿起龙雕文：漩涡盆
]])
