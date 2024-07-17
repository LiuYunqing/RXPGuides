RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA战争战役
#groupweight 4
#name 1) Heart of Azeroth
#displayname Chapter 1 - Heart of Azeroth
#next 2) Vol'dun Foothold

<< Alliance

step
    .goto 1161,75.06,14.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_土灵守护者|r
    .accept 53028 >>接任务: |cRXP_WARN_垂死的世界|r
    .target Earthen Guardian
step
    .goto 1161,67.08,23.58,5,0
    .goto 1161,69.09,25.08,30,0
    .goto 1161,69.65,15.92
    .isOnQuest 53028
    .zone 81 >>将传送门带到Silithus
step
    .goto 81,42.22,44.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦格尼·铜须|r
    .turnin 53028 >>Turn in A Dying World
    .accept 51211 >>接任务: |cRXP_WARN_艾泽拉斯之心|r
    .target Magni Bronzebeard
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Titan Translocator|r
    .goto 81,43.16,44.51
    .complete 51211,1 --1/1 Use device in Silithus  to travel to Chamber of the Heart
step
    .goto 1021,50.17,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦格尼·铜须|r
    >>|cRXP_WARN_按键盘上的“ESC”可跳过电影|r
    .complete 51211,3 --1/1 Speak to Magni within the Chamber of Heart
    .skipgossip 136907,1
    .target Magni Bronzebeard
step
    .goto 1021,50.17,53.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_麦格尼·铜须|r
    .turnin 51211 >>Turn in The Heart of Azeroth
    .target Magni Bronzebeard
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA战争战役
#name 2) Vol'dun Foothold
#displayname Chapter 2 - Vol'dun Foothold
#next 3) Nazmir Foothold

<<Alliance

step
    .zoneskip 1021,1
    .goto 1021,50.02,30.69
    .zone 81 >>使用Titan Translocator
step
    .zoneskip 81,1
    .goto 81,41.49,44.85
    .zone 1163 >>乘坐传送门前往蒂拉加德
step
    .isQuestAvailable 51569
    .goto 1161,69.27,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .accept 51569 >>接任务: |cRXP_WARN_赞达拉战役|r
    .target Halford Wyrmbane
step
    .isQuestAvailable 51571
    .isQuestTurnedIn 51569
    .goto 1161,69.26,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .accept 51961 >>接任务: |cRXP_WARN_继续作战|r
    .target Halford Wyrmbane
step
    .isQuestAvailable 51571
    .isQuestTurnedIn 51961
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .accept 52443 >>接任务: |cRXP_WARN_最后的据点|r
    .target Halford Wyrmbane
step
    .goto 1161,69.36,26.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign Table|r and select |cRXP_WARN_Vol'dun|r. Click on the popup under your minimap to turn in the quest.
    >>|cRXP_WARN_如果您意外选择了其他区域，请从指南列表中选择特定的区域指南|r
    .accept 51572 >>接任务: |cRXP_WARN_据点：沃顿|r
    .turnin 51572 >>Turn in Foothold: Vol'dun
step
    .goto 1161,69.26,26.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 51569 >>Turn in The Zandalar Campaign
    .accept 51283 >>接任务: |cRXP_WARN_起程西行|r
    .target Halford Wyrmbane
step
    .isOnQuest 51283
    .goto 1161,67.95,26.71
    .gossipoption 48162 >>对话: |cRXP_FRIENDLY_杰塔瑞斯将军|r
    .target Grand Admiral Jes-Tereth
step
    .goto 864,32.91,34.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 51283 >>Turn in Voyage to the West
    .accept 51170 >>接任务: |cRXP_WARN_冲啊！|r
    .target Halford Wyrmbane
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Rope.|r
    >>|cRXP_WARN_如果你碰巧摔倒了，船旁边有一个梯子，很方便。|r
    .goto 864,32.99,34.87
    .complete 51170,1 --1/1 Landing craft boarded
    .timer 20.5, Boat RP
step
    >>|cRXP_ENEMY_Kill Sethrak's|r
    .goto 864,36.94,33.05,30,0
    .goto 864,37.5,33.27,30,0
    .goto 864,38.1,34.45,30,0
    .goto 864,39.11,35.56,15,0
#loop
	.line 864,36.94,33.05,37.5,33.27,38.1,34.45,37.69,35.66,36.91,34.85
	.goto 864,36.94,33.05,30,0
	.goto 864,37.50,33.27,30,0
	.goto 864,38.10,34.45,30,0
	.goto 864,37.69,35.66,30,0
	.goto 864,36.91,34.85,30,0
    .complete 51170,2 --15/15 Sethrak forces slain
    .mob Sethrak Raider
    .mob Sethrak Mender
    .mob Krolusk Warcrawler
    .mob Sethrak Battle Rider
step
    .goto 864,39.65,35.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Ermey|r
    .turnin 51170 >>Turn in Ooh Rah!
    .accept 51229 >>接任务: |cRXP_WARN_建立滩头基地|r
    .target Sergeant Ermey
step
    .goto 864,37.55,35.32
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Alliance Banner|r
    .complete 51229,1 --1/1 Plant the Alliance Banner
step
    .goto 864,37.72,35.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 51229 >>Turn in Establish a Beachhead
    .accept 51349 >>接任务: |cRXP_WARN_为了信义|r
    .target Halford Wyrmbane
step
    .goto 864,38.96,42.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Ermey|r
    .turnin 51349 >>Turn in Honor Bound
    .accept 51350 >>接任务: |cRXP_WARN_意外援助|r
    .accept 51351 >>接任务: |cRXP_WARN_剧毒倒刺|r
    .target Sergeant Ermey
step
    #completewith Saltspine Barb
    >>杀死|cRXP_ENEMY_Saltscree Krolusks|r并掠夺他们的|T132274:0|t|cRXP_loot_Barb|r
    .complete 51351,1 --8/8 Saltspine Barb
step
    .goto 864,39.6,42.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,1 --8/8 Prickly Pear Root
step
    .goto 864,40.28,42.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,2 --8/8 Prickly Pear Root
step
    .goto 864,40.51,41.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,3 --8/8 Prickly Pear Root
step
    .goto 864,40.9,41.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,4 --8/8 Prickly Pear Root
step
    .goto 864,41.46,42.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,5 --8/8 Prickly Pear Root
step
    .goto 864,41.68,41.49
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,6 --8/8 Prickly Pear Root
step
    .goto 864,41.64,40.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,7 --8/8 Prickly Pear Root
step
    .goto 864,40.9,40.57
    #label Saltspine Barb
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Prickly Pear|r on the Ground.
    .complete 51350,1,8 --8/8 Prickly Pear Root
step
#loop
	.line 864,40.2,40.58,39.6,42.03,40.96,42.31,41.95,41.24
	.goto 864,40.20,40.58,15,0
	.goto 864,39.60,42.03,15,0
	.goto 864,40.96,42.31,15,0
	.goto 864,41.95,41.24,15,0
    >>杀死|cRXP_ENEMY_Saltscree Krolusks|r并掠夺他们的|T132274:0|t|cRXP-loot_[Barb|r
    .complete 51351,1 --8/8 Saltspine Barb
step
    .goto 864,38.95,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Ermey|r
    .turnin 51350 >>Turn in Unexpected Aid
    .turnin 51351 >>Turn in Poisoned Barbs
    .accept 51366 >>接任务: |cRXP_WARN_使用解毒剂|r
    .target Sergeant Ermey
step
    #title Interact with |cRXP_FRIENDLY_Vorrik|r
    >>与|cRXP_FRIENDLY_Vorrik交互|r
    .goto 864,38.96,42.98
    .use 160045
    .complete 51366,1 --1/1 Antidote Salve applied
    .target Vorrik
    .timer 4, Vorrik RP
step
    .goto 864,38.96,42.98
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r
    .turnin 51366 >>Turn in Antidote Application
    .accept 51369 >>接任务: |cRXP_WARN_异乡异友|r
    .target Vorrik
    .timer 6,Pterrordax RP
step
    #title Interact |cRXP_FRIENDLY_Pterrordax|r
    .goto 864,39.08,43.06
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    >>与|cRXP_FRIENDLY_Tamed Pterrordax交互|r
    .complete 51369,1 --1/1 Pterrordax mounted
    .timer 55,Pterrordax Flight
step
    .goto 864,27.24,54.15
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 51369,2 --1/1 Fly to the Sanctuary of the Devoted
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r and |cRXP_FRIENDLY_Sergeant Ermey.|r
    .turnin 51369 >>Turn in Friends in Strange Places
    .accept 51391 >>接任务: |cRXP_WARN_蛇口拔牙|r
    .accept 51394 >>接任务: |cRXP_WARN_突破重围|r
    .goto 864,27.23,53.94
    .accept 51389 >>接任务: |cRXP_WARN_挣脱束缚|r
    .goto 864,27.18,53.91
    .target Vorrik
    .target Sergeant Ermey
step
    #completewith Spires
    >>杀死|cRXP_ENEMY_Faithless|r
    .complete 51391,1 --12/12 Faithless slain
    .mob Faithless Warden
    .mob Faithless Skycaller
    .mob Faithless Ravager
    .mob Faithless Agressor
step
    #title Spire
    .goto 864,29.08,54.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Spire|r
    .complete 51394,3,1 --2/2 Spires shattered
step
    #title Banner
    .goto 864,29.37,54.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Banner|r
    .complete 51394,1,1 --4/4 Banners burned
step
    #title Cannon
    .goto 864,29.49,53.83
    >>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Cannon|r
    .complete 51394,2,1 --4/4 Cannons crushed
step
    #title Cannon
    .goto 864,29.64,53.67
    >>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Cannon|r
    .complete 51394,2,2 --4/4 Cannons crushed
step
    #title Cage
    .goto 864,30.08,53.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r to rescue |cRXP_FRIENDLY_Private James.|r
    .complete 51389,1 --1/1 Private James rescued
step
    #title Banner
    .goto 864,29.75,53.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Banner|r
    .complete 51394,1,2 --4/4 Banners burned
step
    #title Banner
    .goto 864,29.74,52.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Banner|r
    .complete 51394,1,3 --4/4 Banners burned
step
    #title Cannon
    .goto 864,29.67,51.53
    >>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Cannon|r
    .complete 51394,2,3 --4/4 Cannons crushed
step
    #title Cannon
    .goto 864,29.53,51.34
    >>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Cannon|r
    .complete 51394,2,4 --4/4 Cannons crushed
step
    #title Banner
    .goto 864,29.42,51.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Banner|r
    .complete 51394,1,4 --4/4 Banners burned
step
    #label Spires
    #title Spire
    .goto 864,28.89,51.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Spire|r
    .complete 51394,3,2 --2/2 Spires shattered
step
#loop
	.line 864,28.97,54.75,30.43,54.54,30.01,51.35,29.02,51.91
	.goto 864,28.97,54.75,30,0
	.goto 864,30.43,54.54,30,0
	.goto 864,30.01,51.35,30,0
	.goto 864,29.02,51.91,30,0
    >>杀死|cRXP_ENEMY_Faithless|r
    .complete 51391,1 --12/12 Faithless slain
    .mob Faithless Warden
    .mob Faithless Skycaller
    .mob Faithless Ravager
    .mob Faithless Agressor
step
    #completewith next
    .goto 864,27.22,51.39,10 >>进入|cFFfa9602金字塔的第一层|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private James|r and |cRXP_FRIENDLY_Vorrik|r inside the pyramid.
    .turnin 51389 >>Turn in Breaking Free
    .goto 864,27.56,52.61
    .turnin 51391 >>Turn in Defang the Faithless
    .turnin 51394 >>Turn in Break the Siege
    .accept 51395 >>接任务: |cRXP_WARN_守护者的钥匙|r
    .goto 864,27.62,52.57
    .target Vorrik
    .target Private James
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private James|r
    .goto 864,27.56,52.61
    .skipgossip
    .complete 51395,1 --1/1 Speak to Private James
    .timer 92,Follow Vorrik RP
    .target Private James
step
    .goto 864,26.54,51.97,10,0
    .goto 864,26.72,52.58,10,0
    .goto 864,27.11,52.57
    >>Follow the Arrow.
    >>|cRXP_WARN_然后等待|cRXP_FRIENDLY_Vorrik|r到达，当计时器用完时将完成。|r
    .complete 51395,2 --1/1 Follow Vorrik
step
    .goto 864,27.11,52.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vorrik|r
    .turnin 51395 >>Turn in The Keepers' Keys
    .target Vorrik
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Ermey|r
    .goto 864,27.02,52.50
    .accept 51402 >>接任务: |cRXP_WARN_战况报告|r
    .target Sergeant Ermey
step
    .goto 864,26.69,52.56,10,0
    .goto 864,37.71,35.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 51402 >>Turn in Reporting In
    .target Halford Wyrmbane
step
    .goto 864,37.47,35.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .turnin 52008 >>交任务: |cRXP_FRIENDLY_勇士：魔导师乌布里克|r
    .target Magister Umbric
step
    .goto 864,37.71,35.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .accept 51969 >>接任务: |cRXP_WARN_返回伯拉勒斯|r
    .target Halford Wyrmbane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杰塔瑞斯将军|r
    .goto 864,34.91,33.76
    .skipgossip 135681,1
    .complete 51969,1 --Speak to Jes-Tereth
    .target Grand Admiral Jes-Tereth
step
    .goto 1161,69.26,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 51969,3 >>Turn in Return to Boralus
    .target Halford Wyrmbane
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA战争战役
#name 3) Nazmir Foothold
#displayname Chapter 3 - Nazmir Foothold
#next 4) Island Expedition

<< Alliance

step
    .isQuestAvailable 51571
    .isQuestAvailable 51569
    .goto 1161,69.27,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .accept 51569 >>接任务: |cRXP_WARN_赞达拉战役|r
    .target Halford Wyrmbane
step
    .isQuestAvailable 51571
    .isQuestTurnedIn 51569
    .goto 1161,69.26,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .accept 51961 >>接任务: |cRXP_WARN_继续作战|r
    .target Halford Wyrmbane
step
    .isQuestAvailable 51571
    .isQuestTurnedIn 51961
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .accept 52443 >>接任务: |cRXP_WARN_最后的据点|r
    .target Halford Wyrmbane
step
    .isQuestAvailable 51571
    .isOnQuest 51569
    .goto 1161,69.38,26.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign table|r and |cRXP_WARN_select Nazmir|r. Click on the popup under your minimap to turn in the quest.
    >>|cRXP_WARN_如果您意外选择了其他区域，请从指南列表中选择特定的区域指南|r
    .accept 51571 >>接任务: |cRXP_WARN_据点：纳兹米尔|r
    .turnin 51571 >>Turn in Foothold: Nazmir
step
    .isQuestAvailable 51571
    .isOnQuest 51961
    .goto 1161,69.38,26.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign table|r and |cRXP_WARN_select Nazmir|r. Click on the popup under your minimap to turn in the quest.
    >>|cRXP_WARN_如果您意外选择了其他区域，请从指南列表中选择特定的区域指南|r
    .accept 51571 >>接任务: |cRXP_WARN_据点：纳兹米尔|r
    .turnin 51571 >>Turn in Foothold: Nazmir
step
    .isQuestAvailable 51571
    .isOnQuest 52443
    .goto 1161,69.38,26.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign table|r and |cRXP_WARN_select Nazmir|r. Click on the popup under your minimap to turn in the quest.
    >>|cRXP_WARN_如果您意外选择了其他区域，请从指南列表中选择特定的区域指南|r
    .accept 51571 >>接任务: |cRXP_WARN_据点：纳兹米尔|r
    .turnin 51571 >>Turn in Foothold: Nazmir
step
    .isOnQuest 52443
    .goto 1161,69.27,26.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52443 >>Turn in The Final Foothold
    .target Halford Wyrmbane
step
    .isOnQuest 51961
    .goto 1161,69.27,26.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 51961 >>Turn in The Ongoing Campaign
    .accept 51088 >>接任务: |cRXP_WARN_黑暗之心|r
    .target Halford Wyrmbane
step
    .isOnQuest 51689
    .goto 1161,69.26,26.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 51569 >>Turn in The Zandalar Campaign
    .accept 51283 >>接任务: |cRXP_WARN_起程西行|r
    .target Halford Wyrmbane
step
    #completewith next
    .goto 1161,67.95,26.69
    .gossipoption 48164 >>对话: |cRXP_FRIENDLY_杰塔瑞斯将军|r
    .timer 83,Travel to Fort Victory RP
    .target Grand Admiral Jes-Tereth
step
    .goto 863,61.45,39.92
    >>|cRXP_WARN_等待船只到达，当计时器用完时，这将完成。|r
    .complete 51088,2 --Travel to Fort Victory
step
    .goto 863,62.03,41.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱恩·铜须|r
    .turnin 51088 >>Turn in Heart of Darkness
    .accept 51129 >>接任务: |cRXP_WARN_可疑的祭品|r
    .target Brann Bronzebeard
step
    #title 与|cRXP_FRIENDLY_Bat交互|r
    .goto 863,62.11,42.51
    >>与|cRXP_FRIENDLY_Bat交互|r
    .complete 51129,1 --1/1 Bat flown to Zalamar
    .timer 60,Bat Flight RP
    .target Zalamar Messenger Bat
step
    .goto 863,31.16,46.71
    >>|cRXP_WARN_等待|cRXP_FRIENDLY_Bat|r到达，当计时器用完时，该命令将完成。|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱恩·铜须|r
    .turnin 51129 >>Turn in Dubious Offering
    .accept 51167 >>接任务: |cRXP_WARN_希里克之血|r
    .accept 51150 >>接任务: |cRXP_WARN_向逝者致敬|r
    .target Brann Bronzebeard
step
    #title |cRXP_FRIENDLY_Soldier 1|r
    .goto 863,31.11,46.74
    >>与|cRXP_FRIENDLY_Soldier|r交互
    .complete 51150,1,1 --7/7 Dog Tag recovered
step
    #title |cRXP_FRIENDLY_Soldier 2|r
    .goto 863,31.10,47.22
    >>与|cRXP_FRIENDLY_Soldier|r交互
    .complete 51150,1,2 --7/7 Dog Tag recovered
step
    #title |cRXP_FRIENDLY_Soldier 3|r
    .goto 863,31.42,47.6
    >>与|cRXP_FRIENDLY_Soldier|r交互
    .complete 51150,1,3 --7/7 Dog Tag recovered
step
    #title |cRXP_FRIENDLY_Soldier 4|r
    .goto 863,31.75,47.14
    >>与|cRXP_FRIENDLY_Soldier|r交互
    .complete 51150,1,4 --7/7 Dog Tag recovered
step
    #title |cRXP_FRIENDLY_Soldier 5|r
    .goto 863,30.72,45.84
    >>与|cRXP_FRIENDLY_Soldier|r交互
    .complete 51150,1,5 --7/7 Dog Tag recovered
step
    #title |cRXP_FRIENDLY_Soldier 6|r
    .goto 863,30.58,46.18
    >>与|cRXP_FRIENDLY_Soldier|r交互
    .complete 51150,1,6 --7/7 Dog Tag recovered
step
    #title |cRXP_FRIENDLY_Soldier 7|r
    .goto 863,29.64,46.05
    >>与|cRXP_FRIENDLY_Soldier|r交互
    .complete 51150,1,7 --7/7 Dog Tag recovered
step
    .goto 863,29.22,46.52
    >>杀死|cRXP_ENEMY_血巫帕克卡拉|r
    .complete 51167,1 --1/1 Blood Witch Pakkala slain
    .mob Blood Witch Pakkala
step
    .goto 863,31.16,46.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱恩·铜须|r
    .turnin 51167 >>Turn in Blood of Hir'eek
    .turnin 51150 >>Turn in Honoring the Fallen
    .accept 51168 >>接任务: |cRXP_WARN_扎拉玛狂热者|r
    .target Brann Bronzebeard
step
    .goto 863,31.52,46.14,10,0
    .goto 863,31.82,45.6,10,0
    .goto 863,32.3,46.15,10,0
    .goto 863,32.12,47.34,10,0
    .goto 863,31.69,48.19,10,0
#loop
	.line 863,31.52,46.14,31.82,45.6,32.3,46.15,32.12,47.34,31.69,48.19
	.goto 863,31.52,46.14,15,0
	.goto 863,31.82,45.60,15,0
	.goto 863,32.30,46.15,15,0
	.goto 863,32.12,47.34,15,0
	.goto 863,31.69,48.19,15,0
    >>杀死|cRXP_ENEMY_Zalamar狂热分子|r
    .complete 51168,1 --10/10 Zalamar Zealot slain
    .mob Zalamar Zealot
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱恩·铜须|r
    .turnin 51168 >>Turn in Zealots of Zalamar
    .accept 51169 >>接任务: |cRXP_WARN_坠落之洞的飞行|r
    .target Brann Bronzebeard
step
    #title Interact with the Bat
    .goto 863,31.14,47.99
    >>与|cRXP_FRIENDLY_Bat交互|r
    .complete 51169,1 --1/1 Bat flown to Fort Victory
    .timer 63,Bat Flight RP
    .target Zalamar Messenger Bat
step
    .goto 863,62.03,41.60
    >>|cRXP_WARN_等待|cRXP_FRIENDLY_Bat|r到达，当计时器用完时，该命令将完成。|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱恩·铜须|r
    .turnin 51169 >>Turn in Flight from the Fall
    .accept 51281 >>接任务: |cRXP_WARN_祖纳兹曼|r
    .target Brann Bronzebeard
step
    .goto 863,49.97,50.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱恩·铜须|r
    .turnin 51281 >>Turn in Zul'Nazman
    .accept 51279 >>接任务: |cRXP_WARN_纳兹曼尼教徒|r
    .accept 51280 >>接任务: |cRXP_WARN_戈霍恩供品|r
    .target Brann Bronzebeard
step
    #completewith offering
    >>杀死|cRXP_ENEMY_Nazmani巨魔|r
    .complete 51279,1 --15/15 Nazmani troll slain
    .mob Nazmani Warrior
    .mob Sanguine Disciple
    .mob Nazmani Drudge
    .mob Nazmani Ritualist
step
    .goto 863,48.03,52.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r inside the |cFFfa9602tent.|r
    .complete 51280,1,1 --8/8 Offering to G'huun destroyed
step
    .goto 863,47.92,52.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r inside the |cFFfa9602tent.|r
    .complete 51280,1,2 --8/8 Offering to G'huun destroyed
step
    .goto 863,47.77,52.11,5,0
    .goto 863,47.46,52.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r inside the |cFFfa9602tent.|r
    .complete 51280,1,3 --8/8 Offering to G'huun destroyed
step
    .goto 863,47.25,52.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r inside the |cFFfa9602tent.|r
    .complete 51280,1,4 --8/8 Offering to G'huun destroyed
step
    .goto 863,46.99,52.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r inside the |cFFfa9602tent.|r
    .complete 51280,1,5 --8/8 Offering to G'huun destroyed
step
    .goto 863,46.31,50.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r in the |cFFfa9602open world.|r
    .complete 51280,1,6 --8/8 Offering to G'huun destroyed
step
    .goto 863,45.6,51.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r in the |cFFfa9602open world.|r
    .complete 51280,1,7 --8/8 Offering to G'huun destroyed
step
    #label offering
    .goto 863,46.17,52.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_vase|r in the |cFFfa9602open world.|r
    .complete 51280,1,8 --8/8 Offering to G'huun destroyed
step
#loop
	.line 863,46.17,52.43,48.65,52.43,45.50,59.64,45.8,53.58,47.33,51.20
	.goto 863,46.17,52.43,30,0
	.goto 863,48.65,52.43,30,0
	.goto 863,45.50,59.64,30,0
	.goto 863,45.80,53.58,30,0
	.goto 863,47.33,51.20,30,0
    >>杀死|cRXP_ENEMY_Nazmani巨魔|r
    .complete 51279,1 --15/15 Nazmani troll slain
    .mob Nazmani Warrior
    .mob Sanguine Disciple
    .mob Nazmani Drudge
    .mob Nazmani Ritualist
step
    .goto 863,45.71,57.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱恩·铜须|r
    .turnin 51279 >>Turn in Nazmani Cultists
    .turnin 51280 >>Turn in Offerings to G'huun
    .accept 51282 >>接任务: |cRXP_WARN_康拉德队长|r
    .target Brann Bronzebeard
step
    .goto 863,44.98,57.64,5,0
    .goto 863,45.00,57.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Conrad|r inside the |cFFfa9602tent.|r
    .turnin 51282 >>Turn in Captain Conrad
    .accept 51177 >>接任务: |cRXP_WARN_恶魔的教训|r
    .timer 63,Follow Captain Conrad RP
    .target Captain Conrad
step
    .goto 863,45.70,59.73
    >>关注|cRXP_FRIENDLY_Captain Conrad|r
    .complete 51177,1 --1/1 Follow Captain Conrad
    .timer 8, Captain Conrad RP
    .target Captain Conrad
step
    >>杀死|cRXP_ENEMY_康拉德上尉|r
    .complete 51177,2 --1/1 Captain Conrad slain
    .mob Captain Conrad
step
    .goto 863,62.03,41.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱恩·铜须|r
    .turnin 51177 >>Turn in Lessons of the Damned
    .target Brann Bronzebeard
step
    .goto 863,61.79,41.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
    .turnin 52013 >>交任务: |cRXP_FRIENDLY_勇士：约翰·J·基沙恩|r
    .target John J. Keeshan
step
    .goto 863,62.03,41.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱恩·铜须|r
    .accept 51967 >>接任务: |cRXP_WARN_返回伯拉勒斯|r
    .target Brann Bronzebeard
step
    .goto 863,62.06,40.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Desha Stormwallow|r
    .skipgossip
    .complete 51967,1 --Speak to Desha Stormwallow
    .target Desha Stormwallow
step
    .goto 1161,69.27,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 51967 >>Turn in Return to Boralus
    .target Halford Wyrmbane
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA战争战役
#name 4) Island Expedition
#displayname Chapter 4 - Island Expedition
#next 5) Zuldazar Foothold

<< Alliance

step
    .isQuestAvailable 51994
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .goto 1161,69.27,27.01
    .accept 51903 >>接任务: |cRXP_WARN_海岛探险|r
    .target Halford Wyrmbane
step
    .goto 1161,66.87,33.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
    .turnin 51903 >>Turn in Island Expedition
    .accept 51904 >>接任务: |cRXP_WARN_海岛探险|r
    .target Flynn Fairwind
step
    .goto 1161,66.86,33.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn Fairwind|r
    .complete 51904,1 --1/1 Speak with Flynn Fairwind
    .skipgossip 1
    .target Flynn Fairwind
step
    .isOnQuest 51904
    #sticky
    #label AllianceIslandExpedition
    >>完成岛屿探险场景
    >>|cRXP_WARN_如果你在战斗中，杀死他们以避免陷入战斗是很重要的。|r
    .complete 51904,2 --1/1 Explore the Uncharted Island
step
    .isOnQuest 51904
    #title Go to Crystal 1
    .goto 1022,79.25,63.92
    >>|cRXP_WARN_Follow the Arrow.|r
    .scenario 3838,1 --1/1 Investigate the Azerite
step
    .isOnQuest 51904
    #title Mine Crystal 1
    .goto 1022,79.25,63.92
    >>开采|cRXP_PICK_Azerite晶体|r
    .scenario 3839,1,1 --1/3 Mine Azerite Crystals
step
    .isOnQuest 51904
    #title Mine Crystal 2
    .goto 1022,75.62,55.55
    >>开采|cRXP_PICK_Azerite晶体|r
    .scenario 3839,1,2 --2/3 Mine Azerite Crystals
step
    .isOnQuest 51904
    #title Mine Crystal 3
    .goto 1022,77.56,50.15
    >>开采|cRXP_PICK_Azerite晶体|r
    .scenario 3839,1,3 --3/3 Mine Azerite Crystals
step
    .isOnQuest 51904
    #title Azerite Source 2
    .goto 1022,67.19,33.93
    >>|cRXP_WARN_Follow the Arrow.|r
    .scenario 3840,1 --1/1 Investigate the second source of Azerite
    .mob Encrusted Kingscuttler
step
    .isOnQuest 51904
    #title Kill |cRXP_ENEMY_Crab|r
    .goto 1022,64.84,28.35
    >>杀死|cRXP_ENEMY_被诅咒的Kingscatter|r
    .scenario 3841,1 --1/1 Kil the Encrusted Kingscuttler
    .mob Encrusted Kingscuttler
step
    .isOnQuest 51904
    #title Azerite source 3
    .goto 1022,44.96,46.08
    >>|cRXP_WARN_Follow the Arrow.|r
    .scenario 3842,1 --1/1 Investigate the third source of Azerite
    .mob Kunzen Leafeater
step
    .isOnQuest 51904
    >>Kill |cRXP_ENEMY_Akakakoo|r and |TInterface/cursor/crosshair/interact.blp:20|tclick |cRXP_PICK_Pouches/Sacks of Azerite|r
    .goto 1022,28.63,60.76,15,0
    .goto 1022,31.75,58.73,15,0
    .goto 1022,28.8,55.96,15,0
    .scenario 3843,1 --500/500 Take the Azerite from the Kunzen hozen tribe.
    .mob Kunzen Leafeater
    .mob Akakaboo
    .mob Kunzen Hozen
step
    .isOnQuest 51904
    .goto 1022,75.74,73.72
    >>跑回|cFFfa9602飞船|r
    >>|cRXP_WARN_您可以使用ESC跳过即将到来的过场。|r
    .scenario 3844,1 --1/1 Escape from Uncharted Isle before the Horde arrive.
step
    --x(shiek) insert hidden quest here
    .isOnQuest 51904
    #requires AllianceIslandExpedition
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flynn|r
    .goto 1161,66.86,33.24
    .turnin 51904 >>Turn in Island Expedition
    .target Flynn Fairwind
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA战争战役
#name 5) Zuldazar Foothold
#displayname Chapter 5 - Zuldazar Foothold
#next 6) Uniting Kultiras

<< Alliance

step
    .isQuestAvailable 51308
    .isQuestAvailable 51569
    .goto 1161,69.27,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .accept 51569 >>接任务: |cRXP_WARN_赞达拉战役|r
step
    .isQuestAvailable 51308
    .isQuestTurnedIn 51569
    .goto 1161,69.26,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .accept 51961 >>接任务: |cRXP_WARN_继续作战|r
    .target Halford Wyrmbane
step
    .isQuestAvailable 51308
    .isQuestTurnedIn 51961
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .accept 52443 >>接任务: |cRXP_WARN_最后的据点|r
    .target Halford Wyrmbane
step
    .isQuestAvailable 51308
    .isOnQuest 52443
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign table|r and |cRXP_WARN_select Zuldazar|r. Click on the popup under your minimap to turn in the quest.
    .accept 51570 >>接任务: |cRXP_WARN_据点：祖达萨|r
    .turnin 51570 >>Turn in Foothold: Zuldazar
    .goto 1161,69.39,26.98
    .turnin 52443 >>Turn in The Final Foothold
    .goto 1161,69.27,26.98
    .target Halford Wyrmbane
    .timer 45,Halford Speech RP
step
    .isQuestAvailable 51308
    .isOnQuest 51961
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign table|r and |cRXP_WARN_select Zuldazar|r. Click on the popup under your minimap to turn in the quest.
    .goto 1161,69.39,26.98
    .turnin 51961 >>Turn in The Ongoing Campaign
    .goto 1161,69.27,26.98
    .target Halford Wyrmbane
    .timer 45,Halford Speech RP
step
    .isQuestAvailable 51308
    .isOnQuest 51569
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalar Campaign table|r and |cRXP_WARN_select Zuldazar|r. Click on the popup under your minimap to turn in the quest.
    .accept 51570 >>接任务: |cRXP_WARN_据点：祖达萨|r
    .turnin 51570 >>Turn in Foothold: Zuldazar
    .goto 1161,69.39,26.98
    .turnin 51569 >>Turn in The Zandalar Campaign
    .goto 1161,69.27,26.98
    .target Halford Wyrmbane
    .timer 45,Halford Speech RP
step
    .isOnQuest 51569
    .goto 1161,69.27,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 51569 >>Turn in The Zandalar Campaign
step
    .isOnQuest 51961
    .goto 1161,69.26,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 51961 >>Turn in The Ongoing Campaign
    .target Halford Wyrmbane
step
    .isOnQuest 52443
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52443 >>Turn in The Final Foothold
    .target Halford Wyrmbane
step
    #completewith Brigadier Thom
    .goto 1161,69.27,26.98
    .gossipoption 49384 >>对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .timer 44, Halford Wyrmbane RP
    .complete 51308,1 --1/1 Listen to Halford Wyrmbane's battle plan
    .target Halford Wyrmbane
step
    #completewith Brigadier Thom
    .goto 1161,67.96,26.66
    .gossipoption 48168 >>对话: |cRXP_FRIENDLY_杰塔瑞斯将军|r
    .target Grand Admiral Jes-Tereth
step
    #label Brigadier Thom
    .goto 862,77.54,54.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brigadier Thom|r
    .turnin 51308 >>交任务: |cRXP_FRIENDLY_祖达萨据点|r
    .accept 51201 >>接任务: |cRXP_WARN_巨魔的故事|r
    .target Brigadier Thom
step
    .goto 862,77.51,54.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Captured Zandalari Troll|r
    >>|cRXP_WARN_您可以使用ESC跳过即将到来的过场。|r
    .skipgossip 1
    .complete 51201,1 --1/1 Speak with Captured Zandalari Troll
    .target Captured Zandalari Troll
step
    .goto 862,77.54,54.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brigadier Thom|r
    .turnin 51201 >>Turn in The Troll's Tale
    .accept 51190 >>接任务: |cRXP_WARN_暂时得救|r
    .accept 51544 >>接任务: |cRXP_WARN_拆卸火炮|r
    .target Brigadier Thom
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Medic Feorea|r and |cRXP_FRIENDLY_Degdod|r
    .accept 51191 >>接任务: |cRXP_WARN_全部救出|r
    .goto 862,77.13,55.54
    .accept 51192 >>接任务: |cRXP_WARN_配额匮乏|r
    .accept 51193 >>接任务: |cRXP_WARN_那是我的|r
    .goto 862,77.13,55.59
    .target Degdod
    .target Medic Feorea
step
    #completewith ZandalariForsakens
    >>杀死|cRXP_ENEMY_Zandalari|r和|cRXX_ENEMY_Forsakens|r
    .complete 51190,2 --8/8 Zandalari slain
    .complete 51190,1 --8/8 Forsaken slain
    .mob Zandalari Quickblade
    .mob Forsaken Deathguard
    .mob Zandalari Axe Thrower
    .mob Bleak Conjurer
step
    .goto 862,78.46,52.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,1 --8/8 Bundle of Supplies
step
    .goto 862,78.51,51.95
    >>与|cRXP_FRIENDLY_受伤水手交互|r
    .complete 51191,1,1 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,78.55,53.05
    >>与|cRXP_FRIENDLY_受伤水手交互|r
    .complete 51191,1,2 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,79.00,53.96
    >>与|cRXP_FRIENDLY_受伤水手交互|r
    .complete 51191,1,3 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,79.71,53.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,2 --8/8 Bundle of Supplies
step
    .goto 862,79.52,55.02
    >>与|cRXP_FRIENDLY_受伤水手交互|r
    .complete 51191,1,4 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,80.14,55.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,3 --8/8 Bundle of Supplies
step
    .goto 862,80.19,55.26
    >>与|cRXP_FRIENDLY_受伤水手交互|r
    .complete 51191,1,5 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,80.96,54.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,4 --8/8 Bundle of Supplies
step
    .goto 862,80.90,53.69
    >>与|cRXP_FRIENDLY_受伤水手交互|r
    .complete 51191,1,5 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,80.90,53.69
    >>与|cRXP_FRIENDLY_受伤水手交互|r
    .complete 51191,1,6 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,80.81,53.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,5 --8/8 Bundle of Supplies
step
    .goto 862,80.93,53.44
    >>与|cRXP_FRIENDLY_受伤水手交互|r
    .complete 51191,1,7 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,80.89,53.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,6 --8/8 Bundle of Supplies
step
    .goto 862,81.09,53.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,7 --8/8 Bundle of Supplies
step
    .goto 862,81.47,53.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r on the Ground.
    .complete 51192,1,8 --8/8 Bundle of Supplies
step
    .goto 862,81.52,53.78
    >>与|cRXP_FRIENDLY_受伤水手交互|r
    .complete 51191,1,8 --8/8 Injured Sailor Healed
    .use 160433
    .target Injured Shipwrecked Sailor
step
    .goto 862,83.35,54.73
    >>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Cannon|r
    .complete 51544,1,1 --3/3 Cannons destroyed
step
    .goto 862,83.34,54.4
    >>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Cannon|r
    .complete 51544,1,2 --3/3 Cannons destroyed
step
    .goto 862,83.34,54.21
    >>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Cannon|r
    .complete 51544,1,3 --3/3 Cannons destroyed
step
    #label ZandalariForsakens
    .goto 862,81.94,51.43
    >>杀死|cRXP_ENEMY_少校Alan Hawkins |r并掠夺他的|T133041:0|t|cRXP-loot_Hammer |r
    |cRXP_WARN_Kill the remaining Zandalari and Forsakens|r
    .complete 51193,1 --1/1 Degdod's Hammer
step
#loop
	.line 862,80.71,52.64;79.85,53.56,80.82,55.67,82.23,54.63
	.goto 862,80.71,80.82,15,0
	.goto 862,53.56,82.23,15,0
    >>杀死|cRXP_ENEMY_Zandalari|r和|cRXX_ENEMY_Forsakens|r
    .complete 51190,2 --8/8 Zandalari slain
    .complete 51190,1 --8/8 Forsaken slain
    .mob Zandalari Quickblade
    .mob Forsaken Deathguard
    .mob Zandalari Axe Thrower
    .mob Bleak Conjurer
step
    .goto 862,77.54,54.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brigadier Thom|r
    .turnin 51190 >>Turn in Granting a Reprieve
    .turnin 51544 >>Turn in Disarming the Cannons
    .target Brigadier Thom
step
    .goto 862,77.12,55.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Medic Feorea|r
    .turnin 51191 >>Turn in Save Them All
    .target Medic Feorea
step
    .goto 862,77.13,55.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Degdod|r
    .turnin 51192 >>Turn in A Lack of Surplus
    .turnin 51193 >>Turn in That One's Mine
    .target Degdod
step
    .goto 862,77.50,55.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔希·钢烁|r
    .accept 51418 >>接任务: |cRXP_WARN_希巴拉|r
    .target Kelsey Steelspark
step
    .goto 862,80.35,55.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_boat|r
    .complete 51418,1 --1/1 Take rowboat to Xibala
    .timer 128,Travel to Xibala RP
step
    .goto 862,40.74,70.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anvil-Thane Thurgaden|r
    .turnin 51418 >>Turn in Xibala
    .accept 51331 >>接任务: |cRXP_WARN_内藏玄机|r
    .accept 51309 >>接任务: |cRXP_WARN_拉格纳罗斯之石|r
    .target Anvil-Thane Thurgaden
step
    .goto 862,39.56,72.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,1 --9/9 Firelands Slag
step
    .goto 862,39.62,72.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,2 --9/9 Firelands Slag
step
    .goto 862,39.57,73.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
    .complete 51331,1,1 --4/4 Dark Iron Mole Machine
step
    .goto 862,39.63,73.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,3 --9/9 Firelands Slag
step
    .goto 862,39.63,73.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,4 --9/9 Firelands Slag
step
    .goto 862,39.58,73.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,5 --9/9 Firelands Slag
step
    .goto 862,39.37,73.7
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
    .complete 51331,1,2 --4/4 Dark Iron Mole Machine
step
    .goto 862,39.15,73.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,6 --9/9 Firelands Slag
step
    .goto 862,39.11,73.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,7 --9/9 Firelands Slag
step
    .goto 862,39.05,73.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,8 --9/9 Firelands Slag
step
    .goto 862,39.12,73.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Slag|r
    .complete 51309,1,9 --9/9 Firelands Slag
step
    .goto 862,39.1,72.98
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
    .complete 51331,1,3 --4/4 Dark Iron Mole Machine
step
    .goto 862,39.03,72.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
    .complete 51331,1,4 --4/4 Dark Iron Mole Machine
step
    .goto 862,40.74,70.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anvil-Thane Thurgaden|r
    .turnin 51331 >>Turn in Mole Machinations
    .turnin 51309 >>Turn in Rocks of Ragnaros
    .accept 51359 >>接任务: |cRXP_WARN_火焰之地碎片|r
    .target Anvil-Thane Thurgaden
step
    .goto 862,40.65,70.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Unstable Magma|r
    .complete 51359,1 --Magma Elemental stabilized
    .use 160058
    .target Unstable Magma
step
    .goto 862,32.92,69.69
    >>要有效杀死|cRXP_ENEMY_Goblin|r，请在可用时使用|T135808:0|t（2），并在|T135808-0|t（2）冷却时切换到|T525023:0|t。
    .complete 51359,2 --200/200 Bilgewater Goblin slain
step
    #completewith next
    +按下技能|T236372:0|t解除岩浆元素
step
    .goto 862,40.74,70.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anvil-Thane Thurgaden|r
    .turnin 51359 >>Turn in Fragment of the Firelands
    .target Anvil-Thane Thurgaden
step
    .goto 862,40.77,70.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔希·钢烁|r
    .turnin 52003 >>交任务: |cRXP_FRIENDLY_勇士：凯尔希·钢烁|r
    .accept 51968 >>接任务: |cRXP_WARN_返回伯拉勒斯|r
    .target Kelsey Steelspark
step
    .goto 862,40.46,71.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daria|r
    .complete 51968,1 --Speak to Daria Smithson
    .skipgossip 1
    .target Daria Smithson
step
    .goto 1161,69.29,26.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 51968 >>Turn in Return to Boralus
    .target Halford Wyrmbane
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA战争战役
#name 6) Uniting Kultiras
#displayname Chapter 6 - Uniting Kultiras
#next 7) Ready for War

<< Alliance

step
    .isOnQuest 51918
    >>在|cRXP_WARN_Tiragarde Sound中为Proudmoore Admiralty|r完成任务，在|cRXP_WARN_Stormsong中为Storm’s Wake|r完成请求，在|cRXP_WARN_Trustvar中为Embers Order完成任务|r
    .complete 51918,1 -- Proudmoore Admiralty (Friendly)
    .complete 51918,2 -- Storm's Wake (Friendly)
    .complete 51918,3 -- Order of Embers (Friendly)
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA战争战役
#name 7) Ready for War
#displayname Chapter 7 - Ready for War
#next 8) Tides of Vengeance

<< Alliance

step
    .goto 1161,69.28,26.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .accept 52026 >>接任务: |cRXP_WARN_海外暗杀|r
    .target Halford Wyrmbane
step
    .isOnQuest 52026
    .goto 1161,67.95,26.71
    .gossipoption 48163 >>对话: |cRXP_FRIENDLY_杰塔瑞斯将军|r
    .target Grand Admiral Jes-Tereth
step
    .goto 864,37.71,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52026 >>Turn in Overseas Assassination
    .accept 52027 >>接任务: |cRXP_WARN_沃顿计划|r
    .target Halford Wyrmbane
step
    .isOnQuest 52027
    .goto 864,37.71,35.95
    .gossipoption 48912 >>对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .timer 34, Halford Wyrmbane RP
    .target Halford Wyrmbane
step
    .goto 864,37.71,35.95
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52027,1 --1/1 Discuss Halford's strategy
step
    .isOnQuest 52027
    .goto 864,37.76,35.92
    .gossipoption 48913 >>对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .timer 6,Shandris RP
    .target Shandris Feathermoon
step
    .goto 864,37.76,35.92
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52027,2 --1/1 Discuss Shandris's strategy
step
    .goto 864,37.70,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52027 >>Turn in The Vol'dun Plan
    .accept 52028 >>接任务: |cRXP_WARN_搜查沙漠|r
    .target Halford Wyrmbane
step
    .goto 864,41.06,47.64
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52028,1 --1/1 Search for Horde activity
    .timer 5, Shandris RP
step
    .goto 864,41.06,47.64,5,0
    .goto 864,40.75,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52028 >>Turn in Comb the Desert
    .accept 52029 >>接任务: |cRXP_WARN_脏活累活|r
    .target Shandris Feathermoon
step
    .goto 864,41.09,48.75
    >>杀死|cRXP_ENEMY_Nazrara|r并掠夺他获得|T1505954:0|t|cRXX_loot_圣物令|r
    .complete 52029,1 --1/1 Reliquary Orders
    .mob Nazlara
step
    .goto 864,40.70,47.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52029 >>Turn in Dirty Work
    .accept 52030 >>接任务: |cRXP_WARN_继续搜查|r
    .target Halford Wyrmbane
step
    .goto 864,45.11,58.91
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52030,1 --1/1 Search for more Reliquary operatives
step
    .goto 864,44.99,58.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52030 >>Turn in Keep Combing
    .accept 52031 >>接任务: |cRXP_WARN_遗物学会典范|r
    .target Shandris Feathermoon
step
    .goto 864,45.25,60.61
    >>杀死|cRXP_ENEMY_Elisa Veilsong|r并掠夺他|T237388:0|t|cRXP-loot_[圣物地图：Vol'dun]|r
    .complete 52031,1 --1/1 Reliquary Map: Vol'dun
    .mob Elisa Veilsong
step
    .goto 864,44.96,58.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52031 >>Turn in Classic Reliquary
    .accept 52032 >>接任务: |cRXP_WARN_搜查不止|r
    .target Halford Wyrmbane
step
    .goto 864,41.08,72.38
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52032,1 --1/1 Find the Exiles' Enclave
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r, |cRXP_FRIENDLY_珊蒂斯·羽月|r, Explosioneer Zoidfuse
    .turnin 52032 >>Turn in Never Stop Combing
    .accept 52035 >>接任务: |cRXP_WARN_即兴求生|r
    .goto 864,41.08,72.62
    .accept 52034 >>接任务: |cRXP_WARN_给赞达拉的讯息|r
    .goto 864,41.12,72.57
    .accept 52036 >>接任务: |cRXP_WARN_这儿有羊驼|r
    .goto 864,41.14,72.41
    .target Halford Wyrmbane
    .target Shandris Feathermoon
    .target Explosioneer Zoidfuse
step
    .goto 864,40.65,72.51,5,0
    .goto 864,41.08,72.62
    >>与|cRXP_ENEMY_Lost Alpaca互动|r并将其带回|cRXP_FRIENDLY_Explosioner Zoidfuse|r
    .complete 52036,1 --1/1 Bring a Lost Alpaca back to Explosioneer Zoidfuse
    .use 161633
    .mob Lost Alpaca
    .target Explosioneer Zoidfuse
step
    .goto 864,41.08,72.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52036 >>Turn in They Have Alpacas Here
    .target Halford Wyrmbane
step
    #completewith jug
    >>杀死|cRXP_ENEMY_Zandalari流放|r
    .complete 52034,1 --12/12 Zandalari Exile slain
    --x shiek review: better logic here
    .mob Zandalari Exile
step
    .isOnQuest 52035
    .goto 864,40.9,74.26
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Water Jug|r
step
    .isOnQuest 52035
    .goto 864,40.86,74.19
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Dunemelon|r
step
    .isOnQuest 52035
    .goto 864,40.58,74.27
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Water Jug|r
step
    .isOnQuest 52035
    .goto 864,40.74,74.75,5,0
    .goto 864,40.55,74.73
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Dunemelon|r
step
    .isOnQuest 52035
    .goto 864,40.3,75.17
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Dunemelon|r
step
    .isOnQuest 52035
    .goto 864,40.23,75.46
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Water Jug|r
step
    .isOnQuest 52035
    .goto 864,40.04,75.57,5,0
    .goto 864,40.4,75.51,5,0
    .goto 864,40.66,75.53,5,0
    .goto 864,40.43,75.27,5,0
    .goto 864,40.23,75.36,5,0
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Dunemelon|r or |cRXP_PICK_Zandalari Water Jug|r
step
    .isOnQuest 52035
    .goto 864,40.04,75.57,5,0
    .goto 864,40.4,75.51,5,0
    .goto 864,40.66,75.53,5,0
    .goto 864,40.43,75.27,5,0
    .goto 864,40.23,75.36,5,0
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Dunemelon|r or |cRXP_PICK_Zandalari Water Jug|r
step
    .isOnQuest 52035
    .goto 864,40.66,75.53,5,0
    .goto 864,40.42,75.28,5,0
    .goto 864,40.25,75.35,5,0
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Water Jug|r
step
    #label jug
    .isOnQuest 52035
    .goto 864,40.42,75.28,5,0
    .goto 864,40.25,75.35,5,0
    .cast 6478 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Zandalari Water Jug|r
    >>|cRXP_WARN_如果任务完成，手动跳过这一步。|r
step
#loop
	.line 864,40.02,76.13,40.73,76.73,41.12,76.11,41.12,73.76
	.goto 864,40.02,76.13,15,0
	.goto 864,40.73,76.73,15,0
	.goto 864,41.12,76.11,15,0
	.goto 864,41.12,73.76,15,0
    >>杀死|cRXP_ENEMY_Zandalari流放|r
    .complete 52034,1 --12/12 Zandalari Exile slain
    .mob Zandalari Exile
step
    .goto 864,41.1,72.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52034 >>Turn in A Message to the Zandalariw
    .target Shandris Feathermoon
step
    .goto 864,41.08,72.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52035 >>Turn in Improvised Survival
    .target Halford Wyrmbane
step
    .goto 864,41.08,72.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .accept 52038 >>接任务: |cRXP_WARN_兵分两路|r
    .target Halford Wyrmbane
step
    .goto 864,29.93,78.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52038 >>Turn in Splitting Up
    .accept 52039 >>接任务: |cRXP_WARN_延期死亡|r
    .accept 52040 >>接任务: |cRXP_WARN_万箭齐发|r
    .target Shandris Feathermoon
step
    .goto 864,29.56,77.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,1 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,29.01,76.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,2 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,28.84,75.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,3 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,28.7,75.62
    >>杀死|cRXP_ENEMY_Arlethal Sunwatch|r
    .complete 52040,1 --1/1 Arlethal Sunwatcher slain
    .mob Arlethal Sunwatcher
step
    .goto 864,28.69,75.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,4 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,28.56,75.8
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,5 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,28.19,76.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,6 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,28.68,76.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,7 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,28.91,77.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Remote-Detonation Deathbomb.|r
    .complete 52039,1,8 --8/8 Remote-Detonation Deathbomb buried
step
    .goto 864,29.93,78.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52039 >>Turn in Delayed Deathification
    .turnin 52040 >>Turn in Full of Arrows
    .accept 52041 >>接任务: |cRXP_WARN_向维姆班恩汇报|r
    .target Shandris Feathermoon
step
    .goto 864,39.65,83.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52041 >>Turn in Report to Wyrmbane
    .accept 52042 >>接任务: |cRXP_WARN_大爆炸|r
    .target Halford Wyrmbane
step
    .isOnQuest 52042
    .goto 864,39.79,83.82
    .gossipoption 48925 >>Talk to |cRXP_FRIENDLY_Explosioneer Zoidfuse|r
    .timer 96, Vol'dun Explosion Protocol
    .target Explosioneer Zoidfuse
step
    >>|cRXP_WARN_垃圾邮件|T133015:0|t（1）、|T132995:0|t（2）和|T237290:0|t|r
    >>|cFFEB144C完成任务后，它们将成为无法跳过的过场|r
    .complete 52042,1 --1/1 Initiate the Vol'dun Explosion Protocol
step
    .goto 864,39.64,83.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52042 >>Turn in The Big Boom
    .accept 52146 >>接任务: |cRXP_WARN_血之沙|r
    .target Halford Wyrmbane
step
    .goto 864,38.69,83.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_7th Legion Spyglass|r
    >>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
    .complete 52146,2 --1/1 Wait for Kelsey Steelspark to Talk
    .complete 52146,1 --1/1 Wait for Guzbert Gizmoflank to Talk
step
    .goto 864,39.65,83.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52146 >>交任务: |cRXP_FRIENDLY_血之沙|r
    .accept 53069 >>接任务: |cRXP_WARN_行动代号：血箭|r
    .target Halford Wyrmbane
step
    #completewith next
    .cooldown item,6948,>0,1
    .hs >>Hearthstone to Boralus
step
    .goto 864,39.65,83.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52146 >>交任务: |cRXP_FRIENDLY_血之沙|r
    .accept 53069 >>接任务: |cRXP_WARN_行动代号：血箭|r
    .target Halford Wyrmbane
step
    .goto 1161,69.28,26.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 53069 >>Turn in Operation: Blood Arrow
    .accept 52147 >>接任务: |cRXP_WARN_削弱部落|r
    .target Halford Wyrmbane
step
    .isOnQuest 52147
    .goto 1161,67.95,26.71
    .gossipoption 48165 >>对话: |cRXP_FRIENDLY_杰塔瑞斯将军|r
    .target Grand Admiral Jes-Tereth
step
    .goto 863,61.98,41.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52147 >>Turn in Crippling the Horde
    .accept 52150 >>接任务: |cRXP_WARN_杀死一名黑暗游侠|r
    .target Shandris Feathermoon
step
    .isOnQuest 52150
    .goto 863,61.98,41.25
    .gossipoption 48904 >>对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .timer 32, Shandris RP
    .target Shandris Feathermoon
step
    #completewith next
    .goto 863,62.34,41.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Selina Duskraven|r
    .fp >>获取胜利堡飞行路线
    .target Selina Duskraven
step
    .goto 863,61.98,41.25
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52150,1 --1/1 Shandris's plan explained
step
    .goto 863,61.97,41.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52150 >>Turn in How to Kill a Dark Ranger
    .accept 52156 >>接任务: |cRXP_WARN_受难的始祖龟|r
    .target Shandris Feathermoon
step
    .goto 863,61.78,41.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布莱恩·铜须|r
    .accept 52158 >>接任务: |cRXP_WARN_野蛮狩猎|r
    .target Brann Bronzebeard
step
    #completewith Tortollan
    >>杀死|cRXP_ENEMY_Blood Crawgs|r、|cRXD_ENEMY_Loa-Grant Scavengers|r和|cRXP_ENEMY_Crawg Riders|r
    .complete 52158,1 --15/15 Blood trolls and allies slain
    .mob Blood Crawgs
    .mob Loa-Gutter Scavengers
    .mob Crawg Riders
step
    .goto 863,58.91,28.52
    >>与|cRXP_FRIENDLY_Tortollan Captive|r交互
    .complete 52156,1,1 --6/6 Tortollan captive rescued
    .target Tortollan Captive
step
    .goto 863,59.58,27.77
    >>与|cRXP_FRIENDLY_Tortollan Captive|r交互
    .complete 52156,1,2 --6/6 Tortollan captive rescued
    .target Tortollan Captive
step
    .goto 863,60.87,27.47
    >>与|cRXP_FRIENDLY_Tortollan Captive|r交互
    .complete 52156,1,3 --6/6 Tortollan captive rescued
    .target Tortollan Captive
step
    .goto 863,61.73,26.24
    >>与|cRXP_FRIENDLY_Tortollan Captive|r交互
    .complete 52156,1,4 --6/6 Tortollan captive rescued
    .target Tortollan Captive
step
    .goto 863,61.62,25.06
    >>与|cRXP_FRIENDLY_Tortollan Captive|r交互
    .complete 52156,1,5 --6/6 Tortollan captive rescued
    .target Tortollan Captive
step
    #label Tortollan
    .goto 863,59.76,25.16
    >>与|cRXP_FRIENDLY_Tortollan Captive|r交互
    .complete 52156,1,6 --6/6 Tortollan captive rescued
    .target Tortollan Captive
step
#loop
	.line 863,60.76,26.64,61.98,27.78,63.06,26.52,62.95,24.34
	.goto 863,60.76,26.64,15,0
	.goto 863,61.98,27.78,15,0
	.goto 863,63.06,26.52,15,0
	.goto 863,62.95,24.34,15,0
    >>杀死|cRXP_ENEMY_Blood Crawgs|r，|cRXD_ENEMY_Loa-Gutter清道夫|r和|cRXP_ENEMY_Crawg Riders|r
    .complete 52158,1 --15/15 Blood trolls and allies slain
    .mob Blood Crawgs
    .mob Loa-Gutter Scavengers
    .mob Crawg Riders
step
    .isOnQuest 52156
    .goto 863,51.27,21.8
    .gossipoption 49091 >>Talk to |cRXP_FRIENDLY_Rescued Tortollan|r
    .timer 43, Tortollan
    .target Rescued Tortollan
step
    .goto 863,51.27,21.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
    .turnin 52158 >>Turn in The Savage Hunt
    .target John J. Keeshan
step
    #completewith next
    .goto 863,50.81,20.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joseph Redfield|r
    .fp >>获取Redfield的Watch飞行路线
    .target Joseph Redfield
step
    .goto 863,51.27,21.8
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52156,2 --1/1 Speak to the rescued tortollan in Redfield's Watch
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r, |cRXP_FRIENDLY_约翰·J·基沙恩|r
    .turnin 52156 >>Turn in Tortollans in Distress
    .accept 52170 >>接任务: |cRXP_WARN_终结艾蕾尔|r
    .goto 863,51.34,21.86
    .accept 52171 >>接任务: |cRXP_WARN_唯一选项：火|r
    .accept 52172 >>接任务: |cRXP_WARN_就不该来这儿|r
    .goto 863,51.27,21.89
    .target Shandris Feathermoon
    .target John J. Keeshan
step
    #completewith Armory supplies
    >>杀死|cRXP_ENEMY_部落士兵|r
    .complete 52172,1 --12/12 Horde soldiers slain
    .mob Darkspear Hunter
    .mob Horde Warbringer
    .mob Horde Shaman
step
    .goto 863,41.26,27.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Food cache|r
    .complete 52171,3 --1/1 Food cache destroyed
step
    .goto 863,39.93,28.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Bwonsamdi offerings.|r
    .complete 52171,1 --1/1 Bwonsamdi offerings destroyed
step
    .goto 863,37.67,28.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Medicinal supplies|r
    .complete 52171,2 --1/1 Medicinal supplies destroyed
step
    .goto 863,35.90,29.28
    >>杀死|cRXP_ENEMY_Ranger Captain Areiel|r并掠夺|T23746:0|t|cRXP-loot_[部落导弹]|r
    .complete 52170,1 --1/1 Horde Missive
    .mob Ranger Captain Areie
step
    #label Armory supplies
    .goto 863,37.87,32.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Armory supplies|r
    .complete 52171,4 --1/1 Armory supplies destroyed
step
    #completewith
    >>杀死|cRXP_ENEMY_部落士兵|r
    .complete 52172,1 --12/12 Horde soldiers slain
    .mob Darkspear Hunter
    .mob Horde Warbringer
    .mob Horde Shaman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r, |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52171 >>Turn in One Option: Fire
    .turnin 52172 >>Turn in They Can't Stay Here
    .goto 863,51.28,21.90
    .turnin 52170 >>Turn in Ending Areiel
    .accept 52208 >>接任务: |cRXP_WARN_首脑会晤|r
    .goto 863,51.34,21.87
    .target John J. Keeshan
    .target Shandris Feathermoon
step
    .goto 863,42.13,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .skipgossip 140519,1
    .complete 52208,1 --1/1 Speak with Shandris Feathermoon
    .target Shandris Feathermoon
step
    .isOnQuest 52208
    .goto 863,40.56,43.76,10 >>使用|cFFfa9602horde营地附近的|T236875:0|t[隐形烧瓶]|r
    .use 163196
step
    .isOnQuest 52208
    .goto 863,40.02,43.77,10 >>靠近|cRXP_ENEMY_Princess Talanji |r和|cRXX_ENEMY_Rokhan|r
    >>|cRXP_WARN_如果您还没有靠近|cFFfa9602秩序营地，请使用|r|T236875:0|t[Invisibility Flask]|cRXP_WARN_i|r|r
    .timer 66, Horde Meeting RP
step
    .isOnQuest 52208
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52208,2 --1/1 Listen on Horde Meeting
step
    .goto 863,42.14,39.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52208 >>Turn in Meeting of the Minds
    .accept 52219 >>接任务: |cRXP_WARN_任务目标：鲜血王子德利文|r
    .target Shandris Feathermoon
step
    .isOnQuest 52219
    .goto 863,20.14,60.75
    .gossipoption 48851 >>对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
    .timer 20, Blood Prince RP
    .target John J. Keeshan
step
    .goto 863,20.34,60.80,10,0
    .goto 863,20.62,60.74
    >>伤害|cRXP_ENEMY_血王子德莱文|r低于60%。
    .complete 52219,2 --1/1 Kill Blood Prince Dreven and cohorts
    .mob Blood Prince Dreven
    .mob Blood Marquis
    .mob Blood Marquess
step
    .goto 863,61.97,41.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52219 >>Turn in Target: Blood Prince Dreven
    .target Shandris Feathermoon
step
    #completewith next
    .goto 863,62.06,40.08
    .gossipoption 48827 >>Talk to |cRXP_FRIENDLY_Desha Stormwallow|r
    .target Desha Stormwallow
step
    .goto 1161,69.29,26.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .accept 52154 >>接任务: |cRXP_WARN_下一个目标|r
    .timer 50, Debate RP
step
    .goto 1161,69.29,26.98
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52154,1 --1/1 Debate resolved
step
    .goto 1161,69.29,26.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52154 >>Turn in Our Next Target
    .target Halford Wyrmbane
step
    .goto 1161,69.32,26.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .accept 52173 >>接任务: |cRXP_WARN_虚空精灵准备就绪|r
    .target Magister Umbric
step
    .isOnQuest 52173
    .goto 1161,67.93,26.69
    .gossipoption 48167 >>对话: |cRXP_FRIENDLY_杰塔瑞斯将军|r
    .complete 52173,1 --1/1 Speak with Jes-Tereth to sail to Zuldazar (Optional)
    .target Grand Admiral Jes-Tereth
step
    .goto 862,40.69,70.82
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52173,2 --1/1 Meet Magister Umbric in Xibala
step
    .goto 862,40.59,70.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .turnin 52173 >>Turn in The Void Elves Stand Ready
    .accept 52205 >>接任务: |cRXP_WARN_锈水矿脉的末日|r
    .accept 52204 >>接任务: |cRXP_WARN_虚空对策|r
    .accept 52203 >>接任务: |cRXP_WARN_搜寻踪迹|r
    .target Magister Umbric
step
    #completewith gryphon
    .isWorldQuestAvailable 862,52250
    +|cFFEB144C忽略世界任务，因为它不会影响你解锁联盟种族的进度|r
step
    #completewith Orders
    >>杀死|cRXP_ENEMY_妖精|r
    .complete 52205,1 --12/12 Bilgewater goblin slain
    .mob Bilgewater Hauler
    .mob Bilgewater Boomer
    .mob Bilgewater Driller
step
    #completewith Orders
    >>Kill |cRXP_ENEMY_Bilgewater Fracker|r or |TInterface/cursor/crosshair/interact.blp:20|tClick them.
    .complete 52204,1 --4/4 Bilgewater Fracker destroyed
    .use 161422
    .mob Bilgewater Fracker
step
    #label Orders
    .goto 862,38.69,72.21,25,0
    .goto 862,36.74,71.47,25,0
    .goto 862,35.29,66.65
    >>杀死|cRXP_ENEMY_Boss Blasmouth|r并从Gallywix掠夺|T134328:0|t|cRXP_loot_Orders|r
    .complete 52203,1 --1/1 Orders from Gallywix
    .mob Boss Blastmouth
step
    #completewith next
    >>杀死|cRXP_ENEMY_妖精|r
    .complete 52205,1 --12/12 Bilgewater goblin slain
    .mob Bilgewater Hauler
    .mob Bilgewater Boomer
    .mob Bilgewater Driller
step
#loop
	.line 862,34.9,69.06,34.52,70.6,33.88,71.61,36.89,71.35,35.8,72.14
	.goto 862,34.90,69.06,25,0
	.goto 862,34.52,70.60,25,0
	.goto 862,33.88,71.61,25,0
	.goto 862,36.89,71.35,25,0
	.goto 862,35.80,72.14,25,0
    >>Kill |cRXP_ENEMY_Bilgewater Fracker|r or |TInterface/cursor/crosshair/interact.blp:20|tClick them.
    .complete 52204,1 --4/4 Bilgewater Fracker destroyed
    .use 161422
    .mob Bilgewater Fracker
step
#loop
	.line 862,34.9,69.06,34.52,70.6,33.88,71.61,36.89,71.35,35.8,72.14
	.goto 862,34.90,69.06,25,0
	.goto 862,34.52,70.60,25,0
	.goto 862,33.88,71.61,25,0
	.goto 862,36.89,71.35,25,0
	.goto 862,35.80,72.14,25,0
    >>杀死|cRXP_ENEMY_Goblin|r
    .complete 52205,1 --12/12 Bilgewater goblin slain
    .mob Bilgewater Hauler
    .mob Bilgewater Boomer
    .mob Bilgewater Driller
step
    #label gryphon
    .goto 862,40.59,70.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .turnin 52205 >>Turn in Bilgewater Bonanza Go Boom
    .turnin 52204 >>Turn in The Void Solution
    .turnin 52203 >>Turn in Find the Paper Trail
    .accept 52241 >>接任务: |cRXP_WARN_贪婪地精的天堂|r
    .timer 8, Void Portal RP
    .target Magister Umbric
step
    .goto 862,40.55,70.64
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Void Portal.|r
    .complete 52241,1 --1/1 Use Void Portal in Xibala (Optional)
    .complete 52241,2 --1/1 Meet Umbric in Atal'Dazar
step
    .goto 862,40.33,39.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .turnin 52241 >>Turn in A Greedy Goblin's Paradise
    .accept 52247 >>接任务: |cRXP_WARN_追踪加里维克斯|r
    .target Magister Umbric
step
    .goto 862,40.38,43.28
    >>|cRXP_WARN_Follow the Arrow.|r
    >>|cRXP_WARN_不要穿过隧道。|r
    .complete 52247,1 --1/1 Gallywix found
step
    .goto 862,40.41,44.31
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52247,2 --1/1 Gallywix's Personal Teleporter used
step
    .goto 76,21.63,52.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r near you.
    .turnin 52247 >>Turn in Chasing Gallywix
    .accept 52259 >>接任务: |cRXP_WARN_此愁难消|r
    .target Magister Umbric
step
    .goto 76,21,60.14
    >>杀死|cRXP_ENEMY_Pleasure Palace访客|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Party Objects.|r
    .complete 52259,1 --Crash Gallywix's Party (100%)
    .mob Pleasure Palace Golfer
    .mob Pleasure Palace Caddie
    .mob Pleasure Palace VIP
step
    .goto 76,21.39,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r near you.
    .turnin 52259 >>Turn in I Take No Pleasure In This
    .accept 52260 >>接任务: |cRXP_WARN_道尽途穷|r
    .target Magister Umbric
step
    .goto 76,21.07,60.56
    >>杀死|cRXP_ENEMY_Trade王子Gallywix|r
    .complete 52260,1 --1/1 Trade Prince Gallywix slain
    .mob Trade Prince Gallywix
step
    .goto 76,21.07,60.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r near you.
    .turnin 52260 >>Turn in We Have Him Cornered
    .accept 52261 >>接任务: |cRXP_WARN_加里维克斯跑了|r
    .timer 8, Void Portal RP
    .target Magister Umbric
step
    .isOnQuest 52261
    .goto 76,21.07,60.69
    .zone Boralus >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Void Portal.|r
step
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52261 >>Turn in Gallywix Got Away
    .target Halford Wyrmbane
step
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52261 >>Turn in Gallywix Got Away
    .accept 52308 >>接任务: |cRXP_WARN_被拦截的命令|r
    .target Halford Wyrmbane
    .timer 37, Halford RP
step
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52308,1 --1/1 Listen to Halford's report
step
    .goto 1161,69.28,27.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52308 >>Turn in Intercepted Orders
    .target Halford Wyrmbane
step
    .goto 1161,69.29,27.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .accept 52489 >>接任务: |cRXP_WARN_猎杀鲜血王子德利文|r
    .target Shandris Feathermoon
step
    .goto 1161,69.76,27.58
    >>与|cRXP_FRIENDLY_Swiftwing交互|r
    .complete 52489,1 --1/1 Mount Swiftwing
    .timer 57.5, Swiftwing RP
    .target Swiftwing
step
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52489,2 --1/1 Locate Horde ships
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52489 >>Turn in Hunting Blood Prince Dreven
    .target Shandris Feathermoon
step
    #completewith warning
    |cFFd0342cIf you fall off the boat at any time and can't get back up, it's recommended to swim between the two boats. Your |cRXP_WARN_[Extra Action Button]|r will be available, allowing |cRXP_FRIENDLY_Falstad Wildhammer|r to pick you up.|r
step
    .goto 1156,38.42,45.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .accept 52490 >>接任务: |cRXP_WARN_深入敌船|r
    .timer 13, Falstad RP
    .target Shandris Feathermoon
step
    .goto 1156,36.65,52.24
    >>使用|T1126431:0|t（1）命令|cRXP_FRIENDLY_Falstad Wildhammer |r将您送到|cFFfa9602Banshee's Wail附近|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Ladder.|r
    .complete 52490,1 --1/1 Climb in the Banshee's Wail gunport
step
    #completewith next
    >>杀死|cRXP_ENEMY_Sailors|r
    .complete 52490,2 --10/10 Sailors on the Banshee's Wail slain
    .mob Banshee's Wail Deckhand
step
    .goto 1156,36.92,52.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Banshee's Wail Cannon.|r
    .accept 52491 >>接任务: |cRXP_WARN_舷侧乱象|r
step
    #completewith Fired
    >>杀死|cRXP_ENEMY_Sailors|r
    .complete 52490,2 --10/10 Sailors on the Banshee's Wail slain
    .mob Banshee's Wail Deckhand
step
    .goto 1156,36.97,52.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Azerite-Infused Cannonballs.|r
    .complete 52491,1 --1/1 Azerite-Infused Cannonballs
    .mob Banshee's Wail Swabby
step
    .goto 1156,36.82,52.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Azerite-Infused Gunpowder.|r
    .complete 52491,2 --1/1 Azerite-Infused Gunpowder
    .mob Banshee's Wail Swabby
step
    .goto 1156,36.62,53.32
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Banshee's Wail Torch.|r
    .complete 52491,3 --1/1 Banshee's Wail Torch
    .mob Banshee's Wail Swabby
step
    .goto 1156,36.76,52.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_The Banshee's Wail Cannon.|r
    .complete 52491,4,1 --3/3 Cannons fired
    .mob Banshee's Wail Swabby
step
    .goto 1156,36.83,52.7
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_The Banshee's Wail Cannon.|r
    .complete 52491,4,2 --3/3 Cannons fired
    .mob Banshee's Wail Swabby
step
    .goto 1156,36.92,52.47
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_The Banshee's Wail Cannon.|r
    .complete 52491,4,3 --3/3 Cannons fired
    .mob Banshee's Wail Swabby
step
    #label Fired
    .goto 1156,36.46,53.57,5,0
    .goto 1156,36.62,53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_Battlechest of the Horde.|r
    .complete 52490,3 --1/1 Battlechest of the Horde opened
    .timer 34, Nathanos RP
step
    .goto 1156,42.26,47.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗斯塔德·蛮锤|r
    .turnin 52490 >>Turn in Behind Enemy Boats
    .target Falstad Wildhammer
step
    .goto 1156,42.32,47.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_弗斯塔德·蛮锤|r
    .turnin 52491 >>Turn in Broadside Bedlam
    .accept 52492 >>接任务: |cRXP_WARN_蛮锤的专长|r
    .target Falstad Wildhammer
step
    .goto 1156,43.10,49.53
    >>使用|T132222:0|t（1）开始攻击！
    .complete 52492,1 --1/1 Order Falstad to start the attack
step
    #completewith Deck
    >>使用|T132314:0|t（1）造成伤害，使用|T136051:0|t（2）治疗自己，|cRXP_WARN_在治疗自己时可以使用|T1323 14:0|t（1）|r
    .complete 52492,3 --15/15 Horde rowboats destroyed
    .complete 52492,2 --60/60 Horde sailors slain
step
    .goto 1156,41.62,56.18
    >>使用|T132314:0|t（1）烧掉船帆。
    .complete 52492,5 --1/1 The Crimson Squall sails burned
step
    #label Deck
    .goto 1156,36.71,52.8
    >>使用|T132314:0|t（1）烧毁甲板。
    .complete 52492,4 --1/1 The Crimson Squall deck burned
step
    >>使用|T132314:0|t（1）对附近的|cRXP_ENEMY_boats|r、|cRXX_ENEMY_sears|r和|T136051:0|（2）治疗自己，|cRXP-WARN_在治疗自己时可以使用|T1323 14:0|t（1）|r
    .complete 52492,3 --15/15 Horde rowboats destroyed
    .complete 52492,2 --60/60 Horde sailors slain
step
    .goto 1156,41.75,57.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52492 >>Turn in The Wildhammer Specialty
    .accept 52493 >>接任务: |cRXP_WARN_违背自然的船员|r
    .accept 52494 >>接任务: |cRXP_WARN_邪人邪晶|r
    .turnin 53131 >>交任务: |cRXP_FRIENDLY_诸王之眠|r
    .target Shandris Feathermoon
step
    #completewith San
    >>杀死你看到的每一个|cRXP_ENEMY_Soldier|r。
    .complete 52493,1 --12/12 Kill Horde on The Crimson Squall
    .mob San'layn Neophyte
    .mob Crimson Squall Deck Hand
step
    .goto 1156,41.74,56.6
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_San'layn Crystals.|r
    .complete 52494,1,1 --5/5 San'layn Crystals destroyed
step
    .goto 1156,41.71,56.35,5,0
    .goto 1156,41.47,56.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_San'layn Crystals.|r
    .complete 52494,1,2 --5/5 San'layn Crystals destroyed
step
    .goto 1156,41.47,55.89,5,0
    .goto 1156,41.61,55.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_San'layn Crystals.|r
    .complete 52494,1,3 --5/5 San'layn Crystals destroyed
step
    .goto 1156,41.72,56.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_San'layn Crystals.|r
    .complete 52494,1,4 --5/5 San'layn Crystals destroyed
step
    #label San
    .goto 1156,41.46,55.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_FRIENDLY_San'layn Crystals.|r
    .complete 52494,1,5 --5/5 San'layn Crystals destroyed
step
    .goto 1156,41.53,56.55,5,0
    .goto 1156,41.7,56.33,5,0
    .goto 1156,41.63,55.67,5,0
    .goto 1156,41.49,55.87,5,0
    .goto 1156,41.7,55.67,5,0
    .goto 1156,41.49,55.88
    >>杀死|cRXP_ENEMY_Soldier|r
    .complete 52493,1 --12/12 Kill Horde on The Crimson Squall
    .mob San'layn Neophyte
    .mob Crimson Squall Deck Hand
step
    .goto 1156,41.65,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52493 >>Turn in An Unnatural Crew
    .turnin 52494 >>Turn in Foul Crystals for Foul People
    .accept 52495 >>接任务: |cRXP_WARN_终结萨莱因的威胁|r
    .timer 9.5, Opening the Door RP
    .target Shandris Feathermoon
step
    #completewith next
    .goto 1156,41.54,55.57,5,0
    .goto 1156,41.47,55.87,5,0
    .goto 1156,41.62,56.92,5,0
    .goto 1156,41.68,56.75,5,0
    .goto 1156,41.69,56.63,5 >>Blood Prince Dreven RP
    .timer 12, Blood Prince Dreven RP
step
    .goto 1156,41.58,55.67
    >>杀死|cRXP_ENEMY_血王子德莱文|r
    .complete 52495,1 --1/1 Blood Prince Dreven slain
    .mob Blood Prince Dreven
step
    .goto 1156,41.39,55.87,5,0
    .goto 1156,40.55,55.8
    >>跳到窗口中，一旦您的|cRXP_WARN_[ExtraActionButton]|r可用，就按它。
    .complete 52495,2 --1/1 Escape the ship and signal Falstad
    .timer 18, Falstad RP
step
    .goto 1156,38.56,48.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52495 >>Turn in Ending the San'layn Threat
    .target Shandris Feathermoon
step
    .goto 1156,38.13,48.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .accept 52496 >>接任务: |cRXP_WARN_利落的逃脱|r
    .target Shandris Feathermoon
step
    .isOnQuest 52496
    .zone Boralus >>使用|T135764:0|t[返回Boralus]
    .use 276830
step
    .goto 1161,69.28,26.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52496 >>Turn in A Clean Escape
    .accept 52473 >>接任务: |cRXP_WARN_消灭舰队|r
    .target Halford Wyrmbane
step
    .isOnQuest 52473
    .goto 1161,67.95,26.71
    .gossipoption 48166 >>对话: |cRXP_FRIENDLY_杰塔瑞斯将军|r
    .target Grand Admiral Jes-Tereth
step
    .goto 862,40.77,70.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52473 >>Turn in Bringing Down the Fleet
    .accept 52282 >>接任务: |cRXP_WARN_沉舸之法|r
step
    .isOnQuest 52282
    .goto 862,40.77,70.85
    .gossipoption 48931 >>对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .timer 63, Plan discussed
    .target Halford Wyrmbane
step
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52282,1 --1/1 Plan discussed
step
    .goto 862,40.77,70.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52282 >>Turn in How to Sink a Zandalari Battleship
    .target Halford Wyrmbane
step
    .goto 862,40.8,70.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .accept 52281 >>接任务: |cRXP_WARN_迅翼的掩护|r
    .target Magister Umbric
step
    .isOnQuest 52281
    .goto 862,57.68,87.50
    .vehicle >>与|cRXP_FRIENDLY_Swiftwing|r交互
    .timer 95, Swiftwing Ride
step
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52281,1 --1/1 Ride Swiftwing to Isle of Fangs
step
    .goto 862,57.64,87.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔希·钢烁|r
    .turnin 52281 >>Turn in Under the Cover of Swiftwing
    .accept 52284 >>接任务: |cRXP_WARN_舰船日志|r
    .target Kelsey Steelspark
step
    .goto 862,57.64,87.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r
    .accept 52283 >>接任务: |cRXP_WARN_破坏帕库之息号|r
    .target John J. Keeshan
step
    #completewith Remote
    >>杀死|cRXP_ENEMY_Lei-zhi敌人|r并掠夺他们|T237020:0|t|cRXP-loot_海军记录|r
    .complete 52284,1 --6/6 Naval Records
    .mob Zulian Crewman
    .mob Lei-zhi Oppressor
step
    .goto 862,54.11,84.72,10,0
    .goto 862,53.09,85.49,10,0
    .goto 862,51.94,86.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Remote-Detonation Deathbomb
    .complete 52283,1,1 --4/4 Remote-detonation deathbomb planted
step
    .goto 862,51.55,86.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Remote-Detonation Deathbomb
    .complete 52283,1,2 --4/4 Remote-detonation deathbomb planted
step
    .goto 862,51.52,86.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Remote-Detonation Deathbomb
    .complete 52283,1,3 --4/4 Remote-detonation deathbomb planted
step
    #label Remote
    .goto 862,51.91,87.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the Remote-Detonation Deathbomb
    .complete 52283,1,4 --4/4 Remote-detonation deathbomb planted
step
    .goto 862,52.45,87.56,10,0
    .goto 862,54.16,84.83
    >>杀死|cRXP_ENEMY_Lei-zhi敌人|r并掠夺他们|T237020:0|t|cRXP-loot_海军记录|r
    .complete 52284,1 --6/6 Naval Records
    --x .mob
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_约翰·J·基沙恩|r, |cRXP_FRIENDLY_凯尔希·钢烁|r
    .turnin 52283 >>Turn in Sabotaging the Pa'ku
    .goto 862,57.64,87.55
    .turnin 52284 >>Turn in Ship Logs
    .accept 52285 >>接任务: |cRXP_WARN_放大的小型潜水艇|r
    .goto 862,57.64,87.59
    .target John J. Keeshan
    .target Kelsey Steelspark
step
    .isOnQuest 52285
    .goto 862,57.41,85.9
    .vehicle >>单击|cRXP_FRIENDLY_Submarine|r
    .timer 54, Submarine RP
step
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52285,1 --1/1 Crossed Bay of Kings in the Enlarged Miniaturized Submarine
step
    .goto 862,48.89,68.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .turnin 52285 >>Turn in The Enlarged Miniaturized Submarine
    .accept 52290 >>接任务: |cRXP_WARN_敌人的敌人是伪装|r
    .target Shandris Feathermoon
step
    .isOnQuest 52290
    .goto 862,48.91,68.59
    .gossipoption 49422 >>Talk to |cRXP_FRIENDLY_Magister Umbric|r
    .timer 12, Disguise RP
    .target Magister Umbric
step
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52290,1 --1/1 Blood troll disguise complete
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r, Magister Umbric
    .turnin 52290 >>Turn in My Enemy's Enemy is My Disguise
    .accept 52286 >>接任务: |cRXP_WARN_眼皮底下就是炸弹|r
    .accept 52287 >>接任务: |cRXP_WARN_情报禁制|r
    .goto 862,48.89,68.57
    .accept 52288 >>接任务: |cRXP_WARN_虚空度假|r
    .goto 862,48.90,68.59
    .target Magister Umbric
    .target Shandris Feathermoon
step
    .goto 862,48.08,66.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_ENEMY_Horde Emissary|r
    >>|cRXP_WARN_你可以使用你的[额外动作按钮]隐身|r
    .complete 52288,1,1 --6/6 Horde emissaries thrown in void rift
    .use 162450
    .mob Horde Emissary
step
    .goto 862,47.54,66.86
    >>杀死|cRXP_ENEMY_Spymaster风暴号|r
    .complete 52287,1 --1/1 Spymaster Stormhorn slain
    .mob Spymaster Stormhorn
step
    .goto 862,46.89,63.41
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_ENEMY_Horde Emissary|r
    >>|cRXP_WARN_您可以使用|r[额外操作按钮]|cRXP_WARN_to隐身。|r
    .complete 52288,1,2 --6/6 Horde emissaries thrown in void rift
    .use 162450
    .mob Horde Emissary
step
    .goto 862,45.84,62.12
    >>杀死|cFFfa9602建筑内的|cRXP_ENEMY_Spymaster Bloodrowl|r|r
    .complete 52287,2 --1/1 Spymaster Bloodsnarl slain
    .mob Spymaster Bloodsnarl
step
    .goto 862,46.08,62.13,5,0
    .goto 862,45.93,62.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_ENEMY_Horde Emissary|r
    >>|cRXP_WARN_您可以使用|r[额外操作按钮]|cRXP_WARN_to隐身。|r
    .complete 52288,1,3 --6/6 Horde emissaries thrown in void rift
    .use 162450
    .mob Horde Emissary
step
    .goto 862,46.34,59.98
    >>杀死|cFFfa9602建筑内的|cRXP_ENEMY_Spymaster电子阅读器|r|r
    .complete 52287,3 --1/1 Spymaster Bilespreader slain
    .mob Spymaster Bilespreader
step
    .goto 862,46.34,60.26,5,0
    .goto 862,48.05,63.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_ENEMY_Horde Emissary|r
    >>|cRXP_WARN_您可以使用|r[额外操作按钮]|cRXP_WARN_to隐身。|r
    .complete 52288,1,4 --6/6 Horde emissaries thrown in void rift
    .use 162450
    .mob Horde Emissary
step
    .goto 862,48.98,64.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_ENEMY_Horde Emissary|r
    >>|cRXP_WARN_您可以使用|r[额外操作按钮]|cRXP_WARN_to隐身。|r
    .complete 52288,1,5 --6/6 Horde emissaries thrown in void rift
    .use 162450
    .mob Horde Emissary
step
    .goto 862,49.74,64.68
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_ENEMY_Horde Emissary|r
    >>|cRXP_WARN_您可以使用|r[额外操作按钮]|cRXP_WARN_to隐身。|r
    .complete 52288,1,6 --6/6 Horde emissaries thrown in void rift
    .use 162450
    .mob Horde Emissary
step
    .goto 862,49.95,65.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_bomb.|r under the |cFFfa9602water|r near the |cFFfa9602ship.|r
    .complete 52286,1,1 --3/3 Remote-detonation deathbomb planted
step
    .goto 862,50.64,65.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_bomb.|r under the |cFFfa9602water|r near the |cFFfa9602ship.|r
    .complete 52286,1,2 --3/3 Remote-detonation deathbomb planted
step
    .goto 862,50.32,65.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_bomb.|r under the |cFFfa9602water|r near the |cFFfa9602ship.|r
    .complete 52286,1,3 --3/3 Remote-detonation deathbomb planted
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r, Magister Umbric
    .turnin 52288 >>Turn in Void Vacation
    .goto 862,48.91,68.59
    .turnin 52286 >>Turn in Right Beneath Their Nose
    .turnin 52287 >>Turn in Intelligence Denial
    .accept 52289 >>接任务: |cRXP_WARN_胜券在握|r
    .goto 862,48.90,68.59
    .target Shandris Feathermoon
    .target Magister Umbric
step
    .goto 862,40.47,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52289 >>Turn in Victory is Assured
    .accept 52291 >>接任务: |cRXP_WARN_胜券曾在握|r
    .target Halford Wyrmbane
step
    .isOnQuest 52291
    .goto 862,40.52,71.34
    .vehicle >>与|cRXP_FRIENDLY_Swiftwing交互|r
    .timer 70, Ride Swiftwing to Gral's Call
    .target Swiftwing
step
    .goto 862,35.10,77.32
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52291,1 --1/1 Ride Swiftwing to Gral's Call
step
    .goto 862,35.14,77.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52291 >>Turn in Victory Was Assured
    .accept 52788 >>接任务: |cRXP_WARN_不留活口|r
    .target Halford Wyrmbane
step
    .goto 862,34.74,76.85,10,0
    .goto 862,34.96,77.01,10,0
    .goto 862,34.46,76.51,10,0
    .goto 862,34.33,75.87,10,0
    .goto 862,34.98,77.03
    >>杀死|cRXP_ENEMY_Zandalari的敌人|r
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52788,1 --10/10 Zandalari slain
    .mob Zandalari Hexxer
    .mob Zandalari Honorguard
step
    .goto 862,35.04,76.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52788 >>Turn in Leave None Alive
    .accept 52789 >>接任务: |cRXP_WARN_刺杀顾问|r
    .target Halford Wyrmbane
step
    .goto 862,34.74,76.85,10,0
    .goto 862,34.96,77.01,10,0
    .goto 862,34.46,76.51,10,0
    .goto 862,34.33,75.87,10,0
    .goto 862,34.98,77.03
    >>杀死|cRXP_ENEMY_Advisor Ko'jan|r内部|cFFfa9602飞船|r
    .complete 52789,1 --1/1 Advisor Ko'jan slain
    .mob Advisor Ko'jan
step
    .goto 862,34.98,76.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 52789 >>Turn in Silencing the Advisor
    .accept 52790 >>接任务: |cRXP_WARN_终结杀戮|r
    .target Halford Wyrmbane
step
    .goto 862,34.33,75.88,10,0
    .goto 862,34.96,76.99,10,0
    .goto 862,34.91,76.69,10,0
    .goto 862,34.92,76.68
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 52790,1 --Travel to Gral's Call upper deck
step
    .isOnQuest 52790
    .goto 862,34.83,76.32
    .gossipoption 49425 >>对话: |cRXP_FRIENDLY_珊蒂斯·羽月|r
    .timer 58, Assess situation RP.
    .target Shandris Feathermoon
step
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 52790,2 --1/1 Assess situation with Shandris Feathermoon
step
    .goto 862,34.84,76.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    >>|cRXP_WARN_按键盘上的“Escape”可跳过电影|r
    .complete 52790,3 --1/1 Tell Halford to blow up the ship
    .skipgossip
    .target Halford Wyrmbane
step
    .isOnQuest 52790
    .goto 862,40.46,71.03
    .gossipoption 49161 >>Talk to |cRXP_FRIENDLY_Daria Smithson|r
    .target Daria Smithson
step
    .isOnQuest 52790
    .goto 1161,70.55,17.18,5,0
    .goto 1161,70.1,16.8,5,0
    .goto 84,85.92,31.57
    .zone 84 >>单击|cRXP_PICK_Stormfind门户|r
step
    .goto 84,49.34,86.77,5,0
    .goto 84,48.84,86.78,5,0
    .goto 84,49.34,87.03,5,0
    .goto 84,85.92,31.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安度因·乌瑞恩|r
    .turnin 52790 >>Turn in An End to the Killing
    .target Anduin Wrynn
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP BfA战争战役
#name 8) Tides of Vengeance
#displayname Chapter 8 - Tides of Vengeance

<< Alliance

step
    .goto 1161,70.72,27.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .accept 53986 >>接任务: |cRXP_WARN_风暴前的平静|r
    .target Master Mathias Shaw
step
    .isOnQuest 53986
    .goto 1161,66.98,15.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joan Weber|r
    .fly Proudmoore Keep >>Fly to Proudmoore Keep
    .target Joan Weber
step
    .goto 895,67.26,36.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .complete 53986,1 --1/1 Take the report to Jaina
    .skipgossip 145580,1
    .timer 73, Jaina RP
    .target Lady Jaina Proudmoore
step
    .goto 895,67,36.24
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 53986,2 --1/1 Wait a moment
step
    .goto 895,66.99,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .turnin 53986 >>Turn in The Calm Before
    .accept 53888 >>接任务: |cRXP_WARN_前往尖角码头|r
    .target Lady Jaina Proudmoore
step
    .goto 1161,63.32,54.94
    >>|cRXP_WARN_Follow the Arrow.|r
    .complete 53888,1 --1/1 Meet Jaina at the canal by Crosswind Commons
step
    .isOnQuest 53888
    .goto 1161,63.73,52.95
    .vehicle >>单击|cRXP_PICK_Boat|r
    .timer 120, Boat to Anglepoint Wharf
step
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 53888,2 --1/1 Take Boat to Anglepoint Wharf
step
    .goto 895,42.17,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .turnin 53888 >>Turn in To Anglepoint
    .accept 53896 >>接任务: |cRXP_WARN_坚守阵地|r
    .target Lady Jaina Proudmoore
step
    .goto 895,42.17,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .complete 53896,1 --1/1 Speak with Jaina Proudmoore
    .skipgossip 145580,1
    .target Lady Jaina Proudmoore
step
    .goto 895,42.44,29.63
    >>杀死连续的|cRXP_ENEMY_敌方波|r。在最后一波杀死|cRXX_ENEMY_Zanda霜之歌|r。
    .complete 53896,2 --1/1 Jaina Proudmoore Protected
    .mob Invading Berserker
    .mob Invading Spirit-mender
    .mob Invading Warrior
    .mob Zanda Frostsong
step
    .goto 895,42.13,29.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .turnin 53896 >>Turn in Stand Fast
    .accept 53909 >>接任务: |cRXP_WARN_友军之围|r
    .accept 53910 >>接任务: |cRXP_WARN_击退部落！|r
    .target Lady Jaina Proudmoore
step
    .goto 895,42.14,29.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taelia Fordragon|r
    .accept 54519 >>接任务: |cRXP_WARN_救援巡逻队|r
    .target Taelia Fordragon
step
    .goto 895,42.17,29.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Okri Putterwrench|r
    .accept 54518 >>接任务: |cRXP_WARN_消灭飞艇|r
    .target Okri Putterwrench
    .timer 30, Okri Putterwrench RP
step
    #completewith Emma
#loop
	.line 895,43.39,27.88,42.99,27.00,42.35,26.56,41.84,27.37
	.goto 895,43.39,27.88,15,0
	.goto 895,42.99,27.00,15,0
	.goto 895,42.35,26.56,15,0
	.goto 895,41.84,27.37,15,0
    >>杀死|cRXP_ENEMY_Invading萨满|r和|cRXP_ENEMY_Invading狂暴战士|r
    .complete 53910,1 --Defeat Axe Throwers and Berserkers (100%)
    .mob Invading Shaman
    .mob Invading Berserker
step
    .goto 895,41.84,27.37
    >>与|cRXP_FRIENDLY_Emma Swiftwind|r交互
    .complete 54519,2 --1/1 Emma Swiftwind found
    .goto 895,41.84,27.39
    .target Emma Swiftwind
step
    .goto 895,42.35,26.56
    >>与|cRXP_FRIENDLY_Edward Nash|r交互
    .complete 54519,4 --1/1 Edward Nash found
    .target Edward Nash
step
    .goto 895,41.69,29.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Okri Putterwrench|r
    .complete 54518,1 --1/1 Get a Jury-Rigged Hand Cannon from Okri
    .skipgossip 145632,1
step
    .goto 895,41.68,29.71
    >>在冰山上使用|cRXP_WARN_Extra Action Button]|r。
    .complete 54518,2 --1/1 Test the Jury-Rigged Hand Cannon
    .mob Horde Bombardier
step
    .goto 895,42.99,28.24
    >>使用您的|cRXP_WARN_[额外操作按钮]|r销毁|cRXP-ENEMY_Horde Zepplins|r
    .complete 54518,3,1 --4/4 Horde Bombardier slain
    .mob Horde Bombardier
step
    .goto 895,43.39,27.88
    >>与|cRXP_FRIENDLY_Carter Riptide|r交互
    .complete 54519,1 --1/1 Carter Riptide found
    .target Carter Riptide
step
    .goto 895,43.14,27.32
    >>使用您的|cRXP_WARN_[额外操作按钮]|r销毁|cRXP-ENEMY_Horde Zepplins|r
    .complete 54518,3,2 --4/4 Horde Bombardier slain
    .mob Horde Bombardier
step
    .goto 895,42.99,27.00
    >>与|cRXP_FRIENDLY_Tamara Barrie|r交互
    .complete 54519,3 --1/1 Tamara Barrie found
    .target Tamara Barrie
step
    .goto 895,43.01,26.54
    >>使用您的|cRXP_WARN_[额外操作按钮]|r销毁|cRXP-ENEMY_Horde Zepplins|r
    .complete 54518,3,3 --4/4 Horde Bombardier slain
    .mob Horde Bombardier
step
    #label Emma
    .goto 895,42.58,26.95
    >>使用您的|cRXP_WARN_[额外操作按钮]|r销毁|cRXP-ENEMY_Horde Zepplins|r
    .complete 54518,3,4 --4/4 Horde Bombardier slain
    .mob Horde Bombardier
step
    .goto 895,41.54,27.08,20,0
#loop
	.line 895,43.39,27.88,42.99,27.00,42.35,26.56,41.84,27.37
	.goto 895,43.39,27.88,15,0
	.goto 895,42.99,27.00,15,0
	.goto 895,42.35,26.56,15,0
	.goto 895,41.84,27.37,15,0
    >>杀死|cRXP_ENEMY_Invading萨满|r和|cRXP_ENEMY_Invading狂暴战士|r
    .complete 53910,1 --Defeat Axe Throwers and Berserkers (100%)
    .mob Invading Shaman
    .mob Invading Berserker
step
    .goto 895,41.53,27.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Okri Putterwrench|r
    .turnin 54518 >>Turn in Zero Zeppelins
    .target Okri Putterwrench
step
    .goto 895,41.52,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rosaline Madison|r
    .turnin 53909 >>Turn in Besieged Allies
    .turnin 53910 >>Turn in Repel the Horde!
    .turnin 54519 >>Turn in Squad Goals
    .accept 53916 >>接任务: |cRXP_WARN_风舷利刃|r
    .target Rosaline Madison
step
    .goto 895,41.94,27.31
   >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,1 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.1,27.25
   >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,2 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.24,27.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,3 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.53,27.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,4 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.71,27.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,5 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.77,26.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,6 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.59,26.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,7 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.39,26.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,8 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.2,26.76
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,9 --10/10 Outrigger Weapon recovered
step
    .goto 895,42.08,26.8
    >>|TInterface/cursor/crosshair/interact.blp:20|tCllick |cRXP_PICK_Outrigger Weapon.|r
    .complete 53916,1,10 --10/10 Outrigger Weapon recovered
step
    .goto 895,41.51,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rosaline Madison|r
    .turnin 53916 >>Turn in Outrigger Outfitters
    .accept 53978 >>接任务: |cRXP_WARN_火药妙计|r
    .accept 54787 >>接任务: |cRXP_WARN_遮掩面具|r
    .target Rosaline Madison
step
    .goto 895,41.53,27.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Okri Putterwrench|r
    .accept 54559 >>接任务: |cRXP_WARN_解救缅栀！|r
    .target Okri Putterwrench
step
    #completewith Mask
    >>杀死|cRXP_ENEMY_Invading Blight Specialist |r并掠夺它们以获得|T133145:0|t|cRXP-loot_Blight Specialist Mask|r
    .complete 54787,1 --4/4 Blight Specialist Mask collected
    .mob Invading Blight Specialist
step
    .goto 895,40.46,26.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gunpowder Keg|r
    .complete 53978,1,1 --6/6 Gunpowder Keg Collected
step
    .goto 895,40.22,26.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Ball & Chain|r
    .complete 54559,2,1 --2/2 Plumeria's Chains released
step
    .goto 895,40.23,26.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Ball & Chain|r
    .complete 54559,2,2 --2/2 Plumeria's Chains released
step
    .goto 895,40.17,26.22
    >>杀死|cRXP_ENEMY_Maurizio死亡刺激|r
    .complete 54559,1 --1/1 Maurizio Deaththrill slain
    .mob Maurizio Deaththrill
step
    .goto 895,40.31,26.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gunpowder Keg|r
    .complete 53978,1,2 --6/6 Gunpowder Keg Collected
step
    .goto 895,39.89,26.28
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gunpowder Keg|r
    .complete 53978,1,3 --6/6 Gunpowder Keg Collected
step
    .goto 895,39.53,26.75
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gunpowder Keg|r
    .complete 53978,1,4 --6/6 Gunpowder Keg Collected
step
    .goto 895,39.11,25.3
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gunpowder Keg|r
    .complete 53978,1,5 --6/6 Gunpowder Keg Collected
step
    #label Mask
    .goto 895,38.43,25.65
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Gunpowder Keg|r
    .complete 53978,1,6 --6/6 Gunpowder Keg Collected
step
#loop
	.line 895,37.50,24.89,38.43,25.65,39.11,25.3,39.53,26.75,39.89,26.28,40.31,26.39,40.46,26.84
	.goto 895,37.50,24.89,20,0
	.goto 895,38.43,25.65,20,0
	.goto 895,39.11,25.30,20,0
	.goto 895,39.53,26.75,20,0
	.goto 895,39.89,26.28,20,0
	.goto 895,40.31,26.39,20,0
	.goto 895,40.46,26.84,20,0
    >>杀死|cRXP_ENEMY_Invading Blight Specialist |r并掠夺它们以获得|T133145:0|t|cRXP-loot_Blight Specialist Mask|r
    .complete 54787,1 --4/4 Blight Specialist Mask collected
    .mob Invading Blight Specialist
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Okri Putterwrench|r and |cRXP_FRIENDLY_Rosaline Madison.|r
    .turnin 54559 >>Turn in Free Plumeria!
    .goto 895,37.48,24.99
    .turnin 54787 >>Turn in Masking For a Friend
    .turnin 53978 >>Turn in Gunpowder Plots
    .accept 53919 >>接任务: |cRXP_WARN_火炮响起|r
    .goto 895,37.50,24.89
    .target Okri Putterwrench
    .target Rosaline Madison
step
    .goto 895,37.46,24.97
    .isOnQuest 53919
    .vehicle >>单击|cRXP_PICK_Outrigger Cannon|r
step
    >>使用|T252185:0|t（1）摧毁|cRXP_ENEMY_摩托艇|r
    .complete 53919,1 --10/10 Horde Motorboats Sunk
step
    .goto 895,37.40,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .complete 53919,2 --1/1 Speak with Jaina
    .skipgossip 145580,1
    .target Lady Jaina Proudmoore
step
    .goto 895,37.40,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .turnin 53919 >>Turn in Shots Fired
    .accept 53936 >>接任务: |cRXP_WARN_阻止地精工兵|r
    .target Lady Jaina Proudmoore
step
    .goto 895,36.47,28.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,4 --40/40 Large Azerite Bomb
step
    .goto 895,36.15,29.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,8 --40/40 Large Azerite Bomb
step
    .goto 895,35.98,30.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,12 --40/40 Large Azerite Bomb
step
    .goto 895,35.65,30.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,16 --40/40 Large Azerite Bomb
step
    .goto 895,35.56,30.27
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,20 --40/40 Large Azerite Bomb
step
    .goto 895,35.46,30.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,24 --40/40 Large Azerite Bomb
step
    .goto 895,35.19,30.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,28 --40/40 Large Azerite Bomb
step
    .goto 895,34.96,30.97
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,32 --40/40 Large Azerite Bomb
step
    .goto 895,34.76,30.73
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,36 --40/40 Large Azerite Bomb
step
    .goto 895,34.47,31.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Large Azerite Bomb|r
    .complete 53936,2,40 --40/40 Large Azerite Bomb
step
    .goto 895,34.45,29.95
    >>杀死|cRXP_ENEMY_Nebbik Megafuel|r
    .complete 53936,1 --1/1 Nebbik Megafuel slain
    .mob Nebbik Megafuel
step
    .goto 895,35.81,28.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Arcane Teleport Beacon|r
    .complete 53936,3 --1/1 Use Arcane Teleport Beacon
step
    .goto 895,36.25,29.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .turnin 53936 >>Turn in Stopping the Sappers
    .accept 54703 >>接任务: |cRXP_WARN_特快专递|r
    .target Lady Jaina Proudmoore
step
    .isOnQuest 54703
    .goto 895,36.3,29.76
    .vehicle >>单击|cRXP_PICK_Harpoon|r
step
    >>|T1911518:0|t（1）射击3|cRXP_ENEMY_ships|r
    >>|cFFd0342前方无法跳过的过场|r
    .complete 54703,1 --3/3 Ships marked
step
    .goto 895,36.42,30.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .turnin 54703 >>Turn in Express Delivery
    .accept 53887 >>接任务: |cRXP_WARN_烽火连绵|r
    .target Lady Jaina Proudmoore
step
    .isOnQuest 53887
    .goto 895,42.48,23.02
    .cooldown item,6948,<1,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dagin|r
    .fly Tradewinds Market >>飞往Tradewinds市场
    .target Dagin
step
    .isOnQuest 53887
    .cooldown item,6948,>0,1
    .hs >>Hearthstone to Boralus
step
    .goto 1161,69.27,27.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 53887 >>Turn in War Marches On
    .accept 54192 >>接任务: |cRXP_WARN_敏感情报|r
    .target Halford Wyrmbane
step
    .isOnQuest 54192
    .goto 1161,67.95,26.71
    .gossipoption 48166 >>对话: |cRXP_FRIENDLY_杰塔瑞斯将军|r
    .target Grand Admiral Jes-Tereth
step
    .goto 862,41.08,70.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔希·钢烁|r
    .turnin 54192 >>Turn in Sensitive Intel
    .accept 54193 >>接任务: |cRXP_WARN_这是个大发现！|r
step
    .isOnQuest 54193
    .goto 862,41.1,70.61
    .gossipoption 50536 >>对话: |cRXP_FRIENDLY_梅格斯·碎纸机|r
    .timer 24, Megs Dialogue
    .target Megs
step
    .goto 862,41.08,70.65
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 54193,1 --1/1 Listen to Megs and Morton's plan
step
    .goto 862,41.08,70.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔希·钢烁|r
    .turnin 54193 >>Turn in This is Huge!
    .target Kelsey Steelspark
step
    .goto 862,41.1,70.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅格斯·碎纸机|r
    .accept 54194 >>接任务: |cRXP_WARN_“大”力出奇迹|r
    .target Megs
step
    .goto 862,41.22,70.51
    >>与|cRXP_FRIENDLY_Kul Tiran Clucker|r交互
    .complete 54194,1 --1/1 Embiggifier tested
    .mob Kul Tiran Clucker
step
    >>杀死|cRXP_ENEMY_Kul Tiran Clucker|r
    .complete 54194,2 --1/1 Kul Tiran Clucker slain
    .mob Kul Tiran Clucker
step
    .goto 862,41.10,70.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅格斯·碎纸机|r
    .turnin 54194 >>Turn in Real Big Power
    .accept 54195 >>接任务: |cRXP_WARN_智慧野兽|r
    .target Megs
step
    .goto 862,48.21,55.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grong|r
    .turnin 54195 >>Turn in A Beast with Brains
    .accept 54196 >>接任务: |cRXP_WARN_别无选择|r
    .accept 54197 >>接任务: |cRXP_WARN_达卡尼的自由|r
    .target Grong
step
    #completewith Da'kani Highbrow
    >>杀死|cRXP_ENEMY_Bilgewater偷猎者|r
    .complete 54196,1 --12/12 Bilgewater Poacher slain
step
    .goto 862,48.81,55.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,1 --8/8 Da'kani Highbrow freed
step
    .goto 862,49.06,54.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,2 --8/8 Da'kani Highbrow freed
step
    .goto 862,49.62,54.11
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,3 --8/8 Da'kani Highbrow freed
step
    .goto 862,49.53,54.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,4 --8/8 Da'kani Highbrow freed
step
    .goto 862,49.22,53.49
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,5 --8/8 Da'kani Highbrow freed
step
    .goto 862,48.6,53.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,6 --8/8 Da'kani Highbrow freed
step
    .goto 862,48.07,53.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,7 --8/8 Da'kani Highbrow freed
step
    .goto 862,48.09,53.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Cage|r
    .complete 54197,1,8 --8/8 Da'kani Highbrow freed
step
#loop
	.line 862,48.06,52.3,48.14,51.29,47.7,52.07,47.09,52.12
	.goto 862,48.06,52.30,15,0
	.goto 862,48.14,51.29,15,0
	.goto 862,47.70,52.07,15,0
	.goto 862,47.09,52.12,15,0
    >>杀死|cRXP_ENEMY_Bilgewater偷猎者|r
    .complete 54196,1 --12/12 Bilgewater Poacher slain
    .mob Bilgewater Poacher
step
    .goto 862,48.84,53.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grong|r
    .turnin 54197 >>Turn in Freedom for the Da'kani
    .turnin 54196 >>Turn in Out of Options
    .accept 54198 >>接任务: |cRXP_WARN_苦乐参半的告别|r
    .target Grong
step
    .goto 862,46.80,50.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grong|r
    .turnin 54198 >>Turn in Bittersweet Goodbyes
    .accept 54199 >>接任务: |cRXP_WARN_多数人的需求|r
step
    .goto 862,46.8,50.5
    .isOnQuest 54199
    .vehicle >>与|cRXP_FRIENDLY_Grong交互|r
    .timer 109, Grong RP
step
    .goto 862,41.21,70.54
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 54199,1 --1/1 Accompany Grong to Xibala
step
    .goto 862,41.07,70.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morton Cogswald|r
    .turnin 54199 >>Turn in The Needs of the Many
    .accept 54200 >>接任务: |cRXP_WARN_从基础开始|r
step
    .goto 862,41.07,70.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morton Cogswald|r
    .complete 54200,1 --1/1 Speak to Morton Cogswalt
step
    .goto 862,41.90,73.61
    >>|cRXP_WARN_Follow the Arrow.|r
    >>使用|T463836:0|t（1）跳过一段距离。
    .complete 54200,2 --1/1 Reach the marker
step
    .goto 862,42.37,72.97
    >>使用|T589118:0|t（4）与|cRXP_FRIENDLY_Grong |r通话
    .complete 54200,3 --1/1 Speak to Grong
step
    .goto 862,42.37,72.97
    >>使用|T463836:0|t（1）跳过一段距离。
    >>使用|T1058933:0|t（2）对周围造成伤害。
    >>使用|T236164:0|t（3）在您面前造成伤害。
    >>杀死|cRXP_ENEMY_Xibalan Ravasaur|r
    .complete 54200,4 --1/1 Xibalan Ravasaur slain
step
    .isOnQuest 54200
    .exitvehicle >>|cRXP_WARN_按操作栏上的|r[Exit]|cRXP_WARN_button可卸载Grong。|r
    *|cRXP_WARN_或者，您可以使用此宏；|r
    .link /leavevehicle>>单击此处 FOR MACRO.
    *|cRXP_WARN_建议保护此宏以备将来使用。|r
step
    .goto 862,41.07,70.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morton Cogswald|r
    .turnin 54200 >>Turn in Bring the Base
    .accept 54201 >>接任务: |cRXP_WARN_量身订做|r
    .target Morton Cogswald
step
    .goto 862,41.1,70.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅格斯·碎纸机|r
    .accept 54202 >>接任务: |cRXP_WARN_校准核心|r
    .target Megs
step
    #completewith crates
    >>|cRXP_WARN_舱底水压裂机可能无法工作|r
    >>杀死|cRXP_ENEMY_Bilgewater敌人|r，点击进行校准。
    .complete 54202,1 --10/10 Embiggifier Core calibrated
    .mob Bilgewater Fracker
    .mob Bilgewater Driller
    .mob Bilgewater Boomer
step
    .goto 862,36.42,70.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate of Ore|r
    >>|cRXP_WARN_不要拾取|cRXP_pick_Azerite填充矿石。|r|r
    .complete 54201,1,3 --12/12 Azerite Infused Ore
step
    .goto 862,35.52,69.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate of Ore|r
    >>|cRXP_WARN_不要拾取|cRXP_pick_Azerite填充矿石。|r|r
    .complete 54201,1,6 --12/12 Azerite Infused Ore
step
    .goto 862,35.35,69.51
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate of Ore|r
    >>|cRXP_WARN_不要拾取|cRXP_pick_Azerite填充矿石。|r|r
    .complete 54201,1,9 --12/12 Azerite Infused Ore
step
    #label crates
    .goto 862,35.64,71.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate of Ore|r
    >>|cRXP_WARN_不要拾取|cRXP_pick_Azerite填充矿石。|r|r
    .complete 54201,1,12 --12/12 Azerite Infused Ore
step
#loop
	.line 862,35.33,72.67,34.45,71.86,33.65,70.29,34.74,69.39
	.goto 862,35.33,72.67,20,0
	.goto 862,34.45,71.86,20,0
	.goto 862,33.65,70.29,20,0
	.goto 862,34.74,69.39,20,0
    >>|cRXP_WARN_舱底水压裂机可能无法工作|r
    >>杀死|cRXP_ENEMY_Bilgewater敌人|r，点击进行校准。
    .complete 54202,1 --10/10 Embiggifier Core calibrated
    .mob Bilgewater Fracker
    .mob Bilgewater Driller
    .mob Bilgewater Boomer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Morton Cogswald, |cRXP_FRIENDLY_梅格斯·碎纸机|r
    .turnin 54201 >>Turn in Fit for Grong
    .goto 862,41.07,70.62
    .turnin 54202 >>Turn in Calibrate the Core
    .accept 54203 >>接任务: |cRXP_WARN_巨化|r
step
    .goto 862,41.1,70.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅格斯·碎纸机|r
    .complete 54203,1 --1/1 Speak to Megs
    .skipgossip 147148,1
step
    .goto 862,41.88,73.65
    >>使用|T133015:0|t（5）来装饰Grong。
    .complete 54203,5 --1/1 Embiggify Grong
step
    .goto 862,41.88,73.65
    >>使用|T463836:0|t（1）跳过一段距离。
    .complete 54203,3 --1/1 Reach the marker
step
    .goto 862,41.1,70.61
    >>使用|T589118:0|t（4）与|cRXP_FRIENDLY_Grong |r通话
    .complete 54203,4 --1/1 Speak to Grong
step
    .goto 862,41.1,70.61
    >>使用|T133015:0|t（5）来装饰Grong。
    .complete 54203,5 --1/1 Embiggify Grong
step
    .isOnQuest 54203
    .goto 862,41.1,70.61
    .exitvehicle >>|cRXP_WARN_按操作栏上的|r[Exit]|cRXP_WARN_button可卸载Grong。|r
    *|cRXP_WARN_或者，您可以使用此宏；|r
    .link /leavevehicle>>单击此处 FOR MACRO.
    *|cRXP_WARN_建议保护此宏以备将来使用。|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_梅格斯·碎纸机|r
    .turnin 54203 >>Turn in The Embiggining
    .accept 54204 >>接任务: |cRXP_WARN_神殿的毁灭|r
    .target Megs
step
    .goto 862,41.19,70.72
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Void Portal|r
    .complete 54204,1 --1/1 Umbric's portal used
step
#loop
	.line 862,49.76,41.46,50.05,43.08,49.1,43.03,49.79,40.57
	.goto 862,49.76,41.46,15,0
	.goto 862,50.05,43.08,15,0
	.goto 862,49.10,43.03,15,0
	.goto 862,49.79,40.57,15,0
    >>使用|T463836:0|t（1）跳跃一段距离，也会造成伤害。
    >>使用|T1058933:0|t（2）对周围造成伤害。
    >>使用|T236164:0|t（3）在您面前造成伤害。
    .complete 54204,2 --Temple forces destroyed (100%)
step
    .goto 862,41.14,70.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔希·钢烁|r
    .turnin 54204 >>Turn in Total Temple Destruction
    .accept 54205 >>接任务: |cRXP_WARN_做个好梦|r
    .target Kelsey Steelspark
step
    .goto 862,41.15,70.68
    >>与|cRXP_FRIENDLY_Grong交互|r
    .complete 54205,1 --1/1 Grong tranquilized
step
    .goto 862,41.15,70.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_凯尔希·钢烁|r
    .turnin 54205 >>Turn in A Nice Nap
    .accept 54206 >>接任务: |cRXP_WARN_沉睡的特工|r
    .target Kelsey Steelspark
step
    .isOnQuest 54206
    .goto 862,40.46,71.02
    .gossipoption 49161 >>Talk to |cRXP_FRIENDLY_Daria|r
    .target Daria Smithson
step
    .goto 1161,69.25,27.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 54206 >>Turn in The Sleeper Agent
    .accept 54171 >>接任务: |cRXP_WARN_深渊节杖|r
    .target Halford Wyrmbane
step
    .isOnQuest 54171
    .goto 1161,67.95,26.71
    .gossipoption 48166 >>对话: |cRXP_FRIENDLY_杰塔瑞斯将军|r
    .target Grand Admiral Jes-Tereth
step
    .goto 862,40.59,70.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .turnin 54171 >>Turn in The Abyssal Scepter
    .accept 54169 >>接任务: |cRXP_WARN_劫掠珍宝间|r
    .target Lady Jaina Proudmoore
step
    .isOnQuest 54169
    .goto 862,40.59,70.70
    .gossipoption 50525 >>对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .timer , Jaina Dialogue
    .target Lady Jaina Proudmoore
step
    .goto 862,40.61,70.7
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 54169,1 --1/1 Speak with Jaina Proudmoore
step
    .isOnQuest 54169
    .goto 862,40.61,70.7
    .zone 1348 >>单击|cRXP_PICK_Entrance门户|r
    .timer 20, Golem activation RP
step
    #completewith Zepter
    .isOnQuest 54169
    >>|cRXP_WARN_Complete the Scenario.|r
    .complete 54169,2 --1/1 Retrieve the Abyssal Scepter from the Zandalari Treasury.
    .mob Treasury Protector
step
    .isOnQuest 54169
    .goto 1348,24.36,81.55
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    >>杀死|cRXP_ENEMY_Treasury Protector|r
    .scenario 4021,1 --Golem Destroyed
    .mob Treasury Protector
step
    .isOnQuest 54169
    .goto 1348,28.23,82.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4022,1,1 -- Trap 1
    .mob Baleful Guardian Spirit
step
    .isOnQuest 54169
    .goto 1348,33.23,82.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4022,1,2 -- Trap 2
    .mob Baleful Guardian Spirit
step
    .isOnQuest 54169
    .goto 1348,37.38,79.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4022,1,3 -- Trap 3
step
    .isOnQuest 54169
    .goto 1348,41.97,81.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    >>Follow the Arrow.
    .scenario 4022,1,4 -- End of the hall reached
step
    .isOnQuest 54169
    .goto 1348,41.23,74.68,10,0
    .goto 1348,41.19,68.22,10,0
    .goto 1348,42.06,61.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    >>杀死|cRXP_ENEMY_Treasury Protector|r
    .scenario 4023,1 -- central chamber reached.
    .mob Treasury Protector
    .mob Mighty Guardian Spirit
    .mob Furious Guardian Spirit
step
    .isOnQuest 54169
    .goto 1348,42.09,77.44
    >>|cRXP_WARN_Follow the Arrow.|r
    .scenario 4024,1 -- Return to outer hallway
    .mob Treasury Protector
    .mob Mighty Guardian Spirit
    .mob Furious Guardian Spirit
step
    .isOnQuest 54169
    .goto 1348,42.24,85.52
    >>杀死|cRXP_ENEMY_Treasure Sentinel|r
    .scenario 4046,1 -- Treasury Sentinel defeated.
    .mob Treasury Sentinel
step
    .isOnQuest 54169
    .goto 1348,46.5,82.3,15,0
    .goto 1348,50.43,82.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4048,1,1 -- Trap 1
    .mob Baleful Guardian Spirit
step
    .isOnQuest 54169
    .goto 1348,55.55,82.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4048,1,2 -- Trap 2
step
    .isOnQuest 54169
    .goto 1348,59.59,82.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4048,1,3 -- Trap 3
step
    .isOnQuest 54169
    .goto 1348,60.94,78.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>杀死|cRXP_ENEMY_Spirits|r
    .scenario 4051,1 -- Spirits
    .mob Furious Guardian Spirit
    .mob Baleful Guardian Spirit
step
    .isOnQuest 54169
    .goto 1348,60.95,58.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Control Switch.|r
    >>|cRXP_WARN_不要被光束击中，它们会击中你的。漩涡也很危险，但别急|r
    >>|cRXP_WARN_穿过雾，尝试相机自上而下的视图，使雾消失并能够看到光束|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .scenario 4052,1 -- Gauntlet
step
    .goto 1348,62.02,52.37
    .isOnQuest 54169
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Security Door.|r
    .gossipoption 50747 >>对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .timer 45, Protect Shaw
    .target Master Mathias Shaw
step
    .isOnQuest 54169
    .goto 1348,61.94,51.65
    >>杀死连续的|cRXP_ENEMY_敌方波|r。在最后一波中杀死|cRXX_ENEMY_Treasury Defender |r。
    .scenario 4055,1 -- Protect Shaw
    .mob Treasury Protector
    .mob Baleful Guardian Spirit
    .mob Mighty Guardian Spirit
    .mob Treasury Defender
step
    .isOnQuest 54169
    .goto 1348,61.99,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    >>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
    .skipgossip 1
    .scenario 4056,2 -- End
    .target Master Mathias Shaw
step
    .goto 862,40.56,70.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .turnin 54169 >>Turn in The Treasury Heist
    .accept 54510 >>接任务: |cRXP_WARN_恶作剧完成|r
step
    .isOnQuest 54510
    .goto 862,40.46,71.02
    .gossipoption 49161 >>Talk to |cRXP_FRIENDLY_Daria|r
    .target Daria Smithson
step
    .goto 1161,69.24,26.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 54510,3 >>Turn in Mischief Managed
    .accept 54302 >>接任务: |cRXP_WARN_祖达萨沦陷|r
    .target Halford Wyrmbane
step
    .isOnQuest 54302
    .goto 1161,66.97,14.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joan Weber|r
    .fly Proudmoore Keep >>Fly to Proudmoore Keep
    .target Joan Weber
step
    .goto 1161,39.20,77.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .complete 54302,1 --1/1 Speak with Mathias Shaw near Proudmoore Keep
    .skipgossip 1
    .target Master Mathias Shaw
step
    .goto 1161,38.98,77.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 54302 >>Turn in The Fall of Zuldazar
    .target Halford Wyrmbane
step
    .goto 1161,38.97,76.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Telaamon|r
    .accept 54303 >>接任务: |cRXP_WARN_进军纳兹米尔|r
    .target Blademaster Telaamon
step
    .isOnQuest 54303
    .goto 1161,47.75,65.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessica Clarke|r
    .fly Tradewinds Market >>飞往Tradewinds市场
    .target Jessica Clarke
step
    .isOnQuest 54303
    .goto 1161,67.95,26.71
    .gossipoption 48165 >>对话: |cRXP_FRIENDLY_杰塔瑞斯将军|r
    .target Grand Admiral Jes-Tereth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r, |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .turnin 54303 >>Turn in The March to Nazmir
    .accept 54310 >>接任务: |cRXP_WARN_肃清村庄|r
    .goto 863,31.03,29.49
    .accept 54404 >>接任务: |cRXP_WARN_黑铁钻探机|r
    .goto 863,30.96,29.45
    .target Lady Jaina Proudmoore
    .target Master Mathias Shaw
step
    #completewith Mole Machine
    >>杀死|cRXP_ENEMY_Blood巨魔|r
    .complete 54310,1 --12/12 Defeat blood trolls within Zalamar
    .mob Warspawn Rider
    .mob Zalamar Warrior
    .mob Zalamar Bloodsinger
    .mob Obedient Drudge
step
    .goto 863,32.57,44.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine.|r
    .complete 54404,1,1 --3/3 Mole machines signalled
step
    .goto 863,30.77,48.32
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine.|r
    .complete 54404,1,2 --3/3 Mole machines signalled
step
    #label Mole Machine
    .goto 863,32.87,47.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine.|r
    .complete 54404,1,3 --3/3 Mole machines signalled
step
#loop
	.line 863,33.89,48.39,34.27,47.04,32.24,46.33,32.06,44.15
	.goto 863,33.89,48.39,15,0
	.goto 863,34.27,47.04,15,0
	.goto 863,32.24,46.33,15,0
	.goto 863,32.06,44.15,15,0
    >>杀死|cRXP_ENEMY_Blood巨魔|r
    .complete 54310,1 --12/12 Defeat blood trolls within Zalamar
    .mob Warspawn Rider
    .mob Zalamar Warrior
    .mob Zalamar Bloodsinger
    .mob Obedient Drudge
step
    .goto 863,33.36,45.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Telaamon|r
    .turnin 54310 >>Turn in Repurposing Their Village
    .turnin 54404 >>Turn in Dark Iron Machinations
    .accept 54312 >>接任务: |cRXP_WARN_战场迷雾|r
    .target Blademaster Telaamon
step
    .isOnQuest 54312
    .goto 863,33.15,46.22,5,0
    .goto 863,33.67,47.71
    .gossipoption 50606 >>Talk to |cRXP_FRIENDLY_Brother Pike|r
    .target Brother Pike
    .timer 13, Brother Pike RP
step
    >>|cRXP_WARN_等待简短的角色扮演，当计时器用完时，角色扮演将完成。|r
    .complete 54312,1 --1/1 Have Brother Pike use the Abyssal Scepter
step
    .goto 863,33.65,47.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .turnin 54312 >>Turn in Fog of War
    .accept 54407 >>接任务: |cRXP_WARN_沼泽潜行|r
    .target Lady Jaina Proudmoore
step
    .goto 863,35.77,68.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .turnin 54407 >>Turn in Lurking in the Swamp
    .accept 54412 >>接任务: |cRXP_WARN_水淹祖尔加|r
    .target Lady Jaina Proudmoore
step
    .goto 863,35.77,68.08
    >>与|cRXP_FRIENDLY_Jaina的水元素交互|r
    .complete 54412,1 --1/1 Command Jaina's Water Elemental
    .timer 44, Water Elemental RP
step
    .goto 863,39.66,76.92,10,0
    .goto 863,40.22,77.33,10,0
    .goto 863,41.13,77.61,10,0
    .goto 863,41.5,78.65
    >>使用|T132298:0|t（1）来伤害你面前的敌人。
    >>使用|T893777:0|t（2）来伤害你周围的敌人。
    >>使用|T512902:0|t（3）破坏特定区域中的区域。
    >>|cRXP_WARN_垃圾邮件|T132298:0|t（1）和|T893777:0|t。|r
    .complete 54412,2 --50/50 Enemies slain in Zul'jan ruins
    .timer 10, ELemental RP
step
    .goto 863,44.24,78.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .turnin 54412 >>Turn in Zul'jan Deluge
    .accept 54417 >>接任务: |cRXP_WARN_展现实力|r
    .target Lady Jaina Proudmoore
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r, Blademaster Telaamon
    .accept 54421 >>接任务: |cRXP_WARN_驯服敌人的野兽|r
    .goto 863,44.2,78.62
    .accept 54418 >>接任务: |cRXP_WARN_死亡机械|r
    .goto 863,44.28,78.55
    .target Master Mathias Shaw
    .target Blademaster Telaamon
step
    #completewith beast
    >>杀死|cRXP_ENEMY_Zandalari|r
    .complete 54417,1 --12/12 Zandalari slain
    .mob Zandalari Witch Doctor
    .mob Zandalari Prelate
step
    .goto 863,45.38,72.51
    >>杀死|cRXP_ENEMY_A.M.O.D.|r
    .complete 54418,1 --1/1 A.M.O.D. slain
    .mob A.M.O.D.
    .mob Grit
step
    .goto 863,46.64,76.31
    >>与|cRXP_ENEMY_Resting Battlebeast|r交互
    .complete 54421,1,1 --3/3 Resting Battlebeast tamed
    .mob Resting Battlebeast
step
    .goto 863,48.85,76.49
    >>与|cRXP_ENEMY_Resting Battlebeast|r交互
    .complete 54421,1,2 --3/3 Resting Battlebeast tamed
    .mob Resting Battlebeast
step
    #label beast
    .goto 863,47.31,79.84
    >>与|cRXP_ENEMY_Resting Battlebeast|r交互
    .complete 54421,1,3 --3/3 Resting Battlebeast tamed
    .mob Resting Battlebeast
step
#loop
	.line 863,48.76,79.98,48.79,76.91,46.79,76.32,45.97,78.32
	.goto 863,48.76,79.98,20,0
	.goto 863,48.79,76.91,20,0
	.goto 863,46.79,76.32,20,0
	.goto 863,45.97,78.32,20,0
    >>杀死|cRXP_ENEMY_Zandalari|r
    .complete 54417,1 --12/12 Zandalari slain
    .mob Zandalari Witch Doctor
    .mob Zandalari Prelate
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Blademaster Telaamon, |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r, |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .turnin 54418 >>Turn in The Mech of Death
    .goto 863,50.37,84.17
    .turnin 54421 >>Turn in Taming their Beasts
    .goto 863,50.43,84.09
    .turnin 54417 >>Turn in Showing Our Might
    .accept 54441 >>接任务: |cRXP_WARN_拿下鲜血关口|r
    .goto 863,50.45,84.24
    .target Blademaster Telaamon
    .target Lady Jaina Proudmoore
    .target Master Mathias Shaw
step
    .goto 863,50.43,84.82
    >>与|cRXP_FRIENDLY_Controlled Beast交互|r
    .complete 54441,1 --1/1 Ride controlled battlebeast
step
    .goto 862,57.76,20.42
    >>在cd上使用|T132226:0|t（1）和|T252174:0|t。
    .complete 54441,2 --Blood Gates cleared (100%)
step
    .exitvehicle >>|cRXP_WARN_按操作栏上的|r[Exit]|cRXP_WARN_button，卸下|cRXP_FRONDLY_Controlled Beast|r。|r
    *|cRXP_WARN_或者，您可以使用此宏；|r
    .link /leavevehicle>>单击此处 FOR MACRO.
    *|cRXP_WARN_建议保护此宏以备将来使用。|r
step
    .goto 863,50.45,84.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马迪亚斯·肖尔大师|r
    .turnin 54441 >>Turn in Taking the Blood Gate
    .target Master Mathias Shaw
step
    .goto 863,50.37,84.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_吉安娜·普罗德摩尔|r
    .accept 54459 >>接任务: |cRXP_WARN_与圣光同行之人|r
    .target Lady Jaina Proudmoore
step
    .isOnQuest 54459
    .goto 863,50.38,84.08
    .zone Boralus >>单击|cRXP_PICK_Boralus|r
step
    .goto 1161,69.27,27.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高级指挥官哈尔弗·维姆班恩|r
    .turnin 54459 >>Turn in He Who Walks in the Light
    .target Halford Wyrmbane
]])
