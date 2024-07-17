local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 1-6 幽影谷
#displayname 1-7 Shadowglen << sod
#version 1
#group RestedXP 联盟 1-20
#defaultfor NightElf
#next 6-11 泰达希尔
step << !NightElf
    #sticky
    #completewith next
    +你选择了一个暗夜精灵的向导。你应该选择与你开始时相同的起始区域
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .accept 456 >>接任务: |cRXP_WARN_自然的平衡|r
step
    #sticky
    #label balance1
    #completewith GoodProtector
    >>杀死|cRXP_ENEMY_Young夜刀|r和|cRXX_ENEMY_杨氏蓟船|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    >>抢劫你杀死的暴徒，确保你至少有10铜价值的小贩垃圾，你需要它来训练|T132333:0|t[战斗呐喊]<< Warrior
    .xp 2 >>升级到2级
step << !Warrior sod
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪兰妮亚·月光|r, |cRXP_FRIENDLY_麦利萨尔·鹿盔|r
    #label GoodProtector
    .accept 4495 >>接任务: |cRXP_LOOT_好朋友|r
    .goto Teldrassil,60.899,41.961
    .accept 458 >>接任务: |cRXP_WARN_森林守护者|r
	.goto Teldrassil,59.924,42.474
    .target Dirania Silvershine
    .target Melithar Staghelm
step << Warrior
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦利萨尔·鹿盔|r
    #label GoodProtector
    .accept 458 >>接任务: |cRXP_WARN_森林守护者|r
	.goto Teldrassil,59.924,42.474
    .target Melithar Staghelm
step << Warrior
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奇娜|r
	.vendor >>|cRXP_WARN_供应商垃圾|r
    .target Keina
step << Warrior
    #season 2
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莉希亚|r
    .accept 77575 >>Accept Amidst the Shadowed Webs << NightElf Warrior
    .trainer >>火车|T132333:0|t[战斗呐喊]
    .target Alyissia
step << Warrior
    #season 2
    .goto Teldrassil,60.8,42.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪兰妮亚·月光|r
    .accept 4495 >>接任务: |cRXP_LOOT_好朋友|r
    .target Dirania Silvershine
step
    >>杀死|cRXP_ENEMY_Young夜刀|r和|cRXX_ENEMY_杨氏蓟船|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar


----Start of SoD Warrior Shadowglen Routing for fast Victory Rush----

step << Warrior
    #season 2
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    >>|cRXP_WARN_将手套作为奖励，以便能够尽快在手套上雕刻|r|T132342:0|t[|cRXP_FRIENDLY_Victory Rush|r]|cRXP-WARN_|r
    .turnin 456,1 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
    .accept 457 >>接任务: |cRXP_WARN_自然的平衡|r
    .accept 3116 >>接任务: |cRXP_LOOT_简易符记|r
    .target Conservator Ilthalaine
step << Warrior
    #season 2
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >>交任务: |cRXP_FRIENDLY_森林守护者|r
    .target Tarindrella
    .accept 459 >>接任务: |cRXP_WARN_森林守护者|r
step << Warrior
    #season 2
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    .accept 916 >>接任务: |cRXP_LOOT_树林蜘蛛的毒囊|r
step << Warrior
    #season 2
    #sticky
    #completewith EarlyFriendSoD
    >>在去艾薇伦的路上杀死蓟船|cRXP_WARN_您现在不必完成此目标|r
    .complete 457,2 --Kill Thistle Boar (x7)
step << Warrior
    #season 2
    #sticky
    #completewith EarlySpidersSoD
    #label RoVR
    >>杀死|cRXP_ENEMY_Webwood蜘蛛|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]掠夺它们
    .collect 204806,1 -- Rune of Victory Rush (1)
    .mob Webwood Spider
    .train 402927,1
step << Warrior
    #season 2
    #requires RoVR
    #label RoVRUse
    #completewith EarlySpidersSoD
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
    .train 402927,1
step << Warrior
    #optional
    #completewith EarlySpidersSoD
    #season 2
    #requires RoVRUse
    .engrave 10 >>打开字符表，在手套上刻上|T132342:0|t[|cRXP_FRIENDLY_Victory Rush|r]
step << Warrior
    #season 2
    #label EarlyFriendSoD
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃沃隆|r
    .turnin 4495 >>交任务: |cRXP_FRIENDLY_好朋友|r
    .target Iverron
    .accept 3519 >>接任务: |cRXP_LOOT_需要帮助的朋友|r
step << Warrior
    #season 2
    #label EarlySpidersSoD
    >>杀死|cRXP_ENEMY_Webwood蜘蛛|r。掠夺它们的|cRXX_Loot_毒液袋|r
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step << Warrior
    #season 2
    #label RoVRLate
    >>杀死|cRXP_ENEMY_Webwood蜘蛛|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]掠夺它们
    .collect 204806,1 -- Rune of Victory Rush (1)
    .mob Webwood Spider
    .train 402927,1
step << Warrior
    #season 2
    #requires RoVRLate
    #label RoVRUseLate
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r]
    .use 204806
    .itemcount 204806,1
    .train 402927,1
step << Warrior
    #optional
    #season 2
    #requires RoVRUseLate
    .engrave 10 >>打开字符表，在手套上刻上|T132342:0|t[|cRXP_FRIENDLY_Victory Rush|r]


----End of SoD Warrior Shadowglen Routing for fast Victory Rush---


step << Hunter
#xprate >1.99
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .turnin 456,1 >>交任务: |cRXP_FRIENDLY_自然的平衡|r << Hunter
    .target Conservator Ilthalaine
    .accept 457 >>接任务: |cRXP_WARN_自然的平衡|r
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.8,34.1
    >>杀死|cRXP_ENEMY_Mangy Nightsabers|r和|cRXX_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step << Hunter
    #season 0,1
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >>升级直到距离4级610xp(790/1400)
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃沃隆|r
    .turnin 4495 >>交任务: |cRXP_FRIENDLY_好朋友|r
    .target Iverron
    .accept 3519 >>接任务: |cRXP_LOOT_需要帮助的朋友|r
step << Hunter
    #season 2
    .goto Teldrassil,59.8,34.1
    .xp 3-400 >>升级到距离3级（500/900）400xp
step << Hunter
    #completewith next
    .hs >>赫斯到阴影谷
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >>交任务: |cRXP_FRIENDLY_森林守护者|r
    .target Tarindrella
    .accept 459 >>接任务: |cRXP_WARN_森林守护者|r
step << Hunter
#xprate >1.99
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .turnin 457 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
    .target Conservator Ilthalaine
	.accept 3117 >>接任务: |cRXP_LOOT_风化符记|r
step << Druid
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德林拉尔|r
    .vendor >>|cRXP_WARN_供应商垃圾|r
    >>|cRXP_BUY_BUY 15|r|T132794:0|t[清泉水]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Dellylah
step
#xprate <1.99 << Hunter/Warrior
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .turnin 456,1 >>交任务: |cRXP_FRIENDLY_自然的平衡|r << Hunter
    .turnin 456 >>交任务: |cRXP_FRIENDLY_自然的平衡|r << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >>接任务: |cRXP_WARN_自然的平衡|r << !sod Druid
	.accept 3116 >>接任务: |cRXP_LOOT_简易符记|r << Warrior
	.accept 3117 >>接任务: |cRXP_LOOT_风化符记|r << Hunter
--	.accept 3118 >>接任务: |cRXP_WARN_密文符记|r << Rogue
	.accept 3119 >>接任务: |cRXP_LOOT_神圣符记|r << Priest
	.accept 3120 >>接任务: |cRXP_LOOT_绿色符记|r << Druid
step << Druid
    #season 2
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >>交任务: |cRXP_FRIENDLY_森林守护者|r
    .target Tarindrella
    .accept 459 >>接任务: |cRXP_WARN_森林守护者|r
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.6,41.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_简娜·明月|r, 他在楼上
    .vendor >>|cRXP_BUY_供应商垃圾箱|r
    .collect 2119,1 >>买一双|T132952:0|t|cRXP_LOOT_薄布手套|r以后你需要它们来雕刻符文
    .target
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊达|r, 他在楼上
    .turnin 3119 >>交任务: |cRXP_FRIENDLY_神圣符记|r
    .accept 77574 >>Accept Meditation on Elune
    .target Shanda
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.6,40.8
    >>|cRXP_WARN_往下跳|r and talk to|Tinterface/worldmap/chatbubble_64grey.blp:20|t |cRXP_FRIENDLY_Shanda|r
    .vendor >>|cRXP_BUY_购买10个|r|T132794:0|t|cRXP_LOOT_清凉泉水|r
step << NightElf Priest
    #season 2
    #completewith PenanceRune
    .goto Teldrassil,59.8,34.1
    >>杀死|cRXP_ENEMY_Mangy Nightsabers|r和|cRXX_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step << NightElf Priest
    #season 2
    #completewith next
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052,10 >>前往Shadowglen的月井
step << NightElf Priest
    #season 2
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052
    .aura 419307 >>|cRXP_WARN_一旦你到了月球井，在你的聊天框里打字/跪下，等几秒钟|r
    >>|cRXP_WARN_您将收到|r|T136057:0|t[精灵冥想]|cRXP_WARN_buff|r
step << NightElf Priest
    #season 2
    #label PenanceRune
    .isOnQuest 77574
    .use 205951 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r]|cRXP_WARN_while you have |r|T136057:0|t[Meditation on Elune]|cRXP-WARN_buff|r
    .complete 77574,1 -- Learn: Engrave Gloves - Penance
    .target Altar of the Light
step << Rogue
    #season 2
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .turnin 456 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
    .accept 457 >>接任务: |cRXP_WARN_自然的平衡|r
	.accept 3118 >>接任务: |cRXP_WARN_密文符记|r
    .target Conservator Ilthalaine
step << Rogue
    #season 2
    .goto Teldrassil,59.638,38.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗拉胡恩·影语者|r
    .turnin 3118 >>交任务: |cRXP_FRIENDLY_密文符记|r
    .accept 77573 >>Accept Second-Story Work << NightElf Rogue
    .target Frahun Shadewhisper
step << Rogue
    #season 2
    .goto Teldrassil,57.922,40.687,25,0
    .goto Teldrassil,58.709,38.782,10,0
    .goto Teldrassil,59.15,40.66,20,0
    .goto Teldrassil,59.674,42.613
    >>|cRXP_WARN_爬上Aldrassil树上的斜坡，跳上屋顶|r
    >>|cRXP_WARN_|cRXP_PICK_Idol|r位于屋顶顶部|r
    >>打开|cRXP_PICK_Idol |r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstrike|r]掠夺它
    >>|cRXP_WARN_如果你在跳上屋顶时遇到困难，试着在跑下坡道时跳过栏杆|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowstrike|r]
    .use 204795
    .itemcount 204795,1
step << Rogue
    #season 2
    .isQuestComplete 77573
    .goto Teldrassil,59.638,38.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗拉胡恩·影语者|r
    .turnin 77573 >>Turn in Second-Story Work << NightElf Rogue
    .train 1784 >>列车|T132320:0|t[隐形]
    .target Frahun Shadewhisper
step << Hunter
    #sticky
    #season 2
    .equip 10 >>确保你的手套槽里有一件物品，以后你需要它来雕刻符文
    .use 5394
step << Warrior
    #season 0
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奇娜|r
	.vendor >>|cRXP_WARN_供应商垃圾|r
    .target Keina
step << Warrior
    #season 0
	.goto Teldrassil,59.637,38.442
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莉希亚|r
	.turnin 3116 >>交任务: |cRXP_FRIENDLY_简易符记|r
    .trainer >>训练你的职业技能
step << !Hunter
    #season 0 << Druid
    .goto Teldrassil,59.8,34.1
    >>杀死|cRXP_ENEMY_Mangy Nightsabers|r和|cRXX_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step << Druid
    #season 2
    .goto Teldrassil,54.9,37.9
    >>杀死足够的|cRXP_ENEMY_Grellkin|r，以确保你在一段时间后回到训练器后达到4级
    >>注意可能从他们身上掉落的|T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]。你很快就会需要它来解锁符文
    .xp 3+400 >>升级到400+/1400xp
    .mob Grellkin
step << !Hunter
    #season 0 << Warrior
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃沃隆|r
    .turnin 4495 >>交任务: |cRXP_FRIENDLY_好朋友|r
    .target Iverron
    .accept 3519 >>接任务: |cRXP_LOOT_需要帮助的朋友|r
step << !Hunter !Warrior
    #season 2
    #completewith next
    .hs >>赫斯到阴影谷
step << !Hunter
    #season 0
    #completewith next
    .hs >>赫斯到阴影谷
step << Warrior
    #season 2
    #completewith next
	#softcore
    .deathskip >>在精神治疗师处死亡并重生
    .target Spirit Healer
step << Warrior
    #season 2
    #completewith next
	#hardcore
    .goto Teldrassil,57.9,45.1,20 >>跑回产卵点附近的|cRXP_FRIENDLY_Tarindrella|r
step << !Hunter
    #season 0 << Druid/Warrior
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德拉|r
    .turnin 458 >>交任务: |cRXP_FRIENDLY_森林守护者|r
    .target Tarindrella
    .accept 459 >>接任务: |cRXP_WARN_森林守护者|r
step << !Hunter
    #season 0 << Druid
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .turnin 457 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪兰妮亚·月光|r
    .turnin 3519 >>交任务: |cRXP_FRIENDLY_需要帮助的朋友|r
    .target Dirania Silvershine
    .accept 3521 >>接任务: |cRXP_WARN_埃沃隆的解药|r
step << Hunter
    #season 2
    .xp 3
step << Hunter
    #season 0
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奇娜|r
    >>|cRXP_WARN_离开供应商后，确保您有1个剩余的银，以便能够负担|r|T132204:0|t[|cRXP_FRIENDLY_SENSENT Sting|r]
	.vendor >>|cRXP_BUY_BUY 2叠|r|T132382:0|t[粗箭头]
    .target Keina
step << Hunter
    #season 2
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奇娜|r
    >>|cRXP_WARN_请确保您在离开供应商后有1个剩余的银，以便能够负担|r|T132204:0|t[|cRXP_FRIENDLY_SENSENT Sting|r]|cRXP_WARN_如果你以后训练不起，就不要买弓|r
	.vendor >>|cRXP_BUY_买一堆|r|T132382:0|t[粗箭头]
    .vendor >>|cRXP_BUY_BUY a|r|T135499:0|t[Hornwood递归弓]
    .target Keina
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_求出|r|T135499:0|t[Hornwood递归弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << !Hunter !Druid
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奇娜|r
	.vendor >>|cRXP_WARN_供应商垃圾|r
    .target Keina
 step << NightElf Warrior
    #season 2
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莉希亚|r
    .turnin 3116 >>交任务: |cRXP_FRIENDLY_简易符记|r
    .turnin 77575 >>Turn in Amidst the shadowed webs
    .train 772 >>列车|T132155:0|t[伦德]
    .train 100 >>列车|T132337:0|t[收费]
    .target Alyissia
step << Druid
    #season 0,1
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德林拉尔|r
    .vendor >>|cRXP_WARN_供应商垃圾|r
    >>|cRXP_BUY_BUY 20|r|T132794:0|t[清泉水]
    .collect 159,20 --Collect Refreshing Spring Water (x20)
    .target Dellylah
step << Druid
    #season 2
    #label DTrain4
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德林拉尔|r
    .vendor >>|cRXP_WARN_供应商垃圾|r
    >>|cRXP_BUY_BUY 10|r|T132794:0|t[清泉水]
    >>|cRXP_WARN_确保你还有1枚银牌，这样你就可以训练|r|T136096:0|t[月火]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Dellylah
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    .accept 916 >>接任务: |cRXP_LOOT_树林蜘蛛的毒囊|r << !Warrior sod
    .turnin 916 >>交任务: |cRXP_FRIENDLY_树林蜘蛛的毒囊|r << Warrior sod
    .accept 917 >>接任务: |cRXP_LOOT_树林蜘蛛的卵|r << Warrior sod
    .target Gilshalan Windwalker
step << Druid
    #season 2
    .xp 4
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>登上Aldrassil树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛丹特·硬木|r
	.turnin 3120 >>交任务: |cRXP_FRIENDLY_绿色符记|r
    .accept 77571 >>Accept Relics of the Kaldorei
    .trainer >>训练你的法术。确保您学习|T136096:0|t[Moonfire]
    .target Mardant Strongoak
    .xp <4,1
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>登上Aldrassil树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿亚娜·远途|r
    .turnin 3117 >>交任务: |cRXP_FRIENDLY_风化符记|r
    .train 1978 >>火车蛇刺
    .target Ayanna Everstride
step
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20
    >>将|cRXP_Loot_月瓣百合|r掠夺到地上
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step << Hunter
#optional
#season 2
#completewith next
    >>杀死|cRXP_ENEMY_Webwood蜘蛛|r。掠夺它们的|cRXD_Loot_Ichor|r和|cRXX_Loot_Venom Sachs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step << Hunter
    #season 2
    #label hunterRuneChimera
    .goto Teldrassil,56.68,26.12
    >>进入蜘蛛洞，沿着中间的小路走。
    >>杀死|cRXP_ENEMY_Githyiss the Vile |r。为|T134419:0|t[|cRXP-FRIENDLY_Rune of the Chimera|r]掠夺它
    .collect 206168,1,77568,1 -- Rune of the Chimera (1)
    .unitscan Githyiss the Vile
    .engrave 10--skips if it's already engraved
step << Druid
    #season 2
    #completewith Stormrage
    #label LunarIdol
    .isOnQuest 77571
    >>杀死|cRXP_ENEMY_Grell|r和|cRXX_ENEMY_格雷尔金|r。为|T134903:0|t[|cRXP_FRIENDLY_Lunar Idol |r]掠夺它们
    .collect 208414,1,77571,1 -- Lunar Idol (1)
    .mob Grell
    .mob Grellkin
step << Druid
    #season 2
    #completewith next
    #label EquipIdol
    #requires LunarIdol
    .isOnQuest 77571
    .equip 18,208414 >>|cRXP_WARN_equp the |r|T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r]
    .use 208414
step << Druid
    #season 2
    #completewith next
    #requires EquipIdol
    .isOnQuest 77571
    .use 208414 >>|cRXP_WARN_在敌人受到|r|T136096:0|t[月火]的折磨时杀死敌人6次，获得|r|T237556:0|t]的叠加值
    >>|cRXP_WARN_一旦你在6次击杀后获得|r|T136116:0|t[灵感]|cRXP_WARN_buff，使用你刚刚装备的|r|T134903:0|t[|cRXP-FRIENDLY_Lunar Idol |r]|cRX P_WARN_again|r
    .complete 77571,1 -- Learn: Engrave Chest - Fury of Stormrage
step << Druid/Warrior
    #season 2
    #label Stormrage
    .goto Teldrassil,55.0,43.7
    >>杀死|cRXP_ENEMY_Grell|r和|cRXX_ENEMY_格雷尔金|r。掠夺它们的|cRXD_Loot_MMushroom|r和| cRXP_Loot_Fel Moss|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step
    #season 0 << Warrior
    #label IchorVenomSac
    .goto Teldrassil,56.8,31.7
    >>杀死|cRXP_ENEMY_Webwood蜘蛛|r。掠夺它们的|cRXD_Loot_Ichor|r和|cRXX_Loot_Venom Sachs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step << Warrior
    #season 2
    #sticky
    #completewith EarlyEggSoD
    >>当你清理到洞穴后面时，杀死|cRXP_ENEMY_Webwood蜘蛛|r。掠夺他们的|cRXP_Loot_Ichor|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .mob Webwood Spider
step << Warrior
    #season 2
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >>进入影线洞
step << Warrior
    #season 2
    #label EarlyEggSoD
    .goto Teldrassil,57.0,26.4
    >>在洞穴后面的地上偷走一个|cRXP_Loot_Webwood Egg|r
    .complete 917,1 --Collect Webwood Egg (x1)
step << Warrior
    #season 2
    .goto Teldrassil,56.8,31.7
    >>杀死|cRXP_ENEMY_Webwood蜘蛛|r掠夺它们的|cRXX_Loot_Ichor|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .mob Webwood Spider
step << Hunter/Druid/Warrior
    #season 2
	#softcore
	#completewith next
    .deathskip >>在精神治疗师处死亡并重生
    .target Spirit Healer
step << Warrior
	#hardcore
	#completewith next
    #season 2
	+注销时跳过鸡蛋后面的壁架。移动角色，直到其看起来像是浮动的，然后注销，再重新登录。
	>>如果你摔倒了，就正常地跑出洞穴，去完成任务
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>单击此处以供参考
step << Hunter
    #optional
    #completewith next
    #season 2
    .train 410121 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[嵌合体符文]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-嵌合体射击]
    .use 206168
    .itemcount 206168,1
step << Hunter
    #optional
    #completewith next
    #season 2
    #requires hunterRuneChimera
    #label hunterEngrave
    .engrave 10 >>打开字符表，在手套上刻上|T133816:0|t[|cRXP_FRIENDLY_Chimera Shot|r]
step << Hunter
	#hardcore
    #season 2
	#completewith next
	+注销时跳过鸡蛋后面的壁架。移动角色，直到其看起来像是浮动的，然后注销，再重新登录。
	>>如果你摔倒了，就正常地跑出洞穴，去完成任务
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>单击此处以供参考
step << !Hunter
    #season 0 << Druid/Warrior
    #requires hunterRuneChimera << Hunter
    .goto Teldrassil,55.0,43.7
    >>杀死|cRXP_ENEMY_Grell|r和|cRXX_ENEMY_格雷尔金|r。掠夺它们的|cRXD_Loot_MMushroom|r和| cRXP_Loot_Fel Moss|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step << Hunter
    #season 2
    .goto 1438/1,962.200,10276.300
    >>杀死|cRXP_ENEMY_Grell|r和|cRXX_ENEMY_格雷尔金|r。掠夺它们的|cRXD_Loot_MMushroom|r和| cRXP_Loot_Fel Moss|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step << Warrior
    #season 2
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    >>提示：|cRXP_WARN_从本次任务中获得图尼奇作为奖励并装备它。您稍后将使用它在上面雕刻符文|r << sod Hunter/sod Rogue/sod Druid/sod Warrior
    >>提示：|cRXP_WARN_从这次任务中获得长袍作为奖励并装备它。您稍后将用它在上面雕刻符文|r << sod Priest
    .turnin 917 >>交任务: |cRXP_FRIENDLY_树林蜘蛛的卵|r
    .target Gilshalan Windwalker
step
    .goto Teldrassil,57.8,45.1
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔琳德拉|r
    >>提示：|cRXP_WARN_将紧身裤作为奖励并保留。稍后您将使用它们在上面雕刻符文|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >>交任务: |cRXP_FRIENDLY_森林守护者|r
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪兰妮亚·月光|r
    .turnin 3521 >>交任务: |cRXP_FRIENDLY_埃沃隆的解药|r
    .target Dirania Silvershine
    .accept 3522 >>接任务: |cRXP_WARN_埃沃隆的解药|r << !Warrior sod
step << !Priest !Warrior
    #season 0 << Hunter
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奇娜|r
	.vendor >>|cRXP_WARN_供应商垃圾|r << !Hunter
	.vendor >>|cRXP_BUY_购买3或4堆|r|T132382:0|t[粗箭头] << Hunter
    .target Keina
step << Hunter
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奇娜|r
	.vendor >>|cRXP_WARN_供应商垃圾|r << !Hunter
	.vendor >>|cRXP_BUY_购买3或4堆|r|T132382:0|t[粗箭头] << Hunter
    .vendor >>|cRXP_BUY_购买|r|T135499:0|t[Hornwood递归弓]|cRXP_Buy_如果您还没有购买|r << Hunter
    .target Keina
step << Hunter
    #completewith next
    +|cRXP_WARN_求出|r|T135499:0|t[Hornwood递归弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Warrior
    #season 0
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥莉希亚|r
	.trainer >>训练你的职业技能
    .target Alyissia
step << Priest
    #completewith next
    .goto Teldrassil,59.456,41.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_简娜·明月|r, 他在楼上
	.vendor >>|cRXP_WARN_供应商垃圾|r
    .target Janna Brightmoon
step << Priest
    #season 0,1,2
	.goto Teldrassil,59.174,40.442
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊达|r, 他在楼上
	.turnin 3119 >>交任务: |cRXP_FRIENDLY_神圣符记|r << !sod
    .turnin 77574 >>Turn in Meditation of Elune << sod
	.trainer >>训练你的职业技能
step
    #season 0 << Warrior
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    .turnin 916 >>交任务: |cRXP_FRIENDLY_树林蜘蛛的毒囊|r
    .target Gilshalan Windwalker
    .accept 917 >>接任务: |cRXP_LOOT_树林蜘蛛的卵|r
step << Hunter/Rogue
    #completewith next
    +|cRXP_WARN_装备|r|T135641:0|t[Thistlewood匕首]
    .use 5392
    .itemcount 5392,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.05
step << Druid
    #season 0,1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>登上Aldrassil树
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛丹特·硬木|r
	.turnin 3120 >>交任务: |cRXP_FRIENDLY_绿色符记|r
	.train 8921 >>列车|T136096:0|t[月火]
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>登上Aldrassil树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛丹特·硬木|r
	.turnin 3120 >>交任务: |cRXP_FRIENDLY_绿色符记|r
    .turnin -77571 >>Turn in Relics of the Kaldorei
    .train 5177 >>列车|T136006:0|t[|cRXP_FRIENDLY_Wrath|r]等级2
    .target Mardant Strongoak
step
    #season 0 << Warrior
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_埃沃隆|r
    >>提示：|cRXP_WARN_从他那里拿走裤子作为奖励。稍后您将使用它们在上面雕刻符文|r << Priest sod
    .turnin 3522 >>交任务: |cRXP_FRIENDLY_埃沃隆的解药|r
step
    #season 0 << Warrior
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >>进入影线洞
step
    .goto Teldrassil,57.0,26.4
    #season 0 << Warrior
    >>在洞穴后面的地上偷走一个|cRXP_Loot_Webwood Egg|r
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#softcore
	#completewith next
    #season 0 << Warrior
    .deathskip >>在精神治疗师处死亡并重生
    .target Spirit Healer
step
	#hardcore
	#completewith next
    #season 0 << Warrior
	+注销时跳过鸡蛋后面的壁架。移动角色，直到其看起来像是浮动的，然后注销，再重新登录。
	>>如果你摔倒了，就正常地跑出洞穴，去完成任务
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>单击此处以供参考
step
#xprate <1.99
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    .turnin 917 >>交任务: |cRXP_FRIENDLY_树林蜘蛛的卵|r
    .target Gilshalan Windwalker
    .accept 920 >>接任务: |cRXP_WARN_特纳隆的召唤|r
step
    #season 2 << !Warrior sod
    #season 1 << Warrior sod
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔沙兰·风行者|r
    >>提示：|cRXP_WARN_从本次任务中获得图尼奇作为奖励并装备它。您稍后将使用它在上面雕刻符文|r << sod Hunter/sod Rogue/sod Druid
    >>提示：|cRXP_WARN_从这次任务中获得长袍作为奖励并装备它。您稍后将用它在上面雕刻符文|r << sod Priest
    .turnin 917 >>交任务: |cRXP_FRIENDLY_树林蜘蛛的卵|r
    .target Gilshalan Windwalker
step
#xprate <1.99
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>登上Aldrassil树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特纳隆·雷拳|r
    .turnin 920 >>交任务: |cRXP_FRIENDLY_特纳隆的召唤|r
    .target Tenaron Stormgrip
    .accept 921 >>接任务: |cRXP_WARN_大地之冠|r
step
#xprate <1.99
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >>|cRXP_WARN_使用|r|T134776:0|t[Crystal Phial]|cRXP_WARN_at the Moonwell|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.8,34.1
    >>杀死|cRXP_ENEMY_Mangy Nightsabers|r和|cRXX_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step
#xprate <1.99
    #requires vial1
    #completewith next
    .deathskip >>在精神治疗师处死亡并重生
    .target Spirit Healer
step << Hunter
#xprate <1.99
    #requires vial1
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊尔萨莱恩|r
    .turnin 457,2 >>交任务: |cRXP_FRIENDLY_自然的平衡|r
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊达|r
    .accept 5622 >>接任务: |cRXP_WARN_月神的恩赐|r
step
#xprate <1.99
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>登上Aldrassil树
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特纳隆·雷拳|r
    .turnin 921 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .target Tenaron Stormgrip
    .accept 928 >>接任务: |cRXP_WARN_大地之冠|r
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伯萨努斯|r
    .accept 2159 >>接任务: |cRXP_LOOT_多兰纳尔的货物|r
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 6-11 泰达希尔
#displayname 7-13 Teldrassil << SoD
#version 1
#group RestedXP 联盟 1-20
#defaultfor NightElf
#next 14-16 Darkshore
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .accept 488 >>接任务: |cRXP_LOOT_赛恩的要求|r
step << Hunter
    #season 2
    #completewith FlankingStrike
    #sticky
    >>在请求杀死|cRXP_ENEMY_Strigid Owls|r或|cRXX_ENEMY_Strigid Screechers|r时，掠夺它们|T134025:0|t|cRXD_Loot_Teldrassil Bird Meat|r
    .collect 208608,1 -- Teldrassil Bird Meat 1/1
step << Warrior
    #season 2
    #completewith zenn
    >>杀死|cRXP_ENEMY_Nightsabers|r或|cRXD_ENEMY_ Nightsaber Stalkers |r。掠夺他们的|cRXP_Loot_被砍的虎头|r
    >>杀死|cRXP_ENEMY_Strigid Owls|r或|cRXX_ENEMY_Strigid Screechers|r。掠夺它们的|cRXD_Loot_被砍的猫头鹰头|r
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r或|cRXX_ENEMY_Webwood毒虫|r。掠夺他们的|cRXD_Loot_被砍蜘蛛头|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .collect 208610,1 -- Severed Owl Head (1)
    .collect 208612,1 -- Severed Spider Head (1)
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step
    #sticky
    #completewith zenn
    >>杀死|cRXP_ENEMY_Nightsabers|r。掠夺他们的|cRXX_Loot_Fangs|r
    >>杀死|cRXP_ENEMY_Strigid Owls|r。掠夺它们的|cRXX_Loot_Features|r
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r。掠夺他们的|cRXD_Loot_Silk|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    #sticky
	#completewith SoDSpiderLegs
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r和|cRXX_ENEMY_Webwood毒虫|r。掠夺它们的|cRXD_Loot_小蜘蛛腿|r
    >>|cRXP_WARN_你以后的任务需要这些|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞拉尔·刃叶|r
    >>|cRXP_WARN_在接受此任务之前，请确保您有1个空袋位|r
    .accept 997 >>接任务: |cRXP_LOOT_德纳兰的泥土|r
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .accept 475 >>接任务: |cRXP_WARN_烦恼之风|r
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劳尔娜·晨光|r
    .turnin 5622 >>交任务: |cRXP_FRIENDLY_月神的恩赐|r
    .target Laurna Morninglight
    .accept 5621 >>接任务: |cRXP_WARN_月光之衣|r
	.trainer >>训练你的职业技能
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥蒂亚|r, 他在楼上
    .vendor >>|cRXP_BUY_购买并装备一把|r|T135426:0|t[小飞刀]
    .target Aldia
step
#xprate <1.99 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r, 他在树上
    .accept 932 >>接任务: |cRXP_LOOT_扭曲的仇恨|r
    .accept 2438 >>接任务: |cRXP_WARN_翡翠摄梦符|r
step << Hunter/Warrior/Druid
#xprate >1.99
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r, 他在树上
    .accept 2438 >>接任务: |cRXP_WARN_翡翠摄梦符|r
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·羽弓|r
    >>|cRXP_BUY_购买并装备一把|r|T135499:0|t[Hornwood递归弓]
    >>|cRXP_BUY_购买|r|T132382:0|t[粗箭头]|cRXP_Buy_直到测验满为止|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·羽弓|r
    .vendor >>|cRXP_BUY_购买|r|T132382:0|t[粗箭头]|cRXP_Buy_直到测验满为止|r
    .target Jeena Featherbow
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·羽弓|r
    .vendor >>|cRXP_BUY_购买|r|T132382:0|t[粗箭头]|cRXP_Buy_直到你还剩2枚白银或3堆|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +|cRXP_WARN_求出|r|T135499:0|t[Hornwood递归弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备一台|r|T135321:0|t[Gladius]|cRXP_Buy_如果你能负担得起（5s 36c），如果不能跳过这一步|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_调用|r|T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·风刃|r
	.trainer >>训练你的职业技能
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹诺克·柔歌|r
	.trainer >>训练你的职业技能
    .target Jannok Breezesong
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备一个|r|T135641:0|t[Stiletto]|cRXP_Buy_如果你能负担得起（4s 1c），如果不能跳过这一步|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_调用|r|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备一个|r|T135145:0|t[手杖]|cRXP_Buy_如果你能负担得起（5s 4c），如果不能跳过这一步|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_挥动|r|T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板凯达米尔|r
    .turnin 2159,2 >>交任务: |cRXP_FRIENDLY_多兰纳尔的货物|r << Hunter
    .turnin 2159 >>交任务: |cRXP_FRIENDLY_多兰纳尔的货物|r << !Hunter
    .vendor >>|cRXP_BUY_BUY 10|T132815:0|t|cRXP_OOT_Ice Cold Milk|r或尽可能多 << Priest
    .home >>将您的炉石设置为Dolanar
step << Warrior
    #season 2
    .goto Teldrassil,54.8,66.0,25 >>前往标记的地点。检查是否有|cRXP_FRIENDLY_Wandering Swordsman|r。如果你找到他，你可以挑战他进行决斗，决斗将授予你符文|T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_他有多个产卵点，一次只能出现在其中一个产卵点。如果他不在，跳过这一步|r
    >>|cRXP_WARN_你很可能无法在这个级别上单挑他，如果周围没有人帮助你，跳过这一步，你可以在10级时完成腿筋+投掷后回来，检查他是否还在|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
	.train 3044 >>火车奥术射击 << era
    .train 5116 >>火车震荡射击 << sod
    .target Dazalar
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔|r
	.trainer >>训练你的职业技能
    .target Kal
step
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 928 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .target Corithras Moonrage
    .accept 929 >>接任务: |cRXP_WARN_大地之冠|r
step << Druid
    #ah
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛洛尼·刃叶|r
    >>|T136065:0|t[草药学]|cRXP_WARN_i需要很快收集5|r|T134187:0|t[Earthroot]|cRXP_WARN_进行一个重要的职业任务。你以后可以忘掉它|r
    >>|cRXP_WARN_如果您稍后想从拍卖行购买5|r|T134187:0|t[Earthroot]|cRXP_WARN_f，请跳过此步骤|r
    .train 2366 >>列车|T136065:0|t[草药学]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛洛尼·刃叶|r
    >>|T136065:0|t[草药学]|cRXP_WARN_i需要很快收集5|r|T134187:0|t[Earthroot]|cRXP_WARN_进行一个重要的职业任务。你以后可以忘掉它|r
    .train 2366 >>列车|T136065:0|t[草药学]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #optional
    #completewith end
    #label GatheringQ
    #season 0
    .skill herbalism,15 >>|cRXP_WARN_将你的|r|T136065:0|t[草药学]|cRXP_WARN_to15调平，以便能够很快为一个重要的职业任务收集5|r|T134187:0|t[Earthroot]|cRXP_WARN_form。你以后可以忘掉它|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    #season 0
    >>|cRXP_WARN_通过|T136065:0|t[草药学]收集5|T134187:0|t[Earthroot]，很少收集|cRXP_PICK_Battered Chests|r，用于未来的职业任务|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto Teldrassil,57.242,63.511
    >>目标|cRXP_FRIENDLY_大陆沙雅|r
    >>|cRXP_WARN_施法|r|T135929:0|t[较轻治疗（等级2）]|cRXP_WARN_and|r|T135987:0|t[力量词：坚韧]|cRX P_WARN_on|r|cRX _弗兰德利_大陆沙雅|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳兰|r
    >>|cRXP_WARN_不要接受芽苗菜任务|r << !sod/Warrior/Rogue
    .turnin 997 >>交任务: |cRXP_FRIENDLY_德纳兰的泥土|r
    .target Denalan
    .accept 918 >>接任务: |cRXP_WARN_林精的种子|r
    .accept 919 >>接任务: |cRXP_WARN_林精的新芽|r << !sod/Warrior/Rogue
step << Rogue
    #season 2
    #completewith next
    >>杀死|cRXP_ENEMY_Timberlings|r。掠夺它们以获得|T134327:0|t[|cRXP-Loot_Top-Right地图碎片]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step << Druid
    #season 2
    #completewith next
    >>杀死|cRXP_ENEMY_Timberlings|r。掠夺它们的|cRXX_Loot_Seeds|r
    >>在地面上掠夺|cRXP_Loot_林木萌芽|r
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 << !sod --Collect Timberling Sprout (x12)
    .mob Timberling
step << Druid
    #season 2
    #completewith next
    .goto Teldrassil,52.831,78.731,100 >>前往巨树枝
step << Druid
    #season 2
    .goto Teldrassil,52.831,78.731,20,0
    .goto Teldrassil,52.988,80.086,15,0
    .goto Teldrassil,52.831,78.731
    >>|cRXP_WARN_在巨大的树枝上，你会看到3|r|cRXP_ENEMY_Lunar Stones|r
    >>|cRXP_WARN_投掷|r|T136096:0|t[月火]|cRXP_WARN_在所有3个|r|cRXP-ENEMY_月石|r|cRXP_WARN_在树枝上，然后在随后产生的箭头位置掠夺箱子|r
    .collect 206989,1 -- Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r]|cRXP_WARN_列车|r|T236216:0|t[太阳火]
    .use 206989
    .itemcount 206989,1
step << Druid
    #completewith next
    #season 2
    #softcore
    .deathskip >>在多兰纳尔死去并重生
step << Druid
    #season 2
    #softcore
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰诺尔·鹰月|r
    .vendor >>|cRXP_BUY_供应商和维修（如有必要）|r
    .target Brannol Eaglemoon
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>杀死|cRXP_ENEMY_Timberlings|r。掠夺它们的|cRXX_Loot_Seeds|r
    >>在地面上掠夺|cRXP_Loot_林木萌芽|r << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 << !sod/Warrior/Rogue --Collect Timberling Sprout (x12)
    .mob Timberling
step << Rogue
    #season 2
    .goto Teldrassil,61.2,67.0
    >>杀死|cRXP_ENEMY_Timberlings|r。掠夺它们以获得|T134327:0|t[|cRXP-Loot_Top-Right地图碎片]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳兰|r
    .turnin 918 >>交任务: |cRXP_FRIENDLY_林精的种子|r
    .target Denalan
    .accept 922 >>接任务: |cRXP_WARN_雷利亚·绿树|r
    .turnin 919 >>交任务: |cRXP_FRIENDLY_林精的新芽|r << !sod/Warrior/Rogue
step
    #season 2 << Hunter/Druid/Priest
    #season 1 << Warrior/Rogue
	.abandon 919 >>放弃森林萌芽任务，这不值得做
step << Warrior
    #season 2
    .goto Teldrassil,62.6,71.8,25 >>前往标记的地点。检查是否有|cRXP_FRIENDLY_Wandering Swordsman|r。如果你找到他，你可以挑战他进行决斗，决斗将授予你符文|T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_他有多个产卵点，一次只能出现在其中一个产卵点。如果他不在，跳过这一步|r
    >>|cRXP_WARN_你很可能无法在这个级别上单挑他，如果周围没有人帮助你，跳过这一步，你可以在10级时完成腿筋+投掷后回来，检查他是否还在|r
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >>前往星光村
step
    .goto Teldrassil,68.02,59.66
    >>打开|cRXP_PICK_Tallonkai的Dresser|r。为|cRXP _Loot_Emerald Dreamcatcher|r抢劫它
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_盖洛拉斯·塔文斯伦|r, 他在楼上
    .turnin 475 >>交任务: |cRXP_FRIENDLY_烦恼之风|r
    .target Gaerolas Talvethren
    .accept 476 >>接任务: |cRXP_WARN_瘤背熊怪的堕落|r
step
    #xprate <1.99
    .goto Teldrassil,63.38,58.10
    >>|cRXP_WARN_使用|r|T134721:0|t[Jade Phial]|cRXP_WARN_at Starbreeze Village Moonwell|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step << Warrior
    #season 2
    #completewith TeldrassilEnd
    #sticky
    >>杀死|cRXP_ENEMY_Nightsabers|r或|cRXD_ENEMY_ Nightsaber Stalkers |r。掠夺他们的|cRXP_Loot_被砍的虎头|r
    >>杀死|cRXP_ENEMY_Strigid Owls|r或|cRXX_ENEMY_Strigid Screechers|r。掠夺它们的|cRXD_Loot_被砍的猫头鹰头|r
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r或|cRXX_ENEMY_Webwood毒虫|r。掠夺他们的|cRXD_Loot_被砍蜘蛛头|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .collect 208610,1 -- Severed Owl Head (1)
    .collect 208612,1 -- Severed Spider Head (1)
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step
    >>杀死|cRXP_ENEMY_Nightsabers|r。掠夺他们的|cRXX_Loot_Fangs|r
    >>杀死|cRXP_ENEMY_Strigid Owls|r。掠夺它们的|cRXX_Loot_Features|r
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r。掠夺他们的|cRXD_Loot_Silk|r
    >>|cRXP_WARN_保存任意|r|T132832:0|t[小鸡蛋]|cRXP_WARN_and|r|T134321:0|t[蜘蛛腿]|cRXP-WARN_to用于调平|T133971:0|t[烹饪]|cRXP_WARN_water|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 488 >>交任务: |cRXP_FRIENDLY_赛恩的要求|r
step
    #xprate < 1.5
    .goto Teldrassil,60.7,54.4
	.xp 7+3520 >>升级到7级+3520xp
step
    #xprate >1.49
    .xp 7+2350 >>升级到7级+2350xp
step
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞拉尔·刃叶|r
    .accept 489 >>接任务: |cRXP_WARN_寻求救赎！|r
    .target Syral Bladeleaf
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿斯瑞达斯·熊皮|r
    .turnin 476 >>交任务: |cRXP_FRIENDLY_瘤背熊怪的堕落|r
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劳尔娜·晨光|r
    .turnin 5621 >>交任务: |cRXP_FRIENDLY_月光之衣|r
	.trainer >>训练你的职业技能
step
    #season 1 << Priest/Rogue
    #season 2 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r, 他在树上
    .turnin 2438 >>交任务: |cRXP_FRIENDLY_翡翠摄梦符|r
    .target Tallonkai Swiftroot
    .accept 2459 >>接任务: |cRXP_WARN_噬梦者菲罗斯塔|r << !sod/Warrior
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·羽弓|r
    >>|cRXP_BUY_购买并装备一把|r|T135499:0|t[Hornwood递归弓]|cRXP_Buy_如果你能负担得起（2s 85c），如果不能跳过这一步|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·羽弓|r
	.vendor >>|cRXP_BUY_最多购买800 |r|T132382:0|t[粗箭头]
    .target Jeena Featherbow
step << Hunter
    #completewith next
    #season 0
    +|cRXP_WARN_求出|r|T135499:0|t[Hornwood递归弓]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Hunter
    #season 0
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
	.trainer >>训练你的职业技能
    .target Dazalar
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹诺克·柔歌|r
	.trainer >>训练你的职业技能
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备一台|r|T135321:0|t[Gladius]|cRXP_Buy_如果你能负担得起（5s 36c），如果不能跳过这一步|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_调用|r|T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
    step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·风刃|r
	.trainer >>训练你的职业技能
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备一个|r|T135641:0|t[Stiletto]|cRXP_Buy_如果你能负担得起（4s 1c），如果不能跳过这一步|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_调用|r|T135641:0|t[Stiletto]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_购买并装备一个|r|T135145:0|t[手杖]|cRXP_Buy_如果你能负担得起（5s 4c），如果不能跳过这一步|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_挥动|r|T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Druid
#xprate 1.49-1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .target Corithras Moonrage
step << Druid
#xprate <1.50
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .target Corithras Moonrage
    .accept 933 >>接任务: |cRXP_WARN_大地之冠|r
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔|r
	.trainer >>训练你的职业技能
    .target Kal
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Next to a small tree
    .goto 1438/1,822.200,9948.500,6 >>On the small hill
    .goto 1438/1,809.800,9926.400,6 >>在那棵大树旁边
    >>从地图上标记的位置掠夺这3个重罪犯。 
    >>|cRXP_WARN_如果其中任何一个不存在，并且您无法完成目标，请跳过此步骤|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
step
    #label SoDSpiderLegs
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 489 >>交任务: |cRXP_FRIENDLY_寻求救赎！|r
    .itemcount 3418,3
    .isOnQuest 489
    .target Zenn Foulhoof
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
	#completewith jewel
    >>将|cRXP_Loot_Fel Cones|r洗劫一空
    >>|cRXP_WARN_它们通常位于树干旁边|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #completewith next
    >>杀死|cRXP_ENEMY_Gnarlpine神秘人|r
    >>|cRXP_WARN_如果没有多少|cRXP_ENEMY_Gnarlpine神秘人|r，你可能必须杀死|cRXX_ENEMY_Gnarlpine战士|r才能让他们产卵|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
	.goto Teldrassil,69.37,53.41
	>>杀死|cRXP_ENEMY_Ferocitas the Dream Eater |r。掠夺他获得|T133288:0|t[|cRXX_Loot_Gnarlpine项链|r]
    .use 8049 >>|cRXP_WARN_使用|T133288:0|t[|cRXP_LOOT_Gnarlpine项链|r]掠夺|r|cRXP _LOOT_Tallonkai的珠宝|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>杀死|cRXP_ENEMY_Gnarlpine神秘人|r
    >>|cRXP_WARN_如果没有多少|cRXP_ENEMY_Gnarlpine神秘人|r，你可能必须杀死|cRXX_ENEMY_Gnarlpine战士|r才能让他们产卵|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #softcore
    #completewith next
    .deathskip >>在精神治疗师处死亡并重生
    .target Spirit Healer
    .isQuestTurnedIn 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #softcore
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰诺尔·鹰月|r
    .vendor >>|cRXP_BUY_供应商和维修（如有必要）|r
    .target Brannol Eaglemoon
    .isQuestTurnedIn 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>将|cRXP_Loot_Fel Cones|r洗劫一空
    >>|cRXP_WARN_它们通常位于树干旁边|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛恩·腐蹄|r
    .turnin 489 >>交任务: |cRXP_FRIENDLY_寻求救赎！|r
    .isOnQuest 489
step
    #season 1 << Warrior
    #season 2 << Hunter/Druid/Priest/Rogue
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>尝试完成|cRXP_OOT_Small Spider Legs|r任务
    >>|cRXP_WARN_如果Zenn附近没有蜘蛛，请跳过此步骤|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #season 0
    #sticky
	#completewith spiderLegs
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r和|cRXX_ENEMY_Webwood毒虫|r。掠夺它们的|cRXD_Loot_小蜘蛛腿|r
    >>|cRXP_WARN_你以后的任务需要这些|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #season 2
    .abandon 489 >>放弃寻求救赎。你以后再把它交上来是不值得的
step << !sod/Priest/Rogue
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>Travel to Fel Rock
step << Rogue
    #season 2
    #completewith MutiRune
    >>杀死|cRXP_ENEMY_Vicious Grell|r、|cRXD_ENEMY_Rascal精灵|r和|cRXP_ENEMY_Shadow精灵|r。为|T134327:0|t[|cRXP_Loot_Bottom-Left地图碎片]|r掠夺它们
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    >>杀死|cRXP_ENEMY_Lord Melenas|r。掠夺他以获得|T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilization |r]
    .collect 203990,1
    .unitscan Lord Melenas
    .train 400094,1
step << Priest
    #season 2
    #completewith next
    >>杀死|cRXP_ENEMY_Vicious Grells|r、|cRXD_ENEMY_Rascal精灵|r和|cRXP_ENEMY_Shadow精灵|r。为|T135975:0|t[|cRXT_FRIENDLY_Pophyof a Desecrated Citadel|r]掠夺它们
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << !sod/Priest/Rogue
    .goto Teldrassil,51.2,50.6
    >>杀死|cRXP_ENEMY_Lord Melenas|r。掠夺他的|cRXX_Loot_Head |r
    >>|cRXP_ENEMY_Lord Melenas|r可能位于整个Fel Rock的许多不同产卵位置
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << Priest
    #season 2
    .goto Teldrassil,77.86,61.66
    >>杀死|cRXP_ENEMY_Vicious Grells|r、|cRXD_ENEMY_Rascal精灵|r和|cRXP_ENEMY_Shadow精灵|r。为|T135975:0|t[|cRXT_FRIENDLY_Pophyof a Desecrated Citadel|r]掠夺它们
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    #season 2
    .train 402852 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_废弃城堡的名称|r]|cRXP_WARN_训练|r|T237570:0|t[Hhomuncli]
    >>|cRXP_WARN_你必须有2|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs，通过键入/跪在圣地，如月井、北郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房|r
    .use 205947
    .itemcount 205947,1
step << Rogue
    #season 2
    .goto Teldrassil,51.2,50.6
    >>杀死|cRXP_ENEMY_Lord Melenas|r。掠夺他以获得|T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilization |r]
    .collect 203990,1
    .unitscan Lord Melenas
    .train 400094,1
step << Rogue
    #season 2
    #label MutiRune
    .train 400094 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilization|r]|cRXP-WARN_to train|r|T132304:0|t[Mutilate]
    .use 203990
    .itemcount 203990,1
step << Rogue
    #season 2
    .goto Teldrassil,77.86,61.66
    >>杀死|cRXP_ENEMY_Vicious Grell|r、|cRXD_ENEMY_Rascal精灵|r和|cRXP_ENEMY_Shadow精灵|r。为|T134327:0|t[|cRXP_Loot_Bottom-Left地图碎片]|r掠夺它们
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << !sod/Priest/Rogue
    #softcore
    #completewith next
    .deathskip >>在精神治疗师处死亡并重生
    .target Spirit Healer
step << !Druid
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 929 >>交任务: |cRXP_FRIENDLY_大地之冠|r
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .accept 933 >>接任务: |cRXP_WARN_大地之冠|r
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >>前往Teldrassil西南部
step
	#xprate <1.5
	.goto Teldrassil,42.61,76.18
	>>单击|cRXP_PICK_Strange Fruited Plant|r
	.accept 930 >>接任务: |cRXP_WARN_发光的水果|r
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >>前往阿利特里恩水池
step
	#xprate <1.5
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_使用|r|T134765:0|t[Tourmaline Phial]|cRXP_WARN_at the Pools of Arlithreen moonwell|r
	.complete 933,1
step
	#xprate <1.5
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>杀死|cRXP_ENEMY_Webwood潜伏者|r和|cRXX_ENEMY_Webwood毒虫|r。掠夺它们的|cRXD_Loot_小蜘蛛腿|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#xprate <1.5
    #hardcore
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >>Travel to Dolanaar
step
	#xprate <1.5
    #softcore
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >>死在多兰纳尔墓地重生，一定要死在月井以东，否则你可能会在达纳苏斯
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 933 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .target Corithras Moonrage
    .accept 7383 >>接任务: |cRXP_WARN_大地之冠|r
step
	#xprate <1.5
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞恩|r
    .train 2550 >>火车烹饪
    .accept 4161 >>接任务: |cRXP_WARN_卡多雷的菜谱|r
    .turnin 4161 >>交任务: |cRXP_FRIENDLY_卡多雷的菜谱|r
    .target Zarrin
step << Warrior/Rogue
    #season 0
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜恩希|r
    .train 3273 >>列车|T135966:0|t[急救]
    .target Byancie
step
    #season 1 << Warrior
    #season 2 << Hunter/Druid/Priest/Rogue
    .goto Teldrassil,57.121,61.296
    .train 2550 >>火车烹饪
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞恩|r
    .accept 4161 >>接任务: |cRXP_WARN_卡多雷的菜谱|r
    .turnin 4161 >>交任务: |cRXP_FRIENDLY_卡多雷的菜谱|r
    >>|cRXP_WARN_如果你已经达到了10级，但你还没有蜘蛛腿，可以跳过这个任务。不管怎样，仍然要训练烹饪|r
step << Rogue
    #season 2
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拜恩希|r
    .train 3273 >>列车|T135966:0|t[急救]
    .target Byancie
step << !sod/Priest/Rogue
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r, 他在树上
    .turnin 2438 >>交任务: |cRXP_FRIENDLY_翡翠摄梦符|r << sod Priest/sod Rogue
    .turnin 932 >>交任务: |cRXP_FRIENDLY_扭曲的仇恨|r
    .turnin 2459 >>交任务: |cRXP_FRIENDLY_噬梦者菲罗斯塔|r << !sod
step << Warrior
    #season 2
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r, 他在树上
    .turnin 2459 >>交任务: |cRXP_FRIENDLY_噬梦者菲罗斯塔|r
    .accept 932 >>接任务: |cRXP_LOOT_扭曲的仇恨|r
step
#xprate >1.99
    .xp 10
   >>|cRXP_WARN_如果你还没有接近，就去做梅莱纳斯勋爵的任务|r
step << Druid
    #season 2
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔|r
	.trainer >>训练你的职业技能
    .accept 5925 >>接任务: |cRXP_WARN_响应召唤|r
    .target Kal
step << Priest
#xprate >1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劳尔娜·晨光|r
	.trainer >>训练你的职业技能
    .accept 5629 >>接任务: |cRXP_WARN_回家|r << sod
    .target Laurna Morninglight
step << Warrior
#xprate >1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·风刃|r
	.trainer >>训练你的职业技能
    .target Kyra Windblade
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹诺克·柔歌|r
	.trainer >>训练你的职业技能
    .train 5171 >>列车|T132306:0|t[切片和切块] << !sod
    .train 921 >>训练|T133644:0|t[拾取口袋]，这也是你10级盗贼任务所需要的
    .target Jannok Breezesong
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .accept 6063 >>接任务: |cRXP_WARN_驯服野兽|r
	.trainer >>训练你的职业技能
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6063 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Dazalar
    .accept 6101 >>接任务: |cRXP_WARN_驯服野兽|r
step << Hunter
#xprate >1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Nightsaber Stalker|r
    >>|cRXP_WARN_你必须右键点击你的宠物框架并解散你的宠物，然后才能驯服另一只|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6101 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Dazalar
    .accept 6102 >>接任务: |cRXP_WARN_驯服野兽|r
step << Hunter
#xprate >1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Strigid Screecher|r
    >>|cRXP_WARN_你必须右键点击你的宠物框架并解散你的宠物，然后才能驯服另一只|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6102 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Dazalar
    .accept 6103 >>接任务: |cRXP_WARN_训练野兽|r
    .train 1130 >>|cRXP_WARN_确保你已经训练了猎人的标记。你很快就会需要它来获得符文|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_月亮女祭司阿玛拉|r|cRXP_WARN_在多兰纳尔以西的道路上行驶|r
    .accept 1684 >>接任务: |cRXP_LOOT_艾兰娜瑞|r
    .accept 487 >>接任务: |cRXP_WARN_达纳苏斯之路|r
    .target Moon Priestess Amara
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹诺克·柔歌|r
    .accept 2241 >>接任务: |cRXP_LOOT_詹诺克的花|r
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_月亮女祭司阿玛拉|r|cRXP_WARN_在多兰纳尔以西的道路上行驶|r
    .accept 487 >>接任务: |cRXP_WARN_达纳苏斯之路|r
    .target Moon Priestess Amara
step << Rogue
    #season 2
    #completewith runeOfPrecision
    #optional
    #label topleft
    >>杀死或|T133644:0|t[拾取口袋]|cRXP_ENEMY_Gnarlpine Furbolgs|r。为|T134327:0|t[|cRXP-Loot_Top-Left地图碎片]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step
    #season 0
    .goto Teldrassil,46.6,53.0
    >>杀死|cRXP_ENEMY_Gnarlpine救护车|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Warrior
    #season 2
    .goto Teldrassil,46.6,53.0
    >>杀死|cRXP_ENEMY_Gnarlpine救护车|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_月亮女祭司阿玛拉|r|cRXP_WARN_在多兰纳尔以西的道路上行驶|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
    .target Moon Priestess Amara
step << Priest
    #season 2
    #completewith next
    .goto Teldrassil,44.18,58.19
    .subzone 262 >>进入Ban'ethil Barrow Den。如果没有团队，这可能会很困难。您也可以稍后执行此操作以获得|T237514:0|t[虚空瘟疫]符文
    .train 425216,1 << Priest
step << Priest
    #season 2
    .goto Teldrassil,44.401,60.655
    >>打开|cRXP_PICK_Gnarlpine缓存|r。将其掠夺一次|T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    >>|cRXP_WARN_注：|cRXP_PICK_Gnarlpine缓存|r在Ban'ethil Barrows中可以有多个产卵位置|r
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .train 425216 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_黑暗目的的记忆|r]|cRXP_WARN_训练|r|T237514:0|t[虚空瘟疫]
    >>|cRXP_WARN_你必须在一个神圣的区域打字/跪下，如月井、北郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房，才能获得|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buff|r
    .use 205940
step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>杀死或|T133644:0|t[拾取口袋]|cRXP_ENEMY_Gnarlpine探路者|r和|cRXX_ENEMY_Gnarlpine复仇者|r。掠夺他们获得|T134241:0|t[|cRXD_Loot_Gnarlpine Stash Key]|r
    .collect 208749,1 -- Gnarlpine Stash Key (1)
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Avenger
    .train 400081,1
step << Rogue
    #season 2
    #label runeOfPrecision
    .goto Teldrassil,37.836,82.588
    >>打开|cRXP_PICK_Gnarlpine Stash|r。为|T134419:0|t[|cRXP-FRIENDLY_Rune of Precision|r]进行织机
    .collect 204174 -- Rune of Precision (1)
    .itemcount 208749,1
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_精度调整|r]|cRXP_WARN_训练|r|T135610:0|t]
    .use 204174
    .itemcount 204174,1
step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>杀死或|T133644:0|t[拾取口袋]|cRXP_ENEMY_Gnarlpine Furbolgs|r。为|T134327:0|t[|cRXP-Loot_Top-Left地图碎片]|r掠夺它们
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step << Rogue
    #season 2
    #softcore
    #completewith next
    .deathskip >>在达纳苏斯的灵疗师处死去并重生
    .target Spirit Healer
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·羽弓|r
    >>|cRXP_BUY_购买并装备一把|r|T135489:0|t[叠层递归弓]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77 
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_equp the |r|T135489:0|t[叠层递归弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·羽弓|r
    >>|cRXP_BUY_购买并装备400|r|T132382:0|t[尖箭]
    .target Jeena Featherbow
step << Hunter
    #season 2
    .goto Teldrassil,46.6,46.3
    >>|cRXP_WARN_铸造|r|T132212:0|t[猎人标记]|cRXP_WARN_on the |r|cRXP-ENEMY_Rustling Bush|r
    >>杀死产生的|cRXP_ENEMY_Fallenrot Poacher|r。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Fallenroot Poacher
    .train 410113,1 --Master Marksman
step
	#xprate < 1.5
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >>前往神谕圣地
step
	#xprate < 1.5
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .accept 937 >>接任务: |cRXP_WARN_神谕林地|r
step
	#xprate < 1.5
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_使用|r|T134798:0|t[Amethyst Phial]|cRXP_WARN_at the Oracle Glade moonwell|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step << Rogue
	#xprate < 1.5
    #season 2
    #completewith xp10
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Bloodfeather Harpies|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Right Map Piece]|r
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step
	#xprate < 1.5
    #completewith xp10
	#label harpies
    >>杀死|cRXP_ENEMY_Bloodflowe Harpies|r。掠夺它们的|cRXP-Loot_Barret|r
    >>|cRXP_ENEMY_血羽矩阵|r|cRXP_WARN_cast|r|T136052:0|t[治疗波]|cRXD_WARN_and|r|T136048:0|t[Lightning Bolt]|cRXP_WARN_造成大量伤害。试着快速爆裂|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#xprate < 1.5
    .goto Teldrassil,34.61,28.79
    >>单击|cRXP_PICK_Strange Fronded Plant |r
    .accept 931 >>接任务: |cRXP_WARN_发光的树叶|r

step << Hunter
	#xprate <1.5
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密斯特|r
    >>|cRXP_WARN_这将开始一个护送任务|r
    .accept 938 >>接任务: |cRXP_LOOT_密斯特|r
    .target Mist
step << Hunter
	#xprate <1.5
    #sticky
    #label xp10
    .xp 10-2670 >>升级，直到距离10级2670 xp(3830/6500)
    >>|cRXP_WARN_一旦你到达这个xp断点，跳过harpy/护送任务，直接前往Darnassus。稍后你将有另一次机会完成这些任务|r
step << Hunter
	#xprate <1.5
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 938 >>交任务: |cRXP_FRIENDLY_密斯特|r
step << Hunter
	#xprate <1.5
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >>交任务: |cRXP_FRIENDLY_神谕林地|r
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >>接任务: |cRXP_LOOT_泰达希尔|r
step << !Hunter
	#xprate <1.5
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密斯特|r
    >>|cRXP_WARN_这将开始一个护送任务|r
    .accept 938 >>接任务: |cRXP_LOOT_密斯特|r
    .target Mist
step << !Hunter
	#xprate <1.5
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >>交任务: |cRXP_FRIENDLY_神谕林地|r
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >>接任务: |cRXP_LOOT_泰达希尔|r
    .turnin 938 >>交任务: |cRXP_FRIENDLY_密斯特|r
step << Druid
    #xprate <1.5
    #label xp10
    #season 2
    .xp 10
step << Druid
    #xprate <1.5
    #season 0,1
    #label xp10
    .xp 10-750
step << !Hunter !Druid
	#xprate <1.5
    #label xp10
    .xp 10-3110
step << Rogue
	#xprate <1.5
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    .goto Teldrassil,37.8,43.0
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Bloodfeather Harpies|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Right Map Piece]|r
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << Rogue
	#xprate < 1.5
    #season 2
    .cast 418600 >>|cRXP_WARN_使用|r|T134327:0|t[|cRXP_LOOT_Map Pieces]|r|cRXP_WARN_将它们组合成|r|T134269:0|t[|cRXP_LOOT_Teldrassil藏宝图|r]中的任何一个
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step
	#xprate 1.49-1.99
   .goto Teldrassil,38.6,58.0
   >>完成收集7条小蜘蛛腿
   .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
   #xprate 1.49-1.99
   #label xp10
   .xp 10-850
   .goto Teldrassil,38.3,34.4
   >>如果你在xp上还落后，那就向北执行harpy任务
step << !Druid
    #xprate 1.49-1.99
	#label xp10
	.xp 10-4415
step << !Rogue
    #softcore
    #requires xp10
    #completewith next
    .deathskip >>在达纳苏斯的灵疗师处死去并重生
    >>|cRXP_WARN_确保你离达纳苏斯墓地比离多尔纳尔墓地更近，否则你可能会走错路。一路跑出巢穴，如果你不确定就死|r << sod Priest
    >>|cRXP_WARN_确保你离达纳苏斯墓地比离多尔纳尔墓地更近，否则你可能会走错路。如果你不确定，就跑到河的西侧去|r << sod Hunter/sod Warrior/sod Druid
    .target Spirit Healer
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_枪法调整|r]|cRXP-WARN_训练|r|T132177:0|t[神枪手大师]
    .use 206155
    .train 410113,1
step << Hunter
    #season 2
    #optional
    #completewith next
    .engrave 5 >>打开字符表，在胸前刻上|T132177:0|t[神枪手大师]
step << !Rogue
    #hardcore
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>前往: |cRXP_PICK_达纳苏斯|r
step << Druid
    #optional
    #season 2
    .xp <10,1
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈德兰努尔|r
    .accept 6344 >>接任务: |cRXP_WARN_尼莎·影歌|r
 step << Warrior
    #season 2
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .train 227 >>火车杆 << Warrior
    .train 2567 >>火车抛锚 << Warrior
    .target Ilyenia Moonfire
step << Warrior
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_购买并装备一堆|r|T135425:0|t[敏锐的飞刀]
    .collect 3107,200
    .target Ariyell Skyshadow
step << Warrior
    #season 2
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>买一个|T134830:0|t[|cRXP_LOOT_小治疗药剂|r]。它将帮助你从多尔纳尔获得|T236317:0|t的符文[疯狂攻击]
    .collect 929,1 --Lesser Healing Potion (1)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .train 425412,1 --Skips if you already have Frenzied Assault
step << Warrior
#xprate >1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾兰娜瑞|r
    .turnin 1684 >>交任务: |cRXP_FRIENDLY_艾兰娜瑞|r
    .target Elanaria
    .accept 1683 >>接任务: |cRXP_LOOT_沃鲁斯·邪蹄|r
step << Warrior
    #season 2
    #requires xp10
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delwynna|r upstairs
    >>|cRXP_WARN_转入三个|cRXP_LOOT_Severed Heads|r以接收|r|T134455:0|t[|cRXP_FRIENDLY_Monster Hunter符文碎片|r]
    .collect 204689,1
    .collect 204690,1
    .collect 204688,1
    .use 204703
    .skipgossip
    .target Delwynna
    .itemcount 208612,1 --Severed Spider Head (1)
    .itemcount 208611,1 --Severed Tiger Head (1)
    .itemcount 208610,1 --Severed Owl Head
    .train 403475,1 --Rune not known
step << Warrior
    #season 2
    >>使用任意一个|T134455:0|t[|cRXP_FRIENDLY_Monster Hunter符文碎片|r]将它们组合成|T134419:0|t[| cRXP-FRIENDLY_Rune of Devastate|r]
    .train 403475 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]|cRXP_WARN_to train|r|T135291:0|t[Devastate]
    .use 204689
    .itemcount 204689,1
    .itemcount 204690,1
    .itemcount 204688,1
step << !Rogue !Hunter !Warrior
#xprate >1.99
    .goto Darnassus,67.427,15.655
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板塞琳尼|r
    .home >>把你的炉石放在达纳苏斯 << !Warrior
    .vendor >>|cRXP_BUY_购买更多|r|T132815:0|t|cRXP_LOOT_冰牛奶|r << Priest
    .target Innkeeper Saelienne
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 922 >>交任务: |cRXP_FRIENDLY_雷利亚·绿树|r
    .target Rellian Greenspyre
    .accept 923 >>接任务: |cRXP_LOOT_青苔之瘤|r
step << !Hunter !Rogue
	#xprate <1.5
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r, 他在树上
    .turnin 940 >>交任务: |cRXP_FRIENDLY_泰达希尔|r
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r, 他在中层
    .turnin 5925 >>交任务: |cRXP_FRIENDLY_响应召唤|r << sod
    .accept 5921 >>接任务: |cRXP_LOOT_月光林地|r
	.trainer >>训练你的职业技能
    .target Mathrengyl Bearwalker
step << Hunter
#xprate >1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
    .turnin 6103 >>交任务: |cRXP_FRIENDLY_训练野兽|r
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .accept 2518 >>接任务: |cRXP_WARN_月神的泪水|r
step << Warrior
    #season 2
    .hs >>Hearthstone to Dolnaar
    .vendor >>|cRXP_BUY_Vendor并从店主处购买5-10|T133968:0|t[|cRXP_LOOT_新鲜烤面包|r]
step << Warrior
    #season 2
    #sticky
    #completewith FrenziedAssault
    >>Turn in the quest from |cRXP_FRIENDLY_Moon Priestess Amara|r if you happen to see her as you're completing the other steps
    >>|cRXP_WARN_还不要特意去找她|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
    .target Moon Priestess Amara
step << Warrior
	#season 2
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_买一个|r|T135145:0|t[手杖]，装备它。
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Warrior
    #season 2
    #completewith melenas
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>Travel to Fel Rock
step << Warrior
    #season 2
    #label melenas
    .goto Teldrassil,51.2,50.6
    >>杀死|cRXP_ENEMY_Lord Melenas|r。掠夺他的|cRXX_Loot_Head |r
    >>|cRXP_ENEMY_Lord Melenas|r可能位于整个Fel Rock的许多不同产卵位置
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << Warrior
	#season 2
    #softcore
    .deathskip >>在精神治疗师处死亡并重生
    .target Spirit Healer
step << Warrior
    #season 2
    .goto Teldrassil,57.121,61.296
    .train 2550 >>火车烹饪
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞恩|r
    .accept 4161 >>接任务: |cRXP_WARN_卡多雷的菜谱|r
    .turnin 4161 >>交任务: |cRXP_FRIENDLY_卡多雷的菜谱|r
    >>|cRXP_WARN_如果你没有7条小蜘蛛腿，请跳过任务。不管怎样，训练烹饪，你以后会需要的|r
step << Warrior
    #season 2
    #label FrenziedAssault
    .goto Teldrassil,55.619,59.787
    >>对话: |cRXP_FRIENDLY_旅店老板凯达米尔|r
    >>Talk to |cRXP_ENEMY_Syllart|r upstairs, then beat him up. He will pass out at 0%
    >>如果|cRXP_ENEMY_Syllart|r不在，请等待他重生
    >>对话: |cRXP_FRIENDLY_旅店老板凯达米尔|r, Syllart, Rune of Frenzied Assault
    .train 425447 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault |r]|cRXP_WARN_训练|r|T236317:0|t[Frenzed Assault]
    >>|cRXP_WARN_注意：这可能是相当困难的独奏取决于你的水平。如果需要，寻求帮助|r
    >>|cRXP_WARN_你可以用扔风筝把他单独玩。试着用|r|T132316:0|t[Hamstring]|cRXP_WARN_then run和|r|r|T132324:0|t[Throw]|cRXP_WARN_at让他从射程内减速|r|cRXP_WARN_使用a|r|T134830:0|t[治疗药剂]|cRXP-WARN_and|r|T133685:0|t[绷带]|cRXP_WARN_to在必要时自我治疗|r
    --Might wanna add a guide video
    .use 204716
    .target Innkeeper Keldamyr
    .mob Syllart
step << Warrior
    #season 2
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔隆凯·捷根|r, 他在树上
    .turnin 932 >>交任务: |cRXP_FRIENDLY_扭曲的仇恨|r
step << Warrior
    #season 2
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_月亮女祭司阿玛拉|r|cRXP_WARN_在多兰纳尔以西的道路上行驶|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
    .target Moon Priestess Amara
    .target Laird 
step
#xprate <1.99
    #requires xp10 << Rogue
    .hs >>从赫斯到多拉纳尔
    .subzoneskip 186
step << Hunter
#xprate <1.99
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉娜·羽弓|r
	.vendor >>|cRXP_BUY_购买4堆|r|T132382:0|t[尖箭头]|cRXP_Buy_。达到10级后立即装备他们|r
    .target Jeena Featherbow
step
	#xprate 1.49-1.99
    .goto Teldrassil,57.121,61.296
    .train 2550 >>火车烹饪
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_扎瑞恩|r
    .accept 4161 >>接任务: |cRXP_WARN_卡多雷的菜谱|r
    .turnin 4161 >>交任务: |cRXP_FRIENDLY_卡多雷的菜谱|r
step
	#xprate 1.49-1.99
    .goto Teldrassil,51.9,56.4
    >>找到月亮女祭司阿玛拉，她在多拉纳尔以西的路上巡逻
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
	.maxlevel 9
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .accept 6063 >>接任务: |cRXP_WARN_驯服野兽|r
	.train 13165 >>训练你的10级法术
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6063 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Dazalar
    .accept 6101 >>接任务: |cRXP_WARN_驯服野兽|r
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科瑞萨斯·月怒|r
    .turnin 7383 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .target Corithras Moonrage
    .accept 935 >>接任务: |cRXP_WARN_大地之冠|r
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳兰|r
    .turnin 931 >>交任务: |cRXP_FRIENDLY_发光的树叶|r
    .turnin 930 >>交任务: |cRXP_FRIENDLY_发光的水果|r
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德纳兰|r
	.turnin 927 >>交任务: |cRXP_FRIENDLY_布满苔藓的心脏|r
    .isOnQuest 927
step
	#xprate <1.5
	.goto Teldrassil,60.78,68.59
	>>单击|cRXP_LOOT_Denalans播种机|r
	.turnin 941 >>交任务: |cRXP_FRIENDLY_培养心脏|r
	.isQuestTurnedIn 927
step << Hunter
	#xprate <1.5
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Nightsaber Stalker|r
    >>|cRXP_WARN_你必须右键点击你的宠物框架并解散你的宠物，然后才能驯服另一只|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step
#xprate <1.99
    #label L10
    .xp 10
step
	#xprate <1.5
    #softcore
	#sticky
    #completewith next
    .deathskip >>在精神治疗师处死亡并重生
    .target Spirit Healer
step << Priest
#xprate <1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_劳尔娜·晨光|r
	.trainer >>训练你的职业技能
    .target Laurna Morninglight
step << Warrior
#xprate <1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯拉·风刃|r
	.trainer >>训练你的职业技能
    .target Kyra Windblade
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹诺克·柔歌|r
	.trainer >>训练你的职业技能
    .train 5171 >>列车|T132306:0|t[切片和切块]
    .train 921 >>训练|T133644:0|t[拾取口袋]，这也是你10级盗贼任务所需要的
    .target Jannok Breezesong
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .accept 6063 >>接任务: |cRXP_WARN_驯服野兽|r
	.trainer >>训练你的职业技能
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Webwood Lurker|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6063 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Dazalar
    .accept 6101 >>接任务: |cRXP_WARN_驯服野兽|r
step << Hunter
#xprate <1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Nightsaber Stalker|r
    >>|cRXP_WARN_你必须右键点击你的宠物框架并解散你的宠物，然后才能驯服另一只|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6101 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Dazalar
    .accept 6102 >>接任务: |cRXP_WARN_驯服野兽|r
step << Hunter
#xprate <1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_使用|r|T132164:0|t[驯服棒]|cRXP_WARN_on a|r|cRXP-ENEMY_Strigid Screecher|r
    >>|cRXP_WARN_你必须右键点击你的宠物框架并解散你的宠物，然后才能驯服另一只|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_达扎拉|r
    .turnin 6102 >>交任务: |cRXP_FRIENDLY_驯服野兽|r
    .target Dazalar
    .accept 6103 >>接任务: |cRXP_WARN_训练野兽|r
step << Warrior
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_月亮女祭司阿玛拉|r|cRXP_WARN_在多兰纳尔以西的道路上行驶|r
    .accept 1684 >>接任务: |cRXP_LOOT_艾兰娜瑞|r
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹诺克·柔歌|r
    .accept 2241 >>接任务: |cRXP_LOOT_詹诺克的花|r
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙洛蒙|r
    >>|cRXP_BUY_BUY a|r|T135145:0|t[手杖]
    >>|cRXP_WARN_你稍后会装备这个。如果您碰巧找到其他员工，请跳过此步骤|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << !Druid
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿玛拉·夜行者|r
    >>|cRXP_FRIENDLY_月亮女祭司阿玛拉|r|cRXP_WARN_在多兰纳尔以西的道路上行驶|r
    .turnin 487 >>交任务: |cRXP_FRIENDLY_达纳苏斯之路|r
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    #softcore
    #completewith next
    .goto Teldrassil,44.0,54.6
    .deathskip >>一旦你通过了起毛区，就故意死亡并在达纳苏斯墓地重生
    .target Spirit Healer
step << Rogue
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>前往: |cRXP_PICK_达纳苏斯|r
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 922 >>交任务: |cRXP_FRIENDLY_雷利亚·绿树|r
    .target Rellian Greenspyre
    .accept 923 >>接任务: |cRXP_LOOT_青苔之瘤|r
step << Rogue
    #season 0
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r, 他在树上
    .turnin -935 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .turnin -940 >>交任务: |cRXP_FRIENDLY_泰达希尔|r
    .target Arch Druid Fandral Staghelm
    .accept 952 >>接任务: |cRXP_WARN_古树之林|r
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
    .turnin 2241 >>交任务: |cRXP_FRIENDLY_詹诺克的花|r
    .target Syurna
    .accept 2242 >>接任务: |cRXP_LOOT_命运的召唤|r
step << Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .accept 2518 >>接任务: |cRXP_WARN_月神的泪水|r
step << Warrior
#xprate >1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >>前往|cRXP_ENEMY_Vorlus Vilehof|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,47.2,63.7
    >>杀死|cRXP_ENEMY_Vorlus Vilehof|r。掠夺他的|cRXX_Loot_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Hunter
    #season 2
    .goto Darnassus,64.2,63.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t寻找|cRXP_FRIENDLY_Jaeana|r，她在商人台周围巡逻
    >>|cRXP_BUY_从她那里买一堆|r|T133972:0|t[Tough Jerky]|cRXP_BUY_。 
    >>|cRXP_WARN_你需要它来喂养你的猫头鹰，它们只吃肉，而黑暗海岸没有肉贩子|r
    .collect 117,15
    .target Jaeana
step << !Warrior
    #season 2
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈德兰努尔|r
    .accept 6344 >>接任务: |cRXP_WARN_尼莎·影歌|r
step << Hunter
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_购买并装备一把|r|T135489:0|t[叠层递归弓]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77 
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_equp the |r|T135489:0|t[叠层递归弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>|cRXP_WARN_Cast|r|T132164:0|t[驯服野兽]| cRXP_WARN_on a|cRXP_ENEMY_Strigid Hunter|r驯服它|r--.Tame 1997
    .train 2981 >>|cRXP_WARN_用它攻击暴徒以学习|r|T132140:0|t[爪（等级2）]
    .link https://www.wow-petopia.com/classic/training.php >>|cRXP_WARN_点击此处了解有关宠物训练的更多信息|r
	.unitscan Strigid Hunter
step
    #season 0 << Rogue/Druid
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>杀死|cRXP_ENEMY_Timberling Tramplers|r，|cRXD_ENEMY_ Timberling Mire Beasts|r和|cRXP_ENEMY_Elder Timberlings|r掠夺它们的|cRXP_OOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Hunter
    #season2
    .train 425762,1
    .goto Teldrassil,48.3,31.4
    >>使用尸体附近的|T134025:0|t[Teldrassil Bird Meat]召唤|cRXP_ENEMY_Mowgh|r
    >>杀死|cRXP_ENEMY_Mowgh|r并掠夺他|T134419:0|t|cRXP-loot_[侧翼符文]|r
    .collect 205979,1
    .use 208608
    .mob Mowgh
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_侧击路线|r]|cRXP-WARN_训练|r|T132175:0|t[侧击]
    .use 205979
    .itemcount 205979,1
step << Hunter
    #season 2
    #optional
    #completewith next
    .engrave 7 >>打开你的字符表，在你的腿上刻上|T132175:0|t[侧击]
step
    #season 0 << Rogue/Druid
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>杀死|cRXP_ENEMY_Lady Sathrah|r。掠夺它的|cRXD_Loot_Spinnerets|r
    >>|cRXP_ENEMY_萨特拉夫人|r|cRXP_WARN_can在3个不同的地点产卵|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .accept 937 >>接任务: |cRXP_WARN_神谕林地|r
step << Rogue
    #season 2
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>杀死|cRXP_ENEMY_Lady Sathrah|r。掠夺它的|cRXD_Loot_Spinnerets|r
    >>|cRXP_ENEMY_萨特拉夫人|r|cRXP_WARN_can在3个不同的地点产卵|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>|cRXP_WARN_在|cRXP_ENEMY_Sethir the Ancient上铸造|r|T133644:0|t[拾取口袋]|r
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    >>|cRXP_ENEMY_Sethir the Ancient|r |cRXP_WARN_walks along the big tree branch|r
    >>|cRXP_WARN_避免战斗|cRXP_ENEMY_Sethir the Ancient |r。让他从你身边走过，然后|r|T132320:0|t[Stealth]|cRXP-WARN_and|r|T133644:0|t[Spick Pocket]|cRXP-WARN_when你在他身后|r
    .complete 2242,1
    .mob Sethir the Ancient
step << Rogue
    #season 2
    #sticky
    #completewith MistStart
    #label BottomRightMapPiece
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Bloodfeather Harpies|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Right Map Piece]|r
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819,0,0
    >>杀死|cRXP_ENEMY_Bloodflowe Harpies|r。掠夺它们的|cRXP-Loot_Barret|r
    >>|cRXP_ENEMY_血羽矩阵|r|cRXP_WARN_cast|r|T136052:0|t[治疗波]|cRXD_WARN_and|r|T136048:0|t[Lightning Bolt]|cRXP_WARN_造成大量伤害。试着快速爆裂|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << Rogue
    #season 2
    #sticky
    #completewith next
    #requires BottomRightMapPiece
    .cast 418600 >>|cRXP_WARN_使用|r|T134327:0|t[|cRXP_LOOT_Map Pieces]|r|cRXP_WARN_将它们组合成|r|T134269:0|t[|cRXP_LOOT_Teldrassil藏宝图|r]中的任何一个
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,31.54,31.62
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_密斯特|r
    >>|cRXP_WARN_这将开始一个护送任务|r
    >>|cRXP_WARN_如果NPC不在，请跳过此任务|r
    .accept 938 >>接任务: |cRXP_LOOT_密斯特|r
step << Rogue
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    >>Kill or |T133644:0|t[Pick Pocket] |cRXP_ENEMY_Bloodfeather Harpies|r. Loot them for the |T134327:0|t[|cRXP_LOOT_Bottom-Right Map Piece]|r
    >>|cRXP_WARN_您必须在|r|T132320:0|t[Stealth]|cRXP_WARN_to use |r|T133644:0|t[Pick-Pocket]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_使用|r|T134327:0|t[|cRXP_LOOT_Map Pieces]|r|cRXP_WARN_将它们组合成|r|T134269:0|t[|cRXP_LOOT_Teldrassil藏宝图|r]中的任何一个
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 938 >>交任务: |cRXP_FRIENDLY_密斯特|r
    .isOnQuest 938
step << !sod/Warrior/Rogue/Druid
    #requires harpies2
    #label TeldrassilEnd
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵阿瑞尼亚·碎云|r
    .turnin 937 >>交任务: |cRXP_FRIENDLY_神谕林地|r
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >>接任务: |cRXP_LOOT_泰达希尔|r
step << Druid
    #season 2
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>杀死|cRXP_ENEMY_Lady Sathrah|r。掠夺它的|cRXD_Loot_Spinnerets|r
    >>|cRXP_ENEMY_萨特拉夫人|r|cRXP_WARN_can在3个不同的地点产卵|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << Druid
    #season 2
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>杀死|cRXP_ENEMY_Timberling Tramplers|r，|cRXD_ENEMY_ Timberling Mire Beasts|r和|cRXP_ENEMY_Elder Timberlings|r掠夺它们的|cRXP_OOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Warrior
    #season 2
    .goto Teldrassil,39.8,37.4,25 >>前往标记的地点。检查是否有|cRXP_FRIENDLY_Wandering Swordsman|r。如果你找到他，你可以挑战他进行决斗，决斗将授予你符文|T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_他有多个产卵点，一次只能出现在其中一个产卵点。如果他不在，跳过这一步|r
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #softcore
	#completewith darn << era
    #completewith darnSoD << sod
    .deathskip >>在达纳苏斯墓地死亡并重生
    >>|cRXP_WARN_确保你在河的西侧，否则你可能会走错路|r << sod
    .target Spirit Healer
step
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step << Warrior
    #season 2
    .goto Teldrassil,39.8,69.6,25 >>前往标记的地点。如果你还没有找到他，请检查|cRXP_FRIENDLY_Wandering Swordsman|r是否在那里。如果你找到他，你可以挑战他进行决斗，决斗将授予你符文|T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_他有多个产卵点，一次只能出现在其中一个产卵点。如果他不在，跳过这一步|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    .goto Teldrassil,43.8,77.0,25 >>前往标记的地点。如果你还没有找到他，请检查|cRXP_FRIENDLY_Wandering Swordsman|r是否在那里。如果你找到他，你可以挑战他进行决斗，决斗将授予你符文|T132334:0|t[|cRXP_FRIENDLY_Blood Frenzy|r]
    >>|cRXP_WARN_他有多个产卵点，一次只能出现在其中一个产卵点。如果他不在，跳过这一步|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #softcore
    #completewith next
    #sesaon 2
    .goto Teldrassil,40.8,75.6
    .deathskip >>在达纳苏斯墓地死亡并重生
    >>|cRXP_WARN_确保你比Dolnaar墓地更靠近Darnassus墓地，否则你可能会走错路。如果你不确定，死在地图上标记的地方以东|r
    .target Spirit Healer
step
    #hardcore
    #completewith next
    #season 2
    .goto Darnassus,82.01,36.70
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈德兰努尔|r
    .accept 6344 >>接任务: |cRXP_WARN_尼莎·影歌|r
step
    #softcore
    #label darn
    #optional
    .goto Darnassus,82.01,36.70
    .zone Darnassus >>前往: |cRXP_PICK_达纳苏斯|r
step
	.abandon 927 >>抛弃苔藓缠绕的心。你永远没有机会交出
step << Warrior
#xprate <1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾兰娜瑞|r
    .turnin 1684 >>交任务: |cRXP_FRIENDLY_艾兰娜瑞|r
    .target Elanaria
    .accept 1683 >>接任务: |cRXP_LOOT_沃鲁斯·邪蹄|r
step << Warrior
#xprate <1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >>前往|cRXP_ENEMY_Vorlus Vilehof|r
step << Warrior
#xprate <1.99
    .goto Teldrassil,47.2,63.7
    >>杀死|cRXP_ENEMY_Vorlus Vilehof|r。掠夺他的|cRXX_Loot_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
#xprate <1.99
    #softcore
	#sticky
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>在你经过火山口地区并在达纳苏斯重生后，故意死亡
step << Warrior
#xprate <1.99
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>前往: |cRXP_PICK_达纳苏斯|r
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾兰娜瑞|r
    .turnin 1683 >>交任务: |cRXP_FRIENDLY_沃鲁斯·邪蹄|r
--	.accept 1686 >>接任务: |cRXP_WARN_艾鲁拉的阴影|r
step << Warrior
    #season 2
    #requires xp10
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delwynna|r upstairs
    >>|cRXP_WARN_转入三个|cRXP_LOOT_Severed Heads|r以接收|r|T134455:0|t[|cRXP_FRIENDLY_Monster Hunter符文碎片|r]
    .collect 204689,1
    .collect 204690,1
    .collect 204688,1
    .use 204703
    .skipgossip
    .target Delwynna
    .itemcount 208612,1 --Severed Spider Head (1)
    .itemcount 208611,1 --Severed Tiger Head (1)
    .itemcount 208610,1 --Severed Owl Head
    .train 403475,1 --Rune not known
step << Warrior
    #season 2
    >>使用任意一个|T134455:0|t[|cRXP_FRIENDLY_Monster Hunter符文碎片|r]将它们组合成|T134419:0|t[| cRXP-FRIENDLY_Rune of Devastate|r]
    .train 403475 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]|cRXP_WARN_to train|r|T135291:0|t[Devastate]
    .use 204689
    .itemcount 204689,1
    .itemcount 204690,1
    .itemcount 204688,1
step << Hunter
#xprate <1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_祖卡斯特|r
    .turnin 6103 >>交任务: |cRXP_FRIENDLY_训练野兽|r
step << Druid
    #season 0
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛斯雷·驭熊者|r, 他在中层
    .turnin 5931 >>交任务: |cRXP_FRIENDLY_返回达纳苏斯|r
    .target Mathrengyl Bearwalker
    .accept 6001 >>接任务: |cRXP_LOOT_身心之力|r
step
    #season 0
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .turnin -935 >>交任务: |cRXP_FRIENDLY_大地之冠|r
    .turnin -940 >>交任务: |cRXP_FRIENDLY_泰达希尔|r
    .target Arch Druid Fandral Staghelm
    .accept 952 >>接任务: |cRXP_WARN_古树之林|r
step << !Rogue
    #season 2
    #label darnSoD
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 923 >>交任务: |cRXP_FRIENDLY_青苔之瘤|r
step << Rogue
    #season 2
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2518 >>交任务: |cRXP_FRIENDLY_月神的泪水|r
    .target Priestess A'moora
    .accept 2520 >>接任务: |cRXP_WARN_萨丝拉的祭品|r
step << Rogue
    #season 2
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_使用|r|T135652:0|t[Sathrah的牺牲]|cRXP_WARN_at喷泉|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step << Rogue
    #season 2
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2520 >>交任务: |cRXP_FRIENDLY_萨丝拉的祭品|r
step << Warrior/Rogue/Druid
    #season 2
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊范达尔·鹿盔|r
    .turnin 940 >>交任务: |cRXP_FRIENDLY_泰达希尔|r
    .target Arch Druid Fandral Staghelm
    .accept 952 >>接任务: |cRXP_WARN_古树之林|r
step
    #season 0
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    .turnin 923 >>交任务: |cRXP_FRIENDLY_青苔之瘤|r
step << Hunter
    .goto Darnassus,40.2,9.8
    .trainer >>Train lvl 12 spells << sod
    >>|cRXP_WARN_如果你没有足够的钱或还没有达到12级，跳过这一步，在交完月之泪后回来|r << sod
    .target Jocaste
step << Hunter
    .goto Darnassus,42.2,8.8
    .trainer >>Train pet spells
    .target Silvaria
step << Rogue
    #season 2
    .goto Darnassus,38.6,15.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莱兰奈|r
    .vendor >>|cRXP_BUY_供应商垃圾|r
    .target Lelanai
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞尤娜|r
    .turnin 2242 >>交任务: |cRXP_FRIENDLY_命运的召唤|r
step << Rogue
    #season 2
    >>|cRXP_WARN_确保你在训练后至少有29块剩余的银子。你需要它来鞠躬|r
    .trainer >>Train level 12 spells
step << !sod/!Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2518 >>交任务: |cRXP_FRIENDLY_月神的泪水|r
    .target Priestess A'moora
    .accept 2520 >>接任务: |cRXP_WARN_萨丝拉的祭品|r
step << !sod/!Rogue
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_使用|r|T135652:0|t[Sathrah的牺牲]|cRXP_WARN_at喷泉|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step << !sod/!Rogue
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司艾茉拉|r
    .turnin 2520 >>交任务: |cRXP_FRIENDLY_萨丝拉的祭品|r
step << Priest
    #season 2
    .goto Darnassus,40.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司阿兰希雅|r
    .turnin 5629 >>交任务: |cRXP_FRIENDLY_回家|r
    .target Priestess Alathea
step << Priest
    #season 2
    .goto Darnassus,38.6,82.0
    .trainer >>Train lvl 12 Spells
step << Druid
#ssf
    #season 0
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_菲罗迪恩·唤月|r
    .train 2366 >>列车|T136065:0|t[草药学]
    >>|T136065:0|t[草药学]|cRXP_WARN_i需要很快收集5|r|T134187:0|t[Earthroot]|cRXP_WARN_进行一个重要的职业任务。你以后可以忘掉它|r
    .target Firodren Mooncaller
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>购买以下物品，以便稍后在Darkshore进行即时登录：
    >>|T134187:0|t[Earthroot] << Druid era
    >>|T133912:0|t[暗岸石斑鱼]
    >>|T133972:0|t[条纹肉]
    *Skip this step if you wish to not buy any
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step << Hunter
    .goto Darnassus,64.2,63.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t寻找|cRXP_FRIENDLY_Jaeana|r，她在商人台周围巡逻
    >>|cRXP_BUY_从她那里买一堆|r|T133972:0|t[Tough Jerky]|cRXP_BUY_。 
    >>|cRXP_WARN_你需要它来喂养你的猫头鹰，它们只吃肉，而黑暗海岸没有肉贩子|r
    .collect 117,15
    .target Jaeana
step << Hunter
    #season 2
    .goto Darnassus,64.2,59.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔兰|r
    >>|cRXP_BUY_BUY a|r|T135145:0|t[手杖]
    >>|cRXP_WARN_如果您的包里有其他员工，请跳过此步骤|r
    .collect 2495,1
    .target Kieran
    .money <0.1539
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Warrior/Priest/Sod Rogue
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_伊琳尼雅·月火|r
    .train 227 >>火车杆 << Hunter/Warrior/Priest
    .train 265 >>火车弓 << Sod Rogue
    >>如果你的包里有一根棍子，就装备它 << Hunter
    >>如果你的包里有弓，就装备它 << Rogue
    .target Ilyenia Moonfire
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_挥动|r|T135145:0|t[手杖]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Sod Rogue
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_购买并装备一把|r|T135489:0|t[叠层递归弓]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 0
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
	.vendor >>|cRXP_BUY_BUY|r|T132382:0|t[尖箭头]
    .target Ariyell Skyshadow
step << Hunter/Sod Rogue
    #season 2
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
	.vendor >>|cRXP_BUY_BUY|r|T132382:0|t[尖箭头]
    .vendor >>|cRXP_BUY_如果你有多余的钱，买一个|r|T134410:0|t[中等测验]|cRXP_Buy_|r << Hunter
    .target Ariyell Skyshadow
step << Hunter
    #completewith next
    +|cRXP_WARN_equp the |r|T135489:0|t[叠层递归弓]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_购买|r|T135147:0|t[Gnarled Staff]|cRXP_Buy_。装备到15级|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
    >>|cRXP_BUY_购买|r|T135154:0|t[季度员工]|cRXP_Buy_。装备到11级|r << era
    >>|cRXP_BUY_如果买不起|r|T135147:0|t[Gnarled Staff] << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿瑞耶尔·天影|r
	>>|cRXP_BUY_如果买不起|r|T135154:0|t[Cutlass]|cRXP_BUY_，请购买并装备|r|T135346:0|t[Quarter Staff]
	.collect 851,1
    .target Ariyell Skyshadow
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
    #completewith next
    +|cRXP_WARN_调用|r|T135346:0|t[Cutlass]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.81
step << Warrior
    #completewith next
    +|cRXP_WARN_Equip the |r|T135154:0|t[Quarter Staff]
    .use 854
    .itemcount 854,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.43
step << Warrior
    #season 2
	.goto Darnassus,58.6,35.6
    .target Arias'ta Bladesinger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿雷亚斯塔·刃歌|r
    .trainer >>训练你的职业技能
step << Rogue
    #season 0
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷利亚·绿树|r
    >>|cRXP_BUY_BUY a|r|T135641:0|t[平衡飞刀]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #completewith NessaShadowsong
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
    .zoneskip Darkshore
    .subzoneskip 702
step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,55.339,90.818
    .cast 421424 >>|cRXP_WARN_使用|r|T134269:0|t[|cRXP_LOOT_Teldrassil藏宝图|r]|cRXP-WARN_in在Rut'theran村的树干旁。这将导致一个|cRXP_PICK_埋藏的宝藏|r弹出|r
    .use 208605
    .itemcount 208605,1
    .train 398196,1
step << Rogue
    #season 2
    >>打开|cRXP_PICK_埋藏的宝藏|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]掠夺它
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Draw|r]|cRXP-WARN_to train|r|T134536:0|t[Quick Draw]
    .use 203991
    .itemcount 203991,1
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6344 >>交任务: |cRXP_FRIENDLY_尼莎·影歌|r
    .target Nessa Shadowsong
    .accept 6341 >>接任务: |cRXP_WARN_泰达希尔的渔业|r
step
    #label NessaShadowsong
    #optional
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_尼莎·影歌|r
    .turnin 6343 >>交任务: |cRXP_FRIENDLY_飞回泰达希尔|r
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .turnin 6341 >>交任务: |cRXP_FRIENDLY_泰达希尔的渔业|r
    .target Vesprystus
    .accept 6342 >>接任务: |cRXP_WARN_飞往奥伯丁|r
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维斯派塔斯|r
    .fly Darkshore >>飞到黑海岸
    .target Vesprystus
]])
