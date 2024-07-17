local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 1-6 幽影谷
#version 1
#group RestedXP 联盟 1-20
#defaultfor NightElf
#next 6-11 泰达希尔
step << !NightElf
    #sticky
    #completewith next
    +你选择了一个暗夜精灵的向导。你应该选择与你开始时相同的起始区域
step
    .goto Teldrassil,58.69,44.27 << tbc
    .goto Teldrassil,58.62,44.71 << wotlk
    >>Talk to Ilthalaine
.target Conservator Ilthalaine
>>对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .accept 456 >>接任务: |cRXP_WARN_自然的平衡|r
step
    #sticky
    #label balance1
    .goto Teldrassil,62.0,42.6
    >>杀死年轻的夜刀和蓟马
    .complete 456,1 --Kill Young Nightsaber (x4 WOTLK, x7 TBC)
    .complete 456,2 --Kill Young Thistle Boar (x4)
step
    .xp 2 >>升级到2级
step
    >>Talk to Melithar and Dirania
.target Melithar Staghelm
>>对话: |cRXP_FRIENDLY_麦利萨尔·鹿盔|r
    .accept 458 >>接任务: |cRXP_WARN_森林守护者|r
	.goto Teldrassil,59.93,42.48,-1
.target Dirania Silvershine
>>对话: |cRXP_FRIENDLY_迪兰妮亚·月光|r
    .accept 4495 >>接任务: |cRXP_LOOT_好朋友|r
    .goto Teldrassil,60.90,41.96,-1
step << Hunter
    #xprate <1.5
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >>升级直到距离4级610xp(790/1400)
step << Hunter
    #xprate >1.3
    .goto Teldrassil,59.8,34.1
    .xp 4-755 >>升级直到距离4级755xp(645/1400)
step << Hunter
    .goto Teldrassil,54.59,32.99
    >>Talk to Iverron
>>对话: |cRXP_FRIENDLY_埃沃隆|r
    .turnin 4495 >>交任务: |cRXP_FRIENDLY_好朋友|r
.target Iverron
    .accept 3519 >>接任务: |cRXP_LOOT_需要帮助的朋友|r
step << Hunter
    #completewith next
    .hs >>赫斯到阴影谷
step << Hunter
    .goto Teldrassil,57.71,45.06
    >>Talk to Tarindrella
>>对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >>交任务: |cRXP_FRIENDLY_森林守护者|r
.target Tarindrella
    .accept 459 >>接任务: |cRXP_WARN_森林守护者|r
step
    #requires balance1
    >>Talk to Ilthalaine
    .goto Teldrassil,58.69,44.27 << tbc
    .goto Teldrassil,58.62,44.71 << wotlk
>>对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .turnin 456 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
.target Conservator Ilthalaine
    .accept 457 >>接任务: |cRXP_WARN_自然的平衡|r
	.accept 3116 >>接任务: |cRXP_LOOT_简易符记|r << Warrior
	.accept 3117 >>接任务: |cRXP_LOOT_风化符记|r << Hunter
--	.accept 3118 >>接任务: |cRXP_WARN_密文符记|r << Rogue
	.accept 3119 >>接任务: |cRXP_LOOT_神圣符记|r << Priest
	.accept 3120 >>接任务: |cRXP_LOOT_绿色符记|r << Druid
step << Warrior
    #completewith next
    .goto Teldrassil,59.31,41.09
	.vendor >>进去。供应商垃圾
step << Warrior
    #sticky
    #label SimpleSigil
	.goto Teldrassil,59.21,40.04,20,0
	.goto Teldrassil,59.29,39.08,20,0
	.goto Teldrassil,59.63,38.45
    >>在供应商后面启动坡道
.target Alyissia
>>对话: |cRXP_FRIENDLY_奥莉希亚|r
	.turnin 3116 >>交任务: |cRXP_FRIENDLY_简易符记|r
step << Warrior
	.goto Teldrassil,59.63,38.45
	.trainer >>训练你的职业技能
step << !Hunter
    #requires SimpleSigil << Warrior
    .goto Teldrassil,59.8,34.1
    >>杀死芒果夜刀和蓟野猪
    .complete 457,1 --Kill Mangy Nightsaber (x5 WOTLK, x7 TBC)
    .complete 457,2 --Kill Thistle Boar (x5 WOTLK, x7 TBC)
step << !Hunter
    .goto Teldrassil,54.59,32.99
    >>Talk to Iverron
>>对话: |cRXP_FRIENDLY_埃沃隆|r
    .turnin 4495 >>交任务: |cRXP_FRIENDLY_好朋友|r
.target Iverron
    .accept 3519 >>接任务: |cRXP_LOOT_需要帮助的朋友|r
step << !Hunter
    #completewith next
    .hs >>赫斯到阴影谷
step << !Hunter
    .goto Teldrassil,57.71,45.06
    >>Talk to Tarindrella
>>对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >>交任务: |cRXP_FRIENDLY_森林守护者|r
.target Tarindrella
    .accept 459 >>接任务: |cRXP_WARN_森林守护者|r
step << !Hunter
    .goto Teldrassil,58.69,44.27 << tbc
    .goto Teldrassil,58.62,44.71 << wotlk
    >>Talk to Ilthalaine
.target Conservator Ilthalaine
>>对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .turnin 457 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
step
    .goto Teldrassil,60.90,41.96
    >>Talk to Dirania
>>对话: |cRXP_FRIENDLY_迪兰妮亚·月光|r
    .turnin 3519 >>交任务: |cRXP_FRIENDLY_需要帮助的朋友|r
.target Dirania Silvershine
    .accept 3521 >>接任务: |cRXP_WARN_埃沃隆的解药|r
step << Hunter
    #completewith htraining
    .goto Teldrassil,59.31,41.09
	.vendor >>进去。供应商丢弃并购买3堆箭
step
    .goto Teldrassil,57.81,41.65
    >>Talk to Gilshalan
.target Gilshalan Windwalker
>>对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    .accept 916 >>接任务: |cRXP_LOOT_树林蜘蛛的毒囊|r
step << Hunter
    #xprate <1.5
    .goto Teldrassil,56.02,41.82
    .xp 4-40 >>升级到1360+/1400xp
step << Hunter
    #xprate >1.3
    .goto Teldrassil,56.02,41.82
    .xp 4-50 >>升级到1350+/1400xp
step << Hunter
    #sticky
    #label EtchedSigil
    .goto Teldrassil,57.81,40.93,40,0
    .goto Teldrassil,58.64,38.74,30,0
    .goto Teldrassil,58.66,40.45
    >>爬上那棵大树，直到你到达那座小建筑物
.target Ayanna Everstride
>>对话: |cRXP_FRIENDLY_阿亚娜·远途|r
    .turnin 3117 >>交任务: |cRXP_FRIENDLY_风化符记|r
step << Hunter
    .goto Teldrassil,58.66,40.45
    .train 1978 >>火车蛇刺
step
    #requires EtchedSigil << Hunter
#loop
	.line Teldrassil,56.98,39.08,56.51,38.92,56.55,38.40,56.80,38.15,56.94,36.95,57.18,37.12,57.49,36.04,58.07,35.60,58.21,36.21,58.43,36.46,58.94,37.35,58.81,37.59,58.67,38.17,58.05,38.44,56.98,39.08
	.goto Teldrassil,56.98,39.08,20,0
	.goto Teldrassil,56.51,38.92,20,0
	.goto Teldrassil,56.55,38.40,20,0
	.goto Teldrassil,56.80,38.15,20,0
	.goto Teldrassil,56.94,36.95,20,0
	.goto Teldrassil,57.18,37.12,20,0
	.goto Teldrassil,57.49,36.04,20,0
	.goto Teldrassil,58.07,35.60,20,0
	.goto Teldrassil,58.21,36.21,20,0
	.goto Teldrassil,58.43,36.46,20,0
	.goto Teldrassil,58.94,37.35,20,0
	.goto Teldrassil,58.81,37.59,20,0
	.goto Teldrassil,58.67,38.17,20,0
	.goto Teldrassil,58.05,38.44,20,0
	.goto Teldrassil,56.98,39.08,20,0
	>>掠夺湖边的黄花
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    .goto Teldrassil,54.25,39.00,40,0
    .goto Teldrassil,54.61,44.03,40,0
    .goto Teldrassil,56.00,45.91
	>>杀死格雷金斯。抢走它们，寻找蘑菇和苔藓。你也可以掠夺附近的蘑菇物品
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
step
    #completewith next
    .goto Teldrassil,56.80,31.49,30 >>进洞里去
step
    .goto Teldrassil,56.48,29.38,40,0
    .goto Teldrassil,56.76,25.65
	>>杀死蜘蛛。为了Ichor和Sacs掠夺他们
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
step
    #completewith next
    .deathskip >>在精神治疗师处死亡并重生
step
    .goto Teldrassil,57.71,45.06
    >>Talk to Tarindrella
.target Tarindrella
>>对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 459 >>交任务: |cRXP_FRIENDLY_森林守护者|r
step
    .goto Teldrassil,60.90,41.96
    >>Talk to Dirania
>>对话: |cRXP_FRIENDLY_迪兰妮亚·月光|r
    .turnin 3521 >>交任务: |cRXP_FRIENDLY_埃沃隆的解药|r
.target Dirania Silvershine
    .accept 3522 >>接任务: |cRXP_WARN_埃沃隆的解药|r
step << !Priest
    #completewith next
    .goto Teldrassil,59.31,41.09
	.vendor >>进屋和供应商垃圾箱 << !Hunter
	.vendor >>进去卖垃圾。确保至少有3-4组箭头 << Hunter
step << Warrior
	.goto Teldrassil,59.21,40.04,20,0
	.goto Teldrassil,59.29,39.08,20,0
	.goto Teldrassil,59.63,38.45
    >>在供应商后面启动坡道
	.trainer >>训练你的职业技能
step << Priest
    #completewith next
    .goto Teldrassil,59.96,41.85,20,0
    .goto Teldrassil,59.69,41.22,20,0
    .goto Teldrassil,59.46,41.05
	.vendor >>进去。上楼去卖垃圾
step << Priest
    #sticky
    #label HallowedSigil
	.goto Teldrassil,59.17,40.44
    >>上楼去
.target Shanda
>>对话: |cRXP_FRIENDLY_珊达|r
	.turnin 3119 >>交任务: |cRXP_FRIENDLY_神圣符记|r
step << Priest
	.goto Teldrassil,59.17,40.44
	.trainer >>训练你的职业技能
step
    #requires HallowedSigil << Priest
    .goto Teldrassil,57.81,41.65
    >>Talk to Gilshalan
>>对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    .turnin 916 >>交任务: |cRXP_FRIENDLY_树林蜘蛛的毒囊|r
.target Gilshalan Windwalker
    .accept 917 >>接任务: |cRXP_LOOT_树林蜘蛛的卵|r
step << Druid
    .goto Teldrassil,58.626,40.287
	>>跑上大坡道，进入小房间
.target Mardant Strongoak
>>对话: |cRXP_FRIENDLY_玛丹特·硬木|r
	.turnin 3120 >>交任务: |cRXP_FRIENDLY_绿色符记|r
	.train 8921 >>火车月光
step
    .goto Teldrassil,54.59,32.99
    >>Talk to Iverron
.target Iverron
>>对话: |cRXP_FRIENDLY_埃沃隆|r
    .turnin 3522 >>交任务: |cRXP_FRIENDLY_埃沃隆的解药|r
step
    #completewith next
    .goto Teldrassil,56.80,31.49,30 >>进洞里去
step
    .goto Teldrassil,56.80,26.45
	>>在洞穴后面掠夺一个Webwood蛋
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#completewith next
	.deathskip >>在精神治疗者处死亡并重生，或者跳过注销。
    .link https://www.youtube.com/watch?v=TTZZT3jpv1s >>单击此处了解如何跳过注销的参考信息
step
    .goto Teldrassil,57.81,41.65
    >>Talk to Gilshalan
>>对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    .turnin 917 >>交任务: |cRXP_FRIENDLY_树林蜘蛛的卵|r
.target Gilshalan Windwalker
    .accept 920 >>接任务: |cRXP_WARN_特纳隆的召唤|r
step
    .goto Teldrassil,57.81,40.93,40,0
    .goto Teldrassil,58.64,38.74,30,0
    .goto Teldrassil,58.48,40.79,30,0
    .goto Teldrassil,59.34,40.09,30,0
    .goto Teldrassil,59.06,39.44
    >>沿着斜坡向上爬大树。与顶部的Tenaron交谈
>>对话: |cRXP_FRIENDLY_特纳隆·雷拳|r
    .turnin 920 >>交任务: |cRXP_FRIENDLY_特纳隆的召唤|r
.target Tenaron Stormgrip
    .accept 921 >>接任务: |cRXP_WARN_大地之冠|r
step
    #sticky
    #label vial1
    .goto Teldrassil,59.92,33.13
	.use 5185 >>在Moonwell使用包里的水晶Phial
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
    .goto Teldrassil,59.8,34.1
    >>杀死芒果夜刀和蓟野猪
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
step
    #requires vial1
    #completewith next
    .deathskip >>在精神治疗者那里死去并重生，或者跑回城镇
step << Hunter
    #requires vial1
    .goto Teldrassil,58.69,44.27 << tbc
    .goto Teldrassil,58.62,44.71 << wotlk
    >>Talk to Ilthalaine
.target Conservator Ilthalaine
>>对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .turnin 457 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
step << Priest
    #requires vial1
    .goto Teldrassil,59.96,41.85,20,0
    .goto Teldrassil,59.69,41.22,20,0
	.goto Teldrassil,59.17,40.44
    >>进去。上楼去
.target Shanda
>>对话: |cRXP_FRIENDLY_珊达|r
    .accept 5622 >>接任务: |cRXP_WARN_月神的恩赐|r
step
    #requires vial1
    .goto Teldrassil,57.81,40.93,40,0
    .goto Teldrassil,58.64,38.74,30,0
    .goto Teldrassil,58.48,40.79,30,0
    .goto Teldrassil,59.34,40.09,30,0
    .goto Teldrassil,59.06,39.44
    >>沿着斜坡向上爬大树。与顶部的Tenaron交谈
>>对话: |cRXP_FRIENDLY_特纳隆·雷拳|r
    .turnin 921 >>交任务: |cRXP_FRIENDLY_大地之冠|r
.target Tenaron Stormgrip
    .accept 928 >>接任务: |cRXP_WARN_大地之冠|r
step
    .goto Teldrassil,61.16,47.64
    >>Talk to Porthannius
.target Porthannius
>>对话: |cRXP_FRIENDLY_伯萨努斯|r
    .accept 2159 >>接任务: |cRXP_LOOT_多兰纳尔的货物|r
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 6-11 泰达希尔
#version 1
#group RestedXP 联盟 1-20
#defaultfor NightElf
#next 11-14 黑海岸
step
    #title Shopping List
    #completewith next
        >>如果你想使用拍卖行加快升级速度，请给自己邮寄7条小蜘蛛腿。
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step
    .goto Teldrassil,60.5,56.3
.target Zenn Foulhoof
>>对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .accept 488 >>接任务: |cRXP_LOOT_赛恩的要求|r
step
    #sticky
    #completewith zenn
    >>在你的任务中杀死蜘蛛/猫/猫头鹰
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
step
    #sticky
	#completewith spiderLegs
    >>收集7条小蜘蛛腿以备稍后任务
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step
    .goto Teldrassil,56.1,57.8
.target Syral Bladeleaf
>>对话: |cRXP_FRIENDLY_塞拉尔·刃叶|r
    .accept 997 >>接任务: |cRXP_LOOT_德纳兰的泥土|r
step
    .goto Teldrassil,55.9,57.3
.target Athridas Bearmantle
>>对话: |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .accept 475 >>接任务: |cRXP_WARN_烦恼之风|r
step << Priest
    .goto Teldrassil,55.6,56.8
>>对话: |cRXP_FRIENDLY_劳尔娜·晨光|r
    .turnin 5622 >>交任务: |cRXP_FRIENDLY_月神的恩赐|r
.target Laurna Morninglight
    .accept 5621 >>接任务: |cRXP_WARN_月光之衣|r
	.trainer >>训练你的6级法术
step << Rogue
    .goto Teldrassil,55.51,57.14
	>>去树屋的二楼
    .vendor >>购买Aldia的3级投掷。装备它
step
    #xprate <1.5
    .goto Teldrassil,55.5,57.0
    >>去树屋的顶端
.target Tallonkai Swiftroot
>>对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
   .accept 932 >>接任务: |cRXP_LOOT_扭曲的仇恨|r
    .accept 2438 >>接任务: |cRXP_WARN_翡翠摄梦符|r
step
    #xprate >1.3
    .goto Teldrassil,55.5,57.0
    >>去树屋的顶端
.target Tallonkai Swiftroot
>>对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
    .accept 932 >>接任务: |cRXP_LOOT_扭曲的仇恨|r << !Hunter
    .accept 2438 >>接任务: |cRXP_WARN_翡翠摄梦符|r
step << Hunter
    .goto Teldrassil,56.3,59.5
    >>修理你的武器。如果你有足够的钱(2s85c)，从Jeena那里买一个Hornwood Recurve Bow。否则，请跳过此步骤(稍后再回来)
    >>购买箭，直到你的Quiver满为止(1000支箭)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Warrior
    .goto Teldrassil,56.221,59.198
	.trainer >>训练你的6级法术
step << Rogue
    .goto Teldrassil,56.4,60.1
	.trainer >>训练你的6级法术
step << Warrior
    .goto Teldrassil,56.3,59.5
    >>修理你的武器。如果你有足够的钱(5s36c)，从沙洛蒙买一辆格拉迪斯。否则，请跳过此步骤(稍后再回来)
    .collect 2488,1 --Collect Gladius
step << Rogue
    .goto Teldrassil,56.31,59.49
    >>修理你的武器。如果你有足够的钱(4s1c)，就从沙洛蒙买一个细高跟鞋。否则，请跳过此步骤(稍后再回来)
    .collect 2494,1 --Stiletto (1)
step << Druid
    .goto Teldrassil,56.31,59.49
    >>修理你的武器。如果你有足够的钱(5s4c)，从沙洛蒙买一根拐杖。否则，请跳过此步骤(稍后再回来)
    .collect 2495,1 --Walking Stick (1)
step
    .goto Teldrassil,55.7,59.8
.target Innkeeper Keldamyr
>>对话: |cRXP_FRIENDLY_旅店老板凯达米尔|r
    .turnin 2159 >>交任务: |cRXP_FRIENDLY_多兰纳尔的货物|r
step << Hunter
    .goto Teldrassil,56.676,59.489
	.train 3044>>火车奥术射击
step << Druid
    .goto Teldrassil,55.9,61.6
	.trainer >>训练你的6级法术
step
    .goto Teldrassil,56.2,61.7
>>对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 928 >>交任务: |cRXP_FRIENDLY_大地之冠|r
.target Corithras Moonrage
    .accept 929 >>接任务: |cRXP_WARN_大地之冠|r
--step << Druid
--    #xprate <1.1
--    .goto Teldrassil,57.6,60.6
--    .train 2366 >>训练草药
--    >>稍后你需要5个土拨鼠来完成任务。获得5个土生根后，你可以放弃草药
--step << Druid
--    #xprate <1.1
--    #completewith end
--    >>药草等级达到15级，稍后尝试寻找5个土拨鼠进行15级任务
--    .collect 2449,5
step << Priest
    >>在哨兵沙亚身上使用较低治疗等级2，然后使用咒语：坚韧
    .goto Teldrassil,57.2,63.5
    .complete 5621,1 --Heal and fortify Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
>>对话: |cRXP_FRIENDLY_德纳兰|r
    .turnin 997 >>交任务: |cRXP_FRIENDLY_德纳兰的泥土|r
.target Denalan
    .accept 918 >>接任务: |cRXP_WARN_林精的种子|r
    .accept 919 >>接任务: |cRXP_WARN_林精的新芽|r
step
    .goto Teldrassil,56.1,66.6
    >>在湖边跑来跑去，杀死伐木暴徒，掠夺地上的树苗
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
step
    .goto Teldrassil,60.900,68.489
>>对话: |cRXP_FRIENDLY_德纳兰|r
    .turnin 918 >>交任务: |cRXP_FRIENDLY_林精的种子|r
.target Denalan
    .accept 922 >>接任务: |cRXP_WARN_雷利亚·绿树|r
    .turnin 919 >>交任务: |cRXP_FRIENDLY_林精的新芽|r
step
    .goto Teldrassil,68.0,59.6
	>>掠夺房子里的梳妆台
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    .goto Teldrassil,66.3,58.6
	>>到楼上的房子里去
>>对话: |cRXP_FRIENDLY_盖洛拉斯·塔文斯伦|r
    .turnin 475 >>交任务: |cRXP_FRIENDLY_烦恼之风|r
.target Gaerolas Talvethren
    .accept 476 >>接任务: |cRXP_WARN_瘤背熊怪的堕落|r
step
    #label zenn
    .goto Teldrassil,63.4,58.1
	.use 5619 >>在月光井装满空瓶子
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    .goto Teldrassil,63.1,61.0
    >>完成Zenn的投标
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
step
    #xprate <1.5
    .goto Teldrassil,60.7,54.4
	.xp 7+3500 >>升级到7级+3500xp
step
    #xprate >1.3
    .goto Teldrassil,60.7,54.4
	.xp 7+2900 >>升级到7级+2900xp
step
    .goto Teldrassil,60.5,56.3
.target Zenn Foulhoof
>>对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 488 >>交任务: |cRXP_FRIENDLY_赛恩的要求|r
step
	.goto Teldrassil,56.078,57.723
.target Sentinel Shayla Nightbreeze
.target Moon Priestess Amara
.target Syral Bladeleaf
.target Sentinel Kyra Starsong
>>对话: |cRXP_FRIENDLY_哨兵凯拉·星歌|r
-->>对话: |cRXP_FRIENDLY_塞拉尔·刃叶|r
-->>对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
-->>对话: |cRXP_FRIENDLY_哨兵莎依拉·夜风|r
    .accept 489 >>接任务: |cRXP_WARN_寻求救赎！|r
step
    .goto Teldrassil,55.9,57.3
.target Athridas Bearmantle
>>对话: |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .turnin 476 >>交任务: |cRXP_FRIENDLY_瘤背熊怪的堕落|r
step << Priest
    .goto Teldrassil,55.5,56.7
.target Laurna Morninglight
>>对话: |cRXP_FRIENDLY_劳尔娜·晨光|r
    .turnin 5621 >>交任务: |cRXP_FRIENDLY_月光之衣|r
	.trainer >>训练你的8级法术
step
    .goto Teldrassil,55.6,56.9
>>对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
    .turnin 2438 >>交任务: |cRXP_FRIENDLY_翡翠摄梦符|r
.target Tallonkai Swiftroot
    .accept 2459 >>接任务: |cRXP_WARN_噬梦者菲罗斯塔|r
step << Hunter
	#completewith next
    .goto Teldrassil,56.3,59.5
    >>修理你的武器。如果你有足够的钱(2s85c)，从Jeena那里买一个Hornwood Recurve Bow。否则，请跳过此步骤(稍后再回来)
    .collect 2506,1 --Collect Hornwood Recurve Bow
step << Hunter
    .goto Teldrassil,56.3,59.5
	.vendor >>总共购买800支箭
step << Hunter
    .goto Teldrassil,56.676,59.489
	.trainer >>训练你的8级法术
step << Warrior
    .goto Teldrassil,56.221,59.198
	.trainer >>训练你的8级法术
step << Rogue
    .goto Teldrassil,56.4,60.1
	.trainer >>训练你的8级法术
step << Warrior
    .goto Teldrassil,56.3,59.5
    >>修理你的武器。如果你有足够的钱(5s36c)，从沙洛蒙买一辆格拉迪斯。否则，请跳过此步骤(稍后再回来)
    .collect 2488,1 --Collect Gladius
step << Rogue
    .goto Teldrassil,56.31,59.49
    >>修理你的武器。如果你有足够的钱(4s1c)，就从沙洛蒙买一个细高跟鞋。否则，请跳过此步骤(稍后再回来)
    .collect 2494,1 --Stiletto (1)
step << Druid
    .goto Teldrassil,56.31,59.49
    >>修理你的武器。如果你有足够的钱(5s4c)，从沙洛蒙买一根拐杖。否则，请跳过此步骤(稍后再回来)
    .collect 2495,1 --Walking Stick (1)
step << Druid
    .goto Teldrassil,56.2,61.7
>>对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >>交任务: |cRXP_FRIENDLY_大地之冠|r
.target Corithras Moonrage
    .accept 933 >>接任务: |cRXP_WARN_大地之冠|r
step << Druid
    .goto Teldrassil,55.9,61.6
	.trainer >>训练你的8级法术
step
    #sticky
	#completewith jewel
    >>寻找Fel Cones，通常位于树干旁边
    .complete 489,1 --Collect Fel Cone (x3)
step
    #label mystics
    #sticky
    .goto Teldrassil,69.2,53.3
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
	>>神秘人与侏儒勇士分享后代。你可能必须杀死他们才能让神秘主义者诞生
step
    #label jewel
	.goto Teldrassil,69.2,53.3
	>>杀死费罗西塔斯。抢走项链
    .collect 8049,1,2459,0x2,1 --Gnarlpine Necklace (1)
    .use 8049 >>右击项链拾取宝石
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
step
    #requires mystics
    .goto Teldrassil,58.7,55.7
    >>完成Seek Redemption！
    .complete 489,1 --Collect Fel Cone (x3)
step
    .goto Teldrassil,60.4,56.4
.target Zenn Foulhoof
>>对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 489 >>交任务: |cRXP_FRIENDLY_寻求救赎！|r
step << Hunter
    #xprate <1.5
    .goto Teldrassil,51.2,50.6
    >>杀死梅勒纳斯勋爵。他可以位于洞穴的许多不同产卵点，而且很难找到
    .complete 932,1 --Collect Melenas' Head (x1)
step << !Hunter
    .goto Teldrassil,51.2,50.6
    >>杀死梅勒纳斯勋爵。他可以位于洞穴的许多不同产卵点，而且很难找到
    .complete 932,1 --Collect Melenas' Head (x1)
step
	#completewith next
	.deathskip >>故意死亡并在墓地重生
step << !Druid
    .goto Teldrassil,56.2,61.7
.target Corithras Moonrage
>>对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >>交任务: |cRXP_FRIENDLY_大地之冠|r
step
	#xprate <1.5
    .goto Teldrassil,56.2,61.7
.target Corithras Moonrage
>>对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .accept 933 >>接任务: |cRXP_WARN_大地之冠|r
step
	#xprate <1.5
	.goto Teldrassil,42.54,76.08
	>>点击大紫色植物
	.accept 930 >>接任务: |cRXP_WARN_发光的水果|r
step
	#xprate <1.5
	#label spiderLegs
	.goto Teldrassil,42.36,67.26
	.use 5621 >>在月光井装满空瓶子
	.complete 933,1
step
	#xprate <1.5
    >>完成收集7条小蜘蛛腿
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step
	#xprate <1.5
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >>故意死亡并在多拉那尔墓地重生，确保死亡在月光井以东，否则你可能会死在达纳苏斯
step
	#xprate <1.5
    .goto Teldrassil,56.2,61.7
>>对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 933 >>交任务: |cRXP_FRIENDLY_大地之冠|r
.target Corithras Moonrage
    .accept 7383 >>接任务: |cRXP_WARN_大地之冠|r
step
	#xprate <1.5
    .goto Teldrassil,57.121,61.296
    .train 2550 >>火车烹饪
.target Zarrin
>>对话: |cRXP_FRIENDLY_扎瑞恩|r
    .accept 4161 >>接任务: |cRXP_WARN_卡多雷的菜谱|r
    .turnin 4161 >>交任务: |cRXP_FRIENDLY_卡多雷的菜谱|r
step
    .goto Teldrassil,55.7,59.8
    .home >>将您的炉石设置为Dolanar
step << Warrior/Rogue
    .goto Teldrassil,55.2,56.8
    .train 3273 >>培训急救
step
    #xprate >1.3
    .goto Teldrassil,55.5,56.9
.target Tallonkai Swiftroot
>>对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
    .turnin 932 >>交任务: |cRXP_FRIENDLY_扭曲的仇恨|r << !Hunter
    .turnin 2459 >>交任务: |cRXP_FRIENDLY_噬梦者菲罗斯塔|r
step
    #xprate <1.5
    .goto Teldrassil,55.5,56.9
.target Tallonkai Swiftroot
>>对话: |cRXP_FRIENDLY_塔隆凯·捷根|r
    .turnin 932 >>交任务: |cRXP_FRIENDLY_扭曲的仇恨|r
    .turnin 2459 >>交任务: |cRXP_FRIENDLY_噬梦者菲罗斯塔|r
step
    .goto Teldrassil,51.9,56.4
    >>找到月亮女祭司阿玛拉，她在多拉纳尔以西的路上巡逻
.target Moon Priestess Amara
>>对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    .accept 487 >>接任务: |cRXP_WARN_达纳苏斯之路|r
step
    .goto Teldrassil,46.6,53.0
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
step << Druid
    .goto Teldrassil,51.9,56.4
    >>找到月亮女祭司阿玛拉，她在多拉纳尔以西的路上巡逻
.target Moon Priestess Amara
>>对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
step
	#xprate <1.5
    .goto Teldrassil,38.3,34.3
.target Sentinel Arynia Cloudsbreak
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .accept 937 >>接任务: |cRXP_WARN_神谕林地|r
step
	#xprate <1.5
    .goto Teldrassil,38.4,34.1
	.use 18152 >>在月光井装满空瓶子
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
	#xprate <1.5
    #completewith xp10
	#label harpies
    >>杀死哈比。小心母系氏族，因为他们会愈合并造成大量伤害。试着把它们炸开
    .complete 937,1 --Collect Bloodfeather Belt (x6)
step
	#xprate <1.5
    .goto Teldrassil,34.6,28.9
    .accept 931 >>接任务: |cRXP_WARN_发光的树叶|r
step << Hunter
	#xprate <1.5
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.6,31.7
    >>开始护送任务
.target Mist
>>对话: |cRXP_FRIENDLY_密斯特|r
    .accept 938 >>接任务: |cRXP_LOOT_密斯特|r
step << Hunter
    #xprate <1.5
    #sticky
    #label xp10
    .xp 10-2670 >>升级，直到距离10级2670 xp(3830/6500)
    >>一旦你到达这个xp断点，跳过哈比/护卫任务，直接前往达纳苏斯，你将有另一个机会稍后完成这些任务
step << Hunter
    #xprate <1.5
    #sticky
    #label xp10
    .xp 10-3330 >>升级直到距离10级3330 xp(3170/6500)
    >>一旦你到达这个xp断点，跳过哈比/护卫任务，直接前往达纳苏斯，你将有另一个机会稍后完成这些任务
step << Hunter
	#xprate <1.5
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.3,34.4
.target Sentinel Arynia Cloudsbreak
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 938 >>交任务: |cRXP_FRIENDLY_密斯特|r
step << Hunter
	#xprate <1.5
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.3,34.4
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >>交任务: |cRXP_FRIENDLY_神谕林地|r
.target Sentinel Arynia Cloudsbreak
    .accept 940 >>接任务: |cRXP_LOOT_泰达希尔|r
step << !Hunter
	#xprate <1.5
    #label mist1
    .goto Teldrassil,31.6,31.7
    >>开始护送任务
.target Mist
>>对话: |cRXP_FRIENDLY_密斯特|r
    .accept 938 >>接任务: |cRXP_LOOT_密斯特|r
step << !Hunter
	#xprate <1.5
    .goto Teldrassil,38.3,34.4
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >>交任务: |cRXP_FRIENDLY_神谕林地|r
.target Sentinel Arynia Cloudsbreak
    .accept 940 >>接任务: |cRXP_LOOT_泰达希尔|r
    .turnin 938 >>交任务: |cRXP_FRIENDLY_密斯特|r
step << !Hunter
#xprate <1.5
    #label xp10
    .xp 10-750 << Druid
    .xp 10-3110 << !Druid
step << !Hunter
	#xprate <1.5
	#label xp10
   .xp 10-930 << Druid
   .xp 10-3880 << !Druid
step
	#xprate >1.3
	.goto Teldrassil,38.6,58.0
	>>完成收集7条小蜘蛛腿
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
	#xprate >1.3
	#label xp10
	.xp 10-640
    .goto Teldrassil,38.3,34.4
	>>如果你在xp上还落后，那就向北执行harpy任务
step << !Druid
	#xprate >1.3
	#label xp10
	.xp 10-3300
step << !Rogue
	#xprate <1.5
    #requires xp10
    #completewith next
    .deathskip >>故意死亡并在达纳苏斯墓地重生
step << !Rogue
    #requires xp10
1	>>跑到达纳苏斯
    .goto Darnassus,38.3,21.4
>>对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 922 >>交任务: |cRXP_FRIENDLY_雷利亚·绿树|r
.target Rellian Greenspyre
    .accept 923 >>接任务: |cRXP_LOOT_青苔之瘤|r
step << !Hunter !Rogue
	#xprate <1.5
    .goto Darnassus,34.7,9.0
    >>爬到树屋的顶部
.target Arch Druid Fandral Staghelm
>>对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .turnin 940 >>交任务: |cRXP_FRIENDLY_泰达希尔|r
	.isOnQuest 940
step << Druid
    .goto Darnassus,35.2,8.0
    >>前往树屋的中间层
.target Mathrengyl Bearwalker
>>对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .accept 5921 >>接任务: |cRXP_LOOT_月光林地|r
	.trainer >>训练你的10级法术
step << !Rogue
    .goto Darnassus,36.5,86.0
.target Priestess A'moora
>>对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .accept 2518 >>接任务: |cRXP_WARN_月神的泪水|r
step << Druid
    .goto Moonglade,56.2,30.8
    >>打开你的魔法书并传送到月光大陆
>>对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5921 >>交任务: |cRXP_FRIENDLY_月光林地|r
.target Dendrite Starblaze
    .accept 5929 >>接任务: |cRXP_WARN_巨熊之灵|r
step << Druid
    .goto Moonglade,39.1,27.5
    >>Talk to the bear spirit just outside Nighthaven
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
step << Druid
    .goto Moonglade,56.2,30.5
    >>使用你的心灵传送法术返回任务给予者
>>对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 5929 >>交任务: |cRXP_FRIENDLY_巨熊之灵|r
.target Dendrite Starblaze
    .accept 5931 >>接任务: |cRXP_WARN_返回达纳苏斯|r
step
    #requires xp10 << Rogue
    #completewith next << !Rogue
    .hs >>从赫斯到多拉纳尔
step << Hunter
    .goto Teldrassil,56.3,59.5
	.vendor >>购买4堆10级箭头。达到10级后立即装备它们
step
	#xprate >1.3
    .goto Teldrassil,57.121,61.296
    .train 2550 >>火车烹饪
.target Zarrin
>>对话: |cRXP_FRIENDLY_扎瑞恩|r
    .accept 4161 >>接任务: |cRXP_WARN_卡多雷的菜谱|r
    .turnin 4161 >>交任务: |cRXP_FRIENDLY_卡多雷的菜谱|r
step
	#xprate >1.3
    .goto Teldrassil,51.9,56.4
    >>找到月亮女祭司阿玛拉，她在多拉纳尔以西的路上巡逻
.target Moon Priestess Amara
>>对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
	.maxlevel 9
step << Hunter
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.7,59.6
.target Dazalar
>>对话: |cRXP_FRIENDLY_达扎拉|r
    .accept 6063 >>接任务: |cRXP_WARN_驯服野兽|r
	.train 13165 >>训练你的10级法术
step << Hunter
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .complete 6063,1 --Tame a Webwood Lurker
step << Hunter
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
>>对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6063 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Dazalar
    .accept 6101 >>接任务: |cRXP_WARN_驯服野兽|r
step
	#xprate <1.5
    .goto Teldrassil,56.1,61.7
>>对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 7383 >>交任务: |cRXP_FRIENDLY_大地之冠|r
.target Corithras Moonrage
    .accept 935 >>接任务: |cRXP_WARN_大地之冠|r
step
	#xprate <1.5
	.goto Teldrassil,60.9,68.4
.target Denalan
>>对话: |cRXP_FRIENDLY_德纳兰|r
    .turnin 931 >>交任务: |cRXP_FRIENDLY_发光的树叶|r
    .turnin 930 >>交任务: |cRXP_FRIENDLY_发光的水果|r
step
	#xprate <1.5
	.goto Teldrassil,60.9,68.4
.target Denalan
>>对话: |cRXP_FRIENDLY_德纳兰|r
	.turnin 927 >>交任务: |cRXP_FRIENDLY_布满苔藓的心脏|r
    .isOnQuest 927
step
	#xprate <1.5
	.goto Teldrassil,60.9,68.4
	>>点击任务给予者旁边的植物花瓶
	.turnin 941 >>交任务: |cRXP_FRIENDLY_培养心脏|r
	.isQuestTurnedIn 927
step << Hunter
	#xprate <1.5
    .goto Teldrassil,62.6,72.2
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
step
    #label L10
    .xp 10
step
	#xprate <1.5
    #softcore
	#sticky
    #completewith next
    .deathskip >>死后在墓地重生
step << Priest
    .goto Teldrassil,55.5,56.7
	.trainer >>训练你的10级法术
step << Warrior
    .goto Teldrassil,56.221,59.198
	.trainer >>训练你的10级法术
step << Rogue
    .goto Teldrassil,56.4,60.1
	.trainer >>训练你的10级法术
step << Hunter
    .goto Teldrassil,56.7,59.6
.target Dazalar
>>对话: |cRXP_FRIENDLY_达扎拉|r
    .accept 6063 >>接任务: |cRXP_WARN_驯服野兽|r
	.trainer >>训练你的10级法术
step << Hunter
    .goto Teldrassil,59.9,58.8
    .complete 6063,1 --Tame a Webwood Lurker
step << Hunter
    .goto Teldrassil,56.676,59.489
>>对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6063 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Dazalar
    .accept 6101 >>接任务: |cRXP_WARN_驯服野兽|r
step << Hunter
    .goto Teldrassil,62.6,72.2
    .complete 6101,1 --Tame a Nightsaber Stalker
step << Hunter
    .goto Teldrassil,56.676,59.489
>>对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6101 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Dazalar
    .accept 6102 >>接任务: |cRXP_WARN_驯服野兽|r
step << Hunter
    .goto Teldrassil,64.7,66.7
    .complete 6102,1 --Tame a Strigid Screecher
step << Hunter
    .goto Teldrassil,56.676,59.489
>>对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6102 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Dazalar
    .accept 6103 >>接任务: |cRXP_WARN_训练野兽|r
step << Warrior
    .goto Teldrassil,56.221,59.198
.target Kyra Windblade
.target Moon Priestess Amara
>>对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
-->>对话: |cRXP_FRIENDLY_凯拉·风刃|r
    .accept 1684 >>接任务: |cRXP_LOOT_艾兰娜瑞|r
step << Rogue
    .goto Teldrassil,56.2,60.0
.target Jannok Breezesong
>>对话: |cRXP_FRIENDLY_詹诺克·柔歌|r
    .accept 2241 >>接任务: |cRXP_LOOT_詹诺克的花|r
step << !Druid
    .goto Teldrassil,51.8,56.4
.target Moon Priestess Amara
>>对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
step << Rogue
    #completewith next
    .goto Teldrassil,44.0,54.6
    .deathskip >>一旦你通过了起毛区，就故意死亡并在达纳苏斯墓地重生
step << Rogue
    .goto Darnassus,67.2,15.8
    .home >>把你的炉石放在达纳萨斯
step << Rogue
    .goto Darnassus,64.6,53.0
    .collect 25873,1 >>从Ellandrieth购买一把锋利的飞刀
step << Rogue
    .goto Darnassus,38.3,21.4
>>对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 922 >>交任务: |cRXP_FRIENDLY_雷利亚·绿树|r
.target Rellian Greenspyre
    .accept 923 >>接任务: |cRXP_LOOT_青苔之瘤|r
step << Rogue
    .goto Darnassus,34.7,9.0
    >>爬到树屋的顶部
    .turnin -935 >>交任务: |cRXP_FRIENDLY_大地之冠|r
.target Arch Druid Fandral Staghelm
>>对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .turnin 940 >>交任务: |cRXP_FRIENDLY_泰达希尔|r
step << Rogue
    #xprate <1.5
    .goto Darnassus,34.7,9.0
.target Arch Druid Fandral Staghelm
>>对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .accept 952 >>接任务: |cRXP_WARN_古树之林|r
step << Rogue
    .goto Darnassus,36.8,21.8
>>对话: |cRXP_FRIENDLY_塞尤娜|r
    .turnin 2241 >>交任务: |cRXP_FRIENDLY_詹诺克的花|r
.target Syurna
    .accept 2242 >>接任务: |cRXP_LOOT_命运的召唤|r
step << Rogue
    .goto Darnassus,36.5,86.0
.target Priestess A'moora
>>对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .accept 2518 >>接任务: |cRXP_WARN_月神的泪水|r
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    .train 2981 >>驯服受伤的猎人
step
    .goto Teldrassil,43.1,32.9
    >>退出达纳苏斯 << Rogue
	>>杀死河流周围的伐木暴徒
    .complete 923,1 --Collect Mossy Tumor (x5)
step
    #label Spinnerets
	.goto Teldrassil,47.3,26.0
    .goto Teldrassil,37.9,25.1
    .goto Teldrassil,40.7,25.4
    >>杀死萨特拉夫人，她有3个可能的产卵地点
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>拾起口袋的古代塞希尔，他沿着大树枝走
    >>你必须鬼鬼祟祟，如果你打他，他会狠狠地打，还会叫上一堆加法
    .complete 2242,1
step
	#xprate >1.3 << !Hunter
    .goto Teldrassil,38.3,34.3
.target Sentinel Arynia Cloudsbreak
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .accept 937 >>接任务: |cRXP_WARN_神谕林地|r
step
	#xprate >1.3 << !Hunter
    #sticky
	#label harpies2
    >>杀死哈比
    .complete 937,1 --Collect Bloodfeather Belt (x6)
step
	#xprate >1.3 << !Hunter
    .goto Teldrassil,31.6,31.7
    >>开始护送任务
.target Mist
>>对话: |cRXP_FRIENDLY_密斯特|r
    .accept 938 >>接任务: |cRXP_LOOT_密斯特|r
step
	#xprate >1.3 << !Hunter
    .goto Teldrassil,38.3,34.4
.target Sentinel Arynia Cloudsbreak
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 938 >>交任务: |cRXP_FRIENDLY_密斯特|r
step
	#xprate >1.3 << !Hunter
    #requires harpies2
    .goto Teldrassil,38.3,34.4
>>对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >>交任务: |cRXP_FRIENDLY_神谕林地|r
.target Sentinel Arynia Cloudsbreak
    .accept 940 >>接任务: |cRXP_LOOT_泰达希尔|r
step
    #softcore
	#completewith next
    .deathskip >>在达纳苏斯墓地死亡并重生
step
    .goto Darnassus,70.679,45.379
.target Mydrannul
>>对话: |cRXP_FRIENDLY_迈德兰努尔|r
    .accept 6344 >>接任务: |cRXP_WARN_尼莎·影歌|r
step
	.abandon 927 >>抛弃苔藓缠绕的心。你永远没有机会交出
step << Warrior
    .goto Darnassus,64.6,53.0
    .collect 25873,1 >>从Ellandrieth购买一把锋利的飞刀
step << Warrior
    .goto Darnassus,57.4,34.8
>>对话: |cRXP_FRIENDLY_艾兰娜瑞|r
    .turnin 1684 >>交任务: |cRXP_FRIENDLY_艾兰娜瑞|r
.target Elanaria
    .accept 1683 >>接任务: |cRXP_LOOT_沃鲁斯·邪蹄|r
step << Warrior
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18
    >>通往Vorlus Vilehoof的路从这里开始
step << Warrior
    .goto Teldrassil,47.2,63.7
    .complete 1683,1 --Collect Horn of Vorlus (x1)
step << Warrior
    #softcore
	#sticky
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>在你经过火山口地区并在达纳苏斯重生后，故意死亡
step << Warrior
    .goto Darnassus,57.305,34.606
.target Elanaria
>>对话: |cRXP_FRIENDLY_艾兰娜瑞|r
    .turnin 1683 >>交任务: |cRXP_FRIENDLY_沃鲁斯·邪蹄|r
--	.accept 1686 >>接任务: |cRXP_WARN_艾鲁拉的阴影|r
step << Druid
    .goto Darnassus,35.1,8.6
>>对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .turnin 5931 >>交任务: |cRXP_FRIENDLY_返回达纳苏斯|r
.target Mathrengyl Bearwalker
    .accept 6001 >>接任务: |cRXP_LOOT_身心之力|r
step
    .isOnQuest 935
    .goto Darnassus,34.814,9.255
.target Arch Druid Fandral Staghelm
>>对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .turnin 935 >>交任务: |cRXP_FRIENDLY_大地之冠|r
step
    .goto Darnassus,34.814,9.255
.target Arch Druid Fandral Staghelm
>>对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .turnin 940 >>交任务: |cRXP_FRIENDLY_泰达希尔|r << Hunter
step
    #xprate <1.5
    .goto Darnassus,34.814,9.255
.target Arch Druid Fandral Staghelm
>>对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .accept 952 >>接任务: |cRXP_WARN_古树之林|r
step << Hunter
    .goto Darnassus,40.3,8.8
.target Jocaste
>>对话: |cRXP_FRIENDLY_祖卡斯特|r
    .turnin 6103 >>交任务: |cRXP_FRIENDLY_训练野兽|r
step << Rogue
    .goto Darnassus,36.8,21.8
.target Syurna
>>对话: |cRXP_FRIENDLY_塞尤娜|r
    .turnin 2242 >>交任务: |cRXP_FRIENDLY_命运的召唤|r
step
    .goto Darnassus,38.184,21.639
.target Rellian Greenspyre
>>对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 923 >>交任务: |cRXP_FRIENDLY_青苔之瘤|r
step << Rogue
    .goto Darnassus,62.68,65.58
	>>去大楼的二楼
    .vendor >>购买从都灵投掷的11级。11级时装备它
step
    .goto Darnassus,36.9,85.8
>>对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2518 >>交任务: |cRXP_FRIENDLY_月神的泪水|r
.target Priestess A'moora
    .accept 2520 >>接任务: |cRXP_WARN_萨丝拉的祭品|r
step
    .goto Darnassus,39.7,85.8
	>>在喷泉的袋子里放上萨特拉的祭品
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,36.653,85.930
.target Priestess A'moora
>>对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2520 >>交任务: |cRXP_FRIENDLY_萨丝拉的祭品|r
step << Hunter tbc/Warrior tbc/Priest
    .goto Darnassus,57.8,46.6
    .train 227 >>火车杠
    >>如果您的包里有员工，请配备员工 << Hunter
step << Hunter
    .goto Darnassus,58.76,44.48
	.money <0.1751
	.vendor >>从Ariyell那里买一个层压递归弓，如果你有钱，也可以买10级箭。装备它
	.collect 2507,1
step << Warrior tbc
    .goto Darnassus,58.76,44.48
	.money <0.3022
    >>如果你有钱，可以从Ariyell购买Quarter Staff。在11级装备
	.collect 854,1
step << Warrior wotlk
    .goto Darnassus,58.76,44.48
    .money <0.2700
    >>如果你有钱，就从Ariyell买一辆克莱莫尔。
    .collect 1198,1
step
    #completewith next
    .goto Darnassus,30.41,41.40
    .goto Teldrassil,56.3,92.3,175 >>通过银行旁边的紫色门户前往鲁思特兰村
step
    .goto Teldrassil,56.3,92.3
>>对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6344 >>交任务: |cRXP_FRIENDLY_尼莎·影歌|r
.target Nessa Shadowsong
    .accept 6341 >>接任务: |cRXP_WARN_泰达希尔的渔业|r
step
    .goto Teldrassil,58.399,94.016
>>对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .turnin 6341 >>交任务: |cRXP_FRIENDLY_泰达希尔的渔业|r
.target Vesprystus
    .accept 6342 >>接任务: |cRXP_WARN_飞往奥伯丁|r
step
    .fly Darkshore >>飞到黑海岸
]])
