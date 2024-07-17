RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
#subgroup Tauren Starting Zones
#name 1 Tauren Starting Zone
#displayname Chapter 1 - Camp Narache
#next 2 Tauren Mulgore
#defaultfor Tauren !DK

<< Horde
step << Tauren
    .zoneskip 1727
    #completewith MulgoreFirstQuestCheck
    +欢迎使用RestedXP的|cfff78300牛头起步区|r指南。
    *This route is roughly 10-20 minutes slower than |cfff78300Exiles Reach|r. For faster leveling recreate your character and choose |cfff78300Exiles Reach|r instead.
step << Tauren
    .zoneskip 1727,1
    +您在流放区，但当前指南适用于|cfff78300亡灵起始区|r。
    +请选择|cfff78300流亡人士联系指南|r。
step
    #completewith next
    +|cRXP_WARN_如果你想充分利用RXP；按Escape->Options->Keybindings->RestedXP Guides->Select and Bind Active Button 1,2,3 and 4。您也可以使用Targets执行此操作。|r
    *This will allow you to press a Keybind to use a Quest Items/target a relevant mob
step
    #label MulgoreFirstQuestCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鹰风酋长|r
    .goto 462,27.7,28.2
    .accept 14449 >>接任务: |cRXP_WARN_第一步|r
    .target Chief Hawkwind
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格鲁尔·鹰风|r
    .goto 462,39.45,37.25
    .turnin 14449 >>交任务: |cRXP_FRIENDLY_第一步|r
    .accept 14452 >>接任务: |cRXP_WARN_力量仪祭|r
    .target Grull Hawkwind
step
    >>杀戮战斗|cRXP_ENEMY_Bristleback入侵者|r
    .goto 462,40.93,35.68,15,0
    .goto 462,42.01,32.95,15,0
    .goto 462,44.65,34.68,15,0
    .goto 462,44.40,37.15,15,0
    .goto 462,40.81,38.19
    .complete 14452,1 --6/6 Bristleback Invaders slain
    .mob Bristleback Invader
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格鲁尔·鹰风|r
    .goto 462,39.45,37.25
    .turnin 14452 >>交任务: |cRXP_FRIENDLY_力量仪祭|r
    .accept 24852 >>接任务: |cRXP_WARN_被囚禁的部族|r
    .target Grull Hawkwind
step
    #title Brave Freed 1
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_Quilboar Cage|r
    .goto 462,49.39,35.39
    .complete 24852,1,1 --4/4 Braves Freed
step
    #title Brave Freed 2
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_Quilboar Cage|r
    .goto 462,49.07,36.97
    .complete 24852,1,2 --4/4 Braves Freed
step
    #title Brave Freed 3
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_Quilboar Cage|r
    .goto 462,49.32,42.12
    .complete 24852,1,3 --4/4 Braves Freed
step
    #title Brave Freed 4
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tOpen the |cRXP_PICK_Quilboar Cage|r
    .goto 462,49.07,43.80
    .complete 24852,1,4 --4/4 Braves Freed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_格鲁尔·鹰风|r
    .goto 462,39.45,37.25
    .turnin 24852 >>交任务: |cRXP_FRIENDLY_被囚禁的部族|r
    .accept 14458 >>接任务: |cRXP_WARN_去找阿达娜|r
    .target Grull Hawkwind
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿达娜·雷角|r
    .goto 462,30.9,50.6
    .turnin 14458 >>交任务: |cRXP_FRIENDLY_去找阿达娜|r
    .accept 14456 >>接任务: |cRXP_WARN_勇气仪祭|r
    .accept 14455 >>接任务: |cRXP_WARN_阻止号角手|r
    .target Adana Thunderhorn
step
    #completewith next
    >>杀死|cRXP_ENEMY_Bristleback枪支窃贼|r。掠夺窃贼的|cRXX_Loot_被盗步枪|r。
    .complete 14456,1 --7/7 Stolen Rifle
    .mob Bristleback Gun Thief
step
    >>杀死|cRXP_ENEMY_Bristleback Thorncallers |r
    .goto 462,32.82,63.39,15,0
    .goto 462,31.86,68.99,15,0
    .goto 462,34.93,70.00,15,0
    .goto 462,36.56,67.73
    .complete 14455,1 --7/7 Bristleback Thorncaller slain
    .mob Bristleback Thorncaller
step
    >>杀死|cRXP_ENEMY_Bristleback枪支窃贼|r。掠夺窃贼的|cRXX_Loot_被盗步枪|r。
    .goto 462,36.18,61.12,15,0
    .goto 462,32.81,63.11
    .complete 14456,1 --7/7 Stolen Rifle
    .mob Bristleback Gun Thief
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿达娜·雷角|r
    .goto 462,30.9,50.6
    .turnin 14456 >>交任务: |cRXP_FRIENDLY_勇气仪祭|r
    .turnin 14455 >>交任务: |cRXP_FRIENDLY_阻止号角手|r
    .accept 14459 >>接任务: |cRXP_WARN_斗猪|r
    .accept 14461 >>接任务: |cRXP_WARN_邪恶的食粮|r
    .target Adana Thunderhorn
step
    #sticky
    #label mulgoreAmoredBattleboar
    >>杀死|cRXP_ENEMY_装甲战船|r
    .goto 462,26.78,68.79,0,0
    .complete 14459,1 --10/10 Armored Battleboar slain
    .mob Armored Battleboar
step
    >>使用|cRXP_OOT_through|r旁边的|T135432:0|t[Adana的火炬]
    .use 49539
    .goto 462,26.37,66.33
    .complete 14461,1 --1/1 First Trough
step
    >>使用|cRXP_OOT_through|r旁边的|T135432:0|t[Adana的火炬]
    .use 49539
    .goto 462,25.12,69.15
    .complete 14461,2 --1/1 Second Trough
step
    #label QuestKeybindingsTauren
    >>使用|cRXP_OOT_through|r旁边的|T135432:0|t[Adana的火炬]
    .use 49539
    .goto 462,28.2,70.4
    .complete 14461,3 --1/1 Third Trough
step
    #requires mulgoreAmoredBattleboar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿达娜·雷角|r
    .goto 462,30.9,50.6
    .turnin 14459 >>交任务: |cRXP_FRIENDLY_斗猪|r
    .turnin 14461 >>交任务: |cRXP_FRIENDLY_邪恶的食粮|r
    .accept 14460 >>接任务: |cRXP_WARN_荣誉仪祭|r
    .target Adana Thunderhorn
step
    >>杀死|cRXP_ENEMY_Chief Squeler Thornmant|r。为他的|cRXP-Loot_Mannt|r掠夺他
    .goto 462,15.20,46.73
    .complete 14460,1 --1/1 Mane of Thornmantle
    .mob Chief Squealer Thornmantle
step << Hunter
    #completewith next
    .goto 462,23.69,38.27,25,0
    .cast 1515 >>驯服a|cRXP_ENEMY_Plainstrider|r
    .mob Plainstrider
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鹰风酋长|r
    .goto 462,27.7,28.3
    .turnin 14460 >>交任务: |cRXP_FRIENDLY_荣誉仪祭|r
    .accept 24861 >>接任务: |cRXP_WARN_最后的仪式，最初的仪式|r
    .target Chief Hawkwind
step
    >>使用|T132813:0|t[水罐]
    .goto 462,27.7,28.3
    .use 50465
    .complete 24861,1 --1/1 Offering Placed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鹰风酋长|r
    .goto 462,27.7,28.3
    .turnin 24861 >>交任务: |cRXP_FRIENDLY_最后的仪式，最初的仪式|r
    .accept 23733 >>接任务: |cRXP_WARN_大地之母仪祭|r
    .target Chief Hawkwind
step
    #completewith next
    .goto 462,19.24,33.81,10,0
    .goto 462,11.91,27.64,10,0
    .goto 462,12.50,29.17,8 >>顺着这条路上山
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_德亚米·翱风|r
    .goto 462,15.63,30.26
    .turnin 23733 >>交任务: |cRXP_FRIENDLY_大地之母仪祭|r
    .accept 24215 >>接任务: |cRXP_WARN_风之仪式|r
    .target Dyami Windsoar
step
    #completewith next
    .goto 462,15.40,27.68,10,0
    .goto 462,15.44,25.29,20,0
    .deathskip >>顺箭而下，跳山而死，释放你的灵魂
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_茂尔·祈雨|r
    .goto 7,47.16,56.66
    .accept 26188 >>接任务: |cRXP_LOOT_马兹拉纳其|r
    .target Maur Raincaller
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
#name 2 Tauren Mulgore
#displayname Chapter 2 - Mulgore
#next RestedXP部落10-60\1 BfA简介
#subgroup Tauren Starting Zones
#defaultfor Tauren !DK

<< Horde

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_茂尔·祈雨|r
    .goto 7,47.16,56.66
    .accept 26188 >>接任务: |cRXP_LOOT_马兹拉纳其|r
    .target Maur Raincaller
step << Hunter/Warlock
    #completewith MulgoreABundleofHidesAccept
    +|cRXP_WARN_提醒：在宠物死亡后继续保护它|r
step
    #completewith next
    .goto 7,46.53,58.17,5 >>Enter the tent
step
    #label MulgoreABundleofHidesAccept
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦尔格·风语|r
    .goto 7,46.06,58.19
    .accept 6361 >>接任务: |cRXP_WARN_一捆兽皮|r
    .target Varg Windwhisper
step
    #completewith next
    .goto 7,47.44,58.64
    .fp >>获取血蹄村飞行路线
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔克|r
    .turnin 6361 >>交任务: |cRXP_FRIENDLY_一捆兽皮|r
    .accept 6362 >>接任务: |cRXP_WARN_飞往雷霆崖|r
    .target Tak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈肯·风之图腾|r
    .goto 7,48.78,58.79
    .accept 761 >>接任务: |cRXP_LOOT_猎捕猛鹫|r
    .target Harken Windtotem
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆尔·雷角|r
    .goto 7,48.61,59.8
    .accept 20440 >>接任务: |cRXP_LOOT_毒水|r
    .target Mull Thunderhorn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾莫·雷角|r
    .isQuestComplete 24215
    .goto 7,47.65,59.58
    .turnin 24215 >>交任务: |cRXP_FRIENDLY_风之仪式|r
    .target Ahmo Thunderhorn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾莫·雷角|r
    .goto 7,47.65,59.58
    .accept 14438 >>接任务: |cRXP_WARN_土地之争|r
    .accept 24459 >>接任务: |cRXP_WARN_摩林·云行者|r
    .target Ahmo Thunderhorn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢尔·鹰爪|r
    .goto 7,47.50,61.33
    .accept 743 >>接任务: |cRXP_WARN_风怒鹰身人|r
    .target Ruul Eagletalon
step
    #completewith next
    >>杀死|cRXP_ENEMY_Plainstrider|r和|cff00ecffWolfs|r。掠夺它们的|cRXP-Loot_爪子|r
    .complete 20440,2 --4/4 Plainstrider Talon
    .complete 20440,1 --6/6 Prairie Wolf Paw
    .mob Adult Plainstrider
    .mob Prairie Wolf
step
    >>杀死|cRXP_ENEMY_Palemane Gnolls|r
    >>注意|cRXP_ENEMY_Snagglespear|r和|cRXX_ENEMY_Arra'hea|r
    .goto 7,48.44,70.79,30,0
    .goto 7,53.35,71.71
    .complete 14438,1 --15/15 Palemane Gnolls
    .mob Palemane Gnoll
step
    #completewith MulgorePoisonedWater
    >>杀死|cRXP_ENEMY_Swoops|r。掠夺他们的|cRXX_Loot_quills|r
    >>此时您不需要完成此任务
    .complete 761,1 --8/8 Trophy Swoop Quill
    .mob Swoop
step
    >>杀死|cRXP_ENEMY_Plainstrider|r和|cff00ecffWolfs|r。掠夺它们的|cRXP-Loot_爪子|r
    .goto 7,53.65,68.34,30,0
    .goto 7,50.30,65.51,30,0
    .goto 7,51.92,62.67
    .complete 20440,2 --4/4 Plainstrider Talon
    .complete 20440,1 --6/6 Prairie Wolf Paw
    .mob Adult Plainstrider
    .mob Prairie Wolf
step
    #label MulgorePoisonedWater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆尔·雷角|r
    .goto 7,48.62,59.81
    .turnin 20440 >>交任务: |cRXP_FRIENDLY_毒水|r
    .accept 24440 >>接任务: |cRXP_WARN_净化冰蹄之井|r
    .target Mull Thunderhorn
step
    >>使用井旁的|T135139:0|t[冬蹄清洁图腾]
    .goto 7,53.47,65.36
    .use 5411
    .complete 24440,1 --Well Cleansed
step
    #completewith next
    >>杀死|cRXP_ENEMY_Swoops|r。掠夺他们的|cRXX_Loot_quills|r
    >>|cRXP_WARN_此时您不需要完成此任务|r
    .goto 7,56.22,63.43,30,0
    .complete 761,1 --8/8 Trophy Swoop Quill
    .mob Swoop
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩林·云行者|r
    .goto 7,57.06,60.43
    .turnin 24459 >>交任务: |cRXP_FRIENDLY_摩林·云行者|r
    .accept 749 >>接任务: |cRXP_WARN_被破坏的货车|r
    .target Morin Cloudstalker
step
    #completewith next
    >>杀死|cRXP_ENEMY_Swoops|r。掠夺他们的|cRXX_Loot_quills|r
    >>|cRXP_WARN_此时您不需要完成此任务|r
    .complete 761,1 --8/8 Trophy Swoop Quill
    .mob Swoop
step
    .goto 7,53.52,48.28
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the Sealed Supply Crate
    .turnin 749 >>交任务: |cRXP_FRIENDLY_被破坏的货车|r
    .accept 751 >>接任务: |cRXP_WARN_被破坏的货车|r
step
    .goto 7,57.06,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩林·云行者|r
    .turnin 751 >>交任务: |cRXP_FRIENDLY_被破坏的货车|r
    .accept 26179 >>接任务: |cRXP_LOOT_风险投资公司|r
    .accept 26180 >>接任务: |cRXP_WARN_菲兹普罗克主管|r
    .target Morin Cloudstalker
step
    #completewith next
    >>杀死|cRXP_ENEMY_Venture Co.工人|r
    >>留意|cRXP_ENEMY_Enforcer Emilgund|r
    .complete 26179,1 --7/7 Venture Co. Worker slain
    .mob Venture Co. Worker
step
    >>Kill |cRXP_ENEMY_接任务: |cRXP_WARN_菲兹普罗克主管|r|r. Loot him for the |cRXP_LOOT_clipboard|r
    .goto 9,41.79,84.78
    .complete 26180,1 --1/1 Fizsprocket's Clipboard
    .mob 接任务: |cRXP_WARN_菲兹普罗克主管|r
step
    >>杀死|cRXP_ENEMY_Venture Co.工人|r
    >>留意|cRXP_ENEMY_Enforcer Emilgund|r
    .goto 9,45.64,82.31,20,0
    .goto 7,59.09,48.71
    .complete 26179,1 --7/7 Venture Co. Worker slain
    .mob Venture Co. Worker
step
    #completewith MulgorePoisonedWater
    >>杀死|cRXP_ENEMY_Swoops|r。掠夺他们的|cRXX_Loot_quills|r
    >>|cRXP_WARN_此时您不需要完成此任务|r
    .complete 761,1 --8/8 Trophy Swoop Quill
    .mob Swoop
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_摩林·云行者|r
    .goto 7,57.06,60.43
    .turnin 26179 >>交任务: |cRXP_FRIENDLY_风险投资公司|r
    .turnin 26180 >>交任务: |cRXP_FRIENDLY_菲兹普罗克主管|r
    .target Morin Cloudstalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆尔·雷角|r
    .goto 7,48.62,59.81
    .turnin 24440 >>交任务: |cRXP_FRIENDLY_净化冰蹄之井|r
    .accept 24441 >>接任务: |cRXP_WARN_雷角图腾|r
    .target Mull Thunderhorn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾莫·雷角|r
    .goto 7,47.65,59.58
    .turnin 14438 >>交任务: |cRXP_FRIENDLY_土地之争|r
    .accept 14491 >>接任务: |cRXP_WARN_不休的大地|r
    .target Ahmo Thunderhorn
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板考乌斯|r
    .goto 7,46.82,60.45
    .home >>把你的炉石放在血蹄村
    .target Innkeeper Kauth
step
    .zoneskip 7,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔克|r
    .goto 7,47.45,58.64
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Tak
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t跳下来与|cRXP_FRIENDLY_Ahanu|r交谈
    .goto 88,45.75,55.83
    .turnin 6362 >>交任务: |cRXP_FRIENDLY_飞往雷霆崖|r
    .accept 6363 >>接任务: |cRXP_WARN_双足飞龙管理员塔尔|r
    .target Ahanu
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安哈努|r
    .goto 88,45.75,55.83
    .vendor
    .target Ahanu
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t爬上塔楼并与|cRXP_FRIENDLY_Tal|r交谈
    .goto 88,47.03,49.60
    .turnin 6363 >>交任务: |cRXP_FRIENDLY_双足飞龙管理员塔尔|r
    .accept 6364 >>接任务: |cRXP_WARN_向加翰回复|r
    .target Tal
step
    #completewith next
    .goto 88,35.79,63.03,10,0
    .goto 88,32.51,70.74,20 >>从两部电梯中的一部往下走。死在这里至少要花一分钟的时间
step
    >>杀死|cRXP_ENEMY_Windfury Wind Witches|r和|cRXX_ENEMY_Windfury Harpies|r。掠夺它们的|cRXD_Loot_Talon|r
    >>当心末日预言家Wiserunner
    .goto 7,34.20,37.19,20,0
    .goto 7,35.62,39,85,20,0
    .goto 7,34.16,42.45,20,0
    .goto 7,35.34,43.13
    .complete 743,1 --8/8 Windfury Talon
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    >>在|cRXP_ENEMY_激动的大地灵魂|r上使用|T133841:0|t[抚慰的大地之鼓]。
    >>试着在冷却时使用滚筒。有时元素可能会攻击你
    .use 49647
    .goto 7,35.37,46.63,35,0
    .goto 7,32.8,48.5
    .complete 14491,1 --6/6 Spirits Calmed
    .mob Agitated Earth Spirit
step << Hunter/Warlock
    #completewith next
    +|cRXP_WARN_点击宠物栏中的“被动”或宠物标签中的魔法书，将宠物设置为被动|r
step
    #completewith next
    .goto 7,32.53,49.01
    .deathskip >>Pull some mobs and die
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿哈布·麦蹄|r
    .goto 7,48.34,53.09
    .accept 11129 >>接任务: |cRXP_LOOT_凯雷失踪了！|r
    .target Ahab Wheathoof
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_提醒：恢复您的宠物，并将其设置为“辅助”|r
step
    #completewith MulgoreCougarStalkerClaws
    >>杀死|cRXP_ENEMY_Flatland美洲狮|r。掠夺它们的|cRXX_Loot_股骨|r
    .complete 26188,1 --1/1 Flatland Cougar Femur
    .mob Flatland Cougar
step
    #completewith MulgoreCougarStalkerClaws
    >>杀死一个|cRXP_ENEMY_Plainstrider|r。掠夺它获得一个|cRXP_Loot_嫩滑肉|r
    .goto 7,44.71,52.05,0,0
    .collect 33009,1,11129,1
    .mob Adult Plainstrider
step
    #completewith MulgoreCougarStalkerClaws
    >>杀死|cRXP_ENEMY_Wiry Swoops|r。掠夺他们的|cRXX_Loot_quills|r
    .complete 761,1 --8/8 Trophy Swoop Quill
    .mob Wiry Swoop
step
    #label MulgoreCougarStalkerClaws
    >>杀死|cRXP_ENEMY_Praeri跟踪者|r和|cRXD_ENEMY_Flatland美洲狮|r。掠夺它们以获取|cRXP_Loot_爪子|r
    >>注意|cRXP_ENEMY_Mazzranache|r
    .goto 7,47.18,50.35,15,0
    .goto 7,44.72,48.58,15,0
    .goto 7,42.48,44.81,15,0
    .goto 7,41.65,42.07,15,0
    .goto 7,46.13,39.72,20,0
    .goto 7,47.18,50.35
    .complete 24441,2 --6/6 Cougar Claws
    .complete 24441,1 --6/6 Stalker Claws
    .mob Prairie Stalker
    .mob Flatland Cougar
step
    #completewith TrophySwoopQuill
    >>杀死|cRXP_ENEMY_Flatland美洲狮|r。掠夺它们的|cRXX_Loot_股骨|r
    .complete 26188,1 --1/1 Flatland Cougar Femur
    .mob Flatland Cougar
step
    #completewith TrophySwoopQuill
    >>杀死一个|cRXP_ENEMY_Plainstrider|r。掠夺它获得一个|cRXP_Loot_嫩滑肉|r
    .goto 7,44.71,52.05,0,0
    .collect 33009,1,11129,1
    .mob Adult Plainstrider
step
    #label TrophySwoopQuill
    >>杀死|cRXP_ENEMY_Wiry Swoops|r。掠夺他们的|cRXX_Loot_quills|r
    .goto 7,47.18,50.35,15,0
    .goto 7,44.72,48.58,15,0
    .goto 7,42.48,44.81,15,0
    .goto 7,41.65,42.07,15,0
    .goto 7,46.13,39.72,20,0
    .goto 7,47.18,50.35
    .complete 761,1 --8/8 Trophy Swoop Quill
    .mob Wiry Swoop
step
    #completewith next
    >>杀死|cRXP_ENEMY_Flatland美洲狮|r。掠夺它们的|cRXX_Loot_股骨|r
    .complete 26188,1 --1/1 Flatland Cougar Femur
    .mob Flatland Cougar
step
    >>杀死一个|cRXP_ENEMY_Plainstrider|r。掠夺它获得一个|cRXP_Loot_嫩滑肉|r
    .goto 7,44.71,52.05
    .collect 33009,1,11129,1
    .mob Adult Plainstrider
step
    >>杀死|cRXP_ENEMY_Flatland美洲狮|r。掠夺它们的|cRXX_Loot_股骨|r
    .goto 7,47.18,50.35,15,0
    .goto 7,44.72,48.58,15,0
    .goto 7,42.48,44.81,15,0
    .goto 7,41.65,42.07,15,0
    .goto 7,46.13,39.72,20,0
    .goto 7,47.18,50.35
    .complete 26188,1 --1/1 Flatland Cougar Femur
    .mob Flatland Cougar
step
    #completewith MulgoreMazzranacheTurnin
    .goto 7,44.58,45.22
    >>|cRXP_WARN_点击宠物栏中的“被动”或宠物标签中的魔法书，将宠物设置为被动|r << Hunter/Warlock
    .deathskip >>Pull some mobs and die
step
    #completewith MulgoreTurnInThunderhorn
    >>凯尔（狼）绕着城市转了一圈|cRXP_WARN_如果你看到他朝你跑来，那么等到他靠近你时，瞄准他并使用|cRXP_LOOT_嫩滑肉|r|r
    .use 33009
    .target Kyle
    .complete 11129,1 --1/1 Kyle fed
step
    #label MulgoreMazzranacheTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_茂尔·祈雨|r
    .goto 7,47.16,56.66
    .turnin 26188 >>交任务: |cRXP_FRIENDLY_马兹拉纳其|r
    .mob Maur Raincaller
step << Warlock/Hunter
    #completewith next
    +|cRXP_WARN_提醒：恢复您的宠物，并将其设置为“辅助”|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_瓦尔格·风语|r
    .goto 7,46.06,58.19
    .turnin 6364 >>交任务: |cRXP_FRIENDLY_向加翰回复|r
    .target Varg Windwhisper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卢尔·鹰爪|r
    .goto 7,47.51,61.33
    .turnin 743 >>交任务: |cRXP_FRIENDLY_风怒鹰身人|r
    .target Ruul Eagletalon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_艾莫·雷角|r
    .goto 7,47.65,59.59
    .turnin 14491 >>交任务: |cRXP_FRIENDLY_不休的大地|r
    .target Ahmo Thunderhorn
step
    #label MulgoreTurnInThunderhorn
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_穆尔·雷角|r
    .goto 7,48.62,59.8
    .turnin 24441 >>交任务: |cRXP_FRIENDLY_雷角图腾|r
    .target Mull Thunderhorn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈肯·风之图腾|r
    .goto 7,48.78,58.79
    .turnin 761 >>交任务: |cRXP_FRIENDLY_猎捕猛鹫|r
    .target Harken Windtotem
step
    >>凯尔（狼）绕着城市转了一圈|cRXP_WARN_如果你看到他朝你跑来，那么等到他靠近你时，瞄准他并使用|cRXP_LOOT_嫩滑肉|r|r
    .use 33009
    .target Kyle
    .goto 7,48.25,60.43,20,0
    .goto 7,48.13,57.28,20,0
    .complete 11129,1 --1/1 Kyle fed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_阿哈布·麦蹄|r
    .goto 7,48.34,53.09
    .turnin 11129 >>交任务: |cRXP_FRIENDLY_凯雷失踪了！|r
    .target Ahab Wheathoof
step << Tauren
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈布·爪蹄|r
    .goto 7,47.64,58.09
    .vendor 3685
    .target Harb Clawhoof
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔克|r
    .goto 7,47.44,58.64
    .fly Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .target Tak
step
    #completewith next
    +奥格里玛有三种方法。
    *1) Use the Character Stuck Feature
    *2) Use the |T237388:0|t[Scouting Map: Walking Kalimdor with the Earthmother] toy and fly to Orgrimmar
    *3) Follow the arrow and take the Zeppelin to Orgrimmar (very slow)
    .link https://www.youtube.com/watch?v=jAGUbr8Gz9Y >>字符卡住解释链接
step
    .goto 88,42.81,39.13,10,0
    .goto 88,39.41,38.33,8,0
    .goto 88,28.19,23.46,50,0
    .goto 88,15.27,25.72
    .zone 85 >>Take the zeppelin
]])
