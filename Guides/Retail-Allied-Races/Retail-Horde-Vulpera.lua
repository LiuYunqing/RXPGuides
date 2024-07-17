RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP联盟种族解锁
#groupweight 5
-- #subgroup Vulpera
#name 1) Vulpera Questline
#displayname Vulpera

<< Horde !Vulpera

step
    #completewith VulperaStartQuestline
    .zone 85 >>前往: |cRXP_PICK_奥格瑞玛|r
step
    .isOnQuest 49930
    .isQuestAvailable 49930
    .goto 85,53.23,90.47,10,0
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .turnin 49930 >>交任务: |cRXP_FRIENDLY_呼唤同盟|r
    .target Ji Firepaw
step
    .isQuestAvailable 50242
    .goto 85,37.76,81.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .accept 50242 >>接任务: |cRXP_WARN_选择盟友|r
    .target Ji Firepaw
step
    .isOnQuest 50242
    >>以任何顺序与横幅互动
    .goto 85,37.65,81.43
    .complete 50242,1 -- Learn more about the Highmountain Tauren
    .complete 50242,2 -- Learn more about the nightborne
    .complete 50242,3 -- Learn more about the Maghar Orcs
    .complete 50242,4 -- Learn more about the Zandalari trolls
    .complete 50242,5 -- Learn more about the Vulpera
step
    .isQuestComplete 50242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji Firepaw|r
    .goto 85,37.65,81.44
    .turnin 50242 >>Turn in A Choice of Allies
    .target Ji Firepaw
step
    #label VulperaStartQuestline
    .goto 85,37.77,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ji Firepaw
    .accept 53870 >>接任务: |cRXP_WARN_格罗玛什要塞的来客|r
    .target Ji Firepaw
step
    #completewith next
    .goto 85,49.88,75.57,10 >>输入Grommash Hold
step
    .goto 85,48.90,72.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r
    .turnin 53870 >>Turn in Guests at Grommash Hold
    .accept 53889 >>接任务: |cRXP_WARN_意图宣言|r
    .target Kiro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。与|cRXP_FRIENDLY_Kiro|r通话
    .goto 85,48.89,72.74
    .turnin 53889 >>Turn in A Declaration of Intent
    .accept 53890 >>接任务: |cRXP_WARN_新盟友，新问题|r
    .target Kiro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t等待RP。与|cRXP_FRIENDLY_Commander Dresh |r、|cRXP-FRIENDLY_Bladeguard Sonji |r和|cRXP_FRIENDLY _First Arcanist Thalyssra|r交谈
    .complete 53890,1 --1/1 Commander Dresh questioned
    .goto 85,48.23,71.76
    .complete 53890,2 --1/1 Bladeguard Sonji questioned
    .goto 85,48.69,71.63
    .complete 53890,3 --1/1 First Arcanist Thalyssra questioned
    .goto 85,48.65,71.25
    .skipgossip
    .target Commander Dresh
    .target Bladeguard Sonji
    .target First Arcanist Thalyssra
step
    .goto 85,48.88,72.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r
    .turnin 53890 >>Turn in New Allies, New Problems
    .accept 53891 >>接任务: |cRXP_WARN_事无巨细|r
    .target Kiro
step
    #completewith next
    .goto 85,49.88,75.57,10 >>Leave Grommash Hold
step
    .isOnQuest 53891
    .goto 85,50.22,39.46
    .zone 241 >>乘坐传送门前往黄昏高地
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r
    .goto 241,44.11,73.47
    .turnin 53891 >>Turn in No Problem Too Small
    .accept 53892 >>接任务: |cRXP_WARN_工人去哪儿了？|r
    .target Kiro
step
    >>沿着箭头到达航路点
    .goto 241,46.81,66.22
    .complete 53892,1 --1/1 Follow Kiro
    .target Kiro
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Enter the house
step
    >>Wait for the RP
    .goto 241,46.05,65.60
    .complete 53892,2 --1/1 Peon Hideout investigated
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crushblow Peons|r
    .goto 241,46.05,65.60
    .skipgossip
    .complete 53892,3 --3/3 Peons questioned
    .target Crushblow Peon
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Leave the cellar
step
    .goto 241,46.81,66.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r
    .turnin 53892 >>Turn in Where Are the Workers?
    .accept 53893 >>接任务: |cRXP_WARN_一点善意|r
    .accept 53894 >>接任务: |cRXP_WARN_必先利其器|r
    .accept 53895 >>接任务: |cRXP_WARN_苦工升职！|r
    .target Kiro
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Enter the house
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crushblow Peons|r
    .goto 241,46.09,65.59
    .skipgossip 1
    .complete 53895,1 --3/3 Peons promoted
    .target Crushblow Peon
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Leave the cellar
step
    #completewith next
    >>从矿脉中拾取|cRXP_Pick_Twilight Ore|r
    .complete 53894,1 --15/15 Twilight Ore
step
    >>使用|T310733:0|t[放大图腾]，然后在该区域周围杀死|cRXP_ENEMY_bears|r。掠夺它们的|cRXP_Loot_侧翼|r、|cRXP_Loot_肉|r和|cRXP-Loot_花边|r
    .goto 241,48.40,65.62,30,0
    .goto 241,46.62,63.33,30,0
    .goto 241,44.39,67.00,30,0
    .goto 241,45.34,67.78,30,0
    .goto 241,50.10,74.37,30,0
    .goto 241,53.75,71.69,30,0
#loop
	.line 241,48.40,65.62,46.62,63.33,44.39,67.00,45.34,67.78,50.10,74.37,53.75,71.69
	.goto 241,48.40,65.62,35,0
	.goto 241,46.62,63.33,35,0
	.goto 241,44.39,67.00,35,0
	.goto 241,45.34,67.78,35,0
	.goto 241,50.10,74.37,35,0
	.goto 241,53.75,71.69,35,0
    .complete 53893,1 --100/100 Saber Flank
    .complete 53893,2 --100/100 Worg Meat
    .complete 53893,3 --100/100 Clucker Tidbits
    .use 171356
    .mob Twilight Prowler
    .mob Highlands Clucker
step
    >>从矿脉中拾取|cRXP_Pick_Twilight Ore|r
    .goto 241,51.13,68.58,30,0
    .goto 241,48.60,70.24,30,0
    .goto 241,46.42,72.89,30,0
#loop
	.line 241,51.13,68.58,48.60,70.24,46.42,72.89
	.goto 241,51.13,68.58,30,0
	.goto 241,48.60,70.24,30,0
	.goto 241,46.42,72.89,30,0
    .complete 53894,1 --15/15 Twilight Ore
step
    .goto 241,46.81,66.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r
    .turnin 53893 >>Turn in A Little Goodwill
    .turnin 53894 >>Turn in Worthwhile Repairs
    .turnin 53895 >>Turn in Peon Promotions!
    .accept 53897 >>接任务: |cRXP_WARN_犒劳宴|r
    .target Kiro
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Enter the house
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Magrok|r and defeat him
    .goto 241,45.93,65.50
    .complete 53897,1 --1/1 Foreman Magrok invited
    .skipgossip
    .target Foreman Magrok
step
    #completewith next
    .goto 241,46.62,65.95,8 >>Leave the cellar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r
    .goto 241,45.04,76.24
    .turnin 53897 >>Turn in A Party in Your Honor
    .accept 53898 >>接任务: |cRXP_WARN_力量与荣耀|r
    .target Kiro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Magrok|r and defaet him
    .goto 241,45.67,76.42
    .complete 53898,1 --1/1 Foreman Magrok confronted
    .complete 53898,2 --1/1 Foreman Magrok defeated
    .skipgossip
    .target Foreman Magrok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r
    .goto 241,45.04,76.24
    .turnin 53898 >>Turn in Strength and Honor
    .accept 54026 >>接任务: |cRXP_WARN_完工了|r
    .target Kiro
step << Mage
    .zoneskip 85
    .cast 3567>>Use 电话：Orgrimmar
step
    .zoneskip 85
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>使用协调的外衣
step
    .zoneskip 85
    .zone 627 >>使用达拉然炉石（如果你的玩具盒里有）
step
    .zoneskip 627,1
    .goto 627,55.27,23.97
    .zone 85 >>使用Orgrimmar门户
step
    .isOnQuest 54026
    .zoneskip 85
    .goto 18,60.74,58.67
    .zone 85 >>前往: |cRXP_PICK_杜隆塔尔|r
step
    #completewith next
    .goto 85,49.88,75.57,10 >>输入Grommash Hold
step
    .goto 85,48.21,71.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Dresh|r
    .turnin 54026 >>Turn in Job's Done
    .target Commander Dresh
step
    .goto 85,49.02,73.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r
    .accept 53899 >>接任务: |cRXP_WARN_郊外|r
    .target Kiro
step
    #completewith next
    .goto 85,49.88,75.57,10 >>Leave Grommash Hold
step
    .isOnQuest 53899
    .goto 85,53.42,90.44,10,0
    .goto 85,58.55,91.31
    .zone 1163 >>把传送门带到祖尔达扎
step
    #completewith VulperaOntheOutskirts
    .goto 1165,49.94,42.02,10 >>Leave The Great Seal
step
    #completewith next
    .noflyable 862
    .goto 1165,51.91,41.20
    .fly Seeker's Outpost >>Fly to Seeker's Outpost
step
    #label VulperaOntheOutskirts
    .goto 862,74.86,63.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r
    .turnin 53899 >>Turn in On the Outskirts
    .accept 53901 >>接任务: |cRXP_WARN_爆炸总能奏效|r
    .accept 53900 >>接任务: |cRXP_WARN_借用武器|r
    .accept 58087 >>接任务: |cRXP_WARN_摧毁电源|r
    .target Nisha
step
    #completewith VulperaExplosionsAlwaysWork
    >>杀死|cRXP_ENEMY_Nazeshi监督员|r或|cRXX_ENEMY_纳泽希Tempest Wield|r。掠夺他们的|cRXD_Loot_武器|r
    .complete 53900,1 --10/10 Nazeshi Weaponry collected
    .mob Nazeshi Tempest-Wielder
    .mob Nazeshi Overseer
step
    #title Powercell 1/3
    >>Destroy the Powercell
    .goto 862,77.13,63.87
    .complete 58087,1,1 --1/3 Nazeshi Powercell destroyed
step
    #title Powercell 2/3
    >>Destroy the Powercell
    .goto 862,75.64,64.94
    .complete 58087,1,2 --2/3 Nazeshi Powercell destroyed
step
    #title Powercell 3/3
    >>Destroy the Powercell
    .goto 862,76.61,66.54
    .complete 58087,1 --3/3 Nazeshi Powercell destroyed
step
    #title Explosives placed 2/8
    >>将炸药放置在高处
    .goto 862,75.73,67.67
    .complete 53901,1,2 --2/8 Explosives placed
step
    #title Explosives placed 4/8
    >>将炸药放置在高处
    .goto 862,75.03,67.89
    .complete 53901,1,4 --4/8 Explosives placed
step
    #title Explosives placed 6/8
    >>将炸药放置在高处
    .goto 862,74.31,67.83
    .complete 53901,1,6 --6/8 Explosives placed
step
    #label VulperaExplosionsAlwaysWork
    #title Explosives placed 8/8
    >>将炸药放置在高处
    .goto 862,73.71,66.84
    .complete 53901,1 --8/8 Explosives placed
step
    >>杀死|cRXP_ENEMY_Nazeshi监督员|r或|cRXX_ENEMY_纳泽希Tempest Wield|r。掠夺他们的|cRXD_Loot_武器|r
    .goto 862,74.18,65.41,20,0
    .goto 862,75.11,66.23,20,0
    .goto 862,76.92,66.23,25,0
    .goto 862,77.14,63.93,25,0
#loop
	.line 862,74.18,65.41,75.11,66.23,76.92,66.23,77.14,63.93
	.goto 862,74.18,65.41,30,0
	.goto 862,75.11,66.23,30,0
	.goto 862,76.92,66.23,30,0
	.goto 862,77.14,63.93,30,0
    .complete 53900,1 --10/10 Nazeshi Weaponry collected
    .mob Nazeshi Tempest-Wielder
    .mob Nazeshi Overseer
step
    >>使用[ExtraActionButton]
    .goto 862,73.72,66.84
    .complete 53901,2 --1/1 Explosives detonated
step
    .goto 862,74.86,63.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r
    .turnin 53901 >>Turn in Explosions Always Work
    .turnin 53900 >>Turn in We'll Use Their Weapons
    .turnin 58087 >>Turn in Destroying the Source
    .accept 53902 >>接任务: |cRXP_WARN_解决唤潮者|r
    .target Nisha
step
    >>杀死|cRXP_ENEMY_Tidecaller Nezara|r。|cRXP-WARN_如果你是60级，一定要躲开水上炸弹（地面上的蓝色漩涡）|r
    .goto 862,77.18,65.30
    .complete 53902,1 --1/1 Tidecaller Nezara slain
    .mob Tidecaller Nezara
step
    .goto 862,77.18,65.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nisha|r next to you
    .turnin 53902 >>Turn in Taking Out the Tidecaller
    .accept 54027 >>接任务: |cRXP_WARN_威胁得到控制|r
    .target Nisha  
step << Mage
    .zoneskip 85
    .cast 3567>>Use 电话：Orgrimmar
step
    .zoneskip 85
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>使用协调的外衣
step
    .zoneskip 85
    .zone 627 >>使用达拉然炉石（如果你的玩具盒里有）
step
    .zoneskip 627,1
    .goto 627,55.27,23.97
    .zone 85 >>使用Orgrimmar门户
step
    .zoneskip 85
    #completewith next
    .isOnQuest 54027
    .noflyable 862
    .goto 862,70.45,65.30
    .fly The Great Seal >>Fly to The Great Seal
step
    .zoneskip 85
    .isOnQuest 54027
    #completewith VulperaOntheOutskirts
    .goto 1165,49.94,42.02,10 >>Enter The Great Seal
step
    .isOnQuest 54027
    .zoneskip 85
    .goto 1163,73.72,70.00
    .zone 85 >>前往: |cRXP_PICK_杜隆塔尔|r
step
    #completewith next
    .goto 85,49.88,75.57,10 >>输入Grommash Hold
step
    .goto 85,48.68,71.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bladeguard Sonji
    .turnin 54027 >>Turn in Threat Contained
    .target Bladeguard Sonji
step
    .goto 85,49.02,73.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r
    .accept 53903 >>接任务: |cRXP_WARN_找到米尔拉|r
    .target Kiro
step
    #completewith next
    .goto 85,49.88,75.57,10 >>Leave Grommash Hold
step
    .isOnQuest 53899
    .goto 85,53.42,90.44,10,0
    .goto 85,58.86,89.52
    .zone 630 >>把传送门带到阿祖那
step
    .goto 680,58.94,55.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meerah|r
    .turnin 53903 >>Turn in Meet with Meerah
    .accept 53904 >>接任务: |cRXP_WARN_酿酒师的助手|r
    .target Meerah
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大老板米达|r
    .goto 680,60.69,56.38
    .skipgossip
    .complete 53904,2 --1/1 Speak to Boss Mida
    .target Boss Mida
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micah Broadhoof|r inside the house
    .goto 680,61.22,55.15
    .complete 53904,1 --1/1 Speak to Micah Broadhoof
    .target Micah Broadhoof
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nomi|r
    .goto 680,62.42,57.64
    .complete 53904,3 --1/1 Speak to Nomi
    .target Nomi
step
    .goto 680,58.94,55.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meerah|r
    .turnin 53904 >>Turn in The Vintner's Assistants
    .accept 53905 >>接任务: |cRXP_WARN_各展所长|r
    .target Meerah
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大老板米达|r
    .goto 680,60.69,56.38
    .skipgossip 1
    .complete 53905,2 --1/1 Boss Mida assigned
    .target Boss Mida
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Micah Broadhoof|r inside the house
    .goto 680,61.22,55.15
    .skipgossip 2
    .complete 53905,1 --1/1 Micah assigned
    .target Micah Broadhoof
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nomi|r
    .goto 680,62.42,57.65
    .skipgossip 1
    .complete 53905,3 --1/1 Nomi assigned
    .target Nomi
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vintner Iltheux|r inside the house
    .goto 680,58.79,55.43
    .complete 53905,4 --1/1 Vintner Iltheux informed
    .target Vintner Iltheux
step
    .goto 680,58.80,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meerah|r
    .turnin 53905 >>Turn in Playing to Their Strengths
    .accept 54036 >>接任务: |cRXP_WARN_特别流程|r
    .target Meerah
step
    .goto 680,60.59,56.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nomi|r
    .turnin 54036 >>Turn in A Particular Process
    .accept 53906 >>接任务: |cRXP_WARN_给部落的佳酿|r
    .target Nomi
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大老板米达|r, Fermented Fireblooms
    .goto 680,61.36,55.36
    .complete 53906,2 --10/10 Fermented Firebloom
    .target Boss Mida
step
    >>杀死|cRXP_ENEMY_Tattered Silkwwing|r。掠夺它们以获取|cRXX_Loot_Fibers|r
    .goto 680,63.97,57.97,25,0
    .goto 680,62.87,59.77,25,0
    .goto 680,61.06,57.61,25,0
    .goto 680,62.03,55.66,25,0
#loop
	.line 680,63.97,57.97,62.87,59.77,61.06,57.61,62.03,55.66
	.goto 680,63.97,57.97,25,0
	.goto 680,62.87,59.77,25,0
	.goto 680,61.06,57.61,25,0
	.goto 680,62.03,55.66,25,0
    .complete 53906,1 --20/20 Silkwing Fibers
    .mob Tattered Silkwing
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nomi|r and interact with the Nightborne Vat
    .turnin 53906 >>Turn in Fermented for the Horde
    .accept 53907 >>接任务: |cRXP_WARN_品酒|r
    .goto 680,60.60,56.22
    .complete 53907,1 --1/1 Collect a sample
    .goto 680,60.59,56.34
    .target Nomi
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vintner Iltheux|r and wait for the RP
    .goto 680,58.79,55.42
    .skipgossip
    .complete 53907,2 --1/1 Deliver the sample to Vintner Iltheux
    .target Vintner Iltheux
step
    .goto 680,58.80,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meerah|r
    .turnin 53907 >>Turn in Sip and Savor
    .accept 53908 >>接任务: |cRXP_WARN_等待归来|r
    .target Meerah
step << Mage
    .isOnQuest 53908
    .zoneskip 85
    .cast 3567>>Use 电话：Orgrimmar
step
    .isOnQuest 53908
    .zoneskip 85
    .itemcount 65274,1
    .cooldown item,65274,>0,1
    .cast 89158>>使用协调的外衣
step
    .isOnQuest 53908
    .zoneskip 85
    .zone 627 >>使用达拉然炉石（如果你的玩具盒里有）
step
    .isOnQuest 53908
    .zoneskip 85
    .goto 627,55.27,23.97
    .zone 85 >>使用传送门在达拉然组织边框
step
    #completewith next
    .goto 85,49.88,75.57,10 >>输入Grommash Hold
step
    .goto 85,48.31,71.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_贝恩·血蹄|r
    .turnin 53908 >>Turn in Awaiting Our Arrival
    .accept 57448 >>接任务: |cRXP_WARN_我们的新盟友|r
    .complete 57448,1 --1/1 Witness Baine welcome the vulpera to the Horde
    .target Baine Bloodhoof
step
    .goto 85,48.43,71.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基罗|r
    .turnin 57448 >>Turn in New Allies Among Us
    .target Kiro
step
    .isQuestTurnedIn 57448
    +祝贺你已经解锁了Vulpera！
]])