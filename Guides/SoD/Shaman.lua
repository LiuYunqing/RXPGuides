RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 熔喷-8（Mulgore）
#title Molten Blast
#next Lava Lash - 10 (Mulgore)


step
    +|cRXP_WARN_你必须至少达到8级才能单独获得|r|T133816:0|t[雕刻手套-熔爆]|cRXP_WARN_in Mulgore|r
    >>|cRXP_WARN_您必须达到3级以上才能装备|r|T134918:0|t|cRXP_LOOT_[硫磺图标]|r
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-熔爆]之前，您需要升级更多
    .train 425344,1
    .xp >3,1
step
    +|cRXP_WARN_你必须至少达到8级才能单独获得|r|T133816:0|t[雕刻手套-熔爆]|cRXP_WARN_in Mulgore|r
    .train 425344,1
    .xp <3,1
    .xp >8,1
step
    #loop
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>杀死|cRXP_ENEMY_Bael-dun挖掘者|r和|cRXX_ENEMY_Bael-dun评估者|r。掠夺它们以获取|cRXD_Loot_Artifact存储密钥|r
    >>|cRXP_WARN_小心|cRXP_ENEMY_Bael'dun评估师|r cast|r|T135929:0|t[较少治疗]|cRXP-WARN_|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
--XX WIP to here
step
    .goto Mulgore,31.56,49.54
    >>打开|cRXP_PICK_Artifact Storage |r箱子。为|T134918:0|t|cRXP_Loot_[硫磺图标]|r抢劫
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step
    .equip 18,206388 >>|cRXP_WARN_配备|r|T134918:0|t|cRXP_LOOT_[含硫图标]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step
    #loop
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    .aura 408828 >>|cRXP_WARN_使用|r|T136026:0|t[地球震动]|cRXP_WARN_至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
    .xp >13,1
step
    #completewith Barrens
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .train 425344,1
    .xp <13,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_使用|r|T136026:0|t[地球震动]|cRXP_WARN_至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <13,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_使用|r|T136026:0|t[地球震动]|cRXP_WARN_至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_使用|r|T136026:0|t[地球震动]|cRXP_WARN_至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .train 425344,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_使用|r|T136026:0|t[地球震动]|cRXP_WARN_至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134918:0|t|cRXP_LOOT_[硫磺图标]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-熔喷]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 熔喷-10（Durotar）
#title Molten Blast
#next 地球之路-12（荒原）


    --Rune of Molten Blast
step
    +|cRXP_WARN_你必须至少达到10级才能获得|r|T133816:0|t[雕刻手套-熔爆]|cRXP_WARN_因为这是训练的级别要求|r|T135813:0|t][火焰冲击]
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-熔爆]之前，您需要升级更多
    >>|cRXP_WARN_或者，您可以在3级获得|r|T133816:0|t[雕刻手套-熔爆]|cRXP_WARN_in Mulgore+|r
    .train 425344,1
    .xp >10,1
step
    #completewith IconS
    #label Durotar1
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar1
    #label Durotar2
    .goto Durotar,53.28,42.57,20,0
    .goto Durotar,54.42,42.59,15 >>朝|cRXP_FRIENDLY_Swart|r内侧行驶
    .train 425344,1
    .xp <10,1
step
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_斯瓦特|r
    .train 8050 >>列车|T135813:0|t[火焰冲击]
    .target Swart
    .train 425344,1
    .xp <10,1
step
    #completewith next
    #requires Durotar2
    .goto Durotar,58.69,45.53,40 >>前往|cRXP_ENEMY_Frozen Makrura|r
    .train 425344,1
    .xp <10,1
step
    #label IconS
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_在|cRXP_ENEMY_Frozen Makrura|r附近或普通聊天中寻找其他萨满、术士或法师（在聊天中键入/1）|r
    >>|cRXP_WARN_在|cRXP_ENEMY_Frozen Makrura|r上铸造|r|T135813:0|t[火焰冲击]|cRXP_WARN_以施加|r|T135805:0|t[施加热量]|cRXP_WARN_的堆叠。一次叠加5个堆栈以杀死|cRXP_ENEMY_Frozen Makrura|r。为|r|T134918:0|t|cRXP-Loot_[硫磺图标]掠夺它|r
    >>|cRXP_WARN_或者，您可以获得|r|T133816:0|t[雕刻手套-熔爆]|cRXP_WARN_in Mulgore solo|r
    >>|cRXP_WARN_注：|r|T135813:0|t[火舌武器]|cRXP_WARN_不使用任何|r|T135805:0|t[加热]堆栈|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <10,1
    .xp >12,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_在|cRXP_ENEMY_Frozen Makrura|r附近或普通聊天中寻找其他萨满、术士或法师（在聊天中键入/1）|r
    >>|cRXP_WARN_在|cRXP_ENEMY_Frozen Makrura|r上铸造|r|T135813:0|t[火焰冲击]|cRXP_WARN_以施加|r|T135805:0|t[施加热量]|cRXP_WARN_的堆叠。一次叠加5个堆栈以杀死|cRXP_ENEMY_Frozen Makrura|r。为|r|T134918:0|t|cRXP-Loot_[硫磺图标]掠夺它|r
    >>|cRXP_WARN_或者，您可以获得|r|T133816:0|t[雕刻手套-熔爆]|cRXP_WARN_in Mulgore solo|r
    >>|cRXP_WARN_注：|r|T135813:0|t[火舌武器]|cRXP_WARN_and|r|T135824:0|t[火新星图腾]|cRXP-WARN_不要使用任何|r|T1 35805:0|t[加热]堆栈|r
    .collect 206388,1 --Sulfurous Icon (1)
    .mob Frozen Makrura
    .train 425344,1
    .xp <12,1
--XX Flametongue and Fire Nova doesn't seem to work
step
    .equip 18,206388 >>|cRXP_WARN_配备|r|T134918:0|t|cRXP_LOOT_[含硫图标]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto Durotar,56.87,53.05,50,0
    .goto Durotar,56.82,54.69,50,0
    .goto Durotar,58.64,53.86,50,0
    .goto Durotar,59.40,56.58,50,0
    .goto Durotar,58.41,58.17,50,0
    .goto Durotar,56.21,58.51,50,0
    .aura 408828 >>|cRXP_WARN_使用|r|T136026:0|t[地球震动]|cRXP_WARN_至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <10,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_使用|r|T136026:0|t[地球震动]|cRXP_WARN_至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <11,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_使用|r|T136026:0|t[地球震动]|cRXP_WARN_至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_使用|r|T136026:0|t[地球震动]|cRXP_WARN_至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .train 425344,1
    .xp <10,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_使用|r|T136026:0|t[地球震动]|cRXP_WARN_至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134918:0|t|cRXP_LOOT_[硫磺图标]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-熔喷]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <10,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Lava Lash - 10 (Mulgore)
#title Lava Lash
#next 祖先指南-10（穆戈尔）


    --Rune of Lava Lash
--XX Worth mentioning "Dual Wield Skill" in the name? Cuts off ingame due to it being 3 lines though
step
    +|cRXP_WARN_你应该至少达到10级才能获得|r|T133816:0|t[雕刻手套-熔岩睫毛]|cRXP_WARN_and|r|T132147:0|t[双Wield]|cRXP_WARN_in Mulgore|r
    >>|cRXP_WARN_你必须至少达到4级，因为这是开始任务线的级别要求|r
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-熔岩睫毛]|cRXP_WARN_and|r|T132147:0|t[双Wield]之前，您需要升级更多
    .train 410104,1
    .xp >4,1
step
    +|cRXP_WARN_你应该至少达到10级才能获得|r|T133816:0|t[雕刻手套-熔岩睫毛]|cRXP_WARN_and|r|T132147:0|t[双Wield]|cRXP_WARN_in Mulgore|r
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-熔岩睫毛]|cRXP_WARN_and|r|T132147:0|t[双Wield]之前，您需要升级更多
    .train 410104,1
    .xp <4,1
    .xp >10,1
--XX WIP to here
step
    #completewith next
    .zone Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He为|r|T132320:0|t[隐形]
    .accept 76156 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,61.46,47.21,20 >>Enter 接任务: |cRXP_WARN_风险投资公司|r. Mine
    >>|cRXP_WARN_注：|r|T132288:0|t[Venture Co Disguise]|cRXP_WARN_不起作用|r
    .train 410104,1
    .xp <4,1
step
    #loop
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>打开矿井内部和另一侧外部的|cRXP_PICK_Blasting Supplies|r。掠夺它们以获得|cRXP_Loot_Seaforium采矿费|r
    >>|cRXP_WARN_如果可能的话，呆在洞穴的上层|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
--XX Didn't add the bottom of the mine ones
step
    #completewith next
    .goto Mulgore,59.99,35.82
    .subzone 215 >>退出另一边的Venture Co.矿场
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,60.39,33.54,40 >>前往|cRXP_FRIENDLY_Adventurer的遗体|r
    .train 410099,1
    .xp <4,1
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_如果你没有|r|T134596:0|t[雕刻裤子-祖先指导]|cRXP_WARN_，现在是做这件事的好时机|r
    >>|cRXP_WARN_如果你不想得到这个符文，跳过这一步|r
    >>|cRXP_WARN_与另一个萨满、牧师或德鲁伊站在|cRXP_FRIENDLY_Adventurer的遗体|r旁边加入一个小组，或在普通聊天中寻求萨满、牧师和德鲁伊的帮助（在聊天中键入/1）|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_一个|cRXP_FRIENDLY_Adventurer的灵魂|r将在完成仪式后产生并死亡。为|r|T237571:0|t|cRXP_Loot_[祖先的回声]掠夺它|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <4,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T237571:0|t|cRXP_LOOT_[祖先的回声]|r|cRXP_WARN_学习|r|T134596:0|t[雕刻裤子-祖先指南]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <4,1
step
    #completewith next
    .zone Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
    .train 410104,1
    .xp <4,1
--XX Logout skips take you to Bloodhoof, not worth doing
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He为|r|T132320:0|t[隐形]
    .turnin 76156 >>Turn in Stalk With The Earthmother
    .accept 76160 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto Mulgore,53.91,23.45
    .zone Mulgore >>前往: |cRXP_PICK_莫高雷|r
    .train 410104,1
    .xp <4,1
step
    #loop
    .goto Mulgore,38.80,16.03,10,0
    .goto Mulgore,37.79,10.86,10,0
    .goto Mulgore,38.01,10.21,10,0
    .goto Mulgore,38.55,8.10,10,0
    .goto Mulgore,38.06,7.47,10,0
    .goto Mulgore,37.36,9.99,10,0
    .goto Mulgore,37.31,10.41,10,0
    .goto Mulgore,35.80,11.21,10,0
    .goto Mulgore,36.20,11.41,10,0
    .goto Mulgore,36.21,12.60,10,0
    .goto Mulgore,36.55,12.84,10,0
    .goto Mulgore,36.65,13.26,10,0
    .goto Mulgore,37.18,12.36,10,0
    >>地面上的织机|cRXP_Loot_风怒锥|r
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
    .xp <4,1
step
    >>使用|T133748:0|t[迫击炮和害虫]创建|T133213:0|t[松Salve]
    .complete 76160,1 --Pine Salve (1)
    .use 206176
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He为|r|T132320:0|t[隐形]
    .turnin 76160 >>Turn in Stalk With The Earthmother
    .accept 76240 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯塔比|r
    >>|cRXP_BUY_从拍卖行购买一条|r|T133894:0|t[Raw Brilliant Smallfish]|cRXP_Buy_|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>朝着|cRXP_FRIENDLY_SWA Mistruner|r行进
    .train 410104,1
    .xp <4,1
step
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡尔·迷雾行者|r
    .train 7734 >>火车|T136245:0|t[钓鱼]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_苏瓦·迷雾行者|r
    >>|cRXP_BUY_从她那里买一根|r|T132932:0|t[钓鱼竿]|cRXP_Buy_|r
    .collect 6256,1 --钓鱼 Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >>|cRXP_WARN_Equip the |r|T132932:0|t[钓鱼杆]
    .use 6256
    .train 410104,1
    .xp <4,1
step
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >>|cRXP_WARN_Attach the |r|T134335:0|t[Shiny Bauble]|cRXP_WARN_to your|r|T132932:0|t[钓鱼 Pole]
    .use 6529
    .train 410104,1
    .xp <4,1
step
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>在池塘里钓鱼，直到你得到一个|T133894:0|t[|cRXP_OOT_Raw Brilliant Smallfish|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step
    >>使用|T132147:0|t[刀集]创建|T134007:0|t[Fish Chunks]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He为|r|T132320:0|t[隐形]
    .turnin 76240 >>Turn in Stalk With The Earthmother
-- .train 410104 >>|cRXP_WARN_你将训练|r|T236289:0|t[Lava Lash]|cRXP_WARN_and|r|T132147:0|t[Tdual Wield]|cRX P_WARN_pon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name Water Shield-20（The Barrens）
#title Water Shield
#next 萨满之怒-25（石爪山脉）


step
    +|cRXP_WARN_你必须至少达到20级才能获得|r|T133816:0|t[雕刻手套-水盾]|cRXP_WARN_因为这是训练的级别要求|r|T135849:0|t[霜震]
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-水盾]之前，您需要升级更多
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>前往|cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8050 >>列车|T135813:0|t[火焰冲击]
    .train 8056 >>列车|T135849:0|t[霜震]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8050 >>列车|T135813:0|t[火焰冲击]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8056 >>列车|T135849:0|t[霜震]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师瓦巴恩|r
    >>|cRXP_BUY_从拍卖行购买|r|T134237:0|t[Kolkar Booty Key]|cRXP_Buy_|r
    >>|cRXP_WARN_这将为您节省几分钟时间|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>向|cRXP_FRIENDLY_Siln|r行进
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩·逐星|r
    .train 8050 >>列车|T135813:0|t[火焰冲击]
    .train 8056 >>列车|T135849:0|t[霜震]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩·逐星|r
    .train 8050 >>列车|T135813:0|t[火焰冲击]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩·逐星|r
    .train 8056 >>列车|T135849:0|t[霜震]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯塔比|r
    >>|cRXP_BUY_从拍卖行购买|r|T134237:0|t[Kolkar Booty Key]|cRXP_Buy_|r
    >>|cRXP_WARN_这将为您节省几分钟时间|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410097,1
    .xp <20,1
--XX easier to farm it IF the user is not already there to train
step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto The Barrens,45.78,25.52,0
    .goto The Barrens,43.86,21.38,0
    .goto The Barrens,43.56,26.30,0
    .goto The Barrens,45.78,25.52,50,0
    .goto The Barrens,46.54,22.99,50,0
    .goto The Barrens,45.03,20.09,50,0
    .goto The Barrens,43.86,21.38,50,0
    .goto The Barrens,43.49,23.57,50,0
    .goto The Barrens,43.56,26.30,50,0
    >>杀死|cRXP_ENEMY_Kolkar牧马人|r和|cRXX_ENEMY_ Kolkar风暴者|r。掠夺他们一个|T134237:0|t[Kolkar Booty Key]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 410097,1
    .xp <20,1
step
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--  .goto The Barrens,44.33,37.66,-1
    >>打开地面上的|cRXP_PICK_Kolkars'靴|r。为|T135832:0|t|cRXP_Loot_[Tempest Icon]|r抢劫它
    .collect 206382,1 --Tempest Icon (1)
    .itemcount 5020,1 --Kolkar Booty Key (1)
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >>|cRXP_WARN_装备|r|T135832:0|t|cRXP_LOOT_[暴风图标]|r
    .use 206382
    .itemcount 206382,1 --Tempest Icon (1)
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_使用自然法术（|r|T136026:0|t[地震]|cRXP_WARN_）、冰霜法术（|r |T135849:0|t[霜震]|cRXP_WARN_）和火焰法术（|r|T135813:0|t[火焰震]|t RXP_WARD_）至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .train 410097,1
    .xp <22,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_使用自然法术（|r|T136026:0|t[地震]|cRXP_WARN_）、冰霜法术（|r |T135849:0|t[霜震]|cRXP_WARN_）和火焰法术（|r|T135813:0|t[火焰震]|t RXP_WARD_）至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T135832:0|t|cRXP_LOOT_[暴风雨图标]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-防水罩]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 水盾-20（银松森林）
#title Water Shield
#next 萨满之怒-25（石爪山脉）

step
    +|cRXP_WARN_你必须至少达到20级才能获得|r|T133816:0|t[雕刻手套-水盾]|cRXP_WARN_因为这是训练的级别要求|r|T135849:0|t[霜震]
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-水盾]之前，您需要升级更多
    .train 410097,1
    .xp >20,1
step
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Thunder Bluff
    .train 8050,1
    .xp <20,1
step
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Thunder Bluff
    .train 8056,1
    .xp <20,1
step
    #completewith OrgTrain
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>前往|cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8050 >>列车|T135813:0|t[火焰冲击]
    .train 8056 >>列车|T135849:0|t[霜震]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8050 >>列车|T135813:0|t[火焰冲击]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #label OrgTrain
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 8056 >>列车|T135849:0|t[霜震]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410097,1
    .xp <20,1
step
    #completewith TBTrain
    .goto Thunder Bluff,22.82,21.11,15 >>向|cRXP_FRIENDLY_Siln|r行进
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩·逐星|r
    .train 8050 >>列车|T135813:0|t[火焰冲击]
    .train 8056 >>列车|T135849:0|t[霜震]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 8050,1
    .train 8056,1
    .xp <20,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩·逐星|r
    .train 8050 >>列车|T135813:0|t[火焰冲击]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #label TBTrain
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩·逐星|r
    .train 8056 >>列车|T135849:0|t[霜震]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #label Grimson1
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson1
    #label Grimson2
    .goto Silverpine Forest,56.65,45.97,15 >>进入深海Elem矿
    .train 410097,1
    .xp <20,1
step
    #completewith Grimson
    #requires Grimson2
    .goto Silverpine Forest,57.28,45.42,10,0
    .goto Silverpine Forest,57.66,44.82,10,0
    .goto Silverpine Forest,58.59,44.85,30 >>走向|cRXP_ENEMY_Grimson the Pale|r
    .train 410097,1
    .xp <20,1
step
    #label Grimson
    .goto Silverpine Forest,58.59,44.85
    >>杀死里面的苍白者。抢劫他|T135832:0|t|cRXP_Loot_[Tempest Icon]|r
    .collect 206382,1 --Tempest Icon (1)
    .mob Grimson the Pale
    .train 410097,1
    .xp <20,1
step
    .equip 18,206382 >>|cRXP_WARN_装备|r|T135832:0|t|cRXP_LOOT_[暴风图标]|r
    .use 206382
    .itemcount 206382,1 --Tempest Icon (1)
    .train 410097,1
    .xp <20,1
step
    #loop
    .goto Silverpine Forest,47.68,86.24,50,0
    .goto Silverpine Forest,45.81,86.37,50,0
    .goto Silverpine Forest,44.26,84.37,50,0
    .aura 408828 >>|cRXP_WARN_使用自然法术（|r|T136026:0|t[地震]|cRXP_WARN_）、冰霜法术（|r |T135849:0|t[霜震]|cRXP_WARN_）和火焰法术（|r|T135813:0|t[火焰震]|t RXP_WARD_）至少杀死一次造成伤害的敌人。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Valdred Moray
    .mob Dalin Forgewright
    .mob Haggard Refugee
    .mob Sickly Refugee
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
    .xp >22,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T135832:0|t|cRXP_LOOT_[暴风雨图标]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-防水罩]
    .use 206382
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410097,1
    .xp <20,1
step
    #completewith next
    >>|cRXP_WARN_如果您没有|r|T133816:0|t[雕刻手套-熔岩爆裂]|cRXP_WARN_already，那么现在就值得一做。如果您不想，请跳过此步骤|r
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r
    .train 410095,1
    .xp <25,1
step
    #loop
    .goto Hillsbrad Foothills,63.73,59.26,40,0
    .goto Hillsbrad Foothills,65.49,60.30,40,0
    .goto Hillsbrad Foothills,66.30,61.11,40,0
    .goto Hillsbrad Foothills,63.61,62.04,40,0
    .goto Hillsbrad Foothills,63.21,61.04,40,0
    .goto Hillsbrad Foothills,62.56,63.55,40,0
    .goto Hillsbrad Foothills,62.98,63.70,40,0
    >>杀死|cRXP_ENEMY_Mudsouth萨满|r。为|T134920:0|t|cRXP-Loot_[Kajaric Icon]|r掠夺他们
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
    .xp <25,1
step
    .equip 18,206387 >>|cRXP_WARN_装备|r|T134920:0|t|cRXP_LOOT_[Kajaric图标]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
    .xp <25,1
step
    #completewith next
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .train 410095,1
    .xp <25,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>进入阴影裂缝内的Ragefire Chasm
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_拥抱墙的右侧。下坡道后（第5次暴民之后），走进右侧的浅熔岩池|r
    >>|cRXP_WARN_从|r|T135805:0|t[熔岩]|cRXP_WARN_i受到的伤害减少到91，同时装备|r|T134920:0|t|cRXP-LOOT_[Kajaric图标]|r|cRXP_WARN_i|r
    .aura 408828 >>|cRXP_WARN_受到|T135805:0|t[熔岩]|cRXP_WARN_source的伤害5次|r
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
step
    >>|cRXP_WARN_移出|r|T135805:0|t[熔岩]
    .cast 402265 >>|cRXP_WARN_使用|r|T134920:0|t|cRXP_LOOT_[Kajaric图标]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-熔岩爆裂]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 熔岩爆发-25（Hillsbrad Foothills）
#title Lava Burst
#next 大地之盾-25（艾泽拉斯）


step
    +|cRXP_WARN_你必须至少达到25级才能获得|r|T133816:0|t[雕刻手套-熔岩爆发]|cRXP_WARN_in Hillsbrad|r
    .train 410095,1
    .xp >25,1
step
    #completewith next
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r
    .train 410095,1
step
    #loop
    .goto Hillsbrad Foothills,63.73,59.26,40,0
    .goto Hillsbrad Foothills,65.49,60.30,40,0
    .goto Hillsbrad Foothills,66.30,61.11,40,0
    .goto Hillsbrad Foothills,63.61,62.04,40,0
    .goto Hillsbrad Foothills,63.21,61.04,40,0
    .goto Hillsbrad Foothills,62.56,63.55,40,0
    .goto Hillsbrad Foothills,62.98,63.70,40,0
    >>杀死|cRXP_ENEMY_Mudsouth萨满|r。为|T134920:0|t|cRXP-Loot_[Kajaric Icon]|r掠夺他们
    .collect 206387,1 --Kajaric Icon (1)
    .mob Mudsnout Shaman
    .train 410095,1
step
    .equip 18,206387 >>|cRXP_WARN_装备|r|T134920:0|t|cRXP_LOOT_[Kajaric图标]|r
    .use 206387
    .itemcount 206387,1 --Kajaric Icon (1)
    .train 410095,1
step
    #completewith next
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .train 410095,1
step
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>进入阴影裂缝内的Ragefire Chasm
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_拥抱墙的右侧。下坡道后（第5次暴民之后），走进右侧的浅熔岩池|r
    >>|cRXP_WARN_从|r|T135805:0|t[熔岩]|cRXP_WARN_i受到的伤害减少到91，同时装备|r|T134920:0|t|cRXP-LOOT_[Kajaric图标]|r|cRXP_WARN_i|r
    .aura 408828 >>|cRXP_WARN_受到|T135805:0|t[熔岩]|cRXP_WARN_source的伤害5次|r
    .itemStat 18,QUALITY,2
    .train 410095,1
step
    >>|cRXP_WARN_移出|r|T135805:0|t[熔岩]
    .cast 402265 >>|cRXP_WARN_使用|r|T134920:0|t|cRXP_LOOT_[Kajaric图标]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-熔岩爆裂]
    .use 206387
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410095,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name Overload - 3 (Durotar)
#title Overload
#next 护盾大师-6（Durotar）

    --Rune of Overload
step
    +|cRXP_WARN_您必须至少达到3级才能获得|r|T133815:0|t[铭刻胸甲-过载]|cRXP_WARN_因为这是装备|r|T134918:0|t|cRXP-LOOT_[Dyadic Icon]的级别要求|r
    >>|cRXP_WARN_在尝试获取|r|T133815:0|t[铭刻胸甲-过载]之前，您需要升级更多
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r
    .accept 77587 >>Accept Icons of Power << Troll Shaman
    .accept 77585 >>Accept Icons of Power << Orc Shaman
    .target Shikrik
    .train 410094,1
    .xp <3,1
step
    #label IconS
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>杀死|cRXP_ENEMY_Scorpid Workers |r。为|T134918:0|t|cRXP_Loot_[Dadic Icon]|r掠夺他们
    .collect 206381,1 --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >>|cRXP_WARN_装备|r|T134918:0|t|cRXP_LOOT_[动态图标]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    .aura 408828 >>|cRXP_WARN_让|cRXP_ENEMY_Scorpid Workers |r对你施法|r|T136016:0|t[弱毒]|cRXP-WARN_，然后受到10次伤害，获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    .mob Scorpid Worker
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134918:0|t|cRXP_LOOT_[动态图标]|r|cRXX_WARN_学习|r|T133815:0|t[雕刻胸部-过载]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << !Tauren skip
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_史克里克|r
    .turnin 77587 >>Turn in Icons of Power << Troll Shaman
    .turnin 77585 >>Turn in Icons of Power << Orc Shaman
    .target Shikrik
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name Overload - 3 (Mulgore)
#title Overload
#next 护盾大师-6（穆戈尔）


    --Rune of Overload
step
    +|cRXP_WARN_您必须至少达到3级才能获得|r|T133815:0|t[铭刻胸甲-过载]|cRXP_WARN_因为这是装备|r|T134918:0|t|cRXP-LOOT_[Dyadic Icon]的级别要求|r
    >>|cRXP_WARN_在尝试获取|r|T133815:0|t[铭刻胸甲-过载]之前，您需要升级更多
    .train 410094,1
    .xp >3,1
step
    #completewith IconS
    .zone Mulgore >>前往: |cRXP_PICK_莫高雷|r
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .accept 77652 >>Accept Icons of Power
    .target Meela Dawnstrider
    .xp <3,1
step
    #label IconS
    .goto Mulgore,63.74,81.18,50,0
    .goto Mulgore,63.86,79.97,50,0
    .goto Mulgore,65.00,78.60,50,0
    .goto Mulgore,66.05,77.83,50,0
    .goto Mulgore,65.93,77.10,50,0
    .goto Mulgore,63.57,76.25,50,0
    .goto Mulgore,63.86,80.14
    >>杀死|cRXP_ENEMY_Bristleback萨满|r。为|T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]掠夺他们
    .collect 206381,1 --Dyadic Icon (1)
    .mob Bristleback Shaman
    .train 410094,1
    .xp <3,1
step
    .equip 18,206381 >>|cRXP_WARN_装备|r|T134918:0|t|cRXP_LOOT_[动态图标]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step
    .goto Mulgore,63.74,81.18,50,0
    .goto Mulgore,63.86,79.97,50,0
    .goto Mulgore,65.00,78.60,50,0
    .goto Mulgore,66.05,77.83,50,0
    .goto Mulgore,65.93,77.10,50,0
    .goto Mulgore,63.57,76.25,50,0
    .goto Mulgore,63.86,80.14
    .aura 408828 >>|cRXP_WARN_让|cRXP_ENEMY_Bristleback萨满|r施法|r|T136048:0|t[闪电]|cRXP-WARN_on你，并从中受到10次伤害，获得|r|T136116:0|t[灵感]|cRXP-WARN_buff|r
    .mob Bristleback Shaman
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
--XX Loop needs to be added
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134918:0|t|cRXP_LOOT_[动态图标]|r|cRXX_WARN_学习|r|T133815:0|t[雕刻胸部-过载]
    .use 206381
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410094,1
    .xp <3,1
step << Tauren skip
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米拉·晨行者|r
    .turnin 77652 >>Turn in Icons of Power
    .target Meela Dawnstrider
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 护盾大师-6（Durotar）
#title Shield Mastery
#next 熔喷-10（Durotar）

step
    +|cRXP_WARN_你必须至少达到6级才能单独获得|r|T133815:0|t[雕刻胸甲-盾牌精通]|cRXP_WARN_in Durotar|r
    >>|cRXP_WARN_您必须至少达到3级，因为这是装备|r|T134918:0|t|cRXP_LOOT_[Galvanic Icon]的级别要求|r
    >>|cRXP_WARN_在尝试获得|r|T133815:0|t[雕刻胸甲-盾牌大师]之前，您需要升级更多
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_你必须至少达到6级才能单独获得|r|T133815:0|t[雕刻胸甲-盾牌精通]|cRXP_WARN_in Durotar|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .train 410098,1
    .xp <3,1
step
    #label IconS
    .goto Durotar,52.06,62.49,0
    .goto Durotar,39.43,50.07,0
    .goto Durotar,50.91,51.61,0
    .goto Durotar,56.50,46.68,0
    .goto Durotar,57.03,46.66,0
    .goto Durotar,52.06,62.49,50,0
    .goto Durotar,39.43,50.07,50,0
    .goto Durotar,50.91,51.61,50,0
    .goto Durotar,56.50,46.68,50,0
    .goto Durotar,57.03,46.66,50,0
    .goto Durotar,59.00,58.00
    >>单击|cRXP_PICK_Galvanic Icon|r图腾。为|T134918:0|t|cRXP_Loot_[Galvanic Icon]|r抢劫
    >>|cRXP_WARN_|cRXP_PICK_Galvanic Icon|r至少有15个产卵点，一次至少有2个产卵点。它在被洗劫后不到2分钟就消失了|r
    >>|cRXP_WARN_如果你在1000码以内，它每5分钟发出一次|r|T136051:0|t[Lightning Shield]|cRXP_WARN_sound，如果你在300码以内并面对它，它会在它的位置上显示一次雷击|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
--XX Need to check for more locations
step
    .equip 18,206386 >>|cRXP_WARN_装备|r|T134918:0|t|cRXP_LOOT_[电图标]|r
    .use 206386
    .itemcount 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Durotar,56.87,53.05,50,0
    .goto Durotar,56.82,54.69,50,0
    .goto Durotar,58.64,53.86,50,0
    .goto Durotar,59.40,56.58,50,0
    .goto Durotar,58.41,58.17,50,0
    .goto Durotar,56.21,58.51,50,0
    .aura 408828 >>|cRXP_WARN_攻击生命值低的敌人，然后对他们施放|r|T136048:0|t[闪电]|cRXP_WARN_杀死他们。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
    .xp >11,1
step
    #completewith Barrens
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_攻击生命值低的敌人，然后对他们施放|r|T136048:0|t[闪电]|cRXP_WARN_杀死他们。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <11,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_攻击生命值低的敌人，然后对他们施放|r|T136048:0|t[闪电]|cRXP_WARN_杀死他们。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_攻击生命值低的敌人，然后对他们施放|r|T136048:0|t[闪电]|cRXP_WARN_杀死他们。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_攻击生命值低的敌人，然后对他们施放|r|T136048:0|t[闪电]|cRXP_WARN_杀死他们。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134918:0|t|cRXP_LOOT_[电图标]|r|cRXX_WARN_学习|r|T133815:0|t[铭刻胸甲-盾牌大师]
    .use 206386
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 护盾大师-6（穆戈尔）
#title Shield Mastery
#next 熔喷-8（Mulgore）


    --Rune of Shield Mastery
 step
    +|cRXP_WARN_你必须至少达到6级才能获得|r|T133815:0|t[雕刻胸甲-盾牌大师]|cRXP_WARN_in Mulgore|r
    >>|cRXP_WARN_您必须至少达到3级，因为这是装备|r|T134918:0|t|cRXP_LOOT_[Galvanic Icon]的级别要求|r
    >>|cRXP_WARN_在尝试获得|r|T133815:0|t[雕刻胸甲-盾牌大师]之前，您需要升级更多
    .train 410098,1
    .xp >3,1
step
    +|cRXP_WARN_你必须至少达到6级才能获得|r|T133815:0|t[雕刻胸甲-盾牌大师]|cRXP_WARN_in Mulgore|r
    .train 410098,1
    .xp <3,1
    .xp >6,1
step
    #completewith IconS
    .zone Mulgore >>前往: |cRXP_PICK_莫高雷|r
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Mulgore,41.99,43.49,0
    .goto Mulgore,43.87,48.32,0
    .goto Mulgore,37.45,52.55,0
    .goto Mulgore,41.65,55.98,0
    .goto Mulgore,38.43,72.00,0
    .goto Mulgore,36.72,68.09,0
    .goto Mulgore,53.81,58.41,0
    .goto Mulgore,64.06,55.75,0
    .goto Mulgore,56.23,64.28,0
    .goto Mulgore,56.60,70.13,0
    .goto Mulgore,67.23,66.17,0
    .goto Mulgore,62.30,22.94,0
    .goto Mulgore,56.24,22.06,0
    .goto Mulgore,44.94,11.30,0
    .goto Mulgore,36.33,9.79,0
    .goto Mulgore,30.50,25.98,0
    .goto Mulgore,41.99,43.49,20,0
    .goto Mulgore,43.87,48.32,20,0
    .goto Mulgore,37.45,52.55,20,0
    .goto Mulgore,41.65,55.98,20,0
    .goto Mulgore,38.43,72.00,20,0
    .goto Mulgore,36.72,68.09,20,0
    .goto Mulgore,53.81,58.41,20,0
    .goto Mulgore,64.06,55.75,20,0
    .goto Mulgore,56.23,64.28,20,0
    .goto Mulgore,56.60,70.13,20,0
    .goto Mulgore,67.23,66.17,20,0
    .goto Mulgore,62.30,22.94,20,0
    .goto Mulgore,56.24,22.06,20,0
    .goto Mulgore,44.94,11.30,20,0
    .goto Mulgore,36.33,9.79,20,0
    .goto Mulgore,30.50,25.98,20,0
    >>单击|cRXP_PICK_Galvanic Icon|r图腾。为|T134918:0|t|cRXP_Loot_[Galvanic Icon]|r抢劫
    >>|cRXP_WARN_|cRXP_PICK_Galvanic Icon|r至少有15个产卵点，一次至少有2个产卵点。它在被洗劫后不到2分钟就消失了|r
    >>|cRXP_WARN_如果你在1000码以内，它每5分钟发出一次|r|T136051:0|t[Lightning Shield]|cRXP_WARN_sound，如果你在300码以内并面对它，它会在它的位置上显示一次雷击|r
    .collect 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    .equip 18,206386 >>|cRXP_WARN_装备|r|T134918:0|t|cRXP_LOOT_[电图标]|r
    .use 206386
    .itemcount 206386,1 --Galvanic Icon (1)
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Mulgore,54.24,66.98,30,0
    .goto Mulgore,54.12,65.67,30,0
    .goto Mulgore,53.40,65.49,30,0
    .goto Mulgore,53.19,66.51,30,0
    .aura 408828 >>|cRXP_WARN_攻击生命值低的敌人，然后对他们施放|r|T136048:0|t[闪电]|cRXP_WARN_杀死他们。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Venture Co. Hireling
    .mob Venture Co. Laborer
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
    .xp >11,1
step
    #loop
    .goto Mulgore,59.86,48.74,30,0
    .goto Mulgore,60.85,49.04,30,0
    .goto Mulgore,61.83,48.28,30,0
    .goto Mulgore,61.40,47.23,30,0
    .goto Mulgore,62.02,45.84,30,0
    .goto Mulgore,62.85,45.30,30,0
    .goto Mulgore,64.87,43.32,30,0
    .aura 408828 >>|cRXP_WARN_攻击生命值低的敌人，然后对他们施放|r|T136048:0|t[闪电]|cRXP_WARN_杀死他们。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Venture Co. Worker
    .mob Venture Co. Supervisor
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <11,1
    .xp >14,1
step
    #completewith Barrens
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto The Barrens,53.94,25.86,50,0
    .goto The Barrens,54.17,25.06,50,0
    .goto The Barrens,54.86,25.43,50,0
    .goto The Barrens,55.62,25.71,50,0
    .goto The Barrens,55.98,26.36,50,0
    .goto The Barrens,55.71,27.21,50,0
    .goto The Barrens,55.44,27.35,50,0
    .goto The Barrens,54.99,26.79,50,0
    .aura 408828 >>|cRXP_WARN_攻击生命值低的敌人，然后对他们施放|r|T136048:0|t[闪电]|cRXP_WARN_杀死他们。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Razormane Thornweaver
    .mob Razormane Water Seeker
    .mob Razormane Hunter
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <14,1
    .xp >16,1
step
    #loop
    .goto The Barrens,55.97,16.17,50,0
    .goto The Barrens,55.43,16.15,50,0
    .goto The Barrens,54.10,15.51,50,0
    .goto The Barrens,53.10,15.25,50,0
    .goto The Barrens,53.73,13.77,50,0
    .goto The Barrens,55.09,15.00,50,0
    .goto The Barrens,55.62,14.86,50,0
    .aura 408828 >>|cRXP_WARN_攻击生命值低的敌人，然后对他们施放|r|T136048:0|t[闪电]|cRXP_WARN_杀死他们。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Hecklefang Hyena
    .mob Savannah Prowler
    .mob Savannah Huntress
    .mob Sunscale Screecher
    .mob Barrens Giraffe
    .mob Fleeting Plainstrider
    .mob Zhevra Runner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <16,1
    .xp >20,1
step
    #label Barrens
    #loop
    .goto The Barrens,40.03,15.36,50,0
    .goto The Barrens,39.39,14.65,50,0
    .goto The Barrens,39.62,11.77,50,0
    .goto The Barrens,38.84,11.93,50,0
    .goto The Barrens,38.44,13.21,50,0
    .goto The Barrens,38.48,14.85,50,0
    .goto The Barrens,37.33,16.23,50,0
    .goto The Barrens,38.64,17.49,50,0
    .aura 408828 >>|cRXP_WARN_攻击生命值低的敌人，然后对他们施放|r|T136048:0|t[闪电]|cRXP_WARN_杀死他们。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Witchwing Slayer
    .mob Witchwing Windcaller
    .mob Witchwing Ambusher
    .mob Witchwing Roguefeather
    .mob Serena Bloodfeather
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .train 410098,1
    .xp <3,1
step
    #loop
    .goto Stonetalon Mountains,64.17,57.16,50,0
    .goto Stonetalon Mountains,60.55,54.86,50,0
    .goto Stonetalon Mountains,60.95,51.21,50,0
    .goto Stonetalon Mountains,64.40,48.64,50,0
    .goto Stonetalon Mountains,66.18,52.01,50,0
    .goto Stonetalon Mountains,67.20,51.49,50,0
    .goto Stonetalon Mountains,66.83,45.34,50,0
    .goto Stonetalon Mountains,69.89,53.54,50,0
    .goto Stonetalon Mountains,70.84,56.97,50,0
    .aura 408828 >>|cRXP_WARN_攻击生命值低的敌人，然后对他们施放|r|T136048:0|t[闪电]|cRXP_WARN_杀死他们。执行此操作10次以获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Venture Co. Logger
    .mob Venture Co. Deforester
    .mob Venture Co. Operator
    .mob Venture Co. Light Shredder
    .mob XT:9
    .mob XT:4
    .mob Deepmoss Webspinner
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <22,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134918:0|t|cRXP_LOOT_[电图标]|r|cRXX_WARN_学习|r|T133815:0|t[铭刻胸甲-盾牌大师]
    .use 206386
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 410098,1
    .xp <3,1
--XX Cast ID may be wrong, may need to be checked
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 祖先指导-6（杜罗塔）
#title Ancestral Guidance
#next 熔喷-10（Durotar）

    --Rune of Ancestral Guidance
step
    +|cRXP_WARN_你应该至少达到6级才能与其他玩家一起获得|r|T134596:0|t[雕刻裤子-祖先指导]|cRXP_WARN_in Durotar|r
    >>|cRXP_WARN_您必须至少达到3级，因为这是使用|r|T237571:0|t|cRXP_LOOT_[祖先的回声]的级别要求|r
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_你应该至少达到6级才能与其他玩家一起获得|r|T134596:0|t[雕刻裤子-祖先指导]|cRXP_WARN_in Durotar|r
    .train 410099,1
    .xp <3,1
    .xp >6,1
step
    #completewith next
    #label Durotar1
    .zone Durotar >>前往: |cRXP_PICK_杜隆塔尔|r
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Durotar1
    .goto Durotar,50.84,79.14,40,0
    .goto Durotar,48.02,79.46,40 >>前往|cRXP_FRIENDLY_Adventurer的遗体|r
    .train 410099,1
    .xp <3,1
step
    #label IconS
    .goto Durotar,48.02,79.46
    >>|cRXP_WARN_与另一个萨满、牧师或德鲁伊站在|cRXP_FRIENDLY_Adventurer的遗体|r旁边加入一个小组，或在普通聊天中寻求萨满、牧师和德鲁伊的帮助（在聊天中键入/1）|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_一个|cRXP_FRIENDLY_Adventurer的灵魂|r将在完成仪式后产生并死亡。为|r|T237571:0|t|cRXP_Loot_[祖先的回声]掠夺它|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T237571:0|t|cRXP_LOOT_[祖先的回声]|r|cRXP_WARN_学习|r|T134596:0|t[雕刻裤子-祖先指南]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 祖先指南-10（穆戈尔）
#title Ancestral Guidance
#next 地球之路-12（荒原）


    --Rune of Ancestral Guidance

step
    +|cRXP_WARN_你必须至少达到10级才能与其他玩家一起获得|r|T134596:0|t[雕刻裤子-祖先指导]|cRXP_WARN_in Mulgore|r
    >>|cRXP_WARN_您必须至少达到3级，因为这是使用|r|T237571:0|t|cRXP_LOOT_[祖先的回声]的级别要求|r
    .train 410099,1
    .xp <3,1
step
    +|cRXP_WARN_你必须至少达到10级才能与其他玩家一起获得|r|T134596:0|t[雕刻裤子-祖先指导]|cRXP_WARN_in Mulgore|r
    .train 410099,1
    .xp <3,1
    .xp >10,1
step
    #completewith next
    #label Mulgore1
    .zone Mulgore >>前往: |cRXP_PICK_莫高雷|r
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Mulgore1
    #label Cave1
    .goto Mulgore,61.46,47.21,20 >>Enter 接任务: |cRXP_WARN_风险投资公司|r. Mine
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Cave1
    #label Cave2
    .goto Mulgore,62.52,45.37,25,0
    .goto Mulgore,62.56,44.48,25,0
    .goto Mulgore,61.50,42.54,25,0
    .goto Mulgore,61.66,41.45,25,0
    .goto Mulgore,63.08,39.33,25,0
    .goto Mulgore,62.69,38.01,25,0
    .goto Mulgore,60.05,35.82,20 >>退出另一边的Venture Co.矿场
    .train 410099,1
    .xp <3,1
step
    #completewith next
    #requires Cave2
    .goto Mulgore,60.39,33.54,40 >>前往|cRXP_FRIENDLY_Adventurer的遗体|r
    .train 410099,1
    .xp <3,1
--XX Might be a faster method via the mountains, but don't want to complicate it
step
    #label IconS
    .goto Mulgore,60.39,33.54
    >>|cRXP_WARN_与另一个萨满、牧师或德鲁伊站在|cRXP_FRIENDLY_Adventurer的遗体|r旁边加入一个小组，或在普通聊天中寻求萨满、牧师和德鲁伊的帮助（在聊天中键入/1）|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_一个|cRXP_FRIENDLY_Adventurer的灵魂|r将在完成仪式后产生并死亡。为|r|T237571:0|t|cRXP_Loot_[祖先的回声]掠夺它|r
    .collect 210589,1 --Echo of the Ancestors (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410099,1
    .xp <3,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T237571:0|t|cRXP_LOOT_[祖先的回声]|r|cRXP_WARN_学习|r|T134596:0|t[雕刻裤子-祖先指南]
    .use 210589
    .itemcount 210589,1 --Echo of the Ancestors (1)
    .train 410099,1
    .xp <3,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 地球之路-12（荒原）
#title Way of Earth
#next Water Shield-20（The Barrens）



step
    +|cRXP_WARN_你必须至少达到12级才能获得|r|T134596:0|t[雕刻裤子-地球之路]|cRXP_WARN_因为这是训练的级别要求|r|T136075:0|t]
    >>|cRXP_WARN_在试图获得|r|T134596:0|t[雕刻裤子-地球之路]之前，你需要升级更多
    >>|cRXP_WARN_或者，您可以在1级银松森林中获得|r|T134596:0|t[雕刻裤子-地球之路]|cRXP_WARN_in+|r
    .train 410107,1
    .xp >12,1
step
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Thunder Bluff
    .train 370,1
    .xp <12,1
step
    #completewith next
    .goto Orgrimmar,40.31,37.01,15,0
    .goto Orgrimmar,38.81,36.37,15 >>前往|cRXP_FRIENDLY_Kardris|r
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    .goto Orgrimmar,38.81,36.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
    .train 370 >>列车|T136075:0|t[吹扫]
    .target Kardris Dreamseeker
    .zoneskip Thunder Bluff
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .goto Thunder Bluff,22.82,21.11,15 >>向|cRXP_FRIENDLY_Siln|r行进
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    .goto Thunder Bluff,22.82,21.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_希恩·逐星|r
    .train 370 >>列车|T136075:0|t[吹扫]
    .target Siln Skychaser
    .zoneskip Orgrimmar
    .train 410107,1
    .xp <12,1
step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .train 410107,1
    .xp <12,1
step
    #loop
    .goto The Barrens,55.77,34.01,40,0 --Spawn 1
    .goto The Barrens,55.83,34.21,40,0
    .goto The Barrens,54.81,35.95,40,0 --Spawn 2
    .goto The Barrens,54.96,35.72,40,0
    .goto The Barrens,57.47,36.03,40,0 --Spawn 3
    .goto The Barrens,57.56,35.78,40,0
    .goto The Barrens,57.46,35.70,40,0
    .goto The Barrens,57.59,38.36,40,0 --Spawn 4
    .goto The Barrens,57.49,38.65,40,0
    .goto The Barrens,58.82,37.67,40,0 --Spawn 5
    .goto The Barrens,58.92,37.53,40,0
    .goto The Barrens,58.94,37.73,40,0
    >>在|cRXP_ENEMY_Desert Mirage|r上施放|T136075:0|t[清除]以杀死它。为|T134419:0|t|cRXX_Loot_[地球符文]|r掠夺它
    .collect 208758,1 --Earthen Rune (1)
    .unitscan Desert Mirage
    .train 410107,1
    .xp <12,1
--XX Respawns after 85s-170s
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[地球符文]|r|cRXP_WARN_学习|r|T134596:0|t[雕刻裤子-地球之道]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
    .xp <12,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 大地之路-14（银松森林）
#title Way of Earth
#next 水盾-20（银松森林）

step
    +|cRXP_WARN_你应该至少达到14级才能获得|r|T134596:0|t[雕刻裤子-地球之路]|cRXP_WARN_in银松森林|r
    >>|cRXP_WARN_在试图获得|r|T134596:0|t[雕刻裤子-地球之路]之前，你需要升级更多
    .train 410107,1
    .xp >14,1
step
    #completewith next
    .zone Silverpine Forest >>前往: |cRXP_PICK_银松森林|r
    .train 410107,1
step
    #loop
    .goto Silverpine Forest,45.68,22.63,30,0
    .goto Silverpine Forest,45.09,23.63,30,0
    .goto Silverpine Forest,44.16,22.47,30,0
    .goto Silverpine Forest,44.05,21.66,30,0
    .goto Silverpine Forest,45.05,20.75,30,0
    .goto Silverpine Forest,45.07,19.79,30,0
    .goto Silverpine Forest,45.59,19.29,30,0
    .goto Silverpine Forest,46.18,19.74,30,0
    .goto Silverpine Forest,46.62,20.44,30,0
    .goto Silverpine Forest,46.07,21.92,30,0
    >>杀死|cRXP_ENEMY_Rot隐藏神秘物|r。为|T13600:0|t|cRXP_Loot_[腐烂图腾]|r掠夺它们
    .collect 210253,1 --Rot Hide Totem (1)
    .mob Rot Hide Mystic
    .itemcount 208758,<1 --Earthen Rune (1)
    .train 410107,1
step
    #completewith Rune
    .cast 425285 >>|cRXP_WARN_使用|r|T136008:0|t|cRXP_LOOT_[腐烂图腾]|r|cRXP-WARN_to召唤|cRXT_ENEMY_Decayed元素|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp <14,1
step
    #completewith next
    .cast 425285 >>|cRXP_WARN_使用|r|T136008:0|t|cRXP_LOOT_[腐烂图腾]|r|cRXP-WARN_to召唤|cRXT_ENEMY_Decayed元素|r
    >>|cRXP_WARN_小心它施放|r|T135848:0|t[霜新星]|cRXP_WARN_（远程瞬发：造成约50点伤害和树根，持续8秒），等级为15级|r
    .use 210253 --Rot Hide Totem (1)
    .itemcount 210253,1 --Rot Hide Totem (1)
    .train 410107,1
    .xp >14,1
step
    #label Rune
    >>杀死|cRXP_ENEMY_Decayed Elemental|r。为|T134419:0|t|cRXP_Loot_[地球符文]|r掠夺它
    .collect 208758,1 --Earthen Rune (1)
    .mob Decayed Elemental
    .train 410107,1
--XX Need to test if it can be summoned anywhere, and how much or how scary it is
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[地球符文]|r|cRXP_WARN_学习|r|T134596:0|t[雕刻裤子-地球之道]
    .use 208758
    .itemcount 208758,1 --Earthen Rune (1)
    .train 410107,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 萨满之怒-25（石爪山脉）
#title Shamanistic Rage
#next 双Wield专长-25（棘轮）


step
    +|cRXP_WARN_你应该至少达到25级才能获得|r|T134596:0|t[雕刻长裤-萨满之怒]|cRXP_WARN_in单独在石爪山脉|r
    .train 425343,1
    .xp >25,1
step
    #completewith next
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .train 425343,1
step
    #loop
    .goto Stonetalon Mountains,28.45,65.00,50,0
    .goto Stonetalon Mountains,29.08,71.97,50,0
    .goto Stonetalon Mountains,33.43,68.97,50,0
    .goto Stonetalon Mountains,33.49,69.40,50,0
    .goto Stonetalon Mountains,36.85,72.04,50,0
    >>杀死|cRXP_ENEMY_Primordial Anomaly|r。为|T134419:0|t|cRXP_Loot_[原始愤怒符文]|r掠夺它
    >>|cRXP_WARN_确保检查其形状（减影）。如果它处于|r|T136074:0|t[自然形态]|cRXP_WARN_，则处理|r|T135824:0|t[火灾伤害]|cRXP_WARN_。如果它在|r|T135819:0|t[火焰形态]|cRXP_WARN_中，则造成|r|T135865:0|t[冰霜伤害]|cRXP_WARN_。如果它处于|r|T135861:0|t[水形态]|cRXP_WARN_，则造成|r|T136085:0|t]自然伤害
    >>|cRXP_WARN_施放时要小心|T132939:0|t[击倒]|cRXP_WARN_（近战瞬发：在空中击倒目标并造成80点伤害）|r
    >>|cRXP_WARN_它有5-8分钟的重生时间，每次都会随机掉落一个BoE绿色|r
    .collect 210811,1 --Rune of Primordial Fury (1)
    .mob Primordial Anomaly
    .train 425343,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[原始之怒符文]|r|cRXP_WARN_学习|r|T134596:0|t[雕刻长裤-萨满之怒]
    .use 210811
    .itemcount 210811,1 --Rune of Primordial Fury (1)
    .train 425343,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 大地之盾-25（艾泽拉斯）
#title Earth Shield
#next Overload - 3 (Durotar) << Orc Shaman/Troll Shaman
#next Overload - 3 (Mulgore) << Tauren Shaman


step
    +|cRXP_WARN_您必须至少达到25级才能获得|r|T134596:0|t[雕刻长裤-地盾]|cRXP_WARN_因为这是进入Blacksouth Deeps的等级要求|r
    .train 410101,1
    .xp >25,1
step
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
    .zoneskip Thunder Bluff
    .train 410101,1
    .xp <25,1
step
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师瓦巴恩|r
    >>|cRXP_BUY_从拍卖行购买|r|T134797:0|t[水息灵药]|cRXP_Buy_和|r|T134717:0|t[智慧灵药]| cRXP_Buy_|r
    >>|cRXP_WARN_或者，购买材料自己制作：2|r|T132799:0|t[黑嘴油]|cRXP_WARN_
    >>|cRXP_WARN_你以后的任务需要这个。在此之前请勿使用|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Wabang
	.skill alchemy,<90,1
    .zoneskip Orgrimmar,1
    .train 410101,1
    .xp <25,1
step
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师瓦巴恩|r
    >>|cRXP_BUY_从拍卖行购买|r|T134797:0|t[水息灵药]|cRXP_Buy_和|r|T134717:0|t[智慧灵药]| cRXP_Buy_|r
    >>|cRXP_WARN_你以后的任务需要这个。在此之前请勿使用|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 410101,1
    .xp <25,1
step
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯塔比|r
    >>|cRXP_BUY_从拍卖行购买|r|T134797:0|t[水息灵药]|cRXP_Buy_和|r|T134717:0|t[智慧灵药]| cRXP_Buy_|r
    >>|cRXP_WARN_或者，购买材料自己制作：2|r|T132799:0|t[黑嘴油]|cRXP_WARN_
    >>|cRXP_WARN_你以后的任务需要这个。在此之前请勿使用|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Stampi
	.skill alchemy,<90,1
    .zoneskip Thunder Bluff,1
    .train 410101,1
    .xp <25,1
step
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拍卖师斯塔比|r
    >>|cRXP_BUY_从拍卖行购买|r|T134797:0|t[水息灵药]|cRXP_Buy_和|r|T134717:0|t[智慧灵药]| cRXP_Buy_|r
    >>|cRXP_WARN_你以后的任务需要这个。在此之前请勿使用|r
    .collect 5996,1 --Elixir of Water Breathing (1)
    .collect 3383,1 --Elixir of Wisdom (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .goto Kalimdor,44.36,34.86
    >>|cRXP_WARN_加入或创建一个新的（0/7）突袭（10人）小组，用于Blackfinth Deeps|r
    .zone 221 >>进入Ashenvale的Blackfinth Deeps
    .train 410101,1
    .xp <25,1
step
    >>在黑寻深处杀死|cRXP_ENEMY_Baron Aquanis|r。为|T136222:0|t|cRXP_Loot_[奇异水球]|r抢劫他
    .collect 211454,1 --Strange Water Globe (SoD) (1)
    .mob Baron Aquanis
    .train 410101,1
    .xp <25,1
step
    >>使用|T136222:0|t|cRXP_LOOT_[奇异水球]|r开始任务
    .accept 78920 >>接任务: |cRXP_LOOT_阿奎尼斯男爵|r
    .use 211454
    .itemcount 211454,1 --Strange Water Globe (SoD) (1)
    .train 410101,1
    .xp <25,1
step
    #completewith Baron
    >>|cRXP_WARN_如果你想的话，完成突袭，然后离开Blackfinth Deeps|r
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .zoneskip 221,1
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .train 410101,1
    .xp <25,1
step
    #label Baron
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 78920 >>Turnin Baron Aquanis
    .accept 78506 >>Accept Elemental Distress
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
#loop
	.line Ashenvale,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,52.13,71.14,52.18,71.60,52.08,72.10,45.84,70.67,48.36,69.74
	.goto Ashenvale,48.36,69.74,50,0
	.goto Ashenvale,48.43,70.14,50,0
	.goto Ashenvale,48.93,70.82,50,0
	.goto Ashenvale,49.49,70.76,50,0
	.goto Ashenvale,50.21,70.36,50,0
	.goto Ashenvale,50.47,70.43,50,0
	.goto Ashenvale,50.54,71.08,50,0
	.goto Ashenvale,50.74,71.31,50,0
	.goto Ashenvale,51.42,70.86,50,0
	.goto Ashenvale,52.13,71.14,50,0
	.goto Ashenvale,52.18,71.60,50,0
	.goto Ashenvale,52.08,72.10,50,0
	.goto Ashenvale,45.84,70.67,50,0
	.goto Ashenvale,48.36,69.74,50,0
    >>杀死|cRXP_ENEMY_Befounded Water Elements|r。掠夺它们以获得|T132844:0|t|cRXP-Loot_[狂暴之蛾]|r
    .complete 78506,3 --Mote of Torrential Rage (1)
    .mob Befouled Water Elemental
    .train 410101,1
    .xp <25,1
--XX Needs to be converted to hashtag loop
step
    #completewith next
    .zone Stonetalon Mountains >>前往: |cRXP_PICK_石爪山脉|r
    .train 410101,1
    .xp <25,1
step
    #loop
    #completewith next
    .goto Stonetalon Mountains,45.60,44.18,50,0 --NE Rogue Flame Shared Spawn Cluster (NE Spawnpoints)
    .goto Stonetalon Mountains,44.54,43.43,50,0
    .goto Stonetalon Mountains,43.96,39.90,50,0
    .goto Stonetalon Mountains,43.62,41.14,50,0
--
    .goto Stonetalon Mountains,37.09,46.62,50,0 --Path Rogue Flame Shared Spawn Cluster (Middle Spawnpoints)
    .goto Stonetalon Mountains,35.71,47.81,50,0
    .goto Stonetalon Mountains,37.21,48.30,50,0
    .goto Stonetalon Mountains,36.50,49.86,50,0
    .goto Stonetalon Mountains,37.18,51.87,50,0
    .goto Stonetalon Mountains,35.33,53.88,50,0
    .goto Stonetalon Mountains,34.59,60.23,50,0
    .goto Stonetalon Mountains,33.38,62.23,50,0
--
    .goto Stonetalon Mountains,35.22,65.79,50,0 --Start of Burning Destroyers and Ravagers
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.73,73.27,50,0
    .goto Stonetalon Mountains,34.50,72.62,50,0
    .goto Stonetalon Mountains,33.64,71.17,50,0
    .goto Stonetalon Mountains,33.49,70.48,50,0
    .goto Stonetalon Mountains,31.67,71.11,50,0
    .goto Stonetalon Mountains,31.13,73.45,50,0
    .goto Stonetalon Mountains,30.13,73.32,50,0
    .goto Stonetalon Mountains,30.97,67.39,50,0
    .goto Stonetalon Mountains,28.25,65.96,50,0
    >>杀死|cRXP_ENEMY_流氓火焰精灵|r、|cRXD_ENEMY_Burning Destroyer|r和|cRXP_ENEMY_Burning Ravagers|r。为|T132839:0|t|cRXP_Loot_[地狱之怒之蛾]|r掠夺它们
    >>|cRXP_ENEMY_流氓火焰精灵|r|cRXP_WARN_share与|r|cRXP_ENEMY_黑化Basilisks一起重生|r
    .complete 78506,2 --Mote of Infernal Rage (1)
    .mob Rogue Flame Spirit
    .mob Burning Destroyer
    .mob Burning Ravager
    .train 410101,1
    .xp <25,1
--XX Did waypoints in WOTLK, may be slightly off but i'd put more money on it being accurate than not
step
    #loop
    .goto Stonetalon Mountains,34.07,65.61,50,0
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.88,72.31,50,0
    .goto Stonetalon Mountains,32.49,73.81,50,0
    .goto Stonetalon Mountains,32.64,67.42,50,0
    .goto Stonetalon Mountains,28.99,65.18,50,0
    >>杀死|cRXP_ENEMY_愤怒的石灵|r和|cRXP_ENEMY_Furious Stone Spirits|r。掠夺它们|T132838:0|t|cRXD_Loot_[地震之怒之蛾]|r|cRXP_WARN_小心该地区的危险敌人|r
    .complete 78506,1 --Mote of Seismic Rage (1)
    .mob Enraged Stone Spirit
    .mob Furious Stone Spirit
    .train 410101,1
    .xp <25,1
--XX Not totally sure if any of the elementals in the charred vale do/don't share spawns? It's a total clown fiesta
step
    #loop
    .goto Stonetalon Mountains,45.60,44.18,50,0
    .goto Stonetalon Mountains,44.54,43.43,50,0
    .goto Stonetalon Mountains,43.96,39.90,50,0
    .goto Stonetalon Mountains,43.62,41.14,50,0
    .goto Stonetalon Mountains,37.09,46.62,50,0
    .goto Stonetalon Mountains,35.71,47.81,50,0
    .goto Stonetalon Mountains,37.21,48.30,50,0
    .goto Stonetalon Mountains,36.50,49.86,50,0
    .goto Stonetalon Mountains,37.18,51.87,50,0
    .goto Stonetalon Mountains,35.33,53.88,50,0
    .goto Stonetalon Mountains,34.59,60.23,50,0
    .goto Stonetalon Mountains,33.38,62.23,50,0
    .goto Stonetalon Mountains,35.22,65.79,50,0
    .goto Stonetalon Mountains,36.42,71.05,50,0
    .goto Stonetalon Mountains,35.73,73.27,50,0
    .goto Stonetalon Mountains,34.50,72.62,50,0
    .goto Stonetalon Mountains,33.64,71.17,50,0
    .goto Stonetalon Mountains,33.49,70.48,50,0
    .goto Stonetalon Mountains,31.67,71.11,50,0
    .goto Stonetalon Mountains,31.13,73.45,50,0
    .goto Stonetalon Mountains,30.13,73.32,50,0
    .goto Stonetalon Mountains,30.97,67.39,50,0
    .goto Stonetalon Mountains,28.25,65.96,50,0
    >>杀死|cRXP_ENEMY_流氓火焰精灵|r、|cRXD_ENEMY_Burning Destroyer|r和|cRXP_ENEMY_Burning Ravagers|r。为|T132839:0|t|cRXP_Loot_[地狱之怒之蛾]|r掠夺它们
    >>|cRXP_ENEMY_流氓火焰精灵|r|cRXP_WARN_share与|r|cRXP_ENEMY_黑化Basilisks一起重生|r
    .complete 78506,2 --Mote of Infernal Rage (1)
    .mob Rogue Flame Spirit
    .mob Burning Destroyer
    .mob Burning Ravager
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 78506 >>Turnin Elemental Distress
    .accept 78537 >>Accept Elixir of Insight
    .accept 78537 >>Turnin灵药
    .accept 78561 >>Accept Elixir of Insight
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.38,33.08
    >>在篝火附近使用|T134791:0|t[灵药]
    >>|cRXP_WARN_你不需要等待RP结束|r
    .complete 78561,1 --Vision Witnessed (1)
    .use 210712
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 78561 >>Turnin灵药
    .accept 78575 >>Accept Hirzek
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
    .train 410101,1
    .xp <25,1
step
    .goto The Barrens,43.18,78.59
    >>杀死|cRXP_ENEMY_Hirzek|r。掠夺他|T135146:0|t|cRXP_Loot_[Hirzek的杖]|r
    >>|cRXP_WARN_小心，因为|cRXP_ENEMY_Hirzek|r施放|r|T135805:0|t[闪电]|cRXP-WARN_（远程施放：造成约110自然伤害）并且是25级精英。他是一个人，但你可能想找个人来帮助你|r
    >>|cRXP_WARN_请小心，因为如果您杀死|cRXP_ENEMY_Hirzek|r并使|cRXX_ENEMY_Bound Elemental|r保持活动状态，|cRXD_ENEMY_Bound Elemental|r会有一条无限的皮带（它会一直跟着您，直到它被取消渲染或您杀死）|r
    .complete 78575,1 --Hirzek's Staff (1)
    .complete 78575,2 --Hirzek (1)
    .mob Hirzek
    .mob Bound Elemental
    .train 410101,1
    .xp <25,1
--XX Objective IDs (,1 and ,2) need testing
step
    #completewith next
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .train 410101,1
    .xp <25,1
step
    .goto Ashenvale,11.56,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_耶努萨克雷|r
    .turnin 78575 >>Turnin Hirzek
    .target Je'neu Sancrea
    .train 410101,1
    .xp <25,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[地盾符文]|r|cRXP_WARN_学习|r|T134596:0|t[雕刻长裤-地盾]
    .use 210746
    .itemcount 210746,1 --Rune of Earth Shield (1)
    .train 410101,1
    .xp <25,1
    --XX Rune Routing will never be good for this
step
    +祝贺您已获得当前可用的所有|T134419:0|t|cRXP_LOOT_[符文]|r。
    .train 410094,3 --Overload
    .train 410095,3 --Lava Burst
    .train 410096,3 --Dual Wield Specialization
    .train 410097,3 --Water Shield
    .train 410098,3 --Shield Mastery
    .train 410099,3 --Ancestral Guidance
    .train 410101,3 --Earth Shield
    .train 410104,3 --Lava Lash
    .train 410107,3 --Way of Earth
    .train 416057,3 --Healing Rain
    .train 425343,3 --Shamanistic Rage
    .train 425344,3 --Molten Blast
    .xp <25,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name Fire Nova - 35 (Azeroth)
#title Fire Nova

-- Fire Nova

step
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    .goto Desolace,56.6,21.8
    >>杀死|cRXP_ENEMY_Flameseer Dubelen|r。掠夺他获得|T13600:0|t|cRXD_Loot_腐蚀火图腾|r
    .collect 213451,1
    .mob Flameseer Dubelen
step
    .goto 1443,38.23,61,25,0
    .goto 1443,37.13,60.41,25,0
    .goto 1443,35.38,58.25,25,0
    .goto 1443,33.03,55.4,25,0
    .goto 1443,30.87,57.86,25,0
    .goto 1443,29.85,62.5,25,0
    .goto 1414,38.38,57.98,25,0
    .goto 1414,38.42,57.98,25,0
    .goto 1414,38.35,58.14,25,0
    .goto 1414,38.28,58.17,25,0
    .goto 1414,38.24,58.03,25,0
    .goto 1414,38.31,58.02,25,0
    .goto 1414,38.47,58.17,25,0
    .goto 1414,38.6,58.24,25,0
    .goto 1414,38.73,58.18,25,0
    .goto 1414,38.83,58.31,25,0
    .goto 1414,39.01,58.3,25,0
    .goto 1414,39.17,58.09,25,0
    .goto 1414,39.01,57.87,25,0
    .goto 1414,39.26,57.69
    >>点击橙色晶体中的|cRXP_PICK_Blue Crystal|r以收集|T134088:0|t[Teradras]之泪
    >>|cRXP_WARN_小心，因为这个区域的敌人是精英，他们可以眩晕|r|cFFFF0000您可能会多次死亡|r
    .collect 213552,1
step
    .goto 1414,38.45,57.84,25,0
    .goto 1414,38.64,57.69,25,0
    .goto 1414,38.52,57.52,25,0
    .goto 1414,38.43,57.43,25,0
    .goto 1443,29.65,57.19,25,0
    .goto 1443,27.72,57.51
    >>点击紫色水晶中的一个|cRXP_PICK_Blue Crystal|r以收集|T134088:0|t[Theradras之泪]
    >>|cRXP_WARN_小心，因为这个区域的敌人是精英，他们可以眩晕|r|cFFFF0000您可能会多次死亡|r
    .collect 213553,1
step
    #completewith next
    .zone Orgrimmar >>前往: |cRXP_PICK_奥格瑞玛|r
step
    .goto Orgrimmar,38.94,38.39
    .gossip 4047 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_佐尔·孤树|r
    -- .gossipoption --x insert id
    .target Zor Lonetree
step
    #completewith next
    .zone Thunder Bluff >>前往: |cRXP_PICK_雷霆崖|r
step
    .goto Thunder Bluff,78.61,28.55
    .gossip 5769 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大德鲁伊哈缪尔·符文图腾|r
    -- .gossipoption --x insert id
    .target Arch Druid Hamuul Runetotem
step
    -- .gossipoption --x insert id
    .goto Thunder Bluff,47.00,49.82
    .gossip 2995 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔尔|r
    .target Tal
step
    #completewith next
    .zone Moonglade >>前往: |cRXP_PICK_月光林地|r
step
    .goto Moonglade,36.178,41.798
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_守护者雷姆洛斯|r
    .collect 213558,1
    .target Keeper Remulos
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name Maelstrom武器-40（艾泽拉斯）
#title Maelstrom Weapon

-- Maelstrom Weapon

step
    .train 410100,1
    #completewith next
    .zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
step
    .train 410100,1
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.877,70.339
    .subzone 491,2 >>Enter Razorfen Kraul
step
    .train 410100,1
    >>杀死|cRXP_ENEMY_Charlga剃刀侧面|r。掠夺他以获得|T134944:0|t|cRXP-Loot_Tatured Note|r。使用它接受任务
    >>|cRXP_WARN_强烈建议为此组建一个由5名玩家组成的小组|r
    .collect 212748,1 --Tattered Note (1x)
    .accept 79358 >>接任务: |cRXP_WARN_破烂的笔记|r
    .mob Charlga Razorflank
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉乌·峭壁信使|r
    .turnin 79358 >>Turn in Tattered Note
    .accept 79360 >>Accept Elemental Aid
    .target Rau Cliffrunner
step
    .train 410100,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹迪亚|r
    >>|cRXP_BUY_从她那里买一个|r|T132793:0|t[Crystal Vial]|cRXP_Buy_|r
    .collect 8925,1 --Crystal Vial (1x)
    .target Jandia
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_Bath'rah the Windwatch|r
    .turnin 79360 >>Turn in Elemental Aid
    .accept 79361 >>Accept Power of da Wind
    .accept 79362 >>Accept Power of da Earth
    .accept 79363 >>Accept Power of da Water
    .target Bath'rah the Windwatcher
step
    .train 410100,1
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    .train 410100,1
    #loop
    .goto Desolace,48.0,27.2,0
    .goto Desolace,40.6,37.0,0
    .goto Desolace,50.8,42.0,0
    .goto Desolace,64.4,39.4,0
    .goto Desolace,68.4,48.4,0
    .goto Desolace,69.4,64.6,0
    .goto Desolace,58.8,65.6,0
    .waypoint Desolace,48.0,27.2,25,0
    .waypoint Desolace,40.6,37.0,25,0
    .waypoint Desolace,50.8,42.0,25,0
    .waypoint Desolace,64.4,39.4,25,0
    .waypoint Desolace,68.4,48.4,25,0
    .waypoint Desolace,69.4,64.6,25,0
    .waypoint Desolace,58.8,65.6,25,0
    >>在整个Desolace中杀死|cRXP_ENEMY_旋风元素|r。掠夺他们的|T132845:0|t|cRXP_Loot_漩涡精华|r
    .complete 79361,1 -- Power of da Wind
    .mob Whirlwind Ripper
    .mob Whirlwind Stormwalker
    .mob Whirlwind Shredder
step
    .train 410100,1
    #completewith next
    .zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
step
    .train 410100,1
    #loop
    .goto Dustwallow Marsh,42.6,30.0,0
    .goto Dustwallow Marsh,35.2,44.6,0
    .goto Dustwallow Marsh,42.6,62.0,0
    .goto Dustwallow Marsh,50.0,54.0,0
    .waypoint Dustwallow Marsh,42.6,30.0,25,0
    .waypoint Dustwallow Marsh,35.2,44.6,25,0
    .waypoint Dustwallow Marsh,42.6,62.0,25,0
    .waypoint Dustwallow Marsh,50.0,54.0,25,0
    >>在达斯瓦洛沼泽杀死|cRXP_ENEMY_Withervine Elements|r。掠夺他们的|T132846:0|t|cRXP_Loot_Rushing Essence |r
    .complete 79363,1 -- Power of da Water
    .mob Withervine Mire Beast
    .mob Withervine Rager
    .mob Withervine Bark Ripper
    .mob Withervine Creeper
step
    .train 410100,1
    #completewith next
    .zone Badlands >>前往: |cRXP_PICK_荒芜之地|r
step
    .train 410100,1
    #loop
    .goto Badlands,18.0,42.8,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    .waypoint Badlands,13.8,38.6,50,0
    .waypoint Badlands,21.2,45.8,50,0
    .waypoint Badlands,18.0,42.8,50,0
    >>杀死|cRXP_ENEMY_小岩石元素|r和|cRXX_ENEMY_Rock元素|r。掠夺它们的|T132846:0|t|cRXD_Loot_隆隆声本质|r
    .complete 79362,1 -- Power of da Earth
    .mob Rock Elemental
    .mob Lesser Rock Elemental
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_Bath'rah the Windwatch|r
    .turnin 79361 >>Turn in Power of da Wind
    .turnin 79362 >>Turn in Power of da Earth
    .turnin 79363 >>Turn in Power of da Water
    .accept 79364 >>Accept A Simple Container
    .turnin 79364 >>Turn in A Simple Container
    .accept 79365 >>Accept With Wind Beneath Your Wings
    .target Bath'rah the Windwatcher
step
    .train 410100,1
    #completewith next
    .zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉乌·峭壁信使|r
    .turnin 79365 -- With Wind Beneath Your Wings
    .accept 79366 --Calm Before the Storm
    .target Rau Cliffrunner
step
    .train 410100,1
    .gossip 4317 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奈瑟|r
    .target Nyse
step
    .train 410100,1
    >>杀死|cRXP_ENEMY_Ravaging Tempest|r。掠夺它的|cRXP_Loot_暴风之眼|r
    >>|cRXP_WARN_如果你在这个过程中死亡，请与|r|cRXP_FRIENDLY_Spirit治疗者|r|cRXP_WARN_交谈，将你传送到你的尸体上|r
    .collect 212792,1 --Eye of the Tempest (1x)
    .mob Dreath's Head Necromancer
    .mob Skeletal Servant
    .mob Ravaging Tempest
step
    .train 410100,1
    .vehicle >>与|cRXP_FRIENDLY_Freewind Post Wyvern|r交互
    .timer 9, Flight RP
step
    .train 410100,1
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉乌·峭壁信使|r
    .turnin 79366 --Calm Before the Storm
    .accept 79442 --Catching up
    .target Rau Cliffrunner
step
    .train 410100,1
    #completewith next
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r
step
    .train 410100,1
    .goto Alterac Mountains,80.499,66.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话|cRXP_FRIENDLY_Bath'rah the Windwatch|r
    .turnin 79442 --Catching up
    .target Bath'rah the Windwatcher
step
    .train 410100 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Storm|r]学习|T136032:0|t[Maelstrom Weapon]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name 电涌-30（阿拉蒂高地）
#title Power Surge

-- Power Surge

step
    .train 416054,1
    #completewith next
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step
    .train 416054,1
    .goto Arathi Highlands,31.91,41.15,50,0
    .goto Arathi Highlands,35.53,40.93,50,0
    .goto Arathi Highlands,35.51,44.26,50,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,31.08,43.68,12,0
    .goto Arathi Highlands,34.40,44.25,12,0
    .goto Arathi Highlands,35.51,44.26
    >>杀死|cRXP_ENEMY_Boulderfirs食人魔|r和|cRXD_ENEMY_ Boulderfist Brutes|r。掠夺它们一个|T134921:0|t|cRXP_Loot_[食人魔避雷针]|r
    .collect 213426,1 --Ogre Lightning Rod (1x)
    .mob Boulderfist Ogre
    .mob Boulderfist Enforcer
step
    .train 416054,1
    .goto Arathi Highlands,33.45,44.49
    .cast 434350 >>单击|cRXP_PICK_Soft Soil |r将|T134921:0|t|cRXP_LOOT_[避雷针]|r插入地面。
step
    .train 416054,1
    >>在|cRXP_ENEMY_Lightning Rod|r上投掷|T136048:0|t[闪电]10次
    >>杀死|cRXP_ENEMY_Tamkar|r或在他产卵时放风筝。掠夺他获得权力符文
    >>|cRXP_WARN_他会在30秒后自动死亡，所以你可以放风筝而不是杀死他|r
    .collect 213093,1 --Rune of Power (1x)
    .mob Lightning Rod
    .mob Tamkar
step
    .train 416054 >>|cRXP_WARN_使用|r|T134419:0|t[符文]|cRXP_WARN_学习|r|T134337:0|t[电涌]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#title Decoy Totem
#name 诱饵图腾-27（千针）

-- Decoy Totem

step
    .train 425882,1
    .zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
step
    .train 425882,1
    .goto Thousand Needles,46.21,51.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_詹迪亚|r
    >>|cRXP_BUY_从她那里购买|r|T132906:0|t[丝线]|cRXP_Buy_|r
    .collect 4291,1 --Silken Thread (1)
    .target Jandia
step
    .train 425882,1
    #loop
    .goto Thousand Needles,55.42,51.96,0
    .waypoint Thousand Needles,55.42,51.96,40,0
    .waypoint Thousand Needles,56.68,49.88,40,0
    .waypoint Thousand Needles,55.97,45.97,40,0
    .waypoint Thousand Needles,54.29,48.10,40,0
    >>杀死|cRXP_ENEMY_Cloud Serpent|r。掠夺它们的|cRXX_Loot_Cloud Serpent Fans|r
    .collect 213709,3 --Cloud Serpent Fang (3x)
    .mob Cloud Serpent
    .mob Venomous Cloud Serpent
    .mob Elder Cloud Serpent
step
    .train 425882,1
    #loop
    .goto Thousand Needles,27.65,49.47,0
    .goto Thousand Needles,26.55,55.77,0
    .waypoint Thousand Needles,27.65,49.47,40,0
    .waypoint Thousand Needles,27.16,51.62,15,0
    .waypoint Thousand Needles,26.29,52.79,15,0
    .waypoint Thousand Needles,27.23,54.04,15,0
    .waypoint Thousand Needles,26.55,55.77,15,0
    >>杀死cRXP_ENEMY_Screeching Harpies|r。掠夺它们的|cRXP_Loot_强壮的Harpy羽毛|r
    .collect 213701,10 --Strong Harpy Feather (10x)
    .mob Screeching Harpy
    .mob Screeching Roguefeather
    .mob Screeching Windcaller
step
    .train 425882,1
    .use 213709 >>|cRXP_WARN_使用您的|r|T133723:0|t[Cloud Serpent Fans]|cRXP_WARN_to create|r|T133291:0|t[Offering to the Wind Spirit]
    .collect 213737,1 --Offering to the Wind Spirit (1x)
step
    .goto Thousand Needles,31.47,36.71,30 >>前往乌云顶峰
step
    #completewith next
    .goto Thousand Needles,33.08,35.33,20,0
    .goto Thousand Needles,32.78,32.24,20,0
    .goto Thousand Needles,32.03,31.36,20,0
    .goto Thousand Needles,32.37,28.64,20,0
    .goto Thousand Needles,32.60,27.51,20,0
    .goto Thousand Needles,34.87,31.76,20,0
    .goto Thousand Needles,34.15,35.77,20,0
    .goto Thousand Needles,33.32,36.24,20 >>前往乌云顶峰
step
    .train 425882,1
    .goto Thousand Needles,39.44,41.98
    .aura 435218 >>|cRXP_WARN_使用|r|T133291:0|t【向风神献祭】|cRXP_WARN_ear the |r|cRXP-PICK_Altar of the Wind Spirit|r
    >>|cRXP_WARN_祭坛位于最东边顶峰的小屋后面|r
    .use 213737
step
    .goto Thousand Needles,40.43,43.29
    >>跳下去向风神表明你的信仰，以获得|T134419:0|t|cRXP_FRIENDLY_Rune of Decoys|r
    >>|cRXP_WARN_确保你的|r|T133291:0|t[Offering to the Wind Spirit]|cRXP_WARN_does not wear。它持续30秒|r
    .collect 213096,1 --Rune of Decoys (1x)
step
    .train 425882 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_FRIENDLY_诱饵之路|r|cRXP_WARN_学习|r|T134508:0|t[诱饵图腾]
    .use 213096
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#title Spirit of the Alpha
#name 阿尔法精神-27（千针）

-- Spirit of the Alpha

step
    .train 410103,1
    .zone Thousand Needles >>前往: |cRXP_PICK_千针石林|r
step
    #completewith next
    .train 410103,1
    .goto Thousand Needles,46.17,52.95,20 >>前往Freewind Post以南的下层新娘的起点
step
    .train 410103,1
    .goto Thousand Needles,46.82,53.52
    >>|cRXP_WARN_使用|r|T136095:0|t[Ghost Wolf]|cRXP_WARN_to小心地向下跳向|r|cRX_PICK_Weathered Cache|r
    >>单击|cRXP_PICK_Weathered Cache|r以掠夺|T136095:0|t|cRXP_FRIENDLY_Echo的Alpha |r
    .collect 206985,1
step
    .train 410103 >>|cRXP_WARN_使用|r|T136095:0|t|cRXP_FRIENDLY_Echo of the Alpha |r|cRXP _WARN_to learn|r|T408696:0|t[阿尔法之灵]
    .use 206985
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Rolling Thunder
#name 滚雷-41（塔纳里斯）

-- Rolling Thunder
-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
    .train 432236,1
step
    .train 432236,1
    .goto Tanaris,43.0,41.2
    .aura 446888,1 >>|cRXP_WARN_点击|r|cRXP_PICK_Odd图腾|r。这将使你变成一只鬼狼|cRXP_WARN_并使你受到的伤害增加50%|r
step
    .train 432236,1
    >>|cRXP_WARN_朝着另一个图腾奔跑，同时避开暴民|r为|T134419:0|t[|cRXP_FRIENDLY_Rune of Rolling Thunder|r]掠夺出现的箱子
    *|cRXP_WARN_You are receiving 50% additional damage. Be careful!|r. You can also pre-clear the mobs on the path to the other totem
    .goto Tanaris,45.6,37.8
    .collect 220613,1
step
    .itemcount 220613,1
    .use 220613
    .train 432236 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Rolling Thunder|r]|cRXP_WARN_学习|r|T136111:0|t[Rolling Thu雷]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Static Shock
#name 静态冲击-44（Feralas）

-- PERMOK: Needs better waypoints

step
    #completewith ChargedAir
    +|cRXP_WARN_你必须与另一个可以帮助你的玩家组队才能获得此符文|r
step
    #completewith next
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
    .train 432238,1
step
    .train 432238,1
    .goto Feralas,60.0,66.8
    .aura 447259 >>点击|cRXP_PICK_带电图腾|r获得|T136075:0|t[带电空气]buff
step
    #label ChargedAir
    .train 432238,1
    >>|cRXP_WARN_靠近图腾并用闪电伤害（如闪电盾牌）杀死周围的|cRXP_ENEMY_Gordunni食人魔|r，直到|cRXX_ENEMY_Whirling Tempest|r产生。
    >>杀死|cRXP_ENEMY_Whirling Tempest|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Static Shock|r]掠夺它
    *|cRXP_WARN_All players of the party have to stay in range of the totem|r
    .goto Feralas,60.0,66.8
    .collect 220614,1
    .mob Whirling Tempest
    .mob Gordunni Warlock
    .mob Gordunni Shaman
    .mob Gordunni Mauler
step
    .itemcount 220614,1
    .use 220614
    .train 432238 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_静态冲击调整|r]|cRXP-WARN_学习|r|T237587:0|t[静态冲击]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Helmet
#title Tidal Waves
#name 潮汐波-42（Feralas）

-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
    .train 432234,1
step
    .train 432234,1
    >>单击帐篷后面的|cRXP_PICK_Old Crate|r以掠夺|T134239:0|t[旧钥匙]
    .goto Feralas,76.6,48.0
    .collect 221497,1
step
    .train 432234,1
    >>点击海底的|cRXP_PICK_Old Chest|r，掠夺|T134419:0|t[|cRXP_FRIENDLY_Rune of Tidal Wave|r]
    *|cRXP_WARN_Be careful! This will summon FOUR |cRXP_ENEMY_Simmering Elementals|r (lvl 42, Frost immune)|r
    .goto Feralas,79.2,49.4
    .collect 220612,1
    .mob Simmering Elemental
step
    .itemcount 220612,1
    .use 220612
    .train 432234 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Tidal Wave|r]|cRXP _WARN_to learn|r|T237590:0|t[潮汐]
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#title Tidal Waves
#name 潮汐波-45（艾泽拉斯）

--x shiek: needs better coordinates
step
    #completewith next
    .zone Tanaris >>前往: |cRXP_PICK_塔纳利斯|r
    .train 432241,1
step
    #loop
    .goto Tanaris,51.6,44.2,40,0
    .goto Tanaris,51.2,52.0,40,0
    .goto Tanaris,41.0,48.6,40,0
    .goto Tanaris,41.8,44.0,40,0
    >>杀死|cRXP_ENEMY_Blisterpaw海娜|r、|cRXP_ENEMY_Land Rager|r和|cRXD_ENEMY_Glasshede Gazer|r掠夺它们|cRXP_Loot_|T134327:0|t混乱的萨满笔记|r
    .collect 221352,1 --1/1 Smudged Shaman's Notes
    .mob Blisterpaw Hyena
    .mob Land Rager
    .mob Glasshide Gazer
    .train 432241,1
step
    .goto Tanaris,62,64
    >>点击|cRXP_PICK_|T134327:0|t混乱的萨满笔记|r开始任务。
    .accept 82072,1 >>Accept Purging Earth
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Tanaris,62,64
    .cast 446581 >>在腐蚀土图腾附近使用|T134743:0|t[鼠土萨普塔]。
    .use 221349
    .train 432241,1
step
    .goto Tanaris,62.0,62.6
    >>Kill |cRXP_ENEMY_Corrupt Moderate Manifestation of Earth|r then >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Earth.|r
    .turnin 82072 >>Turn in Purging Earth
    .accept 82075 >>Accept Answering Earth's Call
    .mob Corrupt Moderate Manifestation of Earth
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #completewith next
    .zone Azshara >>前往: |cRXP_PICK_艾萨拉|r
    .train 432241,1
step
    #loop
    .goto Azshara,19.4,64.0,20,0
    .goto Azshara,21.2,60.8,20,0
    .goto Azshara,21.0,60.0,20,0
    >>杀死|cRXP_ENEMY_Haldarr Satyr|r、|cRXD_ENEMY_Haldarr Trickster |r和|cRXP_ENEMY_Halldarr Felwadded|r掠夺它们以获取|cRXP_Loot_|T134331:0|t被水淹没的萨满笔记|r
    .collect 221351,1 --1/1 Waterlogged Shaman's Notes
    .mob Haldarr Satyr
    .mob Haldarr Trickster
    .mob Haldarr Felsworn
    .train 432241,1
step
    .goto Azshara,14,49
    >>点击|cRXP_PICK_|T134331:0|t水淹萨满笔记|r开始任务。
    .accept 82073,1 >>Accept Cleansing Water
    .use 221352
    .train 432241,1
step
    .isOnQuest 82073
    .goto Azshara,14,49
    .cast 446581 >>在腐蚀的水图腾附近使用|T134743:0|t[鼠土Sapta]。
    .use 221348
    .train 432241,1
step
    .goto Azshara,15.0,49.8
    >>Kill |cRXP_ENEMY_Corrupt Moderate Manifestation of Water|r then >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Water.|r
    .turnin 82073 >>Turn in Cleansing Water
    .accept 82076 >>Accept Answering Water's Call
    .mob Corrupt Moderate Manifestation of Water
    .target Moderate Manifestation of Water
    .train 432241,1
step
    #completewith next
    .zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
    .train 432241,1
step
    #loop
    .goto The Hinterlands,48.8,53.0,40,0
    .goto The Hinterlands,47.6,40.8,40,0
    .goto The Hinterlands,58.2,41.8,40,0
    >>杀死|cRXP_ENEMY_Green污泥|r和|cRXX_ENEMY_Jade Ooze|r掠夺它们以获取|cRXP_Loot_|T134332:0|t萨满笔记|r
    .collect 220379,1 --1/1 Torn Shaman's Notes
    .mob Green Sludge
    .mob Jade Ooze
    .train 432241,1
step
    .goto The Hinterlands,51,46
    >>点击|cRXP_PICK_|T134332:0|t萨满笔记|r开始任务。
    .accept 81960,1 >>Accept Clarifying Air
    .use 220379
    .train 432241,1
step
    .isOnQuest 82072
    .goto The Hinterlands,51,46
    .cast 446581 >>在腐蚀的空气图腾附近使用|T134743:0|t[土鼠Sapta]。
    .use 221349
    .train 432241,1
step
    .goto The Hinterlands,51.2,47.0
    >>Kill |cRXP_ENEMY_Corrupt Moderate Manifestation of Air|r then >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Earth.|r
    .turnin 81960 >>Turn in Clarifying Air
    .accept 81968 >>Accept Answering Air's Call
    .mob Corrupt Moderate Manifestation of Air
    .target Moderate Manifestation of Air
    .train 432241,1
step
    #completewith next
    .zone Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
    .train 432241,1
step
    #loop
    .goto Searing Gorge,52.0,35.4,40,0
    .goto Searing Gorge,42.4,38.6,40,0
    .goto Searing Gorge,32.8,43.0,40,0
    .goto Searing Gorge,28.8,44.4,40,0
    .goto Searing Gorge,30.6,64.6,40,0
    .goto Searing Gorge,31.6,73.8,40,0
    >>杀死|cRXP_ENEMY_Magma元素|r和|cRXP_ENEMY_Inferno元素|r掠夺它们|cRXP_Loot_|T134327:0|t被骚扰的萨满笔记|r
    .collect 221350,1 --1/1 Charred Shaman's Notes
    .mob Inferno Elemental
    .mob Magma Elemental
    .train 432241,1
step
    .goto Searing Gorge,24,72
    >>点击|cRXP_PICK_|T134329:0|t骚扰萨满笔记|r开始任务。
    .accept 82071,1 >>Accept Purifying Fire
    .use 221352
    .train 432241,1
step
    .isOnQuest 82072
    .goto Searing Gorge,24,72
    .cast 446581 >>在腐蚀的火图腾附近使用|T134743:0|t[土鼠Sapta]。
    .use 221349
    .train 432241,1
step
    .goto Searing Gorge,24.0,72.4
    >>Kill |cRXP_ENEMY_Corrupt Moderate Manifestation of Fire|r then >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Fire.|r
    .turnin 82071 >>Turn in Purifying Fire
    .accept 82074 >>Accept Answering Fire's Call
    .mob Corrupt Moderate Manifestation of Fire
    .target Moderate Manifestation of Fire
    .train 432241,1
step
    #completewith next
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>杀死|cRXP_ENEMY_Sea Spray |r和|cRXX_ENEMY_ Sea Elemental|r掠夺它们|cRXP_Loot_|T132849:0|t元素本质|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446803 >>使用|T134118:0|t[地球碎片]
    .use 221355
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Earth.|r
    .turnin 82075 >>Answering Earth's Call
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>杀死|cRXP_ENEMY_Sea Spray |r和|cRXX_ENEMY_ Sea Elemental|r掠夺它们|cRXP_Loot_|T132849:0|t元素本质|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446802 >>使用|T134130:0|t[火焰碎片]
    .use 221353
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Earth.|r
    .turnin 82075 >>Answering Earth's Call
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,50.2,51.4,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,37.4,33.0,20,0
    >>杀死|cRXP_ENEMY_Sea Spray |r和|cRXX_ENEMY_ Sea Elemental|r掠夺它们|cRXP_Loot_|T132849:0|t元素本质|r
    .collect 220510,3
    .train 432241,1
step
    .cast 445748 >>使用|T134133:0|t[空气碎片]
    .use 220375
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Earth.|r
    .turnin 82075 >>Answering Earth's Call
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    #loop
    .goto Feralas,37.4,33.0,20,0
    .goto Feralas,41.0,37.8,20,0
    .goto Feralas,44.8,46.2,20,0
    .goto Feralas,50.2,51.4,20,0
    >>杀死|cRXP_ENEMY_Sea Spray |r和|cRXX_ENEMY_ Sea Elemental|r掠夺它们|cRXP_Loot_|T132849:0|t元素本质|r
    .collect 220510,3
    .train 432241,1
step
    .cast 446804 >>使用|T134089:0|t[水的碎片]
    .use 221354
    .train 432241,1
step
    .goto Feralas,36.0,32.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moderate Manifestation of Earth.|r
    .turnin 82075 >>Answering Earth's Call
    .target Moderate Manifestation of Earth
    .train 432241,1
step
    >>杀死|cRXP_ENEMY_黄昏黑暗萨满|r抢劫他|cRXP_Loot_|cRXT_FRIENDLY_|T134419:0|t过度充电的调整|r|r
    .collect 220616,1 --1/1 Rune of Overcharged
    .train 432241,1
step
    .train 432241 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Overcharged|r]|cRXP-WARN_to train|r|T132213:0|t[Overcharged]
]])
