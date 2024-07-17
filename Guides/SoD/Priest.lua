RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 惩罚-3（埃尔温森林）
#title Penance

step << Priest
    #season 2
    .goto Elwynn Forest,48.61,27.63
    >>杀死|cRXP_ENEMY_Kobold Labours|r。掠夺他们一个|T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r]
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .mob Kobold Laborer
    .train 402862,1
step << Priest
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|cRXP_WARN_在Northshire Abbey内键入/跪在聊天框中|r
    >>|cRXP_WARN_您将收到|r|T135934:0|t[对光的冥想]|cRXP_WARN_buff|r
    .cast 410958 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r]|cRXP_WARN_while you have |r|T135934:0|t[Meditation on the Light]|cRXP_WARN_buff|r
    .use 205951
    .itemcount 205951,1
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Penance - 1 (Dun Morogh)
#title Penance


step << Priest
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>打开地面上的|cRXP_PICK_Rockjaw Footlocker|r。为|T136222:0|t|cRXP_Loot_[故障助手的记忆]|r掠夺它
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .train 402862,1
step << Priest
    #season 2
    .goto 1426,28.922,66.378
    .aura 410935 >>|cRXP_WARN_瞄准内部的|cRXP_FRIENDLY_Altar之光|r以接收|r|T135934:0|t[对光的冥想]|cRXP_WARN_buff|r
    >>|cRXP_WARN_如果此操作不起作用，请键入/跪下目标为|cRXP_FRIENDLY_Altar of the Light |r|r
    .target Altar of the Light
    .emote KNEEL,208565
    .train 402862,1
step << Priest
    #season 2
    .train 402862 >>|cRXP_WARN_使用|r|T136222:0|t|cRXP_LOOT_[有问题的助手的记忆]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-惩罚]
    .aura -410935
    .use 205951
]])

RXPGuides.RegisterGuide([[
#classic
<< NightElf Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Penance - 2 (Shadowglen)
#title Penance

step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊达|r, 他在楼上
    .accept 77574 >>Accept Meditation on Elune
    .target Shanda
    .train 402862,1
step << NightElf Priest
    #season 2
    #completewith next
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052,10 >>前往Shadowglen的月井
    .train 402862,1
step << NightElf Priest
    #season 2
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052
    .aura 419307 >>|cRXP_WARN_一旦你到了月球井，就在你的聊天框里打字/下跪|r
    >>|cRXP_WARN_您将收到|r|T136057:0|t[精灵冥想]|cRXP_WARN_buff|r
    .train 402862,1
step << NightElf Priest
    #season 2
    #label PenanceRune
    .isOnQuest 77574
    .use 205951 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r]|cRXP_WARN_while you have |r|T136057:0|t[Meditation on Elune]|cRXP-WARN_buff|r
    .complete 77574,1 -- Learn: Engrave Gloves - Penance
    .target Altar of the Light
    .train 402862,1
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_珊达|r, 他在楼上
    .turnin 77574 >>Turn in Meditation on Elune
    .target Shanda
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Troll Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Penance - 2 (Durotar)
#title Penance


    --Rune of Penance

step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .accept 77642 >>Accept Wisdom of the Loa
    .target Ken'jai
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>前往Sen'Jin村的|cRXP_PICK_Loa祭坛|r并打字/下跪
    .use 205951 >>Talk to |cRXP_FRIENDLY_Serpent Loa|r as he appears, then use |T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acolyte|r]
    .complete 77642,1 --学习咒语：雕刻手套-忏悔
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肯杰|r
    .turnin 77642 >>Turn in Wisdom of the Loa
    .target Ken'jai
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Undead Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Penance - 2 (Tirisfal)
#title Penance


    --Rune of Penance

step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .accept 77670 >>Accept Meditation on Undeath
    .target Dark Cleric Duesten
step << Priest
    #season 2
    .goto Tirisfal Glades,31.06,64.80
    >>进入墓地并键入/跪下
    .use 205951 >>使用|T136222:0|t[|cRXP_FRIENDLY_Memory of a Troubled Acorly|r]获得|T237569:0|t[亡灵冥想]增益
    .complete 77670,1 >>学习咒语：雕刻手套-忏悔
step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗牧师杜斯滕|r
    .turnin 77670 >>Turn in Meditation on Undeath
    .target Dark Cleric Duesten

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name Homunculi - 8 (Durotar)
#title Homunculi

step
    .train 402852,1
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step
    .train 402852,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>跪在|cRXP_PICK_Loa|r祭坛前，与|cRXP_FRIENDLY_Sepert Loa|r交谈
    .skipgossip 208307,1
    .target Serpent Loa
step
    .train 402852,1
    >>杀死|cRXP_ENEMY_Voodoo巨魔|r。掠夺它们以获得|T135975:0|t[|cRXP_FRIENDLY_Proficityofa Desecrated Citadel|r]
    .goto Durotar,67.6,86.4
    .collect 205947,1
    .mob Voodoo Troll
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>跪在|cRXP_PICK_Loa祭坛|r前，与|cRXP_FRIENDLY_Serpent Loa|r对话，获得|T136077:0|t【在面包上冥想】buff
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_现在你必须找到一个拥有Loa buff的不死牧师。你必须跪在他面前，他必须为你祈祷。|r
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>跪在|cRXP_PICK_Loa祭坛|r前，与|cRXP_FRIENDLY_Serpent Loa|r对话，获得|T136077:0|t【在面包上冥想】buff
step << Undead
    .train 402852,1
    .goto Durotar,55.32,72.66
    .aura 418459 >>|cRXP_WARN_在森津墓地跪下|r获得|T237569:0|t【亡灵冥想】增益
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_废弃城堡的名称|r]|cRXP_WARN_训练|r|T237570:0|t[Hhomuncli]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 霍蒙利-7（蒂里斯法尔格拉德斯）
#title Homunculi

step
    .train 402852,1
    #completewith next
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
    .train 402852,1
    >>杀死|cRXP_ENEMY_Scarlet Warriors|r或|cRXX_ENEMY_Scarlet Missionaries|r。为|T135975:0|t[|cRXP_FRIENDLY_Pophyof a Desecrated Citadel|r]掠夺它们
    .goto Tirisfal Glades,50.6,67.8,0
    .goto Tirisfal Glades,32.6,48.6
    .collect 205947,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_现在你必须找到一个拥有Loa buff的不死牧师。你必须跪在他面前，他必须/祈祷你获得|T237569:0|t[亡灵冥想]增益。|r
step << Troll
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>跪在|cRXP_PICK_Loa祭坛|r前，与|cRXP_FRIENDLY_Serpent Loa|r对话，获得|T136077:0|t【在面包上冥想】buff
step << Undead
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>跪在|cRXP_PICK_Loa祭坛|r前，与|cRXP_FRIENDLY_Serpent Loa|r对话，获得|T136077:0|t【在面包上冥想】buff
    *|cRXP_WARN_You can also find a Troll Priest with the |T136077:0|t[Meditation on the Loa] buff. Kneel before him and he has to /pray for you|r.
step << Undead
    .train 402852,1
    .goto Durotar,57.15,73.36
    .aura 418459 >>|cRXP_WARN_在森津墓地跪下|r获得|T237569:0|t【亡灵冥想】增益
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_废弃城堡的名称|r]|cRXP_WARN_训练|r|T237570:0|t[Hhomuncli]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 共同的痛苦-13（Durotar）
#title Shared Pain

step
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step
    .train 402854,1
    >>杀死|cRXP_ENEMY_Makasgar|r或|cRXX_ENEMY_Gazz'uz|r（洞穴中），以离你最近的为准（该航路点将你带到最近的一个）。为|T136222:0|t[|cRXP_FRIENDLY_被监禁救世主的记忆|r]掠夺它们
    .goto Durotar,52.6,8.8,-1
    .goto Durotar,62.0,66.2,-1
    .collect 205945,1
    .mob Makasgar
    .mob Gazz'uz
step
    .train 402854,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>跪在|cRXP_PICK_Loa祭坛|r前，与|cRXP_FRIENDLY_Serpent Loa|r对话，获得|T136077:0|t【在面包上冥想】buff
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_被监禁救世主的记忆|r]|cRXP_WARN_训练|r|T136160:0|t[共同的痛苦]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 共同的痛苦-6（Tirisfal Glades）
#title Shared Pain

step
    #completewith next
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
    .train 402854,1
    >>杀死|cRXP_ENEMY_Tirisfal Farmers|r。为|T136222:0|t[|cRXP_FRIENDLY_被监禁救世主的记忆|r]掠夺他们
    .goto Tirisfal Glades,36.2,50.4
    .collect 205945,1
    .mob Tirisfal Farmer
step << Undead
    .train 402854,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>跪在墓地直到获得buff|T237569:0|t[亡灵冥想]
step << Troll
    #completewith SharedPainTirisfalA
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step << Troll
    #label SharedPainTirisfalA
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>跪在|cRXP_PICK_Loa祭坛|r前，与|cRXP_FRIENDLY_Serpent Loa|r对话，获得|T136077:0|t【在面包上冥想】buff
    .aura -418459
    >>|cRXP_WARN_你也可以找到一个拥有Loa buff的不死牧师。你必须跪在他面前，他必须/祈祷你获得|T237569:0|t[亡灵冥想]增益。|r
    .skipgossip 208307,1
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_被监禁救世主的记忆|r]|cRXP_WARN_训练|r|T136160:0|t[共同的痛苦]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 虚空瘟疫-5（杜洛塔尔）
#title Void Plague

step
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step
    .train 425216,1
    >>杀死|cRXP_ENEMY_Sailors|r和|cRXD_ENEMY_Marine|r。为|T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]掠夺它们
    .goto Durotar,57.6,55.4
    .collect 205940,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    .train 425216,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>跪在|cRXP_PICK_Loa祭坛|r前，与|cRXP_FRIENDLY_Serpent Loa|r对话，获得|T136077:0|t【在面包上冥想】buff
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_黑暗目的记忆|r]|cRXP_WARN_训练|r|T237514:0|t[虚空瘟疫]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 虚空瘟疫-6（蒂里斯法尔峡谷）
#title Void Plague

step
    #completewith next
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
    .train 425216,1
    >>杀死|cRXP_ENEMY_Gillgar |r。为|T136222:0|t[|cRXP_FRIENDLY_黑暗目的的记忆|r]掠夺他
    .goto Tirisfal Glades,25.6,48.2
    .collect 205940,1
    .mob Gillgar
step << Undead
    .train 425216,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>跪在墓地直到获得buff|T237569:0|t[亡灵冥想]
step << Troll
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step << Troll
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>跪在|cRXP_PICK_Loa祭坛|r前，与|cRXP_FRIENDLY_Serpent Loa|r对话，获得|T136077:0|t【在面包上冥想】buff
    .skipgossip 208307,1
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_黑暗目的记忆|r]|cRXP_WARN_训练|r|T237514:0|t[虚空瘟疫]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 修复祈祷-6（杜罗塔）
#title Prayer of Mending

step
    .goto Durotar,48.04,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adventurer's Spirit|r inside Kolkar Crag
    >>|cRXP_WARN_其他玩家（牧师或萨满）需要点击入口。掠夺|r|cRXP_FRIENDLY_Adventurer的精神|r|cRXP_WARN_afterwards for |r|T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_使用|r|T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]|cRXP_WARN_to train|r|T135944:0|t[修复祈祷]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 修复祈祷-10（穆戈尔）
#title Prayer of Mending

step
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adventurer's Spirit|r outside of the Venture Co. Mine
    >>|cRXP_WARN_其他玩家（牧师或萨满）需要点击入口。掠夺|r|cRXP_FRIENDLY_Adventurer的精神|r|cRXP_WARN_afterwards for |r|T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_使用|r|T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]|cRXP_WARN_to train|r|T135944:0|t[修复祈祷]
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 扭曲的信仰-10（莫丹湖）
#title Twisted Faith

step << Priest
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >>进入银流矿
    .train 425215,1
step << Priest
    .goto Loch Modan,35.6,20.6
    >>杀死|cRXP_ENEMY_Tunnel Rats|r。掠夺它们以获得|T237281:0|t[|cRXP-Loot_Soffering Coin|r]
    .collect 208823,1 -- Offering Coin (1)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Geomancer
    .train 425215,1
step << Priest
    .goto Loch Modan,36.689,20.964
    .use 208823 >>|cRXP_WARN_使用|r|T237281:0|t[|cRXP_OOT_Offering Coin|r]|cRXT_WARN_在Silverstream Mine的井内|r|cRXP_WARN_接收|r|T136222:0|t[| cRXP_FRIENDLY_奉献冠军的记忆|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_献身冠军的记忆|r]|cRXP_WARN_训练|r|T237566:0|t[扭曲的信仰]
    >>|cRXP_WARN_你必须在一个神圣的区域打字/跪下，如诺思郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房，才能获得|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buff|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 扭曲的信仰-14（西城）
#title Twisted Faith

step << Priest
    .goto Westfall,32.6,43.2,60,0
    .goto Westfall,29.8,46.6,60,0
    .goto Westfall,45.0,26.0,60,0
    .goto Westfall,45.6,21.2
    >>杀死|cRXP_ENEMY_Undying Laborer|r。为|T136222:0|t[|cRXP-FRIENDLY_Memory of a Devout Champions|r]掠夺它
    >>|cRXP_WARN_您必须使用神圣咒语才能完成|r|cRXP_ENEMY_Undying Laborer|r
    >>|cRXP_WARN_|cRXP_ENEMY_Undying Labor|r可以在黄金海岸采石场和Jangolode矿场产卵|r
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .unitscan Undying Laborer
    .train 425215,1
step << Priest
    .train 425215 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_献身冠军的记忆|r]|cRXP_WARN_训练|r|T237566:0|t[扭曲的信仰]
    >>|cRXP_WARN_你必须在一个神圣的区域打字/跪下，如诺思郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房，才能获得|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buff|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 扭曲的信仰-18（黑暗海岸）
#title Twisted Faith

step << Priest
    .goto Darkshore,59.2,23.4,60,0
    .goto Darkshore,60.0,15.4
    >>杀死|cRXP_ENEMY_Stormscale Myrmidons|r，|cRXD_ENEMY_ StormscaleWarriors|r和|cRXP_ENEMY_Stamscale Sorceres|r。掠夺它们以获得|T236364:0|t[|cRXP_Loot_Shatterspear Offering|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step << Priest
    .goto Darkshore,59.2,22.6
    .use 211482 >>|cRXP_WARN_在水下使用|r|T236364:0|t[|cRXP_LOOT_沙特斯皮尔产品|r]|cRXP_WARN_到沙特斯皮尔·偶像接受|r|T136222:0|t[| cRXP_FRIENDLY_奉献冠军的记忆|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_献身冠军的记忆|r]|cRXP_WARN_训练|r|T237566:0|t[扭曲的信仰]
    >>|cRXP_WARN_你必须在一个神圣的区域打字/跪下，如诺思郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房，才能获得|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buff|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 共同的痛苦-10（Dun Morugh）
#title Shared Pain

step << Priest
    .goto Loch Modan,77.894,62.236
    >>在楼下的大楼内杀死|cRXP_ENEMY_贝尔德上尉|r。为|T136222:0|t[|cRXP_FRIENDLY_被监禁救世主的记忆|r]而掠夺他
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Captain Beld
    .train 402854,1
step << Priest
    .train 402854 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_被监禁救世主的记忆|r]|cRXP_WARN_训练|r|T136160:0|t[共同的痛苦]
    >>|cRXP_WARN_你必须在一个神圣的区域打字/跪下，如诺思郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房，才能获得|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buff|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 共同的痛苦-6（埃尔温森林）
#title Shared Pain

step << Priest
    .goto Elwynn Forest,40.6,81.8
    >>杀死|cRXP_ENEMY_Kobold矿工|r。为|T136222:0|t掠夺他们[|cRXP_FRIENDLY_被监禁救世主的记忆|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    .train 402854 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_被监禁救世主的记忆|r]|cRXP_WARN_训练|r|T136160:0|t[共同的痛苦]
    >>|cRXP_WARN_你必须在一个神圣的区域打字/跪下，如诺思郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房，才能获得|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buff|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 霍蒙利-8（敦莫罗）
#title Homunculi

step << Priest
    .goto Dun Morogh,42.0,44.6,50,0
    .goto Dun Morogh,42.4,35.8
    >>杀死|cRXP_ENEMY_Frostmane Seers|r。掠夺它们以获得|T135975:0|t[|cRXP_FRIENDLY_被亵渎的城堡的外观|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
step << Priest
    .train 402852 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_废弃城堡的名称|r]|cRXP_WARN_训练|r|T237570:0|t[Hhomuncli]
    >>|cRXP_WARN_你必须在一个神圣的区域打字/跪下，如诺思郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房，获得2|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 霍蒙利-8（埃尔温森林）
#title Homunculi

step << Priest
    .goto Elwynn Forest,74.0,51.8
    >>杀死|cRXP_ENEMY_Defias盗贼巫师|r。掠夺他们以获得|T135975:0|t[|cRXP_FRIENDLY_Proficity|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    .train 402852 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_废弃城堡的名称|r]|cRXP_WARN_训练|r|T237570:0|t[Hhomuncli]
    >>|cRXP_WARN_你必须在一个神圣的区域打字/跪下，如诺思郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房，获得2|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name Hommuli-8（Teldrassil）
#title Homunculi

step << Priest
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>Travel to Fel Rock
    .train 402852,1
step << Priest
    .goto Teldrassil,77.86,61.66
    >>杀死|cRXP_ENEMY_Vicious Grells|r、|cRXD_ENEMY_Rascal精灵|r和|cRXP_ENEMY_Shadow精灵|r。为|T135975:0|t[|cRXT_FRIENDLY_Pophyof a Desecrated Citadel|r]掠夺它们
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    .train 402852 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_废弃城堡的名称|r]|cRXP_WARN_训练|r|T237570:0|t[Hhomuncli]
    >>|cRXP_WARN_你必须有2|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs，通过键入/跪在圣地，如月井、北郡修道院、暴风大教堂、安维尔马的光明祭坛、莫丹湖或铁炉堡的神秘病房|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 修复祈祷-6（埃尔温森林）
#title Prayer of Mending

step << Priest
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_与另一位牧师或圣骑士站在|cRXP_FRIENDLY_Adventurer’s Remains|r旁边加入一个小组，或在普通聊天中寻求圣骑士或牧师的帮助（在聊天中键入/1）|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_An|cRXP_FRIENDLY_Adventurer的灵魂|r将在完成仪式后产生并死亡。为|r|T135791:0|t[|cRXP_FRIENDLY_Reciprocal主显节|r]掠夺它
    .train 402848 >>|cRXP_WARN_使用|r|T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]|cRXP_WARN_to learn|r|T135944:0|t[修补的祈祷]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 修复祈祷-8（Teldrassil）
#title Prayer of Mending

step << Priest
    .goto Teldrassil,33.610,35.732
    >>|cRXP_WARN_与另一位牧师或德鲁伊站在|cRXP_FRIENDLY_Adventurer's Remains|r旁边加入一个小组，或在普通聊天中寻求德鲁伊或牧师的帮助（在聊天中键入/1）|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_An|cRXP_FRIENDLY_Adventurer的灵魂|r将在完成仪式后产生并死亡。为|r|T135791:0|t[|cRXP_FRIENDLY_Reciprocal主显节|r]掠夺它
    .train 402848 >>|cRXP_WARN_使用|r|T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]|cRXP_WARN_to learn|r|T135944:0|t[修补的祈祷]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 修复祈祷-6（敦·莫洛）
#title Prayer of Mending

step << Priest
    .goto Dun Morogh,43.0,49.6
    >>|cRXP_WARN_与另一位牧师或圣骑士站在|cRXP_FRIENDLY_Adventurer’s Remains|r旁边加入一个小组，或在普通聊天中寻求圣骑士或牧师的帮助（在聊天中键入/1）|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_An|cRXP_FRIENDLY_Adventurer的灵魂|r将在完成仪式后产生并死亡。为|r|T135791:0|t[|cRXP_FRIENDLY_Reciprocal主显节|r]掠夺它
    .train 402848 >>|cRXP_WARN_使用|r|T135791:0|t[|cRXP_FRIENDLY_Reciprocal Epiphany|r]|cRXP_WARN_to learn|r|T135944:0|t[修补的祈祷]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 暗语：死亡-10（黑暗海岸）
#title Shadow Word: Death

step << Priest
    .goto Darkshore,30.5,47.5
    >>单击小岛上的|cRXP_PICK_Remnant|r。为|T135975:0|t[|cRXP_FRIENDLY_Prophyof a King’s Demise|r]而掠夺它
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Priest
    >>你现在必须获得两个|T135934:0|t|T136057:0|t[冥想]增益
    >>你必须/跪在以下任何一个地方：月亮井、北郡修道院、暴风大教堂、安维尔玛的光明祭坛、莫丹湖或铁炉堡的神秘病房
    >>为了获得你的第二个【冥想】增益|T135934:0|t|T136057:0|t，这需要你跪在一个与你有不同【冥想】的牧师面前，他们必须在针对你的时候祈祷
    .train 402849 >>|cRXP_WARN_一旦你同时拥有这两个|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs使用|r|T135975:0|t[|cRXT_FRIENDLY_王者幻灭之神]|r|cRXP_WARN_to learn|r|t1136149:0|t[阴影词：死亡]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 影语-死亡-12（莫丹湖）
#title Shadow Word: Death

step << Priest
    #completewith next
    .goto Loch Modan,71.8,27.6
    .subzone 143 >>前往莫丹湖莫戈什寨
step << Priest
    #season 2
    .goto Loch Modan,71.8,27.6
    .aura 410935 >>|cRXP_WARN_将|cRXP_FRIENDLY_Heretic Idol |r定为自动/跪下的目标|r
    .emote KNEEL,208565 >>|cRXP_WARN_如果不起作用，请在聊天框中键入/跪下，并以|cRXP_FRIENDLY_Heretic Idol |r为目标|r
    >>|cRXP_WARN_您将收到|r|T135975:0|t[|cRXP_FRIENDLY_国王德米斯的名字|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .target Heretic Idol
step << Priest
    >>你现在必须获得两个|T135934:0|t|T136057:0|t[冥想]增益
    >>你必须/跪在以下任何一个地方：月亮井、北郡修道院、暴风大教堂、安维尔玛的光明祭坛、莫丹湖或铁炉堡的神秘病房
    >>为了获得你的第二个【冥想】增益|T135934:0|t|T136057:0|t，这需要你跪在一个与你有不同【冥想】的牧师面前，他们必须在针对你的时候祈祷
    .train 402849 >>|cRXP_WARN_一旦你同时拥有这两个|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs使用|r|T135975:0|t[|cRXT_FRIENDLY_王者幻灭之神]|r|cRXP_WARN_to learn|r|t1136149:0|t[阴影词：死亡]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 暗语：死亡-20（荒原）
#title Shadow Word: Death

step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    #loop
    .goto The Barrens,54.8,35.6,40,0
    .goto The Barrens,58.8,37.6,40,0
    >>在|cRXP_ENEMY_Desert Mirage|r上使用|T135894:0|t[驱散魔法]。为|T135975:0|t[|cRXP_FRIENDLY_王者幻灭之神|r]掠夺魔法
    *|cRXP_WARN_It's a green ghost which patrolls around. Use the RestedXP target macro to target it.|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
    .mob Desert Mirage
step << Troll
    >>你现在必须获得两个|T237569:0|t|T136077:0|t[冥想]增益
    >>你必须|cRXP_WARN_/跪在祭坛前的以下一个地方|r，然后与灵魂交谈：Sen'jin或Crossroads |cRXP-WARN_（神殿的位置在你的地图上标出，你也可以找到任何有buff的牧师，可以复制给你）|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>为了获得你的第二个|T237569:0|t|T136077:0|t[冥想]增益，这需要你|cRXP_WARN_/跪在拥有|T2375691:0|t][冥想亡灵]的亡灵牧师面前，他们必须/祈祷，同时瞄准你
    .train 402849 >>|cRXP_WARN_一旦你同时拥有这两个|r|T237569:0|t|T136077:0|t[冥想]|cRXP_WARN_buffs使用|r|T135975:0|t[|cRXT_FRIENDLY_王者幻灭之神]|r|cRXP_WARN_to learn|r|T136149:0|t[Shadow Word:Death]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>你现在必须获得两个|T237569:0|t|T136077:0|t[冥想]增益
    >>你必须|cRXP_WARN_/跪在祭坛前的以下一个地方，然后与灵魂交谈：Sen'jin或Crossroads
    .emote KNEEL,208309
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.7,0
    >>为了在墓地获得你的第二个|T237569:0|t|T136077:0|t[冥想]buff|cRXP_WARN_/跪|r以获得|T2375691:0|t[亡灵冥想]buff |cRXP-WARN_（神殿和墓地标记在你的地图上，你也可以找到任何拥有buff的牧师，可以将它们复制给你）|r
    .train 402849 >>|cRXP_WARN_一旦你同时拥有这两个|r|T237569:0|t|T136077:0|t[冥想]|cRXP_WARN_buffs使用|r|T135975:0|t[|cRXT_FRIENDLY_王者幻灭之神]|r|cRXP_WARN_to learn|r|T136149:0|t[Shadow Word:Death]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 影语：死亡-24（银松森林）
#title Shadow Word: Death

step
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
step
    .goto Silverpine Forest,65.8,23.6
    >>在|cRXP_ENEMY_Thule Ravenclaw|r（24级精英）后面拿起|cRX_Pick_Scroll|r，以获得|T135975:0|t[|cRXP_RIENDLY_王者幻灭之神|r]
    *|cRXP_WARN_The scroll is one the second floor. It's easier in a group.|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Troll
    >>你现在必须获得两个|T237569:0|t|T136077:0|t[冥想]增益
    >>你必须|cRXP_WARN_/跪在祭坛前的以下一个地方|r，然后与灵魂交谈：Sen'jin或Crossroads |cRXP-WARN_（神殿的位置在你的地图上标出，你也可以找到任何有buff的牧师，可以复制给你）|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>为了获得你的第二个|T237569:0|t|T136077:0|t[冥想]增益，这需要你|cRXP_WARN_/跪在拥有|T2375691:0|t][冥想亡灵]的亡灵牧师面前，他们必须/祈祷，同时瞄准你
    .train 402849 >>|cRXP_WARN_一旦你同时拥有这两个|r|T237569:0|t|T136077:0|t[冥想]|cRXP_WARN_buffs使用|r|T135975:0|t[|cRXT_FRIENDLY_王者幻灭之神]|r|cRXP_WARN_to learn|r|T136149:0|t[Shadow Word:Death]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>你现在必须获得两个|T237569:0|t|T136077:0|t[冥想]增益
    >>你必须|cRXP_WARN_/跪在祭坛前的以下一个地方，然后与灵魂交谈：Sen'jin或Crossroads
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,44.2,42.7,0
    >>为了在墓地获得你的第二个|T237569:0|t|T136077:0|t[冥想]buff|cRXP_WARN_/跪|r以获得|T2375691:0|t[亡灵冥想]buff |cRXP-WARN_（神殿和墓地标记在你的地图上，你也可以找到任何拥有buff的牧师，可以将它们复制给你）|r
    .train 402849 >>|cRXP_WARN_一旦你同时拥有这两个|r|T237569:0|t|T136077:0|t[冥想]|cRXP_WARN_buffs使用|r|T135975:0|t[|cRXT_FRIENDLY_王者幻灭之神]|r|cRXP_WARN_to learn|r|T136149:0|t[Shadow Word:Death]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 扭曲的命运-10（银松森林）
#title Twisted Fate

step
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
step
    .train 425215,1
    >>杀死|cRXP_ENEMY_Wailing Spirit|r。为|T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champions]掠夺它
    .goto Silverpine Forest,57.9,71.5
    .collect 205905,1
    .mob Wailing Spirit
step
    .train 425215 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_献身冠军的记忆]|cRXP_WARN_训练|r|T237566:0|t[扭曲的命运]
    >>|cRXP_WARN_你必须有一个|r|T237569:0|t|T136077:0|t[冥想]|cRXP_WARN_buff，方法是在|cRX_PICK_Loa Shrine|r前面键入|r/knee|cRXP-WARN_in（在杜罗塔或荒原中），或者在另一位牧师为你祈祷时跪在他们面前|r << Troll
    >>|cRXP_WARN_你必须有一个|r|T237569:0|t|T136077:0|t[冥想]|cRXP_WARN_buff，在墓地键入|r/knee|cRXP-WARN_at，或者在另一位牧师为你祈祷时跪在他们面前|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,55.6,73.3 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 扭曲的命运-10（The Barrens）
#title Twisted Fate

step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    .train 425215,1
    >>杀死|cRXP_ENEMY_Razormanes|r。为|T236248:0|t[|cRXP-FRIENDLY_Helping Hand]掠夺它们
    .goto The Barrens,54.6,25.6
    .collect 208765,1
    .mob Razormane Thornweaver
    .mob Razormane Hunter
    .mob Razormane Water Seeker
    .mob Razormane Defender
step
    .train 425215,1
    >>|cRXP_WARN_Find a dead player or pet that you can pressure（with |T135955:0|t[Resurection]）to get |r|T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champions]
    .collect 205905,1
step
    .train 425215 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_献身冠军的记忆]|cRXP_WARN_训练|r|T237566:0|t[扭曲的命运]
    >>|cRXP_WARN_你必须有一个|r|T237569:0|t|T136077:0|t[冥想]|cRXP_WARN_buff，方法是在|cRX_PICK_Loa Shrine|r前面键入|r/knee|cRXP-WARN_in（在杜罗塔或荒原中），或者在另一位牧师为你祈祷时跪在他们面前|r << Troll
    >>|cRXP_WARN_你必须有一个|r|T237569:0|t|T136077:0|t[冥想]|cRXP_WARN_buff，在墓地键入|r/knee|cRXP-WARN_at，或者在另一位牧师为你祈祷时跪在他们面前|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto The Barrent,50.7,32.8 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 虚空瘟疫-6（埃尔温森林）
#title Void Plague

step << Priest
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >>Enter Fargodeep Mine
    .train 425216,1
step << Priest
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>杀死|cRXP_ENEMY_Goldtooth|r。为|T136222:0|t[|cRXP_FRIENDLY_Memory of a Dark Purpose|r]掠夺他
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Goldtooth
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_黑暗目的的记忆|r]|cRXP_WARN_训练|r|T237514:0|t[虚空瘟疫]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 虚空瘟疫-6（盾魔）
#title Void Plague


step << Priest
    #season 2
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>杀死|cRXP_ENEMY_Leper Gnomes|r。为|T136222:0|t[|cRXP-FRIENDLY_Memory of a Dark Purpose|r]掠夺它们
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_FRIENDLY_黑暗目的的记忆|r]|cRXP_WARN_训练|r|T237514:0|t[虚空瘟疫]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name 授权更新-27（千针）
#title Empowered Renew


-- Empowered Renew

step
    .train 425309,1
    .zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
step
    .train 425309,1
    .goto Thousand Needles,31.33,37.05,10,0
    .goto Thousand Needles,33.17,35.38,15,0
    .goto Thousand Needles,31.96,31.32,15,0
    .goto Thousand Needles,33.04,27.61,30,0
    .goto Thousand Needles,35.20,31.09,30,0
    .goto Thousand Needles,34.17,38.81
    >>杀死|cRXP_ENEMY_Grimthome Geomancers|r，|cRXX_ENEMY_grimthome Bandits|r，| cRXP__ENEMY_Gritthome Reavers|r和|cRXD_ENEMY_ Grimthomm Stomper|r。为|T135975:0|t[|cRXP_Loot_快速路径预言|r]掠夺它们
    .collect 213140,1
    .mob Grimtotem Geomancer
    .mob Grimtotem Bandit
    .mob Grimtotem Reaver
    .mob Grimtotem Stomper
step
    .train 425309 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_LOOT_快速路径的预测|r]|cRXP_WARN_训练|r|T236254:0|t[授权更新]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name 授权更新-33（Alterac山脉）
#title Empowered Renew

-- Empowered Renew

step
    .train 425309,1
    .zone Alterac Mountains >>前往: |cRXP_PICK_奥特兰克山脉|r
step
    .train 425309,1
    #loop
    .goto Alterac Mountains,47.48,58.94,0
    .goto Alterac Mountains,51.73,40.23,70,0
    .goto Alterac Mountains,45.19,33.91,70,0
    .goto Alterac Mountains,51.46,53.84,70,0
    .goto Alterac Mountains,48.54,40.72,70,0
    >>杀死|cRXP_ENEMY_Crushridge食人魔|r和|cRXX_ENEMY_克鲁shridge Brutes|r。为|T135975:0|t[|cRXD_Loot_快速路径预言|r]掠夺它们
    .collect 213140,1
    .mob Crushridge Ogre
    .mob Crushridge Brute
step
    .train 425309 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_LOOT_快速路径的预测|r]|cRXP_WARN_训练|r|T236254:0|t[授权更新]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name 重新燃起的希望-31（Desolace）
#title Renewed Hope

-- Renewed Hope

step
    #optional
    .train 425310,1
    .train 605 >>|cRXP_WARN_你必须经过|r|T136206:0|t[精神控制]|cRXP_WARN_trained才能获得|r|T135923:0|t[重新燃起的希望]|cRXP_WARN_rune|r
step
    #optional
    .train 425310,1
    .xp 31
    >>|cRXP_WARN_您必须至少达到31级才能在33级|cRXP_ENEMY_Slitherblade Tide Priestess |r之后施放|r|T136206:0|t[心灵控制]|cRXP-WARN_|r
step
    .train 425310,1
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    #loop
    .goto Desolace,35.4,29.6,60,0
    .goto Desolace,33.6,15,0,60,0
    .goto Desolace,40.0,17.4,60,0
    .goto Desolace,38.6,23.6,60,0
    .train 425310,1
    >>杀死|cRXP_ENEMY_Slitherblade Nagas|r。为|T136222:0|t[|cRXP_Loot_解除设置视觉|r]掠夺它们
    .collect 213599,1
    .mob Slitherblade Naga
    .mob Slitherblade Warrior
    .mob Slitherblade Oracle
    .mob Slitherblade Myrmidon
    .mob Slitherblade Sea Witch
    .mob Slitherblade Tide Priestess
step -- step shows for players that are only level 31
    #optional
    #completewith next
    +|cRXP_WARN_注：你只能在33级上施法|r|T136206:0|t[精神控制]|cRXP_WARN_o | cRXP_ENEMY_Slitherblade Tide Priestess |r。34级的施法会失败|r
    .xp >32,1
    .xp <31,1
    .train 425310,1
step
    #label MCPriestess
    #loop
    .goto Desolace,38.8,24.0,60,0
    .goto Desolace,34.6,30.0,60,0
    .goto Desolace,34.6,20.2,60,0
    .aura 435117 >>|cRXP_WARN_铸造|r|T136206:0|t[精神控制]|cRXP_WARN_on a|r|cRXP-ENEMY_Slitherblade潮汐女祭司|r
    >>|cRXP_WARN_当它受到|r|T136206:0|t[精神控制]|cRXP_WARN_的影响时，从宠物动作栏中瞄准自己并施放|r|T136077:0|t[Abyss冥想]|cRXP_WARN_f|r
    >>|cRXP_WARN_之后按Escape取消|r|T136206:0|t[心理控制]|cRXP_WARN_并杀死|r|cRXP-ENEMY_Slitherblade Tide Priestess|r
    .mob Slitherblade Tide Priestess
    .train 425310,1
step
    .train 425310 >>|cRXP_WARN_使用|r|T136222:0|t[|cRXP_LOOT_Unsetting Vision|r]|cRXP_WARN_to train|r|T135923:0|t[重新燃起的希望]
    .use 213599
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#name 分散40（Stranglethorn Vale）
#title Dispersion

-- Dispersion

step
    .train 425314,1
    >>|cRXP_WARN_在Stranglethorn Vale用|r|T132299:0|t[微妙大师]|cRXP_WARN_rune和|r|T338666:0|t[Jani's Charm]|cRXP_WARN_rinket到|r|T133644:0|t[Pick Pocket]|cRX P_WARN_any|cRX _ ENEMY_Bloodscap Troll|r为|r|T23746:0|t[TMysterious Troll Scroll]|cR_WARN_找到一个流氓。法师必须使用|r|T135933:0|t[理解符]|cRXP_WARN_来解密它才能成为|T134938:0|t[|cRXP-LOOT_解密巨魔卷轴|r]|r
    >>|cRXP_WARN_或者，从拍卖行购买一个|r|T23746:0|t[神秘巨魔卷轴]|r|cRXP_WARN_f并让法师解密，或者购买已经|T134938:0|t[|cRXP-OOT_Deciphered Troll Scroll|r]|r
    .use 216880 >>|cRXP_WARN_使用|T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r]开始任务|r
    >>|cRXP_WARN_你也可以找一位牧师与你分享任务|r
    .collect 216880,1
    .disablecheckbox
    .accept 79731 >>Accept The Troll Scroll
step
    .train 425314,1
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
    >>|cRXP_WARN_在前往那里之前，请确保您有两次活动跑步|r|T135934:0|t|T136057:0|t[冥想]|cRXP_WARN_buffs|r
step
    .train 425314,1
    .goto Stranglethorn Vale,28.961,61.931
    >>单击|cRXP_PICK_圣泉|r。为|T134712:0|t[|cRXP_Loot_圣泉水|r]掠夺它
    >>|cRXP_WARN_你可能需要杀死守卫在|r|cRXP_PICK_圣泉前的|cRXP_ENEMY_Lord Sakrasis|r（45级稀有）|r
    .collect 737,1 --Holy Spring Water
    .mob Lord Sakrasis
step
    #completewith next
    .subzone 102 >>祖尔昆达遗址之旅
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    .cast 3591 >>|cRXP_WARN_使用|r|T134712:0|t[|cRXP_LOOT_圣泉水|r]|cRXP-WARN_at小喷泉|r
    >>|cRXP_WARN_你可能需要杀死|cRXP_ENEMY_Gan'zulah|r（41级）和他周围的一小群|cRXX_ENEMY_Trolls|r才能到达小喷泉|r
    .use 737
    .mob Gan'zulah
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    >>单击出现的|cRXP_PICK_Fount|r。为|T135975:0|t|cRXP_Loot_[被监禁的恶意预言]|r抢劫它
    .collect 213142,1
step
    .train 425314 >>|cRXP_WARN_使用|r|T135975:0|t|cRXP_LOOT_[监禁恶意的预测]|r|cRXP-WARN_训练|r|T237563:0|t[分散]
    .use 213142
step
    .isQuestComplete 79731
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
    .turnin 79731 >>Turn in The Troll Scroll
    .target Hemet Nesingwary
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#name 疼痛抑制-32（艾泽拉斯）
#title Pain Suppression

-- Pain Suppression

step
    .train 402855,1
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10,0
    .goto 1415,47.73,19.39,5 >>进入猩红寺地牢：墓地
step
    >>点击无头骑士产卵位置附近的|cRXP_PICK_Tombstone |r以收集|cRXP_LOOT_|T136222:0|t[墓地回声]|r|cRXP-WARN_I强烈建议在这一步中组成一组5名玩家|r
    .link https://imgur.com/a/lqRc0i6 >>|cRXP_WARN_单击此处获取图片参考。|r
    .collect 215426,1
step
    #optional
    .train 402855,1
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step
    .train 402855,1
    .goto Arathi Highlands,62.1,54.5
    >>单击|cRXP_PICK_Grave|r在最大建筑旁边的Go'sheks农场上收集|cRXP_LOOT_|T136222:0|t[Arathi Echo]|r。
    .collect 215427,1
step
    .train 402855,1
    .zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
step
    .train 402855,1
    .goto Dustwallow Marsh,63.7,42.3
    >>单击|cRXP_PICK_Tombstone |r以收集位于联盟墓地附近的|cRXP_LOOT_|T136222:0|t[Theramore Echo]|r。
    .collect 215428,1
step
    .train 402855,1
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
step
    .train 402855,1
    .goto Swamp of Sorrows,16.7,53.8
    >>单击|cRXP_PICK_Grave|r以收集位于树旁湖泊附近的|cRXP-LOOT_|T136222:0|t[沼泽回声]|r。
    .collect 215425,1
step
    .train 402855,1
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10 >>Enter The Scarlet Monastery Dungeon: Library |cRXP_WARN_It is highly recommended to form a group of 5 players for the next steps.|r
step
    .train 402855,1
    .cast 437054 >>在勇士雕像前使用|T136222:0|t[沼泽回声]。
    .use 215425
step
    .train 402855,1
    .cast 437053 >>在法师雕像前使用|T136222:0|t[Arathi Echo]。
    .use 215428
step
    .train 402855,1
    .cast 436952 >>在圣骑士雕像前使用|T136222:0|t[Teramore Echo]。
    .use 215425
step
    .train 402855,1
    .cast 437055 >>在牧师雕像前使用|T136222:0|t[墓地回声]。
    .use 215426
step
    .train 402855 >>点击房间中央的橙色遗存者接收|T135791:0|t|cRXP_FRIENDLY_[伪经主显学]|r，使用它学习|T135936:0|t[止痛]
    .use 213143
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Helmet
#name 虚空之眼-50（艾泽拉斯）

--x shiek: needs better coordinates and travelsteps
step
    #completewith next
    .zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
    .train 402864,1
step
    .goto The Hinterlands,58.4,72.7
    >>单击|cRXP_PICK_|T236407:0|t灼热的眼睛|r
    .collect 223334,1 --1/1 Glowing Eye
    .train 402864,1
step
    #completewith next
    .zone Blasted Lands >>前往: |cRXP_PICK_诅咒之地|r
    .train 402864,1
step
    .goto Blasted Lands,43.8,45.8
    >>单击|cRXP_PICK_|T236407:0|t脉冲眼|r
    .collect 223331,1 --1/1 Pulsating Eye
    .train 402864,1
step
    #completewith next
    .zone Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
    .train 402864,1
step
    .goto Searing Gorge,43.8,45.8
    >>单击|cRXP_PICK_|T236407:0|t振动眼|r
    .collect 223332,1 --1/1 Vibrating Eye
    .train 402864,1
step
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
    .train 402864,1
step
    .goto Stranglethorn Vale,33,88
    >>单击|cRXP_PICK_|T236407:0|t眼睛不舒服|r
    .collect 223333,1 --1/1 Baleful Eye
    .train 402864,1
step
    #completewith next
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
    .train 402864,1
step
    .goto Feralas,57.2,68.7
    >>单击|cRXP_PICK_|T236407:0|t火眼金睛|r
    .collect 223337,1 --1/1 Burning Eye
    .train 402864,1
step
    #completewith next
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
    .train 402864,1
step
    .goto Tanaris,56.4,73.7
    >>单击|cRXP_PICK_|T236407:0|t斜视|r
    .collect 223335,1 --1/1 Oozing Eye
    .train 402864,1
step
    #completewith next
    .zone Felwood >>前往: |cRXP_PICK_费伍德森林|r
    .train 410013,1
step
    .goto Felwood,36.5,55.7
    >>单击|cRXP_PICK_|T236407:0|t刺眼|r
    .collect 223336,1 --1/1 Piercing Eye
    .train 402864,1
step
    #completewith next
    .zone Azshara >>前往: |cRXP_PICK_艾萨拉|r
    .train 402864,1
step
    .goto Azshara,89.8,33.6
    >>目标|cRXP_FRIENDLY_守望者之神|r
    .emote KNEEL,223590
    .accept 82316,1 >>Accept Seven Eyes I Seek...
    .target Shrine of the Watcher
    .train 402864,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Surge of Light
#name 光的浪涌-40（Tanaris）

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_在塔纳里斯，你只能在晚上9点到早上6点之间获得|r|T135981:0|t[光的浪涌]|cRXP_WARN_run。|r
    +当你想在这个时间跨度之外获得符文时，你可以查看Stranglethorn Vale。
    .train 431669,1
step
    #completewith next
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
    .train 431669,1
step
    .train 431669,1
    >>用神圣或奥术咒语/魔杖杀死|cRXP_ENEMY_失落灵魂的回声|r|cRXP_WARN_。为|T135975:0|t[|cRXP-FRIENDLY_失落部落的命运|r]掠夺它
    .collect 221981,1
    .goto Tanaris,52,29
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_You need TWO meditation buffs: Look for a priest with multiple buffs, /kneel before him, wait for him to /pray for you.|r
    .train 431669 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_失落部落的血统|r]|cRXP_WARN_to train|r|T135981:0|t[光的浪涌]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Surge of Light
#name 光的浪涌-40（悲伤的沼泽）

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_在《悲伤的沼泽》中，你只能在晚上9点到早上6点之间获得|r|T135981:0|t[Surge of Light]|cRXP_WARN_run。|r
    +当你想在这个时间跨度之外获得符文时，你可以查看Stranglethorn Vale。
    .train 431669,1
step
    #completewith next
    .zone Swamp of Sorrows >>前往: |cRXP_PICK_悲伤沼泽|r
    .train 431669,1
step
    .train 431669,1
    >>用神圣或奥术咒语/魔杖杀死|cRXP_ENEMY_失落灵魂的回声|r|cRXP_WARN_。为|T135975:0|t[|cRXP-FRIENDLY_失落部落的命运|r]掠夺它
    .collect 221981,1
    .goto Swamp of Sorrows,50,60
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_You need TWO meditation buffs: Look for a priest with multiple buffs, /kneel before him, wait for him to /pray for you.|r
    .train 431669 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_失落部落的血统|r]|cRXP_WARN_to train|r|T135981:0|t[光的浪涌]
]])


RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Surge of Light
#name 浪涌的光-40（腹地）

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_在《腹地》中，你只能在晚上9点到早上6点之间获得|r|T135981:0|t[Surge of Light]|cRXP_WARN_run。|r
    +当你想在这个时间跨度之外获得符文时，你可以查看Stranglethorn Vale。
    .train 431669,1
step
    #completewith next
    .zone The Hinterlands>>前往: |cRXP_PICK_辛特兰|r
    .train 431669,1
step
    .train 431669,1
    >>用神圣或奥术咒语/魔杖杀死|cRXP_ENEMY_失落灵魂的回声|r|cRXP_WARN_。为|T135975:0|t[|cRXP-FRIENDLY_失落部落的命运|r]掠夺它
    .collect 221981,1
    .goto The Hinterlands,73,68
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_You need TWO meditation buffs: Look for a priest with multiple buffs, /kneel before him, wait for him to /pray for you.|r
    .train 431669 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_失落部落的血统|r]|cRXP_WARN_to train|r|T135981:0|t[光的浪涌]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Surge of Light
#name 光之浪涌-40（Stranglethorn Vale）2

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_灵魂只能在血月事件后产生。您也可以禁用该事件并运行到航路点位置|r。
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
    .train 431669,1
step
    .train 431669,1
    >>用神圣或奥术咒语/魔杖杀死|cRXP_ENEMY_失落灵魂的回声|r|cRXP_WARN_。为|T135975:0|t[|cRXP-FRIENDLY_失落部落的命运|r]掠夺它
    .collect 221981,1
    .goto Stranglethorn Vale,40.0,58.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_You need TWO meditation buffs: Look for a priest with multiple buffs, /kneel before him, wait for him to /pray for you.|r
    .train 431669 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_失落部落的血统|r]|cRXP_WARN_to train|r|T135981:0|t[光的浪涌]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Surge of Light
#name 光之浪涌-40（Stranglethorn Vale）1

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_您只能在晚上9点到早上6点之间获得|r|T135981:0|t[光的浪涌]|cRXP_WARN_run。|r
    +当你想在这个时间跨度之外获得符文时，你可以查看Stranglethorn Vale 2。
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
    .train 431669,1
step
    .train 431669,1
    >>用神圣或奥术咒语/魔杖杀死|cRXP_ENEMY_失落灵魂的回声|r|cRXP_WARN_。为|T135975:0|t[|cRXP-FRIENDLY_失落部落的命运|r]掠夺它
    .collect 221981,1
    .goto Stranglethorn Vale,30.0,73.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_You need TWO meditation buffs: Look for a priest with multiple buffs, /kneel before him, wait for him to /pray for you.|r
    .train 431669 >>|cRXP_WARN_使用|r|T135975:0|t[|cRXP_FRIENDLY_失落部落的血统|r]|cRXP_WARN_to train|r|T135981:0|t[光的浪涌]
]])


