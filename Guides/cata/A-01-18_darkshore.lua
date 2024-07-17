local _,addon = ...
if addon.game ~= "CATA" or addon.player.faction ~= 'Alliance' then return end


RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysm 1-80 (A)
#cata
#name 10-18 Darkshore
#next 15-20 Redridge
#defaultfor NightElf/Worgen/Draenei
<< Alliance


step
    #optional
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德塔莉亚·银林|r
    .turnin 26383 >>交任务: |cRXP_FRIENDLY_乘风破浪|r << !Worgen
    .turnin 26385 >>交任务: |cRXP_FRIENDLY_乘风破浪|r << Worgen
    .accept 13518 >>接任务: |cRXP_WARN_最后一波幸存者|r
	.target Dentaria Silverglade
    .isOnQuest 26383 << !Worgen
    .isOnQuest 26385 << Worgen
step
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德塔莉亚·银林|r
    .accept 13518 >>接任务: |cRXP_WARN_最后一波幸存者|r
	.target Dentaria Silverglade
step
    .goto 62,50.92,18.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_宁莉瑟|r
    .vendor 43439 >>|cRXP_WARN_供应商和维修.|r
	.target Nyrisse
step
    .goto 62,50.22,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠戈琳达·纳希恩|r
    .accept 13522 >>接任务: |cRXP_WARN_水的威胁|r
	.target Ranger Glynda Nal'Shea
step
    #completewith finalrescue
    >>杀死|cRXP_ENEMY_Vile喷雾|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,45.02,18.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃科尔|r
    .complete 13518,4 --1/1 Volcor rescued
	.target Volcor
step
    .goto 62,44.11,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈沙拉·夜语|r
    .complete 13518,2 --1/1 Gershala Nightwhisper rescued
	.target Gershala Nightwhisper
step
    .goto 62,44.58,19.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiteclaw.|r
    .complete 13518,1 --1/1 Cerellean Whiteclaw rescued
	.target Cerellean Whiteclaw
step
	#label finalrescue
    .goto 62,42.91,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莎尔蒂|r
    .complete 13518,3 --1/1 Shaldyn rescued
	.target Shaldyn
step
    .goto 62,46.22,17.15,40,0
    .goto 62,44.85,17.07
    .goto 62,44.06,20.31
    .goto 62,42.91,21.51
    .goto 62,46.22,17.15
    >>杀死|cRXP_ENEMY_Vile喷雾|r
    .complete 13522,1 --8/8 Vile Spray slain
	.target Vile Spray
step
    .goto 62,50.21,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠戈琳达·纳希恩|r
    .turnin 13522 >>交任务: |cRXP_FRIENDLY_水的威胁|r
	.target Ranger Glynda Nal'Shea
step
    .goto 62,51.78,17.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德塔莉亚·银林|r
    .turnin 13518 >>交任务: |cRXP_FRIENDLY_最后一波幸存者|r
	.target Dentaria Silverglade
step
    .goto 62,51.8,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑞蒂亚·橡语|r
    .accept 13520 >>接任务: |cRXP_WARN_海洋的恩赐|r
	.target Serendia Oakwhisper
step
    .goto 62,50.934,18.614
    .home >>将你的炉石设置为Lor'danel
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹班恩·曲针|r
    .accept 13521 >>接任务: |cRXP_WARN_传声盒413号|r
	.target Wizbang Cranktoggle
step
    #completewith next
    >>杀死|cRXP_ENEMY_Corrupted Tide Crawler|r并掠夺他们的|cRXD_loot_ Corrupted潮汐爬行器肉|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Encrusted Clams|r underwater.
    .complete 13520,1 --16/16 Encrusted Clam Muscle
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>杀死|cRXP_ENEMY_Corrupted Tide Crawler|r并掠夺他们的|cRXD_loot_ Corrupted潮汐爬行器肉|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,53.24,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buzzbox 413.|r
    .turnin 13521 >>交任务: |cRXP_FRIENDLY_传声盒413号|r
    .accept 13527 >>接任务: |cRXP_WARN_食性无常|r
step
    .goto 62,55.1,21.0
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_ENEMY_Decomposing Thistle Bear.|r
    .complete 13527,1 --1/1 Foul Bear Carcass Sample
	.target Decomposing Thistle Bear
step
    .goto 62,51.17,19.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_维兹班恩·曲针|r
    .turnin 13527 >>交任务: |cRXP_FRIENDLY_食性无常|r
    .accept 13528 >>接任务: |cRXP_WARN_传声盒723号|r
	.target Wizbang Cranktoggle
step
    .goto 62,52.96,25.46,40,0
    .goto 62,54.02,25.28,40,0
    .goto 62,55.73,23.95,40,0
    .goto 62,54.87,27.67,40,0
    .goto 62,52.96,25.46
    >>杀死|cRXP_ENEMY_Bear|r并掠夺他们的|cRXD_loot_腐蚀的Thistle Bear肠子|r
    .complete 13528,1 --6/6 Corrupted Thistle Bear Guts
	.mob Corrupted Thistle Bear
	.mob Corrupted Thistle Bear Matriarch
	.mob Thistle Bear Cub
step
    .goto 62,54.17,29.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buzzbox 723.|r
    .turnin 13528 >>交任务: |cRXP_FRIENDLY_传声盒723号|r
    .accept 13554 >>接任务: |cRXP_WARN_黑暗中的解药|r
step
    #label itall
    .goto 62,56.26,27.41,40,0
    .goto 62,56.78,30.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .accept 13529 >>接任务: |cRXP_WARN_腐化的源头|r
	.target Tharnariun
step
    #completewith next
	>>杀死|cRXP_ENEMY_Vile Grells|r和|cRXD_ENEMY_Ville Corrupters|r，并掠夺它们以获取|cRXP_loot_Ful Ichor|r和| cRXP_loot_Foruptor的主密钥|r
	>>|cRXP_WARN_在您的任务中检查|cRXP_ENEMY_Licillin（稀有|r）。|r
    .complete 13554,1 --6/6 Foul Ichor
    .complete 13529,2 --8/8 Vile Grell slain
	.collect 44927,1,13557
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Corruptor's Master Key.|r
    .accept 13557 >>接任务: |cRXP_WARN_幸运儿|r
    .use 44927
	.mob Vile Grell
	.mob Vile Corruptor
	.unitscan Licillin
step
    .goto 62,57.51,32.31,15,0
    .goto 62,58.58,32.24,15,0
    .goto 62,58.13,32.84,15,0
    .goto 62,57.34,33.00,15,0
    .goto 62,57.17,32.12,15,0
    .goto 62,56.97,32.66,15,0
    .goto 62,56.58,33.64,15,0
    .goto 62,57.10,34.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cages|r |cFFfa9602throughout the Cave.|r
	.complete 13557,1
step
    .goto 62,58.41,33.08
    >>进入洞穴底层并杀死|cRXP_ENEMY_Zenn|r
    >>|cRXP_WARN_检查他旁边的箱子。它可能不在那里。|r
    .complete 13529,1 --1/1 Zenn Foulhoof slain
	.mob Zenn Foulhoof
step
    .goto 62,56.79,33.52,20,0
    .goto 62,57.43,33.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t单击洞穴后面的|cRXP_PICK_Disgusting Workbench |r。
    .accept 13831 >>接任务: |cRXP_WARN_令人不安的处方|r
step
    .goto 62,57.51,32.31,30,0
    .goto 62,58.58,32.24,30,0
    .goto 62,58.13,32.84,30,0
    .goto 62,57.34,33.0,30,0
    .goto 62,57.17,32.12,30,0
    .goto 62,56.97,32.66,30,0
    .goto 62,56.58,33.64,30,0
    .goto 62,57.10,34.18
    >>杀死|cRXP_ENEMY_Vile Grells|r和|cRXD_ENEMY_Ville Corrupters|r，并掠夺它们以获取|cRXP_loot_Ful Ichor|r和| cRXP_loot_Foruptor的主密钥|r
    >>|cRXP_WARN_在您的任务中检查|cRXP_ENEMY_Licillin（稀有|r）。|r
    .complete 13554,1 --6/6 Foul Ichor
    .complete 13529,2 --8/8 Vile Grell slain
	.collect 44927,1,13557
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Corruptor's Master Key.|r
    .accept 13557 >>接任务: |cRXP_WARN_幸运儿|r
	.mob Vile Grell
	.mob Vile Corrup
	.unitscan Licillin
    .use 44927
step
    #completewith next
    .hs >>Hearth to Lor'Danel
    --TODO: Check if logout skips work on the beta, might not need to hs
step
    .goto 62,51.13,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨纳瑞恩·绿树|r
    .turnin 13557 >>交任务: |cRXP_FRIENDLY_幸运儿|r
    .turnin 13831 >>交任务: |cRXP_FRIENDLY_幸运儿|r
    .turnin 13529 >>交任务: |cRXP_FRIENDLY_腐化的源头|r
	.target Tharnariun Treetender
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang.|r
    .turnin 13554 >>交任务: |cRXP_FRIENDLY_黑暗中的解药|r
	.target Wizbang
step
    #sticky
    #label boon1
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑞蒂亚·橡语|r
    .turnin 13520 >>交任务: |cRXP_FRIENDLY_海洋的恩赐|r
	.target Serendia Oakwhisper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沃科尔|r 
    .target Volcor
    .accept 13564 >>接任务: |cRXP_WARN_失踪的伙伴|r
    .goto 62,50.887,17.995
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r 
    .target Cerellean Whiteclaw
    .accept 13563 >>接任务: |cRXP_WARN_爱别离|r
    .goto 62,50.881,17.961
step
#requires boon1
    .goto 62,50.649,19.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠戈琳达·纳希恩|r
    .target Ranger Glynda Nal'Shea
    .accept 13562 >>接任务: |cRXP_WARN_巴莎兰的终焉之焰|r
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_爱瑞娅·秋光|r 
    .target Arya Autumnlight
    .accept 13561 >>接任务: |cRXP_WARN_安抚上层精灵|r
step
    .goto 62,45.958,34.240
    >>单击凉亭内的|cRXP_PICK_Brazier|r。
    .complete 13562,1
step
#sticky
#label pendant1
    .goto 62,48.482,36.634
    >>杀死|cRXP_ENEMY_Anaya Dawnrunner |r。掠夺她|cRXX_Loot_Anaya的吊坠|r
    .complete 13563,1 --|1/1 Anaya Dawnrunner slain
    .complete 13563,2 --|1/1 Anaya's Pendant
    .unitscan Anaya Dawnrunner
step
    .goto 62,47.180,35.201
    >>杀死|cRXP_ENEMY_Cursed Highbornes |r和|cRXX_ENEMY_Writing Highbornes | r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_爱瑞娅·秋光|r 
    .target Arya Autumnlight
    .turnin 13561 >>交任务: |cRXP_FRIENDLY_安抚上层精灵|r
step
    .goto 62,42.954,39.006
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者卡里修斯|r
    .target Keeper Karithus
    .turnin 13564 >>交任务: |cRXP_FRIENDLY_失踪的伙伴|r
    .accept 13566 >>接任务: |cRXP_WARN_仪式的材料|r
    .accept 13598 >>接任务: |cRXP_WARN_良药苦口|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛拉法恩|r 
    .target Seraphine
    .accept 13565 >>接任务: |cRXP_WARN_今非昔比|r
step
    .goto 62,40.944,38.615
    >>单击睡在树旁的|cRXP_PICK_Moonstrackers|r来掠夺它们的胡须
    *|cRXP_WARN_Only some of the mobs are neutral and are able to be looted|r
    .complete 13566,1 --|3/3 Moonstalker Whisker
    .mob Moonstalker
step
    .goto 62,45.206,41.222
    >>单击区域周围的|cRXP_PICK_Mottled Dos|r
    .complete 13566,2 --|3/3 Tuft of Mottled Doe Hair
    .mob Mottled Doe
step
    #label janira
    #sticky
    .goto 62,48.554,40.330
    >>杀死|cRXP_ENEMY_Lady Janira|r
    .complete 13565,1 --|1/1 Lady Janira slain
    .unitscan Lady Janira
step
#loop
    .goto 62,47.071,41.609,0
    .goto 62,47.429,40.389,0
    .goto 62,48.422,40.225,0
    .goto 62,49.074,39.158,0
    .goto 62,47.071,41.609,30,0
    .goto 62,47.429,40.389,30,0
    .goto 62,48.422,40.225,30,0
    .goto 62,49.074,39.158,30,0
    .goto 62,48.422,40.225,30,0
    .goto 62,48.422,40.225,30,0
    >>点击Lornesta废墟周围的|cRXP_PICK_黄色蘑菇|r
    .use 45911 >>杀死Darkscale nagas并使用其尸体上的|T134413:0|t[|cRXP_LOOT_石化根|r]来召唤一个Ent
    .complete 13598,1 --|6/6 Fuming Toadstool
    .complete 13565,2 --|6/6 Withered Ents called
    .mob Darkscale Scout
step
#loop
    .goto 62,48.579,38.630,0
    .goto 62,46.459,38.829,0
    .goto 62,48.579,38.630,30,0
    .goto 62,46.459,38.829,30,0
    >>单击河床旁的|cRXP_PICK_Hungry Thistle Bears|r饮用水来掠夺它们的毛皮
    *|cRXP_WARN_Only some of the mobs are neutral and are able to be looted|r
    .complete 13566,3 --|3/3 Thistle Bear Fur

step
#requires janira
    .goto 62,42.960,38.956
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赛拉法恩|r
    .target Seraphine
    .turnin 13565 >>交任务: |cRXP_FRIENDLY_今非昔比|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者卡里修斯|r
    .target Keeper Karithus
    .turnin 13566 >>交任务: |cRXP_FRIENDLY_仪式的材料|r
    .turnin 13598 >>交任务: |cRXP_FRIENDLY_良药苦口|r
    .accept 13569 >>接任务: |cRXP_WARN_誓缚仪式|r
step
    #completewith next
    .goto 62,42.960,38.956
    .gossipoption 37215>>单击任务给予者正前方的|cRXP_PICK_Grovekeeper的熏香|r。
    .aura 64198
step
    .goto 62,43.683,39.926
    .turnin 13567>>与|cRXP_FRIENDLY_Great Stag Spirit|r对话
    .disablecheckbox
    .complete 13569,1
    .target Great Stag Spirit
step
#requires janira
    .goto 62,42.960,38.956
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者卡里修斯|r
    .target Keeper Karithus
    .turnin 13569 >>交任务: |cRXP_FRIENDLY_誓缚仪式|r
    .accept 13599 >>接任务: |cRXP_WARN_锐爪复元|r
step
    .xp 13
--Grinding checkpoint, likely won't be needed at all
----CENTRAL DARKSHORE

step
    .goto 62,42.596,45.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女祭司艾琳雅|r
    .target Priestess Alinya
    .turnin -13601 >>交任务: |cRXP_FRIENDLY_援助难民|r
    .accept 13542 >>接任务: |cRXP_WARN_对抗暴风|r
    .accept 13543 >>接任务: |cRXP_WARN_三柄将碎之锤|r
    .accept 13573 >>接任务: |cRXP_WARN_玛法里奥的回归|r
step
    #optional
    #completewith windmaster
    >>杀死|cRXP_ENEMY_疯狂旋风|r元素并掠夺他们的|T236968:0|t[疯狂旋风护具]
    .collect 44868,8,13542,1,-1
    .mob Frenzied Cyclone
step
    .goto 62,40.818,41.476
    >>杀死|cRXP_ENEMY_Cloudtamer Wildmane|r
    .complete 13543,1 --|1/1 Cloudtamer Wildmane slain
    .unitscan Cloudtamer Wildmane
step
    .goto 62,39.159,38.314
    >>杀死|cRXP_ENEMY_Skylord Braax|r
    .complete 13543,3 --|1/1 Skylord Braax slain
    .unitscan Skylord Braax
step
#label windmaster
    .goto 62,37.829,42.721
    >>杀死|cRXP_ENEMY_Cloudtamer Wildmane|r
    .complete 13543,2 --|1/1 Windmaster Tzu-Tzu slain
    .unitscan Windmaster Tzu-Tzu
step
    #optional
    #completewith windmaster
    >>杀死|cRXP_ENEMY_疯狂旋风|r元素并掠夺它们的|cRXP_loot_胸罩|r
    .collect 44868,8,13542,1,-1
    .mob Frenzied Cyclone
step
#loop
    .goto 62,39.466,42.096,0
    .goto 62,40.585,41.779,40,0
    .goto 62,39.379,39.127,40,0
    .goto 62,37.963,43.867,40,0
    >>杀死|cRXP_ENEMY_疯狂旋风|r元素并掠夺它们的|cRXP_loot_胸罩|r
    .collect 44868,8,13542,1,-1
    .mob Frenzied Cyclone
step
    .goto 62,39.466,42.096
    .use 44868 >>右键单击Auberdine moonwell旁边的|T236968:0|t[疯狂旋风支架]，摧毁它们
    .complete 13542,1 --|8/8 Frenzied Cyclone bracers destroyed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵塞拉伊|r, |cRXP_FRIENDLY_柯维恩·月升|r
    .turnin 13542 >>交任务: |cRXP_FRIENDLY_对抗暴风|r
    .goto 62,42.595,45.160
    .target +Sentinel Selarin
    .turnin 13543 >>交任务: |cRXP_FRIENDLY_三柄将碎之锤|r
    .goto 62,42.680,45.152
    .target +Corvine Moonrise
--
step
    .goto 62,43.638,53.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛法里奥·怒风|r
    .target Malfurion Stormrage
    .turnin 13573 >>交任务: |cRXP_FRIENDLY_玛法里奥的回归|r
    .accept 13575 >>接任务: |cRXP_WARN_大地的血脉|r
    .accept 13577 >>接任务: |cRXP_WARN_最后的枭兽|r
    .accept 13579 >>接任务: |cRXP_WARN_亚米萨兰的保护者|r
--
step
    .goto 62,45.558,48.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿隆姆|r
    .target Aroom
    .turnin 13577 >>交任务: |cRXP_FRIENDLY_最后的枭兽|r
    .accept 13578 >>接任务: |cRXP_WARN_阿隆姆的告别|r
step
#loop
    .goto 62,45.015,47.835,0
    .goto 62,44.704,45.966,40,0
    .goto 62,46.463,47.371,40,0
    .goto 62,45.046,49.702,40,0
    .goto 62,43.670,47.028,40,0
    >>在地面上寻找|cRXP_PICK_Wildkin羽毛|r，通常在树和灌木旁边
    .complete 13578,1 --|8/8 Slain Wildkin Feather
step
    .goto 62,45.556,48.475
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿隆姆|r
    .target Aroom
    .turnin 13578 >>交任务: |cRXP_FRIENDLY_阿隆姆的告别|r
    .accept 13582 >>接任务: |cRXP_WARN_艾露恩之火|r
step
#loop
    .goto 62,46.875,50.147,0
    .goto 62,46.875,50.147,40,0
    .goto 62,45.698,52.584,40,0
    .goto 62,46.867,50.276,40,0
    >>杀死火焰守护者|cRXP_ENEMY_Horoo |r并掠夺|T135777:0|t[精灵的火炬]，他在东湖周围巡逻
    .complete 13582,1 --|1/1 Elune's Torch
    .unitscan Horoo the Flamekeeper
step
    .goto 62,45.593,48.472
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿隆姆|r
    .target Aroom
    .turnin 13582 >>交任务: |cRXP_FRIENDLY_艾露恩之火|r
    .accept 13583 >>接任务: |cRXP_WARN_枭兽之誓|r
--
step
    .goto 62,40.952,56.480
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_棕掌长者|r
    .target Elder Brownpaw
    .turnin 13575 >>交任务: |cRXP_FRIENDLY_大地的血脉|r
    .accept 13576 >>接任务: |cRXP_WARN_互惠互助|r

step
#loop
    .goto 62,40.288,61.724,0
    .goto 62,40.576,59.527,40,0
    .goto 62,39.982,63.824,40,0
    .use 44959 >>杀死|cRXP_ENEMY_Unbound Fire Elements|r并在其尸体上使用|T136061:0|t[安抚图腾]
    .complete 13576,1 --|8/8 Unbound Fire Elemental absorbed
    .mob Unbound Fire Elemental
step
    .goto 62,40.933,56.516
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_棕掌长者|r
    .target Elder Brownpaw
    .turnin 13576 >>交任务: |cRXP_FRIENDLY_互惠互助|r
    .accept 13580 >>接任务: |cRXP_WARN_安抚元素|r
step
    .goto 62,39.329,62.143
    .use 46546 >>使用俯瞰顶部祭坛旁边的|T135839:0|t[通电安抚图腾]，然后保护它免受敌人的攻击
    .complete 13580,1 --|1/1 Ritual of Soothing complete

step
    .goto 62,40.938,56.548
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_棕掌长者|r
    .target Elder Brownpaw
    .turnin 13580 >>交任务: |cRXP_FRIENDLY_安抚元素|r
    .accept 13581 >>接任务: |cRXP_WARN_黑木誓言|r
--
step
    .goto 62,44.451,56.699
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟里恩|r
    .target Selenn
    .turnin 13579 >>交任务: |cRXP_FRIENDLY_亚米萨兰的保护者|r
    .accept 13584 >>接任务: |cRXP_WARN_平息土地|r
step
#loop    
    .goto 62,43.922,59.006,0
    .goto 62,45.281,58.363,40,0
    .goto 62,42.966,60.120,40,0
    .goto 62,45.190,56.295,40,0
    >>杀死|cRXP_ENEMY_激怒的地球元素|r
    .complete 13584,1 --|8/8 Enraged Earth Elemental slain
    .mob Enraged Earth Elemental
step
    .goto 62,44.423,56.745
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瑟里恩|r
    .target Selenn
    .turnin 13584 >>交任务: |cRXP_FRIENDLY_平息土地|r
    .accept 13585 >>接任务: |cRXP_WARN_誓死保护|r
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛法里奥·怒风|r
    .target Malfurion Stormrage
    .turnin 13581 >>交任务: |cRXP_FRIENDLY_黑木誓言|r
    .turnin 13583 >>交任务: |cRXP_FRIENDLY_枭兽之誓|r
    .turnin 13585 >>交任务: |cRXP_FRIENDLY_誓死保护|r
    .accept 13586 >>接任务: |cRXP_WARN_翡翠梦境|r
--
step
#completewith next
    .goto 62,46.620,54.478,25,0
    .goto 62,47.366,55.964,25 >>朝着碎地洞穴走去
    .subzoneskip 4708
step
    .goto 62,49.082,57.007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t单击噩梦门户并与|cRXP_FRIENDLY_Thessera|r对话
    .target Thessera
    .turnin 13586 >>交任务: |cRXP_FRIENDLY_翡翠梦境|r
    .accept 13587 >>接任务: |cRXP_WARN_清醒的梦魇|r
step
    .goto 62,50.115,55.431
    >>杀戮和掠夺|cRXP_ENEMY_噩梦守护者|r
    .complete 13587,1 --|1/1 Emerald Scroll
    .mob Nightmare Guardian
step
    .goto 62,49.163,56.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔丝瑟拉|r
    .target Thessera
    .turnin 13587 >>交任务: |cRXP_FRIENDLY_清醒的梦魇|r
    .accept 13940 >>接任务: |cRXP_WARN_离开梦境|r
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛法里奥·怒风|r
    .target Malfurion Stormrage
    .turnin 13940 >>交任务: |cRXP_FRIENDLY_离开梦境|r
    .accept 13588 >>接任务: |cRXP_WARN_群风之眼|r
step
    .goto 62,43.555,53.701
    >>对话: |cRXP_FRIENDLY_塔丝瑟拉|r, Twilight Riders, |cRXP_ENEMY_暮光传送门|r
    .complete 13588,1 --|1/1 Twilight Portal slain
    .mob +Twilight Portal
    .complete 13588,2 --|12/12 Twilight Rider slain
    .mob +Twilight Rider
    .target Thessera
step
    .goto 62,43.647,53.432
    >>使用第二种能力降落你的猎物
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛法里奥·怒风|r
    .target Malfurion Stormrage
    .turnin 13588 >>交任务: |cRXP_FRIENDLY_群风之眼|r
    .usespell 65579--landing spell, not sure if it works

----
step
    #completewith next
    .hs >>Hearth to Lor'Danel
step
#sticky
#label glynda2
    .goto 62,50.649,19.992,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠戈琳达·纳希恩|r
    .target Ranger Glynda Nal'Shea
    .turnin 13562 >>交任务: |cRXP_FRIENDLY_巴莎兰的终焉之焰|r
    .accept 13589 >>接任务: |cRXP_WARN_碎矛入侵者|r
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑞蒂亚·橡语|r
    .turnin 13599 >>交任务: |cRXP_FRIENDLY_锐爪复元|r
	.target Serendia Oakwhisper
step
    .goto 62,50.825,17.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .target Cerellean Whiteclaw
    .turnin 13563 >>交任务: |cRXP_FRIENDLY_爱别离|r
step << skip
#requires glynda2
    .goto 62,50.986,19.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r 
    .target Gorbold Steelhand
    .accept 13560 >>接任务: |cRXP_WARN_不那么深的海洋|r
step << skip--terrible xp/hr
    .goto 62,52.954,11.045,0
    .goto 62,52.954,11.045,15,0
    >>单击Gary旁边的|cRXP_PICK_Decoy Bot控制台|r
    .target Gary
    >>使用机器人杀死附近沉船周围的穆洛克人
    .complete 13560,1
step
#requires glynda2
    .goto 62,58.930,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫拉·星风中尉|r
    .target Lieutenant Morra Starbreeze
    .turnin 13589 >>交任务: |cRXP_FRIENDLY_碎矛入侵者|r
    .accept 13504 >>接任务: |cRXP_WARN_碎矛劳工|r
    .accept 13505 >>接任务: |cRXP_WARN_上层精灵的遗留|r
step
    #sticky
    #label overseer
#loop
    .waypoint 62,60.342,17.689,45,0
    .waypoint 62,60.691,13.745,45,0
    .waypoint 62,63.258,15.511,45,0
    .waypoint 62,62.593,19.890,45,0
    .goto 62,61.832,17.573,0,0
    .use 44979>>杀死并掠夺一个|cRXP_ENEMY_Shatterspear监督|r
    .unitscan Shatterspear Overseer
    .collect 44979,1,13506
    .accept 13506 >>接任务: |cRXP_WARN_担心的理由|r

step
#loop
    .goto 62,60.342,17.689,45,0
    .goto 62,60.691,13.745,45,0
    .goto 62,63.258,15.511,45,0
    .goto 62,62.593,19.890,45,0
    .line 62,60.342,17.689,60.691,13.745,63.258,15.511,62.593,19.890,60.342,17.689
    >>杀死|cRXP_ENEMY_Shatterspear劳工|r
    >>掠夺散落在挖掘现场的小型|cRXP_PICK_遗迹|r
    .complete 13504,1 --|10/10 Shatterspear Laborer slain
    .complete 13505,1 --|8/8 Highborne Relic

    .mob Shatterspear Laborer
step
    #requires overseer
    .goto 62,58.893,19.462
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫拉·星风中尉|r
    .target Lieutenant Morra Starbreeze
    .turnin 13506 >>交任务: |cRXP_FRIENDLY_担心的理由|r
    .accept 13508 >>接任务: |cRXP_WARN_快速反应|r
    .turnin 13504 >>交任务: |cRXP_FRIENDLY_碎矛劳工|r
    .turnin 13505 >>交任务: |cRXP_FRIENDLY_上层精灵的遗留|r
    .accept 13509 >>接任务: |cRXP_WARN_战时补给|r
    .accept 13507 >>接任务: |cRXP_WARN_消减人手|r
step
#completewith escort1a
    .goto 62,62.143,9.604,0
    >>杀死|cRXP_ENEMY_Enforcers|r和|cRXX_ENEMY_Mystics|r
    .use 44999 >>在部落营地周围的箱子上使用|T135433:0|t[哨兵火炬]
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,63.757,6.014
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥兰达利亚·夜歌|r
    .target Alanndarian Nightsong
    .turnin 13508 >>交任务: |cRXP_FRIENDLY_快速反应|r
    .accept 13511 >>接任务: |cRXP_WARN_悲恨仇怨|r
step
    .goto 62,64.122,5.336
    >>杀戮和掠夺|cRXP_ENEMY_Rit'ko|r
    .complete 13511,1 --|1/1 Rit'ko slain
    .collect 45040,1,13510--Key
    .mob Rit'ko
step
    .goto 62,64.439,5.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t使用您之前获得的密钥释放|cRXP_FRIENDLY_Sentine Aynasha|r 
    .target Sentinel Aynasha
    .accept 13510 >>接任务: |cRXP_WARN_及时赶到|r
step
    #label escort1a
    >>护送|cRXP_FRIENDLY_大陆Aynasha|r
    .complete 13510,1
    .target Sentinel Aynasha
step 
#loop
    .goto 62,62.929,8.213,30,0
    .goto 62,61.720,11.021,30,0
    .goto 62,62.143,9.604,0
    >>杀死|cRXP_ENEMY_Enforcers|r和|cRXX_ENEMY_Mystics|r
    .use 44999 >>在部落营地周围的箱子上使用|T135433:0|t[哨兵火炬]
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,58.901,19.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哨兵坦莎·月刃|r
    .target Sentinel Tysha Moonblade
    .turnin 13507 >>交任务: |cRXP_FRIENDLY_消减人手|r
    .turnin 13509 >>交任务: |cRXP_FRIENDLY_战时补给|r
    .turnin 13510 >>交任务: |cRXP_FRIENDLY_及时赶到|r
    .turnin 13511 >>交任务: |cRXP_FRIENDLY_悲恨仇怨|r
    .accept 13512 >>接任务: |cRXP_WARN_战略打击|r
    .accept 13513 >>接任务: |cRXP_WARN_一触即发|r
step
    .goto 62,59.154,19.624
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马萨斯·深林|r 
    .target Mathas Wildwood
    .accept 13844 >>接任务: |cRXP_WARN_奥萨拉克斯的藏宝|r
step
#sticky
#label sheya
    .goto 62,61.233,20.367
    .use 44995 >>使用|T136021:0|t[干矛]击杀|cRXP_ENEMY_Sheya Stormwaver|r
    .complete 13512,2 --|1/1 Sheya Stormweaver slain
    .unitscan Sheya Stormweaver
step
#sticky
#loop
#label shamans
    .waypoint 62,61.233,20.367,20,0
    .waypoint 62,56.801,25.781,20,0
    .waypoint 62,61.233,20.367,0
    .waypoint 62,56.801,25.781,0
    >>杀死并掠夺|cRXP_ENEMY_Shatterspear萨满|r的护身符
    .complete 13513,1 --|6/6 Shatterspear Amulet
    .mob Shatterspear Shaman
step
#requires sheya
    .goto 62,58.242,23.971
    >>登塔击杀|cRXP_ENEMY_Teegan|r
    >>Loot|cRXP_Loot_Narassin's Tome|r，位于塔楼中间的一个小Tome
    .complete 13844,1 --|1/1 Teegan Holloway slain
    .complete 13844,2 --|1/1 Narassin's Tome
    .mob Teegan Holloway
step
    .goto 62,56.801,25.781
    .use 44995 >>使用|T136021:0|t[干矛]击杀|cRXP_ENEMY_Lorenth雷电召唤|r
    .complete 13512,1 --|1/1 Lorenth Thundercall slain
    .mob Lorenth Thundercall
step--TODO: Fix this bit
#requires shamans
    .goto 1439/1,-804.20001,7376.39990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马萨斯·深林|r 
    .target Mathas Wildwood
    .turnin 13844 >>交任务: |cRXP_FRIENDLY_奥萨拉克斯的藏宝|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巴苏尔·影击|r
    .goto 1439/1,-791.50000,7381.60010
    .turnin 13513 >>交任务: |cRXP_FRIENDLY_一触即发|r
    .target Balthule Shadowstrike  
step
    .goto 1439/1,-792.79999,7384.80029
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_莫拉·星风中尉|r
    .turnin 13512 >>交任务: |cRXP_FRIENDLY_战略打击|r
    .accept 13590 >>接任务: |cRXP_WARN_前线|r
    .target Lieutenant Morra Starbreeze
step
    .goto 1439/1,-1450.59998,7392.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗尼亚·恒影|r
    .accept 13514 >>接任务: |cRXP_WARN_古树的怒火|r
    .target Kerlonian Evershade
step
#completewith next
    .goto 62,69.435,19.546
    .vehicle >>右键单击|cRXP_FRIENDLY_Vengful Protector|r
step
    .goto 62,70.684,20.841,0
    .goto 62,70.589,16.872,0
    .goto 62,70.684,20.841,50,0
    .goto 62,70.589,16.872,50,0
    >>使用你的第一个技能杀死小巨魔，第二个技能烧毁小屋
    .complete 13514,1 --|30/30 Shatterspear Vale Trolls killed
    .complete 13514,2 --|6/6 Shatterspear Structures destroyed
step
    .goto 62,72.263,19.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t离开车辆并与|cRXP_FRIENDLY_Huntress Sandrya Moonfall通话|r
    .target Huntress Sandrya Moonfall
    .turnin 13590 >>交任务: |cRXP_FRIENDLY_前线|r
    .accept 13515 >>接任务: |cRXP_WARN_结束威胁|r
step
    .isOnQuest 13515
    .goto 62,72.263,19.096
    .gossip 33178,0 >>对话: |cRXP_FRIENDLY_女猎手桑德娅·月落|r
    .skipgossip 33178,1
    .target Huntress Sandrya Moonfall
step
    .goto 62,72.857,18.019
    >>跟随暗夜精灵哨兵，让他们坦克|cRXP_ENEMY_Jor'kil the Soulripper|r，然后掠夺他获得任务物品
    .complete 13515,1 --|1/1 Jor'kil the Soulripper slain
    .collect 46318,1,13591
    .accept 13591 >>接任务: |cRXP_WARN_令人不安的联系|r
    .mob Jor'kil the Soulripper
step
    .goto 62,72.251,19.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_女猎手桑德娅·月落|r
    .target Huntress Sandrya Moonfall
    .turnin 13515 >>交任务: |cRXP_FRIENDLY_结束威胁|r
--TODO: Test Logout skip
step
    .goto 62,69.109,19.249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗尼亚·恒影|r
    .target Kerlonian Evershade
    .turnin 13514 >>交任务: |cRXP_FRIENDLY_古树的怒火|r
step
    #completewith next
    .hs >>Hearth to Lor'Danel
step << skip
    .goto 62,51.004,19.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_高尔博德·钢手|r
    .target Gorbold Steelhand
    .turnin 13560 >>交任务: |cRXP_FRIENDLY_不那么深的海洋|r
step
    .goto 62,50.684,19.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_游侠戈琳达·纳希恩|r
    .target Ranger Glynda Nal'Shea
    .turnin 13591 >>交任务: |cRXP_FRIENDLY_令人不安的联系|r
step
    .goto 62,50.175,19.525
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塞瑞利恩·白爪|r
    .target Cerellean Whiteclaw
    .turnin 13570 >>交任务: |cRXP_FRIENDLY_铭记奥伯丁|r
--NORTHERN DARKSHORE END
step
#questguide
#completewith next
    .goto 62,51.724,17.651
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_特尔迪娜·月羽|r
    .target Teldira Moonfeather
    .fly Grove of the Ancients >>飞到古人的树林
step
#questguide
    .goto 62,45.141,75.174
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_佛利埃·阔叶|r 
    .target Foriel Broadleaf
    .accept 13525 >>接任务: |cRXP_WARN_黑木熊怪怎么了？|r
step
#questguide
    .goto 62,45.311,75.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利爪德鲁伊巴尔伦|r 
    .target Balren of the Claw
    .turnin -13902 >>交任务: |cRXP_FRIENDLY_组织进攻|r
    .accept 13892 >>接任务: |cRXP_WARN_不着痕迹|r
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡瑟娜·冬灵|r 
    .target Kathrena Winterwisp
    .accept 13881 >>接任务: |cRXP_WARN_病逝|r
step
#questguide
#completewith furbolgs
    >>杀死|cRXP_ENEMY_消耗的蓟熊|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
    .goto 62,45.062,79.069
    >>顺着水坑往下游
    .complete 13881,2 --|Watering Hole Investigated
step
#questguide
    .goto 62,43.524,80.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_熊怪长者|r
    .target Elder Brolg
    .turnin 13525 >>交任务: |cRXP_FRIENDLY_黑木熊怪怎么了？|r
    .accept 13526 >>接任务: |cRXP_WARN_熊爪草|r

step
#questguide
#loop
#label furbolgs
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    >>点击|cRXP_PICK_Bear’s Paw|r，它们看起来像地上的小灌木丛
    .complete 13526,1 --|8/8 Bear's Paw
step
#questguide
    .goto 62,40.634,84.297
    .subzone 449 >>大师魅力之旅
    .isOnQuest 13892
step
#questguide
    #completewith next
    .cast 65426 >>使用|T133236:0|t[豹形]变身为豹
step
#questguide
    .goto 62,40.634,84.297
    >>当你变成一只美洲豹时，偷偷地走到|cRXP_FRIENDLY_Foreman Balsoth|r那里偷听他的谈话
    .complete 13892,1 --|1/1 Twilight's Hammer surveillance
    .target Foreman Balsoth
    .use 46696
step
#questguide
    >>单击Questlog中弹出的Quest Turn in。
    .turnin 13892 >>交任务: |cRXP_FRIENDLY_不着痕迹|r
    .accept 13948 >>接任务: |cRXP_WARN_上前监视|r
step
#questguide
    .goto 62,39.658,86.384,10,0
    .goto 62,41.056,86.360,10,0
    .goto 62,40.733,85.046,10,0
    .goto 62,39.809,85.356,10,0
    .goto 62,40.101,84.651
    .use 46696 >>使用|T133236:0|t[豹形]变身为豹
    >>偷偷爬上|cRXP_FRIENDLY_Doomspeaker Trevelion|r一路爬上脚手架
    .target Doomspeaker Trevellion
    .complete 13948,1
step
#questguide
    .goto 62,43.535,81.019
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_熊怪长者|r
    .target Elder Brolg
    .turnin 13526 >>交任务: |cRXP_FRIENDLY_熊爪草|r
    .accept 13544 >>接任务: |cRXP_WARN_熊的祝福|r
step
#questguide
#sticky
#label fleetfoot
    .goto 62,45.103,78.471
    >>杀戮和掠夺|cRXP_ENEMY_Fleetfoot|r
    .collect 44886,1,13544,1
    .mob Fleetfoot
step
#questguide
#loop
    .goto 62,45.945,78.353,0
    .goto 62,42.014,76.593,0
    .goto 62,45.945,78.353,40,0
    .goto 62,42.014,76.593,40,0
    >>杀死|cRXP_ENEMY_消耗的蓟熊|r
    .complete 13881,1
step
#questguide
#requires fleetfoot
    .goto 62,45.300,76.734
    .use 44888 >>使用|cRXP_PICK_古代熊雕像|r旁边的|T134189:0|t[熊爪束]
    .complete 13544,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利爪德鲁伊巴尔伦|r
    .turnin 13948 >>交任务: |cRXP_FRIENDLY_上前监视|r
    .target +Balren of the Claw
    .goto 62,45.284,75.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉蕾|r 
    .accept 13896 >>接任务: |cRXP_WARN_出土的知识|r
    .target +Larien
    .goto 62,45.324,75.050
step
#questguide
    .goto 62,45.194,74.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡瑟娜·冬灵|r
    .target Kathrena Winterwisp
    .turnin 13881 >>交任务: |cRXP_FRIENDLY_病逝|r
    .accept 13882 >>接任务: |cRXP_WARN_生命之种|r
step
#questguide
    .goto 62,45.405,74.859
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r
    .complete 13882,1
    .skipgossip
    .target Onu
step
#questguide
    #sticky
    #label skyseed
    #loop
    .goto 62,41.860,77.050,0
    .goto 62,44.292,78.937,0
    .goto 62,40.902,79.825,0
    .waypoint 62,41.860,77.050,40,0
    .waypoint 62,44.292,78.937,40,0
    .waypoint 62,40.902,79.825,40,0
    >>查找|cRXP_PICK_Darkshore Wisps|r，在它们到达地面时右键单击它们
    .unitscan Darkshore Wisp
    .complete 13882,3
step
#questguide
    .goto 62,43.541,80.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_熊怪长者|r
    .turnin 13544 >>交任务: |cRXP_FRIENDLY_熊的祝福|r
    .accept 13545 >>接任务: |cRXP_WARN_净化感染者|r
    .target +Elder Brolg
    .accept 13572 >>接任务: |cRXP_WARN_碧火火盆|r
    .target +Gren Tornfur
step
#questguide
    #loop
    #sticky
    #label braziers
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0

    >>单击分散在营地周围的|cRXP_PICK_Jadefire Brazers|r
    .complete 13572,1 --|8/8 Jadefire Brazier
step
#questguide
#loop
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    .use 44889>>使用|T237425:0|t[Blessed Herb Bundle]在黑木毛皮上，然后杀死产生的|cRXP_ENEMY_Spirit of Corruption |r
    .complete 13545,1
    .mob Spirit of Corruption
    .target Maddened Blackwood
    .target Corrupted Blackwood
step
#questguide
#requires braziers
    .goto 62,43.539,80.984
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_戈伦·裂皮|r
    .turnin 13572 >>交任务: |cRXP_FRIENDLY_碧火火盆|r
    .target +Gren Tornfur
    .turnin 13545 >>交任务: |cRXP_FRIENDLY_净化感染者|r
    .accept 13546 >>接任务: |cRXP_WARN_污染者|r
    .target +Elder Brolg
step
#questguide
    .goto 62,46.754,84.038
    >>杀死|cRXP_ENEMY_Sharax诽谤者|r
    .complete 13546,1 --|1/1 Sharax the Defiler slain
    .mob Sharax the Defiler
step
#questguide
    .goto 62,43.526,80.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_熊怪长者|r
    .target Elder Brolg
    .turnin 13546 >>交任务: |cRXP_FRIENDLY_污染者|r

step
#questguide
#loop
    .goto 62,38.060,79.195,0
    .goto 62,38.645,78.225,0
    .goto 62,37.263,76.834,0
    .goto 62,37.999,74.396,0
    
    .goto 62,38.060,79.195,20,0
    .goto 62,38.645,78.225,20,0
    .goto 62,37.263,76.834,20,0
    .goto 62,37.999,74.396,20,0
    >>散落在东部海岸的织机|cRXP_PICK_闪闪发光的炮弹|r
    .complete 13882,2 --|1/1 Seed of the Sea
step
#questguide
#requires skyseed
    .goto 62,37.707,82.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家格罗夫|r
    .target Archaeologist Groff
    .turnin 13896 >>交任务: |cRXP_FRIENDLY_出土的知识|r
    .accept 13893 >>接任务: |cRXP_WARN_索苟斯与克洛恩|r
    .accept 13907 >>接任务: |cRXP_WARN_清扫废墟|r
step
#questguide
#sticky
#label prospector
    .goto 62,37.738,82.897
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_初级考古学家费德|r 
    .target Jr. Archaeologist Ferd
    .accept 13912 >>接任务: |cRXP_WARN_埋没的秘密|r
step
#questguide
    .goto 62,37.709,82.903
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勘察员雷塔维|r 
    .target Prospector Remtravel
    .accept 13911 >>接任务: |cRXP_WARN_心不在焉的勘察员|r
    >>|cRXP_WARN_这将开始一个护送任务|r
step
#questguide
    #completewith next
    #optional
    >>杀死|cRXP_ENEMY_Murlocs|r
    .complete 13907,1
step
#questguide
    >>护送|cRXP_FRIENDLY_Pospector Remtravel |r
    .complete 13911,1
    .target Prospector Remtravel
step
#questguide
#requires prospector
    .goto 62,37.023,83.441
    >>点击水下黄板状圆盘
    .complete 13912,1 --|1/1 Mud-Crusted Ancient Disc
step
#questguide
#loop
    .goto 62,36.355,83.599,20,0
    .goto 62,37.393,82.425,20,0
    .goto 62,36.572,84.501,20,0
    .goto 62,37.669,84.418,0
    >>杀死|cRXP_ENEMY_Murlocs|r
    .complete 13907,1

step
#questguide
#sticky
#label debris
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    >>海岸沿线的织机|cRXP_PICK_Greymist碎屑|r
    .complete 13909,1
step
#questguide
#completewith next
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    .use 46388 >>继续使用|T134519:0|t[埋藏文物探测器]来揭示|cRXP_PICK_埋藏碎片|r
    >>点击它们来掠夺|cRXP_loot_Device Fragments|r
    .collect 46702,5,13918,1
    .isOnQuest 13918
step
#questguide
#requires debris
    .use 46702 >>点击|T132997:0|t[古器碎片]组合
    .complete 13918,1
step
#questguide
    .goto 62,37.645,82.832
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家格罗夫|r
    .turnin 13909 >>交任务: |cRXP_FRIENDLY_有废料吗？|r
    .accept 13910 >>接任务: |cRXP_WARN_新家|r
    .target +Archaeologist Groff
    .turnin 13918 >>交任务: |cRXP_FRIENDLY_泰坦终端|r
step
#questguide
    .goto 62,35.945,81.989
    .complete 13910,1 --|1/1 Greymist Murloc Home Built
    .use 46385 >>在施工横幅附近使用|T132281:0|[神奇移动Murloc Manor Maker]
step
#questguide
    .goto 62,37.643,82.805
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_考古学家格罗夫|r
    .target Archaeologist Groff
    .turnin 13910 >>交任务: |cRXP_FRIENDLY_新家|r
step
#questguide
    .goto 62,45.310,75.054
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉蕾|r
    .target Larien
    .turnin 13893 >>交任务: |cRXP_FRIENDLY_索苟斯与克洛恩|r
step
#questguide
    .goto 62,45.210,74.633
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡瑟娜·冬灵|r
    .target Kathrena Winterwisp
    .turnin 13882 >>交任务: |cRXP_FRIENDLY_生命之种|r
    .accept 13925 >>接任务: |cRXP_WARN_一点预防措施|r
step
#questguide
    .goto 62,45.405,74.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安努|r 
    .target Onu
    .accept 13895 >>接任务: |cRXP_WARN_沉睡的古木|r

step
#questguide
    .goto 62,45.683,71.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿洛斯|r
    .target Aros
    .turnin 13895 >>交任务: |cRXP_FRIENDLY_沉睡的古木|r
step
#questguide
    .goto 62,45.568,71.637
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗鳞刺客|r 
    .target Darkscale Assassin
    .accept 13953 >>接任务: |cRXP_WARN_我们中的纳迦|r
step
#questguide
    .goto 62,45.303,75.129
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利爪德鲁伊巴尔伦|r
    .target Balren of the Claw
    .turnin 13953 >>交任务: |cRXP_FRIENDLY_我们中的纳迦|r
    .accept 13899 >>接任务: |cRXP_WARN_暗鳞督军|r
    .accept 13898 >>接任务: |cRXP_WARN_形势对我们不利|r
step
#questguide
#loop
    .goto 62,41.893,75.131,0
    .goto 62,40.264,73.207,0
    .goto 62,41.893,75.131,30,0
    .goto 62,40.264,73.207,30,0
    .complete 13925,1 --|1/1 Lifebringer Sapling Tested
    .use 46363 >>对未腐烂的动物使用|T133749:0|t[生命使者Sapling]
    .target Whitetail Stag
    .target Grizzled Thistle Bear
    .target Moonstalker Matriarch
    .target Moonstalker Sire
step
#questguide
    .goto 62,45.197,74.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡瑟娜·冬灵|r
    .target Kathrena Winterwisp
    .turnin 13925 >>交任务: |cRXP_FRIENDLY_一点预防措施|r
    --.accept 13885 >>接任务: |cRXP_WARN_保卫黑海岸|r
step
#questguide
    .goto 62,33.040,83.773,15,0
    .goto 62,32.269,84.069,15,0
    .goto 62,32.263,85.379
    >>杀死|cRXP_ENEMY_Warlord Wrathspine|r并点击他的尸体
    .mob Warlord Wrathspine
    .turnin 13899 >>交任务: |cRXP_FRIENDLY_暗鳞督军|r
    .accept 13900 >>接任务: |cRXP_WARN_献给艾萨拉|r
--TODO: logout skip maybe?
step
#questguide
    .goto 62,32.874,84.131
    >>离开洞穴，跑到洞穴入口上方的露台上
    .complete 13900,1 --|1/1 Offering to Azshara prevented
step
#questguide
    .goto 62,32.874,84.131
    >>杀死|cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
    .goto 62,40.552,83.946
    >>杀死|cRXP_ENEMY_Soggoth的化身|r
    .use 58365 >>使用|T237377:0|t[古人之角]帮助您进行战斗
    .mob Avatar of Soggoth
    .complete 13897,1 --|1/1 Avatar of Soggoth slain
step
#questguide
    .goto 62,45.340,75.115
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_利爪德鲁伊巴尔伦|r
    .target Balren of the Claw
    .turnin 13897 >>交任务: |cRXP_FRIENDLY_黑海岸之战|r
    .turnin 13898 >>交任务: |cRXP_FRIENDLY_形势对我们不利|r
--
--Should be level 20 here, still missing the bombing run quest, garbage xp/hr
step
#questguide
    #completewith next
    .hs >>Hearth to Lor'Danel

]])
