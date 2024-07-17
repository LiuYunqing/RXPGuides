local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 23-24 湿地
#version 1
#group RestedXP 联盟 20-32
#next 24-27 赤脊山/暮色森林
#xprate <1.5

step << Warrior tbc
    #sticky
    #completewith exit1
    .goto StormwindClassic,64.1,61.2,0
    .goto StormwindClassic,46.7,79.0,0
    >>检查AH、贸易区的花店和法师区的炼金术店，并购买一些生命根，稍后你需要8个才能完成任务，如果你已经拥有了，跳过这一步
    .collect 3357,8 --Collect Liferoot (x8)
    #xprate <1.5
step << Human !Warlock !Paladin wotlk
	.goto Elwynn Forest,84.3,64.9
	.train 33388 >>前往埃尔文森林的伊斯特维尔，训练/购买您的坐骑
	.money <5.0
    .skill riding,1,1
step << Human !Warlock !Paladin wotlk
    .goto Redridge Mountains,30.6,59.4
    .fp Redridge Mountains >>获得Redridge Mountains飞行路线
    .fly Stormwind >>飞往暴风城
step << Paladin wotlk
	.goto StormwindClassic,38.6,32.8
	.trainer >>训练你的职业技能
step << Priest wotlk
	.goto StormwindClassic,38.5,26.8
	.trainer >>训练你的班级咒语。如果你刚刚在月亮圣殿训练过，就跳过这个。
step << Paladin wotlk
    .goto StormwindClassic,40.1,30.0
    >>与Duthorian Rall对话，右键单击提供的Tome of Valor
    .accept 1649 >>接任务: |cRXP_WARN_勇气之书|r
>>对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1649 >>交任务: |cRXP_FRIENDLY_勇气之书|r
.target Duthorian Rall
    .accept 1650 >>接任务: |cRXP_WARN_勇气之书|r
step << Warlock wotlk
    .goto StormwindClassic,25.3,78.7
    .trainer >>训练你的职业技能
step << Warlock wotlk
    .isOnQuest 1738
    .goto StormwindClassic,25.3,78.7
>>对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1738 >>交任务: |cRXP_FRIENDLY_同心树|r
.target Gakin the Darkbinder
    .accept 1739 >>接任务: |cRXP_LOOT_誓缚|r
step << Warlock wotlk
    .isOnQuest 1739
    .goto StormwindClassic,25.2,77.5
    >>进入地下室，使用召唤圈提供的任务物品
    .complete 1739,1 --Summoned Succubus (1)
step << Warlock wotlk
    .isQuestComplete 1739
    .goto StormwindClassic,25.4,78.7
.target Gakin the Darkbinder
>>对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1739 >>交任务: |cRXP_FRIENDLY_誓缚|r
step << Mage wotlk
    .goto StormwindClassic,39.6,79.6
    .train 3561>>火车传送：暴风
    .trainer >>训练你的职业技能
step << wotlk
    .goto StormwindClassic,52.61,65.71
    .home >>将您的炉石设置为暴风城
step << !Human
    .goto Stormwind City,66.4,62.1
    .fp Stormwind >>了解暴风飞行路径
step << Rogue wotlk
	.goto StormwindClassic,74.6,52.8
	.trainer >>训练你的职业技能
step << Warrior wotlk
	.goto StormwindClassic,78.6,45.8
	.trainer >>上楼去。训练你的职业技能
step << Rogue tbc
    #sticky
    .goto StormwindClassic,75.8,60.1
    >>确保训练开锁和拾取口袋
.target Renzik "The Shiv"
>>对话: |cRXP_FRIENDLY_\"剃刀\"雷吉克|r
    .accept 2281 >>接任务: |cRXP_WARN_赤脊山的联络员|r
.target Master Mathias Shaw
>>对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .accept 2360 >>接任务: |cRXP_WARN_马迪亚斯和迪菲亚潜行者|r
step << Rogue
	.goto StormwindClassic,78.3,57.0
    .train 1804>>确保列车开锁
step << Rogue tbc
    .goto StormwindClassic,52.6,65.6
    .home >>将您的炉石设置为暴风城
step << Draenei wotlk
    .goto StormwindClassic,78.4,18.3
.target Emissary Taluun
>>对话: |cRXP_FRIENDLY_塔卢恩大使|r
    .accept 9429 >>接任务: |cRXP_LOOT_前往夜色镇|r
step << Hunter wotlk
	.goto StormwindClassic,61.7,15.4
	.trainer >>训练你的职业技能
step << wotlk
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    .vendor 5519>>查看矮人区的Billibub是否有铜管。如果有，就买一个
    .collect 4371,1,175,1,1
    .bronzetube
step << wotlk
    #label exit1
    .goto StormwindClassic,63.9,8.3
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >>点击此处在电车内注销跳过
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .zoneskip Dun Morogh
step << wotlk
    #sticky
    #completewith exit2
    .vendor 5175>>从齿轮切割器Cogspinner(限量供应)处购买青铜管，如果他没有或你已经有了，请跳过此步骤
    .goto Ironforge,67.86,42.87
    .collect 4371,1,175,1,1
	.bronzetube
step << !Dwarf wotlk !Gnome wotlk--Not needed, including just in case someone forgets to set HS to SW
    .goto Ironforge,55.501,47.742
    .fp Ironforge>>获得铁炉堡飞行路线
step << Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >>列车2H轴 << !Rogue
	.train 266 >>训练枪 << Hunter/Warrior/Rogue
    .train 199 >>火车2H梅斯 << Warrior/Shaman
    .train 54 >>火车梅斯 << Rogue/Shaman/wotlk Warrior
    .train 44 >>火车轴 << Shaman/wotlk Warrior
step << Mage wotlk
    .goto Ironforge,25.5,7.1
    .train 3562>>火车传送：铁炉堡
step << wotlk !Dwarf !Gnome
    #sticky
    .goto Dun Morogh,53.2,35.3
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
    .zoneskip Ironforge,1
step << wotlk !Dwarf !Gnome
    #completewith next
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
    >>邓莫罗不死->湿地跳过
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>点击此处查看视频参考
    .goto Wetlands,12.1,60.3,80 >>前往: |cRXP_PICK_湿地|r
step << wotlk !Dwarf !Gnome
    .goto Wetlands,9.5,59.7
    .fp Menethil >>获取Menethil Harbor航线
step << Dwarf !Paladin wotlk
	#sticky
	#completewith next
	.goto Dun Morogh,63.5,50.6
	.money <5.00
	.skill riding,75 >>前往: |cRXP_PICK_丹莫罗|r, train riding and purchase your mount.
step << Gnome !Warlock wotlk
	#sticky
	#completewith next
	.goto Dun Morogh,49.2,48.1
	.money <5.00
	.skill riding,75 >>前往: |cRXP_PICK_丹莫罗|r, train riding and purchase your mount.
step << Gnome wotlk/Dwarf wotlk
    #completewith next
    .goto Ironforge,55.501,47.742
    .fly Wetlands >>飞到湿地
step << Mage wotlk
    .goto Wetlands,10.7,60.9
    .home >>把你的炉石放在深水酒馆
step
    .goto Wetlands,8.310,58.533
.target Karl Boran
>>对话: |cRXP_FRIENDLY_卡尔·波兰|r
    .accept 279 >>接任务: |cRXP_LOOT_海中的鱼人|r
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
    .accept 484 >>接任务: |cRXP_WARN_小鳄鱼皮|r
step
    .goto Wetlands,10.8,59.6
.target First Mate Fitzsimmons
>>对话: |cRXP_FRIENDLY_大副菲兹莫斯|r
    .accept 288 >>接任务: |cRXP_LOOT_第三舰队|r
    .accept 463 >>接任务: |cRXP_LOOT_绿色守卫者|r
step
    .goto Wetlands,10.7,60.9
	>>从店主那里买一瓶美赞臣酒
    .complete 288,1 --Collect Flagon of Mead (x1)
step
    .goto Wetlands,10.84,60.43
	>>上楼去和考古学家Flagongut谈谈
>>对话: |cRXP_FRIENDLY_考古学家弗拉冈特|r
	.turnin 942 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
.target Archaeologist Flagongut
	.accept 943 >>接任务: |cRXP_WARN_健忘的勘察员|r
    .isQuestTurnedIn 741
step
    .goto Wetlands,10.8,59.7
.target First Mate Fitzsimmons
>>对话: |cRXP_FRIENDLY_大副菲兹莫斯|r
    .turnin 288 >>交任务: |cRXP_FRIENDLY_第三舰队|r
step << Hunter
    .goto Wetlands,11.1,58.3
    .vendor >>修理并重新存放箭头
step
    .goto Wetlands,11.7,58.0
.target Sida
>>对话: |cRXP_FRIENDLY_塞达|r
    .accept 470 >>接任务: |cRXP_LOOT_搜寻软泥怪|r
step
    #sticky
    #completewith exit1
    .vendor 1448>>前往仓库，从Neal Allen那里买一个铜管(限量供应)，如果他没有或者你已经有了，跳过这一步
    .goto Wetlands,10.6,56.8
    .collect 4371,1,175,1,1
    .bronzetube
step
    .goto Wetlands,9.9,57.4
	>>上楼到马厩里去
.target Captain Stoutfist
>>对话: |cRXP_FRIENDLY_斯托菲队长|r
    .accept 464 >>接任务: |cRXP_LOOT_龙喉战旗|r
step
    .goto Wetlands,11.503,52.134
.target Tarrel Rockweaver
>>对话: |cRXP_FRIENDLY_塔雷尔·石纹|r
    .accept 305 >>接任务: |cRXP_LOOT_寻找挖掘队|r
step
	#sticky
	#label crocs
    #completewith endofcrocc
	>>在任务之间杀死幼湿地鳄鱼。掠夺他们的皮肤
    .complete 484,1 --Collect Young Crocolisk Skin (x4)

step
    #label exit1
    .goto Wetlands,14.1,41.5,70,0
    .goto Wetlands,16.7,39.7,70,0
    .goto Wetlands,18.8,40.0
    >>杀死Gobbler，他在南部的murloc营地巡逻
    .complete 279,2 --Collect Gobbler's Head (x1)
    .complete 279,1 --Kill Bluegill Murloc (x12)
	.unitscan Gobbler
step
    #sticky
    #completewith next
    .vendor 2682>>从Fradd Swiftgear(限量供应)处购买青铜管，如果他没有或你已经有了，请跳过此步骤
    .goto Wetlands,26.4,25.8
    .collect 4371,1,175,1,1
	.bronzetube
step
    #xprate <1.5
	.goto Wetlands,34.3,41.2,60,0
    .goto Wetlands,38.179,50.889
.target Ormer Ironbraid
>>对话: |cRXP_FRIENDLY_奥莫尔·铁衣|r
    .accept 294 >>接任务: |cRXP_LOOT_奥莫尔的复仇|r
step
    .goto Wetlands,38.8,52.3
>>对话: |cRXP_FRIENDLY_麦琳·石纹|r
    .turnin 305 >>交任务: |cRXP_FRIENDLY_寻找挖掘队|r
.target Merrin Rockweaver
    .accept 306 >>接任务: |cRXP_LOOT_寻找挖掘队|r
step << Hunter/Warlock
    .goto Wetlands,24.7,48.6
	>>杀死该地区的猛禽
    .complete 294,1 --Kill Mottled Raptor (x10)
    .complete 294,2 --Kill Mottled Screecher (x10)
step << Hunter/Warlock
	.goto Wetlands,34.3,41.4,80,0
    .goto Wetlands,38.179,50.889
>>对话: |cRXP_FRIENDLY_奥莫尔·铁衣|r
    .turnin 294 >>交任务: |cRXP_FRIENDLY_奥莫尔的复仇|r
.target Ormer Ironbraid
    .accept 295 >>接任务: |cRXP_LOOT_奥莫尔的复仇|r
step << Hunter/Warlock
	.goto Wetlands,34.3,41.4,80,0
    .goto Wetlands,34.6,48.0
	>>杀死该地区的猛禽
    .complete 295,1 --Kill Mottled Scytheclaw (x10)
    .complete 295,2 --Kill Mottled Razormaw (x10)
step << Hunter/Warlock
    .goto Wetlands,38.179,50.889
>>对话: |cRXP_FRIENDLY_奥莫尔·铁衣|r
    .turnin 295 >>交任务: |cRXP_FRIENDLY_奥莫尔的复仇|r
.target Ormer Ironbraid
    .accept 296 >>接任务: |cRXP_LOOT_奥莫尔的复仇|r
step << Hunter/Warlock
    .goto Wetlands,31.5,48.9,50,0
    .goto Wetlands,33.3,51.5
	>>在山顶杀死萨尔托特。为他的魔爪掠夺他。小心，因为他在6分钟内完成了鞭笞和重生。
    *Note: He can very very rarely be found patroling the quarry below.
    .complete 296,1 --Collect Sarltooth's Talon (x1)
step << Hunter/Warlock
    .goto Wetlands,38.179,50.889
.target Ormer Ironbraid
>>对话: |cRXP_FRIENDLY_奥莫尔·铁衣|r
    .turnin 296 >>交任务: |cRXP_FRIENDLY_奥莫尔的复仇|r
step
	.goto Wetlands,34.3,41.2,60,0
    .goto Wetlands,44.8,43.9
	>>杀死龙嘴兽
    .complete 464,1 --Collect Dragonmaw War Banner (x8)
step
    .goto Wetlands,49.915,39.367
.target Einar Stonegrip
>>对话: |cRXP_FRIENDLY_埃纳尔·石钳|r
    .accept 469 >>接任务: |cRXP_LOOT_日常供货|r
step << Warrior
    #sticky
    #completewith next
    .goto Wetlands,50.2,37.8
    .vendor 8305>>检查药草供应商并购买一些Liferoot，稍后你需要8个才能完成任务，如果你已经有了，跳过这一步
    .collect 3357,8,0,1,1 --Collect Liferoot (x8)
    #xprate <1.5
step
    #requires crocs
    .goto Wetlands,56.371,40.401
.target Rethiel the Greenwarden
>>对话: |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
    .turnin 463 >>交任务: |cRXP_FRIENDLY_绿色守卫者|r
step
    .goto Wetlands,56.371,40.401
.target Rethiel the Greenwarden
>>对话: |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
    .accept 276 >>接任务: |cRXP_LOOT_践踏之爪|r
    .maxlevel 23
step
    .goto Wetlands,63.9,62.7,70,0
    .goto Wetlands,62.4,69.5,70,0
    .goto Wetlands,61.5,72.2,70,0
    .goto Wetlands,55.7,75.1
	>>杀死该地区的Mosshide Gnolls和Mongrels。侏儒更常见于营地外
    .complete 276,1 --Kill Mosshide Gnoll (x15)
    .complete 276,2 --Kill Mosshide Mongrel (x10)
    .isOnQuest 276
step
    #requires crocs
    .goto Wetlands,56.4,40.3
.target Rethiel the Greenwarden
>>对话: |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
    .turnin 276 >>交任务: |cRXP_FRIENDLY_践踏之爪|r
    .isQuestComplete 276
step
    #label endofcrocc
    .goto Wetlands,56.4,40.3
.target Rethiel the Greenwarden
>>对话: |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
    .accept 277 >>接任务: |cRXP_LOOT_火焰管制|r
    .isQuestTurnedIn 276
step << NightElf/Draenei/Human wotlk
    #completewith next
    .goto Wetlands,53.7,72.3,75 >>通往莫丹湖的路从这里开始
step << NightElf/Draenei/Human wotlk
    .goto Loch Modan,25.4,10.6
    .zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
step << NightElf/Draenei/Human wotlk
    .goto Loch Modan,46.0,13.3
.target Chief Engineer Hinderweir VII
>>对话: |cRXP_FRIENDLY_主工程师辛德维尔七世|r
    .accept 250 >>接任务: |cRXP_WARN_水坝危机|r
    .maxlevel 23
step << NightElf/Draenei/Human wotlk
    .goto Loch Modan,56.1,13.3
    >>点击可疑桶
    .turnin 250 >>交任务: |cRXP_FRIENDLY_水坝危机|r
    .accept 199 >>接任务: |cRXP_WARN_水坝危机|r
    .maxlevel 23
step << NightElf/Draenei/Human wotlk
    .goto Loch Modan,46.0,13.3
.target Chief Engineer Hinderweir VII
>>对话: |cRXP_FRIENDLY_主工程师辛德维尔七世|r
    .turnin 199 >>交任务: |cRXP_FRIENDLY_水坝危机|r
    .isOnQuest 199
step << NightElf/Draenei/Human wotlk
    .goto Loch Modan,33.938,50.954
    .fp Thelsamar >>获取Thelsamar飞行路线
step << wotlk
    #label wettylandy
    .goto Wetlands,9.5,59.7
    .hs >>从火炉到暴风 << !Mage
    .hs >>赫斯对米奈希尔 << Mage
    .cooldown item,6948,>0
step << wotlk
    .goto Wetlands,9.5,59.7
    >>返回梅尼希尔港
    .cooldown item,6948,<0
step
    .zoneskip Wetlands,1
    .goto Wetlands,8.4,58.5
>>对话: |cRXP_FRIENDLY_卡尔·波兰|r
    .turnin 279 >>交任务: |cRXP_FRIENDLY_海中的鱼人|r
.target Karl Boran
    .accept 281 >>接任务: |cRXP_LOOT_夺回雕像|r
step
    .zoneskip Wetlands,1
    .goto Wetlands,8.6,55.8
.target James Halloran
>>对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
    .turnin 469 >>交任务: |cRXP_FRIENDLY_日常供货|r
    .isOnQuest 469
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
    .turnin 484 >>交任务: |cRXP_FRIENDLY_小鳄鱼皮|r
    .isOnQuest 484
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
    .accept 471 >>接任务: |cRXP_LOOT_学徒的职责|r
    .isQuestTurnedIn 484
    .zoneskip Wetlands,1
step << Mage wotlk
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step
    .zoneskip Wetlands,1
    .goto Wetlands,9.5,59.7
    >>如果您的壁炉石设置为暴风，请加热
    .fly Stormwind >>飞往暴风城
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 24-27 赤脊山/暮色森林
#version 1
#group RestedXP 联盟 20-32
#next 27-30 湿地/希尔斯布莱德丘陵;28-30 暮色森林
step << Warrior
    #sticky
    #completewith exit
    .goto StormwindClassic,64.1,61.2,0
    .goto StormwindClassic,46.7,79.0,0
    >>检查AH、贸易区的花店和法师区的炼金术店，并购买一些生命根，稍后你需要8个才能完成任务，如果你已经拥有了，跳过这一步
    .collect 3357,8 --Collect Liferoot (x8)
    #xprate <1.5
step << Paladin
	.goto StormwindClassic,38.6,32.8
	.trainer >>训练你的职业技能
step << Priest
	.goto StormwindClassic,38.5,26.8
	.trainer >>训练你的职业技能
step << Paladin
    .goto StormwindClassic,40.1,30.0
    >>与Duthorian Rall对话，右键单击提供的Tome of Valor
    .accept 1649 >>接任务: |cRXP_WARN_勇气之书|r
>>对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1649 >>交任务: |cRXP_FRIENDLY_勇气之书|r
.target Duthorian Rall
    .accept 1650 >>接任务: |cRXP_WARN_勇气之书|r
step << Warlock
    .goto StormwindClassic,25.3,78.7
    .trainer >>训练你的职业技能
step << Warlock
    .isOnQuest 1738
    .goto StormwindClassic,25.3,78.7
>>对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1738 >>交任务: |cRXP_FRIENDLY_同心树|r
.target Gakin the Darkbinder
    .accept 1739 >>接任务: |cRXP_LOOT_誓缚|r
step << Warlock
    .isOnQuest 1739
    .goto StormwindClassic,25.2,77.5
    >>进入地下室，使用召唤圈提供的任务物品
    .complete 1739,1 --Summoned Succubus (1)
step << Warlock
    .isQuestComplete 1739
    .goto StormwindClassic,25.4,78.7
.target Gakin the Darkbinder
>>对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .turnin 1739 >>交任务: |cRXP_FRIENDLY_誓缚|r
step << Mage
    .goto StormwindClassic,39.6,79.6
    .train 3561>>火车传送：暴风
    .trainer >>训练你的职业技能
step << Rogue
    >>确保你训练了开锁和扒窃
	.goto StormwindClassic,74.6,52.8
	.trainer >>训练你的职业技能
step << Warrior
	.goto StormwindClassic,78.6,45.8
	.trainer >>上楼去。训练你的职业技能
step << Rogue tbc
    #sticky
    .goto StormwindClassic,75.8,60.1
.target Renzik "The Shiv"
>>对话: |cRXP_FRIENDLY_\"剃刀\"雷吉克|r
    .accept 2281 >>接任务: |cRXP_WARN_赤脊山的联络员|r
.target Master Mathias Shaw
>>对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .accept 2360 >>接任务: |cRXP_WARN_马迪亚斯和迪菲亚潜行者|r
step << Rogue tbc
	.goto StormwindClassic,78.3,57.0
    .train 1804>>确保列车开锁
step << Rogue tbc
    .goto StormwindClassic,52.6,65.6
    .home >>将您的炉石设置为暴风城
step << Draenei
    .goto StormwindClassic,78.4,18.3
.target Emissary Taluun
>>对话: |cRXP_FRIENDLY_塔卢恩大使|r
    .accept 9429 >>接任务: |cRXP_LOOT_前往夜色镇|r
step << Hunter
	.goto StormwindClassic,61.7,15.4
	.train 14323 >>训练你的职业技能
step
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    .vendor 5519>>查看矮人区的Billibub是否有铜管。如果有，就买一个
    .collect 4371,1,175,1,1
    .bronzetube
step << skip --Not needed, going from SW -> Duskwood later in the guide after doing the Goldshire inn quest
	.goto StormwindClassic,62.5,62.3,30,0
	.goto StormwindClassic,66.3,62.1
    .fp Stormwind >>获取暴风城飞行路线
step << Shaman
	.goto StormwindClassic,61.9,84.0
	.trainer >>训练你的职业技能
step << Human !Warlock wotlk !Paladin wotlk
    .goto Elwynn Forest,65.2,69.8
	>>前往艾尔文森林的阿佐拉塔顶部
.target Theocritus
>>对话: |cRXP_FRIENDLY_塞欧克瑞图斯|r
    .accept 94 >>接任务: |cRXP_LOOT_法师的眼线|r
step << Human !Warlock !Paladin wotlk
	.goto Elwynn Forest,84.3,64.9
	.train 33388 >>前往埃尔文森林的伊斯特维尔伐木营，训练/购买您的坐骑
	.money <5.0
    .skill riding,1,1
step << Human Paladin/Human Warlock
	.goto StormwindClassic,62.5,62.3,30,0
	.goto StormwindClassic,66.3,62.1
    .fly Redridge >>飞到雷德里奇山脉
    .zoneskip Elwynn Forest
step << !Human
    .goto Elwynn Forest,65.2,69.8
	>>前往阿佐拉塔的顶部。您不需要获得暴风飞行路径。我们稍后会收到。
.target Theocritus
>>对话: |cRXP_FRIENDLY_塞欧克瑞图斯|r
    .accept 94 >>接任务: |cRXP_LOOT_法师的眼线|r
step
    #label exit
    .goto Redridge Mountains,17.4,69.6
	>>Talk to Guard Parker in Redridge Mountains
.target Guard Parker
>>对话: |cRXP_FRIENDLY_卫兵队长帕克|r
    .accept 244 >>接任务: |cRXP_WARN_豺狼人的入侵|r
step
	#sticky
	#label LakeshireFP
	.goto Redridge Mountains,30.5,59.4,-1
    .fp Redridge >>获得Redridge Mountains飞行路线
step
    .goto Redridge Mountains,30.8,60.1,-1
.target Deputy Feldon
>>对话: |cRXP_FRIENDLY_菲尔顿副队长|r
    .turnin 244 >>交任务: |cRXP_FRIENDLY_豺狼人的入侵|r
step
	#requires LakeshireFP
    .goto Redridge Mountains,33.4,49.1
.target Marshal Marris
>>对话: |cRXP_FRIENDLY_治安官马瑞斯|r
    .accept 20 >>接任务: |cRXP_LOOT_黑石氏族的威胁|r
step << !Warlock
    >>前往市政厅
    .goto Redridge Mountains,29.6,44.3
.target Bailiff Conacher
>>对话: |cRXP_FRIENDLY_拜里弗·科纳彻尔|r
    .accept 91 >>接任务: |cRXP_LOOT_所罗门的律法|r
step << Hunter
	.goto Redridge Mountains,28.8,47.3
	.vendor >>重新放置箭头，注意你很快就会得到25级箭头。
step
    .goto Redridge Mountains,27.723,47.381
.target Dockmaster Baren
>>对话: |cRXP_FRIENDLY_码头管理员巴伦|r
    .accept 127 >>接任务: |cRXP_LOOT_卖鱼|r
    .accept 150 >>接任务: |cRXP_LOOT_鱼人偷猎者|r
step << Rogue tbc
    .goto Redridge Mountains,28.062,52.037
>>对话: |cRXP_FRIENDLY_卢修斯|r
    .turnin 2281 >>交任务: |cRXP_FRIENDLY_赤脊山的联络员|r
.target Lucius
    .accept 2282 >>接任务: |cRXP_LOOT_奥瑟尔伐木场|r
step
    #sticky
    #label orcs1
    .goto Redridge Mountains,61.0,43.1
    >>杀死黑石兽人
    .complete 20,1 --Collect Battleworn Axe (x10)
step
    .goto Redridge Mountains,57.3,52.4
	>>杀死murlocs。抢走他们的太阳鱼和鱼翅
    .complete 127,1 --Collect Spotted Sunfish (x10)
    .collect 1468,8,150,1 --Collect Murloc Fin (x8)
step << Rogue tbc
	#completewith next
    +打开箱子训练开锁，你需要75点技能才能完成任务。在你这样做之前，不要打开棕色的箱子
step << Rogue tbc
    .goto Redridge Mountains,52.0,44.8
    .complete 2282,1 --Collect Token of Thievery (x1)
step
    #requires orcs1
    .goto Redridge Mountains,33.6,48.7
.target Marshal Marris
>>对话: |cRXP_FRIENDLY_治安官马瑞斯|r
    .turnin 20 >>交任务: |cRXP_FRIENDLY_黑石氏族的威胁|r
step
    .goto Redridge Mountains,27.8,47.4
.target Dockmaster Baren
>>对话: |cRXP_FRIENDLY_码头管理员巴伦|r
    .turnin 127 >>交任务: |cRXP_FRIENDLY_卖鱼|r
    .turnin 150 >>交任务: |cRXP_FRIENDLY_鱼人偷猎者|r
step << Rogue tbc
    .goto Redridge Mountains,28.062,52.037
.target Lucius
>>对话: |cRXP_FRIENDLY_卢修斯|r
    .turnin 2282 >>交任务: |cRXP_FRIENDLY_奥瑟尔伐木场|r
step << Rogue tbc
    #completewith next
    .destroy 7907 >>摧毁: |cRXP_ENEMY_偷窃技能认证书|r
step
    .goto Redridge Mountains,26.7,46.5
	>>点击酒店外的通缉海报
    .accept 180 >>接任务: |cRXP_WARN_通缉：范高雷中尉|r
step
    .goto Redridge Mountains,21.858,46.329
.target Martie Jainrose
>>对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
    .accept 34 >>接任务: |cRXP_WARN_不速之客|r
step
    .goto Redridge Mountains,15.7,49.4
	>>杀死Bellygrub并抢走她的象牙
    .complete 34,1 --Collect Bellygrub's Tusk (x1)
step
    .goto Redridge Mountains,21.8,46.4
.target Martie Jainrose
>>对话: |cRXP_FRIENDLY_玛蒂·詹罗斯|r
    .turnin 34 >>交任务: |cRXP_FRIENDLY_不速之客|r
step
    >>跑向黄昏
	.goto Duskwood,75.7,45.3
.target Madame Eva
>>对话: |cRXP_FRIENDLY_伊瓦夫人|r
    .accept 66 >>接任务: |cRXP_LOOT_斯塔文的传说|r
    .accept 101 >>接任务: |cRXP_LOOT_惩罚图腾|r
step << Rogue wotlk/!Rogue
    .goto Duskwood,73.9,44.5
    .home >>将您的炉石设置为Darkshire
step
    .goto Duskwood,73.6,46.8
.target 指挥官阿尔西娅·埃本洛克
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .accept 56 >>接任务: |cRXP_LOOT_守夜人|r
step
    .goto Duskwood,72.6,46.9
>>对话: |cRXP_FRIENDLY_书记员达尔塔|r
    .turnin 66 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Clerk Daltry
    .accept 67 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Draenei
    .goto Duskwood,71.816,46.369
.target Anchorite Delan
>>对话: |cRXP_FRIENDLY_学者德尔兰|r
    .turnin 9429 >>交任务: |cRXP_FRIENDLY_前往夜色镇|r
step
    .goto Duskwood,75.3,48.6
.target Elaine Carevin
>>对话: |cRXP_FRIENDLY_艾莱尼·卡尔文|r
    .accept 163 >>接任务: |cRXP_LOOT_乌鸦岭|r
    .accept 164 >>接任务: |cRXP_WARN_斯温的货物|r
    .accept 165 >>接任务: |cRXP_LOOT_隐士|r
step
    .goto Duskwood,75.4,48.0
.target Calor
>>对话: |cRXP_FRIENDLY_卡洛尔|r
    .accept 173 >>接任务: |cRXP_LOOT_森林里的狼人|r
step
    .goto Duskwood,77.8,48.2
    .vendor >>如果没有铜管，请从Herble Baubbletump(限量供应)购买
    .bronzetube
step
    .goto Duskwood,79.8,47.9
.target Viktori Prism'Antras
>>对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 174 >>接任务: |cRXP_WARN_仰望星空|r
    .turnin 174 >>交任务: |cRXP_FRIENDLY_仰望星空|r
    .itemcount 4371,<1
step << Rogue
    .goto Duskwood,77.5,44.4
    .fp Duskwood >>获得黄昏飞行点
step
    .goto Duskwood,79.8,47.9
.target Viktori Prism'Antras
>>对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 175 >>接任务: |cRXP_WARN_仰望星空|r
    .isQuestTurnedIn 174
step
	#sticky
	#completewith HistoryB
	.use 2794 >>留意书本(全区掉落)。你以后需要这个
	.collect 2794,1,337
	.accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
step
    .goto Duskwood,82.0,59.0
>>对话: |cRXP_FRIENDLY_盲眼玛丽|r
    .turnin 175 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.target Blind Mary
    .accept 177 >>接任务: |cRXP_WARN_仰望星空|r
    .isQuestTurnedIn 174
step
    .goto Duskwood,80.9,71.8
    >>在教堂杀死疯狂的食尸鬼。他也可以在外面巡逻。
    .complete 177,1 --Collect Mary's Looking Glass (x1)
    .isQuestTurnedIn 174
	.unitscan Insane Ghoul
step
    .goto Duskwood,79.3,70.3
    >>杀死该地区的骷髅暴徒
    .complete 56,1 --Kill Skeletal Warrior (x8)
    .complete 56,2 --Kill Skeletal Mage (x6)
step
    .goto Duskwood,18.4,56.6
>>对话: |cRXP_FRIENDLY_基特斯|r
    .turnin 163 >>交任务: |cRXP_FRIENDLY_乌鸦岭|r
.target Jitters
    .accept 5 >>接任务: |cRXP_LOOT_饥肠辘辘的基特斯|r
step
    .goto Duskwood,7.781,34.069
>>对话: |cRXP_FRIENDLY_斯温·约根|r
    .turnin 164 >>交任务: |cRXP_FRIENDLY_斯温的货物|r
.target Sven Yorgen
    .accept 95 >>接任务: |cRXP_LOOT_斯温的复仇|r
step
    .goto Duskwood,7.7,33.3
.target Lars
>>对话: |cRXP_FRIENDLY_拉尔斯|r
    .accept 226 >>接任务: |cRXP_LOOT_恶狼成群|r
    .maxlevel 26
step
    .goto Duskwood,28.0,31.5
>>对话: |cRXP_FRIENDLY_亚伯克隆比|r
    .turnin 165 >>交任务: |cRXP_FRIENDLY_隐士|r
.target Abercrombie
    .accept 148 >>接任务: |cRXP_LOOT_来自夜色镇的货物|r
step
    .isOnQuest 226
    >>沿着海岸奔跑，杀死狼
    .xp 25,1
    .goto Duskwood,17.6,24.6
    .complete 226,1 --Kill Starving Dire Wolf (x12)
    .complete 226,2 --Kill Rabid Dire Wolf (x8)
step << Rogue/Druid
    #label HistoryB
	.goto Duskwood,17.7,29.1
    .accept 225 >>接任务: |cRXP_LOOT_饱经风霜的墓碑|r
    .xp <25,1
step << !Rogue !Druid
	.goto Duskwood,17.7,29.1
    .accept 225 >>接任务: |cRXP_LOOT_饱经风霜的墓碑|r
    .xp <25,1
step << Rogue/Druid
    .goto Westfall,56.6,52.6
    .fp Sentinel >>获取哨兵山飞行路线
step << Rogue tbc
    .goto Westfall,68.5,70.0
>>对话: |cRXP_FRIENDLY_密探吉尔妮|r
    .turnin 2360 >>交任务: |cRXP_FRIENDLY_马迪亚斯和迪菲亚潜行者|r
.target Agent Kearnen
    .accept 2359 >>接任务: |cRXP_LOOT_克拉文之塔|r
step << Rogue tbc
    .goto Westfall,70.6,72.8
    >>盗取一个Defias Drones并抢夺塔钥匙
    .complete 2359,2 --Collect Defias Tower Key (x1)
step << Rogue tbc
    .goto Westfall,70.4,74.0
    >>爬到塔顶，从地板上的小箱子里抢东西
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
step << Rogue/Druid
    .goto Westfall,41.5,66.8
    .turnin 67 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
    .accept 68 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Druid tbc
    .goto Westfall,18.0,33.2
    >>掠夺位于水下深处的锁箱
    .collect 15882,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid tbc
    .goto Moonglade,36.0,41.4
    >>传送到moonglade
    >>在雷穆洛斯神殿合并两个吊坠
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid tbc
    .goto Moonglade,56.209,30.636
    >>传送回夜航
>>对话: |cRXP_FRIENDLY_德迪利特·星焰|r
    .turnin 272 >>交任务: |cRXP_FRIENDLY_海狮试炼|r
.target Dendrite Starblaze
    .accept 5061 >>接任务: |cRXP_LOOT_水栖形态|r
step << Druid tbc
    #sticky
    #completewith next
    .goto Moonglade,44.1,45.2
    .fly Teldrassil>>飞往Teldrassil
step << Druid tbc
    .goto Darnassus,35.375,8.405
.target Mathrengyl Bearwalker
>>对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r
    .turnin 5061 >>交任务: |cRXP_FRIENDLY_水栖形态|r
step << Rogue/Druid
    #sticky
    #completewith next
    .hs >>赫斯回到镇上
step << Rogue tbc
    .goto StormwindClassic,75.9,59.9
>>对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .turnin 2359 >>交任务: |cRXP_FRIENDLY_克拉文之塔|r
.target Master Mathias Shaw
    .accept 2607 >>接任务: |cRXP_LOOT_赞吉尔之触|r
step << Rogue tbc
    .goto StormwindClassic,78.1,59.0
    >>去地下室
>>对话: |cRXP_FRIENDLY_道克·米希匹克斯|r
    .turnin 2607 >>交任务: |cRXP_FRIENDLY_赞吉尔之触|r
.target Doc Mixilpixil
    .accept 2608 >>接任务: |cRXP_LOOT_赞吉尔之触|r
step << Rogue tbc
    .goto StormwindClassic,78.1,59.0
    >>键入/放置聊天并等待任务完成
    .complete 2608,1 --Diagnosis Complete
step << Rogue tbc
    .goto StormwindClassic,78.0,58.8
>>对话: |cRXP_FRIENDLY_道克·米希匹克斯|r
    .turnin 2608 >>交任务: |cRXP_FRIENDLY_赞吉尔之触|r
.target Doc Mixilpixil
    .accept 2609 >>接任务: |cRXP_LOOT_赞吉尔之触|r
step << Rogue tbc
    .goto StormwindClassic,78.2,59.0
    >>从阴影经销商处购买含铅小瓶
    .complete 2609,2 --Collect Leaded Vial (x1)
step << Rogue tbc
    >>去卖花的人那里
    .complete 2609,1 --Collect Simple Wildflowers (x1)
    .goto StormwindClassic,64.3,60.8
step << Rogue tbc
    #sticky
    #completewith next
    >>在拍卖行买一个铜管。这是你的无赖任务，而不是仰望星空！
    .complete 2609,3 --Collect 青铜管 (x1)
step << Rogue tbc
    .goto StormwindClassic,53.6,59.3
    >>前往大教堂广场和公园之间桥旁的商店。这是你必须捡到的地面上的物体。
    .complete 2609,4 --Collect Spool of Light Chartreuse Silk Thread (x1)
    .goto StormwindClassic,39.8,46.5
    >>如果你找不到青铜管，你必须跳过这个任务，将急救训练到80级，在Duskwood从蜘蛛身上种植一个小毒液囊，制作一种抗毒液并清除Zanzil毒液。
step << Rogue tbc
    .goto StormwindClassic,78.0,58.9
.target Doc Mixilpixil
>>对话: |cRXP_FRIENDLY_道克·米希匹克斯|r
    .turnin 2609 >>交任务: |cRXP_FRIENDLY_赞吉尔之触|r
step << Rogue tbc
    .goto StormwindClassic,78.2,59.0
    .vendor >>购买腐烂的灰尘和空瓶子，这样你可以制造毒药
step << Rogue tbc
    #sticky
    #completewith next
    .use 8432 >>用解毒剂解毒。
    .destroy 8046 >>摧毁: |cRXP_ENEMY_吉尔妮的日记|r
step << Rogue tbc
    .goto StormwindClassic,66.2,62.2
    .fly Duskwood>>飞到黄昏
step << !Rogue !Druid !Priest !Warlock
    .goto Duskwood,60.8,29.7
	>>升级你的方式回到东部黄昏。如果现在杀死暗影编织者太难了，请跳过这一步，稍后您将完成它
    .complete 173,1 --Kill Nightbane Shadow Weaver (x6)
step
    .goto Duskwood,73.8,43.3
>>对话: |cRXP_FRIENDLY_厨师格鲁奥|r
    .turnin 5 >>交任务: |cRXP_FRIENDLY_饥肠辘辘的基特斯|r
.target Chef Grual
    .accept 93 >>接任务: |cRXP_LOOT_黑蟹蛋糕|r
step
    .goto Duskwood,73.6,46.8
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 56 >>交任务: |cRXP_FRIENDLY_守夜人|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 57 >>接任务: |cRXP_LOOT_守夜人|r
step
    .goto Duskwood,72.642,47.613
.target Sirra Von'Indi
>>对话: |cRXP_FRIENDLY_希拉·沃宁迪|r
    .turnin 225 >>交任务: |cRXP_FRIENDLY_饱经风霜的墓碑|r
    .isOnQuest 225
step
.target Sirra Von'Indi
>>对话: |cRXP_FRIENDLY_希拉·沃宁迪|r
    .accept 227 >>接任务: |cRXP_LOOT_摩根·拉迪莫尔|r
    .goto Duskwood,72.642,47.613
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 227 >>交任务: |cRXP_FRIENDLY_摩根·拉迪莫尔|r
    .goto Duskwood,73.5,46.9
.target 指挥官阿尔西娅·埃本洛克
    .accept 228 >>接任务: |cRXP_LOOT_摩拉迪姆|r
    .goto Duskwood,73.5,46.9
    .isQuestTurnedIn 225
step
	#sticky
	#completewith next
	.destroy 2154 >>摧毁: |cRXP_ENEMY_摩根·拉迪莫尔的故事|r, 它在你的背包中. 不再需要它了
step
    .goto Duskwood,75.7,45.3
>>对话: |cRXP_FRIENDLY_伊瓦夫人|r
    .turnin 148 >>交任务: |cRXP_FRIENDLY_来自夜色镇的货物|r
.target Madame Eva
    .accept 149 >>接任务: |cRXP_LOOT_幽灵的发丝|r
step
    .goto Duskwood,75.3,47.9
>>对话: |cRXP_FRIENDLY_卡洛尔|r
    .turnin 173 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.target Calor
    .accept 221 >>接任务: |cRXP_LOOT_森林里的狼人|r
    .isQuestComplete 173
step
    #label HistoryB
	.goto Duskwood,79.8,47.8
>>对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
    .turnin 177 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.target Viktori Prism'Antras
    .accept 181 >>接任务: |cRXP_WARN_仰望星空|r
    .isQuestTurnedIn 174
step
	#sticky
	#completewith HistoryB2
	>>留意旧历史书(全区掉落)。你以后需要这个
	.collect 2794,1,337
	.accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
step
    .goto Duskwood,81.9,59.1
>>对话: |cRXP_FRIENDLY_盲眼玛丽|r
    .turnin 149 >>交任务: |cRXP_FRIENDLY_幽灵的发丝|r
.target Blind Mary
    .accept 154 >>接任务: |cRXP_LOOT_归还梳子|r
step
    .goto Duskwood,75.7,45.3
>>对话: |cRXP_FRIENDLY_伊瓦夫人|r
    .turnin 154 >>交任务: |cRXP_FRIENDLY_归还梳子|r
.target Madame Eva
    .accept 157 >>接任务: |cRXP_LOOT_幽灵的发丝|r
step
    .goto Duskwood,49.9,77.8
    .turnin 95 >>交任务: |cRXP_FRIENDLY_斯温的复仇|r
    .accept 230 >>接任务: |cRXP_LOOT_斯温的营地|r
step
	#label spiders
	#sticky
	#completewith spiderend12
	>>在达克伍德杀死蜘蛛
    .complete 93,1 --Collect Gooey Spider Leg (x6)
	.maxlevel 27
step
	.goto Duskwood,17.7,29.1
    .accept 225 >>接任务: |cRXP_LOOT_饱经风霜的墓碑|r
step
    .goto Duskwood,28.0,31.5
>>对话: |cRXP_FRIENDLY_亚伯克隆比|r
    .turnin 157 >>交任务: |cRXP_FRIENDLY_幽灵的发丝|r
.target Abercrombie
    .accept 158 >>接任务: |cRXP_LOOT_僵尸|r
step
    .goto Duskwood,17.6,24.6
    .complete 226,1 --Kill Starving Dire Wolf (x12)
    .complete 226,2 --Kill Rabid Dire Wolf (x8)
    .isOnQuest 226
step << Hunter/Paladin
    .goto Duskwood,19.7,39.7
    >>杀死在墓地漫游的30级精英。在这个地区的大树周围放风筝。
    >>当他愤怒时，跑开疗伤，利用大树腾出空间。在激怒时不要试图击毙他 << Paladin
    .complete 228,1 --Collect Mor'Ladim's Skull (x1)
    .isOnQuest 228
step
    .goto Duskwood,7.781,34.069
>>对话: |cRXP_FRIENDLY_斯温·约根|r
    .turnin 230 >>交任务: |cRXP_FRIENDLY_斯温的营地|r
.target Sven Yorgen
    .accept 262 >>接任务: |cRXP_LOOT_模糊的人影|r
step
    #label HistoryB2
	.goto Duskwood,7.7,33.3
.target Lars
>>对话: |cRXP_FRIENDLY_拉尔斯|r
    .turnin 226 >>交任务: |cRXP_FRIENDLY_恶狼成群|r
    .isOnQuest 226
step << !Rogue !Druid
	#requires spiders
    .goto Westfall,56.6,52.6
    .fp Sentinel >>获取哨兵山飞行路线
step << !Rogue !Druid
    .goto Westfall,41.5,66.8
    .turnin 67 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
    .accept 68 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Paladin
    .goto Westfall,42.5,88.6
>>对话: |cRXP_FRIENDLY_达芙妮·斯迪威尔|r
    .turnin 1650 >>交任务: |cRXP_FRIENDLY_勇气之书|r
.target Daphne Stilwell
    .accept 1651 >>接任务: |cRXP_WARN_勇气之书|r
step << Paladin
    .goto Westfall,42.5,88.6
    .complete 1651,1 --Protect Daphne Stilwell (1)
>>对话: |cRXP_FRIENDLY_达芙妮·斯迪威尔|r
    .turnin 1651 >>交任务: |cRXP_FRIENDLY_勇气之书|r
.target Daphne Stilwell
    .accept 1652 >>接任务: |cRXP_WARN_勇气之书|r
step << !Rogue !Druid
    #sticky
    #completewith next
    .hs >>赫斯回到黄昏
step << Rogue/Druid
	#requires spiders
    .goto Duskwood,60.8,29.7
	>>磨蹭着回到东黄昏
    .complete 173,1 --Kill Nightbane Shadow Weaver (x6)
step
    .goto Duskwood,75.7,45.3
>>对话: |cRXP_FRIENDLY_伊瓦夫人|r
    .turnin 262 >>交任务: |cRXP_FRIENDLY_模糊的人影|r
.target Madame Eva
    .accept 265 >>接任务: |cRXP_LOOT_继续搜寻|r
step
    .goto Duskwood,72.6,46.9
>>对话: |cRXP_FRIENDLY_书记员达尔塔|r
    .turnin 265 >>交任务: |cRXP_FRIENDLY_继续搜寻|r
.target Clerk Daltry
    .accept 266 >>接任务: |cRXP_LOOT_调查旅店|r
    .turnin 68 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
    .accept 69 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
    .goto Duskwood,72.642,47.613
.target Sirra Von'Indi
>>对话: |cRXP_FRIENDLY_希拉·沃宁迪|r
    .turnin 225 >>交任务: |cRXP_FRIENDLY_饱经风霜的墓碑|r
    .isOnQuest 225
step
.target Sirra Von'Indi
>>对话: |cRXP_FRIENDLY_希拉·沃宁迪|r
    .accept 227 >>接任务: |cRXP_LOOT_摩根·拉迪莫尔|r
    .goto Duskwood,72.642,47.613
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 227 >>交任务: |cRXP_FRIENDLY_摩根·拉迪莫尔|r
    .goto Duskwood,73.5,46.9
.target 指挥官阿尔西娅·埃本洛克
    .accept 228 >>接任务: |cRXP_LOOT_摩拉迪姆|r
    .goto Duskwood,73.5,46.9
    .isQuestTurnedIn 225
step
	#completewith next
	.vendor >>记住购买25级食物和水
step
    .goto Duskwood,73.9,44.4
>>对话: |cRXP_FRIENDLY_旅店老板斯密茨|r
    .turnin 158 >>交任务: |cRXP_FRIENDLY_僵尸|r
.target Tavernkeep Smitts
    .accept 156 >>接任务: |cRXP_LOOT_收集腐败之花|r
    .turnin 266 >>交任务: |cRXP_FRIENDLY_调查旅店|r
    .accept 453 >>接任务: |cRXP_LOOT_搜寻乌鸦岭|r
step
    .goto Duskwood,73.9,43.9
.target Chef Grual
>>对话: |cRXP_FRIENDLY_厨师格鲁奥|r
    .turnin 93 >>交任务: |cRXP_FRIENDLY_黑蟹蛋糕|r
    .isQuestComplete 93
step
    .goto Duskwood,73.9,43.9
.target Chef Grual
>>对话: |cRXP_FRIENDLY_厨师格鲁奥|r
    .accept 240 >>接任务: |cRXP_LOOT_基特斯的美餐|r
    .isQuestTurnedIn 93
step << Hunter/Paladin
	.goto Duskwood,73.7,46.8
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 228 >>交任务: |cRXP_FRIENDLY_摩拉迪姆|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 229 >>接任务: |cRXP_LOOT_幸存的女儿|r
step << Hunter/Paladin
    .goto Duskwood,74.543,46.085
>>对话: |cRXP_FRIENDLY_守夜人拉迪摩尔|r
    .turnin 229 >>交任务: |cRXP_FRIENDLY_幸存的女儿|r
.target Watcher Ladimore
    .accept 231 >>接任务: |cRXP_LOOT_女儿的爱|r
step << !Rogue !Druid
    .isOnQuest 173
    .goto Duskwood,60.8,29.7
	>>杀死黑郡上方的暗影编织者
    .complete 173,1 --Kill Nightbane Shadow Weaver (x6)
step
    .goto Duskwood,75.3,47.9
>>对话: |cRXP_FRIENDLY_卡洛尔|r
    .turnin 173 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.target Calor
    .accept 221 >>接任务: |cRXP_LOOT_森林里的狼人|r
    .isQuestComplete 173
step
    #label spiderend12
    .goto Duskwood,77.5,44.3
 .fly Redridge >>飞到雷德里奇
step
    #xprate <1.2
    .goto Redridge Mountains,31.537,57.852
.target Guard Howe
>>对话: |cRXP_FRIENDLY_卫兵豪维|r
    .accept 128 >>接任务: |cRXP_LOOT_悬赏：黑石氏族|r
    .maxlevel 26 << Paladin/Hunter
step
    .goto Redridge Mountains,33.5,49.2
.target Marshal Marris
>>对话: |cRXP_FRIENDLY_治安官马瑞斯|r
    .accept 19 >>接任务: |cRXP_LOOT_萨瑞尔祖恩|r
    .accept 115 >>接任务: |cRXP_LOOT_暗影魔法|r
step
    .goto Redridge Mountains,80.3,37.2
	>>杀死法戈雷，并为他的爪子洗劫他。当许多侏儒在他周围巡逻时要小心，他是影子免疫的，可以在40码范围内的任何时候攻击所有侏儒。
    .complete 180,1 --Collect Fangore's Paw (x1)
step
    .isOnQuest 94
    .goto Redridge Mountains,84.3,46.9
    .turnin 94 >>交任务: |cRXP_FRIENDLY_法师的眼线|r
step
    .goto Redridge Mountains,84.3,46.9
    .accept 248 >>接任务: |cRXP_LOOT_监视|r
    .isQuestTurnedIn 94
step << !Warlock
    .goto Redridge Mountains,74.2,42.1
	>>杀死该地区的侏儒
    .complete 91,1 --Collect Shadowhide Pendant (x10)
step
	#sticky
	#label tharilzun
    .goto Redridge Mountains,69.2,59.8
	>>杀死Tharil'zun并掠夺他的头部。
    .complete 19,1 --Collect Tharil'zun's Head (x1)
step
    .goto Redridge Mountains,66.6,55.4
	>>杀死黑石暗影投射者。为了午夜球而掠夺他们
    .complete 115,1 --Collect Midnight Orb (x3)
step
    .isOnQuest 248
    .goto Redridge Mountains,63.2,49.7
	>>爬到塔顶
    .turnin 248 >>交任务: |cRXP_FRIENDLY_监视|r
step
    .goto Redridge Mountains,32.8,6.8
    .complete 128,1 --Kill Blackrock Champion (x15)
    .isOnQuest 128
step
    .goto Redridge Mountains,33.504,48.969
.target Marshal Marris
>>对话: |cRXP_FRIENDLY_治安官马瑞斯|r
    .turnin 19 >>交任务: |cRXP_FRIENDLY_萨瑞尔祖恩|r
	.isQuestComplete 19
step
	.goto Redridge Mountains,33.504,48.969
.target Marshal Marris
>>对话: |cRXP_FRIENDLY_治安官马瑞斯|r
    .turnin 115 >>交任务: |cRXP_FRIENDLY_暗影魔法|r
step << !Warlock
    .goto Redridge Mountains,29.6,44.3
.target Bailiff Conacher
>>对话: |cRXP_FRIENDLY_拜里弗·科纳彻尔|r
    .turnin 91 >>交任务: |cRXP_FRIENDLY_所罗门的律法|r
step
    .goto Redridge Mountains,29.8,44.5
.target Magistrate Solomon
>>对话: |cRXP_FRIENDLY_所罗门镇长|r
    .turnin 180 >>交任务: |cRXP_FRIENDLY_通缉：范高雷中尉|r
step
    .goto Redridge Mountains,31.6,58.0
.target Guard Howe
>>对话: |cRXP_FRIENDLY_卫兵豪维|r
    .turnin 128 >>交任务: |cRXP_FRIENDLY_悬赏：黑石氏族|r
    .isQuestComplete 128
step
    #completewith fpwfend
	.goto Redridge Mountains,30.5,59.3
    .fly Westfall>>飞往威斯特福尔
step
	#sticky
	#completewith HistoryB3
	.use 2794 >>留意旧历史书(全区掉落)。你以后需要这个
	.collect 2794,1,337
	.accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
step
    #completewith fpwfend
    .goto Duskwood,18.4,56.5
>>对话: |cRXP_FRIENDLY_基特斯|r
    .turnin 453 >>交任务: |cRXP_FRIENDLY_搜寻乌鸦岭|r
.target Jitters
    .accept 268 >>接任务: |cRXP_LOOT_回复斯温|r
step
    .goto Duskwood,18.4,56.5
.target Jitters
>>对话: |cRXP_FRIENDLY_基特斯|r
    .turnin 240 >>交任务: |cRXP_FRIENDLY_基特斯的美餐|r
    .isOnQuest 240
step
    .goto Duskwood,7.7,34.1
>>对话: |cRXP_FRIENDLY_斯温·约根|r
    .turnin 268 >>交任务: |cRXP_FRIENDLY_回复斯温|r
.target Sven Yorgen
    .accept 323 >>接任务: |cRXP_LOOT_证明你的实力|r
step
    #sticky
    #completewith nomoreraidernote
    .goto Duskwood,16.2,38.8,0
    >>在完成其他任务时，杀死地穴周围的骷髅突袭者和山上的房子。你通常不可能一次得到全部15个，并希望让它们重新焕发活力。
    .complete 323,1 --Kill Skeletal Raider (x15)
step << !Hunter !Paladin
    .goto Duskwood,21.6,45.1
	>>杀死该地区的亡灵并掠夺他们
    .complete 57,1 --Kill Skeletal Fiend (x15)
    .complete 57,2 --Kill Skeletal Horror (x15)
    .complete 156,1 --Collect Rot Blossom (x8)
    .complete 101,3 --Collect Skeleton Finger (x10)
step << Hunter/Paladin
    .goto Duskwood,17.7,29.2
    >>单击墓碑
    .turnin 231 >>交任务: |cRXP_FRIENDLY_女儿的爱|r
step << Hunter/Paladin
    .goto Duskwood,21.6,45.1
	>>杀死该地区的亡灵并掠夺他们
    .complete 57,1 --Kill Skeletal Fiend (x15)
    .complete 57,2 --Kill Skeletal Horror (x15)
    .complete 156,1 --Collect Rot Blossom (x8)
    .complete 101,3 --Collect Skeleton Finger (x10)
step
    #label nomoreraidernote
step
    .goto Duskwood,16.2,38.8
    >>杀死地下室周围的暴徒，你可能需要进去杀死你需要的3个看守
    .complete 323,1 --Kill Skeletal Raider (x15)
    .complete 323,2 --Kill Skeletal Healer (x3)
    .complete 323,3 --Kill Skeletal Warder (x3)
step
	 .goto Duskwood,23.8,35.0
	.xp 27+12000 >>升级到12000+/32200xp
step
    .goto Duskwood,19.7,39.7
    >>杀死在墓地漫游的30级精英。如果你不能独奏或找不到一个小组，请跳过这一步。
    >>当他愤怒时，就逃跑，用大树放风筝，腾出空间。在激怒时不要试图击毙他
    .unitscan Mor'Ladim
    .complete 228,1 --Collect Mor'Ladim's Skull (x1)
step
    #label HistoryB3
	.goto Duskwood,7.9,34.1
>>对话: |cRXP_FRIENDLY_斯温·约根|r
    .turnin 323 >>交任务: |cRXP_FRIENDLY_证明你的实力|r
.target Sven Yorgen
    .accept 269 >>接任务: |cRXP_LOOT_寻求指引|r
step
    >>跑去Goldshire
    .goto Elwynn Forest,43.7,65.9
>>对话: |cRXP_FRIENDLY_旅店老板法雷|r
    .turnin 69 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Innkeeper Farley
    .accept 70 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
    >>到楼上那个无赖教练后面的房间里去。掠夺胸部
	.goto Elwynn Forest,44.2,65.9
    .complete 70,1 --Collect An Undelivered Letter (x1)
step << Shaman
	.goto StormwindClassic,61.9,84.0
	.trainer >>训练你的职业技能
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .trainer >>训练你的职业技能
step << Mage
    .goto StormwindClassic,39.6,79.6
	>>Teleport到stormwind
	.trainer >>训练你的职业技能
step
    #xprate <1.5
    .goto StormwindClassic,26.4,78.4
.target Zardeth of the Black Claw
>>对话: |cRXP_FRIENDLY_黑爪加尔德斯|r
    .accept 335 >>接任务: |cRXP_LOOT_名酿|r
step << Warlock
    .goto StormwindClassic,26.4,78.4
	.trainer >>训练你的职业技能
step
    .goto StormwindClassic,29.8,61.8
>>对话: |cRXP_FRIENDLY_管理员弗索姆|r
    .turnin 70 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Caretaker Folsom
    .accept 72 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
    .goto StormwindClassic,29.6,61.7
    .turnin 72 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
    .accept 74 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step <<!Mage
    .goto StormwindClassic,40.8,30.8
.target Brother Sarno
>>对话: |cRXP_FRIENDLY_萨尔努修士|r
    .accept 2923 >>接任务: |cRXP_LOOT_工匠大师欧沃斯巴克|r
step << Paladin
    .goto StormwindClassic,40.0,29.9
>>对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1652 >>交任务: |cRXP_FRIENDLY_勇气之书|r
.target Duthorian Rall
    .accept 1653 >>接任务: |cRXP_WARN_正义试炼|r
step
    .goto StormwindClassic,39.3,28.0
>>对话: |cRXP_FRIENDLY_主教法席恩|r
    .turnin 269 >>交任务: |cRXP_FRIENDLY_寻求指引|r
.target Bishop Farthing
    .accept 270 >>接任务: |cRXP_LOOT_被诅咒的舰队|r
step
    #xprate >1.3
    .xp <28,1
    .goto StormwindClassic,41.5,31.7
	>>Talk to the patrolling kid
.target Thomas
>>对话: |cRXP_FRIENDLY_托马斯|r
    .accept 1274 >>接任务: |cRXP_LOOT_失踪的使节|r
step << Paladin
#xprate <1.5
	.goto StormwindClassic,38.6,32.8
	.trainer >>训练你的职业技能
step << Priest
#xprate <1.5
	.goto StormwindClassic,38.5,26.8
	.trainer >>训练你的职业技能
step << Hunter
#xprate <1.5
	.goto StormwindClassic,61.7,15.4
	.trainer >>训练你的职业技能
--????

]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 27-30 湿地/希尔斯布莱德丘陵
#version 1
#group RestedXP 联盟 20-32
#next 30-32 暮色森林/荆棘谷
#xprate <1.5

step
    .goto StormwindClassic,60.5,12.3,40,0
    .goto StormwindClassic,60.5,12.3,0
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >>点击此处在电车内注销跳过
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step <<!Mage
    .goto Ironforge,69.8,50.1
.target Tinkmaster Overspark
>>对话: |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r
    .turnin 2923 >>交任务: |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r
step << Rogue
    #sticky
    #completewith next
    .trainer >>在铁炉堡训练你的职业法术。如果你刚刚在暴风城训练，请跳过。
step << Rogue
    .goto Ironforge,45.2,6.6
    >>购买31级武器升级(17dps)
    .collect 2520,1
    .collect 2526,1
    >>如果你能在拍卖行找到更好的武器，跳过这一步
step << Mage
    #completewith next
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >>列车2H轴 << !Rogue
	.train 266 >>训练枪 << Hunter/Warrior/Rogue
    .train 199 >>火车2H梅斯 << Warrior/Shaman
    .train 54 >>火车梅斯 << Rogue/Shaman/wotlk Warrior
    .train 44 >>火车轴 << Shaman/wotlk Warrior
step << Hunter tbc
	#sticky
	#completewith next
	.goto Ironforge,61.34,89.25
	>>走进大楼，下楼去，从Thalgus Thunderfist那里买一个30级箭袋
	.collect 7371,1
step << Paladin
    .goto Dun Morogh,52.5,36.8
    >>前往铁炉堡大门
.target Jordan Stilwell
>>对话: |cRXP_FRIENDLY_乔丹·斯迪威尔|r
    .turnin 1653 >>交任务: |cRXP_FRIENDLY_正义试炼|r
step << Dwarf !Paladin wotlk
	#sticky
	#completewith next
	.goto Dun Morogh,63.5,50.6
	.money <5.00
	.train 152 >>前往: |cRXP_PICK_丹莫罗|r, train riding and purchase your mount.
step << Gnome !Warlock wotlk
	#sticky
	#completewith next
	.goto Dun Morogh,49.2,48.1
	.money <5.00
	.train 553 >>前往: |cRXP_PICK_丹莫罗|r, train riding and purchase your mount.
step
	#label end
	.goto Ironforge,56.2,46.8
    .fly Wetlands>>飞到湿地
step
    .goto Wetlands,8.4,58.5
>>对话: |cRXP_FRIENDLY_卡尔·波兰|r
    .turnin 279 >>交任务: |cRXP_FRIENDLY_海中的鱼人|r
.target Karl Boran
    .accept 281 >>接任务: |cRXP_LOOT_夺回雕像|r
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
    .turnin 469 >>交任务: |cRXP_FRIENDLY_日常供货|r
    .isOnQuest 469
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
    .turnin 484 >>交任务: |cRXP_FRIENDLY_小鳄鱼皮|r
    .isOnQuest 484
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
    .accept 471 >>接任务: |cRXP_LOOT_学徒的职责|r
    .isQuestTurnedIn 484
step
    .goto Wetlands,10.8,59.6
.target First Mate Fitzsimmons
>>对话: |cRXP_FRIENDLY_大副菲兹莫斯|r
    .accept 289 >>接任务: |cRXP_LOOT_被诅咒的船员|r
step
    .goto Wetlands,10.6,60.5
>>对话: |cRXP_FRIENDLY_戈罗林·钢眉|r
    .turnin 270 >>交任务: |cRXP_FRIENDLY_被诅咒的舰队|r
.target Glorin Steelbrow
    .accept 321 >>接任务: |cRXP_LOOT_光铸铁|r
step
      .goto Wetlands,10.7,60.9
	>>如果需要，补充食物/水。
.home >>把你的炉石放在深水酒馆
step
    .goto Wetlands,10.9,55.9
.target Harlo Barnaby
>>对话: |cRXP_FRIENDLY_哈尔罗·巴纳比|r
    .accept 472 >>接任务: |cRXP_LOOT_丹莫德的陷落|r
step
    .goto Wetlands,9.9,57.4
>>对话: |cRXP_FRIENDLY_斯托菲队长|r
    .turnin 464 >>交任务: |cRXP_FRIENDLY_龙喉战旗|r
.target Captain Stoutfist
    .accept 465 >>接任务: |cRXP_LOOT_纳克罗什的优势|r
step
    .goto Wetlands,11.7,58.0
.target Sida
>>对话: |cRXP_FRIENDLY_塞达|r
    .accept 470 >>接任务: |cRXP_LOOT_搜寻软泥怪|r
step
    .goto Wetlands,11.500,52.174
.target Tarrel Rockweaver
>>对话: |cRXP_FRIENDLY_塔雷尔·石纹|r
    .turnin 306 >>交任务: |cRXP_FRIENDLY_寻找挖掘队|r
step
    .goto Wetlands,13.5,41.5
    .turnin 281 >>交任务: |cRXP_FRIENDLY_夺回雕像|r
    .accept 284 >>接任务: |cRXP_LOOT_继续搜寻|r
step
    .goto Wetlands,13.5,38.4
    .turnin 284 >>交任务: |cRXP_FRIENDLY_继续搜寻|r
    .accept 285 >>接任务: |cRXP_LOOT_搜寻雕像|r
step
    .goto Wetlands,13.9,34.8
    .turnin 285 >>交任务: |cRXP_FRIENDLY_搜寻雕像|r
    .accept 286 >>接任务: |cRXP_LOOT_归还雕像|r
step
    .goto Wetlands,13.9,30.4
    >>要找到斯内利，从靠近海岸的船体上的孔进入船内
	>>如果你找不到海军陆战队，向北的船通常有更多的海军陆战团。
    .complete 289,3 --Collect Snellig's Snuffbox (x1)
    .complete 289,1 --Kill Cursed Sailor (x13)
    .complete 289,2 --Kill Cursed Marine (x5)
step
    .goto Wetlands,17.8,26.3
	>>杀死沿海的巨鳄鱼，并掠夺它们的皮毛
    .complete 471,1 --Collect Giant Crocolisk Skin (x6)
    .isQuestTurnedIn 484
step
    .goto Wetlands,38.179,50.889
.target Ormer Ironbraid
>>对话: |cRXP_FRIENDLY_奥莫尔·铁衣|r
    .accept 294 >>接任务: |cRXP_LOOT_奥莫尔的复仇|r
step
	#label fossil
	#sticky
	#completewith Relu1
	>>杀死湿地中的猛禽
	.complete 943,1
    .isOnQuest 943
step
    .goto Wetlands,24.7,48.6
    .complete 294,1 --Kill Mottled Raptor (x10)
    .complete 294,2 --Kill Mottled Screecher (x10)
step
    .goto Wetlands,38.179,50.889
>>对话: |cRXP_FRIENDLY_奥莫尔·铁衣|r
    .turnin 294 >>交任务: |cRXP_FRIENDLY_奥莫尔的复仇|r
.target Ormer Ironbraid
    .accept 295 >>接任务: |cRXP_LOOT_奥莫尔的复仇|r
step
    .goto Wetlands,38.8,52.3
>>对话: |cRXP_FRIENDLY_麦琳·石纹|r
    .turnin 305 >>交任务: |cRXP_FRIENDLY_寻找挖掘队|r
.target Merrin Rockweaver
step
	.goto Wetlands,38.81,52.39
.target Prospector Whelgar
>>对话: |cRXP_FRIENDLY_勘察员维尔加|r
	.accept 299 >>接任务: |cRXP_LOOT_发现历史|r
step
	#label relics
	#sticky
	.goto Wetlands,34.3,49.5,0
	>>掠夺挖掘点周围的4处遗迹
	.complete 299,1
	.complete 299,2
	.complete 299,3
	.complete 299,4
step
    .goto Wetlands,34.6,48.0
    .complete 295,1 --Kill Mottled Scytheclaw (x10)
    .complete 295,2 --Kill Mottled Razormaw (x10)
step
    .goto Wetlands,38.179,50.889
>>对话: |cRXP_FRIENDLY_奥莫尔·铁衣|r
    .turnin 295 >>交任务: |cRXP_FRIENDLY_奥莫尔的复仇|r
.target Ormer Ironbraid
    .accept 296 >>接任务: |cRXP_LOOT_奥莫尔的复仇|r
step
    .goto Wetlands,31.5,48.9,50,0
    .goto Wetlands,33.3,51.5
	>>在山顶杀死萨尔托特。为他的魔爪掠夺他。小心，因为他会流鼻涕，并有6分钟的重生
    .complete 296,1 --Collect Sarltooth's Talon (x1)
step
	#requires relics
    .goto Wetlands,38.179,50.889
.target Ormer Ironbraid
>>对话: |cRXP_FRIENDLY_奥莫尔·铁衣|r
    .turnin 296 >>交任务: |cRXP_FRIENDLY_奥莫尔的复仇|r
step
	#requires relics
	.goto Wetlands,38.81,52.39
.target Prospector Whelgar
>>对话: |cRXP_FRIENDLY_勘察员维尔加|r
	.turnin 299 >>交任务: |cRXP_FRIENDLY_发现历史|r
step
	#label Relu1
	.goto Wetlands,38.81,52.39
	>>掠夺地上的化石
	.complete 943,2
    .isOnQuest 943
step
	.goto Wetlands,34.6,48.0
	>>继续杀戮猛禽直到你洗劫了Relu之石
	.complete 943,1
    .isOnQuest 943
step
    .goto Wetlands,44.2,25.8
    >>杀死地穴周围的黏液
    .complete 470,1 --Collect Sida's Bag (x1)
step
    .goto Wetlands,44.2,33.9
	>>杀死侏儒
    .complete 277,1 --Collect Crude Flint (x9)
    .isQuestTurnedIn 276
step
    .goto Wetlands,56.3,40.5
>>对话: |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
    .turnin 277 >>交任务: |cRXP_FRIENDLY_火焰管制|r
.target Rethiel the Greenwarden
    .accept 275 >>接任务: |cRXP_LOOT_大地上的脓疱|r
    .isQuestTurnedIn 276
step
    .isOnQuest 465
    .goto Wetlands,47.3,46.9
    .turnin 465 >>交任务: |cRXP_FRIENDLY_纳克罗什的优势|r
    .accept 474 >>接任务: |cRXP_LOOT_击败纳克罗什|r
step
    .isOnQuest 474
    .goto Wetlands,53.5,54.6
	>>杀了内克洛什，然后抢走他的头
    .complete 474,1 --Collect Nek'rosh's Head (x1)
step
    .goto Wetlands,64.8,75.3
    >>掠夺瀑布底部的树根
    .complete 335,2 --Collect Musquash Root (x1)
    .isOnQuest 335
step << Druid
    #completewith next
    >>前往: |cRXP_PICK_月光林地|r
    .goto Moonglade,52.4,40.6
    .trainer 12042 >>火车咒语
step
    .hs >>赫斯到米奈希尔港
step
    .goto Wetlands,10.8,59.6
>>对话: |cRXP_FRIENDLY_大副菲兹莫斯|r
    .turnin 289 >>交任务: |cRXP_FRIENDLY_被诅咒的船员|r
.target First Mate Fitzsimmons
    .accept 290 >>接任务: |cRXP_LOOT_解除诅咒|r
step
    .goto Wetlands,10.828,60.398
	>>上楼去和考古学家Flagongut谈谈
.target Archaeologist Flagongut
>>对话: |cRXP_FRIENDLY_考古学家弗拉冈特|r
	.turnin 943 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .isOnQuest 943
step
    .goto Wetlands,11.7,58.1
.target Sida
>>对话: |cRXP_FRIENDLY_塞达|r
    .turnin 470 >>交任务: |cRXP_FRIENDLY_搜寻软泥怪|r
    .isQuestComplete 470
step
    .goto Wetlands,8.310,58.533
.target Karl Boran
>>对话: |cRXP_FRIENDLY_卡尔·波兰|r
    .turnin 286 >>交任务: |cRXP_FRIENDLY_归还雕像|r
step
    .goto Wetlands,8.6,55.8
.target James Halloran
>>对话: |cRXP_FRIENDLY_詹姆斯·哈洛兰|r
    .turnin 471 >>交任务: |cRXP_FRIENDLY_学徒的职责|r
    .isQuestTurnedIn 484
step
    .goto Wetlands,15.5,23.5
    >>通过破损的桅杆进入船内，杀死Halyndor船长
    .complete 290,1 --Collect Intrepid Strongbox Key (x1)
step
    .goto Wetlands,14.4,24.0
	>>潜水。船北侧的船体上有一个洞。不要删除Paleth的诅咒之眼，它将用于以后的任务。
    .turnin 290 >>交任务: |cRXP_FRIENDLY_解除诅咒|r
    .accept 292 >>接任务: |cRXP_LOOT_帕雷斯之眼|r
step
	#sticky
    #completewith Nekkywekky
    >>杀死芬·克里珀斯，他们是潜伏在河边的潜行暴徒
    .complete 275,1 --Kill Fen Creeper (x8)--O
    .isOnQuest 275
step
    .goto Wetlands,47.3,46.9
    .turnin 465 >>交任务: |cRXP_FRIENDLY_纳克罗什的优势|r
    .accept 474 >>接任务: |cRXP_LOOT_击败纳克罗什|r
step
    #label Nekkywekky
    .goto Wetlands,53.5,54.6
	>>杀了内克洛什，然后抢走他的头
    .complete 474,1 --Collect Nek'rosh's Head (x1)
step << Warrior tbc
    #sticky
	#completewith next
    .goto Wetlands,50.2,37.8
    >>检查药草供应商并购买一些Liferoot，稍后你需要8个才能完成任务，如果你已经有了，跳过这一步
    .collect 3357,8 --Collect Liferoot (x8)
    #xprate <1.5
step
    .isOnQuest 275
    .goto Wetlands,56.4,40.5
	>>在河里干掉Fen Creepers
    .complete 275,1 --Kill Fen Creeper (x8)
step
    .goto Wetlands,56.4,40.5
.target Rethiel the Greenwarden
>>对话: |cRXP_FRIENDLY_绿色守卫者雷希耶尔|r
    .turnin 275 >>交任务: |cRXP_FRIENDLY_大地上的脓疱|r
    .isOnQuest 275
step
    .goto Wetlands,49.9,18.3
    .turnin -472 >>交任务: |cRXP_FRIENDLY_丹莫德的陷落|r
.target Rhag Garmason
>>对话: |cRXP_FRIENDLY_拉格·加玛森|r
    .accept 631 >>接任务: |cRXP_LOOT_萨多尔大桥|r
.target Longbraid the Grim
>>对话: |cRXP_FRIENDLY_坚毅者长须|r
    .accept 304 >>接任务: |cRXP_LOOT_艰巨的任务|r
.target Motley Garmason
>>对话: |cRXP_FRIENDLY_莫特雷·加玛森|r
    .accept 303 >>接任务: |cRXP_LOOT_黑铁战争|r
step
	#sticky
    #label balgaras
    >>杀死犯规的巴尔加拉斯，他可以在东边很远的营地或邓莫德的一所房子里产卵。检查完Dun Modir后往东走。抢他的耳朵。
    .complete 304,1 --Collect Ear of Balgaras (x1)
	.unitscan Balgaras the Foul
    .goto Wetlands,47.4,15.4,40,0
    .goto Wetlands,61.8,31.0,80,0
    .goto Wetlands,46.8,16.0
step--?
    .goto Wetlands,47.3,16.6
	>>杀死该地区的黑铁矮人
    .complete 303,1 --Kill Dark Iron Dwarf (x10)
    .complete 303,2 --Kill Dark Iron Tunneler (x5)
    .complete 303,3 --Kill Dark Iron Saboteur (x5)
    .complete 303,4 --Kill Dark Iron Demolitionist (x5)
step
    #requires balgaras
    .goto Wetlands,49.7,18.3
.target Motley Garmason
>>对话: |cRXP_FRIENDLY_莫特雷·加玛森|r
    .turnin 303 >>交任务: |cRXP_FRIENDLY_黑铁战争|r
.target Longbraid the Grim
>>对话: |cRXP_FRIENDLY_坚毅者长须|r
    .turnin 304 >>交任务: |cRXP_FRIENDLY_艰巨的任务|r
step
    .goto Wetlands,51.2,8.0
	>>下楼，点击矮人尸体。忽略所有的暴徒。
    .turnin 631 >>交任务: |cRXP_FRIENDLY_萨多尔大桥|r
    .accept 632 >>接任务: |cRXP_LOOT_萨多尔大桥|r
step
    .goto Wetlands,49.9,18.3
>>对话: |cRXP_FRIENDLY_拉格·加玛森|r
    .turnin 632 >>交任务: |cRXP_FRIENDLY_萨多尔大桥|r
.target Rhag Garmason
    .accept 633 >>接任务: |cRXP_LOOT_萨多尔大桥|r
step
    .goto Arathi Highlands,43.3,92.6
.target Foggy MacKreel
>>对话: |cRXP_FRIENDLY_醉鬼马克里尔|r
    .accept 647 >>接任务: |cRXP_LOOT_马克里尔的月光酒|r
    >>如果你没有任何速度提升或缓慢下降，你仍然可以获得这个任务
    .link https://www.twitch.tv/videos/646111384 >>单击此处以供参考
step
#xprate <1.5
    .goto Arathi Highlands,44.3,93.0
	.use 4433 >>跳下去，从水下尸体上抢走信件
    .accept 637 >>接任务: |cRXP_LOOT_苏利·巴鲁的信|r
step
    #completewith next
    .goto Arathi Highlands,52.5,90.4,30 >>向东游向这里的斜坡
step
    .goto Arathi Highlands,48.7,87.9
    .complete 633,1 --Collect Cache of Explosives Destroyed (x1)
step
    .goto Wetlands,49.9,18.3
>>对话: |cRXP_FRIENDLY_拉格·加玛森|r
    .turnin 633 >>交任务: |cRXP_FRIENDLY_萨多尔大桥|r
.target Rhag Garmason
    .accept 634 >>接任务: |cRXP_LOOT_请求援助|r
step
    .goto Arathi Highlands,45.9,47.5
.target Captain Nials
>>对话: |cRXP_FRIENDLY_尼艾丝队长|r
    .turnin 634 >>交任务: |cRXP_FRIENDLY_请求援助|r
step
    #xprate >1.3
    .goto Arathi Highlands,46.6,47.0
.target Skuerto
>>对话: |cRXP_FRIENDLY_斯奎尔图|r
    .turnin 690 >>交任务: |cRXP_FRIENDLY_马林的要求|r
    .isOnQuest 690
step
    .goto Arathi Highlands,45.8,46.1
    .fp Arathi >>获取Arathi Highlands航线
step
.isOnQuest 647
>>跑到南岸，在客栈下楼。定时器还没到就开始工作。当心路上的快递员。
	.unitscan Forsaken Bodyguard
.goto Hillsbrad Foothills,52.2,58.6
.target Brewmeister Bilger
>>对话: |cRXP_FRIENDLY_布鲁米·比格尔|r
    .turnin 647 >>交任务: |cRXP_FRIENDLY_马克里尔的月光酒|r
step
	.goto Hillsbrad Foothills,50.5,57.2
.target Loremaster Dibbs
>>对话: |cRXP_FRIENDLY_博学者迪布斯|r
    .turnin 538 >>交任务: |cRXP_FRIENDLY_南海镇|r
	.isOnQuest 538
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
.target Lieutenant Farren Orinelle
>>对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
    .accept 536 >>接任务: |cRXP_LOOT_清理海岸|r
step
    .goto Hillsbrad Foothills,50.9,58.8
.target Huraan
>>对话: |cRXP_FRIENDLY_忽尔兰|r
    .accept 9435 >>接任务: |cRXP_LOOT_遗失的水晶|r
step <<  Hunter tbc
     #completewith next
    .goto Hillsbrad Foothills,50.2,58.8
     .stable >>稳定你的宠物，向东走
step << Hunter tbc
    .xp <30,1
    .goto Hillsbrad Foothills,56.6,53.8
    .train 17264 >>驯服一只老苔藓爬行动物，用它攻击暴徒以学习咬等级4
	.unitscan Elder Moss Creeper
step
    .xp <30,1
    .goto Hillsbrad Foothills,44.0,67.6
	>>杀死该地区的墨洛克人
    .complete 536,1 --Kill Torn Fin Tidehunter (x10)
    .complete 536,2 --Kill Torn Fin Oracle (x10)
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
>>对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
    .turnin 536 >>交任务: |cRXP_FRIENDLY_清理海岸|r
.target Lieutenant Farren Orinelle
    .accept 559 >>接任务: |cRXP_LOOT_法尔林的证据|r
step
    .xp <30,1
    .goto Hillsbrad Foothills,42.3,68.3
	>>杀死墨洛克人并掠夺他们的头
    .complete 559,1 --Collect Murloc Head (x10)
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
>>对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
    .turnin 559 >>交任务: |cRXP_FRIENDLY_法尔林的证据|r
.target Lieutenant Farren Orinelle
    .accept 560 >>接任务: |cRXP_LOOT_法尔林的证据|r
step
    .xp <30,1
    .goto Hillsbrad Foothills,49.5,58.8
>>对话: |cRXP_FRIENDLY_治安官雷德帕斯|r
    .turnin 560 >>交任务: |cRXP_FRIENDLY_法尔林的证据|r
.target Marshal Redpath
    .accept 561 >>接任务: |cRXP_LOOT_法尔林的证据|r
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.4
>>对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
    .turnin 561 >>交任务: |cRXP_FRIENDLY_法尔林的证据|r
.target Lieutenant Farren Orinelle
    .accept 562 >>接任务: |cRXP_LOOT_升官之道|r
step
    .xp <30,1
    .goto Hillsbrad Foothills,57.1,67.4
	>>杀死该地区的纳加，如果你不幸产卵，你可能需要下水
    .complete 562,1 --Kill Daggerspine Shorehunter (x10)
    .complete 562,2 --Kill Daggerspine Siren (x10)
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
>>对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
    .turnin 562 >>交任务: |cRXP_FRIENDLY_升官之道|r
.target Lieutenant Farren Orinelle
    .accept 563 >>接任务: |cRXP_LOOT_人事调动|r
step
    .goto Hillsbrad Foothills,49.3,52.3
    .fp Southshore >>获得南岸航线
step
    .goto Western Plaguelands,42.9,85.0
    >>沿着河流向北养殖龟肉，一旦到达河流的尽头，向西北方向驶入WPL。你还不需要全部10块肉。
    .fp Chillwind >>获取奇风营地飞行路线
step
    .goto Western Plaguelands,42.9,85.0,-1
    .goto Hillsbrad Foothills,49.3,52.3,-1
    .fly Wetlands>>飞到湿地
step
    .goto Wetlands,10.6,60.5
>>对话: |cRXP_FRIENDLY_戈罗林·钢眉|r
    .turnin 292 >>交任务: |cRXP_FRIENDLY_帕雷斯之眼|r
.target Glorin Steelbrow
    .accept 293 >>接任务: |cRXP_LOOT_净化帕雷斯之眼|r
step
    .goto Wetlands,12.1,64.1
    .turnin 321 >>交任务: |cRXP_FRIENDLY_光铸铁|r
    .accept 324 >>接任务: |cRXP_LOOT_丢失的铁锭|r
step
    .goto Wetlands,10.1,69.5
	>>杀死墨洛克人并掠夺他们的铸锭。下降率可能非常低。
    .complete 324,1 --Collect Lightforge Ingot (x5)
step
    .goto Wetlands,10.6,60.4
>>对话: |cRXP_FRIENDLY_戈罗林·钢眉|r
    .turnin 324 >>交任务: |cRXP_FRIENDLY_丢失的铁锭|r
.target Glorin Steelbrow
    .accept 322 >>接任务: |cRXP_LOOT_格瑞曼德·艾尔默|r
step
    .goto Wetlands,9.9,57.4
.target Captain Stoutfist
>>对话: |cRXP_FRIENDLY_斯托菲队长|r
    .turnin 474 >>交任务: |cRXP_FRIENDLY_击败纳克罗什|r
step << !Mage
	.goto Wetlands,9.3,59.4
    .fly Ironforge>>飞往铁炉堡
step << Mage
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step
    .goto Ironforge,63.8,67.8
>>对话: |cRXP_FRIENDLY_萨拉·巴鲁|r
    .turnin 637 >>交任务: |cRXP_FRIENDLY_苏利·巴鲁的信|r
.target Sara Balloo
    .accept 683 >>接任务: |cRXP_LOOT_萨拉·巴鲁的请求|r
step
    .goto Ironforge,39.3,55.9
>>对话: |cRXP_FRIENDLY_麦格尼·铜须国王|r
    .turnin 683 >>交任务: |cRXP_FRIENDLY_萨拉·巴鲁的请求|r
.target King Magni Bronzebeard
    .accept 686 >>接任务: |cRXP_LOOT_国王的礼物|r
step
    .goto Ironforge,38.7,87.2
>>对话: |cRXP_FRIENDLY_大石匠玛布勒斯坦|r
    .turnin 686 >>交任务: |cRXP_FRIENDLY_国王的礼物|r
.target Grand Mason Marblesten
    .accept 689 >>接任务: |cRXP_LOOT_国王的礼物|r
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 30-32 暮色森林/荆棘谷
#version 1
#group RestedXP 联盟 20-32
#next RestedXP 联盟 32-47\32-33闪光平板
#xprate <1.5
step << !Mage
	.goto Ironforge,74.5,50.5,20,0
	.goto StormwindClassic,51.7,12.3
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >>点击此处在电车内注销跳过
    .zone Stormwind City>>乘坐电车前往暴风城
step << Mage
	>>Teleport到stormwind
    .goto StormwindClassic,39.6,79.6
	.trainer >>训练你的职业技能
step << Hunter
	.goto StormwindClassic,61.7,15.4
	.trainer >>训练你的职业技能
	.train 14924>>宠物训练师处训练咆哮4 << tbc
step
    #sticky
    #completewith exit
    >>从拍卖行购买铜管
    .complete 174,1
	.bronzetube
step << Human Paladin
    #sticky
	#completewith next
    >>如果你还没有，就去拍卖行买10块亚麻布
    .collect 2589,10,1644
step << Paladin
    .goto StormwindClassic,40.0,29.9
>>对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1652 >>交任务: |cRXP_FRIENDLY_勇气之书|r
.target Duthorian Rall
    .accept 1653 >>接任务: |cRXP_WARN_正义试炼|r
step << Paladin
	.goto StormwindClassic,38.6,32.8
	.trainer >>训练你的职业技能
step << Priest
	.goto StormwindClassic,38.5,26.8
	.trainer >>训练你的职业技能
step
    .isOnQuest 322
    .goto StormwindClassic,51.7,12.3
>>对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .turnin 322 >>交任务: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
.target Grimand Elmore
    .accept 325 >>接任务: |cRXP_LOOT_整装待发|r
step
	#sticky
	#label MDiplomats
	#completewith nomorekid
    .xp <28,1
    .goto StormwindClassic,41.5,31.7
	>>Talk to Thomas, the patrolling kid
.target Thomas
>>对话: |cRXP_FRIENDLY_托马斯|r
    .accept 1274 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    .goto StormwindClassic,39.7,27.6
    .turnin -293 >>交任务: |cRXP_FRIENDLY_净化帕雷斯之眼|r
step
	#label nomorekid
	#requires MDiplomats
	.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Human Paladin
    .goto StormwindClassic,39.8,30.1
    >>与Duthorian Rall对话，点击提供的神圣之门
    .accept 1642 >>接任务: |cRXP_WARN_圣洁之书|r
>>对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1642 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Duthorian Rall
    .accept 1643 >>接任务: |cRXP_WARN_圣洁之书|r
step << Warlock
    .goto StormwindClassic,25.3,78.7
	.trainer >>训练你的职业技能
step
    .itemcount 2794,1
    >>前往暴风谷
	.goto StormwindClassic,74.1,7.6
    .accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
.target Milton Sheaf
>>对话: |cRXP_FRIENDLY_米尔顿·西弗|r
    .turnin 337 >>交任务: |cRXP_FRIENDLY_一本破旧的历史书|r
step
    .isQuestTurnedIn 337
    .goto StormwindClassic,74.1,7.6
.target Milton Sheaf
>>对话: |cRXP_FRIENDLY_米尔顿·西弗|r
    .accept 538 >>接任务: |cRXP_LOOT_南海镇|r
step
    .isOnQuest 1274
    .goto StormwindClassic,78.1,25.1
>>对话: |cRXP_FRIENDLY_德拉维主教|r
    .turnin 1274 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Bishop DeLavey
    .accept 1241 >>接任务: |cRXP_LOOT_失踪的使节|r
step << Hunter
    .goto StormwindClassic,72.8,16.1
.target Major Samuelson
>>对话: |cRXP_FRIENDLY_萨缪尔森少校|r
    .turnin 563 >>交任务: |cRXP_FRIENDLY_人事调动|r
    .isOnQuest 563
step << Human Paladin
    .goto StormwindClassic,56.9,61.9
>>对话: |cRXP_FRIENDLY_斯蒂芬妮·特纳|r
    .turnin 1643 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Stephanie Turner
    .accept 1644 >>接任务: |cRXP_WARN_圣洁之书|r
step << Human Paladin
    .goto StormwindClassic,56.9,61.9
    .complete 1644,1
>>对话: |cRXP_FRIENDLY_斯蒂芬妮·特纳|r
    .turnin 1644 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Stephanie Turner
    .accept 1780 >>接任务: |cRXP_WARN_圣洁之书|r
step << Shaman
    .goto StormwindClassic,61.9,83.9
.target Farseer Umbrua
>>对话: |cRXP_FRIENDLY_先知安布洛尔|r
    .accept 10491 >>接任务: |cRXP_LOOT_空气的召唤|r
	.trainer >>训练你的职业技能
step << Warrior
	.goto StormwindClassic,78.6,45.8
	.trainer >>上楼去。训练你的职业技能
step << Rogue
	.goto StormwindClassic,74.6,52.8
	.trainer >>训练你的职业技能
step
    .isOnQuest 1241
    .goto StormwindClassic,73.1,78.3
>>对话: |cRXP_FRIENDLY_乔贞|r
    .turnin 1241 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Jorgen
    .accept 1242 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    .isOnQuest 1242
    .goto StormwindClassic,60.1,64.4
>>对话: |cRXP_FRIENDLY_埃林·提亚斯|r
    .turnin 1242 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Elling Trias
    .accept 1243 >>接任务: |cRXP_LOOT_失踪的使节|r
step << Human Paladin
    .goto StormwindClassic,40.1,29.9
>>对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1780 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Duthorian Rall
    .accept 1781 >>接任务: |cRXP_WARN_圣洁之书|r
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
>>对话: |cRXP_FRIENDLY_贾森·坦诺姆|r
    .turnin 1781 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Gazin Tenorm
    .accept 1786 >>接任务: |cRXP_WARN_圣洁之书|r
step
	#label exit
	.goto StormwindClassic,66.2,62.1
    .fly Duskwood>>飞到黄昏
step
	#completewith notubeandy
    .goto Duskwood,79.8,47.9
    .itemcount 4371,<1
.target Viktori Prism'Antras
>>对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 174 >>接任务: |cRXP_WARN_仰望星空|r
    .turnin 174 >>交任务: |cRXP_FRIENDLY_仰望星空|r
step
    .goto Duskwood,79.8,47.9
.target Viktori Prism'Antras
>>对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 175 >>接任务: |cRXP_WARN_仰望星空|r
    .isQuestTurnedIn 174
step
    .goto Duskwood,82.0,59.0
>>对话: |cRXP_FRIENDLY_盲眼玛丽|r
    .turnin 175 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.target Blind Mary
    .accept 177 >>接任务: |cRXP_WARN_仰望星空|r
    .isQuestTurnedIn 174
step
    .goto Duskwood,80.9,71.8
    >>在教堂杀死疯狂的食尸鬼
    .complete 177,1 --Collect Mary's Looking Glass (x1)
    .isQuestTurnedIn 174
	.unitscan Insane Ghoul
step
    .goto Duskwood,79.8,47.8
>>对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
    .turnin 177 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.target Viktori Prism'Antras
    .accept 181 >>接任务: |cRXP_WARN_仰望星空|r
    .isQuestTurnedIn 174
step
	#label notubeandy
    .goto Duskwood,73.778,44.485
>>对话: |cRXP_FRIENDLY_旅店老板斯密茨|r
    .turnin 156 >>交任务: |cRXP_FRIENDLY_收集腐败之花|r
.target Tavernkeep Smitts
    .accept 159 >>接任务: |cRXP_LOOT_僵尸酒|r
step
    .home >>将您的炉石设置为Darkshire
step
    .goto Duskwood,73.7,46.8
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 57 >>交任务: |cRXP_FRIENDLY_守夜人|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 58 >>接任务: |cRXP_LOOT_守夜人|r
    .turnin 228 >>交任务: |cRXP_FRIENDLY_摩拉迪姆|r
    .accept 229 >>接任务: |cRXP_LOOT_幸存的女儿|r
step << Paladin/Hunter
    .goto Duskwood,73.7,46.8
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 57 >>交任务: |cRXP_FRIENDLY_守夜人|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 58 >>接任务: |cRXP_LOOT_守夜人|r
step
	.goto Duskwood,73.7,46.8
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 228 >>交任务: |cRXP_FRIENDLY_摩拉迪姆|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 229 >>接任务: |cRXP_LOOT_幸存的女儿|r
step << !Hunter !Paladin
    .goto Duskwood,74.543,46.085
>>对话: |cRXP_FRIENDLY_守夜人拉迪摩尔|r
    .turnin 229 >>交任务: |cRXP_FRIENDLY_幸存的女儿|r
.target Watcher Ladimore
    .accept 231 >>接任务: |cRXP_LOOT_女儿的爱|r
step
    .isOnQuest 1243
    .goto Duskwood,72.6,33.9
>>对话: |cRXP_FRIENDLY_守夜人巴库斯|r
    .turnin 1243 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Watcher Backus
    .accept 1244 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    .goto Duskwood,60.8,29.7
    .complete -173,1 --Kill Nightbane Shadow Weaver (x6)
step
    .goto Elwynn Forest,84.6,69.5
	>>向北行驶至埃尔文森林的伊斯特维尔伐木营
>>对话: |cRXP_FRIENDLY_治安官哈迦德|r
    .turnin 74 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Marshal Haggard
    .accept 75 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
    .goto Elwynn Forest,85.6,69.6
    >>上楼掠夺箱子
    .complete 75,1 --Collect A Faded Journal Page (x1)
step
    .goto Elwynn Forest,84.7,69.4
>>对话: |cRXP_FRIENDLY_治安官哈迦德|r
    .turnin 75 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Marshal Haggard
    .accept 78 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Human !Paladin !Warlock tbc
	.xp <30,1
	.goto Elwynn Forest,84.2,65.2
	.train 148 >>乘坐火车并购买您的坐骑。
	.money <35.00
    .skill riding,1,1
step << Shaman
    #completewith next
    .hs >>赫斯到达克希尔
step << Shaman
    .goto Duskwood,73.9,44.5
>>对话: |cRXP_FRIENDLY_旅店老板斯密茨|r
    .turnin 78 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Tavernkeep Smitts
    .accept 79 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Shaman
    .goto Duskwood,73.6,46.7
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 79 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 80 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Shaman
    .goto Duskwood,72.6,46.9
>>对话: |cRXP_FRIENDLY_书记员达尔塔|r
    .turnin 80 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Clerk Daltry
    .accept 97 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Shaman
    .goto Duskwood,73.540,46.824
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 97 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 98 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Shaman
    #sticky
	#label TearT
	.goto Duskwood,78.4,35.9
    >>在地上找一朵小花
    .complete 335,1 --Collect Tear of Tilloa (x1)
    .isOnQuest 335
step << Shaman
    .goto Duskwood,77.4,36.1
	>>在房子里杀了斯塔万，并抢走了他的戒指
    .complete 98,1 --Collect Mistmantle Family Ring (x1)
step << Shaman
    #requires TearT
	.goto Duskwood,75.7,45.3
.target Madame Eva
>>对话: |cRXP_FRIENDLY_伊瓦夫人|r
    .turnin 98 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
step << Shaman
    #completewith next
	.goto Duskwood,77.6,44.6
    .fly Westfall>>飞往威斯特福尔
step << Human Paladin
    .goto Elwynn Forest,72.7,51.5
    >>在亨泽·福克身上使用生命的象征
>>对话: |cRXP_FRIENDLY_亨兹·法奥克|r
    .turnin 1786 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Henze Faulk
    .accept 1787 >>接任务: |cRXP_WARN_圣洁之书|r
    .use 6866
step << Human Paladin
    .goto Elwynn Forest,73.5,51.3
    >>杀死岛上的德菲亚斯巫师
    .complete 1787,1 --Defias Script (1)
step
    .goto Duskwood,28.0,31.6
	>>前往: |cRXP_PICK_暮色森林|r
>>对话: |cRXP_FRIENDLY_亚伯克隆比|r
    .turnin 159 >>交任务: |cRXP_FRIENDLY_僵尸酒|r
.target Abercrombie
    .accept 133 >>接任务: |cRXP_LOOT_食尸鬼假人|r
step
	#sticky
	#completewith HistoryB4
	>>留意旧历史书(全区掉落)。你以后需要这个
	.collect 2794,1,337
	.accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
step
    .goto Duskwood,23.6,35.0
	>>杀死地穴中的瘟疫传播者并将其洗劫一空
    .complete 133,1 --Collect Ghoul Rib (x7)
    .complete 58,1 --Kill Plague Spreader (x20)
    .complete 101,1 --Collect Ghoul Fang (x10)
step
    .goto Duskwood,28.0,31.5
>>对话: |cRXP_FRIENDLY_亚伯克隆比|r
    .turnin 133 >>交任务: |cRXP_FRIENDLY_食尸鬼假人|r
.target Abercrombie
    .accept 134 >>接任务: |cRXP_LOOT_食人魔潜行者|r
step
    .goto Duskwood,23.9,72.0
    >>在小房子里掠夺箱子
    .complete 1244,1 --Collect Defias Docket (x1)
step
    .goto Duskwood,33.5,76.3
    >>掠夺洞穴入口旁边的板条箱
    .complete 134,1 --Collect Abercrombie's Crate (x1)
step
    .goto Duskwood,36.8,83.8
    .isOnQuest 181
    >>杀死Zzarc’Vul并为他的单片眼镜掠夺他
	.unitscan Zzarc' Vul
    .complete 181,1 --Collect Ogre's Monocle (x1)
step
    .goto Duskwood,31.6,45.4
	>>杀死蜘蛛并掠夺它们的毒液
    .complete 101,2 --Collect Vial of Spider Venom (x5)
step
    .goto Duskwood,28.109,31.463
>>对话: |cRXP_FRIENDLY_亚伯克隆比|r
    .turnin 134 >>交任务: |cRXP_FRIENDLY_食人魔潜行者|r
.target Abercrombie
    .accept 160 >>接任务: |cRXP_LOOT_给镇长的信|r
step << !Hunter !Paladin
    .goto Duskwood,17.7,29.2
    >>单击墓碑
    .turnin 231 >>交任务: |cRXP_FRIENDLY_女儿的爱|r
step << !Dwarf/!Paladin
    .goto Duskwood,7.781,34.069
>>对话: |cRXP_FRIENDLY_斯温·约根|r
    .turnin 325 >>交任务: |cRXP_FRIENDLY_整装待发|r
.target Sven Yorgen
    .accept 55 >>接任务: |cRXP_LOOT_摩本特·费尔|r
step << !Dwarf/!Paladin
    .goto Duskwood,17.2,33.4
    >>使用提供的副手武器削弱莫本特·费尔
    .complete 55,1 --Kill Weakened Morbent Fel (x1)
step << !Dwarf/!Paladin
    .goto Duskwood,7.8,34.3
.target Sven Yorgen
>>对话: |cRXP_FRIENDLY_斯温·约根|r
    .turnin 55 >>交任务: |cRXP_FRIENDLY_摩本特·费尔|r
step << Shaman/Dwarf Paladin/wotlk
    #sticky
    #completewith ds1
    .hs >>赫斯到达克希尔
step << !Shaman !Paladin/!Dwarf Paladin
    .goto Westfall,56.5,52.6
    >>如果你的HS处于冷却状态，请飞往Darkhire << wotlk
    .fly Darkshire>>飞到Darkhire
    .cooldown item,6948,<1 << wotlk
step
    .goto Duskwood,79.8,47.9
    .isOnQuest 181
.target Viktori Prism'Antras
>>对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
    .turnin 181 >>交任务: |cRXP_FRIENDLY_仰望星空|r
step
    .goto Duskwood,75.3,47.9
>>对话: |cRXP_FRIENDLY_卡洛尔|r
    .turnin 173 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.target Calor
    .accept 221 >>接任务: |cRXP_LOOT_森林里的狼人|r
step
    #label ds1
    .goto Duskwood,75.7,45.3
.target Madame Eva
>>对话: |cRXP_FRIENDLY_伊瓦夫人|r
    .turnin 101 >>交任务: |cRXP_FRIENDLY_惩罚图腾|r
step << !Shaman
    .goto Duskwood,73.9,44.5
>>对话: |cRXP_FRIENDLY_旅店老板斯密茨|r
    .turnin 78 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Tavernkeep Smitts
    .accept 79 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
    .goto Duskwood,73.6,46.7
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 58 >>交任务: |cRXP_FRIENDLY_守夜人|r
    .turnin 79 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r << !Shaman
.target 指挥官阿尔西娅·埃本洛克
    .accept 80 >>接任务: |cRXP_LOOT_斯塔文的传说|r << !Shaman
step << !Shaman
    .goto Duskwood,72.6,46.9
>>对话: |cRXP_FRIENDLY_书记员达尔塔|r
    .turnin 80 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Clerk Daltry
    .accept 97 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
    .goto Duskwood,71.9,46.6
>>对话: |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
    .turnin 160 >>交任务: |cRXP_FRIENDLY_给镇长的信|r
.target Lord Ello Ebonlocke
    .accept 251 >>接任务: |cRXP_LOOT_翻译亚伯克隆比的信|r
step
    .goto Duskwood,72.617,47.624
>>对话: |cRXP_FRIENDLY_希拉·沃宁迪|r
    .turnin 251 >>交任务: |cRXP_FRIENDLY_翻译亚伯克隆比的信|r
.target Sirra Von'Indi
    .accept 401 >>接任务: |cRXP_LOOT_等待希拉完工|r
    .turnin 401 >>交任务: |cRXP_FRIENDLY_等待希拉完工|r
    .accept 252 >>接任务: |cRXP_LOOT_翻译好的信件|r
step
    .goto Duskwood,71.9,46.6
>>对话: |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
    .turnin 252 >>交任务: |cRXP_FRIENDLY_翻译好的信件|r
.target Lord Ello Ebonlocke
    .accept 253 >>接任务: |cRXP_LOOT_藏尸者的妻子|r
step
	#sticky
	#completewith next
	.destroy 3248 >>摧毁: |cRXP_ENEMY_翻译好的藏尸者信件|r, 它在你的背包中. 不再需要它了
step << !Shaman
    .goto Duskwood,73.540,46.824
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 97 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 98 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
    .isOnQuest 1244
    .goto Duskwood,72.6,33.9
>>对话: |cRXP_FRIENDLY_守夜人巴库斯|r
    .turnin 1244 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Watcher Backus
    .accept 1245 >>接任务: |cRXP_LOOT_失踪的使节|r
step << !Shaman
    .goto Duskwood,77.4,36.1
    >>在房子里杀了斯塔万
    .complete 98,1 --Collect Mistmantle Family Ring (x1)
step << !Shaman
    .goto Duskwood,78.4,35.9
    >>在地上找一朵小花
    .complete 335,1 --Collect Tear of Tilloa (x1)
    .isOnQuest 335
step << !Shaman
    .goto Duskwood,75.7,45.3
.target Madame Eva
>>对话: |cRXP_FRIENDLY_伊瓦夫人|r
    .turnin 98 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
step
    .goto Duskwood,64.7,49.7
    .complete 221,1 --Kill Nightbane Dark Runner (x12)
step
    .goto Duskwood,75.3,48.1
>>对话: |cRXP_FRIENDLY_卡洛尔|r
    .turnin 221 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.target Calor
    .accept 222 >>接任务: |cRXP_LOOT_森林里的狼人|r
step
    #label HistoryB4
	.goto Duskwood,73.0,75.0
    .complete 222,1 --Kill Nightbane Vile Fang (x8)
    .complete 222,2 --Kill Nightbane Tainted One (x8)
step
    .goto Stranglethorn Vale,38.2,4.1
    .fp Rebel >>获取叛军营地的飞行路线
step
    .goto Stranglethorn Vale,37.8,3.3
.target Corporal Kaleb
>>对话: |cRXP_FRIENDLY_卡雷布下士|r
    .accept 210 >>接任务: |cRXP_LOOT_克拉兹克的烹调锅|r
step
	#sticky
	#completewith thorsen
	    .goto Stranglethorn Vale,40.4,8.4,0
	>>当你进行任务时，注意二等兵托森的角色扮演活动，他每隔约30分钟巡视一次。等待两名卫兵攻击他，如果你救了他，你就会得到任务。
.target Private Thorsen
>>对话: |cRXP_FRIENDLY_列兵索尔森|r
	.accept 215 >>接任务: |cRXP_LOOT_丛林中的秘密|r
step
    .goto Stranglethorn Vale,35.6,10.5
.target Barnil Stonepot
>>对话: |cRXP_FRIENDLY_巴尼尔·石罐|r
    .accept 583 >>接任务: |cRXP_LOOT_欢迎来到丛林|r
step
    .goto Stranglethorn Vale,35.7,10.8
.target Hemet Nesingwary Jr.
>>对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里二世|r
    .turnin 583 >>交任务: |cRXP_FRIENDLY_欢迎来到丛林|r
.target Ajeck Rouack
>>对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r
    .accept 185 >>接任务: |cRXP_LOOT_猎虎|r
.target Sir S. J. Erlgadin
>>对话: |cRXP_FRIENDLY_埃尔加丁爵士|r
    .accept 190 >>接任务: |cRXP_LOOT_猎豹|r
step
	#label tigers
    .goto Stranglethorn Vale,37.6,11.6,20,0
    .goto Stranglethorn Vale,35.616,10.619,20,0
    .goto Stranglethorn Vale,36.4,13.6,20,0
    .goto Stranglethorn Vale,37.6,11.6
    >>捕杀狩猎营地周围的幼虎
    .complete 185,1 --Kill Young Stranglethorn Tiger (x10)
step
    >>过桥杀死年轻的黑豹
    .goto Stranglethorn Vale,42.1,11.2
    .complete 190,1 --Kill Young Panther (x10)
step
	#requires tigers
	#label thorsen
    .goto Stranglethorn Vale,35.616,10.619
>>对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r
    .turnin 185 >>交任务: |cRXP_FRIENDLY_猎虎|r
>>对话: |cRXP_FRIENDLY_埃尔加丁爵士|r
    .turnin 190 >>交任务: |cRXP_FRIENDLY_猎豹|r
.target Ajeck Rouack
    .accept 186 >>接任务: |cRXP_LOOT_猎虎|r
.target Sir S. J. Erlgadin
    .accept 191 >>接任务: |cRXP_LOOT_猎豹|r
step
    .isOnQuest 215
    .goto Stranglethorn Vale,38.0,3.0
    .turnin 215 >>交任务: |cRXP_FRIENDLY_丛林中的秘密|r
    >>如果你没有早点得到，请跳过这个任务
step
    .goto Duskwood,28.8,30.9
    >>跑回Duskwood，点击土丘召唤Eliza
    .complete 253,1 --Collect The Embalmer's Heart (x1)
step << Druid
    >>前往: |cRXP_PICK_月光林地|r
    .goto Moonglade,52.4,40.6
    .trainer 12042 >>火车咒语
step << !Dwarf/!Paladin
    #sticky
    #completewith next
    .hs >>赫斯到达克希尔
step << Dwarf Paladin
    .goto Duskwood,7.781,34.069
>>对话: |cRXP_FRIENDLY_斯温·约根|r
    .turnin 325 >>交任务: |cRXP_FRIENDLY_整装待发|r
.target Sven Yorgen
    .accept 55 >>接任务: |cRXP_LOOT_摩本特·费尔|r
step << Dwarf Paladin
    .goto Duskwood,17.2,33.4
    >>使用提供的副手武器削弱莫本特·费尔
    .complete 55,1 --Kill Weakened Morbent Fel (x1)
step << Dwarf Paladin
    .goto Duskwood,7.8,34.3
.target Sven Yorgen
>>对话: |cRXP_FRIENDLY_斯温·约根|r
    .turnin 55 >>交任务: |cRXP_FRIENDLY_摩本特·费尔|r
step << Dwarf Paladin
    .goto Westfall,56.5,52.6,12
    .fly Darkshire>>飞到Darkhire
step
    .goto Duskwood,72.0,46.6
.target Lord Ello Ebonlocke
>>对话: |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
    .turnin 253 >>交任务: |cRXP_FRIENDLY_藏尸者的妻子|r
step
    .goto Duskwood,75.752,47.569
>>对话: |cRXP_FRIENDLY_卡洛尔|r
    .turnin 222 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.target Calor
    .accept 223 >>接任务: |cRXP_LOOT_森林里的狼人|r
step
    .goto Duskwood,75.3,48.9
.target Jonathan Carevin
>>对话: |cRXP_FRIENDLY_乔纳森·卡尔文|r
    .turnin 223 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
step << !Mage
	.goto Duskwood,77.5,44.2
    .fly Stormwind>>飞到暴风城
step << Mage
	>>Teleport到stormwind
    .goto StormwindClassic,39.6,79.6
	.trainer >>训练你的职业技能
step << Dwarf Paladin
    #sticky
	#completewith next
    >>从拍卖行购买10块亚麻布
    .complete 1648,1
step
    .isOnQuest 1245
    .goto StormwindClassic,60.1,64.4
>>对话: |cRXP_FRIENDLY_埃林·提亚斯|r
    .turnin 1245 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Elling Trias
    .accept 1246 >>接任务: |cRXP_LOOT_失踪的使节|r
step << Paladin
	.goto StormwindClassic,38.6,32.8
	.trainer >>训练你的职业技能
step << Priest
	.goto StormwindClassic,38.5,26.8
	.trainer >>训练你的职业技能
step << Warrior
    #sticky
    #completewith next
    .goto StormwindClassic,64.1,61.2
    .goto StormwindClassic,46.7,79.0
    >>检查AH、贸易区的花店和法师区的炼金术店，并购买一些生命根，稍后你需要8个才能完成任务，如果你已经拥有了，跳过这一步
    .collect 3357,8 --Collect Liferoot (x8)
    #xprate <1.5
step << Warrior
    .goto StormwindClassic,78.8,45.3
.target Darnath Bladesinger
.target Wu Shen
.target Kelv Sternhammer
.target Baltus Fowler
.target Sorek
.target Torm Ragetotem
>>对话: |cRXP_FRIENDLY_托姆·暴怒图腾|r
-->>对话: |cRXP_FRIENDLY_索瑞克|r
-->>对话: |cRXP_FRIENDLY_巴尔图斯·弗勒|r
-->>对话: |cRXP_FRIENDLY_凯夫·重锤|r
-->>对话: |cRXP_FRIENDLY_武神|r
-->>对话: |cRXP_FRIENDLY_达纳斯·刃歌|r
    .accept 1718 >>接任务: |cRXP_LOOT_岛民|r
	.trainer >>训练类咒语
step << Shaman
    .goto StormwindClassic,61.9,83.9
	.trainer >>训练你的职业技能
step << Rogue
	.goto StormwindClassic,74.6,52.8
	.trainer >>训练你的职业技能
step
    .isOnQuest 1246
    .goto StormwindClassic,70.3,44.8
    >>击败Dashel Stonefist
.target Dashel Stonefist
>>对话: |cRXP_FRIENDLY_达舍尔·石拳|r
    .turnin 1246 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
step
    .isQuestTurnedIn 1246
    .goto StormwindClassic,70.3,44.8
.target Dashel Stonefist
>>对话: |cRXP_FRIENDLY_达舍尔·石拳|r
    .accept 1447 >>接任务: |cRXP_LOOT_失踪的使节|r
    .turnin 1447 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
step
    .isQuestTurnedIn 1447
    .goto StormwindClassic,70.3,44.8
.target Dashel Stonefist
>>对话: |cRXP_FRIENDLY_达舍尔·石拳|r
    .accept 1247 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    .isOnQuest 1247
    .goto StormwindClassic,60.1,63.9
>>对话: |cRXP_FRIENDLY_埃林·提亚斯|r
    .turnin 1247 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Elling Trias
    .accept 1248 >>接任务: |cRXP_LOOT_失踪的使节|r
step << Shaman wotlk
    .goto StormwindClassic,52.61,65.71
    .home >>将您的炉石设置为暴风城
step
   	#sticky
	#completewith next
	.goto StormwindClassic,55.4,68.3,20 >>如果需要，请在这里存款
step
    .goto StormwindClassic,39.9,81.3
.target Archmage Malin
>>对话: |cRXP_FRIENDLY_大法师马林|r
    .accept 690 >>接任务: |cRXP_LOOT_马林的要求|r
step
    .goto StormwindClassic,40.6,91.7
.target Connor Rivers
>>对话: |cRXP_FRIENDLY_科诺尔·瑞沃斯|r
    .accept 1301 >>接任务: |cRXP_LOOT_詹姆斯·海厄尔|r
step
    .goto StormwindClassic,26.4,78.3
.target Zardeth of the Black Claw
>>对话: |cRXP_FRIENDLY_黑爪加尔德斯|r
    .turnin 335 >>交任务: |cRXP_FRIENDLY_名酿|r
    .isQuestComplete 335
step
    .goto StormwindClassic,26.4,78.3
.target Zardeth of the Black Claw
>>对话: |cRXP_FRIENDLY_黑爪加尔德斯|r
    .accept 336 >>接任务: |cRXP_LOOT_名酿|r
    .isQuestTurnedIn 335
step << Warlock
    .goto StormwindClassic,25.3,78.5
.target Demisette Cloyce
>>对话: |cRXP_FRIENDLY_德米赛特·克劳斯|r
    .accept 4738 >>接任务: |cRXP_LOOT_寻找梅纳拉·沃伦德|r
    .xp <31,1
step << Warlock
    .goto StormwindClassic,25.3,78.5
.target Gakin the Darkbinder
.target Lago Blackwrench
>>对话: |cRXP_FRIENDLY_拉戈·黑钳|r
-->>对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1798 >>接任务: |cRXP_LOOT_寻找斯坦哈德|r
	.trainer >>训练你的职业技能

step << Shaman wotlk
    .goto StormwindNew,21.8,56.2
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Shaman wotlk
    #sticky
    #completewith next
    .zone The Exodar >>前往: |cRXP_PICK_埃索达|r
    >>如果您有35g，请购买坐骑并进行训练，否则请跳过此步骤。 << tbc
	.goto The Exodar,81.5,52.5,40,0
step << Shaman wotlk
    .goto The Exodar,29.9,33.0
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 10491 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Farseer Nobundo
    .accept 9552 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Shaman wotlk
    #completewith next
    .fly Bloodmyst Isle>>飞往血腥岛
step << Shaman wotlk
    .goto Bloodmyst Isle,32.300,16.132
>>对话: |cRXP_FRIENDLY_阿奎欧斯|r
    .turnin 9504 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Aqueous
    .accept 9508 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman wotlk
    .goto Bloodmyst Isle,26.0,40.9
	>>杀死Tel’athion并掠夺他的头
    .complete 9508,1 --Collect Head of Tel'athion (x1)
step << Shaman wotlk
    .goto Bloodmyst Isle,32.2,16.1
>>对话: |cRXP_FRIENDLY_阿奎欧斯|r
    .turnin 9508 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Aqueous
    .accept 9509 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman wotlk
	#sticky
	#completewith ZExodar
	.deathskip >>淹没自己和灵魂rez
step << Shaman wotlk
	#sticky
	#completewith next
	.goto Bloodmyst Isle,57.7,53.9
	>>跑回血腥观察站，然后飞到外族人
    .fly The Exodar>>飞到外族人
step << Shaman wotlk
	#label ZExodar
	.zone The Exodar >>前往: |cRXP_PICK_埃索达|r
step << Shaman wotlk
    .goto Azuremyst Isle,26.8,27.3,42
    >>从主入口离开Exodar，沿着山向左行进，直到到达荒风小道
step << Shaman wotlk
    .goto Azuremyst Isle,24.897,35.918
>>对话: |cRXP_FRIENDLY_维兰达|r
    .turnin 9552 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Velaada
    .accept 9553 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Shaman wotlk
    .goto Azuremyst Isle,22.312,32.547
>>对话: |cRXP_FRIENDLY_苏苏鲁斯|r
    .turnin 9553 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Susurrus
    .accept 9554 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Shaman wotlk
    #sticky
    #completewith next
    .zone The Exodar>>再和苏苏罗斯谈谈，这样他就可以把你送回去了
step << Shaman wotlk
    .goto The Exodar,30.0,33.1
.target Farseer Nobundo
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 9509 >>交任务: |cRXP_FRIENDLY_水之召唤|r
step << Shaman wotlk
    .goto The Exodar,29.6,33.4
.target Farseer Nobundo
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 9554 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
	>>这将给你一个1小时长的buff，提供40%的移动速度和30%的攻击速度。小心不要AFK
step << Shaman wotlk
    .hs >>从火炉到暴风

step << Human Paladin
    .goto StormwindClassic,38.6,26.7
>>对话: |cRXP_FRIENDLY_贾森·坦诺姆|r
    .turnin 1787 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Gazin Tenorm
    .accept 1788 >>接任务: |cRXP_WARN_圣洁之书|r
step << Human Paladin
    .goto StormwindClassic,39.9,29.8
.target Duthorian Rall
>>对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1788 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
step
    .goto StormwindClassic,74.3,30.3
.target Count Remington Ridgewell
>>对话: |cRXP_FRIENDLY_雷明顿·瑞治维尔伯爵|r
    .accept 543 >>接任务: |cRXP_LOOT_匹瑞诺德王冠|r
step
    .goto StormwindClassic,75.1,31.4
.target Lord Baurles K. Wishock
>>对话: |cRXP_FRIENDLY_鲍雷斯·维沙克公爵|r
    .turnin 336 >>交任务: |cRXP_FRIENDLY_名酿|r
    .isOnQuest 336
step
    .goto StormwindClassic,74.1,7.6
    .accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
>>对话: |cRXP_FRIENDLY_米尔顿·西弗|r
    .turnin 337 >>交任务: |cRXP_FRIENDLY_一本破旧的历史书|r
.target Milton Sheaf
    .accept 538 >>接任务: |cRXP_LOOT_南海镇|r
step << Dwarf Paladin/Mage
    #sticky
	#completewith next
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
step << Dwarf Paladin
    .goto Ironforge,18.5,51.6
    .home >>将HS设置为Ironforge
step << Dwarf Paladin
    .goto Ironforge,23.131,6.143
.target Brandur Ironhammer
>>对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r
    .accept 2999 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    .goto Ironforge,27.4,12.1
    >>上楼去和蒂扎战斗堡垒通话
>>对话: |cRXP_FRIENDLY_蒂萨·热炉|r
    .turnin 2999 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Tiza Battleforge
    .accept 1645 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1645 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1646 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1646 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1647 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    >>与约翰·特纳交谈，他在城市的外环漫步
>>对话: |cRXP_FRIENDLY_约翰·特纳|r
    .turnin 1647 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target John Turner
    .accept 1648 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1648 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1778 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>返回Tiza Battleforge
>>对话: |cRXP_FRIENDLY_蒂萨·热炉|r
    .turnin 1778 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Tiza Battleforge
    .accept 1779 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    .goto Ironforge,23.6,8.6
    >>与缪尔登·巴特尔福格交谈
>>对话: |cRXP_FRIENDLY_穆里顿·热炉|r
    .turnin 1779 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Muiredon Battleforge
    .accept 1783 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,53.2,35.3
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>在纳姆·福克身上使用生命的象征
>>对话: |cRXP_FRIENDLY_纳姆·法奥克|r
    .turnin 1783 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Narm Faulk
    .accept 1784 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5
    >>杀死黑铁间谍
    .complete 1784,1 --Dark Iron Script (1)
step << Dwarf Paladin
    #completewith next
    .hs >>前往: |cRXP_PICK_铁炉堡|r
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>和楼上的缪尔登谈谈
>>对话: |cRXP_FRIENDLY_穆里顿·热炉|r
    .turnin 1784 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Muiredon Battleforge
    .accept 1785 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    .goto Ironforge,27.4,11.9
.target Tiza Battleforge
>>对话: |cRXP_FRIENDLY_蒂萨·热炉|r
    .turnin 1785 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
step << Dwarf !Paladin tbc
	.skill riding,75,1
	.money <35.0
	.goto StormwindClassic,66.2,62.2
	.fly Ironforge >>飞到铁炉堡，我们要训练我们的坐骑。
step << Dwarf !Paladin tbc
	.money <35.0
	.goto Dun Morogh,63.5,50.6
	.train 152 >>坐火车，买你的坐骑
step << Gnome !Warlock tbc
	.skill riding,75,1
	.money <35.0
	.goto StormwindClassic,66.2,62.2
	.fly Ironforge >>飞到铁炉堡，我们要训练我们的坐骑。
step << Gnome !Warlock tbc
	.money <35.0
	.goto Dun Morogh,49.2,48.1
	.train 553 >>坐火车，买你的坐骑
step << Gnome !Warlock/Dwarf
	.zoneskip Wetlands
	.skill riding,75,1
	.goto Ironforge,55.5,47.2
	.fly Wetlands>>飞到湿地
step << !Gnome Warlock/!Dwarf
	.skill riding,<75,1
	.zoneskip Wetlands
	.goto StormwindClassic,66.2,62.2
	.fly Wetlands>>飞到湿地
step << Gnome !Warlock/Dwarf !Paladin
	.zoneskip Wetlands
	.goto StormwindClassic,66.2,62.2
	.fly Wetlands>>飞到湿地
step
    .goto Wetlands,10.6,60.7
    .home >>将您的炉石设置为湿地
step
    .isOnQuest 1248
    .goto Wetlands,10.6,60.7
>>对话: |cRXP_FRIENDLY_米克哈尔|r
    .turnin 1248 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Mikhail
    .accept 1249 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    >>一旦你接受了任务，你就必须在塔波克·贾恩试图逃离客栈时与他交战。他在门边。
    .complete 1249,1 --Defeat Tapoke Jahn
step
    .isOnQuest 1249
    .goto Wetlands,10.6,60.7
.target Mikhail
>>对话: |cRXP_FRIENDLY_米克哈尔|r
    .turnin 1249 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
step
    .isOnQuest 1250
    .goto Wetlands,10.6,60.3
.target Tapoke "Slim" Jahn
>>对话: |cRXP_FRIENDLY_\"干柴\"塔伯克·贾恩|r
    .accept 1250 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    .isOnQuest 1250
    .goto Wetlands,10.6,60.7
>>对话: |cRXP_FRIENDLY_米克哈尔|r
    .turnin 1250 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Mikhail
    .accept 1264 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    .goto Wetlands,8.4,61.6
>>对话: |cRXP_FRIENDLY_文森特·海厄尔|r
    .turnin 1301 >>交任务: |cRXP_FRIENDLY_詹姆斯·海厄尔|r
.target Vincent Hyal
    .accept 1302 >>接任务: |cRXP_LOOT_詹姆斯·海厄尔|r
step << Draenei !Shaman tbc
	.goto Wetlands,4.8,57.3,50,0
	.goto Darkshore,31.0,41.1,30.0
	.goto The Exodar,81.5,52.5,40,0
	.goto Wetlands,5.2,63.3,50,0
	.money <35.00
	>>前往: |cRXP_PICK_黑海岸|r then the boat to the Exodar and buy your mount. Otherwise skip this step
	.hs >>然后前往米奈希尔港，乘船前往塞拉莫尔。
step << NightElf tbc
	.goto Wetlands,4.8,57.3,50,0
	.goto Darkshore,33.1,40.3,30,0
	.goto Darnassus,38.1,15.3,30,0
	.goto Wetlands,5.2,63.3,50,0
	.money <35.00
	.train 150 >>前往: |cRXP_PICK_黑海岸|r then to Darnassus and buy your mount.
	.hs >>然后返回米奈希尔港，乘船前往塞拉莫尔。
step << Shaman tbc
    #sticky
    #completewith next
    .zone The Exodar >>前往: |cRXP_PICK_埃索达|r
    >>如果您有35g，请购买坐骑并进行训练，否则请跳过此步骤。 << tbc
	.goto The Exodar,81.5,52.5,40,0
step << Shaman tbc
    .goto The Exodar,29.9,33.0
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 10491 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Farseer Nobundo
    .accept 9552 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Shaman tbc
    #completewith next
    .fly Bloodmyst Isle>>飞往血腥岛
step << Shaman tbc
    .goto Bloodmyst Isle,32.300,16.132
>>对话: |cRXP_FRIENDLY_阿奎欧斯|r
    .turnin 9504 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Aqueous
    .accept 9508 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman tbc
    .goto Bloodmyst Isle,26.0,40.9
	>>杀死Tel’athion并掠夺他的头
    .complete 9508,1 --Collect Head of Tel'athion (x1)
step << Shaman tbc
    .goto Bloodmyst Isle,32.2,16.1
>>对话: |cRXP_FRIENDLY_阿奎欧斯|r
    .turnin 9508 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Aqueous
    .accept 9509 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman tbc
	#sticky
	#completewith ZExodar
	.deathskip >>淹没自己和灵魂rez
step << Shaman tbc
	#sticky
	#completewith next
	.goto Bloodmyst Isle,57.7,53.9
	>>跑回血腥观察站，然后飞到外族人
    .fly The Exodar>>飞到外族人
step << Shaman tbc
	#label ZExodar
	.zone The Exodar >>前往: |cRXP_PICK_埃索达|r
step << Shaman tbc
    .goto Azuremyst Isle,26.8,27.3,42
    >>从主入口离开Exodar，沿着山向左行进，直到到达荒风小道
step << Shaman tbc
    .goto Azuremyst Isle,24.897,35.918
>>对话: |cRXP_FRIENDLY_维兰达|r
    .turnin 9552 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Velaada
    .accept 9553 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Shaman tbc
    .goto Azuremyst Isle,22.312,32.547
>>对话: |cRXP_FRIENDLY_苏苏鲁斯|r
    .turnin 9553 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Susurrus
    .accept 9554 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Shaman tbc
    #sticky
    #completewith next
    .zone The Exodar>>再和苏苏罗斯谈谈，这样他就可以把你送回去了
step << Shaman tbc
    .goto The Exodar,30.0,33.1
.target Farseer Nobundo
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 9509 >>交任务: |cRXP_FRIENDLY_水之召唤|r
step << Shaman tbc
    .goto The Exodar,29.6,33.4
.target Farseer Nobundo
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 9554 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
	>>这将给你一个1小时长的buff，提供40%的移动速度和30%的攻击速度。小心不要AFK
step << Shaman tbc
    .hs >>炉膛到湿地
]])

--1.5x guides:


RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 28-30 暮色森林
#version 1
#group RestedXP 联盟 20-32
#next 30-32 希尔斯布莱德丘陵
#xprate >1.3
step
    #sticky
    #completewith exit
    >>从拍卖行购买铜管
    .complete 174,1
	.bronzetube
step << Paladin
    .goto StormwindClassic,40.0,29.9
>>对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1652 >>交任务: |cRXP_FRIENDLY_勇气之书|r
.target Duthorian Rall
    .accept 1653 >>接任务: |cRXP_WARN_正义试炼|r
step << Paladin
	.goto StormwindClassic,38.6,32.8
	.trainer >>训练你的职业技能
step << Priest
	.goto StormwindClassic,38.5,26.8
	.trainer >>训练你的职业技能
step
    .goto StormwindClassic,39.3,28.0
>>对话: |cRXP_FRIENDLY_主教法席恩|r
    .turnin 269 >>交任务: |cRXP_FRIENDLY_寻求指引|r
.target Bishop Farthing
    .accept 270 >>接任务: |cRXP_LOOT_被诅咒的舰队|r
step
    .isOnQuest 322
    .goto StormwindClassic,51.7,12.3
>>对话: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
    .turnin 322 >>交任务: |cRXP_FRIENDLY_格瑞曼德·艾尔默|r
.target Grimand Elmore
    .accept 325 >>接任务: |cRXP_LOOT_整装待发|r
step
	#sticky
	#label MDiplomats
	#completewith nomorekid
    .xp <28,1
    .goto StormwindClassic,41.5,31.7
	>>Talk to the patrolling kid
.target Thomas
>>对话: |cRXP_FRIENDLY_托马斯|r
    .accept 1274 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    .goto StormwindClassic,39.7,27.6
    .turnin -293 >>交任务: |cRXP_FRIENDLY_净化帕雷斯之眼|r
step
	#label nomorekid
	#requires MDiplomats
	.zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step << Human Paladin
    .goto StormwindClassic,39.8,30.1
    >>与Duthorian Rall对话，点击提供的神圣之门
    .accept 1642 >>接任务: |cRXP_WARN_圣洁之书|r
>>对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1642 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Duthorian Rall
    .accept 1643 >>接任务: |cRXP_WARN_圣洁之书|r
step << Warlock
    .goto StormwindClassic,25.3,78.7
	.trainer >>训练你的职业技能
step
   .isOnQuest 337
	.goto StormwindClassic,74.1,7.6
    .accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
>>对话: |cRXP_FRIENDLY_米尔顿·西弗|r
    .turnin 337 >>交任务: |cRXP_FRIENDLY_一本破旧的历史书|r
.target Milton Sheaf
    .accept 538 >>接任务: |cRXP_LOOT_南海镇|r
step
    .isOnQuest 1274
    .goto StormwindClassic,78.1,25.1
>>对话: |cRXP_FRIENDLY_德拉维主教|r
    .turnin 1274 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Bishop DeLavey
    .accept 1241 >>接任务: |cRXP_LOOT_失踪的使节|r
step << Hunter
    .goto StormwindClassic,72.8,16.1
.target Major Samuelson
>>对话: |cRXP_FRIENDLY_萨缪尔森少校|r
    .turnin 563 >>交任务: |cRXP_FRIENDLY_人事调动|r
    .isOnQuest 563
step << Human Paladin
    #completewith linen
    >>如果你还没有，就去拍卖行买10块亚麻布
    .collect 2589,10,1644,1
step << Human Paladin
    .goto StormwindClassic,56.9,61.9
>>对话: |cRXP_FRIENDLY_斯蒂芬妮·特纳|r
    .turnin 1643 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Stephanie Turner
    .accept 1644 >>接任务: |cRXP_WARN_圣洁之书|r
step << Human Paladin
    #label linen
    .goto StormwindClassic,56.9,61.9
    .complete 1644,1
>>对话: |cRXP_FRIENDLY_斯蒂芬妮·特纳|r
    .turnin 1644 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Stephanie Turner
    .accept 1780 >>接任务: |cRXP_WARN_圣洁之书|r
step << Warrior
	.goto StormwindClassic,78.6,45.8
	.trainer >>上楼去。训练你的职业技能
step << Rogue
	.goto StormwindClassic,74.6,52.8
	.trainer >>训练你的职业技能
step
    .isOnQuest 1241
    .goto StormwindClassic,73.1,78.3
>>对话: |cRXP_FRIENDLY_乔贞|r
    .turnin 1241 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Jorgen
    .accept 1242 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    .isOnQuest 1242
    .goto StormwindClassic,60.1,64.4
>>对话: |cRXP_FRIENDLY_埃林·提亚斯|r
    .turnin 1242 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Elling Trias
    .accept 1243 >>接任务: |cRXP_LOOT_失踪的使节|r
step << Human Paladin
    .goto StormwindClassic,40.1,29.9
>>对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1780 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Duthorian Rall
    .accept 1781 >>接任务: |cRXP_WARN_圣洁之书|r
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
>>对话: |cRXP_FRIENDLY_贾森·坦诺姆|r
    .turnin 1781 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Gazin Tenorm
    .accept 1786 >>接任务: |cRXP_WARN_圣洁之书|r
step
	#label exit
	.goto StormwindClassic,66.2,62.1
    .fly Duskwood>>飞到黄昏
step
    #completewith next
    .skill riding,75 >>如果您在这台服务器上有更多黄金，请给自己邮寄至少5枚黄金，我们很快就会购买坐骑。
    .money >5.00
step
	#completewith notubeandy
    .goto Duskwood,79.8,47.9
    .itemcount 4371,<1
.target Viktori Prism'Antras
>>对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 174 >>接任务: |cRXP_WARN_仰望星空|r
    .turnin 174 >>交任务: |cRXP_FRIENDLY_仰望星空|r
step
    .goto Duskwood,79.8,47.9
.target Viktori Prism'Antras
>>对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
    .accept 175 >>接任务: |cRXP_WARN_仰望星空|r
    .isQuestTurnedIn 174
step
    .goto Duskwood,82.0,59.0
>>对话: |cRXP_FRIENDLY_盲眼玛丽|r
    .turnin 175 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.target Blind Mary
    .accept 177 >>接任务: |cRXP_WARN_仰望星空|r
    .isQuestTurnedIn 174
step
    .goto Duskwood,80.9,71.8
    >>在教堂杀死疯狂的食尸鬼
    .complete 177,1 --Collect Mary's Looking Glass (x1)
    .isQuestTurnedIn 174
	.unitscan Insane Ghoul
step
    .goto Duskwood,79.8,47.8
>>对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
    .turnin 177 >>交任务: |cRXP_FRIENDLY_仰望星空|r
.target Viktori Prism'Antras
    .accept 181 >>接任务: |cRXP_WARN_仰望星空|r
    .isQuestTurnedIn 174
step
	#label notubeandy
    .goto Duskwood,73.778,44.485
>>对话: |cRXP_FRIENDLY_旅店老板斯密茨|r
    .turnin 156 >>交任务: |cRXP_FRIENDLY_收集腐败之花|r
.target Tavernkeep Smitts
    .accept 159 >>接任务: |cRXP_LOOT_僵尸酒|r
step << !NightElf !Draenei
    .home >>将您的炉石设置为Darkshire
step << Shaman
    .home >>将您的炉石设置为Darkshire
step
    .goto Duskwood,73.7,46.8
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 57 >>交任务: |cRXP_FRIENDLY_守夜人|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 58 >>接任务: |cRXP_LOOT_守夜人|r
    .turnin 228 >>交任务: |cRXP_FRIENDLY_摩拉迪姆|r
    .accept 229 >>接任务: |cRXP_LOOT_幸存的女儿|r
step << Paladin/Hunter
    .goto Duskwood,73.7,46.8
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 57 >>交任务: |cRXP_FRIENDLY_守夜人|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 58 >>接任务: |cRXP_LOOT_守夜人|r
step
	.goto Duskwood,73.7,46.8
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 228 >>交任务: |cRXP_FRIENDLY_摩拉迪姆|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 229 >>接任务: |cRXP_LOOT_幸存的女儿|r
step << !Hunter !Paladin
    .goto Duskwood,74.543,46.085
>>对话: |cRXP_FRIENDLY_守夜人拉迪摩尔|r
    .turnin 229 >>交任务: |cRXP_FRIENDLY_幸存的女儿|r
.target Watcher Ladimore
    .accept 231 >>接任务: |cRXP_LOOT_女儿的爱|r
step
    .isOnQuest 1243
    .goto Duskwood,72.6,33.9
>>对话: |cRXP_FRIENDLY_守夜人巴库斯|r
    .turnin 1243 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Watcher Backus
    .accept 1244 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    .goto Duskwood,60.8,29.7
    .complete -173,1 --Kill Nightbane Shadow Weaver (x6)
step
    .goto Elwynn Forest,84.6,69.5
	>>向北行驶至埃尔文森林的伊斯特维尔伐木营
>>对话: |cRXP_FRIENDLY_治安官哈迦德|r
    .turnin 74 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Marshal Haggard
    .accept 75 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
    .goto Elwynn Forest,85.6,69.6
    >>上楼掠夺箱子
    .complete 75,1 --Collect A Faded Journal Page (x1)
step
    .goto Elwynn Forest,84.7,69.4
>>对话: |cRXP_FRIENDLY_治安官哈迦德|r
    .turnin 75 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Marshal Haggard
    .accept 78 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Human !Paladin !Warlock tbc
	.xp <30,1
	.goto Elwynn Forest,84.2,65.2
	.train 148 >>乘坐火车并购买您的坐骑。
	.money <35.00
    .skill riding,1,1
step << Human !Paladin !Warlock wotlk
	.goto Elwynn Forest,84.2,65.2
	.train 148 >>乘坐火车并购买您的坐骑。
	.money <5.00
step << Shaman
    #completewith next
    .hs >>赫斯到达克希尔
step << Shaman
    .goto Duskwood,73.9,44.5
>>对话: |cRXP_FRIENDLY_旅店老板斯密茨|r
    .turnin 78 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Tavernkeep Smitts
    .accept 79 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Shaman
    .goto Duskwood,73.6,46.7
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 79 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 80 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Shaman
    .goto Duskwood,72.6,46.9
>>对话: |cRXP_FRIENDLY_书记员达尔塔|r
    .turnin 80 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Clerk Daltry
    .accept 97 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Shaman
    .goto Duskwood,73.540,46.824
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 97 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 98 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step << Shaman
    #sticky
	#label TearT
	.goto Duskwood,78.4,35.9
    >>在地上找一朵小花
    .complete 335,1 --Collect Tear of Tilloa (x1)
    .isOnQuest 335
step << Shaman
    .goto Duskwood,77.4,36.1
	>>杀死房子里的亡灵，并抢夺他的戒指
    .complete 98,1 --Collect Mistmantle Family Ring (x1)
step << Shaman
    #requires TearT
	.goto Duskwood,75.7,45.3
.target Madame Eva
>>对话: |cRXP_FRIENDLY_伊瓦夫人|r
    .turnin 98 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
step << Shaman
    #completewith next
	.goto Duskwood,77.6,44.6
    .fly Westfall>>飞往威斯特福尔
step << Human Paladin
    .goto Elwynn Forest,72.7,51.5
    >>在亨泽·福克身上使用生命的象征
>>对话: |cRXP_FRIENDLY_亨兹·法奥克|r
    .turnin 1786 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Henze Faulk
    .accept 1787 >>接任务: |cRXP_WARN_圣洁之书|r
    .use 6866
step << Human Paladin
    .goto Elwynn Forest,73.5,51.3
    >>杀死岛上的德菲亚斯巫师
    .complete 1787,1 --Defias Script (1)
step
    .goto Duskwood,28.0,31.6
	>>前往: |cRXP_PICK_暮色森林|r
>>对话: |cRXP_FRIENDLY_亚伯克隆比|r
    .turnin 159 >>交任务: |cRXP_FRIENDLY_僵尸酒|r
.target Abercrombie
    .accept 133 >>接任务: |cRXP_LOOT_食尸鬼假人|r
step
	#sticky
	#completewith HistoryB4
	>>留意旧历史书(全区掉落)。你以后需要这个
	.collect 2794,1,337
	.accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
step
    .goto Duskwood,23.6,35.0
	>>杀死地穴中的瘟疫传播者并将其洗劫一空
    .complete 133,1 --Collect Ghoul Rib (x7)
    .complete 58,1 --Kill Plague Spreader (x20)
    .complete 101,1 --Collect Ghoul Fang (x10)
step
    .goto Duskwood,28.0,31.5
>>对话: |cRXP_FRIENDLY_亚伯克隆比|r
    .turnin 133 >>交任务: |cRXP_FRIENDLY_食尸鬼假人|r
.target Abercrombie
    .accept 134 >>接任务: |cRXP_LOOT_食人魔潜行者|r
step
    .goto Duskwood,23.9,72.0
    >>在小房子里掠夺箱子
    .complete 1244,1 --Collect Defias Docket (x1)
step
    .goto Duskwood,33.5,76.3
    >>掠夺洞穴入口旁边的板条箱
    .complete 134,1 --Collect Abercrombie's Crate (x1)
step
    .goto Duskwood,36.8,83.8
    >>杀死Zzarc’Vul并为他的单片眼镜掠夺他
	.unitscan Zzarc' Vul
    .isOnQuest 181
    .complete 181,1 --Collect Ogre's Monocle (x1)
step
    .goto Stranglethorn Vale,38.2,4.1
    >>走出洞穴，然后向南到STV。或者跳到横幅上跳过注销。
    .link https://www.youtube.com/watch?v=i5dIhfOmyd8 >>单击此处观看如何跳过注销的视频
    .fp Rebel >>获取叛军营地的飞行路线
step
    .goto Stranglethorn Vale,35.6,10.5
.target Barnil Stonepot
>>对话: |cRXP_FRIENDLY_巴尼尔·石罐|r
    .accept 583 >>接任务: |cRXP_LOOT_欢迎来到丛林|r
step
    .goto Stranglethorn Vale,35.7,10.8
.target Hemet Nesingwary Jr.
>>对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里二世|r
    .turnin 583 >>交任务: |cRXP_FRIENDLY_欢迎来到丛林|r
.target Ajeck Rouack
>>对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r
    .accept 185 >>接任务: |cRXP_LOOT_猎虎|r
.target Sir S. J. Erlgadin
>>对话: |cRXP_FRIENDLY_埃尔加丁爵士|r
    .accept 190 >>接任务: |cRXP_LOOT_猎豹|r
step
	#sticky
	#completewith thorsen
	#label tigers
    .complete 185,1 --Kill Young Stranglethorn Tiger (x10)
step
    .goto Stranglethorn Vale,42.1,11.2
    .complete 190,1 --Kill Young Panther (x10)
step
	#requires tigers
	#label thorsen
    .goto Stranglethorn Vale,35.616,10.619
>>对话: |cRXP_FRIENDLY_艾耶克·罗欧克|r
    .turnin 185 >>交任务: |cRXP_FRIENDLY_猎虎|r
.target Ajeck Rouack
    .accept 186 >>接任务: |cRXP_LOOT_猎虎|r
>>对话: |cRXP_FRIENDLY_埃尔加丁爵士|r
    .turnin 190 >>交任务: |cRXP_FRIENDLY_猎豹|r
.target Sir S. J. Erlgadin
    .accept 191 >>接任务: |cRXP_LOOT_猎豹|r
step
    .goto Duskwood,31.6,45.4
	>>杀死蜘蛛并掠夺它们的毒液
    .complete 101,2 --Collect Vial of Spider Venom (x5)
step
    .goto Duskwood,28.109,31.463
>>对话: |cRXP_FRIENDLY_亚伯克隆比|r
    .turnin 134 >>交任务: |cRXP_FRIENDLY_食人魔潜行者|r
.target Abercrombie
    .accept 160 >>接任务: |cRXP_LOOT_给镇长的信|r
step << !Hunter !Paladin
    .goto Duskwood,17.7,29.2
    >>单击墓碑
    .turnin 231 >>交任务: |cRXP_FRIENDLY_女儿的爱|r
step << Shaman tbc/Dwarf Paladin tbc/wotlk
    #sticky
    #completewith ds2
    .hs >>赫斯到达克希尔
step
#completewith next
    .goto Westfall,56.5,52.6
    >>如果你的HS处于冷却状态，请飞往Darkhire << wotlk
    .fly Darkshire>>飞到Darkhire
    .cooldown item,6948,<1 << wotlk
step
    .goto Duskwood,79.8,47.9
    .isOnQuest 181
.target Viktori Prism'Antras
>>对话: |cRXP_FRIENDLY_维克托·安特拉斯|r
    .turnin 181 >>交任务: |cRXP_FRIENDLY_仰望星空|r
step
    .goto Duskwood,75.3,47.9
>>对话: |cRXP_FRIENDLY_卡洛尔|r
    .turnin 173 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.target Calor
    .accept 221 >>接任务: |cRXP_LOOT_森林里的狼人|r
step
    #label ds2
    .goto Duskwood,75.7,45.3
.target Madame Eva
>>对话: |cRXP_FRIENDLY_伊瓦夫人|r
    .turnin 101 >>交任务: |cRXP_FRIENDLY_惩罚图腾|r
step << !Shaman
    .goto Duskwood,73.9,44.5
>>对话: |cRXP_FRIENDLY_旅店老板斯密茨|r
    .turnin 78 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Tavernkeep Smitts
    .accept 79 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
    .goto Duskwood,73.6,46.7
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 58 >>交任务: |cRXP_FRIENDLY_守夜人|r
    .turnin 79 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r << !Shaman
.target 指挥官阿尔西娅·埃本洛克
    .accept 80 >>接任务: |cRXP_LOOT_斯塔文的传说|r << !Shaman
step << !Shaman
    .goto Duskwood,72.6,46.9
>>对话: |cRXP_FRIENDLY_书记员达尔塔|r
    .turnin 80 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target Clerk Daltry
    .accept 97 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
    .goto Duskwood,71.9,46.6
>>对话: |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
    .turnin 160 >>交任务: |cRXP_FRIENDLY_给镇长的信|r
.target Lord Ello Ebonlocke
    .accept 251 >>接任务: |cRXP_LOOT_翻译亚伯克隆比的信|r
step
    .goto Duskwood,72.617,47.624
>>对话: |cRXP_FRIENDLY_希拉·沃宁迪|r
    .turnin 251 >>交任务: |cRXP_FRIENDLY_翻译亚伯克隆比的信|r
.target Sirra Von'Indi
    .accept 401 >>接任务: |cRXP_LOOT_等待希拉完工|r
    .turnin 401 >>交任务: |cRXP_FRIENDLY_等待希拉完工|r
    .accept 252 >>接任务: |cRXP_LOOT_翻译好的信件|r
step
    .goto Duskwood,71.9,46.6
.target Lord Ello Ebonlocke
>>对话: |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
    .turnin 252 >>交任务: |cRXP_FRIENDLY_翻译好的信件|r
step
#xprate <1.7
    .goto Duskwood,71.9,46.6
.target Lord Ello Ebonlocke
>>对话: |cRXP_FRIENDLY_艾尔罗·埃伯洛克公爵|r
    .accept 253 >>接任务: |cRXP_LOOT_藏尸者的妻子|r
step
	#sticky
	#completewith next
	.destroy 3248 >>摧毁: |cRXP_ENEMY_翻译好的藏尸者信件|r, 它在你的背包中. 不再需要它了
step << !Shaman
    .goto Duskwood,73.540,46.824
>>对话: |cRXP_FRIENDLY_指挥官阿尔泰娅·埃伯洛克|r
    .turnin 97 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
.target 指挥官阿尔西娅·埃本洛克
    .accept 98 >>接任务: |cRXP_LOOT_斯塔文的传说|r
step
    .isOnQuest 1244
    .goto Duskwood,72.6,33.9
    >>他沿着北路巡逻
>>对话: |cRXP_FRIENDLY_守夜人巴库斯|r
    .turnin 1244 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Watcher Backus
    .accept 1245 >>接任务: |cRXP_LOOT_失踪的使节|r
step << !Shaman
    .goto Duskwood,77.4,36.1
    >>杀戮并掠夺Stalvan Mistmantle
    .complete 98,1 --Collect Mistmantle Family Ring (x1)
step << !Shaman
    .isOnQuest 335
    .goto Duskwood,78.4,35.9
    >>在地上找一朵小花
    .complete 335,1 --Collect Tear of Tilloa (x1)
step << !Shaman
    .goto Duskwood,75.7,45.3
.target Madame Eva
>>对话: |cRXP_FRIENDLY_伊瓦夫人|r
    .turnin 98 >>交任务: |cRXP_FRIENDLY_斯塔文的传说|r
step
    .goto Duskwood,64.7,49.7
    >>杀死该地区的虫子
    .complete 221,1 --Kill Nightbane Dark Runner (x12)
step
    .goto Duskwood,75.3,48.1
>>对话: |cRXP_FRIENDLY_卡洛尔|r
    .turnin 221 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.target Calor
    .accept 222 >>接任务: |cRXP_LOOT_森林里的狼人|r
step
    #label HistoryB4
    >>杀死该地区的沃根
	.goto Duskwood,73.0,75.0
    .complete 222,1 --Kill Nightbane Vile Fang (x8)
    .complete 222,2 --Kill Nightbane Tainted One (x8)
step
    .xp 30-10575 << !Shaman
    .xp 30-7460 << Shaman
step
    .goto Duskwood,75.752,47.569
>>对话: |cRXP_FRIENDLY_卡洛尔|r
    .turnin 222 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
.target Calor
    .accept 223 >>接任务: |cRXP_LOOT_森林里的狼人|r
step
    .goto Duskwood,75.3,48.9
.target Jonathan Carevin
>>对话: |cRXP_FRIENDLY_乔纳森·卡尔文|r
    .turnin 223 >>交任务: |cRXP_FRIENDLY_森林里的狼人|r
step << Shaman
    .xp 30
step << !Mage
	.goto Duskwood,77.5,44.2
    .fly Stormwind>>飞到暴风城
step << Shaman
    .goto StormwindClassic,61.9,83.9
.target Farseer Umbrua
>>对话: |cRXP_FRIENDLY_先知安布洛尔|r
    .accept 10491 >>接任务: |cRXP_LOOT_空气的召唤|r
    .trainer >>训练你的职业技能
    .xp <30,1
step << Mage
	>>Teleport到stormwind
    .goto StormwindClassic,39.6,79.6
	.trainer >>训练你的职业技能
step << Dwarf Paladin
    #sticky
	#completewith next
    >>从拍卖行购买10块亚麻布
    .complete 1648,1
step
    .isOnQuest 1245
    .goto StormwindClassic,60.1,64.4
>>对话: |cRXP_FRIENDLY_埃林·提亚斯|r
    .turnin 1245 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Elling Trias
    .accept 1246 >>接任务: |cRXP_LOOT_失踪的使节|r
step << Paladin
	.goto StormwindClassic,38.6,32.8
	.trainer >>训练你的职业技能
step << Priest
	.goto StormwindClassic,38.5,26.8
	.trainer >>训练你的职业技能
step << Warrior
    #sticky
    #completewith next
    .goto StormwindClassic,64.1,61.2
    .goto StormwindClassic,46.7,79.0
    >>检查AH、贸易区的花店和法师区的炼金术店，并购买一些生命根，稍后你需要8个才能完成任务，如果你已经拥有了，跳过这一步
    .collect 3357,8 --Collect Liferoot (x8)
    #xprate <1.5
step << Warrior
    .goto StormwindClassic,78.8,45.3
.target Darnath Bladesinger
.target Wu Shen
.target Kelv Sternhammer
.target Baltus Fowler
.target Sorek
.target Torm Ragetotem
>>对话: |cRXP_FRIENDLY_托姆·暴怒图腾|r
-->>对话: |cRXP_FRIENDLY_索瑞克|r
-->>对话: |cRXP_FRIENDLY_巴尔图斯·弗勒|r
-->>对话: |cRXP_FRIENDLY_凯夫·重锤|r
-->>对话: |cRXP_FRIENDLY_武神|r
-->>对话: |cRXP_FRIENDLY_达纳斯·刃歌|r
    .accept 1718 >>接任务: |cRXP_LOOT_岛民|r
	.trainer >>训练类咒语
    .xp <30,1
step << Rogue
	.goto StormwindClassic,74.6,52.8
	.trainer >>训练你的职业技能
step
    .isOnQuest 1246
    .goto StormwindClassic,70.3,44.8
    >>击败Dashel Stonefist
>>对话: |cRXP_FRIENDLY_达舍尔·石拳|r
    .turnin 1246 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Dashel Stonefist
    .accept 1447 >>接任务: |cRXP_LOOT_失踪的使节|r
    .turnin 1447 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
    .accept 1247 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    .isOnQuest 1247
    .goto StormwindClassic,60.1,63.9
>>对话: |cRXP_FRIENDLY_埃林·提亚斯|r
    .turnin 1247 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Elling Trias
    .accept 1248 >>接任务: |cRXP_LOOT_失踪的使节|r
step << NightElf/Draenei
    #sticky
    .goto StormwindClassic,52.61,65.71
    .home >>在暴风城设置您的炉石
step
    .goto StormwindClassic,39.9,81.3
.target Archmage Malin
>>对话: |cRXP_FRIENDLY_大法师马林|r
    .accept 690 >>接任务: |cRXP_LOOT_马林的要求|r
step
    .goto StormwindClassic,40.6,91.7
.target Connor Rivers
>>对话: |cRXP_FRIENDLY_科诺尔·瑞沃斯|r
    .accept 1301 >>接任务: |cRXP_LOOT_詹姆斯·海厄尔|r
step << Warlock
    .goto StormwindClassic,25.3,78.5
.target Demisette Cloyce
>>对话: |cRXP_FRIENDLY_德米赛特·克劳斯|r
    .accept 4738 >>接任务: |cRXP_LOOT_寻找梅纳拉·沃伦德|r
    .xp <31,1
step << Warlock
    .goto StormwindClassic,25.3,78.5
.target Gakin the Darkbinder
.target Lago Blackwrench
>>对话: |cRXP_FRIENDLY_拉戈·黑钳|r
-->>对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r
    .accept 1798 >>接任务: |cRXP_LOOT_寻找斯坦哈德|r
	.trainer >>训练你的职业技能

step << Shaman wotlk
    .goto StormwindNew,21.8,56.2
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Shaman wotlk
    #sticky
    #completewith next
    .zone The Exodar >>前往: |cRXP_PICK_埃索达|r
    >>如果您有35g，请购买坐骑并进行训练，否则请跳过此步骤。 << tbc
	.goto The Exodar,81.5,52.5,40,0
step << Shaman wotlk
    .goto The Exodar,29.9,33.0
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 10491 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Farseer Nobundo
    .accept 9552 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Shaman wotlk
    #completewith next
    .fly Bloodmyst Isle>>飞往血腥岛
step << Shaman wotlk
    .goto Bloodmyst Isle,32.300,16.132
>>对话: |cRXP_FRIENDLY_阿奎欧斯|r
    .turnin 9504 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Aqueous
    .accept 9508 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman wotlk
    .goto Bloodmyst Isle,26.0,40.9
	>>杀死Tel’athion并掠夺他的头
    .complete 9508,1 --Collect Head of Tel'athion (x1)
step << Shaman wotlk
    .goto Bloodmyst Isle,32.2,16.1
>>对话: |cRXP_FRIENDLY_阿奎欧斯|r
    .turnin 9508 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Aqueous
    .accept 9509 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman wotlk
	#sticky
	#completewith ZExodar
	.deathskip >>淹没自己和灵魂rez
step << Shaman wotlk
	#sticky
	#completewith next
	.goto Bloodmyst Isle,57.7,53.9
	>>跑回血腥观察站，然后飞到外族人
    .fly The Exodar>>飞到外族人
step << Shaman wotlk
	#label ZExodar
	.zone The Exodar >>前往: |cRXP_PICK_埃索达|r
step << Shaman wotlk
    .goto Azuremyst Isle,26.8,27.3,42
    >>从主入口离开Exodar，沿着山向左行进，直到到达荒风小道
step << Shaman wotlk
    .goto Azuremyst Isle,24.897,35.918
>>对话: |cRXP_FRIENDLY_维兰达|r
    .turnin 9552 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Velaada
    .accept 9553 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Shaman wotlk
    .goto Azuremyst Isle,22.312,32.547
>>对话: |cRXP_FRIENDLY_苏苏鲁斯|r
    .turnin 9553 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Susurrus
    .accept 9554 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Shaman wotlk
    #sticky
    #completewith next
    .zone The Exodar>>再和苏苏罗斯谈谈，这样他就可以把你送回去了
step << Shaman wotlk
    .goto The Exodar,30.0,33.1
.target Farseer Nobundo
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 9509 >>交任务: |cRXP_FRIENDLY_水之召唤|r
step << Shaman wotlk
    .goto The Exodar,29.6,33.4
.target Farseer Nobundo
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 9554 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
	>>这将给你一个1小时长的buff，提供40%的移动速度和30%的攻击速度。小心不要AFK
step << Shaman wotlk
    .hs >>从火炉到暴风

step << Human Paladin
    .goto StormwindClassic,38.6,26.7
>>对话: |cRXP_FRIENDLY_贾森·坦诺姆|r
    .turnin 1787 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Gazin Tenorm
    .accept 1788 >>接任务: |cRXP_WARN_圣洁之书|r
step << Human Paladin
    .goto StormwindClassic,39.9,29.8
.target Duthorian Rall
>>对话: |cRXP_FRIENDLY_达索瑞恩·拉尔|r
    .turnin 1788 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
step
    .goto StormwindClassic,74.1,7.6
    >>点击包里的旧历史书，如果没有找到，跳过这一步
    .accept 337 >>接任务: |cRXP_LOOT_一本破旧的历史书|r
.target Milton Sheaf
>>对话: |cRXP_FRIENDLY_米尔顿·西弗|r
    .turnin 337 >>交任务: |cRXP_FRIENDLY_一本破旧的历史书|r
    .use 2794
step
    .goto StormwindClassic,74.1,7.6
.target Milton Sheaf
>>对话: |cRXP_FRIENDLY_米尔顿·西弗|r
    .accept 538 >>接任务: |cRXP_LOOT_南海镇|r
    .isQuestTurnedIn 337
step << NightElf wotlk
	.goto Stormwind City,4.8,57.3,50,0
	.goto Darkshore,33.1,40.3,30,0
	.goto Darnassus,38.1,15.3,30,0
	.goto Wetlands,5.2,63.3,50,0
	.money <5.00
	.skill riding,75 >>前往: |cRXP_PICK_黑海岸|r then to Darnassus and buy your mount. Then hearth back to Stormwind
step << Draenei !Shaman !Paladin wotlk
	.goto Stormwind City,4.8,57.3,50,0
	.goto Darkshore,31.0,41.1,30.0
	.goto The Exodar,81.5,52.5,40,0
	.goto Wetlands,5.2,63.3,50,0
	.money <5.00
	.skill riding,75 >>前往: |cRXP_PICK_黑海岸|r then the boat to the Exodar and buy your mount. Then hearth to Stormwind
step
    #sticky
	#completewith next
    .goto StormwindClassic,60.5,12.3,40,0
    .goto StormwindClassic,60.5,12.3,0
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >>点击此处在电车内注销跳过
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    >>前往: |cRXP_PICK_铁炉堡|r instead if you have that spell trained << Mage
    .zoneskip Wetlands
step
    .goto Ironforge,69.8,50.1
.target Tinkmaster Overspark
>>对话: |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r
    .turnin 2923 >>交任务: |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r
    .isOnQuest 2923
    .zoneskip Wetlands
step << Rogue
    #sticky
    #completewith end
    .trainer >>在铁炉训练你的职业法术
step << Rogue
    .goto Ironforge,45.2,6.6
    >>购买31级武器升级(17dps)
    .collect 2520,1
    .collect 2526,1
    >>如果你能在拍卖行找到更好的武器，跳过这一步
step << Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >>列车2H轴 << !Rogue
	.train 266 >>训练枪 << Hunter/Warrior/Rogue
    .train 199 >>火车2H梅斯 << Warrior/Shaman
    .train 198 >>火车梅斯 << Rogue/Shaman
    .train 44 >>火车轴 << Warrior wotlk/Shaman/Rogue wotlk
    .zoneskip Wetlands
step << Hunter tbc
	#sticky
	#completewith next
	.goto Ironforge,61.34,89.25
	>>走进大楼，下楼去，从Thalgus Thunderfist那里买一个30级箭袋
	.collect 7371,1
step << !Dwarf !Gnome wotlk
    .goto Ironforge,55.501,47.742
    .fp Ironforge>>获得铁炉堡飞行路线
step
    .goto Ironforge,18.5,51.6
    .home >>把你的炉石放在铁炉堡
step << Dwarf Paladin
    .goto Ironforge,23.131,6.143
.target Brandur Ironhammer
>>对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r
    .accept 2999 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    .goto Ironforge,27.4,12.1
    >>上楼去和蒂扎战斗堡垒通话
>>对话: |cRXP_FRIENDLY_蒂萨·热炉|r
    .turnin 2999 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Tiza Battleforge
    .accept 1645 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1645 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1646 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1646 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1647 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    >>与约翰·特纳交谈，他在城市的外环漫步
>>对话: |cRXP_FRIENDLY_约翰·特纳|r
    .turnin 1647 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target John Turner
    .accept 1648 >>接任务: |cRXP_WARN_圣洁之书|r
    .turnin 1648 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
    .accept 1778 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>返回Tiza Battleforge
>>对话: |cRXP_FRIENDLY_蒂萨·热炉|r
    .turnin 1778 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Tiza Battleforge
    .accept 1779 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    .goto Ironforge,23.6,8.6
    >>与缪尔登·巴特尔福格交谈
>>对话: |cRXP_FRIENDLY_穆里顿·热炉|r
    .turnin 1779 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Muiredon Battleforge
    .accept 1783 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,53.2,35.3
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
step << Paladin
    .goto Dun Morogh,52.5,36.8
    >>前往铁炉堡大门 << !Dwarf
.target Jordan Stilwell
>>对话: |cRXP_FRIENDLY_乔丹·斯迪威尔|r
    .turnin 1653 >>交任务: |cRXP_FRIENDLY_正义试炼|r
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>在纳姆·福克身上使用生命的象征
>>对话: |cRXP_FRIENDLY_纳姆·法奥克|r
    .turnin 1783 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Narm Faulk
    .accept 1784 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5
    >>杀死黑铁间谍
    .complete 1784,1 --Dark Iron Script (1)
step << Dwarf Paladin
    #completewith next
    .hs >>前往: |cRXP_PICK_铁炉堡|r
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>和楼上的缪尔登谈谈
>>对话: |cRXP_FRIENDLY_穆里顿·热炉|r
    .turnin 1784 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
.target Muiredon Battleforge
    .accept 1785 >>接任务: |cRXP_WARN_圣洁之书|r
step << Dwarf Paladin
    .goto Ironforge,27.4,11.9
.target Tiza Battleforge
>>对话: |cRXP_FRIENDLY_蒂萨·热炉|r
    .turnin 1785 >>交任务: |cRXP_FRIENDLY_圣洁之书|r
step << Dwarf !Paladin tbc
	.money <35.0
	.goto Dun Morogh,63.5,50.6
	.train 152 >>坐火车，买你的坐骑
step << Gnome !Warlock tbc
	.money <35.0
	.goto Dun Morogh,49.2,48.1
	.train 553 >>坐火车，买你的坐骑
step << Mage
    .goto Ironforge,25.5,7.1
    .train 3562>>火车传送：铁炉堡
step << Gnome/Dwarf/tbc
    .goto Ironforge,55.501,47.742
    .fly Wetlands>>飞到湿地
step << wotlk !Dwarf !Gnome
    #sticky
    .goto Dun Morogh,53.2,35.3
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
    .zoneskip Ironforge,1
step << wotlk !Dwarf !Gnome
    #completewith next
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
    >>邓莫罗不死->湿地跳过
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>点击此处查看视频参考
    .goto Wetlands,12.1,60.3,80 >>前往: |cRXP_PICK_湿地|r
step << wotlk !Dwarf !Gnome
    .goto Wetlands,9.5,59.7
    .fp Menethil >>获取Menethil Harbor航线
step << Dwarf !Paladin wotlk
	#sticky
	#completewith next
	.goto Dun Morogh,63.5,50.6
	.money <5.00
	.skill riding,75 >>前往: |cRXP_PICK_丹莫罗|r, train riding and purchase your mount.
step << Gnome !Warlock wotlk
	#sticky
	#completewith next
	.goto Dun Morogh,49.2,48.1
	.money <5.00
	.skill riding,75 >>前往: |cRXP_PICK_丹莫罗|r, train riding and purchase your mount.

]])


RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#version 1
#group RestedXP 联盟 20-32
#name 30-32 希尔斯布莱德丘陵
#next RestedXP 联盟 32-47\32-33闪光平板
#xprate >1.3

step
    .goto Wetlands,10.8,59.6
.target First Mate Fitzsimmons
>>对话: |cRXP_FRIENDLY_大副菲兹莫斯|r
    .accept 288 >>接任务: |cRXP_LOOT_第三舰队|r
step
    .goto Wetlands,10.6,60.5
>>对话: |cRXP_FRIENDLY_戈罗林·钢眉|r
    .turnin 270 >>交任务: |cRXP_FRIENDLY_被诅咒的舰队|r
.target Glorin Steelbrow
    .accept 321 >>接任务: |cRXP_LOOT_光铸铁|r
step
    #label mead
    #sticky
    .goto Wetlands,10.7,60.9
    >>从店主那里买一瓶美赞臣酒
    .complete 288,1 --Collect Flagon of Mead (x1)
step
    .goto Wetlands,10.84,60.43
    >>上楼去和考古学家Flagongut谈谈
.target Archaeologist Flagongut
>>对话: |cRXP_FRIENDLY_考古学家弗拉冈特|r
    .turnin 942 >>交任务: |cRXP_FRIENDLY_健忘的勘察员|r
    .isOnQuest 942
step << wotlk
    #completewith next
    + 如果你还没有坐骑，如果可以的话，给自己邮寄5克。很快就会有更多机会。
step
    #requires mead
    .isOnQuest 1248
    .goto Wetlands,10.6,60.7
>>对话: |cRXP_FRIENDLY_米克哈尔|r
    .turnin 1248 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Mikhail
    .accept 1249 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    >>一旦你接受了任务，你就必须在塔波克·贾恩试图逃离客栈时与他交战。两个34级敌人会攻击你。如果你不能杀死他们，你可能需要跳过这一步，稍后再做。
    .complete 1249,1 --Defeat Tapoke Jahn
step
    .isOnQuest 1249
    .goto Wetlands,10.6,60.7
.target Mikhail
>>对话: |cRXP_FRIENDLY_米克哈尔|r
    .turnin 1249 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Tapoke "Slim" Jahn
>>对话: |cRXP_FRIENDLY_\"干柴\"塔伯克·贾恩|r
    .accept 1250 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    .isOnQuest 1250
    .goto Wetlands,10.6,60.7
>>对话: |cRXP_FRIENDLY_米克哈尔|r
    .turnin 1250 >>交任务: |cRXP_FRIENDLY_失踪的使节|r
.target Mikhail
    .accept 1264 >>接任务: |cRXP_LOOT_失踪的使节|r
step
    .goto Wetlands,10.8,59.7
>>对话: |cRXP_FRIENDLY_大副菲兹莫斯|r
    .turnin 288 >>交任务: |cRXP_FRIENDLY_第三舰队|r
.target First Mate Fitzsimmons
    .accept 289 >>接任务: |cRXP_LOOT_被诅咒的船员|r
step
    .goto Wetlands,8.4,61.6
>>对话: |cRXP_FRIENDLY_文森特·海厄尔|r
    .turnin 1301 >>交任务: |cRXP_FRIENDLY_詹姆斯·海厄尔|r
.target Vincent Hyal
    .accept 1302 >>接任务: |cRXP_LOOT_詹姆斯·海厄尔|r
step << Draenei !Shaman tbc
	.goto Wetlands,4.8,57.3,50,0
	.goto Darkshore,31.0,41.1,30.0
	.goto The Exodar,81.5,52.5,40,0
	.goto Wetlands,5.2,63.3,50,0
	.money <35.00
	>>前往: |cRXP_PICK_黑海岸|r then the boat to the Exodar and buy your mount. Otherwise skip this step
	.hs >>然后前往米奈希尔港，乘船前往塞拉莫尔。
step << NightElf tbc
	.goto Wetlands,4.8,57.3,50,0
	.goto Darkshore,33.1,40.3,30,0
	.goto Darnassus,38.1,15.3,30,0
	.goto Wetlands,5.2,63.3,50,0
	.money <35.00
	.train 150 >>前往: |cRXP_PICK_黑海岸|r then to Darnassus and buy your mount.
	.hs >>然后返回米奈希尔港，乘船前往塞拉莫尔。
step << Shaman tbc
    #sticky
    #completewith next
    .zone The Exodar >>前往: |cRXP_PICK_埃索达|r
	.goto The Exodar,81.5,52.5,40,0
step << Shaman tbc
    .goto The Exodar,29.9,33.0
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 10491 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Farseer Nobundo
    .accept 9552 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Shaman tbc
.isQuestTurnedIn 9508
    .fly Bloodmyst Isle>>飞往血腥岛
step << Shaman tbc
    .goto Bloodmyst Isle,32.300,16.132
>>对话: |cRXP_FRIENDLY_阿奎欧斯|r
    .turnin 9504 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Aqueous
    .accept 9508 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman tbc
    .goto Bloodmyst Isle,26.0,40.9
	>>杀死Tel’athion并掠夺他的头
    .complete 9508,1 --Collect Head of Tel'athion (x1)
step << Shaman tbc
    .goto Bloodmyst Isle,32.2,16.1
>>对话: |cRXP_FRIENDLY_阿奎欧斯|r
    .turnin 9508 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.target Aqueous
    .accept 9509 >>接任务: |cRXP_LOOT_水之召唤|r
step << Shaman tbc
	#sticky
	#completewith ZExodar
	.deathskip >>淹没自己和灵魂rez
step << Shaman tbc
	#sticky
	#completewith next
	.goto Bloodmyst Isle,57.7,53.9
	>>跑回血腥观察站，然后飞到外族人
    .fly The Exodar>>飞到外族人
step << Shaman tbc
	#label ZExodar
	.zone The Exodar >>前往: |cRXP_PICK_埃索达|r
step << Shaman tbc
    .goto Azuremyst Isle,26.8,27.3,42
    >>从主入口离开Exodar，沿着山向左行进，直到到达荒风小道
step << Shaman tbc
    .goto Azuremyst Isle,24.897,35.918
>>对话: |cRXP_FRIENDLY_维兰达|r
    .turnin 9552 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Velaada
    .accept 9553 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Shaman tbc
    .goto Azuremyst Isle,22.312,32.547
>>对话: |cRXP_FRIENDLY_苏苏鲁斯|r
    .turnin 9553 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
.target Susurrus
    .accept 9554 >>接任务: |cRXP_LOOT_空气的召唤|r
step << Shaman tbc
    #sticky
    #completewith next
    .zone The Exodar>>再和苏苏罗斯谈谈，这样他就可以把你送回去了
step << Shaman tbc
    .goto The Exodar,30.0,33.1
.target Farseer Nobundo
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 9509 >>交任务: |cRXP_FRIENDLY_水之召唤|r
step << Shaman tbc
    .goto The Exodar,29.6,33.4
.target Farseer Nobundo
>>对话: |cRXP_FRIENDLY_预言者努波顿|r
    .turnin 9554 >>交任务: |cRXP_FRIENDLY_空气的召唤|r
	>>这将给你一个1小时长的buff，提供40%的移动速度和30%的攻击速度。小心不要AFK
step << Shaman tbc
    .hs >>炉膛到湿地
step
    .goto Wetlands,12.1,64.1
    .turnin 321 >>交任务: |cRXP_FRIENDLY_光铸铁|r
    .accept 324 >>接任务: |cRXP_LOOT_丢失的铁锭|r
step
    .goto Wetlands,10.1,69.5
	>>杀死墨洛克人并掠夺他们的铸锭。下降率可能非常低。
    .complete 324,1 --Collect Lightforge Ingot (x5)
step
    .goto Wetlands,10.6,60.4
>>对话: |cRXP_FRIENDLY_戈罗林·钢眉|r
    .turnin 324 >>交任务: |cRXP_FRIENDLY_丢失的铁锭|r
.target Glorin Steelbrow
    .accept 322 >>接任务: |cRXP_LOOT_格瑞曼德·艾尔默|r
step
    .goto Wetlands,10.9,55.9
.target Harlo Barnaby
>>对话: |cRXP_FRIENDLY_哈尔罗·巴纳比|r
    .accept 472 >>接任务: |cRXP_LOOT_丹莫德的陷落|r
step
    .isOnQuest 464
    .goto Wetlands,9.9,57.4
.target Captain Stoutfist
>>对话: |cRXP_FRIENDLY_斯托菲队长|r
    .turnin 464 >>交任务: |cRXP_FRIENDLY_龙喉战旗|r
step
    .isOnQuest 281
    .goto Wetlands,13.5,41.5
    .turnin 281 >>交任务: |cRXP_FRIENDLY_夺回雕像|r
    .accept 284 >>接任务: |cRXP_LOOT_继续搜寻|r
step
    .isOnQuest 284
    .goto Wetlands,13.5,38.4
    .turnin 284 >>交任务: |cRXP_FRIENDLY_继续搜寻|r
    .accept 285 >>接任务: |cRXP_LOOT_搜寻雕像|r
step
    .isOnQuest 285
    .goto Wetlands,13.9,34.8
    .turnin 285 >>交任务: |cRXP_FRIENDLY_搜寻雕像|r
    .accept 286 >>接任务: |cRXP_LOOT_归还雕像|r
step
    .goto Wetlands,13.9,30.4
    >>要找到斯内利，从靠近海岸的船体上的孔进入船内
    >>如果你找不到海军陆战队，向北的船通常有更多的海军陆战团。
    .complete 289,3 --Collect Snellig's Snuffbox (x1)
    .complete 289,1 --Kill Cursed Sailor (x13)
    .complete 289,2 --Kill Cursed Marine (x5)
step
    .isOnQuest 470
    .goto Wetlands,44.2,25.8
    >>杀死地穴周围的黏液
    .complete 470,1 --Collect Sida's Bag (x1)
    step
    #completewith next
    .goto Wetlands,49.9,18.3
.target Longbraid the Grim
>>对话: |cRXP_FRIENDLY_坚毅者长须|r
    .turnin 472 >>交任务: |cRXP_FRIENDLY_丹莫德的陷落|r
step
    .goto Wetlands,49.9,18.3
.target Rhag Garmason
>>对话: |cRXP_FRIENDLY_拉格·加玛森|r
    .accept 631 >>接任务: |cRXP_LOOT_萨多尔大桥|r
.target Longbraid the Grim
>>对话: |cRXP_FRIENDLY_坚毅者长须|r
    .accept 304 >>接任务: |cRXP_LOOT_艰巨的任务|r
.target Motley Garmason
>>对话: |cRXP_FRIENDLY_莫特雷·加玛森|r
    .accept 303 >>接任务: |cRXP_LOOT_黑铁战争|r
step
	#sticky
    #label balgaras
    >>杀死犯规的巴尔加拉斯，他可以在东边很远的营地或邓莫德的一所房子里产卵。检查完Dun Modir后往东走。抢他的耳朵。
    .complete 304,1 --Collect Ear of Balgaras (x1)
	.unitscan Balgaras the Foul
    .goto Wetlands,47.4,15.4,40,0
    .goto Wetlands,61.8,31.0,80,0
    .goto Wetlands,46.8,16.0
step--?
    .goto Wetlands,47.3,16.6
	>>杀死该地区的黑铁矮人
    .complete 303,1 --Kill Dark Iron Dwarf (x10)
    .complete 303,2 --Kill Dark Iron Tunneler (x5)
    .complete 303,3 --Kill Dark Iron Saboteur (x5)
    .complete 303,4 --Kill Dark Iron Demolitionist (x5)
step
    #requires balgaras
    .goto Wetlands,49.7,18.3
.target Motley Garmason
>>对话: |cRXP_FRIENDLY_莫特雷·加玛森|r
    .turnin 303 >>交任务: |cRXP_FRIENDLY_黑铁战争|r
.target Longbraid the Grim
>>对话: |cRXP_FRIENDLY_坚毅者长须|r
    .turnin 304 >>交任务: |cRXP_FRIENDLY_艰巨的任务|r
step
    .goto Wetlands,51.2,8.0
	>>下楼，点击矮人尸体。忽略所有的暴徒。
    .turnin 631 >>交任务: |cRXP_FRIENDLY_萨多尔大桥|r
    .accept 632 >>接任务: |cRXP_LOOT_萨多尔大桥|r
step
    .goto Wetlands,49.9,18.3
    >>跑回外面，在任务中转身
>>对话: |cRXP_FRIENDLY_拉格·加玛森|r
    .turnin 632 >>交任务: |cRXP_FRIENDLY_萨多尔大桥|r
.target Rhag Garmason
    .accept 633 >>接任务: |cRXP_LOOT_萨多尔大桥|r
step
    .goto Arathi Highlands,43.3,92.6
.target Foggy MacKreel
>>对话: |cRXP_FRIENDLY_醉鬼马克里尔|r
    .accept 647 >>接任务: |cRXP_LOOT_马克里尔的月光酒|r
    >>如果你没有任何速度提升或缓慢下降，你仍然可以获得这个任务
    .link https://www.twitch.tv/videos/646111384 >>单击此处以供参考
    .timer 900,Moonshine Expiration Time
step
    .goto Arathi Highlands,44.3,93.0
	>>跳下去，从水下尸体上抢走信件
    .accept 637 >>接任务: |cRXP_LOOT_苏利·巴鲁的信|r
	.use 4433 >>跳下去，从水下尸体上抢走信件
step
    #completewith next
    .goto Arathi Highlands,52.5,90.4,30 >>向东游向这里的斜坡
step
    .goto Arathi Highlands,48.7,87.9
    .complete 633,1 --Collect Cache of Explosives Destroyed (x1)
step
    .goto Wetlands,49.9,18.3
>>对话: |cRXP_FRIENDLY_拉格·加玛森|r
    .turnin 633 >>交任务: |cRXP_FRIENDLY_萨多尔大桥|r
.target Rhag Garmason
    .accept 634 >>接任务: |cRXP_LOOT_请求援助|r
step
    .goto Arathi Highlands,45.9,47.5
.target Captain Nials
>>对话: |cRXP_FRIENDLY_尼艾丝队长|r
    .turnin 634 >>交任务: |cRXP_FRIENDLY_请求援助|r
step
    #xprate >1.3
    .goto Arathi Highlands,46.6,47.0
.target Skuerto
>>对话: |cRXP_FRIENDLY_斯奎尔图|r
    .turnin 690 >>交任务: |cRXP_FRIENDLY_马林的要求|r
    .isOnQuest 690
step
    .goto Arathi Highlands,45.8,46.1
    .fp Arathi >>获取Arathi Highlands航线
step
.isOnQuest 647
>>跑到南岸，在客栈下楼。定时器还没到就开始工作。当心路上的快递员。
	.unitscan Forsaken Bodyguard
.goto Hillsbrad Foothills,52.2,58.6
.target Brewmeister Bilger
>>对话: |cRXP_FRIENDLY_布鲁米·比格尔|r
    .turnin 647 >>交任务: |cRXP_FRIENDLY_马克里尔的月光酒|r
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
.target Lieutenant Farren Orinelle
>>对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
    .accept 536 >>接任务: |cRXP_LOOT_清理海岸|r
step
    .goto Hillsbrad Foothills,50.9,58.8
.target Huraan
>>对话: |cRXP_FRIENDLY_忽尔兰|r
    .accept 9435 >>接任务: |cRXP_LOOT_遗失的水晶|r
step <<  Hunter tbc
     #completewith next
    .goto Hillsbrad Foothills,50.2,58.8
     .stable >>稳定你的宠物，向东走
step << Hunter tbc
    .xp <30,1
    .goto Hillsbrad Foothills,56.6,53.8
    .train 17264 >>驯服一只老苔藓爬行动物，用它攻击暴徒以学习咬等级4
	.unitscan Elder Moss Creeper
step
	.goto Hillsbrad Foothills,50.5,57.2
.target Loremaster Dibbs
>>对话: |cRXP_FRIENDLY_博学者迪布斯|r
    .turnin 538 >>交任务: |cRXP_FRIENDLY_南海镇|r
	.isOnQuest 538
step
    .xp <30,1
    .goto Hillsbrad Foothills,44.0,67.6
	>>杀死该地区的墨洛克人
    .complete 536,1 --Kill Torn Fin Tidehunter (x10)
    .complete 536,2 --Kill Torn Fin Oracle (x10)
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
>>对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
    .turnin 536 >>交任务: |cRXP_FRIENDLY_清理海岸|r
.target Lieutenant Farren Orinelle
    .accept 559 >>接任务: |cRXP_LOOT_法尔林的证据|r
step
    .xp <30,1
    .goto Hillsbrad Foothills,42.3,68.3
	>>杀死墨洛克人并掠夺他们的头
    .complete 559,1 --Collect Murloc Head (x10)
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
>>对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
    .turnin 559 >>交任务: |cRXP_FRIENDLY_法尔林的证据|r
.target Lieutenant Farren Orinelle
    .accept 560 >>接任务: |cRXP_LOOT_法尔林的证据|r
step
    .xp <30,1
    .goto Hillsbrad Foothills,49.5,58.8
>>对话: |cRXP_FRIENDLY_治安官雷德帕斯|r
    .turnin 560 >>交任务: |cRXP_FRIENDLY_法尔林的证据|r
.target Marshal Redpath
    .accept 561 >>接任务: |cRXP_LOOT_法尔林的证据|r
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.4
>>对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
    .turnin 561 >>交任务: |cRXP_FRIENDLY_法尔林的证据|r
.target Lieutenant Farren Orinelle
    .accept 562 >>接任务: |cRXP_LOOT_升官之道|r
step
    .xp <30,1
    .goto Hillsbrad Foothills,57.1,67.4
	>>杀死该地区的纳加，如果你不幸产卵，你可能需要下水
    .complete 562,1 --Kill Daggerspine Shorehunter (x10)
    .complete 562,2 --Kill Daggerspine Siren (x10)
step
    .xp <30,1
    .goto Hillsbrad Foothills,51.4,58.5
>>对话: |cRXP_FRIENDLY_法尔林·奥里涅尔中尉|r
    .turnin 562 >>交任务: |cRXP_FRIENDLY_升官之道|r
.target Lieutenant Farren Orinelle
    .accept 563 >>接任务: |cRXP_LOOT_人事调动|r
step
    .goto Hillsbrad Foothills,50.9,58.8
.target Huraan
>>对话: |cRXP_FRIENDLY_忽尔兰|r
    .accept 9435 >>接任务: |cRXP_LOOT_遗失的水晶|r
step
    .goto Hillsbrad Foothills,49.3,52.3
    .fp Southshore >>获得南岸航线
step
    .goto Hillsbrad Foothills,55.6,35.1
    >>在被摧毁的塔内寻找木箱
    .complete 9435,1 --Collect Shipment of Rare Crystals (x1)
step
    .goto Alterac Mountains,58.4,67.9
	>>点击小桌子顶部的地图
    .accept 510 >>接任务: |cRXP_LOOT_预备行动计划|r
    .accept 511 >>接任务: |cRXP_WARN_密文信件|r
step
    .goto Western Plaguelands,42.9,85.0
    >>向北前往西部瘟疫地区
    .fp Chillwind >>获取奇风营地飞行路线
step
    #completewith next
    .goto Western Plaguelands,42.9,85.0
    .fly Southshore>>飞往南岸
step
    .goto Hillsbrad Foothills,50.5,57.1
>>对话: |cRXP_FRIENDLY_博学者迪布斯|r
    .turnin 511 >>交任务: |cRXP_FRIENDLY_密文信件|r
.target Loremaster Dibbs
    .accept 514 >>接任务: |cRXP_LOOT_铁炉堡的译码者|r
step
    .goto Hillsbrad Foothills,48.2,59.3
.target Magistrate Henry Maleb
>>对话: |cRXP_FRIENDLY_赫尼·马雷布镇长|r
    .turnin 510 >>交任务: |cRXP_FRIENDLY_预备行动计划|r
step
    .goto Hillsbrad Foothills,50.9,58.8
.target Huraan
>>对话: |cRXP_FRIENDLY_忽尔兰|r
    .turnin 9435 >>交任务: |cRXP_FRIENDLY_遗失的水晶|r
step
    #completewith next
    .hs >>前往: |cRXP_PICK_铁炉堡|r
step
    .goto Ironforge,63.79,67.78
.target Sara Balloo
>>对话: |cRXP_FRIENDLY_萨拉·巴鲁|r
    .turnin 637 >>交任务: |cRXP_FRIENDLY_苏利·巴鲁的信|r
step
    .goto Ironforge,74.64,11.74
.target Prospector Stormpike
>>对话: |cRXP_FRIENDLY_勘察员塔伯斯·雷矛|r
    .turnin 514 >>交任务: |cRXP_FRIENDLY_铁炉堡的译码者|r
step
    .goto Ironforge,63.79,67.78
.target Sara Balloo
>>对话: |cRXP_FRIENDLY_萨拉·巴鲁|r
    .accept 683 >>接任务: |cRXP_LOOT_萨拉·巴鲁的请求|r
step
    .goto Ironforge,39.10,56.19
>>对话: |cRXP_FRIENDLY_麦格尼·铜须国王|r
    .turnin 683 >>交任务: |cRXP_FRIENDLY_萨拉·巴鲁的请求|r
.target King Magni Bronzebeard
    .accept 686 >>接任务: |cRXP_LOOT_国王的礼物|r
step
    .goto Ironforge,38.75,87.04
.target Grand Mason Marblesten
>>对话: |cRXP_FRIENDLY_大石匠玛布勒斯坦|r
    .turnin 686 >>交任务: |cRXP_FRIENDLY_国王的礼物|r
step
	.goto Ironforge,69.875,82.895 << Hunter
	.goto Ironforge,66.4,88.7 << Warrior
	.goto Ironforge,24.7,8.8 << Priest
	.goto Ironforge,24.6,9.2 << Paladin
	.goto Ironforge,50.350,5.656 << Warlock
	.goto Ironforge,51.6,15.2 << Rogue
	.goto Ironforge,55.4,29.1 << Shaman
    .goto Ironforge,28.6,7.2 << Mage
	.trainer >>训练你的法术
step
    .goto Ironforge,55.501,47.742
    .fly Wetlands>>飞到湿地
step
    .goto Wetlands,10.8,59.6
.target First Mate Fitzsimmons
>>对话: |cRXP_FRIENDLY_大副菲兹莫斯|r
    .turnin 289 >>交任务: |cRXP_FRIENDLY_被诅咒的船员|r
]])
