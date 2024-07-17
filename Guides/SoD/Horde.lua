RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD/Horde Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Legs << Warrior
#subgroup Gloves << Hunter
#name 狂暴之雷-10（穆戈尔） << Warrior
#name 爆炸射击-10（穆戈尔） << Hunter
#title Furious Thunder << Warrior
#title Explosive Shot << Hunter


    --Rune of Furious Thunder/Explosive Shot

step
    #season 2
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9,90,0
    .goto Mulgore,52.6,12.2,90,0
    .goto Mulgore,48.6,16.1,90,0
    .goto Mulgore,51.8,33.8,90,0
    .goto Mulgore,56.2,32.9
    >>环顾四周，寻找|cRXP_ENEMY_Arra'Hea|r（黑色大kodo）。他顺时针走。杀死并掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r] << Warrior
    >>环顾四周，寻找|cRXP_ENEMY_Arra'Hea|r（黑色大kodo）。他顺时针走。杀死并掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r] << Hunter
    .collect 204809,1 << Warrior --Rune of Furious Thunder(1)
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .mob Arra'Chea
    .train 403476,1 << Warrior
    .train 410123,1 << Hunter
step << Warrior
    #season 2
    .train 403476 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    .use 204809
    .itemcount 204809,1
step << Hunter
    #season 2
    .train 410123 >>使用|T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r]
    .use 206169
    .itemcount 206169,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD/Horde Hunter SoD
#group RestedXP Rune和书籍指南
#subgroup Gloves << Warrior
#subgroup Legs << Hunter
#name 快速打击-18（The Barrens） << Warrior
#name 狙击手训练-16（The Barrens） << Hunter
#title Quick Strike << Warrior
#title Sniper Training << Hunter

    --Rune of Quick Strike/Sniper Training

step
    #season 2
    #completewith next
    +|cRXP_WARN_这个符文在组队时非常容易。如果是单人，建议达到18+级|r << Warrior
    +|cRXP_WARN_这个符文在组队时非常容易。如果是单人，建议等级16+|r << Hunter
step
    #season 2
    .goto The Barrens,62.77,38.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_基尔克斯|r
    >>|cRXP_BUY_从他那里买一只|r|T135129:0|t[鱼叉]|cRXP_Buy_|r
    .collect 208773,1 --钓鱼 Harpoon (1)
    .target Kilxx
    .train 425443,1 << Warrior
    .train 416091,1 << Hunter
step
    #season 2
    .goto The Barrens,64.51,39.32
    .use 208773 >>在|cRXP_ENEMY_Bruuz|r上使用|T135129:0|t[鱼叉]并杀死他。掠夺他|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r] << Warrior
    .use 208773 >>在|cRXP_ENEMY_Bruuz|r上使用|T135129:0|t[鱼叉]并杀死他。抢劫他|T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r] << Hunter
    >>|cRXP_WARN_他在水中的沉船周围巡逻|r
    .collect 208778,1 << Warrior --Rune of Quick Strike (1)
    .collect 208777,1 << Hunter --Rune of the Sniper (1)
    .unitscan Bruuz
    .train 425443,1 << Warrior
    .train 416091,1 << Hunter
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r]|cRXP_WARN_to train|r|T132394:0|t[Quick Strike]
    .use 208778
    .itemcount 208778,1
step << Hunter
    #season 2
    .train 416091 >>|cRXP_WARN_使用|r|T134419:0|t[|cRXP_FRIENDLY_Rune of the Sniper|r]|cRXP-WARN_训练|r|T132212:0|t[狙击手训练]
    .use 208777
    .itemcount 208777,1

    ]])
