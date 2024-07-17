local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 1-12 秘蓝岛
#version 1
#group RestedXP 联盟 1-20
#defaultfor Draenei
#next 11-20 秘血岛 (德莱尼)
step
    .goto Azuremyst Isle,82.96,43.88 << tbc
    .goto Azuremyst Isle,84.19,43.03 << wotlk
.target Megelon
>>对话: |cRXP_FRIENDLY_麦格伦|r
    .accept 9279 >>接任务: |cRXP_LOOT_你活下来了！|r
step << Shaman
	#completewith next
	    .goto Azuremyst Isle,80.0,47.1
	.vendor >>杀死2-3个怪物以获得小贩垃圾(价值10c+)，然后将小贩垃圾放在里面
step << Shaman
    .goto Azuremyst Isle,79.277,49.123
	.trainer >>训练投石武器
step << Warrior
    #completewith next
        .goto Azuremyst Isle,80.0,47.1
	.vendor >>杀死2-3个怪物以获得小贩垃圾(价值10c+)，然后将小贩垃圾放在里面
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
  .trainer >>火车战斗呐喊
step << Priest/Mage
	#completewith next
	.goto Azuremyst Isle,79.3,50.9
    .vendor >>杀死暴徒直到价值48美分的小贩垃圾。供应商，然后从Ryosh购买x10水
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto Azuremyst Isle,80.419,45.885
>>对话: |cRXP_FRIENDLY_普罗尼图斯|r
    .turnin 9279 >>交任务: |cRXP_FRIENDLY_你活下来了！|r
.target Proenitus
    .accept 9280 >>接任务: |cRXP_WARN_补充治疗水晶|r
step
    .goto Azuremyst Isle,79.1,46.5
.target Botanist Taerix
>>对话: |cRXP_FRIENDLY_植物学家塔蕾克丝|r
    .accept 10302 >>接任务: |cRXP_WARN_暴躁的变异体|r
step
	#sticky
    #label mothblood
    >>杀死并掠夺谷蛾
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
step
    .goto Azuremyst Isle,78.4,44.3
	>>优先考虑挥发性突变，我们将其提交，然后前往根激光器。你可以在回来的路上做《蛾血》。
    .complete 10302,1 --Kill Volatile Mutation (x8)
step
    .goto Azuremyst Isle,79.1,46.4
>>对话: |cRXP_FRIENDLY_植物学家塔蕾克丝|r
    .turnin 10302 >>交任务: |cRXP_FRIENDLY_暴躁的变异体|r
.target Botanist Taerix
    .accept 9293 >>接任务: |cRXP_LOOT_必需的措施......|r
.target Apprentice Vishael
>>对话: |cRXP_FRIENDLY_学徒维莎尔|r
    .accept 9799 >>接任务: |cRXP_WARN_跑腿采花|r
step
    .goto Azuremyst Isle,74.5,48.5
	>>杀死绑匪/掠夺地上的小花
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .complete 9293,1 --Collect Lasher Sample (x10)
step
    .goto Azuremyst Isle,79.1,46.5
	.xp 4-420 >>升级直到距离4级420xp(980/1400)
step
    #requires mothblood
    .goto Azuremyst Isle,79.1,46.5
>>对话: |cRXP_FRIENDLY_植物学家塔蕾克丝|r
    .turnin 9293 >>交任务: |cRXP_FRIENDLY_必需的措施......|r
.target Botanist Taerix
    .accept 9294 >>接任务: |cRXP_WARN_净化湖水|r
.target Apprentice Vishael
>>对话: |cRXP_FRIENDLY_学徒维莎尔|r
    .turnin 9799 >>交任务: |cRXP_FRIENDLY_跑腿采花|r
step
    .goto Azuremyst Isle,80.4,45.8
>>对话: |cRXP_FRIENDLY_普罗尼图斯|r
    .turnin 9280 >>交任务: |cRXP_FRIENDLY_补充治疗水晶|r
.target Proenitus
    .accept 9409 >>接任务: |cRXP_WARN_紧急物资！|r
step
	#completewith next
	    .goto Azuremyst Isle,80.0,47.1
	.vendor >>供应商和维修
step << Mage
	#completewith next
	    .goto Azuremyst Isle,79.582,48.762
.target Valaatu
>>对话: |cRXP_FRIENDLY_瓦拉图|r
	.turnin 9290 >>交任务: |cRXP_FRIENDLY_法师训练|r
	.trainer >>训练你的法术
step << Paladin
	#completewith next
.target Aurelon
>>对话: |cRXP_FRIENDLY_奥雷伦|r
	.turnin 9287 >>交任务: |cRXP_FRIENDLY_圣骑士训练|r
	    .goto Azuremyst Isle,79.695,48.236
	.trainer >>训练你的法术
step
    .goto Azuremyst Isle,79.9,49.2
>>对话: |cRXP_FRIENDLY_扎尔杜|r
    .turnin 9409 >>交任务: |cRXP_FRIENDLY_紧急物资！|r
.target Zalduun
    .accept 9283 >>接任务: |cRXP_WARN_拯救幸存者！|r
step << Shaman
    .goto Azuremyst Isle,79.277,49.123
.target Firmanvaar
>>对话: |cRXP_FRIENDLY_费曼瓦尔|r
    .accept 9449 >>接任务: |cRXP_LOOT_大地的召唤|r
	.turnin 9421 >>交任务: |cRXP_FRIENDLY_萨满祭司训练|r
	.trainer >>列车接地冲击
step << Shaman
    .goto Azuremyst Isle,71.315,39.097
>>对话: |cRXP_FRIENDLY_峡谷之灵|r
    .turnin 9449 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
.target Spirit of the Vale
    .accept 9450 >>接任务: |cRXP_LOOT_大地的召唤|r
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
.target Kore
>>对话: |cRXP_FRIENDLY_库勒|r
	.turnin 9289 >>交任务: |cRXP_FRIENDLY_战士训练|r
	.trainer >>训练你的法术
step
    #sticky
    #label survivors
	>>在建筑物外的一名受伤幸存者身上使用你的纳鲁天赋咒语。他们分散在起跑区周围。
    .complete 9283,1 --Draenei Survivors Saved
step << Shaman
    .goto Azuremyst Isle,70.1,36.6
    .complete 9450,1 --Kill Restless Spirit of Earth (x4)
step << Shaman
    .goto Azuremyst Isle,71.315,39.097
.target Spirit of the Vale
>>对话: |cRXP_FRIENDLY_峡谷之灵|r
    .accept 9451 >>接任务: |cRXP_LOOT_大地的召唤|r
    .turnin 9450 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
step << Shaman
    .goto Azuremyst Isle,79.277,49.123
.target Firmanvaar
>>对话: |cRXP_FRIENDLY_费曼瓦尔|r
    .turnin 9451 >>交任务: |cRXP_FRIENDLY_大地的召唤|r
step << Hunter
	.goto Azuremyst Isle,79.86,49.67
.target Keilnei
>>对话: |cRXP_FRIENDLY_基尔尼|r
	.accept 9288 >>接任务: |cRXP_WARN_猎人训练|r
	.turnin 9288 >>交任务: |cRXP_FRIENDLY_猎人训练|r
	.train 1978 >>火车蛇刺
step << Priest
	.goto Azuremyst Isle,79.3,50.9
    .vendor >>从Ryosh购买更多水
    .collect 159,10 --Collect Refreshing Spring Water (x15)
step << Hunter
	#completewith next
	.goto Azuremyst Isle,79.3,50.9
	.vendor >>从穆拉那里买6堆箭 << Hunter
step
	#label spareparts2
    .goto Azuremyst Isle,79.4,51.3
.target Technician Zhanaa
>>对话: |cRXP_FRIENDLY_技师沙娜安|r
    .accept 9305 >>接任务: |cRXP_LOOT_备用零件|r
step
    .goto Azuremyst Isle,79.5,51.7
.target Vindicator Aldar
>>对话: |cRXP_FRIENDLY_守备官奥达尔|r
    .accept 9303 >>接任务: |cRXP_LOOT_疫苗|r
step
    .goto Azuremyst Isle,85.3,66.2
	.use 22962 >>用你袋子里的无核水晶对雀巢猫头鹰进行无核化。
	>>掠夺发射器在地面上，它们看起来像旋转的粉红色水晶。
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
	#sticky
	#completewith next
	.deathskip >>聚集一群猫头鹰并故意死亡。你也可以站在篝火的顶端。精神在坠毁现场重现。
step
    .goto Azuremyst Isle,79.4,51.3
.target Technician Zhanaa
>>对话: |cRXP_FRIENDLY_技师沙娜安|r
    .turnin 9305 >>交任务: |cRXP_FRIENDLY_备用零件|r
step
    .goto Azuremyst Isle,79.5,51.5
>>对话: |cRXP_FRIENDLY_守备官奥达尔|r
    .turnin 9303 >>交任务: |cRXP_FRIENDLY_疫苗|r
.target Vindicator Aldar
    .accept 9309 >>接任务: |cRXP_WARN_失踪的斥候|r
step
	#completewith next
	.goto Azuremyst Isle,79.3,50.9
	.vendor >>供应商和维修
step
    .goto Azuremyst Isle,77.3,58.7
	>>点击湖里的大水晶
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    .goto Azuremyst Isle,71.998,60.856
>>对话: |cRXP_FRIENDLY_图兰|r
    .turnin 9309 >>交任务: |cRXP_FRIENDLY_失踪的斥候|r
.target Tolaan
    .accept 10303 >>接任务: |cRXP_WARN_血精灵|r
step
    .goto Azuremyst Isle,70.1,63.5
    .complete 10303,1 --Kill Blood Elf Scout (x10)
step
    .goto Azuremyst Isle,72.0,61.0
>>对话: |cRXP_FRIENDLY_图兰|r
    .turnin 10303 >>交任务: |cRXP_FRIENDLY_血精灵|r
.target Tolaan
    .accept 9311 >>接任务: |cRXP_LOOT_血精灵间谍|r
step
    .goto Azuremyst Isle,69.2,65.5
    .complete 9311,1 --Kill Surveyor Candress (x1)
	.use 24414 >>从测量员那里抢走平面图并右击它
    .accept 9798 >>接任务: |cRXP_LOOT_血精灵计划书|r
step
	#sticky
	#completewith next
    .xp 6-1485 >>升级精灵，直到距离6级1485xp(1315/2800)。让你自己在最后几个暴徒身上获得低血量吧，之后我们就跳级了。
step
	.deathskip >>死亡并与灵魂治疗者对话，在墓地重生
    .goto Azuremyst Isle,79.2,46.4
.target Botanist Taerix
>>对话: |cRXP_FRIENDLY_植物学家塔蕾克丝|r
    .turnin 9294 >>交任务: |cRXP_FRIENDLY_净化湖水|r
step
    #label survivors2
    #requires survivors
    .goto Azuremyst Isle,80.1,49.0
.target Zalduun
>>对话: |cRXP_FRIENDLY_扎尔杜|r
    .turnin 9283 >>交任务: |cRXP_FRIENDLY_拯救幸存者！|r
step
    .goto Azuremyst Isle,79.488,51.622
>>对话: |cRXP_FRIENDLY_守备官奥达尔|r
    .turnin 9311 >>交任务: |cRXP_FRIENDLY_血精灵间谍|r
    .turnin 9798 >>交任务: |cRXP_FRIENDLY_血精灵计划书|r
.target Vindicator Aldar
    .accept 9312 >>接任务: |cRXP_LOOT_图像发射器|r
step
    .goto Azuremyst Isle,79.422,51.234
>>对话: |cRXP_FRIENDLY_技师沙娜安|r
    .turnin 9312 >>交任务: |cRXP_FRIENDLY_图像发射器|r
.target Technician Zhanaa
    .accept 9313 >>接任务: |cRXP_WARN_前往碧蓝岗哨|r
step
    #requires survivors2
    .goto Azuremyst Isle,64.6,54.2
.target Aeun
>>对话: |cRXP_FRIENDLY_埃文|r
    .accept 9314 >>接任务: |cRXP_WARN_碧蓝岗哨的消息|r
step
    .goto Azuremyst Isle,61.1,54.2
.target Diktynna
>>对话: |cRXP_FRIENDLY_迪泰娜|r
    .accept 9452 >>接任务: |cRXP_WARN_美味的红钳鱼|r
step
	#completewith end
	>>留心Draenei Younglings。这是一次罕见的邂逅。若你们找到了，当他们和暴徒战斗时，用纳鲁的礼物(你们的种族)对付他们。然后，接受任务
.target Draenei Youngling
>>对话: |cRXP_FRIENDLY_年幼的德莱尼人|r
	.accept 9612 >>接任务: |cRXP_WARN_非常感谢！|r
	.unitscan Draenei Youngling
step
	#sticky
	#completewith next
	.use 23654 >>沿着河向北跑，使用渔池上的渔网，一旦你到达河的尽头，就去寻找夜行侠。尝试完成至少50%的任务，你将有另一个机会稍后完成它。
	.collect 23614,10
step
    .goto Azuremyst Isle,53.9,34.4
    .use 23678 >>沿着西海岸，杀死途中感染的夜行侠，直到他们扔下一颗微弱发光的水晶。
	.collect 23678,1
    .accept 9455 >>接任务: |cRXP_WARN_奇怪的发现|r
step
	#sticky
	#completewith next
    .goto Azuremyst Isle,56.1,39.3
	.deathskip >>故意在Azure Watch死亡
    >>一定要死在靠近山边的池塘附近
step
    #completewith next
    .goto Azuremyst Isle,49.0,51.6,150 >>前往Azure Watch
step
    .goto Azuremyst Isle,48.4,51.6
.target Anchorite Fateema
>>对话: |cRXP_FRIENDLY_学者法蒂玛|r
    .accept 9463 >>接任务: |cRXP_WARN_医疗材料|r
step << Shaman
    #sticky
    .goto Azuremyst Isle,49.6,53.1,0
    >>如果你有多余的5根手杖，就买一根手杖
    .collect 2495,1
step
	.isOnQuest 9612
>>对话: |cRXP_FRIENDLY_大主教梅内莱厄斯|r
	.turnin 9612 >>交任务: |cRXP_FRIENDLY_非常感谢！|r
    .turnin 9455 >>交任务: |cRXP_FRIENDLY_奇怪的发现|r
.target Exarch Menelaous
    .accept 9456 >>接任务: |cRXP_WARN_清理夜行豹......|r
step << Warrior/Paladin
    .goto Azuremyst Isle,49.0,51.1
    .trainer >>训练采矿和铸造“寻找矿物”。你正在开采粗糙的石头，以备日后使用。
step
    .goto Azuremyst Isle,47.2,50.6
>>对话: |cRXP_FRIENDLY_大主教梅内莱厄斯|r
    .turnin 9455 >>交任务: |cRXP_FRIENDLY_奇怪的发现|r
.target Exarch Menelaous
    .accept 9456 >>接任务: |cRXP_WARN_清理夜行豹......|r
step << Shaman
    .goto Azuremyst Isle,48.05,50.42
    .trainer >>训练你的法术
step
    .goto Azuremyst Isle,48.7,50.2
.target Technician Dyvuun
>>对话: |cRXP_FRIENDLY_技师戴维恩|r
    .turnin 9313 >>交任务: |cRXP_FRIENDLY_前往碧蓝岗哨|r
step
    .goto Azuremyst Isle,48.4,49.3
.target Caregiver Chellan
>>对话: |cRXP_FRIENDLY_看护员谢尔兰|r
    .turnin 9314 >>交任务: |cRXP_FRIENDLY_碧蓝岗哨的消息|r
step
	.goto Azuremyst Isle,48.4,49.3
    .home >>将炉石设置为Azure Watch
step << Paladin
    .goto Azuremyst Isle,48.4,49.5
    .trainer >>训练你的法术
step << Priest
    .goto Azuremyst Isle,48.603,49.285
	 .trainer >>训练你的法术
.target Guvan
>>对话: |cRXP_FRIENDLY_古安|r
    .accept 9586 >>接任务: |cRXP_LOOT_帮助塔瓦拉|r
step << Mage
    .goto Azuremyst Isle,49.9,50.0
    .trainer >>训练你的法术
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    .trainer >>训练你的法术
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    .trainer >>训练你的法术
step
	#sticky
	#completewith azuremyst1
    >>在你的任务中杀死并掠夺根陷阱/月光鹿，甚至在完成任务后升级。大爆炸升级前进一步。
    .complete 9463,1
	.collect 23676,6 --Collect Moongraze Stag Tenderloin (x6)
step << Priest
    .goto Azuremyst Isle,56.1,48.9
    .complete 9586,1 --Heal Tavara
step
    .goto Azuremyst Isle,47.0,70.1
.target Admiral Odesyus
>>对话: |cRXP_FRIENDLY_海军上将奥德修斯|r
    .accept 9506 >>接任务: |cRXP_LOOT_第三类接触|r
step
    .goto Azuremyst Isle,46.687,70.629
.target "Cookie" McWeaksauce
>>对话: |cRXP_FRIENDLY_\"曲奇\"米维克索斯|r
    .accept 9512 >>接任务: |cRXP_WARN_曲奇的大餐|r
step
    .goto Azuremyst Isle,46.4,71.2
	.vendor >>供应商和维修
    .trainer >>培训铁匠并从Calypso购买采矿镐。这将允许你为你的武器制造+2伤害磨石，这些磨石非常坚固。你应该在20级左右停止做这些。 << Warrior
    .trainer >>培训铁匠并从Calypso购买采矿镐。这将允许你为你的武器制造+2点非常强大的伤害重石。你应该在20级左右停止做这些。 << Paladin
step
    .goto Azuremyst Isle,58.5,66.3
	>>途中升级
	>>抢走一个帐篷里的地图
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.5,67.6
	>>抢走一个帐篷里的指南针
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    .goto Azuremyst Isle,48.8,72.7
	>>沿着海岸杀死螃蟹
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
step
    .goto Azuremyst Isle,46.7,70.5
.target "Cookie" McWeaksauce
>>对话: |cRXP_FRIENDLY_\"曲奇\"米维克索斯|r
    .turnin 9512 >>交任务: |cRXP_FRIENDLY_曲奇的大餐|r
step
    .goto Azuremyst Isle,47.0,70.3
>>对话: |cRXP_FRIENDLY_海军上将奥德修斯|r
    .turnin 9506 >>交任务: |cRXP_FRIENDLY_第三类接触|r
.target Admiral Odesyus
    .accept 9530 >>接任务: |cRXP_LOOT_天才的方案！|r
.target 女祭司Kyleen Il'dinare
>>对话: |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r
    .accept 9513 >>接任务: |cRXP_WARN_夺回废墟|r
step
    .goto Azuremyst Isle,47.2,70.1
.target Archaeologist Adamant Ironheart
>>对话: |cRXP_FRIENDLY_考古学家阿达曼特·铁心|r
    .accept 9523 >>接任务: |cRXP_WARN_贵重物品，小心轻放|r
step
    #sticky
    .goto Azuremyst Isle,48.1,63.2
	>>找一个挖空的树桩，旁边有农民在做木材工作
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
step
    .goto Azuremyst Isle,46.9,66.1
	>>在Odesyus’Landing郊区寻找成堆的紫色叶子时，一边升级
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
	#label azuremyst1
    .goto Azuremyst Isle,47.1,70.1
	>>途中升级
>>对话: |cRXP_FRIENDLY_海军上将奥德修斯|r
    .turnin 9530 >>交任务: |cRXP_FRIENDLY_天才的方案！|r
.target Admiral Odesyus
    .accept 9531 >>接任务: |cRXP_LOOT_间谍之树|r
step
    .goto Azuremyst Isle,39.4,73.9
	>>完成根部收集器/级。
    .complete 9463,1 --Collect Root Trapper Vine (x8)
	.complete 9454,1 --Collect Moongraze Stag Tenderloin (x6)
step
	.xp 8-950 >>升级，直到距离级别8(3550/4500)950xp。尽可能在Azure Watch附近完成。
step
    .goto Azuremyst Isle,49.780,51.938
    >>在Azure Watch死亡并重生，或者在300码或更近的地方跑步。
step
	.goto Azuremyst Isle,49.780,51.938
.target Acteon
>>对话: |cRXP_FRIENDLY_艾克提恩|r
	.accept 9454 >>接任务: |cRXP_WARN_狩猎月痕鹿|r
    .turnin 9454 >>交任务: |cRXP_FRIENDLY_狩猎月痕鹿|r
    .accept 10324 >>接任务: |cRXP_WARN_狩猎月痕鹿|r
step
    .goto Azuremyst Isle,48.390,51.770
.target Anchorite Fateema
>>对话: |cRXP_FRIENDLY_学者法蒂玛|r
    .turnin 9463 >>交任务: |cRXP_FRIENDLY_医疗材料|r
.target Daedal
>>对话: |cRXP_FRIENDLY_丹达尔|r
    .accept 9473 >>接任务: |cRXP_WARN_备选方案的备选方案|r
step
    .goto Azuremyst Isle,48.9,51.1
.target Dulvi
>>对话: |cRXP_FRIENDLY_杜尔维|r
    .accept 10428 >>接任务: |cRXP_WARN_失踪的渔夫|r
step
    .goto Azuremyst Isle,49.365,51.086
.target Cryptographer Aurren
>>对话: |cRXP_FRIENDLY_译码者奥鲁恩|r
    .accept 9538 >>接任务: |cRXP_WARN_学外语......|r
step
	.goto Azuremyst Isle,49.365,51.086
	.use 23818 >>单击包中的Stillpine Furbolg Language Primer
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.365,51.086
>>对话: |cRXP_FRIENDLY_阿基达图腾|r
    .turnin 9538 >>交任务: |cRXP_FRIENDLY_学外语......|r
.target Totem of Akida
    .accept 9539 >>接任务: |cRXP_LOOT_库欧图腾|r
step << Shaman
    .goto Azuremyst Isle,48.05,50.41
    .trainer >>训练你的法术
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    .trainer >>训练你的法术
step << Priest
    .goto Azuremyst Isle,48.6,49.4
.target Guvan
>>对话: |cRXP_FRIENDLY_古安|r
    .turnin 9586 >>交任务: |cRXP_FRIENDLY_帮助塔瓦拉|r
	 .trainer >>训练你的法术
step << Paladin
    .goto Azuremyst Isle,48.4,49.5
    .trainer >>训练你的法术
step << Mage
    .goto Azuremyst Isle,49.9,50.0
    .trainer >>训练你的法术
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    .trainer >>训练你的法术
step
	#sticky
	#completewith azuremyst2
	>>在你的任务中杀死夜行侠/登革热雄鹿
    .complete 9456,1 --Kill 受感染的夜行者符文 (x8)
	.complete 10324,1
step
	>>途中升级
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.2,41.6
>>对话: |cRXP_FRIENDLY_库欧图腾|r
    .turnin 9539 >>交任务: |cRXP_FRIENDLY_库欧图腾|r
.target Totem of Coo
    .accept 9540 >>接任务: |cRXP_LOOT_提克提图腾|r
step
	>>跳下悬崖或等待灵魂给你减速
    .goto Azuremyst Isle,53.0,34.0
	>>掠夺树干旁的蓝色小花
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    .goto Azuremyst Isle,64.4,39.8
>>对话: |cRXP_FRIENDLY_提克提图腾|r
    .turnin 9540 >>交任务: |cRXP_FRIENDLY_提克提图腾|r
.target Totem of Tikti
    .accept 9541 >>接任务: |cRXP_LOOT_尤尔图腾|r
    .timer 30,Swim Speed Buff RP
    >>一旦你完成这个任务，跟随跳跃精神，等待你获得游泳速度增益后再下水
step
    .waypoint Azuremyst Isle,61.0,54.2,-29,wptimer,UNIT_AURA
    .waypoint Azuremyst Isle,61.0,54.2,-1
    .waypoint Azuremyst Isle,63.39,40.37,-1
    .goto Azuremyst Isle,61.0,54.2,0
    >>跟随飞毛腿的精神，直到你获得游泳速度增益后再下水
    .use 23654>>使用沿河鱼池上的鱼网，如果鱼卵从鱼池中产卵，请逃跑
    .complete 9452,1 --Collect Red Snapper (x10)
	>>避免与暴徒搏斗，如果你采取任何敌对行动，你将失去游泳速度
step
    .goto Azuremyst Isle,61.0,54.2
>>对话: |cRXP_FRIENDLY_迪泰娜|r
    .turnin 9452 >>交任务: |cRXP_FRIENDLY_美味的红钳鱼|r
.target Diktynna
    .accept 9453 >>接任务: |cRXP_LOOT_找到艾克提恩！|r
step
    .goto Azuremyst Isle,63.2,68.0
    >>点击水下图腾
>>对话: |cRXP_FRIENDLY_尤尔图腾|r
    .turnin 9541 >>交任务: |cRXP_FRIENDLY_尤尔图腾|r
.target Totem of Yor
    .accept 9542 >>接任务: |cRXP_LOOT_瓦克图腾|r
    .timer 71,Totem of Vark ghostsaber RP
step
	>>追随毛皮精灵，等待他将你变成一把鬼剑
    .waypoint Azuremyst Isle,28.1,62.5,-70,wptimer,UNIT_AURA
    .goto Azuremyst Isle,28.1,62.5,0
    .waypoint Azuremyst Isle,28.1,62.5,-1
    .waypoint Azuremyst Isle,60.68,69.21,-1
>>对话: |cRXP_FRIENDLY_瓦克图腾|r
    .turnin 9542 >>交任务: |cRXP_FRIENDLY_瓦克图腾|r
.target Totem of Vark
    .accept 9544 >>接任务: |cRXP_WARN_阿基达的预言|r
step
	#label azuremyst2
    .goto Azuremyst Isle,27.3,63.9
	>>点击你的鬼剑buff。
	>>杀死这个地区的怪物，他们会把你需要的笼子钥匙扔了
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    .goto Azuremyst Isle,28.6,70.0,100,0
	.goto Azuremyst Isle,30.1,72.7
	>>结束夜袭者/登革热雄鹿队
	.complete 9456,1 --Kill 受感染的夜行者符文 (x8)
    .complete 10324,1 --Collect Moongraze Buck Hide (x6)
step
	#sticky
	#completewith treesteptime
	>>途中升级
    .collect 23759,1,9514 --Collect 符文覆盖平板电脑 (x1)
	.use 23759 >>掠夺物品后，右击物品清单中的物品
    .accept 9514>>符文覆盖平板电脑
step
    .goto Azuremyst Isle,31.4,79.3
	>>杀死Nagas/掠夺地面上的灯泡
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #label treesteptime
    .goto Azuremyst Isle,18.4,84.1
    .use 23792 >>在那加旗上用树伪装
	>>一旦你使用伪装，你将无法移动。您必须等待大约一分钟才能获得此任务的积分。
    .complete 9531,1
    .cast 30298
    .timer 82,Traitor Uncovered
step
    .goto Azuremyst Isle,16.5,94.4
>>对话: |cRXP_FRIENDLY_库雷|r
    .turnin 10428 >>交任务: |cRXP_FRIENDLY_失踪的渔夫|r
.target Cowlen
    .accept 9527 >>接任务: |cRXP_WARN_遗体|r
step
    .goto Azuremyst Isle,15.0,89.4
	>>杀死猫头鹰
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
step
    .goto Azuremyst Isle,16.5,94.3
.target Cowlen
>>对话: |cRXP_FRIENDLY_库雷|r
    .turnin 9527 >>交任务: |cRXP_FRIENDLY_遗体|r
step
	#sticky
	#completewith next
    .deathskip >>在Azure Watch死亡并重生
step
    .goto Azuremyst Isle,47.0,70.3
.target 女祭司Kyleen Il'dinare
>>对话: |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r
    .turnin 9513 >>交任务: |cRXP_FRIENDLY_夺回废墟|r
.target Archaeologist Adamant Ironheart
>>对话: |cRXP_FRIENDLY_考古学家阿达曼特·铁心|r
    .turnin 9523 >>交任务: |cRXP_FRIENDLY_贵重物品，小心轻放|r
>>对话: |cRXP_FRIENDLY_海军上将奥德修斯|r
    .turnin 9531 >>交任务: |cRXP_FRIENDLY_间谍之树|r
.target Admiral Odesyus
    .accept 9537 >>接任务: |cRXP_LOOT_绳侏儒以法|r
    >>暂时不要交上符文覆盖的平板电脑，否则将开始一个长的RP序列
step
    .goto Azuremyst Isle,47.0,70.3
.target 女祭司Kyleen Il'dinare
>>对话: |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r
    .turnin 9514 >>交任务: |cRXP_FRIENDLY_写满符文的石板|r
step << Hunter
	#sticky
    .goto Azuremyst Isle,48.8,72.7
	>>沿着海岸杀死螃蟹
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
	>>与在海滩东南巡逻的“火花”工程师交谈，等待他的对话序列并杀死他
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    .timer 18,Traitor's Communication RP
    .unitscan Engineer "Spark" Overgrind
step << Hunter
    .goto Azuremyst Isle,46.7,70.5
.target "Cookie" McWeaksauce
>>对话: |cRXP_FRIENDLY_\"曲奇\"米维克索斯|r
    .turnin 9512 >>交任务: |cRXP_FRIENDLY_曲奇的大餐|r
step
    .goto Azuremyst Isle,47.036,70.212
>>对话: |cRXP_FRIENDLY_海军上将奥德修斯|r
    .turnin 9537 >>交任务: |cRXP_FRIENDLY_绳侏儒以法|r
.target Admiral Odesyus
    .accept 9602 >>接任务: |cRXP_WARN_邪恶的书信|r
step
    .goto Azuremyst Isle,47.127,70.289
.target 女祭司Kyleen Il'dinare
>>对话: |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r
    .accept 9515 >>接任务: |cRXP_LOOT_督军斯雷提兹|r
    .maxlevel 9
step << !Hunter
    #completewith next
    .goto Azuremyst Isle,27.0,76.7,60 >>The path to 接任务: |cRXP_LOOT_督军斯雷提兹|r starts here
step << !Hunter
    >>Enter the naga cave and kill 接任务: |cRXP_LOOT_督军斯雷提兹|r
    .goto Azuremyst Isle,24.5,74.5
    .complete 9515,1
    .isOnQuest 9515
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+3070 >>升级到3070+/6500xp
step
    #sticky
    #completewith next
    .deathskip >>死亡跳跃或跑回Azure Watch
step
    .goto Azuremyst Isle,49.9,51.9
.target Acteon
>>对话: |cRXP_FRIENDLY_艾克提恩|r
    .turnin 9453 >>交任务: |cRXP_FRIENDLY_找到艾克提恩！|r
    .turnin 10324 >>交任务: |cRXP_FRIENDLY_狩猎月痕鹿|r
step
    .goto Azuremyst Isle,49.5,51.2
>>对话: |cRXP_FRIENDLY_止松部族的阿鲁古|r
    .turnin 9544 >>交任务: |cRXP_FRIENDLY_阿基达的预言|r
.target Arugoo of the Stillpine
    .accept 9559 >>接任务: |cRXP_LOOT_止松要塞|r
step
    .goto Azuremyst Isle,48.5,51.5
.target Daedal
>>对话: |cRXP_FRIENDLY_丹达尔|r
    .turnin 9473 >>交任务: |cRXP_FRIENDLY_备选方案的备选方案|r
step
    .goto Azuremyst Isle,47.2,50.7
>>对话: |cRXP_FRIENDLY_大主教梅内莱厄斯|r
    .turnin 9456 >>交任务: |cRXP_FRIENDLY_清理夜行豹......|r
    .turnin 9602 >>交任务: |cRXP_FRIENDLY_邪恶的书信|r
.target Exarch Menelaous
    .accept 9623 >>接任务: |cRXP_WARN_成年|r << Hunter
step
    .goto Azuremyst Isle,47.2,50.7
    .isOnQuest 9612
    .goto Azuremyst Isle,47.2,50.7
.target Exarch Menelaous
>>对话: |cRXP_FRIENDLY_大主教梅内莱厄斯|r
    .turnin 9612 >>交任务: |cRXP_FRIENDLY_非常感谢！|r
step << Shaman
    .goto Azuremyst Isle,48.05,50.41
    .trainer >>训练你的10级法术
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    .trainer >>训练你的10级法术
step << Priest
    .goto Azuremyst Isle,48.6,49.4
	 .trainer >>训练你的10级法术
step << Paladin
    .goto Azuremyst Isle,48.4,49.5
    .trainer >>训练你的10级法术
step << Mage
    .goto Azuremyst Isle,49.9,50.0
    .trainer >>训练你的10级法术
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    .trainer >>训练你的10级法术
.target Ruada
>>对话: |cRXP_FRIENDLY_鲁安达|r
    .accept 9582 >>接任务: |cRXP_WARN_一人之力|r
step << Shaman
    .goto Azuremyst Isle,48.05,50.41
.target Tuluun
>>对话: |cRXP_FRIENDLY_图伦|r
    .accept 9464 >>接任务: |cRXP_LOOT_火焰的召唤|r
step << Hunter
    .goto Azuremyst Isle,49.7,51.9
.target Acteon
.target Deremiis
.target Tristane Shadowstone
.target Einris Brightspear
.target Regnus Thundergranite
.target Dorion
.target Jocaste
.target Ayanna Everstride
.target Thorgas Grimson
>>对话: |cRXP_FRIENDLY_索加斯·格瑞姆森|r
-->>对话: |cRXP_FRIENDLY_阿亚娜·远途|r
-->>对话: |cRXP_FRIENDLY_祖卡斯特|r
-->>对话: |cRXP_FRIENDLY_多利安|r
-->>对话: |cRXP_FRIENDLY_雷格努斯·雷石|r
-->>对话: |cRXP_FRIENDLY_恩瑞斯·锐矛|r
-->>对话: |cRXP_FRIENDLY_提斯坦·影石|r
-->>对话: |cRXP_FRIENDLY_德雷米斯|r
-->>对话: |cRXP_FRIENDLY_艾克提恩|r
    .accept 9757 >>接任务: |cRXP_WARN_寻找女猎手凯拉·夜弓|r
step << Hunter
    .goto Azuremyst Isle,24.182,54.346
>>对话: |cRXP_FRIENDLY_女猎手凯拉·夜弓|r
    .turnin 9757 >>交任务: |cRXP_FRIENDLY_寻找女猎手凯拉·夜弓|r
.target Huntress Kella Nightbow
    .accept 9591 >>接任务: |cRXP_WARN_驯服野兽|r
step << Hunter
    .goto Azuremyst Isle,20.7,65.1
	.use 23896 >>使用带刺爬行器上的杆。它们出现在海岸线更远的地方，不要把它们误认为是“快速爬行”。
    .complete 9591,1 --Tame a Barbed Crawler
    .unitscan Barbed Crawler
step << Hunter
    #completewith next
    .goto Azuremyst Isle,27.0,76.7,60 >>The path to 接任务: |cRXP_LOOT_督军斯雷提兹|r starts here
step << Hunter
    >>Enter the naga cave and kill 接任务: |cRXP_LOOT_督军斯雷提兹|r
	.goto Azuremyst Isle,25.3,73.1,80,0
	.goto Azuremyst Isle,25.9,71.2,60,0
	.goto Azuremyst Isle,27.5,73.8,60,0
    .goto Azuremyst Isle,24.5,74.5
    .complete 9515,1
    .isOnQuest 9515
step << Hunter
    .goto Azuremyst Isle,24.182,54.346
>>对话: |cRXP_FRIENDLY_女猎手凯拉·夜弓|r
    .turnin 9591 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Huntress Kella Nightbow
    .accept 9592 >>接任务: |cRXP_WARN_驯服野兽|r
step << Hunter
    .goto The Exodar,81.480,51.428
    .turnin 9623 >>交任务: |cRXP_FRIENDLY_成年|r
    .accept 9625 >>接任务: |cRXP_WARN_雷象可不是好玩的！|r
    --?
step << Hunter
    .goto Azuremyst Isle,35.4,35.0,80,0
	.goto Azuremyst Isle,39.0,31.2
	.use 23897 >>在Greater Timberstrender上使用杆
    .complete 9592,1 --Tame a Greater Timberstrider
step << Hunter
    .goto Azuremyst Isle,24.182,54.346
>>对话: |cRXP_FRIENDLY_女猎手凯拉·夜弓|r
    .turnin 9592 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Huntress Kella Nightbow
    .accept 9593 >>接任务: |cRXP_WARN_驯服野兽|r
step << Hunter
    .goto Azuremyst Isle,35.0,33.9
	.use 23898 >>在夜行侠身上使用棍子
    .complete 9593,1 --Tame a Nightstalker
step << Hunter
    .goto Azuremyst Isle,24.182,54.346
>>对话: |cRXP_FRIENDLY_女猎手凯拉·夜弓|r
    .turnin 9593 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
.target Huntress Kella Nightbow
    .accept 9675 >>接任务: |cRXP_LOOT_野兽训练|r
step << Hunter
    #completewith next
    .goto Azuremyst Isle,24.6,49.0,35 >>从后门进入外族人
step << Hunter
	.goto The Exodar,42.0,71.4,60,0
	.goto The Exodar,44.6,72.0,60,0
    .goto The Exodar,44.1,86.6
.target Ganaar
>>对话: |cRXP_FRIENDLY_甘纳尔|r
    .turnin 9675 >>交任务: |cRXP_FRIENDLY_野兽训练|r
	.trainer >>训练你的宠物法术 << tbc
step << Hunter
	#completewith next
    .goto The Exodar,47.9,89.
    >>删除旧箭头。一定要装备好你买的新的。
	.vendor >>购买6堆锋利的箭
step << Hunter
	#sticky
	#completewith next
    >>与楼上的武器大师交谈
	.goto The Exodar,51.1,80.5,40,0
    .goto The Exodar,53.3,85.7
    .train 202 >>训练2h剑
step << Hunter
	#completewith murloc1
	>>前往: |cRXP_PICK_秘蓝岛|r
	.goto The Exodar,57.9,61.5,50,0
	.goto The Exodar,53.0,35.0,80,0
	.goto The Exodar,64.0,36.5,60,0
        .goto Azuremyst Isle,44.7,23.5
	.zone Azuremyst Isle >>前往: |cRXP_PICK_秘蓝岛|r
	>>或者，你可以在任何火盆上或在城市的任何壁架上进行注销跳过
	.link https://www.youtube.com/watch?v=WUWNGyQWJw8 >>单击此处以供参考
step << Hunter wotlk
	#sticky
	#label pet1
	.cast 1515 >>当你领导下一个任务中心时，在去那里的路上向一只8级以上的猫施放驯服野兽
step
    #label murloc1
    .goto Azuremyst Isle,44.7,23.5
.target Gurf
>>对话: |cRXP_FRIENDLY_古尔弗|r
    .accept 9562 >>接任务: |cRXP_WARN_鱼人......|r
step
    .goto Azuremyst Isle,44.8,23.8
.target Moordo
>>对话: |cRXP_FRIENDLY_莫多|r
    .accept 9560 >>接任务: |cRXP_WARN_末日的野兽！|r
step
    .goto Azuremyst Isle,46.6,20.7
.target High Chief Stillpine
>>对话: |cRXP_FRIENDLY_止松老酋长|r
    .turnin 9559 >>交任务: |cRXP_FRIENDLY_止松要塞|r
step << Shaman
    #sticky
	#completewith next
	>>杀死掠夺者
    .complete 9560,1 --Collect Ravager Hide (x8)
step << Shaman
    .goto Azuremyst Isle,59.6,18.0
>>对话: |cRXP_FRIENDLY_坦普|r
    .turnin 9464 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
.target Temper
    .accept 9465 >>接任务: |cRXP_LOOT_火焰的召唤|r
step << Hunter tbc
	#sticky
	#label pet1
    .goto Azuremyst Isle,54.7,18.4
	.cast 1515 >>将驯服野兽放在掠夺者标本上驯服它
step
    .goto Azuremyst Isle,54.7,18.4
	>>杀死掠夺者。掠夺他们的藏身之处
    .complete 9560,1 --Collect Ravager Hide (x8)
step << Warrior
    .goto Azuremyst Isle,54.1,9.8
    >>单击Ravager笼
    .complete 9582,1 --Kill Death Ravager (x1)
step
	#requires pet1 << Hunter
    .goto Azuremyst Isle,44.8,23.8
.target Moordo
>>对话: |cRXP_FRIENDLY_莫多|r
    .turnin 9560 >>交任务: |cRXP_FRIENDLY_末日的野兽！|r
step
    .goto Azuremyst Isle,46.8,21.2
.target Stillpine the Younger
>>对话: |cRXP_FRIENDLY_止松酋长|r
    .accept 9573 >>接任务: |cRXP_WARN_欧莫鲁酋长|r
step
    .goto Azuremyst Isle,46.6,20.6
.target High Chief Stillpine
>>对话: |cRXP_FRIENDLY_止松老酋长|r
    .accept 9565 >>接任务: |cRXP_WARN_搜索止松要塞|r
step
    >>向洞穴的尽头开始清理。保持在上层。
	.goto Azuremyst Isle,47.4,14.0
    .complete 9573,1 --Kill Chieftain Oomooroo (x1)
    .complete 9573,2 --Kill Crazed Wildkin (x9)
step << Shaman
    .goto Azuremyst Isle,46.1,16.8
    >>继续捕杀猫头鹰
    .complete 9465,1 --Collect Ritual Torch (x1)
step
    .goto Azuremyst Isle,50.6,11.6
    >>下来，朝洞穴后面走去。
    .turnin 9565 >>交任务: |cRXP_FRIENDLY_搜索止松要塞|r
    .accept 9566 >>接任务: |cRXP_WARN_血水晶|r
    >>当你靠近红色水晶时，你可能会在附近发现一只名叫“库尔肯”的双头狗。别杀了它，这群暴徒是下一个任务的一部分
step
    .goto Azuremyst Isle,46.7,20.8
.target High Chief Stillpine
>>对话: |cRXP_FRIENDLY_止松老酋长|r
    .turnin 9566 >>交任务: |cRXP_FRIENDLY_血水晶|r
step
    .goto Azuremyst Isle,47.0,22.2
.target Kurz the Revelator
>>对话: |cRXP_FRIENDLY_启示者库尔兹|r
    .accept 9570 >>接任务: |cRXP_WARN_可怕的库肯|r
step
	#completewith next
	.goto Azuremyst Isle,46.9,22.0
	.vendor >>供应商，如果需要，购买6个槽袋。
step
    .goto Azuremyst Isle,46.8,21.2
.target Stillpine the Younger
>>对话: |cRXP_FRIENDLY_止松酋长|r
    .turnin 9573 >>交任务: |cRXP_FRIENDLY_欧莫鲁酋长|r
step
    .goto Azuremyst Isle,49.9,12.8
	>>杀死库尔肯人
    .complete 9570,1 --Collect The Kurken's Hide (x1)
step
    .goto Azuremyst Isle,47.0,22.2
>>对话: |cRXP_FRIENDLY_启示者库尔兹|r
    .turnin 9570 >>交任务: |cRXP_FRIENDLY_可怕的库肯|r
.target Kurz the Revelator
    .accept 9571 >>接任务: |cRXP_WARN_库肯的毛皮|r
step << Shaman
    .goto Azuremyst Isle,46.7,20.8
.target High Chief Stillpine
>>对话: |cRXP_FRIENDLY_止松老酋长|r
    .accept 9622 >>接任务: |cRXP_LOOT_警告你的人民|r
step
	#label end
    .goto Azuremyst Isle,44.8,23.8
.target Moordo
>>对话: |cRXP_FRIENDLY_莫多|r
    .turnin 9571 >>交任务: |cRXP_FRIENDLY_库肯的毛皮|r
step << Shaman
    .goto Azuremyst Isle,59.6,17.9
>>对话: |cRXP_FRIENDLY_坦普|r
    .turnin 9465 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
.target Temper
    .accept 9467 >>接任务: |cRXP_LOOT_火焰的召唤|r
step << Shaman
	.hs >>Hearth to Azure手表
step << Shaman
    .goto Azuremyst Isle,47.112,50.604
.target Exarch Menelaous
>>对话: |cRXP_FRIENDLY_大主教梅内莱厄斯|r
    .turnin 9622 >>交任务: |cRXP_FRIENDLY_警告你的人民|r
step << Shaman
    #sticky
	#completewith next
    >>点击包中的防火包
    .complete 9467,2 --Collect Ritual Torch (x1)
step << Shaman
    .goto Azuremyst Isle,11.3,82.3
    >>点击柳条人召唤豪特
    .complete 9467,1 --Collect Hauteur's Ashes (x1)
step << Shaman
    .goto Azuremyst Isle,59.5,18.0
    .use 24335>>使用包中的球体传送回恩伯格雷德
>>对话: |cRXP_FRIENDLY_坦普|r
    .turnin 9467 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
.target Temper
    .accept 9468 >>接任务: |cRXP_LOOT_火焰的召唤|r
step
	#sticky
	#label SGrain
    .goto Azuremyst Isle,34.1,18.0,0,0
	>>杀死该地区的墨洛克人。掠夺他们的粮食
    .complete 9562,1 --Collect Stillpine Grain (x5)
step
    .goto Azuremyst Isle,34.0,25.9,70,0
    .goto Azuremyst Isle,34.9,12.0,60,0
    .goto Azuremyst Isle,34.0,25.9
    >>杀死并掠夺穆古古拉。他在海岸巡逻。小心，因为他会造成很多伤害
	.unitscan Murgurgula
	.use 23850 >>掠夺并点击库存中的Gurf的尊严
	.collect 23850,1,9564 --Gurf's Dignity (1)
    .accept 9564 >>接任务: |cRXP_LOOT_古尔弗的尊严|r
step
	#requires SGrain
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >>前往: |cRXP_PICK_秘血岛|r
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 11-20 秘血岛 (德莱尼)
#version 1
#group RestedXP 联盟 1-20
#defaultfor Draenei
#next RestedXP联盟20-32\20-21 黑海岸（Draenei）
step
    .goto Bloodmyst Isle,63.5,88.8
.target Aonar
>>对话: |cRXP_FRIENDLY_奥纳尔|r
    .accept 9624 >>接任务: |cRXP_WARN_美味的点心|r
step
    #completewith next
    .goto Bloodmyst Isle,63.1,88.0
.target Vorkhan the Elekk Herder
>>对话: |cRXP_FRIENDLY_雷象管理者沃克汉|r
    .turnin 9625 >>交任务: |cRXP_FRIENDLY_雷象可不是好玩的！|r
step
    .goto Bloodmyst Isle,63.1,88.0
.target Vorkhan the Elekk Herder
>>对话: |cRXP_FRIENDLY_雷象管理者沃克汉|r
    .accept 9634 >>接任务: |cRXP_LOOT_大战异型掠夺者|r
step
	.goto Bloodmyst Isle,59.7,86.8
    >>当你升级时，做外星捕食者/最喜欢的食物
    .xp 12-2000
step
    #completewith next
    .deathskip>>在血液观察站死去并重生
step
    .goto Bloodmyst Isle,55.7,59.7
.target Caregiver Topher Loaal
>>对话: |cRXP_FRIENDLY_托菲尔·罗阿|r
    .accept 9603 >>接任务: |cRXP_WARN_床铺，绷带，以及更多|r
step
	#completewith next
	.goto Bloodmyst Isle,55.7,59.7
    .home >>将您的炉石设置为血液观察
step
	#completewith next
	.goto Bloodmyst Isle,55.7,59.7
	.vendor >>购买40份冰牛奶 << Mage/Priest
	.vendor >>购买40只长颚泥鳅 << Warrior
	.vendor >>购买5级食物/饮料 << Paladin/Shaman
    .vendor >>为您和您的宠物购买水/食物 << Hunter
step
    .goto Bloodmyst Isle,56.421,56.788
.target Jessera of Mac'Aree
>>对话: |cRXP_FRIENDLY_玛凯雷的耶塞拉|r
    .accept 9648 >>接任务: |cRXP_WARN_玛特帕尔姆蘑菇展|r
step
	#completewith next
    .goto Bloodmyst Isle,57.6,54.0
    .fp Blood Watch>>获取血液观察飞行路线
step
    .goto Bloodmyst Isle,57.6,54.0
.target Laando
>>对话: |cRXP_FRIENDLY_兰度|r
    .turnin 9603 >>交任务: |cRXP_FRIENDLY_床铺，绷带，以及更多|r
    >>跳过后续任务
step
    .goto Bloodmyst Isle,52.7,53.3
.target Exarch Admetius
>>对话: |cRXP_FRIENDLY_主教埃德门图斯|r
    .accept 9693 >>接任务: |cRXP_WARN_阿古斯的意义|r
.target Harbinger Mikolaas
>>对话: |cRXP_FRIENDLY_先行官米库拉斯|r
    .accept 9581 >>接任务: |cRXP_WARN_研究水晶|r
step
    .goto Bloodmyst Isle,55.421,55.232
>>对话: |cRXP_FRIENDLY_守备官波鲁斯|r
    .turnin 9693 >>交任务: |cRXP_FRIENDLY_阿古斯的意义|r
.target Vindicator Boros
    .accept 9694 >>接任务: |cRXP_LOOT_秘血岗哨|r
step
	#sticky
	#completewith monument
	>>收集血晶岛上任何暴徒的辐照水晶碎片。不要把这些扔掉。
	.collect 23984,10 -- Collect Irradiated Crystal Shard (x10)
step
    .goto Bloodmyst Isle,48.4,47.9
	>>小心，因为这些暴徒在这个级别很难对付
    .complete 9694,1 --Kill Sunhawk Spy (x10)
step
    .goto Bloodmyst Isle,55.4,55.3
.target Vindicator Boros
>>对话: |cRXP_FRIENDLY_守备官波鲁斯|r
    .turnin 9694 >>交任务: |cRXP_FRIENDLY_秘血岗哨|r
step
    .goto Bloodmyst Isle,53.3,57.7
.target Morae
>>对话: |cRXP_FRIENDLY_莫莱|r
    .accept 9629 >>接任务: |cRXP_WARN_研究鱼人|r
step
	#sticky
	#completewith bloodmyst2
    .goto Bloodmyst Isle,51.1,81.4,0
	>>在血囊中寻找小的红色蘑菇
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
	#sticky
	#completewith next
    .goto Bloodmyst Isle,58.2,83.4
	>>在水下掠夺一个大的红色蘑菇，或者杀死其中一条鱼，然后在途中掠夺它们作为一只水生臭鼬
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
step
	.goto Bloodmyst Isle,58.2,83.4
	.use 23875 >>用包里的镐来收集红色小水晶
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
	#completewith grind3800
    .goto Bloodmyst Isle,59.3,89.1,0
	>>收集地上的小梨子。它们可能很难被发现，在树周围检查一下。
    .complete 9624,1 --Collect Sand Pear (x10)
step
    .goto Bloodmyst Isle,59.3,89.1
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
step
    .isQuestTurnedIn 9515
    .goto Bloodmyst Isle,59.3,89.1
	.xp 12+3300 >>升级，直到你3300 exp进入12级（3300+10100）
step
	#label grind3800
	.goto Bloodmyst Isle,59.3,89.1
	.xp 12+4140 >>升级直到你达到4140 exp进入12级（4140+/10100）
step
    .goto Bloodmyst Isle,67.9,87.9,50,0
    .goto Bloodmyst Isle,66.9,84.5,50,0
    .goto Bloodmyst Isle,60.1,86.1,50,0
    .goto Bloodmyst Isle,58.6,92.6,50,0
    .goto Bloodmyst Isle,67.9,87.9,50,0
    .goto Bloodmyst Isle,66.9,84.5,50,0
    .goto Bloodmyst Isle,60.1,86.1,50,0
    .goto Bloodmyst Isle,58.6,92.6
	>>收集地上的小梨子。它们可能很难被发现，在树周围检查一下。
    .complete 9624,1 --Collect Sand Pear (x10)
step
    .goto Bloodmyst Isle,63.4,88.7
.target Aonar
>>对话: |cRXP_FRIENDLY_奥纳尔|r
    .turnin 9624 >>交任务: |cRXP_FRIENDLY_美味的点心|r
step
    .goto Bloodmyst Isle,63.1,87.9
.target Vorkhan the Elekk Herder
>>对话: |cRXP_FRIENDLY_雷象管理者沃克汉|r
    .turnin 9634 >>交任务: |cRXP_FRIENDLY_大战异型掠夺者|r
step
    .goto Bloodmyst Isle,63.1,87.6
.target Kessel
>>对话: |cRXP_FRIENDLY_凯希尔|r
    .accept 9663 >>接任务: |cRXP_LOOT_凯希尔的信使|r
	>>小心，因为这是一个定时任务
step
    .goto Azuremyst Isle,46.6,20.7
	.accept 9622 >>接任务: |cRXP_LOOT_警告你的人民|r << !Shaman
    .complete 9663,1 --High Chief Stillpine Warned
	*IMPORTANT: Do not engage any mobs, attacking or casting spells will dismount you, if you get dazed by getting hit from behind you will also dismount
step
    .goto Azuremyst Isle,44.7,23.5
.target Gurf
>>对话: |cRXP_FRIENDLY_古尔弗|r
    .turnin 9564 >>交任务: |cRXP_FRIENDLY_古尔弗的尊严|r
    .turnin 9562 >>交任务: |cRXP_FRIENDLY_鱼人......|r
step << Warrior
	#completewith kesselrun
    .goto Azuremyst Isle,50.0,50.6
>>对话: |cRXP_FRIENDLY_鲁安达|r
    .turnin 9582 >>交任务: |cRXP_FRIENDLY_一人之力|r
.target Ruada
    .accept 10350 >>接任务: |cRXP_LOOT_贝霍玛特|r
	.trainer >>训练你的12级法术
step << !Shaman
	.isOnQuest 9612
    .goto Azuremyst Isle,47.1,50.5
	.turnin 9612 >>交任务: |cRXP_FRIENDLY_非常感谢！|r
    .turnin 9622 >>交任务: |cRXP_FRIENDLY_警告你的人民|r
    .complete 9663,2 --Exarch Menelaous Warned
step << !Shaman
    .goto Azuremyst Isle,47.1,50.5
    .turnin 9622 >>交任务: |cRXP_FRIENDLY_警告你的人民|r
    .complete 9663,2 --Exarch Menelaous Warned
step << Shaman
    .goto Azuremyst Isle,48.05,50.41
>>对话: |cRXP_FRIENDLY_图伦|r
    .turnin 9468 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
.target Tuluun
    .accept 9461 >>接任务: |cRXP_LOOT_火焰的召唤|r
step << Shaman
	#completewith next
	.isOnQuest 9612
    .goto Azuremyst Isle,47.1,50.5
	.turnin 9612 >>交任务: |cRXP_FRIENDLY_非常感谢！|r
    .complete 9663,2 --Exarch Menelaous Warned
	   .trainer >>训练你的12级法术
step << Shaman
    .goto Azuremyst Isle,47.1,50.5
    .complete 9663,2 --Exarch Menelaous Warned
step << Hunter
	#completewith next
    .goto Azuremyst Isle,49.780,51.938
    .trainer >>训练你的12级法术
step << Priest
	#completewith next
    .goto Azuremyst Isle,48.6,49.4
	 .trainer >>训练你的12级法术
step << Mage
	#completewith next
    .goto Azuremyst Isle,49.9,50.0
    .trainer >>训练你的12级法术
step
	#label kesselrun
    .goto Azuremyst Isle,46.9,70.3
    .complete 9663,3 --Admiral Odesyus Warned
step
    .goto Azuremyst Isle,46.9,70.3
.target 女祭司Kyleen Il'dinare
>>对话: |cRXP_FRIENDLY_女祭司基琳·伊尔蒂娜|r
    .turnin 9515 >>接任务: |cRXP_LOOT_督军斯雷提兹|r
    .isQuestComplete 9515
step << Paladin
    #completewith next
    .goto Azuremyst Isle,24.6,49.4,30 >>从后门进入外族人
step << Paladin
	.goto The Exodar,51.0,46.8,80,0
    .goto The Exodar,38.5,82.5
.target Jol
>>对话: |cRXP_FRIENDLY_约尔|r
    .accept 9598 >>接任务: |cRXP_LOOT_救赎|r
    .turnin 9598 >>交任务: |cRXP_FRIENDLY_救赎|r
    .accept 9600 >>接任务: |cRXP_LOOT_救赎|r
	.trainer >>训练你的12级法术
step << !Shaman
	#completewith next
	.hs >>心脏到血液观察
step << Shaman
	#completewith next
	.hs >>心脏到血液观察。如果你的壁炉仍在冷却，骑马去《外族人》，飞到血腥守卫
step
    .goto Bloodmyst Isle,52.7,53.3
>>对话: |cRXP_FRIENDLY_先行官米库拉斯|r
    .turnin 9581 >>交任务: |cRXP_FRIENDLY_研究水晶|r
.target Harbinger Mikolaas
    .accept 9620 >>接任务: |cRXP_WARN_失踪的测量小组|r
step
    .goto Bloodmyst Isle,55.081,57.958
.target Vindicator Aalesia
>>对话: |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .accept 9567 >>接任务: |cRXP_WARN_知己知彼|r
step << Warrior/Rogue
    .goto Bloodmyst Isle,55.2,58.2
    .collect 25873,1 >>从Meriaad购买一把锋利的飞刀
step
    .goto Bloodmyst Isle,63.1,87.7
>>对话: |cRXP_FRIENDLY_凯希尔|r
    .turnin 9663 >>交任务: |cRXP_FRIENDLY_凯希尔的信使|r
.target Kessel
    .accept 9666 >>接任务: |cRXP_WARN_展示力量|r
step
    .goto Bloodmyst Isle,68.2,81.1
.target Princess Stillpine
>>对话: |cRXP_FRIENDLY_止松公主|r
    .accept 9667 >>接任务: |cRXP_WARN_拯救止松公主|r
step << Paladin
    .goto Bloodmyst Isle,65.0,77.5
	.use 6866 >>在一个死去的毛皮巫师身上使用生命的象征
    .complete 9600,1 --Young Furbolg Shaman Resurrected (1)
step
	#sticky
	#label Polyspore
	>>在那加废墟的树周围掠夺一只蓝色小蘑菇
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
    .goto Bloodmyst Isle,66.5,69.9,0,0
step
    .goto Bloodmyst Isle,66.9,70.2,50,0
    .goto Bloodmyst Isle,67.3,68.0,50,0
    .goto Bloodmyst Isle,68.9,68.0
	.use 24084 >>杀死西兹勋爵。在他的尸体上用你袋子里的德莱尼旗帜
    .complete 9666,2 --Kill Lord Xiz (x1)
    .complete 9666,1 --Declaration of Power (1)
step
	#sticky
	#requires Polyspore
	#completewith next
    .goto Bloodmyst Isle,64.2,76.8
    >>杀死长毛狗，直到高级首领产卵。杀死高级首领布里斯特利姆，并抢夺他的钥匙。
	.unitscan High Chief Bristlelimb
    .collect 24099,1 --Collect The High Chief's Key (x1)
step
	#requires Polyspore
    .goto Bloodmyst Isle,68.2,81.1
    .complete 9667,1 --Free Saving Princess Stillpine
step
    .goto Bloodmyst Isle,63.0,87.6
>>对话: |cRXP_FRIENDLY_凯希尔|r
    .turnin 9666 >>交任务: |cRXP_FRIENDLY_展示力量|r
.target Kessel
    .accept 9668 >>接任务: |cRXP_WARN_向主教埃德门图斯报告|r
step
    .goto Bloodmyst Isle,56.0,79.5
	>>在水下掠夺一个大的红色蘑菇，或者杀死一条鱼并掠夺它们
    .complete 9648,1 --Collect Aquatic Stinkhorn (x1)
step
	#completewith next
    .goto Bloodmyst Isle,35.6,94.2,0
    .goto Bloodmyst Isle,51.3,93.9,0
	.use 23995 >>用你包里的黑淤泥标记器标记侦察兵。这将使他们对你没有敌意。
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
step
    .goto Bloodmyst Isle,51.1,93.1,70,0
    .goto Bloodmyst Isle,43.0,94.4,70,0
    .goto Bloodmyst Isle,35.1,93.7
	.line Bloodmyst Isle,51.1,93.1,43.0,94.4,35.1,93.7
	.use 23870 >>杀死在穆洛克营地周围巡逻的名为“残忍”的穆洛克。抢他去拿吊坠。在您的包中点击它
	.collect 23870,1,9576 --Red Crystal Pendant (1)
    .accept 9576 >>接任务: |cRXP_WARN_克鲁芬的项链|r
	.unitscan Cruelfin
step
    .goto Bloodmyst Isle,35.6,94.2,70,0
    .goto Bloodmyst Isle,51.3,93.9
	.use 23995 >>用你包里的黑淤泥标记器标记侦察兵。这将使他们对你没有敌意。
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
step
	#sticky
	#label greenmushroom
	>>在萨提尔地区附近寻找小的绿色蘑菇
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
	#sticky
	#label monument
    .goto Bloodmyst Isle,36.5,71.5
	>>点击纪念碑上的小标志
    .complete 9567,1 --Collect Nazzivus Monument Glyph (x1)
step
    .goto Bloodmyst Isle,38.2,81.7,60,0
	.goto Bloodmyst Isle,36.5,71.5,60,0
	.goto Bloodmyst Isle,38.2,81.7
    .use 23900 >>杀死游荡在召唤符和纪念碑铭文之间区域的名为恶魔守卫，泽拉克(他在召唤符出现之前在那里被消灭)。抢走他的装甲板，然后在你的包里点击它
	.collect 23900,1,9594 --Tzerak's Armor Plate
    .accept 9594 >>接任务: |cRXP_WARN_军团的徽记|r
	.unitscan Tzerak
    *Each respawn/despawn cycle takes about 6-7 minutes total
    --TODO: ??? bugged on wotlk beta
step
    .goto Bloodmyst Isle,37.0,78.7
	>>杀死该地区的萨特尔斯和费卢瓦。你可能必须杀死盗贼才能迫使你所需要的萨提尔重生。
    .complete 9594,1 --Kill Nazzivus Satyr (x8)
    .complete 9594,2 --Kill Nazzivus Felsworn (x8)
step << Shaman
	#sticky
	#completewith next
	.hs Blood Watch >>如果你的壁炉是向上的，壁炉是血表
step
	#requires greenmushroom
    .goto Bloodmyst Isle,53.3,57.6
>>对话: |cRXP_FRIENDLY_莫莱|r
    .turnin 9576 >>交任务: |cRXP_FRIENDLY_克鲁芬的项链|r
    .turnin 9629 >>交任务: |cRXP_FRIENDLY_研究鱼人|r
.target Morae
    .accept 9574 >>接任务: |cRXP_WARN_腐蚀的牺牲品|r
step
    .goto Bloodmyst Isle,50.6,74.4
	>>杀死这个地区周围的树人。掠夺他们的树皮。在处理过程中升级。
    .complete 9574,1 --Collect Crystallized Bark (x6)
step
    .goto Bloodmyst Isle,53.3,57.8
.target Morae
>>对话: |cRXP_FRIENDLY_莫莱|r
    .turnin 9574 >>交任务: |cRXP_FRIENDLY_腐蚀的牺牲品|r
step
	#completewith next
	.goto Bloodmyst Isle,53.3,56.7
	.vendor >>供应商和维修 << !Hunter
	.vendor >>买一个中号棉被并补充箭头 << Hunter
step
    .goto Bloodmyst Isle,55.1,59.2
    .accept 9646 >>接任务: |cRXP_WARN_通缉：死爪|r
step
    .goto Bloodmyst Isle,55.0,58.1
.target Vindicator Aalesia
>>对话: |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .turnin 9594 >>交任务: |cRXP_FRIENDLY_军团的徽记|r
    .turnin 9567 >>交任务: |cRXP_FRIENDLY_知己知彼|r
step
    .goto Bloodmyst Isle,55.2,56.0
.target Stillpine Ambassador Frasaboo
>>对话: |cRXP_FRIENDLY_止松大使弗拉萨布|r
    .turnin 9667 >>交任务: |cRXP_FRIENDLY_拯救止松公主|r
step
    .goto Bloodmyst Isle,56.4,56.7
.target Jessera of Mac'Aree
>>对话: |cRXP_FRIENDLY_玛凯雷的耶塞拉|r
    .turnin 9648 >>交任务: |cRXP_FRIENDLY_玛特帕尔姆蘑菇展|r
step
    .goto Bloodmyst Isle,55.4,55.3
.target Vindicator Boros
>>对话: |cRXP_FRIENDLY_守备官波鲁斯|r
    .accept 9641 >>接任务: |cRXP_WARN_辐射水晶碎片|r
    .accept 9779 >>接任务: |cRXP_WARN_拦截情报|r
step
	.goto Bloodmyst Isle,55.4,55.4
	.itemcount 23984,10
.target Vindicator Boros
>>对话: |cRXP_FRIENDLY_守备官波鲁斯|r
	.turnin 9641,3 >>交任务: |cRXP_FRIENDLY_辐射水晶碎片|r << Warrior/Paladin/Hunter/Rogue/Shaman
    .turnin 9641,2 >>交任务: |cRXP_FRIENDLY_辐射水晶碎片|r << Mage/Priest/Warlock
    .turnin 9641 >>交任务: |cRXP_FRIENDLY_辐射水晶碎片|r << Druid
step
    .itemcount 23984,10
    .goto Bloodmyst Isle,55.421,55.232
.target Vindicator Boros
>>对话: |cRXP_FRIENDLY_守备官波鲁斯|r
    .turnin 9642,3 >>交任务: |cRXP_FRIENDLY_更多辐射水晶碎片|r << Warrior/Paladin/Hunter/Rogue/Shaman
    .turnin 9642,2 >>交任务: |cRXP_FRIENDLY_更多辐射水晶碎片|r << Warlock/Priest/Mage
    .turnin 9642 >>交任务: |cRXP_FRIENDLY_更多辐射水晶碎片|r << Druid
step
    .goto Bloodmyst Isle,61.1,48.6
>>对话: |cRXP_FRIENDLY_德莱尼制图师|r
    .turnin 9620 >>交任务: |cRXP_FRIENDLY_失踪的测量小组|r
.target Draenei Cartographer
    .accept 9628 >>接任务: |cRXP_WARN_夺回数据|r
step
    .goto Bloodmyst Isle,62.7,47.6
	>>杀死纳加斯直到你得到调查数据水晶
    .complete 9628,1 --Collect Survey Data Crystal (x1)
step
    .goto Bloodmyst Isle,52.7,53.3
>>对话: |cRXP_FRIENDLY_先行官米库拉斯|r
    .turnin 9628 >>交任务: |cRXP_FRIENDLY_夺回数据|r
.target Harbinger Mikolaas
    .accept 9584 >>接任务: |cRXP_WARN_第二份样本|r
.target Exarch Admetius
>>对话: |cRXP_FRIENDLY_主教埃德门图斯|r
    .turnin 9668 >>交任务: |cRXP_FRIENDLY_向主教埃德门图斯报告|r
step
    #sticky
	#label Missive
	#completewith mailbox
	.goto Bloodmyst Isle,48.1,47.6
	>>杀死附近的精灵
    .complete 9779,1 --Collect Sunhawk Missive (x1)
step
    .goto Bloodmyst Isle,45.7,47.8
	.use 23876 >>用包里的镐来收集红色小水晶
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
	.goto Bloodmyst Isle,48.1,47.6
	.xp 15-1200
step
	#sticky
    #level 15
	#requires Missive
	#label mailbox
	.goto Bloodmyst Isle,55.0,59.3,100,0
	.goto Bloodmyst Isle,55.3,55.3,100,0
	.goto Bloodmyst Isle,52.681,53.175,80,0
	.goto Bloodmyst Isle,55.0,59.3
	>>与信使赫密修斯对话，他在血腥守卫周围巡逻
	.unitscan Messenger Hermesius
.target Messenger Hermesius
>>对话: |cRXP_FRIENDLY_信使赫米修斯|r
	.turnin 9671
step
    #requires Missive
	.goto Bloodmyst Isle,52.681,53.175
>>对话: |cRXP_FRIENDLY_先行官米库拉斯|r
    .turnin 9584 >>交任务: |cRXP_FRIENDLY_第二份样本|r
.target Harbinger Mikolaas
    .accept 9585 >>接任务: |cRXP_WARN_最终的样本|r
step
    .goto Bloodmyst Isle,55.3,55.3
>>对话: |cRXP_FRIENDLY_守备官波鲁斯|r
    .turnin 9779 >>交任务: |cRXP_FRIENDLY_拦截情报|r
.target Vindicator Boros
    .accept 9696 >>接任务: |cRXP_LOOT_翻译......|r
step << Paladin
	.goto Bloodmyst Isle,55.6,55.3
	.trainer >>维护者伊索的火车课咒语
step
    .goto Bloodmyst Isle,54.5,54.6
    .turnin -9696 >>交任务: |cRXP_FRIENDLY_翻译……|r
.target Interrogator Elysia
>>对话: |cRXP_FRIENDLY_审讯者埃莉西亚|r
    .accept 9698 >>接任务: |cRXP_WARN_会见先知|r
step
    .xp 15
step
	#requires mailbox
	.use 24132 >>打开你的邮箱，检索便条并接受任务
    .goto Bloodmyst Isle,55.1,59.1
	.collect 24132,1,9672 --Collect A Letter from the Admiral
    .accept 9672 >>接任务: |cRXP_WARN_血咒的遗产|r
step
	#sticky
	#completewith next
	.vendor >>进去从Topher买15级食物 << Warrior/Rogue/Shaman/Paladin
	.vendor >>如果需要，还可以购买冰牛奶或甜瓜汁 << Priest/Shaman/Paladin
step
    .goto Bloodmyst Isle,55.0,57.8
.target Vindicator Aalesia
>>对话: |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .accept 9569 >>接任务: |cRXP_WARN_化解危机|r
step
    .goto Bloodmyst Isle,55.8,57.0
.target Tracker Lyceon
>>对话: |cRXP_FRIENDLY_追踪者兰塞恩|r
    .accept 9580 >>接任务: |cRXP_WARN_猎熊|r
    .accept 9643 >>接任务: |cRXP_WARN_荆棘巨藤|r
step
    .goto Bloodmyst Isle,56.3,56.8
.target Jessera of Mac'Aree
>>对话: |cRXP_FRIENDLY_玛凯雷的耶塞拉|r
    .accept 9649 >>接任务: |cRXP_LOOT_伊瑟拉之泪|r
step
    .goto Bloodmyst Isle,74.7,33.7
	>>途中升级
.target Prince Toreth
>>对话: |cRXP_FRIENDLY_托雷斯王子|r
    .accept 9687 >>接任务: |cRXP_WARN_找回尊严|r
step
	#sticky
	#label yserasTear
	>>收集岛上的小绿蘑菇。尽量避免幼童暴徒
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
    .goto Bloodmyst Isle,79.1,22.6
>>对话: |cRXP_FRIENDLY_爱德华·汉斯|r
    .turnin 9672 >>交任务: |cRXP_FRIENDLY_血咒的遗产|r
.target Captain Edward Hanes
    .accept 9674 >>接任务: |cRXP_WARN_血咒纳迦|r
step
    .goto Bloodmyst Isle,80.0,16.9
	>>如果你死了，请和船长谈谈，再要一个水性呼吸爱好者
    .complete 9674,1 --Kill Bloodcursed Naga (x10)
step
    .goto Bloodmyst Isle,79.1,22.6
.target Captain Edward Hanes
>>对话: |cRXP_FRIENDLY_爱德华·汉斯|r
    .turnin 9674 >>交任务: |cRXP_FRIENDLY_血咒纳迦|r
step
    .goto Bloodmyst Isle,79.1,22.6
.target Captain Edward Hanes
>>对话: |cRXP_FRIENDLY_爱德华·汉斯|r
    .accept 9682 >>接任务: |cRXP_WARN_绝望者......|r
    .maxlevel 15
step
    .goto Bloodmyst Isle,87.3,16.6
    .complete 9682,1 --Collect Bloodcursed Soul (x4)
    .isOnQuest 9682
step
    .goto Bloodmyst Isle,79.2,22.7
.target Captain Edward Hanes
>>对话: |cRXP_FRIENDLY_爱德华·汉斯|r
    .turnin 9682 >>交任务: |cRXP_FRIENDLY_绝望者......|r
    .isOnQuest 9682
step
    .isOnQuest 9682
    .abandon 9682 >>抛弃那些毫无希望的人。。。
step
    .goto Bloodmyst Isle,79.2,22.7
.target Captain Edward Hanes
>>对话: |cRXP_FRIENDLY_爱德华·汉斯|r
    .accept 9683 >>接任务: |cRXP_WARN_血咒的终结|r
    .isQuestTurnedIn 9682
step
	#requires yserasTear
    .goto Bloodmyst Isle,86.0,54.5
    >>向南游到岛上，爬上山，点击雕像召唤阿托夫
    .complete 9683,1 --Kill Atoph the Bloodcursed (x1)
    *Atoph is level 19, proceed with caution
    .isOnQuest 9683
step << Shaman/Paladin wotlk/Hunter
    .goto Bloodmyst Isle,79.2,22.7
.target Captain Edward Hanes
>>对话: |cRXP_FRIENDLY_爱德华·汉斯|r
    .turnin 9683 >>交任务: |cRXP_FRIENDLY_血咒的终结|r
    .isOnQuest 9683
    .xp 16-2190,1
step << Shaman/Paladin wotlk/Hunter
	.xp 16-2190 --Making sure we get to level 16 before going into exodar for training
step
	#sticky
	#completewith next
	.deathskip >>死亡跳到血腥监视
step
    .goto Bloodmyst Isle,56.4,56.7
.target Jessera of Mac'Aree
>>对话: |cRXP_FRIENDLY_玛凯雷的耶塞拉|r
    .turnin 9649 >>交任务: |cRXP_FRIENDLY_伊瑟拉之泪|r
step
    .goto Bloodmyst Isle,57.6,53.9
.target Laando
>>对话: |cRXP_FRIENDLY_兰度|r
    .accept 9604 >>接任务: |cRXP_WARN_乘坐角鹰兽|r
step
    .goto Bloodmyst Isle,57.6,53.9
    .fly The Exodar>>飞到外族人
step
	.goto The Exodar,75.0,54.8,80,0
	.goto The Exodar,64.4,42.4,80,0
    .goto The Exodar,57.008,50.065
>>对话: |cRXP_FRIENDLY_努古尼|r
    .turnin 9604 >>交任务: |cRXP_FRIENDLY_乘坐角鹰兽|r
.target Nurguni
    .accept 9605 >>接任务: |cRXP_WARN_斯泰法努斯|r
step << Warrior
.target Behomat
>>对话: |cRXP_FRIENDLY_贝霍玛特|r
    .turnin 10350 >>交任务: |cRXP_FRIENDLY_贝霍玛特|r
    .goto The Exodar,55.579,82.269
    >>Talk to the weapon master upstairs
    .train 199 >>列车2h梅斯
    .goto The Exodar,53.3,85.7
step << Shaman
    >>Talk to the weapon master upstairs
    .goto The Exodar,53.3,85.7
    .train 199 >>列车2h梅斯
step << Paladin
    >>Talk to the weapon master upstairs
    .goto The Exodar,53.3,85.7
    .train 202 >>训练2h剑
step << Shaman
    .goto The Exodar,32.7,54.5
>>对话: |cRXP_FRIENDLY_先知维伦|r
    .turnin 9461 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
.target Prophet Velen
    .accept 9555 >>接任务: |cRXP_LOOT_火焰的召唤|r
    .turnin -9698 >>交任务: |cRXP_FRIENDLY_会见先知|r
    .accept 9699 >>接任务: |cRXP_LOOT_真相还是谎言|r
step << Paladin
    .goto The Exodar,38.8,82.6
.target Jol
>>对话: |cRXP_FRIENDLY_约尔|r
    .turnin 9600 >>交任务: |cRXP_FRIENDLY_救赎|r
step << !Shaman
    .goto The Exodar,32.858,54.484
    .turnin -9698 >>交任务: |cRXP_FRIENDLY_会见先知|r
.target Prophet Velen
>>对话: |cRXP_FRIENDLY_先知维伦|r
    .accept 9699 >>接任务: |cRXP_LOOT_真相还是谎言|r
step << Shaman
	#completewith next
    .goto The Exodar,30.0,33.1
.target Farseer Nobundo
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 9555 >>交任务: |cRXP_FRIENDLY_火焰的召唤|r
	.trainer >>训练你的16级法术
step
	.goto The Exodar,52.3,34.7,80,0
    .goto The Exodar,68.336,63.490
    >>跑回飞行管理员
>>对话: |cRXP_FRIENDLY_斯泰法努斯|r
    .turnin 9605 >>交任务: |cRXP_FRIENDLY_斯泰法努斯|r
.target Stephanos
    .accept 9606 >>接任务: |cRXP_WARN_返回看护员谢尔兰身边|r
step
	#completewith next
    .goto The Exodar,68.336,63.490
    .fly Bloodmyst Isle>>飞往血腥岛
step
    .goto Bloodmyst Isle,55.844,59.776
.target Caregiver Topher Loaal
>>对话: |cRXP_FRIENDLY_托菲尔·罗阿|r
    .turnin 9606 >>交任务: |cRXP_FRIENDLY_返回托菲尔·罗阿身边|r
step
    #label exit1
    .goto Bloodmyst Isle,55.5,55.4
    .turnin -9699 >>交任务: |cRXP_FRIENDLY_真相还是谎言|r
.target Vindicator Boros
>>对话: |cRXP_FRIENDLY_守备官波鲁斯|r
    .accept 9700 >>接任务: |cRXP_WARN_黑暗中的魔法|r
step
    .goto Bloodmyst Isle,56.2,54.3
.target Prospector Nachlan
>>对话: |cRXP_FRIENDLY_勘探者纳克兰|r
    .accept 10063 >>接任务: |cRXP_WARN_探险者协会要为侏儒服务吗？|r
step
	#sticky
    .goto Bloodmyst Isle,41.3,30.6
	.use 23877 >>用包里的镐来收集红色小水晶
    .complete 9585,1 --Collect Axxarien Crystal Sample (x1)
step
    .goto Bloodmyst Isle,41.9,29.6
    >>在营地周围收集水晶并杀死萨蒂尔
    .complete 9569,1 --Kill Zevrax (x1)
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
	#sticky
	#label constrictors
	#completewith gnome
    >>杀死变异收缩肌。抢走他们的葡萄藤
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
step
	#sticky
	#completewith bloodmyst2
	>>杀死熊。抢他们的熊侧翼
	.complete 9580,1 --Elder Brown Bear Flank (8)
step
    .goto Bloodmyst Isle,42.0,21.2
>>对话: |cRXP_FRIENDLY_克劳伯·维兹班|r
    .turnin 10063 >>交任务: |cRXP_FRIENDLY_探险者协会要为侏儒服务吗？|r
.target Clopper Wizbang
    .accept 9548 >>接任务: |cRXP_WARN_被偷走的设备|r
    .accept 9549 >>接任务: |cRXP_WARN_黑沙神器|r
step
    #sticky
    #completewith gnome
    .goto Bloodmyst Isle,42.142,21.174,0
    .vendor >>从Clopper Wizbang(限量供应)处购买青铜管，如果他没有或你已经有了，请跳过此步骤
	>>重新放置箭头 << Hunter
	>>必要时补充冰镇牛奶 << Hunter/Priest/Shaman/Paladin
    .collect 4371,1,175,1,1
step
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4
    >>掠夺可以在任何一个穆洛克营地产卵的板条箱
    .complete 9548,1 --Collect Clopper's Equipment (x1)
step
    .goto Bloodmyst Isle,39.5,20.7
	>>杀死并掠夺墨洛克人。偶像从预言家和预言家那里消失。混战鼠的刀。
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
step
    .goto Bloodmyst Isle,42.142,21.174
.target Clopper Wizbang
>>对话: |cRXP_FRIENDLY_克劳伯·维兹班|r
    .turnin 9548 >>交任务: |cRXP_FRIENDLY_被偷走的设备|r
    .turnin 9549 >>交任务: |cRXP_FRIENDLY_黑沙神器|r
step
    .goto Bloodmyst Isle,42.142,21.174
	.vendor >>从Clopper Wizbang(限量供应)处购买青铜管，如果他没有或你已经有了，请跳过此步骤
	.collect 4371,1,175,1,1
	.bronzetube
step
    .goto Bloodmyst Isle,53.1,20.3
    .use 23837 >>点击你袋子里的黑色淤泥任务的人工制品中的风化藏宝图
	.collect 23837,1,9550 --Collect Weathered Treasure Map (x1)
    .accept 9550 >>接任务: |cRXP_LOOT_一张地图？|r
step
	#sticky
	#label Sun Portal Site
    .goto Bloodmyst Isle,53.1,20.3
	>>靠近飞船般的建筑
	.complete 9700,1 --Sun Portal Site Confirmed (1)
step
    #label gnome
    .goto Bloodmyst Isle,52.5,25.2
	>>消灭该区域的虚空异常
    .complete 9700,2 --Kill Void Anomaly (x5)
step
	.goto Bloodmyst Isle,47.6,24.9,60,0
	.goto Bloodmyst Isle,44.9,26.4,100,0
	.goto Bloodmyst Isle,48.3,33.4,100,0
	.goto Bloodmyst Isle,45.1,37.4,100,0
	.goto Bloodmyst Isle,40.8,41.9,100,0
	.goto Bloodmyst Isle,34.0,44.3,100,0
	.goto Bloodmyst Isle,39.0,48.1,120,0
	.goto Bloodmyst Isle,42.5,49.3,100,0
	.goto Bloodmyst Isle,47.6,24.9
    >>杀死变异的Constrictors并掠夺他们的葡萄藤
	.complete 9643,1 --Collect Thorny Constrictor Vine (x6)
step
    .goto Bloodmyst Isle,54.0,30.9,60,0
    .goto Bloodmyst Isle,53.9,35.4,60,0
    .goto Bloodmyst Isle,57.0,34.3,60,0
    .goto Bloodmyst Isle,56.1,40.2
	>>在树营地掠夺地上的龙骨
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    .goto Bloodmyst Isle,61.1,41.9
    .turnin 9550 >>交任务: |cRXP_FRIENDLY_一张地图？|r
    .accept 9557 >>接任务: |cRXP_WARN_破译书籍|r
step
    #completewith next
    #requires constrictors
    .hs >>听到或跑回镇上
step
   	#requires constrictors
	.goto Bloodmyst Isle,54.7,54.1
.target Anchorite Paetheus
>>对话: |cRXP_FRIENDLY_学者菲索斯|r
    .turnin 9557 >>交任务: |cRXP_FRIENDLY_破译书籍|r
step
    .goto Bloodmyst Isle,52.6,53.3
>>对话: |cRXP_FRIENDLY_先行官米库拉斯|r
    .turnin 9585 >>交任务: |cRXP_FRIENDLY_最终的样本|r
.target Harbinger Mikolaas
    .accept 10064 >>接任务: |cRXP_WARN_阿古斯之手|r
step
    .goto Bloodmyst Isle,54.7,54.0
.target Anchorite Paetheus
>>对话: |cRXP_FRIENDLY_学者菲索斯|r
    .accept 9561 >>接任务: |cRXP_LOOT_诺尔凯的日记|r
step
	#completewith next
    .goto Bloodmyst Isle,55.421,55.232
.target Vindicator Boros
>>对话: |cRXP_FRIENDLY_守备官波鲁斯|r
    .turnin 9700 >>交任务: |cRXP_FRIENDLY_黑暗中的魔法|r
.target Vindicator Kuros
>>对话: |cRXP_FRIENDLY_守备官库卢斯|r
    .accept 9703 >>接任务: |cRXP_LOOT_冷却核心|r
	.trainer >>维护者伊索的火车课咒语 << Paladin
step
    .itemcount 23984,10
    .goto Bloodmyst Isle,55.421,55.232
.target Vindicator Boros
>>对话: |cRXP_FRIENDLY_守备官波鲁斯|r
    .turnin 9642,3 >>交任务: |cRXP_FRIENDLY_更多辐射水晶碎片|r << Warrior/Paladin/Hunter/Rogue/Shaman
    .turnin 9642,2 >>交任务: |cRXP_FRIENDLY_更多辐射水晶碎片|r << Warlock/Priest/Mage
    .turnin 9642 >>交任务: |cRXP_FRIENDLY_更多辐射水晶碎片|r << Druid
step
    .goto Bloodmyst Isle,55.9,56.9
>>对话: |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9643 >>交任务: |cRXP_FRIENDLY_荆棘巨藤|r
.target Tracker Lyceon
    .accept 9647 >>接任务: |cRXP_WARN_消灭巨蛾|r
step
	.goto Bloodmyst Isle,55.9,56.9
	.isQuestComplete 9580
.target Tracker Lyceon
>>对话: |cRXP_FRIENDLY_追踪者兰塞恩|r
	.turnin 9580 >>交任务: |cRXP_FRIENDLY_猎熊|r
step
    .goto Bloodmyst Isle,55.0,58.1
.target Vindicator Aalesia
>>对话: |cRXP_FRIENDLY_守备官艾蕾希亚|r
    .turnin 9569 >>交任务: |cRXP_FRIENDLY_化解危机|r
step
    .goto Bloodmyst Isle,53.242,57.708
.target Morae
>>对话: |cRXP_FRIENDLY_莫莱|r
    .accept 9578 >>接任务: |cRXP_WARN_搜寻加莱恩|r
step
	#sticky
	#completewith bloodmyst2
	>>在你的任务中杀死飞翔者
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
step
    .goto Bloodmyst Isle,37.5,61.3
	>>优先处理任务中的转向，不要升级精灵。
>>对话: |cRXP_FRIENDLY_加莱恩的尸体|r
    .turnin 9578 >>交任务: |cRXP_FRIENDLY_搜寻加莱恩|r
.target Galaen's Corpse
    .accept 9579 >>接任务: |cRXP_LOOT_加莱恩的命运|r
    .accept 9706 >>接任务: |cRXP_WARN_加莱恩的日记 - 守备官撒鲁安的命运|r
step
    .goto Bloodmyst Isle,37.8,58.9
	>>杀死并掠夺这个地区的血精灵。你可以把它们放在该区域的柱子周围，以避免损坏
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
step
	.xp 17+12800 >>升级到12800+/16400xp
step
	#requires constrictors
    .goto Bloodmyst Isle,53.3,57.7
.target Morae
>>对话: |cRXP_FRIENDLY_莫莱|r
    .turnin 9579 >>交任务: |cRXP_FRIENDLY_加莱恩的命运|r
step
    .goto Bloodmyst Isle,53.3,57.2
.target Achelus
>>对话: |cRXP_FRIENDLY_阿彻鲁斯|r
    .accept 9669 >>接任务: |cRXP_WARN_覆灭的远征队|r
step
    .goto Bloodmyst Isle,55.6,55.1
>>对话: |cRXP_FRIENDLY_守备官库卢斯|r
    .turnin 9703 >>交任务: |cRXP_FRIENDLY_冷却核心|r
    .turnin 9706 >>交任务: |cRXP_FRIENDLY_加莱恩的日记 - 守备官撒鲁安的命运|r
.target Vindicator Kuros
    .accept 9711 >>接任务: |cRXP_LOOT_残忍的玛提斯|r
.target Vindicator Aesom
>>对话: |cRXP_FRIENDLY_守备官伊索姆|r
    .accept 9748 >>接任务: |cRXP_WARN_毒水|r
    .accept 9753 >>接任务: |cRXP_LOOT_我们所知道的......|r
step
    .goto Bloodmyst Isle,52.6,53.3
>>对话: |cRXP_FRIENDLY_主教埃德门图斯|r
    .turnin 9753 >>交任务: |cRXP_FRIENDLY_我们所知道的......|r
.target Exarch Admetius
    .accept 9756 >>接任务: |cRXP_LOOT_我们不知道的......|r
step
    >>打开笼子和囚犯说话
    .skipgossip
    .complete 9756,1
    .goto Bloodmyst Isle,54.36,54.30
>>对话: |cRXP_FRIENDLY_主教埃德门图斯|r
    .turnin 9756 >>交任务: |cRXP_FRIENDLY_我们不知道的......|r
    .goto Bloodmyst Isle,52.6,53.3
.target Exarch Admetius
    .accept 9760 >>接任务: |cRXP_WARN_守备官营地|r
step
	#completewith AliveM
    .goto Bloodmyst Isle,43.9,43.7,0
    .goto Bloodmyst Isle,30.1,51.7,0
    .goto Bloodmyst Isle,22.4,54.3,0
	.line Bloodmyst Isle,43.1,43.7,36.5,47.2,33.5,47.1,29.9,51.8,27.7,51.8,25.1,54.1,22.0,54.3
    .use 24278 >>寻找残忍的马蒂斯，他在维护者休息处旁边的主要道路上巡逻
    .complete 9711,1 --Capture Matis the Cruel
	*Once you find him, use the flare in your bags to summon a Draenei NPC to assist you
	*The flare gun only have 1 charge, if you fail this quest, you will have to abandon it
	.unitscan Matis the Cruel
step
    .goto Bloodmyst Isle,30.3,45.8
>>对话: |cRXP_FRIENDLY_斥候约莉|r
    .turnin 10064 >>交任务: |cRXP_FRIENDLY_阿古斯之手|r
.target Scout Jorli
    .accept 10065 >>接任务: |cRXP_LOOT_披荆斩棘|r
.target Scout Loryi
>>对话: |cRXP_FRIENDLY_斥候洛伊|r
    .accept 9741 >>接任务: |cRXP_WARN_虚空幼体|r
step
    .goto Bloodmyst Isle,30.8,46.8
.target Defender Sorli
.target Defender Adrielle
.target Vindicator Corin
>>对话: |cRXP_FRIENDLY_守备官考尔琳|r
-->>对话: |cRXP_FRIENDLY_防御者艾德利雷|r
-->>对话: |cRXP_FRIENDLY_防御者索里|r
    .accept 10066 >>接任务: |cRXP_WARN_纠结之网|r
--
--
    .accept 10067 >>接任务: |cRXP_WARN_污秽的水之魂|r
     .turnin 9760 >>交任务: |cRXP_FRIENDLY_守备官营地|r
step
    #sticky
	#completewith next
    .goto Bloodmyst Isle,30.3,57.2,0
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .complete 10065,1 --Kill Enraged Ravager (x10)
step
    .goto Bloodmyst Isle,19.6,63.2
	>>你必须杀死水中的异常才能最终繁殖出怪物
    .complete 9741,1 --Kill Void Critter (x12)
step
	>>结束探戈者和掠夺者
    .goto Bloodmyst Isle,30.3,57.2
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .complete 10065,1 --Kill Enraged Ravager (x10)
step
	#label bloodmyst2
.target Vindicator Corin
>>对话: |cRXP_FRIENDLY_守备官考尔琳|r
    .turnin 10066 >>交任务: |cRXP_FRIENDLY_纠结之网|r
    .goto Bloodmyst Isle,30.7,46.9
.target Scout Jorli
>>对话: |cRXP_FRIENDLY_斥候约莉|r
    .turnin 10065 >>交任务: |cRXP_FRIENDLY_披荆斩棘|r
    .goto Bloodmyst Isle,30.3,46.0
step
    .goto Bloodmyst Isle,33.4,43.8
	>>杀死熊和颤抖者。掠夺熊的侧翼
	>>完成熊和飞翔者的杀戮和掠夺
    .complete 9647,1 --Kill Royal Blue Flutterer (10)
	.complete 9580,1 --Elder Brown Bear Flank (8)
step
    .goto Bloodmyst Isle,29.6,39.5
	>>杀死该地区的污水灵
    .complete 10067,1 --Kill Fouled Water Spirit (x6)
step
    .goto Bloodmyst Isle,30.746,46.808
.target Vindicator Corin
>>对话: |cRXP_FRIENDLY_守备官考尔琳|r
    .turnin 10067 >>交任务: |cRXP_FRIENDLY_污秽的水之魂|r
step
    .goto Bloodmyst Isle,24.872,34.310
.target Researcher Cornelius
>>对话: |cRXP_FRIENDLY_研究员考内留斯|r
    .accept 9670 >>接任务: |cRXP_LOOT_他们还活着！也许......|r
step
	#sticky
	#label Researchers
	>>破坏这个区域周围的卵囊。如果可能的话，在射程内杀死他们，以免激怒潜在的暴徒
    .goto Bloodmyst Isle,18.2,38.0,0,0
    .complete 9670,1 --Expedition Researcher Freed (5)
step
    .goto Bloodmyst Isle,21.4,36.0,70,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>杀死该地区的神秘水蛭和纺纱者，然后在山顶杀死扎拉克
    .complete 9669,1 --Kill Myst Leecher (x8)
    .complete 9669,2 --Kill Myst Spinner (x8)
    .complete 9669,3 --Kill Zarakh (x1)
step
	#requires Researchers
	#label AliveM
    .goto Bloodmyst Isle,24.9,34.4
.target Researcher Cornelius
>>对话: |cRXP_FRIENDLY_研究员考内留斯|r
    .turnin 9670 >>交任务: |cRXP_FRIENDLY_他们还活着！也许......|r
step
    .goto Bloodmyst Isle,43.9,43.7,70,0
    .goto Bloodmyst Isle,30.1,51.7,70,0
    .goto Bloodmyst Isle,22.4,54.3,70,0
    .goto Bloodmyst Isle,30.1,51.7,70,0
    .goto Bloodmyst Isle,43.9,43.7,70,0
    .goto Bloodmyst Isle,22.4,54.3,70,0
    .goto Bloodmyst Isle,30.1,51.7
	.line Bloodmyst Isle,43.1,43.7,36.5,47.2,33.5,47.1,29.9,51.8,27.7,51.8,25.1,54.1,22.0,54.3
    .use 24278 >>寻找残忍的马蒂斯，他在维护者休息处旁边的主要道路上巡逻
    .complete 9711,1 --Capture Matis the Cruel
	*Once you find him, use the flare in your bags to summon a Draenei NPC to assist you
	*The flare gun only have 1 charge, if you fail this quest, you will have to abandon it
	.unitscan Matis the Cruel
step << Hunter/Shaman/Mage
    #label limit1
    #completewith L20
	.xp 19-11,200,1
    .goto Bloodmyst Isle,24.8,51.3
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .complete 9746,2 --Kill Sunhawk Defender (x10)
step << Hunter/Shaman/Mage
    #label limit2
    #completewith L20
    #requires limit1
    .isOnQuest 9746
    .goto Bloodmyst Isle,55.6,55.3
>>对话: |cRXP_FRIENDLY_守备官伊索姆|r
    .turnin 9746 >>交任务: |cRXP_FRIENDLY_精疲力尽|r
.target Vindicator Aesom
    .accept 9740 >>接任务: |cRXP_LOOT_太阳之门|r
step << Hunter/Shaman/Mage
    #label sungate
    #completewith L20
    #requires limit2
    .isOnQuest 9740
    .goto Bloodmyst Isle,18.7,64.0
    >>点击湖周围的紫色水晶，然后点击中间的大门户
    .complete 9740,1
step
    .goto Bloodmyst Isle,34.3,33.6
	.use 24318 >>使用瀑布底部袋子中的取样瓶
    .complete 9748,1 --Collect Bloodmyst Water Sample (x1)
step
    .goto Bloodmyst Isle,37.4,30.1
	>>杀死指定的熊。抢他的爪子
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
step
	#completewith next
    .hs >>心脏到血液观察
step
    .goto Bloodmyst Isle,53.4,57.1
.target Achelus
>>对话: |cRXP_FRIENDLY_阿彻鲁斯|r
    .turnin 9669 >>交任务: |cRXP_FRIENDLY_覆灭的远征队|r
step
    .goto Bloodmyst Isle,52.7,53.3
.target Harbinger Mikolaas
>>对话: |cRXP_FRIENDLY_先行官米库拉斯|r
    .turnin 9646 >>交任务: |cRXP_FRIENDLY_通缉：死爪|r
step
    .goto Bloodmyst Isle,54.7,54.1
.target Anchorite Paetheus
>>对话: |cRXP_FRIENDLY_学者菲索斯|r
    .accept 9632 >>接任务: |cRXP_WARN_新的盟友|r
step
    .goto Bloodmyst Isle,55.6,55.3
>>对话: |cRXP_FRIENDLY_守备官伊索姆|r
    .turnin 9741 >>交任务: |cRXP_FRIENDLY_虚空幼体|r
    .turnin 9748 >>交任务: |cRXP_FRIENDLY_毒水|r
.target Vindicator Kuros
>>对话: |cRXP_FRIENDLY_守备官库卢斯|r
    .turnin 9711 >>交任务: |cRXP_FRIENDLY_残忍的玛提斯|r
.target Vindicator Aesom
    .accept 9746 >>接任务: |cRXP_WARN_精疲力尽|r << Hunter/Shaman/Mage
	.isQuestComplete 9711
step
    .goto Bloodmyst Isle,55.6,55.3
>>对话: |cRXP_FRIENDLY_守备官伊索姆|r
    .turnin 9741 >>交任务: |cRXP_FRIENDLY_虚空幼体|r
    .turnin 9748 >>交任务: |cRXP_FRIENDLY_毒水|r
.target Vindicator Aesom
    .accept 9746 >>接任务: |cRXP_WARN_精疲力尽|r << Hunter/Shaman/Mage
step
	.goto Bloodmyst Isle,55.6,55.3
	.abandon 9711 >>抛弃残忍的马蒂斯
step
	#requires sungate
	.goto Bloodmyst Isle,55.6,55.3
.target Vindicator Aesom
>>对话: |cRXP_FRIENDLY_守备官伊索姆|r
	.turnin 9740 >>交任务: |cRXP_FRIENDLY_太阳之门|r
step
	#label bearend
    .goto Bloodmyst Isle,55.9,56.9
.target Tracker Lyceon
>>对话: |cRXP_FRIENDLY_追踪者兰塞恩|r
    .turnin 9647 >>交任务: |cRXP_FRIENDLY_消灭巨蛾|r
    .turnin 9580 >>交任务: |cRXP_FRIENDLY_猎熊|r
step
    .goto Bloodmyst Isle,61.4,49.6
    .turnin 9561 >>交任务: |cRXP_FRIENDLY_诺尔凯的日记|r
step
    .goto Bloodmyst Isle,74.6,33.6
>>对话: |cRXP_FRIENDLY_托雷斯王子|r
    .turnin 9687 >>交任务: |cRXP_FRIENDLY_找回尊严|r
.target Prince Toreth
    .accept 9688 >>接任务: |cRXP_LOOT_进入梦境|r
step
	#sticky
	#label Veridian
    .goto Bloodmyst Isle,71.5,27.8,0
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .complete 9688,2 --Kill Veridian Broodling (x5)
step
    .goto Bloodmyst Isle,79.1,22.7
.target Captain Edward Hanes
>>对话: |cRXP_FRIENDLY_爱德华·汉斯|r
    .turnin 9683 >>交任务: |cRXP_FRIENDLY_血咒的终结|r
    .isOnQuest 9683
step
    #requires Veridian
	.goto Bloodmyst Isle,74.3,33.4
>>对话: |cRXP_FRIENDLY_托雷斯王子|r
    .turnin 9688 >>交任务: |cRXP_FRIENDLY_进入梦境|r
.target Prince Toreth
    .accept 9689 >>接任务: |cRXP_LOOT_刺喉|r
step
    .goto Bloodmyst Isle,73.0,21.0
	>>爬到山顶，点击篝火召唤剃须刀。他飞下来需要一点时间。
    .complete 9689,1 --Kill Razormaw (x1)
	>>这是一个精英任务，如果你不能杀死Razormaw，跳过这一步
step
    .goto Bloodmyst Isle,74.3,33.4
.target Prince Toreth
>>对话: |cRXP_FRIENDLY_托雷斯王子|r
    .turnin 9689 >>交任务: |cRXP_FRIENDLY_刺喉|r
	.isQuestComplete 9689
step << Hunter/Shaman/Mage
    #label L20
    .xp 20
    >>你需要达到20级才能离开血腥结晶
step << !Shaman
    #completewith flighttoexodar2
    .deathskip >>死神跳回血腥监视
step
    .itemcount 23984,10
    .goto Bloodmyst Isle,55.421,55.232
    >>Turn in your remaining Irradiated Crystal Shards before leaving Bloodmyst!
.target Vindicator Boros
>>对话: |cRXP_FRIENDLY_守备官波鲁斯|r
    .turnin 9642,3 >>交任务: |cRXP_FRIENDLY_更多辐射水晶碎片|r << Warrior/Paladin/Hunter/Rogue/Shaman
    .turnin 9642,2 >>交任务: |cRXP_FRIENDLY_更多辐射水晶碎片|r << Warlock/Priest/Mage
    .turnin 9642 >>交任务: |cRXP_FRIENDLY_更多辐射水晶碎片|r << Druid
step << Paladin
	#completewith next
	#level20
	.goto Bloodmyst Isle,55.6,55.3
	>>Vindicator Esom培训
step
    #label flighttoexodar2
	#completewith next
    .goto Bloodmyst Isle,57.7,53.9
    .fly the Exodar>>飞到外族人那里
step << Shaman
    .goto The Exodar,32.4,24.0
.target Farseer Javad
>>对话: |cRXP_FRIENDLY_先知亚瓦德|r
    .accept 9502 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman
    .goto The Exodar,31.3,30.7
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 9502 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Farseer Nobundo
    .accept 9501 >>接任务: |cRXP_LOOT_水之召唤|r
	.trainer >>训练你的20级技能
step << Shaman
    .goto The Exodar,68.336,63.490
    .fly Blood Watch>>飞到血站
step << Shaman
    .goto Bloodmyst Isle,32.300,16.132
>>对话: |cRXP_FRIENDLY_阿奎欧斯|r
    .turnin 9501 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Aqueous
    .accept 9503 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman
    .goto Bloodmyst Isle,24.8,51.3
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .complete 9746,2 --Kill Sunhawk Defender (x10)
step << Shaman
    .goto Bloodmyst Isle,30.2,37.8
    .complete 9503,1 --Collect Foul Essence (x6)
step << Shaman
    .goto Bloodmyst Isle,32.4,16.2
>>对话: |cRXP_FRIENDLY_阿奎欧斯|r
    .turnin 9503 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Aqueous
    .accept 9504 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman
    .goto Bloodmyst Isle,30.4,45.8,120 >>故意死亡，重生并跑向血液观察
step << Shaman
    .goto Bloodmyst Isle,55.5,55.4
.target Vindicator Aesom
>>对话: |cRXP_FRIENDLY_守备官伊索姆|r
    .turnin 9746 >>交任务: |cRXP_FRIENDLY_精疲力尽|r
step << Shaman
    .goto Bloodmyst Isle,57.7,53.9
    .fly The Exodar>>飞到外族人
step << Draenei !Paladin wotlk
	.goto The Exodar,81.18,52.56
    .money <5.00
    .skill riding,75 >>前往Exodar，购买并训练您的坐骑
step << Hunter
	.goto The Exodar,42.0,71.4,60,0
	.goto The Exodar,54.5,85.6,60,0
	.goto The Exodar,47.6,88.3
	.trainer >>《异国他乡》中的火车咒语
	.train 15147 >>从宠物训练师那里学习咆哮等级3 << tbc
step << Priest
    >>进入The Exodar并从供应商处购买燃烧魔杖
    .collect 5210,1
    .goto The Exodar,46.4,61.4
    .trainer >>训练你的职业技能
    .goto The Exodar,39.2,51.3
step << Mage
	.goto The Exodar,51.0,46.8,80,0
	.goto The Exodar,47.2,62.3,20,0
	    .goto The Exodar,46.0,62.7
    .trainer >>训练咒语和传送门：《外衣》中的外衣
step << Mage
    >>购买1个传送符文
    .collect 17031,1 --Rune of Teleportation (1)
    .goto The Exodar,44.8,63.2
step << Warrior
	.goto The Exodar,42,71.4,60,0
	.goto The Exodar,54.5,85.6,60,0
	.goto The Exodar,55.579,82.269
	.trainer >>《异国他乡》中的火车咒语
step
	.goto The Exodar,33.8,73.7,10,0
    .goto Azuremyst Isle,24.182,54.346
	>>Talk to the Night Elf just outside of The Exodar back entrance
>>对话: |cRXP_FRIENDLY_女猎手凯拉·夜弓|r
    .turnin 9632 >>交任务: |cRXP_FRIENDLY_新的盟友|r
.target Huntress Kella Nightbow
    .accept 9633 >>接任务: |cRXP_WARN_前往奥伯丁|r
step
	#sticky
	#completewith next
	.goto Azuremyst Isle,21.4,54.0,20 >>去码头
step
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
	>>在等待时，进行水平急救或磨石。 << Warrior/Paladin
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 20-21 黑海岸 (德莱尼)
#version 1
#group RestedXP 联盟 20-32
#defaultfor Draenei
#next 21-23 灰谷 (德莱尼)
step
    #xprate <1.2
    .goto Darkshore,36.096,44.931
.target Gubber Blump
>>对话: |cRXP_FRIENDLY_古博·布拉普|r
    .accept 1138 >>接任务: |cRXP_WARN_海中的水果|r
    .maxlevel 20
step
	.goto Darkshore,36.35,45.57
	.fp Darkshore >>获取Darkshore飞行路线
step
    .goto Darkshore,37.0,44.0
    .home >>将Hearthstone设置为Auberdine
step
    #xprate <1.2
    .goto Darkshore,37.3,44.3
    .accept 4740 >>接任务: |cRXP_LOOT_通缉：莫克迪普！|r
step
    #xprate <1.2
    .goto Darkshore,37.4,43.7
.target Barithras Moonshade
>>对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .accept 947 >>接任务: |cRXP_LOOT_洞中的蘑菇|r
    .maxlevel 20
step
    .goto Darkshore,38.37,43.05
.target Gershala Nightwhisper
>>对话: |cRXP_FRIENDLY_戈沙拉·夜语|r
    .accept 1275 >>接任务: |cRXP_WARN_研究堕落|r
step
    #xprate <1.2
    .goto Darkshore,39.1,43.5
.target Sentinel Elissa Starbreeze
>>对话: |cRXP_FRIENDLY_哨兵艾莉萨·星风|r
    .accept 965 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .maxlevel 20
step
#xprate <1.2
    .goto Darkshore,38.1,41.2
.target Gorbold Steelhand
>>对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .accept 982 >>接任务: |cRXP_WARN_深不可测的海洋|r
    .maxlevel 20
step
    .goto Darkshore,37.4,40.2
	.turnin -9633 >>交任务: |cRXP_FRIENDLY_[The Way to Auberdine]|r
.target Thundris Windweaver
>>对话: |cRXP_FRIENDLY_桑迪斯·织风|r
    .accept 10752 >>接任务: |cRXP_WARN_前往灰谷|r
step
#xprate <1.2
    .goto Darkshore,38.2,28.8
	>>通过船体上的洞进入沉船，并在底层掠夺箱子
    .complete 982,1 --Collect Silver Dawning's Lockbox (x1)
    .isOnQuest 982
step
#xprate <1.2
    .goto Darkshore,39.6,27.5
	>>通过船体上的洞进入沉船，并在底层掠夺箱子
    .complete 982,2 --Collect Mist Veil's Lockbox (x1)
    .isOnQuest 982
step
#xprate <1.2
	#sticky
	>>杀死沿岸的珊瑚虫和结壳潮汐虫
    .complete 1138,1 --Collect Fine Crab Chunks (x6)
    .isOnQuest 1138
step
#xprate <1.2
	>>开始向北行驶，同时沿着海岸磨螃蟹
    .goto Darkshore,56.7,13.5
.target Gelkak Gyromast
>>对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .accept 2098 >>接任务: |cRXP_WARN_基尔卡克的钥匙|r
    .isOnQuest 1138
step
#xprate <1.2
	#completewith q2098
    #label crawlers
    >>杀死愤怒的珊瑚虫。当他们猛击时要小心(每10秒左右一次击打多次)
    .complete 2098,3 --Collect Bottom of Gelkak's Key (x1)
    .isOnQuest 2098
step
#xprate <1.2
    .goto Darkshore,59.5,12.6
	>>杀死巨型森林蜘蛛
    .complete 2098,1 --Collect Top of Gelkak's Key (x1)
    .isOnQuest 2098
step
#xprate <1.2
    .goto Darkshore,55.4,12.6
	>>杀死沉船旁边的墨洛克人。你可以把沉船前部周围的神谕(视线)放下
    .complete 2098,2 --Collect Middle of Gelkak's Key (x1)
    .isOnQuest 2098
step
#xprate <1.2
    #label q2098
    #requires crawlers
    .goto Darkshore,56.7,13.5
.target Gelkak Gyromast
>>对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .turnin 2098 >>交任务: |cRXP_FRIENDLY_基尔卡克的钥匙|r
    .isOnQuest 2098
step
#xprate <1.2
    .goto Darkshore,56.7,13.5
    #requires crawlers
.target Gelkak Gyromast
>>对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .accept 2078 >>接任务: |cRXP_WARN_基尔卡克的报复|r
    .isQuestTurnedIn 2098
step
#xprate <1.2
    .goto Darkshore,55.8,18.2
	>>Talk to the big robot and escort him back to the quest giver and then kill it once it turns hostile
    .complete 2078,1 --Gelkak's First Mate
    .isQuestTurnedIn 2098
step
#xprate <1.2
    .goto Darkshore,56.7,13.5
.target Gelkak Gyromast
>>对话: |cRXP_FRIENDLY_基尔卡克·旋杆|r
    .turnin 2078 >>交任务: |cRXP_FRIENDLY_基尔卡克的报复|r
    .isQuestTurnedIn 2098
step
#xprate <1.2
	#sticky
	#completewith deletekey
	.destroy 7442 >>摧毁: |cRXP_ENEMY_基尔卡克的钥匙|r, 它在你的钥匙中. 不再需要它了
    .isQuestTurnedIn 2098
step << !Druid !Shaman !Warlock
#xprate <1.2
    .isQuestTurnedIn 2098
	#sticky
	#completewith deletekey
	+确保保存好你的吸水药剂，稍后你需要它们来处理30-40之间的几个水下部分
step
#xprate <1.2
    .goto Darkshore,55.0,24.9
.target Balthule Shadowstrike
>>对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 965 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .isOnQuest 965
step
#xprate <1.2
    .goto Darkshore,55.0,24.9
.target Balthule Shadowstrike
>>对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .accept 966 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .isQuestTurnedIn 965
step
#xprate <1.2
	#label deletekey
    .goto Darkshore,55.3,26.7
    .complete 966,1 --Collect Worn Parchment (x4)
    .isOnQuest 966
step
#xprate <1.2
    .goto Darkshore,55.0,24.9
>>对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .turnin 966 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
.target Balthule Shadowstrike
    .accept 967 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .isQuestTurnedIn 965
step
#xprate <1.2
    .goto Darkshore,55.3,34.0
    .complete 947,1 --Collect Scaber Stalk (x5)
	>>进入洞穴时向右转，检查顶部是否有死亡帽。如果那里没有，你必须往下走
    .complete 947,2 --Collect Death Cap (x1)
    .isOnQuest 947
step
#xprate <1.2
	.goto Darkshore,55.3,34.0
    .xp 20-3900	>>升级到等级19和16900+/20800xp
step
#xprate <1.2
	#sticky
	#completewith next
	.deathskip >>死亡跳到奥伯丁 << Hunter
    .hs >>奥伯丁之炉 << !Hunter
step
#xprate <1.2
    .goto Darkshore,38.1,41.3
.target Gorbold Steelhand
>>对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .turnin 982 >>交任务: |cRXP_FRIENDLY_深不可测的海洋|r
    .isQuestComplete 982
step
#xprate <1.2
    .goto Darkshore,37.5,41.9
.target Archaeologist Hollee
>>对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .accept 729 >>接任务: |cRXP_WARN_健忘的勘察员|r
step
#xprate <1.2
    .goto Darkshore,37.4,43.7
.target Barithras Moonshade
>>对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .turnin 947 >>交任务: |cRXP_FRIENDLY_洞中的蘑菇|r
    .isQuestComplete 947
step
#xprate <1.2
    .goto Darkshore,37.4,43.7
.target Barithras Moonshade
>>对话: |cRXP_FRIENDLY_巴瑞萨斯·月影|r
    .accept 948 >>接任务: |cRXP_LOOT_安努|r
    .isQuestTurnedIn 947
step
#xprate <1.2
    .goto Darkshore,36.096,44.931
.target Gubber Blump
>>对话: |cRXP_FRIENDLY_古博·布拉普|r
    .turnin 1138 >>交任务: |cRXP_FRIENDLY_海中的水果|r
    .isQuestComplete 1138
step << Hunter
    #completewith Trainer
    .goto Darkshore,33.1,39.9,30,0
    .goto Darkshore,33.1,39.9,0
    .zone Teldrassil>>前往: |cRXP_PICK_泰达希尔|r
    .zoneskip Darnassus
step << Hunter
    #completewith Trainer
    .goto Teldrassil,58.399,94.016
    .fp Rut'theran >>获得Rut'theran Village航线
step << Hunter
    #label Trainer
	.goto Teldrassil,29.2,56.7
	.train 264 >>火车弓
    .train 227 >>火车杆 << tbc
step << Hunter
    .goto Darnassus,63.3,66.3
    >>在达纳苏斯购买20级武器升级
    >>如果你有传家武器，跳过这一步 << wotlk
    .collect 3027,1
    .itemStat 18,QUALITY,<7 << wotlk
step << Hunter
    .hs >>赫斯返回奥伯丁，如果你的HS仍处于冷却状态，请飞回
    .zoneskip Darkshore
step
#xprate <1.2
    .goto Darkshore,43.5,76.2
>>对话: |cRXP_FRIENDLY_安努|r
    .turnin 948 >>交任务: |cRXP_FRIENDLY_安努|r
.target Onu
    .accept 944 >>接任务: |cRXP_WARN_主宰之剑|r
    .isQuestTurnedIn 947
step
#xprate <1.2
    .goto Darkshore,36.6,76.6
	>>在火堆附近奔跑，开始活动(建议先杀死周围的暴徒)
    .complete 4740,1 --Kill Murkdeep (x1)
    .isOnQuest 4740
step
    .isOnQuest 729
    .goto Darkshore,35.7,83.7
.target Prospector Remtravel
>>对话: |cRXP_FRIENDLY_勘察员雷塔维|r
    .turnin 729 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
step
#xprate <1.7
    .goto Darkshore,35.7,83.7
    >>开始护送任务
.target Prospector Remtravel
>>对话: |cRXP_FRIENDLY_勘察员雷塔维|r
    .accept 731,1 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .isQuestTurnedIn 729
step
#xprate <1.7
    .isOnQuest 729
	>>Remtravel不会攻击没有攻击他的暴徒，也不会攻击你先攻击的暴徒。小心，因为他的生命值/护甲很低
    .complete 731,1 --护送探矿者返程
step
#xprate <1.2
    .goto Darkshore,39.0,86.4
	.use 5251 >>在该区域的任何地方使用Scrying Phial
    .turnin 944 >>交任务: |cRXP_FRIENDLY_主宰之剑|r
    .accept 949 >>接任务: |cRXP_LOOT_暮光之锤的营地|r
    .isQuestTurnedIn 948
step
#xprate <1.2
    .goto Darkshore,38.6,86.1
    .turnin 949 >>交任务: |cRXP_FRIENDLY_暮光之锤的营地|r
    >>跳过跟进
    .isQuestTurnedIn 948
step
#xprate <1.2
	#sticky
	#completewith darkshoreend
	.destroy 5251>>您现在可以从背包中摧毁“Scrying Phial”。因为不再需要它
step
#xprate <1.2
    .goto Darkshore,38.7,87.3
.target Therylune
>>对话: |cRXP_FRIENDLY_瑟瑞露尼|r
    .accept 945 >>接任务: |cRXP_WARN_护送瑟瑞露尼|r
    .maxlevel 21
step
#xprate <1.2
	#label darkshoreend
    .complete 945,1 --护送Therylune
    .isOnQuest 945
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 21-23 灰谷 (德莱尼)
#version 1
#group RestedXP 联盟 20-32
#defaultfor Draenei
#next RestedXP 联盟 20-32\23-24湿地；RestedXP联盟20-32\24-27 赤脊山/暮色森林
step
#xprate <1.2
    .goto Ashenvale,26.2,38.6
.target Delgren the Purifier
>>对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 967 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .isOnQuest 967
step
#xprate <1.2
    .goto Ashenvale,26.2,38.6
.target Delgren the Purifier
>>对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .accept 970 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .maxlevel 21
step
    >>这项任务会导致一条大链条，即使看起来很乏味，也值得一做。
    .goto Ashenvale,26.4,38.6
.target Orendil Broadleaf
>>对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .accept 1010 >>接任务: |cRXP_LOOT_巴斯兰的头发|r
step
    .goto Ashenvale,31.3,23.2
	>>寻找地面上的小包裹，它们可以部分隐藏在地形内
    .complete 1010,1 --Collect Bathran's Hair (x5)
step
#xprate <1.2
    .goto Ashenvale,31.4,31.0
    .complete 970,1 --Collect Glowing Soul Gem (x1)
    .isOnQuest 970
step
    .goto Ashenvale,26.4,38.6
>>对话: |cRXP_FRIENDLY_奥雷迪尔·阔叶|r
    .turnin 1010 >>交任务: |cRXP_FRIENDLY_巴斯兰的头发|r
.target Orendil Broadleaf
    .accept 1020 >>接任务: |cRXP_LOOT_奥雷迪尔的药剂|r
step
#xprate <1.2
    .goto Ashenvale,26.2,38.6
.target Delgren the Purifier
>>对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 970 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .isOnQuest 970
step
#xprate <1.2
    .goto Ashenvale,26.2,38.6
.target Delgren the Purifier
>>对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .accept 973 >>接任务: |cRXP_WARN_奥萨拉克斯之塔|r
    .maxlevel 21
    .isQuestTurnedIn 970
step
    .goto Ashenvale,34.7,48.8
.target Shindrell Swiftfire
>>对话: |cRXP_FRIENDLY_辛德瑞尔·速火|r
    .accept 1008 >>接任务: |cRXP_WARN_佐拉姆海岸|r
step
    .goto Ashenvale,36.618,49.581
.target Raene Wolfrunner
>>对话: |cRXP_FRIENDLY_莱恩·狼行者|r
    .accept 1054 >>接任务: |cRXP_WARN_解除威胁|r
    .turnin 10752 >>交任务: |cRXP_FRIENDLY_前往灰谷|r
step
    #xprate <1.7
    .goto Ashenvale,36.618,49.581
.target Raene Wolfrunner
>>对话: |cRXP_FRIENDLY_莱恩·狼行者|r
    .accept 991 >>接任务: |cRXP_WARN_莱恩的净化|r
step
    .goto Ashenvale,37.0,49.2
    .home >>上楼去。将您的炉石设置为Astranaar
step
    .goto Ashenvale,37.3,51.8
.target Pelturas Whitemoon
>>对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
    .turnin 1020 >>交任务: |cRXP_FRIENDLY_奥雷迪尔的药剂|r
    .timer 26,Orendil's Cure RP
step << Warrior tbc/Paladin
	#sticky
	.goto Ashenvale,35.8,52.0
	>>购买21级武器升级
	.collect 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.97
step
	.goto Ashenvale,37.3,51.8
.target Pelturas Whitemoon
>>对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
    .accept 1033 >>接任务: |cRXP_LOOT_月神之泪|r
step
    .goto Ashenvale,46.2,45.9
    >>在湖中央的小岛上寻找珍珠状的小物体
    .complete 1033,1 --Collect Elune's Tear (x1)
step
    .goto Ashenvale,37.8,34.7
	>>他是一只灰毛狗，在营地的大部分区域巡逻
	.unitscan Dal Bloodclaw
    .complete 1054,1 --Collect Dal Bloodclaw's Skull (x1)
step
    .goto Ashenvale,36.618,49.581
.target Raene Wolfrunner
>>对话: |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin 1054 >>交任务: |cRXP_FRIENDLY_解除威胁|r
step
    .goto Ashenvale,37.3,51.8
>>对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
    .turnin 1033 >>交任务: |cRXP_FRIENDLY_月神之泪|r
.target Pelturas Whitemoon
    .accept 1034 >>接任务: |cRXP_WARN_星尘废墟|r
step << Shaman
    .goto Ashenvale,33.6,67.4
    .complete 9504,1 --Collect Filled Bota Bag (x1)
step
    .goto Ashenvale,33.3,67.4
    .complete 1034,1 --Collect Handful of Stardust (x5)
step
#xprate <1.2
    .goto Ashenvale,25.3,60.8
	>>在他传唤他的监护人之前尝试杀死他(这很令人震惊，但不能被打断)
    .complete 973,1 --Collect Ilkrud Magthrull's Tome (x1)
    .isOnQuest 973
step
	.goto Ashenvale,27.4,61.7,80,0
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.7,51.9
.target Therysil
>>对话: |cRXP_FRIENDLY_瑟瑞希尔|r
    .turnin 945 >>交任务: |cRXP_FRIENDLY_护送瑟瑞露尼|r
    .isQuestComplete 945
step
#xprate <1.2
    .goto Ashenvale,26.196,38.698
.target Delgren the Purifier
>>对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 973 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯之塔|r
    .isOnQuest 973
step
#xprate <1.7
    .goto Ashenvale,20.3,42.4
>>对话: |cRXP_FRIENDLY_泰洛尼斯的尸体|r
    .turnin 991 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
.target Teronis' Corpse
    .accept 1023 >>接任务: |cRXP_WARN_莱恩的净化|r
step
#xprate <1.7
    #sticky
    #completewith GlowGem
    +小心这里的神谕，因为他们有一个高伤害的瞬间冲击法术(110点伤害)，可以完全治愈
step
#xprate <1.7
	#label GlowGem
    .goto Ashenvale,20.3,42.4
    .complete 1023,1 --Collect Glowing Gem (x1)
step
    .goto Ashenvale,14.7,31.3
.target Talen
>>对话: |cRXP_FRIENDLY_塔尔伦|r
    .accept 1007 >>接任务: |cRXP_WARN_远古雕像|r
step
    .goto Ashenvale,14.2,20.6
    >>在地上找一个小雕像
	>>在途中碾碎那加，但不要让路，我们稍后会杀更多。
    .collect 5490,20,1008,1,1
    .complete 1007,1 --Collect Ancient Statuette (x1)
step
    .goto Ashenvale,14.790,31.294
	>>在你的道路上直接磨碎那加
>>对话: |cRXP_FRIENDLY_塔尔伦|r
    .turnin 1007 >>交任务: |cRXP_FRIENDLY_远古雕像|r
    .timer 25,The Ancient Statuette RP
.target Talen
    .accept 1009 >>接任务: |cRXP_LOOT_卢泽尔|r
step
	.goto Ashenvale,13.5,19.7,60,0
    .goto Ashenvale,7.0,13.4
    >>前往北岛，杀死鲁泽尔
	>>这场战斗可能很艰难，专注于她的一两个添加，然后在需要时重置。
    .complete 1009,1 --Collect Ring of Zoram (x1)
step
    .goto 1414,43.97,35.31,20,0
    .goto 1414,43.80,35.18,20,0
	.goto 1414,43.94,34.89,20,0
	.goto 1414,43.91,34.58,20,0
	.goto 1414,44.02,34.58,20,0
	.goto 1414,44.16,34.85
    >>进入寺庙般的建筑进入BFD洞穴，杀死纳迦/萨提尔
    .complete 1275,1
step
    #sticky
    #label naga2
    .goto Ashenvale,13.8,29.1,0,0
	>>精磨nagas
    .complete 1008,1 --Collect Wrathtail Head (x20)
step
    .goto Ashenvale,14.790,31.294
.target Talen
>>对话: |cRXP_FRIENDLY_塔尔伦|r
    .turnin 1009 >>交任务: |cRXP_FRIENDLY_卢泽尔|r
step
    #requires naga2
    #completewith next
    .hs >>赫斯到阿斯特拉纳
step
    #requires naga2
    .goto Ashenvale,36.618,49.581
.target Raene Wolfrunner
>>对话: |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin 1023 >>交任务: |cRXP_FRIENDLY_莱恩的净化|r
step
	#completewith next
	.destroy 5505>>从库存中删除Teronis的日记。不再需要了
step
#xprate <1.5
    .goto Ashenvale,36.618,49.581
.target Raene Wolfrunner
>>对话: |cRXP_FRIENDLY_莱恩·狼行者|r
    .accept 1025 >>接任务: |cRXP_WARN_先发制人|r
step
    .goto Ashenvale,37.3,51.8
.target Pelturas Whitemoon
>>对话: |cRXP_FRIENDLY_皮尔图拉斯·怀特姆恩|r
    .turnin 1034 >>交任务: |cRXP_FRIENDLY_星尘废墟|r
step
    .goto Ashenvale,34.7,48.9
.target Shindrell Swiftfire
>>对话: |cRXP_FRIENDLY_辛德瑞尔·速火|r
    .turnin 1008 >>交任务: |cRXP_FRIENDLY_佐拉姆海岸|r
step
#xprate <1.5
    >>杀死暴徒进行侵略性防御
    .goto Ashenvale,49.9,60.8
    .goto Ashenvale,56.9,63.7
    .complete 1025,1 --Kill Foulweald Den Watcher (x1)
    .complete 1025,2 --Kill Foulweald Ursa (x2)
    .complete 1025,3 --Kill Foulweald Totemic (x10)
    .complete 1025,4 --Kill Foulweald Warrior (x12)
step
#xprate <1.5
    .goto Ashenvale,49.796,67.211
.target Sentinel Velene Starstrike
>>对话: |cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
    .accept 1016 >>接任务: |cRXP_WARN_元素护腕|r
step
#xprate <1.5
    .use 5456 >>杀死岛上/水中的所有水元素以获得完整元素护腕。当你有5个时，右击占卜卷轴
    .goto Ashenvale,48.0,69.9
    .complete 1016,1 --Collect Divined Scroll (x1)
step
#xprate <1.5
    .goto Ashenvale,49.796,67.211
.target Sentinel Velene Starstrike
>>对话: |cRXP_FRIENDLY_哨兵维尔莉妮·星坠|r
    .turnin 1016 >>交任务: |cRXP_FRIENDLY_元素护腕|r
step
#xprate <1.5
    .goto Ashenvale,36.618,49.581
.target Raene Wolfrunner
>>对话: |cRXP_FRIENDLY_莱恩·狼行者|r
    .turnin 1025 >>交任务: |cRXP_FRIENDLY_先发制人|r
    .isQuestComplete 1025
step
	.goto Ashenvale,34.4,48.0
    .fly Auberdine>>飞往奥伯丁
step
    .goto Darkshore,37.706,43.390
.target Sentinel Glynda Nal'Shea
>>对话: |cRXP_FRIENDLY_哨兵戈琳达·纳希恩|r
    .turnin 4740 >>交任务: |cRXP_FRIENDLY_通缉：莫克迪普！|r
    .isQuestComplete 4740
step
    .goto Darkshore,38.36,43.07
.target Gershala Nightwhisper
>>对话: |cRXP_FRIENDLY_戈沙拉·夜语|r
    .turnin 1275 >>交任务: |cRXP_FRIENDLY_研究堕落|r
step
#xprate <1.7
    .isOnQuest 731
    .goto Darkshore,37.5,41.9
>>对话: |cRXP_FRIENDLY_考古学家霍莉|r
    .turnin 731 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
.target Archaeologist Hollee
	.accept 741 >>接任务: |cRXP_WARN_健忘的勘察员|r << !Hunter
step << !Hunter
#xprate <1.7
    .isOnQuest 741
    .goto Darkshore,33.1,39.9,30
    .zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
step << !Hunter
#xprate <1.7
    .isOnQuest 741
    #completewith next
    .goto Teldrassil,55.9,89.8
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << !Hunter
#xprate <1.7
    .isOnQuest 741
	.goto Teldrassil,23.703,64.511
>>对话: |cRXP_FRIENDLY_首席考古学家杜瑟·灰胡|r
	.turnin 741 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
.target Chief Archaeologist Greywhisker
	.accept 942 >>接任务: |cRXP_WARN_健忘的勘察员|r
step << Warrior tbc/Mage
#xprate <1.7
	.goto Teldrassil,29.2,56.7
    .train 227 >>火车杆
    .isOnQuest 942
step << !Hunter
#xprate <1.7
	.goto Darnassus,30.7,41.3,50 >>前往: |cRXP_PICK_泰达希尔|r
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << !Hunter
#xprate <1.7
    .goto Teldrassil,58.399,94.016
    .fp Rut'theran >>获得Rut'theran Village航线
    .zoneskip Darkshore
step << !Hunter
#xprate <1.7
    .fly Auberdine >>飞回奥伯丁
    .zoneskip Darkshore
step << !Paladin wotlk
    >>现在是购买60%坐骑的好时机，它的价格约为4g
    .zone Azuremyst Isle >>前往: |cRXP_PICK_秘蓝岛|r
    .goto Darkshore,30.8,41.0
    .skill riding,1 >>训练骑术并在《异国他乡》中购买坐骑
    .goto The Exodar,81.6,51.8
    .skill riding,1,1
step
    .goto Darkshore,32.4,43.8
    >>回到黑海岸码头
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r << wotlk
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r << tbc
step << Draenei tbc/NightElf tbc
#xprate >1.499
    .goto Wetlands,9.5,59.7
    .fp Menethil >>获取Menethil Harbor航线
step << Draenei tbc/NightElf tbc
#xprate >1.499
    #completewith next
    .goto Wetlands,63.9,78.6
    .zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
    >>确保登出时尽可能靠近洞穴后部。如果你在靠近洞口的蘑菇边缘登出，这个技巧就行不通了。
    .link https://www.youtube.com/watch?v=21CuGto26Mk >>单击此处获取参考
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
step << NightElf tbc/Draenei tbc
#xprate >1.499
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >>获取Thelsamar飞行路线
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
step << NightElf tbc/Draenei tbc
#xprate >1.499
    #completewith next
    .goto Loch Modan,21.30,68.60,40,0
    .zone Dun Morogh>>跑到邓莫罗
step << NightElf tbc/Draenei tbc
#xprate >1.499
    >>进入东南特罗格洞穴。执行注销跳过
    .goto Dun Morogh,70.63,56.70,60,0
    .goto Dun Morogh,70.60,54.86
    .link https://www.youtube.com/watch?v=yQBW3KyguCM >>单击此处
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << NightElf tbc/Draenei tbc
#xprate >1.499
    .goto Ironforge,76.03,50.98,30,0
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
]])

