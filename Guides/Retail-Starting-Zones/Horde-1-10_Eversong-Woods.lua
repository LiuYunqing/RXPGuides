RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
#subgroup Blood Elf Starting Zones
#name 1血精灵起步区
#displayname Chapter 1 - Sunstrider Isle
#next 2血精灵Eversong Woods
#defaultfor BloodElf !DK

<< Horde

step
    .zoneskip 1727
    #completewith SunstriderIsleFirstQuestCheck
    +欢迎使用RestedXP的|cfff78300血精灵起步区|r指南。
    *This route is roughly 10-20 minutes slower than |cfff78300Exiles Reach|r. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
step
    .zoneskip 1727,1
    +您在流放区，但当前指南适用于|cfff78300血精灵起始区|r。
    +请选择流放者到达指南。
step
    #completewith next
    +|cRXP_WARN_如果你想充分利用RXP；按Escape->Options->Keybindings->RestedXP Guides->Select and Bind Active Button 1,2,3 and 4。您也可以使用Targets执行此操作。|r
    *This will allow you to press a Keybind to use a Quest Items/target a relevant mob
step
    #label SunstriderIsleFirstQuestCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师艾洛娜|r
    .goto 467,61.04,45.13
    .accept 8325 >>接任务: |cRXP_LOOT_夺回逐日岛|r
    .target Magistrix Erona
step
    >>杀死|cRXP_ENEMY_Mana Wyrms|r
    .goto 467,60.6,52.5
    .complete 8325,1 --6/6 Mana Wyrm slain
    .mob Mana Wyrm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师艾洛娜|r
    .goto 467,61.0,45.1
    .turnin 8325 >>交任务: |cRXP_FRIENDLY_夺回逐日岛|r
    .accept 8326 >>接任务: |cRXP_LOOT_令人遗憾的措施|r
    .target Magistrix Erona
step
    >>杀死|cRXP_ENEMY_Springpaw小熊|r和|cRXP_ENEMY_斯普林paw山猫|r。掠夺它们的|cRXP_Loot_项圈|r
    .goto 467,65.77,39.97,20,0
    .goto 467,68.40,37.61,20,0
    .goto 467,63.49,33.62,30,0
    .goto 467,68.13,34.18
    .complete 8326,1 --8/8 Lynx Collar
    .mob Springpaw Cub
    .mob Springpaw Lynx
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师艾洛娜|r
    .goto 467,61.0,45.1
    .turnin 8326 >>交任务: |cRXP_FRIENDLY_令人遗憾的措施|r
    .accept 8327 >>接任务: |cRXP_LOOT_向兰萨恩·派雷隆报到|r
    .target Magistrix Erona
step << Warlock
    #completewith next
    +|cfff78300提醒：使用|T136218:0|t精灵召唤你的宠物|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t走上坡道，与|cRXP_FRIENDLY_Well Watcher Solanian|r交谈
    .goto 467,65.18,45.72,5,0
    .goto 467,65.81,44.45,5,0
    .goto 467,65.43,42.94,5,0
    .goto 467,64.49,42.17,5,0
    .goto 467,63.9,42.8
    .accept 37442 >>接任务: |cRXP_LOOT_达斯雷玛的神龛|r
    .accept 37443 >>接任务: |cRXP_LOOT_索兰尼亚的物品|r
    .target Well Watcher Solanian
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师伊塔纳斯|r
    .goto 467,61.8,39.3
    .accept 37440 >>接任务: |cRXP_LOOT_奥术薄片|r
    .target Arcanist Ithanas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师赫里恩|r
    .goto 467,58.45,38.79
    .accept 37439 >>接任务: |cRXP_LOOT_无尽的渴求|r
    .target Arcanist Helion
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰萨恩·派雷隆|r
    .goto 467,52.9,49.8
    .turnin 8327 >>交任务: |cRXP_FRIENDLY_向兰萨恩·派雷隆报到|r
    .accept 8334 >>接任务: |cRXP_LOOT_攻势|r
    .target Lanthan Perilon
step
    #sticky
    #label EversongWoodsArcaneSilver
    >>杀死|cRXP_ENEMY_Mana Wyrms|r。掠夺它们以获得|cRXP_Loot_silver|r
    .goto 467,50.15,40.74
    .complete 37440,1 --6/6 Arcane Sliver
    .mob Mana Wyrm
step
    >>使用|T136222:0|t[奥术洪流]旁边的|cRXP_ENEMY_Mana Wyrms|r
    .goto 467,53.1,40.5
    .complete 37439,1 --1/1 Arcane Torrent unleashed
step
    #requires EversongWoodsArcaneSilver
    #completewith EversongWoodsSecondBelonging
    >>杀死侧面的|cRXP_ENEMY_Tenders|r和|cRXX_ENEMY_Feral Tenders| r
    .complete 8334,2 --7/7 Feral Tender slain
    .complete 8334,1 --7/7 Tender slain
    .mob Tender
    .mob Feral Tender
step
    #requires EversongWoodsArcaneSilver
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on the glowing |cRXP_LOOT_Shrine of Dath'Remar|r
    .goto 467,35.3,40.2
    .complete 37442,1 --1/1 Shrine of Dath'Remar Read
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up the |cRXP_LOOT_Scroll of Scourge Magic|r on the ground
    .goto 467,40.4,50.5
    .complete 37443,2 --1/1 Scroll of Scourge Magic
step
    #label EversongWoodsSecondBelonging
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up the |cRXP_LOOT_Solanian's Srying Orb|r
    .goto 467,52.2,69.4
    .complete 37443,1 --1/1 Solanian's Scrying Orb
step
    >>杀死|cRXP_ENEMY_Tenders|r和|cRXX_ENEMY_Feral Tenders| r
    .goto 467,54.76,70.68
    .complete 8334,2 --7/7 Feral Tender slain
    .complete 8334,1 --7/7 Tender slain
    .mob Tender
    .mob Feral Tender
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up |cRXP_LOOT_Solanian's Journal|r on the ground
    .goto 467,60.1,57.1
    .complete 37443,3 --1/1 Solanian's Journal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰萨恩·派雷隆|r
    .goto 467,52.9,49.8
    .turnin 8334 >>交任务: |cRXP_FRIENDLY_攻势|r
    .accept 8335 >>接任务: |cRXP_LOOT_放逐者菲伦德雷|r
    .target Lanthan Perilon
step
    #completewith EversongWoodsFelendrenHead
    >>在上学院时杀死|cRXP_ENEMY_奥术之魂|r和|cRXX_ENEMY_Tained奥术之灵|r
    .complete 8335,1 --8/8 Arcane Wraith slain
    .complete 8335,2 --2/2 Tainted Arcane Wraith slain
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
step
    #completewith EversongWoodsFelendrenHead
    .goto 467,41.59,61.88,15,0
    .goto 467,42.40,66.28,15,0
    .goto 467,44.01,69.31,5,0
    .goto 467,43.05,71.29,5,0
    .goto 467,41.12,71.24,15,0
    .goto 467,41.00,72.53,5,0
    .goto 467,40.35,73.98,5,0
    .goto 467,39.12,74.24,5,0
    .goto 467,38.00,73.02,5,0
    .goto 467,37.80,69.96,15,0
    .goto 467,38.43,65.79,10,0
    .goto 467,40.17,64.78,8,0
    .goto 467,40.01,62.64,8,0
    .goto 467,37.86,60.95,5,0
    .goto 467,36.69,61.87,5,0
    .goto 467,36.34,63.76,5,0
    .goto 467,37.98,66.43,8 >>Follow the way up
step
    >>杀死一个|cRXP_ENEMY_Tained Arcane Wraith|r。为|cRXD_Loot_Tained Arcane Sliver|r掠夺它。点击你的包里
    .collect 20483,1,8338,1
    .accept 8338 >>接任务: |cRXP_LOOT_被污染的奥术薄片|r
    .mob Tainted Arcane Wraith
step
    #label EversongWoodsFelendrenHead
    >>杀死|cRXP_ENEMY_Felendren被放逐者|r。掠夺他的|cRXX_Loot_head|r。
    .goto 467,38.92,63.98
    .complete 8335,3 --1/1 Felendren's Head
    .mob Felendren the Banished
step
    >>杀死一个|cRXP_ENEMY_Tained Arcane Wraith|r。为|cRXD_Loot_Tained Arcane Sliver|r掠夺它。点击你的包里
    .collect 20483,1,8338,1
    .accept 8338 >>接任务: |cRXP_LOOT_被污染的奥术薄片|r
    .mob Tainted Arcane Wraith
step
    .isQuestComplete 8335
    #completewith next
    .goto 467,39.87,59.96
    .deathskip >>往下跑（不要跳）去死
step
    .isQuestComplete 8335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师赫里恩|r
    .goto 467,58.5,38.8
    .turnin 8338 >>交任务: |cRXP_FRIENDLY_被污染的奥术薄片|r
    .turnin 37439 >>交任务: |cRXP_FRIENDLY_无尽的渴求|r
    .target Arcanist Helion
step
    .isOnQuest 8338
    #sticky
    #label EversongWoodsArcaneWraith
    >>杀死|cRXP_ENEMY_奥术之魂|r和|cRXX_ENEMY_Tained奥术之灵|r
    .goto 467,36.49,62.42,10,0
#loop
	.line 467,35.95,62.37,33.98,60.95,33.30,57.44,35.22,55.35,37.68,57.26,41.53,61.92,42.39,66.27,44.03,69.13,43.00,71.32,41,32,71.70,39.72,74.29,38.05,73.09,37.83,70.00,38.26,66.85
	.goto 467,35.95,62.37,15,0
	.goto 467,33.98,60.95,15,0
	.goto 467,33.30,57.44,15,0
	.goto 467,35.22,55.35,15,0
	.goto 467,37.68,57.26,15,0
	.goto 467,41.53,61.92,15,0
	.goto 467,42.39,66.27,15,0
	.goto 467,44.03,69.13,15,0
	.goto 467,43.00,71.32,15,0
	.goto 467,41.00,32.00,15,0
	.goto 467,71.70,39.72,15,0
	.goto 467,74.29,38.05,15,0
	.goto 467,73.09,37.83,15,0
	.goto 467,70.00,38.26,15,0
    .complete 8335,1 --8/8 Arcane Wraith slain
    .complete 8335,2 --2/2 Tainted Arcane Wraith slain
    .mob Arcane Wraith
    .mob Tainted Arcane Wraith
step
    .isOnQuest 8338
    >>杀死一个|cRXP_ENEMY_Tained Arcane Wraith|r。为|cRXD_Loot_Tained Arcane Sliver|r掠夺它。点击你的包里
    .collect 20483,1,8338,1
    .accept 8338 >>接任务: |cRXP_LOOT_被污染的奥术薄片|r
    .mob Tainted Arcane Wraith
step
    .isOnQuest 8338
    #requires EversongWoodsArcaneWraith
    #completewith next
    .goto 467,41.44,51.44
    .deathskip >>拉暴徒，去死，向精神治疗者施压
step
    .isOnQuest 8338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师赫里恩|r
    .goto 467,58.5,38.8
    .turnin 8338 >>交任务: |cRXP_FRIENDLY_被污染的奥术薄片|r
    .turnin 37439 >>交任务: |cRXP_FRIENDLY_无尽的渴求|r
    .target Arcanist Helion
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥术师伊塔纳斯|r
    .goto 467,61.8,39.3
    .turnin 37440 >>交任务: |cRXP_FRIENDLY_奥术薄片|r
    .target Arcanist Ithanas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_WARN_走上坡道|r，与|cRXP_FRIENDLY_Well Watcher Solanian交谈|r
    .goto 467,62.74,45.12,5,0
    .goto 467,65.29,45.79,10,0
    .goto 467,65.50,42.88,5,0
    .goto 467,63.97,42.83
    .turnin 37442 >>交任务: |cRXP_FRIENDLY_达斯雷玛的神龛|r
    .turnin 37443 >>交任务: |cRXP_FRIENDLY_索兰尼亚的物品|r
    .target Well Watcher Solanian
step
    #completewith next
    .goto 467,63.04,43.06
    .vendor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_兰萨恩·派雷隆|r
    .goto 467,52.9,49.78
    .turnin 8335 >>交任务: |cRXP_FRIENDLY_放逐者菲伦德雷|r
    .accept 8347 >>接任务: |cRXP_LOOT_帮助信使|r
    .target Lanthan Perilon
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
#name 2血精灵Eversong Woods
#displayname Chapter 2 - Eversong Woods
#next RestedXP部落10-60\1 BfA简介
#subgroup Blood Elf Starting Zones
#defaultfor BloodElf !DK

<< Horde

step << Hunter
    #completewith next
    .goto 467,58.74,57.51
    .cast 1515 >>用你的能力驯服a|cRXP_ENEMY_Mana Wyrm|r |T132164:0|t[驯服野兽]
step
    .isOnQuest 8347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_信使奥拉莉恩|r
    .goto 94,40.42,32.21
    .turnin 8347 >>交任务: |cRXP_FRIENDLY_帮助信使|r
    .accept 9704 >>接任务: |cRXP_LOOT_失心者的牺牲品|r
    .target Outrunner Alarion
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与地面上被杀的Outrunner互动
    .goto 94,42.02,35.65
    .turnin 9704 >>交任务: |cRXP_FRIENDLY_失心者的牺牲品|r
    .accept 9705 >>接任务: |cRXP_LOOT_找回包裹|r
    .target Slain Outrunner
step
    #completewith next
    .goto 94,44.11,38.15,15,0
    .goto 94,45.01,37.49
    .deathskip >>拉一些暴徒，死，然后释放并向精神治疗师施压
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠杰拉|r
    .goto 94,50.33,50.77
    .accept 8475 >>接任务: |cRXP_LOOT_死亡之痕|r
    .target Ranger Jaela
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_提醒：在宠物死亡后继续保护它|r
step
    >>杀死|cRXP_ENEMY_瘟疫骨支柱|r
    .goto 94,50.17,55.05
    .complete 8475,1 --8/8 Plaguebone Pillager slain
    .mob Plaguebone Pillager
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠杰拉|r
    .goto 94,50.33,50.77
    .turnin 8475 >>交任务: |cRXP_FRIENDLY_死亡之痕|r
    .target Ranger Jaela
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_飞行管理员斯凯勒斯|r
    .goto 94,46.53,48.61,20,0
    .goto 94,46.2,46.8
    .fp >>获取银月航线的废墟
    .target Skymaster Skyles
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师亚隆尼斯|r
    .goto 94,47.25,46.30
    .accept 8472 >>接任务: |cRXP_LOOT_失效的傀儡|r
    .target Magister Jaronis
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the wanted board
    .goto 94,48.16,46.31
    .accept 8468 >>接任务: |cRXP_WARN_通缉：饥饿者泰里斯|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔杜·炙痕|r
    .goto 94,48.17,46.0
    .accept 8463 >>接任务: |cRXP_LOOT_不稳定的法力水晶|r
    .target Aeldon Sunbrand
step
    #completewith next
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on |cRXP_LOOT_Unstable Mana Crystal Crates|r to collect them
    .complete 8463,1 --6/6 Unstable Mana Crystal
step
    #completewith next
    >>杀死|cRXP_ENEMY_Acrane巡逻者|r。掠夺他们的|cRXP_Loot_核心|r
    .goto 94,46.94,44.59,15,0
    .goto 94,47.69,39.02,15,0
    .goto 94,47.11,37.44,15,0
    .goto 94,46.53,35.16,30,0
    .complete 8472,1 --6/6 Arcane Core
    .mob Arcane Patroller
step
    >>杀死|cRXP_ENEMY_Thaelis|r。掠夺他的|cRXX_Loot_head |r
    .goto 94,45.36,38.12,5,0
    .goto 94,45.01,37.68
    .complete 8468,1 --1/1 Thaelis' Head
    .mob Thaelis
step
    >>杀死|cRXP_ENEMY_Acrane巡逻者|r。掠夺他们的|cRXP_Loot_核心|r
    .goto 94,45.39,40.64,20,0
    .goto 94,42.18,40.59
    .complete 8472,1 --6/6 Arcane Cores
    .mob Arcane Patroller
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick on |cRXP_LOOT_Unstable Mana Crystal Crates|r to collect them
    .goto 94,45.13,40.71,18,0
    .goto 94,46.01,43.29,25,0
    .goto 94,46.92,44.57,10,0
    .complete 8463,1 --6/6 Unstable Mana Crystal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师亚隆尼斯|r
    .goto 94,47.26,46.30
    .turnin 8472 >>交任务: |cRXP_FRIENDLY_失效的傀儡|r
    .accept 8895 >>接任务: |cRXP_LOOT_送往北部圣殿的信|r
    .target Magister Jaronis
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔杜·炙痕|r
    .goto 94,48.17,46.0
    .turnin 8463 >>交任务: |cRXP_FRIENDLY_不稳定的法力水晶|r
    .accept 9352 >>接任务: |cRXP_LOOT_达纳苏斯的侵扰|r
    .target Aeldon Sunbrand
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_坎雷中士|r
    .goto 94,47.77,46.58
    .turnin 8468 >>交任务: |cRXP_FRIENDLY_通缉：饥饿者泰里斯|r
    .target Sergeant Kan'ren
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯雷因|r
    .goto 94,47.07,47.49
    .vendor
    .target Sleyin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔网监护者凯丹尼斯|r
    .goto 94,44.6,53.1
    .turnin 8895 >>交任务: |cRXP_FRIENDLY_送往北部圣殿的信|r
    .accept 9119 >>接任务: |cRXP_LOOT_西部圣殿的麻烦|r
    .target Ley-Keeper Caidanis
step
    .itemcount 132516,1
    #completewith next
    .cast 202844 >>使用|T1405809:0|t[枪鞋]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔网监护者薇兰妮亚|r
    .goto 94,36.7,57.44
    .turnin 9119 >>交任务: |cRXP_FRIENDLY_西部圣殿的麻烦|r
    .accept 8486 >>接任务: |cRXP_LOOT_不稳定的奥术|r
    .target Ley-Keeper Velania
step
    #completewith next
    >>杀死一名|cRXP_ENEMY_Darnassian Scout|r。掠夺他获取|cRXX_Loot_Incriminating Documents|r。点击你的包中
    .goto 94,36.4,60.7,20,0
    .goto 94,34.65,62.03,20,0
    .collect 20765,1,8482,1
    .accept 8482 >>接任务: |cRXP_LOOT_秘密文件|r
    .complete 9352,1 --1/1 Intruder Defeated
    .mob Darnassian Scout
step
    >>杀死|cRXP_ENEMY_Mana Stalker|r和|cRXX_ENEMY_manawaiths|r
    .goto 94,33.69,61.69,15,0
    .goto 94,34.50,57.84,20,0
    .goto 94,35.66,58.00
    .complete 8486,2 --5/5 Mana Stalker slain
    .complete 8486,1 --5/5 Manawraith slain
    .mob Mana Stalker
    .mob Manawraith
step
    >>杀死一名|cRXP_ENEMY_Darnassian Scout|r。掠夺他获取|cRXX_Loot_Incriminating Documents|r。点击你的包中
    .goto 94,36.4,60.7,20,0
    .goto 94,34.65,62.03,20,0
    .collect 20765,1,8482,1
    .accept 8482 >>接任务: |cRXP_LOOT_秘密文件|r
    .complete 9352,1 --1/1 Intruder Defeated
    .mob Darnassian Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔网监护者薇兰妮亚|r
    .goto 94,36.7,57.44
    .turnin 8486 >>交任务: |cRXP_FRIENDLY_不稳定的奥术|r
    .turnin 9352 >>交任务: |cRXP_FRIENDLY_达纳苏斯的侵扰|r
    .target Ley-Keeper Velania
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_将您的宠物设置为“被动”|r
step
    #completewith next
    .goto 94,35.46,57.41
    .deathskip >>拉一些暴徒，死后向精神治疗师猛扑
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师兰德拉·晨行者|r
    .goto 94,44.03,70.76
    .accept 9254 >>接任务: |cRXP_LOOT_外出的学徒|r
    .target Magistrix Landra Dawnstrider
step << Hunter/Warlock
    #completewith next
    +|cRXP_WARN_提醒：恢复您的宠物并将其设置为“辅助”|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛尼尔·琥珀之光|r, |cRXP_FRIENDLY_萨希尔|r
    .accept 9358 >>接任务: |cRXP_LOOT_游侠萨蕾恩|r
    .goto 94,43.67,71.31
    .accept 9130 >>接任务: |cRXP_LOOT_银月城的货物|r
    .goto 94,43.70,71.55
    .target Marniel Amberlight
    .target Sathiel
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠萨蕾恩|r
    .goto 94,46.93,71.79
    .turnin 9358 >>交任务: |cRXP_FRIENDLY_游侠萨蕾恩|r
    .accept 9252 >>接任务: |cRXP_LOOT_保卫晴风村|r
    .target Ranger Sareyn
step
    #completewith next
    >>杀死|cRXP_ENEMY_Rotlim Maurauders|r和|cRXP_ENEMY_Darkwariths|r
    .goto 94,50.75,81.06,30,0
    .goto 94,51.00,76.81,30,0
    .goto 94,51.98,72.04,30,0
    .complete 9252,1 --4/4 Rotlimb Marauder slain
    .complete 9252,2 --4/4 Darkwraith slain
    .mob Rotlimb Marauder
    .mob Darkwraith
step
    >>|cRXP_WARN_如果拉得太多，你可能会死|cRXP_ENEMY_Rotlimb Maurauders|r|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒米尔维达|r
    .goto 94,54.28,70.98
    .turnin 9254 >>交任务: |cRXP_FRIENDLY_外出的学徒|r
    .accept 8487 >>接任务: |cRXP_LOOT_被腐蚀的土地|r
    .target Apprentice Mirveda
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tPick up the |cRXP_LOOT_Tainted Soil Samples|r from the ground
    .goto 94,52.34,71.77,20,0
    .goto 94,51.92,68.47,20,0
    .goto 94,52.59,69.60,10,0
    .goto 94,53.75,69.89,10,0
    .goto 94,52.36,69.80
    .complete 8487,1 --8/8 Tainted Soil Sample
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒米尔维达|r
    .goto 94,54.28,70.98
    .turnin 8487 >>交任务: |cRXP_FRIENDLY_被腐蚀的土地|r
    .target Apprentice Mirveda
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待约5秒钟，然后再次与|cRXP_FRIENDLY_Apprentice Mirveda|r通话
    .goto 94,54.28,70.98
    .accept 8488 >>接任务: |cRXP_LOOT_出人意料的结果|r
    .target Apprentice Mirveda
step
    >>杀死|cRXP_ENEMY_Gharsul the Remorsless |r。你可以把他放回|cRXP_FRIENDLY_Apprentice Mirveda|r
    .goto 94,53.69,69.71,10,0
    .goto 94,54.28,70.98
    .complete 8488,2 --1/1 Gharsul the Remorseless slain
    .mob Gharsul the Remorseless
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_学徒米尔维达|r
    .goto 94,54.28,70.98
    .turnin 8488 >>交任务: |cRXP_FRIENDLY_出人意料的结果|r
    .accept 9255 >>接任务: |cRXP_LOOT_研究笔记|r
    .target Apprentice Mirveda
step
    >>杀死|cRXP_ENEMY_Rotlim Maurauders|r和|cRXP_ENEMY_Darkwariths|r
    .goto 94,51.98,72.04,30,0
    .goto 94,51.00,76.81
    .complete 9252,1 --4/4 Rotlimb Marauder slain
    .complete 9252,2 --4/4 Darkwraith slain
    .mob Rotlimb Marauder
    .mob Darkwraith
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_将您的宠物设置为“被动”|r
step
    #completewith next
    .goto 94,51.47,70.39
    .deathskip >>把一些暴徒拉到你周围，然后死在航路点的位置。腐烂的Maraudurs真的很会杀你
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠萨蕾恩|r
    .goto 94,46.93,71.79
    .turnin 9252 >>交任务: |cRXP_FRIENDLY_保卫晴风村|r
    .target Ranger Sareyn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_魔导师兰德拉·晨行者|r
    .goto 94,44.03,70.76
    .turnin 9255 >>交任务: |cRXP_FRIENDLY_研究笔记|r
    .target Magistrix Landra Dawnstrider
step << Hunter/Warlock
    #completewith next
    +|cRXP_WARN_提醒：恢复您的宠物并将其设置为“辅助”|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_飞行管理员晨光|r
    .goto 94,43.94,69.99
    .turnin 9130 >>交任务: |cRXP_FRIENDLY_银月城的货物|r
    .target Skymaster Brightdawn
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_飞行管理员晨光|r
    .goto 94,43.95,69.98
    .fly Falconwing Square >>飞往猎鹰翼广场
    .target Skymaster Brightdawn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾尔杜·炙痕|r
    .goto 94,47.80,47.65,5,0
    .goto 94,48.16,46.0
    .turnin 8482 >>交任务: |cRXP_FRIENDLY_秘密文件|r
    .target Aeldon Sunbrand
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_飞行管理员斯凯勒斯|r
    .goto 94,46.25,46.80
    .fly Silvermoon City >>飞往银月城
    .target Skymaster Skyles
step
    .goto 94,56.39,50.57,15,0
    .goto 110,72.71,59.22,20,0
    .goto 110,76.28,59.20,20,0
    .goto 110,76.06,52.10,20,0
    .goto 110,56.39,23.23,20,0
    .goto 110,58.55,18.65
    .zone 85 >>|cRXP_WARN_Mount up|r. 前往: |cRXP_PICK_杜隆塔尔|r
]])
