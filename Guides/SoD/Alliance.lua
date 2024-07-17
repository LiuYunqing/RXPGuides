RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD/Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 蕾丝-12（深色海岸） << Druid
#name 野兽精通-12（黑暗海岸） << Hunter
#title Lacerate << Druid
#title Beast Mastery << Hunter

step << Druid/Hunter
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    >>杀死|cRXP_ENEMY_Blackwood探路者|r和|cRXX_ENEMY_Blackwood风语者|r。掠夺他们的|T237270:0|t[|cRXD_Loot_Crab Treats|r]
    .collect 209027,1 -- Crab Treats (1)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .train 416049,1 << Druid
    .train 410110,1 << Hunter
step << Druid/Hunter
    .goto Darkshore,35.8,55.6
    .use 209027 >>|cRXP_WARN_使用|r|T237270:0|t[|cRXP_LOOT_Crab Treats|r]|cRXP_WARN_on a|cRXP _ENEMY_Young Reef Crawler|r接收|r|T134419:0|t[| cRXP_FRIENDLY_Rune of Lacerate |r] << Druid
    .use 209027 >>|cRXP_WARN_使用|r|T237270:0|t[|cRXP_LOOT_Crab Treats|r]|cRXP_WARN_on a|cRXP _ENEMY_Young Reef Crawler |r接收|r|T134419:0|t[| cRXP_FRIENDLY_Rune of Beast Mastery|r] << Hunter
    .collect 208687,1 << Druid -- Rune of Lacerate (1)
    .collect 208701,1 << Hunter -- Beast Mastery (1)
    .target Young Reef Crawler
    .train 416049,1 << Druid
    .train 410110,1 << Hunter
step << Druid/Hunter
    .train 416049 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate |r]|cRXP_WARN_to train|r|T132131:0|t[Lacerate] << Druid
    .use 208687 << Druid
    .itemcount 208687,1 << Druid
    .train 410110 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_野兽精通之路|r]|cRXP-WARN_训练|r|T132270:0|t[野兽精通] << Hunter
    .use 208701 << Hunter
    .itemcount 208701,1 << Hunter
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD/Alliance Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Mangle - 8 (Teldrassil) << Druid
#name 爆炸射击-8（Teldrassil） << Hunter
#title Mangle << Druid
#title Explosive Shot << Hunter

step
    +|cRXP_WARN_您必须至少达到8级才能单独获得|r|T133816:0|t[雕刻手套-Mangle]|cRXP_WARN_in Teldrassil|r << Druid
    +|cRXP_WARN_您必须至少达到8级才能单独获得|r|T133816:0|t[雕刻手套-爆炸射击]|cRXP_WARN_in Teldrassil|r << Hunter
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
    .xp >8,1
step
    #completewith Rune
    #label Teld1
    .zone Teldrassil >>前往: |cRXP_PICK_泰达希尔|r
    .subzoneskip 262
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step
    #optional
    #requires Teld1
    #label ShadowCave1
    #completewith Rune
    .goto 1438,44.197,58.040
    .subzone 262 >>进入Ban'ethil Barrow Den
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step
    #optional
    #requires ShadowCave1
    #completewith Rune
    .goto 1438,44.064,58.196,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,45.118,57.701,20 >>朝|cRXP_ENEMY_Rageclaw|r内部行驶
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step
    #loop
    #label Rune
    .line 1438,45.055,57.739,45.008,58.055,45.091,58.386,45.256,58.538,45.492,58.609,45.668,58.356,45.702,57.980,45.604,57.699,45.370,57.566,45.161,57.638,45.118,57.701
    .goto 1438,45.055,57.739,12,0
    .goto 1438,45.008,58.055,12,0
    .goto 1438,45.091,58.386,12,0
    .goto 1438,45.256,58.538,12,0
    .goto 1438,45.492,58.609,12,0
    .goto 1438,45.668,58.356,12,0
    .goto 1438,45.702,57.980,12,0
    .goto 1438,45.604,57.699,12,0
    .goto 1438,45.370,57.566,12,0
    .goto 1438,45.161,57.638,12,0
    .goto 1438,45.118,57.701,12,0
    >>杀死里面底层的|cRXP_ENEMY_Rageclaw|r。掠夺他|T136061:0|t|cRXP_Loot_[乌辛愤怒的偶像]|r << Druid
    >>杀死里面底层的|cRXP_ENEMY_Rageclaw|r。抢劫他|T134419:0|t|cRXP_Loot_[爆炸射击符文]|r << Hunter
    .collect 206954,1 << Druid -- Idol of Ursine Rage (1)
    .collect 206169,1 << Hunter -- Rune of Explosive Shot (1)
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
    .unitscan Rageclaw
step << Hunter
    .train 410123 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[爆炸射击符文]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-爆炸射击]
    .use 206169
    .itemcount 206169,1
step << Druid
    .equip 18,206954 >>|cRXP_WARN_装备|r|T136061:0|t|cRXP_LOOT_[Ursine Rage的偶像]|r
    .use 206954
    .itemcount 206954,1
    .train 410025,1
step << Druid
    #loop
    .goto 1438,44.731,57.355,0
    .goto 1438,44.254,59.083,0
    .goto 1438,44.064,58.196,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.064,58.196,15,0
    .aura 414824 >>|cRXP_WARN_当处于|r|T132276:0|t[熊形态]|cRXP_WARN_时，保持50或50以上的愤怒持续60秒|r
    .itemStat 18,QUALITY,2
    .train 410025,1
step << Druid
    .train 410025 >>|cRXP_WARN_使用|r|T136061:0|t|cRXP_LOOT_【Ursine Rage的偶像】|r|cRXP _WARN_to learn|r|T133816:0|t【雕刻手套-Mangle】
    .use 206954
    .aura -414824
    .train 410025,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD/Alliance Warrior SoD/Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Chest << Rogue/Priest
#subgroup Legs << Warrior
#name 来自阴影的屠杀-8（Teldrassil） << Rogue
#name 狂暴之雷-8（Teldrassil） << Warrior
#name 虚空瘟疫-8（Teldrassil） << Priest
#title Slaughter from the Shadows << Rogue
#title Furious Thunder << Warrior
#title Void Plague << Priest

step
    #completewith next
    .goto Teldrassil,44.18,58.19
    .subzone 262 >>进入Ban'ethil Barrow Den
    .train 424992,1 << Rogue
    .train 403476,1 << Warrior
    .train 425216,1 << Priest
step << Rogue
    .goto Teldrassil,44.155,61.182
    >>打开|cRXP_PICK_Gnarlpine Stash|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]掠夺它
    >>|cRXP_WARN_注：|cRXP_PICK_Gnarlpine Stash|r在Ban’ethil Barrows中随机产生|r
    .collect 203993 -- Rune of Slaughter (1)
    .train 424992 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Slaughter|r]|cRXP_WARN_to train|r|T236280:0|t[Slaughter from the Shadows]
    .use 203993
step << Warrior
    .goto Teldrassil,44.401,60.655
    >>打开|cRXP_PICK_Gnarlpine缓存|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]掠夺它
    >>|cRXP_WARN_注：|cRXP_PICK_Gnarlpine缓存|r在Ban'ethil Barrows中可以有多个产卵位置|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .train 403476 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]|cRXP_WARN_to train|r|T136048:0|t[狂暴的雷霆]
    .use 204809
step << Priest
    .goto Teldrassil,44.401,60.655
    >>打开|cRXP_PICK_Gnarlpine缓存|r。将其掠夺一次|T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]
    >>|cRXP_WARN_注：|cRXP_PICK_Gnarlpine缓存|r在Ban'ethil Barrows中可以有多个产卵位置|r
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .train 425216 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_黑暗目的的记忆|r]|cRXP_WARN_训练|r|T237514:0|t[虚空瘟疫]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD/Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves << Rogue
#subgroup Legs << Priest
#name Mutilate-8（Teldrassil） << Rogue
#name 分担疼痛-8（Teldrassil） << Priest
#title Mutilate << Rogue
#title Shared Pain << Priest

step << Rogue/Priest
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>Travel to Fel Rock
    .train 400094,1 << Rogue
    .train 402854,1 << Priest
step << Rogue/Priest
    .goto Teldrassil,51.2,50.6
    >>杀死|cRXP_ENEMY_Lord Melenas|r。掠夺他以获得|T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilization |r] << Rogue
    >>杀死|cRXP_ENEMY_Lord Melenas|r。为|T136222:0|t[|cRXP_FRIENDLY_被监禁救世主的记忆|r]掠夺他 << Priest
    >>|cRXP_ENEMY_Lord Melenas|r|cRXP_WARN_可能位于整个Fel Rock的许多不同产卵地点|r
    .collect 203990,1 << Rogue
    .collect 205945,1 << Priest
    .unitscan Lord Melenas
    .train 400094,1 << Rogue
    .train 402854,1 << Priest
step << Rogue
    .train 400094 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Mutilization|r]|cRXP-WARN_to train|r|T132304:0|t[Mutilate]
    .use 203990
    .itemcount 203990,1
step << Priest
    .train 402854 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_被监禁救世主的记忆|r]|cRXP_WARN_训练|r|T136160:0|t[共同的痛苦]
    >>|cRXP_WARN_你必须在一个神圣的区域打字/跪下，如月井、北郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房，才能获得|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buff|r
    .use 205945
    .itemcount 205945,1
]])
