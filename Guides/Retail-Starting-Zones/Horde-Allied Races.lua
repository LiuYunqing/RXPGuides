RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#groupweight 8
-- #subgroup 联盟比赛起始区
#name 盟军比赛起始区
#displayname Chapter 1 - Highmountain Tauren Intro << HighmountainTauren !DK
#displayname Chapter 1 - Zandalari Troll Intro << ZandalariTroll !DK
#displayname Chapter 1 - Nightborne Intro << Nightborne !DK
#displayname Chapter 1 - Mag'har Orc Intro << MagharOrc !DK
#displayname Chapter 1 - Vulpera Intro << Vulpera !DK
#displayname Chapter 1 - New Deathknight Intro << DK
#next RestedXP部落10-60\1 BfA简介

<< HighmountainTauren/ZandalariTroll/Nightborne/MagharOrc/Vulpera/Horde Pandaren DK


step << HighmountainTauren !DK
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayla Highmountain|r
    .goto 652,54.85,63.18
    .accept 49773 >>接任务: |cRXP_WARN_为了部落！|r
    .target Mayla Highmountain
step << HighmountainTauren !DK
    #completewith next
    .goto 652,46.02,63.78
    .zone 85 >>带到Orgrimmar的入口
step << Nightborne !DK
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Arcanist Thalyssra|r
    .goto 680,59.34,85.53
    .accept 49933 >>接任务: |cRXP_WARN_为了部落！|r
    .target First Arcanist Thalyssra
step << Nightborne !DK
    #completewith next
    .goto 680,58.18,87.32
    .zone 85 >>带到Orgrimmar的入口
step << ZandalariTroll !DK
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Queen Talanji|r
    .goto 1165,49.93,46.64
    .accept 55137 >>接任务: |cRXP_WARN_为了部落！|r
    .target Queen Talanji
step << ZandalariTroll !DK
    #completewith next
    .goto 1165,49.94,43.85
    .zone 85 >>前往: |cRXP_PICK_杜隆塔尔|r
step << MagharOrc !DK
    .goto 85,70.6,44.6 --Not exact coords
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overlord Geya'rah|r 
    .accept 51485 >>接任务: |cRXP_WARN_为了部落！|r
    .target Overlord Geya'rah
step << Vulpera !DK
    .goto 85,64.647,46.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nilsa|r 
    .accept 58122 >>接任务: |cRXP_WARN_为了部落！|r
    .target Nilsa
step << !DK
    .goto 85,39.40,79.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Blackguard|r
    .turnin 49773 >>Turn in For the Horde << HighmountainTauren
    .turnin 49933 >>Turn in For the Horde << Nightborne
    .turnin 51485 >>Turn in For the Horde << MagharOrc
    .turnin 55137 >>Turn in For the Horde << ZandalariTroll
    .turnin 58122 >>Turn in For the Horde << Vulpera
    .accept 50319 >>接任务: |cRXP_WARN_异乡异客|r << HighmountainTauren
    .accept 50303 >>接任务: |cRXP_WARN_异乡异客|r << Nightborne
    .accept 53502 >>接任务: |cRXP_WARN_异乡异客|r << MagharOrc
    .accept 55138 >>接任务: |cRXP_WARN_异乡异客|r << ZandalariTroll
    .accept 58124 >>接任务: |cRXP_WARN_异乡异客|r << Vulpera
    .target Ambassador Blackguard
step << !DK
    .goto 85,40.834,80.155
    >>对话: |cRXP_FRIENDLY_克罗米|r
    .complete 50319,1 << HighmountainTauren --Talk to Chromie (1)
    .complete 50303,1 << Nightborne --Talk to Chromie (1)
    .complete 53502,1 << MagharOrc --Talk to Chromie (1)
    .complete 55138,1 << ZandalariTroll --Talk to Chromie (1)
    .complete 58124,1 << Vulpera --Talk to Chromie (1)
    .target Chromie
step << !DK
    .goto 85,40.777,80.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halian Shlavahawk|r << HighmountainTauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melitier Vahlouran|r << Nightborne
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Limbflayer Lasha|r << MagharOrc
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Natal'hakata|r << ZandalariTroll
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nilsa|r << Vulpera
    .turnin 50319 >>Turn in Stranger in a Strange Land << HighmountainTauren
    .turnin 50303 >>Turn in Stranger in a Strange Land << Nightborne
    .turnin 53502 >>Turn in Stranger in a Strange Land << MagharOrc
    .turnin 55138 >>Turn in Stranger in a Strange Land << ZandalariTroll
    .turnin 58124 >>Turn in Stranger in a Strange Land << Vulpera
    .target Halian Shlavahawk << HighmountainTauren
    .target Melitier Vahlouran << Nightborne
    .target Limbflayer Lasha << MagharOrc
    .target Natal'hakata << ZandalariTroll
    .target Nilsa << Vulpera
step << DK
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫妖王|r
    .goto 1602,49.59,90.70
    .accept 58877 >>接任务: |cRXP_WARN_死亡之力的增长|r
    .target The Lich King
step << DK
    >>使用|cffffff00[ExtraActionButton]|r
    .goto 1602,49.59,90.70
    .complete 58877,1 --1/1 Fealty sworn
step << DK
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_巫妖王|r
    .goto 1602,49.59,90.70
    .turnin 58877 >>Turn in Death's Power Grows
    .accept 58903 >>接任务: |cRXP_WARN_艾泽拉斯的守护者|r
    .target The Lich King
step << DK
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_大领主达里安·莫格莱尼|r
    .goto 1602,50.78,71.06
    .complete 58903,1 --1/1 Speak with Highlord Darion Mograine
    .target Highlord Darion Mograine
step << DK
    >>Use the Death Gate
    .goto 1602,49.91,39.06
    .complete 58903,3 --1/1 Listen to your commander (Optional)
    .complete 58903,2 --1/1 Death Gate used
step << DK
    #completewith next
    +|cfff78300Mount up|r
step << DK
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with |cRXP_PICK_Warchief's Command Board|r
    .goto 85,49.67,76.46
    .complete 58903,4 --1/1 Warchief's Command Board
step << DK
    >>点击任务日志中的任务
    .goto 85,49.67,76.46
    .turnin 58903 >>Turn in Defender of Azeroth
]])
