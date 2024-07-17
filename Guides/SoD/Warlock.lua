RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Haunt-3（埃尔温森林）
#title Haunt

step << Warlock
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>打开地面上的|cRXP_PICK_Defias Stashbox|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r]掠夺它
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    #label RoH
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Haunting|r]|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-Haunt]
    .use 205230
    .itemcount 205230,1
    .train 403919,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Haunt - 1 (Dun Morogh)
#title Haunt

step << Warlock
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>打开地面上的|cRXP_PICK_Rockjaw Footlocker|r。为|T134419:0|t|cRXP_Loot_[闹鬼符文]|r掠夺它
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    .train 403919 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[闹鬼符文]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-闹鬼]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Haunt - 2 (Durotar)
#title Haunt


    --Rune of Haunt

step << Orc
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纳托克|r
    .accept 77586 >>Accept Stolen Power
    .target Nartok
    .train 403919,1
step
    #season 2
    .goto Durotar,42.99,54.43
    >>在洞穴内为|T134419:0|t[|cRXP_PRIENDLY_Rune of Haunting|r]掠夺|cRX_PICK_Waterloged Stashbox |r
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .train 403919 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[闹鬼符文]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-闹鬼]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
step << Orc
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迈安|r
    .turnin 77586 >>Turn in Stolen Power
    .target Nartok
    .isOnQuest 77586
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Haunt-2（Tirisfal Glades）
#title Haunt


    --Rune of Haunt

step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克希米林|r
    .accept 77672 >>Accept The Lost Rune
    .target Maximillion
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>在洞穴内偷走|cRXP_PICK_Lost Stache|r，以获得|T134419:0|t[|cRXP-FRIENDLY_Rune of Haunting|r]
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .cast 402265 >>使用|T134939:0|t[|cRXP_FRIENDLY_Spell注释：CALE ENCI|r]
    .use 205230
    .train 403919,1
step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_马克希米林|r
    .turnin 77672 >>Turn in The Lost Rune
    .target Maximillion


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 灵魂虹吸-13（杜罗塔）
#title Soul Siphon

step
    #completewith next
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step
    .train 403920,1
    .goto Durotar,48.60,15.28
    .collect 205020,1 >>在动物身上使用|T136163:0|t[吸取灵魂]获得|T134095:0|t[Pure Soul Shard]
step
    --Wowhead npc 3203 also possible, maybe better?
    .train 403920,1
    >>在|cRXP_ENEMY_Gazz'uz|r（洞穴内）上使用|T136163:0|t[Drain Soul]获得|T134085:0|t[Tainted Soul Shard]|cRXP_WARN_你不必杀了他，可以从下面抽干他|r
    .goto Durotar,51.47,9.73
    .collect 205019,1
    .mob Gazz'uz
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darmak Bloodhowl|r
    .goto Durotar,54.6,41.6
    .collect 205022,1
    .skipgossip 208226,1
    .target Darmak Bloodhowl
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_灵魂虹吸管之路|r]|cRXP-WARN_训练|r|T136169:0|t[灵魂虹吸管]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 灵魂虹吸管-9（蒂里斯法尔峡谷）
#title Soul Siphon

step
    #completewith next
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
    #completewith next
    .train 403920,1
    .collect 205020,1 >>在动物身上使用|T136163:0|t[吸取灵魂]获得|T134095:0|t[Pure Soul Shard]
step
    .train 403920,1
    >>在|cRXP_ENEMY_Maggot Eye |r上使用|T136163:0|t[Drain Soul]获得|T134085:0|t[Tainted Soul Shard]|cRXP_WARN_你不必杀了他|r
    .goto Tirisfal Glades,58.6,31.6
    .collect 205019,1
    .mob Maggot Eye
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denton Bleakway|r in Undercity
    .goto Undercity,84.2,25.8
    .collect 205022,1
    .skipgossip 208682,1
    .target Denton Bleakway
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_灵魂虹吸管之路|r]|cRXP-WARN_训练|r|T136169:0|t[灵魂虹吸管]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 恶魔战术-4（Tirisfal Glades）
#title Demonic Tactics

step
    #completewith next
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|cRXP_FRIENDLY_Dead Acolyte|r交互。打开|T133625:0|t[Acolyte's背包]
    .goto Tirisfal Glades,76.61,44.87
    .use 205364
    .collect 205181,1
    .collect 208224,1
    .skipgossip 208927,1
    .mob Dead Acolyte
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁伯特·鲍什|r
    .goto Tirisfal Glades,61.6,52.4
    .collect 205182,1
    .skipgossip 2127,2
    .target Rupert Boch
step
    .train 416009,1
    >>使用符文石旁边的|T133447:0|t[无功神器]|cRXP_WARN_Afterwards你有10分钟的时间到达Undercity（看看你的debuff）|r
    .goto Tirisfal Glades,76.61,44.87
    .use 205182
    .collect 205183,1
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carentin Halgar|r in Undercity
    .goto Undercity,85.0,25.6
    .collect 205215,1
    .skipgossip 5675,1
    .target Carendin Halgar
step
    .use 205215
    .itemcount 205215,1
    .train 416009 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_战术调整|r]|cRXP_WARN_训练|r|T136150:0|t[恶魔战术]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 恶魔之恩-8（杜洛塔尔）
#title Demonic Grace

step
    #completewith DemonicGraceDurotarTome
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
step
    #completewith DemonicGraceDurotarSkull
    >>杀死|cRXP_ENEMY_Makrura|r。为|T133571:0|t[MakruraLegs]掠夺它们
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    #label DemonicGraceDurotarTome
    >>杀死|cRXP_ENEMY_Hexed巨魔|r和|cRXD_ENEMY_Voodoo巨魔|r.为|T133733:0|t[Ominous Tome]掠夺它们
    .goto Durotar,67.2,85.6
    .collect 207731,1
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #label DemonicGraceDurotarSkull
    >>杀死|cRXP_ENEMY_Kul Tiran人类|r。为|T133730:0|t[Kul Tilan头骨]掠夺他们
    .goto Durotar,58.6,56.0
    .collect 207733,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    #loop
    .goto Durotar,61.0,43.0,50,0
    .goto Durotar,60.8,70.6,50,0
    .goto Durotar,51.6,84.6,50,0
    .goto Durotar,60.8,70.6,50,0
    >>杀死|cRXP_ENEMY_Makrura|r。为|T133571:0|t[MakruraLegs]掠夺它们
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    .train 425477,1
    *|cRXP_WARN_CAREFUL: Others can tag your demon which means that you would have to farm the reagents again|r
    >>输入Sewers。在召唤圈使用|T133733:0|t[不祥的Tome]。杀死|cRXP_WARN_THE ELITE（也许可以寻求帮助）|r|cRXP _ENEMY_Soboz|r。掠夺他获得|T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]
    .goto Durotar,67.45,87.83
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]|cRXP_WARN_to train|r|T236293:0|t[恶魔恩典]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 恶魔之恩-8（蒂里斯法尔格拉迪斯）
#title Demonic Grace

step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesTome
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesBlood
    >>杀死|cRXP_ENEMY_Darkhounds|r。为|T133726:0|t[Hound Jawbone]掠夺它们
    .collect 207973,1
    .mob Cursed Darkhound
    .mob Decrepit Darkhound
    .mob Ravenous Darkhound
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesTome
    >>杀死|cRXP_ENEMY_Darkeye Bonecasters|r。为|T133733:0|t[Ominous Tome]掠夺它们
    .goto Tirisfal Glades,47.6,36.4
    .collect 207974,1
    .mob Darkeye Bonecaster
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesBlood
    >>杀死|cRXP_ENEMY_Rot隐藏|r。为|T133730:0|t[Gnoll Blood]掠夺它们
    .goto Tirisfal Glades,58.6,34.6
    .collect 204906,1
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step
    .train 425477,1
    #loop
    .goto Tirisfal Glades,73.4,52.8,50,0
    .goto Tirisfal Glades,59.4,60.2,50,0
    .goto Tirisfal Glades,44.4,58.4,50,0
    .goto Tirisfal Glades,42.0,43.0,50,0
    >>杀死|cRXP_ENEMY_Darkhounds|r。为|T133726:0|t[Hound Jawbone]掠夺它们
    .collect 207973,1
    .mob Cursed Darkhound
    .mob Decrepit Darkhound
    .mob Ravenous Darkhound
step
    .train 425477,1
    *|cRXP_WARN_CAREFUL: Others can tag your demon which means that you would have to farm the reagents again|r
    >>输入Sewers。在召唤圈使用|T133733:0|t[不祥的Tome]。杀死|cRXP_WARN_THE ELITE（也许可以寻求帮助）|r|cRXP _ENEMY_Soboz|r。掠夺他获得|T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]
    .goto Undercity,15.1,31.3,20,0
    .goto Undercity,24.11,41.59
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]|cRXP_WARN_to train|r|T236293:0|t[恶魔恩典]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune和书籍指南
-- #subgroup Chest << Mage
#subgroup Gloves << Warlock
-- #name 燃尽-8（蒂里斯法尔格拉德斯） << Mage
#name 混沌之箭-8（蒂里斯法尔峡谷） << Warlock
#title Chaos Bolt << Warlock
--Permok: Dont load it for mages for now

step << Mage
    >>从试剂供应商处购买一个（或多个）|T135933:0|t[理解符]
    .collect 211779,1
step
    #completewith next
    .zone Tirisfal Glades >>前往: |cRXP_PICK_提瑞斯法林地|r
step
    .train 403925,1 << Warlock
    .train 401759,1 << Mage
    .goto Tirisfal Glades,66.3,40.0
    >>使用火符释放|cRXP_ENEMY_Frozen Murloc|r|cRXP-WARN_b。将其掠夺|T134939:0|t[|cRXP_FRIENDLY_Spell注释：燃尽|r] << Mage
    >>使用火符释放|cRXP_ENEMY_Frozen Murloc|r|cRXP_WARN_b。将其掠夺|T134419:0|t[|cRXP-FRIENDLY_Rune of Chaos Bolt|r] << Warlock
    *|cRXP_WARN_At low levels you won't be able to free it alone, search for another Warlock of Mage|r
    .collect 205228,1 << Warlock
    .collect 203748,1 << Mage
    .mob Frozen Murloc
step
    .use 205228 << Warlock
    .use 203748 << Mage
    .itemcount 205228,1 << Warlock
    .itemcount 203748,1 << Mage
    .collect 211779,1 >>您需要试剂供应商提供的|T135933:0|t[理解符]才能使用该物品 << Mage
    .train 403925 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Chaos Bolt|r]|cRXP-WARN_to train|r|T236291:0|t[Chaos Bolt]  << Warlock
    .train 401759 >>使用|T134939:0|t[|cRXP_FRIENDLY_Spell注释：烧坏|r]|cRXP-WARN_to train|r|T236207:0|t[烧坏] << Mage
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 火湖-25（Hillsbrad Foothills）
#title Lake of Fire

step
    #completewith next
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r << Horde
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r << Alliance
step
    .train 403937,1
    #loop
    .goto Hillsbrad Foothills,58.2,19.6,40,0
    .goto Hillsbrad Foothills,57.5,36.4,50,0
    .goto Hillsbrad Foothills,51.1,46.4,40,0
    >>寻找|cRXP_FRIENDLY_Zixil|r。他在Tarren Mill和南岸之间巡逻。从他那里购买|T133709:0|t[爆破器材]|cRXP_WARN_for1黄金|r
    .collect 211487,1
    .target Zixil
step
    .train 403937,1
    >>使用|T133709:0|t[拆除炸药]摧毁|cRXP_PICK_Rubble|r。在地面上为|T134419:0|t[|cRXP_FIRENDLY_Rune of Fires Wake|r]洗劫|cRXP-PICK_Storage Locker|r
    .goto Hillsbrad Foothills,79.7,41.0
    .collect 211476,1
step
    .use 211476
    .itemcount 211476,1
    .train 403937 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_火焰觉醒之旅|r]| cRXP-WARN_列车|r|T135826:0|t[火湖]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 焚烧炉-22（雷德里奇山脉）
#title Incinerate

step
    #completewith next
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
step
    .goto Redridge Mountains,74.0,82.2,60,0
    .goto Redridge Mountains,77.6,86.6,50,0
    .goto Redridge Mountains,76.8,82.2
    >>杀死|cRXP_ENEMY_焚烧炉Gar'im|r|cRXP-WARN_（23级精英）|r。为|T134419:0|t[|cRXP_FRIENDLY_焚烧炉之旅|r]掠夺他
    .collect 211477,1
    .unitscan Incinerator Gar'im
    .train 416015,1
step
    .use 211477
    .itemcount 211477,1
    .train 416015 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_焚烧炉调整|r]| cRXP-WARN_列车|r|T135789:0|t[焚烧]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name Channeler大师-12（The Barrens）
#title Master Channeler

step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    .train 403932,1
    >>|cRXP_WARN_Go to the Altar of Thorns|r。铸造|T136126:0|t【生命敲击】直到你快死了。然后在你的宠物身上施放|T136168:0|t[健康漏斗]致死并获得|T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r]
    *|cRXP_WARN_You will be revived immediately after dying|r
    .goto The Barrens,58.2,26.7
    .cast 1454
    .cast 735
    .collect 208750,1
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_通道调整|r]|cRXP-WARN_训练|r|T136168:0|t[主通道器]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name Channeler大师-14（银松森林）
#title Master Channeler

step
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
step
    .train 403932,1
    >>在航路点位置进入洞穴。在|cRXP_ENEMY_虐待狂恶魔|r上使用|T136225:0|t[鲁莽诅咒]。杀死它并掠夺它，以获得|T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r]
    .goto Silverpine Forest,56.6,46.4
    .collect 208750,1
    .mob Sadistic Fiend
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_通道调整|r]|cRXP-WARN_训练|r|T136168:0|t[主通道器]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Shadow Bolt Volley-16（The Barrens）
#title Shadow Bolt Volley

step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    .train 403936,1
    >>在|cRXP_ENEMY_Supervisor Lugwizzle|r上使用|T136163:0|t[Drain Soul]（|cRXX_ENEMY_Overvisor Gliby|r也可以使用），直到获得|T134105:0|t[贪婪之魂]
    *|cRXP_WARN_You don't need the tag|r
    .goto The Barrens,56.6,8.2
    .collect 208743,1
    .mob Supervisor Lugwizzle
    .mob Overseer Glibby
step
    .train 403936,1
    >>点击|cRXP_PICK_Hungry Idol |r获得|T134419:0|t[|cRXP _FRIENDLY_Rune of Shadowbolts|r]
    .goto The Barrens,57.06,9.65
    .collect 208744,1
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r]|cRXP-WARN_to train|r|T136195:0|t[Shadow Bolt-Volley]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Shadow Bolt Volley-18（银松森林）
#title Shadow Bolt Volley

step
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
step
    .goto Silverpine Forest,60.38,74.37,40,0
    .goto Silverpine Forest,60.29,72.21,40,0
    .goto Silverpine Forest,59.38,70.54
    .train 403936,1
    >>杀死|cRXP_ENEMY_Ravenclaw Drudger|r和|cRXX_ENEMY_Ravenclaw Guardians|r|cRXP-WARN_in side the cave |r。为|T236295:0|t[被折磨的灵魂]掠夺他们
    .collect 210713,1
    .mob Ravenclaw Drudger
    .mob Ravenclaw Guardian
step
    .train 403936,1
    >>使用|T136126:0|t[Life Tap]一次，然后使用|T236295:0|t[TTorreted Soul]。杀死|cRXP_ENEMY_被折磨的灵魂|r。为|T134419:0|t[|cRXP-FRIENDLY_Rune of Shadowbolts|r]掠夺它
    .collect 208744,1
    .use 210713
    .cast 1455
    .mob Tortured Soul
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r]|cRXP-WARN_to train|r|T136195:0|t[Shadow Bolt-Volley]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 变形记-25（艾泽拉斯）
#title Metamorphosis

step
    #completewith WarlockRuneMetamorphosisA
    +|cRXP_WARN_建议一组完成所有这些步骤。有些步骤可以单独完成。|r
step
    #completewith next
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r << Horde
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r << Alliance
step
    #label WarlockRuneMetamorphosisA
    .train 403938,1
    >>偷走塔顶的|cRXP_PICK_Demonic圣物箱|r，得到|T134337:0|t[Des]
    *|cRXP_WARN_Be careful as it's guarded by an elite. Loot the chest whilst your Voidwalker tanks the mobs|r
    .collect 210765,1
    .goto Redridge Mountains,80.2,49.5
step << Horde
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜安·卡汉|r
    *|cRXP_WARN_Skip this step if you're traveling through The Barrens|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>接任务: |cRXP_WARN_索兰鲁克宝珠|r
    .target Doan Karhan
step
    #completewith next
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r << Alliance
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r << Horde
step
    .train 403938,1
    >>在塔顶掠夺|cRXP_PICK_Bough of Altek|r得到|T135153:0|t[阿尔泰克之枝]
    *|cRXP_WARN_Be careful. One way would be to die near it, jump up behind the bookcase, ress, (maybe fear the first caster that would attack you) and loot it.|r
    .collect 210763,1
    .goto Darkshore,56.3,26.5
step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜安·卡汉|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>接任务: |cRXP_WARN_索兰鲁克宝珠|r
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
step
    .train 403938,1
    >>杀死BFD突袭入口附近的|cRXP_ENEMY_Twilight助手|r。为|cRXP_Loot_Soran'ruk碎片|r掠夺它们
    *|cRXP_WARN_The |cRXP_WARN_Twilight Acolyte|r inside the raid before the 5th boss drop them as well|r
    .goto Ashenvale,14.5,14.3
    .complete 1740,1 --3/3 Soran'ruk Fragment
    .mob Twilight Acolyte
step
    .train 403938,1
    >>杀死|cRXP__ENEMY_Shadowfang黑暗灵魂|r在|cRXP_WARN_Shadowfang保持地牢内（紧跟在|cRX _ENEMY_Baron Silverlaine|r之后）|r。掠夺它们以获得|cRX _Loot_Large Soran'ruk碎片|r
    .complete 1740,2 --1/1 Large Soran'ruk Fragment
    .mob Shadowfang Darksoul
step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜安·卡汉|r
    .goto The Barrens,49.2,57.2
    .turnin 1740 >>交任务: |cRXP_FRIENDLY_索兰鲁克宝珠|r
    .accept 78680 >>Accept Rumors Abound
    .turnin 78680 >>Turn in Rumors Abound
    .accept 78681 >>Accept The Conjuring
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
step
    .train 403938,1
    .goto Ashenvale,83.07,70.56,40,0
    .goto Ashenvale,84.05,76.96,30,0
    .goto Ashenvale,81.29,78.14,30,0
    .goto Ashenvale,79.05,81.11,30,0
    .goto Ashenvale,84.2,76.4
    >>杀死该区域的|cRXP_ENEMY_Demos|r。为|cRXP_Loot_军团之血|r掠夺它们
    .complete 78681,1 --10/10 Blood of the Legion
    .mob Mannoroc Lasher
    .mob Felguard
    .mob Searing Infernal
    .mob Legion Hound
step
    #completewith WarlockRuneMetamorphosisB
    +|cRXP_WARN_如果你是一群术士中的一员，那么在任务中转身的第一个术士（拥有debuff的那个）必须在站在符文内时获得|cRXP_ENEMY_Searing Infernal|r的致命一击|r
step
    .train 403938,1
    >>与|cRXP_PICK_黑暗仪式石互动|r
    .goto Ashenvale,78.92,80.29
    .turnin 78681 >>Turn in The Conjuring
    .target Dark Ritual Stone
step
    .train 403938,1
    #label WarlockRuneMetamorphosisB
    >>杀死产卵的|cRXP_ENEMY_Demons|r.|cRXP_WARN_杀死|cRXX_ENEMY_Searing Infernal|r WHILE CHANNELING|r|T136163:0|t[Drain Soul]|cRXD_WARN_andwhile STANDING in the RUNE|r
    .goto Ashenvale,79.00,80.38
    .accept 78684 >>Accept Mysterious Traveler
    .mob Searing Infernal
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜安·卡汉|r, Rune of Metamorphosis
    .goto The Barrens,49.2,57.2
    .turnin 78684 >>Turn in Mysterious Traveler
    .turnin 78702 >>Turn in Raszel Ander
    .collect 210980,1
    .target Doan Karhan
step
    .use 210980
    .itemcount 210980,1
    .train 403938 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_变形之旅|r]|cRXP_WARN_训练|r|T237558:0|t[变形]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name 协同之魔法-40（艾泽拉斯）
#title Grimoire of Synergy

step
    #optional
    #completewith next
    .train 426445,1
    +|cRXP_WARN_您必须至少达到30级才能获得|r|T133738:0|t[Grimoire of Synergy]|cRXP_WARN_run|r
    .xp >30,1
step
    .train 403938 >>|cRXP_WARN_您必须先获得|r|T237558:0|t[变形]|cRXP_WARN_的符文，然后才能获得|r| T133738:0|t[Grimoire of Synergy]|cRXP_WARN_run|r
step
    #optional
    .train 426445,1
    +|cRXP_WARN_您必须至少达到30级才能获得|r|T133738:0|t[Grimoire of Synergy]|cRXP_WARN_run|r
    .xp >30,1
step
    .train 426445,1
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    .train 426445,1
    .goto The Barrens,49.271,57.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_您必须在|r|T237558:0|t[变形]|cRXP_WARN_to中才能看到|r|cRXP-FRIENDLY_Raszel Ander|r
    .accept 78994 >>Accept A Solid Foundation
    .target Raszel Ander
step << Alliance
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板维尔雷|r
    .home >>把你的炉石放在棘轮上
    .target Innkeeper Wiley
step << Horde
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
    .home >>将您的炉石设置为陶拉霍营地
    .target Innkeeper Byula
step << Alliance
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
    .fly Azshara >>Fly to Azshara
    .target Bragok
step << Horde
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Splintertree Post >>飞到Splinterree Post
    .target Omusa Thunderhorn
step
    .train 426445,1
    .train 126,3 -- skips step if they don't have eye of killrog trained
    .isOnQuest 78994
    .goto Ashenvale,88.82,41.52
    >>|cRXP_WARN_前往阿申瓦尔的箭头位置|r
    .cast 126 >>|cRXP_WARN_铸造|r|T136155:0|t[基尔罗格之眼]|cRXP_WARN_并带着它进入树杈阴影（所有60级以上精英的区域），寻找|cRX_PICK_Bough of Shadows|r树。在整个Bough Shadow中可能有多个产卵器，理想情况下，你想找到一个附近没有多少精英的产卵器，这样你就可以掠夺它|r
step
    .train 426445,1
    .isOnQuest 78994
    #completewith next
    .goto Ashenvale,88.82,41.52
    .cast 440505 >>|cRXP_WARN_使用|r|T236874:0|t[Invisibility Potion]|cRXP_WARN_并在整个树枝阴影中查找|cRX_PICK_Bough of Shadows|r树之一。该地区有许多60级以上的巡逻精英|r
    .use 217693
step
    .train 426445,1
    .isOnQuest 78994
    .goto Ashenvale,90.9,38.6,20,0
    .goto Ashenvale,91,37,0
    >>|cRXP_WARN_在掠夺|cRXP_PICK_Bough of Shadows|r之前，取下所有装备并施放|r|T136121:0|t[阴影病房]|cRXP-WARN_。你即将收到一个非常高的伤害减持，它会造成基于百分比的伤害。掠夺后准备好使用炉石|r
    >>在整个Bough Shadow中拾取|cRXP_PICK_Bough of Shadows|r中的任何一个
    .complete 78994,1
step
    #completewith next
    .train 426445,1
    .isOnQuest 78994
    .hs >>赫斯到棘轮 << Alliance
    .hs >>Hearth前往陶拉霍营地 << Horde
    .zoneskip The Barrens
step
    .train 426445,1
    .goto The Barrens,49.271,57.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_您必须在|r|T237558:0|t[变形]|cRXP_WARN_to中才能看到|r|cRXP-FRIENDLY_Raszel Ander|r
    .turnin 78994 >>Turnin坚实的基础
    .accept 78914 >>Accept Soul Vessel
    .target Raszel Ander
step
    .train 426445,1
    >>|cRXP_WARN_获取以下材料并让工程师为您制作一个|r|T133254:0|t[灵魂容器]|cRXP_WARN_form。请注意，|r|T134133:0|t[黑色玻璃体]|cRXP_WARN_and|r|T134074:0|t[Shadowgem]|cRXP_WARN_can可从拍卖行购买，|r| T134337:0|t[Demonic Figury]|cRX P_WARN_from|r|cRX _|r
    .collect 9262,1,78914,1,1 -- Black Vitriol
    .collect 1210,4,78914,1,1 -- Shadowgem
    .collect 16583,1,78914,1,1 -- Demonic Figurine
    >>|cRXP_WARN_或者，您也可以从拍卖行购买|r|T133254:0|t[灵魂容器]|cRXP_WARN_straight|r
    .collect 211427,1,78914,1
step
    #completewith next
    .train 426445,1
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_您必须在|r|T237558:0|t[变形]|cRXP_WARN_to中才能看到|r|cRXP-FRIENDLY_Raszel Ander|r
    .turnin 78914 >>Turn in Soul Vessel
    .accept 79298 >>Accept Tempting Fate
    .target Raszel Ander
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    .gossip 215850,1 >>Talk to |cRXP_FRIENDLY_Raszel Ander|r to begin the ritaul
    .timer 14,Tempting Fate RP
    .skipgossip
step
    .train 426445,1
    .goto Desolace,51.195,82.465
    >>点击Des'Altek|r的|cRXP_PICK_Reconstructed Staff，召唤|cRXP_ENEMY_Des'Altek |r
    >>|cRXP_WARN_使用|r|T136121:0|t[阴影病房]|cRXP_WARN_active确保你满血，因为你在通灵和战斗中都会受到伤害|r
    >>杀死|cRXP_ENEMY_Des'Altek|r
    .complete 79298,1
    .mob Des'Altek
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_您必须在|r|T237558:0|t[变形]|cRXP_WARN_to中才能看到|r|cRXP-FRIENDLY_Raszel Ander|r
    .turnin 79298 >>Turn in Tempting Fate
    .target Raszel Ander
step
    .train 426445 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Synergy|r]|cRXP_WARN_训练|r|T133738:0|t[Grimoire of Synergy]
    .use 213090
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name Master Channeler-10（莫丹湖）
#title Master Channeler

step << Warlock
    .line Loch Modan,22.87,70.89,24.69,68.20,28.02,65.41,29.47,59.92,31.56,56.66,32.36,50.09,34.94,47.10,32.36,50.09,31.36,47.60,31.54,44.72,32.29,42.34,32.25,41.14,31.08,38.57,30.04,31.45,27.96,25.37,26.73,23.07,26.04,19.16,25.95,15.13,25.53,11.66
    .goto Loch Modan,22.87,70.89,50,0
    .goto Loch Modan,24.69,68.20,50,0
    .goto Loch Modan,28.02,65.41,50,0
    .goto Loch Modan,29.47,59.92,50,0
    .goto Loch Modan,31.56,56.66,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,34.94,47.10,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,31.36,47.60,50,0
    .goto Loch Modan,31.54,44.72,50,0
    .goto Loch Modan,32.29,42.34,50,0
    .goto Loch Modan,32.25,41.14,50,0
    .goto Loch Modan,31.08,38.57,50,0
    .goto Loch Modan,30.04,31.45,50,0
    .goto Loch Modan,27.96,25.37,50,0
    .goto Loch Modan,26.73,23.07,50,0
    .goto Loch Modan,26.04,19.16,50,0
    .goto Loch Modan,25.95,15.13,50,0
    .goto Loch Modan,25.53,11.66
    >>|cRXP_WARN_寻找|cRXP_FRIENDLY_Greishan Ironshoter|r在穿过莫丹湖的路上巡逻。他的巡逻路线在你的地图上标出了|r
    >>|cRXP_BUY_从他那里买一个|r|T237359:0|t[恶毒的馅饼]|cRXP_Buy_|r
    .collect 208833,1
    .unitscan Greishan Ironstove
    .train 403932,1
step << Warlock
    .use 208833 >>|cRXP_WARN_使用|r|T237359:0|t[恶毒的馅饼]|cRXP_WARN_吃它。一旦|r|T132108:0|t[地狱般的愤怒]|cRXP_WARN_debuff落下你，你将收到|r|T134419:0|t[|cRXP-FRIENDLY_Rune of Channeling|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_通道调整|r]|cRXP-WARN_训练|r|T136168:0|t[主通道器]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name Channeler大师-15（暗岸）
#title Master Channeler

step << Warlock
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>杀死|cRXP_ENEMY_Dark Strand Fanatics|r。为|T134419:0|t[|cRXP-FRIENDLY_Rune of Channeling|r]掠夺它们
    .collect 208750,1 -- Rune of Channeling (1)
    .mob Dark Strand Fanatic
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_通道调整|r]|cRXP-WARN_训练|r|T136168:0|t[主通道器]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 灵魂虹吸-10（Dun Morugh）
#title Soul Siphon

step << Warlock
    #completewith next
    >>|cRXP_WARN_Cast|r|T136163:0|t[吸取灵魂]|cRXP_WARN_在任何动物上接受|r|T134095:0|t[|cRXD_LOOT_纯净灵魂碎片|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,77.894,62.236
    >>在楼下的大楼内杀死|cRXP_ENEMY_贝尔德上尉|r。掠夺他一块|T134085:0|t[|cRXP_Loot_Tainted Soul Shard|r]
    >>|cRXP_WARN_确保他死了，而你身上也有|r|T136163:0|t[Drain Soul]|cRXP_WARN_on|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob Captain Beld
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_Cast|r|T136163:0|t[吸取灵魂]|cRXP_WARN_在任何动物上接受|r|T134095:0|t[|cRXD_LOOT_纯净灵魂碎片|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,47.351,53.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaklik Voidtwist|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Soul Siphon|r]
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Gaklik Voidtwist
step << Warlock
    .train 403920 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_灵魂虹吸管之路|r]|cRXP-WARN_训练|r|T136169:0|t[灵魂虹吸管]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 灵魂虹吸-10（埃尔温森林）
#title Soul Siphon

step << Warlock
    #completewith next
    >>|cRXP_WARN_Cast|r|T136163:0|t[吸取灵魂]|cRXP_WARN_在任何动物上接受|r|T134095:0|t[|cRXD_LOOT_纯净灵魂碎片|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    >>杀死|cRXP_ENEMY_Hogger|r。掠夺他一个|T134085:0|t[|cRXX_Loot_Tainted Soul Shard|r]
    >>|cRXP_WARN_确保他死了，而你身上也有|r|T136163:0|t[Drain Soul]|cRXP_WARN_on|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob Hogger
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_Cast|r|T136163:0|t[吸取灵魂]|cRXP_WARN_在任何动物上接受|r|T134095:0|t[|cRXD_LOOT_纯净灵魂碎片|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,44.093,66.315
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Damien Kane|r in the basement of the inn to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Soul Siphon|r]
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Damien Kane
step << Warlock
    .train 403920 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_灵魂虹吸管之路|r]|cRXP-WARN_训练|r|T136169:0|t[灵魂虹吸管]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 恶魔战术-1（埃尔温森林）
#title Demonic Tactics

step << Warlock
    .goto Elwynn Forest,56.743,57.650
    >>为|T133625:0|t[|cRXP_Loot_Acolyte的背包|r]掠夺|cRXP_FRIENDLY_Dead Acolyte|r
    .collect 205364,1 -- Acolyte's Knapsack (1)
    .skipgossip
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    .use 205364 >>|cRXP_WARN_使用|r|T133625:0|t[|cRXP_LOOT_Acolyte的背包|r]|cRXP_WARN_接收|r|T133447:0|t[| cRXP_OOT_Unidentified Artifact|r]
    .collect 205181,1 -- Unidentified Artifact (1)
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,44.390,66.242
    .gossipoption 109291 >>对话: |cRXP_FRIENDLY_玛克西米利安·克洛文|r, Powerless Artifact
    .collect 205182,1 -- Powerless Artifact (1)
    .skipgossip
    .target Maximillian Crowe
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,56.743,57.650
    .cast 408755 >>|cRXP_WARN_使用|r|T133447:0|t[|cRXP_LOOT_Powerless Artifact|r]|cRXP_WARN_at |cRXP _FRIENDLY_Dead Acolyte的|r位置接收|r|T136008:0|t[Blood Offering]|cRXP_WARN_debuff|r
    .use 205182
    .aura 408755
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    #completewith next
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 416009,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，然后下楼
    .train 416009,1
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_黑暗缚灵者加科因|r, Rune of Tactics
    .collect 205215,1 -- Rune of Tactics (1)
    .skipgossip
    .target Gakin the Darkbinder
    .train 416009,1
step << Warlock
    .train 416009 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_战术调整|r]|cRXP_WARN_训练|r|T136150:0|t[恶魔战术]
    .use 205215
    .itemcount 205215,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 恶魔恩典-10（埃尔温森林）
#title Demonic Grace

step << Warlock
    .goto Elwynn Forest,61.6,53.8
    >>杀死|cRXP_ENEMY_Kobold Geomancers|r。掠夺他们一个|T133733:0|t[|cRXP-Loot_Ominous Tome|r]
    .collect 204905,1 -- Ominous Tome (1)
    .mob Kobold Geomancer
    .train 425477,1
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>杀死|cRXP_ENEMY_Riverpaw符文|r和|cRXD_ENEMY_River paw跑者|r。掠夺他们的|cRXT_Loot_Gnol Blood|r
    .collect 204906,1 -- Gnoll Blood (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 425477,1
step << Warlock
    .goto Elwynn Forest,35.6,61.0,60,0
    .goto Elwynn Forest,57.8,59.4
    >>杀死|cRXP_ENEMY_Mangy Wolves|r，|cRXD_ENEMY_Gray Forest Wolves| r和|cRXP_ENEMY_Prowlers | r。掠夺它们以获得|cRXP_Loot_Folf Jawbone|r
    .collect 204907,1 -- Wolf Jawbone (1)
    .mob Mangy Wolf
    .mob Gray Forest Wolf
    .mob Prowler
    .train 425477,1
step << Warlock
    #completewith next
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>前往屠宰场，然后下楼
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_前往屠宰羔羊的底部|r
    .cast 418065 >>|cRXP_WARN_使用|r|T133733:0|t[|cRXP_LOOT_Ominous Tome|r]|cRXP_WARN_to调用|r|cRXP-ENEMY_Soboz|r
    .use 204905
    .train 425477,1
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 204905 >>杀死|cRXP_ENEMY_Soboz|r。掠夺他以获得|T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]|cRXP_WARN_to train|r|T236293:0|t[恶魔恩典]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 恶魔恩典-10（邓·莫洛）
#title Demonic Grace

step << Warlock
    .goto Dun Morogh,22.8,50.6
    >>杀死|cRXP_ENEMY_Frostmane Shadowcaster|r。掠夺它们一个|T133733:0|t[|cRXP_Loot_Ominous Tome|r]
    .collect 208139,1 -- Ominous Tome (1)
    .mob Frostmane Shadowcaster
    .train 425477,1
step << Warlock
#loop
	.line Dun Morogh,42.57,54.80,41.89,54.51,42.13,52.68,42.46,51.96,41.91,51.43,42.46,51.96,42.13,52.68,42.57,54.80
	.goto Dun Morogh,42.57,54.80,10,0
	.goto Dun Morogh,41.89,54.51,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,41.91,51.43,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.57,54.80,10,0
    >>杀死|cRXP_ENEMY_Young Wendigos|r和|cRXD_ENEMY_Wendigos |r。掠夺他们的|cRXP_Loot_Wendigo血液|r
    .collect 208140,1 -- Wendigo Blood (1)
    .mob Young Wendigo
    .mob Wendigo
    .train 425477,1
step << Warlock
    .goto Dun Morogh,45.6,43.2,60,0
    .goto Dun Morogh,34.6,41.8
    >>杀死Dun Morogh中的任何|cRXP_ENEMY_Wolf|r。掠夺他们的|cRXP_OOT_Wolf Jawbone|r
    .collect 204907,1 -- Wolf Jawbone
    .mob Starving Winter Wolf
    .mob Winter Wolf
    .mob Snow Tracker Wolf
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .cast 418065 >>|cRXP_WARN_使用|r|T133733:0|t[|cRXP_LOOT_Ominous Tome|r]|cRXP_WARN_to调用|r|cRXP-ENEMY_Soboz|r
    .use 208139
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .use 204905 >>杀死|cRXP_ENEMY_Soboz|r。掠夺他以获得|T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]|cRXP_WARN_to train|r|T236293:0|t[恶魔恩典]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 影箭Volley-16（暗岸）
#title Shadow Bolt Volley

step << Warlock
    .goto Darkshore,56.8,27.6,60,0
    .goto Darkshore,57.6,26.0
    >>杀死|cRXP_ENEMY_Delmanis the Hated |r。掠夺他以获得|T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r]
    .collect 208744,1 -- Rune of Shadowbolts (1)
    .unitscan Delmanis the Hated
    .train 403936,1
step << Warlock
    .train 403936 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowbolts|r]|cRXP-WARN_to train|r|T136195:0|t[Shadow Bolt-Volley]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 混沌螺栓-8（Dun Morugh）
#title Chaos Bolt

step << Warlock
    .goto Dun Morogh,69.365,58.302
    >>杀死|cRXP_ENEMY_Frozen Trogg|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Chaos Bolt|r]掠夺它
    >>|cRXP_WARN_注意：为了打破僵局，你必须连续快速地用多个火法攻击它|r
    >>|cRXP_WARN_施法|r|T135817:0|t[献祭]|cRXP_WARN_并使用你的Imp攻击它。你将需要另一个术士或法师的帮助来打破它|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Trogg
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Chaos Bolt|r]|cRXP-WARN_to train|r|T236291:0|t[Chaos Bolt]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 混沌之箭-8（埃尔温森林）
#title Chaos Bolt

step << Warlock
    .goto Elwynn Forest,77.010,51.897
    >>杀死|cRXP_ENEMY_Frozen Murloc|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Chaos Bolt|r]掠夺它
    >>|cRXP_WARN_注意：为了打破僵局，你必须连续快速地用多个火法攻击它|r
    >>|cRXP_WARN_施法|r|T135817:0|t[献祭]|cRXP_WARN_并使用你的Imp攻击它。你将需要另一个术士或法师的帮助来打破它|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Murloc
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Chaos Bolt|r]|cRXP-WARN_to train|r|T236291:0|t[Chaos Bolt]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name 调用-35（阿拉蒂高地）
#title Invocation

-- Invocation

step
    .train 426443,1
    #completewith SyndicateConjuror
    +|cRXP_WARN_建议您找到额外的党员来获得|r|T134419:0|t[|cRXP_LOOT_召唤符文|r]|cRXP-WARN_a，因为它需要在Stromgarde Keep中杀死精英|r
step
    .train 426443,1
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step
    .train 426443,1
    #completewith next
    .subzone 324 >>前往Stromgarde Keep
step
    #label SyndicateConjuror
    .train 426443,1
    #loop
    .goto Arathi Highlands,26.04,62.80,40,0
    .goto Arathi Highlands,29.47,64.14,40,0
    .goto Arathi Highlands,29.06,60.96,40,0
    >>杀死|cRXP_ENEMY_Syndicate招魂师|r。掠夺他们的|T348282:0|t[|cRXP-Loot_CONCUROR的吊坠|r]
    >>当你在一个|cRXP_ENEMY_虚空行者小兵上引导|T136163:0|t[吸取灵魂]以获得|T132885:0|t[|cRXP-LOOT_虚空之魂|r]时，杀死它
    .collect 213573,10
    .collect 213572,1
    .mob Syndicate Conjuror
    .mob Voidwalker Minion
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.292,62.283,10 >>|cRXP_WARN_进入Stromgade Keep较低楼层的大房子，然后前往2楼|r
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    .cast 434994 >>|cRXP_WARN_使用|r|T348282:0|t[|cRXP_LOOT_招魂符的吊坠|r]|cRXP_WARN_up漂浮物旁边的楼梯|r|cRXP _PICK_虚空棱镜|r|cRXP_WARN_to召唤一名36级精英|cRXP_ENEMY_虚空探索者|r
    .use 213573
step
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    >>杀死|cRXP_ENEMY_Void Seeker |r。掠夺它以获得|T134419:0|t[|cRXP-Loot_调用符文|r]
    .collect 213098,1
    .mob Void Seeker
step
    .train 426443 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_LOOT_调用符|r]|cRXP-WARN_训练|r|T136133:0|t[调用]
    .use 213098
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#name 邪恶之舞-35（德索拉斯）
#title Dance of the Wicked

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    .train 416017,1
    .goto Desolace,74.5,13.4
    >>单击地面上的|cRXP_ENEMY_Reckless Warlock|r。掠夺他|T236297:0|t[硫磺雕刻]
    >>|cRXP_WARN_这是一个罕见的敌人，它可能不存在|r
    .collect 213583,1
    .mob Reckless Warlock
    .unitscan Reckless Warlock
step
    .train 416017,1
    >>|cRXP_WARN_Cast|r|T135818:0|t[Hellfire]|cRXP_WARN_to使自己的生命值低于70%。之后|r|T236297:0|t[硫磺雕刻]|cRXP_WARN_将变换为|r|T134419:0|t[|cRXP-FRIENDLY_邪恶之路|r]
    .collect 213102,1 --Rune of Wickedness
step
    .train 416017 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Wickness |r]|cRXP_WARN_学习|r|T236295:0|t[邪恶之舞]
    .use 416017
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#name 邪恶之舞-35（荆棘）
#title Dance of the Wicked

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Stranglethorn Vale>>Travel to Stranglethorn
step
    .train 416017,1
    .goto Stranglethorn Vale,31.2,47.4
    >>单击地面上的|cRXP_ENEMY_Reckless Warlock|r。掠夺他|T236297:0|t[硫磺雕刻]
    >>|cRXP_WARN_这是一个罕见的敌人，它可能不存在|r
    .collect 213583,1
    .unitscan Reckless Warlock
    .mob Reckless Warlock
step
    .train 416017,1
    >>|cRXP_WARN_Cast|r|T135818:0|t[Hellfire]|cRXP_WARN_to使自己的生命值低于70%。之后|r|T236297:0|t[硫磺雕刻]|cRXP_WARN_将变换为|r|T134419:0|t[|cRXP-FRIENDLY_邪恶之路|r]
    .collect 213102,1 --Rune of Wickedness
step
    .train 416017 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Wickness |r]|cRXP_WARN_学习|r|T236295:0|t[邪恶之舞]
    .use 416017
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#name 阴影火焰-40（Desolace）
#title Shadowflame


-- Shadowflame

step
    .train 426467,1
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    .train 426467,1
    .train 19028,3 --Soul Link
    .goto Desolace,81.2,79.7
    .cast 434869 >>|cRXP_WARN_点击祭坛召唤|r|cRXP_ENEMY_Seductress Ceeyna|r|cRXP_WARN_but请确保使用|r|T136121:0|t[阴影病房]|cRXP-WARN_，|r|T136190:0|t[牺牲]|cRXP-WARN_and|r|T236160:0|t[Soul Link]|r|C RXP_WARN_beforehand|r|CFFFF0000，因为你在通道中会受到很多伤害，无法治愈|r
step
    .train 426467,1
    .train 19028,1 --Soul Link
    .goto Desolace,81.2,79.7
    .cast 434869 >>|cRXP_WARN_点击祭坛召唤|r|cRXP_ENEMY_Seductress Ceeyna|r|cRXP_WARN_but确保使用|r|T136121:0|t[阴影病房]|cRXP-WARN_and|r|T136190:0|t[牺牲]|cRX XP_WARN_beforehand|r |cFFFF0000，因为你在通道中会受到很多伤害，而且无法治愈|r
step
    .train 426467,1
    .goto Desolace,81.2,79.7
    >>杀死|cRXP_ENEMY_Seductress Ceeyna |r。掠夺她|T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowflames|r]
    .collect 213101,1
    .mob Seductress Ceeyna
step
    .train 426467 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Shadowflames|r]|cRXP_WARN_to learn|r|T236302:0|t[Shadowflame]
    .use 213101
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Immolation Aura
#name 自焚光环-40（灰烬谷）

step
    #completewith next
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
step
    .goto Ashenvale,93.5,38.0,100 >>前往地图上标记的灰烬之夜侵入区
step
    >>杀死入口外的恶魔，直到你掠夺下面列出的所有三件物品
    .collect 221972,1 >>|T132839:0|t|cRXP_LOOT_Dreampyre Fire|r被|cRXP_ENEMY_Dreampyr Imps|r投掷
    .collect 221971,1 >>|T237396:0|t|cRXP_LOOT_梦想之角|r被|cRXT_ENEMY_Emberspark梦想之角掉落|r
    .collect 221973,1 >>|T133724:0|t|cRXP_LOOT_Dreamhunter Fang|r被|cRXP_ENEMY_Dreampyre Hounds|r丢弃
    .mob Dreampyre Imp
    .mob Emberspark Dreamsworn
    .mob Dreamhunter Hound
step
    .cast 447537 >>右键单击包中的任何项目以组合它们，并收到|T134419:0|t[|cRXP_FRIENDLY_Rune of Immolation Aura|r]
    .collect 220618,1 --Rune of Immolation Aura
    .use 221972
step
    .train 427726 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Immolation Aura|r]|cRXP_WARN_to learn|r|T135802:0|t[Immolation Aura]
    .use 220618
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Summon Felguard
#name 召唤Felguard-10（艾泽拉斯）

step
    #completewith next
    +|cRXP_WARN_为了获得这个符文，你需要找到一个|r|T236294:0|t|cRXP_FRIENDLY_Explorer Imp|r|cRXP-WARN_I如果你还没有一个施放|r|T136163:0|t| cRXP_FRANDLY_[吸取灵魂]|r|cRXP_WARN_on mobs。在咒语的每一次勾选中，您都有机会获得|r|T133257:0|t|cRXP_LOOT_Explorer's Soul|r|cRXP-WARN_使用它来学习如何召唤您的|r|T236294:0|t| cRXP_RIENDLY_Explorer Imp|r
step
    +转到下面的一个区域。符文可以在其中任何一个区域获得，但更高级别的区域将从你的探险家精灵那里为你提供更好的奖励
    >>The Barrens
    >>Westfall
    >>Darkshore
    >>Silverpine Forest
    >>Ashenvale
    >>Redridge Mountains
    >>Swamp of Sorrows
    >>Desolace
    >>Feralas
    >>Azshara
    >>Blasted Lands
    .zoneskip The Barrens
    .zoneskip Westfall
    .zoneskip Darkshore
    .zoneskip Silverpine Forest
    .zoneskip Ashenvale
    .zoneskip Redridge Mountains
    .zoneskip Swamp of Sorrows
    .zoneskip Desolace
    .zoneskip Feralas
    .zoneskip Azshara
    .zoneskip Blasted Lands
step
    >>在地图上固定的位置查找|cRXP_FRONDLY_Fel Portals|r。一旦你找到一个，就召唤你的|T236294:0|t|cRXP_FRIENDLY_Explorer Imp|r，站在入口旁边完成对话。Imp将开始探索它，您将获得|T136164:0|t|cRXP_FRIENDLY_Imp的任务|r增益。大约10-20分钟后，你的Imp会回到你身边，或者你可以重新使用它，并再次与它交谈，以提交一个可重复的任务奖励|T133639:0|t|cRXP_LOOT_Otherworldly Treasury|r。打开它后，你将收到战利品，并有机会收到|T134419:0|t[|cRXP-FRIENDLY_Rune of the Felguard|r]。继续寻找裂缝和掠夺宝藏，直到找到为止
    .goto Westfall,28.6,44.0,0
    .goto Westfall,29.0,47.8,0
    .goto Westfall,29.0,58.2,0
    .goto Westfall,29.6,69.4,0
    .goto Westfall,29.8,34.4,0
    .goto Westfall,31.4,39.2,0
    .goto Westfall,31.4,65.6,0
    .goto Westfall,32.2,76.0,0
    .goto Westfall,32.2,80.2,0
    .goto Westfall,32.4,29.2,0
    .goto Westfall,34.0,82.2,0
    .goto Westfall,37.4,85.0,0
    .goto Westfall,41.4,15.4,0
    .goto Westfall,44.8,46.6,0
    .goto Westfall,47.0,39.4,0
    .goto Westfall,47.4,79.2,0
    .goto Westfall,47.6,22.0,0
    .goto Westfall,47.6,67.2,0
    .goto Westfall,47.8,13.8,0
    .goto Westfall,51.0,32.2,0
    .goto Westfall,51.6,71.4,0
    .goto Westfall,57.0,10.6,0
    .goto Westfall,62.6,26.0,0
    .goto The Barrens,39.6,13.8,0
    .goto The Barrens,40.0,18.4,0
    .goto The Barrens,40.8,14.4,0
    .goto The Barrens,42.0,14.2,0
    .goto The Barrens,44.4,50.0,0
    .goto The Barrens,45.8,51.2,0
    .goto The Barrens,46.4,52.6,0
    .goto The Barrens,47.6,49.4,0
    .goto The Barrens,51.6,53.4,0
    .goto The Barrens,53.0,50.8,0
    .goto The Barrens,54.2,52.6,0
    .goto The Barrens,54.4,48.6,0
    .goto The Barrens,55.6,25.6,0
    .goto The Barrens,55.8,51.0,0
    .goto The Barrens,56.0,24.8,0
    .goto The Barrens,57.6,23.6,0
    .goto The Barrens,58.2,49.6,0
    .goto The Barrens,58.8,25.8,0
    .goto The Barrens,59.0,29.2,0
    .goto The Barrens,59.0,32.0,0
    .goto The Barrens,59.2,36.4,0
    .goto The Barrens,59.8,27.6,0
    .goto The Barrens,60.2,36.0,0
    .goto The Barrens,60.8,29.0,0
    .goto The Barrens,61.8,32.0,0
    .goto Silverpine Forest,38.8,18.4,0
    .goto Silverpine Forest,38.8,23.4,0
    .goto Silverpine Forest,44.6,25.2,0
    .goto Silverpine Forest,45.4,31.8,0
    .goto Silverpine Forest,49.8,13.4,0
    .goto Silverpine Forest,50.2,56.8,0
    .goto Silverpine Forest,50.2,65.2,0
    .goto Silverpine Forest,55.6,24.6,0
    .goto Darkshore,37.6,63.8,0
    .goto Darkshore,43.2,27.0,0
    .goto Darkshore,44.0,82.0,0
    .goto Darkshore,45.0,26.2,0
    .goto Darkshore,46.2,46.8,0
    .goto Darkshore,47.4,28.8,0
    .goto Darkshore,49.8,36.8,0
    .goto Darkshore,56.4,24.8,0
    .goto Darkshore,59.8,21.8,0
    .goto Ashenvale,24.4,63.4,0
    .goto Ashenvale,27.6,62.6,0
    .goto Ashenvale,30.2,30.2,0
    .goto Ashenvale,33.6,28.4,0
    .goto Ashenvale,44.6,64.2,0
    .goto Ashenvale,51.2,47.0,0
    .goto Ashenvale,52.6,62.8,0
    .goto Ashenvale,55.6,40.2,0
    .goto Ashenvale,67.0,46.0,0
    .goto Ashenvale,67.2,51.0,0
    .goto Ashenvale,77.4,73.0,0
    .goto Ashenvale,80.4,70.6,0
    .goto Ashenvale,84.8,70.2,0
    .goto Redridge Mountains,29.8,30.4,0
    .goto Redridge Mountains,31.2,21.8,0
    .goto Redridge Mountains,42.8,16.8,0
    .goto Redridge Mountains,71.4,57.8,0
    .goto Redridge Mountains,71.4,83.6,0
    .goto Redridge Mountains,72.0,57.8,0
    .goto Redridge Mountains,79.0,33.4,0
    .goto Redridge Mountains,81.6,60.4,0
    .goto Redridge Mountains,83.2,44.4,0
    .goto Redridge Mountains,86.2,52.6,0
    .goto The Barrens,42.8,81.8,0
    .goto The Barrens,43.2,80.2,0
    .goto The Barrens,46.2,85.6,0
    .goto The Barrens,47.8,83.6,0
    .goto The Barrens,48.4,81.2,0
    .goto The Barrens,50.2,80.6,0
    .goto Swamp of Sorrows,10.4,59.4,0
    .goto Swamp of Sorrows,12.4,29.8,0
    .goto Swamp of Sorrows,16.4,63.0,0
    .goto Swamp of Sorrows,22.8,64.0,0
    .goto Swamp of Sorrows,27.0,48.8,0
    .goto Swamp of Sorrows,34.2,28.8,0
    .goto Swamp of Sorrows,36.2,50.6,0
    .goto Swamp of Sorrows,49.0,38.8,0
    .goto Swamp of Sorrows,56.6,65.0,0
    .goto Swamp of Sorrows,60.2,27.6,0
    .goto Swamp of Sorrows,69.4,78.4,0
    .goto Swamp of Sorrows,72.4,10.4,0
    .goto Swamp of Sorrows,77.4,89.6,0
    .goto Swamp of Sorrows,81.2,34.0,0
    .goto Swamp of Sorrows,83.2,66.6,0
    .goto Swamp of Sorrows,87.6,26.0,0
    .goto Swamp of Sorrows,90.8,65.2,0
    .goto Swamp of Sorrows,91.4,57.0,0
    .goto Desolace,47.4,22.2,0
    .goto Desolace,48.8,82.2,0
    .goto Desolace,49.4,75.0,0
    .goto Desolace,52.0,85.4,0
    .goto Desolace,52.2,72.4,0
    .goto Desolace,52.8,81.0,0
    .goto Desolace,54.4,19.2,0
    .goto Desolace,56.0,74.8,0
    .goto Desolace,71.6,18.4,0
    .goto Desolace,72.6,21.8,0
    .goto Desolace,73.4,24.6,0
    .goto Desolace,74.4,10.6,0
    .goto Desolace,76.4,19.2,0
    .goto Desolace,80.4,17.0,0
    .goto Blasted Lands,35.0,55.0,0
    .goto Blasted Lands,41.2,33.4,0
    .goto Blasted Lands,43.6,25.0,0
    .goto Blasted Lands,46.8,39.2,0
    .goto Blasted Lands,48.8,48.6,0
    .goto Blasted Lands,56.0,36.6,0
    .goto Blasted Lands,60.2,46.0,0
    .goto Blasted Lands,62.0,39.2,0
    .goto Feralas,68.2,58.8,0
    .goto Feralas,70.4,62.6,0
    .goto Feralas,72.4,63.8,0
    .goto Feralas,73.2,54.4,0
    .goto Feralas,74.2,50.4,0
    .goto Feralas,74.2,60.0,0
    .goto Feralas,76.2,56.4,0
    .goto Feralas,76.6,63.4,0
    .goto Azshara,16.4,51.0,0
    .goto Azshara,17.6,58.4,0
    .goto Azshara,21.2,54.0,0
    .goto Azshara,24.8,47.8,0
    .goto Azshara,25.0,81.4,0
    .goto Azshara,30.2,79.8,0
    .goto Azshara,33.0,81.4,0
    
    .collect 221499,1 --Rune of the felguard
    .use 223148 --Otherworldy Treasure
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step
    .train 427733 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r]|cRXP_WARN_学习|r|T136216:0|t[召唤Felguard]
    .use 221499

]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group RestedXP Rune和书籍指南
#subgroup Helmet
#title Pandemic
#name Pandemic - 40 (Feralas)

step
    #completewith next
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
step
    .goto Feralas,69.6,43.3 
    >>前往Mojache营地以西的标记位置。寻找一个躺在树旁的|cRXP_ENEMY_Dead Diseased Grimtotam萨满。在尸体旁边，你会发现一个|cRXP_PICK_Grimtotam胸脯|r，掠夺它|T133291:0|t|cRXP _loot_Grimtotame项链|r
    .collect 221974,1 --Grimtotem Necklace 1/1
    .unitscan Dead Diseased Grimtotem Shaman
step
    .goto 1444/1,695.400,-4920.300,20 >>沿着通往山上的小路向Woodpaw Den走去
step
    .goto 1444/1,831.200,-4851.000,20 >>沿着火把标记的小路走
step
    .goto 1444/1,826.500,-4725.100
    >>坚守营地的右边缘，前往|cRXP_ENEMY_Dead Diseased Woodpaw Mystic |r。在他旁边，你会发现一个|cRX_PICK_Woodpaw Bag|r，将其掠夺成一个|T135139:0|t|cRXD_loot_Broken Woodpaw Staff|r
    .collect 221975,1 --Broken Woodpaw Staff
    .unitscan Dead Diseased Woodpaw Mystic
step
    >>使用|T135139:0|t|cRXP_OOT_Broken Woodpaw Staff|r将其与|T133291:0|t| cRXP_LOOT_Grimtotem Necklace|r组合，并创建一个|T135153:0|t|| cRXP_LOCOT_Diseased Nature Staff|r
    .collect 221976,1 --Diseased Nature Staff
    .use 221975
step
    .goto Feralas,72.6,50.8
    >>寻找一个正在睡觉的|cRXP_ENEMY_Diseased Forest Walker|r，用你的|T135153:0|t|cRXP-LOOT_ Diseased Nature Staff|r唤醒他。击败他并掠夺|T134419:0|t[|cRXP_FRIENDLY_Rune of Pandemic|r]
    .collect 220617,1 --Rune of Pandemic
    .use 221976
step
    .train 427712 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Pandemic|r]|cRXP_WARN_学习|r|T136227:0|t[流行病]
    .use 220617

]])
