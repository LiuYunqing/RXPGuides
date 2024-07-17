local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Human Mage
#name 1-10 艾尔文森林 法师 AoE
#version 1
#group RestedXP 联盟 法师
#defaultfor Human
#next 10-12 洛克莫丹 法师 AoE
step
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +您已经选择了一个针对人类的指南。你应该选择与你开始时相同的起始区域 << Gnome
    +请注意，您已经选择了AoE指南。AoE通常比单目标法师困难得多，但速度快得多
step
    >>删除您的炉石
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>对话: |cRXP_FRIENDLY_维里副队长|r
    .accept 783 >>接任务: |cRXP_LOOT_身边的危机|r
step
    .goto Elwynn Forest,48.923,41.606
>>对话: |cRXP_FRIENDLY_治安官玛克布莱德|r
    .turnin 783 >>交任务: |cRXP_FRIENDLY_身边的危机|r
.target Marshal McBride
    .accept 7 >>接任务: |cRXP_WARN_剿灭狗头人|r
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>对话: |cRXP_FRIENDLY_维里副队长|r
    .accept 5261 >>接任务: |cRXP_LOOT_伊根·派特斯金纳|r
step
    .goto Elwynn Forest,46.2,40.4
    .vendor >>杀死狼，直到你有价值50美分的小贩垃圾。供应商，然后从丹尼尔兄弟那里购买10 x10的水。
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .xp 2 >>升级到2级
step
    .goto Elwynn Forest,48.9,40.2
>>对话: |cRXP_FRIENDLY_伊根·派特斯金纳|r
    .turnin 5261 >>交任务: |cRXP_FRIENDLY_伊根·派特斯金纳|r
.target Eagan Peltskinner
    .accept 33 >>接任务: |cRXP_WARN_林中的群狼|r
step
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    .goto Elwynn Forest,46.1,40.7,40,0
    .goto Elwynn Forest,46.2,37.6,40,0
    .goto Elwynn Forest,47.6,37.2,40,0
    >>杀死该地区的幼狼以获取肉食
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    .goto Elwynn Forest,47.4,35.3,40,0
    .goto Elwynn Forest,49.7,36.2,40,0
    >>杀死该地区的科博尔德害虫
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,48.9,40.2
.target Eagan Peltskinner
>>对话: |cRXP_FRIENDLY_伊根·派特斯金纳|r
    .turnin 33 >>交任务: |cRXP_FRIENDLY_林中的群狼|r
step
    .goto Elwynn Forest,47.6,41.5
    .vendor >>小贩扔掉垃圾，然后从丹尼尔兄弟那里多买10瓶水
step
    .goto Elwynn Forest,48.923,41.606
>>对话: |cRXP_FRIENDLY_治安官玛克布莱德|r
    .turnin 7 >>交任务: |cRXP_FRIENDLY_剿灭狗头人|r
.target Marshal McBride
    .accept 15 >>接任务: |cRXP_WARN_回音山调查行动|r
    .accept 3104 >>接任务: |cRXP_LOOT_雕文信件|r
step
    .xp 3 >>升级到3级
step
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    .goto Elwynn Forest,47.5,36.3,40,0
    .goto Elwynn Forest,46.6,32.2,40,0
    .goto Elwynn Forest,48.6,34.0,40,0
    >>杀死Kobold工人
    .complete 15,1 --Kill Kobold Worker (x10)
step
    .goto Elwynn Forest,47.7,41.4
    .xp 3+1110 >>在回镇的路上，升级到1110+/1400xp
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>供应商垃圾
step
    .goto Elwynn Forest,48.923,41.606
>>对话: |cRXP_FRIENDLY_治安官玛克布莱德|r
    .turnin 15 >>交任务: |cRXP_FRIENDLY_回音山调查行动|r
.target Marshal McBride
    .accept 21 >>接任务: |cRXP_WARN_回音山清剿行动|r
step
    >>上楼去
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.5,40.0,15,0
    .goto Elwynn Forest,49.661,39.402
.target Khelden Bremen
>>对话: |cRXP_FRIENDLY_凯尔登·布雷门|r
    .turnin 3104 >>交任务: |cRXP_FRIENDLY_雕文信件|r
    .trainer >>训练你的职业技能
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>对话: |cRXP_FRIENDLY_维里副队长|r
    .accept 18 >>接任务: |cRXP_WARN_潜行者兄弟会|r
step
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,53.7,52.2,60,0
    .goto Elwynn Forest,55.7,47.4,60,0
    .goto Elwynn Forest,54.7,41.9,60,0
    >>杀死德菲亚斯暴徒。抢了他们的头巾
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step
    .goto Elwynn Forest,48.171,42.943
>>对话: |cRXP_FRIENDLY_维里副队长|r
    .turnin 18 >>交任务: |cRXP_FRIENDLY_盗贼兄弟会|r
.target Deputy Willem
    .accept 6 >>接任务: |cRXP_WARN_加瑞克·帕德弗特的赏金|r
    .accept 3903 >>接任务: |cRXP_LOOT_米莉·奥斯沃斯|r
step
    .goto Elwynn Forest,47.7,41.4
    .vendor >>供应商垃圾，修理
step
    .goto Elwynn Forest,54.7,41.9,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    .goto Elwynn Forest,47.7,31.7,60,0
    .goto Elwynn Forest,50.4,27.0,60,0
    >>杀死矿井中的工人
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >>升级到5级
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>对话: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .turnin 3903 >>交任务: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
.target Milly Osworth
    .accept 3904 >>接任务: |cRXP_LOOT_米莉的葡萄|r
step
    #som
    #phase 3-6
    .goto Elwynn Forest,50.7,39.2
.target Milly Osworth
>>对话: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .turnin 3903 >>交任务: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
step
    #era/som
    >>在田里掠夺葡萄桶
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>杀死加里克并抢走他的头
    .complete 6,1 --Collect Garrick's Head (x1)
step
    .xp 5+1175 >>在返回1175+/2800xp的途中进行升级
    .goto Elwynn Forest,50.7,39.2
step
    #era/som
    .goto Elwynn Forest,50.7,39.2
>>对话: |cRXP_FRIENDLY_米莉·奥斯沃斯|r
    .turnin 3904 >>交任务: |cRXP_FRIENDLY_米莉的葡萄|r
.target Milly Osworth
    .accept 3905 >>接任务: |cRXP_LOOT_葡萄出货单|r
step
    .goto Elwynn Forest,48.171,42.943
.target Deputy Willem
>>对话: |cRXP_FRIENDLY_维里副队长|r
    .turnin 6 >>交任务: |cRXP_FRIENDLY_加瑞克·帕德弗特的赏金|r
step
    .goto Elwynn Forest,48.923,41.606
>>对话: |cRXP_FRIENDLY_治安官玛克布莱德|r
    .turnin 21 >>交任务: |cRXP_FRIENDLY_回音山清剿行动|r
.target Marshal McBride
    .accept 54 >>接任务: |cRXP_WARN_去闪金镇报到|r
step
     #era/som
     >>到主楼梯上去
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,15,0
    .goto Elwynn Forest,49.471,41.586
.target Brother Neals
>>对话: |cRXP_FRIENDLY_尼尔斯修士|r
    .turnin 3905 >>交任务: |cRXP_FRIENDLY_葡萄出货单|r
step
    .goto Elwynn Forest,45.6,47.7
.target Falkhaan Isenstrider
>>对话: |cRXP_FRIENDLY_法尔坎·伊森斯泰德|r
    .accept 2158 >>接任务: |cRXP_WARN_休息和放松|r
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,39.5,60.5,200 >>在精神疗养院死去并重生，或者逃到戈德郡
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>供应商垃圾，修理
step
    .goto Elwynn Forest,42.105,65.927
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 54 >>交任务: |cRXP_FRIENDLY_去闪金镇报到|r
.target Marshal Dughan
    .accept 62 >>接任务: |cRXP_WARN_法戈第矿洞|r
step
    .goto Elwynn Forest,42.9,65.7,15,0
    >>在你进客栈的时候，靠近左边
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .accept 60 >>接任务: |cRXP_LOOT_狗头人的蜡烛|r
step
    .goto Elwynn Forest,43.771,65.803
.target Innkeeper Farley
>>对话: |cRXP_FRIENDLY_旅店老板法雷|r
    .turnin 2158 >>交任务: |cRXP_FRIENDLY_休息和放松|r
    .home >>将您的炉石设置为Goldshire
step
    .xp 6 >>升级到6级
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >>上楼去。训练你的职业技能
step
    .goto Elwynn Forest,42.1,67.3
.target Remy "Two Times"
>>对话: |cRXP_FRIENDLY_雷米|r
    .accept 47 >>接任务: |cRXP_WARN_金砂交易|r
step
    #sticky
    #completewith BoarMeat1
    >>开始杀掉你看到的野猪肉
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
.target “阿姨”Bernice Stonefield
>>对话: |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .accept 85 >>接任务: |cRXP_LOOT_丢失的项链|r
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .accept 88 >>接任务: |cRXP_WARN_公主必须死！|r
step
    #sticky
    #completewith Candles
    >>从附近的Kobolds买些蜡烛
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label Candles
    #completewith next
    >>从附近的Kobolds那里获得一些金粉
    .complete 47,1 --Collect Gold Dust (x10)
step
    #label Dust
    >>将暴徒从矿井外向东驱赶
    .goto Elwynn Forest,43.132,85.722
>>对话: |cRXP_FRIENDLY_比利·马科伦|r
    .turnin 85 >>交任务: |cRXP_FRIENDLY_丢失的项链|r
.target Billy Maclure
    .accept 86 >>接任务: |cRXP_LOOT_比利的馅饼|r
step
    #label BoarMeat1
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>对话: |cRXP_FRIENDLY_梅贝尔·马科伦|r
    .accept 106 >>接任务: |cRXP_LOOT_年轻的恋人|r
step
    .goto Elwynn Forest,42.4,89.4
    .vendor >>小贩，尽可能多买牛奶
step
    #sticky
    #completewith next
    >>杀死你看到的野猪肉
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,29.840,85.997
>>对话: |cRXP_FRIENDLY_托米·乔·斯通菲尔德|r
    .turnin 106 >>交任务: |cRXP_FRIENDLY_年轻的恋人|r
.target Tommy Joe Stonefield
    .accept 111 >>接任务: |cRXP_WARN_托米的祖母|r
step
    .goto Elwynn Forest,32.5,85.5
    >>吃完野猪肉
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
step
    .goto Elwynn Forest,34.486,84.253
>>对话: |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .turnin 86 >>交任务: |cRXP_FRIENDLY_比利的馅饼|r
.target “阿姨”Bernice Stonefield
    .accept 84 >>接任务: |cRXP_LOOT_比利的馅饼|r
step
    .goto 1429,34.945,83.855
>>对话: |cRXP_FRIENDLY_米莱德·斯通菲尔德|r
    .turnin 111 >>交任务: |cRXP_FRIENDLY_托米的祖母|r
.target Gramma Stonefield
    .accept 107 >>接任务: |cRXP_LOOT_给威廉·匹斯特的信|r
step
    #sticky
    #label KoboldCandles
    >>从附近的Kobolds买些蜡烛
    .complete 60,1 --Collect Kobold Candle (x8)
step
    #sticky
    #label GoldDust
    >>从附近的Kobolds那里获得一些金粉
    .complete 47,1 --Collect Gold Dust (x10)
step
    >>将暴徒从矿井外向东驱赶
    .goto Elwynn Forest,43.132,85.722
>>对话: |cRXP_FRIENDLY_比利·马科伦|r
    .turnin 84 >>交任务: |cRXP_FRIENDLY_比利的馅饼|r
.target Billy Maclure
    .accept 87 >>接任务: |cRXP_LOOT_金牙|r
step
    >>进入矿井
    .goto Elwynn Forest,40.5,82.3
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    >>为伯妮斯的项链杀死金牙
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
step
    .xp 7+1600 >>升级到1600+/4500xp
step
#hidewindow
    #requires KoboldCandles
step
    #label Goldtooth
    #requires GoldDust
    .goto Elwynn Forest,34.486,84.253
.target “阿姨”Bernice Stonefield
>>对话: |cRXP_FRIENDLY_波尼斯·斯通菲尔德姑妈|r
    .turnin 87 >>交任务: |cRXP_FRIENDLY_金牙|r
step
    >>把一些暴徒逼回戈德郡
    .xp 7+2690 >>升级到2690+/4500xp
    .goto Elwynn Forest,42.1,67.3
step
    .goto Elwynn Forest,42.1,67.3
>>对话: |cRXP_FRIENDLY_雷米|r
    .turnin 47 >>交任务: |cRXP_FRIENDLY_金砂交易|r
.target Remy "Two Times"
    .accept 40 >>接任务: |cRXP_LOOT_鱼人的威胁|r
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>供应商垃圾，修理
step
    .goto Elwynn Forest,42.105,65.927
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 40 >>交任务: |cRXP_FRIENDLY_鱼人的威胁|r
.target Marshal Dughan
    .accept 35 >>接任务: |cRXP_WARN_卫兵托马斯|r
    .turnin 62 >>交任务: |cRXP_FRIENDLY_法戈第矿洞|r
    .accept 76 >>接任务: |cRXP_WARN_玉石矿洞|r
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>供应商垃圾，修理
step
    .goto Elwynn Forest,43.283,65.721
>>对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .turnin 60 >>交任务: |cRXP_FRIENDLY_狗头人的蜡烛|r
.target William Pestle
    .accept 61 >>接任务: |cRXP_WARN_送往暴风城的货物|r
    .turnin 107 >>交任务: |cRXP_FRIENDLY_给威廉·匹斯特的信|r
    .accept 112 >>接任务: |cRXP_LOOT_收集海藻|r
step
    .xp 8 >>升级到8级
step
    .money <0.1250
    .goto Elwynn Forest,44.0,65.9
    .vendor >>从Brog购买6槽包
step
    .goto Elwynn Forest,43.7,66.4,12,0
    .goto Elwynn Forest,43.2,66.2
    .trainer >>上楼去。训练你的职业技能
step
    .goto Elwynn Forest,43.771,65.803
    .vendor >>购买5级水，最高40
step
    >>向东边碾碎莫洛克鱼，然后将其掠夺为海带蛙。如果你还需要的话，杀掉岛上的暴徒
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,50,0
    .goto Elwynn Forest,57.6,62.8,50,0
    .goto Elwynn Forest,56.4,66.6,50,0
    .goto Elwynn Forest,53.8,66.8,50,0
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
step
    >>进入矿井，继续沿着中间的小路走
    .goto Elwynn Forest,61.8,54.0,60,0
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .goto Elwynn Forest,73.973,72.179
>>对话: |cRXP_FRIENDLY_卫兵托马斯|r
    .turnin 35 >>交任务: |cRXP_FRIENDLY_卫兵托马斯|r
.target Guard Thomas
    .accept 37 >>接任务: |cRXP_WARN_失踪的卫兵|r
    .accept 52 >>接任务: |cRXP_WARN_保卫边境|r
step
    #sticky
    #completewith Prowlers
    >>在执行其他任务时杀死潜行者
    .complete 52,1 --Kill Prowler (x8)
step
    #sticky
    #completewith Bears
    >>在执行其他任务时杀死熊。杀死你看到的任何人
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,72.7,60.3
    .turnin 37 >>交任务: |cRXP_FRIENDLY_失踪的卫兵|r
    .accept 45 >>接任务: |cRXP_WARN_罗尔夫的下落|r
step
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>对话: |cRXP_FRIENDLY_管理员莱琳|r
    .accept 5545 >>接任务: |cRXP_WARN_木材危机|r
step
    .goto Elwynn Forest,83.3,66.1
    .vendor >>供应商垃圾，修理
step
    #sticky
    #completewith Bundles
    >>留心树下的一捆捆原木
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles
    .goto Elwynn Forest,79.8,55.5,60 >>走向守卫的尸体
step
    .goto Elwynn Forest,79.8,55.5
    >>杀死尸体周围的暴徒。把两个暴徒拉到小屋前，走开，一边放羊一边杀掉另一个，然后杀掉羊群暴徒。掠夺地上的尸体
    >>小心，因为这个任务可能很困难
    .turnin 45 >>交任务: |cRXP_FRIENDLY_罗尔夫的下落|r
    .accept 71 >>接任务: |cRXP_WARN_回复托马斯|r
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    >>开始后退，完成包裹
    .collect 13872,8 --Collect Bundle of Wood (x8)
step
    #label Bundles2
    .goto Elwynn Forest,81.382,66.112
.target Supervisor Raelen
>>对话: |cRXP_FRIENDLY_管理员莱琳|r
    .turnin 5545 >>交任务: |cRXP_FRIENDLY_木材危机|r
step
    #label Prowlers
    .xp 9 >>升级到9级
step
    #label Bears
    .goto Elwynn Forest,79.457,68.789
.target Sara Timberlain
>>对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .accept 83 >>接任务: |cRXP_LOOT_红色亚麻布|r
step
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    .goto Elwynn Forest,76.7,75.6,40,0
    .goto Elwynn Forest,79.7,83.7,40,0
    .goto Elwynn Forest,82.0,76.8,40,0
    >>杀死最后一批暴徒保护边境
    .complete 52,1 --Kill Prowler (x8)
    .complete 52,2 --Kill Young Forest Bear (x5)
step
    .goto Elwynn Forest,73.973,72.179
>>对话: |cRXP_FRIENDLY_卫兵托马斯|r
    .turnin 52 >>交任务: |cRXP_FRIENDLY_保卫边境|r
    .turnin 71 >>交任务: |cRXP_FRIENDLY_回复托马斯|r
.target Guard Thomas
    .accept 39 >>接任务: |cRXP_WARN_托马斯的报告|r
.target Deputy Rainer
.target Marshal Haggard
.target Marshal Dughan
.target Farmer Furlbrow
.target Farmer Saldean
>>对话: |cRXP_FRIENDLY_农夫萨丁|r
-->>对话: |cRXP_FRIENDLY_农夫法布隆|r
-->>对话: |cRXP_FRIENDLY_治安官杜汉|r
--
-->>对话: |cRXP_FRIENDLY_治安官哈迦德|r
-->>对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .accept 109 >>接任务: |cRXP_WARN_向格里安·斯托曼报到|r
step
    #sticky
    #completewith Princess
    >>留意德菲亚斯(Defias)的《威斯特福尔契约》(lucky drop)
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>接任务: |cRXP_LOOT_法布隆的地契|r
step
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    >>开始围着农场转，杀掉德菲亚斯，然后掠夺他们的头巾
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .isOnQuest 83
step
    #label Princess
    .goto Elwynn Forest,69.4,79.2
    >>杀死公主。如果需要的话，使用之前的小治疗药剂。抢走她的衣领
    >>你也可以在农场边缘的篱笆之间来回跳跃，杀死公主和她的守卫
    .complete 88,1 --Collect Brass Collar (x1)
--N link
step
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>如果你的生命值低，在精神治疗者处死亡并重生，否则只需跑回并处理
step
    .goto Elwynn Forest,79.5,68.9
.target Sara Timberlain
>>对话: |cRXP_FRIENDLY_萨拉·迪博雷恩|r
    .turnin 83 >>交任务: |cRXP_FRIENDLY_红色亚麻布|r
    .isQuestComplete 83
step
    .goto Redridge Mountains,7.87,73.85
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
step
    #softcore
    #sticky
    #completewith next
    +死在这里的暴徒面前
    .goto Redridge Mountains,11.2,78.4
step
    #softcore
    >>在精神治疗者处重生
    .goto Redridge Mountains,20.8,56.6,100 >>在精神治疗者处重生
step
    #softcore
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >>获得Redridge Mountains飞行路线
step
    #hardcore
    >>朝飞行路线跑去。要格外小心，不要在途中对任何暴徒进行攻击或死亡。试着紧贴道路，保持警惕
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >>获得Redridge Mountains飞行路线
step
    .hs >>赫斯到戈德郡
step
    .goto Elwynn Forest,43.283,65.721
    >>不要等待他的rp活动
.target William Pestle
>>对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .turnin 112 >>交任务: |cRXP_FRIENDLY_收集海藻|r
step
    .goto Elwynn Forest,42.2,65.8
>>对话: |cRXP_FRIENDLY_治安官杜汉|r
    .turnin 39 >>交任务: |cRXP_FRIENDLY_托马斯的报告|r
    .turnin 76 >>交任务: |cRXP_FRIENDLY_玉石矿洞|r
.target Marshal Dughan
    .accept 239 >>接任务: |cRXP_WARN_西泉要塞|r
step
    .goto Elwynn Forest,41.706,65.544
.target Smith Argus
.target Verner Osgood
>>对话: |cRXP_FRIENDLY_弗纳·奥斯古|r
-->>对话: |cRXP_FRIENDLY_铁匠阿古斯|r
    .accept 1097 >>接任务: |cRXP_LOOT_艾尔默的任务|r
step
    .goto Elwynn Forest,41.7,65.9
    .vendor >>供应商垃圾，修理
step
    .goto Elwynn Forest,43.283,65.721
.target William Pestle
>>对话: |cRXP_FRIENDLY_威廉·匹斯特|r
    .accept 114 >>接任务: |cRXP_LOOT_梅贝尔的隐形水|r
step
    >>跑出客栈往南走
    .goto Elwynn Forest,43.2,89.6
.target Maybell Maclure
>>对话: |cRXP_FRIENDLY_梅贝尔·马科伦|r
    .turnin 114 >>交任务: |cRXP_FRIENDLY_梅贝尔的隐形水|r
step
    .goto Elwynn Forest,34.660,84.482
.target Ma Stonefield
>>对话: |cRXP_FRIENDLY_斯通菲尔德妈妈|r
    .turnin 88 >>交任务: |cRXP_FRIENDLY_公主必须死！|r
step
    .goto Elwynn Forest,24.2,74.5
.target Deputy Rainer
>>对话: |cRXP_FRIENDLY_瑞尼尔副队长|r
    .turnin 239 >>交任务: |cRXP_FRIENDLY_西泉要塞|r
step
    .isOnQuest 184
    .goto Westfall,60.0,19.4
.target Farmer Furlbrow
>>对话: |cRXP_FRIENDLY_农夫法布隆|r
    .turnin 184 >>交任务: |cRXP_FRIENDLY_法布隆的地契|r
step
    .goto Westfall,59.918,19.416
.target Verna Furlbrow
>>对话: |cRXP_FRIENDLY_弗娜·法布隆|r
    .accept 36 >>接任务: |cRXP_LOOT_杂味炖肉|r
step
    .goto Westfall,56.416,30.519
.target Salma Saldean
>>对话: |cRXP_FRIENDLY_萨尔玛·萨丁|r
    .turnin 36 >>交任务: |cRXP_FRIENDLY_杂味炖肉|r
step
    #softcore
    #sticky
    #completewith next
    .goto Westfall,51.7,49.4,150 >>在精神疗愈者处死亡并重生，或跑到哨兵山
step
    .goto Westfall,56.327,47.520
.target Gryan Stoutmantle
>>对话: |cRXP_FRIENDLY_格里安·斯托曼|r
    .turnin 109 >>交任务: |cRXP_FRIENDLY_向格里安·斯托曼报到|r
step
    .goto Westfall,57.002,47.169
    .vendor >>供应商垃圾
.target Quartermaster Lewis
>>对话: |cRXP_FRIENDLY_军需官刘易斯|r
    .accept 6181 >>接任务: |cRXP_WARN_快递消息|r
step
    #phase 3-6
    .goto Westfall,56.416,30.519
    .xp 11+3750 >>升级到3750+/8800xp
step
    .goto Westfall,56.6,52.6
    .fp Sentinel Hill >>获取哨兵山飞行路线
>>对话: |cRXP_FRIENDLY_索尔|r
    .turnin 6181 >>交任务: |cRXP_FRIENDLY_快递消息|r
.target Thor
    .accept 6281 >>接任务: |cRXP_WARN_赶赴暴风城|r
    .fly Stormwind >>飞到暴风城
step
    .goto StormwindClassic,56.2,64.6
    >>选择火箭。这些有很好的伤害，可以用来劈开
.target Morgan Pestle
>>对话: |cRXP_FRIENDLY_摩根·匹斯特|r
    .turnin 61 >>交任务: |cRXP_FRIENDLY_送往暴风城的货物|r
step
    #era/som
    .goto StormwindClassic,57.1,57.7
    .trainer >>训练1h剑
step
    .goto StormwindClassic,74.3,47.2
.target Osric Strang
>>对话: |cRXP_FRIENDLY_奥斯瑞克·斯图恩|r
    .turnin 6281 >>交任务: |cRXP_FRIENDLY_赶赴暴风城|r
    >>供应商和维修
step
    #completewith next
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .turnin 1097 >>交任务: |cRXP_FRIENDLY_艾尔默的任务|r
step
    .goto StormwindClassic,51.8,12.1
.target Grimand Elmore
>>对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .accept 353 >>接任务: |cRXP_WARN_雷矛的包裹|r
step
    #sticky
    #completewith next
    .goto StormwindClassic,63.9,8.3,20 >>进入Deeprun Tram
step
    >>有轨电车到了就乘，到了另一边就下车
.target Monty
>>对话: |cRXP_FRIENDLY_蒙提|r
    .accept 6661 >>接任务: |cRXP_WARN_捕捉矿道老鼠|r
step
    >>用你的长笛对付四处散落的老鼠
    .complete 6661,1 --Rats Captured (x5)
step
.target Monty
>>对话: |cRXP_FRIENDLY_蒙提|r
    .turnin 6661 >>交任务: |cRXP_FRIENDLY_捕捉矿道老鼠|r
step
    .goto Ironforge,77.0,51.0,30 >>前往: |cRXP_PICK_铁炉堡|r
step
    .goto Ironforge,55.501,47.742
    .fp Ironforge >>获得铁炉堡飞行路线
step
    #phase 3-6
    .goto Ironforge,27.17,8.57
     .trainer >>训练你的职业技能
step
    #sticky
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>冲出铁炉堡
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .accept 314 >>接任务: |cRXP_WARN_保护牲畜|r
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,12 >>跑上山的这一部分
step
    >>杀死瓦加什。抢他的牙
    >>把他引到牧场南边的守卫那里。确保你对他造成51%+的伤害
    >>小心，因为这个任务可能很困难
    .goto Dun Morogh,62.6,46.1
    .goto Dun Morogh,62.78,54.60,0
    .complete 314,1 --Collect Fang of Vagash (1)
--N add video tutorial
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .turnin 314 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
step
    >>途中磨碎一点
    .goto Dun Morogh,68.6,54.7
    .vendor >>供应商，购买食物+水
step
    .goto Dun Morogh,68.7,56.0
.target 参议员Mehr Stonehallow
>>对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .accept 433 >>接任务: |cRXP_WARN_公众之仆|r
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 432 >>接任务: |cRXP_WARN_该死的石腭怪！|r
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>在山洞里杀死Troggs
    .complete 432,1 --Kill Rockjaw Skullthumper (6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (10)
step
    #era/som
    .xp 10+6350 >>升级到6350+/7600
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >>供应商垃圾，修理
step
    .goto Dun Morogh,68.7,56.0
.target 参议员Mehr Stonehallow
>>对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 433 >>交任务: |cRXP_FRIENDLY_公众之仆|r
step
    #era/som--xpgate
    .xp 11
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>小贩垃圾，从喀山购买x30 5级饮料
    .trainer >>Ghilm的火车烹饪。你需要这个来接2个额外任务
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .accept 419 >>接任务: |cRXP_LOOT_失踪的驾驶员|r
step
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >>交任务: |cRXP_FRIENDLY_失踪的驾驶员|r
    .accept 417 >>接任务: |cRXP_WARN_驾驶员的复仇|r
step
    >>杀死芒格克劳。抢走他的爪子
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .turnin 417 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r
step
    .goto Dun Morogh,84.4,31.1,25 >>穿过隧道去莫丹湖
]])

RXPGuides.RegisterGuide([[
#classic
<< Gnome Mage
#name 1-10 丹莫罗 法师 AoE
#version 1
#group RestedXP 联盟 法师
#defaultfor Dwarf/Gnome
#next 10-12 洛克莫丹 法师 AoE
step
    #era/som
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +你选择了一个为侏儒和侏儒准备的向导。你应该选择与你开始时相同的起始区域 << Human
    +请注意，您已经选择了AoE指南。AoE通常比单目标法师困难得多，但速度快得多
step
    #phase 3-6
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +你选择了一个为侏儒和侏儒准备的向导。你应该选择与你开始时相同的起始区域 << Human
    +请注意，您已经选择了AoE指南。AoE通常比单目标法师困难得多，但随着最近100%任务xp的变化，速度也变慢了
step
    >>删除您的炉石
    .goto Dun Morogh,29.927,71.201
.target Sten Stoutarm
>>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .accept 179 >>接任务: |cRXP_WARN_矮人的交易|r
step
    >>杀死狼。抢他们的肉
    .goto Dun Morogh,28.7,74.8
    .complete 179,1 --Collect Tough Wolf Meat (x8)
step
    .xp 2 >>升级到2级
step
    .goto Dun Morogh,30.0,71.5
    >>供应商垃圾箱。购买15杯水。如果你没有足够的钱，就多磨几只狼
    .collect 159,15 --Collect Refreshing Spring Water (x15)
step
    .goto Dun Morogh,29.927,71.201
>>对话: |cRXP_FRIENDLY_斯登·粗臂|r
    .turnin 179 >>交任务: |cRXP_FRIENDLY_矮人的交易|r
.target Sten Stoutarm
    .accept 233 >>接任务: |cRXP_WARN_寒脊山谷的送信任务|r
    .accept 3114 >>接任务: |cRXP_WARN_雕文备忘录|r
step
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .accept 170 >>接任务: |cRXP_LOOT_新的威胁|r
step
    #sticky
    #completewith Rockjaw
    >>杀死你看到的普通岩颚巨魔
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    .goto Dun Morogh,26.9,72.7,30,0
    .goto Dun Morogh,25.1,72.1,30,0
    >>杀死Burly Rockjaw Troggs
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
step
    .goto Dun Morogh,22.601,71.433
>>对话: |cRXP_FRIENDLY_塔林·锐眼|r
    .turnin 233 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
.target Talin Keeneye
    .accept 183 >>接任务: |cRXP_WARN_猎杀野猪|r
    .accept 234 >>接任务: |cRXP_WARN_寒脊山谷的送信任务|r
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    >>杀死该地区的野猪
    .complete 183,1 --Kill Small Crag Boar (x12)
step
    .goto Dun Morogh,22.601,71.433
.target Talin Keeneye
>>对话: |cRXP_FRIENDLY_塔林·锐眼|r
    .turnin 183 >>交任务: |cRXP_FRIENDLY_猎杀野猪|r
step
    .xp 3+860 >>升级到860+/1400xp
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
    .goto Dun Morogh,23.0,75.0,40,0
    .goto Dun Morogh,24.2,72.5,40,0
    .goto Dun Morogh,27.7,76.3,40,0
step
    #label Rockjaw
    .goto Dun Morogh,25.076,75.713
>>对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 234 >>交任务: |cRXP_FRIENDLY_寒脊山谷的送信任务|r
.target Grelin Whitebeard
    .accept 182 >>接任务: |cRXP_LOOT_巨魔洞穴|r
step
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .accept 3364 >>接任务: |cRXP_WARN_热酒快递|r
    >>一旦接受，将启动5分钟计时器。放松并遵循指南
step
    .goto Dun Morogh,28.7,77.5
    >>如果你现在还没有处理完Troggs，就上去杀了他们
    .complete 170,1 --Kill Rockjaw Trogg (x6)
step
    #sticky
    #completewith Scalding1
    >>如果你速度太慢，无法完成定时任务，请再去捡一次
    .goto Dun Morogh,25.0,76.0,0
.target Nori Pridedrift
>>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .accept 3364 >>接任务: |cRXP_WARN_热酒快递|r
    .goto Dun Morogh,28.8,66.4
.target Durnan Furcutter
>>对话: |cRXP_FRIENDLY_德南·弗卡特|r
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
step
    #label Scalding1
    .goto Dun Morogh,28.8,66.4
>>对话: |cRXP_FRIENDLY_德南·弗卡特|r
    .turnin 3364 >>交任务: |cRXP_FRIENDLY_热酒快递|r
.target Durnan Furcutter
    .accept 3365 >>接任务: |cRXP_WARN_归还酒杯|r
    .vendor >>供应商垃圾
step
    .goto Dun Morogh,28.709,66.366
.target Marryk Nurribit
>>对话: |cRXP_FRIENDLY_玛瑞克·斯托纳尔|r
    .turnin 3114 >>交任务: |cRXP_FRIENDLY_雕文备忘录|r
    .trainer >>训练你的职业技能
step
    >>跑出沙坑
    .goto Dun Morogh,29.7,71.2
.target Balir Frosthammer
>>对话: |cRXP_FRIENDLY_巴尔林·霜锤|r
    .turnin 170 >>交任务: |cRXP_FRIENDLY_新的威胁|r
step
    .goto Dun Morogh,30.0,71.5
    .vendor >>供应商，购买10水
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    .goto Dun Morogh,26.3,79.2,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    .goto Dun Morogh,22.7,79.3,30,0
    .goto Dun Morogh,20.9,75.7,30,0
    >>杀死霜鬃巨魔幼崽
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
step
    #sticky
    #label Mug
    .goto Dun Morogh,25.0,76.0
.target Nori Pridedrift
>>对话: |cRXP_FRIENDLY_诺里斯·激流|r
    .turnin 3365 >>交任务: |cRXP_FRIENDLY_归还酒杯|r
step
    .goto Dun Morogh,25.076,75.713
>>对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 182 >>交任务: |cRXP_FRIENDLY_巨魔洞穴|r
.target Grelin Whitebeard
    .accept 218 >>接任务: |cRXP_WARN_被窃取的日记|r
step
    #requires Mug
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>进入巨魔洞穴。杀了格里克尼尔，然后把他抢走作为格雷林的日记
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
step
    >>磨碎一点回到这里
    .goto Dun Morogh,25.1,75.8
>>对话: |cRXP_FRIENDLY_格瑞林·白须|r
    .turnin 218 >>交任务: |cRXP_FRIENDLY_被窃取的日记|r
.target Grelin Whitebeard
    .accept 282 >>接任务: |cRXP_WARN_森内尔的观察站|r
step
    >>把一些暴徒赶到这里
    .goto Dun Morogh,33.484,71.841
>>对话: |cRXP_FRIENDLY_巡山人萨鲁斯|r
    .turnin 282 >>交任务: |cRXP_FRIENDLY_森内尔的观察站|r
.target Mountaineer Thalos
    .accept 420 >>接任务: |cRXP_WARN_森内尔的观察站|r
step
    .goto Dun Morogh,33.9,72.2
.target Hands Springsprocket
>>对话: |cRXP_FRIENDLY_汉兹·跳链|r
    .accept 2160 >>接任务: |cRXP_WARN_塔诺克的补给品|r
step
    .goto Dun Morogh,34.1,71.6,20,0
    .goto Dun Morogh,35.7,66.0,20 >>穿过隧道
step
    #sticky
    #completewith BoarMeat44
    >>杀死野猪，获得4块野猪肉供日后食用
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
step
    #sticky
    #completewith Ribs
    >>杀死野猪以获得6根野猪肋骨供日后使用
    .collect 2886,6 --Collect Crag Boar Rib (x6)
step
    >>将野猪磨碎，东北至哈拉诺斯
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,43.9,55.7
    .xp 5+2415 >>升级到2415/+2800xp
step
    #softcore
    .goto Dun Morogh,47.0,55.1,120 >>在精神疗愈者处死亡并重生，或者跑向哈拉诺斯。确保你的分区不是Coldridge Pass
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 420 >>交任务: |cRXP_FRIENDLY_森内尔的观察站|r
step
    #completewith next
    .goto Dun Morogh,46.7,53.5
    .vendor >>供应商垃圾
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>对话: |cRXP_FRIENDLY_拉格纳·雷酒|r
    .accept 384 >>接任务: |cRXP_WARN_啤酒烤猪排|r
step
    .goto Dun Morogh,48.3,57.0
    .xp 6 >>升级到6级
step
    .goto Dun Morogh,47.217,52.195
.target Tannok Frosthammer
>>对话: |cRXP_FRIENDLY_塔诺克·霜锤|r
    .turnin 2160 >>交任务: |cRXP_FRIENDLY_塔诺克的补给品|r
step
    >>楼上的
    .goto Dun Morogh,47.5,52.1
    .trainer >>训练你的职业技能
step
    .goto Dun Morogh,47.4,52.5
    .home >>将您的炉石设置为Thunderbrew酒厂
    .vendor >>尽可能多地购买5级饮料
step
    .goto Dun Morogh,46.021,51.676
.target Tharek Blackstone
>>对话: |cRXP_FRIENDLY_萨雷克·黑石|r
    .accept 400 >>接任务: |cRXP_WARN_贝尔丁的工具|r
step
    .goto Dun Morogh,49.426,48.410
    >>不要在途中杀死熊
.target Pilot Bellowfiz
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .accept 317 >>接任务: |cRXP_WARN_贝尔丁的补给|r
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>对话: |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .accept 313 >>接任务: |cRXP_WARN_灰色洞穴|r
step
    .goto Dun Morogh,50.4,49.1
.target Beldin Steelgrill
>>对话: |cRXP_FRIENDLY_贝尔丁·钢架|r
    .turnin 400 >>交任务: |cRXP_FRIENDLY_贝尔丁的工具|r
step
    #label BoarMeat44
    .goto Dun Morogh,50.084,49.420
.target Loslor Rudge
>>对话: |cRXP_FRIENDLY_罗斯洛·鲁治|r
    .accept 5541 >>接任务: |cRXP_WARN_海格纳的弹药|r
step
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    .goto Dun Morogh,52.0,50.1,40,0
    .goto Dun Morogh,51.5,53.9,40,0
    .goto Dun Morogh,50.1,53.9,40,0
    .goto Dun Morogh,49.9,50.9,40,0
    .goto Dun Morogh,48.0,49.5,40,0
    .goto Dun Morogh,48.2,46.9,40,0
    .goto Dun Morogh,43.5,52.5,40,0
    >>获取Jetsteam库存物品
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .complete 317,2 --Collect Thick Bear Fur (x2)
step
    .goto Dun Morogh,49.426,48.410
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .turnin 317 >>交任务: |cRXP_FRIENDLY_贝尔丁的补给|r
.target Pilot Bellowfiz
    .accept 318 >>接任务: |cRXP_LOOT_艾沃沙酒|r
step
    >>回客栈去
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.4,52.5
    .vendor >>尽可能多地购买5级饮料
    >>如果你想的话，你可以在客栈外面买一把剥皮刀，在你获得+属性武器之前，它比棍子更好
step
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    .goto Dun Morogh,42.5,54.8,40,0
    .goto Dun Morogh,42.4,52.2,40,0
    .goto Dun Morogh,41.0,49.4,40,0
    >>到洞里去。杀死Wendigos。掠夺他们的鬃毛
    .complete 313,1 --Collect Wendigo Mane (x8)
step
    >>掠夺板条箱
    .goto Dun Morogh,44.1,56.9
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    .goto Dun Morogh,40.6,62.6,30,0
    .goto Dun Morogh,40.682,65.130
.target Hegnar Rumbleshot
>>对话: |cRXP_FRIENDLY_海格纳·重枪|r
    .turnin 5541 >>交任务: |cRXP_FRIENDLY_海格纳的弹药|r
    .vendor >>供应商和维修
step
    .xp 7 >>升级到7级
step
    >>在途中碾碎一些暴徒
    .goto Dun Morogh,35.2,56.4,50,0
    .goto Dun Morogh,36.0,52.0,50,0
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .accept 312 >>接任务: |cRXP_WARN_马克格拉恩的干肉|r
step
    .goto Dun Morogh,30.5,46.0
    .vendor >>小贩购买最多20杯5级饮料
step
    #sticky
    #label Evershine
    .goto Dun Morogh,30.2,45.8
>>对话: |cRXP_FRIENDLY_雷杰德·麦酒|r
    .turnin 318 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
.target Rejold Barleybrew
    .accept 319 >>接任务: |cRXP_WARN_艾沃沙酒|r
    .accept 315 >>接任务: |cRXP_WARN_完美烈酒|r
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>对话: |cRXP_FRIENDLY_马莱斯·麦酒|r
    .accept 310 >>接任务: |cRXP_LOOT_针锋相对|r
step
    #label Ribs
    #requires Evershine
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    >>杀死熊、野猪和豹子。从北->西->南走
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .complete 319,3 --Kill Snow Leopard (x8)
step
    >>完成野猪肋
    .complete 384,1 --Collect Crag Boar Rib (x6)
step
    .goto Dun Morogh,30.189,45.725
>>对话: |cRXP_FRIENDLY_雷杰德·麦酒|r
    .turnin 319 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
.target Rejold Barleybrew
    .accept 320 >>接任务: |cRXP_WARN_艾沃沙酒|r
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>升级到4360+/4500xp
step
    .xp 7+3735 >>升级到3735+/4500xp
step
    .hs >>赫斯到哈拉诺斯
step
    .goto Dun Morogh,47.4,52.5
    >>从Belm购买狂想曲麦芽和雷霆啤酒
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1 --Collect Thunder Ale (x1)
step
    .goto Dun Morogh,47.6,52.4,10,0
    .goto Dun Morogh,47.71,52.69
    >>下楼去，然后和贾文谈谈，给他雷霆啤酒
    >>等待木桶鼠标移到“无人看守”位置，然后handin
    .turnin 310 >>交任务: |cRXP_FRIENDLY_针锋相对|r
    .accept 311 >>接任务: |cRXP_WARN_向马莱斯回报|r
step
    .goto Dun Morogh,46.8,52.4
.target Ragnar Thunderbrew
>>对话: |cRXP_FRIENDLY_拉格纳·雷酒|r
    .turnin 384 >>交任务: |cRXP_FRIENDLY_啤酒烤猪排|r
     >>当你下一个供应商时出售配方
step
    .xp 8 >>升级到8级
step
    .goto Dun Morogh,47.5,52.1
    .trainer >>训练你的职业技能
    >>确保训练变形
step
    .goto Dun Morogh,47.4,52.5
    .vendor >>从客栈老板那里购买最多30杯5级饮料
step
    .goto Dun Morogh,46.726,53.826
.target Senir Whitebeard
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .accept 287 >>接任务: |cRXP_LOOT_霜鬃巨魔要塞|r
step
    .goto Dun Morogh,49.622,48.612
.target Pilot Stonegear
>>对话: |cRXP_FRIENDLY_驾驶员迪恩·石轮|r
    .turnin 313 >>交任务: |cRXP_FRIENDLY_灰色洞穴|r
step
    .goto Dun Morogh,49.426,48.410
.target Pilot Bellowfiz
>>对话: |cRXP_FRIENDLY_驾驶员贝隆·风箱|r
    .turnin 320 >>交任务: |cRXP_FRIENDLY_艾沃沙酒|r
step
    #era/som
    >>建筑物内部
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>对话: |cRXP_FRIENDLY_拉兹·滑链|r
    .accept 412 >>接任务: |cRXP_WARN_自动净化装置|r
step
    .goto Dun Morogh,43.1,45.0,25,0
    .goto Dun Morogh,42.1,45.4,25 >>跑上坡道到Shimmerweed
step
    .goto Dun Morogh,40.9,45.3,30,0
    .goto Dun Morogh,41.5,43.6,30,0
    .goto Dun Morogh,39.7,40.0,30,0
    .goto Dun Morogh,42.1,34.3,30,0
    >>清除这个地区的暴徒。如果你需要清理中间营地，请小心。如果你需要更多的暴徒，你可以把暴徒拉到小屋里，视线(LoS)在小屋后面。如果你运气不好，就跑到另一个地方去
    >>地面上的掠夺箱
    .complete 315,1 --Collect Shimmerweed (x6)
step
    >>变形老冰胡子，然后洗劫肉
    .goto Dun Morogh,38.5,53.9
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    .goto Dun Morogh,34.6,51.7
.target Tundra MacGrann
>>对话: |cRXP_FRIENDLY_图德拉·马克格拉恩|r
    .turnin 312 >>交任务: |cRXP_FRIENDLY_马克格拉恩的干肉|r
step
    .goto Dun Morogh,30.4,45.8
    .vendor >>最多再购买20杯5级饮料
step
    #sticky
    #label Stout
    .goto Dun Morogh,30.189,45.725
>>对话: |cRXP_FRIENDLY_雷杰德·麦酒|r
    .turnin 315 >>交任务: |cRXP_FRIENDLY_完美烈酒|r
.target Rejold Barleybrew
    .accept 413 >>接任务: |cRXP_LOOT_微光酒|r
step
    .goto Dun Morogh,30.186,45.531
.target Marleth Barleybrew
>>对话: |cRXP_FRIENDLY_马莱斯·麦酒|r
    .turnin 311 >>交任务: |cRXP_FRIENDLY_向马莱斯回报|r
step
    #era/som
    #requires Stout
    .goto Dun Morogh,27.2,43.0,40,0
    .goto Dun Morogh,24.8,39.3,40,0
    .goto Dun Morogh,25.6,43.4,40,0
    .goto Dun Morogh,24.3,44.0,40,0
    .goto Dun Morogh,25.4,45.4,40,0
    >>杀死麻风侏儒。掠夺他们的装备和鞋帽
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
step
    .xp 9 >>升级到9级
step
    .goto Dun Morogh,24.5,50.8,35 >>进入洞穴
step
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    >>杀死洞穴内的猎头
    .complete 287,1 --Kill Frostmane Headhunter (x5)
step
    #hardcore
    >>小心地磨进洞里的这个角落
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .goto Dun Morogh,23.4,51.5,15 >>返回洞穴
step
    #softcore
    >>跳下去，你死后
    .goto Dun Morogh,23.0,52.2
    .complete 287,2 --Fully explore Frostmane Hold
step
    #softcore
    .deathskip >>在精神治疗师处死亡并重生
step
    #hardcore
   .goto Dun Morogh,46.726,53.826,150 >>如果没问题的话，就把炉子烧了，否则就要碾回哈拉诺斯
step
    .goto Dun Morogh,46.726,53.826
>>对话: |cRXP_FRIENDLY_森内尔·白须|r
    .turnin 287 >>交任务: |cRXP_FRIENDLY_霜鬃巨魔要塞|r
.target Senir Whitebeard
    .accept 291 >>接任务: |cRXP_LOOT_森内尔的报告|r
step
    #era/som
    .goto Dun Morogh,45.8,49.4
.target Razzle Sprysprocket
>>对话: |cRXP_FRIENDLY_拉兹·滑链|r
    .turnin 412 >>交任务: |cRXP_FRIENDLY_自动净化装置|r
step
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .accept 314 >>接任务: |cRXP_WARN_保护牲畜|r
step
    #sticky
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>跑上山的这一部分
step
    >>杀死瓦加什。抢他的牙
    >>把他引到牧场南边的守卫那里。确保你对他造成51%+的伤害
    >>小心，因为这个任务可能很困难
    .goto Dun Morogh,62.6,46.1
    .complete 314,1 --Collect Fang of Vagash (1)
--N Video tutorial needed
step
    .goto Dun Morogh,63.1,49.8
.target Rudra Amberstill
>>对话: |cRXP_FRIENDLY_鲁德拉·冻石|r
    .turnin 314 >>交任务: |cRXP_FRIENDLY_保护牲畜|r
step
    >>途中磨碎一点
    .goto Dun Morogh,68.6,54.7
    .vendor >>供应商垃圾箱。如果需要，购买一些食物/水
step
    .goto Dun Morogh,68.7,56.0
.target 参议员Mehr Stonehallow
>>对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .accept 433 >>接任务: |cRXP_WARN_公众之仆|r
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >>供应商垃圾，修理
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .accept 432 >>接任务: |cRXP_WARN_该死的石腭怪！|r
step
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    .goto Dun Morogh,70.6,56.6,30,0
    .goto Dun Morogh,70.8,53.3,30,0
    .goto Dun Morogh,71.9,50.7,30,0
    .goto Dun Morogh,72.9,53.1,30,0
    >>在山洞里杀死Troggs
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
step
    .goto Dun Morogh,69.084,56.330
.target Foreman Stonebrow
>>对话: |cRXP_FRIENDLY_工头乔尼·石眉|r
    .turnin 432 >>交任务: |cRXP_FRIENDLY_该死的石腭怪！|r
step
    #completewith next
    .goto Dun Morogh,68.9,55.9
    .vendor >>供应商垃圾，修理
step
    .goto Dun Morogh,68.7,56.0
.target 参议员Mehr Stonehallow
>>对话: |cRXP_FRIENDLY_参议员梅尔·圣石|r
    .turnin 433 >>交任务: |cRXP_FRIENDLY_公众之仆|r
step
    .goto Dun Morogh,67.1,59.7,40,0
    .goto Dun Morogh,70.7,58.2,40,0
    .goto Dun Morogh,71.0,53.9,40,0
    .xp 10 >>在拖架上升级到10级
step
    .goto Dun Morogh,68.6,54.7
    .vendor >>小贩垃圾，从喀山购买最多30杯5级饮料
    .trainer >>Ghilm的火车烹饪。你需要这个来接2个额外任务
step
    .goto Dun Morogh,83.8,39.2
.target Pilot Hammerfoot
>>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .accept 419 >>接任务: |cRXP_LOOT_失踪的驾驶员|r
step
    >>途中升级
    .goto Dun Morogh,79.7,36.2
    .turnin 419 >>交任务: |cRXP_FRIENDLY_失踪的驾驶员|r
    .accept 417 >>接任务: |cRXP_WARN_驾驶员的复仇|r
step
    >>杀死芒格克劳。抢走他的爪子
    .goto Dun Morogh,80.0,36.4
    .complete 417,1 --Collect Mangy Claw (x1)
step
    .goto Dun Morogh,83.892,39.188
.target Pilot Hammerfoot
>>对话: |cRXP_FRIENDLY_驾驶员塞克·锤足|r
    .turnin 417 >>交任务: |cRXP_FRIENDLY_驾驶员的复仇|r
step
    >>从你来的地道回去
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
>>对话: |cRXP_FRIENDLY_巡山人维拉特·麦酒|r
    .turnin 413 >>交任务: |cRXP_FRIENDLY_微光酒|r
.target Mountaineer Barleybrew
    .accept 414 >>接任务: |cRXP_LOOT_卡德雷尔的酒|r
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Mage
#name 10-12 洛克莫丹 法师 AoE
#version 1
#group RestedXP 联盟 法师
#defaultfor Human Mage/Gnome Mage
#next 12-18 黑海岸 法师 AoE
step
    #era/som
    #completewith next
    +当你在莫丹湖寻找时，保存你得到的所有大块野猪肉，不要出售。你以后需要它
step << Gnome
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .accept 224 >>接任务: |cRXP_WARN_保卫国王的领土|r
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>从后面进入沙坑
.target Captain Rugelfuss
>>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .accept 267 >>接任务: |cRXP_LOOT_穴居人的威胁|r
step << Gnome
    .goto Loch Modan,29.9,68.2,45 >>跑到Troggs入口
step << Gnome
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    .goto Loch Modan,30.0,72.4,50,0
    .goto Loch Modan,34.7,71.6,50,0
    .goto Loch Modan,30.9,81.1,50,0
    >>杀死石刺怪。抢走他们的牙齿
    >>小心，因为这个任务可能很困难。如果你一次误拉2个暴徒，就逃跑
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
step << Gnome
    .goto Loch Modan,22.071,73.127
.target Mountaineer Cobbleflint
>>对话: |cRXP_FRIENDLY_巡山人库伯弗林特|r
    .turnin 224 >>交任务: |cRXP_FRIENDLY_保卫国王的领土|r
step << Gnome
    .goto Loch Modan,23.233,73.675
    >>从后面进入沙坑
.target Captain Rugelfuss
>>对话: |cRXP_FRIENDLY_拉格弗斯上尉|r
    .turnin 267 >>交任务: |cRXP_FRIENDLY_穴居人的威胁|r
step << Human
    .goto Loch Modan,24.1,18.2
    .vendor >>供应商和维修
step << Human
    .goto Loch Modan,24.764,18.397
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 353 >>交任务: |cRXP_FRIENDLY_雷矛的包裹|r
.target Mountaineer Stormpike
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
step << Human
    #sticky
    #completewith next
    >>在蜘蛛一角的区域内杀死蜘蛛
    .collect 3174,3 --Collect Spider Ichor (x3)
    >>在熊肉区杀死熊
    .collect 3173,3 --Collect Bear Meat (x3)
    >>在野猪肠道区域杀死野猪
    .collect 3172,3 --Collect Boar Intestines (x3)
step << Human
    .goto Loch Modan,35.1,47.8,130 >>在途中碾碎暴徒，以便稍后进行烹饪任务
step
    >>跑向塞尔斯马尔。不要放炉子 << Gnome
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .accept 418 >>接任务: |cRXP_WARN_塞尔萨玛血肠|r
step << Human
    #sticky
    .abandon 1338 >>放弃Stormpike的命令。这是为了解锁登山者Stormpike的任务
step
    .goto Loch Modan,34.8,48.6
    .vendor >>购买1-2个6槽袋，填充您的袋槽
step
    .goto Loch Modan,35.5,48.4
    .vendor >>购买食物/水(尝试喝40杯5级饮料，20杯5级食物)
step
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>找到卡德雷尔。他沿着塞尔萨马尔公路巡逻
.target Mountaineer Kadrell
>>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    .accept 416 >>接任务: |cRXP_LOOT_狗头人的耳朵|r
    .accept 1339 >>接任务: |cRXP_WARN_巡山人卡尔·雷矛的任务|r
step
    #sticky
    #completewith Thelsamar1
    >>为了塞尔萨马尔血香肠杀死区域内的蜘蛛
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar1
    >>在Thelsamar鲜血香肠区杀死熊
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar1
    >>在赛尔萨马尔血肠区杀死野猪
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step << Gnome
    .goto Loch Modan,24.1,18.2
    .vendor >>供应商和维修
step << Gnome
    .goto Loch Modan,24.764,18.397
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r
.target Mountaineer Stormpike
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r
    .accept 307 >>接任务: |cRXP_LOOT_肮脏的爪子|r
step << Gnome
    #label Thelsamar1
    .goto Loch Modan,33.71,17.20,130 >>途中为野猪肠、熊肉和蜘蛛丝碾碎一些暴徒
step << Human
    #label Thelsamar1
    .goto Loch Modan,39.3,27.0,130 >>途中为野猪肠、熊肉和蜘蛛丝碾碎一些暴徒
step
    #sticky
    #completewith Gear
    >>杀死隧道老鼠。抢走他们的耳朵
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    .goto Loch Modan,35.5,18.2,45 >>去洞口杀老鼠
step
    #label Gear
    .goto Loch Modan,35.5,19.9,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,34.9,24.9,12,0
    .goto Loch Modan,35.7,24.3,12,0
    .goto Loch Modan,36.3,24.7,12,0
    .goto Loch Modan,35.9,22.1,12,0
    .goto Loch Modan,35.3,22.0,12,0
    .goto Loch Modan,36.4,20.7,12,0
    .goto Loch Modan,35.5,19.9,12,0
    >>收集你在山洞里找到的板条箱。小心，因为这在11级很难做到
    >>几秒钟后，当Geomangers施放火焰防护(Fire Immunity)时要小心
    .complete 307,1 --Collect Miners' Gear (x4)
step
    .goto Loch Modan,39.43,22.58
    >>杀死隧道老鼠。抢走他们的耳朵
    >>试着杀死害虫，而不是Kobolds/Geomangers
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
step
    #sticky
    #completewith Thelsamar2
    >>为了塞尔萨马尔血香肠杀死区域内的蜘蛛
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    #sticky
    #completewith Thelsamar2
    >>在Thelsamar鲜血香肠区杀死熊
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #completewith Thelsamar2
    >>在赛尔萨马尔血肠区杀死野猪
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
    #label Thelsamar2
    .goto Loch Modan,23.3,17.9,60 >>跑回沙坑，途中碾磨
step
    .goto Loch Modan,24.1,18.2
    .vendor >>供应商和维修
step
    .goto Loch Modan,24.7,18.3
>>对话: |cRXP_FRIENDLY_巡山人雷矛|r
    .turnin 307 >>交任务: |cRXP_FRIENDLY_肮脏的爪子|r
    .turnin 1339 >>交任务: |cRXP_FRIENDLY_巡山人卡尔·雷矛的任务|r << Human
.target Mountaineer Stormpike
    .accept 1338 >>接任务: |cRXP_LOOT_卡尔·雷矛的订单|r << Human
step
    #sticky
    #label Meat9
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7,40,0
    .goto Loch Modan,30.9,10.6,40,0
    .goto Loch Modan,28.6,15.4,40,0
    .goto Loch Modan,30.5,26.6,40,0
    .goto Loch Modan,33.4,30.3,40,0
    .goto Loch Modan,39.4,33.3,40,0
    .goto Loch Modan,26.9,10.7
    >>杀死熊。抢他们的肉
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
step
    #sticky
    #label Ichor9
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4,40,0
    .goto Loch Modan,28.0,20.6,40,0
    .goto Loch Modan,33.8,40.5,40,0
    .goto Loch Modan,36.2,30.9,40,0
    .goto Loch Modan,39.0,32.1,40,0
    .goto Loch Modan,31.9,16.4
    >>杀死蜘蛛。为伊科尔抢走他们
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
step
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9,40,0
    .goto Loch Modan,37.1,39.8,40,0
    .goto Loch Modan,29.8,35.9,40,0
    .goto Loch Modan,27.7,25.3,40,0
    .goto Loch Modan,28.6,22.6,40,0
    .goto Loch Modan,38.0,34.9
    >>杀死野猪。掠夺他们的肠道
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
step
#hidewindow
    #requires Meat9
step
    #sticky
    #label RatCatching
    #requires Ichor9
    .goto Loch Modan,32.6,49.9,80.0,0
    .goto Loch Modan,37.2,46.1,80.0,0
    .goto Loch Modan,36.7,41.6
    >>找到卡德雷尔。他沿着塞尔萨马尔公路巡逻
.target Mountaineer Kadrell
>>对话: |cRXP_FRIENDLY_巡山人卡德雷尔|r
    .turnin 416 >>交任务: |cRXP_FRIENDLY_狗头人的耳朵|r
step
    #requires Ichor9
    .goto Loch Modan,34.828,49.283
.target Vidra Hearthstove
>>对话: |cRXP_FRIENDLY_维德拉·壁炉|r
    .turnin 418 >>交任务: |cRXP_FRIENDLY_塞尔萨玛血肠|r
step
    #era/som
    .goto Loch Modan,34.76,48.62
    .vendor >>购买6个插槽，直到您的袋子装满。还需购买1块Flint and Tinder和2块Simple Wood
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
step
    .xp 12 >>升级到12级
step << Gnome
    #completewith next
    #requires RatCatching
    .goto Loch Modan,64.82,66.04
    .vendor >>检查奥尔德伦的智者腰带。如果你买得起就买。保存以备以后使用
step << Gnome
    #requires RatCatching
    .goto Loch Modan,65.94,65.62
.target Prospector Ironband
>>对话: |cRXP_FRIENDLY_勘察员基恩萨·铁环|r
    .accept 298 >>接任务: |cRXP_WARN_挖掘进度报告|r
step << Gnome
    #softcore
    .goto Loch Modan,68.12,62.98
    .deathskip >>死亡并重生回塞尔萨马尔
step << Gnome
    #hardcore
    >>跑回塞尔斯马尔。进入大楼
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>对话: |cRXP_FRIENDLY_布洛克·寻石者|r
    .accept 6387 >>接任务: |cRXP_LOOT_荣誉学员|r
>>对话: |cRXP_FRIENDLY_吉恩·角盔|r
    .turnin 298 >>交任务: |cRXP_FRIENDLY_挖掘进度报告|r
.target Jern Hornhelm
    .accept 301 >>接任务: |cRXP_WARN_向铁炉堡报告|r
step << Gnome
    #softcore
    >>进入大楼
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>对话: |cRXP_FRIENDLY_布洛克·寻石者|r
    .accept 6387 >>接任务: |cRXP_LOOT_荣誉学员|r
>>对话: |cRXP_FRIENDLY_吉恩·角盔|r
    .turnin 298 >>交任务: |cRXP_FRIENDLY_挖掘进度报告|r
.target Jern Hornhelm
    .accept 301 >>接任务: |cRXP_WARN_向铁炉堡报告|r
step
    #requires RatCatching
    .goto Loch Modan,33.94,50.96
    .fp Thelsamar >>获取Thelsamar飞行路线
>>对话: |cRXP_FRIENDLY_索格拉姆·伯雷森|r
    .turnin 6387 >>交任务: |cRXP_FRIENDLY_荣誉学员|r << Gnome
.target Thorgrum Borrelson
    .accept 6391 >>接任务: |cRXP_WARN_飞往铁炉堡|r << Gnome
    .fly Ironforge >>飞往铁炉堡
step << Human
    .goto Ironforge,27.15,8.57
    .trainer >>训练你的职业技能
step << Human
    #completewith next
    +朝房间后面圣骑士训练师后面的楼梯走去。往上走一半，然后移动到楼梯边缘，直到看起来你在漂浮。注销，然后重新登录
    .link https://www.youtube.com/watch?v=E8b90bzJMSI >>单击此处以供参考
    >>注销跳转到铁炉堡前面
step << Human
    .goto Ironforge,12.24,89.17,120 >>前往: |cRXP_PICK_丹莫罗|r
step << Gnome
    .goto Ironforge,74.65,11.74
>>对话: |cRXP_FRIENDLY_勘察员塔伯斯·雷矛|r
    .turnin 301 >>交任务: |cRXP_FRIENDLY_向铁炉堡报告|r
.target Prospector Stormpike
    .accept 302 >>接任务: |cRXP_WARN_铁环的火药|r
step << Gnome
    >>返回大熔炉，然后向右拐，进入大楼
    .goto Ironforge,49.59,28.96,30,0
    .goto Ironforge,51.52,26.32
>>对话: |cRXP_FRIENDLY_高尼尔·石趾|r
    .turnin 6391 >>交任务: |cRXP_FRIENDLY_飞往铁炉堡|r
.target Golnir Bouldertoe
    .accept 6388 >>接任务: |cRXP_LOOT_格莱斯·瑟登|r
step << Gnome
    .goto Ironforge,39.55,57.49
.target Senator Barin Redstone
>>对话: |cRXP_FRIENDLY_参议员巴林·红石|r
    .turnin 291 >>交任务: |cRXP_FRIENDLY_森内尔的报告|r
step << Gnome
    .goto Ironforge,55.50,47.74
>>对话: |cRXP_FRIENDLY_格莱斯·瑟登|r
    .turnin 6388 >>交任务: |cRXP_FRIENDLY_格莱斯·瑟登|r
.target Gryth Thurden
    .accept 6392 >>接任务: |cRXP_LOOT_向布洛克回复|r
    .fly Thelsamar >>飞往塞尔斯马尔
step << Gnome
    >>进入大楼
    .goto Loch Modan,37.16,46.89,20,0
    .goto Loch Modan,37.02,47.81
.target Brock Stoneseeker
>>对话: |cRXP_FRIENDLY_布洛克·寻石者|r
    .turnin 6392 >>交任务: |cRXP_FRIENDLY_向布洛克回复|r
.target Jern Hornhelm
>>对话: |cRXP_FRIENDLY_吉恩·角盔|r
    .turnin 302 >>交任务: |cRXP_FRIENDLY_铁环的火药|r
step << Gnome
    .hs >>赫斯到哈拉诺斯
step << Gnome
    .goto Dun Morogh,47.50,52.08
    .trainer >>训练你的职业技能
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>前往跳跃点
step
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>打开此链接并在另一个屏幕上进行跟踪。
    >>邓莫罗不死->湿地跳过
    >>横渡大海时要避开鳄鱼
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>单击此处以供参考
    .goto Wetlands,12.1,60.3,80 >>前往: |cRXP_PICK_湿地|r
step
    #softcore
    .goto Dun Morogh,30.3,37.5,50 >>跑到这里
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>向北跑上山
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>继续到这里
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .deathskip >>继续向北奔跑，摔倒死亡，然后重生
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,60 >>游到岸上
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    .vendor >>如果你有8s，检查Neal Allen的铜管，如果有就买
step
    .money <0.04
    .goto Wetlands,8.1,56.3
    .vendor >>检查Dewin的治疗药剂，购买时间减至1秒
step
    .goto Wetlands,9.5,59.7
    .fp Menethil Harbor >>获取Menethil Harbor航线
step
    #era/som
    #sticky
    #completewith Darkshore1
    +在这里等船。从你的魔法书中烧一堆野营火，开始煮你早先省下的大块野猪肉。你现在至少需要10项技能，以后需要50项技能(所以全部都要做)
    .goto Wetlands,4.7,57.3
step
    #era/som
    #label Darkshore1
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
step
    #som
    #phase 3-6
    #label Darkshore1
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
]])

