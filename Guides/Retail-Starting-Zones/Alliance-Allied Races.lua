RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
-- #subgroup Allied Races << !DK
--#subgroup Allied Race DK << DK
#name 3Retail_Allied Races
#displayname Chapter 1 - Dark Iron Dwarf Intro << DarkIronDwarf !DK
#displayname Chapter 1 - Kul Tiran Intro << KulTiran !DK
#displayname Chapter 1 - Lightforged Draenei Intro << LightforgedDraenei !DK
#displayname Chapter 1 - Mechagnome Intro << Mechagnome !DK
#displayname Chapter 1 - Void Elf Intro << VoidElf !DK
#displayname Chapter 1 - New Deathknight Intro << DK
#next B-Elwynn Forest

<< KulTiran/DarkIronDwarf/LightforgedDraenei/Mechagnome/VoidElf/Alliance Pandaren DK

-- step << !Pandaren !DK
-- #completewith next
--   .zoneskip 84
--   +按默认的“N”键打开您的人才|cRXP_WARN_然后，选择所需的人才专业化|r 
step << DarkIronDwarf !DK
    .goto 1186,56.43,31.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_茉艾拉·索瑞森|r
    .accept 51486 >>接任务: |cRXP_WARN_为了联盟|r
    .target Moira Thaurissan
step << DarkIronDwarf !DK
    #completewith next
    .goto 1186,59.27,26.52
    .cast 281587 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Mole Machine|r
step << KulTiran !DK
    .goto 1161,67.71,21.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katherine Proudmoore|r
    .accept 55142 >>接任务: |cRXP_WARN_为了联盟|r
    .target Katherine Proudmoore
step << KulTiran !DK
    .goto 1161,67.15,22.9,10,0
    .goto 1161,67.44,21.4,10,0
    .goto 1161,68.87,21.12,10,0
    .goto 1161,70.47,17.11,10,0
    .goto 1161,70.1,16.8
    >>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Stormfind门户|r
    .complete 55142,1 --1/1 Portal to Stormwind Taken
step << LightforgedDraenei !DK
    .goto 940,49.2,43.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Fareeya|r
    .accept 49772 >>接任务: |cRXP_WARN_为了联盟|r
    .target Captain Fareeya
step << LightforgedDraenei !DK
    #completewith next
    .goto 941,43.180,24.938
    >>下楼去
    .zone 84 >>单击|cRXP_PICK_Portal to Stormfind|r
step << Mechagnome !DK
    .goto 1573,18.67,67.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkartonque|r
    .accept 58146 >>接任务: |cRXP_WARN_为了联盟|r
    .target High Tinker Mekkartonque
step << Mechagnome !DK
    .goto 1573,20.5,60.0
    >>步行|cFFfa9602在暴风电信设备上|r
    .complete 58146,1 --1/1 前往: |cRXP_PICK_暴风城|r
step << VoidElf !DK
    .goto 971,28.5,22.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria|r
    .accept 49788 >>接任务: |cRXP_WARN_为了联盟|r
    .target Alleria
step << VoidElf !DK
    #completewith next
    .goto 971,27.99,21.50
    .zone 84 >>单击|cRXP_PICK_Portal to Stormfind|r
step << !DK
    .goto 84,53.059,15.259
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Moorgard|r
    .turnin 49772 >>Turn in For the Alliance << LightforgedDraenei
    .turnin 49788 >>Turn in For the Alliance << VoidElf
    .turnin 51486 >>Turn in Fer the Alliance << DarkIronDwarf
    .turnin 55142 >>Turn in For the Alliance << KulTiran
    .turnin 58146 >>Turn in For the Alliance << Mechagnome
    .accept 50313 >>接任务: |cRXP_WARN_异乡异客|r << LightforgedDraenei
    .accept 50305 >>接任务: |cRXP_WARN_异乡异客|r << VoidElf
    .accept 53500 >>接任务: |cRXP_WARN_异乡异客|r << DarkIronDwarf
    .accept 55146 >>接任务: |cRXP_WARN_异乡异客|r << KulTiran
    .accept 58147 >>接任务: |cRXP_WARN_异乡异客|r << Mechagnome
    .target Ambassador Moorgard
step << !DK
    .goto 84,56.257,17.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
    >>|cRXP_WARN_Select "The Cataclysm"|r
    .complete 50313,1 << LightforgedDraenei --Talk to Chromie (1)
    .complete 50305,1 << VoidElf --Talk to Chromie (1)
    .complete 53500,1 << DarkIronDwarf --Talk to Chromie (1)
    .complete 55146,1 << KulTiran --Talk to Chromie (1)
    .complete 58147,1 << Mechagnome --Talk to Chromie (1)
    .accept 60891 >>接任务: |cRXP_WARN_大地的裂变：东部王国的冒险|r
    .skipgossip 167032,1,8 --XX Doesn't autoselect, Need zarant function? Better to give people the choice?
    .target Chromie
step << !DK
    .goto 84,56.199,17.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vindicator Minkey|r << LightforgedDraenei
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keira Onyxraven|r << VoidElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudrik Leger|r << DarkIronDwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Fray|r << KulTiran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lulana|r << Mechagnome
    .turnin 50313 >>Turn in Stranger in a Strange Land << LightforgedDraenei
    .turnin 50305 >>Turn in Stranger in a Strange Land << VoidElf
    .turnin 53500 >>Turn in Stranger in a Strange Land << DarkIronDwarf
    .turnin 55146 >>Turn in Stranger in a Strange Land << KulTiran
    .turnin 58147 >>Turn in Stranger in a Strange Land << Mechagnome
    .target Vindicator Minkey << LightforgedDraenei
    .target Keira Onyxraven << VoidElf
    .target Mudrik Leger << DarkIronDwarf
    .target Provisioner Fray << KulTiran
    .target Lulana << Mechagnome
step << DarkIronDwarf !DK
    .goto 84,62.16,30.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_英雄传令官|r, Hero's Call Board
    .accept 46727 >>接任务: |cRXP_WARN_争霸艾泽拉斯：战争之潮|r
    .isQuestTurnedIn 51486
    .target Hero's Herald
step << KulTiran !DK
    .goto 84,62.16,30.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_英雄传令官|r
    .accept 46727 >>接任务: |cRXP_WARN_争霸艾泽拉斯：战争之潮|r
    .isQuestTurnedIn 55142
    .target Hero's Herald
step << LightforgedDraenei !DK
    .goto 84,62.16,30.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_英雄传令官|r
    .accept 46727 >>接任务: |cRXP_WARN_争霸艾泽拉斯：战争之潮|r
    .isQuestTurnedIn 49772
    .target Hero's Herald
step << Mechagnome !DK
    .goto 84,62.16,30.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_英雄传令官|r
    .accept 46727 >>接任务: |cRXP_WARN_争霸艾泽拉斯：战争之潮|r
    .isQuestTurnedIn 58146
    .target Hero's Herald
step << VoidElf !DK
    .goto 84,62.16,30.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_英雄传令官|r
    .accept 46727 >>接任务: |cRXP_WARN_争霸艾泽拉斯：战争之潮|r
    .isQuestTurnedIn 49788
    .target Hero's Herald
step << !DK
    .goto 84,62.10,32.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗月马戏团秘法师|r
    .accept 7905 >>接任务: |cRXP_WARN_暗月马戏团|r
    .dmf
step << !DK
    .goto 84,62.10,32.18
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗月马戏团秘法师|r
    .skipgossip
    .zoneskip 37
    .dmf
step << !DK
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷纳多·加林纳|r
    .accept 332 >>接任务: |cRXP_WARN_酒店的广告|r
    .target Renato
    .nodmf
step << !DK
    .goto 84,70.0,47.24,20,0
    .goto 84,68.54,51.37,20,0
    .goto 84,67.45,57.19,25,0
    .goto 84,68.59,62.19,25,0
    .goto 84,66.03,64.49,25,0
    .goto 84,64.39,67.14,25,0
    .goto 84,63.89,72.21,35,0
    .goto 84,63.81,73.53,10,0
    .goto 84,67.45,80.52,25,0
    .goto 84,67.1,83.44,25,0
    .goto 84,69.69,84.78,25,0
    .goto 37,41.71,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_勇敢的巴特利|r
    .fp >>获取Goldshire飞行路线
    .target Bartlett the Brave
    .nodmf
step << DK
    .goto 1602,49.55,90.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫妖王|r
    .accept 58877 >>接任务: |cRXP_WARN_死亡之力的增长|r
    .target The Lich King
    .zoneskip 84
step << DK
    >>使用[额外操作按钮]|cFFfa9602在|r|cRXP_FRIENDLY_巫妖王|r前面
    .complete 58877,1 --1/1 Fealty sworn
    .target The Lich King
    .isOnQuest 58877
step << DK
    .goto 1602,49.6,90.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫妖王|r
    .turnin 58877,1 >>Turn in Death's Power Grows
    .accept 58902 >>接任务: |cRXP_WARN_艾泽拉斯的守护者|r << Alliance
    .accept 58903 >>接任务: |cRXP_WARN_艾泽拉斯的守护者|r << Horde
    .target The Lich King
    .isQuestComplete 58877
step << DK
    #completewith next
    +按默认的“N”键打开您的人才|cRXP_WARN_然后，选择所需的人才专业化|r 
    .zoneskip 84
    .isQuestTurnedIn 58877 --x New Type of DK Check
step << DK
    .goto 1602,50.7,71.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Darion Morgraine|r
    .skipgossip
    .complete 58902,1 << Alliance --1/1 Speak with Highlord Darion Mograine 
    .complete 58903,1 << Horde --1/1 Speak with Highlord Darion Mograine
    .target Highlord Darion Morgraine
    .isQuestTurnedIn 58877 --x New Type of DK Check
step << DK
    .goto 1602,49.96,39.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Death Gate|r
    .complete 58902,2 << Alliance --1/1 Death Gate Used
    .complete 58903,2 << Horde --1/1 Death Gate Used 
    .isQuestTurnedIn 58877 --x New Type of DK Check
step << DK
    .goto 84,67.16,83.4,20,0
    .goto 84,67.51,80.47,20,0
    .goto 84,63.77,73.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_雷纳多·加林纳|r
    .accept 332 >>接任务: |cRXP_WARN_酒店的广告|r
    .target Renato Gallina
    .isQuestTurnedIn 58877 --x New Type of DK Check
step << DK
    .goto 84,62.9,71.8,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|t单击|cRXP_PICK_Hero的呼叫板|r
    .complete 58902,4 --1/1 Hero's Call Board
    .isQuestTurnedIn 58877 --x New Type of DK Check
step << DK
    >>|TInterface/cursor/crosshair/interact.blp:20|t|cRXP_WARN_从任务日志的弹出窗口中选择要提交任务的选项。|r
    .turnin 58902 >>Turn in Defender of Azeroth
    .isQuestTurnedIn 58877 --x New Type of DK Check
step << DK
    .goto 84,62.81,71.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_英雄传令官|r
    .accept 46727 >>接任务: |cRXP_WARN_争霸艾泽拉斯：战争之潮|r
    .target Hero's Herald
    .isQuestTurnedIn 58877 --x New Type of DK Check
step << DK
    +使用死亡之门|cFFfa9602到阿丘斯：埃博拉病毒的控制|r
    .zoneskip 23
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .use 50977
step << DK
    .goto 23,82.02,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r
    .accept 58989 >>接任务: |cRXP_WARN_符文熔铸入门|r
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .target Highlord Darion Mograine
step << DK
    .goto 23,83.19,48.90
    >>踏上|cFFfa9602紫色圆圈|r进行传送。
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .complete 58989,1 --1/1 Use the portal to the 2nd floor
step << DK
    .goto 23,83.14,45.4
    >>访问|cFFfa9602符文前|r，打开你的魔法书，并将“堕落十字军”魔法应用于你的武器。
    .complete 58989,2 --Weapon emblazoned (1)
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .use 53428
step << DK
    .isOnQuest 58989
    .goto 23,83.25,49.02,5 >>|cRXP_WARN_踏上|cFFfa9602紫色圆圈|r再次传送。|r
step << DK
    .goto 23,82.02,46.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r
    .turnin 58989 >>Turn in Runeforging 101
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .target Highlord Darion Mograine
step << DK
    #completewith next
    +使用死亡之门|cFFfa9602到暴风|r
    >>|cRXP_WARN_您可能需要在光盘上稍等片刻|r
    .zoneskip 84
    .isQuestTurnedIn 58877 --x New Type of DK Check
    .use 50977
step << DK
    #veteran
    .goto 84,61.11,70.6
    +暗月集市活动现在处于活动状态，|cRXP_WARN_它保证您免费获得额外等级和临时10%的经验提升|r您需要从拍卖行购买|cRXP_WARN_certain物品才能充分利用这一优势|r如有必要，|cRXP_WARN_您可以从其他角色转移黄金进行购买|r然而，如果你发现你买不起所有东西，|cRXP_WARN_I仍然值得去暗月集市获得临时体验增益，并只购买部分物品|r
    >>|cRXP_WARN_建议使用至少拥有10000黄金的其他字符登录。使用此字符购买物品，然后将其发送出去。|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师费奇|r
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Fitch
    .target Auctioneer Jaxon
    .target Auctioneer Chilton
    .dmf
    .isQuestTurnedIn 58877 --x New Type of DK Check
step << DK
    #fresh
    #completewith DarkMoonFaire
    +暗月集市活动现在处于活动状态，|cRXP_WARN_它保证您免费获得额外等级和临时10%的经验提升|r
    .isQuestTurnedIn 58902 --x New Type of DK Check
step << DK
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>>|cRXP_WARN_单击此文本可接收一个宏，该宏将放弃您的职业。|r
    .dmf
    .isQuestTurnedIn 58902 --x New Type of DK Check
step << DK
    #label DarkMoonFaire
    .goto 84,62.25,72.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗月马戏团秘法师|r
    .accept 7905 >>接任务: |cRXP_WARN_暗月马戏团|r
    .target Darkmoon Faire Mystic Mage
    .dmf
    .isQuestTurnedIn 58902 --x New Type of DK Check
step << DK
    .goto 84,62.25,72.96
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_暗月马戏团秘法师|r
    .skipgossip
    .zoneskip 37
    .dmf
    .isQuestTurnedIn 58902  --x new type of dk check
    .target Darkmoon Faire Mystic Mage
step << DK 
    .goto 84,64.63,70.45,25,0
    .goto 84,68.29,74.57,25,0
    .goto 84,70.92,72.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Goldshire >>Fly to Goldshire
    .target Dungar Longdrink
    .isQuestTurnedIn 58877 --x New DK Check
    .nodmf
]])
