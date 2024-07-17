RXPGuides.RegisterGuide([[
#version 20
#defaultfor Horde Mage
#group RestedXP 部落 法师 AoE
#version 20
#classic
<< Horde Mage
#name 21-30 银松森林/希尔斯布莱德丘陵 AoE
#next 30-36 Arathi/Alterac AoE
step
.goto Orgrimmar,38.69,85.38
.trainer >>上楼去。列车入口：Orgrimmar
step
#level 22
.goto Orgrimmar,38.34,85.56
.trainer >>训练你的职业技能
>>如果你还没有响应冰霜法师的AoE规范
>>确保你至少还有30块银
step
#completewith next
>>前往: |cRXP_PICK_杜隆塔尔|r
.goto Orgrimmar,49.10,94.82,100,0
.goto Durotar,50.82,13.86
+等待齐柏林飞船的到来，当它到来时就上车
step
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
.goto Tirisfal Glades,61.87,65.02,40,0
.goto Tirisfal Glades,61.81,74.42,40 >>前往: |cRXP_PICK_幽暗城|r, then run to the Elevator room. 乘一部电梯到幽暗城的主要部分
step
#completewith next
+银行项目（如果需要）
step << Undead Mage
.goto Undercity,62.01,42.73
>>对话: |cRXP_FRIENDLY_拉林夫·安迪恩|r
.turnin 441 >>交任务: |cRXP_FRIENDLY_拉林夫与幽暗城|r
.target Raleigh Andrean
.accept 530 >>接任务: |cRXP_WARN_丈夫的复仇|r
step << !Undead Mage
.goto Undercity,63.27,48.60
.fp Undercity >>获取幽暗城飞行路线
step
.goto Undercity,82.79,15.82
.vendor >>去找Hannah。购买远程传送符文
.collect 17031,1 
step
.goto Undercity,84.20,15.55
.trainer >>训练地下通道
>>如果你没有足够的钱，可以向下面的试剂供应商提供一些东西
step << Undead Mage
.goto Undercity,63.27,48.60
.fly Silverpine >>飞到银松森林
step << !Undead Mage
#sticky
#completewith next
.goto Undercity,82.36,15.31
+转到右侧的试剂供应商，执行“注销跳过”，将角色定位在最低楼梯的最高部分，直到看起来像漂浮在空中，然后注销并重新登录。
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >>单击此处查看示例
>>如果你做不到这一点，就正常离开幽暗城
step << !Undead Mage
.goto Tirisfal Glades,61.85,66.59,60 >>前往: |cRXP_PICK_提瑞斯法林地|r
step << !Undead Mage
.goto Silverpine Forest,67.42,5.91
.zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
step << Mage
#completewith next
.money <0.1400
.goto Silverpine Forest,44.80,39.24
.vendor >>Talk to Andrea and check for a Wise Man's Belt. Buy it if its up (and if you need it)
step
>>Travel to The Sepulcher << !Undead Mage
.goto Silverpine Forest,42.80,40.87
.target Apothecary Renferrel
>>对话: |cRXP_FRIENDLY_药剂师伦弗利尔|r
.accept 493 >>接任务: |cRXP_LOOT_前往希尔斯布莱德丘陵|r
step
.goto Silverpine Forest,42.90,41.99
.target Mura Runetotem
>>对话: |cRXP_FRIENDLY_茉拉·符文图腾|r
.turnin 3301 >>交任务: |cRXP_FRIENDLY_茉拉·符文图腾|r
step
.goto Silverpine Forest,44.18,42.67
.turnin 264 >>交任务: |cRXP_FRIENDLY_至死方休|r
step << Undead Mage
#sticky
#label Valdred
.goto Silverpine Forest,44.63,84.69
.complete 530,1 
>>杀死瓦尔德雷德·莫雷（他有能力）。抢他的手
step
#completewith next
.goto Silverpine Forest,46.50,86.49,0
+强烈建议您观看链接，因为这里可能有点棘手
.link https://www.twitch.tv/videos/970326213?t=03h49m43s >>单击此处
>>如果需要，你也可以在大门旁的Wallace the Blind出售/修理/购买药剂
step << Undead Mage
#requires Valdred
step
.goto Silverpine Forest,46.10,85.75
.xp 22 >>向南跑到灰墙。AoE在此直到22
step
>>Run East into Hillsbrad
.goto Silverpine Forest,72.58,81.35
.target Deathstalker Lesh
>>对话: |cRXP_FRIENDLY_亡灵哨兵莱什|r
.accept 494 >>接任务: |cRXP_LOOT_进攻的时机|r
step
>>Run to Tarren Mill
.goto Hillsbrad Foothills,62.37,20.58
>>对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.turnin 494 >>交任务: |cRXP_FRIENDLY_进攻的时机|r
.target High Executor Darthalia
.accept 527 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
step << skip
#som
.goto Hillsbrad Foothills,62.62,20.73
.accept 549 >>接任务: |cRXP_LOOT_通缉：辛迪加成员|r

step << skip
#som
.goto Hillsbrad Foothills,63.24,20.65
.target Krusk
>>对话: |cRXP_FRIENDLY_克鲁斯克|r
.accept 498 >>接任务: |cRXP_LOOT_拯救行动|r
step
>>点击客栈外的通缉海报
.goto Hillsbrad Foothills,62.55,19.69
.accept 567 >>接任务: |cRXP_LOOT_危险！|r
step
.goto Hillsbrad Foothills,62.77,19.02
.home >>把你的心放在Tarren Mill
step
.goto Hillsbrad Foothills,61.44,19.05
>>对话: |cRXP_FRIENDLY_药剂师林度恩|r
.turnin 493 >>交任务: |cRXP_FRIENDLY_前往希尔斯布莱德丘陵|r
.turnin 1065 >>交任务: |cRXP_FRIENDLY_塔伦米尔之旅|r

.target Apothecary Lydon
.accept 501 >>接任务: |cRXP_LOOT_痛苦药剂|r
step
.goto Hillsbrad Foothills,60.14,18.62
.fp Hillsbrad >>获取Tarren Mill飞行路线
step << skip
#sticky
#completewith Hillsbrad1
>>AoE熊。掠夺他们的舌头
.complete 496,1 
step << skip
#sticky
#completewith Hillsbrad1
>>杀死蜘蛛。掠夺他们的Ichor
.complete 496,2 
step
#sticky
#completewith Hillsbrad1
>>AoE Lions。掠夺他们的鲜血
.complete 501,1 
step
#label Hillsbrad1
.goto Hillsbrad Foothills,36.02,39.19,150 >>跑到希尔斯堡球场
step
#sticky
#completewith next
+强烈建议您观看链接，因为这里可能有点棘手
.link https://www.twitch.tv/videos/970326213?t=04h32m58s >>单击此处
step
#sticky
#completewith l24
>>杀死公民威尔克斯。他在田里巡逻
.complete 567,2 
step
#sticky
#completewith next
.goto Hillsbrad Foothills,35.16,39.06
>>AoE该地区的希尔斯堡暴徒。留意Farmer Rey和Getz
.complete 527,1 
.complete 527,2 
.complete 527,3 
.complete 527,4 
step
#label l24
.xp 24 >>AoE中部和北部田地（与农民和农场工人）至24
>>开始保存你得到的羊毛布。你以后需要12个堆叠
step
#sticky
#label Getz
>>杀死农夫盖兹，他可以在房子、谷仓或田地里
.goto Hillsbrad Foothills,36.7,39.4,60,0
.goto Hillsbrad Foothills,35.2,37.6,45,0
.goto Hillsbrad Foothills,35.1,41.0,60,0
.complete 527,4 
step
>>杀死农夫雷。他可以在房子的一楼或二楼。他也可以在外面的葡萄藤下（小屋）
.goto Hillsbrad Foothills,33.7,35.5,20,0
.goto Hillsbrad Foothills,33.2,34.8,20,0
.goto Hillsbrad Foothills,33.7,35.5,20,0
.goto Hillsbrad Foothills,33.2,34.8,20,0
.goto Hillsbrad Foothills,33.7,35.5,20,0
.goto Hillsbrad Foothills,33.2,34.8,20,0
.goto Hillsbrad Foothills,33.7,35.5,20,0
.goto Hillsbrad Foothills,33.2,34.8,20,0
.goto Hillsbrad Foothills,33.7,35.5,20,0
.goto Hillsbrad Foothills,33.2,34.8,20,0
.goto Hillsbrad Foothills,33.2,34.8
.complete 527,3 
step
>>AoE该地区的希尔斯堡暴徒。留意Farmer Rey和Getz
.complete 527,1 
.complete 527,2 
step
>>杀死公民威尔克斯。他在田里巡逻
.complete 567,2 
step
#requires Getz
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
.goto Undercity,85.14,10.03
.trainer >>训练你的职业技能
>>确保你至少还有10个剩余
step
.goto Undercity,82.79,15.82
.vendor >>去找Hannah。购买远程传送符文
.collect 17031,1 
step
.goto Undercity,57.30,32.76
.trainer >>训练1h剑，匕首
step << Undead Mage
.goto Undercity,62.01,42.72
.target Raleigh Andrean
>>对话: |cRXP_FRIENDLY_拉林夫·安迪恩|r
.turnin 530 >>交任务: |cRXP_FRIENDLY_丈夫的复仇|r
step
#completewith next
.goto Undercity,65.97,44.73
+把之前的羊毛布放在这里。你需要12个堆叠（240）以备日后使用
step
.hs >>Hearth to Tarren Mill
.vendor >>一旦你心动了，就向客栈老板购买25级饮料
step
#hardcore
#completewith next
.goto Hillsbrad Foothills,62.56,19.91
.vendor >>如果需要，从Kayren购买8-10个老虎袋
step
.goto Hillsbrad Foothills,62.34,20.44
>>对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.turnin 527 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.target High Executor Darthalia
.accept 528 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
step
.goto Hillsbrad Foothills,62.13,19.57
.target Deathguard Samsa
>>对话: |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.accept 546 >>接任务: |cRXP_LOOT_死亡的纪念品|r
step
.isQuestComplete 501
.goto Hillsbrad Foothills,61.44,19.06
>>对话: |cRXP_FRIENDLY_药剂师林度恩|r
.turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.target Apothecary Lydon
.accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
step
.goto Hillsbrad Foothills,39.10,38.68
>>雄狮队正在前往赛场的途中。掠夺他们的鲜血
.complete 501,1 
step
.goto Hillsbrad Foothills,36.02,39.19,150 >>跑到希尔斯堡球场
+强烈建议您观看必须进行的新字段拉取的链接，因为这可能有点棘手
.link https://www.twitch.tv/videos/970328906?t=00h50m19s >>单击此处
step
.isOnQuest 502
>>Turn in the Elixir at Stanley. Kill him afterwards
.goto Hillsbrad Foothills,32.66,35.32
.target Stanley
>>对话: |cRXP_FRIENDLY_斯坦雷|r
.turnin 502 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
step
#sticky
#label Kalaba
>>杀死农民卡拉巴。她在南部的田地里巡逻
.complete 567,4 
step
#sticky
#completewith next
.goto Hillsbrad Foothills,35.29,46.83,0
>>AoE南方田地里的农民
.complete 528,1 
step
.xp 25 >>AoE所有字段为25
step
>>继续打磨，直到你掠夺了30个头骨
.complete 546,1 
>>AoE南方田地里的农民
.complete 528,1 
step
#requires Kalaba
.hs >>如果你的炉缸烧起来了，就去塔伦磨坊吧
>>如果你的炉子坏了，继续进行AoE农业，直到它恢复
.vendor >>一旦你心动了，就向客栈老板购买25级饮料
step
.goto Hillsbrad Foothills,62.35,20.51
>>对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.turnin 528 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.target High Executor Darthalia
.accept 529 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
step
.goto Hillsbrad Foothills,62.13,19.57
.target Deathguard Samsa
>>对话: |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.turnin 546 >>交任务: |cRXP_FRIENDLY_死亡的纪念品|r
step
.isOnQuest 501
.goto Hillsbrad Foothills,61.44,19.06
>>对话: |cRXP_FRIENDLY_药剂师林度恩|r
.turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.target Apothecary Lydon
.accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
.accept 509 >>接任务: |cRXP_LOOT_苦楚药剂|r
step
.goto Hillsbrad Foothills,61.44,19.06
.target Apothecary Lydon
>>对话: |cRXP_FRIENDLY_药剂师林度恩|r
.accept 509 >>接任务: |cRXP_LOOT_苦楚药剂|r
step
.goto Hillsbrad Foothills,36.02,39.19,150 >>跑到希尔斯堡球场
step
#sticky
#label Iron
>>偷走史密斯家中发现的铁
.goto Hillsbrad Foothills,32.00,45.44
.complete 529,3 
step
#sticky
#completewith next
>>杀死铁匠韦林坦和他的学徒
.complete 529,1 
.complete 529,2 
step
.xp 26 >>AoE所有字段为26
>>开始保存你得到的羊毛布。你以后需要12个堆叠
step
>>杀死铁匠韦林坦和他的学徒
.complete 529,1 
.complete 529,2 
step
#requires Iron
>>如果你的炉子坏了，继续进行AoE农业，直到它恢复
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
.goto Undercity,85.14,10.03
.trainer >>训练你的职业技能
>>确保你至少剩下30多个
step
.goto Undercity,82.79,15.82
.vendor >>去找Hannah。购买一些远程传送符文
.collect 17031,3 
step
#completewith next
.goto Undercity,65.97,44.73
+把之前的羊毛布放在这里。你需要12个堆叠（240）以备日后使用
step
#softcore
#completewith next
.goto Undercity,71.50,41.92,0
+从拍卖行买一些袋子如果你有多余的钱，你会有很长的路要走
step
.hs >>如果你的炉缸烧起来了，就去塔伦磨坊吧
.vendor >>一旦你心动了，就向客栈老板购买25级饮料
step
#hardcore
#completewith next
.goto Hillsbrad Foothills,62.56,19.91
.vendor >>如果需要，从Kayren购买8-10个老虎袋
step
.goto Hillsbrad Foothills,62.27,20.40
>>对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.turnin 529 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.target High Executor Darthalia
.accept 532 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
step
#sticky
>>杀死办事员。他在大厅里
.complete 567,1 
step
>>杀死议员们。小心他们霜新星和霜螺栓
.goto Hillsbrad Foothills,29.63,42.33
.complete 532,2 
step
>>单个目标杀死大厅内的伯恩赛德。偷走这本书，然后烧掉卷轴
.goto Hillsbrad Foothills,29.67,41.64
.complete 532,1 
.goto Hillsbrad Foothills,29.52,41.53
.complete 532,4 
.goto Hillsbrad Foothills,29.73,41.75
.complete 532,3 
step
.xp 27 >>AoE所有字段为27
step
.hs >>如果你的炉缸烧起来了，就去塔伦磨坊吧。否则，继续AoE农业
.vendor >>一旦你心动了，就向客栈老板购买25级饮料
step
>>对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.turnin 532 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.target High Executor Darthalia
.accept 539 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
step
>>在这个地区掠夺大的蓝色蘑菇。
>>你可以施放眩晕，但要小心萨满，因为他们会施放闪电+治疗波（记得使用反制法）
.goto Hillsbrad Foothills,63.70,61.59
.complete 509,1 
step
.goto Hillsbrad Foothills,27.21,57.20,150 >>Run to Azurelode Mine
step
#sticky
#completewith next
+强烈建议您观看链接，因为这里可能有点棘手
.link https://www.twitch.tv/videos/970328906?t=06h14m29s >>单击此处
step
#sticky
#label Hackett
>>杀死矿工哈克特。他在整个矿井里都能找到
.complete 567,3 
step
#sticky
#completewith next
>>杀死工头邦兹。小心他晕过去了
.goto Hillsbrad Foothills,31.20,56.02
.complete 539,1 
step
.xp 30 >>矿井中的AoE暴徒达到30级
>>开始保存你得到的羊毛布。你以后需要12个堆叠
>>如果需要的话，你可以回到Tarren Mill购买更多的水+供应商垃圾，然后跑回矿场
step
>>杀死矿井内的10名矿工
.complete 539,2 
step
>>杀死工头邦兹。小心他晕过去了
.goto Hillsbrad Foothills,31.20,56.02
.complete 539,1 
step
#requires Hackett
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
.goto Undercity,85.14,10.03
.trainer >>训练你的职业技能
>>确保你至少剩下40多级
step
.goto Undercity,82.79,15.82
.vendor >>去找Hannah。购买一些远程传送符文
.collect 17031,4 
step
.goto Undercity,63.82,49.37
.target Genavie Callow
>>对话: |cRXP_FRIENDLY_吉纳维·卡隆|r
.accept 1164 >>接任务: |cRXP_LOOT_科娜塔一家|r
step
#completewith next
.goto Undercity,65.97,44.73
+把之前的羊毛布放在这里。你需要12个堆叠（240）以备日后使用
step
.hs >>如果你的炉缸烧起来了，就去塔伦磨坊吧
.vendor >>一旦你心动了，就向客栈老板购买25级饮料
step
#hardcore
#completewith next
.goto Hillsbrad Foothills,62.56,19.91
.vendor >>如果需要，从Kayren购买8-10个老虎袋
step
.goto Hillsbrad Foothills,61.86,19.57
.target Tallow
>>对话: |cRXP_FRIENDLY_塔隆|r
.accept 676 >>接任务: |cRXP_LOOT_落锤之战|r
step
.goto Hillsbrad Foothills,61.57,20.84
.target Magus Wordeen Voidglare
>>对话: |cRXP_FRIENDLY_大法师沃迪恩·伍德格莱尔|r
.accept 544 >>接任务: |cRXP_LOOT_入室偷窃|r
.target Keeper Bel'varil
>>对话: |cRXP_FRIENDLY_看守者贝瓦里尔|r
.accept 556 >>接任务: |cRXP_LOOT_石雕|r
step
.goto Hillsbrad Foothills,62.38,20.56
.target High Executor Darthalia
>>对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.turnin 539 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.turnin 567 >>交任务: |cRXP_FRIENDLY_危险！|r
step
.goto Hillsbrad Foothills,63.24,20.65
.target Krusk
>>对话: |cRXP_FRIENDLY_克鲁斯克|r
.accept 533 >>接任务: |cRXP_LOOT_秘密潜入|r
step
.goto Hillsbrad Foothills,63.88,19.67
.target Novice Thaivand
>>对话: |cRXP_FRIENDLY_学徒塞万德|r
.accept 552 >>接任务: |cRXP_LOOT_赫尔库拉的复仇|r
step
.goto Hillsbrad Foothills,88.20,48.09,40,0
.zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r

]])
RXPGuides.RegisterGuide([[
#version 20
#xprate <1.99
#group RestedXP Horde 22-30
#classic
<< Horde
#name 22-24 Hillsbrad
#somname 22-24 Hillsbrad（可选）
#next 24-26南部荒地/石爪

step
.maxlevel 26,Hillsbradskip1 << !Shaman !Rogue
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
step
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step
#completewith JourneyToHillsbrad
.goto Tirisfal Glades,61.80,65.06,20,0
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
.zoneskip Undercity
.dungeon SFK << !Mage !Warlock !Priest !Rogue
step
#completewith JourneyToHillsbrad
.goto Undercity,66.09,20.06,35,0
.goto Undercity,64.37,23.94,35,0
.goto Undercity,65.93,26.71,10,0
.goto Undercity,65.89,34.03,10,0
.goto Undercity,64.22,39.77,10,0
.goto Undercity,65.53,43.62,15 >>乘电梯到地下城
.dungeon SFK << !Mage !Warlock !Priest !Rogue
step << Mage
.goto Undercity,84.18,15.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱克斯顿·莫泰姆|r
.train 3563 >>列车|T135766:0|t[电传：Undercity]
.target Lexington Mortaim
step << Mage
.goto Undercity,82.78,15.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Hannah|r|cRXP_BUY_交谈。从她那里购买一个或多个|r|T134419:0|t[传送符文]|r
.collect 17031,1 
.target Hannah Akeley
step << Undead Priest
.goto Undercity,48.98,18.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾萨莱斯特|r
.turnin 5644 >>交任务: |cRXP_FRIENDLY_噬灵瘟疫|r
.target Aelthalyste
.isOnQuest 5644
step << Undead Priest
.goto Undercity,48.98,18.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾萨莱斯特|r
.turnin 5679 >>交任务: |cRXP_FRIENDLY_噬灵瘟疫|r
.target Aelthalyste
step << !Undead
#label FlytoSepulcher
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher>>飞向坟墓 << Mage/Warlock/Priest/Rogue
.fp Undercity >>获取地下飞行路线 << !Mage !Warlock !Priest !Rogue
.target Michael Garrett
.zoneskip Silverpine Forest
.dungeon SFK << !Mage !Warlock !Priest !Rogue
step
.goto Undercity,53.74,54.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝尔杜加|r
.accept 1013 >>接任务: |cRXP_WARN_乌尔之书|r
.target Keeper Bel'dugur
.dungeon SFK
step << Undead
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.accept 6324 >>接任务: |cRXP_LOOT_向博迪瑞格回报|r
.target Michael Garrett
.zoneskip Silverpine Forest
.isQuestTurnedIn 6322
step << Undead
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher>>飞向坟墓
.target Michael Garrett
.zoneskip Silverpine Forest
step << !Undead !Mage !Priest !Rogue !Warlock
.goto Undercity,47.25,39.12,50,0
.goto Undercity,46.35,43.86,10,0
.goto Undercity,45.24,39.35,10,0
.goto Undercity,41.32,38.40,10,0
.goto Undercity,40.74,33.95,10,0
.goto Undercity,34.80,33.19,15,0
.goto Undercity,27.39,30.23,35,0
.goto Undercity,21.89,43.35,35,0
.goto Tirisfal Glades,51.10,71.53,50,0
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step << !Undead !Mage !Priest !Rogue !Warlock
#completewith next
.zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
.zoneskip Silverpine Forest
step << !Undead !Mage !Priest !Rogue !Warlock
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fp Sepulcher >>获取墓穴飞行路线
.target Karos Razok
step << Mage
#season 2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师伦弗利尔|r, |cRXP_FRIENDLY_姆拉|r
.accept 493 >>接任务: |cRXP_LOOT_前往希尔斯布莱德丘陵|r
.accept 443 >>接任务: |cRXP_LOOT_腐皮豺狼人的脓液|r
.goto Silverpine Forest,42.90,40.86
.turnin 3301 >>交任务: |cRXP_FRIENDLY_茉拉·符文图腾|r
.goto Silverpine Forest,42.91,41.99
.target Apothecary Renferrel
.target Mura Runetotem
.train 415936,1
step
#label JourneyToHillsbrad
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师伦弗利尔|r, |cRXP_FRIENDLY_姆拉|r
.accept 493 >>接任务: |cRXP_LOOT_前往希尔斯布莱德丘陵|r
.goto Silverpine Forest,42.90,40.86
.turnin 3301 >>交任务: |cRXP_FRIENDLY_茉拉·符文图腾|r
.goto Silverpine Forest,42.90,41.99
.target Apothecary Renferrel
.target Mura Runetotem
step
.goto Silverpine Forest,44.18,42.68
>>与地面上的|cRXP_PICK_Yuriv墓碑|r交互
.turnin 264 >>交任务: |cRXP_FRIENDLY_至死方休|r
.isOnQuest 264
step << Undead
.goto Silverpine Forest,43.43,41.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵博迪瑞格|r
.turnin 6324 >>交任务: |cRXP_FRIENDLY_向博迪瑞格回报|r
.target Deathguard Podrig
.isOnQuest 6324
step << Druid
#completewith next
.goto Silverpine Forest,36.12,28.30,120 >>向东北方向驶向大海
step << Druid
.goto Silverpine Forest,29.58,29.30
>>将|cRXP_PICK_Strange Lockbox |r放入水中，用于|T133442:0|t[水上耐力的半挂件]

.collect 15882,1,30,1 

step << Shaman
#season 2
#completewith next
.goto Silverpine Forest,57.28,45.42,10,0
.goto Silverpine Forest,57.66,44.82,10,0
.goto Silverpine Forest,58.59,44.85,30 >>走向|cRXP_ENEMY_Grimson the Pale|r
.train 410097,1
.xp <20,1
step << Shaman
#season 2
.goto Silverpine Forest,58.59,44.85
>>杀死里面的苍白者。抢劫他|T135832:0|t|cRXP_Loot_[Tempest Icon]|r
.collect 206382,1 
.mob Grimson the Pale
.train 410097,1
.xp <20,1
step << Shaman
#season 2
.equip 18,206382 >>|cRXP_WARN_装备|r|T135832:0|t|cRXP_LOOT_[暴风图标]|r
.use 206382
.itemcount 206382,1 
.train 410097,1
.xp <20,1
step << Shaman
#season 2
#sticky
.aura 408828 >>|cRXP_WARN_使用自然法术（|r|T136026:0|t[地震]|cRXP_WARN_）、冰霜法术（|r |T135849:0|t[霜震]|cRXP_WARN_）和火焰法术（|r|T135813:0|t[火焰震]|t RXP_WARD_）至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
>>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
.itemStat 18,QUALITY,2
.train 410097,1
step << Mage
#season 2
#completewith next
.subzone 172 >>Travel to Fenris Isle
.train 415936,1
step << Mage
#season 2
#completewith DustyShelf
>>杀死|cRXP_ENEMY_Rot隐藏Gnolls|r。掠夺他们的|cRXP-Loot_Ichor|r
.complete 443,1 
.train 415936,1
step << Mage
#season 2
.goto Silverpine Forest,66.0,24.7
.use 3317 >>杀死|cRXP_ENEMY_Rot隐藏Gnolls|r。掠夺它们|T134173:0|t[|cRXP-Loot_A Talking Head|r]|cRXP_WARN_使用它接受任务|r
.collect 3317,1 
.accept 460 >>接任务: |cRXP_WARN_支离破碎|r
.mob Rot Hide Brute
.mob Rot Hide Plague Weaver
.mob Rot Hide Savage
.mob Raging Rot Hide
.train 415936,1
step << Mage
#season 2
.goto Silverpine Forest,67.8,24.8
>>与|cRXP_PICK_Shallow Grave|r交互
.turnin 460 >>交任务: |cRXP_FRIENDLY_支离破碎|r
.accept 461 >>接任务: |cRXP_WARN_密室|r
.target Shallow Grave
.train 415936,1
step << Mage
#season 2
#label DustyShelf
.goto Silverpine Forest,65.3,24.8
>>与|cRXP_PICK_Dusty Shelf|r|cRXP-WARN_in左上角塔楼中的城堡一侧互动（在第一个楼梯后向左走）|r
.turnin 461 >>交任务: |cRXP_FRIENDLY_密室|r
.accept 491 >>接任务: |cRXP_WARN_给比索的魔杖|r
.target Dusty Shelf
.train 415936,1
step << Mage
#season 2
.goto Silverpine Forest,66.0,24.7
>>完成杀戮|cRXP_ENEMY_Rot隐藏Gnolls|r。掠夺他们的|cRXX_Loot_Ichor|r
.complete 443,1 
.mob Rot Hide Brute
.mob Rot Hide Plague Weaver
.mob Rot Hide Savage
.mob Raging Rot Hide
.train 415936,1
step << Mage
#season 2
#softcore
#completewith next
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
.subzoneskip 228
.train 415936,1
step << Mage
#season 2
.goto Silverpine Forest,42.90,40.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师伦弗利尔|r
.turnin 443 >>交任务: |cRXP_FRIENDLY_腐皮豺狼人的脓液|r
.accept 444 >>接任务: |cRXP_WARN_腐皮豺狼人的产生|r
.target Apothecary Renferrel
.train 415936,1
step << Mage
#season 2
#completewith BookofUrTurnin
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
.train 415936,1
step << Mage
#season 2
.goto Undercity,83.8,16.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比索·埃斯沙德|r
.turnin 444 >>交任务: |cRXP_FRIENDLY_腐皮豺狼人的产生|r
.turnin 491 >>交任务: |cRXP_FRIENDLY_给比索的魔杖|r
.accept 446 >>接任务: |cRXP_WARN_图勒·鸦爪|r
.accept 78277 >>Accept A Token of Gratitude
.turnin 78277 >>Turn in A Token of Gratitude
.train 415936 >>|cRXP_WARN_你将通过在任务中转身自动训练符文|r
.target Bethor Iceshard
.train 415936,1
step << Mage
#season 2
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher>>飞向坟墓
.target Michael Garrett
.zoneskip Undercity,1
step << Mage
#season 2
.goto Silverpine Forest,42.90,40.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师伦弗利尔|r
.turnin 446 >>交任务: |cRXP_FRIENDLY_图勒·鸦爪|r
.accept 448 >>接任务: |cRXP_WARN_给哈德瑞克的报告|r
.target Apothecary Renferrel
.isQuestTurnedIn 444
step << Mage
#season 2
.goto Silverpine Forest,43.43,40.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官哈德瑞克|r
.turnin 448 >>交任务: |cRXP_FRIENDLY_给哈德瑞克的报告|r
.target High Executor Hadrec
.isQuestTurnedIn 444


step << Rogue
#season 2
.goto Silverpine Forest,47.12,71.01
>>单击银松林中的|cRXP_PICK_Dead Drop|r
>>|cRXP_WARN_如果你还有|r|T136230:0|t[赞齐尔之触]|cRXP_WARN_debuff，你就不能完成这个任务。它可以在希尔斯堡之后完成|r
.accept 78261 >>Accept The Horn of Xelthos
.train 400080,1
.aura 9991
.aura 9810
step << Rogue
#season 2
#completewith next
.goto Silverpine Forest,44.87,67.86
.zone 209 >>Enter Shadowfang Keep
>>|cRXP_WARN_你必须独自完成下一部分！分组将阻止您获得所需的密钥|r
>>|cRXP_WARN_你需要经过训练|r|T132331:0|t[Vanish]|cRXP_WARN_to才能做到这一点|r
.aura 9991
.aura 9810
step << Rogue
#season 2
.gossipoption 96495,1 >>悄悄地越过|cRXP_ENEMY_Rethilgore|r，与|cRXP_FRIENDLY_Dathstalker Adamant|r交谈，然后向后消失。他会为你开门的
.target Deathstalker Adamant
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
#completewith next
>>将|cRXP_ENEMY_Gemela|r上的|T133644:0|t[拾取口袋]用于|T134243:0|t[|cRXD_OOT_Sister’s Half-Key|r]
>>|cRXP_WARN_她在底层的餐厅里|r
.collect 210213,1 
.mob Gemela
.aura 9991
.aura 9810
step << Rogue
#season 2
>>使用|cRXP_ENEMY_Gefall|r上的|T133644:0|t[拾取口袋]用于|T134244:0|t[|cRXX_LOOT_Browther的半钥匙|r]
>>|cRXP_WARN_他位于二楼餐厅的上方|r
.collect 210212,1 
.mob Gefell
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
>>将|cRXP_ENEMY_Gemela|r上的|T133644:0|t[拾取口袋]用于|T134243:0|t[|cRXD_OOT_Sister’s Half-Key|r]
>>|cRXP_WARN_她在底层的餐厅里|r
.collect 210213,1 
.mob Gemela
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
.use 210212 >>回到外面的院子，进入马厩。组合|T237379:0|t[|cRXP_OOT_Twin Key|r]的两个键
.collect 210209,1 
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
>>打开马厩中的|cRXP_PICK_饰箱|r，以获取|cRXP_LOOT_Horn of Xelthos|r
.complete 78261,1 
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>单击银松林中的|cRXP_PICK_Dead Drop|r
.turnin 78261 >>Turn in The Horn of Xelthos
.aura 9991
.aura 9810
.isQuestComplete 78261
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_您现在需要进入首都才能接收来自*C的邮件*|r
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Undercity >>Fly to the Undercity
.target Karos Razok
.zoneskip Undercity
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,68.290,38.043,5 >>|cRXP_WARN_前往: |cRXP_PICK_幽暗城|r. Check your mailbox for the letter from *C*|r
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_邮件到达后，打开邮箱阅读来自*C*的邮件。准备好后飞回银松|r
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher>>飞向坟墓
.target Michael Garrett
.zoneskip Silverpine Forest
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>单击银松林中的|cRXP_PICK_Dead Drop|r以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Deadly Brew|r]
.collect 203994,1 
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.train 400080 >>使用|T134419:0|t[|cRXP_FRONDLY_Rune of Deadly Brew|r]
.use 204795
.itemcount 204795,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Priest
#season 2
.goto Silverpine Forest,57.9,71.5
>>杀死|cRXP_ENEMY_Wailing Spirit|r。为|T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champions]掠夺它
>>|cRXP_WARN_这个NPC的重生时间至少为15分钟。如果需要，暂时跳过|r
.collect 205905,1
.mob Wailing Spirit
.train 425215,1
step << Priest
#season 2
#completewith StrikingTime
.train 425215 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_献身冠军的记忆]|cRXP_WARN_训练|r|T237566:0|t[扭曲的命运]
>>|cRXP_WARN_你必须有一个|r|T237569:0|t|T136077:0|t[冥想]|cRXP_WARN_buff，方法是在|cRX_PICK_Loa Shrine|r前面键入|r/knee|cRXP-WARN_in（在杜罗塔或荒原中），或者在另一位牧师为你祈祷时跪在他们面前|r << Troll
>>|cRXP_WARN_你必须有一个|r|T237569:0|t|T136077:0|t[冥想]|cRXP_WARN_buff，在墓地键入|r/knee|cRXP-WARN_at，或者在另一位牧师为你祈祷时跪在他们面前|r << Undead
.use 205905
.itemcount 205905,1
step
#completewith next
.zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r
.zoneskip Hillsbrad Foothills
step
#label StrikingTime
.goto Hillsbrad Foothills,20.79,47.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵莱什|r
.accept 494 >>接任务: |cRXP_LOOT_进攻的时机|r
.target Deathstalker Lesh
step
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >>Travel to Tarren Mill
step
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fp Tarren Mill>>获取Tarren Mill飞行路线
.target Zarise
step << Rogue
.goto Hillsbrad Foothills,61.55,19.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟尔格·希诺特|r
.turnin 2479 >>交任务: |cRXP_FRIENDLY_希诺特的帮助|r
.accept 2480 >>接任务: |cRXP_WARN_希诺特的帮助|r
.target Serge Hinott
step << Rogue
.goto Hillsbrad Foothills,61.55,19.19
>>等待|cRXP_FRIENDLY_Hinott|r完成固化
.complete 2480,1 
step << Rogue
.goto Hillsbrad Foothills,61.64,19.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟尔格·希诺特|r
.turnin 2480 >>交任务: |cRXP_FRIENDLY_希诺特的帮助|r
.target Serge Hinott
step << Rogue
#completewith TarrenMillPickups
.cast 10723 >>使用|T134807:0|t[Hinot's Oil]治疗|T136230:0|t[TTouch of Zanzil]
step << Rogue
#completewith TarrenMillPickups
>>工艺|T132273:0|t[速毒]
.collect 6947,20,1067,1 
step
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师林度恩|r
.turnin 1065 >>交任务: |cRXP_FRIENDLY_塔伦米尔之旅|r
.accept 1066 >>接任务: |cRXP_LOOT_无辜者之血|r
.turnin 493 >>交任务: |cRXP_FRIENDLY_前往希尔斯布莱德丘陵|r
.accept 496 >>接任务: |cRXP_LOOT_受难药剂|r
.accept 501 >>接任务: |cRXP_LOOT_痛苦药剂|r
.target Apothecary Lydon
.maxlevel 27
step
#optional
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师林度恩|r
.turnin 1065 >>交任务: |cRXP_FRIENDLY_塔伦米尔之旅|r
.accept 1066 >>接任务: |cRXP_LOOT_无辜者之血|r
.turnin 493 >>交任务: |cRXP_FRIENDLY_前往希尔斯布莱德丘陵|r
.target Apothecary Lydon
step << Shaman
.goto Hillsbrad Foothills,62.18,20.78
.use 7768 >>在Tarren Mill中间的井处使用|T132829:0|t[空的红色水皮]
.complete 1536,1 
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.turnin 494 >>交任务: |cRXP_FRIENDLY_进攻的时机|r
.accept 527 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.target High Executor Darthalia
.maxlevel 27
step
#optional
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.turnin 494 >>交任务: |cRXP_FRIENDLY_进攻的时机|r
.target High Executor Darthalia
step
.goto Hillsbrad Foothills,62.64,20.76
>>单击|cRXP_FRIENDLY_Wanted海报|r
.accept 549 >>接任务: |cRXP_LOOT_通缉：辛迪加成员|r
step
.goto Hillsbrad Foothills,63.24,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.accept 498 >>接任务: |cRXP_LOOT_拯救行动|r
.target Krusk
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kayren交谈|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
.collect 2515,1800,549,1 << Hunter 
.target Kayren Soothallow
.xp >25,1
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kayren交谈|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800,549,1 << Hunter 
.target Kayren Soothallow
.xp <25,1

step
#label TarrenMillPickups
.goto Hillsbrad Foothills,62.56,19.65
>>单击|cRXP_FRIENDLY_Wanted海报|r
.accept 567 >>接任务: |cRXP_LOOT_危险！|r
.maxlevel 27
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
step << Shaman/Warrior
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
.vendor >>|cRXP_BUY_从他那里买一把|r|T132408:0|t[Merciless Axe]|cRXP_Buy_如果它用完了，但你还没有|r
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Ott
step << Rogue
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
.vendor >>|cRXP_BUY_从他那里买一把|r|T135640:0|t[宽刃刀]|cRXP_Buy_如果它用完了，但你还没有|r
.money <2.8372
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
.target Ott
step << Hunter
#completewith next
.goto Hillsbrad Foothills,62.31,19.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Theodore交谈|r
.stable >>稳定你的宠物。你很快就会驯服一只|cRXP_ENEMY_Gray Bear|r
.target Theodore Mont Claire
step << Hunter
.goto Hillsbrad Foothills,57.93,27.85,60,0
.goto Hillsbrad Foothills,58.88,32.28,60,0
.goto Hillsbrad Foothills,61.77,36.16,60,0
.goto Hillsbrad Foothills,57.93,27.85
.cast 1515 >>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on a|cRXX_ENEMY_Gray Bear|r驯服它|r
.train 16829 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132140:0|t[爪（等级3）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.mob Gray Bear
step << Hunter
.goto Hillsbrad Foothills,62.31,19.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Theodore交谈|r
.stable >>放弃|cRXP_ENEMY_Gray Bear|r并取回您的普通宠物
.target Theodore Mont Claire
step << Rogue
#completewith Durnholde1
.cast 8679 >>在武器上使用|T132273:0|t[即时毒药]
.itemcount 6947,2
step
#completewith next
>>杀死途中的|cRXP_ENEMY_Bears|r和|cRXX_ENEMY_Spiders|r。掠夺他们的|cRXP_Loot_Tongues|r和|cRXX_Loot_Ichor|r
>>|cRXP_WARN_避免|r|cRXP_ENEMY_年长灰熊|r|cRXP_WARN_and|r| cRXP__ENEMY_巨型苔藓爬行器|r|d它们的等级很高，不值得杀死|r
.complete 496,1 
.complete 496,2 
.mob Forest Moss Creeper
.mob Gray Bear
.mob Vicious Gray Bear
.isOnQuest 496
step
#label Durnholde1
.goto Hillsbrad Foothills,76.57,46.48,120 >>Run to Durnholde Keep
step
#completewith Drull
>>杀死|cRXP_ENEMY_Syndicate盗贼|r、|cRXD_ENEMY_Watchmen|r和|cRXP_ENEMY_Shadow法师|r。
>>掠夺|cRXP_ENEMY_Shadow法师|r以获得他们的|cRXX_Loot_无辜血瓶|r
.complete 549,1 
.mob +Syndicate Rogue
.complete 549,2 
.mob +Syndicate Watchman
.complete 1066,1 
.mob +Syndicate Shadow Mage
step
#completewith Togthar
.goto Hillsbrad Foothills,79.55,41.85,15,0
>>杀死|cRXP_ENEMY_Jailer Eston|r。抢走他的|cRXX_Loot_铁钥匙|r
>>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'ar的|r兵营前找到|r
.collect 3467,1,498,1 
.mob Jailor Eston
step
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19
>>杀死|cRXP_ENEMY_Jailr Marlgen|r。抢走他的|cRXX_Loot_金钥匙|r
>>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'tar|r的前面或塔的底部找到|r
.collect 3499,1,498,2 
.mob Jailor Marlgen
step
#label Togthar
.goto Hillsbrad Foothills,79.79,39.65
>>单击地面上的|cRXP_PICK_Ball and Chain |r
.complete 498,2 
step << Rogue
#season 2
.goto Hillsbrad Foothills,80.2,39.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克瑞斯·李盖斯|r
>>|cRXP_BUY_从她那里购买|r|T133469:0|t[热门提示]|cRXP_Buy_|r
.collect 210330,1 
.target Kris Legace
.train 400102,1
step << Rogue/Hunter/Shaman
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
>>从她那里购买|T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r]和|T132603:0|t[|cRXP-FRIENDLY_Wolf Bracers|r]
.vendor >>供应商和维修
.target Kris Legace
.money <1.1374
.itemcount 4831,<1
.itemcount 4794,<1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
.isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
>>从她那里购买|T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r]，如果它们已经用完
.vendor >>供应商和维修
.target Kris Legace
.money <0.7859
.itemcount 4831,<1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
>>从她那里购买|T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]（如果有）
.vendor >>供应商和维修
.target Kris Legace
.money <0.3515
.itemcount 4794,<1
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
.isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
#completewith Drull
+装备|T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r]和|T132603:0|t[|cRXP-FRIENDLY_Wolf Bracers|r]
.use 4831
.use 4794
.itemcount 4831,1
.itemcount 4794,1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
.isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
#completewith Drull
+装备|T134590:0|t[|cRXP_FRIENDLY_Stalking长裤|r]
.use 4831
.itemcount 4831,1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
#completewith Drull
+装备|T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
.use 4794
.itemcount 4794,1
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
.isOnQuest 498
step << !Rogue !Hunter !Shaman !Druid
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
.vendor >>供应商和维修
.target Kris Legace
.isOnQuest 498
step
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63
>>杀死|cRXP_ENEMY_Jailer Eston|r。抢走他的|cRXX_Loot_铁钥匙|r
>>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'tar|r的兵营前找到，也可以在|r|cRXP-FRIENDLY_Drull前找到|r
.collect 3467,1,498,1 
.mob Jailor Eston
step
#label Drull
.goto Hillsbrad Foothills,75.33,41.50
>>单击地面上的|cRXP_PICK_Ball and Chain |r
.complete 498,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate守望者|r
.complete 549,1 
.mob +Syndicate Rogue
.complete 549,2 
.mob +Syndicate Watchman
step
.loop 25,Hillsbrad Foothills,67.88,47.93,67.06,50.84,66.24,48.79,65.36,48.65,64.86,47.05,65.37,46.46,66.13,45.63,67.22,45.85
>>杀死|cRXP_ENEMY_Syndicate影子法师|r。掠夺他们的|cRXP_Loot_Vials|r
>>|cRXP_WARN_它们中的更多可以在城堡西南部的塔楼上找到|r
.complete 1066,1 
.mob Syndicate Shadow Mage
step
.loop 25,Hillsbrad Foothills,67.88,47.93,67.06,50.84,66.24,48.79,65.36,48.65,64.86,47.05,65.37,46.46,66.13,45.63,67.22,45.85
>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate守望者|r
>>|cRXP_WARN_它们中的更多可以在城堡西南部的塔楼上找到|r
.complete 549,1 
.mob +Syndicate Rogue
.complete 549,2 
.mob +Syndicate Watchman
step
#completewith next
>>在返回塔伦磨坊的途中杀死|cRXP_ENEMY_Bears|r和|cRXX_ENEMY_Spiders|r。掠夺他们的|cRXP_Loot_Tongues|r和|cRXX_Loot_Ichor|r
>>|cRXP_WARN_避免|r|cRXP_ENEMY_年长灰熊|r|cRXP_WARN_and|r| cRXP__ENEMY_巨型苔藓爬行器|r|d它们的等级很高，不值得杀死|r
.complete 496,1 
.complete 496,2 
.mob Forest Moss Creeper
.mob Gray Bear
.mob Vicious Gray Bear
.isOnQuest 496
step
#completewith next
.goto Hillsbrad Foothills,62.37,20.32
.subzone 272 >>Return to Tarren Mill
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r, Darthalia
.turnin 498 >>交任务: |cRXP_FRIENDLY_拯救行动|r
.goto Hillsbrad Foothills,63.24,20.65
.turnin 549 >>交任务: |cRXP_FRIENDLY_通缉：辛迪加成员|r
.goto Hillsbrad Foothills,62.37,20.32
.target Krusk
.target High Executor Darthalia
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kayren交谈|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
.collect 2515,1800,501,1 << Hunter 
.target Kayren Soothallow
.xp >25,1
.itemcount 2515,<1000
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kayren交谈|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800,501,1 << Hunter 
.target Kayren Soothallow
.xp <25,1
.itemcount 3030,<1000
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
.isOnQuest 527
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, |cRXP_FRIENDLY_乌比|r
.turnin 1066 >>交任务: |cRXP_FRIENDLY_无辜者之血|r
.turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.goto Hillsbrad Foothills,61.44,19.05
.turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.goto Hillsbrad Foothills,61.53,19.17
.target Apothecary Lydon
.target Umpi
.isQuestComplete 496
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, |cRXP_FRIENDLY_乌比|r
.turnin 1066 >>交任务: |cRXP_FRIENDLY_无辜者之血|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.goto Hillsbrad Foothills,61.44,19.05
.turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.goto Hillsbrad Foothills,61.53,19.17
.target Apothecary Lydon
.isQuestTurnedIn 496
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 1066 >>交任务: |cRXP_FRIENDLY_无辜者之血|r
.goto Hillsbrad Foothills,61.44,19.05
.target Apothecary Lydon
step << Rogue
#season 2
.use 210330 >>打开|T133469:0|t[热提示]
.collect 210323,1 
.collect 210329,1 
.train 400102,1
step << Rogue
#completewith next
.zone Western Plaguelands >>前往: |cRXP_PICK_西瘟疫之地|r
step << Rogue
#season 2
.goto Western Plaguelands,59.4,84.5
>>将|cRXP_PICK_Rusty Safe|r在水中打开|T134419:0|t[|cRXP-FRIENDLY_Rune of Venom|r]
.collect 210322,1 
.train 400102,1
step << Rogue
#season 2
.train 400102 >>使用|T134419:0|t[|cRXP_FRONDLY_Rune of Venom|r]
.use 210322
.itemcount 210322,1
step
#completewith FarmerRay
.destroy 3499 >>摧毁: |cRXP_ENEMY_抛光的金钥匙|r, 它在你的背包中. 不再需要它了
step
#completewith Fields1
>>杀死|cRXP_ENEMY_灰熊|r和|cRXX_ENEMY_饥饿的山狮|r。掠夺它们的|cRXD_Loot_灰熊舌头|r和| cRXP_Loot_山狮血|r
.complete 496,1 
.complete 501,1 
.mob Gray Bear
.mob Vicious Gray Bear
.mob Starving Mountain Lion
.isOnQuest 496
step
#completewith Fields1
>>杀死|cRXP_ENEMY_饥饿的美洲狮|r。掠夺它们的|cRXX_Loot_美洲狮血|r
.complete 501,1 
.mob Starving Mountain Lion
.isQuestTurnedIn 496
step
#label Fields1
.goto Hillsbrad Foothills,36.7,39.4
.subzone 286 >>前往希尔斯布莱德球场
.isOnQuest 527
step
#completewith FarmerRay
>>杀死田地内和周围的|cRXP_ENEMY_Hillsbrad Farmers|r和|cRXX_ENEMY_Hilsbrad农场工人|r
.complete 527,1 
.complete 527,2 
.mob Hillsbrad Farmer
.mob Hillsbrad Farmhand
.isOnQuest 527
step
.goto Hillsbrad Foothills,36.7,39.4,60,0
.goto Hillsbrad Foothills,35.2,37.6,45,0
.goto Hillsbrad Foothills,35.1,41.0,60,0
.goto Hillsbrad Foothills,36.7,39.4,60,0
.goto Hillsbrad Foothills,35.2,37.6,45,0
.goto Hillsbrad Foothills,35.1,41.0,60,0
.goto Hillsbrad Foothills,36.7,39.4
>>杀死|cRXP_ENEMY_Farmer Getz|r。他可以在房子、谷仓或田地里
.complete 527,4 
.unitscan Farmer Getz
.isOnQuest 527
step
#label FarmerRay
.goto Hillsbrad Foothills,33.65,35.44,30,0
.goto Hillsbrad Foothills,32.90,35.23,10,0
.goto Hillsbrad Foothills,33.23,34.65,10,0
.goto Hillsbrad Foothills,32.69,34.77,8,0
.goto Hillsbrad Foothills,32.88,34.99,8,0
.goto Hillsbrad Foothills,33.28,34.65
>>杀死|cRXP_ENEMY_Farmer Ray|r
>>|cRXP_WARN_它可以在外面的葡萄藤下或房子的一楼或二楼产卵|r
.complete 527,3 
.unitscan Farmer Ray
.isOnQuest 527
step
.goto Hillsbrad Foothills,31.30,37.08,40,0
.goto Hillsbrad Foothills,33.81,40.91,40,0
.goto Hillsbrad Foothills,35.49,40.36,40,0
.goto Hillsbrad Foothills,31.30,37.08
>>杀死田地内和周围的|cRXP_ENEMY_Hillsbrad Farmers|r和|cRXX_ENEMY_Hilsbrad农场工人|r
.complete 527,1 
.complete 527,2 
.mob Hillsbrad Farmer
.mob Hillsbrad Farmhand
.isOnQuest 527
step
#completewith TarrenMillTurnins2
>>杀死|cRXP_ENEMY_灰熊|r和|cRXX_ENEMY_饥饿的山狮|r。掠夺它们的|cRXD_Loot_灰熊舌头|r和| cRXP_Loot_山狮血|r
.complete 496,1 
.complete 501,1 
.mob Gray Bear
.mob Vicious Gray Bear
.mob Starving Mountain Lion
.isOnQuest 496
step
#completewith TarrenMillTurnins2
>>杀死|cRXP_ENEMY_饥饿的美洲狮|r。掠夺它们的|cRXX_Loot_美洲狮血|r
.complete 501,1 
.mob Starving Mountain Lion
.isQuestTurnedIn 496
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
.goto Hillsbrad Foothills,61.44,19.05
.turnin 527 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 528 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.37,20.32
.accept 546 >>接任务: |cRXP_LOOT_死亡的纪念品|r
.goto Hillsbrad Foothills,62.11,19.68
.target Apothecary Lydon
.target High Executor Darthalia
.target Deathguard Samsa
.isQuestComplete 496
.isQuestComplete 501
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.goto Hillsbrad Foothills,61.44,19.05
.turnin 527 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 528 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.37,20.32
.accept 546 >>接任务: |cRXP_LOOT_死亡的纪念品|r
.goto Hillsbrad Foothills,62.11,19.68
.target Apothecary Lydon
.target High Executor Darthalia
.target Deathguard Samsa
.isQuestComplete 496
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, Darthalia, |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
.goto Hillsbrad Foothills,61.44,19.05
.turnin 527 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 528 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.37,20.32
.accept 546 >>接任务: |cRXP_LOOT_死亡的纪念品|r
.goto Hillsbrad Foothills,62.11,19.68
.target Apothecary Lydon
.target High Executor Darthalia
.target Deathguard Samsa
.isQuestComplete 501
step
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.isQuestTurnedIn 496
step
.goto Hillsbrad Foothills,61.55,19.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌比|r
.turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.target Umpi
.isQuestTurnedIn 496
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Darthalia, |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.turnin 527 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 528 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.37,20.32
.accept 546 >>接任务: |cRXP_LOOT_死亡的纪念品|r
.goto Hillsbrad Foothills,62.11,19.68
.target High Executor Darthalia
.target Deathguard Samsa
.isQuestComplete 527
step
#optional
#label TarrenMillTurnins2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Darthalia, |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.accept 528 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.37,20.32
.accept 546 >>接任务: |cRXP_LOOT_死亡的纪念品|r
.goto Hillsbrad Foothills,62.11,19.68
.target High Executor Darthalia
.target Deathguard Samsa
.isQuestTurnedIn 527
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
.isOnQuest 528
step
#completewith Fields2
>>杀死|cRXP_ENEMY_灰熊|r和|cRXX_ENEMY_饥饿的山狮|r。掠夺它们的|cRXD_Loot_灰熊舌头|r和| cRXP_Loot_山狮血|r
.complete 496,1 
.complete 501,1 
.mob Gray Bear
.mob Vicious Gray Bear
.mob Starving Mountain Lion
.isOnQuest 496
.isOnQuest 501
step
#completewith Fields2
>>杀死|cRXP_ENEMY_灰熊|r。掠夺它们的|cRXX_Loot_灰熊舌头|r
.complete 496,1 
.mob Gray Bear
.mob Vicious Gray Bear
.mob Starving Mountain Lion
.isQuestTurnedIn 501
.isOnQuest 496
step
#completewith Fields2
>>杀死|cRXP_ENEMY_饥饿的美洲狮|r。掠夺它们的|cRXX_Loot_美洲狮血|r
.complete 501,1 
.mob Starving Mountain Lion
.isQuestTurnedIn 496
.isOnQuest 501
step
#label Fields2
.goto Hillsbrad Foothills,32.67,35.33
.subzone 286 >>前往希尔斯布莱德球场
.isOnQuest 528
step
#completewith HillsbradPeasants
>>杀死|cRXP_ENEMY_Hillsbrad人类|r。掠夺他们的|cRXX_Loot_Sulls|r。
>>|cRXP_WARN_现在不需要完成此任务|r
.complete 546,1 
.isOnQuest 546
step
#completewith next
.goto Hillsbrad Foothills,32.67,35.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦雷|r
>>|cRXP_WARN_等待RP结束，然后杀死|r|cRXP_ENEMY_Enraged Stanley|r
>>|cRXP_ENEMY_愤怒的Stanley |r|cRXP_WARN_获得了完整任务的经验|r
.turnin 502 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.timer 9,Stanley RP (BE ALERT)
.mob Stanley
.isQuestTurnedIn 501
step
.line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
.goto Hillsbrad Foothills,36.54,39.44,40,0
.goto Hillsbrad Foothills,35.36,38.73,40,0
.goto Hillsbrad Foothills,33.98,38.78,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,32.58,38.17,40,0
.goto Hillsbrad Foothills,32.66,36.08,40,0
.goto Hillsbrad Foothills,32.92,35.25,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,32.65,41.12,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,31.27,42.06,40,0
.goto Hillsbrad Foothills,30.53,40.56,40,0
.goto Hillsbrad Foothills,31.27,42.06,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,32.41,43.85,40,0
.goto Hillsbrad Foothills,32.46,44.59,40,0
.goto Hillsbrad Foothills,32.29,45.13,40,0
.goto Hillsbrad Foothills,32.45,42.58,40,0
.goto Hillsbrad Foothills,32.56,40.03,40,0
.goto Hillsbrad Foothills,36.54,39.44
>>杀死|cRXP_ENEMY_Citizen Wilkes |r
>>|cRXP_WARN_他在镇上的道路上巡逻|r
.complete 567,2 
.unitscan Citizen Wilkes
.unitscan Enraged Stanley
.isOnQuest 567
step
.goto Hillsbrad Foothills,32.67,35.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦雷|r
>>|cRXP_WARN_等待RP结束，然后杀死|r|cRXP_ENEMY_Enraged Stanley|r
>>|cRXP_ENEMY_愤怒的Stanley |r|cRXP_WARN_获得了完整任务的经验|r
.turnin 502 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.timer 9,Stanley RP (BE ALERT)
.mob Stanley
.isQuestTurnedIn 501
step
#completewith next
>>杀死|cRXP_ENEMY_Hillsbrad农民|r
.complete 528,1 
.mob Hillsbrad Peasant
.isQuestTurnedIn 527
step
#label Kalaba
.goto Hillsbrad Foothills,36.00,46.50
>>杀死|cRXP_ENEMY_Farmer Kalaba|r
.complete 567,4 
.mob Farmer Kalaba
.isOnQuest 567
step
#label HillsbradPeasants
.loop 25,Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
>>杀死|cRXP_ENEMY_Hillsbrad农民|r
.complete 528,1 
.mob Hillsbrad Peasant
.isQuestTurnedIn 527
step
#completewith next
>>完成杀戮|cRXP_ENEMY_Mountain Lions |r。掠夺它们的|cRXX_Loot_Blood|r
.complete 501,1 
.mob Starving Mountain Lion
.isOnQuest 501
step
.loop 25,Hillsbrad Foothills,40.88,33.87,40.86,37.40,40.85,39.42,38.50,38.04,37.68,41.23,38.71,42.66,40.40,44.65,44.39,41.34,45.23,39.62,43.87,37.01,49.75,34.33,52.06,36.86,51.91,32.97,52.39,29.27,57.38,22.85,57.09,25.67,58.08,28.07,56.88,28.85,59.68,30.90,57.71,34.06,59.89,36.74,62.63,37.64,64.73,38.03,66.52,34.52
>>完成杀死|cRXP_ENEMY_Bears|r。掠夺他们的|cRXX_Loot_Tongues|r
.complete 496,1 
.mob Gray Bear
.mob Vicious Gray Bear
.isOnQuest 496
step
.loop 25,Hillsbrad Foothills,40.88,33.87,40.86,37.40,40.85,39.42,38.50,38.04,37.68,41.23,38.71,42.66,40.40,44.65,44.39,41.34,45.23,39.62,43.87,37.01,49.75,34.33,52.06,36.86,51.91,32.97,52.39,29.27,57.38,22.85,57.09,25.67,58.08,28.07,56.88,28.85,59.68,30.90,57.71,34.06,59.89,36.74,62.63,37.64,64.73,38.03,66.52,34.52
>>完成杀戮|cRXP_ENEMY_Mountain Lions |r。掠夺它们的|cRXX_Loot_Blood|r
.complete 501,1 
.isOnQuest 501
step
.loop 25,Hillsbrad Foothills,62.85,38.74,62.24,39.96,60.92,37.92,59.62,33.33,56.88,29.73,59.80,27.72,57.63,24.16,56.47,16.42,59.36,14.55,60.54,13.67,62.65,12.90,64.43,10.22,65.18,6.93,65.31,5.76,66.90,9.02,70.39,8.89,68.86,10.18,67.35,12.95,71.38,19.81,71.78,21.89,64.85,24.92,66.68,28.15,69.76,31.89,67.62,37.65,62.85,38.74
>>完成杀死|cRXP_ENEMY_Forest Moss Creeper|r和|cRXX_ENEMY_Giant Moss Creeps|r。掠夺它们的|cRXD_Loot_Ichor|r
.complete 496,2 
.mob Forest Moss Creeper
.mob Giant Moss Creeper
.isOnQuest 496
step
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
.isQuestComplete 496
.isQuestComplete 501
step
#optional
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.isQuestComplete 496
step
#optional
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
.isQuestComplete 501
step
#optional
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.isQuestTurnedIn 496
step
#optional
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
.isQuestTurnedIn 501
step
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 1067 >>接任务: |cRXP_WARN_返回雷霆崖|r
.isQuestTurnedIn 1066
step
.goto Hillsbrad Foothills,61.53,19.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌比|r
.turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.isQuestTurnedIn 496
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 528 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 529 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.isQuestComplete 528
step
#optional
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.accept 529 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.isQuestTurnedIn 528
step << skip
#label Hillsbradturnins3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, |cRXP_FRIENDLY_乌比|r, Darthalia
.turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
.accept 1067 >>接任务: |cRXP_WARN_返回雷霆崖|r
.goto Hillsbrad Foothills,61.44,19.05
.turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.goto Hillsbrad Foothills,61.53,19.17
.turnin 528 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 529 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.37,20.32
.target Apothecary Lydon
.target Umpi
.target High Executor Darthalia


step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, |cRXP_FRIENDLY_乌比|r, Darthalia
.turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.accept 1067 >>接任务: |cRXP_WARN_返回雷霆崖|r
.goto Hillsbrad Foothills,61.44,19.05
.turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.goto Hillsbrad Foothills,61.53,19.17
.turnin 528 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 529 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.37,20.32
.target Apothecary Lydon
.target Umpi
.target High Executor Darthalia
.isOnQuest 496
step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, |cRXP_FRIENDLY_乌比|r, Darthalia
.turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
.accept 1067 >>接任务: |cRXP_WARN_返回雷霆崖|r
.goto Hillsbrad Foothills,61.44,19.05
.turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.goto Hillsbrad Foothills,61.53,19.17
.turnin 528 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 529 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.37,20.32
.target Apothecary Lydon
.target Umpi
.target High Executor Darthalia
.isOnQuest 501
step << skip
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Lydon, |cRXP_FRIENDLY_乌比|r, Darthalia
.turnin 496 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.accept 499 >>接任务: |cRXP_LOOT_受难药剂|r
.turnin 501 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.accept 502 >>接任务: |cRXP_LOOT_痛苦药剂|r
.accept 1067 >>接任务: |cRXP_WARN_返回雷霆崖|r
.goto Hillsbrad Foothills,61.44,19.05
.turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.goto Hillsbrad Foothills,61.53,19.17
.turnin 528 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 529 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.37,20.32
.target Apothecary Lydon
.target Umpi
.target High Executor Darthalia
.isQuestTurnedIn 496
.isOnQuest 501
step << skip
#label Hillsbradturnins3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r and |cRXP_FRIENDLY_Darthalia|r
.accept 1067 >>接任务: |cRXP_WARN_返回雷霆崖|r
.goto Hillsbrad Foothills,61.44,19.05
.turnin 528 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 529 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.goto Hillsbrad Foothills,62.37,20.32
.target Apothecary Lydon
.target High Executor Darthalia
step << skip
.goto Hillsbrad Foothills,61.55,19.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌比|r
.turnin 499 >>交任务: |cRXP_FRIENDLY_受难药剂|r
.target Umpi
.isOnQuest 499
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
.isOnQuest 529
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kayren交谈|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
.collect 2515,1800,516,1 << Hunter 
.target Kayren Soothallow
.itemcount 2515,<1000
.xp >25,1
step << Hunter
.goto Hillsbrad Foothills,62.56,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kayren交谈|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800,516,1 << Hunter 
.target Kayren Soothallow
.xp <25,1
.itemcount 3030,<1000
step << Shaman/Warrior
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
.vendor >>|cRXP_BUY_从他那里买一把|r|T132408:0|t[Merciless Axe]|cRXP_Buy_如果它用完了，但你还没有|r
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Ott
step << Rogue
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
.vendor >>|cRXP_BUY_从他那里买一把|r|T135640:0|t[宽刃刀]|cRXP_Buy_如果它用完了，但你还没有|r
.money <2.8372
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
.target Ott
step
#label Fields3
.goto Hillsbrad Foothills,32.67,35.33
.subzone 286 >>前往希尔斯布莱德球场
.isOnQuest 529
step
#completewith HillsbradBlacksmith
.goto Hillsbrad Foothills,32.67,35.33,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦雷|r
>>|cRXP_WARN_等待RP结束，然后杀死|r|cRXP_ENEMY_Enraged Stanley|r
>>|cRXP_ENEMY_愤怒的Stanley |r|cRXP_WARN_获得了完整任务的经验|r
.turnin 502 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.timer 9,Stanley RP (BE ALERT)
.mob Stanley
.isQuestTurnedIn 501
step
#completewith next
>>杀死|cRXP_ENEMY_Blacksmith Verringtan|r和|cRXX_ENEMY_Hillsbrad学徒Blacksmiths|r
.complete 529,1 
.complete 529,2 
.unitscan Blacksmith Verringtan
.mob Hillsbrad Apprentice Blacksmith
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,32.02,45.45
>>为|T132761:0|t[|cRXP_Loot_Shipment of Iron|r]掠夺|cRXP_PICK_Shipment of Iron|r
.complete 529,3 
.isQuestTurnedIn 528
step
#label HillsbradBlacksmith
.goto Hillsbrad Foothills,32.65,45.48,20,0
.goto Hillsbrad Foothills,31.87,46.66,20,0
.goto Hillsbrad Foothills,32.23,45.32
>>杀死|cRXP_ENEMY_Blacksmith Verringtan|r和|cRXX_ENEMY_Hillsbrad学徒Blacksmiths|r
.complete 529,1 
.complete 529,2 
.unitscan Blacksmith Verringtan
.mob Hillsbrad Apprentice Blacksmith
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,32.67,35.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦雷|r
>>|cRXP_WARN_等待RP结束，然后杀死|r|cRXP_ENEMY_Enraged Stanley|r
>>|cRXP_ENEMY_愤怒的Stanley |r|cRXP_WARN_获得了完整任务的经验|r
.turnin 502 >>交任务: |cRXP_FRIENDLY_痛苦药剂|r
.timer 9,Stanley RP (BE ALERT)
.mob Stanley
.isQuestTurnedIn 501
step
#optional
.loop 25,Hillsbrad Foothills,36.64,45.21,36.03,44.40,34.36,44.62,33.82,45.75,33.25,48.54,34.59,48.13,35.29,47.28,36.49,47.49,36.64,45.21
.xp 24 >>升级到24级
step << Rogue
#season 2
#completewith next
.zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
.train 400080,1
step << Rogue
#season 2
.goto Silverpine Forest,47.12,71.01
>>单击|cRXP_PICK_Dead Drop|r
.accept 78261 >>Accept The Horn of Xelthos
.train 400080,1
step << Rogue
#season 2
#completewith next
.goto Silverpine Forest,44.87,67.86
.zone 209 >>Enter Shadowfang Keep
>>|cRXP_WARN_你必须独自完成下一部分！分组将阻止您获得所需的密钥|r
>>|cRXP_WARN_你需要经过训练|r|T132331:0|t[Vanish]|cRXP_WARN_to才能做到这一点|r
step << Rogue
#season 2
.gossipoption 96495,1 >>悄悄地越过|cRXP_ENEMY_Rethilgore|r，与|cRXP_FRIENDLY_Dathstalker Adamant|r交谈，然后向后消失。他会为你开门的
.target Deathstalker Adamant
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
#completewith next
>>将|cRXP_ENEMY_Gemela|r上的|T133644:0|t[拾取口袋]用于|T134243:0|t[|cRXD_OOT_Sister’s Half-Key|r]
>>|cRXP_WARN_她在底层的餐厅里|r
.collect 210213,1 
.mob Gemela
.isOnQuest 78261
step << Rogue
#season 2
>>使用|cRXP_ENEMY_Gefall|r上的|T133644:0|t[拾取口袋]用于|T134244:0|t[|cRXX_LOOT_Browther的半钥匙|r]
>>|cRXP_WARN_他位于二楼餐厅的上方|r
.collect 210212,1 
.mob Gefell
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
>>将|cRXP_ENEMY_Gemela|r上的|T133644:0|t[拾取口袋]用于|T134243:0|t[|cRXD_OOT_Sister’s Half-Key|r]
>>|cRXP_WARN_她在底层的餐厅里|r
.collect 210213,1 
.mob Gemela
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
.use 210212 >>回到外面的院子，进入马厩。组合|T237379:0|t[|cRXP_OOT_Twin Key|r]的两个键
.collect 210209,1 
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
>>打开马厩中的|cRXP_PICK_饰箱|r，以获取|cRXP_LOOT_Horn of Xelthos|r
.complete 78261,1 
.isOnQuest 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>单击银松林中的|cRXP_PICK_Dead Drop|r
.turnin 78261 >>Turn in The Horn of Xelthos
.isQuestComplete 78261
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_您现在需要进入首都才能接收来自*C的邮件*|r
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Undercity >>Fly to the Undercity
.target Karos Razok
.zoneskip Undercity
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,68.290,38.043,5 >>|cRXP_WARN_前往: |cRXP_PICK_幽暗城|r. Check your mailbox for the letter from *C*|r
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 6762 >>训练你的职业技能
.target Carolyn Ward
.xp <24,1
.xp >26,1
.dungeon !SFK
.zoneskip Undercity,1
step << Rogue
#season 2
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 1833 >>训练你的职业技能
.target Carolyn Ward
.xp <26,1
.dungeon !SFK
.zoneskip Undercity,1
step
#sticky
#completewith EnterSFK
.subzone 310 >>现在你应该在寻找一个团体来保持影方
.dungeon SFK
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 529 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.target High Executor Darthalia
.isQuestComplete 529
.dungeon SFK
.zoneskip Hillsbrad Foothills,1
step
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fly The Sepulcher>>飞向坟墓
.target Zarise
.zoneskip Hillsbrad Foothills,1
.dungeon SFK
step << Rogue
#season 2
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher>>飞向坟墓
.target Michael Garrett
.zoneskip Undercity,1
.dungeon SFK
step
.goto Silverpine Forest,43.43,40.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官哈德瑞克|r
.accept 1098 >>接任务: |cRXP_WARN_影牙城堡里的亡灵哨兵|r
.target High Executor Hadrec
.dungeon SFK
step
.goto Silverpine Forest,44.22,39.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
.accept 1014 >>接任务: |cRXP_WARN_除掉阿鲁高|r
.target Dalar Dawnweaver
.dungeon SFK
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>单击银松林中的|cRXP_PICK_Dead Drop|r以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Deadly Brew|r]
.collect 203994,1 
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.train 400080 >>使用|T134419:0|t[|cRXP_FRONDLY_Rune of Deadly Brew|r]
.use 204795
.itemcount 204795,1
.dungeon SFK
.isQuestTurnedIn 78261
step
#label EnterSFK
.goto Silverpine Forest,44.87,67.86
.zone 310 >>进入SFK实例门户。区域在
.dungeon SFK
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vincent|r
.turnin 1098 >>交任务: |cRXP_FRIENDLY_影牙城堡里的亡灵哨兵|r
.target Deathstalker Vincent
.dungeon SFK
.isOnQuest 1098
step
>>从吞噬者|cRXP_ENEMY_Fenrus|r房间的书架上偷走|cRX_PICK_ Ur|r之书
.complete 1013,1 
.dungeon SFK
.isOnQuest 1013
step
>>杀死|cRXP_ENEMY_Arugal|r大法师。掠夺他的|cRXX_Loot_Head |r
.complete 1014,1 
.mob Archmage Arugal
.dungeon SFK
.isOnQuest 1014
step
#hardcore
#completewith FlytoUC
.goto Silverpine Forest,45.51,41.26,100 >>Travel to The Sepulcher
.dungeon SFK
step
#softcore
#completewith FlytoUC
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
.dungeon SFK
step
.goto Silverpine Forest,43.43,40.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官哈德瑞克|r
.turnin 1098 >>交任务: |cRXP_FRIENDLY_影牙城堡里的亡灵哨兵|r
.target High Executor Hadrec
.dungeon SFK
.isQuestComplete 1098
step
.goto Silverpine Forest,44.22,39.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
.turnin 1014 >>交任务: |cRXP_FRIENDLY_除掉阿鲁高|r
.target Dalar Dawnweaver
.dungeon SFK
.isQuestComplete 1014
step << Mage
#completewith BookofUrTurnin
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
.dungeon SFK
step << !Mage
#label FlytoUC
#completewith BookofUrTurnin
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Undercity >>Fly to the Undercity
.target Karos Razok
.zoneskip Undercity
.dungeon SFK
step << Rogue
#season 2
.goto Undercity,68.290,38.043,5 >>|cRXP_WARN_前往: |cRXP_PICK_幽暗城|r. Check your mailbox for the letter from *C*|r
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step
#label BookofUrTurnin
.goto Undercity,53.74,54.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝尔杜加|r
.turnin 1013 >>交任务: |cRXP_FRIENDLY_乌尔之书|r
.target Keeper Bel'dugur
.dungeon SFK
.isQuestComplete 1013
step << Warrior
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 5308 >>训练你的职业技能
.target Angela Curthas
.xp <24,1
.xp >26,1
.dungeon SFK
step << Warrior
#optional
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 6178 >>训练你的职业技能
.target Angela Curthas
.xp <26,1
.dungeon SFK
step << Rogue
.goto Undercity,75.19,51.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ezekiel|r|cRXP_BUY_交谈。从他那里购买|r|T133849:0|t[衰变的灰尘]|cRXP_Buy_和|r|T132793:0|t[Empty Vials]|r
.collect 2928,40,1067,1 
.collect 3371,40,1067,1 
.target Ezekiel Graves
.dungeon SFK
step << Rogue
#completewith ThunderBluffHS
>>工艺|T132273:0|t[速毒]
.collect 6947,40,1067,1 
.dungeon SFK
step << Rogue
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 6762 >>训练你的职业技能
.target Carolyn Ward
.xp <24,1
.xp >26,1
.dungeon SFK
step << Rogue
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 1833 >>训练你的职业技能
.target Carolyn Ward
.xp <26,1
.dungeon SFK
step << Warlock
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 6223 >>训练你的职业技能
.target Richard Kerwin
.xp <24,1
.xp >26,1
.dungeon SFK
step << Warlock
#optional
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 1456 >>训练你的职业技能
.target Richard Kerwin
.xp <26,1
.dungeon SFK
step << Rogue
#season 2
#label DeadlyBrewPickup
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher>>飞向坟墓
.target Michael Garrett
.zoneskip Silverpine Forest
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>单击银松林中的|cRXP_PICK_Dead Drop|r以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Deadly Brew|r]
.collect 203994,1 
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.train 400080 >>使用|T134419:0|t[|cRXP_FRONDLY_Rune of Deadly Brew|r]
.use 204795
.itemcount 204795,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Druid
#completewith next
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
.goto Moonglade,36.026,41.374
>>|cRXP_WARN_在雷穆洛斯神殿为海狮的|r|cRXP_LOOT_吊坠组合两个吊坠|r
.collect 15882,1,30,1,1
.collect 15883,1,30,1,1
.complete 30,1 
.itemcount 15882,1
step << Druid
.goto Moonglade,56.21,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
.turnin 30 >>交任务: |cRXP_FRIENDLY_海狮试炼|r
.accept 31 >>接任务: |cRXP_LOOT_水栖形态|r
.target Dendrite Starblaze
.isQuestComplete 30
step << Druid
#optional
.goto Moonglade,56.21,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
.accept 31 >>接任务: |cRXP_LOOT_水栖形态|r
.target Dendrite Starblaze
.isQuestTurnedIn 30
step
#label ThunderBluffHS
.hs >>火炉到雷霆崖
.use 6948
step
#optional
#label Hillsbradskip1
]])
RXPGuides.RegisterGuide([[
#group RestedXP Horde 22-30
#version 20
#xprate >1.99
#classic
<< Horde Shaman/Horde Rogue
#name 24-24 Hillsbrad级Quests
#next 24-26 Southern Barrens
step << Shaman/Rogue
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
step << Shaman/Rogue
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step << Shaman/Rogue
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step << Shaman/Rogue
#completewith JourneyToHillsbrad
.goto Tirisfal Glades,61.80,65.06,20,0
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
.zoneskip Undercity
step << Shaman/Rogue
#completewith JourneyToHillsbrad
.goto Undercity,66.09,20.06,35,0
.goto Undercity,64.37,23.94,35,0
.goto Undercity,65.93,26.71,10,0
.goto Undercity,65.89,34.03,10,0
.goto Undercity,64.22,39.77,10,0
.goto Undercity,65.53,43.62,15 >>乘电梯到地下城
step << Shaman/Rogue
.goto Undercity,53.74,54.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝尔杜加|r
.accept 1013 >>接任务: |cRXP_WARN_乌尔之书|r
.target Keeper Bel'dugur
.dungeon SFK
step << Rogue
.goto Undercity,57.29,32.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t在战区与|r|cRXP_FRIENDLY_Archibald|r交谈
.train 201 >>训练1h剑
.target Archibald
step << !Undead
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
>>|cRXP_WARN_如果您已经有了飞行路线，请跳过此步骤|r
.fp Undercity >>获取地下飞行路线
.target Michael Garrett
.zoneskip Silverpine Forest
step << Undead
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher>>飞向坟墓
.target Michael Garrett
.zoneskip Silverpine Forest
step << !Undead
#completewith next
.goto Undercity,47.25,39.12,50,0
.goto Undercity,46.35,43.86,10,0
.goto Undercity,45.24,39.35,10,0
.goto Undercity,41.32,38.40,10,0
.goto Undercity,40.74,33.95,10,0
.goto Undercity,34.80,33.19,15,0
.goto Undercity,27.39,30.23,35,0
.goto Undercity,21.89,43.35,35,0
.goto Tirisfal Glades,51.10,71.53,50,0
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Undercity,1
step << !Undead
.goto Silverpine Forest,45.62,42.58
>>|cRXP_WARN_如果你有Sepulcher的飞行路线，那就改飞那里|r
.subzone 228 >>前往银松森林的坟墓
step << !Undead
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
>>|cRXP_WARN_如果您已经有了飞行路线，请跳过此步骤|r
.fp Sepulcher >>获取墓穴飞行路线
.target Karos Razok
step << Shaman/Rogue
#label JourneyToHillsbrad
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师伦弗利尔|r, |cRXP_FRIENDLY_姆拉|r
.accept 493 >>接任务: |cRXP_LOOT_前往希尔斯布莱德丘陵|r
.goto Silverpine Forest,42.90,40.86
.turnin 3301 >>交任务: |cRXP_FRIENDLY_茉拉·符文图腾|r
.goto Silverpine Forest,42.90,41.99
.target Apothecary Renferrel
.target Mura Runetotem
step
.goto Silverpine Forest,44.18,42.68
>>与地面上的|cRXP_PICK_Yuriv墓碑|r交互
.turnin 264 >>交任务: |cRXP_FRIENDLY_至死方休|r
.target Clarice Foster
.isOnQuest 264
step << Shaman
#season 2
#completewith next
.goto Silverpine Forest,57.28,45.42,10,0
.goto Silverpine Forest,57.66,44.82,10,0
.goto Silverpine Forest,58.59,44.85,30 >>走向|cRXP_ENEMY_Grimson the Pale|r
.train 410097,1
.xp <20,1
step << Shaman
#season 2
.goto Silverpine Forest,58.59,44.85
>>杀死里面的苍白者。抢劫他|T135832:0|t|cRXP_Loot_[Tempest Icon]|r
.collect 206382,1 
.mob Grimson the Pale
.train 410097,1
.xp <20,1
step << Shaman
#season 2
.equip 18,206382 >>|cRXP_WARN_装备|r|T135832:0|t|cRXP_LOOT_[暴风图标]|r
.use 206382
.itemcount 206382,1 
.train 410097,1
.xp <20,1
step << Shaman
#season 2
#sticky
.aura 408828 >>|cRXP_WARN_使用自然法术（|r|T136026:0|t[地震]|cRXP_WARN_）、冰霜法术（|r |T135849:0|t[霜震]|cRXP_WARN_）和火焰法术（|r|T135813:0|t[火焰震]|t RXP_WARD_）至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
>>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
.itemStat 18,QUALITY,2
.train 410097,1



step << Rogue
#season 2
.goto Silverpine Forest,47.12,71.01
>>单击银松林中的|cRXP_PICK_Dead Drop|r
>>|cRXP_WARN_如果你还有|r|T136230:0|t[赞齐尔之触]|cRXP_WARN_debuff，你就不能完成这个任务。它可以在希尔斯堡之后完成|r
.accept 78261 >>Accept The Horn of Xelthos
.aura 9991
.aura 9810
step << Rogue
#season 2
#completewith next
.goto Silverpine Forest,44.87,67.86
.zone 209 >>Enter Shadowfang Keep
>>|cRXP_WARN_你必须独自完成下一部分！分组将阻止您获得所需的密钥|r
>>|cRXP_WARN_你需要经过训练|r|T132331:0|t[Vanish]|cRXP_WARN_to才能做到这一点|r
step << Rogue
#season 2
.gossipoption 96495,1 >>悄悄地越过|cRXP_ENEMY_Rethilgore|r，与|cRXP_FRIENDLY_Dathstalker Adamant|r交谈，然后向后消失。他会为你开门的
.target Deathstalker Adamant
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
#completewith next
>>将|cRXP_ENEMY_Gemela|r上的|T133644:0|t[拾取口袋]用于|T134243:0|t[|cRXD_OOT_Sister’s Half-Key|r]
>>|cRXP_WARN_她在底层的餐厅里|r
.collect 210213,1 
.mob Gemela
step << Rogue
#season 2
>>使用|cRXP_ENEMY_Gefall|r上的|T133644:0|t[拾取口袋]用于|T134244:0|t[|cRXX_LOOT_Browther的半钥匙|r]
>>|cRXP_WARN_他位于二楼餐厅的上方|r
.collect 210212,1 
.mob Gefell
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
>>将|cRXP_ENEMY_Gemela|r上的|T133644:0|t[拾取口袋]用于|T134243:0|t[|cRXD_OOT_Sister’s Half-Key|r]
>>|cRXP_WARN_她在底层的餐厅里|r
.collect 210213,1 
.mob Gemela
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
.use 210212 >>回到外面的院子，进入马厩。组合|T237379:0|t[|cRXP_OOT_Twin Key|r]的两个键
.collect 210209,1 
.train 400080,1
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
>>打开马厩中的|cRXP_PICK_饰箱|r，以获取|cRXP_LOOT_Horn of Xelthos|r
.complete 78261,1 
.aura 9991
.aura 9810
.isOnQuest 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>单击银松林中的|cRXP_PICK_Dead Drop|r
.turnin 78261 >>Turn in The Horn of Xelthos
.aura 9991
.aura 9810
.isQuestComplete 78261
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_您现在需要进入首都才能接收来自*C的邮件*|r
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Undercity >>Fly to the Undercity
.target Karos Razok
.zoneskip Undercity
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,68.290,38.043,5 >>|cRXP_WARN_前往: |cRXP_PICK_幽暗城|r. Check your mailbox for the letter from *C*|r
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_邮件到达后，打开邮箱阅读来自*C*的邮件。准备好后飞回银松|r
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher>>飞向坟墓
.target Michael Garrett
.zoneskip Undercity,1
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>单击银松林中的|cRXP_PICK_Dead Drop|r以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Deadly Brew|r]
.collect 203994,1 
.train 400080,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Rogue
#season 2
.train 400080 >>使用|T134419:0|t[|cRXP_FRONDLY_Rune of Deadly Brew|r]
.use 204795
.itemcount 204795,1
.dungeon !SFK
.aura 9991
.aura 9810
.isQuestTurnedIn 78261
step << Shaman/Rogue
#completewith next
.zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r
.zoneskip Hillsbrad Foothills
step << Shaman/Rogue
.goto Hillsbrad Foothills,20.79,47.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵莱什|r
.accept 494 >>接任务: |cRXP_LOOT_进攻的时机|r
.target Deathstalker Lesh
step << Shaman/Rogue
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >>Travel to Tarren Mill
step << Shaman/Rogue
#label TarrenMillFP
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fp Tarren Mill>>获取Tarren Mill飞行路线
.target Zarise
step << Rogue
.goto Hillsbrad Foothills,61.55,19.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟尔格·希诺特|r
.turnin 2479 >>交任务: |cRXP_FRIENDLY_希诺特的帮助|r
.accept 2480 >>接任务: |cRXP_WARN_希诺特的帮助|r
.target Serge Hinott
step << Rogue
.goto Hillsbrad Foothills,61.55,19.19
>>等待|cRXP_FRIENDLY_Hinott|r完成固化
.complete 2480,1 
step << Rogue
.goto Hillsbrad Foothills,61.50,19.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟尔格·希诺特|r
.turnin 2480 >>交任务: |cRXP_FRIENDLY_希诺特的帮助|r
.target Serge Hinott
step << Rogue
#completewith TarrenMillPickups
.cast 10723 >>使用|T134807:0|t[Hinot's Oil]治疗|T136230:0|t[TTouch of Zanzil]
.aura 9991
.aura 9810
step << Rogue
#completewith TarrenMillPickups
>>工艺|T132273:0|t[速毒]
.collect 6947,20,1067,1 
step << Shaman/Rogue
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师林度恩|r
.turnin 1065 >>交任务: |cRXP_FRIENDLY_塔伦米尔之旅|r
.accept 1066 >>接任务: |cRXP_LOOT_无辜者之血|r << Rogue
.turnin 493 >>交任务: |cRXP_FRIENDLY_前往希尔斯布莱德丘陵|r
.target Apothecary Lydon
step << Shaman
.goto Hillsbrad Foothills,62.18,20.78
.use 7768 >>在Tarren Mill中间的井处使用|T132829:0|t[空的红色水皮]
.complete 1536,1 
step
.goto Hillsbrad Foothills,62.20,20.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.turnin 494 >>交任务: |cRXP_FRIENDLY_进攻的时机|r
.goto Hillsbrad Foothills,62.20,20.50
.target High Executor Darthalia
step << Rogue
#label TarrenMillPickups
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Wanted Poster, |cRXP_FRIENDLY_克鲁斯克|r
.accept 549 >>接任务: |cRXP_LOOT_通缉：辛迪加成员|r
.goto Hillsbrad Foothills,62.64,20.76
.accept 498 >>接任务: |cRXP_LOOT_拯救行动|r
.goto Hillsbrad Foothills,63.24,20.65
.target Krusk
step << Rogue
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
step << Shaman
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
.vendor >>|cRXP_BUY_从他那里买一把|r|T132408:0|t[Merciless Axe]|cRXP_Buy_如果它用完了，但你还没有|r
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Ott
step << Rogue
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
.vendor >>|cRXP_BUY_从他那里买一把|r|T135640:0|t[宽刃刀]|cRXP_Buy_如果它用完了，但你还没有|r
.money <2.8372
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
.target Ott
step << Shaman
#season 2
#loop
.goto Hillsbrad Foothills,63.73,59.26,40,0
.goto Hillsbrad Foothills,65.49,60.30,40,0
.goto Hillsbrad Foothills,66.30,61.11,40,0
.goto Hillsbrad Foothills,63.61,62.04,40,0
.goto Hillsbrad Foothills,63.21,61.04,40,0
.goto Hillsbrad Foothills,62.56,63.55,40,0
.goto Hillsbrad Foothills,62.98,63.70,40,0
>>杀死|cRXP_ENEMY_Mudsouth萨满|r。为|T134920:0|t|cRXP-Loot_[Kajaric Icon]|r掠夺他们
>>|cRXP_WARN_这些暴徒是27-28级。如果太难的话，暂时跳过这个！|r
.collect 206387,1 
.mob Mudsnout Shaman
.train 410095,1
step << Shaman
#season 2
#completewith next
+|cRXP_WARN_将|r|T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r|cRXP-WARN_in保存在您的库存中。下一次在奥格里玛时，你必须进入Ragefire Chasm以承受熔岩伤害才能解锁此符文|r
.itemcount 206387,1 
.train 410095,1
step << Rogue
#completewith Durnholde1
.cast 8679 >>在武器上使用|T132273:0|t[即时毒药]
.itemcount 6947,2
step << Rogue
#label Durnholde1
.goto Hillsbrad Foothills,76.57,46.48,120 >>Run to Durnholde Keep
step << Rogue
#completewith Drull
>>杀死|cRXP_ENEMY_Syndicate盗贼|r、|cRXD_ENEMY_Watchmen|r和|cRXP_ENEMY_Shadow法师|r。
>>掠夺|cRXP_ENEMY_Shadow法师|r以获得他们的|cRXX_Loot_无辜血瓶|r
.complete 549,1 
.mob +Syndicate Rogue
.complete 549,2 
.mob +Syndicate Watchman
.complete 1066,1 
.mob +Syndicate Shadow Mage
step << Rogue
#completewith Togthar
.goto Hillsbrad Foothills,79.55,41.85,15,0
>>杀死|cRXP_ENEMY_Jailer Eston|r。抢走他的|cRXX_Loot_铁钥匙|r
>>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'ar的|r兵营前找到|r
.collect 3467,1,498,1 
.mob Jailor Eston
step << Rogue
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19,15,0
.goto Hillsbrad Foothills,79.45,40.57,15,0
.goto Hillsbrad Foothills,77.99,40.19
>>杀死|cRXP_ENEMY_Jailr Marlgen|r。抢走他的|cRXX_Loot_金钥匙|r
>>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'tar|r的前面或塔的底部找到|r
.collect 3499,1,498,2 
.mob Jailor Marlgen
step << Rogue
#label Togthar
.goto Hillsbrad Foothills,79.79,39.65
>>单击地面上的|cRXP_PICK_Ball and Chain |r
.complete 498,2 
step << Rogue
#season 2
.goto Hillsbrad Foothills,80.2,39.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克瑞斯·李盖斯|r
>>|cRXP_BUY_从她那里购买|r|T133469:0|t[热门提示]|cRXP_Buy_|r
.collect 210330,1 
.target Kris Legace
.train 400102,1
step << Rogue
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
>>从她那里购买|T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r]和|T132603:0|t[|cRXP-FRIENDLY_Wolf Bracers|r]
.vendor >>供应商和维修
.target Kris Legace
.money <1.1374
.itemcount 4831,<1
.itemcount 4794,<1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue
.goto Hillsbrad Foothills,80.14,38.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kris|r
>>从她那里购买|T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r]，如果它们已经用完
.vendor >>供应商和维修
.target Kris Legace
.money <0.7859
.itemcount 4831,<1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
step << Rogue
.goto Hillsbrad Foothills,80.14,38.89
>>从她那里购买|T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]（如果有）
.vendor >>供应商和维修
.target Kris Legace
.money <0.3515
.itemcount 4794,<1
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue
#completewith Drull
+装备|T134590:0|t[|cRXP_FRIENDLY_Stalking Pants|r]和|T132603:0|t[|cRXP-FRIENDLY_Wolf Bracers|r]
.use 4831
.use 4794
.itemcount 4831,1
.itemcount 4794,1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue
#completewith Drull
+装备|T134590:0|t[|cRXP_FRIENDLY_Stalking长裤|r]
.use 4831
.itemcount 4831,1
.itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
step << Rogue
#completewith Drull
+装备|T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
.use 4794
.itemcount 4794,1
.itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
step << Rogue
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63,15,0
.goto Hillsbrad Foothills,79.55,41.85,15,0
.goto Hillsbrad Foothills,75.31,41.63
>>杀死|cRXP_ENEMY_Jailer Eston|r。抢走他的|cRXX_Loot_铁钥匙|r
>>|cRXP_WARN_他可以在|cRXP_FRIENDLY_Tog'tar|r的兵营前找到，也可以在|r|cRXP-FRIENDLY_Drull前找到|r
.collect 3467,1,498,1 
.mob Jailor Eston
step << Rogue
#label Drull
.goto Hillsbrad Foothills,75.33,41.50
>>单击地面上的|cRXP_PICK_Ball and Chain |r
.complete 498,1 
step << Rogue
#completewith next
>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate守望者|r
.complete 549,1 
.mob +Syndicate Rogue
.complete 549,2 
.mob +Syndicate Watchman
step << Rogue
.loop 25,Hillsbrad Foothills,67.88,47.93,67.06,50.84,66.24,48.79,65.36,48.65,64.86,47.05,65.37,46.46,66.13,45.63,67.22,45.85
>>杀死|cRXP_ENEMY_Syndicate影子法师|r。掠夺他们的|cRXP_Loot_Vials|r
>>|cRXP_WARN_它们中的更多可以在城堡西南部的塔楼上找到|r
.complete 1066,1 
.mob Syndicate Shadow Mage
step << Rogue
.loop 25,Hillsbrad Foothills,67.88,47.93,67.06,50.84,66.24,48.79,65.36,48.65,64.86,47.05,65.37,46.46,66.13,45.63,67.22,45.85
>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXP_ENEMY_Syndicate守望者|r
>>|cRXP_WARN_它们中的更多可以在城堡西南部的塔楼上找到|r
.complete 549,1 
.mob +Syndicate Rogue
.complete 549,2 
.mob +Syndicate Watchman
step << Rogue
#label TarrenMillTurnins1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Darthalia, |cRXP_FRIENDLY_克鲁斯克|r
.turnin 549 >>交任务: |cRXP_FRIENDLY_通缉：辛迪加成员|r
.goto Hillsbrad Foothills,62.37,20.32
.turnin 498 >>交任务: |cRXP_FRIENDLY_拯救行动|r
.goto Hillsbrad Foothills,63.24,20.65
.target High Executor Darthalia
.target Krusk
step << Rogue
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 1066 >>交任务: |cRXP_FRIENDLY_无辜者之血|r
.accept 1067 >>接任务: |cRXP_WARN_返回雷霆崖|r
.target Apothecary Lydon
step << Rogue
.goto Hillsbrad Foothills,60.43,26.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥特|r
.vendor >>|cRXP_BUY_从他那里买一把|r|T135640:0|t[宽刃刀]|cRXP_Buy_如果它用完了，但你还没有|r
.money <2.8372
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
.target Ott
step << Rogue
#season 2
.use 210330 >>打开|T133469:0|t[热提示]
.collect 210323,1 
.collect 210329,1 
.train 400102,1
step << Rogue
#completewith next
.zone Western Plaguelands >>前往: |cRXP_PICK_西瘟疫之地|r
step << Rogue
#season 2
.goto Western Plaguelands,59.4,84.5
>>将|cRXP_PICK_Rusty Safe|r在水中打开|T134419:0|t[|cRXP-FRIENDLY_Rune of Venom|r]
.collect 210322,1 
.train 400102,1
step << Rogue
#season 2
.train 400102 >>使用|T134419:0|t[|cRXP_FRONDLY_Rune of Venom|r]
.use 210322
.itemcount 210322,1
step << Rogue
#season 2
#completewith next
.zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
.train 400080,1
step << Rogue
#season 2
.goto Silverpine Forest,47.12,71.01
>>单击银松林中的|cRXP_PICK_Dead Drop|r
.accept 78261 >>Accept The Horn of Xelthos
.train 400080,1
step << Rogue
#season 2
#completewith next
.goto Silverpine Forest,44.87,67.86
.zone 209 >>Enter Shadowfang Keep
>>|cRXP_WARN_你必须独自完成下一部分！分组将阻止您获得所需的密钥|r
>>|cRXP_WARN_你需要经过训练|r|T132331:0|t[Vanish]|cRXP_WARN_to才能做到这一点|r
step << Rogue
#season 2
.gossipoption 96495,1 >>悄悄地越过|cRXP_ENEMY_Rethilgore|r，与|cRXP_FRIENDLY_Dathstalker Adamant|r交谈，然后向后消失。他会为你开门的
.target Deathstalker Adamant
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
#completewith next
>>将|cRXP_ENEMY_Gemela|r上的|T133644:0|t[拾取口袋]用于|T134243:0|t[|cRXD_OOT_Sister’s Half-Key|r]
>>|cRXP_WARN_她在底层的餐厅里|r
.collect 210213,1 
.mob Gemela
step << Rogue
#season 2
>>使用|cRXP_ENEMY_Gefall|r上的|T133644:0|t[拾取口袋]用于|T134244:0|t[|cRXX_LOOT_Browther的半钥匙|r]
>>|cRXP_WARN_他位于二楼餐厅的上方|r
.collect 210212,1 
.mob Gefell
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
>>将|cRXP_ENEMY_Gemela|r上的|T133644:0|t[拾取口袋]用于|T134243:0|t[|cRXD_OOT_Sister’s Half-Key|r]
>>|cRXP_WARN_她在底层的餐厅里|r
.collect 210213,1 
.mob Gemela
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
.use 210212 >>回到外面的院子，进入马厩。组合|T237379:0|t[|cRXP_OOT_Twin Key|r]的两个键
.collect 210209,1 
.train 400080,1
.isOnQuest 78261
step << Rogue
#season 2
>>打开马厩中的|cRXP_PICK_饰箱|r，以获取|cRXP_LOOT_Horn of Xelthos|r
.complete 78261,1 
.isOnQuest 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>单击银松林中的|cRXP_PICK_Dead Drop|r
.turnin 78261 >>Turn in The Horn of Xelthos
.isQuestComplete 78261
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_您现在需要进入首都才能接收来自*C的邮件*|r
.train 400080,1
.dungeon !SFK
step << Rogue
#season 2
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Undercity >>Fly to the Undercity
.target Karos Razok
.zoneskip Undercity
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,68.290,38.043,5 >>|cRXP_WARN_前往: |cRXP_PICK_幽暗城|r. Check your mailbox for the letter from *C*|r
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 6762 >>训练你的职业技能
.target Carolyn Ward
.xp <24,1
.xp >26,1
.dungeon !SFK
.zoneskip Undercity,1
step << Rogue
#season 2
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 1833 >>训练你的职业技能
.target Carolyn Ward
.xp <26,1
.dungeon !SFK
.zoneskip Undercity,1
step << Shaman/Rogue
#sticky
#completewith EnterSFK
.subzone 310 >>现在你应该在寻找一个团体来保持影方
.dungeon SFK
step << Rogue
#season 2
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher>>飞向坟墓
.target Michael Garrett
.zoneskip Undercity,1
.dungeon SFK
step << Shaman/Rogue
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fly The Sepulcher>>飞向坟墓
.target Zarise
.zoneskip Silverpine Forest
.dungeon SFK
step << Shaman/Rogue
.goto Silverpine Forest,43.43,40.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官哈德瑞克|r
.accept 1098 >>接任务: |cRXP_WARN_影牙城堡里的亡灵哨兵|r
.target High Executor Hadrec
.dungeon SFK
step << Shaman/Rogue
.goto Silverpine Forest,44.22,39.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
.accept 1014 >>接任务: |cRXP_WARN_除掉阿鲁高|r
.target Dalar Dawnweaver
.dungeon SFK
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>单击银松林中的|cRXP_PICK_Dead Drop|r以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Deadly Brew|r]
.collect 203994,1 
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.train 400080 >>使用|T134419:0|t[|cRXP_FRONDLY_Rune of Deadly Brew|r]
.use 204795
.itemcount 204795,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Shaman/Rogue
#label EnterSFK
.goto Silverpine Forest,44.87,67.86
.zone 310 >>进入SFK实例门户。区域在
.dungeon SFK
step << Shaman/Rogue
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vincent|r
.turnin 1098 >>交任务: |cRXP_FRIENDLY_影牙城堡里的亡灵哨兵|r
.target Deathstalker Vincent
.dungeon SFK
.isOnQuest 1098
step << Shaman/Rogue
>>从吞噬者|cRXP_ENEMY_Fenrus|r房间的书架上偷走|cRX_PICK_ Ur|r之书
.complete 1013,1 
.dungeon SFK
.isOnQuest 1013
step << Shaman/Rogue
>>杀死|cRXP_ENEMY_Arugal|r大法师。掠夺他的|cRXX_Loot_Head |r
.complete 1014,1 
.mob Archmage Arugal
.dungeon SFK
.isOnQuest 1014
step << Shaman/Rogue
#hardcore
#completewith FlytoUC
.goto Silverpine Forest,45.51,41.26,100 >>Travel to The Sepulcher
.dungeon SFK
step << Shaman/Rogue
#softcore
#completewith FlytoUC
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
.dungeon SFK
step << Shaman/Rogue
.goto Silverpine Forest,43.43,40.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官哈德瑞克|r
.turnin 1098 >>交任务: |cRXP_FRIENDLY_影牙城堡里的亡灵哨兵|r
.target High Executor Hadrec
.dungeon SFK
.isQuestComplete 1098
step << Shaman/Rogue
.goto Silverpine Forest,44.22,39.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalar|r
.turnin 1014 >>交任务: |cRXP_FRIENDLY_除掉阿鲁高|r
.target Dalar Dawnweaver
.dungeon SFK
.isQuestComplete 1014
step << Shaman/Rogue
#label FlytoUC
#completewith BookofUrTurnin
.goto Silverpine Forest,45.62,42.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Undercity >>Fly to the Undercity
.target Karos Razok
.zoneskip Undercity
.dungeon SFK
step << Rogue
#season 2
#completewith next
+|cRXP_WARN_您现在需要进入首都才能接收来自*C的邮件*|r
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Undercity,68.290,38.043,5 >>|cRXP_WARN_前往: |cRXP_PICK_幽暗城|r. Check your mailbox for the letter from *C*|r
.train 400080,1
.dungeon !SFK
.isQuestTurnedIn 78261
step << Shaman/Rogue
#label BookofUrTurnin
.goto Undercity,53.74,54.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝尔杜加|r
.turnin 1013 >>交任务: |cRXP_FRIENDLY_乌尔之书|r
.target Keeper Bel'dugur
.dungeon SFK
.isQuestComplete 1013
step << Rogue
.goto Undercity,75.19,51.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ezekiel|r|cRXP_BUY_交谈。从他那里购买|r|T133849:0|t[衰变的灰尘]|cRXP_Buy_和|r|T132793:0|t[Empty Vials]|r
.collect 2928,40,1067,1 
.collect 3371,40,1067,1 
.target Ezekiel Graves
.dungeon SFK
step << Rogue
#completewith CampTHS
>>工艺|T132273:0|t[速毒]
.collect 6947,40,1067,1 
.dungeon SFK
step << Rogue
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 6762 >>训练你的职业技能
.target Carolyn Ward
.xp <24,1
.xp >26,1
.dungeon SFK
step << Rogue
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 1833 >>训练你的职业技能
.target Carolyn Ward
.xp <26,1
.dungeon SFK
step << Rogue
#season 2
#label DeadlyBrewPickup
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher>>飞向坟墓
.target Michael Garrett
.zoneskip Silverpine Forest
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.goto Silverpine Forest,47.114,70.974
>>单击银松林中的|cRXP_PICK_Dead Drop|r以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Deadly Brew|r]
.collect 203994,1 
.train 400080,1
.dungeon SFK
.isQuestTurnedIn 78261
step << Rogue
#season 2
.train 400080 >>使用|T134419:0|t[|cRXP_FRONDLY_Rune of Deadly Brew|r]
.use 204795
.itemcount 204795,1
.dungeon SFK
.isQuestTurnedIn 78261
step
.hs >>Hearth前往陶拉霍营地
.use 6948
.dungeon !WC
step
#completewith next
.hs >>赫斯到棘轮
.use 6948
.dungeon WC
step
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Bragok
.dungeon WC
]])
RXPGuides.RegisterGuide([[
#version 20
#xprate <1.99
#group RestedXP Horde 22-30
#classic
<< Horde
#name 24-26南部荒地/石爪
#next 26-28 Ashenvale
step
#optional
.abandon 1013 >>Abandon The Book of Ur
.isOnQuest 1013
.dungeon SFK
step
#optional
.abandon 1014 >>Abandon Arugal Must Die
.isOnQuest 1014
.dungeon SFK
step
#optional
.abandon 1098 >>在影坊抛弃死亡追踪者
.isOnQuest 1098
.dungeon SFK
step
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Doras
.zoneskip Orgrimmar,1
step
.goto Thunder Bluff,47.12,57.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_彻斯姆|r
.bankdeposit 3692 >>存放您的|T133730:0|t[|cRXP_LOOT_Hillsbrad人类头骨|r]（如果您有）
.bankdeposit 3564 >>保证金|T132761:0|t[运铁]
.bankwithdraw 5075 >>收回您的|T134128:0|t[血碎片]
.bankwithdraw 5059 >>收回你的|T132938:0|t[挖爪]
.target Chesmu
.isOnQuest 868
step
#optional
.goto Thunder Bluff,47.12,57.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_彻斯姆|r
.bankdeposit 3692 >>存放您的|T133730:0|t[|cRXP_LOOT_Hillsbrad人类头骨|r]（如果您有）
.bankdeposit 3564 >>保证金|T132761:0|t[运铁]
.bankwithdraw 5075 >>收回您的|T134128:0|t[血碎片]
.target Chesmu
step << Shaman/Warrior
.goto Thunder Bluff,54.06,57.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Delgo交谈|r
.vendor >>|cRXP_BUY_从他那里买一把|r|T132408:0|t[Merciless Axe]|cRXP_Buy_如果它用完了，但你还没有|r
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Delgo Ragetotem
step << Hunter/Warrior
#completewith HunterTraining26 << Hunter
#completewith WarriorTraining26 << Warrior
.goto Thunder Bluff,61.31,78.25,80 >>猎人崛起之旅 << Hunter
.goto Thunder Bluff,61.31,78.25,80 >>猎人崛起之旅 << Warrior
step << Hunter
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14262 >>训练你的职业技能
.target Urek Thunderhorn
.xp <24,1
.xp >26,1
step << Hunter
#optional
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 3045 >>训练你的职业技能
.target Urek Thunderhorn
.xp <26,1
step << Hunter
#label HunterTraining26
.goto Thunder Bluff,54.07,84.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24558 >>训练你的宠物法术
.target Hesuwa Thunderhorn
step << Warrior
.goto Thunder Bluff,57.59,85.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 5308 >>训练你的职业技能
.target Ker Ragetotem
.xp <24,1
.xp >26,1
step << Warrior
#optional
#label WarriorTraining26
.goto Thunder Bluff,57.27,87.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
.train 6178 >>训练你的职业技能
.target Torm Ragetotem
.xp <26,1
step << Druid
#completewith next
.goto Thunder Bluff,69.88,30.90,80 >>长者崛起之旅
step << Druid
.goto Thunder Bluff,76.48,27.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.trainer >>训练你的职业技能
.turnin 31 >>交任务: |cRXP_FRIENDLY_水栖形态|r
.target Turak Runetotem
.isOnQuest 31
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库纳·雷角|r
.vendor >>|cRXP_BUY_从她那里购买|r|T135495:0|t[Strurdy Recurve Bow]|cRXP_Buy_（如果有）|r
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
.target Kuna Thunderhorn
.money <1.9467
step
#completewith next
.goto Thunder Bluff,28.14,32.97,40,0
.goto Thunder Bluff,28.51,28.95,10 >>前往灵魂之旅崛起，进入视野之池
step
.goto Thunder Bluff,22.90,21.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
.turnin 1067 >>交任务: |cRXP_FRIENDLY_返回雷霆崖|r
.accept 1086 >>接任务: |cRXP_LOOT_地精空港|r
.target Apothecary Zamah
.isQuestTurnedIn 1066
step << Priest
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 3747 >>训练你的职业技能
.target Miles Welsh
.xp <24,1
.xp >26,1
step << Priest
#optional
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 992 >>训练你的职业技能
.target Miles Welsh
.xp <26,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 8400 >>训练你的职业技能
.target Archmage Shymm
.xp <24,1
.xp >26,1
step << Mage
#optional
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 120 >>训练你的职业技能
.target Archmage Shymm
.xp <26,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 905 >>训练你的职业技能
.target Tigor Skychaser
.xp <24,1
.xp >26,1
step << Shaman
#optional
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 8190 >>训练你的职业技能
.target Tigor Skychaser
.xp <26,1
step
#completewith next
+创建|T133688:0|t[羊毛绷带]直到你的技能达到115或更高
.skill firstaid,<1,1
step
.goto Thunder Bluff,29.68,21.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pand|r交谈
.train 3278 >>火车|T133687:0|t[厚羊毛绷带]
.target Pand Stonebinder
.skill firstaid,<1,1
step
#optional
#completewith FlytoCampT2
>>放弃死亡食谱
.abandon 264 >>放弃死亡食谱
.isOnQuest 264
step
#optional
#completewith FlytoCampT2
>>Abandon Mura Runetotem
.abandon 3301 >>Abandon Mura Runetotem
.isOnQuest 264
step
.goto Thunder Bluff,54.96,51.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞金·石蹄|r
.accept 1195 >>接任务: |cRXP_WARN_神圣之火|r
.target Zangen Stonehoof
step
#label FlytoCampT2
#completewith CampTHS2
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Tal
.zoneskip The Barrens
step
.goto The Barrens,44.55,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
.accept 879 >>接任务: |cRXP_LOOT_内奸|r
.target Mangletooth
step
#completewith CampTHS2
+|cRXP_WARN_使用剩余的|r|T134128:0|t[血碎片]|cRXP_WARN_toget|r|T136104:0|t[Razorhide]|cRXP_WARN_andother buffs|r << !Mage !Druid
+|cRXP_WARN_使用剩余的|r|T134128:0|t[血碎片]|cRXP_WARN_to获得buff|r << Mage/Druid
+|cRXP_WARN_请确保关闭Questie或Leatrix Plus等插件的任何自动完成功能！|r
step
.goto The Barrens,44.85,59.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
.daily 235,742,6382 >>接任务: |cRXP_WARN_灰谷狩猎|r
.target Jorn Skyseer
step << Warrior
.goto The Barrens,44.67,59.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁迦·暴怒图腾|r
.turnin 1823 >>交任务: |cRXP_FRIENDLY_和鲁迦交谈|r
.accept 1824 >>接任务: |cRXP_LOOT_巨人旷野的试炼|r
.target Ruga Ragetotem
step
#label CampTHS2
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.home >>将您的炉石设置为陶拉霍营地
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Byula
step
.goto The Barrens,44.63,62.71,80,0
.goto The Barrens,45.78,63.09,80,0
.goto The Barrens,49.57,59.36
>>在该区域周围找到并杀死|cRXP_ENEMY_Owatanka|r（蓝雷蜥蜴）。抢劫他|T133723:0|t[|cRXP_Loot_Owatanka的尾钉|r]。使用它开始任务
>>|cRXP_WARN_如果找不到他，请跳过此任务|r
.collect 5102,1,884 
.accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
.use 5102
.unitscan Owatanka
step << Warrior
.loop 25,The Barrens,45.17,69.08,43.87,68.84,42.17,69.65,42.35,71.85,42.77,72.28,43.86,72.06,45.38,72.25,45.17,69.08
>>杀死|cRXP_ENEMY_Silithid保护器|r，|cRXD_ENEMY_Silithid Swarmers |r，| cRXP__ENEMY_Silihid Creepers |r和|cRXP_ENEMY_ Silithid Grubs|r。掠夺它们的|T133027:0|t[Twitching Antenna]
>>|cRXP_WARN_注意：|T133027:0|t[Twitching Antenna]只有15分钟的持续时间，在此任务期间不要AFK或注销|r
.complete 1824,1 
.mob Silithid Protector
.mob Silithid Swarmer
.mob Silithid Creeper
.mob Silithid Grub
step << Warrior
.goto The Barrens,44.67,59.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁迦·暴怒图腾|r
>>|cRXP_WARN_Skip the follow-up|r
.turnin 1824 >>交任务: |cRXP_FRIENDLY_巨人旷野的试炼|r
.target Ruga Ragetotem
step
#completewith next
>>杀死|cRXP_ENEMY_Silithid Harvester |r。为|T134321:0|t[|cRXP-Loot_HHarvester的头部|r]掠夺它。使用它开始任务
>>|cRXP_WARN_如果找不到他，请跳过此任务|r
.collect 5138,1,897,1 
.accept 897 >>接任务: |cRXP_LOOT_收割者|r
.use 5138
.unitscan Silithid Harvester
step
#label SilithidEggs
.goto The Barrens,45.04,69.85,60,0
.goto The Barrens,42.91,69.86,60,0
.goto The Barrens,42.97,71.11,60,0
.goto The Barrens,45.36,72.36,60,0
.goto The Barrens,47.40,70.11,60,0
.goto The Barrens,48.40,70.08,60,0
.goto The Barrens,42.91,69.86
>>掠夺|cRXP_PICK_Silithid土丘|r以换取|cRXP_Loot_Silithid蛋|r
.complete 868,1 
.isOnQuest 868
.maxlevel 27
step << Shaman
#completewith next
.goto The Barrens,44.76,74.79,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step << Shaman
#completewith next
.goto The Barrens,43.84,77.28,25,0
.goto The Barrens,43.62,77.29,25,0
.goto The Barrens,43.42,77.41,15 >>前往|cRXP_FRIENDLY_Brine|r
step << Shaman
.goto The Barrens,43.42,77.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞恩|r
.turnin 1536 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 1534 >>接任务: |cRXP_LOOT_水之召唤|r
.target Brine
step
#completewith next
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#label Gann1
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.14,75.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r|cRXP_WARN_道路上的南北走向|r
.accept 843 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
.maxlevel 28
step
#completewith Lok
>>杀死|cRXP_ENEMY_Razormane跟踪者|r和|cRXX_ENEMY_拉佐曼探路者|r。为|T135640:0|t[|cRXD_Loot_Razarmane Backstager|r]掠夺它们
>>杀死|cRXP_ENEMY_Razormane Seers|r。为|T135139:0|t[|cRXP-Loot_Charred Razorman Wand|r]掠夺它们
>>杀死|cRXP_ENEMY_Razormane Warfrenzies|r。为|T134955:0|t[|cRXX_Loot_Razarmane War Shield |r]掠夺它们
>>|cRXP_WARN_|cRXP_ENEMY_Razomane跟踪者|r被窃取|r
.collect 5093,1,893,1 
.collect 5092,1,893,1 
.collect 5094,1,893,1 
.mob Razormane Stalker
.mob Razormane Pathfinder
.mob Razormane Seer
.mob Razormane Warfrenzy
step
#completewith next
.goto The Barrens,44.85,78.81,45,0
.goto The Barrens,44.44,78.97,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
.goto The Barrens,44.06,80.02,45,0
.goto The Barrens,43.91,80.46,45,0
.goto The Barrens,44.03,80.38,45,0
.goto The Barrens,44.16,80.46,45,0
.goto The Barrens,44.31,80.79,45,0
.goto The Barrens,44.66,80.49,45,0
.goto The Barrens,45.10,80.30,45,0
.goto The Barrens,45.52,80.47,45,0
.goto The Barrens,45.46,80.91,45,0
.goto The Barrens,44.83,80.95,45,0
.goto The Barrens,44.15,81.44,45,0
.goto The Barrens,43.79,81.40,45,0
.goto The Barrens,43.63,80.97,45,0
.goto The Barrens,43.49,80.48,45,0
.goto The Barrens,43.24,80.49,45,0
.goto The Barrens,42.82,80.23,45,0
.goto The Barrens,42.65,79.87,45,0
.goto The Barrens,43.07,78.98,45,0
.goto The Barrens,43.48,78.95,45,0
.goto The Barrens,43.66,79.12,45,0
.goto The Barrens,43.80,79.46,45,0
.goto The Barrens,44.43,78.71,45,0
.goto The Barrens,44.89,78.87,45,0
.goto The Barrens,45.12,79.20,45,0
.goto The Barrens,45.05,79.75,45,0
.goto The Barrens,44.83,79.87,45,0
.goto The Barrens,44.37,79.85
.loop 25,The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
>>杀死|cRXP_ENEMY_Kuz|r。掠夺他|cRXX_Loot_Kuz的头骨|r
>>|cRXP_ENEMY_Kuz|r稍微巡视一下
.complete 879,1 
.unitscan Kuz
step
#completewith next
.goto The Barrens,43.14,80.75,45,0
.goto The Barrens,43.35,81.16,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#label Lok
.goto The Barrens,40.31,80.70,20,0
.goto The Barrens,40.14,80.56
>>杀死|cRXP_ENEMY_Lok Orbane|r。掠夺他|cRXD_Loot_Lok的头骨|r
.complete 879,3 
.mob Lok Orcbane
step
#completewith WandShield
.goto The Barrens,44.85,78.81,45,0
.goto The Barrens,44.44,78.97,45,0
.goto The Barrens,43.14,80.75,45,0
.goto The Barrens,43.35,81.16,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#completewith NakSkull
>>杀死|cRXP_ENEMY_Razormane跟踪者|r和|cRXX_ENEMY_拉佐曼探路者|r。掠夺它们一个|T135640:0|t[|cRXD_Loot_Razarmane Backstager|r]
>>|cRXP_WARN_|cRXP_ENEMY_Razomane跟踪者|r被窃取|r
.collect 5093,1,893,1 
.mob Razormane Stalker
.mob Razormane Pathfinder
step
#label WandShield
.loop 25,The Barrens,42.57,78.81,42.12,78.48,41.49,78.69,41.22,79.72,40.91,80.60,40.55,80.84,41.62,80.92,41.54,82.28,42.48,82.28,42.57,78.81
>>杀死|cRXP_ENEMY_Razomane Seers|r。掠夺它们一个|T135139:0|t[|cRXP-Loot_Charred Razomanne Wand|r]
>>杀死|cRXP_ENEMY_Razormane Warfrenzies|r。掠夺它们一个|T134955:0|t[|cRXX_Loot_Razarmane War Shield |r]
.collect 5092,1,893,1 
.collect 5094,1,893,1 
.mob Razormane Seer
.mob Razormane Warfrenzy
step
#label NakSkull
.goto The Barrens,43.87,83.43
>>杀死|cRXP_ENEMY_Nak|r。掠夺他|cRXX_Loot_Nak的头骨|r
.complete 879,2 
.mob Nak
step
.goto The Barrens,44.09,83.70,15,0
.goto The Barrens,44.15,83.34,15,0
.goto The Barrens,44.38,83.05,15,0
.goto The Barrens,44.22,82.67,15,0
.goto The Barrens,44.10,82.38,15,0
.goto The Barrens,43.85,82.25,15,0
.goto The Barrens,43.76,80.84,40,0
.goto The Barrens,44.14,80.03,40,0
.goto The Barrens,44.17,81.02,40,0
.goto The Barrens,44.66,81.18,40,0
.goto The Barrens,45.08,80.34,40,0
.goto The Barrens,45.48,79.89,40,0
.goto The Barrens,44.09,83.70,15,0
.goto The Barrens,44.15,83.34,15,0
.goto The Barrens,44.38,83.05,15,0
.goto The Barrens,44.22,82.67,15,0
.goto The Barrens,44.10,82.38,15,0
.goto The Barrens,43.85,82.25,15,0
.goto The Barrens,43.76,80.84,40,0
.goto The Barrens,44.14,80.03,40,0
.goto The Barrens,44.17,81.02,40,0
.goto The Barrens,44.66,81.18,40,0
.goto The Barrens,45.08,80.34,40,0
.goto The Barrens,45.48,79.89
>>杀死|cRXP_ENEMY_Razormane跟踪者|r和|cRXX_ENEMY_拉佐曼探路者|r。掠夺它们一个|T135640:0|t[|cRXD_Loot_Razarmane Backstager|r]
>>|cRXP_WARN_|cRXP_ENEMY_Razomane跟踪者|r被窃取|r
.collect 5093,1,893,1 
.mob Razormane Stalker
.mob Razormane Pathfinder
step
#completewith next
>>杀死|cRXP_ENEMY_Bael-dun挖掘机|r和|cRXX_ENEMY_Bael-dun工头|r
.complete 843,1 
.complete 843,2 
.mob Bael'dun Excavator
.mob Bael'dun Foreman
.isOnQuest 843
step
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19
>>杀死|cRXP_ENEMY_Explorer Khazgorm|r。掠夺他获取|cRXD_Loot_Khazgorm的日志|r
.complete 843,3 
.mob Prospector Khazgorm
.isOnQuest 843
step
#loop
.goto The Barrens,47.22,84.98,40,0
.goto The Barrens,47.28,85.74,40,0
.goto The Barrens,47.60,85.66,40,0
.goto The Barrens,48.43,86.34,40,0
.goto The Barrens,48.03,85.46,40,0
.goto The Barrens,47.94,84.86,40,0
.goto The Barrens,47.37,84.01,40,0
.goto The Barrens,46.92,84.22,40,0
.goto The Barrens,46.99,85.82,40,0
.goto The Barrens,47.22,84.98,40,0
>>杀死|cRXP_ENEMY_Bael-dun挖掘机|r和|cRXX_ENEMY_Bael-dun工头|r
.complete 843,1 
.complete 843,2 
.mob Bael'dun Excavator
.mob Bael'dun Foreman
.isOnQuest 843
step
#completewith BaelModan
.goto The Barrens,47.21,79.35,45,0
.goto The Barrens,47.22,79.72,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r|cRXP_WARN_道路上的南北走向|r
.turnin 843 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
.accept 846 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
.isQuestComplete 843
step
#optional
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r|cRXP_WARN_道路上的南北走向|r
.accept 846 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
.isQuestTurnedIn 843
step
#label BaelModan
.goto The Barrens,48.63,84.49,110 >>前往Bael Modan
.isQuestTurnedIn 843
step
#completewith TearMoons2
>>杀死|cRXP_ENEMY_Bael'dun矮人|r。掠夺他们的|cRXP_Loot_硝酸甘油|r、|cRXD_Loot_木浆|r和|cRXP-Loot_硝酸钠|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Bael'dun军官|r|cRXP_WARN_在完成防御姿态动画后，有50%的防御几率增加8秒|r << Rogue/Warrior/Druid/Shaman
.complete 846,1 
.complete 846,2 
.complete 846,3 
.mob Bael'dun Rifleman
.mob Bael'dun Soldier
.mob Bael'dun Officer
.group 0
.isQuestTurnedIn 843
step
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
.accept 857 >>接任务: |cRXP_LOOT_众月之泪|r
.target Feegly the Exiled
.isQuestTurnedIn 843
.group 3
step
#completewith next
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.43,84.28,6 >>下到Baeldun的底层
.isQuestTurnedIn 843
.group
step
.goto The Barrens,49.13,84.25
>>打开|cRXP_PICK_General Twinbraid的Strongbox |r。为|cRXP _Loot_Tear of the Moons而掠夺它|r
>>|cRXP_WARN_小心！在|cRXP_ENEMY_General Twinbraid|r的房间里很容易过度拉伸|r
>>|cRXP_WARN_直接拉除|cRXP_ENEMY_General Twinbraid|r以外的任何暴徒|r
.complete 857,1 
.isQuestTurnedIn 843
.group 3
step
#completewith next
.goto The Barrens,49.43,84.28,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,48.75,84.63,20 >>退出Baeldun的商店
.isQuestTurnedIn 843
.group
step
#label TearMoons2
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
.turnin 857 >>交任务: |cRXP_FRIENDLY_众月之泪|r
.target Feegly the Exiled
.isQuestComplete 857
.group
step
#loop
.goto The Barrens,48.96,84.36,30,0
.goto The Barrens,48.88,84.02,30,0
.goto The Barrens,49.28,83.76,30,0
.goto The Barrens,49.22,84.21,30,0
.goto The Barrens,49.47,84.41,30,0
.goto The Barrens,49.09,84.67,30,0
.goto The Barrens,48.96,84.36,30,0
>>杀死|cRXP_ENEMY_Bael'dun矮人|r。掠夺他们的|cRXP_Loot_硝酸甘油|r、|cRXD_Loot_木浆|r和|cRXP-Loot_硝酸钠|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Bael'dun军官|r|cRXP_WARN_在完成防御姿态动画后，有50%的防御几率增加8秒|r << Rogue/Warrior/Druid/Shaman
.complete 846,1 
.complete 846,2 
.complete 846,3 
.mob Bael'dun Rifleman
.mob Bael'dun Soldier
.mob Bael'dun Officer
.isQuestTurnedIn 843
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r|cRXP_WARN_道路上的南北走向|r
.turnin 846 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
.accept 849 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
.isQuestTurnedIn 843
step
.goto The Barrens,46.97,85.63
>>点击平台顶部的|cRXP_PICK_Bael Modan飞行机|r
>>|cRXP_WARN_这有50码的射程|r
.complete 849,1 
.isQuestTurnedIn 843
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r|cRXP_WARN_道路上的南北走向|r
.turnin 849 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
.target Gann Stonespire
.isQuestTurnedIn 843
step
#label WashtethePawne
.loop 25,The Barrens,44.85,78.81,44.44,78.97,43.14,80.75,43.35,81.16,47.22,79.72,47.21,79.35,44.76,74.79,44.85,78.81
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
.goto The Barrens,50.48,78.72,100 >>前往达斯沃洛沼泽
.zoneskip Dustwallow Marsh
step
#completewith next
.goto Dustwallow Marsh,30.65,45.34,40,0
.goto Dustwallow Marsh,32.28,42.80,40,0
.goto Dustwallow Marsh,33.12,40.85,40,0
.goto Dustwallow Marsh,33.55,38.71,40,0
.goto Dustwallow Marsh,34.73,37.66,40,0
.goto Dustwallow Marsh,34.31,34.40,40,0
.goto Dustwallow Marsh,33.30,31.23,40,0
.goto Dustwallow Marsh,34.58,30.62,40,0
.goto Dustwallow Marsh,36.64,31.72,120 >>前往Brackenwall村
>>|cRXP_WARN_小心！该地区有36-38级暴徒。为了安全起见，请遵循航路点|r
step << Warrior/Shaman
.goto Dustwallow Marsh,36.17,31.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zulrg|r|cRXP_BUY_交谈。从他那里买一个|r|T135158:0|t[Big Stick]如果它用完了|r
.collect 12251,1,873,1 
.money <4.3117
.target Zulrg
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step
.goto Dustwallow Marsh,36.49,30.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞巴莱|r
.vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134937:0|t[Scrolls]|cRX _ Buy_如果它们用完了|r
.target Balai Lok'Wein
step
.goto Dustwallow Marsh,36.49,30.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞巴莱|r
>>|cRXP_BUY_从她那里购买|r|T133735:0|t[急救手册]|cRXP_Buy_|r
.collect 16112,1,873,1 >>图谱：重丝绷带（1）
.collect 16113,1,873,1 >>图谱：Magewave绷带（1）
.collect 16084,1,873,1 >>说明书：专家急救-包扎（1）
.target Balai Lok'Wein
.skill firstaid,<1,1
step
#completewith WeaponsofChoiceTurnin
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙尔迪|r
.fp Brackenwall >>获取Brackenwall村飞行路线
.fly Camp Taurajo >>飞往陶拉霍营地
.target Shardi
.zoneskip The Barrens
.cooldown item,6948,<0
step
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙尔迪|r
.fp Brackenwall >>获取Brackenwall村飞行路线
.target Shardi
.zoneskip The Barrens
.cooldown item,6948,>0
step
#completewith WeaponsofChoiceTurnin
.hs >>Hearth前往陶拉霍营地
.use 6948
.cooldown item,6948,>0
step
#label WeaponsofChoiceTurnin
.goto The Barrens,45.10,57.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
.accept 893 >>接任务: |cRXP_LOOT_野猪人的武器|r
.turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
.target Tatternack Steelforge
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
.turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
.itemcount 5102,1
.target Jorn Skyseer
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
.target Jorn Skyseer
.itemcount 5103,1
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 897 >>接任务: |cRXP_LOOT_收割者|r
.turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
.itemcount 5138,1
.target Jorn Skyseer
step
.goto The Barrens,44.54,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
.turnin 879 >>交任务: |cRXP_FRIENDLY_内奸|r
.accept 906 >>接任务: |cRXP_LOOT_内奸|r
.target Mangletooth
step
#completewith next
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Crossroads >>飞向十字路口
.target Omusa Thunderhorn
step
.goto The Barrens,51.50,30.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
.turnin 906 >>交任务: |cRXP_FRIENDLY_内奸|r
.target Thork
step
.goto The Barrens,51.07,29.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r
.turnin 868 >>交任务: |cRXP_FRIENDLY_蝎卵|r
.target Korran
.isQuestComplete 868
step
#optional
.destroy 5058 >>摧毁: |cRXP_ENEMY_异种蝎卵|r
.itemcount 5058,1
step
#optional
.abandon 868 >>Abandon Egg Hunt
.isOnQuest 868
step
.goto The Barrens,51.99,29.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
.home >>将您的炉石设置为十字路口
.target Innkeeper Boorand Plainswind
step << Rogue
.goto The Barrens,51.39,30.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈拉玛|r
.vendor >>|cRXP_BUY_库存|r|T134387:0|t[闪光粉末]|cRXP_BUY_并供应|r|T132273:0|t][即时毒药]
.target Hula'mahi
step << Hunter
#completewith next
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Orgrimmar >>飞往奥格瑞玛
.zoneskip Orgrimmar
.target Devrak
step << Hunter
.goto Orgrimmar,48.12,80.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Trak'gen|r交谈
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800,874,1 << Hunter 
.target Trak'gend

step << Hunter
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >>飞到棘轮
.target Doras
step << !Hunter
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >>飞到棘轮
.target Devrak
step
.goto The Barrens,65.84,43.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛伦·星眼|r
.turnin 874 >>交任务: |cRXP_FRIENDLY_玛伦·星眼|r
.accept 873 >>接任务: |cRXP_LOOT_依沙瓦克|r
.target Mahren Skyseer
step
#loop
.goto The Barrens,65.67,46.63,0
.goto The Barrens,64.74,50.35,0
.goto The Barrens,63.60,53.54,0
.waypoint The Barrens,65.77,45.28,50,0
.waypoint The Barrens,65.67,46.63,50,0
.waypoint The Barrens,64.74,50.35,50,0
.waypoint The Barrens,63.60,53.54,50,0
>>杀死|cRXP_ENEMY_Isha Awak|r。为Isha Awak的|cRXP_Loot_心脏而掠夺他|r
>>|cRXP_WARN_他在海岸边有四个不同的产卵地点|r
.complete 873,1 
.unitscan Isha Awak
step
.goto The Barrens,65.84,43.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛伦·星眼|r
.turnin 873 >>交任务: |cRXP_FRIENDLY_依沙瓦克|r
.target Mahren Skyseer
step
.maxlevel 27,StonetalonSkip
#completewith CenariusPickup
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Sun Rock Retreat >>飞到太阳岩度假酒店
.zoneskip Stonetalon Mountains
.target Bragok
step
#label CenariusPickup
.goto Stonetalon Mountains,45.90,60.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱林·火拳|r
.accept 1087 >>接任务: |cRXP_LOOT_塞纳留斯的遗产|r
.target Braelyn Firehand
step
.goto Stonetalon Mountains,47.30,61.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马格兰|r
.accept 5881 >>接任务: |cRXP_LOOT_召回卫兵|r
.accept 6282 >>接任务: |cRXP_LOOT_鹰身人的威胁|r
.target Maggran Earthbinder
step
.goto Stonetalon Mountains,47.46,58.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
.turnin 6401 >>交任务: |cRXP_FRIENDLY_卡雅还活着|r
.accept 6301 >>接任务: |cRXP_LOOT_生生不息|r
.target Tammra Windfield
.isOnQuest 6401
step
.goto Stonetalon Mountains,47.40,58.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
.accept 6301 >>接任务: |cRXP_LOOT_生生不息|r
.target Tammra Windfield
step
.goto Stonetalon Mountains,47.47,62.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板杰卡|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Jayka
step
.goto Stonetalon Mountains,47.61,61.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基达|r
.vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Jeeda
step
#completewith ElemWar
.goto Stonetalon Mountains,49.38,61.68,30,0
.goto Stonetalon Mountains,48.92,62.71,30,0
.goto Stonetalon Mountains,48.11,63.88,30,0
.goto Stonetalon Mountains,47.21,64.05,30 >>沿着小路向右跑
step
.goto Stonetalon Mountains,47.36,64.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏纳曼|r
.accept 6393 >>接任务: |cRXP_LOOT_元素战争|r
.accept 6562 >>接任务: |cRXP_WARN_帮助耶努萨克雷|r
.target Tsunaman
.isQuestAvailable 6562
step
#label ElemWar
.goto Stonetalon Mountains,47.36,64.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏纳曼|r
.accept 6393 >>接任务: |cRXP_LOOT_元素战争|r
.target Tsunaman
step << !Warlock
.goto Stonetalon Mountains,59.08,75.70
>>单击|cRXP_FRIENDLY_Wanted海报|r
.accept 6284 >>接任务: |cRXP_LOOT_贝瑟莱斯|r
step << !Warlock
.goto Stonetalon Mountains,51.89,73.81,50,0
.goto Stonetalon Mountains,52.46,71.67
>>杀死|cRXP_ENEMY_Besseleth|r。为她掠夺她|cRXX_Loot_Fang |r
>>|cRXP_WARN_在你拉她之前，先把这个区域清理干净。小心，她能给你10秒钟的时间！|r
.complete 6284,1 
.unitscan Besseleth
step
#completewith next
.goto Stonetalon Mountains,58.99,62.60,100 >>前往Windshear Crag
step
.goto Stonetalon Mountains,58.99,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
.turnin 1095 >>交任务: |cRXP_FRIENDLY_新的指示|r
.accept 1096 >>接任务: |cRXP_LOOT_格雷苏|r
.target Ziz Fizziks
.isOnQuest 1095
step
.goto Stonetalon Mountains,58.99,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
.accept 1096 >>接任务: |cRXP_LOOT_格雷苏|r
.target Ziz Fizziks
step
.line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
.goto Stonetalon Mountains,61.03,52.32,50,0
.goto Stonetalon Mountains,60.33,51.68,50,0
.goto Stonetalon Mountains,59.66,52.14,50,0
.goto Stonetalon Mountains,59.81,53.51,50,0
.goto Stonetalon Mountains,60.98,54.06,50,0
.goto Stonetalon Mountains,61.10,54.68,50,0
.goto Stonetalon Mountains,61.58,55.10,50,0
.goto Stonetalon Mountains,62.32,56.11,50,0
.goto Stonetalon Mountains,62.99,56.25,50,0
.goto Stonetalon Mountains,63.72,56.80,50,0
.goto Stonetalon Mountains,64.37,56.47,50,0
.goto Stonetalon Mountains,65.14,57.02,50,0
.goto Stonetalon Mountains,65.74,57.20,50,0
.goto Stonetalon Mountains,66.41,56.31,50,0
.goto Stonetalon Mountains,66.94,56.25,50,0
.goto Stonetalon Mountains,67.77,55.97,50,0
.goto Stonetalon Mountains,68.52,56.04,50,0
.goto Stonetalon Mountains,69.76,56.70,50,0
.goto Stonetalon Mountains,70.52,56.22,50,0
.goto Stonetalon Mountains,70.82,55.25,50,0
.goto Stonetalon Mountains,59.66,52.14
>>杀死|cRXP_ENEMY_XT:9|r。它在河的南侧巡逻
.complete 1068,2 
.unitscan XT:9
step
.line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
.goto Stonetalon Mountains,67.18,46.87,50,0
.goto Stonetalon Mountains,66.53,46.95,50,0
.goto Stonetalon Mountains,65.72,45.09,50,0
.goto Stonetalon Mountains,63.73,45.02,50,0
.goto Stonetalon Mountains,63.72,45.92,50,0
.goto Stonetalon Mountains,63.43,46.57,50,0
.goto Stonetalon Mountains,64.43,46.13,50,0
.goto Stonetalon Mountains,64.72,46.63,50,0
.goto Stonetalon Mountains,64.82,47.72,50,0
.goto Stonetalon Mountains,65.11,48.31,50,0
.goto Stonetalon Mountains,65.98,48.67,50,0
.goto Stonetalon Mountains,66.24,49.65,50,0
.goto Stonetalon Mountains,66.65,49.58,50,0
.goto Stonetalon Mountains,66.88,48.95,50,0
.goto Stonetalon Mountains,68.41,49.58,50,0
.goto Stonetalon Mountains,69.45,46.56,50,0
.goto Stonetalon Mountains,70.22,48.62,50,0
.goto Stonetalon Mountains,70.95,48.49,50,0
.goto Stonetalon Mountains,71.41,45.54,50,0
.goto Stonetalon Mountains,71.25,43.45,50,0
.goto Stonetalon Mountains,64.82,47.23
>>杀死|cRXP_ENEMY_XT:4|r。它在河的北侧巡逻
.complete 1068,1 
.unitscan XT:4
step
.goto Stonetalon Mountains,66.47,45.45
>>移动到平台下方，放置|T132620:0|t[有毒烟雾机]
.use 5638
.complete 1086,1 >>放置有毒烟雾器
.isQuestTurnedIn 1066
step
#completewith next
.goto Stonetalon Mountains,68.81,39.61,50,0
.goto Stonetalon Mountains,67.83,37.77,50,0
.goto Stonetalon Mountains,66.58,37.71,50,0
.goto Stonetalon Mountains,64.56,38.03,50 >>上山进入平台
step
.goto Stonetalon Mountains,64.48,40.24,20,0
.goto Stonetalon Mountains,63.45,39.78,20,0
.goto Stonetalon Mountains,62.75,40.31
>>杀死|cRXP_ENEMY_Gerenzo|r。掠夺他的|cRXX_Loot_机械臂|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Venture Co.Machine Smiths|r|cRXP_WARN_can call |r|cRXP_ENEMY_Ventures Co.Harvest Reapers|r| cRXP_WRN_。一次杀一个|r
.complete 1096,1 
.unitscan Gerenzo Wrenchwhistle
step
.goto Stonetalon Mountains,62.70,40.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nizzik|r|cRXP_BUY_交谈。购买装备升级（如果有）|r
.vendor
.target Nizzik
step
.goto Stonetalon Mountains,58.99,62.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_其兹|r
.turnin 1096 >>交任务: |cRXP_FRIENDLY_格雷苏|r
.target Ziz Fizziks
step
.goto Stonetalon Mountains,47.20,61.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马格兰|r
.turnin 6284 >>交任务: |cRXP_FRIENDLY_贝瑟莱斯|r
.target Maggran Earthbinder
.isQuestComplete 6284
step
#completewith ReachthePeak
.goto Stonetalon Mountains,49.73,45.10,50,0
.goto Stonetalon Mountains,48.88,43.83,50,0
.goto Stonetalon Mountains,46.35,39.37,50,0
.goto Stonetalon Mountains,46.85,31.87,50,0
>>当你经过湖面时，从地上摘下你看到的所有|cRXP_Loot_Gaea Seed|r
.complete 6301,1 
step
#completewith next
.goto Stonetalon Mountains,46.64,27.48,80,0
.goto Stonetalon Mountains,45.59,23.87,80,0
.goto Stonetalon Mountains,43.79,16.95,80,0
>>杀死你在前往石塔龙峰的途中看到的所有|cRXP_ENEMY_Antlered Coursers|r。掠夺他们的|cRXP_Loot_Eyes |r
.complete 1058,3 
.mob Antlered Courser
step
#label ReachthePeak
.goto Stonetalon Mountains,41.61,16.02,40 >>抵达石塔峰
step
#completewith Whiskers
>>杀死|cRXP_ENEMY_Cenarius之子|r、|cRXD_ENEMY_ Cenarius的女儿|r和|cRXP_ENEMY_Cenarion植物学家|r
.complete 1087,1 
.complete 1087,2 
.complete 1087,3 
.mob Son of Cenarius
.mob Daughter of Cenarius
.mob Cenarion Botanist
step
#completewith Whiskers
>>杀死|cRXP_ENEMY_Sap野兽|r。掠夺它们的|cRXX_Loot_Sap|r
>>|cRXP_WARN_仅常规|r|cRXP_ENEMY_Sap野兽|r|cRXP_WARN_drop the Sap|r|cRXP_ENEMY_腐蚀性Sap野兽|r|cRXP_WARN_不要丢弃它|r
.complete 1058,1 
.mob Sap Beast
step
#completewith next
>>杀死一条|cRXP_ENEMY_Fey Dragon|r。掠夺它的|cRXX_Loot_Scale|r
.complete 1058,4 
.mob Fey Dragon
.mob Wily Fey Dragon
step
#label Whiskers
.goto Stonetalon Mountains,31.75,12.58,50,0
.goto Stonetalon Mountains,30.87,9.47,50,0
.goto Stonetalon Mountains,32.40,9.97,50,0
.goto Stonetalon Mountains,33.33,8.16,50,0
.goto Stonetalon Mountains,34.68,7.89,50,0
.goto Stonetalon Mountains,32.24,10.76
>>杀死|cRXP_ENEMY_Twilight Runners |r。掠夺他们的|cRXD_Loot_Wiskers|r
.complete 1058,2 
.mob Twilight Runner
step
#completewith CenariusLegacy
>>杀死|cRXP_ENEMY_Sap野兽|r。掠夺它们的|cRXX_Loot_Sap|r
>>|cRXP_WARN_仅常规|r|cRXP_ENEMY_Sap野兽|r|cRXP_WARN_drop the Sap|r|cRXP_ENEMY_腐蚀性Sap野兽|r|cRXP_WARN_不要丢弃它|r
.complete 1058,1 
.mob Sap Beast
step
#completewith next
>>杀死一条|cRXP_ENEMY_Fey Dragon|r。掠夺它获得一个|cRXX_Loot_Scale|r
.complete 1058,4 
.mob Fey Dragon
.mob Wily Fey Dragon
step
#label CenariusLegacy
#loop
.goto Stonetalon Mountains,34.43,12.65,0
.waypoint Stonetalon Mountains,34.43,12.65,40,0
.waypoint Stonetalon Mountains,35.49,15.33,40,0
.waypoint Stonetalon Mountains,36.99,15.29,40,0
.waypoint Stonetalon Mountains,37.71,14.81,40,0
.waypoint Stonetalon Mountains,38.17,12.77,40,0
.waypoint Stonetalon Mountains,37.95,11.21,40,0
.waypoint Stonetalon Mountains,36.25,10.27,40,0
.waypoint Stonetalon Mountains,35.41,11.13,40,0
>>杀死|cRXP_ENEMY_Cenarius之子|r、|cRXD_ENEMY_ Cenarius的女儿|r和|cRXP_ENEMY_Cenarion植物学家|r
.complete 1087,1 
.mob +Son of Cenarius
.complete 1087,2 
.mob +Daughter of Cenarius
.complete 1087,3 
.mob +Cenarion Botanist
step
#completewith next
>>杀死|cRXP_ENEMY_Sap野兽|r。掠夺它们的|cRXX_Loot_Sap|r
>>|cRXP_WARN_仅常规|r|cRXP_ENEMY_Sap野兽|r|cRXP_WARN_drop the Sap|r|cRXP_ENEMY_腐蚀性Sap野兽|r|cRXP_WARN_不要丢弃它|r
.complete 1058,1 
.mob Sap Beast
step
.goto Stonetalon Mountains,33.96,11.82,60,0
.goto Stonetalon Mountains,36.64,18.76,60,0
.goto Stonetalon Mountains,33.96,11.82
>>杀死一条|cRXP_ENEMY_Fey Dragon|r。掠夺它获得一个|cRXX_Loot_Scale|r
.complete 1058,4 
.mob Fey Dragon
.mob Wily Fey Dragon
step
.goto Stonetalon Mountains,33.00,16.21,50,0
.goto Stonetalon Mountains,33.61,20.27,50,0
.goto Stonetalon Mountains,35.78,19.13,50,0
.goto Stonetalon Mountains,37.57,20.33,50,0
.goto Stonetalon Mountains,38.62,18.04,50,0
.goto Stonetalon Mountains,39.80,17.10,50,0
.goto Stonetalon Mountains,33.61,20.27
>>杀死|cRXP_ENEMY_Sap野兽|r。掠夺它们的|cRXX_Loot_Sap|r
>>|cRXP_WARN_仅常规|r|cRXP_ENEMY_Sap野兽|r|cRXP_WARN_drop the Sap|r|cRXP_ENEMY_腐蚀性Sap野兽|r|cRXP_WARN_不要丢弃它|r
.complete 1058,1 
.mob Sap Beast
step
.goto Stonetalon Mountains,44.51,20.92,50,0
.goto Stonetalon Mountains,44.45,23.59,50,0
.goto Stonetalon Mountains,46.26,26.72,50,0
.goto Stonetalon Mountains,44.51,20.92
>>当你向南跑回湖边时，完成击杀|cRXP_ENEMY_Antlered Coursers|r。掠夺他们的|cRXP_Loot_Eyes |r
.complete 1058,3 
.mob Antlered Courser
step
#loop
.goto Stonetalon Mountains,47.93,36.17,0
.goto Stonetalon Mountains,49.73,45.09,0
.goto Stonetalon Mountains,45.95,40.72,0
.waypoint Stonetalon Mountains,50.44,37.28,40,0
.waypoint Stonetalon Mountains,50.56,39.79,40,0
.waypoint Stonetalon Mountains,51.75,42.62,40,0
.waypoint Stonetalon Mountains,49.72,43.27,40,0
.waypoint Stonetalon Mountains,49.73,45.09,40,0
.waypoint Stonetalon Mountains,48.92,43.86,40,0
.waypoint Stonetalon Mountains,46.98,42.83,40,0
.waypoint Stonetalon Mountains,45.78,43.13,40,0
.waypoint Stonetalon Mountains,45.95,40.72,40,0
.waypoint Stonetalon Mountains,47.04,37.53,40,0
>>从湖周围的地面上掠夺|cRXP_Loot_Geae Seed|r
.complete 6301,1 
step
#completewith BloodfuryHarpies
.goto Stonetalon Mountains,42.64,42.43,50,0
.goto Stonetalon Mountains,38.18,43.28,60,0
.goto Stonetalon Mountains,34.85,58.38,80 >>沿着西方的小路前往Charred Vale
step
#completewith next
>>杀死|cRXP_ENEMY_Fire元素|r。掠夺它们的|cRXD_Loot_Incredrite|r
.complete 6393,1 
.mob Burning Ravager
.mob Rogue Flame Spirit
.mob Burning Destroyer
step
#label BloodfuryHarpies
.goto Stonetalon Mountains,34.07,61.47,60,0
.goto Stonetalon Mountains,31.59,60.58,60,0
.goto Stonetalon Mountains,29.90,62.51,60,0
.goto Stonetalon Mountains,28.38,64.26,60,0
.goto Stonetalon Mountains,27.65,67.88,60,0
.goto Stonetalon Mountains,27.36,69.75,60,0
.goto Stonetalon Mountains,29.98,71.52,60,0
.goto Stonetalon Mountains,34.96,71.29,60,0
.goto Stonetalon Mountains,36.57,68.19,60,0
.goto Stonetalon Mountains,35.24,63.44,60,0
.goto Stonetalon Mountains,33.94,61.17,60,0
.goto Stonetalon Mountains,29.61,63.57
>>杀死|cRXP_ENEMY_Bloodfury Harpies|r。|cRXP-WARN_小心，它们有特殊能力|r
>>|cRXP_ENEMY_血怒杀手|r|cRXP_WARN_当你的生命值低于20%时处决你|r
>>|cRXP_ENEMY_血怒伏击者|r|cRXP_WARN_shock在低冷却时造成大量高伤害|r
>>|cRXP_ENEMY_血怒盗贼羽毛|r|cRXP_WARN_can|r|T132152:0|t[色雷斯]
.complete 6282,1 
.mob +Bloodfury Harpy
.complete 6282,2 
.mob +Bloodfury Ambusher
.complete 6282,3 
.mob +Bloodfury Slayer
.complete 6282,4 
.mob +Bloodfury Roguefeather
step << Shaman
#season 2
.goto Stonetalon Mountains,28.45,65.00,50,0
.goto Stonetalon Mountains,29.08,71.97,50,0
.goto Stonetalon Mountains,33.43,68.97,50,0
.goto Stonetalon Mountains,33.49,69.40,50,0
.goto Stonetalon Mountains,36.85,72.04,50,0
>>杀死|cRXP_ENEMY_Primordial Anomaly|r。为|T134419:0|t|cRXP_Loot_[原始愤怒符文]|r掠夺它
>>|cRXP_WARN_确保检查其形状（减影）。如果它处于|r|T136074:0|t[自然形态]|cRXP_WARN_，则处理|r|T135824:0|t[火灾伤害]|cRXP_WARN_。如果它在|r|T135819:0|t[火焰形态]|cRXP_WARN_中，则造成|r|T135865:0|t[冰霜伤害]|cRXP_WARN_。如果它处于|r|T135861:0|t[水形态]|cRXP_WARN_，则造成|r|T136085:0|t]自然伤害
>>|cRXP_WARN_施放时要小心|T132939:0|t[击倒]|cRXP_WARN_（近战瞬发：在空中击倒目标并造成80点伤害）|r
>>|cRXP_WARN_它有5-8分钟的重生时间，每次都会随机掉落一个BoE绿色|r
.collect 210811,1 
.mob Primordial Anomaly
.train 425343,1
step << Shaman
#season 2
.cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[原始之怒符文]|r|cRXP_WARN_学习|r|T134596:0|t[雕刻长裤-萨满之怒]
.use 210811
.itemcount 210811,1 
.train 425343,1
step
#completewith TammraTurnin1
.goto Stonetalon Mountains,37.89,67.77,30,0
.goto Stonetalon Mountains,39.58,69.84,30,0
.goto Stonetalon Mountains,41.20,70.09,30,0
.goto Stonetalon Mountains,42.07,66.41,30,0
.goto Stonetalon Mountains,43.54,65.35,30,0
.goto Stonetalon Mountains,44.68,63.50,30 >>沿着西方的道路去太阳岩休养所
step
.goto Stonetalon Mountains,47.36,64.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏纳曼|r
.turnin 6393 >>交任务: |cRXP_FRIENDLY_元素战争|r
.target Tsunaman
.isQuestComplete 6393
step
#label TammraTurnin1
.goto Stonetalon Mountains,47.40,58.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
.turnin 6301 >>交任务: |cRXP_FRIENDLY_生生不息|r
.accept 6381 >>接任务: |cRXP_LOOT_新的生命|r
.target Tammra Windfield
step
.goto Stonetalon Mountains,47.20,61.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马格兰|r
.turnin 6282 >>交任务: |cRXP_FRIENDLY_鹰身人的威胁|r
.accept 6283 >>接任务: |cRXP_LOOT_血怒一族|r
.target Maggran Earthbinder
step
.goto Stonetalon Mountains,47.47,62.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板杰卡|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Jayka
step
.goto Stonetalon Mountains,47.61,61.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基达|r
.vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Jeeda
step
.goto Stonetalon Mountains,45.90,60.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱林·火拳|r
.turnin 1087 >>交任务: |cRXP_FRIENDLY_塞纳留斯的遗产|r
.accept 1088 >>接任务: |cRXP_LOOT_奥达努斯|r
.target Braelyn Firehand
step
#completewith Ripper
.goto Stonetalon Mountains,44.31,63.64,30,0
.goto Stonetalon Mountains,43.31,65.47,30,0
.goto Stonetalon Mountains,42.07,66.51,30,0
.goto Stonetalon Mountains,41.26,70.06,30,0
.goto Stonetalon Mountains,37.80,67.68,80 >>返回Charred Vale
step
#completewith Ripper
.goto Stonetalon Mountains,36.07,67.95,40,0
.goto Stonetalon Mountains,34.22,61.25,40,0
.goto Stonetalon Mountains,31.33,61.38,40,0
>>在地面的|cRXP_PICK_Gaea土丘中播种
.complete 6381,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Fire元素|r。掠夺它们的|cRXD_Loot_Incredrite|r
.complete 6393,1 
.mob Burning Ravager
.mob Rogue Flame Spirit
.mob Burning Destroyer
step
#label Ripper
.goto Stonetalon Mountains,30.75,61.91
>>杀死|cRXP_ENEMY_Bloodfury开膛手|r。为她掠夺她|cRXX_Loot_LUENTS|r
>>|cRXP_WARN_先清除她周围的|r|cRXP_ENEMY_Harpies|r|cRXP_WARN_！她有很大的社交吸引力|r
.complete 6283,1 
.unitscan Bloodfury Ripper
step
#completewith next
>>在地面的|cRXP_PICK_Gaea土丘中播种
.complete 6381,1 
step
.goto Stonetalon Mountains,31.84,70.92,60,0
.goto Stonetalon Mountains,33.84,70.45,60,0
.goto Stonetalon Mountains,35.75,73.03,60,0
.goto Stonetalon Mountains,33.94,63.81,60,0
.goto Stonetalon Mountains,34.47,60.19,60,0
.goto Stonetalon Mountains,30.56,67.08,60,0
.goto Stonetalon Mountains,31.84,70.92
>>杀死|cRXP_ENEMY_Fire元素|r。掠夺它们的|cRXD_Loot_Incredrite|r
.complete 6393,1 
.mob Burning Ravager
.mob Rogue Flame Spirit
.mob Burning Destroyer
step
.goto Stonetalon Mountains,30.20,67.61,40,0
.goto Stonetalon Mountains,29.06,68.87,40,0
.goto Stonetalon Mountains,29.64,71.34,40,0
.goto Stonetalon Mountains,30.50,70.80,40,0
.goto Stonetalon Mountains,32.25,70.07,40,0
.goto Stonetalon Mountains,33.70,72.92,40,0
.goto Stonetalon Mountains,34.70,72.25,40,0
.goto Stonetalon Mountains,34.49,69.09,40,0
.goto Stonetalon Mountains,36.06,67.96,40,0
.goto Stonetalon Mountains,36.01,65.24,40,0
.goto Stonetalon Mountains,34.21,61.28,40,0
.goto Stonetalon Mountains,31.90,64.25
>>在地面的|cRXP_PICK_Gaea土丘中播种
.complete 6381,1 
step
#completewith TammraTurnin2
.goto Stonetalon Mountains,37.89,67.77,30,0
.goto Stonetalon Mountains,39.58,69.84,30,0
.goto Stonetalon Mountains,41.20,70.09,30,0
.goto Stonetalon Mountains,42.07,66.41,30,0
.goto Stonetalon Mountains,43.54,65.35,30,0
.goto Stonetalon Mountains,44.68,63.50,30 >>沿着西方的小路回到太阳岩休养所
step
.goto Stonetalon Mountains,47.36,64.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏纳曼|r
.turnin 6393 >>交任务: |cRXP_FRIENDLY_元素战争|r
.target Tsunaman
step
#label TammraTurnin2
.goto Stonetalon Mountains,47.40,58.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔姆拉·荒原|r
.turnin 6381 >>交任务: |cRXP_FRIENDLY_新的生命|r
.target Tammra Windfield
step
.goto Stonetalon Mountains,47.20,61.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马格兰|r
.turnin 6283 >>交任务: |cRXP_FRIENDLY_血怒一族|r
.target Maggran Earthbinder
.isQuestComplete 6283
step
#completewith next
.subzone 2539 >>向南前往马拉卡金
step
.goto Stonetalon Mountains,74.54,97.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
.turnin 1058 >>交任务: |cRXP_FRIENDLY_金吉尔的森林魔法|r
.target Witch Doctor Jin'Zil
step
#optional
.goto Stonetalon Mountains,74.54,97.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
.turnin 1060 >>交任务: |cRXP_FRIENDLY_写给金吉尔的信|r
.target Witch Doctor Jin'Zil
.isOnQuest 1060
step
#label StonetalonSkip
#map Stonetalon Mountains
.goto The Barrens,35.26,27.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希雷斯·碎石|r
.turnin 1068 >>交任务: |cRXP_FRIENDLY_伐木机|r
.target Seereth Stonebreak
.isQuestComplete 1068
step << Druid
#completewith DruidTraining3
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
.cooldown item,6948,>0,1
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 1850 >>训练你的职业技能
.target Loganaar
.xp <26,1
.xp >28,1
.cooldown item,6948,>0,1
step << Druid
#label DruidTraining3
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 3029 >>训练你的职业技能
.target Loganaar
.xp <28,1
.cooldown item,6948,>0,1
step
#label FlyToXroads1
#completewith next
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Crossroads >>飞向十字路口
.target Bragok
.zoneskip The Barrens,1
.cooldown item,6948,<0
.train 425343,3 << Shaman
step
#completewith next
.hs >>十字路口之心
.use 6948
.cooldown item,6948,>0,1
.train 425343,3 << Shaman
step
.goto The Barrens,51.99,29.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Boorand Plainswind
.train 425343,3 << Shaman
step << Shaman
#season 2
#completewith next
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Sun Rock Retreat >>飞到太阳岩度假酒店
.target Bragok
.zoneskip The Barrens,1
.train 425343,1

step << Shaman
#season 2
.goto Stonetalon Mountains,28.45,65.00,50,0
.goto Stonetalon Mountains,29.08,71.97,50,0
.goto Stonetalon Mountains,33.43,68.97,50,0
.goto Stonetalon Mountains,33.49,69.40,50,0
.goto Stonetalon Mountains,36.85,72.04,50,0
>>杀死|cRXP_ENEMY_Primordial Anomaly|r。为|T134419:0|t|cRXP_Loot_[原始愤怒符文]|r掠夺它
>>|cRXP_WARN_确保检查其形状（减影）。如果它处于|r|T136074:0|t[自然形态]|cRXP_WARN_，则处理|r|T135824:0|t[火灾伤害]|cRXP_WARN_。如果它在|r|T135819:0|t[火焰形态]|cRXP_WARN_中，则造成|r|T135865:0|t[冰霜伤害]|cRXP_WARN_。如果它处于|r|T135861:0|t[水形态]|cRXP_WARN_，则造成|r|T136085:0|t]自然伤害
>>|cRXP_WARN_施放时要小心|T132939:0|t[击倒]|cRXP_WARN_（近战瞬发：在空中击倒目标并造成80点伤害）|r
>>|cRXP_WARN_它有5-8分钟的重生时间，每次都会随机掉落一个BoE绿色|r
.collect 210811,1 
.mob Primordial Anomaly
.train 425343,1
step << Shaman
#season 2
.cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[原始之怒符文]|r|cRXP_WARN_学习|r|T134596:0|t[雕刻长裤-萨满之怒]
.use 210811
.itemcount 210811,1 
.train 425343,1
step << Shaman
#season 2
.hs >>十字路口之心
.use 6948
.cooldown item,6948,>0,1
.zoneskip Stonetalon Mountains,1
step << Shaman
#ssf
#season 2
.goto Stonetalon Mountains,45.13,59.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔姆|r
.fly Crossroads >>飞向十字路口
.target Tharm
.cooldown item,6948,<0
.zoneskip Stonetalon Mountains,1
step << Shaman
#ah
#season 2
.goto Stonetalon Mountains,45.13,59.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔姆|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Tharm
.cooldown item,6948,<0
.zoneskip Stonetalon Mountains,1
step
#ah
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Orgrimmar >>飞往奥格瑞玛
.zoneskip The Barrens,1
.target Devrak
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
>>|cRXP_BUY_从拍卖行购买|r|T133021:0|t[碎纸机操作手册页面]|cRXP_Buy_（如果有）|r 
.target Auctioneer Thathung
.collect 16645,1,6504,1 
.collect 16646,1,6504,1 
.collect 16647,1,6504,1 
.collect 16648,1,6504,1 
.collect 16649,1,6504,1 
.collect 16650,1,6504,1 
.collect 16651,1,6504,1 
.collect 16652,1,6504,1 
.collect 16653,1,6504,1 
.collect 16654,1,6504,1 
.collect 16655,1,6504,1 
.collect 16656,1,6504,1 
step << Hunter
#ah
.goto Orgrimmar,78.11,38.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤索克|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800,549,1 << Hunter 
.target Jin'sora
step
#ah
#completewith next
.goto Orgrimmar,26.22,61.58,80,0
.goto Orgrimmar,15.66,63.33,30,0
.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
.zoneskip The Barrens
step
#ah
#completewith next
.goto Kalimdor,56.80,45.45,15,0
.goto Ashenvale,94.54,76.15,40,0
.goto Ashenvale,93.49,73.76,40,0
.goto Ashenvale,92.47,71.18,40,0
.goto Ashenvale,91.85,68.71,40,0
.goto Ashenvale,91.39,65.86,25 >>沿着河流向北行驶，进入阿申瓦尔
step
#ah
.goto Ashenvale,89.87,68.07,40,0
.goto Ashenvale,86.89,68.65,40,0
.goto Ashenvale,79.89,68.38,40,0
.goto Ashenvale,73.52,63.50,30 >>前往Splintertree Post
>>|cRXP_WARN_你可能会遇到一些29-30级的暴徒，尽可能避开他们|r
step << Hunter
#ssf
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Splintertree Post >>飞到Splinterree Post
.target Devrak
.zoneskip Ashenvale
step << !Hunter
#ssf
#label stonetalon25
.goto Ashenvale,68.66,85.86
.zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 22-30
#xprate <1.99
#classic
<< Horde
#name 26-28 Ashenvale
#next 28-30 Thousand Needles
step
#optional
.abandon 1058 >>放弃金子的森林魔法
step
#optional
.abandon 1068 >>废弃碎纸机
step
#optional
.abandon 1095 >>放弃进一步指示
step << !Hunter
#ssf
.goto Ashenvale,68.34,75.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托雷克|r
>>|cRXP_FRIENDLY_Torek|r|cRXP_WARN_has a 5 minutes respawn time|r
.accept 6544 >>接任务: |cRXP_LOOT_托雷克的突袭|r
.target Torek
step << !Hunter
#ssf
.goto Ashenvale,66.08,74.50,60,0
.goto Ashenvale,65.07,75.36,20,0
.goto Ashenvale,64.28,75.33,10,0
.goto Ashenvale,64.81,75.34
>>关注|cRXP_FRIENDLY_Torek|r
>>让|cRXP_FRIENDLY_TORK|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r坦克|cRXP_ENEMY_Silverwing Warriors|r和|cRXD_ENEMY_ SilverwingSentinel|r
>>当你清空大楼时，向阳台跑去。当|cRXP_ENEMY_Duriel Moonfire|r到来时，让|cRXP_FRIENDLY_Torek|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r在你造成伤害之前发动攻击
.complete 6544,1 
.mob Silverwing Warrior
.mob Silverwing Sentinel
.unitscan Duriel Moonfire
step << !Hunter
.goto Ashenvale,71.10,68.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库莱比|r
.accept 6503 >>接任务: |cRXP_LOOT_灰谷先驱者|r
.target Kuray'bin
step << !Hunter
.goto Ashenvale,73.04,62.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔托格·怒齿|r
.turnin 6544 >>交任务: |cRXP_FRIENDLY_托雷克的突袭|r
.target Ertog Ragetusk
step << !Hunter
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
.dailyturnin 235,742,6382 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r
.turnin 6383 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r
.target Senani Thunderheart
step << Rogue
.goto Ashenvale,74.00,60.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板凯利斯克|r
.home >>将炉石设置为Splinterree Post
.target Innkeeper Kaylisk
.dungeon !BFD
step
#season 0,1
.goto Ashenvale,74.00,60.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板凯利斯克|r
.home >>将炉石设置为Splinterree Post
.target Innkeeper Kaylisk
.dungeon BFD
step
.goto Ashenvale,73.67,60.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马斯托克·维尔西斯|r
.accept 25 >>接任务: |cRXP_LOOT_石爪山的困境|r
.target Mastok Wrilehiss
step
.goto Ashenvale,73.06,61.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮克希尔|r
.accept 6441 >>接任务: |cRXP_LOOT_萨特之角|r
.target Pixel
.maxlevel 28
step << !Hunter
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fp Splintertree Post >>获取Splinterree Post飞行路径
.target Vhulgra
step << Hunter
.goto Ashenvale,73.38,61.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Qeeju交谈|r
.stable >>稳定你的宠物。你很快就会驯服一只|cRXP_ENEMY_Elder Ashenvale Bear|r
.target Qeeju
step << Hunter
.goto Ashenvale,68.59,60.53,50,0
.goto Ashenvale,66.62,62.81,50,0
.goto Ashenvale,65.31,64.65
.cast 1515 >>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on an|cRXX_ENEMY_Elder Ashenvale Bear|r驯服它|r
.train 16830 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132140:0|t[爪（等级4）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.mob Elder Ashenvale Bear
step << Hunter
.goto Ashenvale,73.38,61.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Qeeju交谈|r
.stable >>抛弃|cRXP_ENEMY_Elder Ashenvale Bear|r并取回您的普通宠物
.target Qeeju
step
.goto Ashenvale,71.10,68.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库莱比|r
.accept 6503 >>接任务: |cRXP_LOOT_灰谷先驱者|r
.target Kuray'bin
step
#ah
#completewith next
>>使用|T133021:0|t[碎纸机操作手册页面]创建|cRXP_LOOT_Scredder操作章节|r
.complete 6504,1 
.complete 6504,2 
.complete 6504,3 
step
#ah
.goto Ashenvale,70.01,71.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurda|r
.accept 6504 >>接任务: |cRXP_WARN_丢失的书页|r
.turnin 6504 >>交任务: |cRXP_FRIENDLY_丢失的书页|r
.target Gurda Ragescar
step
#completewith next
.goto Ashenvale,75.25,71.86,0
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>杀死|cRXP_ENEMY_Sharptalon|r。将其掠夺|T136063:0|t[|cRXP_Loot_Sharptalon's Claw|r]并使用它开始任务
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Sharptalon|r|cRXP_WARN_i为31级并在周围巡逻。如果你想杀死他，你可以把他放回Splintertree Post或Forsaken营地。如果你这样做，确保你造成50%以上的伤害才能获得信用。你也可以稍后进行此任务|r
.collect 16305,1,2 
.accept 2 >>接任务: |cRXP_LOOT_沙普塔隆的爪子|r
.unitscan Sharptalon
.use 16305
step << Hunter
#completewith next
+铸造|T132320:0|t[Track Hidden]以更容易地找到|cRXP_ENEMY_Ashenvale Outrunners|r
.train 19885,3
step
.goto Ashenvale,76.15,67.60,15,0
.goto Ashenvale,76.03,69.02,15,0
.goto Ashenvale,76.25,70.62,15,0
.goto Ashenvale,75.76,71.61,15,0
.goto Ashenvale,75.57,70.33,15,0
.goto Ashenvale,75.20,70.62,15,0
.goto Ashenvale,74.37,69.31,15,0
.goto Ashenvale,73.61,70.91,15,0
.goto Ashenvale,72.96,70.34,15,0
.goto Ashenvale,72.66,69.46,15,0
.goto Ashenvale,72.09,70.17,15,0
.goto Ashenvale,71.07,72.60,15,0
.goto Ashenvale,71.92,73.64,15,0
.goto Ashenvale,72.53,72.58,15,0
.goto Ashenvale,72.32,74.64,15,0
.goto Ashenvale,73.36,74.43,15,0
.goto Ashenvale,73.85,75.03,15,0
.goto Ashenvale,76.15,67.60
>>杀死|cRXP_ENEMY_Ashenvale Outrunners|r
>>|cRXP_WARN_They are stealthed|r
.complete 6503,1 
.mob Ashenvale Outrunner
step
.goto Ashenvale,78.24,65.72,45,0
.goto Ashenvale,77.93,65.93,45,0
.goto Ashenvale,77.60,66.33,45,0
.goto Ashenvale,77.35,66.96,45,0
.goto Ashenvale,76.93,68.04,45,0
.goto Ashenvale,76.11,68.95,45,0
.goto Ashenvale,75.94,69.80,45,0
.goto Ashenvale,75.26,69.96,45,0
.goto Ashenvale,74.86,70.06,45,0
.goto Ashenvale,74.36,70.10,45,0
.goto Ashenvale,73.33,70.61,45,0
.goto Ashenvale,72.94,70.67,45,0
.goto Ashenvale,72.50,70.60,45,0
.goto Ashenvale,72.08,70.47,45,0
.goto Ashenvale,71.46,70.10,45,0
.goto Ashenvale,78.24,65.72
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>杀死|cRXP_ENEMY_Sharptalon|r。将其掠夺|T136063:0|t[|cRXP_Loot_Sharptalon's Claw|r]并使用它开始任务
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Sharptalon|r|cRXP_WARN_i为31级并在周围巡逻。如果你想杀死他，你可以把他放回Splintertree Post或Forsaken营地。如果你这样做，确保你造成50%以上的伤害才能获得信用。你也可以稍后进行此任务|r
.collect 16305,1,2 
.accept 2 >>接任务: |cRXP_LOOT_沙普塔隆的爪子|r
.unitscan Sharptalon
.use 16305
step << !Hunter
#ah
.goto Ashenvale,68.34,75.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托雷克|r
>>|cRXP_FRIENDLY_Torek|r|cRXP_WARN_has a 5 minutes respawn time|r
.accept 6544 >>接任务: |cRXP_LOOT_托雷克的突袭|r
.target Torek
step << !Hunter
#ah
.goto Ashenvale,66.08,74.50,60,0
.goto Ashenvale,65.07,75.36,20,0
.goto Ashenvale,64.28,75.33,10,0
.goto Ashenvale,64.81,75.34
>>关注|cRXP_FRIENDLY_Torek|r
>>让|cRXP_FRIENDLY_TORK|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r坦克|cRXP_ENEMY_Silverwing Warriors|r和|cRXD_ENEMY_ SilverwingSentinel|r
>>当你清空大楼时，向阳台跑去。当|cRXP_ENEMY_Duriel Moonfire|r到来时，让|cRXP_FRIENDLY_Torek|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r在你造成伤害之前发动攻击
.complete 6544,1 
.mob Silverwing Warrior
.mob Silverwing Sentinel
.unitscan Duriel Moonfire
step
#completewith Tideress
.goto Ashenvale,51.51,71.02,100 >>Travel to Mystral Lake
.isOnQuest 25
step
#completewith Tideress
>>杀死|cRXP_ENEMY_被污染的水元素|r
.complete 25,1 
.mob Befouled Water Elemental
step
#completewith next
.line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
.goto Ashenvale,52.08,72.10,40,0
.goto Ashenvale,52.18,71.60,40,0
.goto Ashenvale,52.13,71.14,40,0
.goto Ashenvale,51.42,70.86,40,0
.goto Ashenvale,50.74,71.31,40,0
.goto Ashenvale,50.54,71.08,40,0
.goto Ashenvale,50.47,70.43,40,0
.goto Ashenvale,50.21,70.36,40,0
.goto Ashenvale,49.49,70.76,40,0
.goto Ashenvale,48.93,70.82,40,0
.goto Ashenvale,48.43,70.14,40,0
.goto Ashenvale,48.36,69.74,40,0
>>杀死|cRXP_ENEMY_Tideres|r。掠夺她获得|T136222:0|t[|cRXX_Loot_Beforded Water Globe|r]。使用它开始任务
>>|cRXP_ENEMY_Tideres|r在岛上和水下巡逻
.collect 16408,1,1918,1 
.accept 1918 >>接任务: |cRXP_LOOT_被污染的水元素|r
.use 16408
.unitscan Tideress
step
.goto Ashenvale,48.93,69.56
>>去凉亭下面
.complete 25,2 
step
#label Tideress
.line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
.goto Ashenvale,48.71,69.54,40,0
.goto Ashenvale,48.04,69.67,40,0
.goto Ashenvale,47.79,69.90,40,0
.goto Ashenvale,47.57,70.42,40,0
.goto Ashenvale,47.22,70.44,40,0
.goto Ashenvale,46.72,70.63,40,0
.goto Ashenvale,46.53,70.80,40,0
.goto Ashenvale,46.07,70.83,40,0
.goto Ashenvale,45.84,70.67,40,0
.goto Ashenvale,45.84,70.67
>>杀死|cRXP_ENEMY_Tideres|r。掠夺她获得|T136222:0|t[|cRXX_Loot_Beforded Water Globe|r]。使用它开始任务
>>|cRXP_ENEMY_Tideres|r在岛上和水下巡逻
.collect 16408,1,1918,1 
.accept 1918 >>接任务: |cRXP_LOOT_被污染的水元素|r
.use 16408
.unitscan Tideress
step
.loop 25,Ashenvale,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,52.13,71.14,52.18,71.60,52.08,72.10,45.84,70.67,48.36,69.74
>>杀死|cRXP_ENEMY_被污染的水元素|r
.complete 25,1 
.mob Befouled Water Elemental
step
.line Ashenvale,39.81,62.94,39.65,63.74,39.77,65.40,40.22,66.23,41.41,66.56,41.46,67.44,41.55,67.71,41.79,68.28,42.08,68.71,42.46,68.39,42.96,68.43,43.33,68.09,43.78,68.86
.goto Ashenvale,43.78,68.86,40,0
.goto Ashenvale,43.33,68.09,40,0
.goto Ashenvale,42.46,68.39,40,0
.goto Ashenvale,42.08,68.71,40,0
.goto Ashenvale,41.79,68.28,40,0
.goto Ashenvale,41.55,67.71,40,0
.goto Ashenvale,41.46,67.44,40,0
.goto Ashenvale,41.41,66.56,40,0
.goto Ashenvale,40.22,66.23,40,0
.goto Ashenvale,39.77,65.40,40,0
.goto Ashenvale,39.65,63.74,40,0
.goto Ashenvale,39.81,62.94,40,0
>>杀死|cRXP_ENEMY_Ursangous|r。掠夺他|T132941:0|t[|cRXP-Loot_Ursangous的爪子|r]并使用它开始任务
>>|cRXP_WARN_他稍微四处巡逻|r
.collect 16303,1,23 
.accept 23 >>接任务: |cRXP_LOOT_乌萨苟斯的爪子|r
.unitscan Ursangous
.use 16303
step << Shaman
.goto Ashenvale,33.55,67.47
>>在凉亭下使用|T132821:0|t[空蓝色水皮]
.complete 1534,1 
.use 7767
step
#completewith next
.goto Ashenvale,12.24,33.80,100 >>Travel to Zoram Strand
step
#completewith next
.goto Ashenvale,12.24,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德鲁克|r
.fp Zoram'gar Outpost >>获取Zoram'gar前哨飞行路线
.target Andruk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r, |cRXP_FRIENDLY_卡拉恩·阿玛卡|r, |cRXP_FRIENDLY_米苏瓦|r
.turnin 6562 >>交任务: |cRXP_FRIENDLY_帮助耶努萨克雷|r
.goto Ashenvale,11.56,34.29
.accept 216 >>接任务: |cRXP_WARN_蓟皮熊怪的麻烦|r
.goto Ashenvale,11.90,34.53
.accept 6462 >>接任务: |cRXP_LOOT_巨魔符咒|r
.goto Ashenvale,11.65,34.85
.target Je'neu Sancrea
.target Karang Amakkar
.target Mitsuwa
step
.goto Ashenvale,12.06,34.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格拉什|r
>>|cRXP_WARN_这将开始一个护送任务。困难时要小心|r
.accept 6641 >>接任务: |cRXP_WARN_鞭笞者沃尔沙|r
.target Muglash
.maxlevel 28
step
.goto Ashenvale,9.63,27.63
>>到达后单击|cRXP_PICK_Brazier|r
>>|cRXP_WARN_会有一波|r|cRXP_ENEMY_Naga|r|cRXP_WARN_首先产生|r
.complete 6641,1 
.mob Vorsha the Lasher
.isOnQuest 6641
step
.goto Ashenvale,12.22,34.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_战歌信使|r
.turnin 6641 >>交任务: |cRXP_FRIENDLY_鞭笞者沃尔沙|r
.target Warsong Runner
.isQuestComplete 6641
step
.goto Ashenvale,36.81,33.48,200 >>前往Thistlefur村
>>|cRXP_WARN_途中一定要避开阿斯特拉纳尔警卫|r
.isOnQuest 216
step
#completewith next
>>在前往洞穴的途中杀死|cRXP_ENEMY_Thistlefur萨满|r和|cRXX_ENEMY_ ThistlefurAvengers|r
.complete 216,2 
.complete 216,1 
.mob Thistlefur Shaman
.mob Thistlefur Avenger
step
#label EntertheHold
.goto Ashenvale,38.67,30.62,40 >>Enter Thistlefur Hold
.isOnQuest 6462
step
.goto Ashenvale,40.39,33.22,20,0
.goto Ashenvale,40.77,32.81,20,0
.goto Ashenvale,41.36,32.19,20,0
.goto Ashenvale,41.75,32.94,20,0
.goto Ashenvale,41.77,33.68,20,0
.goto Ashenvale,42.37,33.61,20,0
.goto Ashenvale,42.82,34.11,20,0
.goto Ashenvale,41.73,34.47,20,0
.goto Ashenvale,41.66,35.70,20,0
.goto Ashenvale,40.39,33.22
>>将|cRXP_PICK_Troll Chest|r在地上掠夺|cRXP _Loot_Troll Charms|r
.complete 6462,1 
step
.goto Ashenvale,41.49,34.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r in the back of the cave. 这将开始护送
.accept 6482 >>接任务: |cRXP_LOOT_鲁尔的自由|r
.target Ruul Snowhoof
step
.goto Ashenvale,40.68,33.21,20,0
.goto Ashenvale,40.29,32.25,20,0
.goto Ashenvale,39.41,31.00,20,0
.goto Ashenvale,38.28,30.68,20,0
.goto Ashenvale,37.39,32.74,30,0
.goto Ashenvale,37.30,34.49,30,0
.goto Ashenvale,38.73,36.86
.complete 6482,1 
>>|cRXP_WARN_小心！3|r|cRXP_ENEMY_Thistlefurs|r|cRXP_WARN_一旦你穿过洞穴的一半，就会产卵，在Thistlefur村的大门外再产卵3个|r
.target Ruul Snowhoof
step
.goto Ashenvale,37.91,34.49,40,0
.goto Ashenvale,35.89,36.65,40,0
.goto Ashenvale,35.75,32.01,40,0
.goto Ashenvale,34.09,38.48,40,0
.goto Ashenvale,31.86,39.25,40,0
.goto Ashenvale,32.57,42.78,40,0
.goto Ashenvale,30.98,44.40,40,0
.goto Ashenvale,35.75,32.01
>>完成杀戮|cRXP_ENEMY_Thistlefur萨满|r和|cRXP_ENEMY_ ThistlefurAvengers|r
.complete 216,2 
.complete 216,1 
.mob Thistlefur Shaman
.mob Thistlefur Avenger
step
#completewith next
.goto Ashenvale,58.03,55.87,100 >>向东前往Raynewood Retreat
.isOnQuest 1195
step
#completewith next
.line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
.goto Ashenvale,52.24,54.38,40,0
.goto Ashenvale,52.68,54.42,40,0
.goto Ashenvale,54.06,54.91,40,0
.goto Ashenvale,53.01,54.54,40,0
.goto Ashenvale,54.80,55.09,40,0
.goto Ashenvale,55.62,55.41,40,0
.goto Ashenvale,56.16,55.46,40,0
.goto Ashenvale,56.37,55.90,40,0
.goto Ashenvale,57.54,56.03,40,0
.goto Ashenvale,56.93,56.06,40,0
.goto Ashenvale,57.91,55.90,40,0
.goto Ashenvale,58.17,55.57,40,0
.goto Ashenvale,58.80,55.24,40,0
.goto Ashenvale,59.10,54.76,40,0
.goto Ashenvale,59.26,54.25,40,0
.goto Ashenvale,59.55,53.71,40,0
.goto Ashenvale,59.83,53.40,40,0
.goto Ashenvale,60.49,52.41,40,0
.goto Ashenvale,60.94,51.53,40,0
>>杀死|cRXP_ENEMY_Shadumbra|r。掠夺她|T132225:0|t[|cRXP_Loot_Shadumbra的头|r]并使用它开始任务
>>|cRXP_ENEMY_Shadumbra|r在周围稍微巡逻
.collect 16304,1,24 
.accept 24 >>接任务: |cRXP_LOOT_萨杜布拉的头颅|r
.unitscan Shadumbra
.use 16304
step
.goto Ashenvale,58.08,56.06,40,0
.goto Ashenvale,58.69,55.18,40,0
.goto Ashenvale,59.27,54.47,40,0
.goto Ashenvale,59.83,53.26,40,0
.goto Ashenvale,60.40,52.83,40,0
.goto Ashenvale,61.03,51.96,40,0
.goto Ashenvale,60.99,49.19,40,0
.goto Ashenvale,62.51,50.16,40,0
.goto Ashenvale,58.08,56.06
>>杀死|cRXP_ENEMY_Laughing Sisters|r。掠夺她们一个|T134776:0|t[|cRXP-Loot_Ecched Phial|r]
.collect 5867,1,1195,1 
.mob Laughing Sister
step
#label Shadumbra
.line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
.goto Ashenvale,60.94,51.53,40,0
.goto Ashenvale,60.49,52.41,40,0
.goto Ashenvale,59.83,53.40,40,0
.goto Ashenvale,59.55,53.71,40,0
.goto Ashenvale,59.26,54.25,40,0
.goto Ashenvale,59.10,54.76,40,0
.goto Ashenvale,58.80,55.24,40,0
.goto Ashenvale,58.17,55.57,40,0
.goto Ashenvale,57.91,55.90,40,0
.goto Ashenvale,57.54,56.03,40,0
.goto Ashenvale,56.93,56.06,40,0
.goto Ashenvale,56.37,55.90,40,0
.goto Ashenvale,56.16,55.46,40,0
.goto Ashenvale,55.62,55.41,40,0
.goto Ashenvale,54.80,55.09,40,0
.goto Ashenvale,54.06,54.91,40,0
.goto Ashenvale,53.01,54.54,40,0
.goto Ashenvale,52.68,54.42,40,0
.goto Ashenvale,52.24,54.38,40,0
.goto Ashenvale,62.39,49.80
>>杀死|cRXP_ENEMY_Shadumbra|r。掠夺她|T132225:0|t[|cRXP_Loot_Shadumbra的头|r]并使用它开始任务
>>|cRXP_ENEMY_Shadumbra|r在周围稍微巡逻
.collect 16304,1,24 
.accept 24 >>接任务: |cRXP_LOOT_萨杜布拉的头颅|r
.unitscan Shadumbra
.use 16304
step
.goto Ashenvale,62.07,51.32
>>杀死|cRXP_ENEMY_Keeper Ordanus|r。掠夺他的|cRXX_Loot_Head |r
>>|cRXP_WARN_小心！他有两个|r|cRXP_ENEMY_Cenarion辩护人|r|cRXP_WARN_为他辩护。试着把他撞倒然后跳楼|r
>>|cRXP_WARN_当他低于30%的生命值时，他可以召唤两个|r|cRXP_ENEMY_Treants|r|cRXP_WARN_|r
.complete 1088,1 
.target Keeper Ordanus
.isOnQuest 1088
step
.goto Ashenvale,62.99,44.16,50 >>前往Night Run的西部入口
.isOnQuest 6441
step
#completewith next
.goto Ashenvale,64.88,43.81,50,0
.goto Ashenvale,67.04,50.73,80 >>Travel to Night Run
step
.loop 25,Ashenvale,66.78,51.71,66.19,53.44,66.17,54.40,66.22,55.27,66.20,56.37,66.77,57.14,67.11,56.39,67.35,55.53,67.92,54.42,68.92,53.44,68.63,52.69,67.85,51.34
>>杀死|cRXP_ENEMY_Felmusk Shadowspeaker|r、|cRXD_ENEMY_Felmusk Satyrs|r和|cRXP_ENEMY_ Felmusk Felswarns|r。掠夺他们的|cRXP_Loot_Satyr Horns|r
>>|cRXP_WARN_小心！所有的Felmusk演员阵容|r|T136119:0|t[压倒性的斯坦奇]|cRXP_WARN_，一个瞬间的演员阵容6秒的沉默|r << Mage/Warlock/Priest/Druid/Shaman
.complete 6441,1 
.mob Felmusk Shadowstalker
.mob Felmusk Felsworn
.mob Felmusk Satyr
.isOnQuest 6441
step
.goto Ashenvale,60.20,72.90
>>在Moonwell中使用|T134776:0|t[|cRXP_LOOT_Etched Phial|r]
.complete 1195,1 
.use 5867
step
.goto Ashenvale,71.10,68.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库莱比|r
.turnin 6503 >>交任务: |cRXP_FRIENDLY_灰谷先驱者|r
.target Kuray'bin
step
#season 0,1
#sticky
#completewith EnterBFD
.subzone 719 >>现在你应该找一个团体去BlackFathom Deeps
.dungeon BFD
step
.goto Ashenvale,78.24,65.72,45,0
.goto Ashenvale,77.93,65.93,45,0
.goto Ashenvale,77.60,66.33,45,0
.goto Ashenvale,77.35,66.96,45,0
.goto Ashenvale,76.93,68.04,45,0
.goto Ashenvale,76.11,68.95,45,0
.goto Ashenvale,75.94,69.80,45,0
.goto Ashenvale,75.26,69.96,45,0
.goto Ashenvale,74.86,70.06,45,0
.goto Ashenvale,74.36,70.10,45,0
.goto Ashenvale,73.33,70.61,45,0
.goto Ashenvale,72.94,70.67,45,0
.goto Ashenvale,72.50,70.60,45,0
.goto Ashenvale,72.08,70.47,45,0
.goto Ashenvale,71.46,70.10,45,0
.goto Ashenvale,78.24,65.72
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>杀死|cRXP_ENEMY_Sharptalon|r。将其掠夺|T136063:0|t[|cRXP_Loot_Sharptalon's Claw|r]并使用它开始任务
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Sharptalon|r|cRXP_WARN_i为31级并在周围巡逻。如果你想杀死他，你可以把他放回Splintertree Post或Forsaken营地。如果你这样做，确保你造成50%以上的伤害才能获得信用|r
.collect 16305,1,2 
.accept 2 >>接任务: |cRXP_LOOT_沙普塔隆的爪子|r
.unitscan Sharptalon
.use 16305
step << !Hunter
#ah
.goto Ashenvale,73.04,62.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔托格·怒齿|r
.turnin 6544 >>交任务: |cRXP_FRIENDLY_托雷克的突袭|r
.target Ertog Ragetusk
step
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
.turnin 2 >>交任务: |cRXP_FRIENDLY_沙普塔隆的爪子|r
.turnin 24 >>交任务: |cRXP_FRIENDLY_萨杜布拉的头颅|r
.turnin 23 >>交任务: |cRXP_FRIENDLY_乌萨苟斯的爪子|r
.turnin 247 >>交任务: |cRXP_FRIENDLY_完成狩猎|r
.target Senani Thunderheart
.isOnQuest 2
step
#optional
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
.turnin 24 >>交任务: |cRXP_FRIENDLY_萨杜布拉的头颅|r
.turnin 23 >>交任务: |cRXP_FRIENDLY_乌萨苟斯的爪子|r
.turnin 247 >>交任务: |cRXP_FRIENDLY_完成狩猎|r
.target Senani Thunderheart
.isQuestTurnedIn 2
step
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
.turnin 24 >>交任务: |cRXP_FRIENDLY_萨杜布拉的头颅|r
.turnin 23 >>交任务: |cRXP_FRIENDLY_乌萨苟斯的爪子|r
.target Senani Thunderheart
step
.goto Ashenvale,73.06,61.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮克希尔|r
.turnin 6441 >>交任务: |cRXP_FRIENDLY_萨特之角|r
.target Pixel
.isQuestComplete 6441
step
.goto Ashenvale,73.67,60.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马斯托克·维尔西斯|r
.turnin 25 >>交任务: |cRXP_FRIENDLY_石爪山的困境|r
.turnin 1918 >>交任务: |cRXP_FRIENDLY_被污染的水元素|r
.accept 824 >>接任务: |cRXP_LOOT_陶土议会的耶努萨克雷|r
.target Mastok Wrilehiss
step
.goto Ashenvale,74.11,60.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雅玛·雪蹄|r
.turnin 6482 >>交任务: |cRXP_FRIENDLY_鲁尔的自由|r
.target Yama Snowhoof
step
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fly Zoram'gar >>飞往佐拉姆加前哨
.target Vhulgra
step
.goto Ashenvale,11.90,34.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡拉恩·阿玛卡|r
.turnin 216 >>交任务: |cRXP_FRIENDLY_蓟皮熊怪的麻烦|r
.target Karang Amakkar
step
.goto Ashenvale,11.65,34.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米苏瓦|r
.turnin 6462 >>交任务: |cRXP_FRIENDLY_巨魔符咒|r
.target Mitsuwa
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 824 >>交任务: |cRXP_FRIENDLY_陶土议会的耶努萨克雷|r
.accept 6563 >>接任务: |cRXP_WARN_阿库麦尔水晶|r
.accept 6921 >>接任务: |cRXP_WARN_废墟之间|r
.accept 6565 >>接任务: |cRXP_WARN_上古之神的仆从|r
.target Je'neu Sancrea
.dungeon BFD
.isQuestTurnedIn 6564
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 824 >>交任务: |cRXP_FRIENDLY_陶土议会的耶努萨克雷|r
.accept 6563 >>接任务: |cRXP_WARN_阿库麦尔水晶|r
.accept 6921 >>接任务: |cRXP_WARN_废墟之间|r
.target Je'neu Sancrea
.dungeon BFD
step << !Rogue
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 824 >>交任务: |cRXP_FRIENDLY_陶土议会的耶努萨克雷|r
.target Je'neu Sancrea
.dungeon !BFD
step
#season 2
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 824 >>交任务: |cRXP_FRIENDLY_陶土议会的耶努萨克雷|r
.target Je'neu Sancrea
step << Rogue
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 824 >>交任务: |cRXP_FRIENDLY_陶土议会的耶努萨克雷|r
.accept 6563 >>接任务: |cRXP_WARN_阿库麦尔水晶|r
.accept 6921 >>接任务: |cRXP_WARN_废墟之间|r
.target Je'neu Sancrea
.dungeon !BFD
step
#season 0,1
.goto Kalimdor,43.89,35.23,100 >>前往Blackfinth Deeps的入口
.dungeon BFD
step
#season 0,1
#completewith next
>>从墙上偷走|cRXP_Loot_Aku'Mai|r的蓝宝石
.complete 6563,1 
.dungeon BFD
.isOnQuest 6563
step
#season 0,1
.goto Kalimdor,43.81,35.16,20,0
.goto Kalimdor,43.94,34.86,20,0
.goto Kalimdor,43.90,34.59,20,0
.goto Kalimdor,44.00,34.57,20,0
.goto Kalimdor,44.16,34.85,20,0
.goto Kalimdor,44.35,34.97,20,0
.goto Kalimdor,44.53,34.86,20,0
.goto Kalimdor,43.94,34.86
>>杀死|cRXP_ENEMY_Blackfinth潮汐女祭司|r。掠夺她们一个|T134332:0|t[|cRXP-Loot_Damp-Note|r]并用它开始任务
.collect 16790,1,6564 
.accept 6564 >>接任务: |cRXP_WARN_上古之神的仆从|r
.mob Blackfathom Tide Priestess
.use 16790
.dungeon BFD
step
#season 0,1
.goto Kalimdor,44.53,34.86,20,0
.goto Kalimdor,44.35,34.97,20,0
.goto Kalimdor,44.16,34.85,20,0
.goto Kalimdor,44.00,34.57,20,0
.goto Kalimdor,43.90,34.59,20,0
.goto Kalimdor,43.94,34.86,20,0
.goto Kalimdor,43.81,35.16,20,0
.goto Kalimdor,44.34,35.11
>>从墙上偷走|cRXP_Loot_Aku'Mai|r的蓝宝石
.complete 6563,1 
.dungeon BFD
.isOnQuest 6563
step
#season 0,1
#label EnterBFD
.goto Kalimdor,44.36,34.86
.zone 221 >>进入BFD实例门户。区域在
.dungeon BFD
step
#season 0,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Thaelrid|r
.accept 6561 >>接任务: |cRXP_WARN_黑暗深渊中的邪恶|r
.target Argent Guard Thaelrid
.dungeon BFD
step
#season 0,1
>>杀死|cRXP_ENEMY_Lorguss Jett|r
.complete 6565,1 
.mob Lorguss Jett
.isOnQuest 6565
.dungeon BFD
step
#season 0,1
#completewith next
>>将|cRXP_PICK_Fathom Stone|r在地面的水中掠夺，用于|cRXP_Loot_FFathom Core |r
>>|cRXP_WARN_掠夺它将产生|r|cRXP_ENEMY_Baron Aquanis|r
.complete 6921,1 
.isOnQuest 6921
.dungeon BFD
step
#season 0,1
>>杀死|cRXP_ENEMY_Baron Aquanis|r。掠夺他一个|T136222:0|t[|cRXX_Loot_奇异水球|r]。使用它来接受任务
.collect 16782,1 
.accept 6922 >>接任务: |cRXP_LOOT_阿奎尼斯男爵|r
.mob Baron Aquanis
.use 16782
.dungeon BFD
step
#season 0,1
>>将|cRXP_PICK_Fathom Stone|r在地面的水中掠夺，用于|cRXP_Loot_FFathom Core |r
.complete 6921,1 
.isOnQuest 6921
.dungeon BFD
step
#season 0,1
>>杀死|cRXP_ENEMY_暮光之城领主凯里斯|r。掠夺他的|cRXX_Loot_Head |r
.complete 6561,1 
.mob Twilight Lord Kelris
.isOnQuest 6561
.dungeon BFD
step
#season 0,1
#completewith next
.hs >>壁炉到Splinterree Post
.use 6948
>>|cRXP_WARN_如果您愿意，请先杀死|r|cRXP_ENEMY_Aku'mai|r|cRXP_WARN_first。这是地牢的最后一个老板|r
.dungeon BFD
step
#season 0,1
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fly Zoram'gar >>飞往佐拉姆加前哨
.target Vhulgr
.dungeon BFD
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6564 >>交任务: |cRXP_FRIENDLY_上古之神的仆从|r
.target Je'neu Sancrea
.dungeon BFD
.isOnQuest 6564
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6565 >>交任务: |cRXP_FRIENDLY_上古之神的仆从|r
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6565
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6563 >>交任务: |cRXP_FRIENDLY_阿库麦尔水晶|r
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6563
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6921 >>交任务: |cRXP_FRIENDLY_废墟之间|r
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6521
step
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6922 >>交任务: |cRXP_FRIENDLY_阿奎尼斯男爵|r
.target Je'neu Sancrea
.dungeon BFD
.isQuestComplete 6922

step << Rogue
#season 0,1
.goto Kalimdor,43.89,35.23,100 >>前往Blackfinth Deeps的入口
.dungeon !BFD
step << Rogue
#season 0,1
#completewith next
>>从墙上偷走|cRXP_Loot_Aku'Mai|r的蓝宝石
.complete 6563,1 
.isOnQuest 6563
.dungeon !BFD
step << Rogue
#season 0,1
.goto Kalimdor,43.81,35.16,20,0
.goto Kalimdor,43.94,34.86,20,0
.goto Kalimdor,43.90,34.59,20,0
.goto Kalimdor,44.00,34.57,20,0
.goto Kalimdor,44.16,34.85,20,0
.goto Kalimdor,44.35,34.97,20,0
.goto Kalimdor,44.53,34.86,20,0
.goto Kalimdor,43.94,34.86
>>杀死|cRXP_ENEMY_Blackfinth潮汐女祭司|r。掠夺她们一个|T134332:0|t[|cRXP-Loot_Damp-Note|r]并用它开始任务
.collect 16790,1,6564 
.accept 6564 >>接任务: |cRXP_WARN_上古之神的仆从|r
.mob Blackfathom Tide Priestess
.use 16790
.dungeon !BFD
step << Rogue
#season 0,1
.goto Kalimdor,44.53,34.86,20,0
.goto Kalimdor,44.35,34.97,20,0
.goto Kalimdor,44.16,34.85,20,0
.goto Kalimdor,44.00,34.57,20,0
.goto Kalimdor,43.90,34.59,20,0
.goto Kalimdor,43.94,34.86,20,0
.goto Kalimdor,43.81,35.16,20,0
.goto Kalimdor,44.34,35.11
>>从墙上偷走|cRXP_Loot_Aku'Mai|r的蓝宝石
.complete 6563,1 
.isOnQuest 6563
.dungeon !BFD
step << Rogue
#season 0,1
.goto Kalimdor,44.36,34.86
.zone 221 >>进入BFD实例门户。区域在
.dungeon !BFD
step << Rogue
#season 0,1
#completewith Baron
+要独奏这个任务，你需要以两种方式正确演奏。首先，你不需要死气沉沉，这意味着在你与老板争吵之前，你应该充分呼吸。第二件事要注意的是，你需要尽可能地踢出每一个冰雹，并在踢过之后使用回避。他的大部分损失将来自霜冻。记住，你可以消失，5分钟后再试一次，只要你不气死。
.link https://youtu.be/ehXV0stmDrM?t=202 >>单击此处获取有关此部分的指南
.dungeon !BFD
step << Rogue
#season 0,1
#completewith next
>>将|cRXP_PICK_Fathom Stone|r在地面的水中掠夺，以获得|cRXP_Loot_FFathom Core |r。这将产生|cRXT_ENEMY_Baron Aquanis|r
.complete 6921,1 
.isOnQuest 6921
.dungeon !BFD
step << Rogue
#season 0,1
#label Baron
>>杀死|cRXP_ENEMY_Baron Aquanis|r。掠夺他一个|T136222:0|t[|cRXX_Loot_奇异水球|r]。使用它来接受任务
.collect 16782,1 
.accept 6922 >>接任务: |cRXP_LOOT_阿奎尼斯男爵|r
.mob Baron Aquanis
.use 16782
.dungeon !BFD
step << Rogue
#season 0,1
>>将|cRXP_PICK_Fathom Stone|r在地面的水中掠夺，用于|cRXP_Loot_FFathom Core |r
.complete 6921,1 
.isOnQuest 6921
step << Rogue
#season 0,1
#completewith next
.hs >>壁炉到Splinterree Post
.use 6948
.dungeon !BFD
step << Rogue
#season 0,1
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fly Zoram'gar >>飞往佐拉姆加前哨
.target Vhulgra
.dungeon !BFD
step << Rogue
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6564 >>交任务: |cRXP_FRIENDLY_上古之神的仆从|r
.target Je'neu Sancrea
.isOnQuest 6564
.dungeon !BFD
step << Rogue
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6563 >>交任务: |cRXP_FRIENDLY_阿库麦尔水晶|r
.target Je'neu Sancrea
.isQuestComplete 6563
.dungeon !BFD
step << Rogue
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6921 >>交任务: |cRXP_FRIENDLY_废墟之间|r
.target Je'neu Sancrea
.isQuestComplete 6521
.dungeon !BFD
step << Rogue
#season 0,1
.goto Ashenvale,11.56,34.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
.turnin 6922 >>交任务: |cRXP_FRIENDLY_阿奎尼斯男爵|r
.target Je'neu Sancrea
.isQuestComplete 6922
.dungeon !BFD
step << Rogue/Warlock
.goto Ashenvale,12.24,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德鲁克|r
.fly Orgrimmar>>飞往奥格瑞玛
.target Andruk
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8687 >>训练你的职业技能
>>|T132273:0|t[瞬变毒药等级2]|cRXP_WARN_需要120点毒药技能|r
.target Ormok
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 1833 >>训练你的职业技能
>>|T132273:0|t[瞬变毒药等级2]|cRXP_WARN_需要120点毒药技能|r
.target Ormok
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 1456 >>训练你的职业技能
.target Mirket
.xp <26,1
.xp >28,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 6217 >>训练你的职业技能
.target Mirket
.xp <28,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul
step << Warlock
.goto Orgrimmar,44.16,48.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Katis|r|cRXP_BUY_交谈。从她那里购买|r|T135466:0|t[Pestilent Wand]|r
.collect 5347,1 
.money <1.5713
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
.target Katis
step << Rogue
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Doras
.zoneskip Thunder Bluff
step << Druid
#completewith DruidTraining3
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 1850 >>训练你的职业技能
.target Loganaar
.xp <26,1
.xp >28,1
step << Druid
#label DruidTraining3
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 3029 >>训练你的职业技能
.target Loganaar
.xp <28,1
step << !Rogue
.hs >>通往十字路口的心
.use 6948
.dungeon !BFD
step << !Rogue
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.zoneskip Thunder Bluff
.target Devrak
.dungeon !BFD
step << !Rogue
.goto Ashenvale,12.24,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德鲁克|r
.fly Thunder Bluff>>前往: |cRXP_PICK_雷霆崖|r
.target Andruks
.dungeon BFD
.zoneskip Thunder Bluff
step
.goto Thunder Bluff,71.04,34.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴珊娜·符文图腾|r
.turnin 6561 >>交任务: |cRXP_FRIENDLY_黑暗深渊中的邪恶|r
.target Bashana Runetotem
.isQuestComplete 6561
.dungeon BFD
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 22-30
#xprate >1.99
#classic
<< Horde
#name 26-28 SoD Ashenvale
#next 28-30 Thousand Needles
step
#optional
.abandon 1058 >>放弃金子的森林魔法
step
#optional
.abandon 1068 >>废弃碎纸机
step
#optional
.abandon 1095 >>放弃进一步指示
step
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
.dailyturnin 235,742,6382 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r
.turnin 6383 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r
.target Senani Thunderheart
step
#optional
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
.turnin 6382 >>交任务: |cRXP_FRIENDLY_灰谷狩猎|r
.target Senani Thunderheart
step
.goto Ashenvale,74.00,60.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板凯利斯克|r
.home >>将炉石设置为Splinterree Post
.target Innkeeper Kaylisk
step
.goto Ashenvale,73.67,60.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马斯托克·维尔西斯|r
.accept 25 >>接任务: |cRXP_LOOT_石爪山的困境|r
.target Mastok Wrilehiss
step
.goto Ashenvale,73.06,61.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮克希尔|r
.accept 6441 >>接任务: |cRXP_LOOT_萨特之角|r
.target Pixel
.maxlevel 28
step << !Hunter
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fp Splintertree Post >>获取Splinterree Post飞行路径
.target Vhulgra
step << Hunter
.goto Ashenvale,73.38,61.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Qeeju交谈|r
.stable >>稳定你的宠物。你很快就会驯服一只|cRXP_ENEMY_Elder Ashenvale Bear|r
.target Qeeju
step << Hunter
.goto Ashenvale,68.59,60.53,50,0
.goto Ashenvale,66.62,62.81,50,0
.goto Ashenvale,65.31,64.65
.cast 1515 >>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on an|cRXX_ENEMY_Elder Ashenvale Bear|r驯服它|r
.train 16830 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132140:0|t[爪（等级4）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.mob Elder Ashenvale Bear
step << Hunter
.goto Ashenvale,73.38,61.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Qeeju交谈|r
.stable >>抛弃|cRXP_ENEMY_Elder Ashenvale Bear|r并取回您的普通宠物
.target Qeeju
step
.goto Ashenvale,71.10,68.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库莱比|r
.accept 6503 >>接任务: |cRXP_LOOT_灰谷先驱者|r
.target Kuray'bin
step
#ah
#completewith next
>>使用|T133021:0|t[碎纸机操作手册页面]创建|cRXP_LOOT_Scredder操作章节|r
.complete 6504,1 
.complete 6504,2 
.complete 6504,3 
step
#ah
.goto Ashenvale,70.01,71.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gurda|r
.accept 6504 >>接任务: |cRXP_WARN_丢失的书页|r
.turnin 6504 >>交任务: |cRXP_FRIENDLY_丢失的书页|r
.target Gurda Ragescar
step
#completewith next
.goto Ashenvale,75.25,71.86,0
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>杀死|cRXP_ENEMY_Sharptalon|r。将其掠夺|T136063:0|t[|cRXP_Loot_Sharptalon's Claw|r]并使用它开始任务
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Sharptalon|r|cRXP_WARN_i为31级并在周围巡逻。如果你想杀死他，你可以把他放回Splintertree Post或Forsaken营地。如果你这样做，确保你造成50%以上的伤害才能获得信用。你也可以稍后进行此任务|r
.collect 16305,1,2 
.accept 2 >>接任务: |cRXP_LOOT_沙普塔隆的爪子|r
.unitscan Sharptalon
.use 16305
step << Hunter
#completewith next
+铸造|T132320:0|t[Track Hidden]以更容易地找到|cRXP_ENEMY_Ashenvale Outrunners|r
.train 19885,3
step
.goto Ashenvale,76.15,67.60,15,0
.goto Ashenvale,76.03,69.02,15,0
.goto Ashenvale,76.25,70.62,15,0
.goto Ashenvale,75.76,71.61,15,0
.goto Ashenvale,75.57,70.33,15,0
.goto Ashenvale,75.20,70.62,15,0
.goto Ashenvale,74.37,69.31,15,0
.goto Ashenvale,73.61,70.91,15,0
.goto Ashenvale,72.96,70.34,15,0
.goto Ashenvale,72.66,69.46,15,0
.goto Ashenvale,72.09,70.17,15,0
.goto Ashenvale,71.07,72.60,15,0
.goto Ashenvale,71.92,73.64,15,0
.goto Ashenvale,72.53,72.58,15,0
.goto Ashenvale,72.32,74.64,15,0
.goto Ashenvale,73.36,74.43,15,0
.goto Ashenvale,73.85,75.03,15,0
.goto Ashenvale,76.15,67.60
>>杀死|cRXP_ENEMY_Ashenvale Outrunners|r
>>|cRXP_WARN_They are stealthed|r
.complete 6503,1 
.mob Ashenvale Outrunner
step
.goto Ashenvale,78.24,65.72,45,0
.goto Ashenvale,77.93,65.93,45,0
.goto Ashenvale,77.60,66.33,45,0
.goto Ashenvale,77.35,66.96,45,0
.goto Ashenvale,76.93,68.04,45,0
.goto Ashenvale,76.11,68.95,45,0
.goto Ashenvale,75.94,69.80,45,0
.goto Ashenvale,75.26,69.96,45,0
.goto Ashenvale,74.86,70.06,45,0
.goto Ashenvale,74.36,70.10,45,0
.goto Ashenvale,73.33,70.61,45,0
.goto Ashenvale,72.94,70.67,45,0
.goto Ashenvale,72.50,70.60,45,0
.goto Ashenvale,72.08,70.47,45,0
.goto Ashenvale,71.46,70.10,45,0
.goto Ashenvale,78.24,65.72
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>杀死|cRXP_ENEMY_Sharptalon|r。将其掠夺|T136063:0|t[|cRXP_Loot_Sharptalon's Claw|r]并使用它开始任务
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Sharptalon|r|cRXP_WARN_i为31级并在周围巡逻。如果你想杀死他，你可以把他放回Splintertree Post或Forsaken营地。如果你这样做，确保你造成50%以上的伤害才能获得信用。你也可以稍后进行此任务|r
.collect 16305,1,2 
.accept 2 >>接任务: |cRXP_LOOT_沙普塔隆的爪子|r
.unitscan Sharptalon
.use 16305
step << !Hunter
.goto Ashenvale,68.34,75.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托雷克|r
>>|cRXP_FRIENDLY_Torek|r|cRXP_WARN_has a 5 minutes respawn time|r
.accept 6544 >>接任务: |cRXP_LOOT_托雷克的突袭|r
.target Torek
step << !Hunter
.goto Ashenvale,66.08,74.50,60,0
.goto Ashenvale,65.07,75.36,20,0
.goto Ashenvale,64.28,75.33,10,0
.goto Ashenvale,64.81,75.34
>>关注|cRXP_FRIENDLY_Torek|r
>>让|cRXP_FRIENDLY_TORK|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r坦克|cRXP_ENEMY_Silverwing Warriors|r和|cRXD_ENEMY_ SilverwingSentinel|r
>>当你清空大楼时，向阳台跑去。当|cRXP_ENEMY_Duriel Moonfire|r到来时，让|cRXP_FRIENDLY_Torek|r和他的|cRXT_FRIENDLY_Splintertree Raiders|r在你造成伤害之前发动攻击
.complete 6544,1 
.mob Silverwing Warrior
.mob Silverwing Sentinel
.unitscan Duriel Moonfire
step
.goto Ashenvale,59.73,62.81,80,0
.goto Ashenvale,62.99,44.16,50 >>前往Night Run的西部入口
.isOnQuest 6441
step
#completewith next
.goto Ashenvale,64.88,43.81,50,0
.goto Ashenvale,67.04,50.73,80 >>Travel to Night Run
step
.loop 25,Ashenvale,66.78,51.71,66.19,53.44,66.17,54.40,66.22,55.27,66.20,56.37,66.77,57.14,67.11,56.39,67.35,55.53,67.92,54.42,68.92,53.44,68.63,52.69,67.85,51.34
>>杀死|cRXP_ENEMY_Felmusk Shadowspeaker|r、|cRXD_ENEMY_Felmusk Satyrs|r和|cRXP_ENEMY_ Felmusk Felswarns|r。掠夺他们的|cRXP_Loot_Satyr Horns|r
>>|cRXP_WARN_小心！所有的Felmusk演员阵容|r|T136119:0|t[压倒性的斯坦奇]|cRXP_WARN_，一个瞬间的演员阵容6秒的沉默|r << Mage/Warlock/Priest/Druid/Shaman
.complete 6441,1 
.mob Felmusk Shadowstalker
.mob Felmusk Felsworn
.mob Felmusk Satyr
.isOnQuest 6441
step
#completewith Shadumbra
.subzone 426 >>向西前往Raynewood休养所
.isOnQuest 1195
step
#completewith next
.line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
.goto Ashenvale,52.24,54.38,40,0
.goto Ashenvale,52.68,54.42,40,0
.goto Ashenvale,54.06,54.91,40,0
.goto Ashenvale,53.01,54.54,40,0
.goto Ashenvale,54.80,55.09,40,0
.goto Ashenvale,55.62,55.41,40,0
.goto Ashenvale,56.16,55.46,40,0
.goto Ashenvale,56.37,55.90,40,0
.goto Ashenvale,57.54,56.03,40,0
.goto Ashenvale,56.93,56.06,40,0
.goto Ashenvale,57.91,55.90,40,0
.goto Ashenvale,58.17,55.57,40,0
.goto Ashenvale,58.80,55.24,40,0
.goto Ashenvale,59.10,54.76,40,0
.goto Ashenvale,59.26,54.25,40,0
.goto Ashenvale,59.55,53.71,40,0
.goto Ashenvale,59.83,53.40,40,0
.goto Ashenvale,60.49,52.41,40,0
.goto Ashenvale,60.94,51.53,40,0
>>杀死|cRXP_ENEMY_Shadumbra|r。掠夺她|T132225:0|t[|cRXP_Loot_Shadumbra的头|r]并使用它开始任务
>>|cRXP_ENEMY_Shadumbra|r在周围稍微巡逻
.collect 16304,1,24 
.accept 24 >>接任务: |cRXP_LOOT_萨杜布拉的头颅|r
.unitscan Shadu
step
.goto Ashenvale,58.08,56.06,40,0
.goto Ashenvale,58.69,55.18,40,0
.goto Ashenvale,59.27,54.47,40,0
.goto Ashenvale,59.83,53.26,40,0
.goto Ashenvale,60.40,52.83,40,0
.goto Ashenvale,61.03,51.96,40,0
.goto Ashenvale,60.99,49.19,40,0
.goto Ashenvale,62.51,50.16,40,0
.goto Ashenvale,58.08,56.06
>>杀死|cRXP_ENEMY_Laughing Sisters|r。掠夺她们一个|T134776:0|t[|cRXP-Loot_Ecched Phial|r]
.collect 5867,1,1195,1 
.mob Laughing Sister
step
#label Shadumbra
.line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
.goto Ashenvale,60.94,51.53,40,0
.goto Ashenvale,60.49,52.41,40,0
.goto Ashenvale,59.83,53.40,40,0
.goto Ashenvale,59.55,53.71,40,0
.goto Ashenvale,59.26,54.25,40,0
.goto Ashenvale,59.10,54.76,40,0
.goto Ashenvale,58.80,55.24,40,0
.goto Ashenvale,58.17,55.57,40,0
.goto Ashenvale,57.91,55.90,40,0
.goto Ashenvale,57.54,56.03,40,0
.goto Ashenvale,56.93,56.06,40,0
.goto Ashenvale,56.37,55.90,40,0
.goto Ashenvale,56.16,55.46,40,0
.goto Ashenvale,55.62,55.41,40,0
.goto Ashenvale,54.80,55.09,40,0
.goto Ashenvale,54.06,54.91,40,0
.goto Ashenvale,53.01,54.54,40,0
.goto Ashenvale,52.68,54.42,40,0
.goto Ashenvale,52.24,54.38,40,0
.goto Ashenvale,62.39,49.80
>>杀死|cRXP_ENEMY_Shadumbra|r。掠夺她|T132225:0|t[|cRXP_Loot_Shadumbra的头|r]并使用它开始任务
>>|cRXP_ENEMY_Shadumbra|r在周围稍微巡逻
.collect 16304,1,24 
.accept 24 >>接任务: |cRXP_LOOT_萨杜布拉的头颅|r
.unitscan Shadumbra
.use 16304
step
.line Ashenvale,39.81,62.94,39.65,63.74,39.77,65.40,40.22,66.23,41.41,66.56,41.46,67.44,41.55,67.71,41.79,68.28,42.08,68.71,42.46,68.39,42.96,68.43,43.33,68.09,43.78,68.86
.goto Ashenvale,43.78,68.86,40,0
.goto Ashenvale,43.33,68.09,40,0
.goto Ashenvale,42.46,68.39,40,0
.goto Ashenvale,42.08,68.71,40,0
.goto Ashenvale,41.79,68.28,40,0
.goto Ashenvale,41.55,67.71,40,0
.goto Ashenvale,41.46,67.44,40,0
.goto Ashenvale,41.41,66.56,40,0
.goto Ashenvale,40.22,66.23,40,0
.goto Ashenvale,39.77,65.40,40,0
.goto Ashenvale,39.65,63.74,40,0
.goto Ashenvale,39.81,62.94,40,0
>>杀死|cRXP_ENEMY_Ursangous|r。掠夺他|T132941:0|t[|cRXP-Loot_Ursangous的爪子|r]并使用它开始任务
>>|cRXP_WARN_他稍微四处巡逻|r
.collect 16303,1,23 
.accept 23 >>接任务: |cRXP_LOOT_乌萨苟斯的爪子|r
.unitscan Ursangous
.use 16303
step << Shaman
.goto Ashenvale,33.55,67.47
>>在凉亭下使用|T132821:0|t[空蓝色水皮]
.complete 1534,1 
.use 7767
step
#completewith Tideress
.goto Ashenvale,51.51,71.02,100 >>Travel to Mystral Lake
.isOnQuest 25
step
#completewith Tideress
>>杀死|cRXP_ENEMY_被污染的水元素|r
.complete 25,1 
.mob Befouled Water Elemental
step
#completewith next
.line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
.goto Ashenvale,52.08,72.10,40,0
.goto Ashenvale,52.18,71.60,40,0
.goto Ashenvale,52.13,71.14,40,0
.goto Ashenvale,51.42,70.86,40,0
.goto Ashenvale,50.74,71.31,40,0
.goto Ashenvale,50.54,71.08,40,0
.goto Ashenvale,50.47,70.43,40,0
.goto Ashenvale,50.21,70.36,40,0
.goto Ashenvale,49.49,70.76,40,0
.goto Ashenvale,48.93,70.82,40,0
.goto Ashenvale,48.43,70.14,40,0
.goto Ashenvale,48.36,69.74,40,0
>>杀死|cRXP_ENEMY_Tideres|r。掠夺她获得|T136222:0|t[|cRXX_Loot_Beforded Water Globe|r]。使用它开始任务
>>|cRXP_ENEMY_Tideres|r在岛上和水下巡逻
.collect 16408,1,1918,1 
.accept 1918 >>接任务: |cRXP_LOOT_被污染的水元素|r
.use 16408
.unitscan Tideress
step
.goto Ashenvale,48.93,69.56
>>去凉亭下面
.complete 25,2 
step
#label Tideress
.line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
.goto Ashenvale,48.71,69.54,40,0
.goto Ashenvale,48.04,69.67,40,0
.goto Ashenvale,47.79,69.90,40,0
.goto Ashenvale,47.57,70.42,40,0
.goto Ashenvale,47.22,70.44,40,0
.goto Ashenvale,46.72,70.63,40,0
.goto Ashenvale,46.53,70.80,40,0
.goto Ashenvale,46.07,70.83,40,0
.goto Ashenvale,45.84,70.67,40,0
.goto Ashenvale,45.84,70.67
>>杀死|cRXP_ENEMY_Tideres|r。掠夺她获得|T136222:0|t[|cRXX_Loot_Beforded Water Globe|r]。使用它开始任务
>>|cRXP_ENEMY_Tideres|r在岛上和水下巡逻
.collect 16408,1,1918,1 
.accept 1918 >>接任务: |cRXP_LOOT_被污染的水元素|r
.use 16408
.unitscan Tideress
step
.loop 25,Ashenvale,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,52.13,71.14,52.18,71.60,52.08,72.10,45.84,70.67,48.36,69.74
>>杀死|cRXP_ENEMY_被污染的水元素|r
.complete 25,1 
.mob Befouled Water Elemental
step
.goto Ashenvale,60.20,72.90
>>在Moonwell中使用|T134776:0|t[|cRXP_LOOT_Etched Phial|r]
.complete 1195,1 
.use 5867
step
#completewith OutrunnerTurnIn
.hs >>壁炉到Splinterree Post
.use 6948
.cooldown item,6948,>0
step
#completewith OutrunnerTurnIn
.goto Ashenvale,71.10,68.12,80 >>前往Splintertree Post
.cooldown item,6948,<0,1
step
#label OutrunnerTurnIn
.goto Ashenvale,71.10,68.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库莱比|r
.turnin 6503 >>交任务: |cRXP_FRIENDLY_灰谷先驱者|r
.target Kuray'bin
step
.goto Ashenvale,78.24,65.72,45,0
.goto Ashenvale,77.93,65.93,45,0
.goto Ashenvale,77.60,66.33,45,0
.goto Ashenvale,77.35,66.96,45,0
.goto Ashenvale,76.93,68.04,45,0
.goto Ashenvale,76.11,68.95,45,0
.goto Ashenvale,75.94,69.80,45,0
.goto Ashenvale,75.26,69.96,45,0
.goto Ashenvale,74.86,70.06,45,0
.goto Ashenvale,74.36,70.10,45,0
.goto Ashenvale,73.33,70.61,45,0
.goto Ashenvale,72.94,70.67,45,0
.goto Ashenvale,72.50,70.60,45,0
.goto Ashenvale,72.08,70.47,45,0
.goto Ashenvale,71.46,70.10,45,0
.goto Ashenvale,78.24,65.72
.line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
>>杀死|cRXP_ENEMY_Sharptalon|r。将其掠夺|T136063:0|t[|cRXP_Loot_Sharptalon's Claw|r]并使用它开始任务
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Sharptalon|r|cRXP_WARN_i为31级并在周围巡逻。如果你想杀死他，你可以把他放回Splintertree Post或Forsaken营地。如果你这样做，确保你造成50%以上的伤害才能获得信用|r
.collect 16305,1,2 
.accept 2 >>接任务: |cRXP_LOOT_沙普塔隆的爪子|r
.unitscan Sharptalon
.use 16305
step << !Hunter
.goto Ashenvale,73.04,62.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔托格·怒齿|r
.turnin 6544 >>交任务: |cRXP_FRIENDLY_托雷克的突袭|r
.target Ertog Ragetusk
step
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
.turnin 2 >>交任务: |cRXP_FRIENDLY_沙普塔隆的爪子|r
.turnin 24 >>交任务: |cRXP_FRIENDLY_萨杜布拉的头颅|r
.turnin 23 >>交任务: |cRXP_FRIENDLY_乌萨苟斯的爪子|r
.turnin 247 >>交任务: |cRXP_FRIENDLY_完成狩猎|r
.target Senani Thunderheart
.isOnQuest 2
step
#optional
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
.turnin 24 >>交任务: |cRXP_FRIENDLY_萨杜布拉的头颅|r
.turnin 23 >>交任务: |cRXP_FRIENDLY_乌萨苟斯的爪子|r
.turnin 247 >>交任务: |cRXP_FRIENDLY_完成狩猎|r
.target Senani Thunderheart
.isQuestTurnedIn 2
step
.goto Ashenvale,73.78,61.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞娜尼·雷心|r
.turnin 24 >>交任务: |cRXP_FRIENDLY_萨杜布拉的头颅|r
.turnin 23 >>交任务: |cRXP_FRIENDLY_乌萨苟斯的爪子|r
.target Senani Thunderheart
step
.goto Ashenvale,73.06,61.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皮克希尔|r
.turnin 6441 >>交任务: |cRXP_FRIENDLY_萨特之角|r
.target Pixel
.isQuestComplete 6441
step
.goto Ashenvale,73.67,60.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马斯托克·维尔西斯|r
.turnin 25 >>交任务: |cRXP_FRIENDLY_石爪山的困境|r
.turnin 1918 >>交任务: |cRXP_FRIENDLY_被污染的水元素|r
.target Mastok Wrilehiss
step << Rogue/Warlock
#completewith next
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Vhulgra
.train 8687,1 << Rogue
.train 6217,1 << Warlock
.zoneskip Orgrimmar
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8687 >>训练你的职业技能
>>|T132273:0|t[瞬变毒药等级2]|cRXP_WARN_需要120点毒药技能|r
.target Ormok
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 6217 >>训练你的职业技能
.target Mirket
.xp <28,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul
.zoneskip Orgrimmar,1
step << Warlock
.goto Orgrimmar,44.16,48.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Katis|r|cRXP_BUY_交谈。从她那里购买|r|T135466:0|t[Pestilent Wand]|r
.collect 5347,1 
.money <1.5713
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
.target Katis
.zoneskip Orgrimmar,1
step << Rogue/Warlock
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Doras
.zoneskip Orgrimmar,1
step
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Vhulgra
.zoneskip Ashenvale,1
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 22-30
#classic
<< Horde
#name 28-30 Thousand Needles
#displayname 28-32 Thousand Needles << sod
#next RestedXP部落30-40\30-33希尔斯堡/阿拉蒂；RestedXP部落30-40\33-34闪亮的平面
step << Shaman/Warrior
.goto Thunder Bluff,54.06,57.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Delgo交谈|r
.vendor >>|cRXP_BUY_从他那里买一把|r|T132408:0|t[Merciless Axe]|cRXP_Buy_如果它用完了，但你还没有|r
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Delgo Ragetotem
step << Rogue
.goto Thunder Bluff,53.00,56.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kard|r|cRXP_BUY_交谈。从他那里买一个|r|T135651:0|t[Main Gauche]|r
.collect 2526,1,5881,1 
.money <2.0353
.target Kard Ragetotem
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step << Rogue
#completewith FreewindHome
+配备|T135651:0|t[主规]
.use 2526
.itemcount 2526,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
.goto Thunder Bluff,54.90,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞金·石蹄|r
.turnin 1195 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.accept 1196 >>接任务: |cRXP_WARN_神圣之火|r
.target Zangen Stonehoof
step << Druid
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯姆·蛮鬃|r
.train 1850 >>训练你的职业技能
.target Kym Wildmane
.xp <26,1
.xp >28,1
step << Druid
#optional
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯姆·蛮鬃|r
.train 3029 >>训练你的职业技能
.target Kym Wildmane
.xp <28,1
.xp >30,1
step << Druid
#optional
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯姆·蛮鬃|r
.train 783 >>训练你的职业技能
.target Kym Wildmane
.xp <30,1
step
.goto Thunder Bluff,61.53,80.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.accept 1131 >>接任务: |cRXP_LOOT_钢齿土狼|r
.target Melor Stonehoof
step << Hunter
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 3045 >>训练你的职业技能
.target Urek Thunderhorn
.xp <26,1
.xp >28,1
step << Hunter
#optional
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14319 >>训练你的职业技能
.target Urek Thunderhorn
.xp <28,1
.xp >30,1
step << Hunter
#optional
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 5384 >>训练你的职业技能
.target Urek Thunderhorn
.xp <30,1
step << Hunter
.goto Thunder Bluff,54.07,84.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24559 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <30,1
step << Warrior
.goto Thunder Bluff,57.59,85.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 6178 >>训练你的职业技能
.target Ker Ragetotem
.xp <26,1
.xp >28,1
step << Warrior
#optional
.goto Thunder Bluff,57.59,85.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 7887 >>训练你的职业技能
.target Ker Ragetotem
.xp <28,1
.xp >30,1
step << Warrior
#optional
.goto Thunder Bluff,57.27,87.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
.train 7369 >>训练你的职业技能
.accept 1718 >>接任务: |cRXP_LOOT_岛民|r
.target Torm Ragetotem
.xp <30,1
step
.goto Thunder Bluff,45.83,64.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
.home >>将您的炉石设置为雷霆崖
.target Innkeeper Pala
step
#completewith SilkBandage
.goto Thunder Bluff,28.14,32.97,40,0
.goto Thunder Bluff,28.51,28.95,10 >>前往灵魂之旅崛起，进入视野之池
step
#xprate <1.99
.goto Thunder Bluff,22.81,20.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
.turnin 1086 >>交任务: |cRXP_FRIENDLY_地精空港|r
.target Apothecary Zamah
.isQuestComplete 1086
step << Rogue
#xprate >1.99
.goto Thunder Bluff,22.81,20.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师扎玛|r
.turnin 1067 >>交任务: |cRXP_FRIENDLY_返回雷霆崖|r
.target Apothecary Zamah
.isQuestTurnedIn 1066
step << Priest
#optional
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 992 >>训练你的职业技能
.target Miles Welsh
.xp <26,1
.xp >28,1
step << Priest
#optional
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 8104 >>训练你的职业技能
.target Miles Welsh
.xp <28,1
.xp >30,1
step << Priest
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 602 >>训练你的职业技能
.target Miles Welsh
.xp <30,1
step << Mage
#optional
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 120 >>训练你的职业技能
.target Archmage Shymm
.xp <26,1
.xp >28,1
step << Mage
#optional
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 759 >>训练你的职业技能
.target Archmage Shymm
.xp <28,1
.xp >30,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 8412 >>训练你的职业技能
.target Archmage Shymm
.xp <30,1
step << Mage
.goto Thunder Bluff,22.48,16.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Birgitte|r交谈
.train 3566 >>火车|T135765:0|t[电传：雷霆崖]
.target Birgitte Cranston
.xp <30,1
step << Shaman
#optional
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 408443 >>训练你的职业技能
.target Tigor Skychaser
.xp <26,1
.xp >28,1
step << Shaman
#optional
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 8053 >>训练你的职业技能
.target Tigor Skychaser
.xp <28,1
.xp >30,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 556 >>训练你的职业技能
.target Tigor Skychaser
.xp <30,1
step
#completewith next
.skill firstaid,115 >>创建|T133684:0|t[羊毛绷带]直到你的技能达到115
.skill firstaid,<1,1
step
.goto Thunder Bluff,29.68,21.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pand|r交谈
.train 3278 >>火车|T133687:0|t[厚羊毛绷带]
.target Pand Stonebinde
.skill firstaid,<1,1
step
#completewith next
.skill firstaid,150 >>创建|T133687:0|t[厚羊毛绷带]直到你的技能达到150
.skill firstaid,<1,1
step
#label SilkBandage
.goto Thunder Bluff,29.68,21.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pand|r交谈
.train 7928 >>火车|T133671:0|t[丝绸绷带]
>>|cRXP_WARN_如果你没有足够的羊毛布达到150技能，请跳过这一步|r
.target Pand Stonebinder
.skill firstaid,<1,1
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库纳·雷角|r
.vendor >>|cRXP_BUY_从她那里购买|r|T135495:0|t[Strurdy Recurve Bow]|cRXP_Buy_（如果有）|r
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
.target Kuna Thunderhorn
.money <1.9467
step
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kuna交谈|r
>>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800,5881,1 << Hunter 
.target Kuna Thunderhorn
step
#optional
.abandon 6561 >>放弃黑寻别墅
.isOnQuest 6561
.dungeon BFD
step
#optional
.abandon 6565 >>放弃对旧神的效忠
.isOnQuest 6565
.dungeon BFD
step
#optional
.abandon 6563 >>放弃阿库迈的本质
.isOnQuest 6563
.dungeon BFD
step
#optional
.abandon 6921 >>遗弃在废墟中
.isOnQuest 6921
.dungeon BFD
step
#completewith TearMoons
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Tal
.zoneskip The Barrens
step
.goto The Barrens,45.10,57.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
.accept 1153 >>接任务: |cRXP_LOOT_新的矿石样本|r
.target Tatternack Steelforge
step << Shaman
#completewith next
.goto The Barrens,43.84,77.28,25,0
.goto The Barrens,43.62,77.29,25,0
.goto The Barrens,43.42,77.41,15 >>前往|cRXP_FRIENDLY_Brine|r
step << Shaman
.goto The Barrens,43.42,77.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞恩|r
.turnin 1534 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 220 >>接任务: |cRXP_LOOT_水之召唤|r
.target Brine
step
#xprate <1.99
#completewith next
.goto The Barrens,48.85,84.88,50 >>前往Bael Modan
step
#xprate <1.99
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
.accept 857 >>接任务: |cRXP_LOOT_众月之泪|r
.target Feegly the Exiled
step
#xprate <1.99
#completewith next
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.43,84.28,6 >>下到Baeldun的底层
step
#xprate <1.99
.goto The Barrens,49.13,84.25
>>打开|cRXP_PICK_General Twinbraid的Strongbox |r。为|cRXP _Loot_Tear of the Moons而掠夺它|r
>>|cRXP_WARN_小心！在|cRXP_ENEMY_General Twinbraid|r的房间里很容易过度拉伸|r
>>|cRXP_WARN_直接拉除|cRXP_ENEMY_General Twinbraid|r以外的任何暴徒|r
.complete 857,1 
step
#xprate <1.99
#completewith next
.goto The Barrens,49.43,84.28,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,48.75,84.63,20 >>退出Baeldun的商店
step
#xprate <1.99
#label TearMoons
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
.turnin 857 >>交任务: |cRXP_FRIENDLY_众月之泪|r
.target Feegly the Exiled
step
#completewith next
.goto The Barrens,44.13,91.44,80 >>向南前往The Great Lift
step
#xprate <1.99
.goto Thousand Needles,31.87,21.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grish|r
.turnin 5881 >>交任务: |cRXP_FRIENDLY_召回卫兵|r
.target Grish Longrunner
.isOnQuest 5881
step
.goto Thousand Needles,32.24,22.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卫兵穆赫·月角|r
.accept 4542 >>接任务: |cRXP_LOOT_给乱风岗的紧急信件|r
.target Brave Moonhorn
step
.goto Thousand Needles,31.97,23.76,30 >>乘电梯到千针
>>|cRXP_WARN_不要掉下来！你会死的！|r
.isOnQuest 4542
step
#completewith next
.goto Thousand Needles,38.46,32.60,0
.goto Thousand Needles,38.61,31.49,50,0
.line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
>>杀死|cRXP_ENEMY_Galak信使|r。掠夺他获得|T133473:0|t[|cRXP-Loot_Assassination Note|r]。使用它开始任务
>>|cRXP_WARN_他巡逻。他在Splithoof Crag（东半人马营地）产卵|r
.collect 12564,1,4881 
.accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
.use 12564
.unitscan Galak Messenger
step
#completewith next
.goto Thousand Needles,46.73,48.27,30 >>前往Freewind Post的电梯
step
.goto Thousand Needles,45.91,49.91,25 >>乘电梯到Freewind
step
.goto Thousand Needles,45.70,50.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longhorn|r
.turnin 4542 >>交任务: |cRXP_FRIENDLY_给乱风岗的紧急信件|r
.accept 4841 >>接任务: |cRXP_LOOT_清除半人马|r
.target Cliffwatcher Longhorn
step
.goto Thousand Needles,46.00,50.80
>>单击|cRXP_FRIENDLY_Wanted海报|r
.accept 5147 >>接任务: |cRXP_LOOT_通缉：阿纳克·恐怖图腾|r
step
.goto Thousand Needles,46.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r
.turnin 1196 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.accept 1197 >>接任务: |cRXP_WARN_神圣之火|r
.target Rau Cliffrunner
step
.goto Thousand Needles,46.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r
.turnin 1196 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.target Rau Cliffrunner
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫塔尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134937:0|t[Scrolls]|cRX _ Buy_如果它们用完了|r << !Warrior
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_，|r|T134937:0|t[Scrolls]|cRXP-Buy_和|r|T134413:0|t[Liferoot]|cRXP_Buy_如果它们用完了|r << Warrior
.target Montarr
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
.vendor >>|cRXP_BUY_从他那里买一个|r|T135495:0|t[密集短弓]|cRXP_Buy_如果它用完了|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step
.goto Thousand Needles,44.70,50.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hagar|r
.accept 4821 >>接任务: |cRXP_LOOT_异型卵|r
.target Hagar Lightninghoof
step
.goto Thousand Needles,44.90,48.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾鲁|r
.accept 4767 >>接任务: |cRXP_LOOT_驭风者|r
.target Elu
step
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fp Freewind Post >>获取Freewind Post飞行路径
.target Nyse
step
#completewith Clovenhoof
>>杀死|cRXP_ENEMY_Galak侦察兵|r、|cRXD_ENEMY_加拉克牧马人|r和|cRXP_ENEMY_加拉克追风者|r
>>杀死你看到的每一个|cRXP_ENEMY_Galak Scout|r
.complete 4841,1 
.complete 4841,2 
.complete 4841,3 
.mob Galak Scout
.mob Galak Wrangler
.mob Galak Windchaser
step
#label Splithoofcave
#completewith Clovenhoof
.goto Thousand Needles,44.12,37.22,20 >>进入洞穴
step
#requires Splithoofcave
#completewith Clovenhoof
.goto Thousand Needles,44.44,36.32,12,0
.goto Thousand Needles,43.14,35.19,12,0
.goto Thousand Needles,42.11,34.54,12,0
.goto Thousand Needles,42.01,31.47,20 >>前往|cRXP_PICK_Ancient Brazier |r
step
#requires Splithoofcave
#label Clovenhoof
.goto Thousand Needles,42.01,31.47
>>打开|cRXP_PICK_Ancient Brazier|r。为|cRXP _Loot_Cloven Hoof|r打开它
>>|cRXP_WARN_小心！火盆由两个等级为30|r|cRXP_ENEMY_Galak的火焰防护装置防御|r
.complete 1197,1 
.mob Galak Flame Guard
step
#completewith next
.goto Thousand Needles,38.46,32.60,0
.goto Thousand Needles,38.46,32.60,50,0
.line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
>>杀死|cRXP_ENEMY_Galak信使|r。掠夺他获得|T133473:0|t[|cRXP-Loot_Assassination Note|r]。使用它开始任务
>>|cRXP_WARN_他巡逻。他在Splithoof Crag（东半人马营地）产卵|r
.collect 12564,1,4881 
.accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
.use 12564
.unitscan Galak Messenger
step
.loop 25,Thousand Needles,43.12,36.86,41.18,34.83,40.42,34.45,39.00,32.56,39.68,34.93,39.76,35.82,39.32,36.93,40.43,37.96,41.04,39.03,41.12,41.34,42.33,40.54,42.84,39.09,44.15,40.72,44.98,41.03,45.66,43.81,47.23,41.98,48.57,43.53,49.39,41.24,48.14,40.43,47.11,40.29,45.89,40.32,44.43,38.36,,43.12,36.86
>>杀死|cRXP_ENEMY_Galak侦察兵|r、|cRXD_ENEMY_加拉克牧马人|r和|cRXP_ENEMY_加拉克追风者|r
.complete 4841,1 
.complete 4841,2 
.complete 4841,3 
.mob Galak Scout
.mob Galak Wrangler
.mob Galak Windchaser
step
#completewith next
.goto Thousand Needles,54.57,44.36,12,0
.goto Thousand Needles,53.71,42.59,10,0
.goto Thousand Needles,53.95,41.49,10 >>前往|cRXP_FRONDLY_Dorn|r
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.accept 1149 >>接任务: |cRXP_LOOT_信仰的试炼|r
.timer 7,Test of Faith RP
.target Dorn Plainstalker
step
.goto Thousand Needles,26.63,34.23
>>|cRXP_WARN_等待RP|r
>>|cRXP_WARN_从木平台的末端跳下。你将被传送而不是死于坠落伤害|r
.complete 1149,1 
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.turnin 1149 >>交任务: |cRXP_FRIENDLY_信仰的试炼|r
.accept 1150 >>接任务: |cRXP_LOOT_耐力的试炼|r
.target Dorn Plainstalker
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.turnin 1149 >>交任务: |cRXP_FRIENDLY_信仰的试炼|r
.target Dorn Plainstalker
step
#completewith next
.goto Thousand Needles,56.36,50.39,20,0
>>掠夺地面上的|cRXP_Loot_外星蛋|r
.complete 4821,1 
step
.line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
.line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
.line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
.line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
.line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
.goto Thousand Needles,51.89,43.02,40,0
.goto Thousand Needles,53.41,46.19,40,0
.goto Thousand Needles,54.05,44.96,40,0
.goto Thousand Needles,53.47,46.65,40,0
.goto Thousand Needles,52.61,48.28,40,0
.goto Thousand Needles,53.64,48.50,40,0
.goto Thousand Needles,51.48,48.06,40,0
.goto Thousand Needles,59.69,47.76,40,0
.goto Thousand Needles,62.21,47.76,40,0
.goto Thousand Needles,62.63,48.38,40,0
.goto Thousand Needles,64.01,47.52,40,0
.goto Thousand Needles,63.92,46.63,40,0
.goto Thousand Needles,63.10,45.53,40,0
.goto Thousand Needles,65.83,51.44,40,0
.goto Thousand Needles,65.44,50.11,40,0
.goto Thousand Needles,64.91,50.30,40,0
.goto Thousand Needles,66.11,49.91,40,0
.goto Thousand Needles,66.32,49.13,40,0
.goto Thousand Needles,59.79,58.16,40,0
.goto Thousand Needles,58.87,58.69,40,0
.goto Thousand Needles,57.66,57.70,40,0
.goto Thousand Needles,58.93,57.68,40,0
.goto Thousand Needles,58.94,56.55,40,0
.goto Thousand Needles,58.97,54.98,40,0
.goto Thousand Needles,59.32,53.69,40,0
.goto Thousand Needles,59.79,58.16
>>杀死|cRXP_ENEMY_Gravelsnout Surveyors|r、|cRXD_ENEMY_Gravelsnout Diggers|r和|cRXP_ENEMY_Gibblesnik|r（如果他在上面）。掠夺它们以获取|cRXP_OOT_Ore Sample|r
.complete 1153,1 
.unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
step
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39,20,0
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39,20,0
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39,20,0
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39,20,0
.goto Thousand Needles,52.34,55.24,20,0
.goto Thousand Needles,37.63,56.11,20,0
.goto Thousand Needles,56.36,50.39
>>掠夺地面上的|cRXP_Loot_外星蛋|r
.complete 4821,1 
step << Druid
#season 2
#completewith IdoloftheHeckler
+|cRXP_WARN_接下来的几个步骤是针对|r|T236149:0|t[Berserk]|cRXP_WARN_run。你必须经过训练|r|T132117:0|t[挑战咆哮]|cRXP_WARN_to才能获得此符文|r
.train 5209,3 
step << Druid
#season 2
.train 424760,1
.train 5209,3 
.goto Thousand Needles,68.690,55.155
.aura 435081 >>|cRXP_WARN_站在|cRXP_PICK_Beasty Effy|r雕像旁领取|r|T134912:0|t[野兽雕像]|cRXP_WARN_buff|r
step << Druid
#season 2
#completewith next
.train 424760,1
.train 5209,3 
.goto Thousand Needles,68.690,55.155
.cast 5209 >>|cRXP_WARN_进入|r|T132276:0|t[熊形态]|cRXP_WARN_施放|r|T132117:0|t[挑战咆哮]|cRX _ WARN_召唤|r|cRX _ENEMY_Zai'enki|r|c RX _ WARN_（28级精英）|r
step << Druid
#season 2
.train 424760,1
.train 5209,3 
.goto Thousand Needles,68.690,55.155
>>杀死|cRXP_ENEMY_Zai'enki|r。为|T134912:0|t[|cRXP-FRIENDLY_Idol of the Heckler |r]掠夺它
.collect 213594,1
.mob Zai'enki
step << Druid
#label IdoloftheHeckler
#season 2
.train 424760,1
.train 5209,3 
.equip 18,213594 >>装备|T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler |r]
.use 213594
step << Druid
#season 2
#sticky
#completewith Grenka
.itemcount 213594,1
.train 424760,1
.train 5209,3 
.aura 408828 >>|cRXP_WARN_施放|r|T132117:0|t[挑战咆哮]|cRXP_WARN_obf到敌人身上，并在敌人拥有|r|T132117:0| t[挑战怒吼]|cRXP_WARN_debuff时杀死他们。这将为您提供一堆|r|T237556:0|t[建筑灵感]|cRXP_WARN_buff。重复此操作5次|r
>>|cRXP_WARN_使用|r|T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler |r]|cRXP_WARN_to-train|r|T236149:0|t[Berserk]|cRXP_WARN_once you have the |T136116:0|t[Inspired]|cRX P_WARN_buff|r
step
#completewith next
.goto Thousand Needles,46.73,48.27,30 >>前往Freewind Post的电梯
step
.goto Thousand Needles,45.70,50.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longhorn|r
.turnin 4841 >>交任务: |cRXP_FRIENDLY_清除半人马|r
.accept 5064 >>接任务: |cRXP_LOOT_恐怖图腾的密信|r
.target Cliffwatcher Longhorn
step
.goto Thousand Needles,46.10,51.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rau|r
.turnin 1197 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.target Rau Cliffrunner
.isQuestComplete 1197
step
.goto Thousand Needles,44.70,50.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hagar|r
.turnin 4821 >>交任务: |cRXP_FRIENDLY_异型卵|r
.accept 4865 >>接任务: |cRXP_LOOT_狂热之蛇|r
.target Hagar Lightninghoof
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
.vendor >>|cRXP_BUY_从他那里买一个|r|T135495:0|t[密集短弓]|cRXP_Buy_如果它用完了|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800,4767,1 
.target Starn
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫塔尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134937:0|t[Scrolls]|cRX _ Buy_如果它们用完了|r << !Warrior
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_，|r|T134937:0|t[Scrolls]|cRXP-Buy_和|r|T134413:0|t[Liferoot]|cRXP_Buy_如果它们用完了|r << Warrior
.target Montarr
step
#label GrenkaCave
.goto Thousand Needles,27.59,49.86,12,0
.goto Thousand Needles,28.65,51.30,12,0
.goto Thousand Needles,27.29,51.30,12 >>Enter Roguefeather Den
step
#completewith Grenka
+|cRXP_WARN_小心|cRXP_ENEMY_Screeching Windcallers |r cast|r|T136022:0|t[阵风]|cRXP_WARN_，在距离|cRXX_ENEMY_Screeching Windcallers 10码以内的4秒AoE眩晕|r
+|cRXP_ENEMY_尖叫Harpies |r cast|r|T136122:0|t[震耳欲聋的尖叫]|cRXP_WARN_，8秒的沉默|r << Mage/Warlock/Priest/Druid/Shaman
step
#completewith next
.goto Thousand Needles,25.84,54.78
+>>打开洞穴后面地面上的|cRXP_PICK_Harpy Foods |r，召唤|cRXP_ENEMY_Grenka|r
>>|cRXP_WARN_小心，多包|cRXP_ENEMY_Harpies|r|cRXP-WARN_将相继生成|r
step
#label Grenka
.goto Thousand Needles,26.16,55.89,15,0
.goto Thousand Needles,26.69,55.62,15,0
.goto Thousand Needles,25.90,55.23
>>杀死|cRXP_ENEMY_Grenka Bloodscrear|r。掠夺她|cRXX_Loot_Grenka的爪|r
>>|cRXP_WARN_这个任务非常艰巨。如果你不能独唱，分组或跳过|r
.link https://www.youtube.com/watch?v=EVy-6OjB5bs&t=27300s >>如果你认为这是可行的，请点击此处获取视觉参考
.complete 1150,1 
.mob Grenka Bloodscreech
step << Druid
#season 2
.itemcount 213594,1
.use 213594
.train 424760 >>|cRXP_WARN_使用|r|T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler |r]|cRXP-WARN_to train|r|T236149:0|t[Berserk]
.aura -408828
step
#completewith next
.line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
>>杀死|cRXP_ENEMY_Steelsnap|r。掠夺他|cRXX_Loot_Stelsnap's Rib|r
>>|cRXP_WARN_小心，有两个|cRXP_ENEMY_Hyenas|r|cRXP-WARN_defended他！|r
.complete 1131,1 
.unitscan Steelsnap
step
#completewith Paoka1
.goto Thousand Needles,14.41,32.44,20,0
.goto Thousand Needles,14.04,32.37,12,0
.goto Thousand Needles,14.04,32.37,20 >>前往高鲈
step << Warlock
#season 2
#completewith WickednessRune
>>地面上的织机|cRXP_Loot_High Wyvern蛋|r
.complete 4767,1 
step << Warlock
#season 2
.train 416017,1
.goto Thousand Needles,10.96,40.64
>>单击地面上的|cRXP_ENEMY_Reckless Warlock|r。掠夺他|T236297:0|t[硫磺雕刻]
>>|cRXP_WARN_这是一个罕见的敌人，它可能不存在|r
.collect 213583,1
.unitscan Reckless Warlock
.mob Reckless Warlock
step << Warlock
#season 2
.train 416017,1
.train 1949,3 
>>|cRXP_WARN_Cast|r|T135818:0|t[Hellfire]|cRXP_WARN_to使自己的生命值低于70%。之后|r|T236297:0|t[硫磺雕刻]|cRXP_WARN_将变换为|r|T134419:0|t[|cRXP-FRIENDLY_邪恶之路|r]
.collect 213102,1 
.itemcount 213583,1
step << Warlock
#season 2
#completewith Paoka1
.train 416017,1
.train 1949,1 
+|cRXP_WARN_一旦你训练过|r|T135818:0|t[Hellfire]|cRXP_WARN_，使用它来伤害你自己低于70%的生命值。之后|r|T236297:0|t[硫磺雕刻]|cRXP_WARN_将变换为|r|T134419:0|t[|cRXP-FRIENDLY_邪恶之路|r]
.collect 213102,1 
.itemcount 213583,1
step << Warlock
#label WickednessRune
#season 2
.train 416017 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Wickness |r]|cRXP_WARN_学习|r|T236295:0|t[邪恶之舞]
.use 416017
.itemcount 213102,1
step
#completewith PaokaEscort
>>地面上的织机|cRXP_Loot_High Wyvern蛋|r
.complete 4767,1 
step
#completewith next
.goto Thousand Needles,13.18,39.55,15,0
.goto Thousand Needles,13.52,40.27,15,0
.goto Thousand Needles,14.01,40.27,15,0
.goto Thousand Needles,14.92,39.63,15,0
.goto Thousand Needles,16.46,41.09,25,0
.goto Thousand Needles,17.89,40.57,20 >>沿着小路往上跑。前往|cRXP_FRIENDLY_Pao'ka|r
step
#label Paoka1
.goto Thousand Needles,17.89,40.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pao'ka|r to begin the escort
>>|cRXP_WARN_如果|cRXP_ENEMY_Heartrazzer|r|cRXP-WARN_i启动，请小心！这是32级稀有精英|r
.accept 4770 >>接任务: |cRXP_LOOT_回家|r
.target Pao'ka Swiftmountain
.unitscan Heartrazor
step
#label PaokaEscort
.goto Thousand Needles,11.06,34.95,40,0
.goto Thousand Needles,15.17,32.66
>>|cRXP_WARN_护送|r|cRXP_FRIENDLY_Pao'ka|r
>>|cRXP_WARN_一旦|cRXP_FRIENDLY_Pao'ka|r到达高位栖息的中部，三只高位栖息的Wyvern就会产卵。你只需要攻击东部的一个，其他的就会消失|r
.complete 4770,1 
step
.goto Thousand Needles,11.31,33.07,50,0
.goto Thousand Needles,9.57,34.90,50,0
.goto Thousand Needles,10.68,40.95,50,0
.goto Thousand Needles,11.98,36.72,50,0
.goto Thousand Needles,13.91,39.11,50,0
.goto Thousand Needles,11.31,33.07,50,0
.goto Thousand Needles,9.57,34.90,50,0
.goto Thousand Needles,10.68,40.95,50,0
.goto Thousand Needles,11.98,36.72,50,0
.goto Thousand Needles,13.91,39.11,50,0
>>地面上的织机|cRXP_Loot_High Wyvern蛋|r
.complete 4767,1 
step
#completewith Messenger
.line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
>>杀死|cRXP_ENEMY_Steelsnap|r。掠夺他|cRXX_Loot_Stelsnap's Rib|r
>>|cRXP_WARN_小心，有两个|cRXP_ENEMY_Hyenas|r|cRXP-WARN_defended他！|r
.complete 1131,1 
.unitscan Steelsnap
step
.goto Thousand Needles,21.06,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laer|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Laer Stepperunner
step
#optional
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
>>|cRXP_WARN_小心！打开此选项将召唤三个|cRXP_ENEMY_Galak刺客|r|cRXP_WARN_您必须保护的|cRXT_FRIENDLY_Kanati|r|r
.turnin 4881 >>交任务: |cRXP_FRIENDLY_暗杀计划|r
.accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
.target Kanati Greycloud
.isOnQuest 4881
step
#optional
.goto Thousand Needles,21.25,32.05
>>杀死|cRXP_ENEMY_Galak刺客|r以保护|cRXP_FRIENDLY_Kanati|r
.complete 4966,1 
.mob Galak Assassin
.isOnQuest 4966
step
#optional
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
.turnin 4966 >>交任务: |cRXP_FRIENDLY_保护卡纳提·灰云|r
.isQuestComplete 4966
step
.goto Thousand Needles,21.54,32.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motega|r
.turnin 4865 >>交任务: |cRXP_FRIENDLY_狂热之蛇|r
.accept 5062 >>接任务: |cRXP_LOOT_神圣之火|r
.turnin 4770 >>交任务: |cRXP_FRIENDLY_回家|r
.target Motega Firemane
step
.goto Thousand Needles,21.43,32.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizlo|r
.accept 5151 >>接任务: |cRXP_LOOT_超适应齿轮|r
.target Wizlo Bearingshiner
step
.goto Thousand Needles,22.78,24.53
>>打开笼子杀死|cRXP_ENEMY_Enraged Panther|r。掠夺他以获得|cRXX_Loot_超级电容器Gizmo |r
>>|cRXP_WARN_如果你需要的话，分组。这个任务很难|r
.complete 5151,1 
.mob Enraged Panther
step
#xprate <1.50
.goto Thousand Needles,18.7,22.2
.xp 28+29000 >>升级到29000+/41400xp
step
#som
.goto Thousand Needles,18.7,22.2
.xp 28+20000 >>升级到20000+/41400xp
step << Rogue
#season 2
.train 400093,1
#completewith next
.goto Thousand Needles,18.44,21.58,10 >>进入E’shok营地的大帐篷
step << Rogue
#season 2
.train 400093,1
.goto Thousand Needles,18.686,21.126
>>打开|cRXP_PICK_Sizable Stolen Strongbox|r。为|T132597:0|t[|cRXP _Loot_Large Strongbox|1r]抢劫它
.collect 215451,1
step << Rogue
#season 2
.train 400093,1
.cast 1804 >>|cRXP_WARN_铸造|r|T136058:0|t[拾取锁定]|cRXP_WARN_on the |r|T132597:0|t[|cRXP_OOT_Large Strongbox|r]|cRX P_WARN_to解锁|r
.usespell 1804
.use 215451
step << Rogue
#season 2
.train 400093,1
.use 215451 >>打开|T132597:0|t[|cRXP_LOOT_Large Strongbox|r]。为|T132597:0|t[|cRXP_Loot_Medium Strongbox|r]掠夺它
.collect 215452,1
step << Rogue
#season 2
.train 400093,1
.cast 1804 >>|cRXP_WARN_铸造|r|T136058:0|t[拾取锁定]|cRXP_WARN_on the |r|T132597:0|t[|cRXP_OOT_Medium Strongbox|r]|cRX P_WARN_to解锁|r
.usespell 1804
.use 215452
step << Rogue
#season 2
.train 400093,1
.use 215452 >>打开|T132597:0|t[|cRXP_LOOT_Medium Strongbox|r]。为|T132597:0|t[|cRXP_Loot_Small Strongbox|r]掠夺它
.collect 215453,1
step << Rogue
#season 2
.train 400093,1
.cast 1804 >>|cRXP_WARN_铸造|r|T136058:0|t[拾取锁定]|cRXP_WARN_on the |r|T132597:0|t[|cRXP_OOT_Small Strongbox|r]|cRX P_WARN_to解锁|r
.usespell 1804
.use 215453
step << Rogue
#season 2
.train 400093,1
.use 215453 >>打开|T132597:0|t[|cRXP_LOOT_Small Strongbox|r]。为|T134419:0|t[|cRXP_FRIENDLY_Rune of the Southpaw|r]掠夺它
.collect 213138,1
step << Rogue
#season 2
.itemcount 213138,1
.use 213138
.train 400093 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Southpaw|r]|cRXP-WARN_to train|r|T134919:0|t[Rolling with the Punches]
step
#label Messenger
.line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
.goto Thousand Needles,38.46,32.60,0
.goto Thousand Needles,18.32,22.10,0
.goto Thousand Needles,18.32,22.10,40,0
.goto Thousand Needles,18.72,22.53,40,0
.goto Thousand Needles,18.47,23.06,40,0
.goto Thousand Needles,18.70,24.42,40,0
.goto Thousand Needles,18.63,26.19,40,0
.goto Thousand Needles,18.98,26.71,40,0
.goto Thousand Needles,19.46,27.04,40,0
.goto Thousand Needles,19.96,27.67,40,0
.goto Thousand Needles,20.45,27.87,40,0
.goto Thousand Needles,20.83,28.26,40,0
.goto Thousand Needles,22.05,30.61,40,0
.goto Thousand Needles,24.56,32.76,40,0
.goto Thousand Needles,25.29,34.23,40,0
.goto Thousand Needles,27.34,34.02,40,0
.goto Thousand Needles,28.24,33.37,40,0
.goto Thousand Needles,28.64,33.43,40,0
.goto Thousand Needles,29.24,33.96,40,0
.goto Thousand Needles,29.51,33.89,40,0
.goto Thousand Needles,30.69,32.43,40,0
.goto Thousand Needles,31.55,30.61,40,0
.goto Thousand Needles,32.29,30.52,40,0
.goto Thousand Needles,33.27,30.86,40,0
.goto Thousand Needles,33.81,30.12,40,0
.goto Thousand Needles,34.25,29.49,40,0
.goto Thousand Needles,35.19,28.11,40,0
.goto Thousand Needles,35.84,28.59,40,0
.goto Thousand Needles,36.57,29.47,40,0
.goto Thousand Needles,37.34,29.29,40,0
.goto Thousand Needles,38.81,31.73,40,0
.goto Thousand Needles,39.51,33.43
>>杀死|cRXP_ENEMY_Galak信使|r。掠夺他获得|T133473:0|t[|cRXP-Loot_Assassination Note|r]。使用它开始任务
>>|cRXP_WARN_他巡逻。他在Splithoof Crag（东半人马营地）产卵|r
>>|cRXP_WARN_用|r|T132172:0|t[Eagle Eye]|cRXP_WARN_if you have trained为他侦察|r << Hunter
>>|cRXP_WARN_用|r|T136034:0|t[远视]|cRXP_WARN_if you have trained为他侦察|r << Shaman
.collect 12564,1,4881 
.accept 4881 >>接任务: |cRXP_LOOT_暗杀计划|r
.use 12564
.unitscan Galak Messenger
step
.line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
.goto Thousand Needles,11.50,21.61,40,0
.goto Thousand Needles,11.88,20.90,40,0
.goto Thousand Needles,12.89,19.97,40,0
.goto Thousand Needles,14.49,20.04,40,0
.goto Thousand Needles,15.69,18.65,40,0
.goto Thousand Needles,16.20,18.53,40,0
.goto Thousand Needles,16.70,18.61,40,0
.goto Thousand Needles,17.28,18.93,40,0
.goto Thousand Needles,17.66,19.46,40,0
.goto Thousand Needles,17.96,20.18,40,0
.goto Thousand Needles,17.87,20.78,40,0
.goto Thousand Needles,17.54,21.49,40,0
.goto Thousand Needles,17.24,22.32,40,0
.goto Thousand Needles,17.66,22.98,40,0
.goto Thousand Needles,18.11,23.65,40,0
.goto Thousand Needles,18.57,24.07,40,0
.goto Thousand Needles,18.68,24.68,40,0
.goto Thousand Needles,18.64,25.90,40,0
.goto Thousand Needles,18.48,26.74,40,0
.goto Thousand Needles,17.82,27.50,40,0
.goto Thousand Needles,17.19,29.60,40,0
.goto Thousand Needles,15.67,31.56,40,0
.goto Thousand Needles,15.08,31.63,40,0
.goto Thousand Needles,14.34,30.13,40,0
.goto Thousand Needles,13.75,28.54,40,0
.goto Thousand Needles,13.36,26.97,40,0
.goto Thousand Needles,13.01,26.31,40,0
.goto Thousand Needles,11.91,25.02,40,0
.goto Thousand Needles,11.55,24.44,40,0
.goto Thousand Needles,11.49,24.07,40,0
.goto Thousand Needles,11.16,23.21,40,0
.goto Thousand Needles,11.20,22.29,40,0
.goto Thousand Needles,11.50,21.61
>>杀死|cRXP_ENEMY_Steelsnap|r。掠夺他|cRXX_Loot_Stelsnap's Rib|r
>>|cRXP_WARN_他逆时针巡逻|r
>>|cRXP_WARN_用|r|T132172:0|t[Eagle Eye]|cRXP_WARN_if you have trained为他侦察|r << Hunter
>>|cRXP_WARN_用|r|T136034:0|t[远视]|cRXP_WARN_if you have trained为他侦察|r << Shaman
.complete 1131,1 
.unitscan Steelsnap
step
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
>>|cRXP_WARN_小心！打开此选项将召唤三个|cRXP_ENEMY_Galak刺客|r|cRXP_WARN_您必须保护的|cRXT_FRIENDLY_Kanati|r|r
.turnin 4881 >>交任务: |cRXP_FRIENDLY_暗杀计划|r
.accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
.target Kanati Greycloud
.isOnQuest 4881
step
.goto Thousand Needles,21.25,32.05
>>杀死|cRXP_ENEMY_Galak刺客|r以保护|cRXP_FRIENDLY_Kanati|r
.complete 4966,1 
.mob Galak Assassin
.isOnQuest 4966
step
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
.turnin 4966 >>交任务: |cRXP_FRIENDLY_保护卡纳提·灰云|r
.isQuestComplete 4966
step
.goto Thousand Needles,21.43,32.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizlo|r
.turnin 5151 >>交任务: |cRXP_FRIENDLY_超适应齿轮|r
.target Wizlo Bearingshiner
.isQuestComplete 5151
step
#loop
.goto Thousand Needles,36.58,38.77,35,0
.goto Thousand Needles,37.77,38.17,35,0
.goto Thousand Needles,36.63,36.23,35,0
.goto Thousand Needles,34.96,33.22,35,0
.goto Thousand Needles,33.37,32.85,35,0
.goto Thousand Needles,33.67,34.09,35,0
.goto Thousand Needles,34.88,34.82,35,0
.goto Thousand Needles,35.62,36.20,35,0
.goto Thousand Needles,36.05,37.41,35,0
.goto Thousand Needles,36.58,38.77,35,0
>>在地面和水下掠夺|cRXP_PICK_香龙舌兰植物|r
>>|cRXP_ENEMY_烫伤元素|r和|cRXP__ENEMY_沸腾元素|r对霜损伤免疫，并且具有高度的耐火性。尽量避开它们或使用奥术 << Mage
>>|cRXP_WARN_小心|r|cRXP_ENEMY_沸腾元素|r|cRXP_WARN_cast|r|T132156:0|t[蒸汽喷射]|cRXP-WARN_，在10秒内减少30%的命中几率|r << Warrior/Rogue/Shaman/Druid
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Scalding Elements|r|cRXP_WARN_cast|r|T135807:0|t[Scald]|cRXP _WARN_，立即造成150点火焰伤害并使你眩晕4秒|r
.complete 5062,1 
step
#completewith next
.hs >>火炉到雷霆崖
.use 6948
step
.goto Thunder Bluff,45.83,64.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Pala
step
#xprate <1.99
.goto Thunder Bluff,61.53,80.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.turnin 1131 >>交任务: |cRXP_FRIENDLY_钢齿土狼|r
.accept 1136 >>接任务: |cRXP_LOOT_霜喉雪人|r
.target Melor Stonehoof
step
#xprate >1.99
.goto Thunder Bluff,61.53,80.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.turnin 1131 >>交任务: |cRXP_FRIENDLY_钢齿土狼|r
.target Melor Stonehoof
step << Hunter
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14319 >>训练你的职业技能
.target Urek Thunderhorn
.xp <28,1
.xp >30,1
step << Hunter
#optional
.goto Thunder Bluff,59.13,86.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 5384 >>训练你的职业技能
.target Urek Thunderhorn
.xp <30,1
step << Hunter
.goto Thunder Bluff,54.07,84.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24559 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <30,1
step << Warrior
.goto Thunder Bluff,57.59,85.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 7887 >>训练你的职业技能
.target Ker Ragetotem
.xp <28,1
.xp >30,1
step << Warrior
#optional
.goto Thunder Bluff,57.27,87.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
.train 7369 >>训练你的职业技能
.accept 1718 >>接任务: |cRXP_LOOT_岛民|r
.target Torm Ragetotem
.xp <30,1
step
.goto Thunder Bluff,69.88,30.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
.turnin 5062 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.accept 5088 >>接任务: |cRXP_LOOT_阿利卡拉|r
.target Magatha Grimtotem
step
.goto Thunder Bluff,69.88,30.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
.turnin 5062 >>交任务: |cRXP_FRIENDLY_神圣之火|r
.target Magatha Grimtotem
step << Druid
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯姆·蛮鬃|r
.train 3029 >>训练你的职业技能
.target Kym Wildmane
.xp <28,1
.xp >30,1
step << Druid
#optional
.goto Thunder Bluff,76.79,31.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯姆·蛮鬃|r
.train 783 >>训练你的职业技能
.target Kym Wildmane
.xp <30,1
step
.goto Thunder Bluff,36.01,59.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥尔德·石塔|r
.accept 1102 >>接任务: |cRXP_WARN_奥尔德的报复|r
.target Auld Stonespire
.dungeon RFK
step << Priest
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 8104 >>训练你的职业技能
.target Miles Welsh
.xp <28,1
.xp >30,1
step << Priest
#optional
.goto Thunder Bluff,25.31,15.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
.train 602 >>训练你的职业技能
.target Miles Welsh
.xp <30,1
step << Mage
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 759 >>训练你的职业技能
.target Archmage Shymm
.xp <28,1
.xp >30,1
step << Mage
#optional
.goto Thunder Bluff,22.74,14.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师山姆|r
.train 8412 >>训练你的职业技能
.target Archmage Shymm
.xp <30,1
step << Mage
.goto Thunder Bluff,22.48,16.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Birgitte|r交谈
.train 3566 >>火车|T135765:0|t[电传：雷霆崖]
.target Birgitte Cranston
.xp <30,1
step << Shaman
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 8053 >>训练你的职业技能
.target Tigor Skychaser
.xp <28,1
.xp >30,1
step << Shaman
#optional
.goto Thunder Bluff,23.64,18.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 556 >>训练你的职业技能
.target Tigor Skychaser
.xp <30,1
step
#completewith next
.skill firstaid,150 >>创建|T133687:0|t[厚羊毛绷带]直到你的技能达到150
.skill firstaid,<1,1
step
.goto Thunder Bluff,29.68,21.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pand|r交谈
.train 7928 >>火车|T133671:0|t[丝绸绷带]
>>|cRXP_WARN_如果你没有足够的羊毛布达到150技能，请跳过这一步|r
.target Pand Stonebinder
.skill firstaid,<1,1
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库纳·雷角|r
.vendor >>|cRXP_BUY_从她那里购买|r|T135495:0|t[Strurdy Recurve Bow]|cRXP_Buy_（如果有）|r
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
.target Kuna Thunderhorn
.money <1.9467
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kuna交谈|r
>>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800,1153,1 
.target Kuna Thunderhorn
step << Shaman/Warrior
.goto Thunder Bluff,54.06,57.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Delgo交谈|r
.vendor >>|cRXP_BUY_从他那里买一把|r|T132408:0|t[Merciless Axe]|cRXP_Buy_如果它用完了，但你还没有|r
>>|cRXP_WARN_另外，您也可以购买|r|T135576:0|t[Bullova]
.money <3.0195
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
.target Delgo Ragetotem
step << Rogue
.goto Thunder Bluff,53.00,56.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kard|r|cRXP_BUY_交谈。从他那里买一个|r|T135275:0|t[大刀]|r
.collect 2520,1,1153,1 
.money <2.5924
.target Kard Ragetotem
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
#completewith TearMoons
+装备|T135275:0|t[大刀]
.use 2520
.itemcount 2520,1
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
.goto Thunder Bluff,53.00,56.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kard|r|cRXP_BUY_交谈。从他那里买一个|r|T135651:0|t[Main Gauche]|r
.collect 2526,1,1153,1 
.money <2.0353
.target Kard Ragetotem
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step << Rogue
#completewith FreewindHome
+配备|T135651:0|t[主规]
.use 2526
.itemcount 2526,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
#completewith next
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Tal
.zoneskip The Barrens
step
.goto The Barrens,45.10,57.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
.turnin 1153 >>交任务: |cRXP_FRIENDLY_新的矿石样本|r
.target Tatternack Steelforge
step
#completewith FreewindHome
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Freewind Post >>飞到Freewind Post
.target Omusa Thunderhorn
step
.goto Thousand Needles,44.90,48.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾鲁|r
.turnin 4767 >>交任务: |cRXP_FRIENDLY_驭风者|r
.target Elu
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫塔尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134937:0|t[Scrolls]|cRX _ Buy_如果它们用完了|r << !Warrior
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_，|r|T134937:0|t[Scrolls]|cRXP-Buy_和|r|T134413:0|t[Liferoot]|cRXP_Buy_如果它们用完了|r << Warrior
.target Montarr
step
#label FreewindHome
.goto Thousand Needles,46.07,51.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板埃比克瓦|r
.home >>将您的炉石设置为Freewind Post
.target Innkeeper Abeqwa
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.turnin 1150 >>交任务: |cRXP_FRIENDLY_耐力的试炼|r
.accept 1151 >>接任务: |cRXP_LOOT_力量的试炼|r
.target Dorn Plainstalker
.isQuestComplete 1150
step
#optional
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.accept 1151 >>接任务: |cRXP_LOOT_力量的试炼|r
.target Dorn Plainstalker
.isQuestTurnedIn 1150
step
.goto Thousand Needles,36.10,55.02,100,0
.goto Thousand Needles,30.35,51.58,40,0
.goto Thousand Needles,24.34,44.72,60,0
.goto Thousand Needles,20.88,39.84,60,0
.goto Thousand Needles,17.33,36.72,60,0
.goto Thousand Needles,13.27,26.74,60,0
.goto Thousand Needles,9.98,21.71,60,0
.goto Thousand Needles,24.34,44.72
>>找到并杀死|cRXP_ENEMY_Rok'Alim the Pounder|r。掠夺他的|cRXX_Loot_Frages\r
>>|cRXP_WARN_他在该地区西北部的大部分地区巡逻|r
>>|cRXP_WARN_如果你找不到他，暂时跳过这一步|r
.complete 1151,1 
.unitscan Rok'Alim the Pounder
.isOnQuest 1151

step
.goto Thousand Needles,31.47,36.71,30 >>前往乌云顶峰
.isOnQuest 5064
step << Priest
#season 2
#completewith LakoteEscort
.train 425309,1
>>杀死|cRXP_ENEMY_Grimthome Geomancers|r，|cRXX_ENEMY_grimthome Bandits|r，| cRXP__ENEMY_Gritthome Reavers|r和|cRXD_ENEMY_ Grimthomm Stomper|r。为|T135975:0|t[|cRXP_Loot_快速路径预言|r]掠夺它们
.collect 213140,1
.mob Grimtotem Geomancer
.mob Grimtotem Bandit
.mob Grimtotem Reaver
.mob Grimtotem Stomper
step
#completewith next
.goto Thousand Needles,33.08,35.33,20,0
.goto Thousand Needles,32.78,32.24,20,0
.goto Thousand Needles,32.03,31.36,20,0
.goto Thousand Needles,32.37,28.64,20,0
.goto Thousand Needles,32.60,27.51,20,0
.goto Thousand Needles,34.87,31.76,20,0
.goto Thousand Needles,34.15,35.77,20,0
.goto Thousand Needles,33.32,36.24,20 >>前往乌云顶峰
step
.goto Thousand Needles,31.79,32.58
>>打开平台顶部的|cRXP_PICK_Document Chest|r。为|cRXP_Loot_Secret Note#1|r抢劫
.complete 5064,1 
step
.goto Thousand Needles,33.80,39.90
>>打开大帐篷内的|cRXP_PICK_Document Chest|r。为|cRXP_Loot_Secret Note#1|r抢劫
.complete 5064,2 
step
.goto Thousand Needles,39.20,41.60
>>打开东部高原帐篷内的|cRXP_PICK_Document Chest|r。为|cRXP_Loot_Secret Note#1|r抢劫
.complete 5064,3 
step
#completewith next
.goto Thousand Needles,35.68,39.25,20,0
.goto Thousand Needles,34.32,35.74,20,0
.goto Thousand Needles,35.56,30.94,20,0
.goto Thousand Needles,36.97,31.97,20 >>前往东北高原的篝火
step
>>清除|cRXP_ENEMY_Grimtoms|r，然后点燃篝火
>>杀死|cRXP_ENEMY_Arikara|r。为她掠夺她|cRXX_Loot_Skin|r
.goto Thousand Needles,38.00,35.30
.complete 5088,2 
.complete 5088,1 
.mob Arikara
step
.goto Thousand Needles,38.00,26.80
>>杀死|cRXP_ENEMY_Arnak Grimtomet|r。为他的|cRXX_Loot_Hoof|r掠夺他
.complete 5147,1 
.mob Arnak Grimtotem
step
.goto Thousand Needles,38.00,26.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lakota|r
>>|cRXP_WARN_这将开始护送|r
.accept 4904 >>接任务: |cRXP_LOOT_终获解救|r
.target Lakota Windsong
step
#label LakoteEscort
.goto Thousand Needles,38.96,29.46,20,0
.goto Thousand Needles,37.56,31.43,20,0
.goto Thousand Needles,36.89,31.73,20,0
.goto Thousand Needles,35.64,31.01,20,0
.goto Thousand Needles,34.53,30.78,20,0
.goto Thousand Needles,33.19,28.54,20,0
.goto Thousand Needles,32.53,27.44,20,0
.goto Thousand Needles,32.28,28.67,20,0
.goto Thousand Needles,32.04,31.37,20,0
.goto Thousand Needles,32.86,32.62,20,0
.goto Thousand Needles,33.05,35.42,20,0
.goto Thousand Needles,31.06,36.89
>>护送|cRXP_FRIENDLY_Lakota|r到安全地带
>>|cRXP_WARN_每当她到达一个新平台时，两个|r|cRXP_ENEMY_Grimtoms|r|cRXP_WARN_将产生。如果你后面有重生，试着站在她前面，清理平台|r
>>|cRXP_WARN_小心，因为这个任务很难。不要害怕跑在你身后而错过了护送而逃跑|r
.complete 4904,1 
.target Lakota Windsong
step << Priest
#season 2
.train 425309,1
.goto Thousand Needles,31.33,37.05,10,0
.goto Thousand Needles,33.17,35.38,15,0
.goto Thousand Needles,31.96,31.32,15,0
.goto Thousand Needles,33.04,27.61,30,0
.goto Thousand Needles,35.20,31.09,30,0
.goto Thousand Needles,34.17,38.81
>>杀死|cRXP_ENEMY_Grimthome Geomancers|r，|cRXX_ENEMY_grimthome Bandits|r，| cRXP__ENEMY_Gritthome Reavers|r和|cRXD_ENEMY_ Grimthomm Stomper|r。为|T135975:0|t[|cRXP_Loot_快速路径预言|r]掠夺它们
.collect 213140,1
.mob Grimtotem Geomancer
.mob Grimtotem Bandit
.mob Grimtotem Reaver
.mob Grimtotem Stomper
step << Priest
#season 2
.train 425309 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_LOOT_快速路径的预测|r]|cRXP_WARN_训练|r|T236254:0|t[授权更新]
.use 213140
.itemcount 213140,1
step
.goto Thousand Needles,21.54,32.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Motega|r
.turnin 5088 >>交任务: |cRXP_FRIENDLY_阿利卡拉|r
.target Motega Firemane
step
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
>>|cRXP_WARN_小心！打开此选项将召唤三个|cRXP_ENEMY_Galak刺客|r|cRXP_WARN_您必须保护的|cRXT_FRIENDLY_Kanati|r|r
.turnin 4881 >>交任务: |cRXP_FRIENDLY_暗杀计划|r
.accept 4966 >>接任务: |cRXP_LOOT_保护卡纳提·灰云|r
.target Kanati Greycloud
.isOnQuest 4881
step
.goto Thousand Needles,21.25,32.05
>>杀死|cRXP_ENEMY_Galak刺客|r以保护|cRXP_FRIENDLY_Kanati|r
.complete 4966,1 
.mob Galak Assassin
.isOnQuest 4966
step
.goto Thousand Needles,21.25,32.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kanati|r
.turnin 4966 >>交任务: |cRXP_FRIENDLY_保护卡纳提·灰云|r
.isQuestComplete 4966
step
.goto Thousand Needles,36.10,55.02,100,0
.goto Thousand Needles,30.35,51.58,40,0
.goto Thousand Needles,24.34,44.72,60,0
.goto Thousand Needles,20.88,39.84,60,0
.goto Thousand Needles,17.33,36.72,60,0
.goto Thousand Needles,13.27,26.74,60,0
.goto Thousand Needles,9.98,21.71,60,0
.goto Thousand Needles,24.34,44.72
>>找到并杀死|cRXP_ENEMY_Rok'Alim the Pounder|r。掠夺他的|cRXX_Loot_Frages\r
>>|cRXP_WARN_他在该地区西北部的大部分地区巡逻|r
.complete 1151,1 
.unitscan Rok'Alim the Pounder
.isOnQuest 1151
step
#completewith FeralasFP
.subzone 1099 >>前往Feralas的Mojache营地
>>|cRXP_WARN_小心！待在路上，避开高级别暴徒|r
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布隆克|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Bronk
step
#label FeralasFP
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩|r
.fp Camp Mojache >>获取营地Mojache飞行路线
.fly freewind Post >>飞到Freewind Post
.target Shyn
.zoneskip The Barrens
step
.goto Thousand Needles,45.70,50.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Longhorn|r
.turnin 5064 >>交任务: |cRXP_FRIENDLY_恐怖图腾的密信|r
.turnin 5147 >>交任务: |cRXP_FRIENDLY_通缉：阿纳克·恐怖图腾|r
.target Cliffwatcher Longhorn
step
.goto Thousand Needles,46.00,51.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalia|r
.turnin 4904 >>交任务: |cRXP_FRIENDLY_终获解救|r
.target Thalia Amberhide
.isQuestComplete 4904
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫塔尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134937:0|t[Scrolls]|cRX _ Buy_如果它们用完了|r << !Warrior
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_，|r|T134937:0|t[Scrolls]|cRXP-Buy_和|r|T134413:0|t[Liferoot]|cRXP_Buy_如果它们用完了|r << Warrior
.target Montarr
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
.vendor >>|cRXP_BUY_从他那里买一个|r|T135495:0|t[Dense Shortbow]|cRXP_Buy_如果它用完了，用箭装满你的箭袋|r
.collect 3030,1800,1151,1 
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800,1151,1 
.target Starn
step
.goto Thousand Needles,53.95,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorn|r
.turnin 1151 >>交任务: |cRXP_FRIENDLY_力量的试炼|r
.target Dorn Plainstalker
.isQuestComplete 1151
step
#optional
.goto Thousand Needles,43.12,36.86
.xp 30 >>升级到30级

step
#completewith next
.goto Thousand Needles,70.58,62.69,200 >>前往: |cRXP_PICK_千针石林|r
step
#xprate <1.99
.goto Thousand Needles,77.79,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1111 >>接任务: |cRXP_WARN_码头管理员迪兹维格|r
.target Kravel Koalbeard
step
#xprate >1.99
.goto Thousand Needles,77.79,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1110 >>接任务: |cRXP_LOOT_火箭车零件|r
.accept 1111 >>接任务: |cRXP_WARN_码头管理员迪兹维格|r
.target Kravel Koalbeard
step
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔|r, Wizzle
.accept 1104 >>接任务: |cRXP_LOOT_含盐的蝎毒|r
.goto Thousand Needles,78.07,77.13
.accept 1105 >>接任务: |cRXP_LOOT_硬化龟壳|r
.goto Thousand Needles,78.14,77.12
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
#xprate >1.99
.goto Thousand Needles,80.17,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.accept 1176 >>接任务: |cRXP_LOOT_减轻负重|r
.target Pozzik
step
#xprate >1.99
.goto Thousand Needles,81.63,77.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zherin|r
.accept 1175 >>接任务: |cRXP_LOOT_安全隐患|r
.target Trackmaster Zherin

step
#completewith SwarmGrows
.goto Thousand Needles,75.44,97.37,40,0
.goto Tanaris,51.60,25.44,100 >>前往: |cRXP_PICK_塔纳利斯|r
step
#xprate <1.99
#completewith next
.hs >>Hearth to Freewind Post公司公司
.use 6948
.cooldown item,6948,>0
step
#xprate <1.99
.goto Thousand Needles,46.06,51.41,30 >>Arrive in Freewind Post
.zoneskip Thousand Needles
.cooldown item,6948,>0
step
#xprate <1.99
#completewith SwarmGrows
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fp Gadgetzan >>获取Gadgetzan飞行路线
.fly Crossroads >>飞向十字路口
.target Bulkrek Ragefist
.cooldown item,6948,<0
.zoneskip Thousand Needles
step
#xprate <1.99
#completewith SwarmGrows
.goto Thousand Needles,45.15,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fly Crossroads >>飞向十字路口
.target Nyse
.subzoneskip 484,1
step
#xprate >1.99
#completewith SwarmGrows
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fp Gadgetzan >>获取Gadgetzan飞行路线
.fly Crossroads >>飞向十字路口
.target Bulkrek Ragefist
step
#label SwarmGrows
.goto The Barrens,51.10,29.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r
.accept 1145 >>接任务: |cRXP_LOOT_疯狂的虫群|r
.target Korran
step << !Warrior
#completewith WharfDizzy
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >>飞到棘轮
.target Devrak
step << Warrior
#completewith WharfDizzy
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >>飞到棘轮
.target Devrak
.isOnQuest 1718
step << Warrior
#completewith IslanderPickUp
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Devrak
.zoneskip Orgrimmar
step << Warrior
#completewith next
.goto Orgrimmar,75.00,34.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 1145 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.accept 1146 >>接任务: |cRXP_LOOT_疯狂的虫群|r
.target Belgrom Rockmaul
step << Warrior
#label IslanderPickUp
.goto Orgrimmar,80.37,32.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索瑞克|r
.accept 1718 >>接任务: |cRXP_LOOT_岛民|r
.target Sorek
step << Warrior
#completewith WharfDizzy
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >>飞到棘轮
.target Doras
.zoneskip Orgrimmar,1
step
#label WharfDizzy
.goto The Barrens,63.35,38.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员迪兹维格|r
.turnin 1111 >>交任务: |cRXP_FRIENDLY_码头管理员迪兹维格|r
.accept 1112 >>接任务: |cRXP_LOOT_给克拉维尔的零件|r
.target Wharfmaster Dizzywig
step << Shaman
.goto The Barrens,65.83,43.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之先知伊斯伦|r
.turnin 220 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 63 >>接任务: |cRXP_LOOT_水之召唤|r
.target Islen Waterseer
step << Shaman
.goto The Barrens,65.83,43.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之先知伊斯伦|r
>>|cRXP_WARN_确保获得|r|T134754:0|t[|cRXP_LOOT_Water Sapta|r
.turnin 972 >>交任务: |cRXP_FRIENDLY_水之灵契|r
.collect 6637,1 
step << Warrior
#completewith next
.goto The Barrens,65.09,47.81,90,0
.goto The Barrens,68.61,49.16,100 >>Travel to Fray Island
step << Warrior
.goto The Barrens,68.62,49.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰诺克·马克雷德|r
.turnin 1718 >>交任务: |cRXP_FRIENDLY_岛民|r
.accept 1719 >>接任务: |cRXP_LOOT_格斗考验|r
.target Klannoc Macleod
step << Warrior
>>走到你身后的格栅上。快速杀死一个接一个来的|cRXP_ENEMY_Affrey Challenger|r
>>一旦出现就杀死|cRXP_ENEMY_Big Will|r
.goto The Barrens,68.59,48.76
.complete 1719,1 
.complete 1719,2 
.mob Big Will
step << Warrior
#xprate <1.99
.goto The Barrens,68.62,49.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰诺克·马克雷德|r
>>|cRXP_WARN_这会教你狂暴姿态|r
.turnin 1719 >>交任务: |cRXP_FRIENDLY_格斗考验|r
.accept 1791 >>接任务: |cRXP_LOOT_捕风者|r
.target Klannoc Macleod
step << Warrior
#xprate >1.99
.goto The Barrens,68.62,49.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰诺克·马克雷德|r
>>|cRXP_WARN_这会教你狂暴姿态|r
.turnin 1719 >>交任务: |cRXP_FRIENDLY_格斗考验|r
.target Klannoc Macleod
step << Warrior
.goto The Barrens,62.81,37.91,200 >>Travel back to Ratchet
step << !Mage
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Bragok
.zoneskip Orgrimmar
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step
#sticky
#completewith EnterRFK
.subzone 491 >>现在你应该找一个团队去Razorfen Kraul
.dungeon RFK
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8412 >>训练你的职业技能
.target Pephredo
.xp <30,1
.xp >32,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8422 >>训练你的职业技能
.target Pephredo
.xp <32,1
step << Mage
.goto Orgrimmar,45.43,56.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Horthus|r|cRXP_BUY_交谈。从他那里购买两个或多个|r|T134419:0|t[传送符文]|r
.collect 17031,2 
.target Horthus
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 1760 >>训练你的职业技能
.target Ormok
.xp <30,1
.xp >32,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8623 >>训练你的职业技能
.target Ormok
.xp <32,1
step << Shaman
.goto Orgrimmar,37.95,37.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希尔恩·火结|r
.trainer >>训练你的职业技能
.accept 1531 >>接任务: |cRXP_LOOT_空气的召唤|r
.target Searn Firewarder
step
.goto Orgrimmar,44.70,52.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Craven|r交谈
>>|cRXP_WARN_他在阴影之谷巡逻|r
.accept 1431 >>接任务: |cRXP_LOOT_联盟关系|r
.target Craven Drok
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 2941 >>训练你的职业技能
.target Mirket
.xp <30,1
.xp >32,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 6213 >>训练你的职业技能
.target Mirket
.xp <32,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul
step << Priest/Warlock
.goto Orgrimmar,44.16,48.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Katis|r|cRXP_BUY_交谈。从她那里购买|r|T135466:0|t[Pestilent Wand]|r
.collect 5347,1,6544,1 
.money <1.5713
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
.target Katis
step
.goto Orgrimmar,75.00,34.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 1145 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.accept 1146 >>接任务: |cRXP_LOOT_疯狂的虫群|r
.target Belgrom Rockmaul
step
#season 0,1
.goto Orgrimmar,76.00,25.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺格|r
.accept 2841 >>接任务: |cRXP_WARN_设备之战|r
.target Nogg
step
#season 0,1
.goto Orgrimmar,75.50,25.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索维克|r
>>通过他的对话来接受这个任务。你必须在你的任务日志中有装备战争才能接受这个任务
.accept 2842 >>接任务: |cRXP_WARN_主工程师斯库提|r
.target Sovik
step
#season 0,1
.abandon 2841 >>放弃钻机战争。确保你的任务日志中有总工程师史酷蒂
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 7369 >>训练你的职业技能
.target Grezz Ragefist
.xp <30,1
.xp >32,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 20658 >>训练你的职业技能
.target Grezz Ragefist
.xp <32,1
step << Hunter
#xprate <1.99
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
>>|cRXP_WARN_保存至少1金88银以备日后使用|r
.train 5384 >>训练你的职业技能
.target Ormak Grimshot
.xp <30,1
.xp >32,1
step << Hunter
#xprate >1.99
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 5384 >>训练你的职业技能
.target Ormak Grimshot
.xp <30,1
.xp >32,1
step << Hunter
#xprate <1.99
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
>>|cRXP_WARN_保存至少1金88银以备日后使用|r
.train 14263 >>训练你的职业技能
.target Ormak Grimshot
.xp <32,1
step << Hunter
#xprate >1.99
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14263 >>训练你的职业技能
.target Ormak Grimshot
.xp <32,1
step << Hunter
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
.train 24559 >>训练你的宠物法术
.target Xao'tsu
.xp <30,1
step << Hunter
.goto Orgrimmar,78.11,38.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Jin'sora交谈|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800,549,1 << Hunter 
.target Jin'sora
step << Hunter
.goto Orgrimmar,81.52,19.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
.train 197 >>Train Two-Handed Axes
.target Hanashi
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 602 >>训练你的职业技能
.target Ur'kyo
.xp <30,1
.xp >32,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 6077 >>训练你的职业技能
.target Ur'kyo
.xp <32,1
step
.goto Orgrimmar,22.50,52.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔丹|r
.turnin 1431 >>交任务: |cRXP_FRIENDLY_联盟关系|r
.accept 1432 >>接任务: |cRXP_LOOT_联盟关系|r
.target Keldran
step
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Camp Taurajo >>Fly Camp Taurajo
.target Doras
.zoneskip The Barrens
.dungeon RFK
step
#label EnterRFK
.goto The Barrens,43.46,90.18,0
.goto The Barrens,43.46,90.18,40,0
.goto 1414,50.89,70.35
.zone 301 >>Enter Razorfen Kraul
.dungeon RFK
step
>>杀死|cRXP_ENEMY_Charlga剃刀侧面|r。为她|cRXP_Loot_Heart|r和|T134939:0|t[|cRXP-Loot_Small Scroll|r]掠夺她。使用滚动开始任务
.complete 1102,1 
.collect 17008,1 
.accept 6522 >>接任务: |cRXP_WARN_邪恶的盟友|r
.mob Charlga Razorflank
.use 17008
.dungeon RFK
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_进口商威利克斯|r
>>|cRXP_WARN_这将开始护送|r
.accept 1144 >>接任务: |cRXP_WARN_进口商威利克斯|r
.target Willix the Importer
.dungeon RFK
step
>>护送|cRXP_FRIENDLY_Willix进口商|r通过Razorfen Kraul
>>|cRXP_WARN_请确保靠近|cRXP_FRIENDLY_Willix|r，否则任务可能无法完成！|r
.complete 1144,1 
.isOnQuest 1144
.target Willix the Importer
.dungeon RFK
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_进口商威利克斯|r
.turnin 1144 >>交任务: |cRXP_FRIENDLY_进口商威利克斯|r
.target Willix the Importer
.isQuestComplete 1144
.dungeon RFK
step << !Mage
.hs >>Hearth to Freewind Post公司公司
.use 6948
.dungeon RFK
step << !Mage
#xprate <1.99
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Nyse
.zoneskip Orgrimmar
.dungeon RFK
step << !Mage
#xprate >1.99
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Nyse
.zoneskip Orgrimmar
.isOnQuest 63 << Shaman
.dungeon RFK << !Shaman
.isOnQuest 6522 << !Shaman
step << Mage
#xprate <1.99
.cast 3567 >>演员阵容|T135765:0|t[电报：Orgrimmar]
.zoneskip Orgrimmar
.dungeon RFK
step << Mage
#xprate >1.99
.cast 3567 >>演员阵容|T135765:0|t[电报：Orgrimmar]
.zoneskip Orgrimmar
.dungeon RFK
.isOnQuest 63 << Shaman
.dungeon RFK << !Shaman
.isOnQuest 6522 << !Shaman
step
#season 0,1
#sticky
#completewith EnterGNOMER
.subzone 133 >>现在你应该找一个小组去Gnomeregan
.dungeon GNOMER
step
#season 0,1
.goto Orgrimmar,76.00,25.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺格|r
.accept 2841 >>接任务: |cRXP_WARN_设备之战|r
.target Nogg
.dungeon GNOMER
step
#season 0,1
.goto Orgrimmar,75.50,25.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索维克|r
>>通过他的对话来接受这个任务
.accept 2842 >>接任务: |cRXP_WARN_主工程师斯库提|r
.target Sovik
.dungeon GNOMER
step
#season 0,1
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >>飞到棘轮
.target Doras
.zoneskip Orgrimmar,1
.dungeon GNOMER
step
#season 0,1
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
.dungeon GNOMER
step
#season 0,1
.goto Stranglethorn Vale,27.60,77.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯库提|r
.turnin 2842 >>交任务: |cRXP_FRIENDLY_主工程师斯库提|r
.accept 2843 >>接任务: |cRXP_WARN_出发！诺莫瑞根！|r
.target Scooty
.timer 9 >>Goblin Transponder
.dungeon GNOMER
step
#season 0,1
.goto Stranglethorn Vale,27.60,77.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯库提|r
.turnin 2843 >>交任务: |cRXP_FRIENDLY_出发！诺莫瑞根！|r
.target Scooty
.dungeon GNOMER
step
#season 0,1
.goto Stranglethorn Vale,27.63,77.55
.goto Eastern Kingdoms,42.75,59.93,30 >>登上Gnomeregan转发器
.dungeon GNOMER
step
#season 0,1
#label EnterGNOMER
.goto Eastern Kingdoms,42.64,59.80,20,0
.goto Eastern Kingdoms,42.58,59.82,20,0
.goto Eastern Kingdoms,42.56,59.87,20,0
.goto Eastern Kingdoms,42.51,60.15,20,0
.goto Eastern Kingdoms,42.34,60.18
.zone 226 >>Enter Gnomeregan
.dungeon GNOMER
step
#season 0,1
>>杀死|cRXP_ENEMY_Mekkineer Thermaplug|r。掠夺他的|cRXX_Loot_Safe组合|r
>>在房间北侧的|cRXP_PICK_Thermaplugg's Safe|r中抢劫|cRXP_OOT_Rig蓝图|r
.complete 2841,2 
.complete 2841,1 
.mob Mekgineer Thermaplugg
.dungeon GNOMER
step << !Mage
#season 0,1
#completewith next
.hs >>Hearth to Freewind Post公司公司
.use 6948
.dungeon GNOMER
step << !Mage
#season 0,1
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Nyse
.zoneskip Orgrimmar
.dungeon GNOMER
step << !Mage
#season 0,1
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Bragok
.zoneskip 392,1
.dungeon GNOMER
step << Mage
#season 0,1
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
.dungeon GNOMER
step
#season 0,1
.goto Orgrimmar,76.00,25.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺格|r
.turnin 2841 >>交任务: |cRXP_FRIENDLY_设备之战|r
.target Nogg
.dungeon GNOMER
step
#xprate >1.99
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
.isOnQuest 63 << Shaman
.dungeon RFK << !Shaman
.isOnQuest 6522 << !Shaman
step
#xprate >1.99
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
.isOnQuest 63 << Shaman
.dungeon RFK << !Shaman
.isOnQuest 6522 << !Shaman
step
#xprate >1.99
#completewith next
.goto Tirisfal Glades,61.80,65.06,20,0
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
.zoneskip Undercity
.isOnQuest 63 << Shaman
.dungeon RFK << !Shaman
.isOnQuest 6522 << !Shaman
step
#xprate >1.99
#completewith next
.goto Undercity,66.09,20.06,20,0
.goto Undercity,64.37,23.94,20,0
.goto Undercity,65.93,26.71,10,0
.goto Undercity,65.89,34.03,10,0
.goto Undercity,64.22,39.77,10,0
.goto Undercity,65.53,43.62,15 >>乘电梯到地下城
.isOnQuest 63 << Shaman
.dungeon RFK << !Shaman
.isOnQuest 6522 << !Shaman
step
#xprate >1.99
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 6522 >>交任务: |cRXP_FRIENDLY_邪恶的盟友|r
.target Varimathras
.dungeon RFK
.isOnQuest 6522
step << Shaman
#xprate >1.99
.zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
.isOnQuest 63
step << Shaman
#xprate >1.99
#completewith CallofWaterSVP
#label CallofWaterSVP1
.goto Silverpine Forest,42.05,40.62,10,0
.goto Silverpine Forest,41.83,41.16,8 >>跳到树的一侧
.isOnQuest 63
step << Shaman
#xprate >1.99
#completewith CallofWaterSVP
#label CallofWaterSVP2
#requires CallofWaterSVP1
.goto Silverpine Forest,38.09,44.40,15 >>跑下山
.isOnQuest 63
step << Shaman
#xprate >1.99
#completewith next
#requires CallofWaterSVP2
.goto Silverpine Forest,38.09,44.40
.aura 8899 >>饮用|T134754:0|t[水Sapta]以查看|cRXP_ENEMY_水的轻微腐败表现|r
.use 6637
.isOnQuest 63
step << Shaman
#xprate >1.99
.goto Silverpine Forest,38.50,44.46
>>杀死|cRXP_ENEMY_Corrupt Minor Manifestion of Water |r。掠夺它以获得|cRXD_Loot_ Corrupt Manifestion的护腕|r
.complete 63,1 
.mob Corrupt Minor Manifestation of Water
.isOnQuest 63
step << Shaman
#xprate >1.99
#label CallofWaterSVP
.goto Silverpine Forest,38.26,44.56
>>点击Everfound的|cRXP_PICK_Brazier|r
.turnin 63 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 100 >>接任务: |cRXP_LOOT_水之召唤|r
.timer 15,Call of Water RP
step << Shaman
#xprate >1.99
.goto Silverpine Forest,38.75,44.63
>>|cRXP_WARN_等待RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之魂|r
.turnin 100 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 96 >>接任务: |cRXP_LOOT_水之召唤|r
.target Minor Manifestation of Water
step
#xprate >1.99
#completewith next
.hs >>Hearth to Freewind Post公司公司
.use 6948
.zoneskip Thousand Needles
step
#xprate >1.99
.goto Thousand Needles,46.07,51.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板埃比克瓦|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Abeqwa
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 30-40
#xprate <1.99
#classic
<< Horde
#name 30-33 Hillsbrad/Arathi
#next 33-34 Shimmering Flats
#somname 30-32 希尔斯布莱德丘陵/Arathi
step << Mage
#completewith next
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
step << Mage
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉娜·阿克雷|r
.vendor >>|cRXP_BUY_至少买两个|r|T134419:0|t[传送符文]
.collect 17031,2 
.target Hannah Akeley
step << !Mage
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step
#completewith StealfromThievesPickup
.goto Tirisfal Glades,61.80,65.06,20,0
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
.zoneskip Undercity
step
#completewith StealfromThievesPickup
.goto Undercity,66.09,20.06,20,0
.goto Undercity,64.37,23.94,20,0
.goto Undercity,65.93,26.71,10,0
.goto Undercity,65.89,34.03,10,0
.goto Undercity,64.22,39.77,10,0
.goto Undercity,65.53,43.62,15 >>乘电梯到地下城
step << Hunter
.goto Undercity,57.31,32.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿基巴德|r
.train 5011 >>火车十字弓
.train 202 >>Train Two-Handed Swords
.target Archibald
step << Hunter
.goto Undercity,58.82,32.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Benijah|r|cRXP_BUY_交谈。从他那里买一个|r|T134402:0|t[Heavy Quiver]|cRXP_Buy_和一个|r |T135532:0|t[Heavy Crossbow]，用箭装满你的箭袋|r
.collect 15809,1,552,1 
.collect 7371,1,552,1 
.collect 3030,2600,552,1 << Hunter 
.money <1.6691
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.0
.target Benijah Fenner
step << Hunter
.goto Undercity,58.82,32.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Benijah|r|cRXP_BUY_交谈。从他那里买一个|r|T134402:0|t[Heavy Quiver]并用箭装满你的箭袋|r
.collect 7371,1,552,1 
.target Benijah Fenner
step << Rogue
.goto Undercity,58.65,33.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_交谈。从他那里买一个|r|T135275:0|t[大刀]|r
.collect 2520,1,552,1 
.money <2.2165
.target Geoffrey Hartwell
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
#completewith StealfromThievesPickup
+装备|T135275:0|t[大刀]
.use 2520
.itemcount 2520,1
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
.goto Undercity,58.65,33.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_交谈。从他那里买一个|r|T135651:0|t[Main Gauche]|r
.collect 2526,1,552,1 
.money <1.7402
.target Geoffrey Hartwell
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step << Rogue
#completewith StealfromThievesPickup
+配备|T135651:0|t[主规]
.use 2526
.itemcount 2526,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
.collect 3712,10 >>|cRXP_BUY_从拍卖行购买10件|r|T134026:0|t[甲鱼肉]|cRXP_Buy_|r
.target Auctioneer Rhyker
step
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 6522 >>交任务: |cRXP_FRIENDLY_邪恶的盟友|r
.target Varimathras
.isOnQuest 6522
.dungeon RFK
step
#label StealfromThievesPickup
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉纳维·卡隆|r
.accept 1164 >>接任务: |cRXP_LOOT_科娜塔一家|r
.target Genavie Callow
step
.goto Undercity,62.14,44.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤奈斯·伯奇|r
.train 2550 >>训练烹饪稍后进行探索
.target Eunice Burch
step
.goto Undercity,62.30,43.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Ronald|r|cRXP_BUY_BUY|r|T134059:0|t[舒缓香料]|cRXP-BUY_交谈|r
.collect 3713,1 
.target Ronald Burch
step
.goto Undercity,65.99,44.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威廉|r
.bankwithdraw 3692 >>从您的银行提取|T133730:0|t[|cRXP_LOOT_Hillsbrad人类头骨|r]（如果您有）
.bankwithdraw 3564 >>提款|T132761:0|t[铁的装运]
.target William Montague
.isQuestTurnedIn 527
step << Druid
#completewith next
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher >>飞向坟墓
.target Michael Garrett
.zoneskip Hillsbrad Foothills
.isOnQuest 30
step << Druid
#completewith next
.goto Silverpine Forest,36.12,28.30,120 >>向东北方向驶向大海
.isOnQuest 30
step << Druid
.goto Silverpine Forest,29.58,29.30
>>将|cRXP_PICK_Strange Lockbox |r放入水中，用于|T133442:0|t[水上耐力的半挂件]

.collect 15882,1,30,1 

.isOnQuest 30
step << Druid
#completewith next
.goto Silverpine Forest,45.62,42.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Karos Razok
.zoneskip Silverpine Forest,1
step << !Shaman
#completewith AcceptAgony
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Michael Garrett
.zoneskip Hillsbrad Foothills
step << Shaman
#completewith next
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly The Sepulcher >>飞向坟墓
.target Michael Garrett
.zoneskip Silverpine Forest
step << Shaman
.zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
>>|cRXP_WARN_按照下面的链接打开网站解锁页面。在网站上选择你当前的角色，但不要点击其他任何内容|r
>>|cRXP_WARN_如果失败，请跳过此步骤并正常运行|r
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >>|cRXP_WARN_单击此处|r
.isOnQuest 63
step << Shaman
#completewith CallofWaterSVP
#label CallofWaterSVP1
.goto Silverpine Forest,42.05,40.62,10,0
.goto Silverpine Forest,41.83,41.16,8 >>跳到树的一侧
.isOnQuest 63
step << Shaman
#completewith CallofWaterSVP
#label CallofWaterSVP2
#requires CallofWaterSVP1
.goto Silverpine Forest,38.09,44.40,15 >>跑下山
.isOnQuest 63
step << Shaman
#completewith next
#requires CallofWaterSVP2
.goto Silverpine Forest,38.09,44.40
.aura 8899 >>饮用|T134754:0|t[水Sapta]以查看|cRXP_ENEMY_水的轻微腐败表现|r
.use 6637
.isOnQuest 63
step << Shaman
.goto Silverpine Forest,38.50,44.46
>>杀死|cRXP_ENEMY_Corrupt Minor Manifestion of Water |r。掠夺它以获得|cRXD_Loot_ Corrupt Manifestion的护腕|r
.complete 63,1 
.mob Corrupt Minor Manifestation of Water
.isOnQuest 63
step << Shaman
#label CallofWaterSVP
.goto Silverpine Forest,38.26,44.56
>>点击Everfound的|cRXP_PICK_Brazier|r
.turnin 63 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 100 >>接任务: |cRXP_LOOT_水之召唤|r
.timer 15,Call of Water RP
step << Shaman
.goto Silverpine Forest,38.75,44.63
>>|cRXP_WARN_等待RP|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之魂|r
.turnin 100 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 96 >>接任务: |cRXP_LOOT_水之召唤|r
.target Minor Manifestation of Water
step << Shaman
#completewith next
.goto Silverpine Forest,45.62,42.59,100 >>|cRXP_WARN_如果你之前打开了网站的解锁页面，你现在可以注销我，然后点击将你的角色移动到最近的墓地（坟墓）|r
>>|cRXP_WARN_如果此操作失败或页面无法加载，请跳过此步骤|r
.link https://us.battle.net/support/en/help/product/wow/197/834/solution >>|cRXP_WARN_单击此处|r
.zoneskip Silverpine Forest,1
step << Shaman
#completewith next
.goto Silverpine Forest,45.62,42.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karos|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Karos Razok
.zoneskip Hillsbrad Foothills
step
#label AgonyPickup
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 509 >>接任务: |cRXP_LOOT_苦楚药剂|r
.target Apothecary Lydon
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 529 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 532 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.target High Executor Darthalia
.isQuestComplete 529
step
#optional
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.accept 532 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.target High Executor Darthalia
.isQuestTurnedIn 529
step
.goto Hillsbrad Foothills,63.24,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.accept 533 >>接任务: |cRXP_LOOT_秘密潜入|r
.target Krusk
step
.goto Hillsbrad Foothills,63.88,19.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒塞万德|r
.accept 552 >>接任务: |cRXP_LOOT_赫尔库拉的复仇|r
.target Novice Thaivand
step << !Warrior
.goto Hillsbrad Foothills,68.42,17.01,50,0
.goto Hillsbrad Foothills,70.31,11.72,50,0
.goto Alterac Mountains,74.67,65.36,50,0
.goto Alterac Mountains,77.32,63.20,50,0
.goto Alterac Mountains,80.07,58.61,50,0
.goto Alterac Mountains,84.76,51.26,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Hillsbrad Foothills,68.21,19.09,50,0
.goto Hillsbrad Foothills,68.32,25.16,50,0
.goto Hillsbrad Foothills,67.66,31.88,50,0
.goto Hillsbrad Foothills,67.38,35.69,50,0
.goto Hillsbrad Foothills,63.76,40.24,50,0
.goto Hillsbrad Foothills,61.97,42.50,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Alterac Mountains,77.32,63.20
>>在河上来回旅行。杀死|cRXP_ENEMY_Snapjaws |r。掠夺它们的|T134026:0|t[|cRXP-Loot_Turtle Meat|r]
.collect 3712,10 
.mob Snapjaw
.isQuestAvailable 7321
step << Warrior
#completewith next
>>在河上来回旅行。杀死|cRXP_ENEMY_Snapjaws |r。掠夺它们的|T134026:0|t[|cRXP-Loot_Turtle Meat|r]
.collect 3712,10 
.mob Snapjaw
.isQuestAvailable 7321
step << Warrior
.goto Alterac Mountains,80.49,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1791 >>交任务: |cRXP_FRIENDLY_捕风者|r
.accept 1712 >>接任务: |cRXP_LOOT_塞克隆尼亚|r
.target Bath'rah the Windwatcher
step << Warrior
.goto Alterac Mountains,77.32,63.20,50,0
.goto Alterac Mountains,80.07,58.61,50,0
.goto Alterac Mountains,84.76,51.26,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Hillsbrad Foothills,68.21,19.09,50,0
.goto Hillsbrad Foothills,68.32,25.16,50,0
.goto Hillsbrad Foothills,67.66,31.88,50,0
.goto Hillsbrad Foothills,67.38,35.69,50,0
.goto Hillsbrad Foothills,63.76,40.24,50,0
.goto Hillsbrad Foothills,61.97,42.50,50,0
.goto Alterac Mountains,89.36,47.26,50,0
.goto Alterac Mountains,77.32,63.20,50,0
>>在河上来回旅行。杀死|cRXP_ENEMY_Snapjaws |r。掠夺它们的|T134026:0|t[|cRXP-Loot_Turtle Meat|r]
.collect 3712,10 
.mob Snapjaw
.isQuestAvailable 7321
step
.goto Hillsbrad Foothills,62.28,19.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Christoph|r inside the inn
.accept 7321 >>接任务: |cRXP_LOOT_海龟汤|r
.turnin 7321 >>交任务: |cRXP_FRIENDLY_海龟汤|r
.target Christoph Jeffcoat
step
#completewith next
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝瓦里尔|r, |cRXP_FRIENDLY_大法师沃迪恩·伍德格莱尔|r
.accept 556 >>接任务: |cRXP_LOOT_石雕|r
.goto Hillsbrad Foothills,61.60,20.86
.accept 544 >>接任务: |cRXP_LOOT_入室偷窃|r
.goto Hillsbrad Foothills,61.49,20.93
.target Keeper Bel'varil
.target Magus Wordeen Voidglare
step
.loop 25,Hillsbrad Foothills,47.9,31.5,46.1,33.2,43.5,27.3,43.9,30.2,41.8,30.6,43.6,24.9,47.9,31.5
>>杀死Darrow Hill洞穴内及周围的|cRXP_ENEMY_Yetis|r。为|cRXP_Loot_Hellular的杆|r掠夺它们
>>|T135471:0|t[Helcular’s Rod]|cRXP_WARN_具有相当低的下降率|r
.complete 552,1 
.mob Cave Yeti
.mob Ferocious Yeti
step
#completewith next
#label Council
.goto Hillsbrad Foothills,29.63,42.33
>>杀死|cRXP_ENEMY_Hillsbrad议员|r
>>|cRXP_WARN_小心他们的霜新星和霜螺栓|r
.complete 532,2 
.mob Hillsbrad Councilman
.isQuestTurnedIn 529
step
>>杀死Hillsbrad市政厅内的|cRXP_ENEMY_治安官Burnside|r和|cRXX_ENEMY_Clerk Horrace Whitesteed|r
>>掠夺|cRXP_Loot_Hillsbrad镇登记处|r并烧毁|cRX_PICK_Hillsbrad公告|r
.complete 532,1 
.complete 567,1 
.goto Hillsbrad Foothills,29.67,41.64
.complete 532,4 
.goto Hillsbrad Foothills,29.52,41.53
.complete 532,3 
.goto Hillsbrad Foothills,29.73,41.75
.isQuestTurnedIn 529
.mob Magistrate Burnside
step
.goto Hillsbrad Foothills,29.63,42.33
>>完成杀戮|cRXP_ENEMY_Hillsbrad市议员|r
>>|cRXP_WARN_小心他们的霜新星和霜螺栓|r
.complete 532,2 
.mob Hillsbrad Councilman
.isQuestTurnedIn 529
step
#completewith next
.goto Hillsbrad Foothills,62.37,20.32
.subzone 272 >>Return to Tarren Mill
step
#requires Council
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 532 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 539 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.target High Executor Darthalia
.isQuestTurnedIn 529
step
#hardcore
.goto Hillsbrad Foothills,63.88,19.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒塞万德|r
.turnin 552 >>交任务: |cRXP_FRIENDLY_赫尔库拉的复仇|r
.target Novice Thaivand
step
#softcore
.goto Hillsbrad Foothills,63.88,19.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒塞万德|r
.turnin 552 >>交任务: |cRXP_FRIENDLY_赫尔库拉的复仇|r
.accept 553 >>接任务: |cRXP_LOOT_赫尔库拉的复仇|r
.target Novice Thaivand
step << Hunter
#completewith next
.goto Hillsbrad Foothills,62.55,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
.vendor >>|cRXP_BUY_箭满箭袋|r
.target Kayren Soothallow
step
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
>>|cRXP_BUY_从他那里购买|r|T132795:0|t[Soutshore Stout]|cRXP_Buy_|r
.collect 3703,1,533,1 
.target Innkeeper Shay
step
.goto Hillsbrad Foothills,26.95,59.55,100 >>Run to Azurelode Mine
.isOnQuest 546
step
#completewith Hacket
>>杀死|cRXP_ENEMY_Hillsbrad|r暴徒。掠夺他们的|cRXP_Loot_Sulls|r
.complete 546,1 
.isOnQuest 546
step
#completewith next
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5
>>杀死|cRXP_ENEMY_Miner Hackett|r
.complete 567,3 
.unitscan Miner Hackett
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,31.21,56.01
>>杀死|cRXP_ENEMY_Foreman债券|r和|cRXP_ENEMY_Hillsbrad矿工|r
>>|cRXP_ENEMY_工头债券|r|cRXP_WARN_i位于矿井最底层的中心|r
.complete 539,1 
.complete 539,2 
.isQuestTurnedIn 528
step
#label Hacket
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5
>>杀死|cRXP_ENEMY_Miner Hackett|r
.complete 567,3 
.unitscan Miner Hackett
.isQuestTurnedIn 528
step
.goto Hillsbrad Foothills,29.69,58.03,15,0
.goto Hillsbrad Foothills,28.17,57.27,15,0
.goto Hillsbrad Foothills,26.48,58.74,15,0
.goto Hillsbrad Foothills,27.39,59.38,15,0
.goto Hillsbrad Foothills,27.48,57.60,15,0
.goto Hillsbrad Foothills,28.06,55.12,15,0
.goto Hillsbrad Foothills,28.33,53.10,15,0
.goto Hillsbrad Foothills,31.15,54.73
>>完成击杀|cRXP_ENEMY_Hillsbrad|r暴民。掠夺他们的|cRXP_Loot_Sulls|r
.complete 546,1 
.isQuestTurnedIn 528
step
#era
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5
.xp 31 >>在Azurelode矿升级到31级。如果您需要重新进货，请返回塔伦米尔
step
#som
#phase 1-2
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5,60,0
.goto Hillsbrad Foothills,29.7,55.7,60,0
.goto Hillsbrad Foothills,31.1,58.6,60,0
.goto Hillsbrad Foothills,31.8,52.5
.xp 31 >>在矿井中升级到31级。如果您需要重新进货，请返回塔伦米尔
step
#completewith next
+|cRXP_WARN_下一个任务可能相当艰难，要格外小心！|r
step
#completewith Belamoore
>>杀死所有|cRXP_ENEMY_Dalaran类人|r。掠夺他们的|cRXX_Loot_磨损的石头代币|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Dalaran护盾'|r|cRXP_WARN_Growing|r|T136173:0|t[紫盾效果]|cRXP-WARN_buff。它持续8秒，在近战中被击中后返回85点伤害|r << !Mage !Priest !Warlock
.complete 556,1 
step
.goto Alterac Mountains,20.14,84.28,20,0
.goto Alterac Mountains,20.33,86.31,12,0
.goto Alterac Mountains,19.93,85.94
>>杀死|cRXP_ENEMY_Ricter|r、|cRXD_ENEMY_Alina|r和|cRXP_ENEMY_Dermot|r。掠夺他们的|cRXP_Loot_B血石|r
.complete 544,2 
.complete 544,3 
.complete 544,1 
.mob Ricter
.mob Alina
.mob Dermot
step
#completewith next
.goto Alterac Mountains,18.70,84.38,10 >>进入西楼
step
#label Belamoore
.goto Alterac Mountains,18.29,82.83,8,0
.goto Alterac Mountains,17.65,84.11,8,0
.goto Alterac Mountains,17.76,83.18
>>杀死大楼二楼的|cRXP_ENEMY_Kegan Darkmar|r。掠夺他的|cRXP_Loot_Bloodstone |r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Warden Belamore |r|cRXP_WARN_。在攻击之前杀死她|r|cRXP_ENEMY_Kegan Darkmar|r
.complete 544,4 
.mob Kegan Darkmar
.mob Warden Belamoore
step
.loop 25,Alterac Mountains,20.1,86.2,17.9,83.0,10.7,76.6,19.4,75.6,20.1,86.2,17.9,83.0,10.7,76.6,19.4,75.6,20.1,86.2
>>完成杀死|cRXP_ENEMY_Dalaran类人|r。掠夺他们的|cRXX_Loot_磨损的石头代币|r
>>|cRXP_WARN_小心|cRXP_ENEMY_Dalaran护盾'|r|cRXP_WARN_Growing|r|T136173:0|t[紫盾效果]|cRXP-WARN_buff。它持续8秒，在近战中被击中后返回85点伤害|r << !Mage !Priest !Warlock
.complete 556,1 
.mob Dalaran Shield Guard
.mob Dalaran Theurgist
.mob Dalaran Worker
.mob Dalaran Summoner
step
#completewith Frostmaw
.goto Alterac Mountains,29.12,77.98,30,0
.goto Alterac Mountains,30.69,82.31,30,0
.goto Alterac Mountains,30.48,87.06,30,0
.goto Alterac Mountains,35.35,82.68,30,0
.goto Alterac Mountains,42.83,82.98,30,0
.goto Alterac Mountains,41.83,76.57
>>杀死|cRXP_ENEMY_Mountain Lions |r。掠夺它们一个|T134368:0|t[新鲜尸体]
>>|T134368:0|t[新鲜胴体]|cRXP_WARN_divears 30分钟后|r
.collect 5810,1 
.mob Feral Mountain Lion
.mob Mountain Lion
.mob Starving Mountain Lion
.mob Hulking Mountain Lion
.isOnQuest 1136
step
#softcore
.goto Alterac Mountains,37.54,66.24
>>在无主洞穴内为Uzel|r的|cRXP_PICK_火焰充电
.complete 553,3 
step
#label Frostmaw
.goto Alterac Mountains,37.56,68.22
.use 5810 >>使用无主洞穴内的|T134368:0|t[新鲜尸体]召唤|cRXP_ENEMY_Frostmaw|r。杀死他并掠夺他的|cRXX_loot_Mane|r
>>|cRXP_WARN_霜霜等级为37级。在召唤他之前，先清理洞穴外的一条风筝路径！|r
>>|cRXP_WARN_这个任务很艰巨！你可以推迟到Arathi之后，当你高出1-2级时|r
>>|cRXP_WARN_在外面放一个冰霜陷阱，可以轻松地放风筝|r << Hunter
>>|cRXP_WARN_使用肾箭和勾勾从他身边逃跑，使用投掷并恢复能量，在他躲避时保存躲避和冲刺|r << Rogue
>>|cRXP_WARN_使用报复，如果你有它。使用恐吓性喊叫将绷带全部取下，但要确保他没有流血|r << Warrior
>>|cRXP_WARN_如果魔法值出现问题，继续给他装备1级霜栓。记住他会以高频率抵抗咒语|r << Mage
>>|cRXP_WARN_将你的法力主要用于阴影文字疼痛和治疗，因为他可能会抵抗很多|r << Priest
>>|cRXP_WARN_尽可能让他感到恐惧，但要记住，他会以高频率抵抗咒语|r << Warlock
>>|cRXP_WARN_尽可能保持熊的状态，只出来疗伤|r << Druid
>>|cRXP_WARN_不要在冲击能力上浪费魔法，他会抵抗太多。试着用地缚风筝把他绑起来，并保存法力用于治疗|r << Shaman
.complete 1136,1 
.unitscan Frostmaw
.isOnQuest 1136
step
#softcore
.goto Hillsbrad Foothills,46.22,31.86,30,0
.goto Hillsbrad Foothills,43.89,28.06
>>向Darrow Hill洞穴内的Azel|r的|cRXP_PICK_火焰充电
.complete 553,1 
step
#softcore
.goto Hillsbrad Foothills,44.7,28.6,20,0
.goto Hillsbrad Foothills,44.2,26.7
>>为Veraz|r的|cRXP_PICK_Flame充电
>>|cRXP_WARN_它位于洞穴北侧的较低楼层|r
.complete 553,2 
step
.goto Alterac Mountains,57.17,69.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_仆从瓦里克|r
.accept 535 >>接任务: |cRXP_WARN_仆从瓦里克|r
.turnin 535 >>交任务: |cRXP_FRIENDLY_仆从瓦里克|r
.target Henchman Valik
.itemcount 3703,1 
step
.goto Alterac Mountains,46.51,81.74,50,0
.goto Alterac Mountains,48.86,82.87,50,0
.goto Alterac Mountains,48.78,80.96,50,0
.goto Alterac Mountains,56.38,66.23,50,0
.goto Alterac Mountains,57.85,69.74,50,0
.goto Alterac Mountains,59.14,69.36,50,0
.goto Alterac Mountains,59.53,66.50,50,0
.goto Alterac Mountains,58.30,66.67,50,0
.goto Alterac Mountains,48.86,82.87
>>杀死|cRXP_ENEMY_Syndicate盗贼|r和|cRXD_ENEMY_Syndicate脚垫|r。掠夺它们以获得|cRXP_Loot_Syndicate导弹|r
.complete 533,1 
.mob Syndicate Footpad
.mob Syndicate Thief
step
#completewith next
.goto Hillsbrad Foothills,61.60,20.86
.subzone 272 >>Return to Tarren Mill
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝瓦里尔|r, |cRXP_FRIENDLY_大法师沃迪恩·伍德格莱尔|r
.turnin 556 >>交任务: |cRXP_FRIENDLY_石雕|r
.goto Hillsbrad Foothills,61.60,20.86
.turnin 544 >>交任务: |cRXP_FRIENDLY_入室偷窃|r
.goto Hillsbrad Foothills,61.49,20.93
.target Keeper Bel'varil
.target Magus Wordeen Voidglare
step
.goto Hillsbrad Foothills,62.11,19.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵卫兵沙穆萨|r
.turnin 546 >>交任务: |cRXP_FRIENDLY_死亡的纪念品|r
.target Deathguard Samsa
.isQuestComplete 546
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 567 >>交任务: |cRXP_FRIENDLY_危险！|r
.target High Executor Darthalia
.isQuestComplete 567
step
#optional
.abandon 567 >>Abandon Dangerous!
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 539 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.target High Executor Darthalia
.isQuestComplete 539
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.accept 541 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.target High Executor Darthalia
.isQuestTurnedIn 539
.group
step
.goto Hillsbrad Foothills,62.76,20.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humbert|r
.accept 547 >>接任务: |cRXP_LOOT_亨伯特的长剑|r
.target Deathguard Humbert
.group
step
.goto Hillsbrad Foothills,63.24,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.turnin 533 >>交任务: |cRXP_FRIENDLY_秘密潜入|r
.target Krusk
step << Hunter
.goto Hillsbrad Foothills,62.55,19.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯伦·苏萨隆|r
.vendor >>|cRXP_BUY_箭满箭袋|r
.target Kayren Soothallow
step
.goto Hillsbrad Foothills,62.79,19.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
step
.goto Hillsbrad Foothills,61.86,19.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆|r
.accept 676 >>接任务: |cRXP_LOOT_落锤之战|r
.target Tallow
step
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.accept 509 >>接任务: |cRXP_LOOT_苦楚药剂|r
.target Apothecary Lydon
step
#softcore
.goto Hillsbrad Foothills,52.9,53.4
.goto Hillsbrad Foothills,63.88,19.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒塞万德|r
.turnin 553 >>交任务: |cRXP_FRIENDLY_赫尔库拉的复仇|r
.target Novice Thaivand
step << Shaman
#season 2
#completewith next
>>杀死|cRXP_ENEMY_Mudsouth萨满|r。为|T134920:0|t|cRXP-Loot_[Kajaric Icon]|r掠夺他们
.collect 206387,1 
.mob Mudsnout Shaman
.train 410095,1
step
.goto Hillsbrad Foothills,64.67,60.01,20,0
.goto Hillsbrad Foothills,63.02,61.19,20,0
.goto Hillsbrad Foothills,63.45,62.50,20,0
.goto Hillsbrad Foothills,64.68,62.01
>>在Nethander Stead周围掠夺|cRXP_PICK_White Mushrooms|r以获得|cRXP_Loot_Mudnosus Blossoms|r
.complete 509,1 
step << Shaman
#season 2
#loop
.goto Hillsbrad Foothills,63.73,59.26,40,0
.goto Hillsbrad Foothills,65.49,60.30,40,0
.goto Hillsbrad Foothills,66.30,61.11,40,0
.goto Hillsbrad Foothills,63.61,62.04,40,0
.goto Hillsbrad Foothills,63.21,61.04,40,0
.goto Hillsbrad Foothills,62.56,63.55,40,0
.goto Hillsbrad Foothills,62.98,63.70,40,0
>>杀死|cRXP_ENEMY_Mudsouth萨满|r。为|T134920:0|t|cRXP-Loot_[Kajaric Icon]|r掠夺他们
.collect 206387,1 
.mob Mudsnout Shaman
.train 410095,1
step << Shaman
#season 2
#completewith next
+|cRXP_WARN_将|r|T134920:0|t|cRXP_LOOT_[Kajaric Icon]|r|cRXP-WARN_in保存在您的库存中。下一次在奥格里玛时，你必须进入Ragefire Chasm以承受熔岩伤害才能解锁此符文|r
.itemcount 206387,1 
.train 410095,1
step
#completewith DunGarok
.goto Hillsbrad Foothills,70.76,78.14,150 >>Travel to Dun Garok
.group
step
#label DunGarok
.goto Hillsbrad Foothills,71.60,80.0,0
.loop 25,Hillsbrad Foothills,71.26,75.17,69.11,75.18,68.59,78.47,69.66,78.68,71.01,79.09,70.57,79.70,71.48,81.57,71.72,80.64,71.98,81.24,72.57,80.52,72.20,80.00,72.87,79.79,72.40,79.28,71.84,78.26,71.32,78.69,71.26,75.17
>>杀死|cRXP_ENEMY_Dun Garok士兵|r和|cRXP_ENEMY_Ironhill上尉|r。掠夺他们获得|cRXD_Loot_Humbert之剑|r
>>|cRXP_WARN_进出敦加罗的路上要小心；路上和据点都有多次巡逻|r
.complete 541,1 
.complete 541,2 
.complete 541,3 
.complete 541,4 
.complete 547,1 
.unitscan Captain Ironhill
.mob Dun Garok Mountaineer
.mob Dun Garok Rifleman
.mob Dun Garok Priest
.group 4
step
.goto Arathi Highlands,20.19,29.54
.zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
.zoneskip Arathi Highlands
step << Shaman
#season 2
.train 416054,1
.goto Arathi Highlands,31.91,41.15,50,0
.goto Arathi Highlands,35.53,40.93,50,0
.goto Arathi Highlands,35.51,44.26,50,0
.goto Arathi Highlands,34.40,44.25,12,0
.goto Arathi Highlands,31.08,43.68,12,0
.goto Arathi Highlands,34.40,44.25,12,0
.goto Arathi Highlands,35.51,44.26
>>杀死|cRXP_ENEMY_Boulderfirs食人魔|r和|cRXD_ENEMY_ Boulderfist Brutes|r。掠夺它们一个|T134921:0|t|cRXP_Loot_[食人魔避雷针]|r
.complete 676,1 
.complete 676,2 
.collect 213426,1 
.mob Boulderfist Ogre
.mob Boulderfist Enforcer
step << Shaman
#season 2
.train 416054,1
.goto Arathi Highlands,33.45,44.49
.cast 434350 >>单击|cRXP_PICK_Soft Soil |r将|T134921:0|t|cRXP_LOOT_[避雷针]|r插入地面。
step << Shaman
#season 2
.train 416054,1
>>在|cRXP_ENEMY_Lightning Rod|r上投掷|T136048:0|t[闪电]10次
>>杀死|cRXP_ENEMY_Tamkar|r或在他产卵时放风筝。掠夺他获得权力符文
>>|cRXP_WARN_他会在30秒后自动死亡，所以你可以放风筝而不是杀死他|r
.collect 213093,1 
.mob Lightning Rod
.mob Tamkar
step << Shaman
#season 2
.train 416054 >>|cRXP_WARN_使用|r|T134419:0|t[符文]|cRXP_WARN_学习|r|T134337:0|t[电涌]
step
.goto Arathi Highlands,31.91,41.15,50,0
.goto Arathi Highlands,35.53,40.93,50,0
.goto Arathi Highlands,35.51,44.26,50,0
.goto Arathi Highlands,34.40,44.25,12,0
.goto Arathi Highlands,31.08,43.68,12,0
.goto Arathi Highlands,34.40,44.25,12,0
.goto Arathi Highlands,35.51,44.26
>>杀死Boulder'gor及其周围的|cRXP_ENEMY_Boulderfirs Ogres|r和|cRXP_ENEMY_ Boulderfist Enforcers|r
.complete 676,1 
.complete 676,2 
.mob Boulderfist Ogre
.mob Boulderfist Enforcer
step
.goto Arathi Highlands,54.20,38.20
>>杀死|cRXP_ENEMY_Marcel|r。掠夺他的|cRXX_Loot_Head|r
>>|cRXP_WARN_几秒钟后他使用了护盾墙|r
.complete 1164,2 
.unitscan Marcel Dabyrie
step
.goto Arathi Highlands,56.40,36.10
>>杀死|cRXP_ENEMY_Kenata|r。为她掠夺她|cRXX_Loot_Head |r
>>|cRXP_WARN_这可能相当困难。要非常小心|r << Rogue/Warrior/Shaman
.complete 1164,1 
.unitscan Kenata Dabyrie
step
.goto Arathi Highlands,56.50,38.70
>>杀死|cRXP_ENEMY_Fardel|r。掠夺他的|cRXX_Loot_Head|r
>>|cRXP_WARN_小心他的高伤害毒药和|r|T132152:0|t[Thrash]
.complete 1164,3 
.unitscan Fardel Dabyrie
step
.goto Arathi Highlands,62.50,33.80
>>单击Myzrael的|cRXP_PICK_Shard|r
.accept 642 >>接任务: |cRXP_LOOT_被困的公主|r
step
#completewith next
.goto Arathi Highlands,73.52,33.20,150 >>Travel to Hammerfall
step
.goto Arathi Highlands,73.10,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤尔达|r
.fp Hammerfall >>获取Hammerfall飞行路线
.target Urda
step
.goto Arathi Highlands,74.20,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜拉姆法尔|r
.turnin 676 >>交任务: |cRXP_FRIENDLY_落锤之战|r
.accept 677 >>接任务: |cRXP_LOOT_短兵相接|r
.target Drum Fel
step
.goto Arathi Highlands,72.90,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈穆尔|r
.accept 655 >>接任务: |cRXP_LOOT_落锤镇|r
.target Gor'mul
step
.goto Arathi Highlands,73.84,32.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板埃德瓦|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Adegwa
step
.goto Arathi Highlands,74.60,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 655 >>交任务: |cRXP_FRIENDLY_落锤镇|r
.accept 672 >>接任务: |cRXP_LOOT_振奋精神|r
.accept 671 >>接任务: |cRXP_LOOT_邪恶的魔法|r
.target Tor'gan
step
#completewith xpgate
>>杀死你遇到的任何|cRXP_ENEMY_Highland Raptor|r。掠夺他们的|cRXP_Loot_Eyes |r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Highland垃圾桶|r，|cRXP-WARN_它们实际上是|r|T132152:0|t[Srash]
.complete 672,1 
.mob Highland Strider
.mob Highland Thrasher
step
.loop 25,Arathi Highlands,34.07,28.35,33.36,26.41,31.79,26.47,30.83,27.49,31.01,29.58,32.32,30.87,33.36,30.72,34.07,28.35
>>杀死|cRXP_ENEMY_Syndicate成员|r。掠夺他们的|cRXP_Loot_Amullets|r
>>|cRXP_WARN_小心辛迪加强盗；他们在农场周围潜行，如果你放风筝/逃跑，他们会背刺你|r
.complete 671,1 
.mob Syndicate Pathstalker
.mob Syndicate Mercenary
.mob Syndicate Highwayman
step
#label xpgate
.goto Arathi Highlands,33.8,31.8
.xp 32>>升级到32级
step
.goto Arathi Highlands,59.40,42.61
>>完成杀死|cRXP_ENEMY_高地猛禽|r。掠夺它们的|cRXX_Loot_Eyes |r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Highland垃圾桶|r，|cRXP-WARN_它们实际上是|r|T132152:0|t[Srash]
.complete 672,1 
.mob Highland Strider
.mob Highland Thrasher
step
#completewith WitherbarkTrolls
+留意|cRXP_ENEMY_Nimar the Slayer |r（稀有）。他可以放下强大的BoE
.unitscan Nimar the Slayer
step
#completewith WitherbarkTrolls
.goto Arathi Highlands,66.68,62.96,150 >>前往Witherbark村
step << Warrior/Hunter
#season 2
#completewith FocusedRage << Warrior
#completewith SteadyShot << Hunter
>>杀死|cRXP_ENEMY_Witherbark巫医|r、|cRXX_ENEMY_Headhunters|r和|cRXP_ENEMY_Axe Throwers|r
>>|cRXP_WARN_下一个任务可能很难，要格外小心|r
.complete 677,3 
.complete 677,2 
.complete 677,1 
.mob Witherbark Axe Thrower
.mob Witherbark Headhunter
.mob Witherbark Witch Doctor
step << Warrior
#season 2
.train 409163,1
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98
>>杀死|cRXP_ENEMY_Witherbark巨魔|r。为|T133057:0|t[|cRXP-Loot_Witherbark Mallet|r]掠夺它们
.collect 216483,1
.mob Witherbark Shadow Hunter
.mob Witherbark Axe Thrower
.mob Witherbark Headhunter
.mob Witherbark Witch Doctor
step << Warrior
#season 2
.train 409163,1
#label WitherbarkCave
#completewith next
.goto Arathi Highlands,68.363,75.806,25 >>进入Witherbark洞穴
step << Warrior
#season 2
.train 409163,1
#completewith next
.goto Arathi Highlands,69.502,81.924
.cast 436278 >>|cRXP_WARN_使用|r|T133057:0|t[|cRXP_LOOT_Witherbark Mallet |r]|cRXP_WARN_at |cRX_PICK_Gong|r在洞穴内|r
.use 216483 >>|cRXP_WARN_这将产生一个|cRXP_ENEMY_Witherbark巨人|r（35级精英）以及2个额外的怪物。建议查找一个组或将其推迟到以后|r
step << Warrior
#season 2
.train 409163,1
.goto Arathi Highlands,69.61,81.60
>>杀死|cRXP_ENEMY_Witherbark Goliath|r。为|T134419:0|t[|cRXP-Loot_集中愤怒符文|r]掠夺它
.collect 213109,1
.mob Witherbark Goliath
step << Warrior
#season 2
#label FocusedRage
.train 409163 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_LOOT_聚焦愤怒符文|r]|cRXD_WARN_训练|r|T132345:0|t[聚焦愤怒]
.use 213109
step << Hunter
#season 2
.train 410109,1
#loop
.goto Arathi Highlands,67.8,66.0,0
.goto Arathi Highlands,69.4,63.2,25,0
.goto Arathi Highlands,67.8,66.0,25,0
.goto Arathi Highlands,68.4,68.2,25,0
>>杀死|cRXP_ENEMY_Needletoth|r。为|T134419:0|t[|cRXP-FRIENDLY_Rune of Steady Shot|r]掠夺它
>>|cRXP_ENEMY_Needletoth|r|cRXP_WARN_是一条在Witherbark村湖中游泳的鱼|r
.collect 213122,1
.mob Needletooth
step << Hunter
#label SteadyShot
#season 2
.train 410109 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_稳定射击调整|r]| cRXP_WARN_训练|r|T132213:0|t][稳定射击]
.use 213122
.itemcount 213122,1
step
#label WitherbarkTrolls
.loop 25,Arathi Highlands,71.7,60.3,73.4,65.2,70.6,69.3,68.3,74.5,66.2,69.2,64.8,73.1,61.3,72.4,63.3,67.7,66.5,63.7,71.7,60.3
>>杀死|cRXP_ENEMY_Witherbark巫医|r、|cRXX_ENEMY_Headhunters|r和|cRXP_ENEMY_Axe Throwers|r
>>|cRXP_WARN_下一个任务可能很难，要格外小心|r
.complete 677,3 
.complete 677,2 
.complete 677,1 
.mob Witherbark Axe Thrower
.mob Witherbark Headhunter
.mob Witherbark Witch Doctor
step
.goto Arathi Highlands,74.72,36.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Tor'gan|r
.turnin 671 >>交任务: |cRXP_FRIENDLY_邪恶的魔法|r
.turnin 672 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.accept 674 >>接任务: |cRXP_LOOT_振奋精神|r
.target Tor'gan
step
#label RaisingSpirits
.goto Arathi Highlands,72.63,33.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Gor'mul|r
.turnin 674 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.accept 675 >>接任务: |cRXP_LOOT_振奋精神|r
.target Gor'mul
step
.goto Arathi Highlands,74.72,36.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 675 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.target Tor'gan
step
.goto Arathi Highlands,74.24,33.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRONDLY_Drum|r
.turnin 677 >>交任务: |cRXP_FRIENDLY_短兵相接|r
.target Drum Fel
step
#completewith next
.goto Arathi Highlands,73.10,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤尔达|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Urda
.zoneskip Hillsbrad Foothills
step
.goto Hillsbrad Foothills,61.44,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Lydon|r
.turnin 509 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
.accept 513 >>接任务: |cRXP_LOOT_苦楚药剂|r
.target Apothecary Lydon
step
.goto Hillsbrad Foothills,62.76,20.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Humbert|r
.turnin 547 >>交任务: |cRXP_FRIENDLY_亨伯特的长剑|r
.target Deathguard Humbert
.isQuestComplete 547
.group
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.turnin 541 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.accept 550 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.target High Executor Darthalia
.isQuestComplete 541
.group
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darthalia|r
.accept 550 >>接任务: |cRXP_LOOT_希尔斯布莱德之战|r
.target High Executor Darthalia
.isQuestTurnedIn 541
.group
step
#completewith next
.goto Alterac Mountains,29.12,77.98,30,0
.goto Alterac Mountains,30.69,82.31,30,0
.goto Alterac Mountains,30.48,87.06,30,0
.goto Alterac Mountains,35.35,82.68,30,0
.goto Alterac Mountains,42.83,82.98,30,0
.goto Alterac Mountains,41.83,76.57
>>杀死|cRXP_ENEMY_Mountain Lions |r。掠夺它们一个|T134368:0|t[新鲜尸体]
>>|T134368:0|t[新鲜胴体]|cRXP_WARN_divears 30分钟后|r
.collect 5810,1 
.mob Feral Mountain Lion
.mob Mountain Lion
.mob Starving Mountain Lion
.mob Hulking Mountain Lion
.isOnQuest 1136
step
.goto Alterac Mountains,37.56,68.22
.use 5810 >>使用无主洞穴内的|T134368:0|t[新鲜尸体]召唤|cRXP_ENEMY_Frostmaw|r。杀死他并掠夺他的|cRXX_loot_Mane|r
>>|cRXP_WARN_霜霜等级为37级。在召唤他之前，先清理洞穴外的一条风筝路径！|r
>>|cRXP_WARN_这个任务很艰巨！如果需要，请跳过|r
>>|cRXP_WARN_在外面放一个冰霜陷阱，可以轻松地放风筝|r << Hunter
>>|cRXP_WARN_使用肾箭和勾勾从他身边逃跑，使用投掷并恢复能量，在他躲避时保存躲避和冲刺|r << Rogue
>>|cRXP_WARN_使用报复，如果你有它。使用恐吓性喊叫将绷带全部取下，但要确保他没有流血|r << Warrior
>>|cRXP_WARN_如果魔法值出现问题，继续给他装备1级霜栓。记住他会以高频率抵抗咒语|r << Mage
>>|cRXP_WARN_将你的法力主要用于阴影文字疼痛和治疗，因为他可能会抵抗很多|r << Priest
>>|cRXP_WARN_尽可能让他感到恐惧，但要记住，他会以高频率抵抗咒语|r << Warlock
>>|cRXP_WARN_尽可能保持熊的状态，只出来疗伤|r << Druid
>>|cRXP_WARN_不要在冲击能力上浪费魔法，他会抵抗太多。试着用地缚风筝把他绑起来，并保存法力用于治疗|r << Shaman
.complete 1136,1 
.unitscan Frostmaw
.isOnQuest 1136
step << Mage
#completewith Thieves
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
.itemcount 17031,1
step << !Mage
#completewith next
.goto Hillsbrad Foothills,60.14,18.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fly Undercity >>Fly to the Undercity
.target Zarise
.zoneskip Undercity
step
#label Thieves
.goto Undercity,63.83,49.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉纳维·卡隆|r
.turnin 1164 >>交任务: |cRXP_FRIENDLY_科娜塔一家|r
.target Genavie Callow
step << !Druid !Warlock !Shaman
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
.collect 5996,3 >>|cRXP_BUY_BUY three |r|T134797:0|t[水息灵药]
.target Auctioneer Rhyker
step
.goto Undercity,48.80,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
.turnin 513 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
.target Master Apothecary Faranell
step << Warrior
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 11564 >>训练你的职业技能
.target Angela Curthas
.xp <32,1
.xp >34,1
step << Warrior
#optional
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 8380 >>训练你的职业技能
.target Angela Curthas
.xp <34,1
step << Rogue
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 8623 >>训练你的职业技能
.target Carolyn Ward
.xp <32,1
.xp >34,1
step << Rogue
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 8696 >>训练你的职业技能
.target Carolyn Ward
.xp <34,1
step << Warlock
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 6229 >>训练你的职业技能
.target Richard Kerwin
.xp <32,1
.xp >34,1
step << Warlock
#optional
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 7648 >>训练你的职业技能
.target Richard Kerwin
.xp <34,1
step << Mage
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 8407 >>训练你的职业技能
.target Anastasia Hartwell
.xp <32,1
.xp >34,1
step << Mage
#optional
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 8492 >>训练你的职业技能
.target Anastasia Hartwell
.xp <34,1
step << Priest
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
.train 9473 >>训练你的职业技能
.target Father Lazarus
.xp <32,1
.xp >34,1
step << Priest
#optional
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
.train 8105 >>训练你的职业技能
.target Father Lazarus
.xp <34,1
step << Druid
#optional
#completewith next
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,36.026,41.374
>>|cRXP_WARN_在雷穆洛斯神殿为海狮的|r|cRXP_LOOT_吊坠组合两个吊坠|r
.collect 15882,1,30,1,1
.collect 15883,1,30,1,1
.complete 30,1 
.itemcount 15882,1
step << Druid
#optional
.goto Moonglade,56.21,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
.turnin 30 >>交任务: |cRXP_FRIENDLY_海狮试炼|r
.accept 31 >>接任务: |cRXP_LOOT_水栖形态|r
.target Dendrite Starblaze
.isQuestComplete 30
step << Druid
#optional
#optional
.goto Moonglade,56.21,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德迪利特·星焰|r
.accept 31 >>接任务: |cRXP_LOOT_水栖形态|r
.target Dendrite Starblaze
.isQuestTurnedIn 30
step << Druid
#completewith DruidTraining4
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 22568 >>训练你的职业技能
.target Loganaar
.xp <32,1
.xp >34,1
step << Druid
#label DruidTraining4
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 1823 >>训练你的职业技能
.target Loganaar
.xp <34,1
step
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 550 >>交任务: |cRXP_FRIENDLY_希尔斯布莱德之战|r
.target Varimathras
.isOnQuest 550
.group
step
#completewith next
.hs >>Hearth to Freewind Post公司公司
.use 6948
step
.goto Thousand Needles,46.07,51.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板埃比克瓦|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Abeqwa
step << Druid
#optional
#completewith next
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Nyse
.zoneskip Thunder Bluff
step << Druid
#optional
#completewith next
.goto Thunder Bluff,69.88,30.90,80 >>长者崛起之旅
step << Druid
#optional
.goto Thunder Bluff,76.48,27.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.trainer >>训练你的职业技能
.turnin 31 >>交任务: |cRXP_FRIENDLY_水栖形态|r
.target Turak Runetotem
.isOnQuest 31
step
#optional
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Freewind Post >>飞到Freewind Post
.target Tal
.zoneskip Thunder Bluff,1
]])
RXPGuides.RegisterGuide([[
#version 20
#defaultfor Horde Mage
#group RestedXP 部落 法师 AoE
#classic
<< Horde Mage
#name 30-36 Arathi/Alterac AoE
#next 36-60 Mage AoE
step
.goto Arathi Highlands,73.84,32.47
.home >>把你的心放在锤击上
step
.goto Arathi Highlands,73.02,32.70
.fp Hammerfall >>获取Hammerfall飞行路线
step
.goto Arathi Highlands,72.77,33.67
.target Gor'mul
>>对话: |cRXP_FRIENDLY_戈穆尔|r
.accept 655 >>接任务: |cRXP_LOOT_落锤镇|r
step
.goto Arathi Highlands,74.71,36.29
>>对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 655 >>交任务: |cRXP_FRIENDLY_落锤镇|r
.target Tor'gan
.accept 672 >>接任务: |cRXP_LOOT_振奋精神|r
.accept 671 >>接任务: |cRXP_LOOT_邪恶的魔法|r
step
#completewith next
>>AoE猛禽正在前往达比里农场的途中。掠夺他们的眼睛
.complete 672,1 
step
.goto Arathi Highlands,55.25,39.86,150 >>跑到Dabyrie的农场
step
#completewith next
+如果可能的话，尽量避免拉那些被点名的暴徒。马塞尔有护盾墙（减少75%的伤害），法德尔有远程毒药+色雷斯，凯纳塔什么都不做
step
.xp 32 >>AoE the Dabyrie Farmstead至32
>>开始保存你得到的羊毛布和丝绸布。你以后需要12个堆叠
step
>>AoE命名的NPC。抢他们的头
.goto Arathi Highlands,56.56,38.69
.complete 1164,3 
.goto Arathi Highlands,54.20,38.05
.complete 1164,2 
.goto Arathi Highlands,56.41,36.09
.complete 1164,1 

step
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
.goto Undercity,85.14,10.03
.trainer >>训练你的职业技能
step
.goto Undercity,82.79,15.82
.vendor >>去找Hannah。购买一些远程传送符文
.collect 17031,3 
step
#completewith next
.goto Undercity,65.97,44.73
+把之前的羊毛布和丝绸布存放在这里。你需要12堆（240堆），以备日后使用
step
.goto Undercity,63.82,49.37
.target Genavie Callow
>>对话: |cRXP_FRIENDLY_吉纳维·卡隆|r
.turnin 1164 >>交任务: |cRXP_FRIENDLY_科娜塔一家|r
step
.goto Undercity,53.00,77.48,40,0
.goto Undercity,48.82,69.28
.target Master Apothecary Faranell
>>对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
.turnin 513 >>交任务: |cRXP_FRIENDLY_苦楚药剂|r
step
.hs >>向Hammerfall致敬
.vendor >>供应商垃圾
step
.goto Arathi Highlands,42.14,39.38
>>AoE猛禽正在前往达比里农场的途中。掠夺他们的眼睛
.complete 672,1 
step
.goto Arathi Highlands,55.25,39.86,150 >>跑到Dabyrie的农场
step
.xp 34 >>AoE the Dabyrie Farmstead至34
>>开始保存你得到的羊毛布和丝绸布。你以后需要12个堆叠
step
>>进入洞穴并在洞穴周围走动。启动奥恩食人魔
.goto Arathi Highlands,32.93,44.02
.complete 676,1 
.complete 676,2 
step
>>在该地区启动AoEing辛迪加。尽量避开开拓者。小心偷东西的暴徒
.goto Arathi Highlands,32.32,28.58
.complete 671,1 
step
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
.goto Undercity,85.14,10.03
.trainer >>训练你的职业技能
step
.goto Undercity,82.79,15.82
.vendor >>去找Hannah。购买一些远程传送符文
.collect 17031,3 
step
#completewith next
.goto Undercity,65.97,44.73
+把之前的羊毛布和丝绸布存放在这里。你需要12堆（240堆），以备日后使用
step
.hs >>向Hammerfall致敬
.vendor >>心动后向客栈老板购买35级饮料
step
.goto Arathi Highlands,74.26,33.93
.target Drum Fel
>>对话: |cRXP_FRIENDLY_杜拉姆法尔|r
.turnin 676 >>交任务: |cRXP_FRIENDLY_落锤之战|r
step
.goto Arathi Highlands,74.72,36.29
>>对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 671 >>交任务: |cRXP_FRIENDLY_邪恶的魔法|r
.turnin 672 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.target Tor'gan
.accept 674 >>接任务: |cRXP_LOOT_振奋精神|r
step
.goto Arathi Highlands,72.61,34.16
>>对话: |cRXP_FRIENDLY_戈穆尔|r
.turnin 674 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.target Gor'mul
.accept 675 >>接任务: |cRXP_LOOT_振奋精神|r
step
.goto Arathi Highlands,74.72,36.29
.target Tor'gan
>>对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 675 >>交任务: |cRXP_FRIENDLY_振奋精神|r

step
.goto Arathi Highlands,73.02,32.70
.fly Hillsbrad >>飞往塔伦磨坊
step
.home >>把你的心放在Tarren Mill
.goto Hillsbrad Foothills,62.78,19.03
step
#sticky
#completewith next
+强烈建议您观看链接，因为这里可能有点棘手
.link https://www.twitch.tv/videos/970330908?t=03h27m43s >>单击此处
step
>>AoE辛迪加。为导弹掠夺它们
.goto Alterac Mountains,58.35,67.49,120,0
.goto Alterac Mountains,47.65,82.22,120,0
.complete 533,1 
step
.goto Alterac Mountains,53.36,53.47,120,0
.goto Alterac Mountains,49.49,56.10,120,0
.goto Alterac Mountains,47.12,60.91,120,0
.goto Alterac Mountains,58.39,67.91,120,0
.goto Alterac Mountains,53.36,53.47,120,0
.goto Alterac Mountains,49.49,56.10,120,0
.goto Alterac Mountains,47.12,60.91,120,0
.goto Alterac Mountains,58.39,67.91,120,0
.xp 34+56000 >>AoE Ogres and Syndicate to 34&56000+/62800xp
>>继续升级，直到炉床冷却时间＜8分钟
step
#completewith next
.goto Alterac Mountains,42.67,95.30,40 >>Go into the Yeti Cave
step
>>AoE Yetis。把它们偷走
.goto Alterac Mountains,40.83,93.24
.complete 552,1 
step
#sticky
#completewith Stonetoken
>>AoE达拉然暴徒。掠夺它们以换取破旧的石头代币
.complete 556,1 
step
>>杀死阿丽娜。为碎片而掠夺她。杀死德莫特，掠夺他获得楔子
.goto Alterac Mountains,20.2,86.3
.complete 544,3 
.complete 544,1 
step
>>出去杀了Ricter。掠夺他获得大理石
.goto Alterac Mountains,19.7,84.6
.complete 544,2 
step
#label Stonetoken
>>进入另一栋楼的二楼。杀死Kegan Darkmar。抢他去椭圆形办公室
.goto Alterac Mountains,18.6,84.4,15,0
.goto Alterac Mountains,17.8,83.2
.complete 544,4 
step
.goto Alterac Mountains,20.1,86.2,40,0
.goto Alterac Mountains,17.9,83.0,40,0
.goto Alterac Mountains,10.7,76.6,40,0
.goto Alterac Mountains,19.4,75.6,40,0
.goto Alterac Mountains,20.1,86.2,40,0
.goto Alterac Mountains,17.9,83.0,40,0
.goto Alterac Mountains,10.7,76.6,40,0
.goto Alterac Mountains,19.4,75.6,40,0
>>杀死达拉然暴徒。掠夺他们以获得磨损的石头标记
.complete 556,1 
step
.goto Alterac Mountains,53.36,53.47,120,0
.goto Alterac Mountains,49.49,56.10,120,0
.goto Alterac Mountains,47.12,60.91,120,0
.goto Alterac Mountains,58.39,67.91,120,0
.goto Alterac Mountains,53.36,53.47,120,0
.goto Alterac Mountains,49.49,56.10,120,0
.goto Alterac Mountains,47.12,60.91,120,0
.goto Alterac Mountains,58.39,67.91,120,0
.xp 36 >>AoE猫/辛迪加/食人魔怪物到36级
>>开始保存你得到的丝绸。你以后需要12个堆叠
step
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
.goto Undercity,85.14,10.03
.trainer >>训练你的职业技能
>>确保你至少有50个剩余
step
.goto Undercity,82.79,15.82
.vendor >>去找Hannah。购买一些远程传送符文
.collect 17031,5 
step
#completewith next
.goto Undercity,65.97,44.73
+把你早些时候的丝绸放在这里。你需要12堆（240堆），以备日后使用
step
.hs >>Hearth to Tarren Mill
.vendor >>如果需要，购买35级饮料
step
.goto Hillsbrad Foothills,61.50,20.94
>>对话: |cRXP_FRIENDLY_看守者贝瓦里尔|r
.turnin 556 >>交任务: |cRXP_FRIENDLY_石雕|r
>>对话: |cRXP_FRIENDLY_大法师沃迪恩·伍德格莱尔|r
.turnin 544 >>交任务: |cRXP_FRIENDLY_入室偷窃|r
.target Keeper Bel'varil
.accept 557 >>接任务: |cRXP_LOOT_地缚护腕|r
.target Magus Wordeen Voidglare
.accept 545 >>接任务: |cRXP_LOOT_达拉然巡逻队|r
step
.goto Hillsbrad Foothills,63.24,20.65
>>对话: |cRXP_FRIENDLY_克鲁斯克|r
.turnin 533 >>交任务: |cRXP_FRIENDLY_秘密潜入|r
.target Krusk
.accept 503 >>接任务: |cRXP_LOOT_高迪尔|r
step
.goto Hillsbrad Foothills,63.88,19.66
.target Novice Thaivand
>>对话: |cRXP_FRIENDLY_学徒塞万德|r
.turnin 552 >>交任务: |cRXP_FRIENDLY_赫尔库拉的复仇|r
step
>>找到并杀死Jailor Borhuin。抢他那把生锈的铁钥匙
.goto Alterac Mountains,63.19,43.68,40,0
.goto Alterac Mountains,62.11,40.43,40,0
.goto Alterac Mountains,59.96,43.68,40,0
.complete 503,2 
.unitscan Jailor Borhuin
step
>>上楼去旅馆的二楼
.goto Alterac Mountains,60.64,43.89
.complete 503,1 
>>对话: |cRXP_FRIENDLY_高迪尔|r
.turnin 503 >>交任务: |cRXP_FRIENDLY_高迪尔|r
.target Gol'dir
.accept 506 >>接任务: |cRXP_LOOT_布莱克摩尔的余孽|r
step
.goto Alterac Mountains,53.36,53.47,120,0
.goto Alterac Mountains,49.49,56.10,120,0
.goto Alterac Mountains,47.12,60.91,120,0
.goto Alterac Mountains,58.39,67.91,120,0
.goto Alterac Mountains,53.36,53.47,120,0
.goto Alterac Mountains,49.49,56.10,120,0
.goto Alterac Mountains,47.12,60.91,120,0
.goto Alterac Mountains,58.39,67.91,120,0
.xp 36+60000 >>升级食人魔和辛迪加至36和60000+/71600xp
>>继续升级，直到炉床冷却时间＜8分钟
step
>>途中的AoE猫/辛迪加/食人魔
>>杀死/攻击该地区的达拉兰暴徒
.goto Alterac Mountains,11.73,77.20,120,0
.goto Alterac Mountains,21.51,56.63,120,0
.goto Alterac Mountains,11.73,77.20
.complete 545,1 
.complete 545,2 
.complete 557,1 
step
.hs >>Hearth to Tarren Mill
.vendor >>如果需要，购买35级饮料
step
.goto Hillsbrad Foothills,62.29,19.04
.vendor >>从酒店一楼的Christoph那里购买3种舒缓香料
.collect 3713,3 
step
.goto Hillsbrad Foothills,63.24,20.66
.target Krusk
>>对话: |cRXP_FRIENDLY_克鲁斯克|r
.turnin 506 >>交任务: |cRXP_FRIENDLY_布莱克摩尔的余孽|r
step
.goto Hillsbrad Foothills,61.50,20.94
.target Keeper Bel'varil
>>对话: |cRXP_FRIENDLY_看守者贝瓦里尔|r
.turnin 557 >>交任务: |cRXP_FRIENDLY_地缚护腕|r
.target Magus Wordeen Voidglare
>>对话: |cRXP_FRIENDLY_大法师沃迪恩·伍德格莱尔|r
.turnin 545 >>交任务: |cRXP_FRIENDLY_达拉然巡逻队|r
step
.zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
step
.goto Orgrimmar,45.11,63.91
.fly Camp T >>飞往陶拉霍营地
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 30-40
#classic
<< Horde
#name 33-34 Shimmering Flats
#displayname 32-34 Shimmering Flats << sod
#next 34-35 Desolace
#somname 32-33 千针石林
step
.goto Thousand Needles,45.70,50.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_峭壁卫兵图林·长角|r
.accept 5361 >>接任务: |cRXP_LOOT_兄弟|r
.target Cliffwatcher Longhorn
.xp <32,1
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
.vendor >>|cRXP_BUY_从他那里买一个|r|T135495:0|t[密集短弓]|cRXP_Buy_如果它用完了|r
.target Starn
.money <2.7172
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
step << Hunter
.goto Thousand Needles,44.89,50.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯塔恩|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2600,1146,1 
.target Starn
step
.goto Thousand Needles,45.15,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫塔尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134937:0|t[Scrolls]|cRX _ Buy_如果它们用完了|r << !Warrior
.vendor >>|cRXP_BUY_从他那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_，|r|T134937:0|t[Scrolls]|cRXP-Buy_和|r|T134413:0|t[Liferoot]|cRXP_Buy_如果它们用完了|r << Warrior
.target Montarr
step << Shaman
#completewith next
.goto Thousand Needles,54.7,44.4,30 >>在这里跑上坡道
step << Shaman
.goto Thousand Needles,53.5,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普拉特·白云|r
>>|cRXP_WARN_这个回合给予1小时的增益，移动速度+40%，攻击速度+30%|r
.turnin 1531 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Prate Cloudseer
step
.goto Thousand Needles,53.94,41.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多恩·平原行者|r
.turnin 1151 >>交任务: |cRXP_FRIENDLY_力量的试炼|r
.target Dorn Plainstalker
.isQuestComplete 1151
step
.goto Thousand Needles,67.58,63.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moktar|r
.turnin 1146 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.accept 1147 >>接任务: |cRXP_LOOT_疯狂的虫群|r
.target Moktar Krin
step
#xprate >1.99
#completewith next
.goto Thousand Needles,77.79,77.26,80 >>前往|cRXP_FRIENDLY_Kravel |r
>>掠夺|cRXP_ICK_Rocket Car Rubble|r并杀死|cRXD_ENEMY_Scorpids|r，|cRXP_ENEMY_Scavengers|r、|cRXP_ENEMY_Basilisks|r和|cRXX_ENEMY_Tortoises|r
.complete 1176,1 
.disablecheckbox
.complete 1105,1 
.disablecheckbox
.complete 1104,1 
.disablecheckbox
.complete 1175,1 
.disablecheckbox
.complete 1175,2 
.disablecheckbox
.complete 1110,1 
.disablecheckbox
.mob Salt Flats Scavenger
.mob Salt Flats Vulture
.mob Sparkleshell Snapper
.mob Sparkleshell Borer
.mob Sparkleshell Tortoise
.mob Saltstone Basilisk
.mob Saltstone Crystalhide
.mob Scorpid Reaver
.mob Scorpid Terror
step
.goto Thousand Needles,77.79,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.turnin 1112 >>交任务: |cRXP_FRIENDLY_给克拉维尔的零件|r
.accept 1114 >>接任务: |cRXP_LOOT_侏儒的货物|r
.accept 1110 >>接任务: |cRXP_LOOT_火箭车零件|r
.target Kravel Koalbeard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔|r, Wizzle
.turnin 1114 >>交任务: |cRXP_FRIENDLY_侏儒的货物|r
.accept 1104 >>接任务: |cRXP_LOOT_含盐的蝎毒|r
.goto Thousand Needles,78.07,77.13
.accept 1105 >>接任务: |cRXP_LOOT_硬化龟壳|r
.goto Thousand Needles,78.14,77.12
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
.goto Thousand Needles,77.79,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1115 >>接任务: |cRXP_LOOT_车手的传闻|r
.target Kravel Koalbeard
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.accept 1176 >>接任务: |cRXP_LOOT_减轻负重|r
.target Pozzik
step
.goto Thousand Needles,81.64,77.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zherin|r
.accept 1175 >>接任务: |cRXP_LOOT_安全隐患|r
.target Trackmaster Zherin
step
.goto Thousand Needles,69.66,85.97,150 >>前往Rustmaul挖掘现场
>>掠夺|cRXP_ICK_Rocket Car Rubble|r并杀死|cRXD_ENEMY_Scorpids|r，|cRXP_ENEMY_Scavengers|r、|cRXP_ENEMY_Basilisks|r和|cRXX_ENEMY_Tortoises|r
.complete 1176,1 
.disablecheckbox
.complete 1105,1 
.disablecheckbox
.complete 1104,1 
.disablecheckbox
.complete 1175,1 
.disablecheckbox
.complete 1175,2 
.disablecheckbox
.complete 1110,1 
.disablecheckbox
.mob Salt Flats Scavenger
.mob Salt Flats Vulture
.mob Sparkleshell Snapper
.mob Sparkleshell Borer
.mob Sparkleshell Tortoise
.mob Saltstone Basilisk
.mob Saltstone Crystalhide
.mob Scorpid Reaver
.mob Scorpid Terror
.isOnQuest 1147
step
#completewith next
>>杀死|cRXP_ENEMY_Silithid入侵者|r、|cRXD_ENEMY_Silithid入侵者| r和|cRXP_ENEMY_ Silithid侵略者|r
>>|cRXP_WARN_小心！他们在受到攻击时会大声呼救，你可能会意外地攻击附近的多个暴徒|r
.complete 1147,3 
.complete 1147,1 
.complete 1147,2 
.mob Silithid Searcher
.mob Silithid Hive Drone
.mob Silithid Invader
step
.loop 25,Thousand Needles,67.27,85.30,68.14,85.96,68.03,86.93,68.08,88.54,69.48,89.64,70.31,87.64,71.09,86.23,71.34,84.11,70.51,82.80,68.52,80.87,67.45,82.28,67.27,85.30
>>为|T135034:0|t[|cRXP_Loot_Cracked Silithid Carapace|r]掠夺|cRXD_ENEMY_Silithid|r mobs。使用它开始任务
.collect 5877,1,1148,1 
.accept 1148 >>接任务: |cRXP_LOOT_虫群的样本|r
.use 5877
step
.loop 25,Thousand Needles,67.27,85.30,68.14,85.96,68.03,86.93,68.08,88.54,69.48,89.64,70.31,87.64,71.09,86.23,71.34,84.11,70.51,82.80,68.52,80.87,67.45,82.28,67.27,85.30
>>杀死|cRXP_ENEMY_Silithid入侵者|r，|cRXD_ENEMY_Silithid搜索者|r和|cRXP_ENEMY_ Silithid Hive无人机|r。掠夺它们的|cRXT_Loot_Hears|r，| cRXP_Loot_Talons|r和| cRXT_OOT_Carapaspaces|r
>>|cRXP_WARN_小心！他们在受到攻击时会大声呼救，你可能会意外地攻击附近的多个暴徒|r
.complete 1147,3 
.complete 1147,1 
.complete 1147,2 
.complete 1148,1 
.complete 1148,2 
.complete 1148,3 
.mob Silithid Searcher
.mob Silithid Hive Drone
.mob Silithid Invader
step
#completewith ShimmeringFlatsLoop
+|cRXP_WARN_小心|r|cRXP_ENEMY_Salt Flats Vultures |r|cRXP_WARN_can execute。保持20%以上的健康！|r
step
#completewith next
.goto Thousand Needles,67.58,63.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Moktar|r
.turnin 1147 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.target Moktar Krin
step
#label ShimmeringFlatsLoop
>>|cRXP_WARN_绕着闪闪发光的平地跑一圈，直到完成所有目标|r
>>杀死|cRXP_ENEMY_Salt Flats清道夫|r和|cRXX_ENEMY_Salt Flats秃鹫|r。掠夺它们的|cRXD_Loot_Bones|r
>>杀死|cRXP_ENEMY_Sparkleshell Tortoises|r、|cRXX_ENEMY_Sparkleshell Borers |r和|cRXP_ENEMY_ Sparkleshell Snappers|r。掠夺它们的|cRXD_OOT_Shell|r
>>杀死|cRXP_ENEMY_Scorpid Reavers|r和|cRXD_ENEMY_Scorpid Terror|r。掠夺他们的|cRXP_Loot_Venom|r
>>杀死|cRXP_ENEMY_Saltstone Basilisk|r、|cRXD_ENEMY_Saltstone Crystalhides|r和|cRXP_ENEMY_Saltstone Gazers|r
>>打开|cRXP_PICK_Rocket Car Rubble|r。为|cRXP _Loot_Rocket Cars Parts|r抓取它
.complete 1176,1 
.mob +Salt Flats Scavenger
.mob +Salt Flats Vulture
.goto Thousand Needles,87.5,65.6,0
.complete 1105,1 
.mob +Sparkleshell Snapper
.mob +Sparkleshell Borer
.mob +Sparkleshell Tortoise
.goto Thousand Needles,82.6,54.8,0
.complete 1104,1 
.mob +Scorpid Reaver
.mob +Scorpid Terror
.goto Thousand Needles,71.8,73.4,0
.complete 1175,1 
.mob +Saltstone Basilisk
.goto Thousand Needles,73.5,59.9,0
.complete 1175,2 
.mob +Saltstone Crystalhide
.goto Thousand Needles,77.65,87.34,0
.complete 1175,3 
.mob +Saltstone Gazer
.goto Thousand Needles,77.65,87.34,0
.complete 1110,1 
step
.goto Thousand Needles,67.58,63.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Moktar|r
.turnin 1147 >>交任务: |cRXP_FRIENDLY_疯狂的虫群|r
.target Moktar Krin
step
.goto Thousand Needles,77.79,77.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Kravel |r
.turnin 1110 >>交任务: |cRXP_FRIENDLY_火箭车零件|r
.accept 5762 >>接任务: |cRXP_WARN_赫米特·奈辛瓦里|r
.target Kravel Koalbeard
step
#xprate <1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔|r, Wizzle
.turnin 1104 >>交任务: |cRXP_FRIENDLY_含盐的蝎毒|r
.goto Thousand Needles,78.07,77.13
.turnin 1105 >>交任务: |cRXP_FRIENDLY_硬化龟壳|r
.accept 1106 >>接任务: |cRXP_LOOT_流放者马特克|r
.goto Thousand Needles,78.14,77.12
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
#xprate >1.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔|r, Wizzle
.turnin 1104 >>交任务: |cRXP_FRIENDLY_含盐的蝎毒|r
.goto Thousand Needles,78.07,77.13
.turnin 1105 >>交任务: |cRXP_FRIENDLY_硬化龟壳|r
.goto Thousand Needles,78.14,77.12
.target Fizzle Brassbolts
.target Wizzle Brassbolts
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.turnin 1176 >>交任务: |cRXP_FRIENDLY_减轻负重|r
.accept 1178 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Pozzik
step
.goto Thousand Needles,81.63,77.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zherin|r
.turnin 1175 >>交任务: |cRXP_FRIENDLY_安全隐患|r
.target Trackmaster Zherin
step
#completewith SetHSCampT
.goto Thousand Needles,75.44,97.37,40,0
.goto Tanaris,51.60,25.44,100 >>前往: |cRXP_PICK_塔纳利斯|r
.zoneskip Tanaris
step
#completewith next
.goto Tanaris,51.61,25.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Freewind Post >>飞到Freewind Post
.target Bulkrek Ragefist
.zoneskip The Barrens
step
.goto Thousand Needles,45.70,50.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_峭壁卫兵图林·长角|r
.accept 5361 >>接任务: |cRXP_LOOT_兄弟|r
.target Cliffwatcher Longhorn
step
#completewith SetHSCampT
.goto Thousand Needles,45.14,49.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Nyse
.subzoneskip 484,1
step
#completewith SetHSCampT
.goto Tanaris,51.61,25.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Bulkrek Ragefist
.zoneskip The Barrens
step
#label SetHSCampT
.goto The Barrens,45.60,59.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.home >>将您的炉石设置为陶拉霍营地
.target Innkeeper Byula
step
#completewith next
.goto The Barrens,44.45,59.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Crossroads >>飞向十字路口
.target Omusa Thunderhorn
step
.goto The Barrens,51.10,29.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r
.turnin 1148 >>交任务: |cRXP_FRIENDLY_虫群的消息|r
.accept 1184 >>接任务: |cRXP_LOOT_虫群的样本|r
.target Korran
step
#completewith next
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >>飞到棘轮
.target Devrak
step
.goto The Barrens,62.68,37.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兹科尔|r
.bankdeposit 4306,15 >>存入银行15|T132905:0|t[丝绸]
.target Zikkel
step
.goto The Barrens,62.68,36.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹鲁维|r
.turnin 1178 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1180 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Gazlowe
step << Shaman
.goto The Barrens,65.83,43.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之先知伊斯伦|r
.turnin 96 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Islen Waterseer
step
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
step
.goto Stranglethorn Vale,26.30,73.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_码头管理员罗兹基尔|r
.turnin 1180 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1181 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Wharfmaster Lozgil
step
.goto Stranglethorn Vale,28.30,77.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.accept 575 >>接任务: |cRXP_LOOT_供与求|r
.target Drizzlik
step
#season 0,1
.goto Stranglethorn Vale,27.60,77.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯库提|r
.turnin 2842 >>交任务: |cRXP_FRIENDLY_主工程师斯库提|r
.target Scooty
step << Warrior/Shaman
#season 0,1 << Shaman
.goto Stranglethorn Vale,28.34,75.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zarena|r|cRXP_BUY_交谈。从她那里购买一个|r|T135158:0|t[大棒]|cRXP_Buy_或一个|r |T135144:0|t[Staff of Protection]（如果有）|r
.collect 12251,1,1115,1 
.collect 12252,1,1115,1 
.money <5.3896
.target Zarena Cromwind
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step
.goto Stranglethorn Vale,27.10,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r inside the inn
.accept 605 >>接任务: |cRXP_LOOT_歌唱水晶碎片|r
.target Crank Fizzlebub
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 8696 >>训练你的职业技能
.target Ian Strom
.xp <34,1
.xp >36,1
step << Rogue
#optional
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 8691 >>训练你的职业技能
.target Ian Strom
.xp <36,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兹克|r, |cRXP_FRIENDLY_科博克|r
.turnin 1115 >>交任务: |cRXP_FRIENDLY_车手的传闻|r
.accept 201 >>接任务: |cRXP_LOOT_调查营地|r
.goto Stranglethorn Vale,26.94,77.21
.accept 189 >>接任务: |cRXP_LOOT_血顶巨魔的耳朵|r
.accept 213 >>接任务: |cRXP_LOOT_恶性竞争|r
.goto Stranglethorn Vale,27.00,77.13
.target Krazek
.target Kebok
step
.goto Stranglethorn Vale,27.20,76.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_男爵|r
.turnin 1181 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1182 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Baron Revilgaz
step
.goto Stranglethorn Vale,26.90,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格林戈|r
.fp Booty Bay >>获取Booty Bay飞行路线
.target Gringer
step
.goto Stranglethorn Vale,28.14,78.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Glyx交谈|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134832:0|t[更强的治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Glyx Brewright
step
#completewith SetHearthTB1
.hs >>Hearth返回Taurajo营地
.use 6948
step
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Omusa Thunderhorn
.zoneskip Thunder Bluff
step
.goto Thunder Bluff,36.01,59.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥尔德·石塔|r
.turnin 1102 >>交任务: |cRXP_FRIENDLY_奥尔德的报复|r
.target Auld Stonespire
.isQuestComplete 1102
.dungeon RFK
step
#label SetHearthTB1
.goto Thunder Bluff,45.81,64.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
.home >>将您的炉石设置为雷霆崖
.target Innkeeper Pala
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 1823 >>训练你的职业技能
.target Turak Runetotem
.xp <34,1
.xp >36,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 1823 >>训练你的职业技能
.target Turak Runetotem
.xp <36,1
step
#xprate <1.99
.goto Thunder Bluff,61.54,80.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.turnin 1136 >>交任务: |cRXP_FRIENDLY_霜喉雪人|r
.target Melor Stonehoof
.isQuestComplete 1136
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 13552 >>训练你的职业技能
.target Urek Thunderhorn
.xp <34,1
.xp >36,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14284 >>训练你的职业技能
.target Urek Thunderhorn
.xp <36,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24560 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <36,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11554 >>训练你的职业技能
.target Ker Ragetotem
.xp <34,1
.xp >36,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 1680 >>训练你的职业技能
.target Ker Ragetotem
.xp <36,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 16314 >>训练你的职业技能
.target Tigor Skychaser
.xp <34,1
.xp >36,1
step << Shaman
#optional
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 10412 >>训练你的职业技能
.target Tigor Skychaser
.xp <36,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 2767 >>训练你的职业技能
.target Malakai Cross
.xp <34,1
.xp >36,1
step << Priest
#optional
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 15264 >>训练你的职业技能
.target Malakai Cross
.xp <36,1
step << Mage
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 8492 >>训练你的职业技能
.target Thurston Xane
.xp <34,1
.xp >36,1
step << Mage
#optional
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 8495 >>训练你的职业技能
.target Thurston Xane
.xp <36,1
step << Mage
.goto Thunder Bluff,22.48,16.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Birgitte|r交谈
.train 3566 >>火车|T135765:0|t[电传：雷霆崖]
.target Birgitte Cranston
step
#ah
.goto Thunder Bluff,40.39,51.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯塔比|r
.collect 13545,10,5386,1 
.target Auctioneer Stampi
step << Hunter
.goto Thunder Bluff,46.98,45.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Kuna交谈|r
>>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800 
.target Kuna Thunderhorn
step
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Sun Rock >>飞到石爪山
.target Tal
.zoneskip Stonetalon Mountains
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 30-40
#classic
<< Horde
#name 34-35 Desolace
#displayname 34-36 Desolace << sod
#next 35-37北刺
#somname 33-35 Desolace
step
#xprate <1.99
.goto Stonetalon Mountains,46.00,60.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱林·火拳|r
.turnin 1088 >>交任务: |cRXP_FRIENDLY_奥达努斯|r
.target Braelyn Firehand
.isQuestComplete 1088
step
#optional
.abandon 1088 >>Abandon Ordanus
.isOnQuest 1088
step << Shaman
#season 2
#completewith next
.goto Stonetalon Mountains,44.63,61.55,60,0
.goto Stonetalon Mountains,38.77,68.65,60 >>>>Head southwest to the mountain path. Follow it into the Charred Vale
.train 425343,1
step << Shaman
#season 2
.goto Stonetalon Mountains,28.45,65.00,50,0
.goto Stonetalon Mountains,29.08,71.97,50,0
.goto Stonetalon Mountains,33.43,68.97,50,0
.goto Stonetalon Mountains,33.49,69.40,50,0
.goto Stonetalon Mountains,36.85,72.04,50,0
>>杀死|cRXP_ENEMY_Primordial Anomaly|r。为|T134419:0|t|cRXP_Loot_[原始愤怒符文]|r掠夺它
>>|cRXP_WARN_确保检查其形状（减影）。如果它处于|r|T136074:0|t[自然形态]|cRXP_WARN_，则处理|r|T135824:0|t[火灾伤害]|cRXP_WARN_。如果它在|r|T135819:0|t[火焰形态]|cRXP_WARN_中，则造成|r|T135865:0|t[冰霜伤害]|cRXP_WARN_。如果它处于|r|T135861:0|t[水形态]|cRXP_WARN_，则造成|r|T136085:0|t]自然伤害
>>|cRXP_WARN_施放时要小心|T132939:0|t[击倒]|cRXP_WARN_（近战瞬发：在空中击倒目标并造成80点伤害）|r
>>|cRXP_WARN_它有5-8分钟的重生时间，每次都会随机掉落一个BoE绿色|r
.collect 210811,1 
.mob Primordial Anomaly
.train 425343,1
step << Shaman
#season 2
.cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[原始之怒符文]|r|cRXP_WARN_学习|r|T134596:0|t[雕刻长裤-萨满之怒]
.use 210811
.itemcount 210811,1 
.train 425343,1
step
.goto Stonetalon Mountains,44.63,61.55,60,0
.goto Stonetalon Mountains,38.77,68.65,60,0
.goto Stonetalon Mountains,30.22,75.61,60,0
.goto Stonetalon Mountains,29.29,79.69
.zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
.zoneskip Desolace
.subzoneskip 465 << Shaman
step << Shaman
.goto Stonetalon Mountains,29.29,79.69
.zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
.zoneskip Desolace
.subzoneskip 465,1 << Shaman
step
#completewith next
.subzone 599 >>前往雷斧要塞
step
.goto Desolace,55.80,30.10
>>杀死并掠夺|cRXP_ENEMY_Burning Blade|r的成员，直到获得|T134253:0|t[|cRXP-loot_Flated Devon Skin|r]
.collect 20310,1,1480 
.accept 1480 >>接任务: |cRXP_LOOT_堕落者|r
.mob Burning Blade Augur
.mob Burning Blade Adept
.mob Burning Blade Reaver
.mob Burning Blade Felsworn
.mob Burning Blade Shadowmage
step << Warrior/Hunter/Rogue/Druid/Shaman
#xprate <1.99
.goto Desolace,55.94,29.19
.xp 35 >>将雷斧要塞的燃烧之刃暴徒升级到35级
.mob Burning Blade Felsworn
.mob Burning Blade Augur
.mob Burning Blade Reaver
.mob Burning Blade Adept
step
.goto Desolace,38.90,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿佐尔·奥达蒙特|r
.accept 5741 >>接任务: |cRXP_WARN_圣光节杖|r
.target Azore Aldamort
step
#completewith next
.goto Desolace,56.30,57.07,100 >>前往幽灵行者驿站
step
.goto Desolace,55.40,55.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳塔卡·长角|r
.turnin 5361 >>交任务: |cRXP_FRIENDLY_兄弟|r
.target Nataka Longhorn
step
.goto Desolace,52.60,54.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔卡塔·钢刃|r
.turnin 1432 >>交任务: |cRXP_FRIENDLY_联盟关系|r
.accept 1433 >>接任务: |cRXP_LOOT_联盟关系|r
.accept 1434 >>接任务: |cRXP_LOOT_萨特的威胁|r
.target Takata Steelblade
step
.goto Desolace,52.20,53.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛乌林·碎骨|r
.turnin 1433 >>交任务: |cRXP_FRIENDLY_联盟关系|r
.accept 1435 >>接任务: |cRXP_LOOT_灵魂的燃烧|r
.turnin 1480 >>交任务: |cRXP_FRIENDLY_堕落者|r
.accept 1481 >>接任务: |cRXP_LOOT_堕落者|r
.target Maurin Bonesplitter
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费古尔·双刃|r, Gurda
.accept 1365 >>接任务: |cRXP_LOOT_戴兹帕可汗|r
.goto Desolace,56.19,59.56
.accept 1368 >>接任务: |cRXP_WARN_吉尔吉斯部族|r
.goto Desolace,56.29,59.67
.target Felgur Twocuts
.target Gurda Wildmane
step
#som
.goto Desolace,56.20,59.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费古尔·双刃|r
.accept 1365 >>接任务: |cRXP_LOOT_戴兹帕可汗|r
.target Felgur Twocuts
step << Druid
#season 2
.train 410060,1
#completewith next
>>杀死|cRXP_ENEMY_Kolkars|r并掠夺它们|T134187:0|t[干燥种子荚]
.collect 213574,1
.mob Kolkar Centaur
.mob Kolkar Mauler
.mob Kolkar Scout
.mob Kolkar Windchaser
step
.goto Desolace,73.20,41.80,60,0
.goto Desolace,73.00,46.80,60,0
.goto Desolace,74.80,48.80,60,0
.goto Desolace,73.20,41.80,0
.goto Desolace,73.00,46.80,0
.goto Desolace,74.80,48.80
>>杀死|cRXP_ENEMY_Khan Dez'hepa|r。掠夺他的|cRXX_Loot_Head|r
>>|cRXP_WARN_他在营地有三个不同的产卵地点|r
.complete 1365,1 
.unitscan Khan Dez'hepah
step << Druid
#season 2
.train 410060,1
#loop
.goto Desolace,70.6,39.8,0
.goto Desolace,70.6,39.8,25,0
.goto Desolace,69.2,46.6,25,0
.goto Desolace,68.6,52.6,25,0
>>杀死|cRXP_ENEMY_Kolkars|r并掠夺它们|T134187:0|t[干燥种子荚]
.collect 213574,1
.mob Kolkar Centaur
.mob Kolkar Mauler
.mob Kolkar Scout
.mob Kolkar Windchaser
step << Druid
#season 2
.train 410060,1
>>在水中游泳，等待豆荚变成|T134208:0|t[莎草球茎]
.goto Desolace,70.8,71.8
.collect 206966,1
step << Druid
#season 2
.goto Desolace,75.5,20.7
.train 410060 >>点击|cRXP_PICK_Sandy Loam|r播种学习|T136090:0|t[梦想状态]
step
#completewith next
>>杀死|cRXP_ENEMY_Hatefury Shadowspeaker|r。掠夺他们获得|cRXX_Loot_Scapp|r
.complete 1481,1 
.mob Hatefury Shadowstalker
step
.loop 25,Desolace,75.26,27.91,76.77,27.73,77.54,26.68,78.20,25.63,78.90,24.60,78.74,23.15,79.33,20.96,79.69,18.92,79.36,16.18,77.43,15.44,75.96,15.89,74.52,15.66,72.81,16.83,71.58,17.94,71.50,20.22,72.36,21.23,73.04,22.41,73.09,24.41,73.79,25.72,75.26,27.91
>>杀死|cRXP_ENEMY_Hatefury Satyrs|r。优先杀死|cRXP_ENEMY_Hatefury Rogues|r
.complete 1434,1 
.complete 1434,2 
.complete 1434,3 
.complete 1434,4 
.unitscan Hatefury Rogue
step
.loop 25,Desolace,75.26,27.91,76.77,27.73,77.54,26.68,78.20,25.63,78.90,24.60,78.74,23.15,79.33,20.96,79.69,18.92,79.36,16.18,77.43,15.44,75.96,15.89,74.52,15.66,72.81,16.83,71.58,17.94,71.50,20.22,72.36,21.23,73.04,22.41,73.09,24.41,73.79,25.72,75.26,27.91
>>杀死|cRXP_ENEMY_Hatefury Shadowspeaker|r。掠夺他们获得|cRXX_Loot_Scapp|r
.complete 1481,1 
.mob Hatefury Shadowstalker
step << Warlock
#season 2
.train 416017,1
.goto Desolace,74.5,13.4
>>单击地面上的|cRXP_ENEMY_Reckless Warlock|r。掠夺他|T236297:0|t[硫磺雕刻]
>>|cRXP_WARN_这是一个罕见的敌人，它可能不存在|r
.collect 213583,1
.mob Reckless Warlock
.unitscan Reckless Warlock
step << Warlock
#season 2
.train 416017,1
>>|cRXP_WARN_Cast|r|T135818:0|t[Hellfire]|cRXP_WARN_to使自己的生命值低于70%。之后|r|T236297:0|t[硫磺雕刻]|cRXP_WARN_将变换为|r|T134419:0|t[|cRXP-FRIENDLY_邪恶之路|r]
.collect 213102,1 
.itemcount 213583,1
step << Warlock
#season 2
.train 416017 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Wickness |r]|cRXP_WARN_学习|r|T236295:0|t[邪恶之舞]
.use 416017
.itemcount 213102,1
step
.goto Desolace,62.30,39.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比布里·弗斯巴克|r
.accept 5501 >>接任务: |cRXP_LOOT_集骨者|r
.target Bibbly F'utzbuckle
step
#season 2
.train 431663,1 << Priest
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>单击|cRXP_PICK_灭火的篝火|r
.goto Desolace,47.5,54.6
.accept 79229 >>Accept Highway Robbery
step
#completewith next
.goto Desolace,56.30,57.07,100 >>前往幽灵行者驿站
step
.goto Desolace,52.60,54.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔卡塔·钢刃|r
.turnin 1434 >>交任务: |cRXP_FRIENDLY_萨特的威胁|r
.target Takata Steelblade
step
.goto Desolace,52.20,53.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛乌林·碎骨|r
.turnin 1481 >>交任务: |cRXP_FRIENDLY_堕落者|r
.accept 1482 >>接任务: |cRXP_LOOT_堕落者|r
.target Maurin Bonesplitter
step
.goto Desolace,51.20,53.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈诺尔|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Harnor
step
#era
.goto Desolace,56.20,59.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费古尔·双刃|r
.turnin 1365 >>交任务: |cRXP_FRIENDLY_戴兹帕可汗|r
.accept 1366 >>接任务: |cRXP_WARN_悬赏半人马|r
.target Felgur Twocuts
step
#som
.goto Desolace,56.20,59.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费古尔·双刃|r
.turnin 1365 >>交任务: |cRXP_FRIENDLY_戴兹帕可汗|r
.target Felgur Twocuts
step
.goto Desolace,60.80,61.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯米德·瑟卡布斯库|r
.accept 5561 >>接任务: |cRXP_LOOT_诱捕科多兽|r
.target Smeed Scrabblescrew
step
#era
.goto Desolace,67.90,73.59,60,0
.goto Desolace,67.86,75.80,60,0
.goto Desolace,66.26,75.70,60,0
.goto Desolace,65.70,78.86,60,0
.goto Desolace,66.40,80.05,60,0
.goto Desolace,68.56,81.01,60,0
.goto Desolace,72.20,78.35,60,0
.goto Desolace,70.95,75.09,60,0
.goto Desolace,73.36,73.37,60,0
.goto Desolace,69.60,77.85
>>杀死|cRXP_ENEMY_Magram半人马|r。掠夺他们的|cRXX_Loot_Ears|r
.complete 1366,1 
.mob Magram Outrunner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Marauder
.mob Magram Wrangler
step
#era
.goto Desolace,67.90,73.59,60,0
.goto Desolace,67.86,75.80,60,0
.goto Desolace,66.26,75.70,60,0
.goto Desolace,65.70,78.86,60,0
.goto Desolace,66.40,80.05,60,0
.goto Desolace,68.56,81.01,60,0
.goto Desolace,72.20,78.35,60,0
.goto Desolace,70.95,75.09,60,0
.goto Desolace,73.36,73.37,60,0
.goto Desolace,69.60,77.85
>>继续升级|cRXP_ENEMY_Magram Centaur|r，直到您与|cRXP-FRIENDLY_Gelkis Centaur|1r的声誉变得友好为止
.reputation 92,Friendly
.mob Magram Outrunner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Marauder
.mob Magram Wrangler
step << !Warrior !Hunter !Rogue !Druid !Shaman
#era
#xprate <1.5
.goto Desolace,67.90,73.59,60,0
.goto Desolace,67.86,75.80,60,0
.goto Desolace,66.26,75.70,60,0
.goto Desolace,65.70,78.86,60,0
.goto Desolace,66.40,80.05,60,0
.goto Desolace,68.56,81.01,60,0
.goto Desolace,72.20,78.35,60,0
.goto Desolace,70.95,75.09,60,0
.goto Desolace,73.36,73.37,60,0
.goto Desolace,69.60,77.85
.xp 35+17000 >>升级到35级和17000/67100
.mob Magram Outrunner
.mob Magram Scout
.mob Magram Stormer
.mob Magram Mauler
.mob Magram Marauder
.mob Magram Wrangler
step
#completewith next
.goto Desolace,60.86,61.86,0
>>在|cRXP_FRIENDLY_Kodos|r上使用|T132488:0|t[Kodo Komboulator]，然后护送他们到|cRXP_FRIENDLY_Smeed|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Kodo|r after each trip to progress the quest
.complete 5561,1 
.use 13892
.target Dying Kodo
.target Aged Kodo
.target Ancient Kodo
.target Smeed Scrabblescrew
step
.goto Desolace,54.42,63.79,30,0
.goto Desolace,54.38,62.87,30,0
.goto Desolace,53.31,61.24,30,0
.goto Desolace,54.39,60.38,30,0
.goto Desolace,53.90,58.17,30,0
.goto Desolace,52.88,57.13,30,0
.goto Desolace,52.14,58.56,30,0
.goto Desolace,51.13,59.97,30,0
.goto Desolace,50.81,58.72,30,0
.goto Desolace,49.70,57.15,30,0
.goto Desolace,48.90,58.86,30,0
.goto Desolace,48.98,60.05,30,0
.goto Desolace,53.31,61.24
>>在Kodo墓地周围的地面上掠夺|cRXP_Loot_Kodo骨头|r
>>|cRXP_WARN_当高级|r|cRXP_ENEMY_Kodos|r|cRXP_WARN_can在掠夺|r|c-cRXP_LOOT_Kodo骨骼后产卵时要小心|r << !Rogue !Druid
>>|cRXP_WARN_请小心，因为高级别|r|cRXP_ENEMY_Kodos|r|cRXP_WARN_可以在掠夺|r | cRXP_LOOT_Kodo骨骼|r | c RXP_WRN_后生成。立即偷东西通常会阻止他们攻击你|r << Rogue/Druid
.complete 5501,1 
step
#loop
.goto Desolace,53.96,61.10,0
.waypoint Desolace,53.96,61.10,50,0
.waypoint Desolace,60.87,61.85,20,0
>>在|cRXP_FRIENDLY_Kodos|r上使用|T132488:0|t[Kodo Komboulator]，然后护送他们到|cRXP_FRIENDLY_Smeed|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Kodo|r after each trip to progress the quest
.complete 5561,1 
.use 13892
.target Dying Kodo
.target Aged Kodo
.target Ancient Kodo
.target Smeed Scrabblescrew
step
.goto Desolace,60.80,61.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯米德·瑟卡布斯库|r
.turnin 5561 >>交任务: |cRXP_FRIENDLY_诱捕科多兽|r
.target Smeed Scrabblescrew
step
#era
.goto Desolace,56.20,59.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费古尔·双刃|r
.turnin 1366 >>交任务: |cRXP_FRIENDLY_悬赏半人马|r
.target Felgur Twocuts
step
#era
.goto Desolace,36.30,79.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1368 >>交任务: |cRXP_FRIENDLY_吉尔吉斯部族|r
.accept 1370 >>接任务: |cRXP_WARN_偷取物资|r
.target Uthek the Wise
step
#completewith next
.goto Desolace,25.26,71.61,150 >>前往Shadowprey村
step
.goto Desolace,25.80,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taiga|r
.accept 5381 >>接任务: |cRXP_WARN_埃鲁索斯之手|r
.target Taiga Wisemane
step
.goto Desolace,22.70,72.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦拉斯|r
.accept 6142 >>接任务: |cRXP_WARN_蚌肉鱼饵|r
.target Mai'Lahii
step
.goto Desolace,23.30,72.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜泽加尔|r
.accept 6143 >>接任务: |cRXP_WARN_另一种鱼|r
.target Drulzegar Skraghook
step
.goto Desolace,21.60,74.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨隆|r
.fp Shadowprey Village >>获取Shadowprey Village飞行路线
.target Thalon
step << Hunter
.goto Desolace,24.93,71.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图克|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2600,5741,1 
.target Tukk
step
#completewith next
.goto Desolace,62.30,39.00,150 >>前往北德索拉斯
step
#season 2
.train 431663,1 << Priest
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比布里·弗斯巴克|r
.goto Desolace,62.30,39.00
.turnin 5501 >>交任务: |cRXP_FRIENDLY_集骨者|r
.turnin 79229 >>Turn in Highway Robbery
.accept 79235 >>Accept On the Lam
.target Bibbly F'utzbuckle
step
.goto Desolace,62.30,39.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比布里·弗斯巴克|r
.turnin 5501 >>交任务: |cRXP_FRIENDLY_集骨者|r
.target Bibbly F'utzbuckle
step
#completewith next
.use 6436 >>使用|T134095:0|t[燃烧宝石]杀死|cRXP_ENEMY_燃烧之刃成员|r
.complete 1435,1 
step
.goto Desolace,55.20,30.10
>>杀死塔顶的|cRXP_ENEMY_Burning Blade Seer|r。为|cRXP_Loot_Sceptre|r掠夺它
.complete 5741,1 
.mob Burning Blade Seer
step
#completewith next
.use 6436 >>使用|T134095:0|t[燃烧宝石]杀死|cRXP_ENEMY_燃烧之刃成员|r
.complete 1435,1 
.mob Burning Blade Augur
.mob Burning Blade Adept
.mob Burning Blade Reaver
.mob Burning Blade Felsworn
.mob Burning Blade Shadowmage
step
.goto Desolace,55.31,27.55,12,0
.goto Desolace,54.62,27.54,10,0
.goto Desolace,54.43,27.22,10,0
.goto Desolace,54.93,26.67
>>进入更大的建筑，然后在Iruxos Crystal的|cRXP_Pick_Hand上使用|T136248:0|t[恶魔拾取]|r
>>在|cRXP_ENEMY_Devon Spirit|r产生后杀死它。为他的|cRXP_Loot_Box|r掠夺它
.complete 5381,1 
.mob Demon Spirit
step
.goto Desolace,55.58,28.70,50,0
.goto Desolace,56.82,29.95,50,0
.goto Desolace,57.21,27.86,50,0
.goto Desolace,57.62,26.30,50,0
.goto Desolace,57.26,22.39,50,0
.goto Desolace,56.41,21.57,50,0
.goto Desolace,56.82,29.95
.use 6436 >>完成使用|T134095:0|t[燃烧宝石]杀死|cRXP_ENEMY_燃烧之刃成员|r
.complete 1435,1 
.mob Burning Blade Augur
.mob Burning Blade Adept
.mob Burning Blade Reaver
.mob Burning Blade Felsworn
.mob Burning Blade Shadowmage
step
.goto Desolace,38.90,27.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Azore|r
.turnin 5741 >>交任务: |cRXP_FRIENDLY_圣光节杖|r
.accept 6027 >>接任务: |cRXP_WARN_上古之书|r
.target Azore Aldamort
step
.goto Desolace,36.07,30.40
>>单击|cRXP_PICK_Rackmore的日志|r，放在桶上
.accept 6161 >>接任务: |cRXP_WARN_拉克摩尔的财宝！|r
step << !Druid !Warlock !Shaman
#ah
#completewith next
.use 5996 >>饮水息灵药
.itemcount 5996,1
step
#completewith Rackmore
>>杀死|cRXP_ENEMY_Slitherblade Oracles|r。掠夺它们以获得|cRXP_OOT_Oracle Crystal|r
>>|cRXP_ENEMY_Slitherblade Oracles |r|cRXP_WARN_share与其他|r|cRXP_ENEMY_Slitherblad Nagas |r| cRXP_WRN_；你可能不得不杀了他们|r
.complete 1482,1 
.mob Slitherblade Oracle
step
#completewith BookoftheAncients
>>杀死|cRXP_ENEMY_Slitherblade Nagas|r。掠夺它们以获得|cRXP_Loot_金钥匙|r
.complete 6161,2 
step
#completewith ClamMeat
>>杀死|cRXP_ENEMY_Dryssnap Pincers|r和|cRXP_ENEMY_Crawlers |r。掠夺它们以获取|cRXP_Loot_Silver Key |r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
#completewith Rackmore
>>杀死|cRXP_ENEMY_Slitherblade Naga|r、|cRXD_ENEMY_Myrmidons|r和|cRXP_ENEMY_Sorcerees|r
.complete 6143,1 
.complete 6143,2 
.complete 6143,3 
.mob Slitherblade Myrmidon
.mob Slitherblade Naga
.mob Slitherblade Sorceress
step
#label ClamMeat
.goto Desolace,34.12,30.74,40,0
.goto Desolace,31.96,30.60,40,0
.goto Desolace,32.98,28.57,40,0
.goto Desolace,35.36,25.03,40,0
.goto Desolace,34.34,23.11,40,0
.goto Desolace,32.97,28.58
>>掠夺|cRXP_PICK_Giant Softshell Clam|r以获取它们的|cRXP_OOT_Meat|r
>>|cRXP_ENEMY_愤怒的珊瑚礁爬行者|r|cRXP_WARN_can也会掉落|r|cRXP_PICK_Giant Softshell Clams|r
.complete 6142,1 
.mob Enraged Reef Crawler
step
#label SilverKey
.goto Desolace,34.12,30.74,40,0
.goto Desolace,31.96,30.60,40,0
.goto Desolace,32.98,28.57,40,0
.goto Desolace,35.36,25.03,40,0
.goto Desolace,34.34,23.11,40,0
.goto Desolace,32.97,28.58
>>杀死|cRXP_ENEMY_Dryssnap Pincers|r和|cRXD_ENEMY_Cralwers|r。偷走它们以获得|cRXP_Loot_Silver Key |r
.complete 6161,1 
.mob Drysnap Pincer
.mob Drysnap Crawler
step
.goto Desolace,30.00,8.80
>>单击|cRXP_PICK_Rackmore的胸部|r
.turnin 6161 >>交任务: |cRXP_FRIENDLY_拉克摩尔的财宝！|r
.isQuestComplete 6161
step
#label BookoftheAncients
.goto Desolace,28.20,6.60
>>点击|cRXP_PICK_Serpent Statue|r召唤|cRXD_ENEMY_Lord Kragaru|r。杀死他并掠夺他的|cRXP_loot_Book|r
>>|cRXP_WARN_先杀死蛇像周围的一切！|r
.complete 6027,1 
.mob Lord Kragaru
step
.loop 25,Desolace,28.48,11.14,27.24,10.26,27.81,7.83,27.87,5.71,28.66,6.74,30.07,6.86,30.96,7.87,30.33,8.98,29.99,11.23,28.48,11.14
>>杀死|cRXP_ENEMY_Slitherblade Nagas|r。掠夺它们以获得|cRXP_Loot_金钥匙|r
.complete 6161,2 
step
#label Rackmore
.goto Desolace,30.00,8.80
>>单击|cRXP_PICK_Rackmore的胸部|r
.turnin 6161 >>交任务: |cRXP_FRIENDLY_拉克摩尔的财宝！|r
step
#completewith next
>>杀死|cRXP_ENEMY_Slitherblade Naga|r、|cRXD_ENEMY_Myrmidons|r和|cRXP_ENEMY_Sorcerees|r
.complete 6143,1 
.complete 6143,2 
.complete 6143,3 
.mob Slitherblade Myrmidon
.mob Slitherblade Naga
.mob Slitherblade Sorceress
step
.loop 25,Desolace,28.48,11.14,27.24,10.26,27.81,7.83,27.87,5.71,28.66,6.74,30.07,6.86,30.96,7.87,30.33,8.98,29.99,11.23,28.48,11.14
>>杀死|cRXP_ENEMY_Slitherblade Oracles|r。掠夺它们以获得|cRXP_OOT_Oracle Crystal|r
>>|cRXP_ENEMY_Slitherblade Oracles |r|cRXP_WARN_share与其他|r|cRXP_ENEMY_Slitherblad Nagas |r| cRXP_WRN_；你可能不得不杀了他们|r
.complete 1482,1 
.mob Slitherblade Oracle
step
.loop 25,Desolace,32.41,23.00,34.99,21.73,36.86,20.16,39.13,18.74,40.44,20.40,37.70,20.85,36.64,23.40,34.67,24.12,32.41,23.00
>>杀死|cRXP_ENEMY_Slitherblade Naga|r、|cRXD_ENEMY_Myrmidons|r和|cRXP_ENEMY_Sorcerees|r
.complete 6143,1 
.complete 6143,2 
.complete 6143,3 
.mob Slitherblade Myrmidon
.mob Slitherblade Naga
.mob Slitherblade Sorceress
step
.goto Desolace,38.88,27.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Azore|r
.turnin 6027 >>交任务: |cRXP_FRIENDLY_上古之书|r
.target Azore Aldamort
step
#completewith next
.goto Desolace,56.30,57.07,100 >>前往幽灵行者驿站
step
.goto Desolace,52.24,53.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Maurin|r
.turnin 1435 >>交任务: |cRXP_FRIENDLY_灵魂的燃烧|r
.turnin 1482 >>交任务: |cRXP_FRIENDLY_堕落者|r
.accept 1484 >>接任务: |cRXP_LOOT_堕落者|r
.target Maurin Bonesplitter
step
.goto Desolace,52.56,54.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Takata|r
.turnin 1484 >>交任务: |cRXP_FRIENDLY_堕落者|r

.accept 1436 >>接任务: |cRXP_LOOT_联盟关系|r
.target Takata Steelblade

step
#era
.goto Desolace,69.22,77.24,30,0
.goto Desolace,70.01,78.60,30,0
.goto Desolace,70.92,75.43,30,0
.goto Desolace,73.18,75.11,30,0
.goto Desolace,73.57,74.21,30,0
.goto Desolace,73.67,72.90,30,0
>>在Magram村周围掠夺|cRXP_PICK_肉袋|r以获取|cRXP-Loot_Meat|r
.complete 1370,1 
step
#xprate <1.5
#era
.goto Desolace,36.21,79.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1370 >>交任务: |cRXP_FRIENDLY_偷取物资|r
.accept 1373 >>接任务: |cRXP_WARN_盎格库尔|r
.target Uthek the Wise
step
#xprate >1.49
.goto Desolace,36.21,79.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1370 >>交任务: |cRXP_FRIENDLY_偷取物资|r
.target Uthek the Wise
step << Hunter
#completewith next
.goto Desolace,24.90,68.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Aboda交谈|r
.stable >>稳定你的宠物。你很快就会驯服一只|cRXP_ENEMY_Scorpashi Lasher|r
.target Aboda
step << Hunter
.goto Desolace,38.24,74.30,50,0
.goto Desolace,42.45,70.19,50,0
.goto Desolace,43.34,60.43,50,0
.goto Desolace,42.45,70.19
.cast 1515 >>|cRXP_WARN_铸造|r|T132164:0|t[驯服野兽]|cRXP_WARN_on a|cRXP_ENEMY_Scorpashi Lasher|r驯服它|r
.train 16831 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132140:0|t[爪（等级5）]
.link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
.mob Scorpashi Lasher
step << Hunter
.goto Desolace,24.90,68.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Aboda交谈|r
.stable >>放弃|cRXP_ENEMY_Scorpashi Lasher|r并取回您的普通宠物
.target Aboda
step
.goto Desolace,25.10,72.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁恩·蛮鬃|r
.accept 5763 >>接任务: |cRXP_WARN_荆棘谷狩猎|r
.target Roon Wildmane
step
.goto Desolace,25.80,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Taiga|r
.turnin 5381 >>交任务: |cRXP_FRIENDLY_埃鲁索斯之手|r
.target Taiga Wisemane
step
.goto Desolace,23.40,72.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Drulzegar |r
.turnin 6143 >>交任务: |cRXP_FRIENDLY_另一种鱼|r
.target Drulzegar Skraghook
step
.goto Desolace,22.70,72.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Mai'Lahii|r
.turnin 6142 >>交任务: |cRXP_FRIENDLY_蚌肉鱼饵|r
.target Mai'Lahii
step
#completewith next
.hs >>火炉到雷霆崖
.use 6948
step
.goto Thunder Bluff,45.81,64.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板帕拉|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Pala
step << skip
.goto Thunder Bluff,61.40,80.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.accept 1136 >>接任务: |cRXP_LOOT_霜喉雪人|r
.target Melor Stonehoof

step << !Undead 
.goto Thunder Bluff,34.42,46.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage|r
.accept 1049 >>接任务: |cRXP_WARN_堕落者纲要|r
.target Sage
.dungeon SM
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9493 >>训练你的职业技能
.target Turak Runetotem
.xp <36,1
.xp >38,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 5201 >>训练你的职业技能
.target Turak Runetotem
.xp <38,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14303 >>训练你的职业技能
.target Urek Thunderhorn
.xp <36,1
.xp >38,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14320 >>训练你的职业技能
.target Urek Thunderhorn
.xp <38,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24560 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <36,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 1680 >>训练你的职业技能
.target Ker Ragetotem
.xp <36,1
.xp >38,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 8820 >>训练你的职业技能
.target Ker Ragetotem
.xp <38,1
step << !Mage
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Tal
.zoneskip Orgrimmar
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8427 >>训练你的职业技能
.target Pephredo
.xp <36,1
.xp >38,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8413 >>训练你的职业技能
.target Pephredo
.xp <38,1
step << Mage
.goto Orgrimmar,45.43,56.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Horthus|r|cRXP_BUY_交谈。从他那里购买两个或多个|r|T134419:0|t[传送符文]|r
.collect 17031,2 
.target Horthus
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10412 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <36,1
.xp >38,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10391 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <38,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8691 >>训练你的职业技能
.target Ormok
.xp <36,1
.xp >38,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8621 >>训练你的职业技能
.target Ormok
.xp <38,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 2362 >>训练你的职业技能
.target Mirket
.xp <36,1
.xp >38,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11711 >>训练你的职业技能
.target Mirket
.xp <38,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 6066 >>训练你的职业技能
.target Ur'kyo
.xp <36,1
.xp >38,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 6078 >>训练你的职业技能
.target Ur'kyo
.xp <38,1
step
.goto Orgrimmar,22.40,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔丹|r
.turnin 1436 >>交任务: |cRXP_FRIENDLY_联盟关系|r
.target Keldran
step
.goto Orgrimmar,75.20,34.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 1184 >>交任务: |cRXP_FRIENDLY_虫群的消息|r
.target Belgrom Rockmaul
step
.destroy 5877 >>摧毁: |cRXP_ENEMY_破碎的异种蝎壳|r
step << Shaman
#season 2
.equip 18,206387 >>|cRXP_WARN_装备|r|T134920:0|t|cRXP_LOOT_[Kajaric图标]|r
.use 206387
.itemcount 206387,1 
.train 410095,1
step << Shaman
#season 2
#optional
#completewith next
.zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
.train 410095,1
step << Shaman
#season 2
.goto Orgrimmar,52.77,48.97
.subzone 2437 >>进入阴影裂缝内的Ragefire Chasm
.itemStat 18,QUALITY,2
.train 410095,1
step << Shaman
#season 2
>>|cRXP_WARN_拥抱墙的右侧。下坡道后（第5次暴民之后），走进右侧的浅熔岩池|r
>>|cRXP_WARN_从|r|T135805:0|t[熔岩]|cRXP_WARN_i受到的伤害减少到91，同时装备|r|T134920:0|t|cRXP-LOOT_[Kajaric图标]|r|cRXP_WARN_i|r
.aura 408828 >>|cRXP_WARN_受到|T135805:0|t[熔岩]|cRXP_WARN_source的伤害5次|r
.itemStat 18,QUALITY,2
.train 410095,1
step << Shaman
#season 2
>>|cRXP_WARN_移出|r|T135805:0|t[熔岩]
.cast 402265 >>|cRXP_WARN_使用|r|T134920:0|t|cRXP_LOOT_[Kajaric图标]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-熔岩爆裂]
.use 206387
.aura -408828
.itemStat 18,QUALITY,2
.train 410095,1
step << !Hunter
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师萨苏恩|r
.collect 10592,3 >>|cRXP_BUY_从拍卖行购买三件|r|T134816:0|t[Caseye Elixir]|cRXP_Buy_|r
.target Auctioneer Thathung
step
.goto Orgrimmar,54.10,68.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格雷什卡|r
.home >>将您的炉石设置为Orgrimmar
.target Innkeeper Gryshka
step
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
step
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 30-40
#classic
<< Horde
#name 35-37北刺
#displayname 36-38 Northern Stranglethorn << sod
#next 37-38 Dustwallow Marsh
step
.goto Stranglethorn Vale,32.12,29.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.accept 570 >>接任务: |cRXP_LOOT_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,32.20,28.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿格罗戈什|r
.accept 568 >>接任务: |cRXP_LOOT_格罗姆高保卫战|r
.target Commander Aggro'gosh
step
#era
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.accept 629 >>接任务: |cRXP_LOOT_暗礁海|r
.accept 596 >>接任务: |cRXP_LOOT_染血的白骨项链|r
.target Kin'weelay
step
#som
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.accept 629 >>接任务: |cRXP_LOOT_暗礁海|r
.target Kin'weelay
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼姆布亚|r
.accept 581 >>接任务: |cRXP_LOOT_耶尼库的下落|r
.target Nimboya
step
#completewith next
.subzone 100 >>奈辛瓦利远征之旅
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴尼尔·石罐|r, Hemet, |cRXP_FRIENDLY_艾耶克·罗欧克|r, |cRXP_FRIENDLY_埃尔加丁爵士|r
.accept 583 >>接任务: |cRXP_LOOT_欢迎来到丛林|r
.goto Stranglethorn Vale,35.66,10.53
.turnin 583 >>交任务: |cRXP_FRIENDLY_欢迎来到丛林|r
.turnin 5762 >>交任务: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 5763 >>交任务: |cRXP_FRIENDLY_荆棘谷狩猎|r
.accept 194 >>接任务: |cRXP_LOOT_猎龙|r
.goto Stranglethorn Vale,35.66,10.81
.accept 185 >>接任务: |cRXP_LOOT_猎虎|r
.goto Stranglethorn Vale,35.62,10.62
.accept 190 >>接任务: |cRXP_LOOT_猎豹|r
.goto Stranglethorn Vale,35.56,10.55
.target Barnil Stonepot
.target Hemet Nesingwary
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
#completewith YoungPanthers
>>杀死河边的|cRXP_ENEMY_River鳄鱼|r。掠夺他们的|cRXP_Loot_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#completewith YoungPanthers
>>杀死|cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
#label YoungPanthers
.goto Stranglethorn Vale,36.82,10.25,60,0
.goto Stranglethorn Vale,36.66,11.88,60,0
.goto Stranglethorn Vale,37.70,14.44,60,0
.goto Stranglethorn Vale,39.26,14.53,60,0
.goto Stranglethorn Vale,41.01,13.63,60,0
.goto Stranglethorn Vale,41.48,13.18,60,0
.goto Stranglethorn Vale,42.29,13.14,60,0
.goto Stranglethorn Vale,43.06,12.26,60,0
.goto Stranglethorn Vale,42.86,10.49,60,0
.goto Stranglethorn Vale,41.99,10.21,60,0
.goto Stranglethorn Vale,41.04,9.37,60,0
.goto Stranglethorn Vale,40.26,10.04,60,0
.goto Stranglethorn Vale,39.96,11.55,60,0
.goto Stranglethorn Vale,40.42,12.35,60,0
.goto Stranglethorn Vale,40.96,13.65,60,0
.goto Stranglethorn Vale,41.48,13.18
>>杀死|cRXP_ENEMY_Young Panthers|r
.complete 190,1 
.mob Young Panther
step << Warrior
.loop 25,Stranglethorn Vale,43.99,11.95,44.73,11.46,45.21,11.05,45.19,9.53,44.83,8.60,43.91,8.74,43.50,9.72,43.95,10.50,43.99,11.95
>>前往库尔岑大院。杀死|cRXP_LOOT_Kurzen医药人|r。掠夺他们的|T134413:0|t[Liferoot]
>>|cRXP_WARN_你也可以从拍卖行购买Liferoot|r
>>|cRXP_WARN_丛林战士和药师共享产卵点，所以你必须同时杀死它们|r
.collect 3357,8 
.mob Kurzen Jungle Fighter
.mob Kurzen Medicine Man
step << Rogue
#season 2
.train 425103,1
#completewith Uniform
.goto Stranglethorn Vale,46.30,7.61,30 >>进入仓库（库尔岑洞穴）
.skill lockpicking,<125,1
step << Rogue
#season 2
.train 425103,1
#completewith next
>>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Kurzen精英|r和|cRXD_ENEMY_Kurzen子组|r用于|cRXP_LOOT_复合笼密钥|r
.collect 216616,1
.mob Kurzen Elite
.mob Kurzen Subchief
.skill lockpicking,<125,1
step << Rogue
#season 2
#label Uniform
.train 425103,1
.goto Stranglethorn Vale,49.616,7.743
>>打开|cRXP_PICK_Kurzen补给箱|r。将其洗劫一空，以获取|cRXP _Loot_Kurzen战斗机制服|r
>>|cRXP_WARN_你的开锁技能需要达到125或更高才能做到这一点|r
.collect 216617,1
.skill lockpicking,<125,1
step << Rogue
#season 2
.train 425103,1
.goto Stranglethorn Vale,49.943,3.953,40,0
.goto Stranglethorn Vale,49.617,7.562,40,0
.goto Stranglethorn Vale,49.25,6.18
>>|T133644:0|t[拾取口袋]|cRXP_ENEMY_Kurzen精英|r和|cRXD_ENEMY_Kurzen子组|r用于|cRXP_LOOT_复合笼密钥|r
.collect 216616,1
.mob Kurzen Elite
.mob Kurzen Subchief
.skill lockpicking,<125,1
step << Rogue
#season 2
.train 425103,1
#completewith next
.goto Stranglethorn Vale,44.261,7.908,60 >>离开洞穴。向塔外的|cRXP_FRIENDLY_Wendel Mathers|r行进
.skill lockpicking,<125,1
step << Rogue
#season 2
.train 425103,1
.goto Stranglethorn Vale,44.261,7.908
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wendel Mathers|r in the tower
>>|cRXP_WARN_他有一个大约3分钟的重生计时器|r
.destroy 216616 >>将|cRXP_LOOT_复合笼钥匙|r递给他
.destroy 216617 >>将|cRXP_LOOT_Kurzen战斗机制服|r交给他
.skipgossip 218230,1
.target Wendel Mathers
.skill lockpicking,<125,1
step
#completewith next
>>杀死河边的|cRXP_ENEMY_River鳄鱼|r。掠夺他们的|cRXP_Loot_Skin|r
.complete 575,1 
.mob River Crocolisk
step
.goto Stranglethorn Vale,38.82,14.20,60,0
.goto Stranglethorn Vale,37.04,13.94,60,0
.goto Stranglethorn Vale,35.58,12.38,60,0
.goto Stranglethorn Vale,33.59,12.20,60,0
.goto Stranglethorn Vale,32.67,10.15,60,0
.goto Stranglethorn Vale,31.42,8.48,60,0
.goto Stranglethorn Vale,33.47,10.25,60,0
.goto Stranglethorn Vale,34.07,11.34
>>杀死|cRXP_ENEMY_Young Stranglethorn Tigers|r
.complete 185,1 
.mob Young Stranglethorn Tiger
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r, |cRXP_FRIENDLY_埃尔加丁爵士|r
.turnin 185 >>交任务: |cRXP_FRIENDLY_猎虎|r
.accept 186 >>接任务: |cRXP_LOOT_猎虎|r
.goto Stranglethorn Vale,35.62,10.62
.turnin 190 >>交任务: |cRXP_FRIENDLY_猎豹|r
.accept 191 >>接任务: |cRXP_LOOT_猎豹|r
.goto Stranglethorn Vale,35.56,10.55
.target Ajeck Rouack
.target Sir S. J. Erlgadin
step
#completewith RaptorsPart1
>>杀死河边的|cRXP_ENEMY_River鳄鱼|r。掠夺他们的|cRXP_Loot_Skin|r
.complete 575,1 
.mob River Crocolisk
step
.loop 25,Stranglethorn Vale,31.0,11.2,29.7,8.9,28.4,12.3,28.8,13.6,28.5,16.9,30.6,13.9,31.0,11.2
>>杀死|cRXP_ENEMY_Panthers|r和|cRXP_ENEMY_Stranglethorn Tigers|r
.complete 191,1 
.complete 186,1 
.mob Panther
.mob Stranglethorn Tiger
step
#label RaptorsPart1
.loop 25,Stranglethorn Vale,28.08,15.41,27.82,16.35,27.18,16.81,26.28,16.70,25.39,16.33,23.71,15.44,25.69,15.71,26.61,15.85,27.24,15.14,27.80,14.33,28.08,15.41
>>杀死|cRXP_ENEMY_Stranglethorn猛禽|r
.complete 194,1 
.mob Stranglethorn Raptor
step
#completewith next
.goto Stranglethorn Vale,35.55,10.55,80 >>返回奈辛瓦利的远征
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔加丁爵士|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r, Hemet
.turnin 191 >>交任务: |cRXP_FRIENDLY_猎豹|r
.accept 192 >>接任务: |cRXP_LOOT_猎豹|r
.goto Stranglethorn Vale,35.55,10.55
.turnin 186 >>交任务: |cRXP_FRIENDLY_猎虎|r
.accept 187 >>接任务: |cRXP_LOOT_猎虎|r
.goto Stranglethorn Vale,35.61,10.62
.turnin 194 >>交任务: |cRXP_FRIENDLY_猎龙|r
.accept 195 >>接任务: |cRXP_LOOT_猎龙|r
.goto Stranglethorn Vale,35.66,10.81
.target Sir S. J. Erlgadin
.target Ajeck Rouack
.target Hemet Nesingwary
step
.goto Stranglethorn Vale,32.4,8.8,90,0
.goto Stranglethorn Vale,34.4,8.2,90,0
.goto Stranglethorn Vale,36.8,10.4,90,0
.goto Stranglethorn Vale,39.8,11.4,90,0
.goto Stranglethorn Vale,39.8,14.4
.line Stranglethorn Vale,32.4,8.8,34.4,8.2,36.8,10.4,39.8,11.4,39.8,14.4
>>杀死河边的|cRXP_ENEMY_River鳄鱼|r。掠夺他们的|cRXP_Loot_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#completewith next
>>杀死你遇到的每一只|cRXP_ENEMY_Stranglethorn Tiger|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
.loop 25,Stranglethorn Vale,33.9,15.6,33.2,13.7,28.8,19.6,29.8,19.4,30.6,18.9,33.9,15.6
>>杀死|cRXP_ENEMY_Bloodship巨魔|r。掠夺它们的|cRXD_Loot_TASK|r、|cRXP_Loot_Eurs|r和|cRXX_Loot_Eneckles|r
.complete 581,1 
.complete 189,1 
.disablecheckbox
.complete 596,1 
.disablecheckbox
.mob Bloodscalp Warrior
.mob Bloodscalp Axe Thrower
.mob Bloodscalp Shaman
step
.loop 25,Stranglethorn Vale,32.1,15.8,31.4,18.4,31.8,20.0,34.2,17.6,32.1,15.8
>>完成击杀|cRXP_ENEMY_Stranglethorn Tigers|r
.complete 187,1 
.mob Elder Stranglethorn Tiger
step
.loop 25,Stranglethorn Vale,31.9,20.9,30.4,24.7,32.5,23.4,34.1,25.5,36.0,26.8,38.9,25.1,38.1,28.1,31.9,20.9
>>杀死|cRXP_ENEMY_Lashtail猛禽|r
>>|cRXP_WARN_小心他们的眩晕并解除武装|r
.complete 568,1 
.complete 195,1 
.mob Lashtail Raptor
step
#completewith next
.goto Stranglethorn Vale,32.2,27.8,80 >>返回Grom'gol大本营
step
.goto Stranglethorn Vale,32.2,27.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼姆布亚|r
.turnin 581 >>交任务: |cRXP_FRIENDLY_耶尼库的下落|r
.accept 582 >>接任务: |cRXP_LOOT_猎头行动|r
.target Nimboya
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.accept 629 >>接任务: |cRXP_LOOT_暗礁海|r
.target Kin'weelay
step
.goto Stranglethorn Vale,32.17,28.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿格罗戈什|r
.turnin 568 >>交任务: |cRXP_FRIENDLY_格罗姆高保卫战|r
.accept 569 >>接任务: |cRXP_LOOT_格罗姆高保卫战|r
.target Commander Aggro'gosh
step << Hunter
.goto Stranglethorn Vale,31.55,27.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤索克|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2600,629,1 
.target Uthok
step << Hunter
.goto Stranglethorn Vale,31.23,28.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉格|r
.train 14303 >>训练你的职业技能
.target Kragg
.xp <36,1
.xp >38,1
step << Hunter
#optional
.goto Stranglethorn Vale,31.23,28.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉格|r
.train 14320 >>训练你的职业技能
.target Kragg
.xp <38,1
step
.goto Stranglethorn Vale,24.77,22.85
>>掠夺|cRXP_PICK_Gri'lek the Wanderer|r以获取|cRXP_Loot_Tablet碎片|r
>>|cRXP_WARN_墙壁两侧各有两块石碑。把墙外面的那个拿走。这样你就不会对任何精英|r|cRXP_ENEMY_Saltscale Murlocs进行农业生产|r
.complete 629,1 
step
.loop 25,Stranglethorn Vale,27.37,18.62,25.94,18.20,24.84,17.26,23.22,16.89,23.21,18.35,24.80,18.98,26.97,19.78,27.37,18.62
>>杀死|cRXP_ENEMY_Crystal Spine Basilisk|r。掠夺它们的|cRXP_Loot_水晶碎片|r
>>|cRXP_WARN_你必须在这里来回走动，强制动态重生|r
.complete 605,1 
.mob Crystal Spine Basilisk
step << Warrior
#xprate <1.99
#era
.loop 25,Stranglethorn Vale,20.38,13.94,20.81,12.74,21.00,10.81,20.06,11.88,19.36,11.81,19.67,13.31,20.38,13.94
>>杀死|cRXP_ENEMY_Bloodship巨魔|r。掠夺它们的|cRXP_Loot_Eurs|r，|cRXP-Loot_Heads|r，| cRXP_Loot_Eneckles|r和|cRXT_Loot_Taxs|r
>>|T133730:0|t[缩头]|cRXP_WARN_仅从|r|cRXP-ENEMY_Bloodsapk猎头|r掉落
.complete 189,1 
.complete 582,1 
.complete 596,1 
.complete 1712,2 
.mob Bloodscalp Witch Doctor
.mob Bloodscalp Berserker
.mob Bloodscalp Headhunter
step << Warrior
#xprate <1.99
#som
.loop 25,Stranglethorn Vale,20.38,13.94,20.81,12.74,21.00,10.81,20.06,11.88,19.36,11.81,19.67,13.31,20.38,13.94
>>杀死|cRXP_ENEMY_Bloodship巨魔|r。掠夺它们的|cRXP_Loot_Eears|r、|cRXP-Loot_Heads|r和|cRXT_Loot_Tusk|r
>>|T133730:0|t[缩头]|cRXP_WARN_仅从|r|cRXP-ENEMY_Bloodsapk猎头|r掉落
.complete 189,1 
.complete 582,1 
.complete 1712,2 
.mob Bloodscalp Witch Doctor
.mob Bloodscalp Berserker
.mob Bloodscalp Headhunter
step
#era
.loop 25,Stranglethorn Vale,20.38,13.94,20.81,12.74,21.00,10.81,20.06,11.88,19.36,11.81,19.67,13.31,20.38,13.94
>>杀死|cRXP_ENEMY_Bloodship巨魔|r。掠夺它们的|cRXP_Loot_Eears|r、|cRXP-Loot_Heads|r和|cRXX_Loot_Eneckles|r
>>|T133730:0|t[缩头]|cRXP_WARN_仅从|r|cRXP-ENEMY_Bloodsapk猎头|r掉落
.complete 189,1 
.complete 582,1 
.complete 596,1 
.mob Bloodscalp Witch Doctor
.mob Bloodscalp Berserker
.mob Bloodscalp Headhunter
step
#som
.loop 25,Stranglethorn Vale,20.38,13.94,20.81,12.74,21.00,10.81,20.06,11.88,19.36,11.81,19.67,13.31,20.38,13.94
>>杀死|cRXP_ENEMY_Bloodship巨魔|r。掠夺它们的|cRXP_Loot_Eears|r和|cRXP-Loot_Heads|r
>>|T133730:0|t[缩头]|cRXP_WARN_仅从|r|cRXP-ENEMY_Bloodsapk猎头|r掉落
.complete 189,1 
.complete 582,1 
.mob Bloodscalp Witch Doctor
.mob Bloodscalp Berserker
.mob Bloodscalp Headhunter
step
#completewith next
.goto Stranglethorn Vale,32.2,27.8,80 >>返回Grom'gol大本营
step
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼姆布亚|r, |cRXP_FRIENDLY_肯维雷|r
.turnin 582 >>交任务: |cRXP_FRIENDLY_猎头行动|r
.goto Stranglethorn Vale,32.16,27.72
.turnin 596 >>交任务: |cRXP_FRIENDLY_染血的白骨项链|r
.turnin 629 >>交任务: |cRXP_FRIENDLY_暗礁海|r
.goto Stranglethorn Vale,32.27,27.70
.target Nimboya
.target Kin'weelay
step
#som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼姆布亚|r, |cRXP_FRIENDLY_肯维雷|r
.turnin 582 >>交任务: |cRXP_FRIENDLY_猎头行动|r
.goto Stranglethorn Vale,32.16,27.72
.turnin 629 >>交任务: |cRXP_FRIENDLY_暗礁海|r
.goto Stranglethorn Vale,32.27,27.70
.target Nimboya
.target Kin'weelay
step << Hunter
.goto Stranglethorn Vale,31.23,28.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉格|r
.train 14303 >>训练你的职业技能
.target Kragg
.xp <36,1
.xp >38,1
step
.loop 25,Stranglethorn Vale,36.49,31.61,37.28,30.96,38.04,29.61,36.88,29.69,35.60,30.62,36.49,31.61
>>杀死|cRXP_ENEMY_Mosh'Ogg Brutes|r和|cRXD_ENEMY_Mosh'Org Witch Doctors|r
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_Tigers|r|cRXP_WARN_and|r|C RXP_ENMEMY_Panthers|r| cRXP_WARN_渡河|r|cRXP_WAR_等待重生|r
.complete 569,1 
.complete 569,2 
.mob Mosh'Ogg Brute
.mob Mosh'Ogg Witch Doctor
step
#completewith CozzleBl
>>杀死|cRXP_ENEMY_Venture Co.地质学家|r。掠夺他们的|cRXX_Loot_水晶|r
.complete 213,1 
.mob Venture Co. Geologist
step
.goto Stranglethorn Vale,42.74,18.04,40,0
.goto Stranglethorn Vale,42.10,18.33,12,0
.goto Stranglethorn Vale,42.29,18.98,12,0
.goto Stranglethorn Vale,42.51,18.82,12,0
.goto Stranglethorn Vale,42.66,18.36
>>爬到石油钻井平台的顶部，然后杀死|cRXP_ENEMY_Foreman Cozzle|r。抢走他的|cRXP-Loot_Key|r
.collect 5851,1 
.unitscan Foreman Cozzle
.isOnQuest 1182
step
#label CozzleBl
.goto Stranglethorn Vale,43.33,20.33
>>进入木材厂旁边的房子，然后掠夺|cRXP_PICK_Cozzle的Footlocker|r以获得|cRXP_loot_Blueprints|r
.complete 1182,1 
step
.loop 25,Stranglethorn Vale,36.49,31.61,37.28,30.96,38.04,29.61,36.88,29.69,35.60,30.62,36.49,31.61
>>返回米兹贾废墟并完成杀戮|cRXP_ENEMY_Mosh'Ogg Brutes|r和|cRXD_ENEMY_Mosh'Org Witch Doctors|r
.complete 569,1 
.complete 569,2 
.mob Mosh'Ogg Brute
.mob Mosh'Ogg Witch Doctor
step
.loop 25,Stranglethorn Vale,43.26,21.05,42.58,22.00,43.78,22.80,44.42,23.55,45.38,23.28,46.29,23.45,46.26,21.94,47.02,20.02,46.67,19.13,46.34,18.00,45.27,17.76,44.89,16.79,44.44,16.19,43.60,15.80,43.39,17.63,43.65,19.32,43.26,21.05
>>完成杀戮|cRXP_ENEMY_Venture Co.地质学家|r。掠夺他们的|cRXX_Loot_水晶|r
.complete 213,1 
.mob Venture Co. Geologist
step
#era
#xprate <1.5
.goto Stranglethorn Vale,45.2,20.5
.xp 36+50000 >>升级到50000+/71600 xp
step
#som
#phase 1-2
.goto Stranglethorn Vale,45.2,20.5
.xp 36+30000 >>升级到30000+/71600 xp
step
#completewith ShadowPanthers
>>杀死|cRXP_ENEMY_Stranglethorn虎妞|r。掠夺它们以获得|cRXX_Loot_原始虎妞方|r
.complete 570,2 
.mob Stranglethorn Tigress
step << !Hunter
#ah
#completewith next
.use 10592 >>消耗您的|T134816:0|t[Caseye Elixir]以更容易地找到|cRXP_ENEMY_Shadowmaw Panthers|r
.itemcount 10592,1
step << Hunter
#completewith next
+铸造|T132320:0|t[隐藏轨迹]以更容易地找到|cRXP_ENEMY_Shadowmaw Panthers|r
step
#label ShadowPanthers
.goto Stranglethorn Vale,48.82,23.91,0
.waypoint Stranglethorn Vale,47.64,22.47,40,0
.waypoint Stranglethorn Vale,48.08,23.54,40,0
.waypoint Stranglethorn Vale,48.82,23.91,40,0
.waypoint Stranglethorn Vale,49.58,25.41,40,0
.waypoint Stranglethorn Vale,50.29,24.76,40,0
.waypoint Stranglethorn Vale,50.25,23.37,40,0
.waypoint Stranglethorn Vale,50.26,21.44,40,0
.waypoint Stranglethorn Vale,49.29,19.84,40,0
.waypoint Stranglethorn Vale,48.33,19.99,40,0
.waypoint Stranglethorn Vale,47.75,21.21,40,0
.waypoint Stranglethorn Vale,47.64,22.47,40,0
>>杀死|cRXP_ENEMY_Shadowmaw Panthers|r。掠夺它们的|cRXX_Loot_爪|r
>>|cRXP_WARN_这些都是偷来的暴徒。搜索任何空置区域|r
.complete 570,1 
.complete 192,1 
.unitscan Shadowmaw Panther
step
.goto Stranglethorn Vale,48.82,23.91,0
.waypoint Stranglethorn Vale,47.64,22.47,40,0
.waypoint Stranglethorn Vale,48.08,23.54,40,0
.waypoint Stranglethorn Vale,48.82,23.91,40,0
.waypoint Stranglethorn Vale,49.58,25.41,40,0
.waypoint Stranglethorn Vale,50.29,24.76,40,0
.waypoint Stranglethorn Vale,50.25,23.37,40,0
.waypoint Stranglethorn Vale,50.26,21.44,40,0
.waypoint Stranglethorn Vale,49.29,19.84,40,0
.waypoint Stranglethorn Vale,48.33,19.99,40,0
.waypoint Stranglethorn Vale,47.75,21.21,40,0
.waypoint Stranglethorn Vale,47.64,22.47,40,0
>>杀死|cRXP_ENEMY_Stranglethorn虎妞|r。掠夺它们以获得|cRXX_Loot_原始虎妞方|r
.complete 570,2 
.mob Stranglethorn Tigress
step
.goto Stranglethorn Vale,32.4,8.8,90,0
.goto Stranglethorn Vale,34.4,8.2,90,0
.goto Stranglethorn Vale,36.8,10.4,90,0
.goto Stranglethorn Vale,39.8,11.4,90,0
.goto Stranglethorn Vale,39.8,14.4
.line Stranglethorn Vale,32.4,8.8,34.4,8.2,36.8,10.4,39.8,11.4,39.8,14.4
>>完成沿河击杀|cRXP_ENEMY_River Crocollisk|r。掠夺他们的|cRXP_Loot_Skin|r
.complete 575,1 
.mob River Crocolisk
step
#completewith next
.subzone 100 >>奈辛瓦利远征之旅
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃尔加丁爵士|r, |cRXP_FRIENDLY_艾耶克·罗欧克|r, Hemet
.turnin 192 >>交任务: |cRXP_FRIENDLY_猎豹|r
.accept 193 >>接任务: |cRXP_LOOT_猎豹|r
.goto Stranglethorn Vale,35.55,10.55
.turnin 187 >>交任务: |cRXP_FRIENDLY_猎虎|r
.accept 188 >>接任务: |cRXP_LOOT_猎虎|r
.goto Stranglethorn Vale,35.61,10.62
.turnin 195 >>交任务: |cRXP_FRIENDLY_猎龙|r
.accept 196 >>接任务: |cRXP_LOOT_猎龙|r
.goto Stranglethorn Vale,35.66,10.81
step
.goto Stranglethorn Vale,32.2,17.4
>>杀死|cRXP_ENEMY_Sin'Dall|r。掠夺他的|cRXX_Loot_Paw|r
>>|cRXP_WARN_辛达尔要么在高原上，要么在基地巡逻|r
.complete 188,1 
.unitscan Sin'Dall
step
.goto Stranglethorn Vale,35.61,10.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r
.turnin 188 >>交任务: |cRXP_FRIENDLY_猎虎|r
.target Ajeck Rouack

step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
.goto Stranglethorn Vale,39.30,6.49,60,0
.goto Stranglethorn Vale,40.63,3.12,50 >>前往: |cRXP_PICK_暮色森林|r
.zoneskip Duskwood
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
#completewith next
.goto Duskwood,88.47,41.00,50 >>前往: |cRXP_PICK_逆风小径|r
.zoneskip Deadwind Pass
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
.goto Deadwind Pass,48.02,34.60,60,0
.goto Deadwind Pass,58.43,41.51,50,0
.zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
.zoneskip Swamp of Sorrows
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
.goto Swamp of Sorrows,25.0,54.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaryllis Webb|r
>>|cRXP_WARN_从她那里购买|r|T133653:0|t[昆虫学入门套件]|cRXP_WARN_|r
.collect 213565,1 
.target Amaryllis Webb
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
>>打开|T133653:0|t[昆虫学入门套件]
>>|cRXP_WARN_把|r|T134325:0|t[Bug Catching Net]|cRXP_WARN_in放在包里。在接下来的几个区域中，你将需要它来获得新的符文|r
.use 213565
.collect 213562,1 
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
#completewith next
.subzone 75 >>Travel to Stonard
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
.goto Swamp of Sorrows,46.10,54.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷依克|r
.fp Stonard >>获取Stonard飞行路线
.fly Grom'gol >>飞往Grom'gol大本营
.target Breyk
.subzoneskip 117
step
#completewith next
.goto Stranglethorn Vale,32.2,27.8,80 >>返回Grom'gol大本营
.subzoneskip 117
step
#xprate <1.99
.goto Stranglethorn Vale,32.16,27.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼姆布亚|r
.accept 638 >>接任务: |cRXP_LOOT_巨魔之敌|r
.target Nimboya
step
.goto Stranglethorn Vale,32.17,28.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官阿格罗戈什|r
.turnin 569 >>交任务: |cRXP_FRIENDLY_格罗姆高保卫战|r
.target Commander Aggro'gosh
step
.goto Stranglethorn Vale,32.12,29.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.turnin 570 >>交任务: |cRXP_FRIENDLY_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯塔|r
.fly Booty Bay >>飞到Booty Bay
.target Thysta
step
.goto Stranglethorn Vale,27.23,76.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大财主里维加兹|r
.turnin 1182 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1183 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Baron Revilgaz
step
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科博克|r, |cRXP_FRIENDLY_克拉兹克|r
.turnin 189 >>交任务: |cRXP_FRIENDLY_血顶巨魔的耳朵|r
.turnin 213 >>交任务: |cRXP_FRIENDLY_恶性竞争|r
.goto Stranglethorn Vale,27.0,77.13
.turnin 201 >>交任务: |cRXP_FRIENDLY_调查营地|r
.accept 209 >>接任务: |cRXP_LOOT_劈颅巨魔的獠牙|r
.accept 1116 >>接任务: |cRXP_WARN_梦境之尘|r
.goto Stranglethorn Vale,26.95,77.21
.target Kebok
.target Krazek
step
#som
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科博克|r, |cRXP_FRIENDLY_克拉兹克|r
.turnin 189 >>交任务: |cRXP_FRIENDLY_血顶巨魔的耳朵|r
.turnin 213 >>交任务: |cRXP_FRIENDLY_恶性竞争|r
.goto Stranglethorn Vale,27.0,77.13
.turnin 201 >>交任务: |cRXP_FRIENDLY_调查营地|r
.accept 209 >>接任务: |cRXP_LOOT_劈颅巨魔的獠牙|r
.goto Stranglethorn Vale,26.95,77.21
.target Kebok
.target Krazek
step
#era
.goto Stranglethorn Vale,27.12,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 605 >>交任务: |cRXP_FRIENDLY_歌唱水晶碎片|r
.accept 600 >>接任务: |cRXP_LOOT_风险投资公司|r
.target Crank Fizzlebub
step
#som
.goto Stranglethorn Vale,27.12,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克兰克·菲兹巴布|r
.turnin 605 >>交任务: |cRXP_FRIENDLY_歌唱水晶碎片|r
.target Crank Fizzlebub
step
#season 2
.train 431663,1 << Priest
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r on the inn's lowest level
.goto Stranglethorn Vale,26.988,77.284
.turnin 79235 >>Turn in On the Lam
.accept 79236 >>Accept Cherry for Your Thoughts?
.target Tokal
step
#season 2
.train 431663,1 << Priest
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼克拉克斯·菲拉莫格|r
>>|cRXP_BUY_BUY a|r|T132790:0|t[Cherry Grog]
.goto Stranglethorn Vale,27.039,77.168
.collect 4600,1,79236,1
.target Nixxrax Fillamug
step
#xprate <1.99
#season 2
.train 431663,1 << Priest
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
.goto Stranglethorn Vale,26.988,77.284
.turnin 79236 >>Turn in Cherry for Your Thoughts?
.accept 79242 >>Accept No Honor Among Thieves
.target Tokal
step
#xprate >1.99
#season 2
.train 431663,1 << Priest
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tokal|r
.goto Stranglethorn Vale,26.988,77.284
.turnin 79236 >>Turn in Cherry for Your Thoughts?
.target Tokal
step
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.turnin 575 >>交任务: |cRXP_FRIENDLY_供与求|r
.accept 577 >>接任务: |cRXP_LOOT_收集鳄鱼皮|r
.target Drizzlik
step
.goto Stranglethorn Vale,28.14,78.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Glyx交谈|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134832:0|t[更强的治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Glyx Brewright
step << Rogue
#season 2
.train 425103,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Aransas|r
>>她会给你|T133640:0|t[|cRXP_LOOT_Aransas船长的奖励|r]
.goto Stranglethorn Vale,27.681,76.648
.skipgossip
.collect 216618,1
.target Captain Aransas
.skill lockpicking,<125,1
step << Rogue
#season 2
.train 425103,1
.use 216618 >>打开|T133640:0|t[|cRXP_LOOT_Aransas船长奖励|r]获得|T134419:0|t[| cRXP_FRIENDLY_Rune of Sublty|r]和|T338666:0|t[|cRXP-FRIENDLY_Jani’s Charm|r]
>>|cRXP_WARN_不要破坏|r|T338666:0|t[|cRXP_FRIENDLY_Jani的符咒|r]|cRXP_WARN_a，因为它用于收集未来的符文|r
.collect 213136,1
.skill lockpicking,<125,1
step << Rogue
#season 2
.itemcount 213136,1
.use 213136
.train 425103 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_转租合同|r]|cRXP_WARN_to train|r|T132299:0|t[转租主合同]
.skill lockpicking,<125,1
step << Druid
#completewith DruidTraining5
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9493 >>训练你的职业技能
.target Loganaar
.xp <36,1
.xp >38,1
step << Druid
#label DruidTraining5
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 5201 >>训练你的职业技能
.target Loganaar
.xp <38,1
step
#completewith next
.hs >>前往: 奥格瑞玛
.use 6948
.zoneskip Orgrimmar
step
.goto Orgrimmar,54.65,67.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_酒吧老板莫拉格|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Barkeep Morag
step
.goto Orgrimmar,49.57,69.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡鲁斯|r
.bankdeposit 2725,2728,2735,2730,2742,2732,2748,2751,2734,2740,2749,2745,2738,2744,2750 >>将您的所有|T134332:0|t[Green Hills of Stranglethorn Pages]存入银行
.target Karus
step
.goto Orgrimmar,57.57,52.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克森图|r
>>|cRXP_BUY_从他那里购买|r[舒缓香料]|cRXP_Buy_|r
.collect 3713,3 
.target Xen'to
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师萨苏恩|r
.collect 3853,1 >>|cRXP_BUY_从拍卖行购买一把|r|T135326:0|t[月钢大刀]|cRXP_Buy_|r
>>这是稍后在达斯瓦洛沼泽免费获得3450经验值。如果无法获取，请跳过此步骤
.target Auctioneer Thathung
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8427 >>训练你的职业技能
.target Pephredo
.xp <36,1
.xp >38,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8413 >>训练你的职业技能
.target Pephredo
.xp <38,1
step << Mage
.goto Orgrimmar,38.70,85.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与小屋顶部的|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 11417 >>列车|T135744:0|t[入口：Orgrimmar]
.target Thuul
.xp <40,1
step << Mage
.goto Orgrimmar,45.43,56.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Horthus|r|cRXP_BUY_交谈。从他那里购买两个或多个|r|T134419:0|t[传送符文]|cRXP_Buy_以及可选的一个或多个子|r|T134421:0|t[传送符文]|r
.collect 17031,2 
.collect 17032,1 
.target Horthus
.xp <40,1
step << Mage
.goto Orgrimmar,45.43,56.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Horthus|r|cRXP_BUY_交谈。从他那里购买两个或多个|r|T134419:0|t[传送符文]|r
.collect 17031,2 
.target Horthus
.xp >40,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10412 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <36,1
.xp >38,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10391 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <38,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8691 >>训练你的职业技能
.target Ormok
.xp <36,1
.xp >38,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8621 >>训练你的职业技能
.target Ormok
.xp <38,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 2362 >>训练你的职业技能
.target Mirket
.xp <36,1
.xp >38,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11711 >>训练你的职业技能
.target Mirket
.xp <38,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 1680 >>训练你的职业技能
.target Grezz Ragefist
.xp <36,1
.xp >38,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 8820 >>训练你的职业技能
.target Grezz Ragefist
.xp <38,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14303 >>训练你的职业技能
.target Ormak Grimshot
.xp <36,1
.xp >38,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14320 >>训练你的职业技能
.target Ormak Grimshot
.xp <38,1
step << Hunter
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
.train 24560 >>训练你的宠物法术
.target Xao'tsu
.xp <36,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 6066 >>训练你的职业技能
.target Ur'kyo
.xp <36,1
.xp >38,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 6078 >>训练你的职业技能
.target Ur'kyo
.xp <38,1
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP 部落 法师 AoE
#classic
<< Horde Mage
#name 36-60 Mage AoE
step
.goto The Barrens,45.58,59.04
.home >>把你的心放在Taurajo营地
step
>>向南跑进达斯沃洛沼泽
>>点击地面上的Hoofprints
.goto Dustwallow Marsh,29.71,47.65
.accept 1268 >>接任务: |cRXP_LOOT_可疑的蹄印|r
step
.goto Dustwallow Marsh,29.83,48.24
>>点击木头上的徽章
.accept 1269 >>接任务: |cRXP_LOOT_帕瓦尔·雷瑟上尉|r
step
>>点击壁炉上方的盾牌
.goto Dustwallow Marsh,29.64,48.58
.accept 1251 >>接任务: |cRXP_LOOT_黑色盾牌|r
step
.goto Dustwallow Marsh,35.15,38.26
.target Mudcrush Durtfeet
>>对话: |cRXP_FRIENDLY_马德克拉什|r
.accept 1177 >>接任务: |cRXP_LOOT_饿！|r
step
.goto Dustwallow Marsh,35.56,31.88
.fp Brackenwall >>获取Brackenwall飞行路线
step
.goto Dustwallow Marsh,36.42,31.89
>>对话: |cRXP_FRIENDLY_克罗格|r
.turnin 1251 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.target Krog
.accept 1321 >>接任务: |cRXP_LOOT_黑色盾牌|r
.turnin 1268 >>交任务: |cRXP_FRIENDLY_可疑的蹄印|r
.turnin 1269 >>交任务: |cRXP_FRIENDLY_帕瓦尔·雷瑟上尉|r
step
.goto Dustwallow Marsh,36.53,30.79
.target Do'gol
>>对话: |cRXP_FRIENDLY_杜高尔|r
.turnin 1321 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
step
.goto Dustwallow Marsh,34.35,22.03
.target Do'gol
>>对话: |cRXP_FRIENDLY_杜高尔|r
.accept 1322 >>接任务: |cRXP_LOOT_黑色盾牌|r
step
>>在Brackenwall东北部寻找隐秘的Theramore渗透者。如果可能，AoE
.goto Dustwallow Marsh,39.11,22.81,120,0
.goto Dustwallow Marsh,38.99,27.55,120,0
.goto Dustwallow Marsh,41.65,25.78,120,0
.complete 1201,1 
step
.goto Dustwallow Marsh,55.43,26.26
.target "Swamp Eye" Jarl
>>对话: |cRXP_FRIENDLY_\"沼泽之眼\"加尔|r
.accept 1218 >>接任务: |cRXP_WARN_舒心草|r
.turnin 1218 >>交任务: |cRXP_FRIENDLY_舒心草|r
.accept 1206 >>接任务: |cRXP_LOOT_加尔和蜘蛛眼|r
step
.goto Dustwallow Marsh,55.45,25.92
.accept 1238 >>接任务: |cRXP_LOOT_遗失的报告|r
step
#completewith next
+我强烈建议观看这些暴民的法师指南，因为他们可以说是AoE法师调平经验中最难的部分
>>我不建议在38级之前做乌龟包+
.link https://youtu.be/SxMc2GoP33c?t=3824 >>单击此处
step
#sticky
#label Head
>>杀死穆洛克人。抢他们的头
.complete 1177,1 
step
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.xp 38 >>AoE Murlocs to level 38
step
#requires Head
.trainer >>前往: |cRXP_PICK_幽暗城|r Train your level 38 spells
>>也要开始非常小心你的钱，因为你的坐骑达到40级是很好的
step
.hs >>Hearth前往陶拉霍营地
.vendor >>如果需要，购买35级饮料
step
.goto The Barrens,44.44,59.15
.fly Brackenwall >>飞往Brackenwall村
step
.goto Dustwallow Marsh,35.15,38.25
.target Mudcrush Durtfeet
>>对话: |cRXP_FRIENDLY_马德克拉什|r
.turnin 1177 >>交任务: |cRXP_FRIENDLY_饿！|r
step
.goto Dustwallow Marsh,35.21,30.66
.target Nazeer Bloodpike
>>对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.turnin 1201 >>交任务: |cRXP_FRIENDLY_塞拉摩间谍|r
.turnin 1238 >>交任务: |cRXP_FRIENDLY_遗失的报告|r
step
>>AoE Spiders in the area
.goto Dustwallow Marsh,34.39,21.97
.complete 1322,1 
.complete 1206,1 
step
.goto Dustwallow Marsh,36.53,30.80
>>对话: |cRXP_FRIENDLY_杜高尔|r
.turnin 1322 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.target Do'gol
.accept 1323 >>接任务: |cRXP_LOOT_黑色盾牌|r
step
.goto Dustwallow Marsh,36.42,31.89
.target Krog
>>对话: |cRXP_FRIENDLY_克罗格|r
.turnin 1323 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
step
.goto Dustwallow Marsh,55.43,26.26
.target "Swamp Eye" Jarl
>>对话: |cRXP_FRIENDLY_\"沼泽之眼\"加尔|r
.turnin 1206 >>交任务: |cRXP_FRIENDLY_加尔和蜘蛛眼|r
step
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.xp 40 >>AoE Murlocs to level 40
step << Undead
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
.trainer >>训练你的职业技能
step << Undead
#sticky
#completewith next
.goto Undercity,82.36,15.31
+转到右侧的试剂供应商，执行“注销跳过”，将角色定位在最低楼梯的最高部分，直到看起来像漂浮在空中，然后注销并重新登录。
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >>单击此处查看示例
>>如果你做不到这一点，就正常离开幽暗城
step << Undead
#era
>>前往: |cRXP_PICK_丹莫罗|r
.goto Tirisfal Glades,61.85,66.59,60 >>前往: |cRXP_PICK_提瑞斯法林地|r
step << Undead
#som
>>前往: |cRXP_PICK_丹莫罗|r
.goto Tirisfal Glades,61.85,66.59,60 >>前往: |cRXP_PICK_提瑞斯法林地|r
step << Undead
#era
.zone Tirisfal Glades >>前往: |cRXP_PICK_丹莫罗|r
.trainer >>跑进Tirisfal Glades，开始你的坐骑和坐骑训练。
.goto Tirisfal Glades,59.93,52.57
step << Undead
#som
.zone Tirisfal Glades >>前往: |cRXP_PICK_丹莫罗|r
.trainer >>跑进Tirisfal Glades，开始你的坐骑和坐骑训练。
.goto Tirisfal Glades,59.93,52.57
step << Troll
.zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
.trainer >>训练你的职业技能
step << Troll
#era
.zone Durotar >>前往: |cRXP_PICK_丹莫罗|r
.goto Durotar,55.21,75.53
.trainer >>从奥格里玛一直跑到森津，开始你的坐骑和坐骑训练。
step << Troll
#som
.zone Durotar >>前往: |cRXP_PICK_丹莫罗|r
.goto Durotar,55.21,75.53
.trainer >>从奥格里玛一直跑到森津，开始你的坐骑和坐骑训练。
step
.hs >>Hearth前往陶拉霍营地
>>如果需要，购买食物/水
step
#softcore
#som
.fly Brackenwall >>飞往Brackenwall村
step
#hardcore
.fly Brackenwall >>飞往Brackenwall村
step
#softcore
#som
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.xp 42+80000 >>AoE Murlocs至42级和80000级+/101000xp
step
#hardcore
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.goto Dustwallow Marsh,57.16,21.04,100,0
.goto Dustwallow Marsh,57.79,15.71,100,0
.goto Dustwallow Marsh,54.14,15.11,100,0
.goto Dustwallow Marsh,53.98,19.35,100,0
.xp 42+80000 >>AoE Murlocs至42级和80000级+/101000xp
step
#hardcore
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
.trainer >>训练你的职业技能
step
#hardcore
.hs >>Hearth前往陶拉霍营地
>>如果需要，购买食物/水
step
#softcore
#som
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
.trainer >>训练你的职业技能
step
#softcore
#som
.hs >>Hearth前往陶拉霍营地
>>如果需要，购买食物/水
step
#completewith next
.goto Thousand Needles,45.14,49.11,0
.fp Freewind Post >>获取Freewind Post飞行路径
>>这是完全可选的，因为在路线中根本不使用它，但这是一个方便的获取时间
step
>>前往: |cRXP_PICK_塔纳利斯|r. Ride through Barrens -> Thousand Needles -> Gadgetzan
.goto Tanaris,52.51,27.91
.home >>把你的炉子烧成Gadgetzan
step
#softcore
#era
.goto Tanaris,51.42,28.75
.target Trenton Lighthammer
>>对话: |cRXP_FRIENDLY_特伦顿·轻锤|r
.accept 3042 >>接任务: |cRXP_WARN_巨魔调和剂|r
.vendor >>Krinkle的供应商和维修
step
#softcore
#era
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 992 >>接任务: |cRXP_LOOT_加基森水业公司|r
step
#softcore
#era
.goto Tanaris,38.73,20.02,60 >>Travel to Zul'Farrak
step
#softcore
#era
#completewith next
+你现在要做的是祖尔法拉克。这可能非常困难，但一旦你学会了，xp/hr绝对值得
>>根据您是否有装载，单击其中一个链接
>>如果你没有坐骑，一旦你得到价值90克的战利品，就传送回Undercity，注销，跳到Tirisfal，跑到Brill，然后购买你的坐骑。回到Gadgetzan << Undead
>>如果你没有坐骑，只要你得到价值90克的战利品，就传送回奥格里玛，跑到杜罗塔，然后跑到森津购买你的坐骑。回到Gadgetzan << Troll
.link https://youtu.be/TgwHw7qT4ws >>如果您有坐骑，请单击此处
.link https://youtu.be/4-yJ47T728Y?t=6 >>如果您没有支架，请单击此处
step
#softcore
#sticky
#label Temper
#era
>>从你在祖法拉克内部杀死的暴徒那里获得巨魔脾气
.complete 3042,1 
step
#softcore
#era
.xp 44 >>AoE Zul'Farrak升至44级
>>开始保存你得到的丝绸布和Magewave布。你需要12堆，每堆稍后用
step
#softcore
#som
.goto Tanaris,52.48,28.45
.target Spigot Operator Luglunket
>>对话: |cRXP_FRIENDLY_操作员鲁格伦克|r
.accept 1707 >>接任务: |cRXP_LOOT_收集水袋|r
.target Chief Engineer Bilgewhizzle
>>对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r
.accept 1690 >>接任务: |cRXP_LOOT_废土的公正|r
step
#softcore
#som
.goto Tanaris,51.84,27.02
.accept 2781 >>接任务: |cRXP_LOOT_通缉：卡利夫·斯科比斯汀|r
.accept 2875 >>接任务: |cRXP_LOOT_通缉：安德雷·费尔比德|r
step
#softcore
#som
#completewith next
.goto Tanaris,60.18,23.29,0
>>AoE一些土匪/小偷在前往Steamweidle港的途中在Noonshade废墟中
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
step
#softcore
#som
.goto Tanaris,66.56,22.27
.target Haughty Modiste
>>对话: |cRXP_FRIENDLY_傲慢的店主|r
.accept 8365 >>接任务: |cRXP_LOOT_海盗的帽子！|r
step
#softcore
#som
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>对话: |cRXP_FRIENDLY_安全主管吉罗姆·比格维兹|r
.accept 8366 >>接任务: |cRXP_LOOT_南海复仇|r
step
#softcore
#som
.goto Tanaris,63.67,31.29
>>AoE土匪和小偷。把它们当作水袋
>>要小心，因为帐篷下的一些暴民被窃听了，如果你攻击了其中一个，他们会避开所有攻击你的暴民
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
step
#softcore
#som
.goto Tanaris,62.22,37.75
>>在该地区寻找哈里发蝎子。杀了他，抢了他的头
>>小心点，他旁边有两个隐形加法
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
#softcore
#som
.goto Tanaris,52.48,28.45
.target Spigot Operator Luglunket
>>对话: |cRXP_FRIENDLY_操作员鲁格伦克|r
.turnin 1707 >>交任务: |cRXP_FRIENDLY_收集水袋|r
.target Chief Engineer Bilgewhizzle
>>对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r
.turnin 1690 >>交任务: |cRXP_FRIENDLY_废土的公正|r
.turnin 2781 >>交任务: |cRXP_FRIENDLY_通缉：卡利夫·斯科比斯汀|r
step
#softcore
#som
.goto Tanaris,68.73,41.49,50 >>前往Lost Rigger Cove。打开途中的AoE指南并观看
.link https://youtu.be/SxMc2GoP33c?t=4113 >>单击此处以供参考
step
#softcore
#som
#sticky
#label Hats
>>抢劫海盗你AoE在该地区为他们的帽子
.complete 8365,1 
step
#softcore
#som
#sticky
#label Andre
>>Kill Andre Firebeard
.complete 2875,1 
step
#softcore
#som
#sticky
#completewith end
>>从该地区海盗扔下的储物柜中偷走船舶时间表
.collect 9250,1,2876 
.accept 2876 >>接任务: |cRXP_LOOT_船运时刻表|r
step
#softcore
#som
.goto Tanaris,73.72,46.86
.xp 43+91000 >>AoE升级到43级和91000+/106300xp
>>使用你在东面第二艘船的二楼拿到的任何船长钥匙
step
#softcore
#som
#requires Hats
step
#softcore
#som
#requires Andre
>>干掉南海暴徒
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
step
#softcore
#som
.goto Tanaris,66.56,22.27
.target Haughty Modiste
>>对话: |cRXP_FRIENDLY_傲慢的店主|r
.turnin 8365 >>交任务: |cRXP_FRIENDLY_海盗的帽子！|r
step
#softcore
#som
.isOnQuest 2876
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>对话: |cRXP_FRIENDLY_安全主管吉罗姆·比格维兹|r
.turnin 2875 >>交任务: |cRXP_FRIENDLY_通缉：安德雷·费尔比德|r
.turnin 2876 >>交任务: |cRXP_FRIENDLY_船运时刻表|r
.turnin 8366 >>交任务: |cRXP_FRIENDLY_南海复仇|r
step
#softcore
#som
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>对话: |cRXP_FRIENDLY_安全主管吉罗姆·比格维兹|r
.turnin 2875 >>交任务: |cRXP_FRIENDLY_通缉：安德雷·费尔比德|r
.turnin 8366 >>交任务: |cRXP_FRIENDLY_南海复仇|r
step
#hardcore
.goto Tanaris,52.48,28.45
.target Spigot Operator Luglunket
>>对话: |cRXP_FRIENDLY_操作员鲁格伦克|r
.accept 1707 >>接任务: |cRXP_LOOT_收集水袋|r
.target Chief Engineer Bilgewhizzle
>>对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r
.accept 1690 >>接任务: |cRXP_LOOT_废土的公正|r
step
#hardcore
.goto Tanaris,51.84,27.02
.accept 2781 >>接任务: |cRXP_LOOT_通缉：卡利夫·斯科比斯汀|r
.accept 2875 >>接任务: |cRXP_LOOT_通缉：安德雷·费尔比德|r
step
#hardcore
#completewith next
.goto Tanaris,60.18,23.29,0
>>AoE一些土匪/小偷在前往Steamweidle港的途中在Noonshade废墟中
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
step
#hardcore
.goto Tanaris,66.56,22.27
.target Haughty Modiste
>>对话: |cRXP_FRIENDLY_傲慢的店主|r
.accept 8365 >>接任务: |cRXP_LOOT_海盗的帽子！|r
step
#hardcore
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>对话: |cRXP_FRIENDLY_安全主管吉罗姆·比格维兹|r
.accept 8366 >>接任务: |cRXP_LOOT_南海复仇|r
step
#hardcore
.goto Tanaris,63.67,31.29
>>AoE土匪和小偷。把它们当作水袋
>>要小心，因为帐篷下的一些暴民被窃听了，如果你攻击了其中一个，他们会避开所有攻击你的暴民
.complete 1690,1 
.complete 1690,2 
.complete 1707,1 
step
#hardcore
.goto Tanaris,52.48,28.45
.target Spigot Operator Luglunket
>>对话: |cRXP_FRIENDLY_操作员鲁格伦克|r
.turnin 1707 >>交任务: |cRXP_FRIENDLY_收集水袋|r
.target Chief Engineer Bilgewhizzle
>>对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r
.turnin 1690 >>交任务: |cRXP_FRIENDLY_废土的公正|r
step
#hardcore
.goto Tanaris,68.73,41.49,50 >>前往Lost Rigger Cove。打开途中的AoE指南并观看
.link https://youtu.be/SxMc2GoP33c?t=4113 >>单击此处以供参考
step
#hardcore
#sticky
#label Hats
>>抢劫海盗你AoE在该地区为他们的帽子
.complete 8365,1 
step
#hardcore
#sticky
#label Andre
>>Kill Andre Firebeard
.complete 2875,1 
step
#hardcore
#sticky
#completewith end
>>从该地区海盗扔下的储物柜中偷走船舶时间表
.collect 9250,1,2876 
.accept 2876 >>接任务: |cRXP_LOOT_船运时刻表|r
step
#hardcore
.goto Tanaris,73.72,46.86
.xp 44 >>AoE升级到44级
>>使用你在东面第二艘船的二楼拿到的任何船长钥匙
>>开始保存你得到的丝绸布和Magewave布。你需要12堆，每堆稍后用
step
#hardcore
#requires Hats
step
#hardcore
#requires Andre
>>干掉南海暴徒
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
step
#softcore
#era
#requires Temper
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
#softcore
#som
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
#hardcore
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
.goto Undercity,85.16,10.01
.trainer >>训练你的职业技能
step
.goto Undercity,82.79,15.82
>>Talk to Hannah. Buy 6 Runes of Teleportation
>>如果需要，你也可以去AH买更大的包
.collect 17031,6 
step
.hs >>Gadgetzan之炉
.vendor >>Buy 140 level 45 drink
step
#completewith next
.goto Tanaris,52.30,28.92
+把你的丝绸和Magewave布料存放在这里。你需要12堆（240堆），每堆稍后使用
step
#hardcore
.goto Tanaris,66.56,22.27
.target Haughty Modiste
>>对话: |cRXP_FRIENDLY_傲慢的店主|r
.turnin 8365 >>交任务: |cRXP_FRIENDLY_海盗的帽子！|r
step
#hardcore
.isOnQuest 2876
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>对话: |cRXP_FRIENDLY_安全主管吉罗姆·比格维兹|r
.turnin 2875 >>交任务: |cRXP_FRIENDLY_通缉：安德雷·费尔比德|r
.turnin 2876 >>交任务: |cRXP_FRIENDLY_船运时刻表|r
.turnin 8366 >>交任务: |cRXP_FRIENDLY_南海复仇|r
step
#hardcore
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>对话: |cRXP_FRIENDLY_安全主管吉罗姆·比格维兹|r
.turnin 2875 >>交任务: |cRXP_FRIENDLY_通缉：安德雷·费尔比德|r
.turnin 8366 >>交任务: |cRXP_FRIENDLY_南海复仇|r
step
#hardcore
#label Caliph
.goto Tanaris,62.22,37.75
>>在该地区寻找哈里发蝎子。杀了他，抢了他的头
>>小心点，他旁边有两个隐形加法
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
#hardcore
.goto Tanaris,73.72,46.86
.xp 48 >>AoE grind to 48
>>使用你在东面第二艘船的二楼拿到的任何船长钥匙
step
#softcore
#som
.goto Tanaris,51.42,28.75
.target Trenton Lighthammer
>>对话: |cRXP_FRIENDLY_特伦顿·轻锤|r
.accept 3042 >>接任务: |cRXP_WARN_巨魔调和剂|r
.vendor >>Krinkle的供应商和维修
step
#softcore
#era
.goto Tanaris,51.42,28.75
.target Trenton Lighthammer
>>对话: |cRXP_FRIENDLY_特伦顿·轻锤|r
.turnin 3042 >>交任务: |cRXP_FRIENDLY_巨魔调和剂|r
.vendor >>Krinkle的供应商和维修
step
#softcore
.goto Tanaris,51.57,26.75
.target Tran'rek
>>对话: |cRXP_FRIENDLY_特兰雷克|r
.accept 2865 >>接任务: |cRXP_WARN_圣甲虫的壳|r
step
#softcore
.goto Tanaris,38.73,20.02,60 >>Travel to Zul'Farrak
step
#softcore
#sticky
#completewith ZF54
.goto Tanaris,39.14,29.15,0
>>如果你曾经点击过锁定（每小时最多5个实例），但它不会让你回到ZF，请执行Dowsing Widget
.complete 992,1 
step
#softcore
#era
#completewith next
+你现在要学会做一个更难的版本，它需要更长的时间，但提供了更多的经验：拔圣甲虫。
.link https://youtu.be/rFO4prcG2p0 >>单击此处
step
#softcore
#som
#completewith next
+你现在要做的是祖尔法拉克。这可能非常困难，但一旦你学会了，xp/hr绝对值得
>>根据您是否有装载，单击其中一个链接
>>如果你没有坐骑，一旦你得到价值50克的战利品，就传送回Undercity，注销，跳到Tirisfal，跑到Brill，然后购买你的坐骑。回到Gadgetzan << Undead
>>如果你没有坐骑，只要你得到价值50克的战利品，就传送回奥格里玛，跑到杜罗塔，然后跑到森津购买你的坐骑。回到Gadgetzan << Troll
.link https://youtu.be/TgwHw7qT4ws >>如果您有坐骑，请单击此处
.link https://youtu.be/4-yJ47T728Y?t=6 >>如果您没有支架，请单击此处
.link https://youtu.be/rFO4prcG2p0 >>当您感到足够舒适，可以进行额外的Scarab提拉时，请单击此处
step
#softcore
#sticky
#label ScarabS
>>AoE后在ZF内部掠夺Scarab Shells
.complete 2865,1 
step
#softcore
#som
>>从祖尔法拉体内的僵尸身上夺取巨魔脾气
.complete 3042,1 
step
#softcore
.xp 48 >>AoE Zul'Farrak至48级
step
#softcore
#requires ScarabS
.trainer >>前往: |cRXP_PICK_奥格瑞玛|r or Undercity. Train your level 46-48 spells
step
#hardcore
.trainer >>前往: |cRXP_PICK_奥格瑞玛|r or Undercity. Train your level 46-48 spells
step
.hs >>向Gadgetzan致敬。如果需要，购买45级饮料
>>如果需要，购买食物/水
step
#completewith next
.goto Tanaris,52.30,28.92
+把你的丝绸和Magewave布料存放在这里。你需要12堆（240堆），每堆稍后使用
step
#hardcore
.goto Tanaris,52.46,28.52
.target Chief Engineer Bilgewhizzle
>>对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r
.turnin 2781 >>交任务: |cRXP_FRIENDLY_通缉：卡利夫·斯科比斯汀|r
step
#softcore
#som
.goto Tanaris,51.42,28.75
.target Trenton Lighthammer
>>对话: |cRXP_FRIENDLY_特伦顿·轻锤|r
.turnin 3042 >>交任务: |cRXP_FRIENDLY_巨魔调和剂|r
.vendor >>Krinkle的供应商和维修
step
#softcore
.isQuestComplete 992
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 992 >>交任务: |cRXP_FRIENDLY_加基森水业公司|r
step
#softcore
.goto Tanaris,51.57,26.75
.target Tran'rek
>>对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 2865 >>交任务: |cRXP_FRIENDLY_圣甲虫的壳|r
step
#softcore
.goto Tanaris,38.73,20.02,60 >>Travel to Zul'Farrak
step
#softcore
.xp 52 >>AoE Zul'Farrak升至52级
step
#hardcore
.isOnQuest 2876
.goto Tanaris,67.06,23.89
.target Security Chief Bilgewhizzle
>>对话: |cRXP_FRIENDLY_安全主管吉罗姆·比格维兹|r
.turnin 2876 >>交任务: |cRXP_FRIENDLY_船运时刻表|r
step
#hardcore
.goto Tanaris,73.72,46.86
.xp 52 >>AoE grind to 52
>>使用你在东面第二艘船的二楼拿到的任何船长钥匙
>>记住保存12堆Magewave。你以后需要它来做布料翻转
step
#softcore
.trainer >>前往: |cRXP_PICK_奥格瑞玛|r or Undercity. 训练你的50-52级法术
step
#softcore
.hs >>向Gadgetzan致敬。如果需要，购买45级饮料
>>如果需要，购买食物/水
step
#softcore
.isQuestComplete 992
.goto Tanaris,50.21,27.48
.target Senior Surveyor Fizzledowser
>>对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 992 >>交任务: |cRXP_FRIENDLY_加基森水业公司|r
step
#softcore
.goto Tanaris,51.57,26.75
.target Tran'rek
>>对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 2865 >>交任务: |cRXP_FRIENDLY_圣甲虫的壳|r
step
#softcore
.goto Tanaris,38.73,20.02,60 >>Travel to Zul'Farrak
step
#softcore
#label ZF54
.xp 54 >>AoE Zul'Farrak升至54级
>>记住保存12堆Magewave。你以后需要它来做布料翻转
step
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
.goto Undercity,85.16,10.01
.trainer >>训练你的职业技能
step
#sticky
#completewith next
.goto Undercity,82.36,15.31
+转到右侧的试剂供应商，执行“注销跳过”，将角色定位在最低楼梯的最高部分，直到看起来像漂浮在空中，然后注销并重新登录。
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >>单击此处查看示例
>>如果你做不到这一点，就正常离开幽暗城
step
.goto Tirisfal Glades,61.85,66.59,60 >>前往: |cRXP_PICK_提瑞斯法林地|r
step
>>Run East to The Bulwark
.goto Tirisfal Glades,83.19,68.45
.target Argent Officer Garush
>>对话: |cRXP_FRIENDLY_银色黎明军官加鲁什|r
.turnin 5405 >>交任务: |cRXP_FRIENDLY_银色黎明委任徽章|r

step
.goto Tirisfal Glades,83.1,68.9
.target High Executor Derrington
>>对话: |cRXP_FRIENDLY_高级执行官德灵顿|r
.accept 5096 >>接任务: |cRXP_LOOT_误导血色十字军|r
step
.goto Western Plaguelands,26.55,56.18
>>把板条箱洗劫一空
.collect 12814,1 
step
>>要小心，因为暴徒相对来说很难，在这里可以互相拉
>>烧毁指挥帐篷，然后在上面使用你库存中的横幅
.goto Western Plaguelands,40.5,51.8
.complete 5096,1 
step
.goto Tirisfal Glades,83.1,68.9
>>对话: |cRXP_FRIENDLY_高级执行官德灵顿|r
.turnin 5096 >>交任务: |cRXP_FRIENDLY_误导血色十字军|r
.target High Executor Derrington
.accept 5098 >>接任务: |cRXP_LOOT_标记哨塔|r
.accept 5228 >>接任务: |cRXP_LOOT_瘟疫之锅|r
step
.goto Tirisfal Glades,83.03,71.91
>>对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5228 >>交任务: |cRXP_FRIENDLY_瘟疫之锅|r
.target Shadow Priestess Vandis
.accept 5229 >>接任务: |cRXP_LOOT_目标：费尔斯通农场|r
step
>>杀死鼎王比勒马。抢他的钥匙
.goto Western Plaguelands,37.12,57.18
.complete 5229,1 
.unitscan Cauldron Lord Bilemaw
step
>>去房子的顶层。与Janice交谈
.goto Western Plaguelands,38.40,54.05
.target Janice Felstone
>>对话: |cRXP_FRIENDLY_詹妮丝·费尔斯通|r
.accept 5021 >>接任务: |cRXP_LOOT_迟到总比不到好|r
step
>>点击谷仓地板上的包裹
.goto Western Plaguelands,38.8,55.3
.turnin 5021 >>交任务: |cRXP_FRIENDLY_迟到总比不到好|r
.accept 5023 >>接任务: |cRXP_LOOT_迟到总比不到好|r
step
.goto Western Plaguelands,37.22,56.88
.turnin 5229 >>交任务: |cRXP_FRIENDLY_目标：费尔斯通农场|r
.accept 5230 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
.goto Western Plaguelands,26.41,59.14
>>对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5230 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.target Shadow Priestess Vandis
.accept 5231 >>接任务: |cRXP_LOOT_目标：达尔松之泪|r
step
>>杀死大锅领主马尔维努斯。抢他的钥匙
.goto Western Plaguelands,46.04,52.33
.complete 5231,1 
step
.goto Western Plaguelands,46.19,52.01
.turnin 5231 >>交任务: |cRXP_FRIENDLY_目标：达尔松之泪|r
.accept 5232 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
>>在地上的谷仓里
.goto Western Plaguelands,47.79,50.67
.turnin 5058 >>交任务: |cRXP_FRIENDLY_达尔松夫人的日记|r
step
#completewith next
+开始攻击该区域的亡灵。要像骷髅恐怖所害怕的那样小心。观看视频了解更多信息 << !Undead
+开始攻击该区域的亡灵。要像骷髅恐怖所害怕的那样小心（记住使用你的被遗忘者种族意志）。观看视频了解更多信息 << Undead
.link https://youtu.be/SxMc2GoP33c?t=4759 >>单击此处
step
#label SkeletonKey
#completewith UD58
>>当你在艾因的时候，要注意流浪骷髅。杀死他，然后掠夺他获得户外钥匙
.collect 12738,1 
step
#completewith UD58
#label LockedAway
#requires SkeletonKey
.goto Western Plaguelands,48.16,49.64
>>点击户外厕所。这将产生一个暴徒。杀死它
.turnin 5059 >>交任务: |cRXP_FRIENDLY_被锁起来的农夫|r
.collect 12739,1 
step
#completewith UD58
#requires LockedAway
>>单击房屋顶层的橱柜
.goto Western Plaguelands,47.37,49.66
.turnin 5060 >>交任务: |cRXP_FRIENDLY_被锁起来的农夫|r
step
#phase 5
#sticky
>>保存从骨骼中掠夺的骨头碎片，稍后进行任务
.collect 22526,30 
step
#hardcore
.goto Western Plaguelands,46.49,52.15
.xp 53+100000 >>AoE亡灵在该地区达到53&100000+/167100xp
>>记得试着保存12堆符文。你以后需要它来做布料翻转
step
#softcore
.goto Western Plaguelands,46.49,52.15
.xp 55+100000 >>AoE亡灵在该地区到55和100000+/180800xp
>>记得试着保存12堆符文。你以后需要它来做布料翻转
step
>>在门口一侧的包里使用灯塔火炬（不要杀死里面的精英）
.goto Western Plaguelands,44.24,63.06
.complete 5098,3 
step
.goto Western Plaguelands,26.65,55.18
.vendor >>你现在应该对银色黎明友好，所以买尽可能多的玛娜饼干，让你达到60级
>>如果你没有，就把你掠夺的石头交上来，直到你被洗劫一空
step
.goto Western Plaguelands,26.40,59.14
>>对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5232 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.target Shadow Priestess Vandis
.accept 5233 >>接任务: |cRXP_LOOT_目标：嚎哭鬼屋|r
step
.goto Western Plaguelands,26.68,59.59
.target Mickey Levine
>>对话: |cRXP_FRIENDLY_米克·莱文|r
.accept 5901 >>接任务: |cRXP_LOOT_瘟疫与你|r
step
>>在门口一侧的包里使用灯塔火炬（不要杀死里面的精英）
.goto Western Plaguelands,42.28,66.05
.complete 5098,2 
step
#label UD58
.goto Western Plaguelands,46.49,52.15
.xp 58 >>AoE亡灵在该地区到58
step
>>杀死大锅领主拉扎克。抢他的钥匙
.goto Western Plaguelands,53.07,65.97
.complete 5233,1 
step
.goto Western Plaguelands,53.05,65.71
.turnin 5233 >>交任务: |cRXP_FRIENDLY_目标：嚎哭鬼屋|r
.accept 5234 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
.goto Western Plaguelands,53.73,64.66
.target Mulgris Deepriver
>>对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
.accept 4984 >>接任务: |cRXP_LOOT_大自然的苦楚|r
step
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
.goto Undercity,85.16,10.01
.trainer >>训练你的职业技能
step
.goto Undercity,67.62,44.16
>>对话: |cRXP_FRIENDLY_皇家管理人巴哈乌斯|r
.turnin 5023 >>交任务: |cRXP_FRIENDLY_迟到总比不到好|r
.target Royal Overseer Bauhaus
.accept 5049 >>接任务: |cRXP_LOOT_杰雷米亚的忧伤|r
step
>>Under the staircase
.goto Undercity,67.62,44.16
>>对话: |cRXP_FRIENDLY_杰雷米亚·派森|r
.turnin 5049 >>交任务: |cRXP_FRIENDLY_杰雷米亚的忧伤|r
.target Jeremiah Payson
.target Ol' Emma
>>对话: |cRXP_FRIENDLY_老艾玛|r

.accept 5050 >>接任务: |cRXP_LOOT_好运护符|r
step
#sticky
#completewith next
.goto Undercity,67.62,44.16
+通过定位你的角色，直到他们看起来漂浮在你和地面之间有一段距离，然后注销并重新登录，来执行注销跳过。
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >>单击此处查看示例
>>如果你做不到这一点，就正常离开幽暗城
step
.goto Tirisfal Glades,61.85,66.59,60 >>前往: |cRXP_PICK_提瑞斯法林地|r
step
.goto Western Plaguelands,26.40,59.15
>>对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5234 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.target Shadow Priestess Vandis
.accept 5235 >>接任务: |cRXP_LOOT_目标：盖罗恩农场|r
step
#phase 5
#softcore
#completewith next
+你现在可以从58-60开始做ZG了。这是非常困难的，但如果你有信心/已经知道如何做到这一点，它比开放世界的aoe调平更快
.link https://youtu.be/lfgvyhmf3q4?t=7 >>单击此处
step
>>去房子的顶层。与Janice交谈
.goto Western Plaguelands,38.401,54.053
>>对话: |cRXP_FRIENDLY_詹妮丝·费尔斯通|r
.turnin 5050 >>交任务: |cRXP_FRIENDLY_好运护符|r
.target Janice Felstone
.accept 5051 >>接任务: |cRXP_LOOT_两半合一|r
step
.goto Western Plaguelands,38.0,54.7
>>找一个会咬牙切齿的食尸鬼。杀了他，抢走好运符
.complete 5051,1 
step
.goto Western Plaguelands,38.401,54.053
.target Janice Felstone
>>对话: |cRXP_FRIENDLY_詹妮丝·费尔斯通|r
.turnin 5051 >>交任务: |cRXP_FRIENDLY_两半合一|r
step
>>AoE狼队在该地区。你可能需要杀死蜘蛛才能迫使狼重生
.goto Western Plaguelands,47.14,44.80
.complete 4984,1 
step
.goto Western Plaguelands,53.72,64.66
>>对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
.turnin 4984 >>交任务: |cRXP_FRIENDLY_大自然的苦楚|r
.target Mulgris Deepriver
.accept 4985 >>接任务: |cRXP_LOOT_大自然的苦楚|r
step
.abandon 4984 >>遗弃野生动物也很痛苦
step
#sticky
#label Grizzly
>>前往其他任务的途中的AoE灰熊
.complete 4985,1 
step
>>杀死鼎王索尔维斯。抢他的钥匙
.goto Western Plaguelands,62.80,58.76
.complete 5235,1 
step
.goto Western Plaguelands,62.59,58.55
.turnin 5235 >>交任务: |cRXP_FRIENDLY_目标：盖罗恩农场|r
.accept 5236 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
#requires Grizzly
.goto Western Plaguelands,67.33,24.23
.target Tirion Fordring
>>对话: |cRXP_FRIENDLY_提里奥·弗丁|r
.accept 5542 >>接任务: |cRXP_LOOT_恶魔之犬|r
.accept 5543 >>接任务: |cRXP_LOOT_血染的天空|r
.accept 5544 >>接任务: |cRXP_LOOT_腐肉虫|r
step
#label grubs
#sticky
>>AoE Carrion Worms
.complete 5544,1 
step
#label fordring1
#sticky
.goto Eastern Plaguelands,40.8,68.1,0
>>AoE瘟疫机器人和瘟疫猎犬
>>小心瘟疫蝙蝠会使人害怕
.complete 5543,1 
.complete 5542,1 
step << skip
.goto Eastern Plaguelands,26.54,74.74
.target Nathanos Blightcaller
>>对话: |cRXP_FRIENDLY_纳萨诺斯·凋零者|r
.accept 6022 >>接任务: |cRXP_LOOT_杀戮的理由|r
step
.goto Eastern Plaguelands,36.5,90.8
.target Pamela Redpath
>>对话: |cRXP_FRIENDLY_帕米拉·雷德帕斯|r
.accept 5149 >>接任务: |cRXP_LOOT_帕米拉的洋娃娃|r
step
.goto Eastern Plaguelands,39.2,91.6
>>偷走在达罗郡地板上发现的3个玩偶零件，然后将它们组合在一起
.complete 5149,1 
step
.goto Eastern Plaguelands,36.4,90.9
>>对话: |cRXP_FRIENDLY_帕米拉·雷德帕斯|r
.turnin 5149 >>交任务: |cRXP_FRIENDLY_帕米拉的洋娃娃|r
.target Pamela Redpath
.accept 5152 >>接任务: |cRXP_LOOT_玛莱恩姑妈|r
.accept 5241 >>接任务: |cRXP_LOOT_卡林叔叔|r
step
#requires fordring1
.goto Eastern Plaguelands,81.6,59.3
.complete 5542,2 
step
#phase 5
.goto Eastern Plaguelands,81.63,58.07
.home >>把你的心放在光明的希望教堂
step
#phase 5
.goto Eastern Plaguelands,81.42,58.51
.target Rohan the Assassin
>>对话: |cRXP_FRIENDLY_杀手洛汗|r
.accept 9126 >>接任务: |cRXP_WARN_骨镰的材料|r
step
#phase 5
.isQuestComplete 9126
.target Rohan the Assassin
>>对话: |cRXP_FRIENDLY_杀手洛汗|r
.turnin 9126 >>交任务: |cRXP_FRIENDLY_骨镰的材料|r
step
.goto Eastern Plaguelands,81.6,59.3
.fp Light's Hope Chapel >>获得光明希望教堂的飞行路线
step
.goto Eastern Plaguelands,81.4,59.9
>>对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5241 >>交任务: |cRXP_FRIENDLY_卡林叔叔|r
.target Carlin Redpath
.accept 5211 >>接任务: |cRXP_LOOT_达隆郡的保卫者|r
step
.goto Eastern Plaguelands,79.7,63.6
.target Caretaker Alen
>>对话: |cRXP_FRIENDLY_护理者奥林|r
.accept 5281 >>接任务: |cRXP_LOOT_永不安息的灵魂|r
.accept 6021 >>接任务: |cRXP_LOOT_流亡者塞达尔|r
step
#sticky
#completewith EPL1
.goto Eastern Plaguelands,76.48,49.66,0
.goto Eastern Plaguelands,83.90,40.88,0
.goto Eastern Plaguelands,65.50,38.66,0
.goto Eastern Plaguelands,26.75,27.56,0
.goto Eastern Plaguelands,17.71,32.13,0
.goto Eastern Plaguelands,59.54,68.65,0
>>杀死食尸鬼，然后与从他们尸体中产生的达罗郡灵魂交谈
.complete 5211,1
step
#sticky
#label FPlague
.goto Eastern Plaguelands,23.5,37.4
.complete 5542,3 
step
.goto Eastern Plaguelands,34.0,28.1
>>在Plaguewood周围寻找白蚁丘
.complete 5901,1 
step
#sticky
#completewith next
+如果你有多余的瘟疫白蚁(不是100堆)，请扔掉它们
step
.goto Eastern Plaguelands,14.5,33.6
.target Egan
>>对话: |cRXP_FRIENDLY_埃根|r
.turnin 5281 >>交任务: |cRXP_FRIENDLY_永不安息的灵魂|r
step
#requires grubs
#label EPL1
.goto Eastern Plaguelands,7.6,43.7
>>对话: |cRXP_FRIENDLY_提里奥·弗丁|r
.turnin 5542 >>交任务: |cRXP_FRIENDLY_恶魔之犬|r
.turnin 5543 >>交任务: |cRXP_FRIENDLY_血染的天空|r
.turnin 5544 >>交任务: |cRXP_FRIENDLY_腐肉虫|r
.target Tirion Fordring
.accept 5742 >>接任务: |cRXP_LOOT_救赎|r
step
#requires FPlague
.goto Eastern Plaguelands,7.6,43.7
>>Talk to Tirion
.complete 5742,1 
>>对话: |cRXP_FRIENDLY_提里奥·弗丁|r
.turnin 5742 >>交任务: |cRXP_FRIENDLY_救赎|r
.target Tirion Fordring
.accept 5781 >>接任务: |cRXP_LOOT_遗忘的记忆|r
step
.goto Eastern Plaguelands,27.4,84.9
>>进入巨魔地窖
.complete 6021,1 
step
.goto Eastern Plaguelands,27.3,85.2
.accept 6024 >>接任务: |cRXP_LOOT_哈米亚的请求|r
step
.goto Eastern Plaguelands,28.4,86.6
>>通过点击垃圾堆召唤Mercutio和他的暴徒，你必须在处理其他3个添加时杀死他
>>简单地将它们按正常方式关闭
.complete 5781,1 
step
.goto Eastern Plaguelands,7.6,43.7
>>对话: |cRXP_FRIENDLY_提里奥·弗丁|r
.turnin 5781 >>交任务: |cRXP_FRIENDLY_遗忘的记忆|r
.target Tirion Fordring
.accept 5845 >>接任务: |cRXP_LOOT_失落的荣耀|r
step
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
#sticky
#completewith next
.goto Undercity,82.36,15.31
+转到右侧的试剂供应商，执行“注销跳过”，将角色定位在最低楼梯的最高部分，直到看起来像漂浮在空中，然后注销并重新登录。
.link https://www.youtube.com/watch?v=-Bi95bCN8dM >>单击此处查看示例
>>如果你做不到这一点，就正常离开幽暗城
step
.goto Tirisfal Glades,61.85,66.59,60 >>前往: |cRXP_PICK_提瑞斯法林地|r
step
.goto Tirisfal Glades,83.04,71.91
.target Shadow Priestess Vandis
>>对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5236 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
step
.goto Tirisfal Glades,83.30,72.33
>>对话: |cRXP_FRIENDLY_米克·莱文|r
.turnin 5901 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
.target Mickey Levine
.accept 5902 >>接任务: |cRXP_LOOT_瘟疫与你|r
step
>>在门口一侧的包里使用灯塔火炬（不要杀死里面的精英）
.goto Western Plaguelands,40.15,71.50
.complete 5098,1 
step
.goto Western Plaguelands,49.2,78.6
>>对话: |cRXP_FRIENDLY_玛莱恩·雷德帕斯|r
.turnin 5152 >>交任务: |cRXP_FRIENDLY_玛莱恩姑妈|r
.target Marlene Redpath
.accept 5153 >>接任务: |cRXP_LOOT_古怪的历史学家|r
step
.goto Western Plaguelands,49.6,76.8
>>盗取房子外面的墓碑
.complete 5153,1 
step
>>在门口一侧的包里使用灯塔火炬（不要杀死里面的精英）
.goto Western Plaguelands,46.73,71.14
.complete 5098,4 
step
>>进入旅馆。尽量避开途中的暴徒
.goto Western Plaguelands,39.5,66.9
>>对话: |cRXP_FRIENDLY_克罗米|r
.turnin 5153 >>交任务: |cRXP_FRIENDLY_古怪的历史学家|r
.target Chromie
.accept 5154 >>接任务: |cRXP_LOOT_达隆郡的历史|r

step << skip
#sticky
#label parasites
.goto Western Plaguelands,46.7,62.3
>>在粮仓上使用临时移位器
.complete 4971,1 
step
.goto Western Plaguelands,43.4,69.6
>>在安多哈尔市政厅内掠夺书籍，直到找到正确的书籍
.complete 5154,1 
*The correct book's pages has a lighter shade of grey on BOTH pages and sometimes the correct book won't spawn
*If you're unlucky, you have to keep looting bad tomes until a good one spawns
step
#requires parasites
.goto Western Plaguelands,39.5,66.8


>>对话: |cRXP_FRIENDLY_克罗米|r
.turnin 5154 >>交任务: |cRXP_FRIENDLY_达隆郡的历史|r
.target Chromie
.accept 5210 >>接任务: |cRXP_LOOT_卡林·雷德帕斯|r
step << skip
.goto Western Plaguelands,41.3,67.1
>>在被烧毁的房子里寻找小锁盒
.complete 4972,1 
step << skip
.goto Western Plaguelands,39.4,66.9
.target Chromie
>>对话: |cRXP_FRIENDLY_克罗米|r
.turnin 4972 >>交任务: |cRXP_FRIENDLY_找回时间|r
step
#phase 1-4
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
#phase 1-4
.goto Undercity,63.28,48.58
.fly Eastern Plaguelands >>飞向光明的希望教堂
step
#phase 5
.hs >>光明之心教堂
>>如果需要，购买食物/水
step
#phase 5
.isQuestComplete 9126
.target Rohan the Assassin
>>对话: |cRXP_FRIENDLY_杀手洛汗|r
.turnin 9126 >>交任务: |cRXP_FRIENDLY_骨镰的材料|r
step
.goto Eastern Plaguelands,81.5,59.8
>>对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5210 >>交任务: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.target Carlin Redpath
.accept 5181 >>接任务: |cRXP_LOOT_达隆郡的恶魔|r
.accept 5168 >>接任务: |cRXP_LOOT_达隆郡的英雄|r
step
.goto Eastern Plaguelands,79.7,63.7
.target Caretaker Alen
>>对话: |cRXP_FRIENDLY_护理者奥林|r
.turnin 6021 >>交任务: |cRXP_FRIENDLY_流亡者塞达尔|r
step
.goto Eastern Plaguelands,71.3,34.0
>>在水下掠夺旗帜
.complete 5845,1 
step
.goto Eastern Plaguelands,70.8,16.2
>>从山上所有的暴徒身边跑过去，然后去杀死渗透者哈梅亚，他在浅坟墓周围行走
.complete 6024,1 
step
.goto Eastern Plaguelands,51.2,49.9
>>在水下掠夺头骨
.complete 5181,1 
step
.goto Eastern Plaguelands,60.6,68.4
>>杀死食尸鬼，然后与从他们尸体中产生的达罗郡灵魂交谈
.complete 5211,1
step
.goto Eastern Plaguelands,53.9,65.8
.complete 5181,2 
step
.goto Eastern Plaguelands,28.1,86.1
.turnin 6024 >>交任务: |cRXP_FRIENDLY_哈米亚的请求|r
step
.goto Eastern Plaguelands,7.6,43.6
>>对话: |cRXP_FRIENDLY_提里奥·弗丁|r
.turnin 5845 >>交任务: |cRXP_FRIENDLY_失落的荣耀|r
.target Tirion Fordring
.accept 5846 >>接任务: |cRXP_LOOT_爱与家庭|r
step
.goto Western Plaguelands,63.8,57.2
>>在谷仓外的地上掠夺盾牌
.complete 5168,2 
step
.goto Western Plaguelands,65.7,75.4
.target Artist Renfray
>>对话: |cRXP_FRIENDLY_画家瑞弗蕾|r
.turnin 5846 >>交任务: |cRXP_FRIENDLY_爱与家庭|r
step
.isQuestComplete 4985
.goto Western Plaguelands,53.7,64.7
>>对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
.turnin 4985 >>交任务: |cRXP_FRIENDLY_大自然的苦楚|r
.target Mulgris Deepriver
.accept 4987 >>接任务: |cRXP_LOOT_雕文橡木枝|r
step
.goto Western Plaguelands,48.4,31.9
.turnin 5902 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
.accept 6390 >>接任务: |cRXP_LOOT_瘟疫与你|r
step
.goto Western Plaguelands,51.9,28.2
.target Kirsta Deepshadow
>>对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.accept 6004 >>接任务: |cRXP_LOOT_未竟的事业|r
step
.goto Western Plaguelands,51.80,44.25,100,0
.goto Western Plaguelands,40.53,51.79,100,0
.complete 6004,1 
.complete 6004,2 
.complete 6004,3 
.complete 6004,4 
step
.goto Western Plaguelands,51.920,28.058
>>对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6004 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.target Kirsta Deepshadow
.accept 6023 >>接任务: |cRXP_LOOT_未竟的事业|r
step
.goto Western Plaguelands,57.8,36.2
.complete 6023,1 
step
.goto Western Plaguelands,55.1,23.5
>>寻找在塔楼上下巡逻的指定暴徒
.complete 6023,2 
*There is a level 63 elite mob that can spawn at the tower, if that's the case just be patient and wait for Durgen to come down
step
.goto Western Plaguelands,51.9,28.0
>>对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6023 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.target Kirsta Deepshadow
.accept 6025 >>接任务: |cRXP_LOOT_未竟的事业|r
step
.goto Western Plaguelands,45.7,18.8
.complete 6025,1 
step
#softcore
.goto Western Plaguelands,42.5,18.9
>>洗劫市政厅内的图书馆。要么慢慢地一个接一个地杀死所有的暴徒，要么把所有的暴徒都拉进去，放在外面，把他们冻在原地，然后抢劫Libram然后逃跑
>>不要死在这里，否则你会有很长的路要走
.complete 5168,1 
.link >>单击此处获取指南
step
#hardcore
.goto Western Plaguelands,42.5,18.9
>>洗劫市政厅内的图书馆。要么慢慢地一个接一个地杀死所有的暴徒，要么把所有的暴徒都拉进去，放在外面，把他们冻在原地，然后抢劫Libram然后逃跑
>>这个任务是非常困难和危险的。我不建议在硬核上这样做
.complete 5168,1 
.link >>单击此处获取指南
step
#sticky
#completewith next
+我强烈建议观看这些暴民的法师指南
.link https://youtu.be/SxMc2GoP33c?t=3824 >>单击此处
step
.goto Western Plaguelands,46.30,16.86,120,0
.goto Western Plaguelands,44.84,12.43,120,0
.goto Western Plaguelands,45.53,9.51,120,0
.goto Western Plaguelands,43.97,17.21,120,0
.xp 59+130000 >>升级到59级和130000+/209800
step
.goto Western Plaguelands,51.9,28.0
.target Kirsta Deepshadow
>>对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6025 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
step
.goto Western Plaguelands,26.51,56.02
>>对话: |cRXP_FRIENDLY_高级执行官德灵顿|r
.turnin 5098 >>交任务: |cRXP_FRIENDLY_标记哨塔|r
.turnin 5238 >>交任务: |cRXP_FRIENDLY_任务完成！|r
.target High Executor Derrington
.accept 838 >>接任务: |cRXP_LOOT_通灵学院|r
step
.goto Western Plaguelands,26.67,56.33
.target Apothecary Dithers
>>对话: |cRXP_FRIENDLY_药剂师迪瑟斯|r
.turnin 838 >>交任务: |cRXP_FRIENDLY_通灵学院|r
step
#phase 1-4
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
#phase 1-4
.goto Undercity,63.28,48.58
.fly Eastern Plaguelands >>飞向光明的希望教堂
step
#phase 5
.hs >>光明之心教堂
>>如果需要，购买食物/水
step
#phase 5
.isQuestComplete 9126
.target Rohan the Assassin
>>对话: |cRXP_FRIENDLY_杀手洛汗|r
.turnin 9126 >>交任务: |cRXP_FRIENDLY_骨镰的材料|r
step
.goto Eastern Plaguelands,81.5,59.8
.target Carlin Redpath
>>对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5168 >>交任务: |cRXP_FRIENDLY_达隆郡的英雄|r
.turnin 5181 >>交任务: |cRXP_FRIENDLY_达隆郡的恶魔|r
.turnin 5211 >>交任务: |cRXP_FRIENDLY_达隆郡的保卫者|r
step
.zone Undercity >>前往: |cRXP_PICK_幽暗城|r
step
#softcore
#completewith UCBank
.goto Undercity,60.48,41.77
+如果你没有12叠每一块布，可以从拍卖行买
step
#label UCBank
.goto Undercity,65.65,44.10,50,0
>>把你所有的布料都从银行里取出来。你需要12叠羊毛、丝绸、Magewave和Run榴oth
>>如果你没有库存空间，那么把一半的布留在银行里，跳过这一步
.collect 2592,240 
.collect 4306,240 
.collect 4338,240 
.collect 14047,240 
step
>>请确保您没有自动转入额外符文（代表）的插件，否则您将被告知稍后再次购买
.goto Undercity,71.65,29.25
.target Ralston Farnsley
>>对话: |cRXP_FRIENDLY_莱斯顿·法斯雷|r
.turnin 7813 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7814 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7817 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7818 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
step
.zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
step
#softcore
#completewith OGBank
.goto Orgrimmar,55.55,64.71
+如果你没有9叠每一块布，就从拍卖行买吧
step
#label OGBank
.goto Orgrimmar,49.57,69.10,40,0
>>把你所有的布料都从银行里取出来。你需要9堆羊毛、丝绸、Magewave和Run榴oth
>>如果你没有库存空间，那么把一半的布留在银行里，跳过这一步
.collect 2592,180 
.collect 4306,180 
.collect 4338,180 
.collect 14047,180 
step
>>请确保您没有自动转入额外符文（代表）的插件，否则您将被告知稍后再次购买
.goto Orgrimmar,63.62,51.24
.target Rashona Straglash
>>对话: |cRXP_FRIENDLY_莱什纳·刺藤|r
.turnin 7826 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7827 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7831 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7824 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
step
>>请确保您没有自动转入额外符文（代表）的插件，否则您将被告知稍后再次购买
.goto Orgrimmar,37.69,87.92
.target Vehena
>>对话: |cRXP_FRIENDLY_维赫纳|r
.turnin 7833 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7834 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7835 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7836 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
step
.goto Orgrimmar,45.11,63.89
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
step
#softcore
#completewith TBBank
.goto Thunder Bluff,40.42,51.76
+如果你没有3叠每一块布，可以从拍卖行买
step
#label TBBank
.goto Thunder Bluff,47.28,58.62,40,0
>>把你所有的布料都从银行里取出来。你需要3堆羊毛、丝绸、Magewave和Run榴oth
>>如果你没有库存空间，那么把一半的布留在银行里，跳过这一步
.collect 2592,600 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
.goto Thunder Bluff,75.63,31.66
.target Nara Wildmane
>>对话: |cRXP_FRIENDLY_纳拉·蛮鬃|r
.turnin 4987 >>交任务: |cRXP_FRIENDLY_雕文橡木枝|r
step
>>请确保您没有自动转入额外符文（代表）的插件，否则您将被告知稍后再次购买
.goto Thunder Bluff,43.05,42.73
.target Rumstag Proudstrider
>>对话: |cRXP_FRIENDLY_拉姆斯塔格|r
.turnin 7820 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7821 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7822 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7823 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
step
+祝贺你达到60级！
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 30-40
#classic
<< Horde
#name 37-38 Dustwallow Marsh
#displayname 38-40 Dustwallow Marsh << sod
#next RestedXP部落30-40\38-39 Alterac/Arathi；RestedXP部落40-50\40-41 Stranglethorn Vale
step
.maxlevel 39,dustwallowskip1
.goto Orgrimmar,45.120,63.889
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
.fly Brackenwall Village >>飞往Brackenwall村
.target Doras
.zoneskip Dustwallow Marsh
step
#label Hoofprints
.goto Dustwallow Marsh,29.71,47.65
>>单击地面上的|cRXP_PICK_Hoofprints|r
.accept 1268 >>接任务: |cRXP_LOOT_可疑的蹄印|r
step
#label Badge
.goto Dustwallow Marsh,29.83,48.24
>>单击木板上的|cRXP_PICK_Theramore守卫徽章|r
.accept 1269 >>接任务: |cRXP_LOOT_帕瓦尔·雷瑟上尉|r
step
.goto Dustwallow Marsh,29.63,48.60
>>单击壁炉上方的|cRXP_PICK_Black Shield |r
.accept 1251 >>接任务: |cRXP_LOOT_黑色盾牌|r
step
#requires Badge
.goto Dustwallow Marsh,35.15,38.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马德克拉什|r
.accept 1177 >>接任务: |cRXP_LOOT_饿！|r
.target Mudcrush Durtfeet
step
.goto Dustwallow Marsh,35.21,30.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.accept 1201 >>接任务: |cRXP_LOOT_塞拉摩间谍|r
.target Nazeer Bloodpike
step << Hunter
.goto Dustwallow Marsh,35.51,30.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zanara交谈|r
>>|cRXP_BUY_从她那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2600,1322,1 << Hunter 
.target Zanara
step
.goto Dustwallow Marsh,36.41,31.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗格|r
.turnin 1268 >>交任务: |cRXP_FRIENDLY_可疑的蹄印|r
.turnin 1269 >>交任务: |cRXP_FRIENDLY_帕瓦尔·雷瑟上尉|r
.turnin 1251 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.accept 1321 >>接任务: |cRXP_LOOT_黑色盾牌|r
.target Krog
step
.goto Dustwallow Marsh,36.50,30.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜高尔|r
.turnin 1321 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.accept 1322 >>接任务: |cRXP_LOOT_黑色盾牌|r
.target Do'gol
step
#completewith Infiltrator
>>杀死|cRXP_ENEMY_Darkfang蜘蛛|r。抢走它们的|cRXX_Loot_毒液袋|r
>>|cRXP_WARN_血腥猛禽与暗方蜘蛛共享产卵点，所以也要杀死它们|r
.complete 1322,1 
.mob Darkfang Lurker
.mob Darkfang Spider
.mob Darkfang Venomspitter
step
.goto Dustwallow Marsh,40.96,36.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格隆|r
.accept 1273 >>接任务: |cRXP_LOOT_盘问雷瑟|r
>>|cRXP_WARN_小心，这个任务很难，因为你必须同时杀死四个暴民。如果需要，找一个小组，或者跳过这个任务|r
.target Ogron
step
.goto Dustwallow Marsh,42.50,38.00
>>当你到达营地时，四个暴民将产生。他们会在角色扮演后发起攻击
>>|cRXP_WARN_让|r|cRXP_FRIENDLY_Ogron|r|cRXP_WARN_aggro一个，然后使用冷却来杀死其他三个|r
.complete 1273,1 
.target Ogron
.isOnQuest 1273
step
#completewith next
.goto Dustwallow Marsh,42.06,26.03,0
.goto Dustwallow Marsh,39.63,23.85,0
.goto Dustwallow Marsh,38.94,22.44,0
.goto Dustwallow Marsh,38.01,25.50,0
.goto Dustwallow Marsh,37.63,27.60,0
.goto Dustwallow Marsh,38.03,33.99,0
.goto Dustwallow Marsh,38.02,37.40,0
.goto Dustwallow Marsh,40.67,35.22,0
>>杀死你遇到的任何|cRXP_ENEMY_Theramore渗透者|r
>>|cRXP_WARN_They are stealthed|r << !Hunter
>>|cRXP_WARN_他们被偷走了！Cast|r|T132320:0|t[隐藏轨迹]|cRXP_WARN_to更容易找到它们|r << Hunter
.complete 1201,1 
.unitscan Theramore Infiltrator
step
.goto Dustwallow Marsh,46.90,17.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊格纳兹|r
.accept 1270 >>接任务: |cRXP_LOOT_伊格纳兹的逃亡|r
.target "Stinky" Ignatz
step
>>护送|cRXP_FRIENDLY_Stinky |r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Bloodfen Screechers|r|cRXP_WARN_call for help at 33%health|r
.complete 1270,1 
.target "Stinky" Ignatz
.mob Bloodfen Screecher
step
.goto Dustwallow Marsh,55.43,26.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"沼泽之眼\"加尔|r
.accept 1218 >>接任务: |cRXP_WARN_舒心草|r
.turnin 1218 >>交任务: |cRXP_FRIENDLY_舒心草|r
.accept 1206 >>接任务: |cRXP_LOOT_加尔和蜘蛛眼|r
.target "Swamp Eye" Jarl
step
.goto Dustwallow Marsh,55.44,25.93
>>单击|cRXP_FRIENDLY_“沼泽眼”Jarl|r房屋以西的|cRXP_PICK_Loose Dirt|r
.accept 1238 >>接任务: |cRXP_LOOT_遗失的报告|r
step
.goto Dustwallow Marsh,56.82,22.42,50,0
.goto Dustwallow Marsh,57.80,21.30,50,0
.goto Dustwallow Marsh,57.49,16.80,50,0
.goto Dustwallow Marsh,58.29,15.47,50,0
.goto Dustwallow Marsh,57.80,21.30
>>杀死|cRXP_ENEMY_Mirefin Murlocs|r。掠夺他们的|cRXP_Loot_Heads|r
.complete 1177,1 
.mob Mirefin Puddlejumper
.mob Mirefin Murloc
.mob Mirefin Coastrunner
.mob Mirefin Muckdweller
step
#completewith next
>>杀死你遇到的任何|cRXP_ENEMY_Theramore渗透者|r
>>|cRXP_WARN_They are stealthed|r << !Hunter
>>|cRXP_WARN_他们被偷走了！Cast|r|T132320:0|t[隐藏轨迹]|cRXP_WARN_to更容易找到它们|r << Hunter
.complete 1201,1 
.unitscan Theramore Infiltrator
step
.goto Dustwallow Marsh,35.9,20.7,90,0
.goto Dustwallow Marsh,32.8,21.4,90,0
.loop 25,Dustwallow Marsh,34.4,25.2,35.9,20.7,32.8,21.4,34.4,25.2
>>杀死|cRXP_ENEMY_all Darkmist Spiders|r。掠夺它们的|cRXX_Loot_Eyes |r
.complete 1206,1 
.mob Darkmist Recluse
.mob Darkmist Spider
.mob Darkmist Spider
.mob Darkmist Lurker
.unitscan Darkmist Widow
step
#label Infiltrator
#loop
.goto Dustwallow Marsh,42.06,26.03,0
.goto Dustwallow Marsh,39.63,23.85,0
.goto Dustwallow Marsh,38.94,22.44,0
.goto Dustwallow Marsh,38.01,25.50,0
.goto Dustwallow Marsh,37.63,27.60,0
.goto Dustwallow Marsh,38.03,33.99,0
.goto Dustwallow Marsh,38.02,37.40,0
.goto Dustwallow Marsh,40.67,35.22,0
.waypoint Dustwallow Marsh,42.06,26.03,40,0
.waypoint Dustwallow Marsh,39.63,23.85,40,0
.waypoint Dustwallow Marsh,38.94,22.44,40,0
.waypoint Dustwallow Marsh,38.01,25.50,40,0
.waypoint Dustwallow Marsh,37.63,27.60,40,0
.waypoint Dustwallow Marsh,38.03,33.99,40,0
.waypoint Dustwallow Marsh,38.02,37.40,40,0
.waypoint Dustwallow Marsh,40.67,35.22,40,0
.waypoint Dustwallow Marsh,40.50,33.48,40,0
>>完成击杀|cRXP_ENEMY_Theramore渗透器|r
>>|cRXP_WARN_They are stealthed|r << !Hunter
>>|cRXP_WARN_他们被偷走了！Cast|r|T132320:0|t[隐藏轨迹]|cRXP_WARN_to更容易找到它们|r << Hunter
.complete 1201,1 
.unitscan Theramore Infiltrator
step
#loop
.goto Dustwallow Marsh,37.79,27.07,0
.goto Dustwallow Marsh,40.99,25.49,0
.goto Dustwallow Marsh,35.45,40.88,0
.goto Dustwallow Marsh,40.21,47.43,0
.goto Dustwallow Marsh,38.52,51.31,0
.waypoint Dustwallow Marsh,37.79,27.07,50,0
.waypoint Dustwallow Marsh,38.75,25.98,50,0
.waypoint Dustwallow Marsh,40.99,25.49,50,0
.waypoint Dustwallow Marsh,38.26,36.91,50,0
.waypoint Dustwallow Marsh,35.45,40.88,50,0
.waypoint Dustwallow Marsh,38.11,43.09,50,0
.waypoint Dustwallow Marsh,40.21,47.43,50,0
.waypoint Dustwallow Marsh,38.52,51.31,50,0
.waypoint Dustwallow Marsh,36.99,52.10,50,0
>>杀死|cRXP_ENEMY_Darkfang蜘蛛|r。抢走它们的|cRXX_Loot_毒液袋|r
>>|cRXP_WARN_血腥猛禽与暗方蜘蛛共享产卵点，所以也要杀死它们|r
.complete 1322,1 
.mob Darkfang Lurker
.mob Darkfang Spider
.mob Darkfang Venomspitter
step
#completewith next
.goto Dustwallow Marsh,35.21,30.66,120 >>返回Brackenwall村
step
#softcore
.goto Dustwallow Marsh,35.21,30.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.turnin 1201 >>交任务: |cRXP_FRIENDLY_塞拉摩间谍|r
.turnin 1238 >>交任务: |cRXP_FRIENDLY_遗失的报告|r
.accept 1202 >>接任务: |cRXP_WARN_塞拉摩码头|r
.target Nazeer Bloodpike
step
#hardcore
.goto Dustwallow Marsh,35.21,30.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.turnin 1201 >>交任务: |cRXP_FRIENDLY_塞拉摩间谍|r
.turnin 1238 >>交任务: |cRXP_FRIENDLY_遗失的报告|r
.target Nazeer Bloodpike
step
.goto Dustwallow Marsh,36.50,30.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜高尔|r
.turnin 1322 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.accept 1323 >>接任务: |cRXP_LOOT_黑色盾牌|r
.target Do'gol
step
.goto Dustwallow Marsh,36.50,31.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗格|r
.turnin 1323 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.turnin 1273 >>交任务: |cRXP_FRIENDLY_盘问雷瑟|r
.accept 1276 >>接任务: |cRXP_LOOT_黑色盾牌|r
.target Krog
.isQuestComplete 1273
step
.goto Dustwallow Marsh,36.50,31.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗格|r
.turnin 1323 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.accept 1276 >>接任务: |cRXP_LOOT_黑色盾牌|r
.target Krog
step
.goto Dustwallow Marsh,35.20,38.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马德克拉什|r
.turnin 1177 >>交任务: |cRXP_FRIENDLY_饿！|r
.target Mudcrush Durtfeet
step
.goto Dustwallow Marsh,55.44,25.93
>>单击|cRXP_FRIENDLY_“沼泽眼”Jarl|r房屋以西的|cRXP_PICK_Loose Dirt|r
.accept 1239 >>接任务: |cRXP_LOOT_被斩下的头颅|r
step
.goto Dustwallow Marsh,55.43,26.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"沼泽之眼\"加尔|r
.turnin 1206 >>交任务: |cRXP_FRIENDLY_加尔和蜘蛛眼|r
.target "Swamp Eye" Jarl
step
#ah
#optional
.goto Dustwallow Marsh,55.43,26.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"沼泽之眼\"加尔|r
.accept 1203 >>接任务: |cRXP_LOOT_加尔的剑|r
.turnin 1203 >>交任务: |cRXP_FRIENDLY_加尔的剑|r
.target "Swamp Eye" Jarl
.itemcount 3853,1
.isQuestTurnedIn 1206
step
#completewith NazeerB
.destroy 5884 >>摧毁: |cRXP_ENEMY_黑雾蜘蛛的眼球|r
step
#sticky
#completewith EnterRFD
.subzone 722 >>现在你应该找一个去Razorfen Downs的团队
.dungeon RFD
step
#xprate <1.5
#era
#softcore
#loop
.goto Dustwallow Marsh,57.19,20.98,0
.goto Dustwallow Marsh,57.77,16.19,0
.goto Dustwallow Marsh,54.18,15.10,0
.waypoint Dustwallow Marsh,57.19,20.98,60,0
.waypoint Dustwallow Marsh,57.77,16.19,60,0
.waypoint Dustwallow Marsh,54.18,15.10,60,0
.xp 37+67550 >>升级|cRXP_ENEMY_Murlocs|r，直到您达到67550+/76100xp
step
#xprate <1.5
#era
#hardcore
#loop
.goto Dustwallow Marsh,57.19,20.98,0
.goto Dustwallow Marsh,57.77,16.19,0
.goto Dustwallow Marsh,54.18,15.10,0
.waypoint Dustwallow Marsh,57.19,20.98,60,0
.waypoint Dustwallow Marsh,57.77,16.19,60,0
.waypoint Dustwallow Marsh,54.18,15.10,60,0
.xp 37+70300 >>升级|cRXP_ENEMY_Murlocs|r，直到您达到70300+/76100xp
step
#som
#softcore
#loop
.goto Dustwallow Marsh,57.19,20.98,0
.goto Dustwallow Marsh,57.77,16.19,0
.goto Dustwallow Marsh,54.18,15.10,0
.waypoint Dustwallow Marsh,57.19,20.98,60,0
.waypoint Dustwallow Marsh,57.77,16.19,60,0
.waypoint Dustwallow Marsh,54.18,15.10,60,0
.xp 37+64130 >>升级|cRXP_ENEMY_Murlocs|r，直到达到64130+/76100xp
step
#som
#hardcore
#loop
.goto Dustwallow Marsh,57.19,20.98,0
.goto Dustwallow Marsh,57.77,16.19,0
.goto Dustwallow Marsh,54.18,15.10,0
.waypoint Dustwallow Marsh,57.19,20.98,60,0
.waypoint Dustwallow Marsh,57.77,16.19,60,0
.waypoint Dustwallow Marsh,54.18,15.10,60,0
.xp 37+67980 >>升级|cRXP_ENEMY_Murlocs|r，直到达到67980+/76100xp
step
#loop
.goto Dustwallow Marsh,57.19,20.98,0
.goto Dustwallow Marsh,57.77,16.19,0
.goto Dustwallow Marsh,54.18,15.10,0
.waypoint Dustwallow Marsh,57.19,20.98,60,0
.waypoint Dustwallow Marsh,57.77,16.19,60,0
.waypoint Dustwallow Marsh,54.18,15.10,60,0
+升级|cRXP_ENEMY_Murlocs|r，直到炉石冷却时间＜10分钟
.cooldown item,6948,<0
.dungeon !RFD
step
#softcore
.goto Dustwallow Marsh,71.50,51.30
>>沿着Theramore的东侧游泳。打开|cRXP_PICK_Captain's Footlocker|r以获取|cRXP_OOT_Captain's Documents|r
>>|cRXP_WARN_小心在更衣室周围巡逻的|r|cRXP_ENEMY_Coral Shark|r|cRXP_WARN_（47级精英）|r
>>|cRXP_WARN_非常小心|r|cRXP_ENEMY_Theramore Guards|r|cRXP_WARN_！他们有一个巨大的农业范围|r
.complete 1202,1 
.unitscan Theramore Guard
step
#softcore
#completewith next
.goto Dustwallow Marsh,69.60,49.96
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
#softcore
.goto Dustwallow Marsh,35.30,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.turnin 1239 >>交任务: |cRXP_FRIENDLY_被斩下的头颅|r
.accept 1240 >>接任务: |cRXP_LOOT_巨魔巫医|r
.turnin 1202 >>交任务: |cRXP_FRIENDLY_塞拉摩码头|r
.target Nazeer Bloodpike
.isQuestTurnedIn 1238
step
#softcore
.goto Dustwallow Marsh,35.30,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.turnin 1202 >>交任务: |cRXP_FRIENDLY_塞拉摩码头|r
.target Nazeer Bloodpike
step
#label NazeerB
#hardcore
.goto Dustwallow Marsh,35.30,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.turnin 1239 >>交任务: |cRXP_FRIENDLY_被斩下的头颅|r
.accept 1240 >>接任务: |cRXP_LOOT_巨魔巫医|r
.target Nazeer Bloodpike
.isQuestTurnedIn 1238
step
#optional
#label dustwallowskip1
step
#completewith next
.goto Orgrimmar,45.120,63.889
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
.fly Camp Taurajo >>飞往陶拉霍营地
.target Doras
.zoneskip Orgrimmar,1
.dungeon RFD
step
#completewith EnterRFD
.goto The Barrens,46.30,90.27,200 >>前往Razorfen Downs
.dungeon RFD
step
#completewith EnterRFD
>>|cRXP_WARN_如果可能的话，让小组中的某个人分享以下任务。或者，去Undercity自己取|r
.accept 3341 >>接任务: |cRXP_WARN_寒冰之王|r
.accept 6521 >>接任务: |cRXP_WARN_邪恶的盟友|r
.target Andrew Brownell
.target Varimathras
.isQuestTurnedIn 6522
.dungeon RFD
step
#optional
#completewith EnterRFD
>>|cRXP_WARN_如果可能的话，让小组中的某个人分享以下任务。或者，去Undercity自己取|r
.accept 3341 >>接任务: |cRXP_WARN_寒冰之王|r
.target Andrew Brownell
.isQuestAvailable 6522
.dungeon RFD
step
#completewith next
.goto The Barrens,46.30,90.27,50,0
.goto The Barrens,46.92,91.84,50,0
.goto The Barrens,48.20,92.66,50,0
>>杀死|cRXP_ENEMY_Ambassador Malcin|r。掠夺他的|cRXP_Loot_Head |r
>>|cRXP_WARN_他可以在实例外的4个不同帐篷中产卵|r
.complete 6521,1 
.unitscan Ambassador Malcin
.isOnQuest 6521
.dungeon RFD
step
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦雷姆·月歌|r
.accept 6626 >>接任务: |cRXP_WARN_邪恶之地|r
.target Myriam Moonsinger
.dungeon RFD
step
#completewith next
>>杀死|cRXP_ENEMY_Razorfen战列护卫队|r、|cRXD_ENEMY_拉佐芬荆棘编织者|r和|cRXP_ENEMY_Death’s Head Cultors|r
>>|cRXP_WARN_此任务在实例之外完成|r
.complete 6626,1 
.complete 6626,2 
.complete 6626,3 
.mob Razorfen Battleguard
.mob Razorfen Thornweaver
.mob Death's Head Cultist
.isOnQuest 6626
.dungeon RFD
step
.goto The Barrens,48.57,95.69,50,0
.goto The Barrens,48.20,92.66,50,0
.goto The Barrens,46.92,91.84,50,0
.goto The Barrens,46.30,90.27,50,0
.goto The Barrens,46.92,91.84
>>杀死|cRXP_ENEMY_Ambassador Malcin|r。掠夺他的|cRXP_Loot_Head |r
>>|cRXP_WARN_他可以在实例外的4个不同帐篷中产卵|r
.complete 6521,1 
.unitscan Ambassador Malcin
.isOnQuest 6521
.dungeon RFD
step
>>杀死|cRXP_ENEMY_Razorfen战列护卫队|r、|cRXD_ENEMY_拉佐芬荆棘编织者|r和|cRXP_ENEMY_Death’s Head Cultors|r
>>|cRXP_WARN_此任务在实例之外完成|r
.goto The Barrens,48.23,92.31,70,0
.goto The Barrens,48.15,90.57,70,0
.goto The Barrens,47.86,88.75,70,0
.goto The Barrens,46.46,90.19,70,0
.goto The Barrens,46.94,92.19,70,0
.goto The Barrens,48.23,92.31,70,0
.goto The Barrens,48.15,90.57,70,0
.goto The Barrens,47.86,88.75,70,0
.goto The Barrens,46.46,90.19,70,0
.goto The Barrens,46.94,92.19,70,0
.goto The Barrens,48.23,92.31
.complete 6626,1 
.complete 6626,2 
.complete 6626,3 
.mob Razorfen Battleguard
.mob Razorfen Thornweaver
.mob Death's Head Cultist
.isOnQuest 6626
.dungeon RFD
step
.goto The Barrens,49.012,94.938
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦雷姆·月歌|r
.turnin 6626 >>交任务: |cRXP_FRIENDLY_邪恶之地|r
.target Myriam Moonsinger
.isQuestComplete 6626
.dungeon RFD
step
#label EnterRFD
.goto The Barrens,49.255,93.077,0
.goto The Barrens,49.255,93.077,30,0
.goto 1414,53.26,71.18
.zone 300 >>Enter Razorfen Downs
.dungeon RFD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奔尼斯特拉兹|r
>>|cRXP_WARN_走左边的路，一直向左走，直到到达the Murder Pens，到达|r|cRXP_FRIENDLY_Belnistrasz|r
>>|cRXP_WARN_在你的队伍其他人准备好之前，不要接受“消灭偶像”，因为这是护送的开始。此步骤的自动接受功能已关闭|r
.accept 3523 >>接任务: |cRXP_WARN_剃刀高地的亡灵天灾|r
.turnin 3523 >>交任务: |cRXP_FRIENDLY_剃刀高地的亡灵天灾|r
.accept 3525,1 >>接任务: |cRXP_WARN_封印神像|r
.target Belnistrasz
.dungeon RFD
step
>>在仪式期间遵守并保护|cRXP_FRIENDLY_Belnistrasz|r
.complete 3525,1 
.target Belnistrasz
.isOnQuest 3525
.dungeon RFD
step
>>单击|cRXP_PICK_Belnistrasz的Brazier|r
.turnin 3525 >>交任务: |cRXP_FRIENDLY_封印神像|r
.isQuestComplete 3525
.dungeon RFD
step
>>杀死Coldbringer的|cRXP_ENEMY_Amnennar|r。掠夺他的|cRXX_Loot_Skull|r
.complete 3341,1 
.mob Amnennar the Coldbringer
.isOnQuest 3341
.dungeon RFD
step << Druid
#completewith DruidTraining6
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 5201 >>训练你的职业技能
.target Loganaar
.xp <38,1
.xp >40,1
step << Druid
#label DruidTraining6
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9634 >>训练你的职业技能
.target Loganaar
.xp <40,1
step << Druid
.hs >>前往: 奥格瑞玛
.use 6948
.zoneskip Orgrimmar
step << !Mage !Druid
.hs >>前往: 奥格瑞玛
.use 6948
.cooldown item,6948,>0
.zoneskip Orgrimmar
step << Mage
#xprate >1.99
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step << Mage
#xprate >1.99
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8413 >>训练你的职业技能
.target Pephredo
.xp <38,1
.xp >40,1
step << Mage
#xprate >1.99
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8423 >>训练你的职业技能
.target Pephredo
.xp <40,1
step << !Mage !Druid
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙尔迪|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Shardi
.zoneskip Dustwallow Marsh,1
.cooldown item,6948,<0
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10391 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <38,1
.xp >40,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 8134 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <40,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8621 >>训练你的职业技能
.target Ormok
.xp <38,1
.xp >40,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8624 >>训练你的职业技能
.target Ormok
.xp <40,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
.dungeon RFD
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 8820 >>训练你的职业技能
.target Grezz Ragefist
.xp <38,1
.xp >40,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 20660 >>训练你的职业技能
.target Grezz Ragefist
.xp <40,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14320 >>训练你的职业技能
.target Ormak Grimshot
.xp <38,1
.xp >40,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14324 >>训练你的职业技能
.target Ormak Grimshot
.xp <40,1
step << Hunter
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
.train 14925 >>训练你的宠物法术
.target Xao'tsu
.xp <40,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 6078 >>训练你的职业技能
.target Ur'kyo
.xp <38,1
.xp >40,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 8106 >>训练你的职业技能
.target Ur'kyo
.xp <40,1
step
#xprate >1.99
.goto Orgrimmar,75.18,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.accept 2981 >>接任务: |cRXP_LOOT_菲拉斯的危机|r
.target Belgrom Rockmaul
step << Hunter
.goto Orgrimmar,48.13,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特拉克根|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2600,232 
.target Trak'gen
.xp >40,1
step << Hunter
.goto Orgrimmar,48.13,80.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特拉克根|r
>>|cRXP_BUY_从他那里购买|r|T135661:0|t[Jagged Arrows]|cRXP_Buy_|r
.collect 11285,2600,232 
.target Trak'gen
.xp <40,1
step << Orc !Warlock
#optional
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r, |cRXP_FRIENDLY_奥古纳罗|r
.train 825 >>火车|T136103:0|t[骑狼]
.vendor >>|cRXP_BUY_BUY a|r|T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro
step << Troll Mage
#completewith next
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
.xp <40,1
.money <90
.skill riding,75,1
step << Troll
#completewith next
.subzone 367 >>前往森津村
step << Troll
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r, |cRXP_FRIENDLY_祖尼尔|r
.train 10861 >>火车|T136103:0|t[猛禽骑乘]
.vendor >>|cRXP_BUY_BUY a|r|T132253:0|t[|cFF0070FF猛禽|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11711 >>训练你的职业技能
.target Mirket
.xp <38,1
.xp >40,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.trainer >>训练你的职业技能
.accept 3631 >>接任务: |cRXP_LOOT_召唤地狱战马|r
.target Mirket
.xp <40,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul
step << Warlock
#completewith next
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Ratchet >>飞到棘轮
.zoneskip The Barrens
.target Doras
.isOnQuest 3631
step << Warlock
.goto The Barrens,62.63,35.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯坦哈德·法尔杉|r
.turnin 3631 >>交任务: |cRXP_FRIENDLY_召唤地狱战马|r
.target Strahad Farsan
.isOnQuest 3631
step << Warlock
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Bragok
.isQuestComplete 3631
.zoneskip Orgrimmar
step << Tauren
#optional
#completewith KodoRiding
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.zoneskip Thunder Bluff
.target Doras
step << Tauren
#optional
#completewith next
.subzone 222 >>前往血蹄村
step << Tauren
#optional
#label KodoRiding
.goto Mulgore,47.64,58.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r, |cRXP_FRIENDLY_祖尼尔|r
.train 132245 >>火车|T136103:0|t[Kodo Riding]
.vendor >>|cRXP_BUY_BUY a|r|T132253:0|t[|cFF0070FFKodo|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kar Stormsinger
.target Harb Clawhoof
step << Tauren
#optional
.hs >>前往: 奥格瑞玛
.use 6948
.cooldown item,6948,>0
.zoneskip Orgrimmar
step << Tauren
#optional
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Tal
.cooldown item,6948,<0
.zoneskip Orgrimmar
step
#sticky
#completewith EnterSM
.subzone 796 >>现在你应该找一个团体去猩红寺
.dungeon SM
step << !Mage
#xprate <1.99
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Orgrimmar,1
step << !Mage
#xprate >1.99
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Orgrimmar,1
.dungeon SM
step << !Mage
#xprate <1.99
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step << !Mage
#xprate >1.99
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
.dungeon SM
step << Mage
#xprate <1.99
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
step << Mage
#xprate >1.99
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
.dungeon SM
step << Mage
#xprate <1.99
.goto Undercity,85.13,10.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 8413 >>训练你的职业技能
.target Anastasia Hartwell
.xp <38,1
.xp >40,1
step << Mage
#xprate <1.99
#optional
.goto Undercity,85.13,10.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 8423 >>训练你的职业技能
.target Anastasia Hartwell
.xp <40,1
step << Mage
#xprate <1.99
.goto Undercity,84.20,15.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Lexington|r交谈
.train 11418 >>列车|T11418:0|t[入口：地下城]
.target Lexington Mortaim
.xp <40,1
step << Mage
#xprate <1.99
.goto Undercity,74.05,33.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew|r
.turnin 3341 >>交任务: |cRXP_FRIENDLY_寒冰之王|r
.target Andrew Brownell
.isQuestComplete 3341
.dungeon RFD
step << Mage
#xprate <1.99
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Hannah|r|cRXP_BUY_交谈。从他那里购买两个或多个|r|T134419:0|t[传送符文]|r
.collect 17031,2 
.target Hannah Akeley
step
#optional
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 6521 >>交任务: |cRXP_FRIENDLY_邪恶的盟友|r
.target Varimathras
.isQuestComplete 6521
.dungeon SM
step
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
.accept 1048 >>接任务: |cRXP_WARN_深入血色修道院|r
.target Varimathras
.dungeon SM
step
.goto Undercity,48.80,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
.accept 1113 >>接任务: |cRXP_WARN_狂热之心|r
.target Master Apothecary Faranell
.isQuestTurnedIn 1109 
.dungeon SM
step << Undead !Warlock
#xprate <1.99
#optional
#completewith next
.subzone 159 >>Travel to Brill
.xp <40,1
.money <90
.skill riding,75,1
step << Undead !Warlock
#xprate <1.99
#optional
.goto Tirisfal Glades,60.09,52.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Velma, |cRXP_FRIENDLY_撒迦利亚·普斯特|r
.train 10906 >>火车|T136103:0|t[不死骑士术]
.vendor >>|cRXP_BUY_BUY a|r|T132264:0|t[|cFF0070FF骨骼马|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Velma Warnam
.target Zachariah Post
step
#label EnterSM
.goto Eastern Kingdoms,46.32,30.71,15,0
.goto Eastern Kingdoms,46.61,30.59
.zone 303 >>进入猩红寺。从Library开始，这样您就可以在最后掠夺[|cRXP_FRIENDLY_the Scarlet Key|r]
.zoneskip 304
.zoneskip 305
.dungeon SM




step << !Undead
#completewith Bosses
>>掠夺|cRXP_Loot_堕落者简编|r
>>|cRXP_WARN_它位于地牢最后一个角落左边的书架上|r
.complete 1049,1 
.dungeon SM
step
#completewith Bosses
>>掠夺|cRXP_Loot_堕落者简编|r
>>|cRXP_WARN_它位于地牢最后一个角落左边的书架上|r
.complete 1049,1 
.isOnQuest 1049
.dungeon SM
step
#completewith Compendium
>>杀死|cRXP_LOOT_Scarlet|r暴民。掠夺他们的|cRXP_Loot_狂热之心|r
.complete 1113,1 
.isOnQuest 1113
.dungeon SM
step
#label Bosses
>>杀死|cRXP_ENEMY_Houndmaster Loksey|r，|cRXD_ENEMY_Herod |r，| cRXP__ENEMY_High Inquisitor Whitemane|r和|cRXP_ENEMY_Scarlet Commander Mograine|r
>>|cRXP_ENEMY_Houndmaster Loksey |r|cRXP_WARN_i位于图书馆|r
>>|cRXP_ENEMY_Herod|r |cRXP_WARN_is located in the Armory|r
>>|cRXP_ENEMY_高级检察官Whitemane|r|cRXP_WARN_and|cRXP-ENEMY_Scarlet指挥官Mograine|r位于大教堂|r
.complete 1048,4 
.complete 1048,3 
.complete 1048,1 
.complete 1048,2 
.isOnQuest 1048
.mob Houndmaster Loksey
.mob Herod
.mob High Inquisitor Whitemane
.mob Scarlet Commander Mograine
.dungeon SM
step << !Undead
#label Compendium
>>掠夺|cRXP_Loot_堕落者简编|r
>>|cRXP_WARN_它位于地牢最后一个角落左边的书架上|r
.complete 1049,1 
.isOnQuest 1049
.dungeon SM
step << Mage
#completewith SMturnin
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
.dungeon SM
step << !Mage
#completewith next
.goto Undercity,66.07,9.18,150 >>前往: |cRXP_PICK_幽暗城|r
.zoneskip Undercity
.dungeon SM
step
#label SMturnin
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 1048 >>交任务: |cRXP_FRIENDLY_深入血色修道院|r
.isQuestComplete 1048
.target Varimathras
.dungeon SM
step
.goto Undercity,48.80,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大药剂师法拉尼尔|r
.turnin 1113 >>交任务: |cRXP_FRIENDLY_狂热之心|r
.target Master Apothecary Faranell
.isQuestComplete 1113
.dungeon SM
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 30-40
#xprate <1.99
#classic
<< Horde
#name 38-39 Alterac/Arathi
#next 39-40 Badlands
step
.goto Undercity,50.15,67.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师金格|r
.accept 232 >>接任务: |cRXP_LOOT_金格的货物|r
.target Apothecary Zinge
step
.goto Undercity,58.61,54.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥雷萨多·卢卡|r
.turnin 232 >>交任务: |cRXP_FRIENDLY_金格的货物|r
.accept 238 >>接任务: |cRXP_LOOT_金格的货物|r
.target Alessandro Luca
step
.goto Undercity,50.15,67.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师金格|r
.turnin 238 >>交任务: |cRXP_FRIENDLY_金格的货物|r
.accept 243 >>接任务: |cRXP_LOOT_进入沙漠|r
.target Apothecary Zinge
step
.goto Undercity,74.05,33.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew|r
.turnin 3341 >>交任务: |cRXP_FRIENDLY_寒冰之王|r
.target Andrew Brownell
.isQuestComplete 3341
.dungeon RFD
step << Hunter
.goto Undercity,54.71,38.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abigail|r
.vendor >>|cRXP_BUY_从她那里买一个|r|T135489:0|t[巨大长弓]|cRXP_Buy_如果有|r
.target Abigail Sawyer
.money <6.7952
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.9
step << Hunter
#completewith BracersofBinding
+当你达到42级时装备|T135489:0|t[巨大长弓]
.use 11307
.itemcount 11307,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.9
step << Hunter
.goto Undercity,58.66,33.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_交谈。如果你是近战编织，从他那里买一把|r_。否则，跳过此步骤|r
.collect 2531,1,503,1 
.target Geoffrey Hartwell
.money <5.0552
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<31.2
step << Hunter
#completewith BracersofBinding
+当你达到39级时装备|T135424:0|t[大斧头]
.use 2531
.itemcount 2531,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<31.2
.xp >39,1
step << Hunter
#completewith BracersofBinding
+装备|T135424:0|t[大斧头]
.use 2531
.itemcount 2531,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<31.2
.xp <39,1
step << Rogue
.goto Undercity,58.66,33.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_交谈。从他那里购买|r|T135344:0|t[Falchion]|r
.collect 2528,1,503,1 
.money <4.6652
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
.target Geoffrey Hartwell
step << Rogue
.goto Undercity,58.66,33.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Geoffrey|r|cRXP_BUY_交谈。从他那里购买|r|T135341:0|t[Rondel]|r
.collect 2534,1,503,1 
.money <4.0888
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<24.0
.target Geoffrey Hartwell
step << Rogue
#completewith BracersofBinding
+当你达到41级时装备|T135344:0|t[Falchion]
.use 2528
.itemcount 2528,1
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step << Rogue
#completewith BracersofBinding
+当你达到39级时，将|T135341:0|t[Rondel]装备在你的右手中
.use 2534
.itemcount 2534,1
.itemStat 17,QUALITY,<7
.itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<24.0
step << Priest
.goto Undercity,69.54,26.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zane|r|cRXP_BUY_交谈。从他那里买一个|r|T133718:0|t[Blacbone Wand]|r
.collect 5239,1,503,1 
.money <4.0769
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<35.3
.target Zane Bradford
step << Priest
#completewith BracersofBinding
+当你达到41级时，装备|T135344:0|t[黑色魔杖]
.use 5239
.itemcount 5239,1
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<35.3
step << Warrior
.goto Undercity,77.48,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Nathaniel|r|cRXP_BUY_向他购买两堆|r|T135424:0|t[闪光飞斧]|c|r
.collect 15326,2 
.target Nathaniel Steenwick
step << Warrior
#ah
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯托克顿|r
>>|cRXP_BUY_如果您在购买|r|T134717:0|t[自然保护药剂]|cRXP_BUY_后还有剩余的钱，请购买以下物品：|r
.collect 4480,8 
.collect 4479,8 
.collect 4481,8 
.collect 3357,8 
.target Auctioneer Stockton
step << Warrior
#ah
.goto Undercity,71.42,46.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯托克顿|r
.collect 6052,2 
.target Auctioneer Stockton
step
#ah
.goto Undercity,71.42,46.69
>>|cRXP_BUY_如果你有剩余的钱，请购买以下物品：|r
.collect 3829,1 
.collect 4389,1 
.collect 929,1 
.collect 3823,1 
.collect 2868,1 
.collect 4611,9 
.collect 3404,4 
.group
step
#ah
.goto Undercity,71.42,46.69
>>|cRXP_BUY_如果你有剩余的钱，请购买以下物品：|r
.collect 3829,1 
.collect 4389,1 
.collect 4611,9 
.collect 3404,4 
.solo
step << Warrior
#completewith next
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
>>|cRXP_ENEMY_如果你在AH上购买了8个Cresting、Thundering和Burning符咒，请飞往Tarren Mill，跳过接下来的3个步骤|r
.fly Hammerfall >>飞到Hammerfall
.target Michael Garrett
.zoneskip Arathi Highlands
step << Warrior
#label Cresting
.goto Arathi Highlands,66.72,29.72
>>杀死|cRXP_ENEMY_Cresting Exiles|r。掠夺他们的|T133438:0|t[Cresting Charms]
.collect 4481,8 
.mob Cresting Exile
step << Warrior
.goto Arathi Highlands,52.06,50.60
>>杀死|cRXP_ENEMY_Thundering Exiles|r。掠夺他们的|T133435:0|t[Thundering Charms]
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Thundering Exiles|r|cRXP_WARN_拥有高爆发伤害|r
.collect 4480,8 
.mob Thundering Exile
step << Warrior
.goto Arathi Highlands,25.47,30.09
>>杀死|cRXP_ENEMY_Burning Exiles|r。掠夺他们的|T133434:0|t[燃烧的符咒]
.collect 4479,8 
.mob Burning Exile
step << Warrior
#completewith BracersofBinding
.goto Hillsbrad Foothills,62.06,20.19,120 >>Travel to Tarren Mill
.zoneskip Hillsbrad Foothills
step << !Warrior
#completewith BracersofBinding
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Michael Garrett
.zoneskip Hillsbrad Foothills
step << !Undead
#optional
.abandon 1049 >>堕落者简编
.isOnQuest 1049
.dungeon SM
step
#optional
.abandon 1048 >>弃入猩红寺
.isOnQuest 1048
.dungeon SM
step
#optional
.abandon 1113 >>Hearts of Zeal
.isOnQuest 1113
.dungeon SM
step
#optional
.abandon 6521 >>放弃邪恶联盟
.isOnQuest 6521
.dungeon RFD
step
#optional
.abandon 6626 >>Abandon A Host of Evil
.isOnQuest 6626
.dungeon RFD
step
#optional
.abandon 3341 >>Abandon Bring the End
.isOnQuest 3341
.dungeon RFD
step
#label BracersofBinding
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝瓦里尔|r, |cRXP_FRIENDLY_大法师沃迪恩·伍德格莱尔|r
.accept 557 >>接任务: |cRXP_LOOT_地缚护腕|r
.goto Hillsbrad Foothills,61.60,20.86
.accept 545 >>接任务: |cRXP_LOOT_达拉然巡逻队|r
.goto Hillsbrad Foothills,61.49,20.93
.target Keeper Bel'varil
.target Magus Wordeen Voidglare
step
.goto Hillsbrad Foothills,62.62,20.74
>>单击|cRXP_FRIENDLY_Melisara|r旁边的|cRXP_PICK_WANTED:Baron Vardus|r海报
.accept 566 >>接任务: |cRXP_LOOT_通缉：瓦杜斯男爵|r
.target Melisara
step
.goto Hillsbrad Foothills,63.24,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.accept 503 >>接任务: |cRXP_LOOT_高迪尔|r
.target Krusk
step << Warrior
#completewith Whirlwind
+|cRXP_WARN_观看这段关于如何为|r|T132403:0|t[Whirlwind Axe]干酪Cyclonian的视频非常重要
.link https://www.youtube.com/watch?v=BiuWeMSHEhA >>单击此处
step << Warrior
#ah
.goto Alterac Mountains,80.49,66.92
.use 6052 >>旅行时，使用[自然保护药剂]
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1714 >>交任务: |cRXP_FRIENDLY_流放精华|r
.target Bath'rah the Windwatcher
step << Warrior
.goto Alterac Mountains,80.49,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1714 >>交任务: |cRXP_FRIENDLY_流放精华|r
.target Bath'rah the Windwatcher
step << Warrior
.goto Alterac Mountains,80.49,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1712 >>交任务: |cRXP_FRIENDLY_塞克隆尼亚|r
.accept 1713 >>接任务: |cRXP_LOOT_召唤|r
.target Bath'rah the Windwatcher
step << Warrior
#label Whirlwind
.goto Alterac Mountains,80.6,62.2
>>等待|cRXP_FRIENDLY_Bath'rah的|r角色扮演，然后杀死|cRXP_LOOT_Cyclonian|r并掠夺他的|cRXP _LOOT_Heart|r
>>|cRXP_WARN_装备你的|r|T135424:0|t[闪光飞斧]|cRXP_WARN_if你还没有装备|r
.complete 1713,1 
.unitscan Cyclonian
step << Warrior
.goto Alterac Mountains,80.49,66.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_捕风者巴斯拉|r
.turnin 1713 >>交任务: |cRXP_FRIENDLY_召唤|r
.turnin 1792 >>交任务: |cRXP_FRIENDLY_旋风武器|r
.target Bath'rah the Windwatcher
step << Mage
#season 2
#completewith next
.train 2120,1
|cRXP_WARN_您必须经过|r|T135826:0|t[Framestrike]|cRXP_WARN_trained才能获得|r|T236218:0|t[Hot Streak]|cRXP_WARN_rune|r
step << Mage
#season 2
.train 401749,1
.train 2120,3 
.goto Alterac Mountains,60.510,46.286,-1
.goto Alterac Mountains,60.278,44.900,-1
>>|cRXP_WARN_铸造|r|T135826:0|t[火焰打击]|cRXP_WARN_在Strahnbrad铁匠楼的两个波纹管上。一旦其中一个风箱开始发出红色和炽热的光芒，就在第二个风箱上施放|r|T135826:0|t[火焰打击]|cRXP_WARN_again来点燃它。这将触发|cRXP_ENEMY_Ancient Fire Elemental|r生成|r
>>杀死|cRXP_ENEMY_Ancient Fire Elemental|r。为|T134939:0|t[|cRXP-Loot_Spell Notes:Hot Streak|r]掠夺它
.collect 213113,1
.mob Ancient Fire Elemental
step << Mage
#season 2
.train 401749 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_LOOT_拼写注释：热点|r]|cRXP-WARN_训练|r|T236218:0|t[热点]
.use 213113
.itemcount 213113,1
step
#completewith Goldir
>>杀死|cRXP_ENEMY_Baron Vardus|r并掠夺他的|cRXP_loot_Head|r
>>|cRXP_WARN_他的一个产卵点在Strahnbrad的一家客栈里。如果他不在，你稍后会完成这个任务|r
.complete 566,1 
.unitscan Baron Vardus
step
.goto Alterac Mountains,63.20,43.90
>>杀死|cRXP_ENEMY_Jailor Borhuin|r。抢走他的|cRXX_Loot_Key|r
.complete 503,1 
.unitscan Jailor Borhuin
step
#label Goldir
.goto Alterac Mountains,60.00,43.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高迪尔|r
.turnin 503 >>交任务: |cRXP_FRIENDLY_高迪尔|r
.accept 506 >>接任务: |cRXP_LOOT_布莱克摩尔的余孽|r
.target Gol'dir
step
#completewith next
.goto Hillsbrad Foothills,62.06,20.19,120 >>Return to Tarren Mill
step
#completewith next
.goto Hillsbrad Foothills,62.76,19.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板沙恩|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shay
step
.goto Hillsbrad Foothills,63.24,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.turnin 506 >>交任务: |cRXP_FRIENDLY_布莱克摩尔的余孽|r
.accept 507 >>接任务: |cRXP_LOOT_奥里登·匹瑞诺德|r
.target Krusk
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.turnin 566 >>交任务: |cRXP_FRIENDLY_通缉：瓦杜斯男爵|r
.target High Executor Darthalia
.isQuestComplete 566
step << skip
#completewith next
.goto Alterac Mountains,42.2,77.8,90,0
.goto Alterac Mountains,46.2,78.2,90,0
>>杀死|cRXP_ENEMY_Mountain Lions |r。掠夺它们一个|T134368:0|t[新鲜尸体]
>>|T134368:0|t[新鲜胴体]|cRXP_WARN_divears 30分钟后|r
.collect 5810,1 
.mob Feral Mountain Lion
.mob Mountain Lion
.mob Starving Mountain Lion
.mob Hulking Mountain Lion
step << skip
.goto Alterac Mountains,37.56,68.22
.use 5810 >>使用无主洞穴内的|T134368:0|t[新鲜尸体]召唤|cRXP_ENEMY_Frostmaw|r。杀死他并掠夺他的|cRXX_loot_Mane|r
>>|cRXP_WARN_这个任务可能很困难，所以在召唤之前要清理洞穴周围|r
.complete 1136,1 
.unitscan Frostmaw

step
.loop 25,Alterac Mountains,10.3,78.5,20.5,75.2,21.3,53.5,17.8,56.2,21.3,53.5,20.5,75.2,10.3,78.5
>>杀死|cRXP_ENEMY_Dalaran召唤师|r和|cRXP_ENEMY_Elemental Slaves |r。掠夺他们的|cRXD_Loot_Bracers|r
.complete 545,1 
.complete 545,2 
.complete 557,1 
.mob Dalaran Summoner
.mob Elemental Slave
step << !Hunter
#ah
#completewith next
.use 10592 >>使用|T134816:0|t[Catseye Elixir]接近Aliden Perenolde领主的家园
.itemcount 10592,1
step << Hunter
#completewith next
+演员阵容|T132320:0|t当你接近Aliden Perenolde勋爵的宅地时[隐藏轨迹]
step
.goto Alterac Mountains,39.28,14.52
>>杀死|cRXP_ENEMY_Lord Aliden Perenolde|r
>>|cRXP_WARN_请注意|cRXP_ENEMY_Syndicate Assassins|r|cRXP-WARN_|r|cRXP_ENEMY_Aliden|r|cRXP_WARN_uses Power Word:Shield，施放Renew，并将睡眠宠物和其他玩家|r
.complete 507,1 
.unitscan Lord Aliden Perenolde
.mob Syndicate Assassin
step
.goto Alterac Mountains,39.30,14.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾丽萨|r
.turnin 507 >>交任务: |cRXP_FRIENDLY_奥里登·匹瑞诺德|r
.accept 508 >>接任务: |cRXP_LOOT_塔蕾莎的礼物|r
.target Elysa
step
.goto Alterac Mountains,47.8,17.1,70,0
.goto Alterac Mountains,53.6,20.6,70,0
.goto Alterac Mountains,56.2,26.8,70,0
.goto Alterac Mountains,58.1,29.9,70,0
.goto Alterac Mountains,59.7,43.9
>>在每个营地和Strahnbrad的客栈中搜索|cRXP_ENEMY_Baron Vardus|r。杀死他并掠夺他的|cRXP_loot_Head|r
.complete 566,1 
.unitscan Baron Vardus
step
#completewith next
.goto Hillsbrad Foothills,62.37,20.32
.subzone 272 >>Return to Tarren Mill
step
.goto Hillsbrad Foothills,62.37,20.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级执行官达萨利亚|r
.turnin 566 >>交任务: |cRXP_FRIENDLY_通缉：瓦杜斯男爵|r
.target High Executor Darthalia
step
.goto Hillsbrad Foothills,63.24,20.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁斯克|r
.turnin 508 >>交任务: |cRXP_FRIENDLY_塔蕾莎的礼物|r
.target Krusk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师沃迪恩·伍德格莱尔|r, |cRXP_FRIENDLY_看守者贝瓦里尔|r
.turnin 545 >>交任务: |cRXP_FRIENDLY_达拉然巡逻队|r
.goto Hillsbrad Foothills,61.56,20.89
.turnin 557 >>交任务: |cRXP_FRIENDLY_地缚护腕|r
.goto Hillsbrad Foothills,61.49,20.93
.target Magus Wordeen Voidglare
.target Keeper Bel'varil
step
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fly Hammerfall >>飞到Hammerfall
.target Zarise
.zoneskip Arathi Highlands
step
#optional
.abandon 566 >>放弃通缉：瓦杜斯男爵
.isOnQuest 566
step
#optional
.abandon 518 >>放弃意志之冠
.isOnQuest 518
step
#optional
.abandon 519 >>放弃意志之冠
.isOnQuest 519
step
#optional
.abandon 520 >>放弃意志之冠
.isOnQuest 520
step
#optional
.abandon 507 >>放弃阿利登·佩雷诺尔德勋爵
.isOnQuest 507
step
.goto Arathi Highlands,73.80,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森古|r
.turnin 638 >>交任务: |cRXP_FRIENDLY_巨魔之敌|r
.target Zengu
step
.goto Arathi Highlands,74.30,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜拉姆法尔|r
.accept 678 >>接任务: |cRXP_LOOT_短兵相接|r
.target Drum Fel
step
.goto Arathi Highlands,72.70,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈穆尔|r
.accept 675 >>接任务: |cRXP_LOOT_振奋精神|r
.target Gor'mul
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 675 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.accept 701 >>接任务: |cRXP_LOOT_迅猛龙的狡诈|r
.accept 673 >>接任务: |cRXP_LOOT_邪恶的魔法|r << Rogue
.target Tor'gan
.solo << Rogue
step << Rogue
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 675 >>交任务: |cRXP_FRIENDLY_振奋精神|r
.accept 701 >>接任务: |cRXP_LOOT_迅猛龙的狡诈|r
.target Tor'gan
.group
step
.goto Arathi Highlands,62.50,33.80
>>单击Myzrael的|cRXP_PICK_Shard|r
.accept 642 >>接任务: |cRXP_LOOT_被困的公主|r
step
.goto Arathi Highlands,80.80,39.91,20,0
.goto Arathi Highlands,82.25,38.94,20,0
.goto Arathi Highlands,82.39,36.78,20,0
.goto Arathi Highlands,83.56,35.02,20,0
.goto Arathi Highlands,84.87,31.67,20,0
.goto Arathi Highlands,87.10,31.31,20,0
.goto Arathi Highlands,84.73,28.99,20,0
.goto Arathi Highlands,84.32,30.93
>>杀死|cRXP_ENEMY_Dryb须Kobolds|r、|cRXX_ENEMY_Diggers|r和|cRXD_ENEMY_Surveyors|r。掠夺他们的|cRXP_Loot_Motes of Myzrael|r
.complete 642,1 
.mob Drywhisker Kobold
.mob Drywhisker Digger
.mob Drywhisker Surveyor
step
.goto Arathi Highlands,84.30,30.95
>>单击洞穴后面的|cRXP_PICK_Iridescent碎片|r
.turnin 642 >>交任务: |cRXP_FRIENDLY_被困的公主|r
.accept 651 >>接任务: |cRXP_LOOT_禁锢之石|r
step
.goto Arathi Highlands,83.93,28.49
.goto Arathi Highlands,73.66,29.11,30 >>|cRXP_WARN_跳到一个节点上或跑到洞穴的后面。通过注销并重新登录来执行注销跳过。您必须在注销时进行跳过|r
.link https://www.youtube.com/watch?v=RSedlGeYX_k&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
step
.goto Arathi Highlands,66.70,29.80
>>为|cRXP_Loot_Cresting密钥|r掠夺|cRX_PICK_Stone of East Binding|r
>>|cRXP_ENEMY_羽冠流放者|r|cRXP_WARN_have Frost Armor and Frost Nova|r
.complete 651,2 
.mob Cresting Exile
step << Warrior
#season 2
.train 409163,1
.goto Arathi Highlands,72.51,65.67,70,0
.goto Arathi Highlands,70.334,69.93,70,0
.goto Arathi Highlands,64.06,72.51,70,0
.goto Arathi Highlands,61.35,71.72,70,0
.goto Arathi Highlands,64.23,67.72,70,0
.goto Arathi Highlands,66.56,63.98
>>杀死|cRXP_ENEMY_Witherbark巨魔|r。为|T133057:0|t[|cRXP-Loot_Witherbark Mallet|r]掠夺它们
.collect 216483,1
.mob Witherbark Shadow Hunter
.mob Witherbark Axe Thrower
.mob Witherbark Headhunter
.mob Witherbark Witch Doctor
step << Warrior
#season 2
.train 409163,1
#label WitherbarkCave
#completewith next
.goto Arathi Highlands,68.363,75.806,25 >>进入Witherbark洞穴
step << Warrior
#season 2
.train 409163,1
#completewith next
.goto Arathi Highlands,69.502,81.924
.cast 436278 >>|cRXP_WARN_使用|r|T133057:0|t[|cRXP_LOOT_Witherbark Mallet |r]|cRXP_WARN_at |cRX_PICK_Gong|r在洞穴内|r
.use 216483 >>|cRXP_WARN_这将产生一个|cRXP_ENEMY_Witherbark巨人|r（35级精英）以及2个额外的暴民|r
step << Warrior
#season 2
.train 409163,1
.goto Arathi Highlands,69.61,81.60
>>杀死|cRXP_ENEMY_Witherbark Goliath|r。为|T134419:0|t[|cRXP-Loot_集中愤怒符文|r]掠夺它
.collect 213109,1
.mob Witherbark Goliath
step << Warrior
#season 2
#label FocusedRage
.train 409163 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_LOOT_聚焦愤怒符文|r]|cRXD_WARN_训练|r|T132345:0|t[聚焦愤怒]
.use 213109
step
.goto Arathi Highlands,52.00,50.80
>>为|cRXP_Loot_Thundering Key|r掠夺|cRXP_PICK_Stone of Outer Binding|r
>>|cRXP_ENEMY_雷电流放者|r|cRXP_WARN_拥有强大的爆发伤害|r
.complete 651,3 
.mob Thundering Exile
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
>>在|cRXP_ENEMY_Hay Weevil|r上使用|T134325:0|t[Bug Catching Net]
.goto Arathi Highlands,30.7,28.7
.use 213562
.collect 213568,1 
.mob Hay Weevil
step
.goto Arathi Highlands,25.50,30.10
>>为|cRXP_Loot_Burning Key|r掠夺|cRX_PICK_西装革履之石|r
.complete 651,1 
.mob Burning Exile
step << Rogue
#hardcore
#completewith next
+|cRXP_WARN_下一个任务可能很难，要格外小心|r
step << Rogue
.goto Arathi Highlands,29.4,61.6,90,0
.goto Arathi Highlands,29.6,63.0,90,0
.goto Arathi Highlands,29.4,64.4,90,0
.goto Arathi Highlands,29.4,61.6
>>杀死|cRXP_ENEMY_Marez Cowl|r。为她掠夺她|cRXX_Loot_Orb|r
>>|cRXP_WARN_她有两个产卵的地方在东侧（外面）。你可以躲到她身边|r
.complete 673,1 
.unitscan Marez Cowl
.solo
step << Warlock
#season 2
.train 426443,1
#completewith SyndicateConjuror
+|cRXP_WARN_建议您找到额外的党员来获得|r|T134419:0|t[|cRXP_LOOT_召唤符文|r]|cRXP-WARN_a，因为它需要在Stromgarde Keep中杀死精英|r
step << Warlock
#season 2
.train 426443,1
#completewith next
.subzone 324 >>前往Stromgarde Keep
step << Warlock
#season 2
#label SyndicateConjuror
.train 426443,1
#loop
.goto Arathi Highlands,26.04,62.80,40,0
.goto Arathi Highlands,29.47,64.14,40,0
.goto Arathi Highlands,29.06,60.96,40,0
>>杀死|cRXP_ENEMY_Syndicate招魂师|r。掠夺他们的|T348282:0|t[|cRXP-Loot_CONCUROR的吊坠|r]
>>当你在一个|cRXP_ENEMY_虚空行者小兵上引导|T136163:0|t[吸取灵魂]以获得|T132885:0|t[|cRXP-LOOT_虚空之魂|r]时，杀死它
.collect 213573,10
.collect 213572,1
.mob Syndicate Conjuror
.mob Voidwalker Minion
step << Warlock
#season 2
#completewith next
.train 426443,1
.goto Arathi Highlands,29.292,62.283,10 >>|cRXP_WARN_进入Stromgade Keep较低楼层的大房子，然后前往2楼|r
step << Warlock
#season 2
#completewith next
.train 426443,1
.goto Arathi Highlands,29.077,63.079
.cast 434994 >>|cRXP_WARN_使用|r|T348282:0|t[|cRXP_LOOT_招魂符的吊坠|r]|cRXP_WARN_up漂浮物旁边的楼梯|r|cRXP _PICK_虚空棱镜|r|cRXP_WARN_to召唤一名36级精英|cRXP_ENEMY_虚空探索者|r
.use 213573
step << Warlock
#season 2
.train 426443,1
.goto Arathi Highlands,29.077,63.079
>>杀死|cRXP_ENEMY_Void Seeker |r。掠夺它以获得|T134419:0|t[|cRXP-Loot_调用符文|r]
.collect 213098,1
.mob Void Seeker
step << Warlock
#season 2
.train 426443 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_LOOT_调用符|r]|cRXP-WARN_训练|r|T136133:0|t[调用]
.use 213098
.itemcount 213098,1
step
.goto Arathi Highlands,36.20,57.30
>>点击|cRXP_PICK_内缚之石|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Rumbling Exiles'|r|cRXP_WARN_。他们的眩晕没有递减的回报|r
.turnin 651 >>交任务: |cRXP_FRIENDLY_禁锢之石|r
.accept 652 >>接任务: |cRXP_LOOT_打开钥匙之石|r
step << Hunter
>>使用|T132172:0|t[鹰眼]查找|cRXP_ENEMY_Fozruk |r
>>确保先杀死|cRXP_ENEMY_Sleby|r和|cRXP_ENEMY_Kobolds|r的其余部分，您可以一次杀死一个加法并重置战斗
>>在避难点附近装备|cRXP_ENEMY_Fozruk|r，杀死他。掠夺他的|cRXP_Loot_秩序棒|r
>>这是一个艰难的单人任务，如果你不能分组，可以考虑跳过这一步
.complete 652,1 
.link https://www.twitch.tv/videos/778346703 >>点击此处查看视频参考
.unitscan Fozruk
step << !Hunter
>>找到并杀死|cRXP_ENEMY_Fozruk |r。掠夺他获得的|cRXX_Loot_秩序棒|r。不要刻意完成这一步，他在整个区域巡逻
>>这是一个非常难单飞的精英，如果你不能组队，可以考虑跳过这一步 << !Warlock
>>|cRXP_ENEMY_Fozruk|r可能令人恐惧，而|cRXP__ENEMY_Sleeby|r可以治愈，这是一个非常艰难的单人任务，如果你不能分组，可以考虑跳过这一步 << Warlock
.complete 652,1 
.link https://www.twitch.tv/videos/669107037?t=05h51m54s >>点击此处查看视频参考
.unitscan Fozruk
step
.goto Arathi Highlands,36.20,57.30
>>单击|cRXP_PICK_Keystone |r
>>|cRXP_WARN_在完成这项任务后，一个精英暴民将产生，准备逃跑|r
.turnin 652 >>交任务: |cRXP_FRIENDLY_打开钥匙之石|r
.accept 688 >>接任务: |cRXP_LOOT_密斯莱尔的盟友|r
.isQuestComplete 652
step
.goto Arathi Highlands,36.20,57.30
>>单击|cRXP_PICK_Keystone |r
.accept 688 >>接任务: |cRXP_LOOT_密斯莱尔的盟友|r
.isQuestTurnedIn 652
step
#completewith next
.goto Arathi Highlands,21.6,75.6,30,0
.goto Arathi Highlands,22.1,79.9,25 >>穿过洞穴到法尔迪尔湾
step
.goto Arathi Highlands,31.83,82.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lolo|r
.accept 663 >>接任务: |cRXP_LOOT_法迪尔海湾|r
.target Lolo the Lookout
step
.goto Arathi Highlands,32.28,81.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 663 >>交任务: |cRXP_FRIENDLY_法迪尔海湾|r
.target Shakes O'Breen
step
.goto Arathi Highlands,32.78,81.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副尼兹利克斯|r
.accept 662 >>接任务: |cRXP_LOOT_深海打捞|r
.target First Mate Nilzlix
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯迪加特船长|r, |cRXP_FRIENDLY_菲兹索普教授|r
.accept 664 >>接任务: |cRXP_LOOT_船长的复仇|r
.goto Arathi Highlands,34.00,80.79
.accept 665 >>接任务: |cRXP_LOOT_水下宝藏|r
.goto Arathi Highlands,33.87,80.55
.target Captain Steelgut
.target Professor Phizzlethorpe
step
.goto Arathi Highlands,35.7,79.7
>>等待|cRXP_FRIENDLY_Phizzlethorpe的|r角色扮演，然后杀死产生的两个|cRXP_ENEMY_Vengeful Surger|r。
>>|cRXP_WARN_这些暴徒是40级。尽快将它们从|cRXP_FRIENDLY_Phizzlethorpe|r|cRXP-WARN_a中删除|r
.complete 665,1 
.unitscan Vengeful Surge
step
.goto Arathi Highlands,33.8,80.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉克里格博士|r
.turnin 665 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.accept 666 >>接任务: |cRXP_LOOT_水下宝藏|r
.target Doctor Draxlegauge
step << !Druid !Warlock !Shaman
#ah
#completewith SLog
.use 5996 >>饮水息灵药
.itemcount 5996,1
step
#sticky
#completewith Daggerspines
+|cRXP_ENEMY_Daggerspine Raiders|r|cRXP_WARN_拥有净能，所以如果你没有使用过|r|T134797:0|t[水息灵药]，请非常小心你的呼吸 << !Druid !Warlock !Shaman
+|cRXP_ENEMY_匕首刺突袭者|r|cRXP_WARN_有净能，所以一定要保持水呼吸|r << Warlock/Shaman
+|cRXP_WARN_当你的呼吸变低时，使用水生形态|r << Druid
step
#completewith ElvenGems
>>杀死|cRXP_ENEMY_Daggerspine Raiders|r和|cRXX_ENEMY_Sorcerees|r
.complete 664,1 
.complete 664,2 
.mob Daggerspine Raider
.mob Daggerspine Sorceress
step
#completewith SLog
.use 4491 >>装备|T133149:0|t[宝石狩猎护目镜]。查找|cRXP_PICK_煅烧精灵宝石|r。掠夺它们以获取|cRXP_Loot_精灵宝石|r
.complete 666,1 
step
.goto Arathi Highlands,23.40,85.09
>>为|cRXP_OOT_Maiden的愚蠢日志|r掠夺|cRXP_PICK_Book|r
>>|cRXP_WARN_原木在船的中层，朝向船的前部|r
.complete 662,2 
step
.goto Arathi Highlands,23.04,84.51
>>为|cRXP_OOT_Maiden的愚蠢图表|r掠夺|cRX_PICK_Uncurled Parchment|r
>>|cRXP_WARN_海图在船的中层，朝向船的中心|r
.complete 662,1 
step
.goto Arathi Highlands,20.46,85.61
>>为|cRXP_Loot_Srit of Silverpine Charts|r掠夺|cRX_PICK_Uncurled Parchment|r
>>|cRXP_WARN_海图在船的中层，朝向前方，放在大炮旁边的板条箱上|r
.complete 662,3 
step
#label SLog
.goto Arathi Highlands,20.65,85.10
>>为|cRXP_Loot_银松原木之精灵|r掠夺|cRX_PICK_Book|r
>>|cRXP_WARN_原木位于船的最底层，朝向前方，躺在泥土中|r
.complete 662,4 
step
#label ElvenGems
.loop 25,Arathi Highlands,19.3,84.1,17.7,89.5,25.5,90.8,24.1,85.7,23.2,89.7,19.3,84.1,17.7,89.5,25.5,90.8,24.1,85.7,23.2,89.7,19.3,84.1
.use 4491 >>装备|T133149:0|t[宝石狩猎护目镜]。查找|cRXP_PICK_煅烧精灵宝石|r。掠夺它们以获取|cRXP_Loot_精灵宝石|r
.complete 666,1 
step
#label Daggerspines
.loop 25,Arathi Highlands,21.05,84.62,23.44,84.76,25.38,86.03,23.14,89.88,21.55,86.67,18.75,85.31,19.76,84.00,21.05,84.62
>>完成击杀|cRXP_ENEMY_Daggerspine Raiders|r和|cRXX_ENEMY_Sorcerees|r
.complete 664,1 
.complete 664,2 
.mob Daggerspine Raider
.mob Daggerspine Sorceress
step
#completewith next
+|cRXP_WARN_重新装备你平时的头盔，然后手动跳过这一步。|r
step
#requires ElvenGems
.goto Arathi Highlands,32.77,81.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副尼兹利克斯|r
.turnin 662 >>交任务: |cRXP_FRIENDLY_深海打捞|r
.target First Mate Nilzlix
step
.goto Arathi Highlands,33.86,80.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Draxlegauge|r
.turnin 666 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.accept 668 >>接任务: |cRXP_LOOT_水下宝藏|r
.target Doctor Draxlegauge
step
.goto Arathi Highlands,34.00,80.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯迪加特船长|r
.turnin 664 >>交任务: |cRXP_FRIENDLY_船长的复仇|r
.target Captain Steelgut
step
.goto Arathi Highlands,32.28,81.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙克斯·奥布里|r
.turnin 668 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.accept 669 >>接任务: |cRXP_LOOT_水下宝藏|r
.target Shakes O'Breen
step
.goto Arathi Highlands,36.01,79.24
.goto Arathi Highlands,48.65,55.79,30 >>|cRXP_WARN_跳到洞穴后面的蘑菇上。通过注销并重新登录来执行注销跳过|r
.link https://www.youtube.com/watch?v=2y8T4MU4jm4&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
step
#completewith next
>>杀死|cRXP_ENEMY_Highland Fleshstalkers|r。掠夺他们的|cRXX_Loot_Hearts|r
.complete 701,1 
.mob Highland Fleshstalker
step
.goto Arathi Highlands,52.06,74.38,50,0
.goto Arathi Highlands,53.81,74.59,50,0
.goto Arathi Highlands,53.58,76.20,50,0
.goto Arathi Highlands,54.52,78.00,15,0
.goto Arathi Highlands,53.68,79.95,20,0
.goto Arathi Highlands,53.81,74.59
>>杀死|cRXP_ENEMY_Boulderfirs Brutes|r和|cRXP_ENEMY_Boldfirs Magi|r
>>|cRXP_WARN_小心魔法师的霜甲和霜新星|r
>>|cFFEB144CBe**极其小心**稀有的“破碎机翻浆”，这是一种非精英，命中率为250-450|r
.complete 678,1 
.complete 678,2 
.mob Boulderfist Brute
.mob Boulderfist Magus
.unitscan Molok the Crusher
step
.goto Arathi Highlands,52.77,63.56,70,0
.goto Arathi Highlands,50.22,65.00,70,0
.goto Arathi Highlands,49.71,68.69,70,0
.goto Arathi Highlands,48.07,74.25,70,0
.goto Arathi Highlands,46.21,76.74,70,0
.goto Arathi Highlands,46.04,79.55,70,0
.goto Arathi Highlands,48.59,80.56,70,0
.goto Arathi Highlands,49.71,68.69
>>杀死|cRXP_ENEMY_Highland Fleshstalkers|r。掠夺他们的|cRXX_Loot_Hearts|r
.complete 701,1 
.mob Highland Fleshstalker
step
.goto Arathi Highlands,36.20,57.30
>>单击|cRXP_PICK_Keystone |r
>>|cRXP_WARN_在完成这项任务后，一个精英暴民将产生，准备逃跑|r
.turnin 652 >>交任务: |cRXP_FRIENDLY_打开钥匙之石|r
.accept 688 >>接任务: |cRXP_LOOT_密斯莱尔的盟友|r
.isQuestComplete 652
step
.goto Arathi Highlands,36.20,57.30
>>单击|cRXP_PICK_Keystone |r
.accept 688 >>接任务: |cRXP_LOOT_密斯莱尔的盟友|r
.isQuestTurnedIn 652
step
#completewith next
.goto Arathi Highlands,73.52,33.20,150 >>Return to Hammerfall
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 701 >>交任务: |cRXP_FRIENDLY_迅猛龙的狡诈|r
.accept 702 >>接任务: |cRXP_LOOT_迅猛龙的狡诈|r
.accept 673 >>接任务: |cRXP_LOOT_邪恶的魔法|r
.target Tor'gan
.group
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 673 >>交任务: |cRXP_FRIENDLY_邪恶的魔法|r << Rogue
.turnin 701 >>交任务: |cRXP_FRIENDLY_迅猛龙的狡诈|r
.accept 702 >>接任务: |cRXP_LOOT_迅猛龙的狡诈|r
.solo << Rogue
step
.goto Arathi Highlands,74.40,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨鲁克|r
.turnin 688 >>交任务: |cRXP_FRIENDLY_密斯莱尔的盟友|r
.target Zaruk
.isQuestTurnedIn 652
step
.goto Arathi Highlands,72.70,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈穆尔|r
.turnin 702 >>交任务: |cRXP_FRIENDLY_迅猛龙的狡诈|r
.target Gor'mul
step
.goto Arathi Highlands,74.20,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜拉姆法尔|r
.turnin 678 >>交任务: |cRXP_FRIENDLY_短兵相接|r
.accept 679 >>接任务: |cRXP_LOOT_短兵相接|r
.target Drum Fel
.group
step
.goto Arathi Highlands,74.20,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜拉姆法尔|r
.turnin 678 >>交任务: |cRXP_FRIENDLY_短兵相接|r
.target Drum Fel
step
.goto Arathi Highlands,73.84,32.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板埃德瓦|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Adegwa
step
.goto Arathi Highlands,72.80,34.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈穆尔|r
.accept 847 >>接任务: |cRXP_LOOT_迅猛龙的狡诈|r
.target Gor'mul
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 847 >>交任务: |cRXP_FRIENDLY_迅猛龙的狡诈|r
.target Tor'gan
step
.goto Arathi Highlands,73.41,36.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里高利·维克托医生|r
.accept 6622 >>接任务: |cRXP_WARN_救死扶伤|r
.target Doctor Gregory Victor
.skill firstaid,<225,1
step
.goto Arathi Highlands,73.03,36.84
.use 16991 >>|cRXP_WARN_引导|r|T133682:0|t[分诊绷带]|cRXP_WARN_on the |cRXP_FRIENDLY_Horde Soldiers|r优先考虑|cRXT_FRIENDLY_重伤士兵|r|r
.complete 6622,1 
.target Critically Injured Horde Soldier
.target Badly Injured Horde Soldier
.target Injured Horde Soldier
.isOnQuest 6622
step
.goto Arathi Highlands,73.41,36.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里高利·维克托医生|r
.turnin 6622 >>交任务: |cRXP_FRIENDLY_救死扶伤|r
.target Doctor Gregory Victor
.isQuestComplete 6622
step
.destroy 16991 >>摧毁: |cRXP_ENEMY_急救绷带|r
.isQuestTurnedIn 6622
step
.goto Arathi Highlands,74.00,33.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科林法尔|r
.accept 680 >>接任务: |cRXP_LOOT_真正的威胁|r
.target Korin Fel
.group
step
.goto Arathi Highlands,73.80,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森古|r
.accept 639 >>接任务: |cRXP_LOOT_激流堡符印|r
.target Zengu
.group
step
#completewith next
.subzone 324 >>前往Stromgarde Keep
.group
step
#completewith next
>>杀死|cRXP_ENEMY_Boulderfist萨满|r和|cRXP_ENEMY_ Boulderfish领主|r
.complete 679,1 
.complete 679,2 
.mob Boulderfist Shaman
.mob Boulderfist Lord
.group 3
step
.goto Arathi Highlands,18.74,66.30,30,0
.goto Arathi Highlands,19.6,66.9
>>杀死|cRXP_ENEMY_Or'Kalar|r。掠夺他的|cRXP_Loot_Head|r
>>|cRXP_ENEMY_Or'Kalar|r|cRXP_WARN_can在Arathor基地塔周围的两个区域产卵|r
.complete 680,1 
.unitscan Or'Kalar
.group 3
step
.loop 25,Arathi Highlands,18.91,65.80,20.05,65.43,20.50,66.72,21.49,67.03,21.84,65.41,23.64,65.69,22.25,67.74,20.89,69.19,19.51,69.14,18.26,67.42,18.91,65.80
>>杀死|cRXP_ENEMY_Boulderfist萨满|r和|cRXP_ENEMY_ Boulderfish领主|r
.complete 679,1 
.complete 679,2 
.mob Boulderfist Shaman
.mob Boulderfist Lord
.group 3
step
#completewith next
>>杀死|cRXP_ENEMY_Syndicate Prowlers |r、|cRXD_ENEMY_Congurors|r和|cRXP_ENEMY_Magi|r。掠夺它们以获取Strom|r的|cRXT_Loot_Sgil
>>|cRXP_WARN_它的下降率非常低。小心重生。小心|r|cRXP_ENEMY_Syndicate Prowlers |r|cRXP_WARN_，他们可以联网并解除武装|r
.complete 639,1 
.mob Syndicate Prowler
.mob Syndicate Conjuror
.mob Syndicate Magus
.group 3
step
.goto Arathi Highlands,29.45,64.39,30,0
.goto Arathi Highlands,29.63,62.95
>>杀死|cRXP_ENEMY_Marez Cowl|r。为她掠夺她|cRXX_Loot_Orb|r
>>|cRXP_WARN_她在养殖场的东侧有两个产卵点|r
.complete 673,1 
.unitscan Marez Cowl
.group 3
step
.goto Arathi Highlands,27.3,62.8
>>杀死|cRXP_ENEMY_Syndicate Prowlers |r、|cRXD_ENEMY_Congurors|r和|cRXP_ENEMY_Magi|r。掠夺它们以获取Strom|r的|cRXT_Loot_Sgil
>>|cRXP_WARN_它的下降率非常低。小心重生。小心|r|cRXP_ENEMY_Syndicate Prowlers |r|cRXP_WARN_，他们可以联网并解除武装|r
.complete 639,1 
.mob Syndicate Prowler
.mob Syndicate Conjuror
.mob Syndicate Magus
.group 3
step
#completewith next
#softcore
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
.group
step
.goto Arathi Highlands,74.70,36.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔甘|r
.turnin 673 >>交任务: |cRXP_FRIENDLY_邪恶的魔法|r
.target Tor'gan
.group
step
.goto Arathi Highlands,74.25,33.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜拉姆法尔|r
.turnin 679 >>交任务: |cRXP_FRIENDLY_短兵相接|r
.target Drum Fel
.group
step
.goto Arathi Highlands,74.00,33.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科林法尔|r
.turnin 680 >>交任务: |cRXP_FRIENDLY_真正的威胁|r
.target Korin Fel
.group
step
.goto Arathi Highlands,73.80,33.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_森古|r
.turnin 639 >>交任务: |cRXP_FRIENDLY_激流堡符印|r
.target Zengu
.group
step
#optional
.goto Arathi Highlands,74.40,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨鲁克|r
.accept 687 >>接任务: |cRXP_LOOT_迷失者塞尔杜林|r
.target Zaruk
.isQuestTurnedIn 688
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 30-40
#xprate <1.99
#classic
<< Horde
#name 39-40 Badlands
#next RestedXP部落40-50\40-41 Stranglethorn Vale
step
#xprate <1.99
#season 2
#completewith next
.goto Arathi Highlands,45.46,88.21,50 >>前往Thandol Span大桥进入湿地
step
#xprate <1.99
#season 2
.goto Wetlands,58.320,6.927
.cast 6477 >>在水中输入|cRXP_PICK_Rowboat|r
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
.subzoneskip 308
step
#xprate <1.99
#season 2
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
#completewith next
.goto Arathi Highlands,93.90,71.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illari Duskfeather|r. You will have to fight her after
.complete 79242,1 
.skipgossip 215655,1,1,1
.target Illari Duskfeather
step
#xprate <1.99
#season 2
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
.goto Arathi Highlands,93.90,71.49
>>杀死|cRXP_ENEMY_Illari Duskweather|r。打开她掉在地上的|cRX_PICK_Dropped Pouch|r。为|cRXP_Loot_Illari的密钥|r抢劫它
.collect 212347,1,79242,1 
.skipgossip 215655,1,1,1
.mob Illari Duskfeather
step
#xprate <1.99
#season 2
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>单击地面上的|cRXP_PICK_Illari的织机缓存|r
.goto Arathi Highlands,94.154,69.266
.turnin 79242 >>Turn in No Honor Among Thieves
step
#xprate <1.99
#season 2
.train 431663,1 << Priest
.train 416031,1 << Paladin
.train 401752,1 << Mage
.train 410118,1 << Hunter
.train 410029,1 << Druid
.train 403467,1 << Warrior
.train 426452,1 << Warlock
.train 425102,1 << Rogue
.train 425883,1 << Shaman
>>打开|T135791:0|t的|T133876:0|t[|cRXP_LOOT_Jewel-Enclusted Box |r] << Priest
>>打开|T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r]的|T133876:0|t[| cRXP_LOOT_Jewel-Encrusted Box|r] << Paladin
>>打开|T134939:0|t[|cRXP_FRIENDLY_Spell注释：Brain Freeze |r] << Mage
>>打开|T134419:0|t[|cRXP_FRIENDLY_Rune of the Trapper|r]的|T133876:0|t[| cRXP_LOOT_Jewel-Enclusted Box|r] << Hunter
>>打开|T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse |r]的|T133876:0|t[| cRXP_LOOT_Jewel-Enclusted Box|r] << Druid
>>打开|T134419:0|t的|T133876:0|t[|cRXP_LOOT_Jewel-Encrusted Box |r] << Warrior
>>打开|T134419:0|t[|cRXP_FRIENDLY_Rune of Burning Darkness |r]的|T133876:0|t[| cRXP_LOOT_Jewel-Enclusted Box |r] << Warlock
>>打开|T134419:0|t[|cRXP_FRIENDLY_Rune of毒刃|r]的|T133876:0|t[| cRXP_LOOT_Jewel-Encusted Box|r] << Rogue
>>打开|T134419:0|t[|cRXP_FRIENDLY_Rune of Ancestoral Awakeng|r]的|T133876:0|t[| cRXP_LOOT_Jewel-Encrusted Box |r] << Shaman
.collect 212552,1 << Priest
.collect 212551,1 << Paladin
.collect 208853,1 << Mage
.collect 212549,1 << Hunter
.collect 212548,1 << Druid
.collect 212562,1 << Warrior
.collect 212561,1 << Warlock
.collect 212559,1 << Rogue
.collect 212560,1 << Shaman
.use 212553 
step
#xprate <1.99
#season 2
.train 431663 >>|cRXP_WARN_使用|r|T135791:0|t[|cRXP_FRIENDLY_精神显象|r]|cRXP_WARN_训练|r|T136181:0|t[心尖] << Priest
.train 416031 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Warfare|r]|cRXP_WARN_to train|r|T236246:0|t[战争艺术] << Paladin
.train 401752 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：大脑冻结|r]|cRXP_WARN_训练|r|T236206:0|t[大脑冻结] << Mage
.train 410118 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Trapper|r]|cRXP-WARN_to train|r|T133882:0|t[陷阱发射器] << Hunter
.train 410029 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Eclipse |r]|cRXP _WARN_to train|r|T236151:0|t[Eclipse] << Druid
.train 403467 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Healing Rage|r]|cRXP-WARN_训练|r|T132345:0|t[愤怒的再生] << Warrior
.train 426452 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_燃烧黑暗之旅|r]|cRXP _WARN_to train|r|T135823:0|t[阴影与火焰] << Warlock
.train 425102 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_毒刃之刃|r]|cRXP-WARN_训练|r|T236270:0|t[毒刃] << Rogue
.train 425883 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_祖先觉醒之旅|r]|cRXP_WARN_训练|r|T237571:0|t[祖先觉醒] << Shaman
.use 212552 << Priest
.use 212551 << Paladin
.use 208853 << Mage
.use 212549 << Hunter
.use 212548 << Druid
.use 212562 << Warrior
.use 212561 << Warlock
.use 212559 << Rogue
.use 212560 << Shaman
.itemcount 212552,1 << Priest
.itemcount 212551,1 << Paladin
.itemcount 208853,1 << Mage
.itemcount 212549,1 << Hunter
.itemcount 212548,1 << Druid
.itemcount 212562,1 << Warrior
.itemcount 212561,1 << Warlock
.itemcount 212559,1 << Rogue
.itemcount 212560,1 << Shaman
step
#xprate <1.99
#season 2
.goto 1417,89.536,78.149
.cast 6477 >>在水中输入|cRXP_PICK_Rowboat|r返回Arathi
.subzoneskip 308,1
step
#completewith WetlandsLogoutSkip
.zone Wetlands >>前往: |cRXP_PICK_湿地|r
step
#optional
.abandon 639 >>Abandon Sigil of Strom
.isOnQuest 639
step
#optional
.abandon 652 >>放弃打破基石
.isOnQuest 652
step
#optional
.abandon 673 >>Abandon Foul Magics
.isOnQuest 673
step
#optional
.abandon 680 >>放弃真正的威胁
.isOnQuest 680
step
#optional
.abandon 640 >>放弃破碎的印记
.isOnQuest 640
step
#optional
.abandon 679 >>放弃武器召唤
.isOnQuest 679
step
#optional
.abandon 643 >>放弃阿拉托尔的叹息
.isOnQuest 643
step << Druid
#season 2
.goto Wetlands,36.941,15.157
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grugimdern|r
>>|cRXP_WARN_他会给你一个|r|T134052:0|t[|cRXP_LOOT_Marshroom|r]
.collect 210499,1 
.skipgossip
.target Grugimdern
.train 424718,1
step << Druid
#season 2
#completewith next
.goto Wetlands,31.187,18.328
.cast 426019 >>|cRXP_WARN_使用|r|T134052:0|t[|cRXP_LOOT_Marshroom|r]|cRXP-WARN_to吃掉它|r
.use 210499
.train 424718,1
step << Druid
#season 2
.goto Wetlands,31.187,18.328
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vodyanoi|r
>>|cRXP_WARN_如果你先吃蘑菇，你只能看到|r|cRXP_FRIENDLY_Vodyanoi|r|cRXP_WARN_i|r
.collect 210500,1 
.skipgossip
.target Vodyanoi
.train 424718,1
step << Druid
#season 2
.train 424718 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Stars|r]|cRXP_WARN_to train|r|T135730:0|t[Starsurge]
.use 210500
.itemcount 210500,1
step << Hunter
#season 2
#completewith next
.goto Wetlands,51.914,62.692,30 >>进入Thelgen岩洞
.train 410115,1
step << Hunter
#season 2
.goto Wetlands,47.24,65.34
>>杀死|cRXP_ENEMY_Carrodin|r。为|T134419:0|t[|cRXP_FRONDLY_Rune of the Aspect of the Lion|r]掠夺它
.collect 211205,1 
.mob Carrodin
.train 410115,1
step << Hunter
#season 2
.train 410115 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Aspect of the Lion |r]|cRXP_WARN_to train|r|T132185:0|t[Aspect of the Lion]
.use 211205
.itemcount 211205,1
step << Hunter
#season 2
#completewith next
.goto Wetlands,51.914,62.692,30 >>退出Thelgen岩洞
.train 410115,1
step
#label WetlandsLogoutSkip
.goto Wetlands,53.86,46.42,150,0
.goto Wetlands,63.9,78.6
.zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
.link https://www.youtube.com/watch?v=21CuGto26Mk >>点击此处获取视频教程
>>|cRXP_WARN_在Thelsamar登录后，向西南方向跑到路的另一边躲避警卫。登录时要非常小心不要向前移动，因为这可能会攻击30-40级的后卫。|r
.unitscan Mountaineer Stenn
.unitscan Mountaineer Kamdar
step
#completewith next
.goto Loch Modan,25.34,67.27,0
.goto Loch Modan,24.76,70.59,30,0
.goto Loch Modan,25.10,72.98,30,0
.goto Loch Modan,26.11,75.42,30,0
.goto Loch Modan,23.27,81.30,30,0
.goto Loch Modan,22.82,84.81,30,0
.goto Loch Modan,19.59,87.23,30,0
.goto Loch Modan,20.37,91.08,30,0
.goto Loch Modan,22.33,91.55,30,0
.goto Loch Modan,22.87,94.92,30,0
.goto Badlands,5.73,29.78,0
>>使用快捷方式更快地到达荒地
.zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
.link https://www.youtube.com/watch?v=oNFXup-DCM0 >>点击此处获取视频教程
step
.goto Badlands,3.99,44.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里克|r
.fp Kargath >>获取Kargath飞行路线
.target Gorrik
step
.goto Badlands,2.90,47.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯兰达|r
.vendor >>|cRXP_BUY_出售你的垃圾并在必要时进行维修|r
.target Sranda
step
#optional
.goto Badlands,2.91,45.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高恩|r
.accept 782 >>接任务: |cRXP_LOOT_破碎的联盟|r
.target Gorn
.xp <40,1
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加卡尔|r
.accept 2258 >>接任务: |cRXP_LOOT_荒芜之地的材料|r
.target Jarkal Mossmeld
step
#era
.goto Badlands,6.4,47.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼卡·血痕|r
.accept 1419 >>接任务: |cRXP_LOOT_捕猎山狗|r
.target Neeka Bloodscar
step
#som
.goto Badlands,6.4,47.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼卡·血痕|r
.accept 1419 >>接任务: |cRXP_LOOT_捕猎山狗|r
.target Neeka Bloodscar
step
#ah
.goto Badlands,25.95,44.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 713 >>接任务: |cRXP_WARN_至关重要的冷却剂|r
.turnin 713 >>交任务: |cRXP_FRIENDLY_至关重要的冷却剂|r
.target Lotwil Veriatus
.itemcount 3829,1 
step
#ah
.goto Badlands,25.95,44.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 714 >>接任务: |cRXP_WARN_发条式什么什么仪|r
.turnin 714 >>交任务: |cRXP_FRIENDLY_发条式什么什么仪|r
.target Lotwil Veriatus
.itemcount 4389,1 
.isQuestTurnedIn 713
step
.goto Badlands,25.95,44.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 710 >>接任务: |cRXP_LOOT_研究石元素|r
.target Lotwil Veriatus
step
#completewith badlandsall
>>在探索时，杀死你遇到的任何|cRXP_ENEMY_Buzzards|r和|cRXX_ENEMY_Coyotes|r。掠夺它们的|cRXP_Loot_Fwing|r、|cRXP_Loot_Fizzards|r、| cRXP_OOT_Jawbones|r和|cRXP-Loot_Fangs|r
>>|cRXP_WARN_不要专注于此。你可以稍后完成|r
.complete 703,1 
.complete 2258,1 
.complete 1419,1 
.complete 2258,2 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.loop 25,Badlands,23.41,45.26,21.90,43.22,19.99,43.10,17.76,41.06,16.62,38.29,14.78,37.34,13.48,37.80,13.01,40.09,15.11,41.89,16.94,42.80,19.17,45.74,20.47,48.40,23.12,48.20,23.41,45.26
>>杀死|cRXP_ENEMY_地球元素|r。掠夺它们的|cRXD_Loot_石头碎片|r和|cRXX_Loot_元素碎片|r
.complete 710,1 
.complete 2258,3 
.mob Lesser Rock Elemental
.mob Rock Elemental
.mob Enraged Rock Elemental
.mob Greater Rock Elemental
step
#label badlandsall
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 710 >>交任务: |cRXP_FRIENDLY_研究石元素|r
.accept 711 >>接任务: |cRXP_LOOT_研究石元素|r
.target Lotwil Veriatus
step
#completewith next
>>杀死|cRXP_ENEMY_Coyotes|r。掠夺它们的|cRXD_Loot_Jawbones|r和|cRXT_Loot_Fans|r
.complete 1419,1 
.complete 2258,2 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.loop 25,Badlands,17.24,58.53,15.35,58.51,14.85,60.16,15.00,61.98,16.15,61.84,17.01,61.24,17.24,58.53
>>杀死|cRXP_ENEMY_Buzzards|r。掠夺它们的|cRXX_Loot_Fwing|r
.complete 703,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
step
#completewith badlands3
>>杀死|cRXP_ENEMY_Coyotes|r和|cRXP_ENEMY_Buzzards|r。掠夺它们的|cRXP_Loot_Jawbones|r、|cRXD_Loot_Fans|r和| cRXP_Loot_Gizzards|r
>>|cRXP_WARN_优先排序|r|cRXP_ENEMY_Coyotes|r|cRXP_WARN_over|r| cRXP__ENEMY_Buzzards|r
.complete 1419,1 
.complete 2258,2 
.complete 2258,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.goto Badlands,42.47,52.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加兹里克|r
.vendor >>|cRXP_BUY_出售你的垃圾并在必要时进行维修|r
.target Jazzrik
step
#ah
.goto Badlands,42.39,52.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里格弗兹|r
.accept 705 >>接任务: |cRXP_LOOT_潜水采珍珠|r
.turnin 705 >>交任务: |cRXP_FRIENDLY_潜水采珍珠|r
.target Rigglefuzz
.itemcount 4611,9 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里格弗兹|r, Martek
.accept 703 >>接任务: |cRXP_LOOT_烧烤秃鹰翅膀|r
.turnin 703 >>交任务: |cRXP_FRIENDLY_烧烤秃鹰翅膀|r
.goto Badlands,42.39,52.92
.turnin 1106 >>交任务: |cRXP_FRIENDLY_流放者马特克|r
.accept 1108 >>接任务: |cRXP_LOOT_精铁碎片|r
.goto Badlands,42.21,52.70
.target Rigglefuzz
.target Martek the Exiled
.isOnQuest 1106
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里格弗兹|r, Martek
.accept 703 >>接任务: |cRXP_LOOT_烧烤秃鹰翅膀|r
.turnin 703 >>交任务: |cRXP_FRIENDLY_烧烤秃鹰翅膀|r
.goto Badlands,42.39,52.92
.accept 1108 >>接任务: |cRXP_LOOT_精铁碎片|r
.goto Badlands,42.21,52.70
.target Rigglefuzz
.target Martek the Exiled
.isQuestTurnedIn 1106
step
.goto Badlands,42.39,52.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_里格弗兹|r
.accept 703 >>接任务: |cRXP_LOOT_烧烤秃鹰翅膀|r
.turnin 703 >>交任务: |cRXP_FRIENDLY_烧烤秃鹰翅膀|r
.target Rigglefuzz
step
#era
.goto Badlands,23.2,47.0
.xp 40 >>升级到40级
step
.goto Badlands,2.91,45.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高恩|r
.accept 782 >>接任务: |cRXP_LOOT_破碎的联盟|r
.target Gorn
step
#sticky
#label signofearthBL
>>找到并杀死|cRXP_ENEMY_Boss Tho'grun|r。掠夺他获得|cRXX_Loot_地球符号|r
>>|cRXP_LOOT_老板Tho'grun|r|cRXP_WARN_在五名警卫的陪同下控制区域。|r
.complete 782,1 
.unitscan Boss Tho'grun
.mob Dustbelcher Mystic
.mob Dustbelcher Wyrmhunter
.mob Dustbelcher Shaman
.mob Dustbelcher Mauler
.isOnQuest 782
step
.loop 25,Badlands,36.2,75.1,46.0,78.4,42.8,87.2,36.2,75.1
>>杀死|cRXP_ENEMY_岩石元素|r。掠夺它们的|cRXX_Loot_石板|r
>>|cRXP_ENEMY_岩石元素|r|cRXP_WARN_在这个南部地区很丰富，但之前元素探索的北部地区也有一些|r
.complete 711,1 
.mob Rock Elemental
step
#completewith next
>>杀死|cRXP_ENEMY_Stonevault Troggs|r。掠夺他们的|cRXX_Loot_Indurium薄片|r
.complete 1108,1 
.mob Stonevault Bonesnapper
.mob Stonevault Shaman
.isQuestTurnedIn 1106
step
.goto Badlands,51.38,76.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.turnin 687 >>交任务: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.target Theldurin the Lost
step
.loop 25,Badlands,47.16,69.82,48.38,72.06,49.86,72.12,51.20,71.93,52.41,69.96,52.55,67.79,52.46,65.90,51.00,63.86,49.66,63.97,49.69,66.39,49.78,68.28,48.14,68.30,47.16,69.82
>>杀死|cRXP_ENEMY_Stonevault Troggs|r。掠夺他们的|cRXX_Loot_Indurium薄片|r
.complete 1108,1 
.mob Stonevault Bonesnapper
.mob Stonevault Shaman
.isQuestTurnedIn 1106
step
#label badlands3
.goto Badlands,42.21,52.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek|r
.turnin 1108 >>交任务: |cRXP_FRIENDLY_精铁碎片|r
.timer 15,Indurium RP
.accept 1137 >>接任务: |cRXP_LOOT_回复菲兹尔|r
.target Martek the Exiled
.isQuestTurnedIn 1106
step
#completewith next
>>杀死|cRXP_ENEMY_Buzzards|r。掠夺他们的|cRXX_Loot_Gizzards|r
.complete 2258,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
step
.goto Badlands,44.11,71.87,90,0
.goto Badlands,37.09,69.28,90,0
.goto Badlands,30.28,62.70,90,0
.goto Badlands,25.09,55.10,90,0
.goto Badlands,44.11,71.87,90,0
.goto Badlands,37.09,69.28,90,0
.goto Badlands,30.28,62.70
>>杀死|cRXP_ENEMY_Coyotes|r。掠夺它们的|cRXD_Loot_Jawbones|r和|cRXT_Loot_Fans|r
.complete 1419,1 
.complete 2258,2 
.mob Crag Coyote
.mob Feral Crag Coyote
.mob Rabid Crag Coyote
.mob Elder Crag Coyote
step
.loop 25,Badlands,17.24,58.53,15.35,58.51,14.85,60.16,15.00,61.98,16.15,61.84,17.01,61.24,17.24,58.53
>>杀死|cRXP_ENEMY_Buzzards|r。掠夺他们的|cRXX_Loot_Gizzards|r
.complete 2258,1 
.mob Buzzard
.mob Giant Buzzard
.mob Starving Buzzard
step
#ssf
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 711 >>交任务: |cRXP_FRIENDLY_研究石元素|r
.target Lotwil Veriatus
step
#ah
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 711 >>交任务: |cRXP_FRIENDLY_研究石元素|r
.accept 712 >>接任务: |cRXP_LOOT_研究石元素|r
.target Lotwil Veriatus
step
#ah
.loop 25,Badlands,6.58,75.55,1.23,79.29,2.06,82.38,6.66,81.68,6.58,75.55
>>杀死|cRXP_ENEMY_Greater Rock Elements|r。掠夺他们的|cRXX_Loot_Bracers|r
.complete 712,1 
.mob Greater Rock Elemental
.group 2
step
#ah
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 712 >>交任务: |cRXP_FRIENDLY_研究石元素|r
.target Lotwil Veriatus
.group
step
#ah
.goto Badlands,25.82,44.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien|r
.accept 715 >>接任务: |cRXP_WARN_卢希恩的药水|r
.turnin 715 >>交任务: |cRXP_FRIENDLY_卢希恩的药水|r
.target Lucien Tosselwrench
.itemcount 929,1 
.itemcount 3823,1 
.isQuestTurnedIn 714
step
#ah
.goto Badlands,25.82,44.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien|r
.accept 716 >>接任务: |cRXP_WARN_有备无患|r
.turnin 716 >>交任务: |cRXP_FRIENDLY_有备无患|r
.target Lucien Tosselwrench
.itemcount 2868,1 
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.accept 734 >>接任务: |cRXP_WARN_不祥的感觉|r
.target Lotwil Veriatus
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,25.82,44.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien|r
.turnin 734 >>交任务: |cRXP_FRIENDLY_不祥的感觉|r
.accept 777 >>接任务: |cRXP_WARN_不祥的感觉|r
.target Lucien Tosselwrench
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 777 >>交任务: |cRXP_FRIENDLY_不祥的感觉|r
.accept 778 >>接任务: |cRXP_WARN_不祥的感觉|r
.target Lotwil Veriatus
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
#ah
.goto Badlands,26.09,46.83
>>杀死|cRXP_ENEMY_Fam'Tor守护者|r。掠夺他的|cRXP_Loot_Bindings|r
.complete 778,1 
.unitscan Fam'retor Guardian
.isQuestTurnedIn 714
.isQuestTurnedIn 712
step
.goto Badlands,25.95,44.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Lotwil Veriatus|r
.turnin 778 >>交任务: |cRXP_FRIENDLY_不祥的感觉|r
.target Lotwil Veriatus
.isQuestComplete 778
step
.goto Badlands,6.49,47.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼卡·血痕|r
.turnin 1419 >>交任务: |cRXP_FRIENDLY_捕猎山狗|r
.accept 1420 >>接任务: |cRXP_WARN_向赫格拉姆报到|r
.target Neeka Bloodscar
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加卡尔|r
.turnin 2258 >>交任务: |cRXP_FRIENDLY_荒芜之地的材料|r
.target Jarkal Mossmeld
step
#completewith HSOrg
.destroy 7846 >>摧毁: |cRXP_ENEMY_峭壁山狗的牙齿|r
.itemcount 7846,1
step
#requires signofearthBL
.goto Badlands,2.91,45.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高恩|r
.turnin 782 >>交任务: |cRXP_FRIENDLY_破碎的联盟|r
.target Gorn
.isQuestComplete 782
step << Druid
#completewith DruidTraining7
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9634 >>训练你的职业技能
.target Loganaar
.xp <40,1
.xp >42,1
step << Druid
#label DruidTraining7
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9750 >>训练你的职业技能
.target Loganaar
.xp <42,1
step
#completewith next
.hs >>前往: 奥格瑞玛
.use 6948
step
#label HSOrg
.goto Orgrimmar,54.65,67.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_酒吧老板莫拉格|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Barkeep Morag
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 40-50
#classic
<< Horde
#name 40-41 Stranglethorn Vale
#next RestedXP部落40-50 \ 41-41 Desolace II；RestedXP部落40-50\41-43 Tanaris/Dustwallow
step << Mage
#xprate <1.99
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 8423 >>训练你的职业技能
.target Pephredo
.xp <40,1
.xp >42,1
step << Mage
#xprate <1.99
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10159 >>训练你的职业技能
.target Pephredo
.xp <42,1
step << Mage
#xprate <1.99
.goto Orgrimmar,38.70,85.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与小屋顶部的|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 11417 >>列车|T135744:0|t[入口：Orgrimmar]
.target Thuul
.xp <40,1
step << Shaman
#xprate <1.99
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 8134 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <40,1
.xp >42,1
step << Shaman
#xprate <1.99
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 11314 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <42,1
step << Rogue
#xprate <1.99
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 8624 >>训练你的职业技能
.target Ormok
.xp <40,1
.xp >42,1
step << Rogue
#xprate <1.99
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 6774 >>训练你的职业技能
.target Ormok
.xp <42,1
step << Rogue
#xprate <1.99
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Warlock
#xprate <1.99
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11665 >>训练你的职业技能
.target Mirket
.xp <40,1
.xp >42,1
step << Warlock
#xprate <1.99
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 6789 >>训练你的职业技能
.target Mirket
.xp <42,1
step << Warlock
#xprate <1.99
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul
step << Hunter
#xprate <1.99
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14324 >>训练你的职业技能
.target Ormak Grimshot
.xp <40,1
.xp >42,1
step << Hunter
#xprate <1.99
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14289 >>训练你的职业技能
.target Ormak Grimshot
.xp <42,1
step << Hunter
#optional
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
.train 14925 >>训练你的宠物法术
.target Xao'tsu
.xp <40,1
.xp >42,1
step << Hunter
#xprate <1.99
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
.train 24561 >>训练你的宠物法术
.target Xao'tsu
.xp <42,1
step << Priest
#xprate <1.99
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 8106 >>训练你的职业技能
.target Ur'kyo
.xp <40,1
.xp >42,1
step << Priest
#xprate <1.99
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10898 >>训练你的职业技能
.target Ur'kyo
.xp <42,1
step << Warrior
#xprate <1.99
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11608 >>训练你的职业技能
.target Grezz Ragefist
.xp <40,1
.xp >42,1
step << Warrior
#xprate <1.99
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11550 >>训练你的职业技能
.target Grezz Ragefist
.xp <42,1
step
#xprate <1.99
.goto Orgrimmar,75.18,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.accept 2981 >>接任务: |cRXP_LOOT_菲拉斯的危机|r
.target Belgrom Rockmaul
step << Orc !Warlock
#optional
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r, |cRXP_FRIENDLY_奥古纳罗|r
.train 825 >>火车|T136103:0|t[骑狼]
.vendor >>|cRXP_BUY_BUY a|r|T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro
step << Priest
#season 2
.train 425314,1
>>|cRXP_WARN_在Stranglethorn Vale用|r|T132299:0|t[微妙大师]|cRXP_WARN_rune和|r|T338666:0|t[Jani's Charm]|cRXP_WARN_rinket到|r|T133644:0|t[Pick Pocket]|cRX P_WARN_any|cRX _ ENEMY_Bloodscap Troll|r为|r|T23746:0|t[TMysterious Troll Scroll]|cR_WARN_找到一个流氓。法师必须使用|r|T135933:0|t[理解符]|cRXP_WARN_来解密它才能成为|T134938:0|t[|cRXP-LOOT_解密巨魔卷轴|r]|r
>>|cRXP_WARN_或者，从拍卖行购买一个|r|T23746:0|t[神秘巨魔卷轴]|r|cRXP_WARN_f并让法师解密，或者购买已经|T134938:0|t[|cRXP-OOT_Deciphered Troll Scroll|r]|r
.use 216880 >>|cRXP_WARN_使用|T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r]开始任务|r
>>|cRXP_WARN_你也可以找一位牧师与你分享任务|r
.collect 216880,1
.disablecheckbox
.accept 79731 >>Accept The Troll Scroll
step << Troll
#optional
#completewith next
.subzone 367 >>前往森津村
step << Troll
#optional
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r, |cRXP_FRIENDLY_祖尼尔|r
.train 10861 >>火车|T136103:0|t[猛禽骑乘]
.vendor >>|cRXP_BUY_BUY a|r|T132253:0|t[|cFF0070FF猛禽|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step << Priest
#season 2
.train 425314,1
#completewith next
+|cRXP_WARN_在乘坐齐柏林飞艇之前，请确保您有两次活动跑步|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs|r
step
#xprate >1.99
#optional
#completewith RFDTurnins2X
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
.dungeon RFD
step
#xprate >1.99
#optional
.goto Undercity,74.05,33.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andrew|r
.turnin 3341 >>交任务: |cRXP_FRIENDLY_寒冰之王|r
.target Andrew Brownell
.isQuestComplete 3341
.dungeon RFD
step
#xprate >1.99
#label RFDTurnins2X
#optional
.goto Undercity,56.24,92.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦里玛萨斯|r
.turnin 6521 >>交任务: |cRXP_FRIENDLY_邪恶的盟友|r
.target Varimathras
.isQuestComplete 6521
.dungeon RFD
step
#xprate >1.99
#optional
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Orgrimmar
.zoneskip Durotar
step
#completewith ZeptoUC3
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Orgrimmar,1
step
#optional
.abandon 782 >>放弃破裂的联盟
.isOnQuest 782
step
#optional
.abandon 709 >>放弃末日的解决方案
.isOnQuest 709
step
#optional
.abandon 2202 >>放弃Uldaman试剂运行
.isOnQuest 2202
step
#optional
.abandon 2418 >>Abandon Power Stones
.isOnQuest 2418
step
#label ZeptoUC3
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
step
.goto Stranglethorn Vale,31.49,29.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板苏贝克|r
.home >>将你的炉石设置为Grom'Gol大本营
.target Innkeeper Thulbek
step
.goto Stranglethorn Vale,32.12,29.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.accept 572 >>接任务: |cRXP_LOOT_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.turnin 1240 >>交任务: |cRXP_FRIENDLY_巨魔巫医|r
.target Kin'weelay
.isQuestTurnedIn 1238
step
.goto Stranglethorn Vale,32.10,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼姆布亚|r
.accept 584 >>接任务: |cRXP_LOOT_血顶之颅|r
.target Nimboya
step
.goto Stranglethorn Vale,32.20,27.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.accept 598 >>接任务: |cRXP_LOOT_裂骨项链|r
.target Kin'weelay
step << Priest
#season 2
.train 425314,1
.goto Stranglethorn Vale,31.00,42.50,60,0
.loop 25,Stranglethorn Vale,32.99,38.06,31.42,40.17,30.14,43.06,28.36,43.47,28.53,45.96,30.61,44.54,31.80,43.08,33.24,40.38,33.85,38.45,32.99,38.06
>>杀死|cRXP_ENEMY_Jungle Stalkers |r。掠夺他们的|cRXX_Loot_Features|r
.complete 196,1 
.complete 572,1 
.mob Jungle Stalker
step << Priest
#season 2
.train 425314,1
.goto Stranglethorn Vale,28.961,61.931
>>单击|cRXP_PICK_圣泉|r。为|T134712:0|t[|cRXP_Loot_圣泉水|r]掠夺它
>>|cRXP_WARN_你可能需要杀死守卫在|r|cRXP_PICK_圣泉前的|cRXP_ENEMY_Lord Sakrasis|r（45级稀有）|r
.collect 737,1 
.mob Lord Sakrasis
step
#completewith next
.goto Stranglethorn Vale,23.82,10.78,200 >>祖尔昆达遗址之旅
step
.goto Stranglethorn Vale,23.52,9.53
>>杀死|cRXP_ENEMY_Nezzliok the Dire|r。掠夺他的|cRXX_Loot_Head|r
.complete 584,2 
.unitscan Nezzliok the Dire
step
.goto Stranglethorn Vale,23.44,8.14
>>杀死|cRXP_ENEMY_Gan'zulah|r。掠夺他的|cRXP_Loot_Head|r
.complete 584,1 
.unitscan Gan'zulah
step << Priest
#season 2
.train 425314,1
.goto Stranglethorn Vale,23.569,7.955
.cast 3591 >>|cRXP_WARN_使用|r|T134712:0|t[|cRXP_LOOT_圣泉水|r]|cRXP-WARN_at小喷泉|r
.use 737
.mob Gan'zulah
step << Priest
#season 2
.train 425314,1
.goto Stranglethorn Vale,23.569,7.955
>>单击出现的|cRXP_PICK_Fount|r。为|T135975:0|t|cRXP_Loot_[被监禁的恶意预言]|r抢劫它
.collect 213142,1
step << Priest
#season 2
.train 425314 >>|cRXP_WARN_使用|r|T135975:0|t|cRXP_LOOT_[监禁恶意的预测]|r|cRXP-WARN_训练|r|T237563:0|t[分散]
.use 213142
.itemcount 213142,1
step
#completewith next
.goto Stranglethorn Vale,32.2,27.8,80 >>返回Grom'gol大本营
step
.goto Stranglethorn Vale,32.22,27.60
>>单击|cRXP_PICK_鼓泡釜|r
.turnin 584 >>交任务: |cRXP_FRIENDLY_血顶之颅|r
.accept 585 >>接任务: |cRXP_LOOT_奈兹里奥克|r
step
.goto Stranglethorn Vale,31.00,42.50,60,0
.loop 25,Stranglethorn Vale,32.99,38.06,31.42,40.17,30.14,43.06,28.36,43.47,28.53,45.96,30.61,44.54,31.80,43.08,33.24,40.38,33.85,38.45,32.99,38.06
>>杀死|cRXP_ENEMY_Jungle Stalkers |r。掠夺他们的|cRXX_Loot_Features|r
.complete 196,1 
.complete 572,1 
.mob Jungle Stalker
step << Warlock
#season 2
.train 416017,1
.goto Stranglethorn Vale,31.2,47.4
>>单击地面上的|cRXP_ENEMY_Reckless Warlock|r。掠夺他|T236297:0|t[硫磺雕刻]
>>|cRXP_WARN_这是一个罕见的敌人，它可能不存在|r
.collect 213583,1
.unitscan Reckless Warlock
.mob Reckless Warlock
step << Warlock
#season 2
.train 416017,1
>>|cRXP_WARN_Cast|r|T135818:0|t[Hellfire]|cRXP_WARN_to使自己的生命值低于70%。之后|r|T236297:0|t[硫磺雕刻]|cRXP_WARN_将变换为|r|T134419:0|t[|cRXP-FRIENDLY_邪恶之路|r]
.collect 213102,1 
.itemcount 213583,1
step << Warlock
#season 2
.train 416017 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Wickness |r]|cRXP_WARN_学习|r|T236295:0|t[邪恶之舞]
.use 416017
.itemcount 213102,1
step
#era
.loop 25,Stranglethorn Vale,40.36,43.2941.04,43.73,41.93,44.73,41.47,43.26,42.05,42.55,42.29,41.48,41.55,41.43,41.18,41.93,40.36,43.29
>>杀死|cRXP_ENEMY_Venture Co.妖精|r。掠夺他们的|cRXX_Loot_水晶|r
.complete 600,1 
.mob Venture Co. Surveyor
.mob Venture Co. Foreman
.mob Venture Co. Strip Miner
.mob Venture Co. Tinkerer
.mob Foreman Cozzle
step << Mage
#season 2
.train 415948,1
.train 401762,1
#completewith SkullNecks
>>杀死|cRXP_ENEMY_Skullsplitter神秘人|r。为|T134939:0|t[|cRXP_Loot_Spell Notes:PELFRB STOLLOTS]|r和|T1349399:0|t[|cRXX_Loot_Speel Notes:TROFF IRESTBOL|r]掠夺它们
>>|cRXP_WARN_注：您稍后需要从|cRXP_FRIENDLY_Reagent供应商|r处购买|r|T135933:0|t[理解符]|cRXP-buy_才能学习符文|r
.collect 213127,1
.collect 217161,1
.mob Skullsplitter Mystic
.itemcount 211779,<1 
step << Mage
#season 2
.train 415948,1
.train 401762,1
#completewith SkullNecks
>>杀死|cRXP_ENEMY_Skullsplitter神秘人|r。为|T134939:0|t[|cRXP_Loot_Spell Notes:PELFRB STOLLOTS]|r和|T1349399:0|t[|cRXX_Loot_Speel Notes:TROFF IRESTBOL|r]掠夺它们
.collect 213127,1
.collect 217161,1
.mob Skullsplitter Mystic
.itemcount 211779,1 
step
#completewith SkullP
>>杀死|cRXP_ENEMY_Skullsplitter巨魔|r。掠夺它们的|cRXP_Loot_TASK|r和|cRXP-Loot_Neckles|r
.complete 209,1 
.complete 598,1 
.mob Skullsplitter Mystic
.mob Skullsplitter Warrior
.mob Skullsplitter Axe Thrower
step
.goto Stranglethorn Vale,42.20,36.10
>>掠夺|cRXP_PICK_Ziata'jai奖杯头骨|r以获得其|cRXP_Loot_Trophy|r
.complete 585,2 
step
.goto Stranglethorn Vale,47.60,39.60
>>掠夺|cRXP_PICK_Zul'Mamwe奖杯头骨|r的|cRXP_Loot_Trophy|r
.complete 585,3 
step
#label SkullP
.goto Stranglethorn Vale,46.10,32.30
>>掠夺|cRXP_PICK_Balia'mah奖杯头骨|r以获得其|cRXP_Loot_Trophy|r
.complete 585,1 
step
#label SkullNecks
.loop 25,Stranglethorn Vale,42.13,36.29,41.89,35.93,42.45,35.03,42.47,33.35,43.47,33.25,45.06,32.39,45.51,31.66,46.42,31.98,47.19,30.85,47.11,32.54,47.13,34.31,45.23,34.47,44.00,35.53,43.44,37.92,42.13,36.29
>>完成击杀|cRXP_ENEMY_Skullsplitter巨魔|r。掠夺它们的|cRXP_Loot_TASK|r和|cRXP-Loot_Nocklaces|r
.complete 209,1 
.complete 598,1 
.mob Skullsplitter Mystic
.mob Skullsplitter Warrior
.mob Skullsplitter Axe Thrower
step << Mage
#season 2
.train 415948,1
.train 401762,1
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22,50,0
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22
.goto Stranglethorn Vale,42.07,36.02,0
.goto Stranglethorn Vale,47.43,40.20,0
.goto Stranglethorn Vale,45.78,42.27,0
>>|cRXP_WARN_注：您稍后需要从|cRXP_FRIENDLY_Reagent供应商|r处购买|r|T135933:0|t[理解符]|cRXP-buy_才能学习符文|r
.collect 213127,1
.collect 217161,1
.mob Skullsplitter Mystic
.itemcount 211779,<1 
step << Mage
#season 2
.train 415948,1
.train 401762,1
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22,50,0
.goto Stranglethorn Vale,42.07,36.02,50,0
.goto Stranglethorn Vale,46.21,32.22
.goto Stranglethorn Vale,42.07,36.02,0
.goto Stranglethorn Vale,47.43,40.20,0
.goto Stranglethorn Vale,45.78,42.27,0
>>杀死|cRXP_ENEMY_Skullsplitter神秘人|r。为|T134939:0|t[|cRXP_Loot_Spell Notes:PELFRB STOLLOTS]|r和|T1349399:0|t[|cRXX_Loot_Speel Notes:TROFF IRESTBOL|r]掠夺它们
.collect 213127,1
.collect 217161,1
.mob Skullsplitter Mystic
.itemcount 211779,1 
step << Mage
#season 2
.train 415948 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_LOOT_Spell注释：PELFRB STOLLOTS|r]|cRXP _WARN_to train|r|T135780:0|t[Spellfrost Bolt]
.train 401762 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_LOOT_拼写说明：TROFF IRESTBOL|r]|cRXP-WARN_to train|r|T236217:0|t[霜丝螺栓]
.use 213127
.use 217161
.itemcount 211779,1 
step
.goto Stranglethorn Vale,38.0,32.4,50,0
.goto Stranglethorn Vale,38.8,28.4,50,0
.goto Stranglethorn Vale,40.4,24.4,50,0
.goto Stranglethorn Vale,40.4,22.8,50,0
.goto Stranglethorn Vale,39.4,21.6,50,0
.goto Stranglethorn Vale,39.8,16.6,50,0
.goto Stranglethorn Vale,42.6,17.2,50,0
.line Stranglethorn Vale,38.0,32.4,38.8,28.4,40.4,24.4,40.4,22.8,39.4,21.6,39.8,16.6,42.6,17.2
>>沿着河流杀死|cRXP_ENEMY_Snapjaw Crocollisk|r。掠夺他们的|cRXP_Loot_Skin|r
.complete 577,1 
.mob Snapjaw Crocolisk
step
.loop 25,Stranglethorn Vale,47.26,28.58,49.61,23.98,48.95,19.87,47.26,23.98
.goto Stranglethorn Vale,48.95,19.87,70,0
>>杀死|cRXP_ENEMY_Bhag'thera|r。为他的|cRXX_Loot_Fang而掠夺他|r
>>|cRXP_WARN_在与|r|cRXP_ENEMY_Bhag'thera|r|cRXP_WARN_交战之前，清除|r| cRXP__ENEMY_Shadowmaw Panthers|r| c RXP_WARN_的区域以避免添加|r
.complete 193,1 
.mob Shadowmaw Panther
.unitscan Bhag'thera
step
#era
#completewith next
.hs >>Grom'gol大本营之心
.use 6948
step
#era
.goto Stranglethorn Vale,31.48,29.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板苏贝克|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Thulbek
step << Hunter
#era
.goto Stranglethorn Vale,31.55,27.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤索克|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2600,669,1 
.target Uthok
.xp >40,1
step << Hunter
#era
.goto Stranglethorn Vale,31.55,27.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤索克|r
>>|cRXP_BUY_从他那里购买|r|T135661:0|t[Jagged Arrows]|cRXP_Buy_|r
.collect 11285,2600,669,1 
.target Uthok
.xp <40,1
step
#era
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.turnin 598 >>交任务: |cRXP_FRIENDLY_裂骨项链|r
.turnin 585 >>交任务: |cRXP_FRIENDLY_奈兹里奥克|r
.accept 1261 >>接任务: |cRXP_LOOT_玛尔格的嘱托|r
.target Kin'weelay
step
#era
.goto Stranglethorn Vale,32.10,29.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.turnin 572 >>交任务: |cRXP_FRIENDLY_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Hemet, |cRXP_FRIENDLY_埃尔加丁爵士|r
.turnin 196 >>交任务: |cRXP_FRIENDLY_猎龙|r
.accept 197 >>接任务: |cRXP_LOOT_猎龙|r
.goto Stranglethorn Vale,35.66,10.81
.turnin 193 >>交任务: |cRXP_FRIENDLY_猎豹|r
.goto Stranglethorn Vale,35.55,10.55
step << Priest
#season 2
.isQuestComplete 79731
.goto Stranglethorn Vale,35.658,10.808
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 79731 >>Turn in The Troll Scroll
.target Hemet Nesingwary
step
#som
#completewith next
.hs >>Grom'gol大本营之心
.use 6948
step
#som
.goto Stranglethorn Vale,31.48,29.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板苏贝克|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Thulbek
step << Hunter
#som
.goto Stranglethorn Vale,31.55,27.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤索克|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,2600,669,1 
.target Uthok
.xp >40,1
step << Hunter
#som
.goto Stranglethorn Vale,31.55,27.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤索克|r
>>|cRXP_BUY_从他那里购买|r|T135661:0|t[Jagged Arrows]|cRXP_Buy_|r
.collect 11285,2600,669,1 
.target Uthok
.xp <40,1
step
#som
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.turnin 598 >>交任务: |cRXP_FRIENDLY_裂骨项链|r
.turnin 585 >>交任务: |cRXP_FRIENDLY_奈兹里奥克|r
.accept 1261 >>接任务: |cRXP_LOOT_玛尔格的嘱托|r
.target Kin'weelay
step
#som
.goto Stranglethorn Vale,32.10,29.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.turnin 572 >>交任务: |cRXP_FRIENDLY_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
#era
#completewith NothingButTruth
.goto Stranglethorn Vale,39.30,6.49,60,0
.goto Stranglethorn Vale,40.63,3.12,50 >>前往: |cRXP_PICK_暮色森林|r
.zoneskip Duskwood
step << Warrior/Mage
#season 2
#completewith next
.goto Duskwood,23.630,34.888,15 >>进入东北地穴
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior/Mage
#season 2
.goto Duskwood,26.115,30.863
>>打开|cRXP_PICK_Dusty Coffer|r。为|T2529996:0|t[|cRXP-Loot_Decrepit Phylactery|r]打开它
.collect 210568,1 
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior/Mage
#season 2
#completewith next
.goto Duskwood,15.602,38.621,15 >>离开这个墓穴，向下进入西部墓穴
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior/Mage
#season 2
#completewith next
.goto Duskwood,18.140,37.940
.cast 426182 >>|cRXP_WARN_使用|r|T2529996:0|t[|cRXP_LOOT_Decrepit Phylactery|r]|cRXP-WARN_on the |cRX_PICK_Slumbering Bones|r on the王座|r
.use 210568 >>|cRXP_WARN_这将召唤一个25级精英|r|cRXP_ENEMY_觉醒的巫妖|r
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior/Mage
#season 2
.goto Duskwood,18.140,37.940
>>杀死|cRXP_ENEMY_觉醒的巫妖|r。为|T134419:0|t[|cRXP-FRIENDLY_Rune of Flagellation|r]掠夺它 << Warrior
>>杀死|cRXP_ENEMY_觉醒的巫妖|r。为|T134939:0|t掠夺它[|cRXP-FRIENDLY_Spell注释：质量再生|r] << Mage
>>|cRXP_WARN_如果有其他人在那里杀死|cRXP_ENEMY_Awakend Lich|r，你也可以帮助他们，你仍然可以掠夺它|r
.collect 210569,1 << Warrior 
.collect 211514,1 << Mage 
.mob Awakened Lich
.train 403480,1 << Warrior
.train 415939,1 << Mage
step << Warrior
#season 2
.train 416050 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Flagellation|r]|cRXP_WARN_to train|r|T133495:0|t[Flagellation]
.use 210569
.itemcount 210569,1
.train 403480,1
step << Mage
#season 2
.train 416050 >>|cRXP_WARN_使用|r|T134939:0|t[|cRXP_FRIENDLY_Spell注释：质量再生|r]|cRXP _WARN_to train|r|T132870:0|t[质量再生]
.use 211514
.itemcount 211514,1
.train 415939,1
step
#era
#label NothingButTruth
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_亡灵哨兵莱度斯|r, |cRXP_FRIENDLY_药剂师法奥斯丁|r
.accept 1372 >>接任务: |cRXP_WARN_真言药水|r
.goto Duskwood,87.81,35.62
.turnin 1372 >>交任务: |cRXP_FRIENDLY_真言药水|r
.goto Duskwood,87.45,35.25
.target Deathstalker Zraedus
.target Apothecary Faustin
step
#era
#completewith next
.goto Duskwood,88.47,41.00,50 >>前往: |cRXP_PICK_逆风小径|r
.zoneskip Deadwind Pass
step
#era
.goto Deadwind Pass,48.02,34.60,60,0
.goto Deadwind Pass,58.43,41.51,50,0
.zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
.zoneskip Swamp of Sorrows
step
#era
#completewith next
.goto Swamp of Sorrows,13.27,67.96,0
.loop 25,Swamp of Sorrows,12.02,60.27,12.00,67.29,15.12,65.50,16.54,61.12,15.37,55.45,12.19,57.13,12.02,60.27
>>杀死|cRXP_ENEMY_青少年乳清|r和|cRXX_ENEMY_Dreaming乳清|r。掠夺他们的|cRXD_Loot_ Dream Dust|r
>>|cRXP_WARN_不要专注于此。一次杀死所有的幼崽。你稍后会完成|r
.complete 1116,1 
.mob Dreaming Whelp
.mob Adolescent Whelp
step
#era
.goto Swamp of Sorrows,44.70,57.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达尔|r
.accept 698 >>接任务: |cRXP_WARN_缺乏补给|r
.target Dar
step
#era
.goto Swamp of Sorrows,46.10,54.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷依克|r
.fp Stonard >>获取Stonard飞行路线
.target Breyk
step
#era
.goto Swamp of Sorrows,45.78,52.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏塔佐尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Thultazor
step
#era
.goto Swamp of Sorrows,45.38,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔塔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Rartar
step
#xprate <1.99
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫格拉姆|r, |cRXP_FRIENDLY_费泽鲁尔|r
.turnin 1420 >>交任务: |cRXP_FRIENDLY_向赫格拉姆报到|r
.goto Swamp of Sorrows,47.80,55.20
.accept 1424 >>接任务: |cRXP_WARN_泪水之池|r
.goto Swamp of Sorrows,47.80,55.20
.target Helgrum the Swift
.target Fel'zerul
.isOnQuest 1420
step
#xprate >1.99
#era
.goto Swamp of Sorrows,47.80,55.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费泽鲁尔|r
.accept 1424 >>接任务: |cRXP_WARN_泪水之池|r
.target Fel'zerul
step << Hunter
#era
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧格鲁姆|r
.train 13553 >>训练你的职业技能
.target Ogrom
.xp <42,1
.xp >44,1
step << Hunter
#optional
#era
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧格鲁姆|r
.train 14285 >>训练你的职业技能
.target Ogrom
.xp <44,1
step << Hunter
#era
.goto Swamp of Sorrows,47.35,52.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗科尔|r
.train 24561 >>训练你的宠物法术
.target Grokor
.xp <42,1
step << Warlock
#era
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡托什|r
.train 6789 >>训练你的职业技能
.target Kartosh
.xp <42,1
.xp >44,1
step << Warlock
#optional
#era
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡托什|r
.train 11671 >>训练你的职业技能
.target Kartosh
.xp <44,1
step << Warlock
#era
.goto Swamp of Sorrows,48.59,55.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.vendor >>购买任何你能负担得起的宠物升级
.target Greshka
step << Shaman
#era
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.train 11314 >>训练你的职业技能
.target Haromm
.xp <42,1
.xp >44,1
step << Shaman
#optional
#era
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.train 16315 >>训练你的职业技能
.target Haromm
.xp <44,1
step << Warrior
#era
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马尔罗什|r
.train 11550 >>训练你的职业技能
.target Malosh
.xp <42,1
.xp >44,1
step << Warrior
#optional
#era
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马尔罗什|r
.train 11584 >>训练你的职业技能
.target Malosh
.xp <44,1
step
#era
#completewith GalenStrongbox
>>杀死|cRXP_ENEMY_Sawtothe Crocolis|r和|cRXX_ENEMY_ Sawtoth Snappers|r。掠夺它们的|cRXD_Loot_Sawtooth Flanks|r
.complete 698,1 
.mob Sawtooth Crocolisk
.mob Sawtooth Snapper
step
#era
.line Swamp of Sorrows,32.24,36.70,33.22,39.96,33.92,44.25,36.71,46.36,37.92,43.17,38.29,39.13,38.86,35.61,40.34,34.40,40.86,32.29,42.43,32.11,45.77,36.75,46.68,38.55,48.95,38.71,53.41,38.98,55.48,37.42,56.06,36.05
.goto Swamp of Sorrows,56.06,36.05,40,0
.goto Swamp of Sorrows,55.48,37.42,40,0
.goto Swamp of Sorrows,53.41,38.98,40,0
.goto Swamp of Sorrows,48.95,38.71,40,0
.goto Swamp of Sorrows,46.68,38.55,40,0
.goto Swamp of Sorrows,45.77,36.75,40,0
.goto Swamp of Sorrows,42.43,32.11,40,0
.goto Swamp of Sorrows,40.86,32.29,40,0
.goto Swamp of Sorrows,40.34,34.40,40,0
.goto Swamp of Sorrows,38.86,35.61,40,0
.goto Swamp of Sorrows,38.29,39.13,40,0
.goto Swamp of Sorrows,37.92,43.17,40,0
.goto Swamp of Sorrows,36.71,46.36,40,0
.goto Swamp of Sorrows,33.92,44.25,40,0
.goto Swamp of Sorrows,33.22,39.96,40,0
.goto Swamp of Sorrows,32.24,36.70
>>杀死|cRXP_ENEMY_Noboru的棒|r。掠夺他|T133485:0|t[|cRXX_Loot_Noboru的棍|r]。使用它开始任务
>>|cRXP_ENEMY_Noboru the Cudgel|r|cRXP_WARN_trols the zone的顶部中心|r
.collect 6196,1,1392 
.accept 1392 >>接任务: |cRXP_WARN_木棒诺博鲁|r
.unitscan Noboru the Cudgel
step
#era
.goto Swamp of Sorrows,25.98,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛格图尔|r
.accept 1389 >>接任务: |cRXP_WARN_德莱尼水晶|r
.turnin 1392 >>交任务: |cRXP_FRIENDLY_木棒诺博鲁|r
.target Magtoor
step
#xprate <1.5
#era
#completewith GalenE
>>杀死|cRXP_ENEMY_Ongeku|r。掠夺他的|cRXX_Loot_Shard|r
>>|cRXP_WARN_在Fallow Sanctuary到处都可以找到Ongeku|r
.complete 1373,1 
.unitscan Ongeku
.isOnQuest 1373
step
#era
#completewith GalenE
>>将蓝色|cRXP_Loot_Draenethyst晶体|r掠夺到地上
.complete 1389,1 
.target Galen Goodward
step
#era
#completewith next
+|cRXP_WARN_下一个任务可能很难，要格外小心|r
step
#era
#label Galen
.goto Swamp of Sorrows,65.46,18.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Galen|r to start his escort
>>|cRXP_WARN_出发前，尽可能将暴徒提前清除到盖伦西南部|r
.accept 1393 >>接任务: |cRXP_WARN_加林的逃亡|r
.target Galen Goodward
step
#era
#label GalenE
>>护送|cRXP_FRIENDLY_Galen Goodward |r安全离开Fallow Sanctuary
.complete 1393,1 
.target Galen Goodward
step
#era
#completewith next
>>将蓝色|cRXP_Loot_Draenethyst晶体|r掠夺到地上
.complete 1389,1 
.target Galen Goodward
step
#xprate <1.5
#era
.goto Swamp of Sorrows,62.60,22.86,-1
.goto Swamp of Sorrows,64.74,22.46,-1
>>杀死|cRXP_ENEMY_Ongeku|r。掠夺他的|cRXX_Loot_Shard|r
>>|cRXP_WARN_在Fallow Sanctuary到处都可以找到Ongeku|r
.complete 1373,1 
.unitscan Ongeku
.isOnQuest 1373
step
#era
.loop 25,Swamp of Sorrows,58.31,25.47,61.69,22.38,64.52,19.68,63.88,24.38,58.31,25.47
>>完成掠夺地面上的蓝色|cRXP_LOOT_Draenethyst水晶|r
.complete 1389,1 
step
#era
#label GalenStrongbox
.goto Swamp of Sorrows,47.80,39.75
>>单击|cRXP_PICK_Galen的Strongbox |r
.turnin 1393 >>交任务: |cRXP_FRIENDLY_加林的逃亡|r
step
#era
.goto Swamp of Sorrows,52.44,37.14,60,0
.goto Swamp of Sorrows,56.71,35.60,60,0
.goto Swamp of Sorrows,60.47,31.60,60,0
.goto Swamp of Sorrows,63.96,32.23,60,0
.goto Swamp of Sorrows,52.44,37.14
>>杀死|cRXP_ENEMY_Sawtothe Crocolis|r和|cRXX_ENEMY_ Sawtoth Snappers|r。掠夺它们的|cRXD_Loot_Sawtooth Flanks|r
.complete 698,1 
.mob Sawtooth Crocolisk
.mob Sawtooth Snapper
step
#era
.goto Swamp of Sorrows,81.40,81.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托克卡尔|r
.turnin 698 >>交任务: |cRXP_FRIENDLY_缺乏补给|r
.accept 699 >>接任务: |cRXP_WARN_缺乏补给|r
.target Tok'Kar
step
#era
.goto Swamp of Sorrows,75.44,60.41,50,0
.goto Swamp of Sorrows,71.14,61.44,50,0
.goto Swamp of Sorrows,65.36,57.19,50,0
.goto Swamp of Sorrows,65.99,47.10,50,0
.goto Eastern Kingdoms,53.87,79.26,50,0
.goto Swamp of Sorrows,70.57,46.04,50,0
.goto Swamp of Sorrows,75.03,50.83,50,0
.goto Swamp of Sorrows,75.44,60.41
>>偷走散落在泪池岸边或泪池底部的|cRXP_Loot_Atal'ai文物
>>|cRXP_WARN_工件有不同的模型。打开菜单，单击“系统”，然后单击“图形”，然后将“环境杂波”滑块（最底部）调整为0|r
.complete 1424,1 
step
#era
.goto Swamp of Sorrows,48.00,54.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回Stonard中的|cRXP_FRIENDLY_Fel'zerul|r
.turnin 1424 >>交任务: |cRXP_FRIENDLY_泪水之池|r
.target Fel'zerul
step
#era
.goto Swamp of Sorrows,25.90,31.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛格图尔|r
.turnin 1392 >>交任务: |cRXP_FRIENDLY_木棒诺博鲁|r
.turnin 1389 >>交任务: |cRXP_FRIENDLY_德莱尼水晶|r
.target Magtoor
step
#era
.loop 25,Swamp of Sorrows,12.02,60.27,12.00,67.29,15.12,65.50,16.54,61.12,15.37,55.45,12.19,57.13,12.02,60.27
>>完成杀死|cRXP_ENEMY_青少年Whelps|r和|cRXX_ENEMY_Dreaming Whelps| r。掠夺他们的|cRXD_Loot_ Dream Dust|r
.complete 1116,1 
.mob Dreaming Whelp
.mob Adolescent Whelp
step << Warlock
#season 2
#completewith next
.goto Swamp of Sorrows,4.81,31.38
.goto Redridge Mountains,21.51,57.20,30 >>在洞穴中跳到木杆上进行登出跳跃
.zoneskip Redridge Mountains
.train 416015,1

step << Warlock
#season 2
.goto Redridge Mountains,74.0,82.2,60,0
.goto Redridge Mountains,77.6,86.6,50,0
.goto Redridge Mountains,76.8,82.2
>>杀死|cRXP_ENEMY_焚烧炉Gar'im|r|cRXP-WARN_（23级精英）|r。为|T134419:0|t[|cRXP_FRIENDLY_焚烧炉之旅|r]掠夺他
.collect 211477,1
.unitscan Incinerator Gar'im
.train 416015,1
step << Warlock
#season 2
.use 211477
.itemcount 211477,1
.train 416015 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_焚烧炉调整|r]| cRXP-WARN_列车|r|T135789:0|t[焚烧]
step
#era
#completewith next
.hs >>Grom'gol大本营之心
.use 6948
step
#era
.goto Stranglethorn Vale,31.48,29.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板苏贝克|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Thulbek
step
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯塔|r
.fly Booty Bay >>飞到Booty Bay
.target Thysta
step
#xprate <1.99
.goto Stranglethorn Vale,27.10,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 669 >>交任务: |cRXP_FRIENDLY_水下宝藏|r
.target Fleet Master Seahorn
step
#era
.goto Stranglethorn Vale,27.10,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r on the inn's ground floor
.turnin 600 >>交任务: |cRXP_FRIENDLY_风险投资公司|r
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,26.95,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科博克|r
.turnin 209 >>交任务: |cRXP_FRIENDLY_劈颅巨魔的獠牙|r
.target Kebok
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 6774 >>训练你的职业技能
.target Ian Strom
.xp <42,1
.xp >44,1
step << Rogue
#optional
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 11341 >>训练你的职业技能
.target Ian Strom
.xp <44,1
step
.goto Stranglethorn Vale,27.10,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t退出到三楼阳台，然后与|cRXP_FRIENDLY_Baron Revilgaz|r通话
.accept 1183 >>接任务: |cRXP_LOOT_地精赞助商|r
.target Baron Revilgaz
step
#era
.goto Stranglethorn Vale,26.99,77.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Krazek|r
.turnin 1116 >>交任务: |cRXP_FRIENDLY_梦境之尘|r
.accept 1117 >>接任务: |cRXP_WARN_地精的谣言|r
.accept 2864 >>接任务: |cRXP_LOOT_特兰雷克|r
.target Krazek
step
#som
.goto Stranglethorn Vale,26.99,77.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Krazek|r
.accept 1117 >>接任务: |cRXP_WARN_地精的谣言|r
.accept 2864 >>接任务: |cRXP_LOOT_特兰雷克|r
.target Krazek
step
.goto Stranglethorn Vale,27.70,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.accept 2872 >>接任务: |cRXP_LOOT_斯杜雷的债务|r
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.turnin 577 >>交任务: |cRXP_FRIENDLY_收集鳄鱼皮|r
.accept 628 >>接任务: |cRXP_LOOT_刨花皮靴|r
.target Drizzlik
step
.goto Stranglethorn Vale,28.14,78.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Glyx交谈|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134832:0|t[更强的治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Glyx Brewright
step
.goto Stranglethorn Vale,26.55,76.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_掘金者维兹尼克|r
.bankdeposit 2725,2728,2735,2730,2742,2732,2748,2751,2734,2740,2749,2745,2738,2744,2750 >>将您的所有|T134332:0|t[Green Hills of Stranglethorn Pages]存入银行
.target Viznik Goldgrubber
step
#completewith next
.goto Stranglethorn Vale,25.90,73.14,40 >>跑到Booty Bay码头
step
.goto Stranglethorn Vale,25.76,73.04
.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
.goto The Barrens,62.40,37.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦伯克·米希瑞克斯|r
.turnin 1270 >>交任务: |cRXP_FRIENDLY_伊格纳兹的逃亡|r
.target Mebok Mizzyrix
.isQuestComplete 1270
step
#era
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Camp Taurajo >>飞往陶拉霍营地
.target Bragok
step << !Mage
#som
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Bragok
.zoneskip Thunder Bluff
step << Mage
#som
.cast 3566 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
step
#era
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.home >>将您的炉石设置为陶拉霍营地
.target Innkeeper Byula
step << !Mage
#era
.goto The Barrens,44.45,59.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Omusa Thunderhorn
.zoneskip Thunder Bluff
step << Mage
#era
.cast 3566 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
step << Priest
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10892 >>训练你的职业技能
.target Malakai Cross
.xp <42,1
.xp >44,1
step << Priest
#optional
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10927 >>训练你的职业技能
.target Malakai Cross
.xp <44,1
step << Mage
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10159 >>训练你的职业技能
.target Thurston Xane
.xp <42,1
.xp >44,1
step << Mage
#optional
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10185 >>训练你的职业技能
.target Thurston Xane
.xp <44,1
step
.goto Thunder Bluff,54.00,80.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫萨恩|r
.turnin 1276 >>交任务: |cRXP_FRIENDLY_黑色盾牌|r
.target Mosarn
.isQuestComplete 1276
step << skip
.goto Thunder Bluff,61.40,80.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.turnin 1136 >>交任务: |cRXP_FRIENDLY_霜喉雪人|r
.accept 1205 >>接任务: |cRXP_LOOT_死沼巨鳄|r
.target Melor Stonehoof
.isQuestComplete 1136
step
.goto Thunder Bluff,61.40,80.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.accept 1205 >>接任务: |cRXP_LOOT_死沼巨鳄|r
.target Melor Stonehoof
step << !Undead 
.goto Thunder Bluff,34.42,46.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage|r
.turnin 1049 >>接任务: |cRXP_WARN_堕落者纲要|r
.target Sage
.dungeon SM
.isQuestComplete 1049
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9750 >>训练你的职业技能
.target Turak Runetotem
.xp <42,1
.xp >44,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9752 >>训练你的职业技能
.target Turak Runetotem
.xp <44,1
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 13553 >>训练你的职业技能
.target Urek Thunderhorn
.xp <42,1
.xp >44,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14285 >>训练你的职业技能
.target Urek Thunderhorn
.xp <44,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24561 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <42,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11550 >>训练你的职业技能
.target Ker Ragetotem
.xp <42,1
.xp >44,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11584 >>训练你的职业技能
.target Ker Ragetotem
.xp <44,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 11314 >>训练你的职业技能
.target Tigor Skychaser
.xp <42,1
.xp >44,1
step << Shaman
#optional
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 16315 >>训练你的职业技能
.target Tigor Skychaser
.xp <44,1
step << Tauren
#optional
#completewith next
.subzone 222 >>前往血蹄村
step << Tauren
#optional
.goto Mulgore,47.64,58.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r, |cRXP_FRIENDLY_祖尼尔|r
.train 132245 >>火车|T136103:0|t[Kodo Riding]
.vendor >>|cRXP_BUY_BUY a|r|T132253:0|t[|cFF0070FFKodo|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kar Stormsinger
.target Harb Clawhoof
]])
RXPGuides.RegisterGuide([[
#version 20
#xprate <1.5
#group RestedXP Horde 40-50
#classic
<< Horde
#name 41-41 Desolace II
#next 41-43 Tanaris/Dustwallow
#somname 41-41 Thunder Bluff
step
#era
#completewith next
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Shadowprey Village >>飞往Shadowprey村
.target Tal
.zoneskip Desolace
step
#era
.goto Desolace,25.80,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Taiga|r
.accept 5581 >>接任务: |cRXP_WARN_燃烧军团的传送门|r
.target Taiga Wisemane
step
#era
.goto Desolace,36.30,79.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1373 >>交任务: |cRXP_FRIENDLY_盎格库尔|r
.accept 1374 >>接任务: |cRXP_WARN_杰恩可汗|r
.target Uthek the Wise
step
#era
.goto Desolace,47.80,61.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍恩尼兹|r
.accept 6134 >>接任务: |cRXP_WARN_幽灵电浆|r
.target Hornizz Brimbuzzle
step
#era
.goto Desolace,52.20,53.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛乌林·碎骨|r
.accept 1484 >>接任务: |cRXP_LOOT_堕落者|r
.target Maurin Bonesplitter
step
#era
.goto Desolace,52.60,54.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔卡塔·钢刃|r
.turnin 1484 >>交任务: |cRXP_FRIENDLY_堕落者|r
.accept 1488 >>接任务: |cRXP_LOOT_堕落者|r
.target Takata Steelblade
step
#era
#completewith KhanJ
.goto Desolace,53.36,79.47,0
>>单击|cRXP_PICK_Devon门户|r，然后杀死|cRXP_ENEMY_Devon门户守护者|r
>>|cRXP_WARN_不要专注于这一步；你可以稍后完成|r
.complete 5581,1 
.mob Demon Portal Guardian
step
#era
#label Jugkar
.goto Desolace,55.90,77.80
>>杀死|cRXP_ENEMY_Jugkar Grim'rod|r
.complete 1488,2 
.unitscan Jugkar Grim'rod
step
#era
.goto Desolace,55.90,77.80
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，必要时用冰霜电击将其放风筝|r << Shaman
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，你可能需要使用报复来杀死他 << Warrior
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，在他的致命一击之间用你的恐惧来疗伤 << Priest
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，他很容易独唱 << Hunter
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，使用冷却。如果需要的话，可以用凿子绑风筝和绷带 << Rogue
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，他是可怕的，应该很容易得到安慰。 << Warlock
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，你可以用霜新星和霜螺栓把他放在风筝周围 << Mage
>>杀死|cRXP_ENEMY_Lord Azrethoc|r，你可以很容易地以熊的形式杀死他，也可以用缠绕的树根装备他 << Druid
*He patrols all around the edges of Mannoroc Cavern
.complete 1488,1 
.unitscan Lord Azrethoc
step
#era
#label KhanJ
.goto Desolace,66.30,80.10
>>杀死|cRXP_ENEMY_Khan Jehn|r。掠夺他的|cRXX_Loot_Head |r
.complete 1374,1 
.mob Khan Jehn
step << Warlock
#season 2
.train 426467,1
.train 19028,3 
.goto Desolace,81.2,79.7
.cast 434869 >>|cRXP_WARN_点击祭坛召唤|r|cRXP_ENEMY_Seductress Ceeyna|r|cRXP_WARN_but请确保使用|r|T136121:0|t[阴影病房]|cRXP-WARN_，|r|T136190:0|t[牺牲]|cRXP-WARN_and|r|T236160:0|t[Soul Link]|r|C RXP_WARN_beforehand|r|CFFFF0000，因为你在通道中会受到很多伤害，无法治愈|r
step << Warlock
#season 2
.train 426467,1
.train 19028,1 
.goto Desolace,81.2,79.7
.cast 434869 >>|cRXP_WARN_点击祭坛召唤|r|cRXP_ENEMY_Seductress Ceeyna|r|cRXP_WARN_but确保使用|r|T136121:0|t[阴影病房]|cRXP-WARN_and|r|T136190:0|t[牺牲]|cRX XP_WARN_beforehand|r |cFFFF0000，因为你在通道中会受到很多伤害，而且无法治愈|r
step << Warlock
#season 2
.train 426467,1
.goto Desolace,81.2,79.7
>>杀死|cRXP_ENEMY_Seductress Ceeyna |r。掠夺她|T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowflames|r]
.collect 213101,1
.mob Seductress Ceeyna
step << Warlock
#season 2
.train 426467 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowflames|r]|cRXP_WARN_to learn|r|T236302:0|t[Shadowflame]
.use 213101
.itemcount 213101,1
step
#era
.goto Desolace,64.00,91.70
.use 15848 >>前往骨谷，然后使用|T132763:0|t[鬼磁坑]
>>杀死|cRXP_ENEMY_Magrami Spectres|r。掠夺他们的|cRXX_Loot_HGhost-o-pri质|r
.complete 6134,2 
.mob Magrami Spectre
step
#era
.goto Desolace,53.36,79.47
>>单击|cRXP_PICK_Devon门户|r，然后杀死|cRXP_ENEMY_Devon门户守护者|r
.complete 5581,1 
.mob Demon Portal Guardian
step
#era
.goto Desolace,36.30,79.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_智者乌泰克|r
.turnin 1374 >>交任务: |cRXP_FRIENDLY_杰恩可汗|r
.target Uthek the Wise
step
#era
.goto Desolace,25.81,68.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泰迦·慧鬃|r
.turnin 5581 >>交任务: |cRXP_FRIENDLY_燃烧军团的传送门|r
.target Taiga Wisemane
step
#era
#softcore
#completewith next
>>|cRXP_WARN_小心，因为这个任务很艰巨|r
step
#era
#softcore
.goto Desolace,33.90,53.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅丽萨|r
.accept 6132 >>接任务: |cRXP_WARN_救我出去！|r
.target Melizza Brimbuzzle
step
#era
#softcore
>>护送|cRXP_FRIENDLY_Melizza|r到安全地带
>>|cRXP_WARN_在灼热的时候会产生两波暴民。第一波的暴民不会攻击|r|cRXP_FRIENDLY_Melizza|r|cRXP_WARN_。第二波有5个怪物，所以使用所有冷却|r
.complete 6132,1
step
#era
#softcore
.goto Desolace,47.80,61.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍恩尼兹|r
.turnin 6132 >>交任务: |cRXP_FRIENDLY_救我出去！|r
.turnin 6134 >>交任务: |cRXP_FRIENDLY_幽灵电浆|r
.target Hornizz Brimbuzzle
.isQuestComplete 6132
step
#era
.goto Desolace,47.83,61.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍恩尼兹|r
.turnin 6134 >>交任务: |cRXP_FRIENDLY_幽灵电浆|r
.target Hornizz Brimbuzzle
step
#era
.goto Desolace,52.60,54.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔卡塔·钢刃|r
.turnin 1488 >>交任务: |cRXP_FRIENDLY_堕落者|r
.target Takata Steelblade
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
>>在|cRXP_ENEMY_Flesh Picker|r上使用|T134325:0|t[Bug Catching Net]
.goto Desolace,51.2,59.9
.use 213562
.collect 213567,1 
.mob Flesh Picker
step
#era
#completewith next
.hs >>Hearth返回Taurajo营地
.use 6948
step
#era
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Byula
step
#era
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Tanaris >>前往: 塔纳利斯
.target Omusa Thunderhorn
.zoneskip Tanaris
step
#som
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Tanaris >>前往: 塔纳利斯
.target Tal
.zoneskip Tanaris
step
#optional
.abandon 1380 >>Abandon Khan Hratha
.isOnQuest 1380
step
#optional
.abandon 6132 >>放弃，让我离开这里！
.isOnQuest 6132
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 40-50
#classic
<< Horde
#name 41-43 Tanaris/Dustwallow
#next 43-44 Feralas
#somname 41-42 Tanaris/Dustwallow
step
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Tanaris >>前往: 塔纳利斯
.target Tal
.zoneskip Thunder Bluff,1
.zoneskip Mulgore,1
step
.goto Tanaris,51.60,26.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 2864 >>交任务: |cRXP_FRIENDLY_特兰雷克|r
.target Tran'rek
step
.goto Tanaris,51.80,26.90
>>单击|cRXP_PICK_Wanted海报|r
.accept 2781 >>接任务: |cRXP_LOOT_通缉：卡利夫·斯科比斯汀|r
step
.goto Tanaris,52.50,27.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.home >>将您的炉石设置为Gadgetzan
.target Innkeeper Fizzgrimble
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Luglunket|r
.turnin 243 >>交任务: |cRXP_FRIENDLY_进入沙漠|r
.accept 379 >>接任务: |cRXP_LOOT_口渴的比格维兹|r
.accept 1690 >>接任务: |cRXP_LOOT_废土的公正|r
.goto Tanaris,52.46,28.52
.accept 1707 >>接任务: |cRXP_LOOT_收集水袋|r
.goto Tanaris,52.49,28.44
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket
.isQuestTurnedIn 238 
step
#optional
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Luglunket|r
.accept 1690 >>接任务: |cRXP_LOOT_废土的公正|r
.goto Tanaris,52.46,28.52
.accept 1707 >>接任务: |cRXP_LOOT_收集水袋|r
.goto Tanaris,52.49,28.44
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 992 >>接任务: |cRXP_LOOT_加基森水业公司|r
.target Senior Surveyor Fizzledowser
step
#completewith ScreecherSpiritPickup
.goto Tanaris,59.36,24.75,60,0
.goto Tanaris,60.46,23.42,60,0
>>在前往Steamweidle港的途中，在Noonshade废墟中杀死|cRXP_ENEMY_Wastwark土匪|r和|cRXX_ENEMY_wastwark盗贼|r。抢走他们的|cRXD_Loot_水袋|r
.complete 1690,1 
.complete 1690,2 
.collect 8483,10 
.mob Wastewander Bandit
.mob Wastewander Thief
.isQuestTurnedIn 238
step
#completewith next
.goto Tanaris,59.36,24.75,60,0
.goto Tanaris,60.46,23.42,60,0
>>在前往Steamweidle港的途中，在Noonshade废墟中杀死|cRXP_ENEMY_Wastwark土匪|r和|cRXX_ENEMY_wastwark盗贼|r。抢走他们的|cRXD_Loot_水袋|r
.complete 1690,1 
.complete 1690,2 
.collect 8483,5 
.mob Wastewander Bandit
.mob Wastewander Thief
step
#label ScreecherSpiritPickup
.goto Tanaris,67.00,22.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.accept 3520 >>接任务: |cRXP_LOOT_尖啸者的灵魂|r
.target Yeh'kinya
step << Hunter
.goto Tanaris,67.01,21.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加贝|r
>>|cRXP_BUY_从他那里购买|r|T135661:0|t[Jagged Arrows]|cRXP_Buy_|r
.collect 11285,2600,1690,1 
.target Jabbey
step
.goto Tanaris,67.10,24.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯杜雷|r
.turnin 2872 >>交任务: |cRXP_FRIENDLY_斯杜雷的债务|r
.target Stoley
step
.goto Tanaris,64.22,29.16,60,0
.goto Tanaris,63.62,31.32,60,0
.goto Tanaris,63.24,32.84,60,0
.goto Tanaris,59.36,24.75,60,0
.goto Tanaris,60.46,23.42,60,0
.goto Tanaris,63.62,31.32
>>杀死|cRXP_ENEMY_Wastwark土匪|r和|cRXX_ENEMY_wastwark盗贼|r。掠夺他们的|cRXP_Loot_水袋|r
.complete 1690,1 
.complete 1690,2 
.collect 8483,10 
.mob Wastewander Bandit
.mob Wastewander Thief
.isQuestTurnedIn 238
step
.goto Tanaris,64.22,29.16,60,0
.goto Tanaris,63.62,31.32,60,0
.goto Tanaris,63.24,32.84,60,0
.goto Tanaris,59.36,24.75,60,0
.goto Tanaris,60.46,23.42,60,0
.goto Tanaris,63.62,31.32
>>杀死|cRXP_ENEMY_Wastwark土匪|r和|cRXX_ENEMY_wastwark盗贼|r。掠夺他们的|cRXP_Loot_水袋|r
.complete 1690,1 
.complete 1690,2 
.collect 8483,5 
.mob Wastewander Bandit
.mob Wastewander Thief
step << Shaman
#completewith next
.hs >>心灵或星体召回Gadgetzan
.use 6948
step << Shaman
.goto Tanaris,52.50,27.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Fizzgrimble
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Luglunket|r
.turnin 379 >>交任务: |cRXP_FRIENDLY_口渴的比格维兹|r
.turnin 1690 >>交任务: |cRXP_FRIENDLY_废土的公正|r
.accept 1691 >>接任务: |cRXP_LOOT_废土的公正|r
.goto Tanaris,52.46,28.52
.turnin 1707 >>交任务: |cRXP_FRIENDLY_收集水袋|r
.goto Tanaris,52.49,28.44
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket
.isQuestTurnedIn 238
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r and |cRXP_FRIENDLY_Luglunket|r
.turnin 1690 >>交任务: |cRXP_FRIENDLY_废土的公正|r
.accept 1691 >>接任务: |cRXP_LOOT_废土的公正|r
.goto Tanaris,52.46,28.52
.turnin 1707 >>交任务: |cRXP_FRIENDLY_收集水袋|r
.goto Tanaris,52.49,28.44
.target Chief Engineer Bilgewhizzle
.target Spigot Operator Luglunket
step << !Shaman
.goto Tanaris,52.50,27.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Fizzgrimble
step
#som
#sticky
.destroy 8524 >>摧毁: |cRXP_ENEMY_发电器4711-FTZ型|r
step
#completewith next
.goto Tanaris,50.87,23.09,30,0
.goto Thousand Needles,75.49,97.58,30,0
.zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
step
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.turnin 1117 >>交任务: |cRXP_FRIENDLY_地精的谣言|r
.target Kravel Koalbeard
step
.goto Thousand Needles,78.07,77.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲兹尔|r
.turnin 1137 >>交任务: |cRXP_FRIENDLY_回复菲兹尔|r
.target Fizzle Brassbolts
.isQuestTurnedIn 1108
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.turnin 1183 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1186 >>接任务: |cRXP_LOOT_第十八个驾驶员|r
.accept 1190 >>接任务: |cRXP_LOOT_跟上节奏|r
.target Pozzik
.isQuestTurnedIn 1108
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.turnin 1183 >>交任务: |cRXP_FRIENDLY_地精赞助商|r
.accept 1186 >>接任务: |cRXP_LOOT_第十八个驾驶员|r
.target Pozzik
step
.goto Thousand Needles,80.32,76.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1186 >>交任务: |cRXP_FRIENDLY_第十八个驾驶员|r
.accept 1187 >>接任务: |cRXP_LOOT_拉泽瑞克的调整|r
.target Razzeric
step
#completewith next
.goto Thousand Needles,79.81,77.02
>>与|cRXP_FRIENDLY_Zamek|r交谈，创造一种消遣
.turnin 1191 >>交任务: |cRXP_FRIENDLY_扎米克的困扰|r
.target Zamek
.timer 30,Zamek's Distraction RP
step
.goto Thousand Needles,77.21,77.41
>>在金属小屋内点击|cRXP_PICK_Rizzle的无人值守计划|r
.turnin 1190 >>交任务: |cRXP_FRIENDLY_跟上节奏|r
.accept 1194 >>接任务: |cRXP_LOOT_瑞兹尔的图表|r
.isQuestTurnedIn 1108
step
#era
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1118 >>接任务: |cRXP_WARN_返回藏宝海湾|r
.target Kravel Koalbeard
step
.goto Thousand Needles,80.18,75.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普兹克|r
.turnin 1194 >>交任务: |cRXP_FRIENDLY_瑞兹尔的图表|r
.target Pozzik
.isQuestTurnedIn 1108
step
#completewith FlyDWM1
.hs >>Gadgetzan之炉
.use 6948
.cooldown item,6948,>0
step
#completewith next
.goto Thousand Needles,75.44,97.37,40,0
.goto Tanaris,51.60,25.44,100 >>前往: |cRXP_PICK_塔纳利斯|r
.cooldown item,6948,<0
step
#label FlyDWM1
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Brackenwall >>Fly to Dustwallow Marsh
.target Bulkrek Ragefist
step
.goto Dustwallow Marsh,36.30,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫格穆洛克大王|r
.accept 1166 >>接任务: |cRXP_LOOT_莫格穆洛克的任务|r
.target Overlord Mok'Morokk
step
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉兹辛比|r
.target Draz'Zilb
.accept 1169 >>接任务: |cRXP_LOOT_群龙之首|r
step
.goto Dustwallow Marsh,37.30,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔格|r
.accept 1168 >>接任务: |cRXP_LOOT_黑龙军团|r
.target Tharg
step
#completewith MokSnuff
.line Dustwallow Marsh,50.57,52.82,50.51,55.20,49.15,57.14,48.01,55.61,47.24,57.70,45.94,61.21,44.69,62.28,45.94,61.21,47.24,57.70,48.01,55.61,47.24,54.53,46.08,54.38,45.72,53.06,46.08,54.38,47.24,54.53,47.15,51.45
>>找到并杀死|cRXP_ENEMY_Deadmire|r。他是一个在该地区周围的水洼中巡逻的白鳄鱼。掠夺他的|cRXP_Loot_Toth|r
.complete 1205,1 
.unitscan Deadmire
step
.goto Dustwallow Marsh,54.10,56.50
>>在坠毁的齐柏林飞船附近的地面上抢夺|cRXP_PICK_Crate|r，用于|cRXP-Loot_Seaforium助推器|r
.complete 1187,1 
step
.loop 25,Dustwallow Marsh,56.51,61.15,55.46,61.60,54.80,62.41,54.31,63.24,54.68,64.41,56.10,65.14,56.52,63.62,56.81,62.56,57.30,60.20
>>在海滩上杀死|cRXP_ENEMY_Muckshell Makruras|r。为|cRXP_Loot_Pendint|r掠夺它们
.complete 1261,1 
.isOnQuest 1261
.mob Muckshell Razorclaw
.mob Muckshell Clacker
.mob Muckshell Scrabbler
.mob Muckshell Pincer
.mob Muckshell Snapclaw
.unitscan Lord Angler
step
#completewith Dragondeez
>>杀死该区域的|cRXP_ENEMY_Firemane Dragonkins|r
.complete 1168,1 
.complete 1168,2 
.complete 1168,3 
.mob Firemane Scout
.mob Firemane Ash Tail
.mob Firemane Scalebane
step
#completewith Firemanemobs
>>杀死你在该区域边界上看到的|cRXP_ENEMY_Whelps|r。掠夺他们的|cRXP_Loot_Tongues|r和|cRXP-Loot_Thearts|r
.complete 1169,1 
.complete 1169,2 
.mob Searing Whelp
.mob Searing Hatchling
step
#label MokSnuff
.goto Dustwallow Marsh,44.50,66.00
>>将|cRXP_PICK_Barrel|r在地上掠夺|cRXP_Loot_Mok'Morokk的Snuff|r
.complete 1166,1 
step
.goto Dustwallow Marsh,38.70,65.60
>>将|cRXP_PICK_Vase|r从地上偷走|cRXP_Loot_Mok'Morokk的Grog|r。之后进入洞穴
.complete 1166,2 
step
#label Dragondeez
.goto Dustwallow Marsh,36.60,69.50
>>偷走洞穴后面的|cRXP_PICK_Chest|r，获得|cRXP_Loot_Mok'Morokk的Strongbox|r。
>>当你在里面的时候杀死|cRXP_ENEMY_Firemane Scalebane|r
.complete 1166,3 
.complete 1168,3 
.mob Firemane Scalebane
step
#label Firemanemobs
.goto Dustwallow Marsh,39.08,65.92,80,0
.goto Dustwallow Marsh,42.81,66.35,80,0
.goto Dustwallow Marsh,44.63,66.16,80,0
.goto Dustwallow Marsh,39.08,65.92
>>完成杀死该区域的|cRXP_ENEMY_Firemane Dragonkins|r
.complete 1168,1 
.complete 1168,2 
.complete 1168,3 
.mob Firemane Scout
.mob Firemane Ash Tail
.mob Firemane Scalebane
step
.goto Dustwallow Marsh,48.10,80.85,60,0
.goto Dustwallow Marsh,47.09,82.39,60,0
.goto Dustwallow Marsh,45.60,82.28,60,0
.goto Dustwallow Marsh,43.99,81.35,60,0
.goto Dustwallow Marsh,42.31,80.73,60,0
.goto Dustwallow Marsh,42.08,78.40,60,0
.goto Dustwallow Marsh,42.45,75.89,60,0
.goto Dustwallow Marsh,45.60,82.28
>>完成杀戮|cRXP_ENEMY_Whelps|r。掠夺他们的|cRXP_Loot_Tongues|r和|cRXP-Loot_Hears|r
.complete 1169,1 
.complete 1169,2 
.mob Searing Whelp
.mob Searing Hatchling
step
#completewith next
.line Dustwallow Marsh,50.57,52.82,50.51,55.20,49.15,57.14,48.01,55.61,47.24,57.70,45.94,61.21,44.69,62.28,45.94,61.21,47.24,57.70,48.01,55.61,47.24,54.53,46.08,54.38,45.72,53.06,46.08,54.38,47.24,54.53,47.15,51.45
>>找到并杀死|cRXP_ENEMY_Deadmire|r。他是一个在该地区周围的水洼中巡逻的白鳄鱼。掠夺他的|cRXP_Loot_Toth|r
.complete 1205,1 
.unitscan Deadmire
.dungeon ZF
step
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔贝萨|r
.accept 2846 >>接任务: |cRXP_WARN_深渊皇冠|r
.target Tabetha
.dungeon ZF
step
.line Dustwallow Marsh,50.57,52.82,50.51,55.20,49.15,57.14,48.01,55.61,47.24,57.70,45.94,61.21,44.69,62.28,45.94,61.21,47.24,57.70,48.01,55.61,47.24,54.53,46.08,54.38,45.72,53.06,46.08,54.38,47.24,54.53,47.15,51.45
.goto Dustwallow Marsh,50.57,52.82,50,0
.goto Dustwallow Marsh,50.51,55.20,50,0
.goto Dustwallow Marsh,49.15,57.14,50,0
.goto Dustwallow Marsh,48.01,55.61,50,0
.goto Dustwallow Marsh,47.24,57.70,50,0
.goto Dustwallow Marsh,45.94,61.21,50,0
.goto Dustwallow Marsh,44.69,62.28,50,0
.goto Dustwallow Marsh,45.94,61.21,50,0
.goto Dustwallow Marsh,47.24,57.70,50,0
.goto Dustwallow Marsh,47.24,54.53,50,0
.goto Dustwallow Marsh,46.08,54.38,50,0
.goto Dustwallow Marsh,45.72,53.06,50,0
.goto Dustwallow Marsh,46.08,54.38,50,0
.goto Dustwallow Marsh,47.73,53.18,50,0
.goto Dustwallow Marsh,47.15,51.45,50,0
.goto Dustwallow Marsh,50.57,52.82
>>找到并杀死|cRXP_ENEMY_Deadmire|r。他是一个在该地区周围的水洼中巡逻的白鳄鱼。掠夺他的|cRXP_Loot_Toth|r
.complete 1205,1 
.unitscan Deadmire
step
#completewith next
.goto Dustwallow Marsh,36.64,31.72,120 >>前往Brackenwall村
step
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉兹辛比|r
.turnin 1169 >>交任务: |cRXP_FRIENDLY_群龙之首|r
.target Draz'Zilb
step
.goto Dustwallow Marsh,36.30,31.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫格穆洛克大王|r
.turnin 1166 >>交任务: |cRXP_FRIENDLY_莫格穆洛克的任务|r
.target Overlord Mok'Morokk
step
.goto Dustwallow Marsh,37.30,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔格|r
.turnin 1168 >>交任务: |cRXP_FRIENDLY_黑龙军团|r
.target Tharg
step
.goto Dustwallow Marsh,35.30,30.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.turnin 1261 >>交任务: |cRXP_FRIENDLY_玛尔格的嘱托|r
.accept 1262 >>接任务: |cRXP_LOOT_向佐尔报告|r
.target Nazeer Bloodpike
.isQuestComplete 1261
step
.goto Dustwallow Marsh,35.30,30.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳泽尔·血矛|r
.accept 1262 >>接任务: |cRXP_LOOT_向佐尔报告|r
.target Nazeer Bloodpike
.isQuestTurnedIn 1261
step
#completewith next
.hs >>Gadgetzan之炉
.use 6948
step
.goto Tanaris,52.50,27.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Fizzgrimble
step
.goto Tanaris,51.80,26.90
>>单击|cRXP_PICK_Wanted海报|r
.accept 2781 >>接任务: |cRXP_LOOT_通缉：卡利夫·斯科比斯汀|r
step
#era
.use 8524 >>使用|T134459:0|t[|cRXP_LOOT_Model 4711-FTZ电源|r]启动任务
.accept 654 >>接任务: |cRXP_LOOT_塔纳利斯的样本|r
.isQuestTurnedIn 238
.itemcount 4711,1
step
#era
#completewith next
>>杀死|cRXP_ENEMY_Basilisk|r、|cRXD_ENEMY_Hyenas|r和|cRXP_ENEMY_Scorpids|r。掠夺它们的|cRXP_Loot_Samples|r
>>使用|cRXP_LOOT_Samples|r对其进行测试
*|cRXP_WARN_Do not delete any untested samples|r
.complete 654,1 
.complete 654,2 
.complete 654,3 
.use 9437
.use 9439
.use 9442
.mob Glasshide Basilisk
.mob Glasshide Gazer
.mob Glasshide Petrifier
.mob Starving Blisterpaw
.mob Blisterpaw Hyena
.mob Murderous Blisterpaw
.mob Rabid Blisterpaw
.mob Scorpid Tail Lasher
.mob Scorpid Hunter
.mob Scorpid Dunestalker
.mob Scorpid Duneburrower
.isQuestTurnedIn 238
step
.goto Tanaris,39.10,29.30
.use 8584 >>池中的|T134867:0|t[未连接的Dowsing Widget]。在不攻击他们的情况下逃离两个繁殖的暴民。
.complete 992,1 
step
#era
.goto Tanaris,55.94,32.72,90,0
.goto Tanaris,53.75,35.37,90,0
.goto Tanaris,51.13,35.41,90,0
.goto Tanaris,50.18,32.78,90,0
.goto Tanaris,47.99,33.20,90,0
.goto Tanaris,45.47,32.72,90,0
.goto Tanaris,42.52,32.90,90,0
.goto Tanaris,41.23,33.18,90,0
.goto Tanaris,38.30,32.55,90,0
.goto Tanaris,47.99,33.20
>>杀死|cRXP_ENEMY_Basilisk|r、|cRXD_ENEMY_Hyenas|r和|cRXP_ENEMY_Scorpids|r。掠夺它们的|cRXP_Loot_Samples|r
>>使用|cRXP_LOOT_Samples|r对其进行测试
*|cRXP_WARN_Do not delete any untested samples|r
.complete 654,1 
.complete 654,2 
.complete 654,3 
.use 9437
.use 9439
.use 9442
.mob Glasshide Basilisk
.mob Glasshide Gazer
.mob Glasshide Petrifier
.mob Starving Blisterpaw
.mob Blisterpaw Hyena
.mob Murderous Blisterpaw
.mob Rabid Blisterpaw
.mob Scorpid Tail Lasher
.mob Scorpid Hunter
.mob Scorpid Dunestalker
.mob Scorpid Duneburrower
.isQuestTurnedIn 238
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 992 >>交任务: |cRXP_FRIENDLY_加基森水业公司|r
.target Senior Surveyor Fizzledowser
step
#era
.goto Tanaris,52.40,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
.turnin 654 >>交任务: |cRXP_FRIENDLY_塔纳利斯的样本|r
.target Chief Engineer Bilgewhizzle
.isQuestTurnedIn 238
step
#completewith next
.line Tanaris,61.91,35.57,61.91,34.80,62.93,33.28,63.92,31.73,63.93,33.36,63.43,34.33,62.47,35.20,61.91,35.57,60.95,36.69,60.33,37.27,59.56,38.41,58.86,39.41,59.56,38.41,60.33,37.27,60.95,36.69,61.91,35.57,62.47,35.20,63.35,37.42,62.21,37.99,60.84,38.59,62.21,37.99,63.35,37.42,64.21,36.43,64.64,35.28,64.30,33.66,64.18,32.42,63.94,31.73
>>杀死|cRXP_ENEMY_Caliph Scorpasting|r。掠夺他的|cRXP_Loot_Head |r
>>|cRXP_WARN_小心；他身上带着两个偷加的|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step
.goto Tanaris,58.75,36.42,80,0
.goto Tanaris,60.10,37.07,80,0
.goto Tanaris,60.84,38.91,80,0
.goto Tanaris,61.04,32.76,80,0
.goto Tanaris,61.84,34.95,80,0
.goto Tanaris,63.48,37.90,80,0
.goto Tanaris,63.80,39.94,80,0
.goto Tanaris,65.10,39.50,80,0
.goto Tanaris,65.36,36.67,80,0
.goto Tanaris,61.04,32.76
>>杀死|cRXP_ENEMY_Wastravelt盗贼|r、|cRXD_ENEMY_Assassins|r和|cRXP_ENEMY_Shadow法师|r
.complete 1691,1 
.complete 1691,2 
.complete 1691,3 
.mob Wastewander Rogue
.mob Wastewander Assassin
.mob Wastewander Shadow Mage
step
.line Tanaris,61.91,35.57,61.91,34.80,62.93,33.28,63.92,31.73,63.93,33.36,63.43,34.33,62.47,35.20,61.91,35.57,60.95,36.69,60.33,37.27,59.56,38.41,58.86,39.41,59.56,38.41,60.33,37.27,60.95,36.69,61.91,35.57,62.47,35.20,63.35,37.42,62.21,37.99,60.84,38.59,62.21,37.99,63.35,37.42,64.21,36.43,64.64,35.28,64.30,33.66,64.18,32.42,63.94,31.73
.goto Tanaris,61.09,35.99,60,0
.goto Tanaris,61.91,34.80,60,0
.goto Tanaris,62.93,33.28,60,0
.goto Tanaris,63.92,31.73,60,0
.goto Tanaris,63.93,33.36,60,0
.goto Tanaris,63.43,34.33,60,0
.goto Tanaris,62.47,35.20,60,0
.goto Tanaris,61.91,35.57,60,0
.goto Tanaris,60.95,36.69,60,0
.goto Tanaris,60.33,37.27,60,0
.goto Tanaris,59.56,38.41,60,0
.goto Tanaris,58.86,39.41,60,0
.goto Tanaris,59.56,38.41,60,0
.goto Tanaris,60.33,37.27,60,0
.goto Tanaris,60.95,36.69,60,0
.goto Tanaris,61.91,35.57,60,0
.goto Tanaris,62.47,35.20,60,0
.goto Tanaris,63.35,37.42,60,0
.goto Tanaris,62.21,37.99,60,0
.goto Tanaris,60.84,38.59,60,0
.goto Tanaris,62.21,37.99,60,0
.goto Tanaris,63.35,37.42,60,0
.goto Tanaris,64.21,36.43,60,0
.goto Tanaris,64.64,35.28,60,0
.goto Tanaris,64.30,33.66,60,0
.goto Tanaris,64.18,32.42,60,0
.goto Tanaris,63.94,31.73
>>杀死|cRXP_ENEMY_Caliph Scorpasting|r。掠夺他的|cRXP_Loot_Head |r
>>|cRXP_WARN_小心；他身上带着两个偷加的|r
.complete 2781,1 
.unitscan Caliph Scorpidsting
step << Hunter
#optional
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.accept 3161 >>接任务: |cRXP_LOOT_加兹瑞迪安|r
.target Marvon Rivetseeker
.xp <43,1
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<37.2
step << Hunter
#optional
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23,60,0
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23
.use 9978 >>装备|T133151:0|t[Gahz'ridian探测器]
>>为|cRXP_Loot_Gahz'ridian饰品|r掠夺|cRX_PICK_成堆的沙子|r
>>|cRXP_WARN_Gahz'ridian会出现在你的小地图上。你可以在东月和南月遗址及其周围找到货物|r
.complete 3161,1 
.use 9978
.isOnQuest 3161
step << Hunter
#optional
.goto Tanaris,52.70,45.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
>>|cRXP_WARN_重新装备你的普通头盔|r
.turnin 3161 >>交任务: |cRXP_FRIENDLY_加兹瑞迪安|r
.target Marvon Rivetseeker
.isOnQuest 3161
step
.goto Tanaris,52.40,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
.turnin 1691 >>交任务: |cRXP_FRIENDLY_废土的公正|r
.turnin 2781 >>交任务: |cRXP_FRIENDLY_通缉：卡利夫·斯科比斯汀|r
.target Chief Engineer Bilgewhizzle
step
#sticky
#completewith EnterUldaman
.subzone 1337 >>现在你应该找一个团体去乌达曼
.dungeon ULDA
step << !Mage
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Bulkrek Ragefist
.zoneskip Tanaris
.dungeon ULDA
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10927 >>训练你的职业技能
.target Ur'kyo
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10945 >>训练你的职业技能
.target Ur'kyo
.xp <46,1
.dungeon ULDA
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 16315 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10472 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <46,1
.dungeon ULDA
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14285 >>训练你的职业技能
.target Ormak Grimshot
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14304 >>训练你的职业技能
.target Ormak Grimshot
.xp <46,1
.dungeon ULDA
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11584 >>训练你的职业技能
.target Grezz Ragefist
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11578 >>训练你的职业技能
.target Grezz Ragefist
.xp <46,1
.dungeon ULDA
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11341 >>训练你的职业技能
.target Ormok
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11293 >>训练你的职业技能
.target Ormok
.xp <46,1
.dungeon ULDA
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
.dungeon ULDA
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11671 >>训练你的职业技能
.target Mirket
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11699 >>训练你的职业技能
.target Mirket
.xp <46,1
.dungeon ULDA
step << !Mage
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Orgrimmar,1
.dungeon ULDA
step << !Mage
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
.dungeon ULDA
step << Mage
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
.dungeon ULDA
step << Mage
.goto Undercity,85.13,10.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 10185 >>训练你的职业技能
.target Anastasia Hartwell
.xp <44,1
.xp >46,1
.dungeon ULDA
step << Mage
#optional
.goto Undercity,85.13,10.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 10197 >>训练你的职业技能
.target Anastasia Hartwell
.xp <46,1
.dungeon ULDA
step
.goto Undercity,62.31,48.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patrick|r
.accept 2342 >>接任务: |cRXP_LOOT_失而复得|r
.target Patrick
.dungeon ULDA
step
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
.fly Badlands >>飞到荒地
.target Michael Garrett
.zoneskip Hillsbrad Foothills
.dungeon ULDA
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加卡尔|r
.accept 2202 >>接任务: |cRXP_LOOT_奥达曼的蘑菇|r
.target Jarkal Mossmeld
.isQuestTurnedIn 2258
.dungeon ULDA
step
.goto Badlands,51.38,76.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.accept 709 >>接任务: |cRXP_LOOT_化解灾难|r
.target Theldurin the Lost
.dungeon ULDA
step
.goto 1415,52.36,63.59
.zone 1415 >>Travel to Uldaman
.dungeon ULDA
step
#completewith EnterUldaman
>>如果您掠夺了|T133289:0|t[破碎的项链]，请将其保存在您的库存中
.collect 7666,1 
.dungeon ULDA
step
#hardcore
#completewith Treasure
>>将|cRXP_Loot_Magenta真菌帽|r从地上偷走
>>|cRXP_WARN_这可以在Uldaman内部和外部完成。|r
>>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_OOT_Magenta Fungus Caps|rr|cRXP-WARN_forEveryone|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
#softcore
#completewith Treasure
>>将|cRXP_Loot_Magenta真菌帽|r从地上偷走
>>|cRXP_WARN_这可以在Uldaman内部和外部完成。|r
>>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_OOT_Magenta Fungus Caps|rr|cRXP-WARN_forEveryone|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
.goto 1415,52.107,64.008
>>打开|cRXP_PICK_Ancient胸脯|r。为龙的|cRXP_Loot_Tablet|r掠夺
>>|cRXP_WARN_这是在Uldaman之外完成的|r
.complete 709,1 
.isOnQuest 709
.dungeon ULDA
step
#label Treasure
.goto Eastern Kingdoms,53.81,57.94,0
.goto Eastern Kingdoms,53.78,58.23
>>在南公堂南角掠夺|cRXP_PICK_Garrett家宝|r
>>|cRXP_WARN_南公堂位于Uldaman实例入口的西南侧|r
.complete 2342,1 
.isOnQuest 2342
.dungeon ULDA
step
#hardcore
#completewith next
>>将|cRXP_Loot_Magenta真菌帽|r从地上偷走
>>|cRXP_WARN_这可以在Uldaman内部和外部完成|r
>>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_OOT_Magenta Fungus Caps|rr|cRXP-WARN_forEveryone|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
#softcore
#completewith next
>>将|cRXP_Loot_Magenta真菌帽|r从地上偷走
>>|cRXP_WARN_这可以在Uldaman内部和外部完成|r
>>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_OOT_Magenta Fungus Caps|rr|cRXP-WARN_forEveryone|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
#label EnterUldaman
.goto 1415,51.851,63.40
.zone 230 >>Zone into Uldaman
.dungeon ULDA
step
#hardcore
#completewith next
>>将|cRXP_Loot_Magenta真菌帽|r从地上偷走
>>|cRXP_WARN_这可以在Uldaman内部和外部完成|r
>>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_OOT_Magenta Fungus Caps|rr|cRXP-WARN_forEveryone|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
#softcore
#completewith next
>>将|cRXP_Loot_Magenta真菌帽|r从地上偷走
>>|cRXP_WARN_这可以在Uldaman内部和外部完成|r
>>|cRXP_WARN_如果你只跑了1次，建议最多3名玩家尝试完成这个任务。没有足够的|r|cRXP_OOT_Magenta Fungus Caps|rr|cRXP-WARN_forEveryone|r
.complete 2202,1 
.isOnQuest 2202
.dungeon ULDA
step
>>杀死|cRXP_ENEMY_Archaedas|r
>>单击|cRXP_PICK_挪威的光盘|r
.accept 2278 >>接任务: |cRXP_WARN_白金圆盘|r
.mob Archaedas
.dungeon ULDA
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺甘农的看门人|r
.complete 2278,1 
.skipgossip
.target Lore Keeper of Norgannon
.dungeon ULDA
step
>>单击|cRXP_PICK_挪威的光盘|r
.turnin 2278 >>交任务: |cRXP_FRIENDLY_白金圆盘|r
.accept 2280 >>接任务: |cRXP_WARN_白金圆盘|r
.dungeon ULDA
step
.zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
.dungeon ULDA
step
.goto Badlands,51.38,76.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迷失者塞尔杜林|r
.turnin 709 >>交任务: |cRXP_FRIENDLY_化解灾难|r
.accept 728 >>接任务: |cRXP_LOOT_远赴幽暗城|r
.target Theldurin the Lost
.isQuestComplete 709
.dungeon ULDA
step
.goto Badlands,2.42,46.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加卡尔|r
.turnin 2202 >>交任务: |cRXP_FRIENDLY_奥达曼的蘑菇|r
.target Jarkal Mossmeld
.dungeon ULDA
step
.hs >>Gadgetzan之炉
.use 6948
.cooldown item,6948,>0
.dungeon ULDA
step
#optional
.abandon 2202 >>Abandon 接任务: |cRXP_LOOT_奥达曼的蘑菇|r
.isOnQuest 2202
.dungeon ULDA
step
#optional
.abandon 709 >>放弃末日的解决方案
.isOnQuest 709
.dungeon ULDA
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 40-50
#classic
<< Horde
#name 43-44 Feralas
#next 44-45南方荆棘
#somname 42-43 Feralas
step
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Feralas>>Fly to Feralas
.target Bullkrek Ragefist
.zoneskip Feralas
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布隆克|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Bronk
step
.goto Feralas,75.70,44.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥尔文·吉兹米克|r
.accept 2987 >>接任务: |cRXP_LOOT_戈杜尼钴矿石|r
.target Orwin Gizzmick
step
.goto Feralas,75.70,43.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok|r
.turnin 2981 >>交任务: |cRXP_FRIENDLY_菲拉斯的危机|r
.accept 2975 >>接任务: |cRXP_LOOT_菲拉斯的食人魔|r
.target Rok Orhan
step
.goto Feralas,76.00,42.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁伊格·碎颅|r
.accept 2973 >>接任务: |cRXP_LOOT_新斗篷的光辉|r
.target Krueg Skullsplitter
step
.goto Feralas,74.90,42.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈杜肯·迅蹄|r
.accept 2862 >>接任务: |cRXP_LOOT_与豺狼人开战|r
.target Hadoken Swiftstrider
step
.goto Feralas,74.50,42.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t进入长屋，然后与|cRXP_FRIENDLY_Jangdor|r通话
.accept 2822 >>接任务: |cRXP_LOOT_质量的保证|r
.target Jangdor Swiftstrider
step
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格鲁尔|r
.home >>把你的炉石放在莫雅奇营地
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Greul
step
#sticky
#completewith YetiHide
>>当您在整个费拉拉进行探索时，请注意|T132836:0|t[|cRXP_FRIENDLY_Distress Beacon|r]掉落
.collect 8705,1,2766
.accept 2766 >>接任务: |cRXP_LOOT_寻找OOX-22/FE！|r
step
.goto Feralas,72.79,39.32,60,0
.goto Feralas,72.11,37.21,60,0
.goto Feralas,73.18,36.29,60,0
.goto Feralas,72.79,39.32
>>杀死Mojache营地西北部的|cRXP_ENEMY_Woodpaw Gnolls|r。掠夺他们的|cRXP_Loot_Manes|r
.complete 2862,1 
.mob Woodpaw Mongrel
.mob Woodpaw Trapper
.mob Woodpaw Brute
.mob Woodpaw Reaver
.mob Woodpaw Mystic
.mob Woodpaw Alpha
step
#completewith Scroll
.goto Feralas,75.30,28.26,0
.use 9466 >>站在蓝色圆圈附近，然后使用|T134435:0|t[奥温铲子]
>>为|cRXP_Loot_Gordunni Cobalt|r掠夺|cRX_PICK_Gordunni土丘|r
.complete 2987,1 
step
#completewith Shovel
.goto Feralas,76.10,33.20,0
>>在戈杜尼前哨杀死|cRXP_ENEMY_Gordunni食人魔|r、|cRXD_ENEMY_食人魔法师|r和|cRXP_ENEMY_Brutes|r
.complete 2975,1 
.complete 2975,2 
.complete 2975,3 
.mob Gordunni Ogre
.mob Gordunni Ogre Mage
.mob Gordunni Brute
step
#label Scroll
.goto Feralas,75.25,34.44,0
.loop 25,Feralas,79.4,34.8,80.5,34.3,80.8,35.0,75.1,29.8,75.2,28.7,74.6,27.9,79.4,34.8,80.5,34.3,80.8,35.0,75.1,29.8,75.2,28.7,74.6,27.9,79.4,34.8
>>将|cRXP_PICK_Scroll|r在地面上展开|T134943:0|t[|cRXP-Loot_Gordunni Scroll|r]。使用它开始任务
>>|cRXP_WARN_跟随箭头到达不同的产卵位置|r
.collect 9370,1,2978,1 
.accept 2978 >>接任务: |cRXP_LOOT_戈杜尼卷轴|r
.use 9370
step
#label Shovel
.goto Feralas,74.29,28.98,30,0
.goto Feralas,75.35,28.23,30,0
.goto Feralas,76.01,29.00,30,0
.goto Feralas,76.89,29.60,30,0
.goto Feralas,76.47,33.05,30,0
.goto Feralas,76.70,33.86,30,0
.goto Feralas,74.29,28.98
.use 9466 >>站在蓝色圆圈附近，然后使用|T134435:0|t[奥温铲子]
>>为|cRXP_Loot_Gordunni Cobalt|r掠夺|cRX_PICK_Gordunni土丘|r
.complete 2987,1 
step
.goto Feralas,74.82,27.53,50,0
.goto Feralas,75.25,29.55,50,0
.goto Feralas,76.51,30.48,50,0
.goto Feralas,75.45,34.59,50,0
.goto Feralas,74.82,27.53
>>在戈杜尼前哨杀死|cRXP_ENEMY_Gordunni食人魔|r、|cRXD_ENEMY_食人魔法师|r和|cRXP_ENEMY_Brutes|r
.complete 2975,1 
.complete 2975,2 
.complete 2975,3 
.mob Gordunni Ogre
.mob Gordunni Ogre Mage
.mob Gordunni Brute
step << Shaman
#completewith WoodpawWarTurnin
.hs >>赫斯前往莫贾奇营地
.use 6948
step << !Shaman
#completewith next
.goto Feralas,74.73,43.59,150 >>Return to Camp Mojache
step
#label WoodpawWarTurnin
.goto Feralas,74.90,42.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈杜肯·迅蹄|r
.turnin 2862 >>交任务: |cRXP_FRIENDLY_与豺狼人开战|r
.accept 2863 >>接任务: |cRXP_LOOT_突然袭击|r
.target Hadoken Swiftstrider
step
.goto Feralas,75.80,43.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok|r
.turnin 2975 >>交任务: |cRXP_FRIENDLY_菲拉斯的食人魔|r
.accept 2980 >>接任务: |cRXP_LOOT_菲拉斯的食人魔|r
.turnin 2978 >>交任务: |cRXP_FRIENDLY_戈杜尼卷轴|r
.accept 2979 >>接任务: |cRXP_LOOT_黑暗仪式|r
.target Rok Orhan
step
.goto Feralas,75.70,44.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥尔文·吉兹米克|r
.turnin 2987 >>交任务: |cRXP_FRIENDLY_戈杜尼钴矿石|r
.target Orwin Gizzmick
step
.goto Feralas,68.80,48.00
>>杀死|cRXP_ENEMY_Sprite飞镖手|r。掠夺他们的|cRXX_Loot_Fwing|r
.complete 2973,1 
.mob Sprite Darter
step
.loop 25,Feralas,67.50,55.60,69.05,55.78,68.60,54.25,71.51,55.98,72.42,56.63,73.21,56.25,72.42,56.63,71.51,55.98,68.60,54.25,69.05,55.7867.50,55.60
>>在指定时间内杀死|cRXP_ENEMY_Woodpaw Alphas|r
*|cRXP_WARN_There's usually one in each camp|r
.complete 2863,1 
.unitscan Woodpaw Alpha
step
#completewith KruegTurnin1
.hs >>赫斯前往莫贾奇营地
.use 6948
.cooldown item,6948,>0
step
#completewith next
.goto Feralas,74.73,43.59,150 >>Return to Camp Mojache
.cooldown item,6948,<0
step
#label KruegTurnin1
.goto Feralas,76.00,42.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁伊格·碎颅|r
.turnin 2973 >>交任务: |cRXP_FRIENDLY_新斗篷的光辉|r
.accept 2974 >>接任务: |cRXP_LOOT_可怕的发现|r
.target Krueg Skullsplitter
step
.goto Feralas,74.90,42.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈杜肯·迅蹄|r
.turnin 2863 >>交任务: |cRXP_FRIENDLY_突然袭击|r
.accept 2902 >>接任务: |cRXP_LOOT_调查木爪岭|r
.target Hadoken Swiftstrider
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布隆克|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Bronk
step
.goto Feralas,69.92,38.97,60,0
.goto Feralas,68.71,39.90,60,0
.goto Feralas,68.08,46.12,60,0
.goto Feralas,66.63,46.62,60,0
.goto Feralas,69.92,38.97,60,0
.goto Feralas,66.63,46.62
>>杀死|cRXP_ENEMY_Grimtotam牛头人|r。掠夺他们的|cRXX_Loot_Horns|r
>>|cRXP_ENEMY_冷酷图腾突袭者|r|cRXP_WARN_cast|r|T132149:0|t[Net]|cRXP-WARN_其移动固定10秒|r
.complete 2974,1 
.mob Grimtotem Shaman
.mob Grimtotem Raider
.mob Grimtotem Naturalist
step
.goto Feralas,71.60,55.90
>>单击板条箱顶部的|cRXP_PICK_Woodpaw作战地图|r
.turnin 2902 >>交任务: |cRXP_FRIENDLY_调查木爪岭|r
.accept 2903 >>接任务: |cRXP_LOOT_作战计划|r
step
.goto Feralas,76.00,42.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克鲁伊格·碎颅|r
.turnin 2974 >>交任务: |cRXP_FRIENDLY_可怕的发现|r
.accept 2976 >>接任务: |cRXP_LOOT_可怕的发现|r
.target Krueg Skullsplitter
step
.goto Feralas,74.90,42.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈杜肯·迅蹄|r
.turnin 2903 >>交任务: |cRXP_FRIENDLY_作战计划|r
.accept 7730 >>接任务: |cRXP_LOOT_祖卡什的入侵|r
.accept 7731 >>接任务: |cRXP_LOOT_毒刺鞭笞者|r
.target Hadoken Swiftstrider
step
#completewith next
.goto Feralas,73.38,62.94,0
>>杀死|cRXP_ENEMY_Zukk’ash Silithi|r。掠夺他们的|cRXP_Loot_CARPACE|r
.complete 7730,1 
.mob Zukk'ash Worker
.mob Zukk'ash Wasp
.mob Zukk'ash Tunneler
.mob Zukk'ash Stinger
step
.goto Feralas,73.38,63.24,-1
.goto Feralas,76.36,61.19,-1
>>杀死|cRXP_ENEMY_Stinglasher |r。掠夺它的|cRXX_Loot_GRAND|r
>>|cRXP_WARN_这群暴徒可能很难确保有可用的冷却|r
>>它在Silithid Hives的外围巡逻
.complete 7731,1 
.unitscan Stinglasher
step
.goto Feralas,75.21,61.82,60,0
.goto Feralas,74.10,62.42,60,0
.goto Feralas,72.86,62.78,60,0
.goto Feralas,75.21,61.82,60,0
.goto Feralas,72.86,62.78
>>杀死|cRXP_ENEMY_Zukk’ash Silithi|r。掠夺他们的|cRXP_Loot_CARPACE|r
.complete 7730,1 
.mob Zukk'ash Worker
.mob Zukk'ash Wasp
.mob Zukk'ash Tunneler
.mob Zukk'ash Stinger
step
.goto Feralas,74.90,42.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈杜肯·迅蹄|r
.turnin 7730 >>交任务: |cRXP_FRIENDLY_祖卡什的入侵|r
.turnin 7731 >>交任务: |cRXP_FRIENDLY_毒刺鞭笞者|r
.accept 7732 >>接任务: |cRXP_LOOT_祖卡什报告|r
.target Hadoken Swiftstrider
step
#completewith egghypo
.goto Feralas,56.15,46.88,0
.use 10699 >>杀死|cRXP_ENEMY_Vale尖叫者|r，然后在他们的尸体上使用|T135474:0|t[Yeh'kinya's Bramble]
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
step
#completewith next
.goto Feralas,58.59,69.85,0
>>杀死|cRXP_ENEMY_Gordunni法师领主|r。掠夺他们的|cRXX_Loot_Orb|r
.complete 2979,1 
.mob Gordunni Mage-Lord
step
.goto Feralas,61.86,54.46,60,0
.goto Feralas,61.03,56.55,60,0
.goto Feralas,60.69,58.52,60,0
.loop 25,Feralas,59.72,62.77,58.93,64.13,58.31,65.20,58.25,66.56,58.55,67.75,59.54,68.37,60.85,69.68,60.95,67.65,60.35,66.63,60.11,64.93,59.58,64.51,59.72,62.77
>>在伊西尔迪恩废墟周围杀死|cRXP_ENEMY_Gordunni Maulers|r、|cRXP_ENEMY_Warlocks|r和|cRXD_ENEMY_Shaman|r
.complete 2980,1 
.complete 2980,2 
.complete 2980,3 
.mob Gordunni Shaman
.mob Gordunni Warlock
.mob Gordunni Mauler
step
.loop 25,Feralas,59.72,62.77,58.93,64.13,58.31,65.20,58.25,66.56,58.55,67.75,59.54,68.37,60.85,69.68,60.95,67.65,60.35,66.63,60.11,64.93,59.58,64.51,59.72,62.77
>>杀死|cRXP_ENEMY_Gordunni法师领主|r。掠夺他们的|cRXX_Loot_Orb|r
.complete 2979,1 
.mob Gordunni Mage-Lord
step
#completewith next
.use 10699 >>杀死|cRXP_ENEMY_Vale尖叫者|r，然后在他们的尸体上使用|T135474:0|t[Yeh'kinya's Bramble]
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
step
#label egghypo
.goto Feralas,56.66,75.89
>>沿着山脉向南旅行，然后从一个河马巢穴中掠夺一个|T132833:0|t[河马蛋]
.collect 8564,1 
step
#completewith next
.use 10699 >>杀死|cRXP_ENEMY_Rogue Vale尖叫者|r，然后在他们的尸体上使用|T135474:0|t[Yeh'kinya的荆棘]
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
step
#ssf
.loop 25,Feralas,56.71,64.09,56.61,62.01,55.87,60.34,54.79,60.44,55.30,62.17,54.49,64.33,55.23,66.21,55.88,65.91,56.71,64.09
>>杀死|cRXP_ENEMY_Frayfeather Hippogryphs |r。掠夺它们的|cRXX_Loot_Features|r
.collect 4589,10,7842,1 
.mob Frayfeather Hippogryph
step
#ah
.loop 25,Feralas,56.71,64.09,56.61,62.01,55.87,60.34,54.79,60.44,55.30,62.17,54.49,64.33,55.23,66.21,55.88,65.91,56.71,64.09
>>杀死|cRXP_ENEMY_Frayfeather Hippogryphs |r。掠夺它们的|cRXX_Loot_Features|r
>>|cRXP_ENEMY_你也可以从拍卖行购买|r
.collect 4589,10,7842,1 
.mob Frayfeather Hippogryph
step
.loop 25,Feralas,56.71,64.09,56.61,62.01,55.87,60.34,54.79,60.44,55.30,62.17,54.49,64.33,55.23,66.21,55.88,65.91,56.71,64.09
>>继续杀死|cRXP_ENEMY_Frayfeather|r暴徒
.xp 44+40000 >>升级到44级和40000/11800
.mob Frayfeather Hippogryph
.mob Frayfeather Patriarch
.mob Frayfeather Stagwing
.mob Frayfeather Skystormer
.xp <44,1 
step
.goto Feralas,58.45,55.83,-1
.goto Feralas,56.70,56.13,-1
>>杀死|cRXP_ENEMY_Vale尖叫者|r，然后在他们的尸体上使用|T135474:0|t[Yeh'kinya's Bramble]
.complete 3520,1 
.unitscan Rogue Vale Screecher
.unitscan Vale Screecher
step
#label YetiHide
.goto Feralas,55.14,56.35,70,0
.goto Feralas,53.12,56.27,70,0
.goto Feralas,52.05,58.40
>>杀死|cRXP_ENEMY_Yetis|r。掠夺他们的|cRXX_Loot_Hides|r
.complete 2822,1 
.mob Feral Scar Yeti
.mob Enraged Feral Scar
.mob Hulking Feral Scar
.mob Lurking Feral Scar
.mob Bloodroar the Stalker
step
.accept 2766 >>接任务: |cRXP_LOOT_寻找OOX-22/FE！|r
.itemcount 8705,1 
.use 8705
step
.goto Feralas,53.35,55.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-22/FE|r
.turnin 2766 >>交任务: |cRXP_FRIENDLY_寻找OOX-22/FE！|r
.target Homing Robot OOX-22/FE
.isOnQuest 2766
step
.goto Feralas,53.35,55.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-22/FE|r
.accept 2767 >>接任务: |cRXP_LOOT_拯救OOX-22/FE！|r
>>|cRXP_WARN_这开始了鸡的护送；准备好使用冷却/消耗品，因为这个任务很难|r
.target Homing Robot OOX-22/FE
.isQuestTurnedIn 2766
step
.goto Feralas,55.47,56.37,30,0
.goto Feralas,54.38,51.32,60,0
.goto Feralas,50.31,49.91,40,0
.goto Feralas,48.38,44.83,40,0
.goto Feralas,45.04,43.27
>>|cRXP_WARN_将产生3个波浪。将所有很长的冷却时间保存为|r|cRXP_ENEMY_Gnolls|r|cRXP_WARN_，并在|r| cRXP__ENEMY_Yetis上使用一些|r
+3 Yetis (each level 46)
+3 Gorillas
+4 Gnolls
.complete 2767,1 
.isOnQuest 2767
.target Homing Robot OOX-22/FE
step
#optional
#completewith next
.goto Feralas,26.13,67.41,40 >>前往羽毛猴寨以南的那加洞穴
>>|cRXP_WARN_你可以在那里游泳，也可以乘坐联盟船。一旦你到达两个岛屿之间的德雷德岛，你就必须跳下船|r
.subzoneskip 3117
step
.goto Feralas,26.19,67.51
>>杀死|cRXP_ENEMY_Hatecrest Nagas|r
.xp 44+40000 >>升级到44级和40000/11800或更高
step
#completewith next
.hs >>心回到Mojache营地
.use 6948
step
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格鲁尔|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
>>|cRXP_WARN_确保您不出售任何|r|T135992:0|t[优雅的长羽毛]
.target Innkeeper Greul
step
.goto Feralas,75.80,43.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rok|r
.turnin 2980 >>交任务: |cRXP_FRIENDLY_菲拉斯的食人魔|r
.turnin 2979 >>交任务: |cRXP_FRIENDLY_黑暗仪式|r
.accept 3002 >>接任务: |cRXP_LOOT_戈杜尼宝珠|r
.target Rok Orhan
step
.goto Feralas,74.40,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.accept 3121 >>接任务: |cRXP_LOOT_奇怪的要求|r
.target Witch Doctor Uzer'i
step
.goto Feralas,74.40,42.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杉多尔·迅蹄|r
.turnin 2822 >>交任务: |cRXP_FRIENDLY_质量的保证|r
.target Jangdor Swiftstrider
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布隆克|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Bronk
step << Druid
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 1824 >>训练你的职业技能
.target Jannos Lighthoof
.xp <44,1
.xp >46,1
step << Druid
#optional
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 9821 >>训练你的职业技能
.target Jannos Lighthoof
.xp <46,1
step << !Mage
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Shyn
.zoneskip Thunder Bluff
step << Mage
.cast 3566 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
step
.goto Thunder Bluff,34.42,46.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage|r
.turnin 2280 >>交任务: |cRXP_FRIENDLY_白金圆盘|r
.accept 2440 >>接任务: |cRXP_WARN_白金圆盘|r
.target Sage Truthseeker
.isQuestTurnedIn 2278
.dungeon ULDA
step
.goto Thunder Bluff,46.61,33.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_本娜·冰蹄|r
.turnin 2440 >>交任务: |cRXP_FRIENDLY_白金圆盘|r
.accept 2965 >>接任务: |cRXP_WARN_奥丹姆的线索|r
.target Bena Winterhoof
.isQuestTurnedIn 2278
.dungeon ULDA
step
.goto Thunder Bluff,75.67,31.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
.turnin 2965 >>交任务: |cRXP_FRIENDLY_奥丹姆的线索|r
.accept 2966 >>接任务: |cRXP_WARN_拭目以待|r
.target Nara Wildmane
.isQuestTurnedIn 2278
.dungeon ULDA
step
.goto Thunder Bluff,61.50,80.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅洛·石蹄|r
.turnin 1205 >>交任务: |cRXP_FRIENDLY_死沼巨鳄|r
.target Melor Stonehoof
.isQuestComplete 1205
step << !Mage
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Tal
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step
.goto Orgrimmar,39.20,86.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤塞尔奈|r
.turnin 3002 >>交任务: |cRXP_FRIENDLY_戈杜尼宝珠|r
.target Uthel'nay
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10185 >>训练你的职业技能
.target Pephredo
.xp <44,1
.xp >46,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10197 >>训练你的职业技能
.target Pephredo
.xp <46,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10927 >>训练你的职业技能
.target Ur'kyo
.xp <44,1
.xp >46,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10945 >>训练你的职业技能
.target Ur'kyo
.xp <46,1
step
.goto Orgrimmar,39.00,38.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
.turnin 1262 >>交任务: |cRXP_FRIENDLY_向佐尔报告|r
.target Zor Lonetree
.isOnQuest 1262
step
.goto Orgrimmar,39.00,38.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
.accept 7541 >>接任务: |cRXP_WARN_为部落效力|r
.turnin 7541 >>交任务: |cRXP_FRIENDLY_为部落效力|r
.target Zor Lonetree
.isQuestTurnedIn 1262
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 16315 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <44,1
.xp >46,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10472 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <46,1
step
.goto Orgrimmar,56.50,46.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔兹宾·鼓眼|r
.turnin 7732 >>交任务: |cRXP_FRIENDLY_祖卡什报告|r
.target Zilzibin Drumlore
step
.goto Orgrimmar,75.20,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 2976 >>交任务: |cRXP_FRIENDLY_可怕的发现|r
.target Belgrom Rockmaul
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14285 >>训练你的职业技能
.target Ormak Grimshot
.xp <44,1
.xp >46,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14304 >>训练你的职业技能
.target Ormak Grimshot
.xp <46,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11584 >>训练你的职业技能
.target Grezz Ragefist
.xp <44,1
.xp >46,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11578 >>训练你的职业技能
.target Grezz Ragefist
.xp <46,1
step << Orc !Warlock
#optional
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r, |cRXP_FRIENDLY_奥古纳罗|r
.train 825 >>火车|T136103:0|t[骑狼]
.vendor >>|cRXP_BUY_BUY a|r|T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro
step
.goto Orgrimmar,49.60,50.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼尔鲁·火刃|r
.turnin 3121 >>交任务: |cRXP_FRIENDLY_奇怪的要求|r
.accept 3122 >>接任务: |cRXP_LOOT_向巫医尤克里回复|r
.target Neeru Fireblade
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11341 >>训练你的职业技能
.target Ormok
.xp <44,1
.xp >46,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11293 >>训练你的职业技能
.target Ormok
.xp <46,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11671 >>训练你的职业技能
.target Mirket
.xp <44,1
.xp >46,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11699 >>训练你的职业技能
.target Mirket
.xp <46,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>购买任何你能负担得起的宠物升级
.target Kurgul
step
#ah
#completewith STVZepp2
+|cRXP_WARN_检查您的银行是否有任何丢失的|r|T134332:0|t[Stranglethorn的Green Hills-Pages]|cRXP_WARN_并从拍卖行购买您仍然需要的任何物品|r
>>|cRXP_WARN_第1章要求：第1、4、6、8页|r
>>|cRXP_WARN_第2章要求：第10、11、14、16页|r
>>|cRXP_WARN_第3章要求：第18、20、21、24页|r
>>|cRXP_WARN_第4章要求：第25、26、27页|r
>>|cRXP_WARN_将新购买的页面放入您的银行。如果您无法获得它们，请跳过此步骤|r
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师萨苏恩|r
.collect 2799,10,349,1 >>|cRXP_BUY_从拍卖行购买10件|r|T134298:0|t[Gorilla Fans]|cRXP_Buy_|r
.target Auctioneer Thathung
step << Troll
#optional
#completewith next
.subzone 367 >>前往森津村
step << Troll
#optional
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r, |cRXP_FRIENDLY_祖尼尔|r
.train 10861 >>火车|T136103:0|t[猛禽骑乘]
.vendor >>|cRXP_BUY_BUY a|r|T132253:0|t[|cFF0070FF猛禽|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Orgrimmar,1
step
#label STVZepp2
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 40-50
#classic
<< Horde
#name 44-45南方荆棘
#next 45-46 Swamp of Sorrows
#somname 43-45南方荆棘
step
.goto Stranglethorn Vale,32.20,27.60
>>单击|cRXP_PICK_鼓泡釜|r
.accept 586 >>接任务: |cRXP_LOOT_甘祖拉恩|r
step
.goto Stranglethorn Vale,32.10,29.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.accept 571 >>接任务: |cRXP_LOOT_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,33.51,32.53
>>杀死一个|cRXP_ENEMY_Elder盐水鳄鱼|r。掠夺它的|cRXP-Loot_Skin|r
>>|cRXP_WARN_海岸沿线还有更多|r|cRXP_ENEMY_Elder盐水鳄鱼|r|cRXP_WARN_worth|r
.complete 628,1 
.mob Saltwater Crocolisk
step
.goto Stranglethorn Vale,28.80,44.80
>>杀死|cRXP_ENEMY_Tethis|r。掠夺他的|cRXX_Loot_Talon|r
>>他在猛禽区周围巡逻
.complete 197,1 
.unitscan Tethis
step
#completewith Anathek
>>杀死|cRXP_ENEMY_Skullsplitter猎人|r、|cRXD_ENEMY_Berserkers|r和|cRXP_ENEMY_Headhunters|r
.complete 586,1 
.complete 586,3 
.complete 586,2 
.mob Skullsplitter Hunter
.mob Skullsplitter Berserker
.mob 颅骨分离器猎头
step
#hardcore
#completewith next
+|cRXP_WARN_下一个任务可能很难，要格外小心|r
step
#label Anathek
.goto Stranglethorn Vale,44.3,44.9,30,0
.loop 25,Stranglethorn Vale,47.1,40.7,44.3,44.9,45.8,41.2,47.1,40.7
>>杀死|cRXP_ENEMY_Ana'tek the Crumal|r。掠夺他的|cRXX_Loot_Armor|r
*|cRXP_WARN_Be careful of Ana'thek's adds and his|r |cFFEB144Cexecute ability.|r
.complete 586,4 
.unitscan Ana'thek the Cruel
step
.loop 25,Stranglethorn Vale,47.9,42.9,47.6,44.1,46.0,42.8,44.4,41.9,47.4,39.8,47.9,42.9
>>杀死|cRXP_ENEMY_Skullsplitter猎人|r、|cRXD_ENEMY_Berserkers|r和|cRXP_ENEMY_Headhunters|r
.complete 586,1 
.complete 586,3 
.complete 586,2 
.mob Skullsplitter Hunter
.mob Skullsplitter Berserker
.mob 颅骨分离器猎头
step
.goto Stranglethorn Vale,35.66,10.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet|r
.turnin 197 >>交任务: |cRXP_FRIENDLY_猎龙|r
.accept 208 >>接任务: |cRXP_LOOT_王牌猎人|r
.target Sir S. J. Erlgadin
.target Hemet Nesingwary
step
.goto Stranglethorn Vale,32.20,27.70
>>单击|cRXP_PICK_鼓泡釜|r
.turnin 586 >>交任务: |cRXP_FRIENDLY_甘祖拉恩|r
.accept 588 >>接任务: |cRXP_LOOT_耶尼库的命运|r
step
.goto Stranglethorn Vale,32.20,27.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.turnin 588 >>交任务: |cRXP_FRIENDLY_耶尼库的命运|r
.accept 589 >>接任务: |cRXP_LOOT_歌唱水晶|r
.target Kin'weelay
step
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯塔|r
.fly Booty Bay >>飞到Booty Bay
.target Thysta
step
.goto Stranglethorn Vale,28.35,76.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 2767 >>交任务: |cRXP_FRIENDLY_拯救OOX-22/FE！|r
.target Oglethorpe Obnoticus
.isQuestComplete 2767
step
.goto Stranglethorn Vale,28.29,77.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_崔斯里克|r
.turnin 628 >>交任务: |cRXP_FRIENDLY_刨花皮靴|r
.target Drizzlik
step
.goto Stranglethorn Vale,26.70,76.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海盗布劳兹|r
.accept 617 >>接任务: |cRXP_LOOT_一捆海蛇草|r
.target Privateer Bloads
step
#era
.goto Stranglethorn Vale,27.10,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.turnin 1118 >>交任务: |cRXP_FRIENDLY_返回藏宝海湾|r
.accept 621 >>接任务: |cRXP_LOOT_赞吉尔的秘密|r
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.70,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.accept 606 >>接任务: |cRXP_LOOT_吓唬病鬼|r
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.70,76.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fin|r
.accept 348 >>接任务: |cRXP_LOOT_荆棘谷热疫|r
.target Fin Fizracket
step
.goto Stranglethorn Vale,28.10,76.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副克拉兹|r
.accept 595 >>接任务: |cRXP_LOOT_血帆海盗|r
.target First Mate Crazz
step
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.accept 8551 >>接任务: |cRXP_LOOT_船长的箱子|r
.target Captain Hecklebury Smotts
step
.goto Stranglethorn Vale,27.27,69.51
>>点击营地中心桶顶上的|cRXP_PICK_Bloodsail对应|r
.turnin 595 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.accept 597 >>接任务: |cRXP_LOOT_血帆海盗|r
step
.goto Stranglethorn Vale,28.09,76.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大副克拉兹|r
.turnin 597 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.accept 599 >>接任务: |cRXP_LOOT_血帆海盗|r
.target First Mate Crazz
step
.goto Stranglethorn Vale,26.92,77.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪格|r
.accept 587 >>接任务: |cRXP_LOOT_鼻烟|r
.target Deeg
step
.goto Stranglethorn Vale,27.17,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 599 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.accept 604 >>接任务: |cRXP_LOOT_血帆海盗|r
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,26.92,77.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪格|r
.accept 587 >>接任务: |cRXP_LOOT_鼻烟|r
.target Deeg
step
.goto Stranglethorn Vale,27.17,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 599 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.accept 604 >>接任务: |cRXP_LOOT_血帆海盗|r
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,28.59,75.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_独眼迪兹|r
.accept 576 >>接任务: |cRXP_LOOT_海盗的眼睛|r
.target Dizzy One-Eye
step
.goto Stranglethorn Vale,28.59,75.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_独眼迪兹|r
.accept 576 >>接任务: |cRXP_LOOT_海盗的眼睛|r
.target Dizzy One-Eye
step
#era
#completewith Swashbucklers
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。为|cRXX_Loot_Dizzy's Eye掠夺他们|r
>>|cRXP_WARN_不要把注意力集中在这个上，你可以稍后完成|r
.complete 576,1 
step
#som
#completewith Swashbucklers
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。为|cRXX_Loot_Dizzy's Eye掠夺他们|r
.complete 576,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Bloodsail Swashbucklers|r
.complete 604,1 
.mob Bloodsail Swashbuckler
step
.goto Stranglethorn Vale,29.61,80.89,20,0
.goto Stranglethorn Vale,27.75,83.13,20,0
.goto Stranglethorn Vale,27.18,82.66,20,0
.goto Stranglethorn Vale,26.94,82.49
>>单击|cRXP_LOOT_Bloodsail订单|r和|cRXP_LOOT_BBloodsail图表|r
>>|cRXP_WARN_他们通常在半岛上的大型营地，或者在营地附近的船上|r
.complete 604,2 
.complete 604,3 
step
#label Swashbucklers
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79
>>杀死|cRXP_ENEMY_Bloodsail Swashbucklers|r
.complete 604,1 
.mob Bloodsail Swashbuckler
step
#som
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。掠夺他们的|cRXX_Loot_Dizzy之眼|r
.complete 576,1 
step
#softcore
.goto Stranglethorn Vale,31.19,68.29,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44,60,0
.goto Stranglethorn Vale,31.12,59.80,60,0
.goto Stranglethorn Vale,31.27,65.53,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44
>>杀死|cRXP_ENEMY_Elder Mistvale Gorillas|r。掠夺它们的|cRXP_Loot_Giblets|r和|cRXP-Loot_Sinew|r
>>|cRXP_WARN_保存任意|r|T134298:0|t[Gorilla Fans]|cRXP_WARN_您的战利品。你稍后将需要它们进行另一次任务|r
.complete 606,1 
.complete 571,1 
.collect 2799,10 
.mob Elder Mistvale Gorilla
.addquestitem 2799,348
step
#hardcore
#completewith next
.goto Stranglethorn Vale,32.80,65.80,0
>>杀死|cRXP_ENEMY_Elder Mistvale Gorillas|r。掠夺他们的|T134298:0|t[大猩猩方]
>>如果你想的话，你可以跳过这个，任务进行起来非常困难
.collect 2799,10 
step
#hardcore
.goto Stranglethorn Vale,31.19,68.29,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44,60,0
.goto Stranglethorn Vale,31.12,59.80,60,0
.goto Stranglethorn Vale,31.27,65.53,60,0
.goto Stranglethorn Vale,32.92,65.99,60,0
.goto Stranglethorn Vale,33.74,63.40,60,0
.goto Stranglethorn Vale,32.73,61.44
>>杀死|cRXP_ENEMY_Elder Mistvale Gorillas|r。掠夺它们的|cRXP_Loot_Giblets|r和|cRXP-Loot_Sinew|r
.complete 606,1 
.complete 571,1 
.mob Elder Mistvale Gorilla
step
#hardcore
#completewith next
+|cRXP_WARN_这个任务会很难，考虑跳过它|r
step
.goto Stranglethorn Vale,35.27,60.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医安巴格瓦|r
>>|cRXP_WARN_这项任务非常艰巨。第1波不使用冷却。使用波浪2上的所有冷却。在第3波中，通过向山上爬一点来避开他们，然后当他们攻击NPC时，只杀死|cRXP_ENEMY_Mokk野蛮人|r并掠夺它|r
.turnin 349 >>交任务: |cRXP_FRIENDLY_荆棘谷热疫|r
.target Witch Doctor Unbagwa
.isOnQuest 348
.unitscan Mokk
step
.goto Stranglethorn Vale,35.27,60.40
>>面波|cRXP_ENEMY_Gorillas|r直到野蛮人|cRXX_ENEMY_Mokk|r出现。杀死他并掠夺他的|cRXP_loot_Heart|r
>>|cRXP_WARN_这项任务非常艰巨。第1波不使用冷却。使用波浪2上的所有冷却。在第3波中，通过向山上爬一点来避开他们，然后当他们攻击NPC时，只杀死|cRXP_ENEMY_Mokk野蛮人|r并掠夺它|r
.complete 348,1 
.unitscan Mokk the Savage
.isOnQuest 348
step
#optional
.goto Stranglethorn Vale,28.60,75.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_独眼迪兹|r
.turnin 576 >>交任务: |cRXP_FRIENDLY_海盗的眼睛|r
.target Dizzy One-Eye
.isQuestComplete 576
step
.goto Stranglethorn Vale,26.90,73.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"病鬼\"菲利普|r
.turnin 606 >>交任务: |cRXP_FRIENDLY_吓唬病鬼|r
.accept 607 >>接任务: |cRXP_LOOT_向马克基雷回报|r
.target "Shaky" Phillipe
step
.goto Stranglethorn Vale,27.60,76.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_芬·菲兹拉克|r
.turnin 348 >>交任务: |cRXP_FRIENDLY_荆棘谷热疫|r
.target Fin Fizracket
step
.goto Stranglethorn Vale,27.70,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.turnin 607 >>交任务: |cRXP_FRIENDLY_向马克基雷回报|r
.accept 609 >>接任务: |cRXP_LOOT_讨债行动|r
.target "Sea Wolf" MacKinley
step
#era
.goto Stranglethorn Vale,27.20,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 604 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.accept 608 >>接任务: |cRXP_LOOT_血帆海盗|r
.target Fleet Master Seahorn
step
#som
.goto Stranglethorn Vale,27.20,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 604 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,26.87,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格林戈|r
.fly Grom'gol >>飞往Grom'gol大本营
.target Gringer
step
.goto Stranglethorn Vale,32.10,29.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.turnin 571 >>交任务: |cRXP_FRIENDLY_摩克萨尔丁的魔法|r
.accept 573 >>接任务: |cRXP_LOOT_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,38.18,35.60
>>杀死|cRXP_ENEMY_King Bangalash|r。掠夺他的|cRXX_Loot_Head |r
>>|cRXP_WARN_这是一项艰巨的任务。当他产卵时，他会带着2个暴民，并且在大约50%的生命值下再产卵2个|r
.complete 208,1 
.unitscan King Bangalash
step
.goto Stranglethorn Vale,39.48,47.42,60,0
.goto Stranglethorn Vale,41.67,50.19,60,0
.goto Stranglethorn Vale,43.84,47.77
>>进入洞穴，然后杀死|cRXP_ENEMY_Ironjaw Basilisk|r。掠夺他们的|cRXX_Loot_Shard|r
.complete 589,1 
.mob Ironjaw Basilisk
step
#completewith Chucky
>>杀死|cRXP_ENEMY_Zanzil亡灵|r。掠夺他们的|cRXP_Loot_Mixin|r
>>|cRXP_WARN_不要拉或攻击赞齐尔的弃儿|r
.complete 621,1 
step
.goto Stranglethorn Vale,35.25,51.25
>>杀死|cRXP_ENEMY_Maury|r。为她掠夺她|cRXX_OOT_Clubed Foot|r
.complete 609,1 
.unitscan Maury "Club Foot" Wilkins
step
.goto Stranglethorn Vale,34.92,51.84
>>杀死|cRXP_ENEMY_Jon-Jon|r。掠夺他的|cRXX_Loot_Spyglass|r
.complete 609,2 
.unitscan Jon-Jon the Crow
step
#label Chucky
.goto Stranglethorn Vale,40.00,58.24
>>杀死|cRXP_ENEMY_Chucky|r。掠夺他的|cRXX_Loot_Ring |r
.complete 609,3 
.unitscan Chucky "Ten Thumbs"
step
.loop 25,Stranglethorn Vale,40.63,60.03,39.66,59.28,38.71,59.72,38.58,58.54,38.90,57.60,39.95,57.25,41.27,57.15,40.77,59.00,40.63,60.03
>>杀死|cRXP_ENEMY_Zanzil亡灵|r。掠夺他们的|cRXP_Loot_Mixin|r
>>|cRXP_WARN_不要拉或攻击赞齐尔的弃儿|r
.complete 621,1 
.mob Zanzil Zombie
.mob Zanzil Hunter
.mob Zanzil Witch Doctor
.mob Zanzil Naga
step
.goto Stranglethorn Vale,36.6,39.6
>>杀死|cRXP_ENEMY_Gorlash|r。掠夺他的|cRXX_Loot_Churs|r
>>|cRXP_WARN_你可以把他放回Booty Bay的守卫那里，只要你造成了大部分伤害，就可以获得荣誉|r
>>|cRXP_WARN_这个任务很难，取决于你在移动中风筝和造成伤害的能力。如果需要，你可以跳过这个任务|r
.link https://youtu.be/lNy2ohTWeLw?t=1037 >>单击此处获取参考
.complete 8551,1 
.isOnQuest 8551
.unitscan Gorlash
step
#era
#hardcore
#sticky
#completewith Keelhaul
+|cRXP_WARN_接下来的飞船任务可能非常艰难。小心|r
step
#era
#completewith Keelhaul
.goto Stranglethorn Vale,32.90,88.20,0
.goto Stranglethorn Vale,30.60,90.60,0
.goto Stranglethorn Vale,29.30,88.30,0
>>搜索飞船的低层，直到你在地面上找到一个小卷轴。为|T134939:0|t[|cRXP_Loot_Cortello的谜语|r]抢劫它。使用它开始任务
.accept 624 >>接任务: |cRXP_LOOT_科泰罗的谜题|r
.collect 4056,1,624,1 >>Cortello's Riddle (1)
.use 4056
step
#era
#completewith Keelhaul
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。掠夺他们的|cRXD_Loot_Sunff|r和|cRXX_Loot_Dizzy's Eye |r
.complete 587,1 
.complete 576,1 
step
#era
.goto Stranglethorn Vale,32.90,88.20
>>杀死船后部2楼的|cRXP_ENEMY_Captain Stillwater|r
.complete 608,1 
.unitscan Captain Stillwater
step
#era
.goto Stranglethorn Vale,30.60,90.60
>>杀死船后部2楼的|cRXP_ENEMY_Fleet Master Firallon|r
.complete 608,3 
.unitscan Fleet Master Firallon
step
#era
#label Keelhaul
.goto Stranglethorn Vale,29.30,88.30
>>杀死船后部2楼的|cRXP_ENEMY_Keelhaul|r船长。
>>|cRXP_ENEMY_Garr|r|cRXP_WARN_can充能造成严重伤害，眩晕2秒，|r|T132152:0|t[Srash]
.complete 608,2 
.unitscan Captain Keelhaul
.unitscan Garr Salthoof
step
#era
#completewith next
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。掠夺他们的|cRXX_Loot_Sunff|r
.complete 587,1 
.isOnQuest 587
step
#era
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。掠夺他们的|cRXX_Loot_Dizzy之眼|r
.complete 576,1 
.isOnQuest 576
step
#era
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79,60,0
.goto Stranglethorn Vale,32.02,79.47,60,0
.goto Stranglethorn Vale,29.83,81.11,60,0
.goto Stranglethorn Vale,27.18,82.79
>>杀死|cRXP_ENEMY_Bloodsail海盗|r。掠夺他们的|cRXX_Loot_Sunff|r
.complete 587,1 
.isOnQuest 587
step
#completewith next
>>杀死|cRXP_ENEMY_Naga探索者|r。掠夺他们的|cRXX_Loot_Akiris Reed|r
.complete 573,1 
.complete 617,1 
.mob Naga Explorer
step
.goto Stranglethorn Vale,28.96,61.94
>>点击|cRXP_PICK_圣泉|r掠夺|cRXP_loot_圣泉水|r
.complete 573,1 
step
.loop 25,Stranglethorn Vale,28.00,63.12,28.15,64.42,25.55,63.11,25.07,63.73,24.61,64.59,24.02,63.74,24.15,62.14,24.49,61.33,24.73,59.87,25.21,59.03,25.92,59.52,26.95,59.14,27.00,61.39,28.00,63.12
>>完成杀戮|cRXP_ENEMY_Naga Explorers|r。掠夺他们的|cRXX_Loot_Akiris Reed|r
.complete 573,1 
.complete 617,1 
.mob Naga Explorer
step
#completewith ZanzilSecretTurnin
.goto Stranglethorn Vale,26.70,73.60,150 >>Travel to Booty Bay
step
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回Booty Bay，然后与|cRXP_FRIENDLY_Captain Hecklebury Smotts|r通话
.turnin 8551 >>交任务: |cRXP_FRIENDLY_船长的箱子|r
.target Captain Hecklebury Smotts
.isQuestComplete 8551
step
#optional
.abandon 8551 >>放弃船长的胸脯
step
.goto Stranglethorn Vale,28.60,75.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_独眼迪兹|r
.turnin 576 >>交任务: |cRXP_FRIENDLY_海盗的眼睛|r
.target Dizzy One-Eye
.isQuestComplete 576
step
.goto Stranglethorn Vale,27.80,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.turnin 609 >>交任务: |cRXP_FRIENDLY_讨债行动|r
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,26.70,76.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海盗布劳兹|r
.turnin 617 >>交任务: |cRXP_FRIENDLY_一捆海蛇草|r
.target Privateer Bloads
step
#label ZanzilSecretTurnin
.goto Stranglethorn Vale,27.11,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.turnin 621 >>交任务: |cRXP_FRIENDLY_赞吉尔的秘密|r
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.13,77.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威士忌斯利姆|r
.accept 580 >>接任务: |cRXP_LOOT_威士忌斯利姆的酒|r
.target Whiskey Slim
step
#era
.goto Stranglethorn Vale,27.11,77.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.accept 1119 >>接任务: |cRXP_WARN_赞吉尔的药剂和蠢人酒|r
.target Crank Fizzlebub
step
.goto Stranglethorn Vale,27.00,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪格|r
.turnin 587 >>交任务: |cRXP_FRIENDLY_鼻烟|r
.target Deeg
.isQuestComplete 587
step
#era
.goto Stranglethorn Vale,27.10,77.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_舰队指挥官卡拉·海角|r
.turnin 608 >>交任务: |cRXP_FRIENDLY_血帆海盗|r
.target Fleet Master Seahorn
step
.goto Stranglethorn Vale,26.55,76.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_掘金者维兹尼克|r
.bankwithdraw 2725,2728,2735,2730,2742,2732,2748,2751,2734,2740,2749,2745,2738,2744,2750 >>从银行提取所有|T134332:0|t[Green Hills of Stranglethorn Pages]
.target Viznik Goldgrubber
step
#completewith next
.isOnQuest 1119
+|cRXP_WARN_请注意，赞齐尔的混合物和愚人节任务有一个2小时的计时器|r
step
.goto Stranglethorn Vale,26.87,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格林戈|r
.fly Grom'gol >>飞往Grom'gol大本营
.target Gringer
step
.goto Stranglethorn Vale,32.10,29.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_先知摩克萨尔丁|r
.turnin 573 >>交任务: |cRXP_FRIENDLY_摩克萨尔丁的魔法|r
.target Far Seer Mok'thardin
step
.goto Stranglethorn Vale,32.20,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯维雷|r
.turnin 589 >>交任务: |cRXP_FRIENDLY_歌唱水晶|r
.target Kin'weelay
step << Druid/Hunter
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
>>在树桩上的|cRXP_ENEMY_Arbor Tarantula |r上使用|T134325:0|t[Bug Catching Net]
.goto Stranglethorn Vale,44.6,19.8
.use 213562
.collect 213566,1 
.mob Arbor Tarantula
step
#completewith next
.goto Stranglethorn Vale,35.70,10.80,0
+Turn in all the |T134332:0|t[Green Hills of Stranglethorn - Pages] that you have
step
.goto Stranglethorn Vale,35.70,10.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet|r
.turnin 208 >>交任务: |cRXP_FRIENDLY_王牌猎人|r
.target Hemet Nesingwary
step
#som
#completewith next
.hs >>赫斯前往莫贾奇营地
.use 6948
step
#som
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格鲁尔|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Greul
step
#era
.goto Stranglethorn Vale,32.5,29.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞斯塔|r
.fly Stonard>>飞往斯托纳德
.target Thysta
.zoneskip Swamp of Sorrows
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 40-50
#version 20
#classic
<< Horde
#name 45-46 Swamp of Sorrows
#next 46-48 Tanaris
#era
step
#xprate <1.5
#era
.goto Swamp of Sorrows,34.30,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 2784 >>接任务: |cRXP_WARN_失落的荣耀|r
.target Fallen Hero of the Horde
step
#xprate <1.5
#era
.goto Swamp of Sorrows,34.30,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.complete 2784,1 
.target Fallen Hero of the Horde
.skipgossip
step
#xprate <1.5
#era
.goto Blasted Lands,52.76,2.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2784 >>交任务: |cRXP_FRIENDLY_失落的荣耀|r
.accept 2621 >>接任务: |cRXP_WARN_悔恨的战士|r
.target Fallen Hero of the Horde
step << Hunter/Druid
#xprate <1.5
#season 2
.train 416089,1 << Hunter
.train 410027,1 << Druid
.goto Swamp of Sorrows,25.0,54.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amaryllis Webb|r
>>从她那里获得|T134419:0|t【符文】 << Hunter
>>从她那里获得|T134419:0|t[生存符文] << Druid
>>|cRXP_WARN_您必须已检索到|r|T132195:0|t[采肉者标本]|cRXP_WARN_，|r|T237144:0|t[干草象甲标本]|cRXP_WARN_and|r|T132196:0|t[Abor Tarantula标本]|rXP_WARN_to才能接收此符文|r
.collect 213125,1 << Hunter 
.collect 210817,1 << Druid 
.skipgossip 217412,1
.target Amaryllis Webb
step << Hunter/Druid
#xprate <1.5
#season 2
.train 416089 >>使用|T134419:0|t[补气符文]学习|T236184:0|t[补气] << Hunter
.train 410027 >>使用|T134419:0|t[生存符文]学习|T132266:0|t[求生本能] << Druid
.itemcount 210817,1 << Druid
.itemcount 213125,1 << Hunter
step
#xprate <1.5
#era
#completewith next
.goto Swamp of Sorrows,46.0,54.2,50,0
.subzone 75 >>Travel to Stonard
step
#xprate <1.5
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费泽鲁尔|r, |cRXP_FRIENDLY_分队指挥官鲁尔格|r
.accept 1429 >>接任务: |cRXP_WARN_阿塔莱流放者|r
.goto Swamp of Sorrows,47.93,54.79
.turnin 2621 >>交任务: |cRXP_FRIENDLY_悔恨的战士|r
.accept 2622 >>接任务: |cRXP_WARN_丢失的命令|r
.goto Swamp of Sorrows,47.78,54.94
.target Fel'zerul
.target Dispatch Commander Ruags
step
#xprate >1.49
#era
.goto Swamp of Sorrows,47.93,54.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费泽鲁尔|r
.accept 1429 >>接任务: |cRXP_WARN_阿塔莱流放者|r
.target Fel'zerul
step
#xprate <1.5
#era
.goto Swamp of Sorrows,44.96,57.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_本戈尔|r
.turnin 2622 >>交任务: |cRXP_FRIENDLY_丢失的命令|r
.accept 2623 >>接任务: |cRXP_WARN_沼泽空谈者|r
.target Bengor
step
#xprate <1.5
#era
.goto Swamp of Sorrows,81.31,80.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托克卡尔|r
.accept 699 >>接任务: |cRXP_WARN_缺乏补给|r
.target Tok'Kar
step
#era
.goto Swamp of Sorrows,45.78,52.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏塔佐尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Thultazor
step
#era
.goto Swamp of Sorrows,45.38,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔塔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Rartar
step
#xprate <1.5
#era
.goto Swamp of Sorrows,82.0,68.6,40,0
.goto Swamp of Sorrows,86.6,58.6,40,0
.loop 25,Swamp of Sorrows,87.6,39.6,86.8,35.8,83.2,31.6,82.8,26.2,80.6,20.8,78.6,13.6,74.0,15.6,75.8,20.6,78.6,23.0,79.6,29.2,81.6,33.0,84.8,36.2,87.6,39.6
>>杀死|cRXP_ENEMY_Sawtothe Snappers|r。掠夺它们的|cRXX_Loot_爪|r
.complete 699,1 
.mob Sawtooth Snapper
step
#xprate <1.5
#era
.goto Swamp of Sorrows,81.40,80.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托克卡尔|r
.turnin 699 >>交任务: |cRXP_FRIENDLY_缺乏补给|r
.accept 1422 >>接任务: |cRXP_WARN_海中的威胁|r
.target Tok'Kar
step
#xprate <1.5
#era
.goto Swamp of Sorrows,83.70,80.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡塔尔|r
.turnin 1422 >>交任务: |cRXP_FRIENDLY_海中的威胁|r
.accept 1426 >>接任务: |cRXP_WARN_海中的威胁|r
.target Katar
step
#xprate <1.5
#era
.loop 25,Swamp of Sorrows,85.4,82.8,86.6,79.4,88.6,76.6,91.6,69.6,93.4,64.0,94.6,58.2,95.2,51.0,94.6,58.2,93.4,64.0,91.6,69.6,88.6,76.6,87.2,80.4,86.4,84.6,85.6,88.8,83.6,93.8,81.2,93.0,83.2,88.4,85.4,82.8
>>杀死|cRXP_ENEMY_Marsh Murlocs|r、|cRXD_ENEMY_ Marsh喷壶|r和|cRXP_ENEMY_马什跳蚤|r
.complete 1426,1 
.complete 1426,2 
.complete 1426,3 
.mob Marsh Murloc
.mob Marsh Inkspewer
.mob Marsh Flesheater
step
#xprate <1.5
#era
.goto Swamp of Sorrows,83.70,80.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡塔尔|r
.turnin 1426 >>交任务: |cRXP_FRIENDLY_海中的威胁|r
.accept 1427 >>接任务: |cRXP_WARN_海中的威胁|r
.target Katar
step
#xprate <1.5
#era
.goto Swamp of Sorrows,81.40,80.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托克卡尔|r
.turnin 1427 >>交任务: |cRXP_FRIENDLY_海中的威胁|r
.target Tok'Kar
step
#xprate <1.5
#era
.goto Swamp of Sorrows,83.75,80.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡塔尔|r
.accept 1428 >>接任务: |cRXP_WARN_海中的威胁|r
.target Katar
step
#xprate <1.5
#era
#completewith SwampTalker
.goto Swamp of Sorrows,66.03,79.60,40,0
.subzone 1817 >>向西行驶，进入斯塔尔博格洞穴
step
#xprate <1.5
#era
#completewith next
>>杀死|cRXP_ENEMY_Marsh Murlocs|r、|cRXD_ENEMY_ Marsh喷壶|r和|cRXP_ENEMY_马什跳蚤|r
>>|cRXP_WARN_它们在营地以西的斯塔尔博格洞穴以更高的速度产卵|r
.complete 1428,1 
.complete 1428,2 
.complete 1428,3 
.mob Marsh Murloc
.mob Marsh Inkspewer
.mob Marsh Flesheater
step
#xprate <1.5
#era
#label SwampTalker
.goto Swamp of Sorrows,66.08,77.67,60,0
.goto Swamp of Sorrows,62.90,87.40
>>杀死|cRXP_ENEMY_Swamp Talker|r。掠夺他以获得|cRXX_Loot_ Warchief的命令|r
>>|cRXP_WARN_保存|r|cRXP_ENEMY_Swamp Talker|r|cRXP_WARN_的冷却时间。他的附加值在1次命中中死亡，但如果活着，会造成重大伤害。|r
.complete 2623,1 
.unitscan Swamp Talker
step
#xprate <1.5
#era
.loop 25,Swamp of Sorrows,62.48,87.74,60.95,84.20,62.20,83.16,64.60,81.25,66.42,84.59,63.34,86.47,63.84,91.64,62.48,87.74
>>杀死|cRXP_ENEMY_Marsh Murlocs|r、|cRXD_ENEMY_ Marsh喷壶|r和|cRXP_ENEMY_马什跳蚤|r
>>|cRXP_WARN_它们在营地以西的斯塔尔博格洞穴以更高的速度产卵|r
.complete 1428,1 
.complete 1428,2 
.complete 1428,3 
.mob Marsh Murloc
.mob Marsh Inkspewer
.mob Marsh Flesheater
step
#xprate <1.5
#era
.goto Swamp of Sorrows,83.70,80.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡塔尔|r
.turnin 1428 >>交任务: |cRXP_FRIENDLY_海中的威胁|r
.target Katar
step
#xprate <1.5
#era
#softcore
#completewith next
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step << Hunter/Warlock/Shaman/Warrior
#xprate <1.5
#era
#hardcore
#completewith next
.goto Swamp of Sorrows,46.0,54.2,50,0
.subzone 75 >>Travel west to Stonard
step << Hunter
#era
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧格鲁姆|r
.train 14304 >>训练你的职业技能
.target Ogrom
.xp <46,1
.xp >48,1
step << Hunter
#era
#optional
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧格鲁姆|r
.train 14321 >>训练你的职业技能
.target Ogrom
.xp <48,1
step << Hunter
#era
.goto Swamp of Sorrows,47.35,52.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格罗科尔|r
.train 24562 >>训练你的宠物法术
.target Grokor
.xp <48,1
step << Warlock
#era
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡托什|r
.train 11699 >>训练你的职业技能
.target Kartosh
.xp <46,1
.xp >48,1
step << Warlock
#era
#optional
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡托什|r
.train 11712 >>训练你的职业技能
.target Kartosh
.xp <48,1
step << Warlock
#era
.goto Swamp of Sorrows,48.59,55.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.vendor >>购买任何你能负担得起的宠物升级
.target Greshka
step << Shaman
#era
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.train 10586 >>训练你的职业技能
.target Haromm
.xp <46,1
.xp >48,1
step << Shaman
#era
#optional
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.train 10431 >>训练你的职业技能
.target Haromm
.xp <48,1
step << Warrior
#era
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马尔罗什|r
.train 11578 >>训练你的职业技能
.target Malosh
.xp <46,1
.xp >48,1
step << Warrior
#era
#optional
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马尔罗什|r
.train 20661 >>训练你的职业技能
.target Malosh
.xp <48,1
step
#xprate <1.5
#era
.goto Swamp of Sorrows,34.30,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2623 >>交任务: |cRXP_FRIENDLY_沼泽空谈者|r
.accept 2801 >>接任务: |cRXP_LOOT_悲伤的故事|r
.target Fallen Hero of the Horde
step
#xprate <1.5
#era
.goto Swamp of Sorrows,34.30,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.complete 2801,1 
.skipgossip
step
#xprate <1.5
#era
.goto Blasted Lands,52.76,2.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 2801 >>交任务: |cRXP_FRIENDLY_悲伤的故事|r
.target Fallen Hero of the Horde
step
#era
.goto Swamp of Sorrows,22.90,48.30
>>在桥下的水中单击|cRXP_PICK_Soggy Scroll|r
.turnin 624 >>交任务: |cRXP_FRIENDLY_科泰罗的谜题|r
.accept 625 >>接任务: |cRXP_LOOT_科泰罗的谜题|r
.isOnQuest 624
step
#era
#completewith next
.hs >>赫斯前往莫贾奇营地
.use 6948
step
#era
.goto Feralas,74.81,45.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板格鲁尔|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Greul
step << Druid
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 9823 >>训练你的职业技能
.target Jannos Lighthoof
.xp <46,1
.xp >48,1
step << Druid
#optional
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 22828 >>训练你的职业技能
.target Jannos Lighthoof
.xp <48,1
step
.goto Feralas,74.50,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3122 >>交任务: |cRXP_FRIENDLY_向巫医尤克里回复|r
.accept 3123 >>接任务: |cRXP_LOOT_测试容器|r
.accept 3380 >>接任务: |cRXP_LOOT_沉没的神庙|r
.target Witch Doctor Uzer'i
.xp <46,1
step
.goto Feralas,74.50,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3122 >>交任务: |cRXP_FRIENDLY_向巫医尤克里回复|r
.accept 3123 >>接任务: |cRXP_LOOT_测试容器|r
.target Witch Doctor Uzer'i
step
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩|r
.fly Tanaris>>前往: 塔纳利斯
.target Shyn
.zoneskip Tanaris
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 40-50
#classic
<< Horde
#name 46-48 Tanaris
#next 48-49 The Hinterlands
#somname 45-47 Tanaris
step
#completewith next
.goto Thousand Needles,70.58,62.69,200 >>前往: |cRXP_PICK_千针石林|r
step
#era
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.turnin 1119 >>交任务: |cRXP_FRIENDLY_赞吉尔的药剂和蠢人酒|r
.timer 13,Kravel Koalbeard RP
.target Kravel Koalbeard
step
.goto Thousand Needles,80.33,76.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉泽瑞克|r
.turnin 1187 >>交任务: |cRXP_FRIENDLY_拉泽瑞克的调整|r
.target Razzeric
.isQuestComplete 1187
step
.goto Thousand Needles,80.33,76.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉泽瑞克|r
.accept 1188 >>接任务: |cRXP_LOOT_安全第一|r
.target Razzeric
.isQuestTurnedIn 1187
step
#era
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1120 >>接任务: |cRXP_WARN_灌醉侏儒|r
.target Kravel Koalbeard
step
#era
.goto Thousand Needles,77.56,76.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_侏儒车队老板|r
.turnin 1120 >>交任务: |cRXP_FRIENDLY_灌醉侏儒|r
.target Gnome Pit Boss
step
#era
.goto Thousand Needles,77.79,77.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel|r
.accept 1122 >>接任务: |cRXP_WARN_向菲兹巴布报告|r
.target Kravel Koalbeard
step
#completewith next
.goto Thousand Needles,75.44,97.37,40,0
.subzone 976 >>前往: |cRXP_PICK_塔纳利斯|r
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 82 >>接任务: |cRXP_LOOT_腐化之巢|r
.target Kravel Koalbeard
step
.goto Tanaris,51.90,27.00
>>点击巨型笼子旁的|cRXP_PICK_Wanted海报|r
.accept 2875 >>接任务: |cRXP_LOOT_通缉：安德雷·费尔比德|r
step
.goto Tanaris,51.56,26.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.accept 3362 >>接任务: |cRXP_LOOT_灌木谷|r
.target Tran'rek
step
.goto Tanaris,51.00,27.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史瑞夫|r
.turnin 1188 >>交任务: |cRXP_FRIENDLY_安全第一|r
.target Shreev
.isQuestComplete 1188
step
.goto Tanaris,51.80,28.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin|r
.accept 2605 >>接任务: |cRXP_LOOT_口渴的地精|r
.target Marin Noggenfogger
step
.goto Tanaris,52.50,27.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板菲兹格瑞博|r
.home >>将您的炉石设置为Gadgetzan
.target Innkeeper Fizzgrimble
step
.goto Tanaris,52.30,27.00
>>点击传送机旁边的|cRXP_PICK_Egg-O-Matic|r，然后交上你的希波格里普蛋
.accept 2741 >>接任务: |cRXP_WARN_超级测蛋器|r
.turnin 2741 >>交任务: |cRXP_FRIENDLY_超级测蛋器|r
.addquestitem 8564,2741
step
+打开您的|T132594:0|t[蛋箱]
.itemcount 8647,1 
.use 8647
step
.goto Tanaris,52.80,27.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安蒂|r
.accept 5863 >>接任务: |cRXP_LOOT_砂槌食人魔|r
.target Andi Lynn
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2750 >>接任务: |cRXP_WARN_坏掉的蛋|r
.turnin 2750 >>交任务: |cRXP_FRIENDLY_坏掉的蛋|r
.target Curgle Cranklehop
.itemcount 8646,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2749 >>接任务: |cRXP_WARN_普通的蛋|r
.turnin 2749 >>交任务: |cRXP_FRIENDLY_普通的蛋|r
.target Curgle Cranklehop
.itemcount 8645,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2748 >>接任务: |cRXP_WARN_优良的蛋|r
.turnin 2748 >>交任务: |cRXP_FRIENDLY_优良的蛋|r
.target Curgle Cranklehop
.itemcount 8644,1 
step
.goto Tanaris,52.358,26.904
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克格尔·曲藤|r
.accept 2747 >>接任务: |cRXP_WARN_特别的蛋|r
.turnin 2747 >>交任务: |cRXP_FRIENDLY_特别的蛋|r
.target Curgle Cranklehop
.itemcount 8643,1 
step
+打开您的|T132594:0|t[配给箱]
.itemcount 9539,1 
.use 9539
step
+打开您的|T132595:0|t[魔盒]
.itemcount 9540,1 
.use 9540
step
+打开您的|T132597:0|t[礼品盒]
.itemcount 9541,1 
.use 9541
step
#completewith next
.goto Tanaris,52.64,25.73,50,0
.goto Tanaris,67.1,22.4,50,0
.subzone 977 >>向东行驶至Steamweidle港
step
.goto Tanaris,66.60,22.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_傲慢的店主|r
.accept 8365 >>接任务: |cRXP_LOOT_海盗的帽子！|r
.target Haughty Modiste
step
.goto Tanaris,67.00,22.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.turnin 3520 >>交任务: |cRXP_FRIENDLY_尖啸者的灵魂|r
.target Yeh'kinya
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Bilgewhizzle, |cRXP_FRIENDLY_斯杜雷|r
.accept 8366 >>接任务: |cRXP_LOOT_南海复仇|r
.goto Tanaris,67.06,23.89
.accept 2873 >>接任务: |cRXP_LOOT_斯杜雷的货物|r
.goto Tanaris,67.11,23.98
.target Security Chief Bilgewhizzle
.target Stoley
step
#completewith FireBeard
.goto Tanaris,68.76,41.51,30,0
.subzone 1336 >>向南行驶至Lost Rigger Cove
step
#completewith StolenCargo
>>杀死|cRXP_ENEMY_南海海盗|r。掠夺他们的|cRXX_Loot_海盗帽|r
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
.complete 8365,1 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
#completewith next
>>在西楼二楼为|cRXP_Loot_Stoley的货物|r抢劫|cRXP_PICK_Stolen货物|r
.complete 2873,1 
step
#label FireBeard
.goto Tanaris,73.37,47.14
>>杀死|cRXP_ENEMY_Andre Firebeard|r。掠夺他的|cRXX_Loot_Head|r
>>|cRXP_WARN_他和附近的暴徒一起停车。如果可以的话，分开拉他|r << Mage/Warlock
.complete 2875,1 
.unitscan Andre Firebeard
step
#label StolenCargo
.goto Tanaris,72.23,46.81
>>在西楼二楼为|cRXP_Loot_Stoley的货物|r抢劫|cRXP_PICK_Stolen货物|r
.complete 2873,1 
step
.loop 25,Tanaris,70.94,42.85,72.22,44.35,72.58,45.30,71.07,46.03,71.25,47.98,72.39,48.23,72.59,47.10,73.27,47.99,74.25,47.27,73.68,45.89,72.58,45.30,72.22,44.35,70.94,42.85
>>杀死|cRXP_ENEMY_南海海盗|r。掠夺他们的|cRXX_Loot_海盗帽|r
.complete 8366,1 
.complete 8366,2 
.complete 8366,3 
.complete 8366,4 
.complete 8365,1 
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
.loop 25,Tanaris,70.94,42.85,72.22,44.35,72.58,45.30,71.07,46.03,71.25,47.98,72.39,48.23,72.59,47.10,73.27,47.99,74.25,47.27,73.68,45.89,72.58,45.30,72.22,44.35,70.94,42.85
>>杀死|cRXP_ENEMY_南海海盗|r
.xp 47 >>升级到47级
.mob Southsea Pirate
.mob Southsea Freebooter
.mob Southsea Dock Worker
.mob Southsea Swashbuckler
step
#optional
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Marvon|r
.turnin 3380 >>交任务: |cRXP_FRIENDLY_沉没的神庙|r
.target Marvon Rivetseeker
.isOnQuest 3380
step
#completewith Gahzridian
.goto Tanaris,68.27,41.21,30,0
.goto Tanaris,65.71,41.53,30,0
.goto Tanaris,52.71,45.92,50,0
.subzone 1938 >>离开Lost Rigger Cove，然后向西行驶至Broken Pillar
step
#optional
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t返回|cRXP_FRIENDLY_Marvon|r
.turnin 3380 >>交任务: |cRXP_FRIENDLY_沉没的神庙|r
.accept 3161 >>接任务: |cRXP_LOOT_加兹瑞迪安|r
.target Marvon Rivetseeker
.isOnQuest 3380
step
#label Gahzridian
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.accept 3161 >>接任务: |cRXP_LOOT_加兹瑞迪安|r
.target Marvon Rivetseeker
step
#completewith next
.subzone 982 >>继续往西到邪恶的巢穴
step
.goto Tanaris,35.68,39.78,70,0
.goto Tanaris,36.55,41.98,70,0
.goto Tanaris,35.59,44.08,70,0
.goto Tanaris,35.60,48.79,70,0
.goto Tanaris,31.70,49.12,70,0
.goto Tanaris,30.83,46.10,70,0
.goto Tanaris,35.68,39.78
>>杀死|cRXP_ENEMY_Centipar Silithids|r。掠夺它们的|cRXX_Loot_Inter零件|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Centipar Swarmers |r|cRXP_WARN_。他们可以从很远的距离孕育出许多小黄人和社会攻击|r
>>|cRXP_WARN_All | r | cRXP_ENEMY_Centipar | r | c RXP_WARN_cast | r | T132152:0 | t[Thrash]| cRXF_WARN_（每10秒额外攻击2次）
.complete 82,1 
.mob Centipaar Wasp
.mob Centipaar Stinger
.mob Centipaar Swarmer
.mob Centipaar Worker
.mob Centipaar Sandreaver
.mob Centipaar Tunneler
step
#completewith Garmarok
.goto Tanaris,40.98,57.16,50,0
.subzone 983 >>向东南行驶至Dunemaul大院
step
#completewith next
>>杀死|cRXP_ENEMY_Dunemaul Brutes|r和|cRXP_ENEMY_ Dunemaul Enforcers|r
>>|cRXP_WARN_避免|r|cRXP_ENEMY_Dunemaul Warlocks|r|cRXP_WARN_，因为它们有荆棘诅咒|r << Rogue/Warrior/Shaman/Paladin/Hunter
.complete 5863,1 
.complete 5863,2 
.mob Dunemaul Brute
.mob Dunemaul Enforcer
step
#label Garmarok
.goto Tanaris,41.50,57.80
>>在洞穴中杀死|cRXP_ENEMY_Gor'marok|r
>>|cRXP_WARN_小心他的重伤害输出和致命一击|r
.complete 5863,3 
.unitscan Gor'marok the Ravager
step
#completewith next
.use 9978 >>装备|T133151:0|t[Gahz'ridian探测器]
>>为|cRXP_Loot_Gahz'ridian饰品|r掠夺|cRX_PICK_成堆的沙子|r
>>|cRXP_WARN_Gahz'ridian会出现在你的小地图上。你可以在东月和南月遗址及其周围找到货物|r
.complete 3161,1 
.use 9978
step
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23,60,0
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23
>>杀死|cRXP_ENEMY_Dunemaul Brutes|r和|cRXP_ENEMY_ Dunemaul Enforcers|r
>>|cRXP_WARN_避免|r|cRXP_ENEMY_Dunemaul Warlocks|r|cRXP_WARN_，因为它们有荆棘诅咒|r << Rogue/Warrior/Shaman/Paladin/Hunter
.complete 5863,1 
.complete 5863,2 
.mob Dunemaul Brute
.mob Dunemaul Enforcer
step
.goto Tanaris,39.69,78.30,60,0
.goto Tanaris,39.21,80.25,25,0
.goto Tanaris,38.67,80.45,25,0
.goto Tanaris,38.47,80.99,30,0
.goto Tanaris,37.63,81.40
>>单击|cRXP_PICK_Uldum基座|r
>>|cRXP_WARN_小心！该地区有精英|r|cRXP_ENEMY_Dune Giants|r|cRXP_WARN_in。按照航路点箭头避开农业|r
.turnin 2966 >>交任务: |cRXP_FRIENDLY_拭目以待|r
.accept 2954 >>接任务: |cRXP_WARN_石头卫士|r
.unitscan Dune Smasher
.unitscan Raging Dune Smasher
.isQuestTurnedIn 2965
.dungeon ULDA
step
.goto Tanaris,37.63,81.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺甘农的石卫兵|r
.complete 2954,1 
.skipgossip
.target Stone Watcher of Norgannon
.isQuestTurnedIn 2965
.dungeon ULDA
step
.goto Tanaris,37.63,81.40
>>单击|cRXP_PICK_Uldum基座|r
.turnin 2954 >>交任务: |cRXP_FRIENDLY_石头卫士|r
.accept 2967 >>接任务: |cRXP_WARN_返回雷霆崖|r
.isQuestTurnedIn 2965
.dungeon ULDA
step
#completewith Thistleshrubs
.goto Tanaris,31.06,64.91,20,0
.subzone 980 >>前往蓟花谷
step
#completewith next
>>杀死|cRXP_ENEMY_Thistlesbush Dew Collectors|r。掠夺它们以获得|cRXD_Loot_Laden Dew Gland|r
>>|cRXP_WARN_它的掉落率很低，而且它的产卵与其他暴民类型共享，所以杀死所有东西让它们更快地产卵|r
.complete 2605,1 
.mob Thistleshrub Dew Collector
step
#label Thistleshrubs
.loop 25,Tanaris,29.50,62.98,27.76,65.80,28.30,68.39,30.63,66.57,30.62,63.76,29.50,62.98
>>杀死|cRXP_ENEMY_所有蓟灌木元素|r
.complete 3362,1 
.complete 3362,2 
.mob Gnarled Thistleshrub
.mob Thistleshrub Rootshaper
step
.loop 25,Tanaris,29.50,62.98,27.76,65.80,28.30,68.39,30.63,66.57,30.62,63.76,29.50,62.98
>>杀死|cRXP_ENEMY_Thistlesbush Dew Collectors|r。掠夺它们以获得|cRXD_Loot_Laden Dew Gland|r
>>|cRXP_WARN_它的掉落率很低，而且它的产卵与其他暴民类型共享，所以杀死所有东西让它们更快地产卵|r
.complete 2605,1 
.mob Thistleshrub Dew Collector
step
.loop 25,Tanaris,29.37,59.97,28.70,67.32,31.66,74.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t搜索|cRXP_FRIENDLY_Tooga|r，然后与他交谈，开始他的护送任务
>>|cRXP_WARN_他在该地区有4个不同的产卵地点|r
>|cRXP_WARN_Be careful, you will fail the quest if you get too far away from him|r
.accept 1560 >>接任务: |cRXP_LOOT_图加的任务|r
.target Tooga
step
#completewith next
>>导向|cRXP_FRIENDLY_Tooga|r朝向Steamweidle港
>|cRXP_WARN_You will fail the quest if you get too far away from him|r
.complete 1560,1 
.target Tooga
step
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23,60,0
.goto Tanaris,44.97,63.83,80,0
.goto Tanaris,47.66,65.53,80,0
.goto Tanaris,41.98,71.25,80,0
.goto Tanaris,39.86,73.23
.use 9978 >>装备|T133151:0|t[Gahz'ridian探测器]
>>为|cRXP_Loot_Gahz'ridian饰品|r掠夺|cRX_PICK_成堆的沙子|r
>>|cRXP_WARN_Gahz'ridian会出现在你的小地图上。你可以在东月和南月遗址及其周围找到货物|r
.complete 3161,1 
.use 9978
step
.goto Tanaris,66.58,25.64
>>导向|cRXP_FRIENDLY_Tooga|r朝向Steamweidle港
>|cRXP_WARN_You will fail the quest if you get too far away from him|r
.complete 1560,1 
.target Tooga
step
.goto Tanaris,66.58,25.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔塔|r
.turnin 1560 >>交任务: |cRXP_FRIENDLY_图加的任务|r
.target Torta
step
#completewith next
.goto Tanaris,67.1,22.4,50,0
.subzone 977 >>向北行驶至Steamweidle港
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Bilgewhizzle, |cRXP_FRIENDLY_斯杜雷|r
.turnin 2875 >>交任务: |cRXP_FRIENDLY_通缉：安德雷·费尔比德|r
.turnin 8366 >>交任务: |cRXP_FRIENDLY_南海复仇|r
.goto Tanaris,67.06,23.89
.turnin 2873 >>交任务: |cRXP_FRIENDLY_斯杜雷的货物|r
.accept 2874 >>接任务: |cRXP_LOOT_给马克基雷的货物|r
.goto Tanaris,67.11,23.98
.target Security Chief Bilgewhizzle
.target Stoley
step
.goto Tanaris,66.60,22.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_傲慢的店主|r
.turnin 8365 >>交任务: |cRXP_FRIENDLY_海盗的帽子！|r
.target Haughty Modiste
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.accept 3527 >>接任务: |cRXP_WARN_摩沙鲁的预言|r
.target Yeh'kinya
.isQuestTurnedIn 3520
.dungeon ZF
step
#completewith GadgetFood1
.hs >>回到Gadgetzan
.use 6948
.cooldown item,6948,>0
step
#completewith next
.subzone 976 >>前往: |cRXP_PICK_塔纳利斯|r
.cooldown item,6948,<0
step
#label GadgetFood1
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪尔格·奎克里弗|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Dirge Quikcleave
step << skip
.goto Tanaris,52.30,28.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉布索恩|r
.bankdeposit 9245 >>将偷来的瓶子存入银行
.target Gimblethorn
step
.goto Tanaris,51.80,28.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin|r
.turnin 2605 >>交任务: |cRXP_FRIENDLY_口渴的地精|r
.accept 2606 >>接任务: |cRXP_LOOT_好味道|r
.target Marin Noggenfogger
step
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 82 >>交任务: |cRXP_FRIENDLY_腐化之巢|r
.target Alchemist Pestlezugg
step
.goto Tanaris,51.10,26.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普琳科|r
.turnin 2606 >>交任务: |cRXP_FRIENDLY_好味道|r
.accept 2641 >>接任务: |cRXP_LOOT_斯普琳科的秘密佐料|r
.target Sprinkle
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.accept 10 >>接任务: |cRXP_LOOT_谢申克的救赎|r
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,51.50,26.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 3362 >>交任务: |cRXP_FRIENDLY_灌木谷|r
.target Tran'rek
step
.goto Tanaris,52.80,27.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安蒂|r
.turnin 5863 >>交任务: |cRXP_FRIENDLY_砂槌食人魔|r
.target Andi Lynn
step
.goto Tanaris,52.70,45.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3161 >>交任务: |cRXP_FRIENDLY_加兹瑞迪安|r
.target Marvon Rivetseeker
.isQuestComplete 3161
step
#completewith next
.goto Tanaris,56.19,66.62,30,0
.subzone 981 >>向南前往缺口追逐
step
#label BugHole
.goto Tanaris,55.69,69.44,50,0
.goto Tanaris,56.36,68.44,30,0
.goto Tanaris,57.45,70.45,30,0
.goto Tanaris,55.96,71.16
>>进入silithid配置单元，然后单击|cRXP_PICK_Scrimshank的测量设备控制台|r并掠夺|cRXP-loot_Scrimsshank的勘测设备|r
>>|cRXP_WARN_对|cRXP_ENEMY_Hazzali Swarmers |r|cRXP-WARN_a要格外小心，因为他们可以快速召唤出造成高伤害的附加值。他们还可以从极端距离对其他暴民进行社交攻击|r
.complete 10,1 
.unitscan Hazzali Swarmer
step
.use 8623 >>如果你发现了一个|T132836:0|t[OOX-17/TN遇险信标]，点击它并接受它的任务。否则，跳过此步骤
.accept 351 >>接任务: |cRXP_LOOT_寻找OOX-17/TN！|r
.itemcount 8623,1
step
#optional
.goto Tanaris,60.20,64.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-17/TN|r
.turnin 351 >>交任务: |cRXP_FRIENDLY_寻找OOX-17/TN！|r
.target Homing Robot OOX-17/TN
.isOnQuest 351
step
#optional
.goto Tanaris,60.23,64.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-17/TN|r
>>|cRXP_WARN_这个任务可能很困难。吃/喝到饱，并使用任何自我缓冲（卷轴、食物、灵丹妙药等）|r
.accept 648 >>接任务: |cRXP_LOOT_拯救OOX-17/TN！|r
.target Homing Robot OOX-17/TN
.isQuestTurnedIn 351
step
#optional
.goto Tanaris,67.09,23.18
>>护送|cRXP_FRIENDLY_Homing Robot OOX-17/TN|r到Steamweidle Port
>>|cRXP_WARN_一包3级46-47级|r|cRXP_ENEMY_Scorpions|r|cRXP_WARN_将在下一个山脉产卵|r
>>|cRXP_WARN_一组3级43-45|r|cRXP_ENEMY_Wastwark暴徒|r|cRXP_WARN_将在水泉场周围产卵。聚焦|r|cRXP_ENEMY_Scofflaw|r|cRXP_WARN_。当你的生命值低于20%时，它会执行|r
.complete 648,1 
.target Homing Robot OOX-17/TN
.unitscan Wastewander Scofflaw
.isQuestTurnedIn 351
step
#sticky
#complete with EnterZF
.subzone 978 >>现在你应该找一个小组去祖法拉克
.dungeon ZF
step << Shaman
#completewith next
.hs >>心灵或星体召回Gadgetzan
.subzoneskip 976
step << Shaman
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Dirge Quikcleave
step << !Shaman
#completewith next
.goto Tanaris,50.6,28.1
.subzone 976 >>前往: |cRXP_PICK_塔纳利斯|r
step
.goto Tanaris,50.21,27.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 10 >>交任务: |cRXP_FRIENDLY_谢申克的救赎|r
.accept 110 >>接任务: |cRXP_LOOT_昆虫研究|r
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 110 >>交任务: |cRXP_FRIENDLY_昆虫研究|r
.accept 113 >>接任务: |cRXP_LOOT_昆虫研究|r
.target Alchemist Pestlezugg
step
.goto Tanaris,50.20,27.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级勘探员菲兹杜瑟|r
.turnin 113 >>交任务: |cRXP_FRIENDLY_昆虫研究|r
.accept 32 >>接任务: |cRXP_LOOT_异种蝎的威胁|r
.target Senior Surveyor Fizzledowser
step
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦顿·轻锤|r
.accept 3042 >>接任务: |cRXP_WARN_巨魔调和剂|r
.target Trenton Lighthammer
.dungeon ZF
step
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r
.accept 2768 >>接任务: |cRXP_WARN_探水棒|r
.target Chief Engineer Bilgewhizzle
.dungeon ZF
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.accept 2865 >>接任务: |cRXP_WARN_圣甲虫的壳|r
.target Tran'rek
.dungeon ZF
step
#completewith EnterZF
>>|cRXP_WARN_如果有人拥有Zul'Farrak的|r|cRXP_FRIENDLY_Mallet，请小组中的某个人分享以下任务|r
.accept 2770 >>接任务: |cRXP_WARN_加兹瑞拉|r
.dungeon ZF
step
#label EnterZF
.goto Tanaris,38.91,20.78,40,0
.goto Tanaris,38.731,19.839
.zone 219 >>Enter Zul'Farrak
.dungeon ZF
step
#completewith Gahzrilla
>>杀死|cRXP_ENEMY_Trolls|r。掠夺他们的|cRXX_Loot_Toll脾气|r
.complete 3042,1 
.isOnQuest 3042
.dungeon ZF
step
#completewith next
>>杀死|cRXP_ENEMY_Scarab|r。掠夺他们的|cRXD_Loot_未被破解的Scarab外壳|r
.complete 2865,1 
.isOnQuest 2865
.dungeon ZF
step
>>杀死|cRXP_ENEMY_Theka烈士|r。掠夺他获得|cRXX_Loot_First Mosh'aru平板电脑|r
.complete 3527,1 
.mob Theka the Martyr
.isOnQuest 3527
.dungeon ZF
step
>>杀死|cRXP_ENEMY_Scarab|r。掠夺他们的|cRXD_Loot_未被破解的Scarab外壳|r
.complete 2865,1 
.isOnQuest 2865
.dungeon ZF
step
#completewith next
+Ascend the Pyramid
>>杀死|cRXP_ENEMY_Sandfury刽子手|r。掠夺他以获得|cRXX_Loot_刽子手的钥匙|r
>>|cRXP_WARN_聚会中的任何人都可以掠夺|r|cRXP_loot_Key|r
>>|cRXP_WARN_使用|r|cRXP_LOOT_刽子手的钥匙|r|cRXP_WARN_在其中一个|cRX_PICK_Troll笼子|r上释放|cRXT_FRIENDLY_Srgeant Bly|r和他的乐队|r
.collect 8444,1 
.disablecheckbox
.isOnQuest 2768
.mob Sandfury Executioner
.dungeon ZF
step
>>防守|cRXP_FRIENDLY_Srgeant Bly|r和他的乐队，然后在短时间后与他们一起向下移动
>>杀死|cRXP_ENEMY_Nekrum Gutchewer|r。吃吃喝喝，然后与|cRXP-FRIENDLY_Srgeant Bly|r交谈，与他对抗
>>杀死|cRXP_ENEMY_Bly中士|r。掠夺他获得|cRXX_Loot_Divinomatic Rod|r
.complete 2768,1 
.isOnQuest 2768
.skipgossip
.dungeon ZF
step
>>杀死|cRXP_ENEMY_Hydromancer Velratha|r。掠夺她获得|cRXD_Loot_Tiara of the Deep|r和|cRXT_Loot_Second Mosh'aru Tablet|r
.complete 2846,1 
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 2846
.isOnQuest 3527
.dungeon ZF
step
>>杀死|cRXP_ENEMY_Hydromancer Velratha|r。掠夺她获得|cRXX_Loot_Tiara of the Deep|r
.complete 2846,1 
.mob Hydromancer Velratha
.isOnQuest 2846
.dungeon ZF
step
>>杀死|cRXP_ENEMY_Hydromancer Velratha|r。掠夺她获得|cRXX_Loot_Second Mosh'aru平板电脑|r
.complete 3527,2 
.mob Hydromancer Velratha
.isOnQuest 3527
.dungeon ZF
step
#label Gahzrilla
>>|cRXP_WARN_使用|r|T133056:0|t[Zul'Farrak的Mallet]|cRXP_WARN_on the |cRX_PICK_Gong|r来召唤|r|cRXP_ENEMY_Gahz'rilla|r
>>杀死|cRXP_ENEMY_Gahz'rilla|r。掠夺他获得|cRXD_Loot_Gahz'rilla的带电天平|r
>>|cRXP_WARN_如果你的队伍中没有人拥有|r|T133056:0|t[Zul'Farrak的Mallet]|cRXP_WARN_，你将无法召唤|r|cRXP-ENEMY_Gahz'rilla|r
.complete 2770,1 
.mob Gahz'rilla
.isOnQuest 2770
.dungeon ZF
step
>>杀死|cRXP_ENEMY_Trolls|r。掠夺他们的|cRXX_Loot_Toll脾气|r
.complete 3042,1 
.isOnQuest 3042
.dungeon ZF
step
#completewith FlyDWM2
.hs >>回到Gadgetzan
.use 6948
.cooldown item,6948,>0
.dungeon ZF
.zoneskip Tanaris
step
.goto Tanaris,51.413,28.752
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特伦顿·轻锤|r
.turnin 3042 >>交任务: |cRXP_FRIENDLY_巨魔调和剂|r
.target Trenton Lighthammer
.isQuestComplete 3042
.dungeon ZF
step
.goto Tanaris,52.462,28.514
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_首席工程师沙克斯·比格维兹|r
.turnin 2768 >>交任务: |cRXP_FRIENDLY_探水棒|r
.target Chief Engineer Bilgewhizzle
.isQuestComplete 2768
.dungeon ZF
step
.goto Tanaris,51.566,26.759
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 2865 >>交任务: |cRXP_FRIENDLY_圣甲虫的壳|r
.target Tran'rek
.isQuestComplete 2865
.dungeon ZF
step
#era
.goto Tanaris,52.40,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilgewhizzle|r
.accept 864 >>接任务: |cRXP_LOOT_向药剂师金格回报|r
.target Chief Engineer Bilgewhizzle
.isQuestTurnedIn 654
step
#completewith next
.goto Tanaris,66.989,22.354,100 >>前往Steamweidle港
.dungeon ZF
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.turnin 3527 >>交任务: |cRXP_FRIENDLY_摩沙鲁的预言|r
.target Yeh'kinya
.isQuestComplete 3527
.dungeon ZF
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.accept 4787 >>接任务: |cRXP_WARN_远古之卵|r
.target Yeh'kinya
.isQuestTurnedIn 3527
.dungeon ZF
step
#completewith next
.zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
.dungeon ZF
step
.goto Thousand Needles,78.143,77.120
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹尔·铜栓|r
.turnin 2770 >>交任务: |cRXP_FRIENDLY_加兹瑞拉|r
.target Wizzle Brassbolts
.isQuestComplete 2770
.dungeon ZF
step
#optional
.abandon 2770 >>Abandon Gahz'rilla
.dungeon ZF
step
#label FlyDWM2
#era
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Brackenwall >>Fly to Dustwallow Marsh
.target Bulkrek Ragefist
step
#era
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉兹辛比|r
.accept 1170 >>接任务: |cRXP_LOOT_奥妮克希亚的血脉|r
.target Draz'Zilb
step
#era
.goto Dustwallow Marsh,36.30,31.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫格穆洛克大王|r
.turnin 1170 >>交任务: |cRXP_FRIENDLY_奥妮克希亚的血脉|r
.accept 1171 >>接任务: |cRXP_LOOT_奥妮克希亚的血脉|r
.target Overlord Mok'Morokk
step
#era
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉兹辛比|r
.turnin 1171 >>交任务: |cRXP_FRIENDLY_奥妮克希亚的血脉|r
.accept 1172 >>接任务: |cRXP_LOOT_奥妮克希亚的血脉|r
.target Draz'Zilb
step
#era
#completewith next
.goto Dustwallow Marsh,32.28,65.54,30,0
.subzone 498 >>向南前往Bloodfen Burrow
step
#era
.goto Dustwallow Marsh,31.10,66.10
>>进入洞穴，然后单击岩石上的|cRXP_PICK_Musty Scroll|r
>>|cRXP_WARN_小心点，因为这个区域是超级典当行|r
.turnin 625 >>交任务: |cRXP_FRIENDLY_科泰罗的谜题|r
.accept 626 >>接任务: |cRXP_LOOT_科泰罗的谜题|r
.isOnQuest 625
step
#era
.goto Dustwallow Marsh,48.50,75.30,25,0
.goto Dustwallow Marsh,55.9,81.9,25,0
.goto Dustwallow Marsh,53.6,72.5
>>点击|cRXP_PICK_Onyxia的蛋|r进行销毁
.complete 1172,1 
step
.goto Dustwallow Marsh,46.021,57.096
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔贝萨|r
.turnin 2846 >>交任务: |cRXP_FRIENDLY_深渊皇冠|r
.target Tabetha
.isQuestComplete 2991
.dungeon ZF
step
.goto Dustwallow Marsh,48.50,75.30
.xp 47+118800 >>升级到47级+1118800

step
#era

#completewith next
.goto Dustwallow Marsh,36.1,30.7,30,0
.subzone 496 >>向北行驶至Brackenwall村






step
#era
.goto Dustwallow Marsh,37.15,33.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉兹辛比|r
.turnin 1172 >>交任务: |cRXP_FRIENDLY_奥妮克希亚的血脉|r
.target Draz'Zilb
step
#era
#completewith next
.goto Dustwallow Marsh,36.30,31.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫格穆洛克大王|r
>>|cRXP_WARN_Accepting this quest turns|r |cRXP_ENEMY_Overlord Mok'Morokk|r |cRXP_WARN_hostile. 他击球非常用力，应该做好准备. Be prepared|r
.turnin 1172 >>交任务: |cRXP_FRIENDLY_奥妮克希亚的血脉|r
.accept 1173 >>接任务: |cRXP_LOOT_挑战莫格穆洛克|r
.unitscan Overlord Mok'Morokk
.group
step
#era
.goto Dustwallow Marsh,36.30,31.50
>>将生命值降低到30%左右，击败|cRXP_ENEMY_Overlord Mok'Morokk|r
>>|cRXP_WARN_他击球非常用力，应该做好准备|r
.complete 1173,1 
.unitscan Overlord Mok'Morokk
.group 3
step
#era
.goto Dustwallow Marsh,36.30,31.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫格穆洛克大王|r
>>|cRXP_WARN_不要接受这个任务的后续行动|r|cRXP_FRIENDLY_Mok'Morokk|r|cRXP_WARN_会变成敌人并杀死你|r
.turnin 1172 >>交任务: |cRXP_FRIENDLY_奥妮克希亚的血脉|r
.unitscan Overlord Mok'Morokk
.solo
step
#era
.goto Dustwallow Marsh,37.10,33.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德拉兹辛比|r
.turnin 1173 >>交任务: |cRXP_FRIENDLY_挑战莫格穆洛克|r
.target Draz'Zilb
.isQuestComplete 1173
.group
step << Mage
.cast 3566 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
.isOnQuest 2967
.dungeon ULDA
step << !Mage
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙尔迪|r
.fly Thunder Bluff>>前往: |cRXP_PICK_雷霆崖|r
.target Shardi
.zoneskip Thunder Bluff
.isOnQuest 2967
.dungeon ULDA
step
.goto Thunder Bluff,75.67,31.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
.turnin 2967 >>交任务: |cRXP_FRIENDLY_返回雷霆崖|r
.accept 2968 >>接任务: |cRXP_WARN_进一步的任务|r
.target Nara Wildmane
.isQuestTurnedIn 2954
.dungeon ULDA
step
.goto Thunder Bluff,34.42,46.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage|r
.turnin 2968 >>交任务: |cRXP_FRIENDLY_进一步的任务|r
.target Sage Truthseeker
.isQuestTurnedIn 2954
.dungeon ULDA
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14304 >>训练你的职业技能
.target Urek Thunderhorn
.xp <46,1
.xp >48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14321 >>训练你的职业技能
.target Urek Thunderhorn
.xp <48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24562 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11578 >>训练你的职业技能
.target Ker Ragetotem
.xp <46,1
.xp >48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 20661 >>训练你的职业技能
.target Ker Ragetotem
.xp <48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9823 >>训练你的职业技能
.target Turak Runetotem
.xp <46,1
.xp >48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 22828 >>训练你的职业技能
.target Turak Runetotem
.xp <48,1
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << !Mage
.goto Thunder Bluff,47.00,49.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Tal
.zoneskip Thunder Bluff,1
.dungeon ULDA
step << !Mage
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙尔迪|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Shardi
.zoneskip Dustwallow Marsh,1
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10197 >>训练你的职业技能
.target Pephredo
.xp <46,1
.xp >48,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10215 >>训练你的职业技能
.target Pephredo
.xp <48,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10945 >>训练你的职业技能
.target Ur'kyo
.xp <46,1
.xp >48,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10899 >>训练你的职业技能
.target Ur'kyo
.xp <48,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10586 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <46,1
.xp >48,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10431 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <48,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14304 >>训练你的职业技能
.target Ormak Grimshot
.xp <46,1
.xp >48,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14321 >>训练你的职业技能
.target Ormak Grimshot
.xp <48,1
step << Hunter
#optional
.goto Orgrimmar,66.33,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
.train 24562 >>训练你的宠物法术
.target Xao'tsu
.xp <48,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11578 >>训练你的职业技能
.target Grezz Ragefist
.xp <46,1
.xp >48,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 20661 >>训练你的职业技能
.target Grezz Ragefist
.xp <48,1
step << Orc !Warlock
.goto Orgrimmar,69.40,13.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔达|r, |cRXP_FRIENDLY_奥古纳罗|r
.train 825 >>火车|T136103:0|t[骑狼]
.vendor >>|cRXP_BUY_BUY a|r|T132224:0|t[|cFF0070FFWolf|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Kildar
.target Ogunaro
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11293 >>训练你的职业技能
.target Ormok
.xp <46,1
.xp >48,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11299 >>训练你的职业技能
.target Ormok
.xp <48,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11699 >>训练你的职业技能
.target Mirket
.xp <46,1
.xp >48,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11712 >>训练你的职业技能
.target Mirket
.xp <48,1
step << Warlock
.goto Orgrimmar,47.52,46.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>升级宠物的能力
.target Kurgul
step
.goto Orgrimmar,56.40,46.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔兹宾·鼓眼|r
.turnin 32 >>交任务: |cRXP_FRIENDLY_异种蝎的威胁|r
.target Zilzibin Drumlore
step
.goto Orgrimmar,59.40,36.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dran|r
.accept 649 >>接任务: |cRXP_LOOT_寻找蜜酒|r
.target Dran Droffers
step
.goto Orgrimmar,59.50,36.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔顿·杜佛斯|r
.turnin 649 >>交任务: |cRXP_FRIENDLY_寻找蜜酒|r
.accept 650 >>接任务: |cRXP_LOOT_寻找蜜酒|r
.target Malton Droffers
step
.goto Orgrimmar,55.52,34.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰斯雷蒙|r
.accept 4300 >>接任务: |cRXP_LOOT_骨刃武器|r
.target Jes'rimon
step << Troll
#completewith next
.subzone 367 >>前往森津村
step << Troll
.goto Durotar,55.28,75.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克萨尔迪|r, |cRXP_FRIENDLY_祖尼尔|r
.train 10861 >>火车|T136103:0|t[猛禽骑乘]
.vendor >>|cRXP_BUY_BUY a|r|T132253:0|t[|cFF0070FF猛禽|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Xar'Ti
.target Zjolnir
step
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
.train 3563,1 << Mage
step
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
.train 3563,1 << Mage
step << Mage
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
.train 3563,3
step
#optional
.abandon 2846 >>抛弃深渊的蒂亚拉
.isOnQuest 2846
.dungeon ZF
step
#optional
.abandon 3527 >>放弃Mosh’aru的预言
.isOnQuest 3527
.dungeon ZF
step
#optional
.abandon 2768 >>放弃神杖
.isOnQuest 2768
.dungeon ZF
step
#optional
.abandon 3042 >>Abandon Troll Temper
.isOnQuest 3042
.dungeon ZF
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 40-50
#classic
<< Horde
#name 48-49 The Hinterlands
#next 49-50 Feralas
#somname 47-49 The Hinterlands
step << Mage
.goto Undercity,84.18,15.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱克斯顿·莫泰姆|r
.train 3563 >>列车|T135766:0|t[电传：Undercity]
.target Lexington Mortaim
step << Mage
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉娜|r
.vendor >>至少购买四个|cRXP_Buy_Teleportation符文|r
.collect 17031,4 
.target Hannah Akeley
step
.goto Undercity,73.20,32.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oran|r
.accept 2995 >>接任务: |cRXP_LOOT_通讯路线|r
.target Oran Snakewrithe
step
.goto Undercity,50.00,68.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师金格|r
.turnin 864 >>交任务: |cRXP_FRIENDLY_向药剂师金格回报|r
.target Apothecary Zinge
.isQuestTurnedIn 654
step
.goto Undercity,53.77,54.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_看守者贝尔杜加|r
.turnin 728 >>交任务: |cRXP_FRIENDLY_远赴幽暗城|r
.target Keeper Bel'dugur
.isOnQuest 728
.dungeon ULDA
step
.goto Undercity,62.31,48.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Patrick|r
.turnin 2342 >>交任务: |cRXP_FRIENDLY_失而复得|r
.target Patrick
.dungeon ULDA
.isQuestComplete 2342
step
#completewith FlyTM1
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
.collect 4589,10,7842,1 >>|cRXP_BUY_从拍卖行购买十件|r|T135992:0|t[Long Elegant Feather]|cRXP_Buy_|r
.target Auctioneer Rhyker
step << Undead !Warlock
#completewith next
.subzone 159 >>Travel to Brill
.xp <40,1
.money <90
.skill riding,75,1
step << Undead !Warlock
.goto Tirisfal Glades,60.09,52.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Velma, |cRXP_FRIENDLY_撒迦利亚·普斯特|r
.train 10906 >>火车|T136103:0|t[不死骑士术]
.vendor >>|cRXP_BUY_BUY a|r|T132264:0|t[|cFF0070FF骨骼马|r]
.xp <40,1
.money <90
.skill riding,75,1
.target Velma Warnam
.target Zachariah Post
step
#label FlyTM1
.goto Undercity,63.27,48.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克尔|r
>>|cRXP_WARN_如果你没有Tarren Mill的飞行路线，那就去那里吧|r
.fly Tarren Mill >>飞往塔伦磨坊
.target Michael Garrett
.zoneskip Hillsbrad Foothills
sstep
.goto Hillsbrad Foothills,86.60,29.49,30,0
.goto The Hinterlands,9.7,55.8
.zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
step
#label VenomBottle
.goto The Hinterlands,23.00,57.73
>>单击营地周围的一个绿色|cRXP_PICK_Venom Bottles|r
.accept 2933 >>接任务: |cRXP_LOOT_毒液瓶|r
step
.goto The Hinterlands,26.70,48.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沃拉丁·猎日者|r
.turnin 650 >>交任务: |cRXP_FRIENDLY_寻找蜜酒|r
.accept 77 >>接任务: |cRXP_LOOT_收集蜜糖|r
.target Gilveradin Sunchaser
step
#label ViHo
.goto The Hinterlands,72.50,66.20,50,0
.goto The Hinterlands,77.10,80.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁匠斯拉提|r
.accept 7839 >>接任务: |cRXP_LOOT_邪枝窃贼|r
.target Smith Slagtree
step
.goto The Hinterlands,78.20,81.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔德|r
.accept 7840 >>接任务: |cRXP_LOOT_拉尔德的午餐|r
.target Lard
step
.goto The Hinterlands,80.40,81.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_钓鱼者卡图姆|r
.accept 7815 >>接任务: |cRXP_LOOT_钳嘴龟！|r
.accept 7816 >>接任务: |cRXP_LOOT_加莫里塔！|r
.target Katoom the Angler
step
#completewith Gammerita
>>沿海岸抢劫|cRXP_PICK_Pupellyverbos Port Bottles|r
.complete 580,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Saltwater Snapjaws |r
.complete 7815,1 
.mob Saltwater Snapjaw
step
#label Gammerita
.goto The Hinterlands,81.87,49.36,70,0
.goto The Hinterlands,79.86,60.32,70,0
.goto The Hinterlands,78.54,67.85,70,0
.goto The Hinterlands,79.14,71.45,70,0
.goto The Hinterlands,77.47,75.83,70,0
.goto The Hinterlands,78.83,76.26
>>杀死|cRXP_ENEMY_Gammerita|r。掠夺她获得|cRXX_Loot_Katoom的最佳诱惑|r
>>|cRXP_WARN_她沿着海岸巡逻。把她放风筝给警卫。如果你不能始终如一地重新拴住她，那就等到她离村子很近的时候|r
.complete 7816,1 
.unitscan Gammerita
step
>>单击瀑布下的|cRXP_PICK_Cortello的谜语|r
.goto The Hinterlands,80.80,46.80
.turnin 626 >>交任务: |cRXP_FRIENDLY_科泰罗的谜题|r
.isOnQuest 626
step
.goto The Hinterlands,84.40,41.30
>>单击|cRXP_PICK_Lard的野餐篮|r。杀死3个产生的|cRXP_ENEMY_Vilebranch绑架者|r。偷走其中一个作为|cRXP_Loot_Lard的午餐|r
>>|cRXP_WARN_所有的暴民都有执行。在这个过程中要格外小心，尽量不要让你的健康下降到20%左右|r
.complete 7840,1 
.unitscan Vilebranch Kidnapper
step
#completewith next
>>沿海岸抢劫|cRXP_PICK_Pupellyverbos Port Bottles|r
.complete 580,1 
step
.loop 25,The Hinterlands,80.0,58.8,77.2,61.8,77.2,64.2,74.8,68.6,75.6,72.0,78.2,69.2,78.0,64.2,80.0,58.8
>>杀死|cRXP_ENEMY_Saltwater Snapjaws |r
.complete 7815,1 
.mob Saltwater Snapjaw
step
.goto The Hinterlands,79.86,60.32,80,0
.goto The Hinterlands,78.54,67.85,80,0
.goto The Hinterlands,79.14,71.45,80,0
.goto The Hinterlands,77.47,75.83,80,0
.goto The Hinterlands,78.83,76.26
>>沿海岸抢劫|cRXP_PICK_Pupellyverbos Port Bottles|r
.complete 580,1 
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >>前往Revantusk村
step
#requires Bottles
.goto The Hinterlands,80.30,81.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_钓鱼者卡图姆|r
.turnin 7815 >>交任务: |cRXP_FRIENDLY_钳嘴龟！|r
.turnin 7816 >>交任务: |cRXP_FRIENDLY_加莫里塔！|r
.target Katoom the Angler
step
.goto The Hinterlands,78.20,81.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔德|r
.turnin 7840 >>交任务: |cRXP_FRIENDLY_拉尔德的午餐|r
.target Lard
step
.goto The Hinterlands,78.80,78.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_秘法师雅尔金|r
.accept 7844 >>接任务: |cRXP_LOOT_野蛮的亲戚|r
.target Mystic Yayo'jin
step
.goto The Hinterlands,79.40,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥索·莫吉克|r
.accept 7841 >>接任务: |cRXP_LOOT_给蛮锤部族的警告|r
.target Otho Moji'ko
step
.goto The Hinterlands,79.10,79.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎户马克霍尔|r
.accept 7828 >>接任务: |cRXP_LOOT_银鬃捕猎者|r
.accept 7829 >>接任务: |cRXP_LOOT_野蛮的枭兽|r
.accept 7830 >>接任务: |cRXP_LOOT_死者的复仇|r
.target Huntsman Markhor
step
#completewith Bucket
>>杀死|cRXP_ENEMY_Silvermane跟踪者|r
.complete 7828,1 
.mob Silvermane Stalker
step
#completewith Bucket
.use 9618 >>杀死|cRXP_ENEMY_Savage Owlbeasts|r并在其尸体附近使用|T133841:0|t[Wildkin Muisek Vessel]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 7829,1 
.complete 3123,1 
.mob Savage Owlbeast
step
#completewith Bucket
>>杀死|cRXP_ENEMY_Vilebranch头皮|r和|cRXX_ENEMY_Villebranch烟灰层|r
>>|cRXP_ENEMY_Vilebranch头皮|r|cRXP_WARN_have执行。在这个过程中要格外小心，尽量不要让你的健康下降到20%左右|r
.complete 7844,1 
.complete 7844,2 
.mob Vilebranch Scalper
.mob Vilebranch Soothsayer
step
#label Bucket
.goto The Hinterlands,72.53,52.92,25,0
.goto The Hinterlands,71.14,48.64,25,0
.goto The Hinterlands,66.09,44.71,25,0
.goto The Hinterlands,57.57,42.50,25,0
.goto The Hinterlands,53.18,39.20,25,0
.goto The Hinterlands,72.53,52.92,25,0
.goto The Hinterlands,71.14,48.64,25,0
.goto The Hinterlands,66.09,44.71,25,0
>>织机|cRXP_PICK_Slagtree丢失的工具|r（一个小桶）
>>|cRXP_WARN_水桶可以在5个位置产卵|r
.complete 7839,1 
step
#completewith next
.goto The Hinterlands,58.7,41.9,50,0
.subzone 351 >>向西北方向行驶，然后进入洞穴Skulk Rock
step
.goto The Hinterlands,57.50,39.50,20,0
.goto The Hinterlands,56.5,43.9
>>掠夺|cRXP_PICK_Horde补给箱|r以获取|cRXP_Loot_Hinderlands蜂蜜波纹|r
.complete 77,1 
step
#completewith QuelDanilLodge
.use 9618 >>杀死|cRXP_ENEMY_Savage Owlbeasts|r并在其尸体附近使用|T133841:0|t[Wildkin Muisek Vessel]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 7829,1 
.complete 3123,1 
.mob Savage Owlbeast
step
#completewith next
>>杀死|cRXP_ENEMY_Silvermane咆哮者|r
.complete 7828,2 
.mob Silvermane Howler
step
#label QuelDanilLodge
#completewith next
.goto The Hinterlands,31.06,47.84,50,0
.subzone 350 >>向西前往奎尔达尼尔旅馆
step
#completewith Escort
>>杀死|cRXP_ENEMY_Highvale High Elves |r
>>|cRXP_WARN_小心你的健康|r|cRXP_ENEMY_Highvale Rangers|r|cRXP_WARN_can精灵之火，使逃生更加困难|r << Rogue
.complete 7841,1 
.complete 7841,2 
.complete 7841,3 
.complete 7841,4 
.mob Highvale Scout
.mob Highvale Outrunner
.mob Highvale Ranger
.mob Highvale Marksman
step
#label Notes
.goto The Hinterlands,29.60,48.70
>>单击地面上的|cRXP_PICK_Highvale Notes |r
.complete 2995,2 
step
.goto The Hinterlands,28.60,46.10
>>单击表上的|cRXP_PICK_Highvale报告|r
.complete 2995,3 
step
#requires Notes
.goto The Hinterlands,32.00,46.90
>>单击地面上的|cRXP_PICK_Highvale Records|r
.complete 2995,1 
step
.goto The Hinterlands,30.73,46.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林吉|r
>>|cRXP_WARN_这将开始护送！|r
.accept 2742 >>接任务: |cRXP_LOOT_林吉被困住了！|r
.target Rin'ji
step
#label Escort
.goto The Hinterlands,34.98,56.92
>>护送|cRXP_FRIENDLY_Rin'ji|r
.complete 2742,1 
step
.loop 25,The Hinterlands,33.0,51.6,30.4,51.0,29.6,48.6,28.6,46.6,29.6,48.6,32.2,47.6,32.6,43.6,33.8,44.8,33.8,48.6,33.0,51.6
>>完成杀戮|cRXP_ENEMY_Highvale High Elves |r
>>|cRXP_WARN_小心你的健康|r|cRXP_ENEMY_Highvale Rangers|r|cRXP_WARN_can精灵之火，使逃生更加困难|r << Rogue
.complete 7841,1 
.complete 7841,2 
.complete 7841,3 
.complete 7841,4 
.mob Highvale Scout
.mob Highvale Outrunner
.mob Highvale Ranger
.mob Highvale Marksman
step
#completewith Tragan
>>杀死|cRXP_ENEMY_Silvermane咆哮者|r
.complete 7828,2 
.mob Silvermane Howler
step
#completewith JinthaAlor
+|cRXP_WARN_你现在应该开始为金塔的颜色任务寻找一个团队（5人）
.group
step
#label Tragan
.goto The Hinterlands,40.00,59.90
>>游到池塘底部，然后掠夺|cRXP_PICK_Mushroom|r以获得|cRXP _loot_Violet Tragan|r
.complete 2641,1 
step
.loop 25,The Hinterlands,51.0,41.6,51.4,47.8,51.2,57.2,50.6,63.6,49.6,59.8,45.6,58.8,43.2,61.8,39.2,63.2,36.8,58.6,39.4,55.8,38.8,50.8,39.4,46.2,43.4,46.4,38.8,50.8
>>完成击杀|cRXP_ENEMY_Silvermane Howlers|r
.complete 7828,2 
.mob Silvermane Howler
step
.loop 25,The Hinterlands,45.6,63.4,44.4,67.0,46.4,68.8,49.6,65.2,50.6,65.8,50.6,62.4,45.6,63.4
>>完成杀死神庙基座周围的|cRXP_ENEMY_Vilebranch Scapers|r和|cRXX_ENEMY_Villebranch Soothlayers|r
>>|cRXP_ENEMY_Vilebranch头皮|r|cRXP_WARN_have执行。在这个过程中要格外小心，尽量不要让你的健康下降到20%左右|r
>>|cRXP_WARN_不要爬到顶端！有高水平的精英|r
.complete 7844,1 
.complete 7844,2 
.mob Vilebranch Scalper
.mob Vilebranch Soothsayer
step
#completewith SkylordPlume
>>杀死|cRXP_ENEMY_Silvermane跟踪者|r
.complete 7828,1 
.mob Silvermane Stalker
step
#completewith next
.use 9618 >>杀死|cRXP_ENEMY_Savage Owlbeasts|r并在其尸体附近使用|T133841:0|t[Wildkin Muisek Vessel]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 7829,1 
.mob Savage Owlbeast
step
#label SkylordPlume
.loop 25,The Hinterlands,53.0,56.6,54.0,54.2,56.0,51.6,58.6,53.0,61.0,54.8,64.2,56.6,63.8,53.6,64.6,48.6,66.6,42.6,61.4,42.4,60.6,48.2,59.8,52.2,57.0,50.2,54.6,47.0,51.0,44.0,50.6,53.0,56.6
>>找到并杀死一个|cRXP_ENEMY_Razorbeak Skylord|r。掠夺它的|cRXX_Loot_Plume|r
.complete 7830,1 
.unitscan Razorbeak Skylord
step
#completewith Stalkers
.use 9618 >>杀死|cRXP_ENEMY_Savage Owlbeasts|r并在其尸体附近使用|T133841:0|t[Wildkin Muisek Vessel]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 7829,1 
.mob Savage Owlbeast
step
#label Stalkers
.loop 25,The Hinterlands,70.6,63.4,70.6,57.4,73.2,52.6,69.0,50.6,69.0,45.6,66.6,48.0,63.2,47.8,61.6,41.8,58.6,46.8,56.2,46.8,54.4,44.0,53.6,49.2,53.2,55.6,55.6,51.4,58.6,53.2,60.8,55.6,64.0,54.6,66.6,57.2,68.4,62.6,70.6,63.4
>>完成杀戮|cRXP_ENEMY_Silvermane追踪者|r
.complete 7828,1 
.mob Silvermane Stalker
step
.loop 25,The Hinterlands,70.6,63.4,70.6,57.4,73.2,52.6,69.0,50.6,69.0,45.6,66.6,48.0,63.2,47.8,61.6,41.8,58.6,46.8,56.2,46.8,54.4,44.0,53.6,49.2,53.2,55.6,55.6,51.4,58.6,53.2,60.8,55.6,64.0,54.6,66.6,57.2,68.4,62.6,70.6,63.4
.use 9618 >>杀死|cRXP_ENEMY_Savage Owlbeasts|r并在其尸体附近使用|T133841:0|t[Wildkin Muisek Vessel]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 7829,1 
.mob Savage Owlbeast
step
.goto The Hinterlands,86.30,59.00
>>游到远东的岛屿，然后点击|cRXP_PICK_Rinji的秘密|r
.turnin 2742 >>交任务: |cRXP_FRIENDLY_林吉被困住了！|r
.accept 2782 >>接任务: |cRXP_LOOT_林吉的秘密|r
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >>前往Revantusk村
step
.goto The Hinterlands,77.20,80.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁匠斯拉提|r
.turnin 7839 >>交任务: |cRXP_FRIENDLY_邪枝窃贼|r
.target Smith Slagtree
step
.goto The Hinterlands,78.80,78.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_秘法师雅尔金|r
.turnin 7844 >>交任务: |cRXP_FRIENDLY_野蛮的亲戚|r
.target Mystic Yayo'jin
step
#label JinthaAlor
.goto The Hinterlands,79.08,78.99
>>单击|cRXP_PICK_Call to Arms|r在小屋旁要海报
>>|cRXP_WARN_这是5人小组任务|r
.accept 7861 >>接任务: |cRXP_LOOT_通缉：邪恶祭司海克斯和她的爪牙|r
.accept 7862 >>接任务: |cRXP_LOOT_职位空缺：恶齿村卫兵队长|r
.group
step
.goto The Hinterlands,79.10,79.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎户马克霍尔|r
.turnin 7828 >>交任务: |cRXP_FRIENDLY_银鬃捕猎者|r
.turnin 7829 >>交任务: |cRXP_FRIENDLY_野蛮的枭兽|r
.turnin 7830 >>交任务: |cRXP_FRIENDLY_死者的复仇|r
.target Huntsman Markhor
step
.goto The Hinterlands,79.30,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥索·莫吉克|r
.turnin 7841 >>交任务: |cRXP_FRIENDLY_给蛮锤部族的警告|r
.target Otho'Mojiko
step
#hardcore
.goto The Hinterlands,79.30,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥索·莫吉克|r
.accept 7842 >>接任务: |cRXP_LOOT_又一个给蛮锤部族的警告|r
.turnin 7842 >>交任务: |cRXP_FRIENDLY_又一个给蛮锤部族的警告|r
.accept 7843 >>接任务: |cRXP_LOOT_又一个给蛮锤部族的警告|r
>>|cRXP_FRIENDLY_你可以接受这些任务的后续行动，但要注意，它确实会在人口稠密的联盟地区标记你进行PVP|r
.target Otho Moji'ko
.addquestitem 4589,7842
step
#softcore
.goto The Hinterlands,79.30,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥索·莫吉克|r
.accept 7842 >>接任务: |cRXP_LOOT_又一个给蛮锤部族的警告|r
.turnin 7842 >>交任务: |cRXP_FRIENDLY_又一个给蛮锤部族的警告|r
.accept 7843 >>接任务: |cRXP_LOOT_又一个给蛮锤部族的警告|r
.target Otho Moji'ko
.addquestitem 4589,7842
step
#completewith next
.goto The Hinterlands,78,14,81.38,25,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔德|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Lard
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎户马克霍尔|r, Torntusk
>>|cRXP_WARN_这是5人小组任务|r
.accept 7849 >>接任务: |cRXP_LOOT_分离的痛苦|r
.goto The Hinterlands,79.16,79.53
.accept 7845 >>接任务: |cRXP_LOOT_被绑架的断齿长者！|r
.accept 7850 >>接任务: |cRXP_LOOT_黑暗之瓶|r
.goto The Hinterlands,78.20,81.17
.target Huntsman Markhor
.target Primal Torntusk
.group
step
#completewith Vilebranchs
>>掠夺地上的|cRXP_Loot_染血血管|r
>>|cRXP_WARN_不要担心专注于此；你可以在后面的步骤中完成|r
.complete 7850,1 
.isOnQuest 7850
.group 5
step
#completewith ReKey
>>杀死|cRXP_ENEMY_Vilebranch巨魔|r
>>|cRXP_WARN_不要担心专注于此；你可以在后面的步骤中完成|r
.complete 7862,4 
.complete 7862,1 
.complete 7862,3 
.complete 7862,2 
.mob Vilebranch Soul Eater
.mob Vilebranch Berserker
.mob Vilebranch Blood Drinker
.mob Vilebranch Shadow Hunter
.isOnQuest 7862
.group 5
step
.goto The Hinterlands,62.1,75.3
>>在|cRXP_Loot_Huntsman Malkhor的骨|r的坑中心处掠夺|cRXP _PICK_骨堆|r
.complete 7849,2 
.isOnQuest 7849
.group 5
step
.goto The Hinterlands,58.6,64.9
>>为|cRXP_Loot_Huntsman Malkhor的头骨|r掠夺|cRXP_PICK_头骨堆|r
.complete 7849,1 
.isOnQuest 7849
.group 5
step
.goto The Hinterlands,59.6,77.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿长者|r
.turnin 7845 >>交任务: |cRXP_FRIENDLY_被绑架的断齿长者！|r
.accept 7846 >>接任务: |cRXP_LOOT_找回钥匙！|r
.target Elder Torntusk
.isOnQuest 7845
.group
step
.goto The Hinterlands,59.6,77.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿长者|r
.accept 7846 >>接任务: |cRXP_LOOT_找回钥匙！|r
.target Elder Torntusk
.isQuestTurnedIn 7845
.group
step
.goto The Hinterlands,59.3,78.2
>>杀死|cRXP_ENEMY_邪恶女祭司十六进制|r
>>|cRXP_WARN_对她的六角术能力要格外小心，因为她可能会发送垃圾邮件|r
.complete 7861,1 
.unitscan Vile Priestess Hexx
.isOnQuest 7861
.group 5
step
#completewith Hitahya
>>|cRXP_WARN你可以通过跳一跳|r来达到更高的级别（无需与许多守卫战斗）
.link https://www.youtube.com/watch?v=UPiNtMem9tM >>单击此处查看视频指南
.group
step
#completewith next
>>掠夺|cRXP_Loot_Acient Egg|r
.complete 4787,1 
.isQuestTurnedIn 3527
.group 5
step
#label Hitahya
.goto The Hinterlands,57.8,86.8
>>杀死守护者|cRXP_ENEMY_Hitah'ya |r。为她掠夺她|cRXX_Loot_Key|r
.complete 7846,1 
.unitscan Hitah'ya the Keeper
.isOnQuest 7846
.group 5
step
.goto The Hinterlands,57.60,86.79
>>掠夺|cRXP_Loot_Acient Egg|r
.complete 4787,1 
.isQuestTurnedIn 3527
.group 5
step
.goto The Hinterlands,59.6,77.9
>>杀死|cRXP_ENEMY_Vilebranch Aman'zasi近卫|r
.complete 7861,2 
.mob Vilebranch Aman'zasi Guard
.isOnQuest 7846
.group 5
step
.goto The Hinterlands,59.6,77.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿长者|r
.turnin 7846 >>交任务: |cRXP_FRIENDLY_找回钥匙！|r
.accept 7847 >>接任务: |cRXP_LOOT_向断齿族长复命|r
.target Elder Torntusk
.isQuestComplete 7846
.group
step
#label ReKey
.goto The Hinterlands,59.6,77.9
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿长者|r
.accept 7847 >>接任务: |cRXP_LOOT_向断齿族长复命|r
.target Elder Torntusk
.isQuestTurnedIn 7846
.group
step
#label Vilebranchs
.goto The Hinterlands,60.6,65.4
>>完成击杀|cRXP_ENEMY_Vilebranch巨魔|r
>>|cRXP_ENEMY_食魂者|r|cRXP_WARN_处于2级|r|cRXP_ENEMY_Berserkers|r|cRXP_WARN_are处于第三级|r|cRXP_ENEMY_Blood Drinkers |r|cRXP_WARN_and |r|cRXP__ENEMY_Shadow Hunters |r| cRXP_WARN_are on the 4th and 5th level|r
.complete 7862,4 
.complete 7862,1 
.complete 7862,3 
.complete 7862,2 
.mob Vilebranch Soul Eater
.mob Vilebranch Berserker
.mob Vilebranch Blood Drinker
.mob Vilebranch Shadow Hunter
.isOnQuest 7862
.group 5
step
.goto The Hinterlands,67.9,73.4
>>完成掠夺地面上的|cRXP_LOOT_污血血管|r
.complete 7850,1 
.isOnQuest 7850
.group 5
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >>前往Revantusk村
.group
step
.goto The Hinterlands,78.80,78.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_秘法师雅尔金|r
.turnin 7862 >>交任务: |cRXP_FRIENDLY_职位空缺：恶齿村卫兵队长|r
.turnin 7861 >>交任务: |cRXP_FRIENDLY_通缉：邪恶祭司海克斯和她的爪牙|r
.target Mystic Yayo'jin
.isQuestComplete 7862
.isQuestComplete 7861
.group
step
.goto The Hinterlands,78.80,78.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_秘法师雅尔金|r
.turnin 7861 >>交任务: |cRXP_FRIENDLY_通缉：邪恶祭司海克斯和她的爪牙|r
.target Mystic Yayo'jin
.isQuestComplete 7861
.group
step
.goto The Hinterlands,78.80,78.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_秘法师雅尔金|r
.turnin 7862 >>交任务: |cRXP_FRIENDLY_职位空缺：恶齿村卫兵队长|r
.target Mystic Yayo'jin
.isQuestComplete 7862
.group
step
.goto The Hinterlands,79.16,79.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎户马克霍尔|r
.turnin 7849 >>交任务: |cRXP_FRIENDLY_分离的痛苦|r
.target Huntsman Markhor
.isQuestComplete 7849
.group
step
#completewith next
.goto The Hinterlands,78,14,81.38,25,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔德|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Lard
.group
step
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿族长|r
.turnin 7845 >>交任务: |cRXP_FRIENDLY_被绑架的断齿长者！|r
.turnin 7850 >>交任务: |cRXP_FRIENDLY_黑暗之瓶|r
.turnin 7847 >>交任务: |cRXP_FRIENDLY_向断齿族长复命|r
.target Primal Torntusk
.isOnQuest 7845
.isQuestComplete 7850
.isOnQuest 7847
.group
step
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿族长|r
.turnin 7845 >>交任务: |cRXP_FRIENDLY_被绑架的断齿长者！|r
.target Primal Torntusk
.isOnQuest 7845
.group
step
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿族长|r
.turnin 7850 >>交任务: |cRXP_FRIENDLY_黑暗之瓶|r
.target Primal Torntusk
.isQuestComplete 7850
.group
step
.goto The Hinterlands,78.20,81.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_断齿族长|r
.turnin 7847 >>交任务: |cRXP_FRIENDLY_向断齿族长复命|r
.target Primal Torntusk
.isOnQuest 7847
.group
step
#completewith next
.goto The Hinterlands,81.70,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格卡斯|r
.fly Hammerfall >>飞到Hammerfall
.target Gorkas
.skill firstaid,<260,1
step
.goto Arathi Highlands,73.41,36.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里高利·维克托医生|r
.train 18629 >>Train Runecloth Bandage
.target Doctor Gregory Victor
.skill firstaid,<260,1
step << !Mage
.goto Arathi Highlands,73.10,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤尔达|r
.fp Hinterlands >>获取腹地航线
.fly Tarren Mill >>飞往塔伦磨坊
.target Urda
.zoneskip Arathi Highlands,1
step
.goto Hillsbrad Foothills,61.53,19.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
.turnin 2933 >>交任务: |cRXP_FRIENDLY_毒液瓶|r
.accept 2934 >>接任务: |cRXP_LOOT_完好无损的毒囊|r
.target Apothecary Lydon
step
.use 19036 <<Place the |T135125:0|t[Final Message to the Wildhammer] near the well in Wildhammer
.complete 7843,1 
step
.goto The Hinterlands,26.61,48.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基沃拉丁·猎日者|r
.turnin 77 >>交任务: |cRXP_FRIENDLY_收集蜜糖|r
.accept 81 >>接任务: |cRXP_LOOT_送回蜜酒|r
.target Gilveradin Sunchaser
step
#completewith AtalalExile
.goto The Hinterlands,35.9,63.9,40,0
.subzone 353 >>向东南行驶至Shadra'Alor
step
#completewith AtalalExile
>>杀死|cRXP_ENEMY_Witherbark Broodguard|r。掠夺它们以获得|cRXX_Loot_未损坏的毒液袋|r
>>|cRXP_WARN_|r|cRXP_OOT_Undamaged Venom Sac|r|cRXP_WARN_持续时间为30分钟，请尽快将其打开|r
.complete 2934,1 
.mob Witherbark Broodguard
step
#era
.goto The Hinterlands,33.70,75.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿塔莱流放者|r
.turnin 1429 >>交任务: |cRXP_FRIENDLY_阿塔莱流放者|r
.accept 1444 >>接任务: |cRXP_WARN_向费泽鲁尔复命|r
.target Atal'ai Exile
step
#som
#label AtalalExile
.goto The Hinterlands,33.70,75.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿塔莱流放者|r
.turnin 1429 >>交任务: |cRXP_FRIENDLY_阿塔莱流放者|r
.target Atal'ai Exile
step
.goto The Hinterlands,36.28,68.43,60,0
.goto The Hinterlands,34.16,67.00,60,0
.goto The Hinterlands,33.19,69.66,60,0
.goto The Hinterlands,30.66,69.71,60,0
.goto The Hinterlands,32.08,73.36,60,0
.goto The Hinterlands,35.48,74.42,60,0
.goto The Hinterlands,35.32,70.90,60,0
.goto The Hinterlands,35.79,64.35,60,0
.goto The Hinterlands,33.19,69.66
>>杀死|cRXP_ENEMY_Witherbark Broodguard|r。掠夺它们以获得|cRXX_Loot_未损坏的毒液袋|r
>>|cRXP_WARN_|r|cRXP_OOT_Undamaged Venom Sac|r|cRXP_WARN_持续时间为30分钟，请尽快将其打开|r
.complete 2934,1 
.mob Witherbark Broodguard
step
.goto The Hinterlands,49.30,37.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r
.accept 485 >>接任务: |cRXP_LOOT_找到OOX-09/HL！|r
.turnin 485 >>交任务: |cRXP_FRIENDLY_找到OOX-09/HL！|r
.target Homing Robot OOX-09/HL
.itemcount 8704,1 
step
.goto The Hinterlands,49.35,37.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_自动导航机器人OOX-09/HL|r
.accept 836 >>接任务: |cRXP_LOOT_拯救OOX-09/HL！|r
.target Homing Robot OOX-09/HL
.isQuestTurnedIn 485
step
.goto The Hinterlands,79.47,61.21
>>护送|cRXP_FRIENDLY_Homing Robot OOX-09/HL|r到海岸
>>|cRXP_WARN_一包3只46级|r|cRXP_ENEMY_劫掠猫头鹰|r|cRXP_WARN_将在Skulk Rock以南的路上产卵。他们对低生命值感到愤怒，所以试着一次杀死一个|r
>>|cRXP_WARN_一包3级47级|r|cRXP_ENEMY_Vilebranch伏击者|r|cRXP_WARN_将在金塔洛以北的树林中产卵。当你的生命值低于20%时，它们就会执行。如果可以的话，可以使用长CC，并将鸡罐放在一两个CC上，直到它的生命值达到一半左右|r
.complete 836,1 
.target Homing Robot OOX-09/HL
.mob Marauding Owlbeast
.unitscan Vilebranch Ambusher
.isQuestTurnedIn 485
step
.goto The Hinterlands,86.30,59.00
>>游到远东的岛屿，然后点击|cRXP_PICK_Rinji的秘密|r
.turnin 2742 >>交任务: |cRXP_FRIENDLY_林吉被困住了！|r
.accept 2782 >>接任务: |cRXP_LOOT_林吉的秘密|r
step
#completewith next
.goto The Hinterlands,77.28,78.64,30,0
.subzone 3317 >>前往Revantusk村
step
.goto The Hinterlands,79.30,79.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥索·莫吉克|r
.turnin 7843 >>交任务: |cRXP_FRIENDLY_给蛮锤部族的最后警告|r
.target Otho Moji'ko
step
#completewith next
.goto The Hinterlands,81.70,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格卡斯|r
.fp Hinterlands >>获取腹地航线
.fly Tarren Mill >>飞往塔伦磨坊
.target Gorkas
.zoneskip Hillsbrad Foothills
step
.goto Hillsbrad Foothills,61.53,19.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
>>|cRXP_WARN_|r|cRXP_OOT_Undamaged Venom Sac|r|cRXP_WARN_持续时间为30分钟，请尽快将其打开|r
.turnin 2934 >>交任务: |cRXP_FRIENDLY_完好无损的毒囊|r
.accept 2935 >>接任务: |cRXP_WARN_请教加德林大师|r << Troll
.target Apothecary Lydon
.skill riding,75,1 << Troll
step
.goto Hillsbrad Foothills,61.53,19.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lydon|r
>>|cRXP_WARN_|r|cRXP_OOT_Undamaged Venom Sac|r|cRXP_WARN_持续时间为30分钟，请尽快将其打开|r
.turnin 2934 >>交任务: |cRXP_FRIENDLY_完好无损的毒囊|r
.target Apothecary Lydon
step << !Mage
.goto Hillsbrad Foothills,60.14,18.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞斯|r
.fly Undercity>>飞到地下城
.target Zarise
.zoneskip Undercity
step << Mage
#completewith next
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
step << Mage
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉娜|r
.vendor >>至少购买四个|cRXP_Buy_Teleportation符文|r
.collect 17031,4 
.target Hannah Akeley
step << Troll
#completewith next
.abandon 2935 >>如果你已经有了坐骑，请放弃咨询加德林大师。如果你没有坐骑，那么你可以在得到坐骑后提交这个任务
step
#era
#ah
.goto Undercity,64.20,49.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师雷克尔|r
>>|cRXP_BUY_从拍卖行购买以下物品|r
>>|cRXP_WARN_然后把它们存到银行！|r
.collect 8391,5,2581,1 
.collect 8392,6,2581,1 
.collect 8393,6,2581,1 
.collect 8396,14,2581,1 
.collect 8394,11,2581,1 
.target Auctioneer Rhyker
step
.goto Undercity,73.50,32.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oran|r
.turnin 2995 >>交任务: |cRXP_FRIENDLY_通讯路线|r
.turnin 2782 >>交任务: |cRXP_FRIENDLY_林吉的秘密|r
.accept 8273 >>接任务: |cRXP_WARN_奥兰的感谢|r
.turnin 8273 >>交任务: |cRXP_FRIENDLY_奥兰的感谢|r
.target Oran Snakewrithe
step
.goto Undercity,48.50,71.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师科雷|r
.accept 3568 >>接任务: |cRXP_WARN_堕落之水|r
.target Chemist Cuely
step
#optional
.abandon 7862 >>放弃职位空缺：Revantusk村的警卫队长
.isOnQuest 7862
step
#optional
.abandon 7861 >>遗弃通缉犯：邪恶的女祭司赫克斯和她的小黄人
.isOnQuest 7861
step
#optional
.abandon 7849 >>放弃分离焦虑
.isOnQuest 7849
step
#optional
.abandon 7845 >>抛弃被绑架的老龙牙！
.isOnQuest 7845
step
#optional
.abandon 7850 >>Abandon Dark Vessels
.isOnQuest 7850
step
#optional
.abandon 7846 >>放弃恢复密钥！
.isOnQuest 7846
step
#completewith next
.hs >>从赫斯到塔纳瑞斯
.use 6948
step
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Dirge Quikcleave
step
.goto Tanaris,51.10,26.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普琳科|r
.turnin 2641 >>交任务: |cRXP_FRIENDLY_斯普琳科的秘密佐料|r
.accept 2661 >>接任务: |cRXP_LOOT_给马林的粉末|r
.target Sprinkle
step
.goto Tanaris,51.80,28.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin|r
.turnin 2661 >>交任务: |cRXP_FRIENDLY_给马林的粉末|r
.accept 2662 >>接任务: |cRXP_LOOT_诺格弗格药剂|r
.turnin 2662 >>交任务: |cRXP_FRIENDLY_诺格弗格药剂|r
.collect 8529,60 >>|cRXP_WARN_随身携带一堆|r|T134863:0|t[Noggenfogger Elixir]|cRXP_WARN_on是一种很好的做法。多买两堆，然后存起来|r
.target Marin Noggenfogger
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.turnin 4787 >>交任务: |cRXP_FRIENDLY_远古之卵|r
.target Yeh'kinya
.isQuestComplete 4787
.dungeon ZF
step
#sticky
#completewith EnterMaraudon
.subzone 2100 >>现在你应该找一个去马劳东的团队
.dungeon MARA
step
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Shadowprey Village >>飞往Shadowprey村
.target Bullkrek Ragefist
.zoneskip Feralas
.dungeon MARA
step
.goto Desolace,23.22,70.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vark|r at the top of the hut
.accept 7029 >>接任务: |cRXP_WARN_维利塔恩的污染|r
.target Vark Battlescar
.dungeon MARA
step
.goto Desolace,26.87,77.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟琳德拉|r
.accept 7064 >>接任务: |cRXP_WARN_大地的污染|r
.target Selendra
.dungeon MARA
step
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_半人马贱民|r
>>|cRXP_WARN_|cRXP_FRIENDLY_Centaur Paria|r在德索拉斯南部附近巡逻|r
.accept 7067 >>接任务: |cRXP_WARN_贱民的指引|r
.target Centaur Pariah
.dungeon MARA
step
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维洛|r
>>|cRXP_WARN_如果可能的话，让一名党员分享这个任务|r
.accept 7028 >>接任务: |cRXP_WARN_扭曲的邪恶|r
.target Willow
.dungeon MARA
step
.goto Desolace,29.89,62.44,0
.goto 1414,38.43,57.97
.zone 1414 >>前往: |cRXP_PICK_凄凉之地|r
.dungeon MARA
step
#completewith EnterMaraudon
>>杀死Maraudon的所有|cRXP_ENEMY_Monsters|r。掠夺他们的|cRXP_Loot_Theradric水晶雕刻|r
>>|cRXP_WARN_这可以在实例的外部和内部完成。现在不要尝试完成此操作|r
.complete 7028,1 
.isOnQuest 7028
.dungeon MARA
step
>>杀死|cRXP_ENEMY_无名先知|r。为|T133277:0|t[|cRXP-Loot_灵魂护身符|r]掠夺它
>>|cRXP_WARN_这是在实例之外完成的|cRXP_ENEMY_无名先知|r可能正在巡逻|r
.collect 17757,1,7067,1 
.mob The Nameless Prophet
.isOnQuest 7067
.dungeon MARA
step
#completewith next
>>杀死|cRXP_ENEMY_Shadowshard Smasher|r和|cRXD_ENEMY_ Shadowshard Rumbler|r。掠夺他们的|cRXP_Loot_Shadowshard碎片|r
>>|cRXP_WARN_这些仅在实例外部的紫色部分中找到|r
.complete 7068,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7068
.dungeon MARA
step
.goto 1414,38.469,57.287,20,0
.goto 1414,38.380,57.376,30,0
.goto 1414,38.469,57.287
>>|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_精灵护身符|r]|cRXP_WARN_在|r|cRXP-FRIENDLY_Spirit of Gelk上|r
>>杀死|cRXP_ENEMY_Gelk|r。为第二可汗的|T134104:0|t[|cRXX_Loot_Gem|r]掠夺他
>>|cRXP_WARN_这是在实例之外完成的|r
.collect 17762,1,7067,1 
.use 17757 
.mob Spirit of Gelk
.mob Gelk
.isOnQuest 7067
.dungeon MARA
step
.goto 1414,38.13,56.90,60,0
.goto 1414,28.76,56.96,60,0
.goto 1414,38.13,56.90
>>杀死|cRXP_ENEMY_Shadowshard Smasher|r和|cRXD_ENEMY_ Shadowshard Rumbler|r。掠夺他们的|cRXP_Loot_Shadowshard碎片|r
>>|cRXP_WARN_这些仅在实例外部的紫色部分中找到|r
.complete 7068,1 
.mob Shadowshard Smasher
.mob Shadowshard Rumbler
.isOnQuest 7068
.dungeon MARA
step
.goto 1414,38.497,57.721
>>|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_精灵护身符|r]|cRXP_WARN_在|r|cRXP-FRIENDLY_Spirit of Kolk上|r
>>杀死|cRXP_ENEMY_Kolk|r。掠夺他获得|T134129:0|t[|cRXX_Loot_Gem|r]
>>|cRXP_WARN_这是在实例之外完成的|r
.collect 17761,1,7067,1 
.use 17757 
.mob Spirit of Kolk
.mob Kolk
.isOnQuest 7067
.dungeon MARA
step
.goto 1414,38.77,58.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_半人马贱民|r
.accept 7044 >>接任务: |cRXP_WARN_玛拉顿的传说|r
.target Cavindra
.dungeon MARA
step
.goto 1414,38.928,58.354
>>|cRXP_WARN_在橙色水池中使用|r|T134865:0|t[涂层Cerulean小瓶]|cRXP_WARN_in|r
.complete 7029,2 
.use 17693 
.isOnQuest 7029
.dungeon MARA
step
.goto 1414,39.00,58.32,70,0
.goto 1414,39.13,57.68,60,0
.goto 1414,39.25,57.71,20,0
.goto 1414,39.13,57.68
>>|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵符|r]|cRXP_WARN_在|r|cRXP-FRIENDLY_Spirit of Magra上|r
>>杀死|cRXP_ENEMY_Magra|r。为第三可汗的|T134135:0|t[|cRXX_Loot_Gem|r]掠夺他
>>|cRXP_WARN_这是在实例之外完成的|r
.collect 17763,1,7067,1 
.use 17757 
.mob Spirit of Magra
.mob Magra
.isOnQuest 7067
.dungeon MARA
step
#label EnterMaraudon
.goto 1414,39.266,58.205
.zone 280 >>通过橙色边输入Maraudon实例
.dungeon MARA
step
#completewith CrystalCarving
>>杀死Maraudon中的任何|cRXP_ENEMY_Monster|r。掠夺他们的|cRXP_Loot_Theradric水晶雕刻|r
.complete 7028,1 
.isOnQuest 7028
.dungeon MARA
step
#completewith next
>>|cRXP_WARN_在橙色内部的小花/植物上使用|r|T134804:0|t[填充的Cerulean小瓶]|cRXP_WARN_|r
>>杀死被召唤的|cRXP_ENEMY_Noxxious Scion|r
.complete 7029,1 
.use 17696 
.isOnQuest 7029
.dungeon MARA
step
>>|cRXP_WARN_在Veng的|r|cRXP_FRIENDLY_Spirit上使用|r|T133277:0|t[|cRXP_LOOT_灵符|r]|cRXP _WARN_|r
>>杀死|cRXP_ENEMY_Veng|r。掠夺他获得|T134116:0|t[|cRXX_Loot_Gem|r]
>>|cRXP_ENEMY_Veng|r|cRXP_WARN_trols在Maraudon橙色实例内部|r
.collect 17765,1,7067,1 
.use 17757 
.mob Spirit of Veng
.mob Veng
.isOnQuest 7067
.dungeon MARA
step
>>|cRXP_WARN_在橙色内部的小花/植物上使用|r|T134804:0|t[填充的Cerulean小瓶]|cRXP_WARN_|r
>>杀死被召唤的|cRXP_ENEMY_Noxxious Scion|r
.complete 7029,1 
.use 17696 
.isOnQuest 7029
.dungeon MARA
step
>>杀死|cRXP_ENEMY_Noxxion|r。掠夺他以获得|cRXD_Loot_庆祝棒|r
>>杀死|cRXP_ENEMY_Lord Vyletong|r。掠夺他获得|cRXP_Loot_ Celebrian Diamond|r
>>|cRXP_ENEMY_橙色部分的Noxxion |r|cRXP_WARN_is和紫色部分的|cRXP-ENEMY_Lord Vyletong|r|r
.complete 7044,2 
.complete 7044,1 
.isOnQuest 7044
.dungeon MARA
step
>>|cRXP_WARN_使用|r|T133277:0|t[|cRXP_LOOT_灵符|r]|cRXP_WARN_在|r|cRXP-FRIENDLY_Spirit of Maraudos上|r
>>杀死|cRXP_ENEMY_Maraudos|r。为第四可汗的|T134132:0|t[|cRXP-Loot_Gem|r]掠夺他
>>|cRXP_ENEMY_Maraudos|r|cRXP_WARN_trols在Maraudon紫色实例内部|r
.collect 17764,1,7067,1 
.use 17757 
.mob Spirit of Maraudos
.mob Maraudos
.isOnQuest 7067
.dungeon MARA
step
>>|cRXP_WARN_Channel任意一个|r|T134129:0|t|T134104:0|t| T134135:0 |t|T134132:0|t|134116:0|t[|cRXP_LOOT_Gems of the Khans|r]|cRXP_WARN_to create the |r|T133277:0|t[| cRXP_OOT_Amulet of Union|r]
.complete 7067,1 
.use 17761,1
.use 17762,1
.use 17763,1
.use 17764,1
.use 17765,1
.itemcount 17761,1
.itemcount 17762,1
.itemcount 17763,1
.itemcount 17764,1
.itemcount 17765,1
.isOnQuest 7067
.dungeon MARA
step
>>杀死|cRXP_ENEMY_庆祝被诅咒的人|r，然后与|cRXP-FRIENDLY_Celebras救赎者交谈|r
.turnin 7044 >>交任务: |cRXP_FRIENDLY_玛拉顿的传说|r
.isQuestComplete 7044
.mob Celebras the Cursed
.target Celebras the Redeemed
.dungeon MARA
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赎罪的塞雷布拉斯|r
.accept 7046 >>接任务: |cRXP_WARN_塞雷布拉斯节杖|r
.timer 14,Incantation of Celebras Spawning RP
.target Celebras the Redeemed
.isQuestTurnedIn 7044
.dungeon MARA
step
.cast 6477 >>点击地面上的|cRXP_PICK_Celebras咒语|r
.timer 34,The Scepter of Celebras RP
.isQuestTurnedIn 7044
.dungeon MARA
step
>>|cRXP_WARN_等待RP|r
.complete 7046,1 
.isQuestTurnedIn 7044
.dungeon MARA
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赎罪的塞雷布拉斯|r
.turnin 7046 >>交任务: |cRXP_FRIENDLY_塞雷布拉斯节杖|r
.isQuestTurnedIn 7044
.target Celebras the Redeemed
.dungeon MARA
step
>>杀死|cRXP_ENEMY_Theradas公主|r
.complete 7064,1 
.mob Princess Theradras
.isOnQuest 7064
.dungeon MARA
step
#label CrystalCarving
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎尔塔的灵魂|r
.accept 7066 >>接任务: |cRXP_WARN_生命之种|r
.target Zaetar's Spirit
.dungeon MARA
step
>>杀死Maraudon中的任何|cRXP_ENEMY_Monster|r。掠夺他们的|cRXP_Loot_Theradric水晶雕刻|r
>>|cRXP_WARN_这可以在实例外部和内部完成|r
.complete 7028,1 
.isOnQuest 7028
.dungeon MARA
step
.zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
.link https://www.youtube.com/watch?v=_Y2qVZjYjwo&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
.dungeon MARA
step
.goto Desolace,26.87,77.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟琳德拉|r
.turnin 7064 >>交任务: |cRXP_FRIENDLY_大地的污染|r
.target Selendra
.isQuestComplete 7064
.dungeon MARA
step
.goto Desolace,23.22,70.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vark|r at the top of the hut
.turnin 7029 >>交任务: |cRXP_FRIENDLY_维利塔恩的污染|r
.target Vark Battlescar
.isQuestComplete 7029
.dungeon MARA
step
.line Desolace,50.48,86.66,50.39,86.61,50.18,87.01,49.89,87.11,48.95,87.04,48.73,87.11,48.25,87.14,47.82,87.34,47.01,86.96,45.68,86.22,45.16,86.32,44.74,86.12,44.40,85.69,44.11,85.25,43.77,84.93,43.59,84.93
.goto Desolace,43.59,84.93,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,50.48,86.66,50,0
.goto Desolace,47.01,86.96,70,0
.goto Desolace,43.59,84.93,50,0
.goto Desolace,50.48,86.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_半人马贱民|r
>>|cRXP_WARN_|cRXP_FRIENDLY_Centaur Paria|r在德索拉斯南部附近巡逻|r
.turnin 7067 >>交任务: |cRXP_FRIENDLY_贱民的指引|r
.target Centaur Pariah
.isQuestComplete 7067
.dungeon MARA
step
.goto Desolace,62.194,39.624
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维洛|r
.turnin 7028 >>交任务: |cRXP_FRIENDLY_扭曲的邪恶|r
.target Willow
.isQuestComplete 7028
.dungeon MARA
step
#completewith next
.hs >>从赫斯到塔纳瑞斯
.use 6948
.dungeon MARA
step
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Dirge Quikcleave
.dungeon MARA
step
.goto Tanaris,51.60,25.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布科雷克·怒拳|r
.fly Feralas>>Fly to Feralas
.target Bullkrek Ragefist
.zoneskip Feralas
step
#optional
.abandon 7029 >>放弃Vyletong腐败
.isOnQuest 7029
.dungeon MARA
step
#optional
.abandon 7064 >>弃土弃种
.isOnQuest 7064
.dungeon MARA
step
#optional
.abandon 7067 >>放弃教区的指示
.isOnQuest 7067
.dungeon MARA
step
#optional
.abandon 7028 >>Abandon Twisted Evils
.isOnQuest 7028
.dungeon MARA
step
#optional
.abandon 7068 >>放弃阴影碎片
.isOnQuest 7068
.dungeon MARA
step
#optional
.abandon 7044 >>放弃马劳东传说
.isOnQuest 7044
.dungeon MARA
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 40-50
#classic
<< Horde
#name 49-50 Feralas
#next RestedXP部落50-60\50-51荆棘/爆破地
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布隆克|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Bronk
step
.goto Feralas,76.20,43.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.accept 3063 >>接任务: |cRXP_LOOT_对鹰身人的复仇|r
.accept 3062 >>接任务: |cRXP_LOOT_黑暗之心|r
.target Talo Thornhoof
step
.goto Feralas,74.50,42.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杉多尔·迅蹄|r
.accept 7734 >>接任务: |cRXP_LOOT_更高的品质|r
.target Jangdor Swiftstrider
step
.goto Feralas,74.50,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3123 >>交任务: |cRXP_FRIENDLY_测试容器|r
.accept 3380 >>接任务: |cRXP_LOOT_沉没的神庙|r
.accept 3124 >>接任务: |cRXP_LOOT_角鹰兽灵魂精华|r
.accept 3128 >>接任务: |cRXP_LOOT_天然材料|r
.target Witch Doctor Uzer'i
step
.goto Feralas,74.50,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.accept 3380 >>接任务: |cRXP_LOOT_沉没的神庙|r
.target Witch Doctor Uzer'i
step
#completewith next
.goto Feralas,58.0,53.1,50,0
.goto Feralas,54.2,68.6,0
.subzone 1106 >>向西南方向前往弗雷费瑟高地
step
.loop 25,Feralas,55.6,60.6,55.4,64.2,53.8,66.8,54.6,68.6,54.0,71.6,54.2,72.6,55.6,75.2,57.0,74.8,56.0,72.4,55.0,70.6,56.2,66.0,56.8,65.6,57.4,62.6,55.6,60.6
.use 9619 >>杀死|cRXP_ENEMY_Frayfeather Hippogryphs |r。掠夺它们的|cRXP_Loot_Frages|r
>>在他们的尸体上使用|T133841:0|t[Hippogryph Muisek Vessel]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 3124,1 
.complete 3128,4 
.mob Frayfeather Stagwing
.mob Frayfeather Skystormer
.mob Frayfeather Hippogryph
.mob Frayfeather Patriarch
step
#completewith next
.goto Feralas,75.9,43.7,0
.subzone 1099 >>Travel to Camp Mojache
step
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3124 >>交任务: |cRXP_FRIENDLY_角鹰兽灵魂精华|r
.accept 3125 >>接任务: |cRXP_LOOT_精灵龙灵魂精华|r
.target Witch Doctor Uzer'i
step
.goto Feralas,69.55,46.96,50,0
.goto Feralas,68.82,48.54,50,0
.goto Feralas,67.69,47.95,50,0
.goto Feralas,66.57,47.74,50,0
.goto Feralas,69.55,46.96,50,0
.goto Feralas,68.82,48.54,50,0
.goto Feralas,67.69,47.95
.use 9620 >>杀死|cRXP_ENEMY_Sprite飞镖手|r。掠夺他们的|cRXD_Loot_Minerals|r。
>>在他们的尸体上使用|T133841:0|t[精灵龙Muisek容器]
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 3125,1 
.complete 3128,2 
.mob Sprite Darter
step
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3125 >>交任务: |cRXP_FRIENDLY_精灵龙灵魂精华|r
.accept 3126 >>接任务: |cRXP_LOOT_树人灵魂精华|r
.target Witch Doctor Uzer'i
step
.goto Feralas,69.4,44.6,70,0
.goto Feralas,70.6,41.8,70,0
.goto Feralas,75.0,38.6,70,0
.goto Feralas,77.4,40.8,70,0
.goto Feralas,78.6,42.4,70,0
.goto Feralas,79.6,45.4,70,0
.goto Feralas,69.4,44.6
.line Feralas,55.8,60.8,55.0,65.0,55.4,66.2,54.4,69.0,55.0,71.6,58.2,74.6
.line Feralas,67.97,59.99,68.99,60.19,69.57,59.39,70.42,57.76,71.48,58.00,72.27,59.39,72.71,58.54,74.24,58.18,74.72,56.33,74.24,58.18,72.89,57.66,72.67,56.02,73.44,54.87,73.60,53.79,73.97,53.33,74.26,53.12,73.94,51.66,72.80,50.88
.line Feralas,78.4,41.8,74.6,38.4,72.4,41.2,70.6,41.8,69.4,44.6
.line Feralas,52.0,47.8,52.8,46.2,55.0,47.6,55.6,47.0
.use 9606 >>杀死|cRXP_ENEMY_Wandering Forest Walkers |r。掠夺他们的|cRXD_Loot_Splicented Logs|r
>>在他们的尸体上使用|T133841:0|t[Treant Muisek Vessel]
>>|cRXP_WARN_箭头将引导你沿着他们的巡逻路线，这些路线也在你的世界地图上标出。任务物品有冷却时间，一次只对一具尸体有效，即使它们是堆叠的|r
.collect 9590,1 
.collect 9593,1 
.unitscan Wandering Forest Walker
step
.goto Feralas,67.97,59.99,70,0
.goto Feralas,68.99,60.19,70,0
.goto Feralas,69.57,59.39,70,0
.goto Feralas,70.42,57.76,70,0
.goto Feralas,71.48,58.00,70,0
.goto Feralas,72.27,59.39,70,0
.goto Feralas,72.71,58.54,70,0
.goto Feralas,74.24,58.18,70,0
.goto Feralas,74.72,56.33,70,0
.goto Feralas,74.24,58.18,70,0
.goto Feralas,72.89,57.66,70,0
.goto Feralas,72.67,56.02,70,0
.goto Feralas,73.44,54.87,70,0
.goto Feralas,73.60,53.79,70,0
.goto Feralas,73.97,53.33,70,0
.goto Feralas,74.26,53.12,70,0
.goto Feralas,73.94,51.66,70,0
.goto Feralas,72.80,50.88,70,0
.line Feralas,55.8.,60.8,55.0,65.0,55.4,66.2,54.4,69.0,55.0,71.6,58.2,74.6
.line Feralas,67.97,59.99,68.99,60.19,69.57,59.39,70.42,57.76,71.48,58.00,72.27,59.39,72.71,58.54,74.24,58.18,74.72,56.33,74.24,58.18,72.89,57.66,72.67,56.02,73.44,54.87,73.60,53.79,73.97,53.33,74.26,53.12,73.94,51.66,72.80,50.88
.line Feralas,78.4,41.8,74.6,38.4,72.4,41.2,70.6,41.8,69.4,44.6
.line Feralas,52.0,47.8,52.8,46.2,55.0,47.6,55.6,47.0
.use 9606 >>杀死|cRXP_ENEMY_Wandering Forest Walkers |r。掠夺他们的|cRXD_Loot_Splicented Logs|r
>>在他们的尸体上使用|T133841:0|t[Treant Muisek Vessel]
>>|cRXP_WARN_箭头将引导你沿着他们的巡逻路线，这些路线也在你的世界地图上标出。任务物品有冷却时间，一次只对一具尸体有效，即使它们是堆叠的|r
.collect 9590,2 
.collect 9593,2 
.unitscan Wandering Forest Walker
step
.goto Feralas,58.6,52.0,70,0
.goto Feralas,60.0,48.8,70,0
.goto Feralas,57.8,48.0,70,0
.goto Feralas,55.6,47.0,70,0
.goto Feralas,53.2,46.6,70,0
.goto Feralas,51.6,49.0,70,0
.goto Feralas,58.6,52.0
.line Feralas,55.8.,60.8,55.0,65.0,55.4,66.2,54.4,69.0,55.0,71.6,58.2,74.6
.line Feralas,67.97,59.99,68.99,60.19,69.57,59.39,70.42,57.76,71.48,58.00,72.27,59.39,72.71,58.54,74.24,58.18,74.72,56.33,74.24,58.18,72.89,57.66,72.67,56.02,73.44,54.87,73.60,53.79,73.97,53.33,74.26,53.12,73.94,51.66,72.80,50.88
.line Feralas,78.4,41.8,74.6,38.4,72.4,41.2,70.6,41.8,69.4,44.6
.line Feralas,52.0,47.8,52.8,46.2,55.0,47.6,55.6,47.0
.use 9606 >>杀死|cRXP_ENEMY_Wandering Forest Walkers |r。掠夺他们的|cRXD_Loot_Splicented Logs|r
>>在他们的尸体上使用|T133841:0|t[Treant Muisek Vessel]
>>|cRXP_WARN_箭头将引导你沿着他们的巡逻路线，这些路线也在你的世界地图上标出。任务物品有冷却时间，一次只对一具尸体有效，即使它们是堆叠的|r
.collect 9593,3 
.unitscan Wandering Forest Walker
step
#completewith next
.goto Feralas,75.9,43.7,0
.subzone 1099 >>Travel to Camp Mojache
step
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3126 >>交任务: |cRXP_FRIENDLY_树人灵魂精华|r
.accept 3127 >>接任务: |cRXP_LOOT_山岭巨人灵魂精华|r
.target Witch Doctor Uzer'i
step
#completewith next
.goto Feralas,51.89,49.82,30,0
.goto Feralas,48.82,45.15,30,0
.goto Feralas,45.67,46.94,30,0
.subzone 1108 >>向西前往被遗忘的海岸
step
.goto Feralas,44.81,43.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔宾·范达瑟|r
.accept 7003 >>接任务: |cRXP_LOOT_被缩小的巨人|r
.target Zorbin Fandazzle
step
#completewith next
>>留意|T134362:0|t[|cRXP_LOOT_Perfect Yeti Hide|r]
>>|cRXP_WARN_还不接受任务！如果在收集所有|r|cRXP_LOOT_愤怒的疤痕Yeti隐藏物之前找不到，请跳过此步骤|r
.collect 18972,1 
step
.goto Feralas,52.05,31.82,40,0
.loop 25,Feralas,52.06,30.72,52.50,29.74,53.09,30.80,52.05,31.82,53.11,31.79,54.33,32.54,55.07,32.27,55.43,33.53,55.81,33.0,54.34,33.21,54.81,33.86,54.34,33.21,55.81,33.0,55.43,33.53,55.07,32.27,54.33,32.54,53.11,31.79,52.05,31.82,52.06,30.72
>>杀死|cRXP_ENEMY_Rage Scar Yetis|r。掠夺他们的|cRXP_Loot_Hides|r
.complete 7734,1 
.mob Ferocious Rage Scar
.mob Rage Scar Yeti
.mob Elder Rage Scar
step
.loop 25,Feralas,41.08,24.52,39.36,24.29,38.38,22.21,38.52,20.83,39.47,22.04,41.08,24.52
.use 18904 >>在|cRXP_ENEMY_Land Walkers|r和|cRXP_ENEMY_Cliff Giants|r上使用|T133003:0|t[Zorbin的超收缩器]。杀死他们并掠夺他们的|cRXD_loot_REduce|r
.use 9621 >>在他们的尸体上使用|T133841:0|t
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 3127,1 
.collect 18956,8 
.mob Land Walker
.mob Cliff Giant
step
#completewith next
.goto Feralas,40.9,12.0,0
.subzone 1114 >>北上前往瑞文风废墟
step
#completewith next
>>杀死|cRXP_ENEMY_Northspring Harpies|r。为|T134228:0|t[哈塔伦之角]掠夺它们
>>|cRXP_WARN_喇叭的下降率很低，可能需要一段时间才能拿到|r
.complete 3063,1 
.complete 3063,2 
.complete 3063,3 
.complete 3063,4 
.collect 9530,1 
.mob Northspring Harpy
.mob Northspring Roguefeather
.mob Northspring Slayer
.mob Northspring Windcaller
step
.goto Feralas,40.56,8.58
.use 9530 >>使用|T134228:0|t[哈塔隆之角]召唤|cRXP_ENEMY_Edana哈塔隆|r。杀死她并为她掠夺|cRXX_loot_Heart|r
.complete 3062,1 
.unitscan Edana of Hatetalon
step
.loop 25,Feralas,38.62,13.35,38.61,14.64,39.78,14.09,39.95,12.41,40.98,11.09,39.70,11.09,38.83,10.87,38.07,12.04,38.62,13.35
>>杀死|cRXP_ENEMY_Northspring Harpies|r
.complete 3063,1 
.complete 3063,2 
.complete 3063,3 
.complete 3063,4 
.mob Northspring Harpy
.mob Northspring Roguefeather
.mob Northspring Slayer
.mob Northspring Windcaller
step
.loop 25,Feralas,41.08,24.52,39.36,24.29,38.38,22.21,38.52,20.83,39.47,22.04,41.08,24.52
.use 18904 >>在|cRXP_ENEMY_Land Walkers|r和|cRXP_ENEMY_Cliff Giants|r上使用|T133003:0|t[Zorbin的超收缩器]。杀死他们并掠夺他们的|cRXD_loot_REduce|r
.use 9621 >>在他们的尸体上使用|T133841:0|t
>>|cRXP_WARN_该物品有冷却时间，一次只能对一具尸体有效，即使它们是堆叠的|r
.complete 3127,1 
.complete 7003,1 
.mob Land Walker
.mob Cliff Giant
step
#completewith next
.goto Feralas,44.8,44.0,0
.subzone 1108 >>向南前往被遗忘的海岸
step
.goto Feralas,44.81,43.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索尔宾·范达瑟|r
.turnin 7003 >>交任务: |cRXP_FRIENDLY_被缩小的巨人|r
.target Zorbin Fandazzle
step << Druid
#completewith DruidTraining11
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 22828 >>训练你的职业技能
.target Loganaar
.xp <48,1
.xp >50,1
step << Druid
#label DruidTraining11
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9884 >>训练你的职业技能
.target Loganaar
.xp <50,1
step
#completewith next
.hs >>Gadgetzan之炉
.use 6948
step
.goto Tanaris,52.63,28.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirge|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Dirge Quikcleave
step
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3380 >>交任务: |cRXP_FRIENDLY_沉没的神庙|r
.accept 3444 >>接任务: |cRXP_LOOT_石环|r
.target Marvon Rivetseeker
step
#completewith next
.goto Tanaris,27.00,55.66,150,0
.goto Tanaris,27.00,50.21
.zone Un'Goro Crater >>前往: |cRXP_PICK_安戈洛环形山|r
step
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 4289 >>接任务: |cRXP_LOOT_安戈洛的猩猩|r
.accept 4290 >>接任务: |cRXP_LOOT_拉克维的食物|r
.target Torwa Pathfinder
step
#completewith BoneBlade
>>抢劫案
>>|cRXP_WARN_Un'Goro火山口的任何暴徒都可能扔下它|r
.collect 11116,1,3884,1 
.use 11116
step
#completewith Scent
.loop 25,Un'Goro Crater,68.2,75.0,67.0,71.2,67.8,67.0,68.0,61.6,64.8,62.6,63.0,66.4,61.6,70.8,59.8,75.2,59.4,79.0,62.0,82.4,61.8,76.0,63.6,77.2,66.2,77.8,68.2,75.0
>>杀死|cRXP_ENEMY_Ravasaur猛禽|r。掠夺它们的|cRXX_Loot_爪|r
>>|cRXP_WARN_现在不要专注于这个任务，只要他们穿过你的路就杀了他们|r
.complete 4300,1 
.mob Ravasaur
.mob Ravasaur Hunter
.mob Venomhide Ravasaur
.mob Ravasaur Runner
.mob Ravasaur Matriarch
.isOnQuest 4300
step
#completewith BoneBlade
.goto Un'Goro Crater,70.60,53.26,0
>>保存25个|cRXP_LOOT_Un'Goro土壤|r，您将在探索时从暴徒手中掠夺这些土壤
.collect 11018,25 
step
#completewith BoneBlade
.goto Un'Goro Crater,73.06,51.57,0
>>掠夺7|cRXP_Loot_Power水晶|r每种颜色
.collect 11186,7 
.collect 11188,7 
.collect 11185,7 
.collect 11184,7 
step
.goto Un'Goro Crater,63.10,68.60
>>单击|cRXP_PICK_Wrecked Raft|r
.accept 3844 >>接任务: |cRXP_LOOT_无人知晓的秘密|r
step
.goto Un'Goro Crater,63.10,69.00
>>进入水下，然后单击|cRXP_PICK_Small Pack |r
.turnin 3844 >>交任务: |cRXP_FRIENDLY_无人知晓的秘密|r
.accept 3845 >>接任务: |cRXP_LOOT_无人知晓的秘密|r
step
.goto Un'Goro Crater,68.80,56.80
>>将|cRXP_PICK_新鲜Thresadon尸体|r作为|cRXP_Loot_ Thresadon尸块|r
.complete 4290,1 
step
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4290 >>交任务: |cRXP_FRIENDLY_拉克维的食物|r
.accept 4291 >>接任务: |cRXP_LOOT_拉克维的气味|r
.target Torwa Pathfinder
step
.goto Un'Goro Crater,67.30,73.10,20,0
.goto Un'Goro Crater,66.60,66.70
>>踩在小蛋窝上召唤|cRXP_ENEMY_Lar'Korwi Mates|r。杀死它们并掠夺它们的|cRXX_loot_GRAND|r
.complete 4291,1 
.unitscan Lar'Korwi Mate
step
#label Scent
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4291 >>交任务: |cRXP_FRIENDLY_拉克维的气味|r
.accept 4292 >>接任务: |cRXP_LOOT_拉克维的诱饵|r
.target Torwa Pathfinder
step
#label BoneBlade
.loop 25,Un'Goro Crater,68.2,75.0,67.0,71.2,67.8,67.0,68.0,61.6,64.8,62.6,63.0,66.4,61.6,70.8,59.8,75.2,59.4,79.0,62.0,82.4,61.8,76.0,63.6,77.2,66.2,77.8,68.2,75.0
>>杀死|cRXP_ENEMY_Ravasaur猛禽|r。掠夺它们的|cRXX_Loot_爪|r
.complete 4300,1 
.mob Ravasaur
.mob Ravasaur Hunter
.mob Venomhide Ravasaur
.mob Ravasaur Runner
.mob Ravasaur Matriarchaw
.isOnQuest 4300
step 
>>织机7 |cRXP_Loot_每种颜色的功率晶体|r
>>|cRXP_WARN_尽量留在西部/西北部/北部地区。他们有较低级别的暴徒可以逃跑|r
.collect 11186,7 
.collect 11188,7 
.collect 11185,7 
.collect 11184,7 
step
#completewith next
.goto Un'Goro Crater,44.70,8.10
.use 11107 >>打开|T133653:0|t[A Small Pack]获取以下内容：
.complete 3845,1 
.complete 3845,2 
.complete 3845,3 
step
#completewith next
.goto Un'Goro Crater,44.6,8.2
.subzone 541 >>向北前往元帅避难所
step
.goto Un'Goro Crater,44.70,8.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3845 >>交任务: |cRXP_FRIENDLY_无人知晓的秘密|r
.accept 3908 >>接任务: |cRXP_LOOT_无人知晓的秘密|r
.target Linken
.accept 3908 >>接任务: |cRXP_LOOT_无人知晓的秘密|r
step
#completewith next
.destroy 11107 >>摧毁: |cRXP_ENEMY_小背包|r
.destroy 3108 >>摧毁: |cRXP_ENEMY_破损的重型飞刀|r
.destroy 11108 >>摧毁: |cRXP_ENEMY_褪色的照片|r
step
.goto Un'Goro Crater,43.947,7.137
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威利德·马绍尔|r
.use 11116 >>|cRXP_WARN_使用|T133743:0|t[A Mangled Journal]开始任务|r
.collect 11116,1,3884,1 
.accept 3884 >>接任务: |cRXP_LOOT_威利德的日记|r
.turnin 3884 >>交任务: |cRXP_FRIENDLY_威利德的日记|r
.target Williden Marshal
.itemcount 11116,1
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.90,2.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.accept 4284 >>接任务: |cRXP_LOOT_能量水晶|r
.turnin 4284 >>交任务: |cRXP_FRIENDLY_能量水晶|r
.target J.D. Collie
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t退出洞穴，然后与|cRXP_FRIENDLY_Gryfe|r交谈
.fp Marshal >>获取Un'Goro陨石坑飞行路线
.fly Camp Mojache >>飞往莫雅奇营地
.target Gryfe
step
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3128 >>交任务: |cRXP_FRIENDLY_天然材料|r
.turnin 3127 >>交任务: |cRXP_FRIENDLY_山岭巨人灵魂精华|r
.accept 3129 >>接任务: |cRXP_LOOT_灵魂武器|r
.target Witch Doctor Uzer'i
step
.goto Feralas,74.43,42.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杉多尔·迅蹄|r
.turnin 7734 >>交任务: |cRXP_FRIENDLY_更高的品质|r
.target Jangdor Swiftstrider
step
.goto Feralas,74.43,42.91
.use 18972 >>使用|T134362:0|t[|cRXP_LOOT_Perfect Yeti Hide|r]接受任务
.accept 7738 >>接任务: |cRXP_WARN_完美的雪人毛皮|r
.itemcount 18972,1
step
.goto Feralas,74.43,42.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杉多尔·迅蹄|r
.turnin 7738 >>交任务: |cRXP_FRIENDLY_完美的雪人毛皮|r
.target Jangdor Swiftstrider
.isOnQuest 7738
step
#era/som
.goto Feralas,76.18,43.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.turnin 3063 >>交任务: |cRXP_FRIENDLY_对鹰身人的复仇|r
.turnin 3062 >>交任务: |cRXP_FRIENDLY_黑暗之心|r
.accept 4120 >>接任务: |cRXP_WARN_堕落的力量|r
.target Talo Thornhoof
.isQuestComplete 3062
step
#era/som
.goto Feralas,76.18,43.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.turnin 3063 >>交任务: |cRXP_FRIENDLY_对鹰身人的复仇|r
.accept 4120 >>接任务: |cRXP_WARN_堕落的力量|r
.target Talo Thornhoof
step
#som
#phase 3-6
.goto Feralas,76.18,43.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.turnin 3063 >>交任务: |cRXP_FRIENDLY_对鹰身人的复仇|r
.turnin 3062 >>交任务: |cRXP_FRIENDLY_黑暗之心|r
.target Talo Thornhoof
.isQuestComplete 3062
step
#som
#phase 3-6
.goto Feralas,76.18,43.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.turnin 3063 >>交任务: |cRXP_FRIENDLY_对鹰身人的复仇|r
.target Talo Thornhoof
step
.goto Feralas,74.42,43.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医尤克里|r
.turnin 3129 >>交任务: |cRXP_FRIENDLY_灵魂武器|r
.target Witch Doctor Uzer'i
step
.goto Feralas,76.06,43.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布隆克|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Bronk
step << Druid
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 9884 >>训练你的职业技能
.target Jannos Lighthoof
.xp <50,1
.xp >52,1
step << Druid
#optional
.goto Feralas,76.0,42.3
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jannos|r
.train 9894 >>训练你的职业技能
.target Jannos Lighthoof
.xp <52,1
step
#completewith next
.goto Feralas,75.45,44.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩|r
.fly Crossroads >>飞向十字路口
.target Shyn
step
.goto The Barrens,51.99,29.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
.home >>将您的炉石设置为十字路口
.target Innkeeper Boorand Plainswind
step
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >>飞到棘轮
.target Devrak
step
#optional
.abandon 3062 >>Abandon Dark Heart
.isOnQuest 3062
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 50-60
#classic
<< Horde
#name 50-51荆棘/爆破地
#next 51-52 灼热峡谷/燃烧平原
step
.goto The Barrens,62.50,38.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv|r
.accept 4502 >>接任务: |cRXP_LOOT_火山的活动|r
.target Liv Rizzlefix
step
.goto The Barrens,62.50,38.60
>>抢劫|cRXP_PICK_Marvon的箱子|r用于|cRXP_Loot_Stone Circle|r的建筑外
.complete 3444,1 
step
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
step << !Warrior !Rogue !Shaman
.goto Stranglethorn Vale,23.60,72.00
>>杀死|cRXP_ENEMY_Mok'rash|r。掠夺他|T133694:0|t[|cRXD_Loot_Mogrammed Sash|r]。使用它开始任务
.collect 3985,1,8552 
.accept 8552 >>接任务: |cRXP_LOOT_刺着字母的腰带|r
.use 3985
step << !Warrior !Rogue !Shaman
.goto Stranglethorn Vale,23.60,72.00
>>杀死|cRXP_ENEMY_Mok'rash|r。掠夺他|T133694:0|t[|cRXD_Loot_Mogrammed Sash|r]。使用它开始任务
>>|cRXP_WARN_在妖精雕像附近设置一个慢速陷阱，并用猎豹之角将其放风筝|r << Hunter
>>|cRXP_WARN_绕着妖精雕像绕圈放风筝杀死他|r << Mage
>>|cRXP_WARN_尽你所能地害怕他，他无法免疫恐惧或放慢速度|r << Priest/Warlock
>>|cRXP_WARN_当他达到60%的血量时，使用Levitate将他放回Booty Bay|r << Priest
>>|cRXP_WARN_只使用远程法术(根/星火/月火)他命中了硬|r << Druid
>>这可能是一个很难独奏的精英，如果有必要，跳过这一步
.collect 3985,1,8552 
.accept 8552 >>接任务: |cRXP_LOOT_刺着字母的腰带|r
.use 3985
.link https://www.youtube.com/watch?v=xw2mGnQaCQM >>点击此处查看视频参考 << Priest
.link https://www.twitch.tv/videos/850022146?t=04h16m26s >>点击此处查看视频参考 << !Priest
.solo
step
#ah
.goto Stranglethorn Vale,23.60,72.00
>>杀死|cRXP_ENEMY_Mok'rash|r。掠夺他|T133694:0|t[|cRXD_Loot_Mogrammed Sash|r]。使用它开始任务
.collect 3985,1,8552 
.accept 8552 >>接任务: |cRXP_LOOT_刺着字母的腰带|r
.use 3985
.group 3
step
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 648 >>交任务: |cRXP_FRIENDLY_拯救OOX-17/TN！|r
.target Oglethorpe Obnoticus
.isQuestComplete 648
step
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 836 >>交任务: |cRXP_FRIENDLY_拯救OOX-09/HL！|r
.target Oglethorpe Obnoticus
.isQuestComplete 836
step
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.turnin 2767 >>交任务: |cRXP_FRIENDLY_拯救OOX-22/FE！|r
.target Oglethorpe Obnoticus
.isQuestComplete 2767
step
.goto Stranglethorn Vale,28.40,76.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥格索普·奥布诺提斯|r
.accept 3721 >>接任务: |cRXP_WARN_你自己的OOX|r
.turnin 3721 >>交任务: |cRXP_FRIENDLY_你自己的OOX|r
.target Oglethorpe Obnoticus
.isQuestTurnedIn 648
.isQuestTurnedIn 836
.isQuestTurnedIn 2767
step << !Warrior !Rogue !Shaman
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.turnin 8552 >>交任务: |cRXP_FRIENDLY_刺着字母的腰带|r
.target Captain Hecklebury Smotts
.isOnQuest 8552
.solo
step
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r
.turnin 8552 >>交任务: |cRXP_FRIENDLY_刺着字母的腰带|r
.target Captain Hecklebury Smotts
.isOnQuest 8552
.group
step << !Warrior !Rogue !Shaman
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r, |cRXP_FRIENDLY_斯普罗格|r
.accept 615 >>接任务: |cRXP_LOOT_船长的弯刀|r
.goto Stranglethorn Vale,26.69,73.62
.turnin 615 >>交任务: |cRXP_FRIENDLY_船长的弯刀|r
.goto Stranglethorn Vale,26.66,73.64
.target Captain Hecklebury Smotts
.target Sprogger
.isQuestTurnedIn 8552
.solo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_海克拜瑞·斯莫特船长|r, |cRXP_FRIENDLY_斯普罗格|r
.accept 615 >>接任务: |cRXP_LOOT_船长的弯刀|r
.goto Stranglethorn Vale,26.69,73.62
.turnin 615 >>交任务: |cRXP_FRIENDLY_船长的弯刀|r
.goto Stranglethorn Vale,26.66,73.64
.target Captain Hecklebury Smotts
.target Sprogger
.isQuestTurnedIn 8552
.group
step
#ah
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普罗格|r
.accept 8554 >>接任务: |cRXP_WARN_挑战奈古拉什|r
.target Sprogger
.group
step
#completewith next
.goto Stranglethorn Vale,26.55,76.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_掘金者维兹尼克|r
.bankwithdraw 4306,15 >>从您的银行提取15|T132905:0|t[丝绸]
.target Viznik
step
.goto Stranglethorn Vale,27.70,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_\"海狼\"马克基雷|r
.turnin 2874 >>交任务: |cRXP_FRIENDLY_给马克基雷的货物|r
.target "Sea Wolf" MacKinley
step
.goto Stranglethorn Vale,27.10,77.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_威士忌斯利姆|r
.turnin 580 >>交任务: |cRXP_FRIENDLY_威士忌斯利姆的酒|r
.target Whiskey Slim
step
#era
.goto Stranglethorn Vale,27.10,77.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank|r
.turnin 1122 >>交任务: |cRXP_FRIENDLY_向菲兹巴布报告|r
.target Crank Fizzlebub
step
#ah
.goto Stranglethorn Vale,27.04,77.17,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼克拉克斯·菲拉莫格|r
>>|cRXP_WARN_如果您没有得到|r|T133974:0|t[烤鸡翅]|cRXP_WARN_earlier（并且您的小组成员都没有），则跳过此步骤。总共需要10个翅膀才能召唤|r|cRXP_ENEMY_Negolash|r
.vendor >>购买|cRXP_Buy_Junglevine葡萄酒|r，来自|cRXP-FRIENDLY_Nixxrax|r
.collect 4457,10 
.collect 4595,5 
.target Nixxrax Fillamug
.group
step
#ah
#completewith next
.goto Stranglethorn Vale,29.83,72.25,50,0
.goto Stranglethorn Vale,33.66,75.05,50,0
.subzone 43 >>从Booty Bay向北行驶，然后向东前往海滩
.group
step
#ah
.goto Stranglethorn Vale,32.5,81.90
>>单击|cRXP_PICK_毁坏的救生艇|r
.turnin 619 >>交任务: |cRXP_FRIENDLY_引诱奈古拉什|r
.group
step
#ah
.goto Stranglethorn Vale,32.50,81.94
>>点击|cRXP_PICK_Ruined Lifeboat|r召唤|cRXP_ENEMY_Negolash|r。杀死他并掠夺他以获得|cRXD_loot_Smotts的切割玻璃|r
>>|cRXP_WARN_如果您没有得到|r|T133974:0|t[烤鸡翅]|cRXP_WARN_earlier（并且您的小组成员都没有），则跳过此步骤。总共需要10个翅膀才能召唤|r|cRXP_ENEMY_Negolash|r
.complete 8554,1 
.unitscan Negolash
.group 3
step
#ah 
#loop
.goto Stranglethorn Vale,34.22,73.25,60,0
.goto Stranglethorn Vale,34.01,77.21,60,0
.goto Stranglethorn Vale,32.34,79.44,60,0
.goto Stranglethorn Vale,32.38,82.23,60,0
>>沿东南海岸抢劫|cRXP_PICK_Half-Burried Bottles|r
.collect 4098,1,594
.accept 594 >>接任务: |cRXP_LOOT_瓶中信|r
.group
step
#ah
.goto Stranglethorn Vale,38.53,80.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普巴尔公主|r
.turnin 594 >>交任务: |cRXP_FRIENDLY_瓶中信|r
.accept 630 >>接任务: |cRXP_LOOT_瓶中信|r
.target Princess Poobah
.group
step
#ah
.goto Stranglethorn Vale,40.94,83.89
>>杀死|cRXP_ENEMY_King Mukla|r。掠夺他的|cRXX_Loot_Key|r
>>|cRXP_WARN_清除|r|cRXP_ENEMY_King Mukla|r|cRXP_WARN_周围的一点空间，因为他有恐惧|r
.complete 630,1 
.unitscan King Mukla
.group 4
step
#ah
.goto Stranglethorn Vale,38.53,80.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_普巴尔公主|r
.turnin 630 >>交任务: |cRXP_FRIENDLY_瓶中信|r
.target Princess Poobah
.group
step
#ah
.goto Stranglethorn Vale,26.70,73.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普罗格|r
.turnin 8554 >>交任务: |cRXP_FRIENDLY_挑战奈古拉什|r
.target Sprogger
.isQuestComplete 8554
.group
step << Rogue
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 8643 >>训练你的职业技能
.target Ian Strom
.xp <50,1
.xp >52,1
step << Rogue
#optional
.goto Stranglethorn Vale,26.82,77.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ian|r on the second floor of the inn
.train 11342 >>训练你的职业技能
.target Ian Strom
.xp <52,1
step
#era
#ah
#completewith next
+如果您早些时候从拍卖行购买了以下物品，请从银行提取
+|T133972:0|t[Snickerfang Jowl]
+|T134343:0|t[炸猪肺]
+|T133708:0|t[Scorpok Pincer]
+|T134342:0|t[Vulture Gizzard]
+|T134340:0|t[蛇头脑]
step
#era
.goto Stranglethorn Vale,26.87,77.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格林戈|r
.fly Stonard>>飞往斯托纳德
.target Gringer
step
#era
.goto Swamp of Sorrows,47.90,55.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费泽鲁尔|r
.turnin 1444 >>交任务: |cRXP_FRIENDLY_向费泽鲁尔复命|r
.target Fel'zerul
step << Hunter
#era
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧格鲁姆|r
.train 13554 >>训练你的职业技能
.target Ogrom
.xp <50,1
.xp >52,1
step << Hunter
#era
#optional
.goto Swamp of Sorrows,47.27,53.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_欧格鲁姆|r
.train 13543 >>训练你的职业技能
.target Ogrom
.xp <52,1
step << Warlock
#era
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡托什|r
.train 17925 >>训练你的职业技能
.target Kartosh
.xp <50,1
.xp >52,1
step << Warlock
#era
#optional
.goto Swamp of Sorrows,48.64,55.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡托什|r
.train 11675 >>训练你的职业技能
.target Kartosh
.xp <52,1
step << Warlock
#era
.goto Swamp of Sorrows,48.59,55.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.vendor >>购买任何你能负担得起的宠物升级
.target Greshka
step << Shaman
#era
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.train 10437 >>训练你的职业技能
.target Haromm
.xp <50,1
.xp >52,1
step << Shaman
#era
#optional
.goto Swamp of Sorrows,48.19,57.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷沙卡|r
.train 10467 >>训练你的职业技能
.target Haromm
.xp <52,1
step << Warrior
#era
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马尔罗什|r
.train 1719 >>训练你的职业技能
.target Malosh
.xp <50,1
.xp >52,1
step << Warrior
#era
#optional
.goto Swamp of Sorrows,44.89,57.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马尔罗什|r
.train 11551 >>训练你的职业技能
.target Malosh
.xp <52,1
step
#era
.goto Swamp of Sorrows,45.78,52.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏塔佐尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Thultazor
step << Warrior
#era
.goto Swamp of Sorrows,34.20,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 8423 >>接任务: |cRXP_WARN_战士的血脉|r
.target Fallen Hero of the Horde
step << Warrior
#era
.loop 25,Blasted Lands,53.6,37.2,54.6,41.4,55.6,43.2,52.8,41.8,50.2,38.6,48.0,37.6,46.6,40.2,44.6,37.0,44.6,33.8,48.0,34.4,50.8,36.0,53.6,37.2
>>在爆炸的土地上杀死|cRXP_ENEMY_Helboars|r
.complete 8423,1 
.mob Helboar
step << Warrior
#era
.goto Swamp of Sorrows,34.20,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 8423 >>交任务: |cRXP_FRIENDLY_战士的血脉|r
.accept 8424 >>接任务: |cRXP_WARN_魔誓者之战|r
.target Fallen Hero of the Horde
step
#era
.goto Swamp of Sorrows,45.38,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔塔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Rartar
step
#era
#completewith LuckyFragment
>>在您进行探索时，请留意|T134089:0|t[|cRXP_LOOT_Impefect Draenethyst Fragments|r]和|T134564:0|t[|cRXP-LOOT_Iflawless Draenethyst Sphere|r]
.collect 10593,1,3501,1 
.collect 8244,1,3501,1 
step << Hunter/Rogue
#era
#completewith next
.blastedLands
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>>杀死|cRXP_ENEMY_Vultures|r。掠夺它们的|cRXX_Loot_Izzards|r
>>杀死|cRXP_ENEMY_Basilisk|r。掠夺他们的|cRXX_Loot_Brains|r
>>杀死|cRXP_ENEMY_Boars|r。掠夺它们的|cRXX_Loot_LUNG|r
>>杀死|cRXP_ENEMY_Scorpids|r。掠夺他们的|cRXX_Loot_Picker|r
>>杀死|cRXP_ENEMY_Hyenas|r。掠夺他们的|cRXX_Loot_Jowls|r
>>|cRXP_WARN_优先排列|cRXP_ENEMY_Scorpids|r、|cRXD_ENEMY_Vultures|r和|cRXP_ENEMY_Boars|r，以便您可以获得25敏捷buff|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r与|cRXP__ENEMY_Boars|r共享生成，并且|cRXD_ENEMY_Hyenas|r与| r|cRXP_ENEMY_Scorpids共享生成|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Hunter/Rogue
#era
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥达兰大使|r
>>|cRXP_WARN_一旦你有3个|cRXP_OOT_Pincers|r、2|cRXP_OOT_Gizzards|r和1|cRXP-OOT_Lung|r来寻求25敏捷增益|r
.collect 8393,3,2585,1 
.collect 8396,2,2585,1 
.collect 8392,1,2585,1 
.accept 2585 >>接任务: |cRXP_WARN_决定性的打击|r
.disablecheckbox
.turnin 2585 >>交任务: |cRXP_FRIENDLY_决定性的打击|r
.disablecheckbox
.target Bloodmage Drazial
step << Druid/Warrior/Shaman
#era
.blastedLands
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>>杀死|cRXP_ENEMY_Vultures|r。掠夺它们的|cRXX_Loot_Izzards|r
>>杀死|cRXP_ENEMY_Basilisk|r。掠夺他们的|cRXX_Loot_Brains|r
>>杀死|cRXP_ENEMY_Boars|r。掠夺它们的|cRXX_Loot_LUNG|r
>>杀死|cRXP_ENEMY_Scorpids|r。掠夺他们的|cRXX_Loot_Picker|r
>>杀死|cRXP_ENEMY_Hyenas|r。掠夺他们的|cRXX_Loot_Jowls|r
.collect 8391,3,2581,1 
.collect 8392,2,2581,1 
.collect 8393,1,2581,1 
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Hunter/Rogue
#era
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥达兰大使|r
.accept 2585 >>接任务: |cRXP_WARN_决定性的打击|r
.turnin 2585 >>交任务: |cRXP_FRIENDLY_决定性的打击|r
.target Bloodmage Drazial
step << Druid/Shaman/Warrior
#era
#completewith next
.blastedLands
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>>杀死|cRXP_ENEMY_Vultures|r。掠夺它们的|cRXX_Loot_Izzards|r
>>杀死|cRXP_ENEMY_Basilisk|r。掠夺他们的|cRXX_Loot_Brains|r
>>杀死|cRXP_ENEMY_Boars|r。掠夺它们的|cRXX_Loot_LUNG|r
>>杀死|cRXP_ENEMY_Scorpids|r。掠夺他们的|cRXX_Loot_Picker|r
>>杀死|cRXP_ENEMY_Hyenas|r。掠夺他们的|cRXX_Loot_Jowls|r
>>|cRXP_WARN_优先排列|cRXP_ENEMY_Hyenas|r、|cRXD_ENEMY_Boars|r和|cRXP_ENEMY_Scorpids|r，以便您可以获得25力量buff|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r与|cRXP__ENEMY_Boars|r共享生成，并且|cRXD_ENEMY_Hyenas|r与| r|cRXP_ENEMY_Scorpids共享生成|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step << Druid/Shaman/Warrior
#era
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥达兰大使|r
>>|cRXP_WARN_一旦你有3|cRXP_LOOT_Jowls|r、2|cRXD_LOOT_Lungs|r和1|cRXP-LOOT_Pincher|r回合来寻求25力量buff|r
.collect 8391,3,2581,1 
.collect 8392,2,2581,1 
.collect 8393,1,2581,1 
.accept 2581 >>接任务: |cRXP_WARN_弯牙土狼的颚骨|r
.disablecheckbox
.turnin 2581 >>交任务: |cRXP_FRIENDLY_弯牙土狼的颚骨|r
.disablecheckbox
.target Bloodmage Drazial
step << Druid/Shaman/Warrior
#era
.goto Blasted Lands,50.548,14.204
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2581 >>接任务: |cRXP_WARN_弯牙土狼的颚骨|r
.turnin 2581 >>交任务: |cRXP_FRIENDLY_弯牙土狼的颚骨|r
.target Bloodmage Drazial
step
#era
.blastedLands
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98,70,0
.goto Blasted Lands,49.00,18.20,70,0
.goto Blasted Lands,49.31,23.30,70,0
.goto Blasted Lands,45.25,22.64,70,0
.goto Blasted Lands,45.57,34.71,70,0
.goto Blasted Lands,52.98,37.94,70,0
.goto Blasted Lands,57.95,35.28,70,0
.goto Blasted Lands,56.69,29.18,70,0
.goto Blasted Lands,62.48,27.98
>>杀死|cRXP_ENEMY_Vultures|r。掠夺它们的|cRXX_Loot_Izzards|r
>>杀死|cRXP_ENEMY_Basilisk|r。掠夺他们的|cRXX_Loot_Brains|r
>>杀死|cRXP_ENEMY_Boars|r。掠夺它们的|cRXX_Loot_LUNG|r
>>杀死|cRXP_ENEMY_Scorpids|r。掠夺他们的|cRXX_Loot_Picker|r
>>杀死|cRXP_ENEMY_Hyenas|r。掠夺他们的|cRXX_Loot_Jowls|r
>>|cRXP_WARN_|cRXP_ENEMY_Basilisks|r与|cRXP__ENEMY_Boars|r共享生成，并且|cRXD_ENEMY_Hyenas|r与| r|cRXP_ENEMY_Scorpids共享生成|r
.mob Redstone Basilisk
.mob Redstone Crystalhide
.mob Black Slayer
.mob Bone Picker
.mob Starving Snickerfang
.mob Snickerfang Hyena
.mob Scorpok Stinger
.mob Ashmane Boar
step
#era
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_血法师莱诺雷|r, |cRXP_FRIENDLY_血法师德拉吉亚|r
.accept 2601 >>接任务: |cRXP_WARN_石化蜥蜴的大脑|r
.turnin 2601 >>交任务: |cRXP_FRIENDLY_石化蜥蜴的大脑|r
.accept 2603 >>接任务: |cRXP_WARN_秃鹫的活力|r
.turnin 2603 >>交任务: |cRXP_FRIENDLY_秃鹫的活力|r
.goto Blasted Lands,50.640,14.299
.accept 2585 >>接任务: |cRXP_WARN_决定性的打击|r
.turnin 2585 >>交任务: |cRXP_FRIENDLY_决定性的打击|r
.accept 2583 >>接任务: |cRXP_WARN_野猪的活力|r
.turnin 2583 >>交任务: |cRXP_FRIENDLY_野猪的活力|r
.accept 2581 >>接任务: |cRXP_WARN_弯牙土狼的颚骨|r
.turnin 2581 >>交任务: |cRXP_FRIENDLY_弯牙土狼的颚骨|r
.goto Blasted Lands,50.548,14.204
.target Bloodmage Lynnore
.target Bloodmage Drazial
.addquestitem 8391,2581
.addquestitem 8392,2583
.addquestitem 8393,2585
.addquestitem 8394,2601
.addquestitem 8396,2603
step
#era
#optional
#completewith BlastedEnd
.goto Blasted Lands,51.799,35.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_收藏家库米沙|r
.accept 3501 >>接任务: |cRXP_WARN_多多益善|r
.turnin 3501 >>交任务: |cRXP_FRIENDLY_多多益善|r
.collect 10593,1,3501,1 
.itemcount 10593,1 
.target Kum'isha the Collector
step
#era
#optional
#completewith BlastedEnd
.goto Blasted Lands,51.799,35.636
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_收藏家库米沙|r
.accept 2521 >>接任务: |cRXP_WARN_为库米沙效力|r
.turnin 2521 >>交任务: |cRXP_FRIENDLY_为库米沙效力|r
.collect 8244,1,2521,1 
.itemcount 8244,1 
.target Kum'isha the Collector
step << Warrior
#era
.loop 25,Blasted Lands,62.4,39.4,62.4,43.0,64.6,47.8,64.0,45.6,63.6,42.6,63.6,39.2,62.4,39.4
.loop 25,Blasted Lands,65.02,32.94,64.15,30.73,63.79,34.18,65.85,34.46,65.02,32.94,65.85,31.97,66.29,30.40,67.39,31.77,68.32,31.21,67.61,29.06,68.32,31.21,67.39,31.77,66.29,30.40,65.85,31.97,65.02,32.94
.complete 8424,1 
.complete 8424,2 
.complete 8424,3 
>>|CRXP_WARN_如果你进入洞穴，小心两端的两名精英|r
step << Warrior
#era
.goto Swamp of Sorrows,34.20,66.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.turnin 8424 >>交任务: |cRXP_FRIENDLY_魔誓者之战|r
.target Fallen Hero of the Horde
step
#label BlastedEnd
#era
#completewith next
.subzone 75 >>Travel to Stonard
.subzoneskip 75
step
#era
.goto Swamp of Sorrows,45.78,52.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏塔佐尔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Thultazor
step
#era
.goto Swamp of Sorrows,45.38,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉尔塔|r
.vendor >>|cRXP_BUY_从他那里购买|r|T134833:0|t[高级治疗药剂]|cRXP_Buy_如果它们用完了|r
.target Rartar
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 50-60
#classic
<< Horde
#name 51-52 灼热峡谷/燃烧平原
#next 52-53 Azshara
step
#era
.goto Swamp of Sorrows,46.10,54.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布雷依克|r
.fly Badlands>>飞到荒地
.target Breyk
step
#som
#completewith next
.goto Burning Steppes,65.70,24.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦格鲁克|r
>>|cRXP_WARN_如果你没有飞行路线，请将传送机带到格诺梅根，并遵循视频指南|r
.fly Badlands >>飞到荒地
.target Vahgruk
.zoneskip Badlands
step
#som
.goto Stranglethorn Vale,27.7,77.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯库提|r
>>|cRXP_WARN_接受并交付任务后，走进任务者旁边的传送机|r
.accept 2843 >>接任务: |cRXP_WARN_出发！诺莫瑞根！|r
.turnin 2843 >>交任务: |cRXP_FRIENDLY_出发！诺莫瑞根！|r
.target Scooty
.maxlevel 52,Searingskip
step
#som
.goto Dun Morogh,78.0,62.7
.zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
.link https://www.youtube.com/watch?v=MdXtOxSxaYo >>Click here
step
.goto Badlands,3.40,48.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨特拉克|r
>>|cRXP_WARN_您可能需要等待|r|cRXP_FRIENDLY_Thal'trak|r|cRXP_WARN_to才能完成他的RP。只需跟随他|r
.accept 3821 >>接任务: |cRXP_LOOT_巨槌石|r
.target Thal'trak Proudtusk
step
#completewith HoardO
>>如果您没有15块丝绸布，请从达斯贝尔石窟的|cRXP_ENEMY_达斯贝尔彻食人魔|r处收集
>>|cRXP_WARN_你将需要布料来完成即将到来的任务。荒原暴民的掉落率远高于瑟林峡谷暴民|r
.collect 4306,15 
step
.goto Badlands,3.62,61.88,50,0
.goto Searing Gorge,72.34,55.47
.zone Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
step
.goto Searing Gorge,65.55,62.15
>>单击|cRXP_PICK_Wooden Outhouse|r
.accept 4449 >>接任务: |cRXP_LOOT_被锁起来的矮人|r
step
.goto Searing Gorge,63.43,60.91,20,0
.goto Searing Gorge,69.29,33.39
>>杀死|cRXP_ENEMY_黑铁地质学家|r
>>|cRXP_WARN_你可能需要在北部营地和南部挖掘点之间旅行才能完成这项任务|r
.complete 4449,1 
.mob Dark Iron Geologist
step
.goto Searing Gorge,39.10,39.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r, then complete his dialogue
.accept 3441 >>接任务: |cRXP_LOOT_神圣的惩戒|r
.complete 3441,1 
.target Velarok Windblade
.skipgossip
step
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r
.turnin 3441 >>交任务: |cRXP_FRIENDLY_神圣的惩戒|r
.accept 3442 >>接任务: |cRXP_LOOT_无瑕之焰|r
.target Velarok Windblade
step
#completewith next
.goto Searing Gorge,32.50,32.48,30,0
.subzone 1446 >>向西上山，前往Thorium Point
step
.goto Searing Gorge,34.84,30.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格瑞沙|r
.fp Thorium >>获得灼热峡谷飞行路线
.target Grisha
step
.goto Searing Gorge,38.58,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hansel|r
.accept 7723 >>接任务: |cRXP_LOOT_该死的手指头！|r
.accept 7724 >>接任务: |cRXP_LOOT_熔岩蜘蛛的威胁！|r
.accept 7727 >>接任务: |cRXP_LOOT_熏火龙|r
.target Hansel Heavyhands
step
.goto Searing Gorge,37.64,26.47
>>单击|cRXP_PICK_Wanted/Missing/Lost&Found|r板
.accept 7728 >>接任务: |cRXP_LOOT_被盗：鼓风机和望远镜|r
.accept 7729 >>接任务: |cRXP_LOOT_工作机会：肃清竞争对手|r
step
.goto Searing Gorge,37.64,26.47
.accept 7701 >>接任务: |cRXP_LOOT_悬赏：工头玛托留斯|r
.group
step << !Shaman !Druid
.goto Searing Gorge,38.58,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大铁匠博恩奈特|r
.accept 7722 >>接任务: |cRXP_LOOT_绝密配方！|r
.target Master Smith Burninate
.solo
step
.goto Searing Gorge,38.58,27.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大铁匠博恩奈特|r
.accept 7722 >>接任务: |cRXP_LOOT_绝密配方！|r
.target Master Smith Burninate
.group
step
#completewith Spiders
>>杀死|cRXP_ENEMY_War Golem|r和|cRXD_ENEMY_Elements|r。掠夺他们的|cRXP_Loot_火焰之心|r和| cRXP_Loot_ Golem Oil|r
>>|cRXP_WARN_杀死你看到的任何|r|cRXP_ENEMY_Magma元素|r|cRXP_WARN_。他们可以放下两个任务项目|r
.complete 3442,1 
.complete 3442,2 
.mob Heavy War Golem
.mob Tempered War Golem
.mob Inferno Elemental
.mob Blazing Elemental
.unitscan Magma Elemental
step
#completewith Elementals
.goto Searing Gorge,32.6,55.0,40,0
.goto Searing Gorge,36.2,61.6,40,0
.goto Searing Gorge,44.6,62.6,40,0
.goto Searing Gorge,52.4,57.8,40,0
.goto Searing Gorge,51.4,55.8,40,0
>>杀死|cRXP_ENEMY_Dark Iron Lookout|r。掠夺它们以获得|cRXX_Loot_Lookout的Spyglass|r
.complete 7728,2 
.mob Dark Iron Lookout
step
#completewith Elementals
.goto Searing Gorge,38.0,49.8,40,0
.goto Searing Gorge,40.8,49.8,40,0
.goto Searing Gorge,42.8,51.6
>>杀死|cRXP_ENEMY_Dark Iron Steamsmiths|r。掠夺它们以获得|cRXX_Loot_Smithing Tuyere|r
.complete 7728,1 
.unitscan Dark Iron Steamsmith
step
#label Spiders
.loop 25,Searing Gorge,33.0,39.6,28.8,43.8,27.6,52.0,30.8,59.8,26.6,69.4,22.6,74.0,25.0,76.2,29.6,75.8,30.6,71.8,31.8,66.4,30.8,59.8,27.6,52.0,28.8,43.8,33.0,39.6,
>>杀死|cRXP_ENEMY_大熔岩蜘蛛|r along the western/southwestern mountains
.complete 7724,1 
.mob Greater Lava Spider
step
#completewith next
.goto Searing Gorge,43.61,40.78,0
.goto Searing Gorge,32.54,47.19,0
>>杀死|cRXP_ENEMY_重型战争傀儡|r
.complete 7723,1 
.mob Heavy War Golem
step
#label Elementals
.loop 25,Searing Gorge,44.0,38.2,46.6,37.8,47.0,41.4,43.6,44.6,40.6,44.8,36.8,47.6,33.2,52.2,34.0,59.6,36.6,62.8,32.6,70.6,30.6,64.6,28.4,64.0,25.6,53.6,32.4,53.6,33.8,47.4,35.6,41.2,37.6,44.6,40.6,42.8,44.0,38.2
>>完成杀死|cRXP_ENEMY_War Golem|r和|cRXD_ENEMY_Elements|r。掠夺他们的|cRXP_Loot_火焰之心|r和| cRXP_Loot_ Golem Oil|r
>>|cRXP_WARN_杀死你看到的任何|r|cRXP_ENEMY_Magma元素|r|cRXP_WARN_。他们可以放下两个任务项目|r
.complete 3442,1 
.complete 3442,2 
.mob Heavy War Golem
.mob Tempered War Golem
.mob Inferno Elemental
.mob Blazing Elemental
.unitscan Magma Elemental
step
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r
.turnin 3442 >>交任务: |cRXP_FRIENDLY_无瑕之焰|r
.accept 3443 >>接任务: |cRXP_LOOT_铸造火炬杆|r
.target Velarok Windblade
step
.goto Searing Gorge,47.54,46.89,30 >>跳下平台，进入洞穴
step
.goto Searing Gorge,51.49,36.55,40,0
.loop 25,Searing Gorge,51.36,32.24,50.35,24.24,46.76,20.91,44.04,25.41,48.64,27.42,49.68,31.63,51.36,32.24
>>下降到洞穴的下层，然后杀死|cRXP_ENEMY_Incindosaurs|r
.complete 7727,1 
.mob Incendosaur
step
#completewith Shanksinnit
.goto Searing Gorge,48.41,41.08,40,0
.goto Searing Gorge,47.94,47.58,40,0
.goto Searing Gorge,49.86,45.97,40,0
.goto Searing Gorge,49.75,45.82,35 >>离开洞穴，然后沿着平台向上，在更高的水平面上重新进入洞穴
step
#completewith Shanksinnit
>>杀死|cRXP_ENEMY_黑铁任务主管|r和|cRXX_ENEMY_黑铁奴隶|r
.complete 7729,1 
.complete 7729,2 
.mob Dark Iron Taskmaster
.mob Dark Iron Slaver
step
.goto Searing Gorge,40.45,35.75
>>再次离开洞穴，从洞穴右侧重新进入
>>杀死|cRXP_ENEMY_Oversear Maltorius |r。掠夺他的|cRXP_Loot_Head|r并掠夺|cRXT_PICK_Secret Plans:Fiery Flux |r
>>|cRXP_WARN_这是一场具有挑战性的战斗。在获得计划之前，通过清理整个房间，为装备或逃生开辟道路|r
.complete 7722,1 
.complete 7701,1 
.unitscan Overseer Maltorius
.isOnQuest 7701
.group 3
step << !Shaman !Druid
.goto Searing Gorge,40.45,35.75
>>再次离开洞穴，从洞穴右侧重新进入。在掠夺|cRXP_PICK_Secret Plans:Fiery Flux|r以形成逃生路径之前，先清空整个房间
>>|cRXP_WARN_要小心，因为这个任务可能非常困难和危险。不要羞于跳过它|r << Warrior/Priest/Rogue
>>|cRXP_WARN_带着你的宠物拉住所有3个暴徒，然后去抢劫计划|r << Hunter
>>|cRXP_WARN_用你的虚空行者拉住所有3个暴徒，然后去掠夺计划|r << Warlock
>>|cRXP_WARN_积累25+的愤怒，然后同时害怕所有3个暴民，点击掠夺计划|r << Warrior
>>|cRXP_WARN_去拉所有3个暴徒，并使用你的AOE恐惧来掠夺计划|r << Priest
>>|cRXP_WARN_通过改进凿槽，这是可能的。对一个目标使用Sap，然后在计划附近做好准备。对第二个目标使用盲板，挖出第三个目标并立即开始掠夺计划（5秒）|r << Rogue
>>|cRXP_WARN_在Maltorius上使用变形术，然后对其他2名精英进行霜化，并对计划眨眼并掠夺他们|r << Mage
.complete 7722,1 
.unitscan Overseer Maltorius
.solo
step
#label Shanksinnit
.loop 25,Searing Gorge,46.36,53.91,42.75,54.91,41.35,53.44,37.97,49.17,39.32,44.55,37.97,49.17,35.85,42.12,38.16,38.35,39.24,32.84,41.60,26.95,43.59,22.85,43.46,28.38,46.04,25.49,45.47,30.46,43.13,32.50,43.41,35.64,48.27,43.38,49.88,46.10,48.28,50.79,46.36,53.91
>>杀死所有|cRXP_ENEMY_黑铁矮人|r和|cRXX_ENEMY_奴隶工人|r。掠夺他们的|cRXD_Loot_Daggers|r
.complete 3443,1 
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
.mob Dark Iron Slaver
.mob Dark Iron Taskmaster
.mob Dark Iron Geologist
.mob Dark Iron Watchman
.mob Dark Iron Steelshifter
.mob Dark Iron Kidnapper
step
.loop 25,Searing Gorge,46.36,53.91,42.75,54.91,41.35,53.44,37.97,49.17,39.32,44.55,37.97,49.17,35.85,42.12,38.16,38.35,39.24,32.84,41.60,26.95,43.59,22.85,43.46,28.38,46.04,25.49,45.47,30.46,43.13,32.50,43.41,35.64,48.27,43.38,49.88,46.10,48.28,50.79,46.36,53.91
>>继续杀死|cRXP_ENEMY_Dark Iron Dwarves |r，直到您掠夺|T134246:0|t[|cRXP-loot_Grimesilt Outhouse Key|r]
>>|cRXP_WARN_现在还不接受任务！这可能会导致questlog问题|r
.collect 11818,1,4451 
.mob Dark Iron Steamsmith
.mob Dark Iron Lookout
.mob Dark Iron Slaver
.mob Dark Iron Taskmaster
.mob Dark Iron Geologist
.mob Dark Iron Watchman
.mob Dark Iron Steelshifter
.mob Dark Iron Kidnapper
step
#completewith next
.goto Searing Gorge,35.45,23.51,50 >>注销后跳出洞穴。有许多不同的点可以使用
.link https://www.youtube.com/watch?v=-mcsjDkeSUw >>点击此处参考
step
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r
.turnin 3443 >>交任务: |cRXP_FRIENDLY_铸造火炬杆|r
.accept 3452 >>接任务: |cRXP_LOOT_烈焰之盒|r
.target Velarok Windblade
step
#softcore
.goto Searing Gorge,26.56,35.03,70,0
.loop 25,Searing Gorge,24.56,39.25,22.50,39.77,22.18,36.45,24.52,34.62,25.02,31.00,25.74,29.39,22.33,26.85,25.73,25.38,27.43,24.93,25.74,29.39,25.02,31.00,24.52,34.62,24.56,39.25
>>杀死|cRXP_ENEMY_Twilight暴徒|r。掠夺他们获得拉格纳罗斯的|cRXX_Loot_符号|r
>>|cRXP_WARN_小心，因为这个任务可能非常困难。请注意，|r|cRXP_ENEMY_Dark Shamans|r|cRXP_WARN_拥有2000点生命值治疗和500点伤害的瞬间电击法术。如果需要，分组进行此任务|r
.complete 3452,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
step
#hardcore
.goto Searing Gorge,26.56,35.03,70,0
.loop 25,Searing Gorge,24.56,39.25,22.50,39.77,22.18,36.45,24.52,34.62,25.02,31.00,25.74,29.39,22.33,26.85,25.73,25.38,27.43,24.93,25.74,29.39,25.02,31.00,24.52,34.62,24.56,39.25
>>杀死|cRXP_ENEMY_Twilight暴徒|r。掠夺他们获得拉格纳罗斯的|cRXX_Loot_符号|r
>>|cRXP_WARN_小心，因为这个任务可能非常困难。请注意，|r|cRXP_ENEMY_Dark Shamans|r|cRXP_WARN_拥有2000点生命值治疗和500点伤害的瞬间电击法术。|r
.complete 3452,1 
.mob Twilight Dark Shaman
.mob Twilight Fire Guard
.mob Twilight Geomancer
.mob Twilight Idolater
step
.isQuestComplete 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.turnin 3452 >>交任务: |cRXP_FRIENDLY_烈焰之盒|r
.accept 3453 >>接任务: |cRXP_LOOT_惩戒火炬|r
.timer 28,The Torch of Retribution RP
.turnin 3453 >>交任务: |cRXP_FRIENDLY_惩戒火炬|r
.accept 3454 >>接任务: |cRXP_LOOT_惩戒火炬|r
.target Velarok Windblade
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.057,38.990
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok Windblade|r
.accept 3453 >>接任务: |cRXP_LOOT_惩戒火炬|r
.timer 28,The Torch of Retribution RP
.turnin 3453 >>交任务: |cRXP_FRIENDLY_惩戒火炬|r
.accept 3454 >>接任务: |cRXP_LOOT_惩戒火炬|r
.target Velarok Windblade
step
.isQuestTurnedIn 3452
.goto Searing Gorge,39.055,39.067
>>单击|cRXP_PICK_Torch of Retribution |r
.turnin 3454 >>交任务: |cRXP_FRIENDLY_惩戒火炬|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Velarok|r and |cRXP_FRIENDLY_Maltrake|r
.accept 3462 >>接任务: |cRXP_LOOT_侍卫玛特拉克|r
.goto Searing Gorge,39.06,38.99
.turnin 3462 >>交任务: |cRXP_FRIENDLY_侍卫玛特拉克|r
.accept 3463 >>接任务: |cRXP_LOOT_烧掉它们！|r
.goto Searing Gorge,39.17,39.00
.target Velarok Windblade
.target Squire Maltrake
.isQuestTurnedIn 3452
step
#completewith OuthouseAndy
.goto Searing Gorge,34.08,53.99,0
>>杀死|cRXP_ENEMY_Dark Iron Lookout|r。为|cRXX_Loot_Lookout的Spyglass|r掠夺它们
.complete 7728,2 
.mob Dark Iron Lookout
step
#completewith WarGolems
.goto Searing Gorge,40.90,50.31,0
>>杀死|cRXP_ENEMY_Dark Iron Steamsmiths|r。为|cRXX_Loot_Smithing Tuyere|r掠夺它们
.complete 7728,1 
.unitscan Dark Iron Steamsmith
step
#completewith next
.goto Searing Gorge,43.61,40.78,0
.goto Searing Gorge,32.54,47.19,0
>>杀死|cRXP_ENEMY_重型战争傀儡|r
.complete 7723,1 
.mob Heavy War Golem
step
.goto Searing Gorge,33.30,54.47
.use 10515 >>装备|T135466:0|t[惩戒之炬]，然后爬上塔并点击|cRXP_PICK_Sentry Brazier |r
.complete 3463,4 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
step
#label WarGolems
.goto Searing Gorge,35.16,45.78,70,0
.goto Searing Gorge,40.40,44.42,70,0
.goto Searing Gorge,45.72,41.98,70,0
.goto Searing Gorge,50.66,39.23,70,0
.goto Searing Gorge,35.16,45.78,70,0
.goto Searing Gorge,40.40,44.42,70,0
.goto Searing Gorge,45.72,41.98
>>杀死|cRXP_ENEMY_重型战争傀儡|r
.complete 7723,1 
.mob Heavy War Golem
step
.goto Searing Gorge,42.91,51.73,50,0
.goto Searing Gorge,40.43,49.37,50,0
.goto Searing Gorge,37.81,49.66,50,0
.goto Searing Gorge,40.43,49.37
>>杀死|cRXP_ENEMY_Dark Iron Steamsmiths|r。为|cRXX_Loot_Smithing Tuyere|r掠夺它们
.complete 7728,1 
.unitscan Dark Iron Steamsmith
step
.goto Searing Gorge,35.66,60.68
.use 10515 >>装备|T135466:0|t[惩戒之炬]，然后爬上塔并点击|cRXP_PICK_Sentry Brazier |r
.complete 3463,1 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
step
.goto Searing Gorge,44.03,60.90
.use 10515 >>装备|T135466:0|t[惩戒之炬]，然后爬上塔并点击|cRXP_PICK_Sentry Brazier |r
.complete 3463,2 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
step
#label OuthouseAndy
.goto Searing Gorge,65.59,62.17
>>单击|cRXP_PICK_Wooden Outhouse|r
.turnin 4449 >>交任务: |cRXP_FRIENDLY_被锁起来的矮人|r
.addquestitem 4306,4449
step
.goto Searing Gorge,65.59,62.17
>>使用|T134246:0|t[|cRXP_LOOT_Grimesilt Outhouse Key|r]接受任务
.collect 11818,1,4451 
.accept 4451 >>接任务: |cRXP_LOOT_自由的钥匙|r
.use 11818
step
.goto Searing Gorge,65.59,62.17
>>单击|cRXP_PICK_Wooden Outhouse|r
.turnin 4451 >>交任务: |cRXP_FRIENDLY_自由的钥匙|r
step
#label OuthouseAndy
.goto Searing Gorge,50.10,54.70
.use 10515 >>装备|T135466:0|t[惩戒之炬]，然后爬上塔并点击|cRXP_PICK_Sentry Brazier |r
>>|cRXP_WARN_小心，有可能从北侧的桥上掉下来！离开塔时一定要跳上桥|r << !Tauren
.complete 3463,3 
.unitscan Dark Iron Sentry
.isQuestTurnedIn 3452
step
.goto Searing Gorge,34.08,53.99
>>杀死|cRXP_ENEMY_Dark Iron Lookout|r。为|cRXX_Loot_Lookout的Spyglass|r掠夺它们
.complete 7728,2 
.mob Dark Iron Lookout
step
.loop 25,Searing Gorge,46.36,53.91,42.75,54.91,41.35,53.44,37.97,49.17,39.32,44.55,37.97,49.17,35.85,42.12,38.16,38.35,39.24,32.84,41.60,26.95,43.59,22.85,43.46,28.38,46.04,25.49,45.47,30.46,43.13,32.50,43.41,35.64,48.27,43.38,49.88,46.10,48.28,50.79,46.36,53.91
>>杀死|cRXP_ENEMY_黑铁任务主管|r和|cRXX_ENEMY_黑铁奴隶|r
.complete 7729,1 
.complete 7729,2 
.mob Dark Iron Taskmaster
.mob Dark Iron Slaver
step
#completewith next
.goto Searing Gorge,39.05,38.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maltrake|r
.turnin 3463 >>交任务: |cRXP_FRIENDLY_烧掉它们！|r
.target Squire Maltrake
.isQuestTurnedIn 3452
step
.goto Searing Gorge,38.85,38.99
>>打开地上的箱子两次，然后打开黑龙之光|r的|cRXP_PICK_Hoard并掠夺|cRXP-loot_黑龙之火|r
.accept 3481 >>接任务: |cRXP_LOOT_打开箱子…|r
.turnin 3481 >>交任务: |cRXP_FRIENDLY_打开箱子…|r
.isQuestTurnedIn 3452
step
#completewith next
.goto Searing Gorge,32.50,32.48,30,0
.subzone 1446 >>Travel to Thorium Point
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Hansel, |cRXP_FRIENDLY_监工斯克兰格|r
.turnin 7723 >>交任务: |cRXP_FRIENDLY_该死的手指头！|r
.turnin 7724 >>交任务: |cRXP_FRIENDLY_熔岩蜘蛛的威胁！|r
.turnin 7727 >>交任务: |cRXP_FRIENDLY_熏火龙|r
.goto Searing Gorge,38.58,27.80
.turnin 7728 >>交任务: |cRXP_FRIENDLY_被盗：鼓风机和望远镜|r
.goto Searing Gorge,38.98,27.50
.target Hansel Heavyhands
.target Taskmaster Scrange
step
.goto Searing Gorge,37.60,26.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lolo|r
.turnin 7701 >>交任务: |cRXP_FRIENDLY_悬赏：工头玛托留斯|r
.target Lookout Captain Lolo Longstriker
.isQuestComplete 7701
.group
step << !Shaman !Druid
.goto Searing Gorge,38.80,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大铁匠博恩奈特|r
.turnin 7722 >>交任务: |cRXP_FRIENDLY_绝密配方！|r
.target Master Smith Burninate
.isQuestComplete 7722
step
.goto Searing Gorge,38.80,28.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_监工斯克兰格|r
.turnin 7729 >>交任务: |cRXP_FRIENDLY_工作机会：肃清竞争对手|r
.target Taskmaster Scrange
.isQuestComplete 7729
step
#completewith next
.goto Searing Gorge,69.2,71.6,50,0
.goto Searing Gorge,73.2,76.0,50,0
.goto Searing Gorge,73.61,82.93
+Run down to southeast Searing Gorge where |cRXP_ENEMY_Margol the Rager|r is found. Wait for him to patrol all the way out of his cave, then logout skip from the mushrooms at the back << Druid/Shaman
>>小心，因为|cRXP_ENEMY_Margol|r对自然魔法免疫 << Shaman/Druid
+跑到瑟林峡谷东南部，在那里找到了暴怒玛戈尔。等待他一路巡逻出洞穴（或杀死他），然后从后面的蘑菇中跳出来 << !Druid !Shaman
.link https://www.youtube.com/watch?v=0_g2SY2JKt8 >>点击此处参考
step
.goto Burning Steppes,28.43,17.70
.zone Burning Steppes >>前往: |cRXP_PICK_燃烧平原|r
step
.goto Burning Steppes,65.69,24.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦格鲁克|r
.fp Flame Crest >>获取燃烧的阶梯飞行路径
.target Vahgruk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁奇·斯迪波尔|r, |cRXP_FRIENDLY_麦克斯沃特·尤博格林|r
.accept 4726 >>接任务: |cRXP_LOOT_雏龙精华|r
.goto Burning Steppes,65.24,24.01
.accept 4296 >>接任务: |cRXP_LOOT_七贤石板|r
.goto Burning Steppes,65.15,23.94
.target Tinkee Steamboil
.target Maxwort Uberglint
step
#completewith HoardO
.use 12284 >>在|cRXP_ENEMY_Black Broodlings|r上使用您的|T133001:0|t[Draco Incarcinatrix 900]，然后杀死他们，并从|cRX_PICK_Red方尖碑|r上掠夺|cRXP-loot_Broudling Essence |r
.complete 4726,1 
.mob Black Broodling
step
.goto Burning Steppes,54.10,40.70
>>单击矮人雕像前的|cRXP_PICK_Stone Placard|r创建|cRXP_LOOT_Tablet转录本|r
.complete 4296,1 
step
.goto Burning Steppes,77.68,38.23,60,0
.goto Burning Steppes,79.80,45.60
>>过桥，然后上山。点击祭坛顶上的|cRXP_PICK_Sha'ni Proudtusk的遗体|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sha'ni|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Firegut Brutes'|r|cRXP_WARN_knockback，因为它会把你从山上撞倒|r
.turnin 3821 >>交任务: |cRXP_FRIENDLY_巨槌石|r

.target Sha'ni Proudtusk
step << skip
.goto Burning Steppes,77.20,47.50,25,0
.goto Burning Steppes,82.70,38.90,25,0
.goto Burning Steppes,81.60,48.20
>>杀死|cRXP_ENEMY_Krom'Grul|r。抢走他|cRXX_Loot_Sha'ni的鼻环|r
>>|cRXP_WARN_他可以在三个洞穴中的任何一个产卵；你可能需要搜索。小心|r|cRXP_ENEMY_Firegut Brutes'|r|cRXP_WARN_knockback，因为它会把你从山上撞倒|r|r
.complete 3822,1 
.target Krom'Grul
step
#label HoardO
.goto Burning Steppes,95.09,31.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cyrus|r
>>|cRXP_WARN_打开你的|r|T132595:0|t[黑蜻蜓之巢]|cRXP_WARN_if你还没有打开|r
.accept 4022 >>接任务: |cRXP_LOOT_烈焰精华|r
.turnin 4022 >>交任务: |cRXP_FRIENDLY_烈焰精华|r
.target Cyrus Therepentous
.isQuestTurnedIn 3452
step
.loop 25,Burning Steppes,81.8,27.8,85.8,30.2,90.6,29.8,92.0,39.4,90.6,49.4,88.8,56.2,85.2,61.4,82.0,61.6,84.6,56.0,89.4,52.6,88.6,44.8,91.6,38.4,89.8,33.6,86.4,32.0,81.8,27.8
.use 12284 >>在|cRXP_ENEMY_Black Broodlings|r上使用您的|T133001:0|t[Draco Incarcinatrix 900]。杀死他们并从|cRX_PICK_Red方尖碑|r上掠夺|cRXD_loot_Brouodling Essence |r
.complete 4726,1 
.mob Black Broodling
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_丁奇·斯迪波尔|r, |cRXP_FRIENDLY_麦克斯沃特·尤博格林|r
.turnin 4726 >>交任务: |cRXP_FRIENDLY_雏龙精华|r
.accept 4808 >>接任务: |cRXP_LOOT_菲诺克|r
.goto Burning Steppes,65.24,24.01
.turnin 4296 >>交任务: |cRXP_FRIENDLY_七贤石板|r
.goto Burning Steppes,65.15,23.94
.target Tinkee Steamboil
.target Maxwort Uberglint
step << skip
.goto Burning Steppes,65.70,24.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦格鲁克|r
.fly Badlands >>飞到荒地
.target Vahgruk
.zoneskip Badlands
step << skip
#completewith next
.goto Badlands,2.81,45.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板舒尔卡|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Shul'kar
step << skip
.goto Badlands,3.40,48.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨特拉克|r
>>|cRXP_WARN_你可能要等Thal’trak完成他的RP。跟着他走吧|r
.turnin 3822 >>交任务: |cRXP_FRIENDLY_克罗格鲁尔|r
.target Thal'trak Proudtusk
step << Druid
#completewith DruidTraining8
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9894 >>训练你的职业技能
.target Loganaar
.xp <52,1
.xp >54,1
step << Druid
#label DruidTraining8
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9904 >>训练你的职业技能
.target Loganaar
.xp <54,1
step << !Mage
#label Searingskip
#completewith next
.hs >>炉膛到十字路口
.use 6948
step << !Mage
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Devrak
.zoneskip Orgrimmar
step << Mage
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step
#optional
.abandon 795 >>放弃地球之印
.isOnQuest 795
step
#optional
.abandon 793 >>放弃破裂的联盟
.isOnQuest 793
step
#optional
.abandon 7701 >>放弃通缉：监督Maltorius
.isOnQuest 7701
step
#optional
.abandon 7722 >>Abandon What the Flux?
.isOnQuest 7722
step
#optional
.abandon 3452 >>放弃火焰的外壳
.isOnQuest 3452
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 50-60
#classic
<< Horde
#name 52-53 Azshara
#next 53-54 Felwood
step
.goto Orgrimmar,54.10,68.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Grysha|r
.home >>将您的炉石设置为Orgrimmar
.target Innkeeper Grysha
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10467 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <52,1
.xp >54,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10408 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <54,1
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 13543 >>训练你的职业技能
.target Ormak Grimshot
.xp <52,1
.xp >54,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14290 >>训练你的职业技能
.target Ormak Grimshot
.xp <54,1
step << Hunter
.goto Orgrimmar,66.33,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
.train 24631 >>训练你的宠物法术
.target Xao'tsu
.xp <54,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11551 >>训练你的职业技能
.target Grezz Ragefist
.xp <52,1
.xp >54,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11605 >>训练你的职业技能
.target Grezz Ragefist
.xp <54,1
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11342 >>训练你的职业技能
.target Ormok
.xp <52,1
.xp >54,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11294 >>训练你的职业技能
.target Ormok
.xp <54,1
step << Rogue
.goto Orgrimmar,42.10,49.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Rekkul交谈|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Warlock
.goto Undercity,48.47,45.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_泽弗洛斯特|r
.trainer >>训练你的职业技能
.accept 8419 >>接任务: |cRXP_LOOT_小鬼的要求|r
.target Zevrost
step << Warlock
.goto Orgrimmar,47.55,46.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>升级宠物的能力
.target Kurgul
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10180 >>训练你的职业技能
.target Pephredo
.xp <50,1
.xp >52,1
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10186 >>训练你的职业技能
.target Pephredo
.xp <52,1
.xp >54,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 10199 >>训练你的职业技能
.target Pephredo
.xp <54,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10893 >>训练你的职业技能
.target Ur'kyo
.xp <50,1
.xp >52,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10946 >>训练你的职业技能
.target Ur'kyo
.xp <52,1
.xp >54,1
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 15267 >>训练你的职业技能
.target Ur'kyo
.xp <54,1
step
.goto Orgrimmar,59.40,36.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dran|r
.turnin 81 >>交任务: |cRXP_FRIENDLY_送回蜜酒|r
.target Dran Droffers
step
.goto Orgrimmar,55.60,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰斯雷蒙|r
.turnin 4300 >>交任务: |cRXP_FRIENDLY_骨刃武器|r
.target Jes'rimon






step
.goto Orgrimmar,75.00,34.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.accept 3504 >>接任务: |cRXP_WARN_叛徒|r
.target Belgrom Rockmaul
step
.goto Orgrimmar,56.40,46.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔兹宾·鼓眼|r
.accept 4494 >>接任务: |cRXP_LOOT_异种蝎的远征|r
.target Zilzibin Drumlore
step
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Splintertree Post >>飞到Splinterree Post
.target Doras
.zoneskip Ashenvale
step
#completewith next
.goto Ashenvale,75.37,64.73,20,0
.goto Ashenvale,79.07,55.41,30,0
.goto Ashenvale,91.24,46.47,30,0
.goto Ashenvale,95.33,48.38,15,0
.subzone 879 >>前往: |cRXP_PICK_艾萨拉|r
step
.goto Azshara,10.40,74.90,40,0
.goto Azshara,11.40,78.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗哈图|r
.accept 5535 >>接任务: |cRXP_WARN_永不安息的灵魂|r
.accept 5536 >>接任务: |cRXP_WARN_充满仇恨的土地|r
.target Loh'atu
step
#completewith next
>>杀死|cRXP_ENEMY_Highborne幻影|r和|cRXX_ENEMY_High borne巫妖|r << !Priest
>>杀死|cRXP_ENEMY_Highborne幻影|r和|cRXX_ENEMY_High borne巫妖|r。为你的职业任务保留1|T134437:0|t[不死之神] << Priest
.complete 5535,1 
.complete 5535,2 
.collect 7972,1 << Priest 
.mob Highborne Apparition
.mob Highborne Lichling
step
.loop 25,Azshara,19.4,64.0,19.6,60.8,21.2,60.8,20.6,63.6,19.4,64.0
>>杀死|cRXP_ENEMY_Haldarr Satyrs|r、|cRXD_ENEMY_Haldarr Tricksters|r和|cRXP_ENEMY_Halldarr Felwadde|r
.complete 5536,1 
.complete 5536,2 
.complete 5536,3 
.mob Haldarr Satyr
.mob Haldarr Trickster
.mob Haldarr Felsworn
step
.loop 25,Azshara,17.8,67.8,16.6,71.8,14.6,73.6,13.6,72.6,16.6,68.6,17.2,66.0,17.8,67.8
>>杀死|cRXP_ENEMY_Highborne幻影|r和|cRXX_ENEMY_High borne巫妖|r << !Priest
>>杀死|cRXP_ENEMY_Highborne幻影|r和|cRXX_ENEMY_High borne巫妖|r。为你的职业任务保留1|T134437:0|t[不死之神] << Priest
.complete 5535,1 
.complete 5535,2 
.collect 7972,1 << Priest 
.mob Highborne Apparition
.mob Highborne Lichling
step
.goto Azshara,11.36,78.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_罗哈图|r
.turnin 5535 >>交任务: |cRXP_FRIENDLY_永不安息的灵魂|r
.turnin 5536 >>交任务: |cRXP_FRIENDLY_充满仇恨的土地|r
.target Loh'atu
step
#completewith next
.goto Azshara,22.00,49.70,30,0
.subzone 1237 >>向东北行驶至瓦洛莫克
step
.goto Azshara,22.00,49.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克隆姆|r
.fp Azshara >>获取Azshara飞行路线
.target Kroum
step
.goto Azshara,22.20,51.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿格图·血拳|r
.turnin 3504 >>交任务: |cRXP_FRIENDLY_叛徒|r
.target Ag'tor Bloodfist
.isOnQuest 3504
step
.goto Azshara,22.20,51.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿格图·血拳|r
.accept 3505 >>接任务: |cRXP_WARN_叛徒|r
.target Ag'tor Bloodfist
.isQuestTurnedIn 3504
step
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.accept 3517 >>接任务: |cRXP_WARN_偷窃知识|r
.target Jediga
step << Mage
.goto Azshara,28.11,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳斯|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
step << Mage
.goto Azshara,29.2,40.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r
>>|cRXP_WARN_大法师在他的塔上徘徊|r
.accept 8251 >>接任务: |cRXP_WARN_魔法的尘埃|r
.target Archmage Xylem
step << Mage
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这会把你传送回去|r
.turnin 3421 >>交任务: |cRXP_FRIENDLY_回程|r
.timer 8,Return Trip RP
.target Nyrill
step << Hunter/Priest
#completewith next
.goto Azshara,41.61,42.68,50 >>前往|cRXP_FRIENDLY_Ogtinc|r，他位于一座小山峰上
step << Hunter/Priest
.goto Azshara,42.40,42.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
>>|cRXP_WARN_靠近他时要小心摔倒；他处境岌岌可危|r
.accept 8153 >>接任务: |cRXP_WARN_苔蹄快步者的鹿角|r << Hunter
.accept 8255 >>接任务: |cRXP_WARN_苔蹄快步者|r << Priest
.target Ogtinc
step << Hunter/Priest
.loop 25,Azshara,48.4,33.2,48.4,16.4,55.2,17.0,59.6,22.9,70.6,28.4,83.2,25.0,76.6,27.3,67.8,27.4,61.4,23.3,55.3,25.3,50.2,25.4,48.4,33.2
>>杀死|cRXP_ENEMY_Mosshove Coursers|r。掠夺他们的|cRXX_Loot_Atlers|r << Hunter
>>杀死|cRXP_ENEMY_Mosshove Coursers|r。掠夺他们的|cRXX_Loot_GRAND|r << Priest
>>|cRXP_ENEMY_Mosshove Coursers|r|cRXP_WARN_share respawn with Hippogryphs and Chimaeras|r
.complete 8153,1 << Hunter 
.complete 8255,1 << Priest 
.mob Mosshoof Courser
step << Hunter
.goto Azshara,42.40,42.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
.turnin 8153 >>交任务: |cRXP_FRIENDLY_苔蹄快步者的鹿角|r
.accept 8231 >>接任务: |cRXP_WARN_碎浪多头怪|r
.target Ogtinc
step
.goto Azshara,53.45,21.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基姆加尔|r
.accept 3601 >>接任务: |cRXP_WARN_我就是基姆加尔！|r
.target Kim'jael
step
#completewith Magus
>>偷走散落在营地周围的|cRXP_PICK_Kim'Jael的装备|r箱子
.complete 3601,1 
.complete 3601,2 
.complete 3601,3 
.complete 3601,4 
step << !Mage
.loop 25,Azshara,55.8,25.9,57.8,26.4,58.0,28.2,59.2,29.6,57.9,31.4,57.0,30.3,56.9,27.5,56.0,29.7,55.4,29.7,55.8,25.9
>>杀死|cRXP_ENEMY_血精灵回收者|r和|cRXX_ENEMY_血精灵测量者|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Surveyors|r|cRXP_WARN_have a short cooling Fire Nova，and |r|cRXP__ENEMY_Reclaimers|r|C RXP_WARN_have a high damage fireball|r
.complete 3505,1 
.complete 3505,2 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
.isOnQuest 3505
step << Mage
.loop 25,Azshara,55.8,25.9,57.8,26.4,58.0,28.2,59.2,29.6,57.9,31.4,57.0,30.3,56.9,27.5,56.0,29.7,55.4,29.7,55.8,25.9
>>杀死|cRXP_ENEMY_血精灵回收者|r和|cRXP_ENEMY_血精灵测量者|r。掠夺他们的|cRXD_Loot_Dust|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Surveyors|r|cRXP_WARN_have a short cooling Fire Nova，and |r|cRXP__ENEMY_Reclaimers|r|C RXP_WARN_have a high damage fireball|r
.complete 3505,1 
.complete 3505,2 
.complete 8251,1 
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
.isOnQuest 3505
step
.goto Azshara,59.40,31.20
>>点击召唤圈基座上的|cRXP_PICK_Kaldorei召唤符|r
.complete 3505,3 
.complete 3505,4 
.turnin 3505 >>交任务: |cRXP_FRIENDLY_叛徒|r
.isOnQuest 3505
step
.goto Azshara,59.50,31.20
>>再次单击|cRXP_PICK_Kaldorei召唤符|r
.accept 3506 >>接任务: |cRXP_WARN_叛徒|r
.isQuestTurnedIn 3505
step
#label Magus
.goto Azshara,59.50,31.40
>>摧毁其中一个|cRXP_PICK_Arcane聚焦水晶|r。这将召唤一名|cRXP_ENEMY_Blood Elf Defender |r
>>13秒后，|cRXP_ENEMY_Magus Rimtori|r将产卵。杀死她并为她掠夺她|cRXP_loot_Head |r
.complete 3506,1 
.isQuestTurnedIn 3505
.mob Blood Elf Defender
.unitscan Magus Rimtori
step
.goto Azshara,57.02,29.45
.loop 25,Azshara,58.5,25.0,58.9,28.3,59.6,30.9,57.0,29.9,56.5,28.4,58.5,25.0
>>偷走散落在营地周围的|cRXP_PICK_Kim'Jael的装备|r箱子
.complete 3601,1 
.complete 3601,2 
.complete 3601,3 
.complete 3601,4 
step
#era
.loop 25,Azshara,55.8,25.9,57.8,26.4,58.0,28.2,59.2,29.6,57.9,31.4,57.0,30.3,56.9,27.5,56.0,29.7,55.4,29.7,55.8,25.9
.xp 53+95000 >>升级到53级95000+/173900，这是60级之前所需的最后一个升级点。如果你不想升级那么多，你可以做一两个地下城
.mob Blood Elf Reclaimer
.mob Blood Elf Surveyor
step
.goto Azshara,53.45,21.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基姆加尔|r
.turnin 3601 >>交任务: |cRXP_FRIENDLY_我就是基姆加尔！|r
.accept 5534 >>接任务: |cRXP_WARN_基姆加尔“丢失”的装备|r
.target Kim'jael
step << Hunter
#completewith next
.goto Azshara,47.80,60.80,50
>>向南行驶到悬崖上，然后跳下水
step << Hunter
.loop 25,Azshara,87.2,23.0,89.8,22.6,89.8,27.4,90.8,31.0,90.2,35.6,88.0,32.0,87.6,30.0,84.6,30.8,84.2,27.8,87.2,23.0
>>杀死所有类型的|cRXP_ENEMY_Wavethrougher|r。掠夺它们的|cRXP_Loot_Scale|r
.complete 8231,1 
.mob Wavethrasher
.mob Young Wavethrasher
.mob Great Wavethrasher
step << Mage
.goto Azshara,28.11,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳斯|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
step << Mage
.goto Azshara,29.2,40.2
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r
>>|cRXP_WARN_大法师在他的塔上徘徊|r
.turnin 8251 >>交任务: |cRXP_FRIENDLY_魔法的尘埃|r
.accept 8252 >>接任务: |cRXP_WARN_纳迦的珊瑚|r
.target Archmage Xylem
step << Mage
.goto Azshara,28.11,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳斯|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
step << !Hunter !Mage
#completewith next
.goto Azshara,47.80,60.80,50
>>向南行驶到悬崖上，然后跳下水
step
#completewith Tablets
>>杀死所有|cRXP_ENEMY_Spitelash Nagas|r。掠夺它们以获得|cRXP_Loot_魔法珊瑚|r和|cRXP-Loot_某些符文|r << Mage
>>|cRXP_WARN_|r|cRXP_OOT_Enchanted Coral|r|cRXP_WARN_i被|r| cRXP_ENEMY_Spitelash警报器|r|特定地掉落|r << Mage
>>杀死所有|cRXP_ENEMY_Spitelash Nagas|r。掠夺它们以获得|cRXX_Loot_Some符文|r << !Mage
.complete 5534,1 
.complete 8252,1 << Mage 
.mob Spitelash Myrmidon
.mob Spitelash Enchantress
.mob Spitelash Battlemaster
.unitscan Spitelash Siren << Mage
step
.goto Azshara,47.80,60.80
.use 10687 >>在水坑中游泳并使用|T132793:0|t[标记为#1的空小瓶]
.complete 3568,1 
step
.goto Azshara,47.80,51.30
.use 10688 >>在水坑中游泳，并使用|T132793:0|t[标记为#2的空小瓶]
.complete 3568,2 
step
.goto Azshara,48.70,48.50
.use 10689 >>在水坑中游泳并使用|T132793:0|t[标有#3的空小瓶]
.complete 3568,3 
step
.goto Azshara,47.50,46.20
.use 10870 >>在水坑中游泳并使用|T132793:0|t[标记为#4的空小瓶]
.complete 3568,4 
step
#label Tablets
.goto Azshara,39.80,46.81,40,0
.goto Azshara,39.86,48.72,40,0
.goto Azshara,37.30,48.12,40,0
.goto Azshara,38.55,54.58,40,0
.goto Azshara,40.97,55.00,40,0
.goto Azshara,40.81,62.69,40,0
.goto Azshara,42.95,63.76,40,0
.goto Azshara,38.70,63.30,40,0
.goto Azshara,36.35,58.75,40,0
.goto Azshara,35.92,57.55,40,0
.goto Azshara,34.89,53.93,40,0
.goto Azshara,35.86,53.49
>>掠夺散落在废墟周围的|cRXP_PICK_Glowing Tablet|r
.complete 3517,1 
.complete 3517,2 
.complete 3517,3 
.complete 3517,4 
step
.loop 25,Azshara,44.0,48.2,45.6,43.8,47.0,41.6,48.8,45.0,47.4,49.0,48.2,54.0,48.2,59.8,48.6,64.8,46.2,61.0,45.6,57.8,46.0,52.8,44.0,48.2
>>杀死所有|cRXP_ENEMY_Spitelash Nagas|r。掠夺它们以获得|cRXP_Loot_魔法珊瑚|r和|cRXP-Loot_某些符文|r << Mage
>>杀死所有|cRXP_ENEMY_Spitelash Nagas|r。掠夺它们以获得|cRXX_Loot_Some符文|r << !Mage
>>|cRXP_WARN_|r|cRXP_OOT_Enchanted Coral|r|cRXP_WARN_i被|r| cRXP_ENEMY_Spitelash警报器|r|特定地掉落|r << Mage
.complete 5534,1 
.complete 8252,1 << Mage 
.mob Spitelash Myrmidon
.mob Spitelash Enchantress
.mob Spitelash Battlemaster
.unitscan Spitelash Siren << Mage
step << Hunter/Priest
.goto Azshara,42.40,42.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
.turnin 8231 >>交任务: |cRXP_FRIENDLY_碎浪多头怪|r << Hunter
.turnin 8255 >>交任务: |cRXP_FRIENDLY_苔蹄快步者|r << Priest
.accept 8256 >>接任务: |cRXP_WARN_亡灵的腐液|r << Priest
.turnin 8256 >>交任务: |cRXP_FRIENDLY_亡灵的腐液|r << Priest
.target Ogtinc
step << Hunter/Priest
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
.accept 8232 >>接任务: |cRXP_WARN_神庙中的绿龙|r << Hunter
.accept 8257 >>接任务: |cRXP_WARN_摩弗拉斯之血|r << Priest
.target Ogtinc
.isQuestTurnedIn 8231 << Hunter
.isQuestTurnedIn 8256 << Priest
.dungeon ST
step
.goto Azshara,45.55,37.79,50,0
.goto Azshara,53.45,21.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t从废墟中跑上山，然后与|cRXP_FRIENDLY_Kim'jael|r交谈
.turnin 5534 >>交任务: |cRXP_FRIENDLY_基姆加尔“丢失”的装备|r
.target Kim'jael
step
.goto Azshara,22.60,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.turnin 3517 >>交任务: |cRXP_FRIENDLY_偷窃知识|r
.accept 3561 >>接任务: |cRXP_WARN_大法师克希雷姆的石版|r
.accept 3518 >>接任务: |cRXP_WARN_玛加萨的石版|r
.accept 3541 >>接任务: |cRXP_WARN_杰斯雷蒙的石版|r
.target Jediga
step
.goto Azshara,22.26,51.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿格图·血拳|r
.turnin 3506 >>交任务: |cRXP_FRIENDLY_叛徒|r
.accept 3507 >>接任务: |cRXP_WARN_叛徒|r
.target Ag'tor Bloodfist
.isQuestTurnedIn 3505
step
.goto Azshara,28.11,50.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sanath|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
step
.goto Azshara,29.7,40.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r
.turnin 3561 >>交任务: |cRXP_FRIENDLY_大法师克希雷姆的石版|r
.accept 3565 >>接任务: |cRXP_WARN_克希雷姆的报酬|r
.turnin 8252 >>交任务: |cRXP_FRIENDLY_纳迦的珊瑚|r << Mage
.target Archmage Xylem
step << Mage
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r, 他在塔上
.accept 8253 >>接任务: |cRXP_WARN_毁灭摩弗拉斯|r << Mage
.target Archmage Xylem
.isQuestTurnedIn 8252 << Mage
.dungeon ST
step
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这会把你传送回去|r
.turnin 3421 >>交任务: |cRXP_FRIENDLY_回程|r
.timer 8,Return Trip RP
.target Nyrill
step
.goto Azshara,22.56,51.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.turnin 3565 >>交任务: |cRXP_FRIENDLY_克希雷姆的报酬|r
.target Jediga
step
.goto Azshara,21.96,49.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克隆姆|r
.fly Splintertree Post >>飞到Splinterree Post
.target Kroum
.zoneskip Ashenvale
step
.goto Ashenvale,55.78,28.12
.zone 361 >>前往: |cRXP_PICK_费伍德森林|r
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 50-60
#classic
<< Horde
#name 53-54 Felwood
#next 54-55 Un'Goro Crater
step
#optional
#completewith next
.abandon 3504 
.isOnQuest 3504
step
.goto Felwood,51.00,85.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格拉兹|r
.accept 8460 >>接任务: |cRXP_LOOT_木喉熊怪的盟友|r
.target Grazle
step
.goto Felwood,50.90,81.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔诺恩·红羽|r
.accept 5156 >>接任务: |cRXP_LOOT_验证腐蚀|r
.target Taronn Redfeather
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.accept 5155 >>接任务: |cRXP_LOOT_加德纳尔的势力|r
.target Greta Mosshoof
step
.goto Felwood,46.70,83.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅贝丝·河风|r
.accept 4102 >>接任务: |cRXP_LOOT_净化费伍德|r
.target Maybess Riverbreeze
step
#completewith next
.subzone 1763 >>Travel to Jaedenar
step
.goto Felwood,38.45,60.72
>>杀死|cRXP_ENEMY_Jaedenar猎犬|r，|cRXD_ENEMY_Guardians|r，| cRXP__ENEMY_Adepts|r和|cRXP_ENEMY_Cultist|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Jaedenar Adepts|r|cRXP_WARN_；它们会眨眼，还有强烈的火球和火焰|r
.complete 5155,1 
.complete 5155,2 
.complete 5155,3 
.complete 5155,4 
.mob Jaedenar Hound
.mob Jaedenar Guardian
.mob Jaedenar Adept
.mob Jaedenar Cultist
step
#completewith next
.goto Felwood,37.37,49.83,40,0
.goto Felwood,35.45,50.10,40,0
.goto Felwood,34.57,52.12
.subzone 1997 >>前往Bloodvenom Post
step
.goto Felwood,34.80,52.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德雷卡苏|r
.accept 6162 >>接任务: |cRXP_LOOT_最后一战|r
.target Dreka'Sur
step
.goto Felwood,34.20,52.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winna|r
.accept 4505 >>接任务: |cRXP_LOOT_腐化之井|r
.target Winna Hazzard
step
.goto Felwood,34.40,53.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉卡尔|r
.fp Felwood >>获取Felwood飞行路线
.target Brakkar
step
.goto Felwood,36.02,66.99,70,0
.goto Felwood,32.30,66.60
.use 12566 >>前往Constellas废墟中的绿色月井，然后使用您的|T134870:0|t[硬化薄片]
>>|cRXP_WARN_这一带有潜行的撒旦，有很强的减速毒药。他们中的一些人在巡逻，所以要小心|r
.complete 4505,1 
.unitscan Jadefire Shadowstalker << !Warlock
step
#completewith next
>>杀死|cRXP_ENEMY_枯木勇士|r、|cRXP_ENEMY_枯木探路者|r和|cRXX_ENEMY_Deadwood园丁|r
.complete 8460,1 
.complete 8460,2 
.complete 8460,3 
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,48.20,94.30
>>杀死|cRXP_ENEMY_Overlord Ror|r。掠夺他的|cRXX_Loot_爪|r
>>|cRXP_WARN_清除该区域以避免因其AoE恐惧引起的并发症|r
.complete 6162,1 
.unitscan Overlord Ror
step
.loop 25,Felwood,48.2,94.3,46.8,91.8,46.6,90.4,46.6,88.6,48.6,89.4,49.2,91.6,48.2,94.3
>>杀死|cRXP_ENEMY_枯木勇士|r、|cRXP_ENEMY_枯木探路者|r和|cRXX_ENEMY_Deadwood园丁|r
.complete 8460,1 
.complete 8460,2 
.complete 8460,3 
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step << !Warrior !Hunter !Rogue !Druid !Shaman
#era
.loop 25,Felwood,48.2,94.3,46.8,91.8,46.6,90.4,46.6,88.6,48.6,89.4,49.2,91.6,48.2,94.3
.xp 53+95000 >>升级到53 130000+/173900级
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
.goto Felwood,51.00,85.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格拉兹|r
.turnin 8460 >>交任务: |cRXP_FRIENDLY_木喉熊怪的盟友|r
.accept 8462 >>接任务: |cRXP_LOOT_与纳菲恩交谈|r
.target Grazle
step
.goto Felwood,51.20,82.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5155 >>交任务: |cRXP_FRIENDLY_加德纳尔的势力|r
.accept 5157 >>接任务: |cRXP_LOOT_收集堕落之水|r
.target Greta Mosshoof
step
#completewith next
.subzone 1763 >>Travel to Jaedenar
step
.goto Felwood,35.20,59.80
.use 12922 >>在绿色的月井里使用|T132788:0|t[空食堂]
>>|cRXP_WARN_要非常小心Jaedenar Adepts；它们会眨眼，还有强烈的火球和火焰|r
.complete 5157,1 
.unitscan Jaedenar Adept
step << Warlock
.goto Felwood,37.6,68.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊普斯|r
.turnin 8419 >>交任务: |cRXP_FRIENDLY_小鬼的要求|r
.accept 8421 >>接任务: |cRXP_LOOT_奇怪的材料|r
.target Impsy
step << skip
.loop 25,Felwood,41.2,45.4,43.4,48.2,42.6,50.2,39.6,54.0,40.8,59.8,40.8,66.0,40.2,68.6,38.8,71.6,41.6,71.6,42.0,67.8,40.8,66.0,40.8,59.8,39.6,54.0,41.2,50.6,38.6,49.6,43.4,48.2,41.2,45.4
>>杀死|cRXP_ENEMY_Cursed Ooze|r和|cRXD_ENEMY_Tained Ooze| r。掠夺它们的|cRXP_Loot_Slime Samples|r
.collect 12230,35 
.mob Cursed Ooze
.mob Tainted Ooze
step << Warlock
.loop 25,Felwood,41.2,45.4,43.4,48.2,42.6,50.2,39.6,54.0,40.8,59.8,40.8,66.0,40.2,68.6,38.8,71.6,41.6,71.6,42.0,67.8,40.8,66.0,40.8,59.8,39.6,54.0,41.2,50.6,38.6,49.6,43.4,48.2,41.2,45.4
>>杀死|cRXP_ENEMY_Cursed Ooze|r和|cRXD_ENEMY_Tained Ooze| r。掠夺它们的|cRXP_Loot_Bodyvenom Essence |r
>>|cRXP_WARN_仅|r|cRXP_ENEMY_Tained Ooze|r|cRXP_WARN_can drop|r| cRXP_OOT_Bloodvenom Essence|r
.complete 8421,2 
.mob Cursed Ooze
.mob Tainted Ooze
step
#completewith next
>>Run into a crater
.complete 5156,3 
step
.loop 25,Felwood,40.6,42.4,42.0,37.6,45.6,38.6,44.6,42.6,40.6,42.4
>>杀死|cRXP_ENEMY_Entropic Beasts|r和|cRXD_ENEMY_Entropic Horrors|r
>>|cRXP_WARN_它们共享产卵，所以你可能不得不杀死每种类型的额外产卵|r
.complete 5156,1 
.complete 5156,2 
.complete 5156,3 
.mob Entropic Horror
.mob Entropic Beast
step
.goto Felwood,41.20,42.82
>>Run into a crater
.complete 5156,3 
step << Warlock
.loop 25,Felwood,49.6,30.0,46.4,24.6,49.2,19.8,53.0,20.4,52.0,24.8,49.6,30.0
>>杀死|cRXP_ENEMY_Withered Protectors|、|cRXD_ENEMY_Irotree Stompers|和|cRXP_ENEMY_Irontree Wanderers|。掠夺他们的|cRXP_Loot_Rotting Wood|r
.complete 8421,1 
.mob Withered Protectors
.mob Irontree Stompers
.mob Irontree Wanderers
step << Warlock
.goto Felwood,37.6,68.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊普斯|r
.turnin 8421 >>交任务: |cRXP_FRIENDLY_奇怪的材料|r
.target Impsy
step << Warlock
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊普斯|r
.accept 8422 >>接任务: |cRXP_WARN_巨魔的羽毛|r
.target Impsy
.isQuestTurnedIn 8421
.dungeon ST
step
#era/som
#completewith next
>>杀死|cRXP_ENEMY_Angerclaw灰熊|r和|cRXX_ENEMY_Felpaw掠夺者|r
.complete 4120,1 
.complete 4120,2 
.mob Angerclaw Grizzly
.mob Felpaw Ravager
step
.goto Felwood,56.6,17.4,40,0
.goto Felwood,57.8,19.2,40,0
.goto Felwood,57.6,21.8,40,0
.goto Felwood,59.2,20.4
>>杀死|cRXP_ENEMY_Warpwood Moss Flayer|r和|cRXX_ENEMY_Warrpwood Shreders |r。掠夺它们以获取它们的|cRXD_Loot_ Blood Ambers|r
.complete 4102,1 
.mob Warpwood Moss Flayer
.mob Warpwood Shredder
step
#era/som
.loop 25,Felwood,56.0,22.2,53.2,28.0,56.8,26.4,56.0,22.2,58.6,15.6,64.6,20.0,58.6,15.6,56.2,8.6,50.8,12.6,53.6,15.6,56.0,22.2
>>完成击杀|cRXP_ENEMY_Angerclaw灰熊|r和|cRXX_ENEMY_Felpaw掠夺者|r
.complete 4120,1 
.complete 4120,2 
.mob Angerclaw Grizzly
.mob Felpaw Ravager
step
#completewith next
.goto Felwood,64.70,8.10,70 >>前往Timbermaw Hold入口
step
.goto Felwood,64.70,8.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳菲恩|r
.turnin 8462 >>交任务: |cRXP_FRIENDLY_与纳菲恩交谈|r
.target Nafien
step
#completewith next
.goto Felwood,65.37,6.92,20,0
.goto Felwood,64.89,5.82,20,0
.goto Felwood,64.56,3.46,20,0
.goto Felwood,65.41,2.77,20,0
.goto Felwood,65.38,1.08,20,0
.goto Felwood,65.98,0.64,20,0
.goto Kalimdor,52.27,22.95,20,0
.goto Kalimdor,52.33,22.62,20,0
.goto Kalimdor,52.23,22.49,20,0
.goto Kalimdor,52.27,22.35,20,0
.goto Kalimdor,52.33,22.34,20,0
.goto Moonglade,35.74,72.37,20,0
.zone Moonglade >>前往: |cRXP_PICK_月光林地|r
.zoneskip Moonglade
.isOnQuest 7066
.dungeon MARA
step
.goto Moonglade,36.178,41.798
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者雷姆洛斯|r
.turnin 7066 >>交任务: |cRXP_FRIENDLY_生命之种|r
.target Keeper Remulos
.isOnQuest 7066
.dungeon MARA
step
#completewith next
.goto Felwood,65.44,2.81,20,0
.goto Felwood,66.51,2.98,20,0
.goto Felwood,67.82,4.33,20,0
.goto Felwood,67.93,5.11,20,0
.zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
step
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.accept 5082 >>接任务: |cRXP_LOOT_冬泉熊怪的威胁|r
.turnin 3908 >>交任务: |cRXP_FRIENDLY_无人知晓的秘密|r
.target Donova Snowden
step
#completewith next
>>杀死|cRXP_ENEMY_Winterfall Furbolgs|r，直到你掠夺了一个|T134865:0|t[|cRXP-loot_空的消防水瓶|r]。使用它来接受任务
.collect 12771,1,5083 
.accept 5083 >>接任务: |cRXP_LOOT_冬泉火酒|r
.use 12771
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
.loop 25,Winterspring,31.0,36.8,30.0,35.8,31.0,34.8,33.6,37.0,31.0,36.8
>>杀死|cRXP_ENEMY_Winterfall探路者|r，|cRXD_ENEMY_ WinterfallDen守望者|r和|cRXP_ENEMY_温特fall图腾|r
>>|cRXP_WARN_如果你的产卵量用完了，就清除东南部的营地|r
.complete 5082,1 
.complete 5082,2 
.complete 5082,3 
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
.loop 25,Winterspring,39.0,42.8,41.8,44.6,42.4,42.4,39.0,42.8
>>杀死|cRXP_ENEMY_Winterfall Furbolgs|r，直到你掠夺了一个|T134865:0|t[|cRXP-loot_空的消防水瓶|r]。使用它来接受任务
.collect 12771,1,5083 
.accept 5083 >>接任务: |cRXP_LOOT_冬泉火酒|r
.use 12771
.mob Winterfall Pathfinder
.mob Winterfall Den Watcher
.mob Winterfall Totemic
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 5082 >>交任务: |cRXP_FRIENDLY_冬泉熊怪的威胁|r
.turnin 5083 >>交任务: |cRXP_FRIENDLY_冬泉火酒|r
.accept 5084 >>接任务: |cRXP_LOOT_堕落熊怪|r
.target Donova Snowden
step
#hardcoreserver
#era/som
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_暴雪已经调整了任务[Videre Elixir]，这样它就不会再在官方硬核服务器上杀死你了|r
.accept 3909 >>接任务: |cRXP_WARN_视灵药剂|r
.target Donova Snowden
step
#softcoreserver
#hardcore
#era/som
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_你可以安全地完成这个任务，作为[维迪尔灵丹妙药]任务链的一部分|r
.accept 3909 >>接任务: |cRXP_WARN_视灵药剂|r
.target Donova Snowden
step
#softcoreserver
#softcore
#era/som
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.accept 3909 >>接任务: |cRXP_WARN_视灵药剂|r
.target Donova Snowden
step
#softcore
#completewith next
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
#hardcore
#completewith next
.subzone 2255 >>Travel to Everlook
step
.goto Winterspring,61.60,38.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲诺克|r
.turnin 4808 >>交任务: |cRXP_FRIENDLY_菲诺克|r
.target Felnok Steelspring
step
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤格雷克|r
.fp Everlook >>获取Everlook飞行路线
.fly Felwood >>Fly to Felwood
.target Yugrek
step
.goto Felwood,34.20,52.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winna|r
.turnin 4505 >>交任务: |cRXP_FRIENDLY_腐化之井|r
.target Winna Hazzard
step
.goto Felwood,34.80,52.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德雷卡苏|r
.turnin 6162 >>交任务: |cRXP_FRIENDLY_最后一战|r
.target Dreka'Sur
step
#softcore
#completewith next
.goto Felwood,41.30,67.10
>>前往Jaedenar以南的黏液池。在南部费尔伍德的|cRXP_FRIENDLY_Spirit Healer|r处死亡并重生
step
.goto Felwood,46.60,83.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅贝丝·河风|r
.turnin 4102 >>交任务: |cRXP_FRIENDLY_净化费伍德|r
.target Maybess Riverbreeze
step
.goto Felwood,46.60,83.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅贝丝·河风|r
>>|cRXP_WARN_选择选项：|r“我需要一个Cenarion信标。”
.collect 11511,1 
.target Maybess Riverbreeze
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5157 >>交任务: |cRXP_FRIENDLY_收集堕落之水|r
.accept 5158 >>接任务: |cRXP_LOOT_水之魂的帮助|r
.target Greta Mosshoof
step
.goto Felwood,50.90,81.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔诺恩·红羽|r
.turnin 5156 >>交任务: |cRXP_FRIENDLY_验证腐蚀|r
.target Taronn Redfeather
step
#completewith next
.hs >>前往: 奥格瑞玛
.use 6948
step
.goto Orgrimmar,54.65,67.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_酒吧老板莫拉格|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Barkeep Morag
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
>>|cRXP_BUY_从拍卖行购买一件|r|T133021:0|t[Mithril Casing]|cRXP_Buy_|r 
.target Auctioneer Thathung
.collect 10561,1
step
.goto Orgrimmar,55.52,34.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰斯雷蒙|r
.turnin 3541 >>交任务: |cRXP_FRIENDLY_杰斯雷蒙的石版|r
.accept 3563 >>接任务: |cRXP_WARN_杰斯雷蒙的报酬|r
.target Jes'rimon
.isOnQuest 3541
step
.goto Orgrimmar,55.52,34.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰斯雷蒙|r
.accept 3563 >>接任务: |cRXP_WARN_杰斯雷蒙的报酬|r
.target Jes'rimon
.isQuestTurnedIn 3541
step
.goto Orgrimmar,75.20,34.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝尔戈洛姆·石槌|r
.turnin 3507 >>交任务: |cRXP_FRIENDLY_叛徒|r
.target Belgrom Rockmaul
.isOnQuest 3507
step
.goto Orgrimmar,56.40,46.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔兹宾·鼓眼|r
.accept 4494 >>接任务: |cRXP_LOOT_异种蝎的远征|r
.target Zilzibin Drumlore
step
.goto Orgrimmar,45.11,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Doras|r交谈
.fly Camp Taurajo >>飞往陶拉霍营地
.target Doras
.zoneskip The Barrens
step
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.home >>将您的炉石设置为陶拉霍营地
.target Innkeeper Byula
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 50-60
#classic
<< Horde
#name 54-55 Un'Goro Crater
#next 55-56 Felwood/冬泉
step
.goto The Barrens,44.45,59.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Tanaris >>前往: 塔纳利斯
.target Omusa Thunderhorn
.zoneskip Tanaris
step
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4494 >>交任务: |cRXP_FRIENDLY_异种蝎的远征|r
.accept 4496 >>接任务: |cRXP_LOOT_擒虫先擒王|r
.target Alchemist Pestlezugg
step
.goto Tanaris,52.70,45.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.turnin 3444 >>交任务: |cRXP_FRIENDLY_石环|r
.target Marvon Rivetseeker
step
#completewith next
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bullkrek|r
.fly Un'Goro Crater>>飞到Un'Goro火山口
.target Bullkrek Ragefist
.zoneskip Un'Goro Crater
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍莱伊·马绍尔|r, |cRXP_FRIENDLY_威利德·马绍尔|r
.accept 3883 >>接任务: |cRXP_LOOT_异型的生态|r
.goto Un'Goro Crater,43.89,7.24
.accept 3881 >>接任务: |cRXP_LOOT_抢救物资|r
.goto Un'Goro Crater,43.95,7.14
.target Hol'anyee Marshal
.target Williden Marshal
step
.goto Un'Goro Crater,43.50,7.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark|r
.accept 3882 >>接任务: |cRXP_LOOT_挖骨头|r
.target Spark Nilminer
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.90,2.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.accept 4288 >>接任务: |cRXP_LOOT_西部水晶塔|r
.accept 4287 >>接任务: |cRXP_LOOT_东部水晶塔|r
.target J.D. Collie
step
.goto Un'Goro Crater,43.61,8.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普拉格·弗劳克|r
.accept 4501 >>接任务: |cRXP_LOOT_当心翼手龙|r
.accept 4492 >>接任务: |cRXP_LOOT_走丢了！|r
.target Spraggle Frock
step
.goto Un'Goro Crater,45.53,8.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞安|r
.accept 4145 >>接任务: |cRXP_LOOT_拉瑞安和穆尔金|r
.target Larion
step
.goto Tanaris,12.80,8.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希兹尔|r
.accept 4503 >>接任务: |cRXP_LOOT_希兹尔的的飞行器|r
.target Shizzle
step
#completewith Mighty
>>在探索Un'Goro时收集|cRXP_LOOT_Un'Goro土壤|r
.collect 11018,25 
step
#completewith Gorillaz
>>杀死在北塔以北发现的一些|cRXP_ENEMY_Pterrordax|r。掠夺他们的|cRXP_Loot_Scales|r
>>|cRXP_WARN_现在不需要完成|r
.complete 4501,1 
.complete 4503,2 
step
#completewith Gorillaz
.goto Un'Goro Crater,52.8,13.4,40,0
.goto Un'Goro Crater,53.0,17.6,40,0
.goto Un'Goro Crater,56.6,16.6,40,0
.goto Un'Goro Crater,60.6,20.6,40,0
>>在前往真菌岩的途中，杀死|cRXP_ENEMY_Bloodpeal Flayers|r
>>|cRXP_WARN_他们的毒药造成很高的伤害。不要把注意力集中在这一点上。你可以稍后完成|r << Warrior/Rogue
>>|cRXP_WARN_他们的毒药造成高伤害并消耗法力。不要把注意力集中在这一点上。你可以稍后完成|r << !Warrior !Rogue
.complete 4145,3 
.mob Bloodpetal Flayer
step
#label Gorillaz
.goto Un'Goro Crater,62.97,17.39,40,0
.subzone 542 >>Travel to Fungal Rock
step
#label FungalRock
.goto Un'Goro Crater,61.85,17.71,50,0
.goto Un'Goro Crater,64.32,16.35,25,0
.goto Un'Goro Crater,65.83,15.61,20,0
.goto Un'Goro Crater,68.70,17.13,20,0
.goto Un'Goro Crater,69.52,16.82,20,0
.goto Un'Goro Crater,68.63,14.36,20,0
.goto Un'Goro Crater,68.51,13.27,20,0
.goto Un'Goro Crater,65.64,14.60,20,0
.goto Un'Goro Crater,65.06,16.70,20,0
.goto Un'Goro Crater,63.91,16.35,20,0
.goto Un'Goro Crater,62.86,18.17
>>杀死|cRXP_ENEMY_Un'Goro Stompers|r，|cRXX_ENEMY_Un'Goro Thunderers|r和|cRXD_ENEMY_Un'Goro大猩猩|r。掠夺它们的|cRXP_OOT_Pelt|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Un'Goro Gorillas|r|cRXP_WARN_call在90码范围内寻求帮助|r|cRXP_ENEMY_Un'Goro Thunderers|r|cRXP_WARN_拥有高伤害、瞬间电击法术|r
.complete 4289,2 
.complete 4289,3 
.complete 4289,1 
.mob Un'Goro Thunderer
.mob Un'Goro Stomper
.mob Un'Goro Gorilla
step
#completewith Ucha
>>杀死|cRXP_ENEMY_Diemetradons|r。掠夺他们的|cRXP_Loot_Bones|r和|cRXP-Loot_Scales|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Elder Diemetradons的|r|cRXP_WARN_Pummel能力，它会中断法术|r << Warlock/Priest/Mage/Shaman/Druid
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
.loop 25,Un'Goro Crater,57.6,36.8,64.4,30.8,68.2,24.0,71.2,31.0,74.2,39.6,76.0,47.4,74.2,39.6,69.4,38.0,66.6,35.6,60.0,39.4,57.6,36.8
>>杀死|cRXP_ENEMY_花瓣式阈值|r、|cRXP_ENEMY_Bloodpeal Lashers|r和|cRXX_ENEMY_blowdeal Flayers|r
>>|cRXP_WARN_他们的毒药造成高伤害，可以解除武装|r << Warrior/Rogue/Shaman
>>|cRXP_WARN_他们的毒药造成高伤害并消耗法力|r << !Warrior !Rogue !Shaman
.complete 4145,4 
.complete 4145,1 
.complete 4145,3 
.mob Bloodpetal Thresher
.mob Bloodpetal Lasher
step
.goto Un'Goro Crater,68.54,36.54
>>单击|cRXP_PICK_食品箱|r
.complete 3881,1 
step
.goto Un'Goro Crater,77.24,49.96
>>单击|cRXP_PICK_Eastern Crystal Pylon|r
.complete 4287,1 
.isOnQuest 4287
step
.goto Un'Goro Crater,79.94,49.88
.use 11568 >>打开|T133635:0|t[Torwa‘s Pouch]
.use 11569 >>站在大而平的岩石旁，然后用|T133970:0|t[腊谷肉]
.use 11570 >>使用|T134743:0|t[保存的信息素混合物]
>>杀死|cRXP_ENEMY_Lar'korwi|r。抢劫他的|cRXP_Loot_Head|r
.complete 4292,1 
.mob Lar'korwi
step << Druid
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4289 >>交任务: |cRXP_FRIENDLY_安戈洛的猩猩|r
.turnin 4292 >>交任务: |cRXP_FRIENDLY_拉克维的诱饵|r
.accept 4301 >>接任务: |cRXP_LOOT_强大的尤尔查|r
.accept 9052 >>接任务: |cRXP_WARN_血瓣毒药|r << Druid
.target Torwa Pathfinder
.dungeon ST
step
#label Ucha
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4289 >>交任务: |cRXP_FRIENDLY_安戈洛的猩猩|r
.turnin 4292 >>交任务: |cRXP_FRIENDLY_拉克维的诱饵|r
.accept 4301 >>接任务: |cRXP_LOOT_强大的尤尔查|r
.target Torwa Pathfinder
step << Druid
#completewith Pterrordax
>>在区域周围拾取|cRXP_PICK_Bloodpeal Sprouts|r，直到您有8个|cRXP_Loot_BBloodcaps|r
.complete 9052,2 
.dungeon ST










step << Druid
#completewith HiveSample
.goto Un'Goro Crater,50.59,77.06,0
>>杀死|cRXP_ENEMY_Gorishi Silithi|r。掠夺它们以获得|cRXX_Loot_ Gorishi气味腺|r << !Druid
>>杀死|cRXP_ENEMY_Gorishi Silithi|r。掠夺它们以获得|cRXP_Loot_Gorishi气味腺|r和|cRXD_Loot_Gorishi刺|r << Druid
.complete 4496,1 
.complete 9052,1 << Druid 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
.mob Gorishi Hive Guard
.dungeon ST
step
#completewith next
.goto Un'Goro Crater,50.59,77.06,0
>>杀死|cRXP_ENEMY_Gorishi Silithi|r。掠夺它们以获得|cRXX_Loot_ Gorishi气味腺|r
.complete 4496,1 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
.mob Gorishi Hive Guard
step
#label HiveSample
.goto Un'Goro Crater,49.97,81.36,40,0
.goto Un'Goro Crater,48.7,85.2
.use 11132 >>进入silithid洞穴，然后拥抱左侧墙壁。在圆形腔室中间使用您的|T134864:0|t[刮擦小瓶]
.complete 3883,1 
step << Druid
.goto Un'Goro Crater,49.44,82.85,40,0
.goto Un'Goro Crater,50.35,79.55,50,0
.goto Un'Goro Crater,48.69,76.45,70,0
.goto Un'Goro Crater,47.58,81.58,70,0
.goto Un'Goro Crater,49.38,82.32,70,0
.goto Un'Goro Crater,52.38,84.31,70,0
.goto Un'Goro Crater,54.03,78.15,70,0
.goto Un'Goro Crater,51.74,75.36
>>杀死|cRXP_ENEMY_Gorishi Silithi|r。掠夺它们以获得|cRXX_Loot_ Gorishi气味腺|r << !Druid
>>杀死|cRXP_ENEMY_Gorishi Silithi|r。掠夺它们以获得|cRXP_Loot_Gorishi气味腺|r和|cRXD_Loot_Gorishi刺|r << Druid
.complete 4496,1 
.complete 9052,1 << Druid 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
.mob Gorishi Hive Guard
.dungeon ST
step
.goto Un'Goro Crater,49.44,82.85,40,0
.goto Un'Goro Crater,50.35,79.55,50,0
.goto Un'Goro Crater,48.69,76.45,70,0
.goto Un'Goro Crater,47.58,81.58,70,0
.goto Un'Goro Crater,49.38,82.32,70,0
.goto Un'Goro Crater,52.38,84.31,70,0
.goto Un'Goro Crater,54.03,78.15,70,0
.goto Un'Goro Crater,51.74,75.36
>>杀死|cRXP_ENEMY_Gorishi Silithi|r。掠夺它们以获得|cRXX_Loot_ Gorishi气味腺|r
.complete 4496,1 
.mob Gorishi Worker
.mob Gorishi Wasp
.mob Gorishi Reaver
.mob Gorishi Tunneler
.mob Gorishi Stinger
.mob Gorishi Hive Guard
step
#completewith next
.goto Un'Goro Crater,44.11,91.63,0
>>掠夺您为其|cRXP_Loot_Scales|r而杀死的|cRXT_ENEMY_Pterrordax|r
>>|cRXP_WARN_现在不需要完成|r
.complete 4503,2 
step
#label Pterrordax
.goto Un'Goro Crater,56.2,88.2,40,0
.goto Un'Goro Crater,57.0,92.6,40,0
.goto Un'Goro Crater,50.4,87.8,40,0
.goto Un'Goro Crater,50.6,89.8,40,0
.goto Un'Goro Crater,43.0,85.2,40,0
.goto Un'Goro Crater,43.6,92.4
>>在南部山区杀死|cRXP_ENEMY_Pterrordax|r
.complete 4501,1 
.unitscan Pterrordax
step << Druid
#completewith next
>>完成区域周围的掠夺|cRXP_PICK_Bloodpeal Sprouts|r，直到你有8个|cRXP_LOOT_BBloodcaps|r
.complete 9052,2 
.dungeon ST
step << Druid
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 9052 >>交任务: |cRXP_FRIENDLY_血瓣毒药|r
.target Torwa Pathfinder
.dungeon ST
step
#completewith Springs
.goto Un'Goro Crater,36.76,35.47,0
>>杀死|cRXP_ENEMY_花瓣陷阱|r
>>|cRXP_WARN_他们的毒药伤害很高，可以施放缠绕的树根|r << Warrior/Rogue/Shaman
>>|cRXP_WARN_他们的毒药造成高伤害并消耗法力。它们可以铸造缠绕的根|r << !Warrior !Rogue !Shaman
.complete 4145,2 
.mob Bloodpetal Trapper
step
#completewith Springs
.goto Un'Goro Crater,50.5,65.2,0
>>杀死|cRXP_ENEMY_Diemetradons|r。掠夺他们的|cRXP_Loot_Bones|r和|cRXP-Loot_Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
.goto Un'Goro Crater,38.46,66.07
>>单击|cRXP_PICK_Research Equipment框|r
.complete 3881,2 
step
.goto Un'Goro Crater,23.87,59.21
>>单击|cRXP_PICK_Western Crsytal Pylon|r
.complete 4288,1 
step
#completewith Springs
.goto Un'Goro Crater,20.95,59.45,80,0
.goto Un'Goro Crater,36.76,35.47,0
>>杀死|cRXP_ENEMY_Frenzied Pterrordax|r。掠夺他们的|cRXP_Loot_Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
.goto Un'Goro Crater,30.94,50.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兰克|r
.accept 974 >>接任务: |cRXP_LOOT_究根问底|r
.target Krakle
step
#completewith HotSpot
.goto Un'Goro Crater,47.1,47.1,10,0
.goto Un'Goro Crater,47.7,48.3,10,0
.goto Un'Goro Crater,48.2,50.1,10,0
.goto Un'Goro Crater,48.6,49.8,20 >>火山西侧的熔岩路径是通往顶部的捷径
step
#completewith next
>>杀死|cRXP_ENEMY_Fire Elements|r。掠夺他们的|cRXX_Loot_Ash|r
.complete 4502,1 
.mob Scorching Elemental
.mob Living Blaze
.mob Blazing Invader
step
#label HotSpot
.goto Un'Goro Crater,49.6,45.7
.use 12472 >>爬上火山顶部，然后使用|T132995:0|t[Krakle's Thermometer]
.complete 974,1 
step
.goto Un'Goro Crater,30.94,50.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克拉兰克|r
.turnin 974 >>交任务: |cRXP_FRIENDLY_究根问底|r
.accept 980 >>接任务: |cRXP_LOOT_新的泉水|r
.target Krakle
step
#completewith PterrordaxAndys
.goto Un'Goro Crater,35.49,43.91,0
>>杀死|cRXP_ENEMY_Diemetradons|r。掠夺他们的|cRXP_Loot_Bones|r和|cRXP-Loot_Scales|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Elder Diemetradons的|r|cRXP_WARN_Pummel能力，它会中断法术|r << Warlock/Priest/Mage/Shaman/Druid
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
#completewith next
.goto Un'Goro Crater,20.95,59.45,80,0
.goto Un'Goro Crater,36.76,35.47,0
>>杀死|cRXP_ENEMY_Frenzied Pterrordax|r。掠夺他们的|cRXP_Loot_Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
.goto Un'Goro Crater,35.49,43.91
>>杀死|cRXP_ENEMY_花瓣陷阱|r
>>|cRXP_WARN_他们的毒药伤害很高，可以施放缠绕的树根|r << Warrior/Rogue/Shaman
>>|cRXP_WARN_他们的毒药造成高伤害并消耗法力。它们可以铸造缠绕的根|r << !Warrior !Rogue !Shaman
.complete 4145,2 
.mob Bloodpetal Trapper
step
#label PterrordaxAndys
.loop 25,Un'Goro Crater,36.6,65.8,40.8,62.8,41.8,56.8,40.6,51.2,39.6,43.4,37.8,36.6,32.6,34.4,27.6,37.2,26.0,45.4,26.8,58.2,30.8,68.0,38.4,74.0,40.8,67.2,32.8,63.2,30.8,59.6
>>杀死|cRXP_ENEMY_Frenzied Pterrordax|r。掠夺他们的|cRXP_Loot_Scales|r
.complete 4501,2 
.complete 4503,2 
.mob Frenzied Pterrordax
step
.loop 25,Un'Goro Crater,36.6,65.8,40.8,62.8,41.8,56.8,40.6,51.2,39.6,43.4,37.8,36.6,32.6,34.4,27.6,37.2,26.0,45.4,26.8,58.2,30.8,68.0,38.4,74.0,40.8,67.2,32.8,63.2,30.8,59.6
>>杀死|cRXP_ENEMY_Diemetradons|r。掠夺他们的|cRXP_Loot_Bones|r和|cRXP-Loot_Scales|r
.complete 3882,1 
.complete 4503,1 
.mob Diemetradon
.mob Young Diemetradon
.mob Elder Diemetradon
step
.loop 25,Un'Goro Crater,46.7,53.2,49.8,53.9,52.2,54.2,51.2,51.6,53.1,50.4,52.6,45.3,51.5,46.3,50.3,47.7,51.3,49.4,50.3,47.7,49.5,47.3,47.8,50.9,46.7,53.2
>>杀死|cRXP_ENEMY_Fire Elements|r。掠夺他们的|cRXX_Loot_Ash|r
.complete 4502,1 
.mob Scorching Elemental
.mob Living Blaze
.mob Blazing Invader
step
#completewith next
.goto Un'Goro Crater,52.42,51.00,30 >>进入火山东侧的洞穴
step
.goto Un'Goro Crater,51.90,49.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林格|r
.turnin 4492 >>交任务: |cRXP_FRIENDLY_走丢了！|r
.accept 4491 >>接任务: |cRXP_LOOT_朋友的帮助|r
.target Ringo
step
.goto Un'Goro Crater,43.62,8.50
.use 11804 >>护送|cRXP_FRIENDLY_Ringo|r前往元帅避难所。当他摔倒时，使用|T132805:0|t[Spraggle’s Canteen]
>>|cRXP_WARN_小心别骑得太快离开林戈|r
.complete 4491,1 
.target Ringo
step
.goto Un'Goro Crater,43.61,8.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普拉格·弗劳克|r
.turnin 4501 >>交任务: |cRXP_FRIENDLY_当心翼手龙|r
.target Spraggle Frock
step
.goto Un'Goro Crater,44.23,11.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希兹尔|r
.turnin 4503 >>交任务: |cRXP_FRIENDLY_希兹尔的的飞行器|r
.target Shizzle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_霍莱伊·马绍尔|r, |cRXP_FRIENDLY_威利德·马绍尔|r
.turnin 3883 >>交任务: |cRXP_FRIENDLY_异型的生态|r
.goto Un'Goro Crater,43.89,7.24
.turnin 3881 >>交任务: |cRXP_FRIENDLY_抢救物资|r
.goto Un'Goro Crater,43.95,7.14
.target Hol'anyee Marshal
.target Williden Marshal
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.9,2.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.turnin 4288 >>交任务: |cRXP_FRIENDLY_西部水晶塔|r
.turnin 4287 >>交任务: |cRXP_FRIENDLY_东部水晶塔|r
.accept 4285 >>接任务: |cRXP_LOOT_北部水晶塔|r
.target J.D. Collie
step
.goto Un'Goro Crater,43.50,7.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark|r
.turnin 3882 >>交任务: |cRXP_FRIENDLY_挖骨头|r
.target Spark Nilminer
step
.goto Un'Goro Crater,43.61,8.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯普拉格·弗劳克|r
.turnin 4491 >>交任务: |cRXP_FRIENDLY_朋友的帮助|r
.target Spraggle Frock
step
.goto Un'Goro Crater,45.53,8.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞安|r
.turnin 4145 >>交任务: |cRXP_FRIENDLY_拉瑞安和穆尔金|r
.accept 4147 >>接任务: |cRXP_LOOT_玛尔冯的车间|r
.target Larion
step
.goto Un'Goro Crater,46.37,13.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna|r
.accept 4243 >>接任务: |cRXP_LOOT_找回A-Me 01|r
.target Karna Remtravel
step
.goto Un'Goro Crater,56.49,12.44
>>单击|cRXP_PICK_Northern Crystal Pylon|r
.complete 4285,1 
.isOnQuest 4285
step
.goto Un'Goro Crater,64.17,16.43,40,0
.goto Un'Goro Crater,67.66,16.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t进入洞穴时拥抱右侧墙壁，然后与|cRXP_FRIENDLY_A-Me 01|r交谈
.turnin 4243 >>交任务: |cRXP_FRIENDLY_找回A-Me 01|r
.target A-Me 01
step
.goto Un'Goro Crater,68.0,13.2
>>杀死洞穴后面的|cRXP_ENEMY_U'cha|r。抢劫他的|cRXP_Loot_Pelt|r
.complete 4301,1 
.unitscan U'cha
step
#ah
.goto Un'Goro Crater,67.67,16.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t进入洞穴时拥抱右侧墙壁，然后与|cRXP_FRIENDLY_A-Me 01|r交谈
.accept 4244 >>接任务: |cRXP_LOOT_找回A-Me 01|r
.turnin 4244 >>交任务: |cRXP_FRIENDLY_找回A-Me 01|r
.accept 4245 >>接任务: |cRXP_LOOT_找回A-Me 01|r
.target A-Me 01
.itemcount 10561,1
step
#ah
.goto Un'Goro Crater,46.37,13.43
>>护送|cRXP_FRIENDLY_A-Me 01|r返回元帅避难所外
.complete 4245,1 
.isOnQuest 4245
step
.goto Un'Goro Crater,46.37,13.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karna|r
.turnin 4245 >>交任务: |cRXP_FRIENDLY_找回A-Me 01|r
.target Karna Remtravel
.isQuestComplete 4245
step
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,41.9,2.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.turnin 4285 >>交任务: |cRXP_FRIENDLY_北部水晶塔|r
.accept 4321 >>接任务: |cRXP_LOOT_分析水晶塔|r
.turnin 4321 >>交任务: |cRXP_FRIENDLY_分析水晶塔|r
.target J.D. Collie
step
#label Mighty
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 4301 >>交任务: |cRXP_FRIENDLY_强大的尤尔查|r
.target Torwa Pathfinder
step << Druid
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 9051 >>接任务: |cRXP_WARN_毒性测试|r
.target Torwa Pathfinder
.isQuestTurnedIn 9052
.dungeon ST
step << Druid 
>>轨迹a|cRXP_ENEMY_Devilsaur|r或|cRXX_ENEMY_Ironhide Devilsaur |r
>>|cRXP_WARN_不要使用|r|cRXP暴君Devilsaur|r|cRXP_WARN_；他们的恐惧能力是致命的|r
>>|cRXP_WARN_在|r|cRXP_ENEMY_Devilsaur|r|cRXP_WARN_上进行垃圾邮件休眠，而不执行其他操作。如果它坏了，就再发一次垃圾邮件。|r
>>|cRXP_ENEMY_Devilsaur|r|cRXP_WARN_have 170%移动速度；他们无法逃脱|r
.use 22432 >>在它睡着的时候用你的|T135125:0|t[Devilsaur Barb]
.complete 9051,1 
.unitscan Devilsaur
.unitscan Ironhide Devilsaur
.unitscan Tyrant Devilsaur
.isQuestTurnedIn 9052
.dungeon ST
step << Druid
.goto Un'Goro Crater,71.64,75.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 9051 >>交任务: |cRXP_FRIENDLY_毒性测试|r
.target Torwa Pathfinder
.isQuestComplete 9051
.dungeon ST
step << Druid
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.accept 9053 >>接任务: |cRXP_WARN_更好的材料|r
.target Torwa Pathfinder
.isQuestTurnedIn 9051
.dungeon ST
step
.goto Un'Goro Crater,46.60,62.37,70,0
.goto Un'Goro Crater,49.25,64.43,70,0
.goto Un'Goro Crater,50.93,67.97,70,0
.goto Un'Goro Crater,55.97,69.52,70,0
.goto Un'Goro Crater,57.84,63.53,70,0
.goto Un'Goro Crater,58.80,57.84,70,0
.goto Un'Goro Crater,58.43,52.67,70,0
.goto Un'Goro Crater,57.94,44.83,70,0
.goto Un'Goro Crater,50.93,67.97
>>从暴徒或|cRXP_PICK_Un'Goro土堆中收集|cRXP_LOOT_Un'Goro土壤|r
.collect 11018,25 
step
#hardcore
#completewith next
.subzone 541 >>前往元帅避难所
.dungeon !ST
step
#hardcore
#completewith BungleInJungle
.goto Un'Goro Crater,43.16,6.24,30,0
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fly Tanaris >>前往: 塔纳利斯
.target Gryfe
.zoneskip Tanaris
.dungeon !ST
step
#completewith next
#softcore
.goto Tanaris,27.06,56.58
.zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
step
#completewith next
#hardcore
.goto Tanaris,27.06,56.58
.zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
.dungeon ST
step
.goto Tanaris,52.707,45.923
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尔冯·瑞文斯克|r
.accept 3446 >>接任务: |cRXP_WARN_深入神庙|r
.accept 3447 >>接任务: |cRXP_WARN_雕像群的秘密|r
.target Marvon Rivetseeker
.isQuestTurnedIn 3444
.dungeon ST
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.accept 3528 >>接任务: |cRXP_WARN_神灵哈卡|r
.target Yeh'kinya
.isQuestTurnedIn 4787 
.dungeon ST
step
#completewith next
#softcore
.goto Tanaris,27.89,59.02
.deathskip >>在|cRXP_FRIENDLY_Spirit治疗中心|r处死亡并重生，或跑回Gadgetzan
step
#label BungleInJungle
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4496 >>交任务: |cRXP_FRIENDLY_擒虫先擒王|r
.target Alchemist Pestlezugg
step
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bullkrek|r
.fly Feralas>>Fly to Feralas
.target Bullkrek Ragefist
.zoneskip Feralas
step
#era/som
.goto Feralas,76.18,43.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talo|r
.turnin 4120 >>交任务: |cRXP_FRIENDLY_堕落的力量|r
.target Talo Thornhoof
step
#completewith next
.goto Feralas,55.90,46.23,20 >>沿着Dire Maul的边界前往西区
step
.goto Feralas,55.41,45.54
.zone 1414 >>|cRXP_WARN_你必须探索Dire Maul区域，作为以后解锁任务的先决条件|r
.link https://youtu.be/ayEKuXSUU2A >>|cRXP_WARN_点击此处查看视频参考|r
step
.goto Feralas,50.76,49.83,60,0
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷甘·山酒|r
>>|cRXP_BUY_从他那里买一些|r|T134006:0|t[诱饵]|cRXP_Buy_|r
.collect 11141,1,3909,1 
.target Gregan Brewspewer
.isOnQuest 3909
step
.goto Feralas,44.60,10.19
>>给|cRXP_ENEMY_Miblon Snarlpothe|r一些诱饵，他在废墟中守卫|cRXP-LOOT_Evoroot|r
>>|cRXP_WARN_你也可以从大楼后面进去|r
.collect 11242,1,3909,1 
.unitscan Miblon Snarltooth
.isOnQuest 3909
step
#hardcoreserver
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷甘·山酒|r
>>|cRXP_WARN_暴雪已经调整了任务[Videre Elixir]，这样它就不会再在官方硬核服务器上杀死你了|r
.accept 4041 >>接任务: |cRXP_WARN_视灵药剂|r
.turnin 4041 >>交任务: |cRXP_FRIENDLY_视灵药剂|r
.complete 3909,1 
.target Gregan Brewspewer
.isOnQuest 3909
step
#softcoreserver
#hardcore
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷甘·山酒|r
>>|cRXP_WARN_你可以安全地完成这个任务，作为[维迪尔灵丹妙药]任务链的一部分|r
.accept 4041 >>接任务: |cRXP_WARN_视灵药剂|r
.turnin 4041 >>交任务: |cRXP_FRIENDLY_视灵药剂|r
.complete 3909,1 
.target Gregan Brewspewer
.isOnQuest 3909
step
#softcoreserver
#softcore
.goto Feralas,45.12,25.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷甘·山酒|r
.accept 4041 >>接任务: |cRXP_WARN_视灵药剂|r
.turnin 4041 >>交任务: |cRXP_FRIENDLY_视灵药剂|r
.complete 3909,1 
.target Gregan Brewspewer
.isOnQuest 3909
step
#completewith next
.hs >>Hearth前往陶拉霍营地
.use 6948
step
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Byula
step << !Mage
.goto The Barrens,44.45,59.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
.target Omusa Thunderhorn
.zoneskip Thunder Bluff
step << Mage
.cast 3566 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
step << Mage
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10199 >>训练你的职业技能
.target Thurston Xane
.xp <54,1
.xp >56,1
step << Mage
#optional
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10157 >>训练你的职业技能
.target Thurston Xane
.xp <56,1
step
#sticky
#label BluffRunner
.goto Thunder Bluff,41.54,57.87,70,0
.goto Thunder Bluff,52.76,62.07,30,0
.goto Thunder Bluff,55.63,50.08,70,0
.goto Thunder Bluff,41.54,57.87,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷霆崖信使斯塔德尔|r
>>|cRXP_WARN_他在露台上巡逻，所以你可能不得不四处寻找他|r
.accept 1000 >>接任务: |cRXP_WARN_新的边疆|r
.accept 5095 >>接任务: |cRXP_LOOT_战斗的号角：瘟疫之地！|r
.target Bluff Runner Windstrider
step
.goto Thunder Bluff,45.80,64.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pala|r
.accept 3762 >>接任务: |cRXP_WARN_协助大德鲁伊|r
.target Innkeeper Pala
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14290 >>训练你的职业技能
.target Urek Thunderhorn
.xp <54,1
.xp >56,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14305 >>训练你的职业技能
.target Urek Thunderhorn
.xp <56,1
step << Hunter
.goto Thunder Bluff,54.08,84.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫苏瓦·雷角|r
.train 24631 >>训练你的宠物法术
.target Hesuwa Thunderhorn
.xp <54,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11605 >>训练你的职业技能
.target Ker Ragetotem
.xp <54,1
.xp >56,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 20662 >>训练你的职业技能
.target Ker Ragetotem
.xp <56,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 10408 >>训练你的职业技能
.target Tigor Skychaser
.xp <54,1
.xp >56,1
step << Shaman
#optional
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 10432 >>训练你的职业技能
.target Tigor Skychaser
.xp <56,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10900 >>训练你的职业技能
.target Malakai Cross
.xp <54,1
.xp >56,1
step << Priest
#optional
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10929 >>训练你的职业技能
.target Malakai Cross
.xp <56,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9857 >>训练你的职业技能
.target Turak Runetotem
.xp <54,1
.xp >56,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 22829 >>训练你的职业技能
.target Tura
.xp <56,1
step
.goto Thunder Bluff,78.50,28.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
.turnin 1000 >>交任务: |cRXP_FRIENDLY_新的边疆|r
.accept 1123 >>接任务: |cRXP_WARN_拉比恩·萨图纳|r
.turnin 3762 >>交任务: |cRXP_FRIENDLY_协助大德鲁伊|r
.accept 3761 >>接任务: |cRXP_LOOT_安戈洛的泥土|r
.target Arch Druid Hamuul Runetotem
step
.goto Thunder Bluff,77.30,22.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格德|r
.turnin 3761 >>交任务: |cRXP_FRIENDLY_安戈洛的泥土|r
.target Ghede
step
.goto Thunder Bluff,78.40,28.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
.accept 3782 >>接任务: |cRXP_WARN_晨光麦研究|r
.target Arch Druid Hamuul Runetotem
step
.goto Thunder Bluff,70.20,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
.turnin 3518 >>交任务: |cRXP_FRIENDLY_玛加萨的石版|r
.target Magatha Grimtotem
.isOnQuest 3518
step
.goto Thunder Bluff,70.20,30.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
.accept 3562 >>接任务: |cRXP_WARN_玛加萨的报酬|r
.target Magatha Grimtotem
.isQuestTurnedIn 3518
step
.goto Thunder Bluff,71.00,33.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴珊娜·符文图腾|r
.turnin 3782 >>交任务: |cRXP_FRIENDLY_晨光麦研究|r
.target Bashana Runetotem
step
.goto Thunder Bluff,47.02,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Ratchet>>飞到棘轮
.target Tal
.zoneskip Thunder Bluff,1
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 50-60
#classic
<< Horde
#name 55-56 Felwood/冬泉
#next 56-58西部PL/东部PL
step
#sticky
#completewith EnterST
.subzone 1417 >>现在你应该找一个小组去沉没寺
.dungeon ST
step
.goto The Barrens,62.50,38.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv|r
.turnin 4502 >>交任务: |cRXP_FRIENDLY_火山的活动|r
.turnin 4147 >>交任务: |cRXP_FRIENDLY_玛尔冯的车间|r
.target Liv Rizzlefix
step
.goto The Barrens,62.50,38.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liv|r
.accept 4146 >>接任务: |cRXP_WARN_除草器的燃料|r
.target Liv Rizzlefix
.isQuestTurnedIn 4147
.dungeon ST
step
.goto The Barrens,65.80,43.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_水之先知伊斯伦|r
.turnin 5158 >>交任务: |cRXP_FRIENDLY_水之魂的帮助|r
.accept 5159 >>接任务: |cRXP_LOOT_净化过的水|r
.target Islen Waterseer
step
#optional
#completewith EnterST
>>|cRXP_WARN_如果可能的话，让小组中的某个人分享以下任务|r
.accept 1446 >>接任务: |cRXP_WARN_预言者迦玛兰|r
.dungeon ST
step
#completewith next
.goto The Barrens,63.74,38.66
.zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
.zoneskip Stranglethorn Vale
.dungeon ST
step
.goto Stranglethorn Vale,26.90,77.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格林戈|r
.fly Stonard>>飞往斯托纳德
.target Gringer
.zoneskip Swamp of Sorrows
.dungeon ST
step
.goto Swamp of Sorrows,47.93,54.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费泽鲁尔|r
.accept 1445 >>接任务: |cRXP_WARN_阿塔哈卡神庙|r
.isQuestTurnedIn 1444
.dungeon ST
step << Warrior
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
.accept 8425 >>接任务: |cRXP_WARN_巫毒羽毛|r
.target Fallen Hero of the Horde
.isQuestTurnedIn 8424
.dungeon ST
step
.goto 1415,56.33,76.28
.subzone 1477 >>Travel to Sunken Temple
.dungeon ST
step
#completewith next
>>杀死沉没神殿中的|cRXP_ENEMY_Atal'ai巨魔|r。掠夺他们的|cRXP_Loot_哈卡尔的恋物癖|r
>>|cRXP_WARN_沉没神庙内外的巨魔都可以放下这些|r
.complete 1445,1 
.isOnQuest 1445
.dungeon ST
step
#label EnterST
.goto 1415,56.33,76.28,40,0
.goto 1415,56.46,75.54,20,0
.goto 1415,56.83,75.86,20,0
.goto 1415,56.94,76.03,15,0
.goto 1415,57.06,75.58,20,0
.goto 1415,56.76,75.35,15,0
.goto 1415,56.809,75.151
.subzone 1477,2 >>Zone into Sunken Temple
.dungeon ST
step
#sticky
>>杀死沉没神殿中的|cRXP_ENEMY_Atal'ai巨魔|r。掠夺他们的|cRXP_Loot_哈卡尔的恋物癖|r
.complete 1445,1 
.isOnQuest 1445
.dungeon ST
step
#sticky
>>杀死|cRXP_ENEMY_Deep Lurkers |r、|cRXD_ENEMY_Murk Worms |r和|cRXP_ENEMY_Saturated Ooze|r。掠夺它们的|cRXP_Loot_Atal'ai Haze|r
>>|cRXP_ENEMY_在实例开始时向右走下楼梯，找到这些暴徒|r
.complete 4146,1 
.isOnQuest 4146
.dungeon ST
step << Druid
#completewith Altar
>>杀死|cRXP_ENEMY_Atal'alarion|r。为|cRXP_Loot_Putrid Vine|r掠夺他
>>|cRXP_ENEMY_阿塔警报|r|cRXP_WARN_i在下沉神殿的下层，通过点击平台上的所有|cRX_PICK_阿塔艾雕像|r进行召唤|r
.complete 9053,1 
.isOnQuest 9053
.dungeon ST
step 
#completewith next
>>单击Hakkar的|cRXP_PICK_Altar|r
>>|cRXP_WARN_哈卡尔的|cRXP_PICK_祭坛位于下沉神庙的下层|r
.turnin 3446 >>交任务: |cRXP_FRIENDLY_深入神庙|r
.isOnQuest 3446
.dungeon ST
step 
>>点击Hakkar的|cRXP_PICK_Idol |r
>>|cRXP_WARN_点击平台上的所有|cRXP_PICK_Atal'ai状态|r将激活Hakkar的|r|cRX_PICK_Idol|r
>>|cRXP_WARN_哈卡尔的|cRXP_PICK_Idol |r位于下沉神庙的下层|r
.turnin 3447 >>交任务: |cRXP_FRIENDLY_雕像群的秘密|r
.isOnQuest 3447
.dungeon ST
step 
#label Altar
>>单击Hakkar的|cRXP_PICK_Altar|r
>>|cRXP_WARN_哈卡尔的|cRXP_PICK_祭坛位于下沉神庙的下层|r
.turnin 3446 >>交任务: |cRXP_FRIENDLY_深入神庙|r
.isOnQuest 3446
.dungeon ST
step << Druid
>>杀死|cRXP_ENEMY_Atal'alarion|r。为|cRXP_Loot_Putrid Vine|r掠夺他
>>|cRXP_ENEMY_阿塔警报|r|cRXP_WARN_i在下沉神殿的下层，通过点击平台上的所有|cRX_PICK_阿塔艾雕像|r进行召唤|r
.complete 9053,1 
.isOnQuest 9053
.dungeon ST
step << Warrior/Warlock
>>杀死|cRXP_ENEMY_Gasher|r和|cRXX_ENEMY_Zul'Lor|r。掠夺他们的|cRXD_Loot_Amber巫毒羽毛|r
>>杀死|cRXP_ENEMY_Mijan|r和|cRXX_ENEMY_Hukku|r。掠夺他们的|cRXP_Loot_蓝色巫毒羽毛|r
>>杀死|cRXP_ENEMY_Zolo|r和|cRXX_ENEMY_Loro|r。掠夺他们的|cRXP_Loot_绿色巫毒羽毛|r
>>|cRXP_WARN_此任务在沉没神庙的上层完成|r
.complete 8425,1 << Warrior 
.complete 8425,2 << Warrior 
.complete 8425,3 << Warrior 
.complete 8422,1 << Warlock 
.complete 8422,2 << Warlock 
.complete 8422,3 << Warlock 
.isOnQuest 8425 << Warrior
.isOnQuest 8422 << Warlock
.dungeon ST
step
>>|cRXP_WARN_在Dragonflayer Skeleton旁边使用|r|T132834:0|t[Egg of Hakkar]|cRXP_WARN_while，然后完成事件|r
>>杀死|cRXP_ENEMY_Hakkar|r的小黄人，直到Hakkar| r的|cRXP_ENEMY_Avatar加入
>>杀死Hakkar的|cRXP_ENEMY_Avatar |r。为|T136148:0|t[|cRXX_Loot_Hakar|r]掠夺它
>>|cRXP_WARN_使用|r|T136148:0|t[|cRXP_LOOT_哈卡精华|r]|cRXP_WARN_填充|r|T132834:0|t[哈卡蛋]
.collect 10663,1,3528,1 
.disablecheckbox
.complete 3528,1 
.use 10465 
.use 10663 
.isOnQuest 3528
.dungeon ST
step
>>Kill |cRXP_ENEMY_接任务: |cRXP_WARN_预言者迦玛兰|r|r. Loot him for his |cRXP_LOOT_Head|r
>>|cRXP_WARN_You must kill the 6 |cRXP_ENEMY_Trolls|r on the upper platforms to gain access to|r |cRXP_ENEMY_接任务: |cRXP_WARN_预言者迦玛兰|r|r
.complete 1446,1 
.isOnQuest 1446
.dungeon ST
step << Hunter/Mage/Priest
>>杀死|cRXP_ENEMY_Morphaz|r。为Morphaz的|cRXP_Loot_Toth而掠夺它|r << Hunter
>>杀死|cRXP_ENEMY_Morphaz|r。为|cRXP_Loot_Arcane碎片而掠夺它|r << Mage
>>杀死|cRXP_ENEMY_Morphaz|r。为Morphaz的|cRXP_Loot_血液而掠夺它|r << Priest
.complete 8232,1 << Hunter 
.complete 8253,1 << Mage 
.complete 8257,1 << Priest 
.isOnQuest 8232 << Hunter
.isOnQuest 8253 << Mage
.isOnQuest 8257 << Priest
.dungeon ST
step
>>杀死Eranikus的|cRXP_ENEMY_Shade|r。为|T135229:0|t[|cRXX_Loot_Eranikus|r]掠夺他
>>|cRXP_WARN_使用|T135229:0|t[|cRXP_LOOT_Eranikus|r]开始任务|r
>>|cRXP_WARN_在与Eranikus|r的|cRXP_ENEMY_Shade交战之前，确保你已经杀死了上层的所有|cRXP_ENEMY_Dragonkin|r暴徒，否则他们会全部攻击你|r
.collect 10454,1,3373,1 
.accept 3373 >>接任务: |cRXP_WARN_伊兰尼库斯精华|r
.dungeon ST
step
>>单击|cRXP_PICK_Essence字体|r
.turnin 3373 >>交任务: |cRXP_FRIENDLY_伊兰尼库斯精华|r
.isOnQuest 3373
.dungeon ST
step
.zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
.dungeon ST
step
.goto Swamp of Sorrows,47.93,54.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_费泽鲁尔|r
.turnin 1445 >>交任务: |cRXP_FRIENDLY_阿塔哈卡神庙|r
.isQuestComplete 1445
.dungeon ST
step << Warrior
.goto Swamp of Sorrows,34.287,66.134
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_部落英雄的灵魂|r
>>|cRXP_WARN_I强烈建议您选择|r|T132788:0|t[|cFF0070FF钻石烧瓶|r]|cRXP_WARN_a作为奖励。虽然其他奖励也很好，但您永远不会更换|r|T132788:0|t[|cFF0070FF钻石烧瓶|r]
.turnin 8425 >>交任务: |cRXP_FRIENDLY_巫毒羽毛|r
.target Fallen Hero of the Horde
.isQuestComplete 842
.dungeon ST
step
.hs >>Hearth前往陶拉霍营地
.use 6948
.dungeon ST
step
#completewith next
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Un'Goro Crater>>飞到Un'Goro火山口
.target Omusa Thunderhorn
.zoneskip Un'Goro Crater
.isQuestComplete 4145
.dungeon ST
step
.goto Un'Goro Crater,45.53,8.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉瑞安|r
.turnin 4146 >>交任务: |cRXP_FRIENDLY_除草器的燃料|r
.target Larion
.isQuestComplete 4146
.dungeon ST
step << Druid
#completewith next
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Un'Goro Crater>>飞到Un'Goro火山口
.target Omusa Thunderhorn
.zoneskip Un'Goro Crater
.isQuestComplete 9053
.dungeon ST
step << Druid
.goto Un'Goro Crater,71.639,75.960
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_托尔瓦·寻路者|r
.turnin 9053 >>交任务: |cRXP_FRIENDLY_更好的材料|r
.target Torwa Pathfinder
.isQuestComplete 9053
.dungeon ST
step
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Tanaris >>前往: 塔纳利斯
.target Omusa Thunderhorn
.subzoneskip 378,1
.isQuestComplete 3528
.dungeon ST
step
#completewith next
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fly Tanaris >>前往: 塔纳利斯
.target Gryfe
.subzoneskip 541,1
.isQuestComplete 3528
.dungeon ST
step
.goto Tanaris,66.989,22.354
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_叶基亚|r
.turnin 3528 >>交任务: |cRXP_FRIENDLY_神灵哈卡|r
.target Yeh'kinya
.isQuestComplete 3528
.dungeon ST
step
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fly Azshara >>Fly to Azshara
.target Gryfe
.subzoneskip 541,1
.dungeon ST
step
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bullkrek|r
.fly Azshara >>Fly to Azshara
.target Bullkrek Ragefist
.zoneskip Tanaris,1
.dungeon ST
step
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Azshara >>Fly to Azshara
.target Omusa Thunderhorn
.zoneskip The Barrens,1
step
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.turnin 3562 >>交任务: |cRXP_FRIENDLY_玛加萨的报酬|r
.target Jediga
.isOnQuest 3562
step
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.turnin 3563 >>交任务: |cRXP_FRIENDLY_杰斯雷蒙的报酬|r
.target Jediga
.isOnQuest 3563
step
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.accept 3542 >>接任务: |cRXP_WARN_安德隆·甘特的石版|r
.target Jediga
step << Hunter/Priest
.goto Azshara,42.400,42.619
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥汀克|r
.turnin 8232 >>交任务: |cRXP_FRIENDLY_神庙中的绿龙|r << Hunter
.turnin 8257 >>交任务: |cRXP_FRIENDLY_摩弗拉斯之血|r << Priest
.target Ogtinc
.isQuestComplete 8232 << Hunter
.isQuestComplete 8257 << Priest
.dungeon ST
step << Mage
#completewith next
.goto Azshara,28.113,50.088
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳斯|r
>>|cRXP_WARN_这将把你传送到山顶|r
.turnin 3503 >>交任务: |cRXP_FRIENDLY_见到主人|r
.target Sanath Lim-yo
.isQuestComplete 8253 << Mage
.dungeon ST
step << Mage
.goto Azshara,29.248,40.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师克希雷姆|r, 他在塔上
.turnin 8253 >>交任务: |cRXP_FRIENDLY_毁灭摩弗拉斯|r << Mage
.target Archmage Xylem
.dungeon ST
.isQuestComplete 8253 << Mage
step << Mage
.goto Azshara,26.466,46.271
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼瑞尔|r
>>|cRXP_WARN_这会把你传送回去|r
.turnin 3421 >>交任务: |cRXP_FRIENDLY_回程|r
.timer 8,Return Trip RP
.target Nyrill
.dungeon ST
.isQuestTurnedIn 8253
step
.goto Azshara,22.00,49.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克隆姆|r
.fly Felwood>>Fly to Felwood
.target Kroum
.zoneskip Felwood
step
.goto Felwood,34.30,52.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Winna|r
.accept 4506 >>接任务: |cRXP_WARN_被腐蚀的猫|r
.target Winna Hazzard
step
#era/som
.goto Felwood,34.80,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特鲁尔·法贝恩|r
.accept 4521 >>接任务: |cRXP_WARN_冬泉谷的枭兽|r
.target Trull Failbane
step << Warlock
.goto Felwood,41.52,44.99
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊普斯|r
.turnin 8422 >>交任务: |cRXP_FRIENDLY_巨魔的羽毛|r
.target Impsy
.isQuestComplete 8422
.dungeon ST
step
#completewith next
>>从Felwood的任何暴徒手中掠夺|cRXP_Loot_腐蚀的灵魂碎片|r
>>慢慢向南走，直到你有6个
.collect 11515,6,5882,1 
.itemcount 11511,1 
step
#completewith next
.subzone 2479 >>前往翡翠保护区
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5159 >>交任务: |cRXP_FRIENDLY_净化过的水|r
.accept 5165 >>接任务: |cRXP_LOOT_熄灭火焰|r
.target Greta Mosshoof
step
.goto Felwood,46.60,83.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅贝丝·河风|r
>>|cRXP_WARN_转入您的6|r|T132884:0|t[|cRXP_LOOTCorrupted Soul Shard|r]|cRXP_WARN_您必须收到2|r|T132804:0|t[|cRXD_LOOTCenarion Plant Salves|r]
>>如果没有6个，请从南边的|cRXP_ENEMY_Furbolgs|r获取它们
.collect 11515,6,5887,1 
.accept 5887 >>接任务: |cRXP_LOOT_狩猎换药膏|r
.turnin 5887 >>交任务: |cRXP_FRIENDLY_狩猎换药膏|r
.target Maybess Riverbreeze
.zoneskip Felwood,1
.mob Deadwood Warrior
.mob Deadwood Pathfinder
.mob Deadwood Gardener
step
#completewith EnterShadowH
#icon |T135934:0|t
.goto Felwood,55.808,10.438,0
.goto Felwood,50.575,13.918,0
.goto Felwood,63.336,22.610,0
.goto Felwood,40.142,44.353,0
.goto Felwood,40.142,56.523,0
.goto Felwood,48.260,75.650,0
.goto Felwood,45.942,85.219,0
.goto Felwood,52.893,87.825,0
.goto Felwood,52.893,87.825,25,0
.goto Felwood,45.942,85.219,25,0
.goto Felwood,48.260,75.650,25,0
.goto Felwood,40.142,56.523,25,0
.goto Felwood,40.142,44.353,25,0
.goto Felwood,50.575,13.918,25,0
.goto Felwood,55.808,10.438,25,0
.goto Felwood,63.336,22.610,25,0
.aura 15366 >>|cRXP_WARN_查找一首|cRXP_PICK_Corrupted Songflower|r。单击它以清除它。单击|cRX_PICK_Cleansed Songflower |r以接收一小时长的|r|T135934:0|t[Songflower Serenade]|cRXP_WARN_buff|r
>>|cRXP_WARN_他们的位置已经在你的地图上标出了。如果找不到，请跳过此步骤|r
.itemcount 11516,2 
step
.goto Felwood,36.02,66.99,70,0
.goto Felwood,32.40,66.60,20,0
+使用|T132599:0|t[Winna‘s Kitten Carrier]在Constellas废墟的损坏月井
>>|cRXP_WARN_完成后手动跳过此步骤|r
.use 12565
step
#label EnterShadowH
.goto Felwood,35.367,58.376
.subzone 1770 >>前往Jaedenar内的Shadow Hold
step
#completewith next
>>单击地面上的四个|cRXP_PICK_Brazier|r
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
step
>>杀死|cRXP_ENEMY_Jaedenar Enforcers|r，|cRXD_ENEMY_Jaedenar Darkwavers|r、|cRXP_ENEMY_ JaedenarWarlocks|r和|cRXT_ENEMY_贾德纳尔退伍军人|r。掠夺他们一个|T134235:0|t[|cRXP_Loot_血红钥匙|r]
>>|cRXP_WARN_使用|r|T134235:0|t[|cRXP_LOOT_血红键|r]|cRXP-WARN_to开始任务|r
>>|cRXP_WARN_这将开始一个护送任务。即使你仍然需要熄灭钎焊剂，也要开始这场护航|r
.collect 13140,1,5202 
.accept 5202 >>接任务: |cRXP_LOOT_奇怪的红钥匙|r
.use 13140 
.mob Jaedenar Enforcer
.mob Jaedenar Darkweaver
.mob Jaedenar Warlock
.mob Jaedenar Legionnaire
step
#label eStart
.goto Felwood,36.207,55.465
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被俘虏的亚科纳琳|r
.turnin 5202 >>交任务: |cRXP_FRIENDLY_奇怪的红钥匙|r
.accept 5203 >>接任务: |cRXP_LOOT_逃出加德纳尔|r
.target Captured Arko'narin
step
#completewith next
>>单击地面上的四个|cRXP_PICK_Brazier|r
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
step
.goto Felwood,35.44,59.01
>>护送|cRXP_FRIENDLY_Arko'narin|r通过阴影保持。在|cRXP_FRIENDLY_Arko'narin|r装备好她的盔甲后，杀死产生的3|cRXP_ENEMY_Felguard|r
>>|cRXP_FRIENDLY_Arko'narin|r|cRXP_WARN_has 6000 HP；让她的坦克暴徒。当你向入口前进时，熄灭阴影舱内的钎焊器|r
>>一旦|cRXP_FRIENDLY_Arko'narin|r离开洞穴，树之光之灵|r就会产生。杀了他
>>|cRXP_WARN_小心添加。他有一个500点伤害的震击法，而且打击非常猛烈。如果你有攻击性的冷却，在这里使用它们|r
.complete 5203,1 
step
>>单击地面上的四个|cRXP_PICK_Brazier|r
.complete 5165,1 
.goto Felwood,36.267,56.297
.complete 5165,4 
.goto Felwood,36.484,55.183
.complete 5165,3 
.goto Felwood,36.732,53.262
.complete 5165,2 
.goto Felwood,37.677,52.685
step
#completewith next
.goto Felwood,37.37,49.83,40,0
.goto Felwood,35.45,50.10,40,0
.goto Felwood,34.57,52.12
.subzone 1997 >>前往Bloodvenom Post
step
.goto Felwood,34.20,52.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t接近|cRXP_FRIENDLY_Winna|r。与|cRXP_FRIENDLY_Corrupted Saber|r交谈，然后与|cRXP_FRIENDLY_Winna |r交谈
.turnin 4506 >>交任务: |cRXP_FRIENDLY_被腐蚀的猫|r
.target Winna Hazzard
.skipgossip
step
#completewith next
.goto Felwood,64.70,8.10,70 >>前往Timbermaw Hold入口
step
.goto Felwood,64.70,8.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳菲恩|r
.accept 8461 >>接任务: |cRXP_LOOT_北方的死木熊怪|r
.target Nafien
step
#completewith next
.goto Felwood,62.68,8.06,0
>>杀死|cRXP_ENEMY_枯木巢穴守望者|r，|cRXX_ENEMY_Deadwood复仇者|r安|cRXD_ENEMY_Deadwood萨满|r
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_Deadwood复仇者|r|cRXP_WARN_first。如果你多次拉动，如果附近有毛皮死亡，它会激怒你|r
.complete 8461,1 
.complete 8461,2 
.complete 8461,3 
.mob Deadwood Den Watcher
.mob Deadwood Shaman
.mob Deadwood Avenger
step
.goto Felwood,60.20,5.90
>>单击|cRXP_PICK_Deadwood Cauldron|r
.turnin 5084 >>交任务: |cRXP_FRIENDLY_堕落熊怪|r
.accept 5085 >>接任务: |cRXP_LOOT_神秘的粘液|r
step
.goto Felwood,61.67,7.23,50,0
.goto Felwood,62.68,8.39,50,0
.goto Felwood,62.55,10.49,50,0
.goto Felwood,63.19,13.01,50,0
.goto Felwood,61.67,7.23,50,0
.goto Felwood,62.68,8.39,50,0
.goto Felwood,62.55,10.49,50,0
.goto Felwood,63.19,13.01
>>杀死|cRXP_ENEMY_枯木巢穴守望者|r，|cRXX_ENEMY_Deadwood复仇者|r安|cRXD_ENEMY_Deadwood萨满|r
>>|cRXP_WARN_杀死|r|cRXP_ENEMY_Deadwood复仇者|r|cRXP_WARN_first。如果你多次拉动，如果附近有毛皮死亡，它会激怒你|r
.complete 8461,1 
.complete 8461,2 
.complete 8461,3 
.mob Deadwood Den Watcher
.mob Deadwood Shaman
.mob Deadwood Avenger
step
.goto Felwood,64.70,8.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳菲恩|r
.turnin 8461 >>交任务: |cRXP_FRIENDLY_北方的死木熊怪|r
.accept 8465 >>接任务: |cRXP_LOOT_与萨尔法交谈|r
.target Nafien
step
#completewith next
.goto Felwood,65.16,7.88,40,0
.goto Felwood,64.67,3.14,40,0
.goto Felwood,66.40,2.95,40,0
.goto Felwood,68.24,5.60,40,0
.goto Felwood,68.73,6.38
.zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
step
.goto Felwood,68.30,6.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔法|r
.turnin 8465 >>交任务: |cRXP_FRIENDLY_与萨尔法交谈|r
.accept 8464 >>接任务: |cRXP_WARN_冬泉熊怪的活动|r
.target Salfa
step
#era/som
.goto Winterspring,31.30,45.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 980 >>交任务: |cRXP_FRIENDLY_新的泉水|r
.accept 4842 >>接任务: |cRXP_LOOT_奇怪的源头|r
.turnin 5085 >>交任务: |cRXP_FRIENDLY_神秘的粘液|r
.accept 5086 >>接任务: |cRXP_LOOT_剧毒之水|r
.target Donova Snowden
step
#era/som
.isQuestComplete 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.turnin 3909 >>交任务: |cRXP_FRIENDLY_视灵药剂|r
.target Donova Snowden
step
#era/som
#softcore
.isQuestTurnedIn 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
.accept 3912 >>接任务: |cRXP_WARN_墓地相见|r
.target Donova Snowden
step
#era/som
#hardcoreserver
.isQuestTurnedIn 3909
.goto Winterspring,31.269,45.164
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多诺瓦·雪山|r
>>|cRXP_WARN_暴雪已经调整了[Videre Elixir]的任务链，这样它就不会再在官方硬核服务器上杀死你了|r
.accept 3912 >>接任务: |cRXP_WARN_墓地相见|r
.target Donova Snowden
step
#phase 3-6
.goto Winterspring,31.30,45.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 980 >>交任务: |cRXP_FRIENDLY_新的泉水|r
.accept 4842 >>接任务: |cRXP_LOOT_奇怪的源头|r
.turnin 3909 >>交任务: |cRXP_FRIENDLY_视灵药剂|r 
.turnin 5085 >>交任务: |cRXP_FRIENDLY_神秘的粘液|r
.accept 5086 >>接任务: |cRXP_LOOT_剧毒之水|r
.target Donova Snowden
step
#era/som
#completewith WSYetis
>>在前往Everlook的途中杀死|cRXP_ENEMY_Ragged Owlbeats|r
.complete 4521,2 
.mob Ragged Owlbeast
step
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.home >>将您的炉石设置为Everlook
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
#label WSYetis
#era/som
.goto Winterspring,60.88,37.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.accept 3783 >>接任务: |cRXP_LOOT_雪怪计划！|r
.target Umi Rumplesnicker
step
#label Ursius
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.accept 5054 >>接任务: |cRXP_LOOT_碎齿熊尤西乌斯|r
.target Storm Shadowhoof
step
#era/som
.loop 25,Winterspring,57.8,34.6,56.6,32.4,56.0,28.6,58.8,27.4,60.6,29.8,59.6,31.4,60.6,33.6,58.6,33.2,57.8,34.6
>>杀死Everlook以西的|cRXP_ENEMY_Ragged Owlbeats|r
.complete 4521,2 
.mob Ragged Owlbeast
step
#era/som
#completewith ROwlbeasts
>>杀死所有类型的|cRXP_ENEMY_Ice Thistle Yetis|r。掠夺它们的|cRXP_Loot_Fur|r
>>|cRXP_WARN_不要专注于此；你可以稍后完成|r
.complete 3783,1 
.mob Rogue Ice Thistle
.mob Ice Thistle Yeti
.mob Ice Thistle Patriarch
.mob Ice Thistle Matriarch
step
#era/som
#completewith next
.goto Winterspring,60.67,29.81,0
.goto Winterspring,58.64,34.51,0
>>杀死|cRXP_ENEMY_Raging Owlbeats|r
.complete 4521,1 
.mob Raging Owlbeast
step
.goto Winterspring,56.62,32.34,70,0
.goto Winterspring,60.50,33.02,70,0
.goto Winterspring,62.55,30.83,70,0
.goto Winterspring,62.43,28.08,70,0
.goto Winterspring,63.40,27.04
>>杀死|cRXP_ENEMY_Ursius|r。如果需要，你可以把他放回Everlook。记得造成51%+的伤害
>>|cRXP_WARN_小心，因为这个任务可能很难|r
.complete 5054,1 
.unitscan Ursius
step
#era/som
#label ROwlbeasts
.goto Winterspring,60.58,29.76,50,0
.goto Winterspring,58.82,27.41,70,0
.goto Winterspring,56.06,27.83,70,0
.goto Winterspring,55.97,30.25,70,0
.goto Winterspring,55.10,32.16,70,0
.goto Winterspring,60.58,29.76,50,0
.goto Winterspring,58.82,27.41
>>杀死|cRXP_ENEMY_Raging Owlbeats|r
.complete 4521,1 
.mob Raging Owlbeast
step
#era/som
.loop 25,Winterspring,66.5,41.7,64.9,40.2,65.9,43.6,66.2,45.8,67.6,45.6,67.6,43.8,67.2,43.0,67.6,41.9,68.4,41.5,69.00,41.3,69.5,40.0,69.8,41.8,70.1,42.0,70.3,40.8,71.3,40.8,71.8,39.8,70.5,38.3,71.8,39.8,71.3,40.8,70.3,40.8,69.5,40.0,69.00,41.3,68.4,41.5,66.5,41.7
>>杀死所有类型的|cRXP_ENEMY_Ice Thistle Yetis|r。掠夺它们的|cRXP_Loot_Fur|r
.complete 3783,1 
.mob Rogue Ice Thistle
.mob Ice Thistle Yeti
.mob Ice Thistle Patriarch
step << Shaman
#completewith next
.hs >>Hearth或Astral召回Everlook
step
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.turnin 5054 >>交任务: |cRXP_FRIENDLY_碎齿熊尤西乌斯|r
.accept 5055 >>接任务: |cRXP_LOOT_冰风奇美拉布鲁米兰|r
.target Storm Shadowhoof
step << Hunter
.goto Winterspring,61.91,38.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医玛艾里|r
.accept 969 >>接任务: |cRXP_LOOT_祝你好运|r
.target Witch Doctor Mau'ari
step
#era/som
.goto Winterspring,60.88,37.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.turnin 3783 >>交任务: |cRXP_FRIENDLY_雪怪计划！|r
.target Umi Rumplesnicker
step
#completewith next
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤格雷克|r
.fly Felwood>>Fly to Felwood
.target Yugrek
.zoneskip Felwood
step
#era/som
.goto Felwood,34.70,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特鲁尔·法贝恩|r
.turnin 4521 >>交任务: |cRXP_FRIENDLY_冬泉谷的枭兽|r
.accept 4741 >>接任务: |cRXP_WARN_冬泉谷的枭兽|r
.target Trull Failbane
step
#completewith next
#era/som
.goto Felwood,34.44,53.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉卡尔|r
.fly Tanaris>>前往: 塔纳利斯
.target Brakkar
.isOnQuest 3912
step
#era/som
#softcore
#softcoreserver
#completewith next
.goto Tanaris,53.99,28.63
.cast 14050 >>|cRXP_WARN_使用|r|T134813:0|t[Videre Elixir]|cRXP_WARN_at Tanaris墓地|r
step
#era/som
#hardcoreserver
.isOnQuest 3912
#completewith next
.goto Tanaris,53.99,28.63
.cast 417627 >>|cRXP_WARN_使用|r|T134813:0|t[Videre Elixir]|cRXP_WARN_at Tanaris墓地|r
>>|cRXP_WARN_暴雪已经调整了这个任务，所以消耗这个任务不会杀死你在官方硬核服务器上的角色。然而，它会将你的健康水平降低到3%。离开墓地前，确保包扎或吃东西|r
.use 11243 
step
#era/som
#hardcoreserver
.isOnQuest 3912
.goto Tanaris,53.93,23.33
>>|cRXP_WARN_离开墓地前，确保包扎或吃东西|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加里杨|r
>>|cRXP_WARN_你必须拥有|T132331:0|t[濒死体验]的debuff才能通过饮用|r|T134813:0|t[Videre Elixir]
>>|cRXP_WARN_暴雪已经调整了这个任务，所以消耗这个任务不会杀死你在官方硬核服务器上的角色|r
.use 11243 
.turnin 3912 >>交任务: |cRXP_FRIENDLY_墓地相见|r
.accept 3913 >>接任务: |cRXP_WARN_寻找墓碑|r
.target Gaeriyan
step
#era/som
#hardcoreserver
.isQuestTurnedIn 3912
.goto Tanaris,53.93,23.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加里杨|r
>>|cRXP_WARN_你必须拥有|T132331:0|t[濒死体验]的debuff才能通过饮用|r|T134813:0|t[Videre Elixir]
>>|cRXP_WARN_暴雪已经调整了这个任务，所以消耗这个任务不会杀死你在官方硬核服务器上的角色|r
.use 11243 
.accept 3913 >>接任务: |cRXP_WARN_寻找墓碑|r
.target Gaeriyan
step
#era/som
#softcore
#softcoreserver
.isOnQuest 3912
.goto Tanaris,53.93,23.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加里杨|r
>>|cRXP_WARN_你必须死了才能与|r|cRXP_FRIENDLY_Gaeriyan通话|r
.turnin 3912 >>交任务: |cRXP_FRIENDLY_墓地相见|r
.accept 3913 >>接任务: |cRXP_WARN_寻找墓碑|r
.target Gaeriyan
step
#era/som
#softcore
.isQuestTurnedIn 3912
.goto Tanaris,53.815,29.061
>>单击|cRXP_PICK_显眼的墓碑|r
.turnin 3913 >>交任务: |cRXP_FRIENDLY_寻找墓碑|r
.accept 3914 >>接任务: |cRXP_WARN_林克的剑|r
step
#era/som
#hardcoreserver
.isQuestTurnedIn 3912
.goto Tanaris,53.815,29.061
>>单击|cRXP_PICK_显眼的墓碑|r
.turnin 3913 >>交任务: |cRXP_FRIENDLY_寻找墓碑|r
.accept 3914 >>接任务: |cRXP_WARN_林克的剑|r
step
#optional
#era/som
.destroy 11243 >>摧毁: |cRXP_ENEMY_视灵药剂|r
.isQuestTurnedIn 3913
step
#era/som
#hardcoreserver
.isQuestTurnedIn 3912
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bullkrek|r
.fly Un'Goro Crater >>飞到Un'Goro火山口
.target Bullkrek Ragefist
.zoneskip Tanaris,1
step
#era/som
#hardcoreserver
.isQuestTurnedIn 3912
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3914 >>交任务: |cRXP_FRIENDLY_林克的剑|r
.accept 3941 >>接任务: |cRXP_WARN_侏儒的援助|r
.target Linken
step
#era/som
#hardcoreserver
.isQuestTurnedIn 3912
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.turnin 3941 >>交任务: |cRXP_FRIENDLY_侏儒的援助|r
.timer 25,A Gnome's Assistance RP
.accept 3942 >>接任务: |cRXP_WARN_林克的记忆|r
.target J.D. Collie
step
#era/som
#softcore
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bullkrek|r
.fly Un'Goro Crater >>飞到Un'Goro火山口
.target Bullkrek Ragefist
.zoneskip Tanaris,1
step
#era/som
#softcore
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3914 >>交任务: |cRXP_FRIENDLY_林克的剑|r
.accept 3941 >>接任务: |cRXP_WARN_侏儒的援助|r
.target Linken
step
#era/som
#softcore
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.turnin 3941 >>交任务: |cRXP_FRIENDLY_侏儒的援助|r
.timer 25,A Gnome's Assistance RP
.accept 3942 >>接任务: |cRXP_WARN_林克的记忆|r
.target J.D. Collie
step << Druid
#era/som
#completewith DruidTraining9
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#era/som
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9857 >>训练你的职业技能
.target Loganaar
.xp <54,1
.xp >56,1
step << Druid
#era/som
#label DruidTraining9
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 22829 >>训练你的职业技能
.target Loganaar
.xp <56,1
step
#era/som
#completewith next
.hs >>Hearth to Winterspring
.use 6948
.zoneskip Winterspring
step
#era/som
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
.goto Winterspring,54.7,46.0,60,0
.goto Winterspring,56.6,52.4,60,0
.goto Winterspring,60.5,55.6,60,0
.goto Winterspring,62.4,58.9,60,0
.goto Winterspring,58.8,63.5
>>杀死|cRXP_ENEMY_Brumeran|r
>>|cRXP_WARN_这是一项艰巨的任务。如果需要，请跳过此任务|r
.complete 5055,1 
.unitscan Brumeran
step
#era/som
#completewith next
.goto Winterspring,65.01,59.77,0
>>杀死|cRXP_ENEMY_Moonthented猫头鹰|r
>>|cRXP_WARN_他们的月火相当猛烈，他们的复兴很强大|r
.complete 4741,1 
.mob Moontouched Owlbeast
step
.goto Winterspring,60.09,73.34
>>前往黑暗耳语峡谷的边界
.complete 4842,1 
step << Hunter
.goto Winterspring,60.43,65.31
>>在峡谷外围掠夺|cRXP_FRIENDLY_Frostmaul碎片|r。用你的宠物引诱|cRXP_ENEMY_Frostmaul Giants|r远离水晶。抢劫后逃跑
>>|cRXP_WARN_这是一个很难独自完成的任务，如果必须的话，请跳过这个任务|r
.complete 969,1 
.link https://www.twitch.tv/videos/850027450?t=00h26m14s >>点击此处查看视频参考
step
#era/som
#loop
.goto Winterspring,63.49,59.25,70,0
.goto Winterspring,65.01,59.77,70,0
.goto Winterspring,65.30,61.06,70,0
.goto Winterspring,64.96,62.68,70,0
>>杀死|cRXP_ENEMY_Moonthented猫头鹰|r
>>|cRXP_WARN_他们的月火相当猛烈，他们的复兴很强大|r
.complete 4741,1 
.mob Moontouched Owlbeast
step
#era/som
#softcore
#completewith WaterandFood11
.deathskip >>在|cRXP_FRIENDLY_Spirit Healer处死亡并重生|r
step
#som
#phase 3-6
#softcore
#completewith WaterandFood11
.hs >>Hearth to Everlook公司公司
.use 6948
step
#hardcore
#completewith WaterandFood11
.hs >>Hearth to Everlook公司公司
.use 6948
step
#label WaterandFood11
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step << Hunter
.goto Winterspring,61.91,38.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫医玛艾里|r
.turnin 969 >>交任务: |cRXP_FRIENDLY_祝你好运|r
.target Witch Doctor Mau'ari
.isQuestComplete 969
step
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.turnin 5055 >>交任务: |cRXP_FRIENDLY_冰风奇美拉布鲁米兰|r
.target Storm Shadowhoof
.isQuestComplete 5055
step
.goto Winterspring,61.34,38.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷戈|r
.accept 6029 >>接任务: |cRXP_LOOT_永望镇报告|r
.accept 6030 >>接任务: |cRXP_LOOT_尼古拉斯·瑟伦霍夫公爵|r
.accept 5601 >>接任务: |cRXP_LOOT_小妹妹帕米拉|r
.target Gregor Greystone
step
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤格雷克|r
.fly Felwood>>Fly to Felwood
.target Yugrek
.zoneskip Felwood
step
#era/som
.goto Felwood,34.80,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特鲁尔·法贝恩|r
.turnin 4741 >>交任务: |cRXP_FRIENDLY_冬泉谷的枭兽|r
.accept 4721 >>接任务: |cRXP_WARN_冬泉谷的枭兽|r
.target Trull Failbane
step
#completewith next
#icon |T135934:0|t
.goto Felwood,55.808,10.438,0
.goto Felwood,50.575,13.918,0
.goto Felwood,63.336,22.610,0
.goto Felwood,40.142,44.353,0
.goto Felwood,40.142,56.523,0
.goto Felwood,48.260,75.650,0
.goto Felwood,45.942,85.219,0
.goto Felwood,52.893,87.825,0
.aura 15366 >>|cRXP_WARN_查找一首|cRXP_PICK_Corrupted Songflower|r。单击它以清除它。单击|cRX_PICK_Cleansed Songflower |r以接收一小时长的|r|T135934:0|t[Songflower Serenade]|cRXP_WARN_buff|r
>>|cRXP_WARN_他们的位置已经在你的地图上标出了。不要费很大劲去找|r
.itemcount 11516,2 
step
.goto Felwood,51.20,82.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5165 >>交任务: |cRXP_FRIENDLY_熄灭火焰|r
.accept 5242 >>接任务: |cRXP_LOOT_最终一击|r
.target Greta Mosshoof
step
.goto Felwood,51.30,82.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰希尔·月弓|r
.turnin 5203 >>交任务: |cRXP_FRIENDLY_逃出加德纳尔|r
.accept 5204 >>接任务: |cRXP_LOOT_光明的惩戒|r
.target Jessir Moonbow
step
#era/som
#softcore
.isQuestTurnedIn 3941
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 3942 >>交任务: |cRXP_FRIENDLY_林克的记忆|r
.accept 4084 >>接任务: |cRXP_WARN_银爪铁心|r
.target Eridan Bluewind
step
#era/som
#hardcoreserver
.isQuestTurnedIn 3941
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 3942 >>交任务: |cRXP_FRIENDLY_林克的记忆|r
.accept 4084 >>接任务: |cRXP_WARN_银爪铁心|r
.target Eridan Bluewind
step
#era/som
#softcore
.isOnQuest 4084
#completewith next
>>在费尔伍德杀死|cRXP_ENEMY_Bears|r和|cRXX_ENEMY_Wolves|r。掠夺他们的|cRXP_Loot_银爪|r
.complete 4084,1 
.mob Angerclaw Bear
.mob Angerclaw Mauler
.mob Felpaw Wolf
.mob Felpaw Scavenger
step
#era/som
#hardcoreserver
.isOnQuest 4084
#completewith next
>>在费尔伍德杀死|cRXP_ENEMY_Bears|r和|cRXX_ENEMY_Wolves|r。掠夺他们的|cRXP_Loot_银爪|r
.complete 4084,1 
.mob Angerclaw Bear
.mob Angerclaw Mauler
.mob Felpaw Wolf
.mob Felpaw Scavenger
step
#completewith ShadowLordFelidan
.goto Felwood,35.367,58.376
.subzone 1770 >>前往Jaedenar内的Shadow Hold
step
.goto Felwood,35.39,58.74,30,0
.goto Felwood,38.30,50.50
>>深入阴影持有，然后杀死|cRXP_ENEMY_Rakaiah|r
.complete 5204,1 
.unitscan Rakaiah
step
.goto Felwood,38.50,50.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特雷·莱弗治的残骸|r
>>|cRXP_WARN_遗迹周围的暴徒可以通过让你保持战斗状态来窃听，尽管他们不会攻击你|r
.turnin 5204 >>交任务: |cRXP_FRIENDLY_光明的惩戒|r
.accept 5385 >>接任务: |cRXP_LOOT_特雷·莱弗治的残骸|r
.target Remains of Trey Lightforge
.isQuestTurnedIn 5203
step
#label ShadowLordFelidan
.goto Felwood,38.90,46.80
>>杀死|cRXP_ENEMY_Shadow Lord Fel'dan|r、|cRXD_ENEMY_Moora|r和|cRXP_ENEMY_Salia|r。掠夺|cRXX_ENEMY_影子Lord Fel'dan|r以换取他的|cRXP_OOT_Head|r
>>|cRXP_WARN_躲在房间外面，利用视线避开费尔丹的阴影。当他开始选角时，躲在视线之外。一旦他的施法结束/失败，就进入视线，这样他就可以重新开始施法/不会离LOS点太近|r
.complete 5242,1 
.complete 5242,2 
.complete 5242,3 
.mob Moora
.mob Salia
.unitscan Shadow Lord Felidan
step
#completewith next
.goto Felwood,38.72,46.77
.goto Felwood,49.57,30.76,30 >>执行注销跳跃以传送出阴影保持
.link https://youtu.be/SWBtPqm5M0Q?t=128 >>|cRXP_WARN_单击此处查看示例|r
step
#era/som
.goto Felwood,50.6,22.4,70,0
.goto Felwood,49.6,26.6,70,0
.goto Felwood,48.0,24.0,70,0
.goto Felwood,49.6,26.6
>>杀死|cRXP_ENEMY_Toxic Horrors|r。掠夺他们的|cRXD_Loot_Toxic Horror Droplets|r
.complete 5086,1 
.mob Toxic Horror
step
#label IrontreeHeart
#era/som
#softcore
.goto Felwood,48.4,29.2,70,0
.goto Felwood,46.8,23.9,70,0
.goto Felwood,50.3,18.6,70,0
.goto Felwood,51.8,25.5
>>杀死|cRXP_ENEMY_Ironstree Stomper|r或|cRXX_ENEMY_Irontree Wanderers |r。掠夺他们的|cRXD_Loot_Iontree Heart|r
.complete 4084,2 
.mob Irontree Stomper
.mob Irontree Wanderer
step
#label IrontreeHeart
#era/som
#hardcoreserver
.isOnQuest 4084
>>杀死|cRXP_ENEMY_Ironstree Stomper|r或|cRXX_ENEMY_Irontree Wanderers |r。掠夺他们的|cRXD_Loot_Iontree Heart|r
.complete 4084,2 
.goto Felwood,48.4,29.2,70,0
.goto Felwood,46.8,23.9,70,0
.goto Felwood,50.3,18.6,70,0
.goto Felwood,51.8,25.5
.mob Irontree Stomper
.mob Irontree Wanderer
step
#era/som
#softcore
.isOnQuest 4084
>>在费尔伍德杀死|cRXP_ENEMY_Bears|r和|cRXX_ENEMY_Wolves|r。掠夺他们的|cRXP_Loot_银爪|r
.complete 4084,1 
.goto Felwood,55.6,23.4,70,0
.goto Felwood,56.3,20.6,70,0
.goto Felwood,50.5,12.6,70,0
.goto Felwood,62.4,16.1,70,0
.goto Felwood,53.5,28.1,70,0
.goto Felwood,46.8,19.6,70,0
.goto Felwood,39.8,30.8,70,0
.goto Felwood,55.6,23.4
.mob Angerclaw Bear
.mob Angerclaw Mauler
.mob Felpaw Wolf
.mob Felpaw Scavenger
step
#era/som
#hardcoreserver
.isOnQuest 4084
>>在费尔伍德杀死|cRXP_ENEMY_Bears|r和|cRXX_ENEMY_Wolves|r。掠夺他们的|cRXP_Loot_银爪|r
.complete 4084,1 
.goto Felwood,55.6,23.4,70,0
.goto Felwood,56.3,20.6,70,0
.goto Felwood,50.5,12.6,70,0
.goto Felwood,62.4,16.1,70,0
.goto Felwood,53.5,28.1,70,0
.goto Felwood,46.8,19.6,70,0
.goto Felwood,39.8,30.8,70,0
.goto Felwood,55.6,23.4
.mob Angerclaw Bear
.mob Angerclaw Mauler
.mob Felpaw Wolf
.mob Felpaw Scavenger
step
#completewith next
.goto Felwood,65.48,3.47,20 >>穿越Timbermaw Hold to |cRXP_FRIENDLY_Kernda|r
step
.goto Felwood,65.48,3.47,20,0
.goto Felwood,65.35,1.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克尔达|r
>>|cRXP_FRIENDLY_Kernda|r|cRXP_WARN_trols the lower Timbermaw Hold path|r
.use 20741 >>|cRXP_WARN_如果你发现了一个|T136232:0|t[|cRXP_LOOT_Dedwood仪式图腾|r]，用它开始任务|r
>>如果您对Timbermaw Hold不持中立态度，请跳过此步骤
.accept 8470 >>接任务: |cRXP_LOOT_死木仪祭图腾|r
.turnin 8470 >>交任务: |cRXP_FRIENDLY_死木仪祭图腾|r
.reputation 576,neutral,<0,1 
.itemcount 20741,1 
.target Kernda
step
.goto Felwood,65.692,2.810
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅罗什|r
>>如果您对Timbermaw Hold不友好，请跳过此步骤
.accept 6031 >>接任务: |cRXP_WARN_符文布|r
.turnin 6031 >>交任务: |cRXP_FRIENDLY_符文布|r
.reputation 576,friendly,<0,1 
.itemcount 14047,30 
.target Meilosh
step
#completewith next
.goto Felwood,65.16,7.88,40,0
.goto Felwood,64.67,3.14,40,0
.goto Felwood,66.40,2.95,40,0
.goto Felwood,68.24,5.60,40,0
.goto Felwood,68.73,6.38
.zone Winterspring >>前往: |cRXP_PICK_冬泉谷|r
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 4842 >>交任务: |cRXP_FRIENDLY_奇怪的源头|r
.turnin 5086 >>交任务: |cRXP_FRIENDLY_剧毒之水|r
.accept 5087 >>接任务: |cRXP_LOOT_冬泉信使|r
.target Donova Snowden
step
.goto Winterspring,67.96,37.54,40,0
.goto Winterspring,66.16,33.66,40,0
.goto Winterspring,64.37,32.06,40,0
.goto Winterspring,62.41,25.53,40,0
.goto Winterspring,61.97,23.00,40,0
.goto Winterspring,57.30,28.05,40,0
.goto Winterspring,54.07,30.98,40,0
.goto Winterspring,53.49,34.13,40,0
.goto Winterspring,47.81,39.23,40,0
.goto Winterspring,39.36,41.28,40,0
.goto Winterspring,30.12,42.57,40,0
.goto Winterspring,28.01,34.60
>>杀死|cRXP_ENEMY_Winterfall Runners |r
>>|cRXP_WARN_他们在Timbermaw Hold隧道和Everlook东北部临冬村之间的道路上巡逻。或者，穿过洞穴跑回费尔伍德，杀死费尔帕夫村大锅旁的奔跑者|r
.complete 5087,1 
.unitscan Winterfall Runner
.zoneskip Felwood
step
.goto Felwood,60.20,5.90
>>杀死|cRXP_ENEMY_Winterfall Runners |r
>>|cRXP_WARN_The Runner位于Felpaw村西北部的大锅旁|r
.complete 5087,1 
.unitscan Winterfall Runner
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 5087 >>交任务: |cRXP_FRIENDLY_冬泉信使|r
.accept 5121 >>接任务: |cRXP_LOOT_冬泉酋长|r
.target Donova Snowden
step << !Mage
#softcore
#completewith next
.deathskip >>在Everlook的|cRXP_FRIENDLY_Spirit Healer|r处死亡并重生
step << !Mage
#softcore
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤格雷克|r
.fly Felwood>>Fly to Felwood
.target Yugrek
.zoneskip Felwood
step << !Mage
#hardcore
#completewith next
.goto Moonglade,32.10,66.60,100 >>返回Furbolg隧道，从北出口进入Moonglade
step << !Mage
#hardcore
.goto Moonglade,32.10,66.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法斯托恩|r
.fly Felwood >>Fly to Felwood
.target Faustron
step << Mage
#completewith next
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step << Mage
.goto Orgrimmar,45.13,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Splintertree >>飞到Splinterree Post
.target Doras
.zoneskip Azshara
step << Mage
#completewith next
.goto Ashenvale,55.78,28.12
.zone 361 >>前往: |cRXP_PICK_费伍德森林|r
step
.goto Felwood,51.23,82.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格雷塔·苔蹄|r
.turnin 5242 >>交任务: |cRXP_FRIENDLY_最终一击|r
.target Greta Mosshoof
.isQuestComplete 5242
step
.goto Felwood,51.35,82.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰希尔·月弓|r
.turnin 5385 >>交任务: |cRXP_FRIENDLY_特雷·莱弗治的残骸|r
.target Jessir Moonbow
.isQuestTurnedIn 5204
step
#era/som
#softcore
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4084 >>交任务: |cRXP_FRIENDLY_银爪铁心|r
.accept 4005 >>接任务: |cRXP_WARN_亚奎门塔斯|r
.target Eridan Bluewind
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4084 >>交任务: |cRXP_FRIENDLY_银爪铁心|r
.accept 4005 >>接任务: |cRXP_WARN_亚奎门塔斯|r
.target Eridan Bluewind
step << !Mage
#completewith next
.hs >>心回冬泉
.use 6948
.cooldown item,6948,>0,1
step << !Mage
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤格雷克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Yugrek
.cooldown item,6948,>0,1
.zoneskip Azshara
step << !Mage
#completewith next
.subzone 431 >>前往Splintertree Post
.cooldown item,6948,<0,1
step << !Mage
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Vhulgra
.cooldown item,6948,<0,1
.zoneskip Azshara
step << Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10929 >>训练你的职业技能
.target Ur'kyo
.xp <56,1
.xp >58,1
step << Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 10947 >>训练你的职业技能
.target Ur'kyo
.xp <58,1
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10432 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <56,1
.xp >58,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 10473 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <58,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 20662 >>训练你的职业技能
.target Grezz Ragefist
.xp <56,1
.xp >58,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 11597 >>训练你的职业技能
.target Grezz Ragefist
.xp <58,1
step << Warlock
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11689 >>训练你的职业技能
.target Mirket
.xp <56,1
.xp >58,1
step << Warlock
#optional
.goto Orgrimmar,48.62,46.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米尔科特|r
.train 11713 >>训练你的职业技能
.target Mirket
.xp <58,1
step << Warlock
.goto Orgrimmar,47.55,46.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_库古尔|r
.vendor >>升级宠物的能力
.target Kurgul
step << Rogue
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11300 >>训练你的职业技能
.target Ormok
.xp <56,1
.xp >58,1
step << Rogue
#optional
.goto Orgrimmar,43.90,54.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莫克|r
.train 11305 >>训练你的职业技能
.target Ormok
.xp <58,1
step << Rogue
.goto Orgrimmar,42.09,49.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷库尔|r
.vendor >>|cRXP_BUY_储备闪光粉末和毒药|r
.target Rekkul
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14305 >>训练你的职业技能
.target Ormak Grimshot
.xp <56,1
.xp >58,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14322 >>训练你的职业技能
.target Ormak Grimshot
.xp <58,1
step << Mage
#completewith next
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
.zoneskip Undercity
step << Mage
.goto Undercity,82.79,15.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_汉娜·阿克雷|r
.vendor >>|cRXP_BUY_至少买两个|r|T134419:0|t[传送符文]
.collect 17031,2 
.target Hannah Akeley
step << !Mage
#completewith next
.zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
.zoneskip Durotar
step << !Mage
.goto Durotar,50.8,13.8,40 >>上齐柏林塔
.zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 50-60
#classic
<< Horde
#name 56-58西部PL/东部PL
#next 59-59冬泉/Silithus I
step
.abandon 3447 >>放弃圈子的秘密
.isOnQuest 3447
.dungeon ST
step
.abandon 3528 >>Abandon The God Hakkar
.isOnQuest 3528
.dungeon ST
step
.abandon 4146 >>Abandon Zapper Fuel
.isOnQuest 4146
.dungeon ST
step
.abandon 1445 >>放弃阿塔尔哈卡尔神庙
.isOnQuest 1445
.dungeon ST
step
#completewith next
.subzone 152 >>前往Bulwark
step
.goto Tirisfal Glades,83.15,68.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t前往布尔瓦克，然后与|cRXP_FRIENDLY_Derrington|r通话
.turnin 5095 >>交任务: |cRXP_FRIENDLY_战斗的号角：瘟疫之地！|r
.accept 5096 >>接任务: |cRXP_LOOT_误导血色十字军|r
.target High Executor Derrington
step
.goto Western Plaguelands,26.55,56.18
>>单击火旁的|cRXP_PICK_燃烧盒|r
.collect 12814,1 
step
.goto Tirisfal Glades,83.19,68.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_银色黎明军官加鲁什|r
.turnin 6029 >>交任务: |cRXP_FRIENDLY_永望镇报告|r
.turnin 5405 >>交任务: |cRXP_FRIENDLY_银色黎明委任徽章|r
.target Argent Officer Garush
step
.goto Tirisfal Glades,83.30,72.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克·莱文|r
.accept 5901 >>接任务: |cRXP_LOOT_瘟疫与你|r
.target Mickey Levine
step 
.goto Western Plaguelands,40.5,51.8
.use 12807 >>单击|cRXP_PICK_Command帐篷|r，然后使用|T132484:0|t[Scourge Banner]
>>|cRXP_WARN_这些暴徒相对来说比较难，可以互相链式拉动，所以要小心|r
.complete 5096,1 
step
.goto Tirisfal Glades,83.15,68.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
.turnin 5096 >>交任务: |cRXP_FRIENDLY_误导血色十字军|r
.accept 5098 >>接任务: |cRXP_LOOT_标记哨塔|r
.accept 5228 >>接任务: |cRXP_LOOT_瘟疫之锅|r
.target High Executor Derrington
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5228 >>交任务: |cRXP_FRIENDLY_瘟疫之锅|r
.accept 5229 >>接任务: |cRXP_LOOT_目标：费尔斯通农场|r
.target Shadow Priestess Vandis
step
.goto Western Plaguelands,37.12,57.18
>>杀死|cRXP_ENEMY_大锅领主比勒马|r。抢走他的|cRXX_Loot_大锅钥匙|r
.complete 5229,1 
.unitscan Cauldron Lord Bilemaw
step
.goto Western Plaguelands,37.2,56.8
>>单击在讲台上滚动的|cRXP_PICK_Scourge Cauldron|r
.turnin 5229 >>交任务: |cRXP_FRIENDLY_目标：费尔斯通农场|r
.accept 5230 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
.goto Western Plaguelands,38.40,54.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r on the second floor of the house
.accept 5021 >>接任务: |cRXP_LOOT_迟到总比不到好|r
.target Janice Felstone
step
.goto Western Plaguelands,38.8,55.3
>>在谷仓中单击|cRXP_PICK_Janice的包裹|r
>>|cRXP_WARN_如果你想跳过里面的暴徒，你可以在走廊墙上点击它|r
.turnin 5021 >>交任务: |cRXP_FRIENDLY_迟到总比不到好|r
.accept 5023 >>接任务: |cRXP_LOOT_迟到总比不到好|r
step
#completewith next
.subzone 152 >>Return to The Bulwark
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5230 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.accept 5231 >>接任务: |cRXP_LOOT_目标：达尔松之泪|r
.target Shadow Priestess Vandis
step
.goto Western Plaguelands,42.28,66.05
.use 12815 >>在塔楼门口的外角使用您的|T135432:0|t[灯塔火炬]
>>|cRXP_WARN_不要让精英参与其中|r
.complete 5098,2 
step
.goto Western Plaguelands,46.04,52.33
>>杀死|cRXP_ENEMY_釜主Malvinous |r。抢走他的|cRXX_Loot_釜钥匙|r
.complete 5231,1 
.unitscan Cauldron Lord Malvinious
step
.goto Western Plaguelands,46.2,52.0
>>单击在讲台上滚动的|cRXP_PICK_Scourge Cauldron|r
.turnin 5231 >>交任务: |cRXP_FRIENDLY_目标：达尔松之泪|r
.accept 5232 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
.goto Western Plaguelands,47.8,50.6
>>单击|cRXP_PICK_Dalson夫人日记|r
.turnin 5058 >>交任务: |cRXP_FRIENDLY_达尔松夫人的日记|r
step
.goto Western Plaguelands,47.49,51.00
>>杀死|cRXP_ENEMY_Wandering Skeleton |r。掠夺它的|cRXD_Loot_Outhouse密钥|r
>>|cRXP_WARN_如果骨骼未繁殖，则升级骨骼碎片|r
.collect 12738,1 
.unitscan Wandering Skeleton
step
#completewith next
.goto Western Plaguelands,48.2,49.7
>>单击|cRXP_PICK_Outhouse|r
.turnin 5059 >>交任务: |cRXP_FRIENDLY_被锁起来的农夫|r
step
.goto Western Plaguelands,48.2,49.7
>>杀死|cRXP_ENEMY_Farmer Dalson|r。抢走他的|cRXX_Loot_橱柜钥匙|r
.collect 12739,1,5060 
.unitscan Farmer Dalson
step
.goto Western Plaguelands,47.4,49.7
>>单击房屋顶层的|cRXP_PICK_Locked Cabinet|r
.turnin 5060 >>交任务: |cRXP_FRIENDLY_被锁起来的农夫|r
step
.goto Western Plaguelands,40.15,71.50
.use 12815 >>在塔楼门口的外角使用您的|T135432:0|t[灯塔火炬]
>>|cRXP_WARN_不要让精英参与其中|r
.complete 5098,1 
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.accept 4971 >>接任务: |cRXP_LOOT_时间问题|r
.target Chromie
step
.goto Western Plaguelands,44.24,63.06
.use 12815 >>在塔楼门口的外角使用您的|T135432:0|t[灯塔火炬]
>>|cRXP_WARN_不要让精英参与其中|r
.complete 5098,3 
step
.goto Western Plaguelands,45.8,63.3
.use 12627 >>在发光发射井附近使用|T134229:0|t[Temporal Displacer]产生|cRXP_ENEMY_Temporal Parasites|r
>>|cRXP_WARN_时间寄生虫垃圾邮件速度慢，死亡后可以产生更多寄生虫。如果它们开始压倒你，准备好跑到水里去；他们不会游泳|r
.complete 4971,1 
.mob Temporal Parasite
step
.goto Western Plaguelands,46.73,71.14
.use 12815 >>在塔楼门口的外角使用您的|T135432:0|t[灯塔火炬]
>>|cRXP_WARN_不要让精英参与其中|r
.complete 5098,4 
step
#completewith next
.goto Western Plaguelands,65.23,86.30,0
.goto Western Plaguelands,65.23,86.30,40,0
.goto The Hinterlands,22.32,27.19,30,0
.goto The Hinterlands,24.37,31.09,30,0
.goto The Hinterlands,23.91,33.27,30,0
.goto The Hinterlands,24.44,36.69,30,0
.goto The Hinterlands,23.87,38.59,30,0
.goto The Hinterlands,24.70,44.70,60 >>沿着一条小路向东南行驶，进入腹地。按照航路点指示
.dungeon ST
step
.goto The Hinterlands,33.751,75.210
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿塔莱流放者|r
.turnin 1446 >>交任务: |cRXP_FRIENDLY_预言者迦玛兰|r
.target Atal'ai Exile
.isQuestComplete 1446
.dungeon ST
step
#completewith next
.goto The Hinterlands,24.70,44.70,0
.goto The Hinterlands,24.70,44.70,60,0
.goto The Hinterlands,23.87,38.59,30,0
.goto The Hinterlands,24.44,36.69,30,0
.goto The Hinterlands,23.91,33.27,30,0
.goto The Hinterlands,24.37,31.09,30,0
.goto The Hinterlands,22.32,27.19,30,0
.goto Western Plaguelands,65.23,86.30,40 >>重返西方瘟疫之地
.zoneskip Western Plaguelands
.isQuestTurnedIn 1446
.dungeon ST
step
#completewith next
.subzone 152 >>Return to The Bulwark
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5232 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.accept 5233 >>接任务: |cRXP_LOOT_目标：嚎哭鬼屋|r
.target Shadow Priestess Vandis
step
.goto Tirisfal Glades,83.15,68.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
.turnin 5098 >>交任务: |cRXP_FRIENDLY_标记哨塔|r
.accept 838 >>接任务: |cRXP_LOOT_通灵学院|r
.target High Executor Derrington
step
#era/som
.goto Tirisfal Glades,83.28,69.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师迪瑟斯|r
.turnin 838 >>交任务: |cRXP_FRIENDLY_通灵学院|r
.accept 964 >>接任务: |cRXP_LOOT_骸骨碎片|r
.target Apothecary Dithers
step
#som
#phase 3-6
.goto Tirisfal Glades,83.28,69.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师迪瑟斯|r
.turnin 838 >>交任务: |cRXP_FRIENDLY_通灵学院|r
.accept 964 >>接任务: |cRXP_LOOT_骸骨碎片|r
.target Apothecary Dithers
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.turnin 4971 >>交任务: |cRXP_FRIENDLY_时间问题|r
.accept 4972 >>接任务: |cRXP_LOOT_找回时间|r
.target Chromie
step
#completewith next
>>在被毁的建筑物中偷走|cRXP_PICK_Small Lockboxes|r，用于|cRXP_OOT_Andorhal手表|r
.complete 4972,1 
.isOnQuest 4972
step
.goto Western Plaguelands,45.8,65.8,40,0
.loop 25,Western Plaguelands,46.4,70.0,45.6,72.2,42.6,71.4,41.6,73.2,38.8,71.0,38.8,68.2,40.4,66.4,42.6,70.0,43.4,64.4,45.8,65.8,46.4,70.0
>>杀死安多哈尔的所有|cRXP_ENEMY_Skeletons|r。掠夺它们的|cRXP_Loot_Fragments|r
>>|cRXP_ENEMY_骨骼执行器|r|cRXP_WARN_can execute|r
.complete 964,1 
.mob Skeletal Executioner
.mob Skeletal Acolyte
.mob Skeletal Warlord
.mob Skeletal Sorcerer
.mob Skeletal Flayer
.mob Skeletal Terror
step
.loop 25,Western Plaguelands,40.4,66.5,38.9,68.1,41.3,69.8,42.8,73.9,43.6,73.4,45.1,73.7,46.5,73.0,44.8,70.5,42.9,68.5,40.9,67.2,40.4,66.5
>>在被毁的建筑物中偷走|cRXP_PICK_Small Lockboxes|r，用于|cRXP_OOT_Andorhal手表|r
.complete 4972,1 
.isOnQuest 4972
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.turnin 4972 >>交任务: |cRXP_FRIENDLY_找回时间|r
.target Chromie
.isQuestComplete 4972
step
.goto Western Plaguelands,53.07,65.97
>>杀死|cRXP_ENEMY_大锅领主剃刀|r。抢走他的|cRXX_Loot_大锅钥匙|r
>>|cRXP_ENEMY_冰冻食尸鬼|r|cRXP_WARN_拥有5秒长的瞬发AoE眩晕|r
.complete 5233,1 
.unitscan Cauldron Lord Razarch
step
.goto Western Plaguelands,53.0,65.7
>>单击在讲台上滚动的|cRXP_PICK_Scourge Cauldron|r
>>|cRXP_ENEMY_冰冻食尸鬼|r|cRXP_WARN_拥有5秒长的瞬发AoE眩晕|r
.turnin 5233 >>交任务: |cRXP_FRIENDLY_目标：嚎哭鬼屋|r
.accept 5234 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
.goto Western Plaguelands,53.73,64.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
>>|cRXP_ENEMY_冰冻食尸鬼|r|cRXP_WARN_拥有5秒长的瞬发AoE眩晕|r
.accept 4984 >>接任务: |cRXP_LOOT_大自然的苦楚|r
.target Mulgris Deepriver
step
#completewith Businessman
>>杀死|cRXP_ENEMY_Diseased Wolves|r
>>|cRXP_ENEMY_Diseased Wolves |r|cRXP_WARN_share与|r|cRXP_ENEMY_Carrion Lurkers|r| cRXP_WRN_一起产卵。如有必要，杀死它们以重置区域|r
.complete 4984,1 
.unitscan Diseased Wolf
step
.goto Western Plaguelands,51.92,28.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.accept 6004 >>接任务: |cRXP_LOOT_未竟的事业|r
.target Kirsta Deepshadow
step
#completewith next
>>杀死|cRXP_ENEMY_Scarlet法师|r和|cRXD_ENEMY_ Scarlet骑士|r
>>|cRXP_WARN_|r|cRXP_ENEMY_Mages|r|cRXP_WARN_and|r|C RXP_ENEMY_Knights|r|cRXP_WARN_share重生。如有必要，杀死额外的暴徒以重置该区域|r
.goto Western Plaguelands,50.43,41.12,70,0
.goto Western Plaguelands,53.50,36.85,70,0
.goto Western Plaguelands,50.43,41.12,70,0
.complete 6004,3 
.complete 6004,4 
.mob Scarlet Mage
.mob Scarlet Knight
step
>>杀死|cRXP_ENEMY_Scarlet Medics|r和|cRXX_ENEMY_Scarlet Hunters|r
>>|cRXP_ENEMY_在营地中可以找到医生|r|cRXP_WARN_an和|r|cRXP_ENEMY_Hunters |r|C RXP_WARN_c。如有必要，杀死额外的暴徒以重置该区域|r
.goto Western Plaguelands,51.77,44.13,70,0
.goto Western Plaguelands,40.83,52.30,70,0
.goto Western Plaguelands,47.35,51.54,0
.goto Western Plaguelands,51.77,44.13
.complete 6004,1 
.complete 6004,2 
.mob Scarlet Medic
.mob Scarlet Hunter
step
.goto Western Plaguelands,50.43,41.12,70,0
.goto Western Plaguelands,53.50,36.85,70,0
.goto Western Plaguelands,50.43,41.12
>>完成击杀|cRXP_ENEMY_Scarlet法师|r和|cRXX_ENEMY_ Scarlet骑士|r
>>|cRXP_WARN_|r|cRXP_ENEMY_Mages|r|cRXP_WARN_and|r|C RXP_ENEMY_Knights|r|cRXP_WARN_share重生。如有必要，杀死额外的暴徒以重置该区域|r
.complete 6004,3 
.complete 6004,4 
.mob Scarlet Mage
.mob Scarlet Knight
step
.goto Western Plaguelands,51.92,28.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6004 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.accept 6023 >>接任务: |cRXP_LOOT_未竟的事业|r
.target Kirsta Deepshadow
step
.goto Western Plaguelands,57.83,36.10
>>杀死|cRXP_ENEMY_Huntsman Radley|r
>>|cRXP_WARN_她周围的暴徒可以轻而易举地用链条拉动。施法者铸造霜新星|r
.complete 6023,1 
.unitscan Huntsman Radley
step
.goto Western Plaguelands,54.64,23.71
>>杀死|cRXP_ENEMY_Cavalier Durgen|r
>>|cRXP_WARN_如果你等他巡逻出塔后再拉，这次遭遇会安全得多。他有5秒的瞬间施法眩晕|r
.complete 6023,2 
.unitscan Cavalier Durgen
step
#label Businessman
.goto Western Plaguelands,51.92,28.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科尔斯塔·迪普沙东|r
.turnin 6023 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.target Kirsta Deepshadow
step
.goto Western Plaguelands,50.0,36.8,40,0
.loop 25,Western Plaguelands,46.8,39.6,45.8,46.4,43.4,54.8,46.0,59.2,51.6,61.6,51.0,53.2,50.0,46.6,47.8,43.4,46.8,39.6
>>杀死|cRXP_ENEMY_Diseased Wolves|r
>>|cRXP_ENEMY_Diseased Wolves |r|cRXP_WARN_share与|r|cRXP_ENEMY_Carrion Lurkers|r| cRXP_WRN_一起产卵。如有必要，杀死它们以重置区域|r
.complete 4984,1 
.unitscan Diseased Wolf
step
.goto Western Plaguelands,53.73,64.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
.turnin 4984 >>交任务: |cRXP_FRIENDLY_大自然的苦楚|r
.accept 4985 >>接任务: |cRXP_LOOT_大自然的苦楚|r
.target Mulgris Deepriver
step
.goto Western Plaguelands,56.08,63.26,90,0
.goto Western Plaguelands,60.15,59.93,90,0
.goto Western Plaguelands,59.43,52.40,90,0
.goto Western Plaguelands,68.18,46.23,90,0
.goto Western Plaguelands,56.08,63.26
>>杀死|cRXP_ENEMY_Diseased Grizzlies|r
>>|cRXP_ENEMY_Diseased Grizzles |r|cRXP_WARN_share与|r|cRXP_ENEMY_Plague Lurkers |r| cRXP_WRN_一起产卵。如有必要，杀死它们以重置区域|r
.complete 4985,1 
.unitscan Diseased Grizzly
step
.goto Western Plaguelands,53.73,64.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
>>|cRXP_WARN_现在还不接受后续任务！|r
.turnin 4985 >>交任务: |cRXP_FRIENDLY_大自然的苦楚|r
.target Mulgris Deepriver
step
#era/som
#completewith next
.goto Eastern Plaguelands,7.59,43.57,50 >>前往东部瘟疫地区的|cRXP_FRIENDLY_Tirion|r
step
#era/som
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.accept 5542 >>接任务: |cRXP_LOOT_恶魔之犬|r
.accept 5543 >>接任务: |cRXP_LOOT_血染的天空|r
.accept 5544 >>接任务: |cRXP_LOOT_腐肉虫|r
.target Tirion Fordring
step
#era/som
#completewith WormMeat
>>杀死|cRXP_ENEMY_Carrion蠕虫|r。掠夺它们的|cRXX_Loot_Meat|r
.complete 5544,1 
.mob Carrion Worm
.mob Carrion Devourer
step
#era/som
#completewith Pamela
>>杀死|cRXP_ENEMY_Plaguebats|r和|cRXP_ENEMY_Plasguehound符文|r
.complete 5543,1 
.complete 5542,1 
.mob Plaguebat
.mob Plaguehound Runt
step
#era/som
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.accept 6022 >>接任务: |cRXP_LOOT_杀戮的理由|r
.accept 6042 >>接任务: |cRXP_WARN_讨厌的蝙蝠|r
.target Nathanos Blightcaller
step
#som
#phase 3-6
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.accept 6022 >>接任务: |cRXP_LOOT_杀戮的理由|r
.target Nathanos Blightcaller
step
#som
#phase 3-6
.goto Eastern Plaguelands,27.28,85.22
>>点击地下室地面上的大|cRXP_PICK_Torn Scroll|r
.accept 6024 >>接任务: |cRXP_LOOT_哈米亚的请求|r
step
.goto Eastern Plaguelands,36.47,90.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela|r
.turnin 5601 >>交任务: |cRXP_FRIENDLY_小妹妹帕米拉|r
.accept 5149 >>接任务: |cRXP_LOOT_帕米拉的洋娃娃|r
.target Pamela Redpath
step
.goto Eastern Plaguelands,38.10,92.24
>>在毁坏的建筑物中抢劫地板上的3|cRXP_PICK_Doll Parts|r
>>|cRXP_WARN_点击玩偶碎片可以产生一些|r|cRXP_ENEMY_过去的幽灵|r|cRXP_WARN_它们有冰甲和霜震|r
.collect 12886,1,5149,1 
.unitscan Ghost of the Past
step
.goto Eastern Plaguelands,39.64,92.51
>>在毁坏的建筑物中抢劫地板上的3|cRXP_PICK_Doll Parts|r
>>|cRXP_WARN_点击玩偶碎片可以产生一些|r|cRXP_ENEMY_过去的幽灵|r|cRXP_WARN_它们有冰甲和霜震|r
.collect 12887,1,5149,1 
.unitscan Ghost of the Past
step
.goto Eastern Plaguelands,39.67,90.24
>>在毁坏的建筑物中抢劫地板上的3|cRXP_PICK_Doll Parts|r
>>|cRXP_WARN_点击玩偶碎片可以产生一些|r|cRXP_ENEMY_过去的幽灵|r|cRXP_WARN_它们有冰甲和霜震|r
.collect 12888,1,5149,1 
.unitscan Ghost of the Past
step
.goto Eastern Plaguelands,36.47,90.80
.use 12886 >>点击|T134164:0|t[帕梅拉娃娃头]组合三件
.complete 5149,1 
step
#label Pamela
.goto Eastern Plaguelands,36.47,90.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela|r
.turnin 5149 >>交任务: |cRXP_FRIENDLY_帕米拉的洋娃娃|r
.accept 5152 >>接任务: |cRXP_LOOT_玛莱恩姑妈|r
.accept 5241 >>接任务: |cRXP_LOOT_卡林叔叔|r
.target Pamela Redpath
step
#era/som
#loop
.goto Eastern Plaguelands,40.09,82.83,70,0
.goto Eastern Plaguelands,43.06,82.47,70,0
.goto Eastern Plaguelands,43.97,74.96,70,0
.goto Eastern Plaguelands,36.35,69.28,70,0
.goto Eastern Plaguelands,30.46,70.17,70,0
.goto Eastern Plaguelands,19.69,68.12,70,0
.goto Eastern Plaguelands,18.24,77.03,70,0
.goto Eastern Plaguelands,24.94,70.55,70,0
.goto Eastern Plaguelands,31.20,72.10,70,0
.goto Eastern Plaguelands,34.16,82.21,70,0
>>杀死|cRXP_ENEMY_Plaguebats|r和|cRXP_ENEMY_Plasguehound符文|r
.complete 5543,1 
.complete 5542,1 
.mob Plaguebat
.mob Plaguehound Runt
step
#era/som
#completewith next
>>杀死|cRXP_ENEMY_Plaguehound|r和|cRXD_ENEMY_Noxious Plaguebats|r
.complete 5542,2 
.complete 6042,1 
.mob Plaguehound
.mob Noxious Plaguebat
step
#completewith RottingUndead
.subzone 2264 >>前往科林十字路口
step
#completewith next
>>杀死|cRXP_ENEMY_Undad|r。掠夺他们的|cRXD_Loot_Live Rot|r。
>>|cRXP_WARN_一群群精英在北路和东路巡逻。隐形暴徒在科林十字路口内巡逻，所以试着把暴徒拉出来|r
.collect 15447,7 
.mob Hate Shrieker
.mob Scourge Warder
.mob Stitched Horror
.mob Gibbering Ghoul
.mob Unseen Servant
.mob Dark Caster
step
#label RottingUndead
.loop 25,Eastern Plaguelands,58.2,70.2,60.4,71.6,61.0,69.4,61.4,66.4,59.4,66.4,58.0,67.6,58.2,70.2
.use 15454 >>在活腐到期前使用|T133748:0|t[迫击炮和害虫]
.complete 6022,1 
step
#era/som
.goto Eastern Plaguelands,46.14,65.32,70,0
.goto Eastern Plaguelands,49.24,61.48,70,0
.goto Eastern Plaguelands,50.26,54.66,70,0
.goto Eastern Plaguelands,55.24,54.72,70,0
.goto Eastern Plaguelands,61.47,61.92,70,0
.goto Eastern Plaguelands,65.18,70.17,70,0
.goto Eastern Plaguelands,69.94,72.99,70,0
.goto Eastern Plaguelands,72.99,75.98,70,0
.goto Eastern Plaguelands,77.94,69.64
>>杀死|cRXP_ENEMY_Plaguehound|r和|cRXD_ENEMY_Noxious Plaguebats|r
.complete 5542,2 
.complete 6042,1 
.mob Plaguehound
.mob Noxious Plaguebat
step
#completewith next
.subzone 2268 >>前往光明的希望教堂
step
.goto Eastern Plaguelands,80.22,57.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔吉亚|r
.fp Light's Hope Chapel	>>获得光明希望教堂的飞行路线
.target Georgia
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Nicholas, |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 6030 >>交任务: |cRXP_FRIENDLY_尼古拉斯·瑟伦霍夫公爵|r
.goto Eastern Plaguelands,81.44,59.81
.turnin 5241 >>交任务: |cRXP_FRIENDLY_卡林叔叔|r
.accept 5211 >>接任务: |cRXP_LOOT_达隆郡的保卫者|r
.goto Eastern Plaguelands,81.51,59.77
.target Duke Nicholas Zverenhoff
.target Carlin Redpath
step
.goto Eastern Plaguelands,79.60,63.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alen|r
.accept 6021 >>接任务: |cRXP_LOOT_流亡者塞达尔|r
.accept 5281 >>接任务: |cRXP_LOOT_永不安息的灵魂|r
.target Caretaker Alen
step
#sticky
#completewith LostSymbol
.goto Eastern Plaguelands,77.11,48.00,0
.goto Eastern Plaguelands,67.30,40.67,0
.goto Eastern Plaguelands,26.48,37.58,0
>>杀死|cRXP_ENEMY_Diseased Flayers|r和|cRXP_ENEMY_Gibbering食尸鬼|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that appear over their corpses
>>|cRXP_WARN_这些暴徒与少数暴徒共享产卵点，所以在所有食尸鬼死亡后杀死所有人|r
.complete 5211,1 
.unitscan Diseased Flayer;Gibbering Ghoul
.skipgossip
step
#som
#phase 3-6
.goto Eastern Plaguelands,64.25,22.09,50,0
.goto Eastern Plaguelands,68.57,20.95,50,0
.goto Eastern Plaguelands,69.23,18.48
>>杀死|cRXP_ENEMY_Infiltator Hameya|r。为她掠夺她|cRXX_Loot_Key|r
>>|cRXP_WARN_你应该能够避开上山途中的所有暴徒。跑过他们所有人，然后上山向东。不要靠近坟墓|r
.complete 6024,1 
.unitscan Infiltrator Hameya
step
#era/som
#label WormMeat
#loop
.goto Eastern Plaguelands,69.73,50.55,70,0
.goto Eastern Plaguelands,70.42,43.50,70,0
.goto Eastern Plaguelands,70.34,38.47,70,0
.goto Eastern Plaguelands,67.02,34.41,70,0
.goto Eastern Plaguelands,62.69,34.72,70,0
.goto Eastern Plaguelands,50.36,28.49,70,0
.goto Eastern Plaguelands,51.18,39.91,70,0
>>杀死|cRXP_ENEMY_Monstrous瘟疫蝙蝠|r和|cRXD_ENEMY_Frenzied瘟疫猎犬|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Monstrous瘟疫蝙蝠|r|cRXP_WARN_在近战范围内保持沉默10秒|r << !Rogue !Warrior
.complete 6042,2 
.complete 5542,3 
.mob Monstrous Plaguebat
.mob Frenzied Plaguehound
step
#era/som
#loop
.goto Eastern Plaguelands,69.73,50.55,70,0
.goto Eastern Plaguelands,70.42,43.50,70,0
.goto Eastern Plaguelands,70.34,38.47,70,0
.goto Eastern Plaguelands,67.02,34.41,70,0
.goto Eastern Plaguelands,62.69,34.72,70,0
.goto Eastern Plaguelands,50.36,28.49,70,0
.goto Eastern Plaguelands,51.18,39.91,70,0
>>杀死|cRXP_ENEMY_Carrion蠕虫|r。掠夺它们的|cRXX_Loot_Meat|r
.complete 5544,1 
.mob Carrion Worm
.mob Carrion Devourer
step
#completewith next
.subzone 2277 >>Travel to Plaguewood
step
#loop
.goto Eastern Plaguelands,39.97,21.11,50,0
.goto Eastern Plaguelands,34.90,24.67,50,0
.goto Eastern Plaguelands,30.69,24.99,50,0
.goto Eastern Plaguelands,26.59,23.84,50,0
.goto Eastern Plaguelands,24.19,23.62,50,0
.goto Eastern Plaguelands,21.15,24.05,50,0
.goto Eastern Plaguelands,20.90,29.89,50,0
.goto Eastern Plaguelands,23.75,32.44,50,0
.goto Eastern Plaguelands,26.48,37.58,50,0
.goto Eastern Plaguelands,29.55,34.13,50,0
.goto Eastern Plaguelands,34.89,35.29,50,0
.goto Eastern Plaguelands,42.80,34.24,50,0
>>为其|cRXP_Loot_Termites|r掠夺tan |cRX_PICK_Termite丘|r
.complete 5901,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t进入房子，然后与|cRXP_FRIENDLY_Egan |r和|cRXP-FRIENDLY_Augustus|r交谈
.turnin 5281 >>交任务: |cRXP_FRIENDLY_永不安息的灵魂|r
.goto Eastern Plaguelands,14.45,33.74
.accept 6164 >>接任务: |cRXP_LOOT_奥古斯图斯的收据册|r
.goto Eastern Plaguelands,14.44,33.51
.target Egan
.target Augustus the Touched
step
.goto Eastern Plaguelands,17.43,31.08
>>行窃|cRXP_PICK_Augustus收据簿|r在客栈二楼
.complete 6164,1 
step
.goto Eastern Plaguelands,14.44,33.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被感动的奥古斯图斯|r
.turnin 6164 >>交任务: |cRXP_FRIENDLY_奥古斯图斯的收据册|r
.target Augustus the Touched
step
.goto Eastern Plaguelands,14.44,33.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_被感动的奥古斯图斯|r
>>|cRXP_WARN_在包里留出足够的空间 
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
step
#era/som
#completewith next
.goto Eastern Plaguelands,27.59,43.33,40,0
.goto Eastern Plaguelands,24.43,41.00,40,0
.goto Eastern Plaguelands,23.33,42.30,40,0
.goto Eastern Plaguelands,21.80,40.36,40,0
.goto Eastern Plaguelands,19.58,42.98,40,0
.goto Eastern Plaguelands,18.71,40.81,40,0
.goto Eastern Plaguelands,16.37,42.00,40,0
.goto Eastern Plaguelands,10.99,47.75,40,0
+表演东部瘟疫山脉跳跃以节省时间
>>|cRXP_WARN_你的包里必须有|r|T134863:0|t[Noggenfogger Elixirs]|cRXP_WARN_in|r
.link https://www.youtube.com/watch?v=6VIULBxMyfU >>点击此处参考
step
#era/som
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 5542 >>交任务: |cRXP_FRIENDLY_恶魔之犬|r
.turnin 5543 >>交任务: |cRXP_FRIENDLY_血染的天空|r
.turnin 5544 >>交任务: |cRXP_FRIENDLY_腐肉虫|r
.accept 5742 >>接任务: |cRXP_LOOT_救赎|r
.target Tirion Fordring
step
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
>>|cRXP_WARN_听提里奥的故事时打字/坐着。执行此操作时可以挂载|r
.complete 5742,1 
.turnin 5742 >>交任务: |cRXP_FRIENDLY_救赎|r
.accept 5781 >>接任务: |cRXP_LOOT_遗忘的记忆|r
.target Tirion Fordring
.skipgossip
step
#era/som
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.accept 6133 >>接任务: |cRXP_WARN_游侠之王的命令|r
.turnin 6022 >>交任务: |cRXP_FRIENDLY_杀戮的理由|r
.turnin 6042 >>交任务: |cRXP_FRIENDLY_讨厌的蝙蝠|r
.target Nathanos Blightcaller
step
#som
#phase 3-6
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.turnin 6042 >>交任务: |cRXP_FRIENDLY_讨厌的蝙蝠|r
.target Nathanos Blightcaller
step
#era/som
.goto Eastern Plaguelands,28.34,86.79
>>点击|cRXP_PICK_Loose Dirt Mound|r，召唤|cRXD_ENEMY_Mercutio Filthgorger|r和3|cRXP_ENEMY_Crypt Robbers|r。杀死他，然后掠夺他的|cRXP_loot_Hammer |r
>>|cRXP_WARN_这个任务非常危险。|r|cRXP_ENEMY_Crypt Robbers|r|cRXP_WARN_不同寻常；它们需要很长时间才能重置，并且可以在分开拉动时重新拴上皮带|r
>>|cRXP_WARN_这个任务是游戏中最难的任务之一。如果需要，请跳过|r << !Mage !Warlock !Hunter !Rogue !Druid
>>|cRXP_WARN_拆分和暴雪一起产生的包。风筝|r|cRXP_ENEMY_Mercutio|r|cRXP_WARN_away，直到其他暴徒挣脱皮带|r << Mage
>>|cRXP_WARN_拆分并拉出产生“火之雨”的背包。风筝|r|cRXP_ENEMY_Mercutio|r|cRXP_WARN_away，直到其他暴徒挣脱皮带|r << Warlock
>>|cRXP_WARN_分开拉和沃利一起生下的背包。风筝|r|cRXP_ENEMY_Mercutio|r|cRXP_WARN_away，直到其他暴徒挣脱皮带|r << Hunter
>>|cRXP_WARN_潜入产卵群体的中间，然后取消隐身，立即攻击所有暴民。保持新鲜的皮带|r|cRXP_ENEMY_Mercutio|r|cRXP_WARN_hilst疾跑远离其他暴徒|r << Rogue
>>|cRXP_WARN_潜入产卵群体的中间，然后取消隐身，立即攻击所有暴民。保持新鲜的皮带|r|cRXP_ENEMY_Mercutio|r|cRXP_WARN_hilst从其他暴徒身边跑开|r << Druid
.complete 5781,1 
.mob Crypt Robber
.unitscan Mercutio Filthgorger
.link https://www.twitch.tv/videos/850028806?t=02h34m49s >>单击此处以供参考 << Mage/Warlock/Hunter/Druid/Rogue
step
.goto Eastern Plaguelands,27.41,84.92
>>杀死地下室中的|cRXP_ENEMY_Zaeldarr Outcast|r。抢劫他的|cRXP_Loot_Head|r
.complete 6021,1 
.unitscan Zaeldarr the Outcast
step
#era/som
.goto Eastern Plaguelands,27.28,85.22
>>点击地下室地面上的大|cRXP_PICK_Torn Scroll|r
.accept 6024 >>接任务: |cRXP_LOOT_哈米亚的请求|r
step
#som
#phase 3-6
.goto Eastern Plaguelands,28.04,86.16
>>点击地下室后面的|cRXP_PICK_土堆|r
.turnin 6024 >>交任务: |cRXP_FRIENDLY_哈米亚的请求|r
.isQuestComplete 6024
step
#era/som
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 5781 >>交任务: |cRXP_FRIENDLY_遗忘的记忆|r
.accept 5845 >>接任务: |cRXP_LOOT_失落的荣耀|r
.target Tirion Fordring
.isQuestComplete 5781
step
#era/som
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.accept 5845 >>接任务: |cRXP_LOOT_失落的荣耀|r
.target Tirion Fordring
.isQuestTurnedIn 5781
step
#era/som
#completewith next
.subzone 2273 >>Travel to Zul'Mashar
step
#era/som
.goto Eastern Plaguelands,64.25,22.09,50,0
.goto Eastern Plaguelands,68.57,20.95,50,0
.goto Eastern Plaguelands,69.23,18.48
>>杀死|cRXP_ENEMY_Infiltator Hameya|r。为她掠夺她|cRXX_Loot_Key|r
>>|cRXP_WARN_你应该能够避开上山途中的所有暴徒。跑过他们所有人，然后上山向东。不要靠近坟墓|r
.complete 6024,1 
.unitscan Infiltrator Hameya
step
#era/som
#completewith next
.goto Eastern Plaguelands,52.14,18.30,0
>>将|cRXP_Loot_Quel'Thalas注册表|r放在工作台上
.complete 6133,4 
step
#era/som
#loop
.goto Eastern Plaguelands,51.75,21.66,40,0
.goto Eastern Plaguelands,50.73,18.33,40,0
.goto Eastern Plaguelands,50.89,16.50,40,0
.goto Eastern Plaguelands,52.97,17.29,40,0
.goto Eastern Plaguelands,52.88,19.18,40,0
>>杀死|cRXP_ENEMY_Pathstriders|r、|cRXD_ENEMY_Rangers|r和|cRXP_ENEMY_Woodsman|r
>>|cRXP_WARN_这些暴徒对非精英阶层打击很大|r << !Rogue !Druid
>>|cRXP_WARN_这些暴徒对非精英阶层的打击很大；记住Pathstrider的精灵之火能力，以防你需要逃跑|r << Rogue/Druid
.complete 6133,1 
.complete 6133,2 
.complete 6133,3 
.mob Pathstrider
.mob Ranger
.mob Woodsman
step
#era/som
.goto Eastern Plaguelands,52.14,18.30
>>将|cRXP_Loot_Quel'Thalas注册表|r放在工作台上
.complete 6133,4 
step
#era/som
#label LostSymbol
.goto Eastern Plaguelands,71.30,33.97
>>在水下掠夺|cRXP_Loot_失去荣誉的符号|r
.complete 5845,1 
.isQuestTurnedIn 5781
step
.goto Eastern Plaguelands,77.11,48.00,0
.goto Eastern Plaguelands,67.30,40.67,0
.goto Eastern Plaguelands,26.48,37.58,0
.loop 25,Eastern Plaguelands,68.2,40.8,68.6,38.6,66.0,36.0,64.6,38.0,65.4,41.2,66.6,38.6,68.2,40.8
>>杀死|cRXP_ENEMY_Diseased Flayers|r和|cRXP_ENEMY_Gibbering食尸鬼|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that appear over their corpses
>>|cRXP_WARN_这些暴徒与少数暴徒共享产卵点，所以在所有食尸鬼死亡后杀死所有人|r
.complete 5211,1 
.unitscan Diseased Flayer;Gibbering Ghoul
.skipgossip
step
.goto Eastern Plaguelands,79.60,63.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alen|r
.turnin 6021 >>交任务: |cRXP_FRIENDLY_流亡者塞达尔|r
.target Caretaker Alen
step
.goto Eastern Plaguelands,81.51,59.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5211 >>交任务: |cRXP_FRIENDLY_达隆郡的保卫者|r
.target Carlin Redpath
step << !Mage
.goto Eastern Plaguelands,80.22,57.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔吉亚|r
.fly Undercity >>飞到地下城
.target Georgia
.zoneskip Undercity
step << Mage
.cast 3563 >>演员阵容|T135766:0|t[电传：Undercity]
step << Mage
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 10157 >>训练你的职业技能
.target Anastasia Hartwell
.xp <56,1
.xp >58,1
step << Mage
#optional
.goto Undercity,85.15,10.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安娜斯塔西娅|r
.train 10054 >>训练你的职业技能
.target Anastasia Hartwell
.xp <58,1
step << Warlock
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 11689 >>训练你的职业技能
.target Richard Kerwin
.xp <56,1
.xp >58,1
step << Warlock
#optional
.goto Undercity,88.93,15.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Richard|r
.train 11713 >>训练你的职业技能
.target Richard Kerwin
.xp <58,1
step << Warlock
.goto Undercity,85.70,16.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martha|r
.trainer >>升级宠物的能力
.target Martha Strain
step << Priest
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
.train 10929 >>训练你的职业技能
.target Father Lazarus
.xp <56,1
.xp >58,1
step << Priest
#optional
.goto Undercity,47.55,18.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉扎鲁斯神父|r
.train 10947 >>训练你的职业技能
.target Father Lazarus
.xp <58,1
step << Warrior
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 20662 >>训练你的职业技能
.target Angela Curthas
.xp <56,1
.xp >58,1
step << Warrior
#optional
.goto Undercity,48.32,15.98
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angela|r
.train 11597 >>训练你的职业技能
.target Angela Curthas
.xp <58,1
step << Rogue
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 11300 >>训练你的职业技能
.target Carolyn Ward
.xp <56,1
.xp >58,1
step << Rogue
#optional
.goto Undercity,83.86,72.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡罗琳·瓦德|r
.train 11305 >>训练你的职业技能
.target Carolyn Ward
.xp <58,1
step
.goto Undercity,69.79,43.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_皇家管理人巴哈乌斯|r
.turnin 5023 >>交任务: |cRXP_FRIENDLY_迟到总比不到好|r
.accept 5049 >>接任务: |cRXP_LOOT_杰雷米亚的忧伤|r
.target Royal Overseer Bauhaus
step
.goto Undercity,67.61,44.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeremiah|r
.turnin 5049 >>交任务: |cRXP_FRIENDLY_杰雷米亚的忧伤|r
.accept 5050 >>接任务: |cRXP_LOOT_好运护符|r
.target Jeremiah Payson
step
#ah
#completewith UCClothTurnins
.goto Undercity,67.66,35.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cain|r
>>|cRXP_BUY_在拍卖行购买每种布料240块|r
.collect 2592,240 
.collect 4306,240 
.collect 4338,240 
.collect 14047,240 
.target Auctioneer Cain
step
#ah
#completewith next
.goto Undercity,68.15,38.26,0
+转到邮箱并检索以下内容：
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
#ah
#label UCClothTurnins
.goto Undercity,71.66,29.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱斯顿·法斯雷|r
>>|cRXP_WARN_禁用任何其他自动提交信誉项目的插件，否则你稍后会被告知再次购买布料|r
.turnin 7813 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7814 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7817 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7818 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
.target Ralston Farnsley
step
.goto Undercity,48.50,71.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师科雷|r
.turnin 3568 >>交任务: |cRXP_FRIENDLY_堕落之水|r
.target Chemist Cuely
.isQuestComplete 3568
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师科雷|r, |cRXP_FRIENDLY_瑟尔萨·风歌|r
.accept 3569 >>接任务: |cRXP_WARN_堕落之水|r
.goto Undercity,48.71,71.40
.turnin 3569 >>交任务: |cRXP_FRIENDLY_堕落之水|r
.turnin 3570 >>交任务: |cRXP_FRIENDLY_堕落之水|r
.goto Undercity,49.03,70.81
.target Chemist Cuely
.target Thersa Windsong
.isQuestTurnedIn 3568
step
.goto Undercity,54.81,76.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德隆·甘特|r
.turnin 3542 >>交任务: |cRXP_FRIENDLY_安德隆·甘特的石版|r
.accept 3564 >>接任务: |cRXP_WARN_安德隆的报酬|r
.target Andron Gant
.isOnQuest 3542
step
.goto Undercity,54.81,76.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安德隆·甘特|r
.accept 3564 >>接任务: |cRXP_WARN_安德隆的报酬|r
.target Andron Gant
.isQuestTurnedIn 3542
step
#phase 6
#ah
.goto Undercity,71.42,46.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯托克顿|r
>>|cRXP_BUY_从拍卖行购买以下物品。你稍后需要这些才能在EPL中进行多次免费任务登录|r
>>|cRXP_WARN_有5个不同的任务，每个任务需要30个。如果你不能得到一种类型的30个，那么跳过它|r
.collect 22529,30,9136,1 
.collect 22526,30,9126,1 
.collect 22525,30,9124,1 
.collect 22527,30,9128,1 
.collect 22528,30,9131,1 
.target Auctioneer Stockton
step
>>如果你早些时候在灼热峡谷完成了任务，那么从你的银行取出|T134430:0|t[黑蜻蜓熔岩]。你需要它
.collect 10575,1,4022,1 
.isQuestTurnedIn 3481
.dungeon BRD
step
.goto Undercity,51.88,64.49,30,0
.goto Undercity,58.07,91.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas|r
.accept 5961 >>接任务: |cRXP_LOOT_女妖之王的勇士|r
.target Lady Sylvanas Windrunner
step
.goto Undercity,55.22,90.88
.goto Undercity,67.90,15.28,30 >>|cRXP_WARN_执行注销跳过，将角色定位在最低楼梯的最高部分，直到看起来像是漂浮的，然后注销并返回|r
.link https://www.youtube.com/watch?v=jj85AXyF1XE >>|cRXP_WARN_单击此处查看示例|r
>>|cRXP_WARN_如果你做不到这一点，就正常离开幽暗城|r
step
#completewith next
.goto Tirisfal Glades,61.85,66.59,60 >>前往: |cRXP_PICK_提瑞斯法林地|r
.zoneskip Tirisfal Glades
step
.goto Tirisfal Glades,83.28,69.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_药剂师迪瑟斯|r
.turnin 964 >>交任务: |cRXP_FRIENDLY_骸骨碎片|r
.target Apothecary Dithers
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5234 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.accept 5235 >>接任务: |cRXP_LOOT_目标：盖罗恩农场|r
.target Shadow Priestess Vandis
step
.goto Tirisfal Glades,83.29,72.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克·莱文|r
.turnin 5901 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
.accept 5902 >>接任务: |cRXP_LOOT_瘟疫与你|r
.target Mickey Levine
step
.goto Western Plaguelands,38.40,54.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t爬到大楼的顶层，然后与|cRXP_FRIENDLY_Janice|r交谈
.turnin 5050 >>交任务: |cRXP_FRIENDLY_好运护符|r
.accept 5051 >>接任务: |cRXP_LOOT_两半合一|r
.target Janice Felstone
step
.loop 25,Western Plaguelands,36.8,58.6,36.4,56.4,37.4,55.6,38.6,56.2,37.8,57.6,36.8,58.6
>>杀死|cRXP_ENEMY_Jabbering食尸鬼|r。掠夺它以获得|cRXX_Loot_好运另一半符|r
.use 12722 >>使用它创建|cRXP_LOOT_好运好运符|r
.complete 5051,1 
.unitscan Jabbering Ghoul
step
.goto Western Plaguelands,38.40,54.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r on the top floor of the building
.turnin 5051 >>交任务: |cRXP_FRIENDLY_两半合一|r
.target Janice Felstone
step
.goto Western Plaguelands,49.13,78.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛莱恩·雷德帕斯|r
.turnin 5152 >>交任务: |cRXP_FRIENDLY_玛莱恩姑妈|r
.accept 5153 >>接任务: |cRXP_LOOT_古怪的历史学家|r
.target Marlene Redpath
step
.goto Western Plaguelands,49.69,76.75
>>掠夺|cRXP_PICK_Joseph Redpath的纪念碑|r用于|cRXP_Loot_Joseph的结婚戒指|r
.complete 5153,1 
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.turnin 5153 >>交任务: |cRXP_FRIENDLY_古怪的历史学家|r
.accept 5154 >>接任务: |cRXP_LOOT_达隆郡的历史|r
.target Chromie
step
.goto Western Plaguelands,43.4,69.6
>>在市政厅内抢劫|cRXP_PICK_Musty Tomes|r，直到您抢劫|cRXP_Loot_Annals of Darrowshire|r
>>|cRXP_WARN_许多书都是假的，打开后会滋生暴徒。真正的书都是白色的，没有灰色/深色。你可能必须点击假书才能生成一本真书|r
.complete 5154,1 
.link https://i.imgur.com/B2HDb6K.png >>点击此处查看视觉示例
step
.goto Western Plaguelands,39.46,66.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.turnin 5154 >>交任务: |cRXP_FRIENDLY_达隆郡的历史|r
.accept 5210 >>接任务: |cRXP_LOOT_卡林·雷德帕斯|r
.target Chromie
step
.goto Western Plaguelands,53.73,64.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆格雷斯·深水|r
.turnin 4985 >>交任务: |cRXP_FRIENDLY_大自然的苦楚|r
.accept 4987 >>接任务: |cRXP_LOOT_雕文橡木枝|r
.target Mulgris Deepriver
step
.goto Western Plaguelands,62.80,58.76
>>杀死|cRXP_ENEMY_Cauldron Lord Soulwraith |r。抢走他的|cRXX_Loot_CauldronKey|r
>>|cRXP_WARN_这个暴徒有一种10秒的沉默疾病|r << !Priest
>>|cRXP_WARN_这群暴徒有一种10秒的沉默疾病；预制废除疾病并保持它|r << Priest
.complete 5235,1 
.unitscan Cauldron Lord Soulwraith
step
.goto Western Plaguelands,62.5,58.6
>>单击在讲台上滚动的|cRXP_PICK_Scourge Cauldron|r
.turnin 5235 >>交任务: |cRXP_FRIENDLY_目标：盖罗恩农场|r
.accept 5236 >>接任务: |cRXP_LOOT_返回亡灵壁垒|r
step
#completewith next
.subzone 192 >>前往北岭木材营地
step
.goto Western Plaguelands,48.35,32.00
>>进入磨机。单击坡道旁的|cRXP_PICK_Northridge木材厂板条箱|r，然后单击|cRXP _PICK_Termite桶|r
.turnin 5902 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
.accept 6390 >>接任务: |cRXP_LOOT_瘟疫与你|r
step
.goto Western Plaguelands,51.92,28.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t离开Hearthglen，然后与|cRXP_FRIENDLY_Kirsta|r交谈
.accept 6025 >>接任务: |cRXP_LOOT_未竟的事业|r
.target Kirsta Deepshadow
step
.goto Western Plaguelands,47.94,21.43,60,0
.goto Western Plaguelands,43.31,17.34,50,0
.goto Western Plaguelands,45.6,18.6
>>跑进Hearthglen，一旦你进入，就按照箭头重置暴徒
>>跑到塔顶。小心，因为外面的圣骑士可以治愈。你可以试着从他们身边跑过去/人群控制他们，然后登上顶峰
>>|cRXP_WARN_注意暴徒没有Z轴范围。如果他们在你正下方，他们可以从塔的底部击中你|r
.complete 6025,1 
step
.goto Western Plaguelands,51.92,28.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t离开Hearthglen，然后与|cRXP_FRIENDLY_Kirsta|r交谈
.turnin 6025 >>交任务: |cRXP_FRIENDLY_未竟的事业|r
.target Kirsta Deepshadow
step
#completewith next
.subzone 152 >>返回Bulwark
step
.goto Tirisfal Glades,83.03,71.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗影牧师范蒂丝|r
.turnin 5236 >>交任务: |cRXP_FRIENDLY_返回亡灵壁垒|r
.target Shadow Priestess Vandis
step
.goto Tirisfal Glades,83.30,72.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米克·莱文|r
.turnin 6390 >>交任务: |cRXP_FRIENDLY_瘟疫与你|r
.target Mickey Levine
step
.goto Tirisfal Glades,83.15,68.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
.turnin 5238 >>交任务: |cRXP_FRIENDLY_任务完成！|r
.target High Executor Derrington
step
#era/som
#completewith next
.goto Eastern Plaguelands,7.59,43.57,50 >>Travel back to Tirion
step
#era/som
.goto Eastern Plaguelands,7.59,43.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tirion|r
.turnin 5845 >>交任务: |cRXP_FRIENDLY_失落的荣耀|r
.accept 5846 >>接任务: |cRXP_LOOT_爱与家庭|r
.target Tirion Fordring
.isQuestTurnedIn 5781
step
#era/som
.goto Western Plaguelands,65.79,75.41
>>Swim to Caer Darrow << !Shaman/Priest
>>水上漫步至Caer Darrow，或游泳 << Shaman
>>使用Levitate，跑到Caer Darrow，或者游泳 << Priest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_画家瑞弗蕾|r
.turnin 5846 >>交任务: |cRXP_FRIENDLY_爱与家庭|r
.target Artist Renfray
.isOnQuest 5846
step
#era/som
.goto Eastern Plaguelands,28.03,86.16
>>点击地下室后面的|cRXP_PICK_土堆|r
.turnin 6024 >>交任务: |cRXP_FRIENDLY_哈米亚的请求|r
.isQuestComplete 6024
step
#era/som
.goto Eastern Plaguelands,26.55,74.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
.turnin 5961 >>交任务: |cRXP_FRIENDLY_女妖之王的勇士|r
.turnin 6133 >>交任务: |cRXP_FRIENDLY_游侠之王的命令|r
.target Nathanos Blightcaller
step
#completewith next
.subzone 2268 >>前往光明的希望教堂
step
#era/som
.goto Eastern Plaguelands,81.51,59.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.turnin 5210 >>交任务: |cRXP_FRIENDLY_卡林·雷德帕斯|r
.target Carlin Redpath
step
.abandon 4971 >>放弃时间问题
.isOnQuest 4971
step
.abandon 5781 >>放弃被遗忘的记忆
.isOnQuest 5781
step
.abandon 6133 >>Abandon 交任务: |cRXP_FRIENDLY_游侠之王的命令|r
.isOnQuest 6133
step
.abandon 6024 >>Abandon Hameya's Plea
.isOnQuest 6024
step
.abandon 5168 >>抛弃达罗郡的英雄
.isOnQuest 5168
step
.abandon 6025 >>放弃未完成的业务
.isOnQuest 6025
step
#phase 6
#ah
.goto Eastern Plaguelands,80.937,58.515
+|cRXP_WARN_如果您购买了|r|T133614:0|t[黑铁碎片]|cRXP_WARN_/|r|T134139:0|t[元素核心]|cRXP_WARN_//|r|T133571:0|t[地穴恶魔零件]|cRX P_WARN_/|r|t 133724:0|t][骨碎片]| cRX P_WARN_/|r | T136074:0|t[野蛮霜]| cRXP_WARN_请将它们从您的邮件中取出。如果您没有购买，请跳过此步骤|r
.itemcount 22529,<30 
.itemcount 22526,<30 
.itemcount 22525,<30 
.itemcount 22527,<30 
.itemcount 22528,<30 
step
#phase 6
#completewith 5TurnIns
>>|cRXP_WARN_如果你没有接受这些任务所需的声望，就在附近的|cRXP_ENEMY_Undad|r上磨一磨，直到你与银色黎明友好为止|r
.reputation 529,friendly
step
#phase 6
#ah
#optional
.goto Eastern Plaguelands,81.200,59.000
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱茵|r
.accept 9136 >>接任务: |cRXP_WARN_蛮荒之叶|r
.turnin 9136 >>交任务: |cRXP_FRIENDLY_蛮荒之叶|r
.itemcount 22529,30
.target Rayne
step
#phase 6
#ah
#optional
.goto Eastern Plaguelands,81.505,58.556
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_猎手雷奥普德|r
.accept 9124 >>接任务: |cRXP_WARN_地穴追猎者护甲的材料……|r
.turnin 9124 >>交任务: |cRXP_FRIENDLY_地穴追猎者护甲的材料……|r
.itemcount 22525,30
.target Huntsman Leopold
step
#phase 6
#ah
#optional
.goto Eastern Plaguelands,81.428,58.507
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杀手洛汗|r
.accept 9126 >>接任务: |cRXP_WARN_骨镰的材料|r
.turnin 9126 >>交任务: |cRXP_FRIENDLY_骨镰的材料|r
.itemcount 22526,30
.target Rohan the Assassin
step
#phase 6
#ah
#optional
.goto Eastern Plaguelands,81.523,58.269
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大法师安吉拉·杜萨图斯|r
.accept 9128 >>接任务: |cRXP_WARN_元素交易|r
.turnin 9128 >>交任务: |cRXP_FRIENDLY_元素交易|r
.itemcount 22527,30
.target Archmage Angela Dosantos
step
#phase 6
#ah
#optional
#label 5TurnIns
.goto Eastern Plaguelands,81.798,58.079
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korfax|r
.accept 9131 >>接任务: |cRXP_WARN_无畏护甲的材料|r
.turnin 9131 >>交任务: |cRXP_FRIENDLY_无畏护甲的材料|r
.itemcount 22528,30
.target Korfax, Champion of the Light

step
.goto Eastern Plaguelands,80.22,57.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔吉亚|r
.fly Badlands >>飞到荒地
.target Georgia
.zoneskip Badlands
.dungeon BRD
step
#completewith KargathBRDQuests
+你现在将开始收集贝莱德深渊的任务。
>>贝莱德深渊是一个非常复杂的地牢。为了以最有效的方式完成所有任务，需要在中途离开地牢以提交/接受后续任务，这样才能在一次运行中完成所有任务。
>>尽量确保所有成员都完成了相同的任务和预任务，并有2-3小时的游戏时间。
.dungeon BRD

step
.goto Badlands,3.77,47.47
>>单击|cRXP_PICK_Wanted海报|r
.accept 4081 >>接任务: |cRXP_WARN_格杀勿论：黑铁矮人|r
.dungeon BRD
step
.goto Badlands,3.31,48.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑德哈特|r
>>|cRXP_WARN_他可能正在Kargath的山上巡逻。找到他或等待他回来|r
.accept 3906 >>接任务: |cRXP_WARN_不和谐的烈焰|r
.unitscan Thunderheart
.dungeon BRD
step
.goto Badlands,2.90,47.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗法师薇薇安·拉格雷|r
.accept 7201 >>接任务: |cRXP_WARN_最后的元素|r
.accept 4134 >>接任务: |cRXP_WARN_遗失的雷酒秘方|r
.target Shadowmage Vivian Lagrave
.dungeon BRD
step
#label KargathBRDQuests
.goto Badlands,3.03,47.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞朵拉·穆瓦丹尼|r
.accept 4061 >>接任务: |cRXP_WARN_机器的崛起|r
.target Hierophant Theodora Mulvadania
.dungeon BRD
step
#completewith next
+如果你的团队中有法师，请将你的炉石设置为Kargath！
.dungeon BRD
step
.goto Badlands,3.98,44.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里克|r
.fly Flame Crest >>Fly to Flame Crest
.target Gorrik
.zoneskip Burning Steppes
.dungeon BRD

step
.goto Burning Steppes,65.152,23.911
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯沃特·尤博格林|r
.accept 4123 >>接任务: |cRXP_WARN_山脉之心|r
.target Maxwort Uberglint
.dungeon BRD
step
.goto Burning Steppes,66.058,21.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤卡·斯库比格特|r
.accept 4136 >>接任务: |cRXP_WARN_雷布里·斯库比格特|r
.target Yuka Screwspigot
.dungeon BRD
step
#loop
.goto Burning Steppes,62.74,34.92,60,0
.goto Burning Steppes,57.43,36.36,60,0
.goto Burning Steppes,53.03,39.25,60,0
.goto Burning Steppes,59.19,40.17,60,0
.goto Burning Steppes,63.33,43.19,60,0
.goto Burning Steppes,67.37,44.38,60,0
>>杀死|cRXP_ENEMY_War Reavers|r。掠夺他们的|cRXX_Loot_Shard|r
>>|cRXP_WARN_完成此操作将解锁可选的BRD任务。可以跳过|r
.complete 4061,1 
.mob War Reaver
.dungeon BRD
step
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
>>选择选项：“我向你出示我的事迹证明，居鲁士。”
.accept 4022 >>接任务: |cRXP_LOOT_烈焰精华|r
.turnin 4022 >>交任务: |cRXP_FRIENDLY_烈焰精华|r
.itemcount 10575,1 
.target Cyrus Therepentous
.isQuestTurnedIn 3481
.dungeon BRD
step
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
>>如果您错过了|T134430:0|t[黑蜻蜓熔化]，并且无法完成任务，请与|cRXP_FRIENDLY_Cyrus|r交谈并选择选项：“我没有任何证据，Cyrus。”
>>这将在小洞穴的入口处产生一条54级精英龙。确保你身边有队员帮助杀死它，然后掠夺它以获得|T134430:0|t[黑蜻蜓熔化]
>>选择后面的选项：“我向你出示我的事迹证明，居鲁士。”
.collect 10575,1,4022,1 
.accept 4022 >>接任务: |cRXP_LOOT_烈焰精华|r
.turnin 4022 >>交任务: |cRXP_FRIENDLY_烈焰精华|r
.target Cyrus Therepentous
.isQuestAvailable 4022
.dungeon BRD
step
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
.accept 4024 >>接任务: |cRXP_LOOT_烈焰精华|r
.target Cyrus Therepentous
.isQuestTurnedIn 4022
.dungeon BRD

step
#completewith CoreAttunement
.subzone 25 >>前往贝莱德山
.dungeon BRD
step
#softcoreserver
#softcore
+故意死在贝莱德山的熔岩中，最好是在熔融核心入口附近
>>要执行此步骤，您必须是|T132331:0|t[Ghost]才能在Blackrock Mountain内与|cRXP_FRIENDLY_Francklorn Forgewright|r对话。完成任务后在尸体前复活
.goto 1415,48.624,64.186
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗兰克罗恩·铸铁|r
.accept 3801 >>接任务: |cRXP_WARN_黑铁的遗产|r
.turnin 3801 >>交任务: |cRXP_FRIENDLY_黑铁的遗产|r
.accept 3802 >>接任务: |cRXP_WARN_黑铁的遗产|r
.target Franclorn Forgewright
.dungeon BRD
step
#hardcoreserver
.goto 1415,48.656,64.134
.cast 417803 >>单击Embersight的|cRXP_PICK_Brazier |r以获得|T136215:0|t[Emberglow Vision]debuff
.dungeon BRD
step
#hardcoreserver
.goto 1415,48.624,64.186
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗兰克罗恩·铸铁|r
>>你必须有|T136215:0|t[Emberglow Vision]的debuff才能看到他
.accept 3801 >>接任务: |cRXP_WARN_黑铁的遗产|r
.turnin 3801 >>交任务: |cRXP_FRIENDLY_黑铁的遗产|r
.accept 3802 >>接任务: |cRXP_WARN_黑铁的遗产|r
.target Franclorn Forgewright
.dungeon BRD
step
#label CoreAttunement
.goto 1415,48.409,63.815
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛索斯·天痕|r
.accept 7848 >>接任务: |cRXP_WARN_熔火之心的传送门|r
.target Lothos Riftwaker
.dungeon BRD
step
>>杀死|cRXP_ENEMY_Overmaster Pyron|r
>>|cRXP_ENEMY_BRD实例门户外部的Overmaster Pyron |r|cRXP_WARN_trols|r
.complete 3906,1 
.mob Overmaster Pyron
.isOnQuest 3906
.dungeon BRD
step
#label EnterBRD1
.subzone 1584 >>输入Blackrock Depths实例
.dungeon BRD
step
>>杀死|cRXP_ENEMY_Anvilrage矮人|r
.complete 4081,1 
.complete 4081,2 
.complete 4081,3 
.mob Anvilrage Guardsman
.mob Anvilrage Warden
.mob Anvilrage Footman
.isOnQuest 4081
.dungeon BRD
step
#completewith next
+Travel back to Kargath
.dungeon BRD
step
.goto Badlands,3.31,48.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑德哈特|r
>>|cRXP_WARN_他可能正在Kargath的山上巡逻。找到他或等待他回来|r
.turnin 3906 >>交任务: |cRXP_FRIENDLY_不和谐的烈焰|r
.unitscan Thunderheart
.isQuestComplete 3906
.dungeon BRD
step
.goto Badlands,3.31,48.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑德哈特|r
>>|cRXP_WARN_他可能正在Kargath的山上巡逻。找到他或等待他回来|r
.accept 3907 >>接任务: |cRXP_WARN_不和谐的火焰|r
.unitscan Thunderheart
.isQuestTurnedIn 3906
.dungeon BRD
step
.goto Badlands,3.03,47.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞朵拉·穆瓦丹尼|r
.turnin 4061 >>交任务: |cRXP_FRIENDLY_机器的崛起|r
.target Hierophant Theodora Mulvadania
.isQuestComplete 4061
.dungeon BRD
step
.goto Badlands,3.03,47.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞朵拉·穆瓦丹尼|r
.accept 4062 >>接任务: |cRXP_WARN_机器的崛起|r
.target Hierophant Theodora Mulvadania
.isQuestTurnedIn 4061
.dungeon BRD
step
.goto Badlands,5.81,47.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军官高图斯|r
.turnin 4081 >>交任务: |cRXP_FRIENDLY_格杀勿论：黑铁矮人|r
.target Warlord Goretooth
.isQuestComplete 4081
.dungeon BRD
step
.goto Badlands,5.96,47.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_神射手贾拉玛弗|r
.accept 3981 >>接任务: |cRXP_WARN_指挥官哥沙克|r
.target Galamav the Marksman
.isQuestTurnedIn 3906
.dungeon BRD
step
.goto Badlands,3.97,46.77
>>单击|cRXP_PICK_Wanted海报|r
.accept 4082 >>接任务: |cRXP_WARN_格杀勿论：高阶黑铁军官|r
.isQuestTurnedIn 4081
.dungeon BRD
step
.goto Badlands,25.95,44.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 4062 >>交任务: |cRXP_FRIENDLY_机器的崛起|r
.accept 4063 >>接任务: |cRXP_WARN_机器的崛起|r
.target Lotwil Veriatus
.isQuestTurnedIn 4061
.dungeon BRD
step
#label EnterBRD2
.subzone 1584 >>返回Blackrock Mountain并进入Blackrock Depths实例
.dungeon BRD
step
#completewith WhatsGoingOn
>>杀死|cRXP_ENEMY_Fire元素|r和|cRXX_ENEMY_Golems|r。掠夺它们的|cRXP_Loot_元素本质|r
>>|cRXP_WARN_现在不需要完成此任务|r
.complete 7201,1 
.isOnQuest 7201
.dungeon BRD
step
#completewith next
+完成“法律之环”老板活动，然后从隧道出口向上，立即右转，穿过法律之环顶部，前往金库
.dungeon BRD
step
>>在安全墙内偷走|cRXP_Loot_The Heart of The Mountain |r。它需要15秒才能重生
>>有一个技巧可以让你在不打开保险箱的情况下抢劫它。查看下面的链接，了解如何完成
.complete 4123,1 
.link https://clips.twitch.tv/GenerousCarefulHerringNomNom-4BUCn6yI1dMozIkF >>点击此处查看如何掠夺山之心
.isOnQuest 4123
.dungeon BRD
step
>>杀死|cRXP_ENEMY_Fineous Darkwire|r。掠夺他获得|cRXX_Loot_INFEL|r
.complete 3802,1 
.target Fineous Darkvire
.isOnQuest 3802
.dungeon BRD
step
>>杀死|cRXP_ENEMY_燃烧领主|r
.complete 3907,1 
.target Lord Incendius
.isOnQuest 3907
.dungeon BRD
step
>>在法律之环上方的位置附近往回跑
>>单击|cRXP_PICK_法国遗忘纪念碑|r
.turnin 3802 >>交任务: |cRXP_FRIENDLY_黑铁的遗产|r
.isQuestComplete 3802
.dungeon BRD
step
#completewith next
>>杀死|cRXP_ENEMY_Anvilrage矮人|r
.complete 4082,1 
.complete 4082,2 
.complete 4082,3 
.mob Anvilrage Medic
.mob Anvilrage Soldier
.mob Anvilrage Officer
.isOnQuest 4082
.dungeon BRD
step
>>前往入口处的影之门
>>杀死|cRXP_ENEMY_Bael-Gar|r
.use 11231 >>|cRXP_WARN_在他的尸体上使用|r|T134430:0|t[Altered Black Dragonflight Molt]|cRXP_WARN_|r
.complete 4024,1 
.mob Bael'Gar
.isOnQuest 4024
.dungeon BRD
step
>>完成击杀|cRXP_ENEMY_Anvilrage矮人|r
.complete 4082,1 
.complete 4082,2 
.complete 4082,3 
.mob Anvilrage Medic
.mob Anvilrage Soldier
.mob Anvilrage Officer
.isOnQuest 4082
.dungeon BRD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官哥沙克|r
>>如果你的团队没有盗贼，你可能需要杀死|cRXP_ENEMY_High Interrogator Gerstahn|r以获得|cRXP_LOOT_Prison Cell Key|r来开门
>>|cRXP_WARN_确保所有党员都自动接受此步骤！RestedXP已关闭此步骤的自动接受功能|r
.turnin 3981 >>交任务: |cRXP_FRIENDLY_指挥官哥沙克|r
.accept 3982,1 >>接任务: |cRXP_WARN_[What Is Going On?]|r
.target Commander Gor'shak
.dungeon BRD
step
>>防御|cRXP_FRIENDLY_Commander Gor'shak|r免受来袭的|cRXP-ENEMY_Anvilrage Dwarves的攻击|r
.complete 3982,1 
.target Commander Gor'shak
.isQuestTurnedIn 3981
.dungeon BRD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_指挥官哥沙克|r
.turnin 3982 >>交任务: |cRXP_FRIENDLY_出了什么事？|r
.accept 4001 >>接任务: |cRXP_WARN_[What Is Going On?]|r
.target Commander Gor'shak
.isQuestTurnedIn 3981
.dungeon BRD
step
#label WhatsGoingOn
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡兰·巨锤|r
>>|cRXP_WARN_他位于大厅对面|r|cRXP_FRIENDLY_Commander Gor'shak|r
.complete 4001,1 
.target Kharan Mighthammer
.skipgossip
.isQuestTurnedIn 3981
.dungeon BRD
step
#completewith next
+向Everlook致敬，飞往Orgrimmar。如果你有法师，请请求一个通往奥格里玛的入口
.dungeon BRD
step
.goto Orgrimmar,31.74,37.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
.turnin 4001 >>交任务: |cRXP_FRIENDLY_出了什么事？|r
.accept 4002 >>接任务: |cRXP_WARN_东部王国|r
.target Thrall
.isQuestTurnedIn 3982
.dungeon BRD
step
.goto Orgrimmar,31.74,37.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
.complete 4002,1
.target Thrall
.isQuestTurnedIn 3982
.dungeon BRD
step
.goto Orgrimmar,31.74,37.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
.turnin 4002 >>交任务: |cRXP_FRIENDLY_东部王国|r
.accept 4003 >>接任务: |cRXP_WARN_拯救公主|r
.target Thrall
.isQuestTurnedIn 3982
.dungeon BRD
step
#completewith EnterBRD3
+如果你把你的炉石放在那里，那就把炉石放在卡加特。如果你不这样做，就把齐柏林飞艇带到Stranglethorn，然后飞到那里
.dungeon BRD
step
.goto Badlands,3.31,48.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_桑德哈特|r
>>|cRXP_WARN_他可能正在Kargath的山上巡逻。找到他或等待他回来|r
.turnin 3907 >>交任务: |cRXP_FRIENDLY_不和谐的火焰|r
.unitscan Thunderheart
.isQuestComplete 3907
.dungeon BRD
step
.goto Badlands,2.90,47.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗法师薇薇安·拉格雷|r
.turnin 7201 >>交任务: |cRXP_FRIENDLY_最后的元素|r
.target Shadowmage Vivian Lagrave
.isQuestComplete 7201
.dungeon BRD
step
.goto Badlands,5.81,47.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_军官高图斯|r
.turnin 4082 >>交任务: |cRXP_FRIENDLY_格杀勿论：高阶黑铁军官|r
.target Warlord Goretooth
.isQuestComplete 4082
.dungeon BRD
step
#label EnterBRD3
.subzone 1584 >>Enter Blackrock Depths
.dungeon BRD
step
#completewith PrincessSaved
>>杀死|cRXP_ENEMY_Fire元素|r和|cRXX_ENEMY_Golems|r。掠夺它们的|cRXP_Loot_元素本质|r
.complete 7201,1 
.isOnQuest 7201
.dungeon BRD
step
>>杀死|cRXP_ENEMY_Golem Lord Argelmach|r。掠夺他的|cRXX_Loot_Head |r
>>杀死|cRXP_ENEMY_Golems|r。掠夺他们的|cRXX_Loot_Elemental Core|r
.complete 4063,1 
.complete 4063,2 
.mob Golem Lord Argelmach
.dungeon BRD
step
#completewith next
>>进入酒吧，进入左边的小房间。在酒吧奔跑时，不要攻击任何中立暴徒
>>点击3|cRXP_PICK_Thunderbrew Lager Kegs|r摧毁它们，迫使|cRXD_ENEMY_Hurley Blackbreath |r和他的3|cRX _ENEMY_Blackbreath Cronies|r交战
>>杀死|cRXP_ENEMY_Hurley Blackbreath |r。掠夺他获得|cRXX_Loot_丢失的霹雳配方|r
.complete 4134,1 
.target Hurley Blackbreath
.isOnQuest 4134
.dungeon BRD
step
>>进入酒吧，进入左边的小房间。在酒吧奔跑时，不要攻击任何中立暴徒
>>杀死|cRXP_ENEMY_Ribbly Screwspike|r。抢走他的|cRXX_Loot_Head|r
>>要与|cRXP_ENEMY_Ribbly Screwspit|r交战，请坦克与他交谈，然后将他和他的|cRXX_ENEMY_Cronies|r带着小桶带回房间
.complete 4136,1 
.target Ribbly Screwspigot
.skipgossip
.isOnQuest 4136
.dungeon BRD
step
>>进入酒吧，进入左边的小房间。在酒吧奔跑时，不要攻击任何中立暴徒
>>点击3|cRXP_PICK_Thunderbrew Lager Kegs|r摧毁它们，迫使|cRXD_ENEMY_Hurley Blackbreath |r和他的3|cRX _ENEMY_Blackbreath Cronies|r交战
>>杀死|cRXP_ENEMY_Hurley Blackbreath |r。掠夺他获得|cRXX_Loot_丢失的霹雳配方|r
.complete 4134,1 
.isOnQuest 4134
.dungeon BRD
step
>>在熔芯实例入口外的地面上掠夺|cRXP_Loot_Core碎片|r
.complete 7848,1 
.isOnQuest 7848
.dungeon BRD
step
>>杀死|cRXP_ENEMY_达格兰·塔里桑皇帝|r
>>|cRXP_WARN_您不能为了完成并完成此任务而杀死|cRXP_ENEMY_公主莫伊拉·布蓝胡子|r|r
>>|cRXP_WARN_让一名党员风筝|cRXP_ENEMY_公主Moira Bronzebeard|r，而其他人杀死|r|cRXX_ENEMY_Emperor Dagran Thaurissan|r
.complete 4003,1 
.isOnQuest 4003
.dungeon BRD
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁炉堡公主茉艾拉·铜须|r
.turnin 4003 >>交任务: |cRXP_FRIENDLY_拯救公主|r
.accept 4004 >>接任务: |cRXP_WARN_拯救公主？|r
.target Princess Moira Bronzebeard
.isQuestComplete 4003
.dungeon BRD
step
#label PrincessSaved
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_铁炉堡公主茉艾拉·铜须|r
.accept 4004 >>接任务: |cRXP_WARN_拯救公主？|r
.target Princess Moira Bronzebeard
.isQuestTurnedIn 4003
.dungeon BRD
step
#completewith KargathTurnins
+Heath或返回Kargath
.dungeon BRD
step
.goto Badlands,2.90,47.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗法师薇薇安·拉格雷|r
.turnin 4134 >>交任务: |cRXP_FRIENDLY_遗失的雷酒秘方|r
.target Shadowmage Vivian Lagrave
.isQuestComplete 4134
.dungeon BRD
step
.goto Badlands,2.90,47.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗法师薇薇安·拉格雷|r
.turnin 7201 >>交任务: |cRXP_FRIENDLY_最后的元素|r
.target Shadowmage Vivian Lagrave
.isQuestComplete 7201
.dungeon BRD
step
#label KargathTurnins
.goto Badlands,25.95,44.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特维尔·沃拉图斯|r
.turnin 4063 >>交任务: |cRXP_FRIENDLY_机器的崛起|r
.target Lotwil Veriatus
.isQuestTurnedIn 4062
.dungeon BRD
step
.goto Badlands,3.98,44.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格里克|r
.fly Flame Crest >>Fly to Flame Crest
.target Gorrik
.zoneskip Burning Steppes
.dungeon BRD
step
.goto Burning Steppes,65.152,23.911
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦克斯沃特·尤博格林|r
.turnin 4123 >>交任务: |cRXP_FRIENDLY_山脉之心|r
.target Maxwort Uberglint
.isQuestComplete 4123
.dungeon BRD
step
.goto Burning Steppes,66.058,21.951
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤卡·斯库比格特|r
.turnin 4136 >>交任务: |cRXP_FRIENDLY_雷布里·斯库比格特|r
.target Yuka Screwspigot
.isQuestComplete 4136
.dungeon BRD
step
.goto Burning Steppes,95.061,31.563
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞勒斯·萨雷芬图斯|r
.turnin 4024 >>交任务: |cRXP_FRIENDLY_烈焰精华|r
.target Cyrus Therepentous
.dungeon BRD
.isQuestComplete 4024
step
.goto 1415,48.409,63.815
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛索斯·天痕|r
>>|cRXP_WARN_你可以现在就交，也可以下次在贝莱德山时交|r
.turnin 7848 >>交任务: |cRXP_FRIENDLY_熔火之心的传送门|r
.target Lothos Riftwaker
.isQuestComplete 7848
.dungeon BRD
step
#completewith next
+向Everlook致敬，飞往Orgrimmar。如果你有法师，请请求一个通往奥格里玛的入口
.dungeon BRD
step
.goto Orgrimmar,31.74,37.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨尔|r
.turnin 4004 >>交任务: |cRXP_FRIENDLY_拯救公主？|r
.target Thrall
.isQuestTurnedIn 4003
.dungeon BRD
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 50-60
#classic
<< Horde
#name 59-59冬泉/Silithus I
#next 59-60冬泉/Silithus II
step
#completewith ChillyHorns
+飞或心到Everlook
.zoneskip Winterspring
.dungeon BRD
step
#completewith ChillyHorns
.hs >>Hearth to Everlook公司公司
.use 6948
.zoneskip Winterspring
.dungeon !BRD
step
#era/som
#label ChillyHorns
.goto Winterspring,61.60,38.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲诺克|r
.accept 4809 >>接任务: |cRXP_WARN_冰风奇美拉角|r
.target Felnok Steelspring
step
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.accept 5056 >>接任务: |cRXP_WARN_希洛塔姆|r
.target Storm Shadowhoof
.group
step
#era/som
.goto Winterspring,60.90,37.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.accept 977 >>接任务: |cRXP_LOOT_雪怪计划！|r
.target Umi Rumplesnicker
step
#completewith next
.subzone 2241 >>前往冰刀岩
.group
step
#completewith next
#loop
.goto Winterspring,50.54,14.27,50,0
.goto Winterspring,48.52,12.15,50,0
.goto Winterspring,49.72,8.84,50,0
.goto Winterspring,48.54,7.89,50,0
.goto Winterspring,49.67,7.03,50,0
.goto Winterspring,51.94,9.31,50,0
.goto Winterspring,51.64,11.34,50,0
>>杀死|cRXP_ENEMY_Frostsabers|r。掠夺它们|T133298:0|t[|cRXP-Loot_神圣的Frostsaber肉|r]
.collect 12733,1,5056,1 
.mob Frostsaber Pride Watcher
.mob Frostsaber Huntress
.mob Frostsaber Stalker
.mob Frostsaber Cub
.mob Frostsaber
.group 0
step
.goto Winterspring,49.68,9.75
.use 12733 >>将|T133298:0|t[|cRXP_LOOT_神圣冰刀肉|r]放在石头上
>>杀死出现的|cRXP_ENEMY_Shy-Rotam|r
.complete 5056,1 
.unitscan Shy-Rotam
.group 3
step
#era/som
.loop 25,Winterspring,64.0,22.6,65.6,23.2,67.6,22.6,65.6,19.6,63.6,16.2,65.6,19.6,64.0,20.8,64.0,22.6
>>杀死|cRXP_ENEMY_狂暴猫头鹰|r。掠夺它们一个|T133298:0|t[|cRXD_Loot_Blue-Fathered Necklace|r]。使用它来接受任务
.complete 4721,1 
.collect 12558,1,4721,1 
.accept 4882 >>接任务: |cRXP_WARN_守护秘密|r
.use 12558
.mob Berserk Owlbeast
step
#completewith next
>>杀死|cRXP_ENEMY_Winterfall Ursa|r，|cRXD_ENEMY_温特福尔萨满|r和|cRXP_ENEMY_温特福尔巢穴守望者|r
>>|cRXP_WARN_如果竞争太激烈，跳过这一步|r
.complete 8464,1 
.complete 8464,2 
.complete 8464,3 
.mob Winterfall Shaman
.mob Winterfall Den Watcher
.mob Winterfall Ursa
step
.goto Winterspring,69.62,38.31
>>杀死|cRXP_ENEMY_临冬城高级首领|r。掠夺他的|T133740:0|t[|cRXP-Loot_Crudely-writted Log|r]。使用它来接受任务
>>|cRXP_WARN_首先杀死|r|cRXP_ENEMY_Winterfall萨满|r|cRXP_WARN_first，然后重置以确保安全。如果可以的话，使用你的攻击性冷却和CC；他的霜震很重|r
.complete 5121,1 
.collect 12842,1,5123 
.accept 5123 >>接任务: |cRXP_LOOT_最后一片|r
.use 12842
.mob Winterfall Shaman
.unitscan High Chief Winterfall
step
.loop 25,Winterspring,67.6,34.1,66.4,34.3,65.9,35.3,66.6,36.3,67.5,35.5,68.4,35.7,68.3,37.3,67.5,37.9,66.8,37.3,65.6,37.7,66.7,39.1,68.0,39.4,68.8,37.7,68.4,35.7,67.6,34.1
>>杀死|cRXP_ENEMY_Winterfall Ursa|r，|cRXD_ENEMY_温特福尔萨满|r和|cRXP_ENEMY_温特福尔巢穴守望者|r
>>|cRXP_WARN_如果竞争太激烈，跳过这一步|r
.complete 8464,1 
.complete 8464,2 
.complete 8464,3 
.mob Winterfall Shaman
.mob Winterfall Den Watcher
.mob Winterfall Ursa
step
#era/som
.loop 25,Winterspring,66.5,41.7,64.9,40.2,65.9,43.6,66.2,45.8,67.6,45.6,67.6,43.8,67.2,43.0,67.6,41.9,68.4,41.5,69.00,41.3,69.5,40.0,69.8,41.8,70.1,42.0,70.3,40.8,71.3,40.8,71.8,39.8,70.5,38.3,71.8,39.8,71.3,40.8,70.3,40.8,69.5,40.0,69.00,41.3,68.4,41.5,66.5,41.7
>>杀死|cRXP_ENEMY_Ice Thistle Patriarchs and Matriachs|r，直到你掠夺一个|cRXX_loot_Pristine Yeti Horn|r
.complete 977,1 
.mob Ice Thistle Patriarch
.mob Ice Thistle Matriarch
step
#era/som
.loop 25,Winterspring,67.6,48.2,66.2,52.4,63.6,47.2,61.6,45.0,58.2,45.0,57.4,46.6,55.4,49.0,55.2,46.4,48.6,45.0,44.8,42.2,44.0,36.0,48.0,36.6,49.4,34.4,54.0,36.8,56.6,25.6,55.6,22.4,58.0,19.8,60.6,23.6,66.4,26.8,65.6,32.6,62.4,36.2,61.2,41.6,67.6,48.2
>>杀死Everlook以北的所有冷风奇马。掠夺他们的|cRXP_Loot_Horns|r
.complete 4809,1 
.mob Fledgling Chillwind
.mob Chillwind Chimaera
.mob Chillwind Ravager
step << !Shaman
#completewith next
#softcore
.deathskip >>在Everlook的|cRXP_FRIENDLY_Spirit Healer|r处死亡并重生
step << Shaman
#completewith next
.hs >>Hearth或Astral召回Everlook
step << Shaman
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
#era/som
.goto Winterspring,61.6,38.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲诺克|r
.turnin 4809 >>交任务: |cRXP_FRIENDLY_冰风奇美拉角|r
.target Felnok Steelspring
step
.goto Winterspring,61.93,38.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Storm|r
.turnin 5056 >>交任务: |cRXP_FRIENDLY_希洛塔姆|r
.target Storm Shadowhoof
.isQuestComplete 5056
.group
step
#era/som
.goto Winterspring,60.90,37.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.turnin 977 >>交任务: |cRXP_FRIENDLY_雪怪计划！|r
.accept 5163 >>接任务: |cRXP_LOOT_雪怪计划！|r
.target Umi Rumplesnicker
step
#era/som
.goto Winterspring,61.50,38.60
.use 12928 >>在|cRXP_FRIENDLY_Legacki|r上使用|T133003:0|t[机械Yeti]
.complete 5163,1 
.target Legacki
step << !Shaman
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
#completewith next
.goto Winterspring,31.30,45.20,60 >>返回|cRXP_FRIENDLY_Donova|r
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 5121 >>交任务: |cRXP_FRIENDLY_冬泉酋长|r
.turnin 5123 >>交任务: |cRXP_FRIENDLY_最后一片|r
.accept 5128 >>接任务: |cRXP_LOOT_熊怪酋长的话|r
.turnin 8464 >>交任务: |cRXP_FRIENDLY_冬泉熊怪的活动|r
.target Donova Snowden
.isQuestComplete 8464
step
.goto Winterspring,31.30,45.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donova|r
.turnin 5121 >>交任务: |cRXP_FRIENDLY_冬泉酋长|r
.turnin 5123 >>交任务: |cRXP_FRIENDLY_最后一片|r
.accept 5128 >>接任务: |cRXP_LOOT_熊怪酋长的话|r
.target Donova Snowden
step << !Druid
#completewith RabineSaturna
.goto Winterspring,27.40,33.64,40,0
.goto Winterspring,25.70,31.93,40,0
.goto Winterspring,25.35,31.36,40,0
.goto Winterspring,26.36,28.04,40,0
.goto Winterspring,26.61,24.49,40,0
.goto Winterspring,26.59,24.17
.zone Moonglade >>前往: |cRXP_PICK_月光林地|r
step << Druid
#completewith RabineSaturna
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << Druid
#optional
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 22829 >>训练你的职业技能
.target Loganaar
.xp <56,1
.xp >58,1
step << Druid
#label DruidTraining10
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 9850 >>训练你的职业技能
.target Loganaar
.xp <58,1
step
#label RabineSaturna
.goto Moonglade,51.70,45.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 1123 >>交任务: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.accept 1124 >>接任务: |cRXP_WARN_废土|r
.target Rabine Saturna
step
.goto Moonglade,51.68,45.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉比恩·萨图纳|r
>>|cRXP_WARN_如果Dire Maul对话不可用，请跳过此步骤。如果你去过Dire Maul的户外区域/在任何时候发现了Dire Maur，它都可以使用|r
.accept 5527 >>接任务: |cRXP_WARN_净化之匣|r
.target Rabine Saturna
.skipgossip
step
#era/som
.goto Moonglade,32.10,66.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法斯托恩|r
.fp Moonglade >>获取Moonglade飞行路线 << !Druid
.fly Felwood>>Fly to Felwood
.target Faustron
step
#era/som
.goto Felwood,34.80,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特鲁尔·法贝恩|r
.turnin 4721 >>交任务: |cRXP_FRIENDLY_冬泉谷的枭兽|r
.turnin 4882 >>交任务: |cRXP_FRIENDLY_守护秘密|r
.accept 4883 >>接任务: |cRXP_WARN_守护秘密|r
.target Trull Failbane
.isQuestComplete 4721
step
#era/som
.goto Felwood,34.80,52.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特鲁尔·法贝恩|r
.turnin 4882 >>交任务: |cRXP_FRIENDLY_守护秘密|r
.accept 4883 >>接任务: |cRXP_WARN_守护秘密|r
.target Trull Failbane
step
#era/som
.goto Felwood,51.14,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科雷克·望天|r
.turnin 5128 >>交任务: |cRXP_FRIENDLY_熊怪酋长的话|r
.target Kelek Skykeeper
.isQuestTurnedIn 5123
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4084 >>交任务: |cRXP_FRIENDLY_银爪铁心|r
.accept 4005 >>接任务: |cRXP_WARN_亚奎门塔斯|r
.target Eridan Bluewind
step
#era/som
#softcore
.isQuestTurnedIn 3912
.goto Felwood,51.350,81.511
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 4084 >>交任务: |cRXP_FRIENDLY_银爪铁心|r
.accept 4005 >>接任务: |cRXP_WARN_亚奎门塔斯|r
.target Eridan Bluewind
step
#completewith next
.subzone 431 >>前往Splintertree Post
.cooldown item,6948,<0,1
step
.goto Ashenvale,73.18,61.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌尔格拉|r
.fly Azshara>>Fly to Azshara
.target Vhulgra
.cooldown item,6948,<0,1
.zoneskip Azshara
step
#completewith next
.hs >>心回冬泉
.use 6948
.cooldown item,6948,>0,1
step
.goto Winterspring,61.36,38.83,30 >>Arrive in Winterspring
.zoneskip Winterspring
step
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤格雷克|r
.fly Azshara>>Fly to Azshara
.target Yugrek
.zoneskip Winterspring,1
step
.goto Azshara,22.50,51.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰迪加|r
.turnin 3564 >>交任务: |cRXP_FRIENDLY_安德隆的报酬|r
.target Jediga
.isOnQuest 3564
step << !Mage
.goto Azshara,22.00,49.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克隆姆|r
.fly Thunder Bluff>>前往: |cRXP_PICK_雷霆崖|r
.target Kroum
.zoneskip Thunder Bluff
step << Mage
.cast 3566 >>演员阵容|T135765:0|t[电视剧：雷霆崖]
.zoneskip Thunder Bluff
step << Mage
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10157 >>训练你的职业技能
.target Thurston Xane
.xp <56,1
.xp >58,1
step << Mage
#optional
.goto Thunder Bluff,25.18,20.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟斯顿·科萨恩|r
.train 10054 >>训练你的职业技能
.target Thurston Xane
.xp <58,1
step
#ah
#completewith next
.goto Thunder Bluff,45.22,59.40
+如果您早些时候买了足够的布料，请转到邮箱并取回以下物品：
.collect 2592,60 
.collect 4306,60 
.collect 4338,60 
.collect 14047,60 
step
#ah
.goto Thunder Bluff,43.3,42.8
>>|cRXP_WARN_禁用任何其他自动提交信誉项目的插件，否则你稍后会被告知再次购买布料|r
>>如果你没有足够的捐款，可以从拍卖行购买3叠每种布料
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉姆斯塔格|r
.turnin 7820 >>交任务: |cRXP_FRIENDLY_捐献毛料|r
.turnin 7821 >>交任务: |cRXP_FRIENDLY_捐献丝绸|r
.turnin 7822 >>交任务: |cRXP_FRIENDLY_捐献魔纹布|r
.turnin 7823 >>交任务: |cRXP_FRIENDLY_捐献符文布|r
.target Auctioneer Stampi
.target Rumstag Proudstrider
step
.goto Thunder Bluff,75.80,31.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
.turnin 4987 >>交任务: |cRXP_FRIENDLY_雕文橡木枝|r
.turnin 4883 >>交任务: |cRXP_FRIENDLY_守护秘密|r
.target Nara Wildmane
step << Hunter
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14305 >>训练你的职业技能
.target Urek Thunderhorn
.xp <56,1
.xp >58,1
step << Hunter
#optional
.goto Thunder Bluff,59.11,86.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌瑞克·雷角|r
.train 14322 >>训练你的职业技能
.target Urek Thunderhorn
.xp <58,1
step << Warrior
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 20662 >>训练你的职业技能
.target Ker Ragetotem
.xp <56,1
.xp >58,1
step << Warrior
#optional
.goto Thunder Bluff,57.56,85.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
.train 11597 >>训练你的职业技能
.target Ker Ragetotem
.xp <58,1
step << Shaman
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 10432 >>训练你的职业技能
.target Tigor Skychaser
.xp <56,1
.xp >58,1
step << Shaman
#optional
.goto Thunder Bluff,22.84,21.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_提戈尔·逐星|r
.train 10473 >>训练你的职业技能
.target Tigor Skychaser
.xp <58,1
step << Priest
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10929 >>训练你的职业技能
.target Malakai Cross
.xp <56,1
.xp >58,1
step << Priest
#optional
.goto Thunder Bluff,24.56,22.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马拉凯·克罗斯|r
.train 10947 >>训练你的职业技能
.target Malakai Cross
.xp <58,1
step << Druid
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 22829 >>训练你的职业技能
.target Turak Runetotem
.xp <56,1
.xp >58,1
step << Druid
#optional
.goto Thunder Bluff,76.46,27.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_图拉克·符文图腾|r
.train 9850 >>训练你的职业技能
.target Tura
.xp <58,1
step
.goto Thunder Bluff,47.02,49.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
.fly Tanaris>>前往: 塔纳利斯
.target Tal
.zoneskip Tanaris
step
#som
#phase 3-6
#hardcore
.goto Tanaris,53.90,23.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加里杨|r
>>|cRXP_WARN_注意！只有当你在官方的硬核服务器上玩的时候，才能完成这个任务！在时代服务器上，这个任务会杀死你！|r
.turnin 3912 >>交任务: |cRXP_FRIENDLY_墓地相见|r 
.accept 3913 >>接任务: |cRXP_WARN_寻找墓碑|r 
.target Gaeriyan
step
#som
#phase 3-6
#softcore
.goto Tanaris,53.90,23.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加里杨|r
.turnin 3912 >>交任务: |cRXP_FRIENDLY_墓地相见|r 
.accept 3913 >>接任务: |cRXP_WARN_寻找墓碑|r 
.target Gaeriyan
step
#som
#phase 3-6
.goto Tanaris,53.80,29.10
>>单击|cRXP_PICK_A显眼的墓碑|r
.turnin 3913 >>交任务: |cRXP_FRIENDLY_寻找墓碑|r 
.accept 3914 >>接任务: |cRXP_WARN_林克的剑|r 
.isQuestTurnedIn 3912
step
#era/som
.goto Tanaris,51.56,26.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.accept 4504 >>接任务: |cRXP_LOOT_极度粘稠的沥青|r
.target Tran'rek
step
#era/som
.goto Tanaris,51.10,26.90
.use 12928 >>在|cRXP_FRIENDLY_Sprinkle|r上使用|T133003:0|t[机械Yeti]
.complete 5163,2 
.target Sprinkle
step
.goto Tanaris,50.90,27.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.accept 4507 >>接任务: |cRXP_LOOT_捕捉皇后|r
.target Alchemist Pestlezugg
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
#completewith next
.goto Tanaris,68.98,41.63
.subzone 1336 >>前往Lost Rigger Cove
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
#completewith next
#label SummonAquementas
.goto Tanaris,70.43,49.90
.cast 13978 >>|cRXP_WARN_使用|r|T133742:0|t[Book of Aquor]|cRXP_WARN_to在Lost Rigger Cove内的石头召唤圈召唤|cRXP-ENEMY_Aquementas|r|r
.timer 15,Aquementas RP
.use 11617 
.use 11169 
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
.goto Tanaris,70.43,49.93
>>杀死|cRXP_ENEMY_Aquementas|r
.complete 4005,1 
.use 11617 
.use 11169 
.mob Aquementas
step
.goto Tanaris,51.60,25.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bullkrek|r
.fly Un'Goro Crater >>飞到Un'Goro火山口
.target Bullkrek Ragefist
.zoneskip Un'Goro Crater
step
#era/som
#softcore
.isQuestTurnedIn 4084
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.turnin 4005 >>交任务: |cRXP_FRIENDLY_亚奎门塔斯|r
.accept 3961 >>接任务: |cRXP_WARN_林克的冒险|r
.target J.D. Collie
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
.goto Un'Goro Crater,41.918,2.703
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.turnin 4005 >>交任务: |cRXP_FRIENDLY_亚奎门塔斯|r
.accept 3961 >>接任务: |cRXP_WARN_林克的冒险|r
.target J.D. Collie
step
#era/som
#softcore
.isQuestTurnedIn 4084
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3961 >>交任务: |cRXP_FRIENDLY_林克的冒险|r
.accept 3962 >>接任务: |cRXP_WARN_结伴而行|r
.target Linken
step
#era/som
#hardcore
#hardcoreserver
.isQuestTurnedIn 4084
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3961 >>交任务: |cRXP_FRIENDLY_林克的冒险|r
.accept 3962 >>接任务: |cRXP_WARN_结伴而行|r
.target Linken
step
#som
#phase 3-6
.goto Tanaris,13.10,6.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3914 >>交任务: |cRXP_FRIENDLY_林克的剑|r 
.accept 3941 >>接任务: |cRXP_WARN_侏儒的援助|r 
.target Linken
.isQuestTurnedIn 4005
step
#som
#phase 3-6
.goto Tanaris,11.60,3.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科琳|r
.turnin 3941 >>交任务: |cRXP_FRIENDLY_侏儒的援助|r 
.timer 25,A Gnome's Assistance RP
.accept 3942 >>接任务: |cRXP_WARN_林克的记忆|r 
.target J.D. Collie
.isQuestTurnedIn 4005
step
#era/som
.goto Un'Goro Crater,43.70,9.40
.use 12928 >>在|cRXP_FRIENDLY_Quixxil|r上使用|T133003:0|t[机械Yeti]
.complete 5163,3 
.target Quixxil
step
#era/som
.loop 25,Un'Goro Crater,47.2,14.7,48.1,17.7,49.8,20.6,51.3,23.9,53.6,22.7,54.5,27.0,52.2,27.6,49.2,31.2,48.0,36.3,46.6,30.5,48.2,24.7,47.8,20.5,43.7,21.1,41.3,21.0,42.8,15.9,47.2,14.7
>>杀死|cRXP_ENEMY_Tar元素|r。掠夺它们的|cRXX_Loot_超级粘性焦油|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Tar Lord|r|cRXP_WARN_cast纠缠根|r << !Warrior !Rogue !Shaman
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Tar Lord|r|cRXP_WARN_cast纠缠根|r|cRXP_ENEMY_Tar野兽|r|cRXP_WARN_can在它们被击中时解除你的武装4秒|r << Warrior/Rogue/Shaman
.complete 4504,1 
.mob Tar Beast
.mob Tar Creeper
.mob Tar Lord
.mob Tar Lurker
step
#softcore
#era/som
.isOnQuest 3962
#completewith next
>>|cRXP_WARN_前往火羽岭的顶部|r
.cast 14247 >>|cRXP_WARN_装备|r|T135467:0|t[水之银图腾]|cRXP_WARN_in|r
>>|cRXP_WARN_使用|r|T135467:0|t[水之银图腾]|cRXP_WARN_on|cRXP_ENEMY_Blazerunner|r来驱散他的光环。他的光环会把你击退，他可以在战斗中周期性地重新塑造它。确保有人随时准备使用|r|T135467:0|t[水之银图腾]
.use 11522 
step
#softcore
#era/som
.isOnQuest 3962
.goto Un'Goro Crater,49.401,49.305
>>|cRXP_WARN_使用|r|T135467:0|t[水之银图腾]|cRXP_WARN_on|cRXX_ENEMY_Blazerunner|r驱散他的光环|r
>>杀死|cRXP_ENEMY_Blazerunner|r
.complete 3962,1 
.use 11522 
.mob Blazerunner
step
#softcore
#era/som
.isOnQuest 3962
.goto Un'Goro Crater,50.279,49.973
>>打开|cRXP_PICK_Ornate胸脯|r。为|cRXP _Loot_Golden Flame|r掠夺它
.complete 3962,2 
step
#era/som
#hardcore
#hardcoreserver
.isOnQuest 3962
#completewith next
>>|cRXP_WARN_前往火羽岭的顶部|r
.cast 14247 >>|cRXP_WARN_装备|r|T135467:0|t[水之银图腾]|cRXP_WARN_in|r
>>|cRXP_WARN_使用|r|T135467:0|t[水之银图腾]|cRXP_WARN_on|cRXP_ENEMY_Blazerunner|r来驱散他的光环。他的光环会把你击退，他可以在战斗中周期性地重新塑造它。确保您或党员随时准备好使用|r|T135467:0|t[水之银图腾]
.use 11522 
step
#era/som
#hardcore
#hardcoreserver
.isOnQuest 3962
.goto Un'Goro Crater,49.401,49.305
>>|cRXP_WARN_使用|r|T135467:0|t[水之银图腾]|cRXP_WARN_on|cRXX_ENEMY_Blazerunner|r驱散他的光环|r
>>杀死|cRXP_ENEMY_Blazerunner|r
.complete 3962,1 
.use 11522 
.mob Blazerunner
step
#era/som
#hardcore
#hardcoreserver
.isOnQuest 3962
.goto Un'Goro Crater,50.279,49.973
>>打开|cRXP_PICK_Ornate胸脯|r。为|cRXP _Loot_Golden Flame|r掠夺它
.complete 3962,2 
step
.goto Un'Goro Crater,50.15,79.98,40,0
.goto Un'Goro Crater,49.74,82.52,30,0
.goto Un'Goro Crater,45.19,82.20,30,0
.goto Un'Goro Crater,43.41,80.98
>>深入silithid蜂箱，直到你到达圆形腔室中的一块高高的水晶
.use 11833 >>使用您的|T134809:0|t[Gorishi Queen Lure]召唤|cRXP_ENEMY_Gorishi Hive Queen |r。杀死她，然后掠夺她|cRXX_OOT_Gorishi女王大脑|r
>>|cRXP_WARN_谨慎行事，在召唤女王之前清理房间，这个任务很难，你必须处理3波3个怪物，并且你只有1次尝试这个任务(所以它是可选的)。记住要在房间外杀死暴徒，这样你就可以吃/喝|r
>>|cRXP_WARN_要小心，因为如果你以前没有做过，这个任务会很难|r
.complete 4507,1 
.link https://www.twitch.tv/videos/680871694?t=00h49m29s >>如果您需要参考资料，请单击此处
step
#completewith next
.goto Silithus,88.09,23.43,70,0
.goto Un'Goro Crater,30.15,10.41,70,0
.goto Un'Goro Crater,25.14,12.71,70,0
.goto Silithus,81.87,18.93
.zone Silithus >>前往: |cRXP_PICK_希利苏斯|r
step
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱耶·星击|r
.turnin 1124 >>交任务: |cRXP_FRIENDLY_废土|r
.accept 1125 >>接任务: |cRXP_WARN_南风村的灵魂|r
.target Layo Starstrike
step
#completewith end
.xpto60 >>一旦你有足够的经验达到60，就跳到指南的第2部分
step
#phase 4
.goto Silithus,51.80,38.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比提克斯·斯巴格|r
.accept 8277 >>接任务: |cRXP_LOOT_沙漠中的剧毒|r
.target Beetix Ficklespragg
step << Mage/Hunter/Warlock
#phase 4
.goto Silithus,51.30,38.20
>>单击|cRXP_PICK_Wanted海报|r
.accept 8283 >>接任务: |cRXP_LOOT_通缉：死亡弯钩|r
.solo
step
#phase 4
.goto Silithus,51.30,38.20
>>单击|cRXP_PICK_Wanted海报|r
.accept 8283 >>接任务: |cRXP_LOOT_通缉：死亡弯钩|r
.group
step
#phase 4
#completewith next
.goto Silithus,51.15,38.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者梅恩·长角|r
.accept 8280 >>接任务: |cRXP_LOOT_保护补给线|r
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,49.60,37.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_地质学家拉克斯班|r
.accept 8284 >>接任务: |cRXP_LOOT_暮光的秘密|r
.target Geologist Larksbane
step
#phase 4
.goto Silithus,49.20,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mar'alith|r
.accept 8304 >>接任务: |cRXP_LOOT_亲爱的纳塔莉亚|r
.target Commander Mar'alith
step
#phase 4
.goto Silithus,48.57,37.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor|r
.accept 8318 >>接任务: |cRXP_LOOT_秘密交流|r
.target Bor Wildmane
step
#phase 4
#completewith s1
>>杀死|cRXP_ENEMY_Dredge Strikers|r
.complete 8280,1 
.mob Dredge Stalker
step
#phase 4
#completewith s1
>>杀死|cRXP_ENEMY_Stonelash Scorpids|r和|cRXX_ENEMY_Sand Skitter|r。掠夺他们的|cRXD_Loot_Stringer|r和| cRXP_Loot_Fangs|r
.complete 8277,1 
.complete 8277,2 
.mob Stonelash Scorpid
.mob Sand Skitterer
step
#completewith Spirits
.use 20461 >>留意|cRXP_ENEMY_Hive'Ashi无人机|r掉落的|T133463:0|t[|cRXP-LOOT_BRAN Bronzebeard的丢失信件|r]。如果掉落，请使用它开始任务
.collect 20461,1,8308 
.accept 8308 >>接任务: |cRXP_WARN_布莱恩·铜须的信|r
step
#completewith next
>>杀死|cRXP_ENEMY_Torged德鲁伊|r和|cRXD_ENEMY_torged哨兵|r
>>|cRXP_WARN_它们死后很有可能产生|r|cRXP_ENEMY_Hive'Ashi无人机|r|cRXP_WARN_|r
.complete 1125,1 
.complete 1125,2 
.mob Tortured Druid
.mob Tortured Sentinel
step
.goto Silithus,63.22,55.35
>>在小屋内偷走|cRXP_PICK_Dusty圣物箱|r，以获得|cRXP_Loot_纯净圣物箱| r
.complete 5527,1 
.isOnQuest 5527
step
#label Spirits
.loop 25,Silithus,61.6,48.6,63.8,48.6,63.6,51.6,62.6,55.6,62.6,58.6,60.0,55.8,60.6,52.8,61.6,48.6
>>杀死|cRXP_ENEMY_Torged德鲁伊|r和|cRXD_ENEMY_torged哨兵|r
>>|cRXP_WARN_它们死后很有可能产生|r|cRXP_ENEMY_Hive'Ashi无人机|r|cRXP_WARN_|r
.complete 1125,1 
.complete 1125,2 
.mob Tortured Druid
.mob Tortured Sentinel
step
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱耶·星击|r
.turnin 1125 >>交任务: |cRXP_FRIENDLY_南风村的灵魂|r
.accept 1126 >>接任务: |cRXP_WARN_塔中之巢|r
.target Layo Starstrike
step
#completewith next
.use 20461 >>留意|cRXP_ENEMY_Hive'Ashi无人机|r掉落的|T133463:0|t[|cRXP-LOOT_BRAN Bronzebeard的丢失信件|r]。如果掉落，请使用它开始任务
.collect 20461,1,8308 
.accept 8308 >>接任务: |cRXP_WARN_布莱恩·铜须的信|r
step
.goto Silithus,60.22,52.55
>>点击塔顶的|cRXP_PICK_Gooey Nest|r
>>杀死产生的两个|cRXP_ENEMY_Hive'Ashi伏击者|r。为|cRXP_Loot_Encrusted Silithid对象|r掠夺它们
>>|cRXP_WARN_当你进入塔的底层时，三架|r|cRXP_ENEMY_Hive'Ashi无人机|r|cRXP_WARN_将产生！|r
.complete 1126,1 
.mob Hive'Ashi Drone
.mob Hive'Ashi Ambusher
step
.goto Silithus,81.87,18.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱耶·星击|r
.turnin 1126 >>交任务: |cRXP_FRIENDLY_塔中之巢|r
.accept 6844 >>接任务: |cRXP_WARN_档案管理员阿姆伯尔|r
.target Layo Starstrike
step
#phase 4
#label s1
.goto Silithus,30.0,28.0,50,0
.loop 25,Silithus,19.5,21.1,20.1,15.5,21.5,12.8,21.7,9.4,24.1,9.8,26.6,13.3,24.1,15.5,21.5,22.0
>>将蓝色的|cRXP_PICK_Glowing Tablet|r在地上掠夺|cRXP_Loot_暮光之城Tablet碎片|r
.complete 8284,1 
step
#phase 4
#completewith next
>>杀死|cRXP_ENEMY_Dredge Strikers|r
.complete 8280,1 
.mob Dredge Stalker
step
#phase 4
.loop 25,Silithus,51.6,16.4,54.6,13.2,58.4,13.6,62.6,16.6,61.4,21.6,63.2,24.0,64.8,28.2,67.6,32.0,60.6,30.6,56.4,32.8,53.0,28.0,54.8,21.8,51.6,16.4
>>杀死|cRXP_ENEMY_Stonelash Scorpids|r和|cRXX_ENEMY_Sand Skitter|r。掠夺他们的|cRXD_Loot_Stringer|r和| cRXP_Loot_Fangs|r
.complete 8277,1 
.complete 8277,2 
.mob Stonelash Scorpid
.mob Sand Skitterer
step
#phase 4
.loop 25,Silithus,51.6,16.4,54.6,13.2,58.4,13.6,62.6,16.6,61.4,21.6,63.2,24.0,64.8,28.2,67.6,32.0,60.6,30.6,56.4,32.8,53.0,28.0,54.8,21.8,51.6,16.4
>>杀死|cRXP_ENEMY_Dredge Strikers|r
.complete 8280,1 
.mob Dredge Stalker
step
#phase 4
.goto Silithus,49.70,37.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_地质学家拉克斯班|r
.turnin 8284 >>交任务: |cRXP_FRIENDLY_暮光的秘密|r
.accept 8285 >>接任务: |cRXP_LOOT_沙漠隐士|r
.target Geologist Larksbane
step
#phase 4
.goto Silithus,51.15,38.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者梅恩·长角|r
.turnin 8280 >>交任务: |cRXP_FRIENDLY_保护补给线|r
.accept 8281 >>接任务: |cRXP_LOOT_确保安全|r
.target Windcaller Proudhorn
step
#phase 4
.goto Silithus,51.80,38.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比提克斯·斯巴格|r
.turnin 8277 >>交任务: |cRXP_FRIENDLY_沙漠中的剧毒|r
.accept 8278 >>接任务: |cRXP_LOOT_诺格的最后一线希望|r
.target Beetix Ficklespragg
step
#phase 4
#completewith Deserter
.goto Silithus,39.31,53.33,0
>>杀死|cRXP_ENEMY_Dredge Crushers|r
>>|cRXP_WARN_不要专注于此；你可以稍后完成|r
.complete 8281,1 
.mob Dredge Crusher
step
#phase 4
#completewith Deserter
.goto Silithus,62.52,64.00,0
.goto Silithus,50.73,55.99,0
>>杀死|cRXP_ENEMY_Stonelash Flayer|r和|cRXP_ENEMY_Stonelash Pincers|r。掠夺它们以获取它们的|cRXD_OOT_Stinger|r
>>杀死|cRXP_ENEMY_Rock Stalkers |r。掠夺他们的|cRXX_Loot_Fangs|r
>>|cRXP_WARN_不要专注于此；你可以稍后完成|r
.complete 8278,1 
.complete 8278,2 
.complete 8278,3 
.mob Stonelash Flayer
.mob Stonelash Pincer
.mob Rock Stalker
step
#phase 4
.goto Silithus,41.30,88.50,10,0
.goto Silithus,40.80,88.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特加尔·雕石|r, |cRXP_FRIENDLY_弗兰卡·石桥|r
.complete 8304,2 
.complete 8304,1 
.target Rutgar Glyphshaper
.target Frankal Stonebridge
.skipgossip
step
.goto Silithus,41.30,88.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁特加尔·雕石|r
.turnin 8308 >>交任务: |cRXP_FRIENDLY_布莱恩·铜须的信|r
.target Rutgar Glyphshaper
.isOnQuest 8308
step
#phase 4
#label Deserter
.goto Silithus,67.19,69.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit|r
.turnin 8285 >>交任务: |cRXP_FRIENDLY_沙漠隐士|r
.accept 8279 >>接任务: |cRXP_LOOT_暮光词典|r
.target Hermit Ortell
step
#phase 4
#completewith next
>>杀死|cRXP_ENEMY_Dredge Crushers|r
.complete 8281,1 
.mob Dredge Crusher
step
#phase 4
.loop 25,Silithus,62.2,63.2,57.0,59.2,50.8,58.0,47.8,54.6,40.8,50.2,34.6,49.4,36.2,39.4,33.6,34.6,27.8,43.4,33.0,49.0,34.6,53.6,34.6,60.4,34.2,65.4,39.4,64.6,42.6,61.4,48.8,62.4,52.8,63.0,59.0,64.4,62.6,66.2,62.2,63.2
>>杀死|cRXP_ENEMY_Stonelash Pincers|r。掠夺他们的|cRXX_Loot_Stringer|r
.complete 8278,2 
.mob Stonelash Pincer
step
#phase 4
.loop 25,Silithus,62.2,63.2,57.0,59.2,50.8,58.0,47.8,54.6,40.8,50.2,34.6,49.4,36.2,39.4,33.6,34.6,27.8,43.4,33.0,49.0,34.6,53.6,34.6,60.4,34.2,65.4,39.4,64.6,42.6,61.4,48.8,62.4,52.8,63.0,59.0,64.4,62.6,66.2,62.2,63.2
>>杀死|cRXP_ENEMY_Dredge Crushers|r
.complete 8281,1 
.mob Dredge Crusher
step
#phase 4
.loop 25,Silithus,42.6,86.4,38.6,87.4,38.2,83.2,34.0,76.6,32.0,81.0,27.6,85.2,24.6,82.0,23.4,77.2,27.6,76.4,31.6,74.8,34.6,71.4,38.6,69.2,43.0,68.4,46.8,69.6,44.2,75.6,45.4,80.2,45.4,85.6,42.6,86.4
>>杀死|cRXP_ENEMY_Stonewlash Flayer|r和|cRXD_ENEMY_Rock Stalkers |r。掠夺他们的|cRXP_Loot_Stringer|r和| cRXP_Loot_Fangs|r
.complete 8278,1 
.complete 8278,3 
.mob Stonelash Flayer
.mob Rock Stalker
step
#phase 4
.goto Silithus,51.15,38.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_唤风者梅恩·长角|r
.turnin 8281 >>交任务: |cRXP_FRIENDLY_确保安全|r
.target Windcaller Proudhorn
step
#phase 4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比提克斯·斯巴格|r, |cRXP_FRIENDLY_诺格·斯巴格|r
.turnin 8278 >>交任务: |cRXP_FRIENDLY_诺格的最后一线希望|r
.goto Silithus,51.80,38.51
.accept 8282 >>接任务: |cRXP_LOOT_诺格的背包|r
.goto Silithus,51.62,38.50
.target Beetix Ficklespragg
.target Noggle Ficklespragg
step
#phase 4
.goto Silithus,49.20,34.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mar'alith|r
.turnin 8304 >>交任务: |cRXP_FRIENDLY_亲爱的纳塔莉亚|r
.target Commander Mar'alith
step
#phase 4
#completewith LexiconChapter2
>>杀死|cRXP_ENEMY_Twilight邪教分子|r。掠夺他们的|cRXD_Loot_加密的Twilight文本|r
>>|cRXP_ENEMY_暮光之城守护者|r|cRXP_WARN_，|r|cRXP_ENEMY_Overlords|r |cRXP_WARN_and|r |c RXX_ENEMY_Masters|r |C RXP_WARN_具有非常高的爆发潜力|r
.collect 20404,10,8323,1 
.mob Twilight Stonecaller
.mob Twilight Avenger
.mob Twilight Geolord
.mob Twilight Flamereaver
.mob Twilight Master
.mob Twilight Overlord
.mob Twilight Marauder
step
#phase 4
.goto Silithus,40.86,42.22
>>杀死|cRXP_ENEMY_暮光之城守护者哈文思|r。掠夺他的|cRXD_Loot_暮光之光词典章节|r
>>他在Cenarion Hold西南部的营地东侧巡逻
>>|cRXP_WARN_小心，他的爆发力很高|r
.complete 8279,3 
.unitscan Twilight Keeper Havunth
step
#phase 4
.goto Silithus,26.34,36.62
>>杀死|cRXP_ENEMY_暮光之城守护者Mayna|r。为她掠夺她|cRXD_Loot_暮光之夜词典章节|r
>>她在Cenarion Hold西面的营地巡逻
>>|cRXP_WARN_小心，她有心灵尖叫（瞬间恐惧）|r
.complete 8279,1 
.unitscan Twilight Keeper Mayna
step
#phase 4
#label LexiconChapter2
.goto Silithus,16.08,86.37
>>杀死|cRXP_ENEMY_暮光之城守护者Exeter|r。掠夺他的|cRXD_Loot_暮光之光词典章节|r
>>他在营地的后面，离Cenarion Hold西南/Ahn'Qiraj西北很远
>>|cRXP_WARN_小心，他有眩晕和致命一击|r
.complete 8279,2 
.unitscan Twilight Keeper Exeter
step
#phase 4
#completewith next
>>织机|cRXP_Loot_Noggle的挎包|r
.complete 8282,1 
.unitscan Deathclasp
.group
step
#phase 4
.goto Silithus,45.00,92.20
>>用|cRXP_ENEMY_Deathclack|r拆分并拉动巡逻的附加值。将它们放风筝，直到|cRXX_ENEMY_deathclack| r重置，然后杀死它们
>>杀死|cRXP_ENEMY_Deathclack|r。抢夺他的|cRXX_Loot_Picker|r。尽一切可能防止他进入近战范围
>>|cRXP_WARN_这个任务暴民攻击力很强，有一个可以眩晕8秒的减毒效果。如果你不熟悉/没有准备好，这个任务是极其危险的；必要时跳过|r
.complete 8283,1 
.mob Stonelash Flayer
.unitscan Deathclasp
.group 3
step
#phase 4
.goto Silithus,44.50,91.40
>>地面上的织机|cRXP_Loot_Noggle的挎包|r
.complete 8282,1 
.unitscan Deathclasp
.group
step << Mage/Hunter/Warlock
#phase 4
#completewith next
>>织机|cRXP_Loot_Noggle的挎包|r
.complete 8282,1 
.unitscan Deathclasp
.solo
step << Mage/Hunter/Warlock
#phase 4
.goto Silithus,45.00,92.20
>>用|cRXP_ENEMY_Deathclack|r拆分并拉动巡逻的附加值。将它们放风筝，直到|cRXX_ENEMY_deathclack| r重置，然后杀死它们
>>杀死|cRXP_ENEMY_Deathclack|r。抢夺他的|cRXX_Loot_Picker|r。尽一切可能防止他进入近战范围
>>|cRXP_WARN_这个任务暴民攻击力很强，有一个可以眩晕8秒的减毒效果。如果你不熟悉/没有准备好，这个任务是极其危险的；必要时跳过|r
.complete 8283,1 
.mob Stonelash Flayer
.unitscan Deathclasp
.solo
step << Mage/Hunter/Warlock
#phase 4
.goto Silithus,44.50,91.40
>>地面上的织机|cRXP_Loot_Noggle的挎包|r
.complete 8282,1 
.unitscan Deathclasp
.solo
step << !Mage !Hunter !Warlock
#phase 4
.goto Silithus,44.50,91.40
>>地面上的织机|cRXP_Loot_Noggle的挎包|r
>>|cRXP_WARN_小心不要激怒死亡扣|r
.complete 8282,1 
.unitscan Deathclasp
.solo
step
#phase 4
.goto Silithus,67.20,69.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hermit|r
.turnin 8279 >>交任务: |cRXP_FRIENDLY_暮光词典|r
.accept 8287 >>接任务: |cRXP_LOOT_摆脱困境|r
.accept 8323 >>接任务: |cRXP_LOOT_真正的信徒|r
.turnin 8323 >>交任务: |cRXP_FRIENDLY_真正的信徒|r
.target Hermit Ortell
step
.goto Silithus,67.20,69.24
.goto Silithus,47.21,37.93,30 >>|cRXP_WARN_跳到洞穴里一把立着的火把上。通过注销并重新登录来执行注销跳过|r
.link https://www.youtube.com/watch?v=bFS4TUbJse8&ab_channel=RestedXP >>|cRXP_WARN_单击此处查看示例|r
step
#phase 4
.goto Silithus,51.62,38.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺格·斯巴格|r
.turnin 8282 >>交任务: |cRXP_FRIENDLY_诺格的背包|r
.target Noggle Ficklespragg
step
#phase 4
.goto Silithus,50.80,33.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vish|r
.turnin 8283 >>交任务: |cRXP_FRIENDLY_通缉：死亡弯钩|r
.target Vish Kozus
.isQuestComplete 8283
.group
step << Mage/Warlock/Hunter
#phase 4
.goto Silithus,50.80,33.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯·库鲁兹|r
.turnin 8283 >>交任务: |cRXP_FRIENDLY_通缉：死亡弯钩|r
.target Vish Kozus
.solo
step
#phase 4
.goto Silithus,49.20,34.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mar'alith|r
.turnin 8287 >>交任务: |cRXP_FRIENDLY_摆脱困境|r
.target Commander Mar'alith
step
#phase 4
.loop 25,Silithus,38.8,45.4,38.2,43.8,38.8,42.6,40.4,42.4,41.4,45.6,40.0,46.2,38.8,45.4
>>杀死|cRXP_ENEMY_Twilight邪教分子|r。掠夺他们的|cRXD_Loot_加密的Twilight文本|r
>>|cRXP_ENEMY_暮光之城守护者|r|cRXP_WARN_，|r|cRXP_ENEMY_Overlords|r |cRXP_WARN_and|r |c RXX_ENEMY_Masters|r |C RXP_WARN_具有非常高的爆发潜力|r
.complete 8318,1 
.mob Twilight Stonecaller
.mob Twilight Avenger
.mob Twilight Geolord
.mob Twilight Flamereaver
.mob Twilight Master
.mob Twilight Overlord
.mob Twilight Marauder
step
#phase 4
.goto Silithus,48.57,37.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bor|r
.turnin 8318 >>交任务: |cRXP_FRIENDLY_秘密交流|r
.target Bor Wildmane
step
#hardcoreserver
#era/som
#completewith next
.goto Silithus,50.581,34.448
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克劳德·天舞者|r
.fly Un'Goro >>飞到Un'Goro火山口
.target Cloud Skydancer
step
#hardcoreserver
#era/som
.isQuestComplete 3962
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3962 >>交任务: |cRXP_FRIENDLY_结伴而行|r
.target Linken
step
#softcore
#era/som
#completewith next
.goto Silithus,50.581,34.448
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克劳德·天舞者|r
.fly Un'Goro >>飞到Un'Goro火山口
.target Cloud Skydancer
step
#softcore
#era/som
.isQuestComplete 3962
.goto Un'Goro Crater,44.658,8.098
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3962 >>交任务: |cRXP_FRIENDLY_结伴而行|r
.target Linken
step
#optional
.abandon 3962 >>放弃独自一人很危险
step
#hardcore
#completewith end
.goto Silithus,48.69,36.67,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁克·驯风者|r
.fly Tanaris >>前往: 塔纳利斯
.target Runk Windtamer
.zoneskip Tanaris
step
#softcore
#completewith end
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fly Tanaris >>前往: 塔纳利斯
.target Gryfe
.zoneskip Tanaris
step
.goto Tanaris,51.56,26.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 4504 >>交任务: |cRXP_FRIENDLY_极度粘稠的沥青|r
.target Tran'rek
step
#label end
.goto Tanaris,50.88,26.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4507 >>交任务: |cRXP_FRIENDLY_捕捉皇后|r
.accept 4509 >>接任务: |cRXP_LOOT_临危不惧|r
.target Alchemist Pestlezugg
]])
RXPGuides.RegisterGuide([[
#version 20
#group RestedXP Horde 50-60
#classic
<< Horde
#name 59-60冬泉/Silithus II
step
#softcore
#completewith next
.goto Silithus,48.69,36.67,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁克·驯风者|r
.fly Un'Goro >>飞到Un'Goro火山口
.target Runk Windtamer
.zoneskip Un'Goro Crater
step
#era/som
#softcore
.goto Un'Goro Crater,44.65,8.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_林克|r
.turnin 3962 >>交任务: |cRXP_FRIENDLY_结伴而行|r 
.target Linken
step
#hardcore
#completewith end
.goto Silithus,48.69,36.67,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁克·驯风者|r
.fly Tanaris >>前往: 塔纳利斯
.target Runk Windtamer
.zoneskip Tanaris
step
#softcore
#completewith end
.goto Un'Goro Crater,45.23,5.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格莱菲|r
.fly Tanaris >>前往: 塔纳利斯
.target Gryfe
.zoneskip Tanaris
step
.goto Tanaris,51.56,26.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特兰雷克|r
.turnin 4504 >>交任务: |cRXP_FRIENDLY_极度粘稠的沥青|r
.target Tran'rek
step
#label end
.goto Tanaris,50.88,26.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_炼金师匹斯特苏格|r
.turnin 4507 >>交任务: |cRXP_FRIENDLY_捕捉皇后|r
.accept 4509 >>接任务: |cRXP_LOOT_临危不惧|r
.target Alchemist Pestlezugg
step
#completewith next
.hs >>Hearth to Everlook公司公司
.use 6948
.zoneskip Winterspring
step
.goto Winterspring,61.36,38.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维兹奇|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Vizzie
step
.goto Winterspring,60.88,37.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乌米|r
.turnin 5163 >>交任务: |cRXP_FRIENDLY_雪怪计划！|r
.target Umi Rumplesnicker
step << Druid
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
step << !Druid
#label moonglade
.goto Winterspring,60.47,36.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尤格雷克|r
.fly Moonglade>>Fly to Moonglade
.target Yugrek
.zoneskip Moonglade
step
.goto Moonglade,44.88,35.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿姆伯尔|r
.turnin 6844 >>交任务: |cRXP_FRIENDLY_档案管理员阿姆伯尔|r
.accept 6845 >>接任务: |cRXP_WARN_发现过去的秘密|r
.target Umber
.isQuestTurnedIn 1126
step
.goto Moonglade,51.68,45.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 6845 >>交任务: |cRXP_FRIENDLY_发现过去的秘密|r
.target Rabine Saturna
.isQuestTurnedIn 1126
step
.goto Moonglade,51.68,45.09
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉比恩·萨图纳|r
.turnin 5527 >>交任务: |cRXP_FRIENDLY_净化之匣|r
.target Rabine Saturna
.isQuestComplete 5527
step
.goto Moonglade,44.87,35.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿姆伯尔|r
.accept 1185 >>接任务: |cRXP_WARN_壳中的东西…|r
.turnin 1185 >>交任务: |cRXP_FRIENDLY_壳中的东西…|r
.target Umber
.isQuestTurnedIn 1126
step
#completewith next
.zone Felwood >>前往: |cRXP_PICK_费伍德森林|r
.zoneskip Felwood
step
.goto Felwood,61.67,7.23,50,0
.goto Felwood,62.68,8.39,50,0
.goto Felwood,62.55,10.49,50,0
.goto Felwood,63.19,13.01,50,0
.goto Felwood,61.67,7.23,50,0
.goto Felwood,62.68,8.39,50,0
.goto Felwood,62.55,10.49,50,0
.goto Felwood,63.19,13.01
.xpto60 >>在北方的软木中升级|cRXP_ENEMY_Deadwood Furbolgs|r，直到你有足够的XP来钉60
step
#som
#phase 3-6
.goto Moonglade,32.10,66.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法斯托恩|r
.fly Felwood>>Fly to Felwood
.target Faustron
step
#som
#phase 3-6
.goto Felwood,51.30,81.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾瑞丹·蓝风|r
.turnin 3942 >>交任务: |cRXP_FRIENDLY_林克的记忆|r 
.target Eridan Bluewind
.isQuestTurnedIn 3912
step
#som
#phase 3-6
.goto Felwood,51.14,81.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科雷克·望天|r
.turnin 5128 >>交任务: |cRXP_FRIENDLY_熊怪酋长的话|r
.target Kelek Skykeeper
.isQuestTurnedIn 5123
step << !Mage
#som
#phase 3-6
.goto Felwood,34.44,53.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉卡尔|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Brakkar
step << !Mage
#era/som
.goto Moonglade,32.10,66.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_法斯托恩|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Faustron
step << Mage
#completewith next
.cast 3567 >>演员阵容|T135759:0|t[电传：Orgrimar]
.zoneskip Orgrimmar
step
.goto Orgrimmar,56.50,46.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔兹宾·鼓眼|r
.turnin 4509 >>交任务: |cRXP_FRIENDLY_临危不惧|r
.accept 4511 >>接任务: |cRXP_LOOT_临危不惧|r
.target Zilzibin Drumlore
step
.goto Orgrimmar,49.70,69.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡鲁斯|r
.turnin 4511 >>交任务: |cRXP_FRIENDLY_临危不惧|r
.target Karus
]])
