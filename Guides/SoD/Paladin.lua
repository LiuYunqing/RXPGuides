RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 十字军打击-4（埃尔温森林）
#title Crusader Strike
#next 灵感典范-6（Elwynn Forest）

--VV Not sure if you want to gate CS in Elwynn for humans only/DunM for dwarves only

step
    +|cRXP_WARN_你必须至少达到4级才能获得|r|T133816:0|t[雕刻手套-十字军打击]|cRXP_WARN_因为这是训练的级别要求|r|T135959:0|t[判断]
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-十字军打击]之前，您需要升级更多
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Elwynn1
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
    .train 410002,1
    .xp <4,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,48.35,41.97,15,0
    .goto Elwynn Forest,48.87,41.75,12,0
    .goto Elwynn Forest,49.61,41.87,12,0
    .goto Elwynn Forest,50.433,42.124,10 >>朝|cRXP_FRIENDLY_Brother Sammuel|r内侧行驶
    .train 410002,1
    .xp <4,1
step
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_萨缪尔修士|r
    .train 20271 >>列车|T135959:0|t[判断]
    .target Brother Sammuel
    .train 410002,1
    .xp <4,1
step
    #label LibramS
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>杀死|cRXP_ENEMY_Defias Thugs |r。为|T134916:0|t|cRXP_Loot_[审判自由]|r掠夺它们
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Defias Thug
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >>|cRXP_WARN_装备|r|T134916:0|t|cRXP_LOOT_[审判自由]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
--XX  .itemStat 18,QUALITY,<2 would bug it if someone has a Libram in the slot already
    .train 410002,1
    .xp <4,1
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    .aura 408828 >>|cRXP_WARN_施放|r|T135959:0|t[判断]|cRXP_WARN_10次获得|r|T136116:0|t[启发]|cRX P_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_使用|r|T134916:0|t|cRXP_LOOT_[审判自由]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-十字军打击]
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 十字军打击-4（邓·莫洛）
#title Crusader Strike
#next 灵感典范-6（邓·莫洛）

step
    +|cRXP_WARN_你必须至少达到4级才能获得|r|T133816:0|t[雕刻手套-十字军打击]|cRXP_WARN_因为这是训练的级别要求|r|T135959:0|t[判断]
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-十字军打击]之前，您需要升级更多
    .train 410002,1
    .xp >4,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
    .train 410002,1
    .xp <4,1
step
    #completewith next
    #requires Dun1
    .goto Dun Morogh,28.83,69.07,12,0
    .goto Dun Morogh,28.83,68.70,10,0
    .goto Dun Morogh,28.93,68.35,10,0
    .goto Dun Morogh,28.833,68.332,10 >>前往|cRXP_FRIENDLY_Bromos Grummner|r内部
    .train 410002,1
    .xp <4,1
step
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布罗莫斯·格鲁诺尔|r
    .train 20271 >>列车|T135959:0|t[判断]
    .target Bromos Grummner
    .train 410002,1
    .xp <4,1
step
    #label LibramS
    #loop
    .goto Dun Morogh,26.59,79.16,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,20.74,75.69,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    >>杀死|cRXP_ENEMY_Frostmane Troll Whelps|r。为|T134916:0|t|cRXP-Loot_[审判自由]|r掠夺它们
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Frostmane Troll Whelp
    .train 410002,1
    .xp <4,1
step
    .equip 18,205420 >>|cRXP_WARN_装备|r|T134916:0|t|cRXP_LOOT_[审判自由]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
    .train 410002,1
    .xp <4,1
step
    #loop
    .goto Dun Morogh,26.59,79.16,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,20.74,75.69,50,0
    .goto Dun Morogh,22.60,79.50,50,0
    .goto Dun Morogh,23.39,80.31,50,0
    .aura 408828 >>|cRXP_WARN_施放|r|T135959:0|t[判断]|cRXP_WARN_10次获得|r|T136116:0|t[启发]|cRX P_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 410002,1
    .xp <4,1
step
    .cast 409920 >>|cRXP_WARN_使用|r|T134916:0|t|cRXP_LOOT_[审判自由]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-十字军打击]
    .use 205420
    .aura -408828
    .train 410002,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 清算之手-14（莫丹湖）
#title Hand of Reckoning
#next 灵感典范-6（Elwynn Forest）


step
    +|cRXP_WARN_您至少应达到14级才能获得|r|T133816:0|t[雕刻手套-清算之手]|cRXP_WARN_in Loch Modan|r
    >>|cRXP_WARN_您必须至少达到8级，因为这是装备|r|T134916:0|t|cRXP_LOOT_[Libram of Justice]的级别要求|r
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-清算之手]之前，您需要升级更多
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_您至少应达到14级才能获得|r|T133816:0|t[雕刻手套-清算之手]|cRXP_WARN_in Loch Modan|r
    .train 410001,1
    .xp <8,1
    .xp >14,1
step
    #completewith next
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .train 410001,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r
    .train 853 >>火车|T135963:0|t[正义之锤]
    .target Brandur Ironhammer
    .train 410001,1
    .xp <8,1
step
    #completewith LibramS
    #label Loch1
    .zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
    .train 410001,1
    .xp <8,1
step
    #completewith LibramS
    #requires Loch1
    #label Cave1
    .goto Loch Modan,28.75,64.63,40,0
    .goto Loch Modan,35.35,83.51,20,0
    .goto Loch Modan,34.89,84.38,30 >>前往碎石洞
    .train 410001,1
    .xp <8,1
step
    #completewith next
    #requires Cave1
    .goto Loch Modan,34.24,85.59,12,0
    .goto Loch Modan,35.90,87.93,12,0
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,36.75,91.43,8 >>前往水下洞穴内的|cRXP_PICK_沉没文物馆|r
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,70.96,73.08
    >>在水下打开|cRXP_PICK_沉没文物库|r。为|T134916:0|t|cRXP_Loot_[Libram of Justice]|r掠夺它
    .collect 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    .equip 18,205420 >>|cRXP_WARN_装备|r|T134916:0|t|cRXP_LOOT_[正义的自由]|r
    .use 208851
    .itemcount 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .aura 408828 >>|cRXP_WARN_攻击敌人至低生命值。施法|r|T135963:0|t[正义之锤]|cRXP_WARN_on他们，然后在他们昏迷10次的时候杀死他们，获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <11,1
step
    .goto Loch Modan,37.27,89.56,15,0
    .goto Loch Modan,35.90,87.93,15,0
    .goto Loch Modan,34.24,85.59,15,0
    .goto Loch Modan,34.89,84.38,30 >>离开洞穴
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
step
    #loop
    .goto Loch Modan,31.93,79.12,40,0
    .goto Loch Modan,31.02,80.64,40,0
    .goto Loch Modan,31.56,76.89,40,0
    .goto Loch Modan,30.90,74.35,40,0
    .goto Loch Modan,29.75,72.57,40,0
    .goto Loch Modan,33.43,70.60,40,0
    .goto Loch Modan,35.36,71.21,40,0
    .goto Loch Modan,32.86,79.70,40,0
    .aura 408828 >>|cRXP_WARN_攻击敌人至低生命值。施法|r|T135963:0|t[正义之锤]|cRXP_WARN_on他们，然后在他们昏迷10次的时候杀死他们，获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
    .xp >16,1
step
    #loop
    .goto Loch Modan,35.66,83.64,30,0
    .goto Loch Modan,36.86,84.93,30,0
    .goto Loch Modan,36.50,80.01,30,0
    .goto Loch Modan,33.96,81.82,30,0
    .aura 408828 >>|cRXP_WARN_攻击敌人至低生命值。施法|r|T135963:0|t[正义之锤]|cRXP_WARN_on他们，然后在他们昏迷10次的时候杀死他们，获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Stonesplinter Skullthumper
    .mob Stonesplinter Seer
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <16,1
    .xp >19,1
step
    #loop
    .goto Loch Modan,69.61,67.92,40,0
    .goto Loch Modan,72.12,68.29,40,0
    .goto Loch Modan,72.59,61.75,40,0
    .goto Loch Modan,70.33,59.84,40,0
    .goto Loch Modan,67.37,59.88,40,0
    .goto Loch Modan,67.77,62.99,40,0
    .goto Loch Modan,70.41,62.93,40,0
    .goto Loch Modan,69.69,65.52,40,0
    .aura 408828 >>|cRXP_WARN_攻击敌人至低生命值。施法|r|T135963:0|t[正义之锤]|cRXP_WARN_on他们，然后在他们昏迷10次的时候杀死他们，获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Stonesplinter Geomancer
    .mob Stonesplinter Digger
    .mob Berserk Trogg
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <20,1
    .xp >22,1
step
    #completewith next
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
    .itemStat 18,QUALITY,2
    .aura 408828
    .train 410001,1
    .xp <22,1
step
    #loop
    .goto Wetlands,15.96,47.28,50,0
    .goto Wetlands,13.69,41.37,50,0
    .goto Wetlands,13.59,38.04,50,0
    .goto Wetlands,15.30,38.81,50,0
    .goto Wetlands,18.45,39.37,50,0
    .goto Wetlands,19.24,41.29,50,0
    .goto Wetlands,13.69,41.37,50,0
    .aura 408828 >>|cRXP_WARN_攻击敌人至低生命值。施法|r|T135963:0|t[正义之锤]|cRXP_WARN_on他们，然后在他们昏迷10次的时候杀死他们，获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Young Wetlands Crocolisk
    .mob Fen Dweller
    .mob Bluegill Murloc
    .mob Bluegill Forager
    .mob Bluegill Puddlejumper
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_使用|r|T134916:0|t|cRXP_LOOT_[司法自由]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-清算之手]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves
#name 清算之手-20（Westfall）
#title Hand of Reckoning
#next Exorcist - 24 (Duskwood)


step
    +|cRXP_WARN_你应该至少达到20级才能获得|r|T133816:0|t[雕刻手套-清算之手]|cRXP_WARN_in Westfall|r
    >>|cRXP_WARN_您必须至少达到8级，因为这是装备|r|T134916:0|t|cRXP_LOOT_[Libram of Justice]的级别要求|r
    >>|cRXP_WARN_在尝试获得|r|T133816:0|t[雕刻手套-清算之手]之前，您需要升级更多
    .train 410001,1
    .xp >8,1
step
    +|cRXP_WARN_你应该至少达到20级才能获得|r|T133816:0|t[雕刻手套-清算之手]|cRXP_WARN_in Westfall|r
-- >>|cRXP_WARN_强烈建议您在莫丹湖购买，因为它更容易获得，而且可以在较低的水平上获得|r
    .train 410001,1
    .xp <8,1
    .xp >20,1
step << skip
    #completewith LibramS
    +|cRXP_WARN_强烈建议您在莫丹湖购买|T133816:0|t[雕刻手套-清算之手]，因为这要容易得多|r
    .train 410001,1
    .xp <20,1
step
    #completewith next
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 410001,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .train 853 >>火车|T135963:0|t[正义之锤]
    .target Arthur the Faithful
    .train 410001,1
    .xp <8,1
step
    #completewith next
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
    .train 410001,1
    .xp <8,1
step
    #label LibramS
    .goto Westfall,69.71,73.41,30,0
    .goto Westfall,70.96,73.08,30,0
    .goto Duskwood,12.17,74.76,30,0
    .goto Westfall,70.96,73.08
    >>杀死|cRXP_ENEMY_Defias无人机|r。为|T134916:0|t|cRXP-Loot_[正义的自由]|r掠夺它们
    >>|cRXP_WARN_当|cRXP_ENEMY_Defias无人机|r两人一组巡逻时要小心|r
    >>|cRXP_WARN_避开|cRXP_ENEMY_畸形的Defias无人机|r，因为他打得很重|r
    .collect 208851,1 --Libram of Justice (1)
    .mob Defias Drone
    .train 410001,1
    .xp <8,1
--XX Venture Co. Drones drop it too?
step
    .equip 18,205420 >>|cRXP_WARN_装备|r|T134916:0|t|cRXP_LOOT_[正义的自由]|r
    .use 208851
    .itemcount 208851,1 --Libram of Justice (1)
    .train 410001,1
    .xp <8,1
step
    #loop
    .goto Elwynn Forest,24.50,93.99,50,0
    .goto Elwynn Forest,26.07,91.92,50,0
    .goto Elwynn Forest,27.85,88.18,50,0
    .goto Elwynn Forest,27.56,86.21,50,0
    .goto Elwynn Forest,26.43,86.81,50,0
    .goto Elwynn Forest,25.18,89.20,50,0
    .aura 408828 >>|cRXP_WARN_攻击敌人至低生命值。施法|r|T135963:0|t[正义之锤]|cRXP_WARN_on他们，然后在他们昏迷10次的时候杀死他们，获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <8,1
    .xp >15,1
step
    #loop
    .goto Westfall,69.71,73.41,40,0
    .goto Westfall,64.54,60.81,40,0
    .goto Westfall,62.62,58.29,40,0
    .goto Westfall,60.87,58.71,40,0
    .goto Westfall,58.71,61.21,40,0
    .goto Westfall,61.43,62.17,40,0
    .aura 408828 >>|cRXP_WARN_攻击敌人至低生命值。施法|r|T135963:0|t[正义之锤]|cRXP_WARN_on他们，然后在他们昏迷10次的时候杀死他们，获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    .mob Great Goretusk
    .mob Harvest Reaper
    .mob Greater Fleshripper
    .mob Defias Knuckleduster
    .mob Defias Highwayman
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <15,1
    .xp >22,1
step
    .goto Duskwood,15.76,72.72,50,0
    .goto Duskwood,12.65,69.42,50,0
    .goto Duskwood,10.42,66.27,50,0
    .goto Duskwood,10.30,59.05,50,0
    .goto Duskwood,10.75,52.37,50,0
    .goto Duskwood,8.83,45.35,50,0
    .goto Duskwood,8.75,40.20,50,0
    .goto Duskwood,10.99,34.29,50,0
    .goto Duskwood,11.07,29.40,50,0
    .goto Duskwood,14.69,26.22,50,0
    .goto Duskwood,20.93,25.13,50,0
    .goto Duskwood,15.76,72.72,50,0
    .goto Duskwood,14.69,26.22
    .aura 408828 >>|cRXP_WARN_攻击敌人至低生命值。施法|r|T135963:0|t[正义之锤]|cRXP_WARN_on他们，然后在他们昏迷10次的时候杀死他们，获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    .mob Venom Web Spider
    .mob Pygmy Venom Web Spider
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .mob Green Recluse
    .itemStat 18,QUALITY,2
    .train 410001,1
    .xp <22,1
step
    .cast 421508 >>|cRXP_WARN_使用|r|T134916:0|t|cRXP_LOOT_[司法自由]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-清算之手]
    .aura -408828
    .use 208851
    .train 410001,1
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 洛丹伦之角-4（莫丹湖）
#title Horn of Lordaeron
#next 清算之手-14（莫丹湖）

step
    +|cRXP_WARN_你必须至少达到4级才能获得|r|T133815:0|t[铭刻胸甲-洛丹伦之角]|cRXP_WARN_因为这是训练的等级要求|r|T135906:0|t[力量祝福]
    >>|cRXP_WARN_在尝试获取|r|T133815:0|t[铭刻胸甲-洛丹伦之角]之前，您需要升级更多
--  >>|cRXP_WARN_I不建议使用|r|T133815:0|t[铭刻胸甲-洛丹伦之角]|cRXP_WARN_over|r|T133815:0| t[雕刻胸-神圣风暴]|cRXP_WARN_or|r|t|T133815-10|t]雕刻胸-殉道之印
    .train 425618,1
    .xp >4,1
step
    #completewith next
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .train 425618,1
    .xp <4,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r
    .train 19740 >>火车|T135906:0|t[力量的祝福]
    .target Brandur Ironhammer
    .train 425618,1
    .xp <4,1
step
    #completewith next
    #label Loch1
    .zone Loch Modan >>前往: |cRXP_PICK_洛克莫丹|r
    .train 425618,1
    .xp <4,1
step
    #completewith LibramLoot
    #requires Loch1
    #label Inn1
    .goto Loch Modan,35.26,47.76,10 >>走进Thelsamar旅馆
    .train 425618,1
    .xp <4,1
step
    #completewith next
    #requires Inn1
    .goto Loch Modan,35.43,48.29,8,0
    .goto Loch Modan,35.12,48.98,8,0
    .goto Loch Modan,35.13,49.34,8,0
    .goto Loch Modan,35.19,49.95,8,0
    .goto Loch Modan,35.52,49.40,8,0
    >>进入底层最东边的房间
    .goto Loch Modan,35.80,49.57,8 >>前往|T134916:0|t|cRXP_LOOT_[祝福之库]|r
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,35.80,49.57
    >>掠夺桌上的|T134916:0|t|cRXP_Loot_[Libam of Blessings]|r
    .collect 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >>|cRXP_WARN_装备|r|T134916:0|t|cRXP_LOOT_[祝福之库]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_铸造|r|T135906:0|t【力量的祝福】|cRXP_WARN_or |r|T135970:0|t（智慧的祝福）|cRXP-WARN_on 5名独特的友方玩家（包括你自己）获得|r|T236116:0|t【灵感】|cRX P_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Loch Modan,34.90,47.80
    .aura 408828 >>|cRXP_WARN_铸造|r|T135906:0|t[力量的祝福]|cRXP_WARN_on 5名独特的友方玩家（包括你自己）获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp >14,1
    .xp <4,1
step
    .cast 421508 >>|cRXP_WARN_使用|r|T134916:0|t[Libram of Blessings]|cRXP_WARN_to learn|r|T133815:0|t[铭刻胸甲-洛丹伦之角]
    .aura -408828
    .use 208849
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 洛丹伦之角-12（西降）
#title Horn of Lordaeron
#next 清算之手-20（Westfall）


step
    +|cRXP_WARN_你应该至少达到12级才能获得|r|T133815:0|t[铭刻胸甲-洛丹伦之角]|cRXP_WARN_in Westfall|r
    >>|cRXP_WARN_你必须至少达到4级，因为这是训练的级别要求|r|T135906:0|t[力量的祝福]
    >>|cRXP_WARN_在尝试获取|r|T133815:0|t[铭刻胸甲-洛丹伦之角]之前，您需要升级更多
--  >>|cRXP_WARN_I不建议使用|r|T133815:0|t[铭刻胸甲-洛丹伦之角]|cRXP_WARN_over|r|T133815:0| t[雕刻胸-神圣风暴]|cRXP_WARN_or|r|t|T133815-10|t]雕刻胸-殉道之印
    .train 425618,1
    .xp >4,1
step
    +|cRXP_WARN_你应该至少达到12级才能获得|r|T133815:0|t[铭刻胸甲-洛丹伦之角]|cRXP_WARN_in Westfall|r
--  >>|cRXP_WARN_强烈建议您在莫丹湖购买，因为这要容易得多|r
--  >>|cRXP_WARN_I不建议使用|r|T133815:0|t[铭刻胸甲-洛丹伦之角]|cRXP_WARN_over|r|T133815:0| t[雕刻胸-神圣风暴]|cRXP_WARN_or|r|t|T133815-10|t]雕刻胸-殉道之印
    .train 425618,1
    .xp <4,1
    .xp >12,1
step
    #completewith next
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 425618,1
    .xp <4,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .train 20271 >>列车|T135959:0|t[判断]
    .train 19740 >>火车|T135906:0|t[力量的祝福]
    .target Arthur the Faithful
    .train 425618,1
    .xp <4,1
step << skip
    #completewith next
    >>|cRXP_WARN_强烈建议您将|r|T134229:0|t[洛丹伦之角符文]|cRXP_WARN_in改为在莫丹湖使用，因为这要容易得多|r
    >>|cRXP_WARN_I不建议使用|r|T134229:0|t[洛丹伦之角符文]|cRXP_ARN_over |r|T236250:0|t[神圣风暴符文]| cRXP_WARN_or |r|T135961:0|t][殉道之印符文]
    .train 425618,1
    .xp <12,1
step
    #completewith next
    .zone Westfall >>前往: |cRXP_PICK_西部荒野|r
    .train 425618,1
    .xp <4,1
step
    #label LibramS
    .goto Westfall,44.45,25.76,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,45.35,21.20,0 --Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,31.82,43.99,0 --Rough Spawnpoint 4 (Quarry Outside)
    .goto Westfall,29.65,46.18,0 --Quarry Spawnpoint 5 (Quarry Inside)
    .goto Westfall,44.45,25.76,40,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,44.72,23.57,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,45.39,21.67,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,44.98,22.33,12,0 --Travel to Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,45.35,21.20,12,0 --Jango Spawnpoint 2 (Jango Inside)
    .goto Westfall,44.68,19.94,12,0 --Travel to Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,45.65,18.24,12,0 --Travel to Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,46.28,18.86,12,0 --Jango Spawnpoint 3 (Jango Inside)
    .goto Westfall,44.45,25.76,40,0 --Rough Spawnpoint 1 (Jango Outside)
    .goto Westfall,31.82,43.99,40,0 --Rough Spawnpoint 4 (Quarry Outside)
    .goto Westfall,30.42,45.81,12,0 --Travel to Quarry Spawnpoint 5 (Quarry Inside)
    .goto Westfall,29.65,46.18,15,0 --Quarry Spawnpoint 5 (Quarry Inside)
--  .goto Westfall,30.54,48.34,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
--  .goto Westfall,30.14,49.51,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
--   .goto Westfall,28.88,48.92,15,0 --Travel to Quarry Spawnpoint 6 (Quarry Inside, Unconfirmed)
    .goto Westfall,29.65,46.18 --Quarry Spawnpoint 5 (Quarry Inside)
    >>|cRXP_WARN_攻击|cRXP_ENEMY_Undying Laborer|r。当它倒下时，使用|r|T135920:0|t[神圣伤害]|cRXP_WARN_如|r|T135959:0|t[判断]|cRXP_WARN_杀死它（你有10秒的时间）。为|r|T134916:0|t|cRXP_Loot_[祝福之库]掠夺它|r
    >>|cRXP_WARN_|cRXP_ENEMY_Undying Laborer|r表现为精英，但拥有普通暴徒的健康和伤害|r
    >>|cRXP_WARN_|cRXP_ENEMY_Undinging Laborer|r股份在整个黄金海岸采石场和Jangolode矿场产生。如果你在一个地方找不到，就去另一个地方试试|r
    .collect 208849,1 --Libram of Blessings (1)
    .unitscan Undying Laborer
    .train 425618,1
    .xp <4,1
step
    .equip 18,208849 >>|cRXP_WARN_装备|r|T134916:0|t|cRXP_LOOT_[祝福之库]|r
    .use 208849
    .itemcount 208849,1 --Libram of Blessings (1)
    .train 425618,1
    .xp <4,1
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_铸造|r|T135906:0|t【力量的祝福】|cRXP_WARN_or |r|T135970:0|t（智慧的祝福）|cRXP-WARN_on 5名独特的友方玩家（包括你自己）获得|r|T236116:0|t【灵感】|cRX P_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <14,1
--XX Doesn't work on NPCs
step
    .goto Westfall,56.09,47.67,20,0
    .goto Westfall,56.55,52.64
    .aura 408828 >>|cRXP_WARN_铸造|r|T135906:0|t[力量的祝福]|cRXP_WARN_on 5名独特的友方玩家（包括你自己）获得|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    .itemStat 18,QUALITY,2
    .train 425618,1
    .xp <4,1
    .xp >14,1
step
    .cast 421508 >>|cRXP_WARN_使用|r|T134916:0|t|cRXP_LOOT_[祝福之库]|r|cRXP_WARN_学习|r|T133815:0|t[铭刻胸甲-洛丹伦之角]
    .use 208849
    .aura -408828
    .train 425618,1
    .xp <4,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 安吉斯-8（埃尔温森林）
#title Aegis
#next Rebuke - 10 (Stormwind)

step
    +|cRXP_WARN_你必须至少达到8级才能获得|r|T133815:0|t[雕刻胸甲-宙斯盾]|cRXP_WARN_因为这是训练的级别要求|r|T135949:0|t[净化]
    >>|cRXP_WARN_在尝试获取|r|T133815:0|t[雕刻胸甲-宙斯盾]之前，您需要升级更多
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 425619,1
    .xp <8,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .train 1152 >>列车|T135949:0|t[净化]
    .target Arthur the Faithful
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
    .train 425619,1
    .xp <8,1
step
    #completewith next
    #requires Elwynn1
    #label Cave1
    .goto Elwynn Forest,61.59,53.51,15 >>进入Jasperlode矿
    .train 425619,1
    .xp <8,1
step
    #label LibramS
    .goto Elwynn Forest,61.46,48.17,8,0
    .goto Elwynn Forest,61.31,48.87,8,0
    .goto Elwynn Forest,60.61,49.94,8,0
    .goto Elwynn Forest,60.73,50.83,8,0
    .goto Elwynn Forest,61.22,51.51,8,0
    .goto Elwynn Forest,61.44,52.64,8,0
    .goto Elwynn Forest,61.97,47.31,12 >>前往洞穴内地面上的|cRXP_FRIENDLY_Wounded Adventurer|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
--XX no completewith next so people don't brick it by casting Purify accidentally
step
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_铸造|r|T135949:0|t[Purify]|cRXP_WARN_on the |r|cRXP-FRIENDLY_Wounded Adventurer|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_在施法后与|cRXP_FRIENDLY_Wounded Adventurer|r对话|r|T135949:0|t[净化]|cRXP_WARN_让他获得|r|T134419:0|t[宙斯盾符文]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
--XX gossipoption 109556
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[神盾符文]|cRXP_WARN_学习|r|T133815:0|t]铭刻胸甲-神盾
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX cast 425589
--XX Rune acquirable if someone else purifies him for you?
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name Aegis - 8 (Dun Morogh)
#title Aegis
#next Rebuke - 10 (Ironforge)

step
    +|cRXP_WARN_你必须至少达到8级才能获得|r|T133815:0|t[雕刻胸甲-宙斯盾]|cRXP_WARN_因为这是训练的级别要求|r|T135949:0|t[净化]
    >>|cRXP_WARN_在尝试获取|r|T133815:0|t[雕刻胸甲-宙斯盾]之前，您需要升级更多
    .train 425619,1
    .xp >8,1
step
    #completewith next
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .train 425619,1
    .xp <8,1
step
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布兰度尔·铁锤|r
    .train 1152 >>列车|T135949:0|t[净化]
    .target Brandur Ironhammer
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
    .train 425619,1
    .xp <8,1
step
    #label LibramS
    .goto Dun Morogh,25.57,43.37,40 >>前往地面上的|cRXP_FRIENDLY_Wounded Adventurer|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    #completewith next
    .goto Dun Morogh,25.57,43.37
    .cast 1152 >>|cRXP_WARN_铸造|r|T135949:0|t[Purify]|cRXP_WARN_on the |r|cRXP-FRIENDLY_Wounded Adventurer|r
    .target Wounded Adventurer
    .train 425619,1
    .xp <8,1
step
    .goto Dun Morogh,25.57,43.37
    >>|cRXP_WARN_在施法后与|cRXP_FRIENDLY_Wounded Adventurer|r对话|r|T135949:0|t[净化]|cRXP_WARN_让他获得|r|T134419:0|t[宙斯盾符文]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .xp <8,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[神盾符文]|cRXP_WARN_学习|r|T133815:0|t]铭刻胸甲-神盾
    .use 208849
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .xp <8,1
--XX Rune acquirable if someone else purifies him for you?

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 殉道之印-10（暴风）
#title Seal of Martyrdom
#next 洛丹伦之角-12（西降）

step
    #completewith LibramS
    +|cRXP_WARN_你必须至少达到10级才能获得|r|T133815:0|t[铭刻胸甲-殉道之印]|cRXP_WARN_in暴风|r
    .train 410015,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 410015,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,38.10,28.10,12 >>前往大教堂内的|cRXP_FRIENDLY_Brother Romulus|r
    .train 410015,1
step
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Talk to |cRXP_FRIENDLY_Brother Romulus|r
    .target Brother Romulus
    .skipgossip
    .train 410015,1
step
    #completewith next
    .goto StormwindClassic,37.39,29.76,5,0
    .goto StormwindClassic,37.87,29.10,5,0
    .goto StormwindClassic,36.52,32.67,8,0
    .goto StormwindClassic,36.55,33.45,8,0
    .goto StormwindClassic,35.95,34.05,8,0
    .goto StormwindClassic,35.46,33.03,8,0
    .goto StormwindClassic,35.95,31.54,8,0
    .goto StormwindClassic,34.79,29.31,8,0
    .goto StormwindClassic,33.69,29.69,8,0
    .goto StormwindClassic,32.57,27.49,8,0
    .goto StormwindClassic,33.41,25.61,8,0
    >>下楼进入大教堂地穴的西侧
    .goto StormwindClassic,32.86,24.77,8 >>前往地下室中的|cRXP_LOOT_Charred Note|r
    .train 410015,1
step
    .goto StormwindClassic,32.86,24.87
    >>在蜡烛旁偷走|cRXP_Loot_Charred Note|r
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>前往岛上的|cRXP_FRIENDLY_Ada Gelhardt|r
    .train 410015,1
step
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r to start a fight
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX 109612 "As one candle is snuffed out, another is lit"
--XX 109611 "I've been sent by brother Romulus. Please, Ada, return with me to the Cathedral of Light"
--XX 109610 "I see. I'm sorry it has come to this, sister. (Fight Ada)"
step
    #requires Island
    .goto Duskwood,4.33,28.26
    >>击败|cRXP_ENEMY_Ada Gelhardt|r
    >>|cRXP_WARN_记得在她身上预铸|r|T135924:0|t[十字军封印]|cRXP_WARN_on|r
    >>|cRXP_WARN_当她施法时要小心|r|T136197:0|t[阴影冲击]|cRXP_WARN_（立即造成45点阴影伤害。消耗她75点魔法。你应该足够快地杀死她，让她只施3次）|r
    >>|cRXP_WARN_击败|cRXP_ENEMY_Ada Gelhardt|r后：|r
    >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r again to receive the |T134419:0|t[Rune of Martyrdom]
    .collect 205897,1 --Rune of Martyrdom (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
--XX Must have had the Charred Note to unlock the dialogue
step
    #sticky
    .destroy 205864 >>从您的包中删除|T134939:0|t[Charred Note]，因为不再需要它
step
    .train 410015 >>|cRXP_WARN_使用|r|T134419:0|t[殉道符文]|cRXP_WARN_to learn|r|T133815:0|t[Engrave Chest-Seal of Martyrom]
    .use 205897
    .itemcount 205897,1 --Rune of Martyrdom (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Chest
#name 神圣风暴-25（黑暗海岸）
#title Divine Storm
#next 神圣牺牲-25（艾泽拉斯）

step
    #completewith LibramS
    +|cRXP_WARN_你应该至少达到25级才能获得|r|T133815:0|t[铭刻胸甲-神圣风暴]|cRXP_WARN_并且你应该找到至少两个其他25级圣骑士来舒适地完成这项任务|r
    .train 410014,1
--  .xp >25,1
step
    #completewith LibramS
    #label DarkshoreT
    .zone Darkshore >>前往: |cRXP_PICK_黑海岸|r
    .train 410014,1
step
    #completewith next
    #requires DarkshoreT
    .goto Darkshore,56.49,26.44,10 >>前往阿尔塔拉克斯
    .train 410014,1
step
    #label LibramS
    .goto Darkshore,56.20,26.46
    >>打开Althalaxx塔顶部桌子上的|cRXP_PICK_Strange Orb|r。为|cRXP_Loot_Althalaxx-Orb|r掠夺它
    >>|cRXP_WARN_小心，因为这座塔中的暴徒很难对付（28-31级）|r
    >>|cRXP_WARN_注意|cRXP_ENEMY_Dark Strand Voidcallers|r施法|r|T136197:0|t[影子枪栓]|cRXP-WARN_（远程施法：造成约175点影子伤害）。一定要尽可能多地告诉他们|r
    .collect 209836,1,78089,1 --Athalaxx Orb (1)
    .train 410014,1
step
    #completewith Delgren1
    #label AshenvaleT
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,26.19,38.69,10 >>前往|cRXP_FRIENDLY_Delgren净化器|r
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 78088 >>Turn in A Strange Artifact
    .accept 78089 >>Accept Advice From Stormwind
    .target Delgren the Purifier
    .train 410014,1
    .itemcount 209836,1 --Athalaxx Orb (1)
step
    #label Delgren1
    .goto Ashenvale,26.19,38.69
    >>对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .accept 78089 >>Accept Advice From Stormwind
    .target Delgren the Purifier
    .train 410014,1
    .isQuestTurnedIn 78088
step
    #completewith Katherine1
    #label StormwindT1
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 410014,1
step
    #completewith next
    #requires StormwindT1
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,39.19,31.03,10,0
    .goto StormwindClassic,37.23,31.87,12 >>Travel toward |cRXP_FRIENDLY_Katherine the Pure|r inside the Cathedral
    .train 410014,1
step
    #label Katherine1
    .goto StormwindClassic,37.23,31.87
    >>对话: |cRXP_FRIENDLY_纯洁的凯瑟琳|r
    .turnin 78089 >>Turn in Advice From Stormwind
    .accept 78090 >>Accept A Second Opinion
    .target Katherine the Pure
    .train 410014,1
step
    #completewith next
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>前往屠宰羔羊内部的|cRXP_FRIENDLY_Ursula Deline|r
    .train 410014,1
step
    .goto StormwindClassic,26.12,77.23
    >>对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .turnin 78090 >>Turn in A Second Opinion
    .accept 78091 >>Accept Earning Your Salt
    .target Ursula Deline
    .train 410014,1
step
    #completewith theairissalt
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_杜加尔·朗德瑞克|r
    .fly Redridge >>飞到雷德里奇山脉
    .zoneskip Redridge Mountains
    .target Dungar Longdrink
    .train 410014,1
step
    #loop
    .goto Redridge Mountains,42.26,17.20,0
    .goto Redridge Mountains,35.02,7.66,0
    .goto Redridge Mountains,61.62,43.50,0
    .goto Redridge Mountains,76.15,83.00,0
    .goto Redridge Mountains,76.88,72.15,0
    .goto Redridge Mountains,42.26,17.20,50,0
    .goto Redridge Mountains,35.02,7.66,50,0
    .goto Redridge Mountains,61.62,43.50,50,0
    .goto Redridge Mountains,76.15,83.00,50,0
    .goto Redridge Mountains,76.88,72.15,50,0
    >>|cRXP_WARN_如果你没有|r|T134596:0|t[雕刻长裤-复仇者之盾]|cRXP_WARN_already，现在就值得做。如果您不想，请跳过此步骤|r
    >>杀死|cRXP_ENEMY_Dro'zem the Blasphemous|r。掠夺他获得|T134419:0|t[复仇者符文]|r
    >>|cRXP_WARN_他在外面有三个产卵点：东南部（渲染者谷）、中部（石望塔外的营地）和北部（渲染者营地）。尽管他是一个“稀有”，但他很快就重生了|r
    >>|cRXP_WARN_在普通聊天中询问是否有人见过他，以减少您的搜索时间（在聊天中键入/1）|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[复仇者符文]|cRXP_WARN_学习|r|T134596:0|t[雕刻长裤-复仇者之盾]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
step
    #label theairissalt
    #loop
    .goto Redridge Mountains,43.59,18.99,30,0
    .goto Redridge Mountains,38.84,14.25,30,0
    .goto Redridge Mountains,35.18,7.91,30,0
    .goto Redridge Mountains,32.58,6.79,15,0
    .goto Redridge Mountains,31.18,6.95,15,0
    .goto Redridge Mountains,30.09,8.63,15,0
    .goto Redridge Mountains,27.10,8.48,15,0
    .goto Redridge Mountains,27.24,11.93,15,0
    .goto Redridge Mountains,25.89,13.45,15,0
    .goto Redridge Mountains,26.30,15.22,15,0
    .goto Redridge Mountains,27.46,15.93,15,0
    .goto Redridge Mountains,31.06,14.99,15,0
    .goto Redridge Mountains,31.29,12.90,15,0
    .goto Redridge Mountains,29.17,11.37,25,0
    >>杀死|cRXP_ENEMY_Blackrock召唤师|r、|cRXD_ENEMY_Blackrock Champions |r和|cRXP_ENEMY_ Blackrock Trackers |r。掠夺它们以获取|cRXP_Loot_Sumoner的盐|r
    >>|cRXP_WARN_|cRXP_LOOT_召唤师的盐|r是按个人分配的（每个暴民都有机会为你的团队中的每个人投下盐），所以你可以很容易地与其他人一起完成这个任务|r
    .complete 78091,1 --Summoner's Salt (14)
    .mob Blackrock Summoner
    .mob Blackrock Champion
    .mob Blackrock Tracker
    .train 410014,1
step
    #completewith Ursula1
    #label StormwindT2
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 410014,1
step
    #completewith next
    #requires StormwindT2
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>前往屠宰羔羊内部的|cRXP_FRIENDLY_Ursula Deline|r
    .train 410014,1
step
    #label Ursula1
    .goto StormwindClassic,26.12,77.23
    >>对话: |cRXP_FRIENDLY_厄苏拉·德林|r
    .turnin 78091 >>Turn in Earning Your Salt
    .accept 78092 >>Accept It Must Be Destroyed
    .target Ursula Deline
    .train 410014,1
step
    #completewith Motes
    #label AshenvaleT
    .zone Ashenvale >>前往: |cRXP_PICK_灰谷|r
    .train 410014,1
step
    #completewith next
    #requires AshenvaleT
    .goto Ashenvale,84.12,72.10,200 >>前往恶魔瀑布峡谷
    .train 410014,1
step
    #label Motes
    #loop
    .goto Ashenvale,83.92,71.16,50,0
    .goto Ashenvale,84.65,74.15,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,82.60,79.15,50,0
    .goto Ashenvale,82.74,77.95,15,0
    .goto Ashenvale,82.02,77.93,15,0
    .goto Ashenvale,81.13,78.57,15,0
    .goto Ashenvale,81.17,79.78,15,0
    .goto Ashenvale,78.59,81.31,50,0
    .goto Ashenvale,84.18,76.79,50,0
    .goto Ashenvale,84.78,77.78,50,0
    .goto Ashenvale,87.28,79.21,50,0
    .goto Ashenvale,89.76,76.69,50,0
    .goto Ashenvale,84.18,76.79,50,0
    >>杀死|cRXP_ENEMY_Searing Infernals |r、|cRXD_ENEMY_Felguards |r、| cRXP__ENEMY_Mannoroc Lashers |r和|cRXP_ENEMY_Legion Hounds |r。掠夺它们以获取|cRXP_Loot_Motes of Mannoroth |r
    >>|cRXP_WARN_|cRXP_LOOT_Mannoroth|r的蛾类是以个体为基础分布的（每个暴民都有机会为你的小组中的每个人丢弃蛾类），所以你可以很容易地与其他人一起完成这个任务|r
    >>|cRXP_WARN_小心，因为|cRXP_ENEMY_Searing推断|r有|r|T135802:0|t[自焚光环]|cRXP_WARN_远程瞬发：造成大约45点火焰伤害，然后每3秒造成12-13点火焰伤害（持续21秒）和|r|T136197:0|t[暗影之箭]|cRXP_WARN_（远程施法：造成大约125点阴影伤害）|r
    .complete 78092,1 --Mote of Mannoroth (12)
    .mob Searing Infernal
    .mob Felguard
    .mob Mannoroc Lasher
    .mob Legion Hound
    .train 410014,1
step
    >>在空中点击玛诺洛斯的|cRXP_PICK_Spear |r，然后在地面点击|cRX_PICK_Shattered Orb|r
    .turnin 78092 >>Turn in It Must Be Destroyed
    .goto Ashenvale,89.48,77.03
    .accept 78093 >>Accept Return to Delgren
    .goto Ashenvale,89.44,77.01
    .train 410014,1
step
    #completewith next
    .goto Ashenvale,26.19,38.69,10 >>前往|cRXP_FRIENDLY_Delgren净化器|r
    .train 410014,1
step
    .goto Ashenvale,26.19,38.69
    >>对话: |cRXP_FRIENDLY_净化者德尔格伦|r
    .turnin 78093 >>Turn in Return to Delgren
    .train 410014 >>这会教你|T133815:0|t[铭刻胸甲-神圣风暴]
    .target Delgren the Purifier
    .train 410014,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 灵感典范-6（Elwynn Forest）
#title Inspiration Exemplar
#next 安吉斯-8（埃尔温森林）

step
    #completewith LibramS
    +|cRXP_WARN_你应该至少达到6级才能与另一名玩家一起获得|r|T134596:0|t[雕刻长裤-灵感示例]|cRXP_WARN_in Elwynn Forest|r
    .train 410011,1
    .xp >6,1
step
    #completewith next
    #label Elwynn1
    .zone Elwynn Forest >>前往: |cRXP_PICK_艾尔文森林|r
    .train 410011,1
step
    #completewith next
    #requires Elwynn1
    .goto Elwynn Forest,52.28,84.56,40 >>前往|cRXP_FRIENDLY_Adventurer的遗体|r
    .train 410011,1
step
    #label LibramS
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_与站在|cRXP_FRIENDLY_Adventurer's Remains|r旁边的另一位圣骑士、牧师或德鲁伊一起加入一个小组，或在普通聊天中寻求圣骑士、祭司或德鲁伊的帮助（在聊天中键入/1）|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_一个|cRXP_FRIENDLY_Adventurer的灵魂|r将在完成仪式后产生并死亡。为|r|T134419:0|t|cRXP_Loot_[灵感符文]而掠夺它|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[灵感符文]|r|cRXP_WARN_学习|r|T134596:0|t[雕刻长裤-灵感示例]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 灵感典范-6（邓·莫洛）
#title Inspiration Exemplar
#next Aegis - 8 (Dun Morogh)

step
    #completewith LibramS
    +|cRXP_WARN_你应该至少达到6级才能与其他玩家一起获得|r|T134596:0|t[雕刻长裤-灵感示例]|cRXP_WARN_in Dun Morugh|r
    .train 410011,1
    .xp >6,1
step
    #completewith LibramS
    #label Dun1
    .zone Dun Morogh >>前往: |cRXP_PICK_丹莫罗|r
    .train 410011,1
step
    #completewith next
    #requires Dun1
    #label Cave1
    .goto Dun Morogh,42.47,54.22,20,0
    .goto Dun Morogh,42.28,52.82,20 >>Enter The Grizzled Den
    .train 410011,1
step
    #completewith next
    #label LibramS
    #requires Cave1
    .goto Dun Morogh,42.06,51.86,20,0
    .goto Dun Morogh,41.42,50.97,20,0
    .goto Dun Morogh,41.24,50.28,20,0
    .goto Dun Morogh,41.25,49.68,20,0
    .goto Dun Morogh,43.03,49.63,20 >>前往洞穴内地面上的|cRXP_FRIENDLY_Adventurer’s Remaints|r
    .train 410011,1
step
    .goto Dun Morogh,43.03,49.63
    >>|cRXP_WARN_与站在|cRXP_FRIENDLY_Adventurer's Remains|r旁边的另一位圣骑士、牧师或德鲁伊一起加入一个小组，或在普通聊天中寻求圣骑士、祭司或德鲁伊的帮助（在聊天中键入/1）|r
    >>|cRXP_WARN_Talk to the |cRXP_FRIENDLY_Adventurer's Remains|r on the ground to begin the ritual, OR click the other player's|r |T136223:0|t[Spirit Ritual] |cRXP_WARN_(whilst in their group)|r
    >>|cRXP_WARN_一个|cRXP_FRIENDLY_Adventurer的灵魂|r将在完成仪式后产生并死亡。为|r|T134419:0|t|cRXP_Loot_[灵感符文]而掠夺它|r
    .collect 206264,1 --Rune of Inspiration (1)
    .target Adventurer's Remains
    .target Adventurer's Spirit
    .skipgossip
    .train 410011,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t|cRXP_LOOT_[灵感符文]|r|cRXP_WARN_学习|r|T134596:0|t[雕刻长裤-灵感示例]
    .use 206264
    .itemcount 206264,1 --Rune of Inspiration (1)
    .train 410011,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name Rebuke - 10 (Ironforge)
#title Rebuke
#next 殉道之印-10（暴风）

step
    #completewith LibramS
    +|cRXP_WARN_你必须至少达到10级才能获得|r|T134596:0|t[雕刻裤子-重生]|cRXP_WARN_in铁炉|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Ironforge1
    .zone Ironforge >>前往: |cRXP_PICK_铁炉堡|r
    .train 425621,1
step
    #completewith next
    #requires Ironforge1
    #label LibramS
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>前往酒店内的|cRXP_FRIENDLY_Bruuk Barleybeard|r
    .train 425621,1
step
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>对话: |cRXP_FRIENDLY_布鲁克·麦须|r, 他在里面
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Talk to |cRXP_FRIENDLY_Bruart|r to start a fight
    >>击败|cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_当他投掷|r|T132939:0|t[反手]|cRXP_WARN_（眩晕你2秒）时要小心|r
    >>|cRXP_WARN_记得在他身上预铸|r|T135924:0|t[十字军封印]|cRXP_WARN_on|r
    >>|cRXP_WARN_不要意外地将|r|T135906:0|t[Blessing of May]|cRXP_WARN_on投射到他身上|r
    >>|cRXP_WARN_把他放在楼上的阳台上，然后在客栈外面放下，投下|r|T135920:0|t[圣光]|cRXP_WARN_if needed|r
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>击败|cRXP_ENEMY_Bruart|r
    >>|cRXP_WARN_当他投掷|r|T132939:0|t[反手]|cRXP_WARN_（眩晕你2秒）时要小心|r
    >>|cRXP_WARN_记得在他身上预铸|r|T135924:0|t[十字军封印]|cRXP_WARN_on|r
    >>|cRXP_WARN_不要意外地将|r|T135906:0|t[Blessing of May]|cRXP_WARN_on投射到他身上|r
    >>|cRXP_WARN_把他放在楼上的阳台上，然后在客栈外面放下，投下|r|T135920:0|t[圣光]|cRXP_WARN_if needed|r
    >>|cRXP_WARN_击败|cRXP_ENEMY_Bruart|r后：|r
    >>对话: |cRXP_FRIENDLY_布鲁克·麦须|r
    >>|cRXP_WARN_如果他不给你|r|T134419:0|t[重生符文]|cRXP_WARN_，你可能需要再次战斗|cRXP_ENEMY_Bruart|r|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[重生符文]|cRXP_WARN_学习|r|T134596:0|t[雕刻裤子-重生]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name Rebuke - 10 (Stormwind)
#title Rebuke
#next 殉道之印-10（暴风）

step
    #completewith LibramS
    +|cRXP_WARN_你应该至少达到10级才能获得|r|T134596:0|t[雕刻裤子-重生]|cRXP_WARN_in暴风|r
    .train 425621,1
    .xp >10,1
step
    #completewith next
    #label Stormwind1
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 425621,1
step
    #completewith next
    #requires Stormwind1
    #label LibramS
    .goto StormwindClassic,21.56,59.60,10,0
    .goto StormwindClassic,22.60,64.62,10 >>前往公园酒店内的|cRXP_FRIENDLY_Liv Bradford |r
    .train 425621,1
step
    .goto StormwindClassic,22.60,64.62
    .gossipoption 109047 >>Talk to |cRXP_FRIENDLY_Liv Bradford|r inside
    .target Liv Bradford
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109045 "How's business?"
--XX 109047 "Sounds like you need someone to bounce him for you."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .goto StormwindClassic,21.21,62.78
    .gossipoption 109084 >>Talk to |cRXP_FRIENDLY_Stuart|r to start a fight
    >>击败|cRXP_ENEMY_Stuart |r
    >>|cRXP_WARN_当他投掷|r|T132939:0|t[反手]|cRXP_WARN_（眩晕你2秒）时要小心|r
    >>|cRXP_WARN_记得在他身上预铸|r|T135924:0|t[十字军封印]|cRXP_WARN_on|r
    >>|cRXP_WARN_不要意外地将|r|T135906:0|t[Blessing of May]|cRXP_WARN_on投射到他身上|r
    >>|cRXP_WARN_把他带上楼，然后放下投|r|T135920:0|t[圣光]|cRXP_WARN_if needed|r
    .mob Stuart
    .skipgossip 203478,1
    .train 425621,1
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step
    .goto StormwindClassic,21.21,62.78,-1
    .goto StormwindClassic,22.60,64.62,-1
    >>击败|cRXP_ENEMY_Stuart |r
    >>|cRXP_WARN_当他投掷|r|T132939:0|t[反手]|cRXP_WARN_（眩晕你2秒）时要小心|r
    >>|cRXP_WARN_记得在他身上预铸|r|T135924:0|t[十字军封印]|cRXP_WARN_on|r
    >>|cRXP_WARN_不要意外地将|r|T135906:0|t[Blessing of May]|cRXP_WARN_on投射到他身上|r
    >>|cRXP_WARN_把他带上楼，然后放下投|r|T135920:0|t[圣光]|cRXP_WARN_if needed|r
    >>|cRXP_WARN_击败|cRXP_ENEMY_Stuart|r后：|r
    >>Talk to |cRXP_FRIENDLY_Liv Bradford|r again to receive the |T134419:0|t[Rune of Rebuke]
    >>|cRXP_WARN_如果她不给你|r|T134419:0|t[重生符文]|cRXP_WARN_，你可能需要再次战斗|cRXP_ENEMY_Stuart |r|r
    .collect 205683,1 --Rune of Rebuke (1)
    .target Liv Bradford
    .skipgossip 203478,1
    .skipgossip 203475,2,1
    .train 425621,1
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
--VV SKIPGOSSIP needs testing, if broken change to 1,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[重生符文]|cRXP_WARN_学习|r|T134596:0|t[雕刻裤子-重生]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name Exorcist - 24 (Duskwood)
#title Exorcist
#next 灯塔-25（声望）

step
    +|cRXP_WARN_你必须至少达到24级才能获得|r|T134596:0|t[雕刻长裤-驱魔师]|cRXP_WARN_因为这是训练的级别要求|r|T135983:0|t][变不死]
    >>|cRXP_WARN_在试图获得|r|T134596:0|t[雕刻长裤-驱魔师]之前，你需要升级更多
    .train 416037,1
    .xp >24,1
step
    #completewith next
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 416037,1
    .xp <24,1
step
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_虔诚的亚瑟|r
    .train 2878 >>Train|T135983:0|t[变为不死]
    .target Arthur the Faithful
    .train 416037,1
    .xp <24,1
step
    #completewith next
    .zone Duskwood >>前往: |cRXP_PICK_暮色森林|r
    .train 416037,1
    .xp <24,1
step
    #label LibramS
    #loop
    .goto Duskwood,20.84,63.75,50,0
    .goto Duskwood,20.00,71.10,50,0
    .goto Duskwood,21.58,72.00,50,0
    .goto Duskwood,24.26,71.82,50,0
    .goto Duskwood,22.91,66.62,50,0
    >>杀死|cRXP_ENEMY_Defias Night Runners |r、|cRXD_ENEMY_Defias NightBlades|r和|cRXX_ENEMY_Desias Enchanters |r。为|T134916:0|t|cRXP_Loot_[放逐之库]|r掠夺它们
    >>|cRXP_WARN_小心|cRXP_ENEMY_Defias Night Runners |r和|cRXD_ENEMY_Defias NightBlades |r cast|r|T136093:0|t[减速毒药]|cRXP_WARN_（移动速度降低35%，持续25秒），|r|T132090:0|t[Backstage]|cRXP_WARN_ |T135812:0|t[火球]|cRXP_WARN_|r
    .collect 211472,1 -- Libram of Banishment (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Enchanter
    .train 416037,1
    .xp <24,1
step
    .equip 18,211472 >>|cRXP_WARN_装备|r|T134916:0|t|cRXP_LOOT_[驱逐自由]|r
    .use 211472
    .itemcount 211472,1 -- Libram of Banishment (1)
    .train 416037,1
    .xp <24,1
step
    #loop
    .goto Duskwood,22.49,47.91,50,0
    .goto Duskwood,20.41,47.56,50,0
    .goto Duskwood,14.65,47.37,50,0
    .goto Duskwood,16.31,44.96,50,0
    .goto Duskwood,22.95,40.55,50,0
    >>杀死|cRXP_ENEMY_Skeletal Fiends|r和|cRXX_ENEMY_Skletal Horrors|r
    .aura 408828 >>|cRXP_WARN_施法|r|T135983:0|t[不死]|cRXP_WARN_然后用|r|T135903:0|t[Exorcism]|cRXP_WARN_5次杀死他们，获得|r|T236116:0|t[灵感]|cRX P_WARN_buff|r
    >>|cRXP_WARN_注意：你必须对可以提供经验以获得堆叠的敌人这样做|r
    .mob Skeletal Fiend
    .mob Skeletal Horror
    .itemStat 18,QUALITY,2
    .train 416037,1
    .xp <24,1
step
    .cast 421508 >>|cRXP_WARN_使用|r|T134916:0|t|cRXP_LOOT_[驱逐自由]|r|cRXP_WARN_学习|r|T134596:0|t[雕刻长裤-驱魔人]
    .use 211472
    .aura -408828
    .train 416037,1
    .xp <24,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Legs
#name 复仇者之盾-25（雷德里奇山脉）
#title Avenger's Shield
#next 灵感典范-6（Elwynn Forest）

step
    +|cRXP_WARN_你必须至少达到25级才能获得|r|T134596:0|t[雕刻长裤-复仇者之盾]|cRXP_WARN_in雷德里奇|r
    .train 410008,1
    .xp >25,1
step
    #completewith next
    .zone Redridge Mountains >>前往: |cRXP_PICK_赤脊山|r
    .train 410008,1
step
    #label LibramS
    #loop
    .goto Redridge Mountains,42.26,17.20,0
    .goto Redridge Mountains,35.02,7.66,0
    .goto Redridge Mountains,61.62,43.50,0
    .goto Redridge Mountains,76.15,83.00,0
    .goto Redridge Mountains,76.88,72.15,0
    .goto Redridge Mountains,42.26,17.20,50,0
    .goto Redridge Mountains,35.02,7.66,50,0
    .goto Redridge Mountains,61.62,43.50,50,0
    .goto Redridge Mountains,76.15,83.00,50,0
    .goto Redridge Mountains,76.88,72.15,50,0
    >>杀死|cRXP_ENEMY_Dro'zem the Blasphemous|r。掠夺他获得|T134419:0|t[复仇者符文]|r
    >>|cRXP_WARN_他在外面有三个产卵点：东南部（渲染者谷）、中部（石望塔外的营地）和北部（渲染者营地）。尽管他是一个“稀有”，但他很快就重生了|r
    >>|cRXP_WARN_在普通聊天中询问是否有人见过他，以减少您的搜索时间（在聊天中键入/1）|r
    .collect 211488,1 --Rune of the Avenger (1)
    .unitscan Dro'zem the Blasphemous
    .train 410008,1
step
    .cast 402265 >>|cRXP_WARN_使用|r|T134419:0|t[复仇者符文]|cRXP_WARN_学习|r|T134596:0|t[雕刻长裤-复仇者之盾]
    .use 211488
    .itemcount 211488,1 --Rune of the Avenger (1)
    .train 410008,1
--VV Overall paladin routing can be improved if Divine Sac turnin has items bought before Divine Storm -> Turned in after Divine Storm (run down after accepting Return to Delgren -> Turn in -> 飞往阿斯特拉纳 -> DS Turnin)
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#title Enlightened Judgements
#name 开明的判决-34（阿拉提高地）

step
    #optional
    .train 426175,1
    +|cRXP_WARN_您必须至少达到34级才能获得|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Piety|r]
    .xp >34,1
step
    .train 426175,1
    #completewith next
    .train 20164,1
    +|cRXP_WARN_你必须训练|r|T135971:0|t[正义之印]|cRXP_WARN_to获得|r|T134419:0|t[|cRXP-FRIENDLY_Rune of Piety|r]
step
    .train 426175,1
    .train 642,1
    .train 1020,1
    +|cRXP_WARN_你必须训练|r|T135896:0|t[神盾]|cRXP_WARN_才能获得|r|T134419:0|t[|cRXP-FRIENDLY_Rune of Piety|r]
step
    .train 426175,1
    #optional
    .train 20164,1
    +|cRXP_WARN_你必须训练|r|T135971:0|t[正义之印]|cRXP_WARN_to获得|r|T134419:0|t[|cRXP-FRIENDLY_Rune of Piety|r]
step
    .train 426175,1
    #completewith next
    .zone Arathi Highlands >>前往: |cRXP_PICK_阿拉希高地|r
step
    .train 426175,1
    #completewith BeadSoJ1
    .goto Arathi Highlands,68.8,71.8,0
    .goto Arathi Highlands,35.4,44.8,0
    +|阿拉蒂高地的cRXP_WARN_trols和食人魔也可以掉落|r|T135261:0|t[|cRXP_OOT_Tarnished Prayer Bead|r]中的任何一个
step
    .train 426175,1
    #completewith Rosary
    #label BeadBoM1
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    >>杀死|cRXP_ENEMY_Syndicate雇佣军|r，|cRXD_ENEMY_Syndicate Pathstalkers |r和|cRXP_ENEMY_辛迪加Highwaymen |r。为|T135261:0|t[|cRXP_OOT_Tarnished Prayer Bead I|r]掠夺他们
    .collect 213444,1 --Tarnished Prayer Bead I
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #requires BeadBoM1
    #label BeadBoM2
    #completewith Rosary
    +|cRXP_WARN_铸造|r|T135906:0|t[力量的祝福]|cRXP_WARN_on yourself|r
    .aura 19740
    .aura 19834
    .aura 19835
    .aura 19836
    .aura 19837
    .aura 19838
    .aura 25291
    .aura 25782
    .aura 25916
step
    .train 426175,1
    #requires BeadBoM2
    #label BeadBoM3
    #completewith Rosary
    >>|cRXP_WARN_继续杀死敌人以获得|r|T135260:0|t[|cRXP_LOOT_神圣祈祷珠I|r]
    >>|cRXP_WARN_您必须有一个活动|r|T135906:0|t[力量的祝福]|cRXP_WARN_buff|r
    .collect 213448,1 --Divine Prayer Bead I
step
    .train 426175,1
    #completewith Rosary
    #label BeadDS1
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    >>杀死|cRXP_ENEMY_Syndicate雇佣军|r，|cRXD_ENEMY_Syndicate Pathstalkers |r和|cRXP_ENEMY_辛迪加Highwaymen |r。为|T135261:0|t[|cRXP_OOT_Tarnished Prayer Bead II|r]掠夺他们
    .collect 213445,1 --Tarnished Prayer Bead II
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #completewith Rosary
    #requires BeadDS1
    #label BeadDS2
    >>|cRXP_WARN_Cast|r|T135896:0|t[神盾]|cRXP_WARN_战斗时且生命值低于40%可获得|r|T135260:0|t[|cRXP_LOOT_神圣念珠II|r]
    .collect 213449,1 --Divine Prayer Bead II
    .usespell 642
    .usespell 1020
step
    .train 426175,1
    #completewith Rosary
    #label BeadSoJ1
    >>杀死|cRXP_ENEMY_Syndicate雇佣军|r，|cRXD_ENEMY_Syndicate Pathstalkers |r和|cRXP_ENEMY_辛迪加Highwaymen |r。为|T135261:0|t[|cRXP_OOT_Tarnished Prayer Bead III|r]掠夺他们
    #loop
    .goto Arathi Highlands,33.26,32.60,50,0
    .goto Arathi Highlands,30.38,30.68,50,0
    .goto Arathi Highlands,31.46,25.36,50,0
    .goto Arathi Highlands,33.87,29.13,50,0
    .goto Arathi Highlands,31.13,29.47,50,0
    .collect 213446,1 --Tarnished Prayer Bead III
    .mob Syndicate Mercenary
    .mob Syndicate Pathstalker
    .mob Syndicate Highwayman
step
    .train 426175,1
    #completewith Rosary
    #requires BeadSoJ1
    #label BeadSoJ2
    >>|cRXP_WARN_Cast|r|T135971:0|t【正义之印】|cRXP_WARN_允许|r |T135959:0|t（判决）|cRXD_WARN_在逃跑的敌人身上接受|r|T135260:0|t[|cRXP_LOOT_神圣念珠III|r]
    .collect 213450,1 --Divine Prayer Bead III
    .usespell 20164
    .usespell 20271
step
    .train 426175,1
    #optional
    #requires BeadBoM3
step
    .train 426175,1
    #optional
    #requires BeadDS2
step
    .train 426175,1
    #optional
    #requires BeadSoJ2
step
    .train 426175,1
    #label Rosary
    >>|cRXP_WARN_使用|r|T135260:0|t[|cRXP_LOOT_神圣祈祷珠|r]|cRXD_WARN_将它们组合成|r|T133289:0|t[|cRXP_LOOT_光明玫瑰|r]
    .use 213448
    .use 213449
    .use 213450
    .collect 213447,1
step
    .train 426175,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Atticus|r inside Stormgarde Keep to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Piety|r]
    .goto Arathi Highlands,26.06,55.75,20,0
    .goto Arathi Highlands,25.71,59.92,20,0
    .goto Arathi Highlands,23.69,60.52,20,0
    .goto Arathi Highlands,23.75,58.89,15,0
    .goto Arathi Highlands,27.81,58.99,15,0
    .goto Arathi Highlands,28.74,58.97,15,0
    .goto Arathi Highlands,28.71,57.37,15,0
    .goto Arathi Highlands,27.01,56.95
    .skipgossip 217387,1
    .collect 213128,1
    .target Brother Atticus
step
    .itemcount 213128,1
    .use 213128
    .train 426175 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Pitty|r]|cRXP-WARN_训练|r|T236251:0|t[启发性判断]
]])


RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Belt
#name 光之鞘-40（艾泽拉斯）
#title Sheath of Light

step
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    .train 426178,1
    .goto Desolace,52.730,84.761
    >>为|T133041:0|t[|cRXP_LOCK_Broken Warhammer |r]在地面上掠夺|cRXT_PICK_Brokend Warhammer | r
    .use 215441 >>|cRXP_WARN_使用|T133041:0|t[|cRXP_LOOT_Broken Hammer |r]开始任务|r
    .collect 215441,1
    .accept 79939 >>Accept The Broken Hammer
step
    .train 426178,1
    #loop
    .goto Desolace,52.6,85.6,0
    .goto Desolace,55.6,70.4,0
    .goto Desolace,47,2,75.2,0
    .goto Desolace,52.6,85.6,40,0
    .goto Desolace,55.6,70.4,40,0
    .goto Desolace,47,2,75.2,60,0
    >>杀死|cRXP_ENEMY_Burning Blade召唤师|r。掠夺他们一个|T133471:0|t[|cRXP-Loot_Torn Letter|r]
    .collect 216956,1,79939,1
    .mob Burning Blade Summoner
step
    #completewith Katherine
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step
    #completewith Katherine
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纯洁的凯瑟琳|r
    .goto Stormwind City,37.222,31.855
    .turnin 79939 >>Turn in The Broken Hammer
    .accept 79940 >>Accept A Lost Brother
    .target Katherine the Pure
step
    #label Katherine
    .train 426178,1
    .goto Stormwind City,37.222,31.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纯洁的凯瑟琳|r
    .skipgossip 5492,1
    .complete 79940,1
    .turnin 79940 >>Turn in A Lost Brother
    .target Katherine the Pure
step
    #completewith next
    .zone Wetlands >>前往: |cRXP_PICK_湿地|r
step
    .isQuestTurnedIn 79940
    .train 426178,1
    .goto Wetlands,8.086,58.592
    .gossip 3179,4 >>对话: |cRXP_FRIENDLY_哈洛德·李格斯|r
    .skipgossip 3179,2
    .target Harold Riggs
step
    #completewith next
    .goto 1415,41.937,58.932,40 >>|cRXP_WARN_向南游，一直游到敦莫罗。你很快就会杀死一个40级精英。考虑带一个朋友来演这个角色！|r
step
    .train 426178,1
    .goto 1415,41.937,58.932
    .gossip 217957 >>Talk to the |cRXP_FRIENDLY_Slain Scarlet Crusader|r inside the building
    >>|cRXP_WARN_这将召唤一名40级精英|r|cRXP_ENEMY_猩红十字军刺客|r
    .target Slain Scarlet Crusader
step
    .train 426178,1
    .goto 1415,41.937,58.932
    >>杀死|cRXP_ENEMY_Scarlet十字军东征刺客|r。为|T133471:0|t[|cRXP_Loot_大十字军东军的命令|r]掠夺它
    .use 215468 >>|cRXP_WARN_使用|T133471:0|t[|cRXP_LOOT_Orders from the Grand Crusade |r]开始任务|r
    .collect 215468,1,79945,1
    .accept 79945 >>Accept Orders from the Grand Crusade
    .mob Scarlet Cursade Assassin
step
    #completewith Katherine2
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step
    #completewith Katherine2
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纯洁的凯瑟琳|r
    .goto Stormwind City,37.222,31.855
    .turnin 79945 >>Turn in Orders from the Grand Crusade
    .accept 79946 >>Accept A Brother in Need
    .target Katherine the Pure
step
    #label Katherine2
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纯洁的凯瑟琳|r
    .goto Stormwind City,37.222,31.855
    .skipgossip 5492,3
    .complete 79946,1 --Learn more about Aeonas from Katherine
    .target Katherine the Pure
step
    .train 426178,1
    >>|cRXP_WARN_你现在必须进入Scarlet修道院，完成整个大教堂的运行|r
    >>杀死|cRXP_ENEMY_Mograine|r和|cRXX_ENEMY_Whitemane|r后，在后屋与|cRXP_FRIENDLY_Aeonas|r交谈
    .complete 79946,2 --Find Aeonas in the Scarlet Monastery
    .turnin 79946 >>Turn in A Brother in Need
    .accept 79963 >>Accept By The Light's Grace
    .target Aeonas
step
    .train 426178,1
    >>治愈|cRXP_FRIENDLY_Aenoas|r至满血
    .complete 79963,1 --Heal Aeonas
    .target Aeonas
step
    .train 426178,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeonas|r
    .turnin 79963 >>Turn in By The Light's Grace
    .accept 79970 >>Accept Aeonas the Vindicated
    .target Aeonas
step
    #completewith Aeonas
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
step
    #completewith Aeonas
    .goto StormwindClassic,42.51,33.51,20 >>前往暴风大教堂
step
    #label Aeonas
    .goto Stormwind City,37.355,31.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeonas the Vindicated|r
    .turnin 79970 >>Turn in Aeonas the Vindicated
    .train 426178 >>列车|T236263:0|t[光的鞘]
    .target Aeonas the Vindicated
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#name 由光守护-30（Alterac山脉）
#title Guarded by the Light

step
    #optional
    .train 416035,1
    +|cRXP_WARN_您必须至少达到30级才能获得|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Guardian|r]
    .xp >30,1
step
    .train 416035,1
    .train 19752 >>|cRXP_WARN_你必须训练|r|T136106:0|t【神圣干预】|cRXP_WARN_才能获得|r|T134419:0|t【|cRXP-FRIENDLY_Rune of the Guardian】
step
    .train 416035,1
    .collect 17033,1 >>|cRXP_BUY_从任何试剂供应商处至少购买一个|r|T135259:0|t[神性符号]|cRXP_Buy_|r
step
    .train 416035,1
    #completewith FriendRequired
    +|cRXP_WARN_请确保带上|cFFFFFFFFPriest|r、|cFFF58CBAPaladin|r或|cFFFF7D0ADruid|r朋友进行以下步骤！这下一部分不能单独完成，因为必须有人向你施压！|r
    .subzoneskip 281
step
    .train 416035,1
    .goto Alterac Mountains,39.675,60.675
    .zone Alterac Mountains >>前往: |cRXP_PICK_奥特兰克山脉|r
    .itemcount 213452,<1
step
    .train 416035,1
    #label FriendRequired
    >>单击地面上的|cRXP_PICK_Frozen Remains|r。为|cRXP_Loot_休眠神圣符文|r掠夺它
    .goto Alterac Mountains,39.675,60.675
    .collect 213452,1
step
    .train 416035,1
    .cast 19752 >>|cRXP_WARN_铸造|r|T136106:0|t[神圣干预]|cRXP_WARN_在陪伴你的朋友身上|r
    .usespell 19752
step
    .train 416035,1
    >>|cRXP_WARN_你的朋友删除了|r|T136106:0|t[神圣干预]|cRXP_WARN_buff并向你施压吗|r
    >>|cRXP_WARN_您将收到|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Guardian|r]
    .collect 213132,1
step
    .use 213132
    .itemcount 213132,1
    .train 416035 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Guardian|r]|cRXP_WARN_to train|r|T237537:0|t[Guarded by the Light]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Boots
#name 神圣之盾-30（Desolace）
#title Sacred Shield

step
    #optional
    .train 416028,1
    +|cRXP_WARN_您必须达到18级以上才能获得|r|T236249:0|t[神圣之盾]|cRXP_WARN_enraving|r
    .xp >18,1
step
    .train 416028,1
    .train 1044 >>|cRXP_WARN_你必须训练|r|T135968:0|t[自由祝福]|cRXP_WARN_to才能获得|r|T236249:0|t[Sacred Shield]|cRXP_WARN_enraving|r
step
    .train 416028,1
    #completewith Deliverance
    +|cRXP_WARN_请务必带上朋友进行以下步骤！下一部分无法单独完成！|r
step
    .train 416028,1
    #completewith next
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
step
    .train 416028,1
    #label Deliverance
    .goto Desolace,66.532,7.531
    >>将|T134916:0|t[|cRXP_FRIENDLY_Libram of Deliverance|r]洗劫一空
    .collect 213513,1
step
    .train 416028,1
    .equip 18,213513 >>|cRXP_WARN_调用|r|T134916:0|t[|cRXP_FRIENDLY_交付库|r]
    .use 213513
step
    .train 416028,1
    .goto Desolace,38.21,61.02,50,0
    .goto Desolace,36.44,60.52,60,0
    .goto Desolace,33.44,54.17,60,0
    .goto Desolace,30.33,58.26,60,0
    .goto Desolace,31.79,61.28
    .aura 408828 >>|cRXP_WARN_施法|r|T135968:0|t[自由祝福]|cRXP_WARN_在另一名玩家移动受损时对其施法5次。每次执行此操作时，您将获得一堆|r|T237556:0|t[建筑灵感]|cRXP_WARN_|r
    >>|cRXP_WARN_一旦您有5堆|r|T237556:0|t[建筑灵感]|cRXP_WARN_，您将收到|r|T136116:0|t[灵感]|cRXP_WARN_buff|r
    >>|cRXP_WARN_在Maraudon外完成此操作。|r|cRXP_ENEMY_Maraudine牧马人|r|cRXP_WARN_此处铸造|r|T132149:0|t[Net]
    .mob Maraudine Wrangler
step
    .use 213513
    .train 416028 >>|cRXP_WARN_使用|r|T134916:0|t[|cRXP_FRIENDLY_交付库|r]|cRXP-WARN_训练|r|T236249:0|t[神圣盾牌]
]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Paladin SoD
-- #group RestedXP Rune和书籍指南
-- #subgroup Bracers
-- #name Improved Hammer of Wrath
-- for phase 3

-- Improved Hammer of Wrath


-- ]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Paladin SoD
-- #group RestedXP Rune和书籍指南
-- #subgroup Bracers
-- #name Purifying Power
-- for phase 3

-- Purifying Power


-- ]])
RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Helmet
#name 狂热-44（艾泽拉斯）

step
    #optional
    .train 426178 >>|cRXP_WARN_你必须先学习|r|T236263:0|t[光之鞘]|cRXP_WARN_first的符文才能获得此符文|r
    .train 429251,1
step
    #completewith next
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 429251,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aeonas the Vindicated|r
    .goto Stormwind City,37.355,31.708
    .accept 81762 >>Accept Some Good News
    .target Aeonas the Vindicated
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纯洁的凯瑟琳|r
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>Turn in Some Good News
    .accept 81764 >>Accept The Mysterious Merchant
    .target Katherine the Pure
step
    #completewith next
    .zone Dustwallow Marsh >>前往: |cRXP_PICK_尘泥沼泽|r
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elrick|r inside the inn
    *|cRXP_WARN_Two level 45 enemies will attack you after accepting the quest|r
    .goto Dustwallow Marsh,66.52,45.41
    .turnin 81764 >>Turn in The Mysterious Merchant
    .accept 81765 >>Accept Elrick, Paladin of the Silver Hand
    .target Elrick
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elrick|r
    .goto Dustwallow Marsh,66.52,45.41
    .gossip 221575,5
    .skipgossip 221575,1
    .train 429251,1
step
    .train 429251,1
    >>杀死|cRXP_ENEMY_Elrick|r。掠夺他获得|T133471:0|t[|cRXD_Loot_血腥导弹|r]
    >>|cRXP_WARN_使用|r|T133471:0|t[|cRXP_OOT_Bloody Missive|r]|cRXP-WARN_to获得任务|r
    .goto Dustwallow Marsh,66.52,45.41
    .collect 219930,1,81766,1
    .accept 81766 >>Accept The Bloody Missive
    .use 219930
    .skipgossip 221575,1
    .target Elrick
step
    #completewith next
    .zone Stormwind City >>前往: |cRXP_PICK_暴风城|r
    .train 429251,1
step
    .train 429251,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_纯洁的凯瑟琳|r, to train
    .goto Stormwind City,37.222,31.855
    .turnin 81762 >>Turn in The Bloody Missive
    .target Katherine the Pure
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#name 光的恩典-40（Feralas）

step
    #optional
    .train 5599 >>|cRXP_WARN_你必须经过|r|T135964:0|t[保护的祝福]|cRXP_WARN_trained才能获得|r|T135931:0|t[Light’s Grace]|cRXP_WARN_run|r
step
    #optional
    #completewith TeleporterTaken
    .isQuestTurnedIn 79984
    .goto Stranglethorn Vale,27.6,77.4,8 >>使用Teleporter前往Booty Bay的Feralas
    .train 429242,1
step
    #optional
    .isQuestAvailable 79984
    #completewith TeleporterTaken
    .zone Feralas >>前往: |cRXP_PICK_菲拉斯|r
    .goto Feralas,85.27,43.66,8 >>使用|cRXP_PICK_Wondergear Worldporter|r
    .train 429242,1
step
    #label TeleporterTaken
    .goto Feralas,84.26,43.81,10 >>Reach the platform
    .train 429242,1
step
    .train 429242,1
    >>1） |cRXP_WARN_在信誉窗口中将派系Gadgetzan设置为“处于战争状态”|r
    >>2） 转到准确的航路点位置
    >>3） 看看木屋旁边的绿色灌木
    .goto Feralas,83.93,43.89
    .goto Feralas,85.27,43.66,0
    .aura 436534,1 >>4） |cRXP_WARN_等待|cRXP-ENEMY_Tower Defense自动机|r正好位于您和灌木丛之间并攻击它|r
    .mob Tower Defense Automaton
step
    .train 429242,1
    >>|cRXP_WARN_Heal|r|cRXP_FRIENDLY_Frix Xizzix|r|cRXP_WARN_utile he stand |r。
    .gossip 220930,1 >>之后与|cRXP_FRIENDLY_Frix Xizzix|r交谈
    .skipgossip 220930,1
    .goto Feralas,81.45,42.46
    .target Frix Xizzix
step
    #completewith next
    .zone Stranglethorn Vale >>前往: |cRXP_PICK_荆棘谷|r
    .train 429242,1
step
    .train 429242,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rix Xizzix|r and buy the |T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]
    .goto Stranglethorn Vale,28.4,75.8
    .collect 219147,1
    .target Rix Xizzix
step
    .itemcount 219147,1
    .use 219147
    .train 429242 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Grace|r]|cRXP-WARN_训练|r|T236249:0|t[神圣盾牌]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Helmet
#name 愤怒-43（腹地）

-- Wrath

step
    #optional
    .train 5502 >>|cRXP_WARN_您必须经过|r|T135974:0|t[Sense Undad]|cRXP_WARN_trained才能获得|r|T236260:0|t[Wrath]|cRXP_WARN_run|r
    .train 429249,1
step
    #completewith RuneLearned
    +|cRXP_WARN_您只能在晚上9点到早上6点之间获得|r|T236260:0|t[Wrath]|cRXP_WARN_run。|r
step
    #completewith next
    .zone The Hinterlands >>前往: |cRXP_PICK_辛特兰|r
    .train 429249,1
step
    .train 429249,1
    >>|cRXP_WARN_使用|r|T135974:0|t[Sense Undead]|cRXP_WARN_to可以看到|r|cRXP-ENEMY_Vengeful Spirit|r
    >>杀死|cRXP_ENEMY_Vengeful Spirit|r。为|T134419:0|t[|cRXP_FRIENDLY_Rune of Wrath|r]掠夺它
    *The |cRXP_ENEMY_Vengeful Spirit|r walks around the lake
    .goto The Hinterlands,33.0,44.2
    .collect 220165,1
    .mob Vengeful Spirit
step
    #label RuneLearned
    .itemcount 220165,1
    .use 220165
    .train 429249 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Wrath|r]|cRXP-WARN_训练|r|T236260:0|t[Wrath]
]])

RXPGuides.RegisterGuide([[
#classic
<< Paladin SoD
#group RestedXP Rune和书籍指南
#subgroup Bracers
#name 正义之锤-50（艾泽拉斯）

--x shiek: needs better coordinates
step
    #optional
    .train 410013 >>|cRXP_WARN_你必须先学习|r|T236253:0|t[正义之锤]|cRXP_WARN_first的符文才能获得此符文|r
    .train 410013,1
step
    #completewith next
    .zone Felwood >>前往: |cRXP_PICK_费伍德森林|r
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    .gossip 217996,5 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aoenas the Vindicated|r
    .target Aoenas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    .gossip 221636,8 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregory|r
    .target Gregory
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregory|r
    .accept 81790,1 >>Accept Materials of Significance
    .target Gregory
    .train 410013,1
step
    #loop
    .goto Felwood,44.4,46.8,40,0
    .goto Felwood,40.0,43.6,40,0
    .goto Felwood,41.8,34.8,40,0
    .goto Felwood,48.0,38.8,40,0
    >>杀死|cRXP_ENEMY_Infernal Sentry|r，|cRXD_ENEMY_Infernal Bodyguard|r，| cRXP__ENEMY_Entropic Beast |r和|cRXP_ENEMY_Entrepic Horror|r。掠夺它们以获取|cRXP_Loot_|T136030:0|t铁甲地狱核心|r
    .complete 81790,1 --3/3 Fiery Infernal Core
    .mob Infernal Sentry
    .mob Infernal Bodyguard
    .mob Entropic Beast
    .mob Entropic Horror
step
    #completewith next
    #title Maraudon
    .zone Desolace >>前往: |cRXP_PICK_凄凉之地|r
    .goto Desolace,30,62,20
    .train 410013,1
step
    >>|cRXP_WARN_建议形成一组5层。|r
    >>杀死|cRXP_ENEMY_Theradas公主|r Maraudon的老板。为|cRXP_Loot_|T134389:0|t盗走她|r
    .complete 81790,2 --1/1 Shimmering Grave Dust
    .mob Princess Theradras
    .train 410013,1
step << Alliance
    #completewith next
    #title Blackrock Depths
    .zone Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
    .goto 1415,48.09,62.42,20
    .train 410013,1
step << Alliance
    >>|cRXP_WARN_建议组成一组5层，您需要3层金。|r
    >>Venture through Blackrock Depths until you reach the Grim Guzzler Bar. |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plugger Spazzring|r and buy |T135262:0|t[Triple-Brewed Molten Lager]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step << Alliance
    #completewith next
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r
    .train 410013,1
step << Alliance
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brave Stonetorch|r
    .target Brave Stonetorch
    .accept 81944,1 >>Accept A Newly Discovered Purpose
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Hillsbrad Foothills >>前往: |cRXP_PICK_希尔斯布莱德丘陵|r
    .train 410013,1
step << Horde
    #loop
    .goto Felwood,65.8,19.6,20,0
    .goto Felwood,67.6,15.0,20,0
    .goto Felwood,68.6,13.8,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brave Stonetorch|r
    .target Brave Stonetorch
    .accept 81944,1 >>Accept A Newly Discovered Purpose
    .complete 81970,4 --1/1 Symbol of Faith
step << Horde
    #completewith next
    .zone Searing Gorge >>前往: |cRXP_PICK_灼热峡谷|r
    .train 410013,1
step << Horde
    >>|cRXP_WARN_建议组成一组5层，您需要3层金。|r
    >>Venture through Blackrock Depths until you reach the Grim Guzzler Bar. |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Plugger Spazzring|r and buy |T135262:0|t[Triple-Brewed Molten Lager]
    .complete 81790,3 --1/1 Triple-Brewed Molten Lager
    .target Plugger Spazzring
    .train 410013,1
step
    #completewith next
    .zone Felwood >>前往: |cRXP_PICK_费伍德森林|r
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregory|r
    .turnin 81790 >>Accept Materials of Significance
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aoenas the Vindicated|r
    .accept 81885,1 >>接任务: |cRXP_WARN_仪式|r
    .target Aoenas the Vindicated
    .train 410013,1
step
    .goto Felwood,44.6,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gregory|r
    .complete 81885,1 --1/1 Complete the Ritual
    .target Gregory
    .train 410013,1
step
    .goto Felwood,45.0,52.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aoenas the Vindicated|r
    .turnin 81885 >>Turn in The Ritual
    .target Aoenas the Vindicated
    .train 410013,1
]])
