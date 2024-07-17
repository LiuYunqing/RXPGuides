RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP联盟种族解锁
#groupweight 5
-- #subgroup Dark Iron Dwarf
#name 9） 黑铁矮人Questline
#displayname Dark Iron Dwarf

<< Alliance !DarkIronDwarf

step
    #completewith next
    .zone 84 >>前往|cFFfa9602前往暴风|r
step
    .accept 49929 >>接任务: |cRXP_WARN_呼唤同盟|r
step
    .goto 84,52.05,13.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger|r |cFFfa9602inside the Stormwind Embassy.|r
    .turnin 49929 >>交任务: |cRXP_FRIENDLY_呼唤同盟|r
    .accept 50239 >>接任务: |cRXP_WARN_选择盟友|r
    .target Aysa Cloudsinger
step
    .goto 84,52.22,13.20
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Elf Banner.|r
    .complete 50239,2 --1/1 Learn about the Void Elves
step
    .goto 84,52.34,13.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Kul Tiran Banner.|r
    .complete 50239,4 --1/1 Learn about the Kul Tirans
step
    .goto 84,51.73,13.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Mechagnome Banner.|r
    .complete 50239,5 --1/1 Learn about the Mechagnomes
step
    .goto 84,51.78,13.73
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dark Iron Dwarf Banner.|r
    .complete 50239,3 --1/1 Learn about the Dark Iron Dwarves
step
    .goto 84,51.86,13.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lightforged Draenei Banner.|r
    .complete 50239,1 --1/1 Learn about the Lightforged Draenei
step
    .goto 84,52.06,13.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger.|r
    .turnin 50239 >>Turn in A Choice of Allies
    .accept 51813 >>接任务: |cRXP_WARN_黑石深渊|r
    .target Aysa Cloudsinger
step
    .goto 84,51.88,14.06
    .gossipoption 48178 >>对话: |cRXP_FRIENDLY_茉艾拉·索瑞森|r
    .target Moira Thaurissan
    .isOnQuest 51813
step
    .goto 1159,56.03,31.84
    >>|cRXP_WARN_前往箭头指示的位置，等待简短的角色扮演。|r
    .scenario 3830,1 --1/1
    .isOnQuest 51813
step
    .goto 1159,55.84,31.94
    .cast 274627 >>单击地面上的|cRXP_PICK_Crate|r|cFFfa9602|r
    .isOnQuest 51813
step
    .goto 1159,56.65,31.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Crate|r |cFFfa9602on The Black Anvil.|r
    .scenario 3847,1
    .timer 5, Time until first wave.
    .isOnQuest 51813
step
    .goto 1159,56.65,31.33
    >>|cRXP_WARN_等待简短的角色扮演，然后|r杀死|cRXP_ENEMY_Congeled Azerite。|r
    .scenario 3848,1,75
    .isOnQuest 51813
    .mob Unleashed Azerite
    .mob Congealed Azerite
    .mob Unbound Azerite
step
    .goto 1159,55.38,33.23
    >>杀死|cRXP_ENEMY_Unleashed Azerite|r
    .scenario 3848,1,91
    .isOnQuest 51813
    .mob Unleashed Azerite
    .mob Congealed Azerite
    .mob Unbound Azerite
step
    .goto 1159,55.38,33.23
    >>杀死|cRXP_ENEMY_Unbound Azerite|r
    .scenario 3848,1,100
    .isOnQuest 51813
    .mob Unleashed Azerite
    .mob Congealed Azerite
    .mob Unbound Azerite
step
    .goto 1159,49.93,41.67
    >>|cRXP_WARN_前往箭头指示的位置，等待简短的角色扮演。|r
    .scenario 3849,1
    .isOnQuest 51813
    .mob Venture Co. Skyscorcher
step
    .goto 1159,49.93,41.67
    >>杀死|cRXP_ENEMY_Venture Co.Skyscorcher|r
    .scenario 3850,1
    .isOnQuest 51813
    .mob Venture Co. Skyscorcher
step
    .goto 1159,38.09,58.9,15,0
    .goto 1159,29.93,56.72,10,0
    .goto 1159,35.73,63.84
    >>Kill every |cRXP_ENEMY_Enemy|r you encounter on your path.
    .scenario 3851,1,100
    .isOnQuest 51813
    .mob Wanton Sapper
    .mob Azerite Extractor
    .mob Fanatical Driller
    .mob Venture Co. Earthshaper
step
    .goto 1159,35.73,63.84
    >>击败|cRXP_ENEMY_Rixxa Fluxflame|r的健康状况降低到75%。
    .scenario 3852,1
    .timer 11, Duration until continuation.
    .mob Rixxa Fluxflame
    .isOnQuest 51813
step
    .goto 1159,36.79,61.65
    .cast 3365 >>单击地面上的|cRXP_PICK_推进剂罐|r|cFFfa9602|r
    .isOnQuest 51813
step
    .goto 1159,39.37,55.18
    .cast 3365 >>单击地面上的|cRXP_PICK_推进剂罐|r|cFFfa9602|r
    .isOnQuest 51813
step
    .goto 1159,44.33,49.55
    .cast 3365 >>单击地面上的|cRXP_PICK_推进剂罐|r|cFFfa9602|r
    .isOnQuest 51813
step
    .goto 1159,49.23,44.38
    .cast 3365 >>单击地面上的|cRXP_PICK_推进剂罐|r|cFFfa9602|r
    .isOnQuest 51813
step
    .goto 1159,57.11,30.41
    >>|cRXP_WARN_前往箭头指示的位置。|r
    .complete 51813,1 --Blackrock Depths scenario completed
step
    .goto 1159,57.04,30.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_茉艾拉·索瑞森|r
    .turnin 51813 >>Turn in Blackrock Depths
    .accept 53351 >>接任务: |cRXP_WARN_暴富矿区！！：反对者|r
    .target Moira Thaurissan
step
    #completewith Turn in The MOTHERLODE!!: Ironfoe
    .link /script C_PartyInfo.LeaveParty() >>|cRXP_WARN_单击此处获取一个宏，您可以通过在聊天中键入该宏退出群。|r
    +|cRXP_WARN_您也可以使用其他标准方法离开。|r
    .isOnQuest 53351
step
    .goto 84,51.89,14.07
    .gossipoption 48181 >>对话: |cRXP_FRIENDLY_茉艾拉·索瑞森|r
    .target Moira Thaurissan
    .isOnQuest 53351
step
    #label Turn in The MOTHERLODE!!: Ironfoe
    .goto 84,51.89,14.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_茉艾拉·索瑞森|r
    .turnin 53351 >>Turn in The MOTHERLODE!!: Ironfoe
    .accept 53342 >>接任务: |cRXP_WARN_熔火之心|r
    .target Moira Thaurissan
    .isOnQuest 53351
step
    .goto 84,51.89,14.07
    .gossipoption 48179 >>对话: |cRXP_FRIENDLY_茉艾拉·索瑞森|r
    .target Moira Thaurissan
    .isOnQuest 53342
step
    .goto 1160,29.17,26.27
    .vehicle >>单击|cRXP_PICK_Tank|r
    .target The Tank
    .isOnQuest 53342
step
    .goto 1160,33.04,21.38,5 >>使用|T1032476:0|t[Afterburn]（2）向边缘冲刺|cFFfa9602|r|cRXP_WARN_Aim降落在山崖上|r
    .isOnQuest 53342
step
    .goto 1160,41.94,25.73,25,0
    .goto 1160,44.83,64.11,15 >>使用|T1032476:0|t[Afterburn]（2）冲刺，使用|T135781:0|t[Frozen Keekers]（1）杀死面前的|cRXP_ENEMY_敌人|r|cFFfa9602|r
    .timer 7, Duration until continuation.
    .isOnQuest 53342
step
    .goto 1160,61.13,61.75,10,0
    .goto 1160,62.08,53.53,10,0
    .goto 1160,59.21,48.71,10,0
    .goto 1160,56.71,54.29,10 >>|cRXP_WARN_前往箭头指示的位置。|r
    .timer 20, Duration until continuation.
    .isOnQuest 53342
step
    .goto 1160,56.48,54.86
    >>Kill |cRXP_ENEMY_Gezzrok the Keeper|r and then |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Orb|r |cFFfa9602in the middle.|r
    .complete 53342,2 --1/1 Fragment o' the Molten Core
    .mob Gezzrok the Keeper
step
    #completewith next
    .link /script C_PartyInfo.LeaveParty() >>|cRXP_WARN_单击此处获取一个宏，您可以通过在聊天中键入该宏退出群。|r
    +|cRXP_WARN_您也可以使用其他标准方法离开。|r
    .isOnQuest 53342
step
    .goto 84,51.89,14.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_茉艾拉·索瑞森|r
    .turnin 53342 >>Turn in Molten Core
    .accept 53352 >>接任务: |cRXP_WARN_火焰之地|r
    .target Moira Thaurissan
step
    .goto 84,51.89,14.07
    .gossipoption 48180 >>对话: |cRXP_FRIENDLY_茉艾拉·索瑞森|r
    .target Moira Thaurissan
    .isOnQuest 53352
step
    .goto 1958,49.24,29.7
    >>|cRXP_WARN_等待简短的角色扮演，然后|r，然后杀死|cRXP_ENEMY_Dark Iron Cultist。|r
    .scenario 3982,1
    .mob Dark Iron Cultist
    .isOnQuest 53352
step
    .goto 1958,49.2,25.47,10 >>|cRXP_WARN_前往箭头指示的位置。|r
    >>|cRXP_WARN_按键盘上的“Escape”可跳过电影。|r
    .isOnQuest 53352
step
    .goto 1959,50.82,67.4,5,0
    .goto 1959,48.71,62.17,10,0
    .goto 1959,50.69,59.05,10,0
    >>Kill most |cRXP_ENEMY_enemies|r you encounter on your path.
    .scenario 3983,1,100
    .mob Blazing Elemental
    .mob Lava Spawn
    .mob Molten Giant
    .mob Flamewalker Sentinel
    .mob Ancient Core Hound
    .isOnQuest 53352
step
    .goto 1959,50.58,24.56,10 >>|cRXP_WARN_前往箭头指示的位置。|r
    .timer 60, Duration until continuation.
    .isOnQuest 53352
step
    .goto 1959,50.53,20.76
    >>杀死|cRXP_ENEMY_大法官格里姆斯通|r
    .scenario 3986,1
    .mob High Justice Grimstone
    .isOnQuest 53352
step
    .goto 1959,50.53,20.76
    >>杀死|cRXP_ENEMY_大法官格里姆斯通|r
    .scenario 3984,1
    .mob High Justice Grimstone
    .isOnQuest 53352
step
    .goto 1959,50.51,19.26
    >>站在熔岩泡中|cFFfa9602巨大的熔岩池前|r
    .scenario 3985,1,100
    .isOnQuest 53352
step
    #completewith next
    .link /script C_PartyInfo.LeaveParty() >>|cRXP_WARN_单击此处获取一个宏，您可以通过在聊天中键入该宏退出群。|r
    +|cRXP_WARN_您也可以使用其他标准方法离开。|r
    .isOnQuest 53352
step
    .goto 84,51.89,14.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_茉艾拉·索瑞森|r
    .turnin 53352 >>Turn in Firelands
    .accept 51474 >>接任务: |cRXP_WARN_烈焰铸就|r
    .target Moira Thaurissan
step
    .goto 84,51.89,14.07
    .gossipoption 48178 >>对话: |cRXP_FRIENDLY_茉艾拉·索瑞森|r
    .target Moira Thaurissan
    .isOnQuest 51474
step
    .goto 1159,56.65,31.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Yellow Orb|r |cFFfa9602on the anvil.|r
    .complete 51474,1 --1/1 Black Anvil repaired
step
    .goto 1159,57.19,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_茉艾拉·索瑞森|r
    .turnin 51474 >>Turn in Forged in Fire an' Flame
    .accept 53566 >>接任务: |cRXP_WARN_黑铁矮人|r
    .target Moira Thaurissan
step
    #completewith next
    .link /script C_PartyInfo.LeaveParty() >>|cRXP_WARN_单击此处获取一个宏，您可以通过在聊天中键入该宏退出群。|r
    +|cRXP_WARN_您也可以使用其他标准方法离开。|r
    .isOnQuest 53566
step
    .goto 84,52.02,13.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aysa Cloudsinger.|r
    .turnin 53566 >>Turn in Dark Iron Dwarves
    .target Aysa Cloudsinger
]])
