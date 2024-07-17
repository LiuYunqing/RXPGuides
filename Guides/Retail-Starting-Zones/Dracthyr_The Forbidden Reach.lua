RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#group重量9-9而不是8，因为它们从60开始+
#subgroup Dracthyr Starting Zones
#name Retail-Dracthyr_禁区
#displayname Chapter 1 - The Forbidden Reach
#next Dragonflight 60-70\ 1）唤醒海岸运动

<< Dracthyr

step
    .goto 2109,46.73,78.71
    .accept 64864 >>接任务: |cRXP_WARN_[Awaken, Dracthyr]|r
step
    #completewith DrakthyrIntroduction
    +欢迎使用RestedXP的Drakthyr指南。
step
    #label DrakthyrIntroduction
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with |cRXP_FRIENDLY_Kodethi|r or |cRXP_FRIENDLY_Dervishian|r in front of you. Wait for your Disintegrate to complete.
    .goto 2109,47.50,84.52,-1
    .goto 2109,46.28,79.52,-1
    .goto 2109,42.91,77.49,-1
    .goto 2109,39.59,79.71,-1
    .goto 2109,38.20,84.72,-1
    .goto 2109,43.03,91.77,-1
    .goto 2109,46.34,89.49,-1
    .complete 64864,1 --1/1 Dracthyr ally awakened
    .target Kodethi
    .target Dervishian
step
    #completewith TheForbiddenReachAwakenDracthyr
    +|cRXP_WARN_移动时的垃圾邮件空间比正常移动更快|r
step
    >>跳下并与|cRXP_FRIENDLY_Tethalash|r交互。等待你的崩解完成。
    .goto 2109,44.36,85.54
    .complete 64864,3 --1/1 Tethalash awakened
    .target Tethalash
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_bones|r on the bed
    .goto 2109,47.95,79.94
    .complete 64864,2 --1/1 Kethahn found
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with |cRXP_FRIENDLY_Azurathel|r. Wait for your Disintegrate to complete.
    .goto 2109,46.83,81.83,5,0
    .goto 2109,39.18,82.11,5,0
    .goto 2109,34.26,81.08,5,0
    .goto 2109,32.15,82.73
    .complete 64864,4 --1/1 Azurathel awakened
    .target Azurathel
step
    #label TheForbiddenReachAwakenDracthyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Azurathel|r and |cRXP_FRIENDLY_Dervishian|r after a short roleplay
    .turnin 64864 >>Turn in Awaken, Dracthyr
    .accept 64865 >>接任务: |cRXP_WARN_[Gear Up]|r
    .goto 2109,32.92,81.57
    .accept 64863 >>接任务: |cRXP_WARN_[Arcane Guardians]|r
    .goto 2109,33.08,80.67
    .target Scalecommander Azurathel
    .target Dervishian
step
    #completewith next
    .goto 2109,35.81,73.85
    .cast 6478 >>拿起|cRXP_Pick_Crystal Key|r并将其放在旁边的Crystal Focus中
step
    .goto 2109,38.29,74.52
    .turnin 66010 >>拿起桌子上的|cRXP_Pick_神秘魔杖|r
step
    #sticky
    #label TheForbiddenReachArcaneGuardians
    >>焦点|cRXP_ENEMY_Ancient Constructs|r。当它们命中40%时逃跑（它们分裂并产生两个小添加）
    .complete 64863,1 --4/4 Guardians or Constructs slain
    .mob Ancient Guardian
    .mob Ancient Construct
step
    >>拿起|cRXP_Pick_Stack of Weapons|r
    .goto 2109,38.05,65.56,6,0
    .goto 2109,43.27,63.85,6,0
    .goto 2109,45.04,66.23
    .complete 64865,1 --1/1 Stack of Weapons
step
    >>拿起|cRXP_Pick_Rations|r
    .goto 2109,43.54,63.77,6,0
    .goto 2109,43.54,63.77,6,0
    .goto 2109,34.25,61.10
    .complete 64865,3 --1/1 Bundle of Rations collected
step
    >>拿起|cRXP_Pick_Crate|r
    .goto 2109,36.45,61.32,6,0
    .goto 2109,39.54,54.9,6,0
    .goto 2109,38.78,51.35
    .complete 64865,2 --1/1 Crate of Warscales
step
    #requires TheForbiddenReachArcaneGuardians
    #completewith next
    +您可以跳过下一个过场（Esc->是）
step
    #requires TheForbiddenReachArcaneGuardians
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dervishian|r and |cRXP_FRIENDLY_Scalecommander Azurathel|r
    .goto 2109,39.75,54.98,6,0
    .goto 2109,43.89,59.14,6,0
    .turnin 64863 >>Turn in Arcane Guardians
    .goto 2109,45.82,58.56
    .turnin 64865 >>Turn in Gear Up
    .accept 64866 >>接任务: |cRXP_WARN_[Into the Cauldron]|r
    .goto 2109,46.45,57.07
    .target Dervishian
    .target Scalecommander Azurathel
step
    #completewith next
    +检查您的行李是否有新设备
step
    >>使用|T4622464:0|t[Living Flame]治疗区域内受伤的Drakthyr's
    .goto 2109,55.54,45.41,15,0
    .goto 2109,53.46,39.05,25,0
    .goto 2109,59.21,50.57,25,0
    .goto 2109,62.73,50.29,25,0
    .goto 2109,64.09,43.09,25,0
    .goto 2109,58.3,41.21
    .complete 64866,1 --1/1 Glide into the Earth-Warder's Cauldron
    .complete 64866,2 --5/5 Dracthyr rescued or healed with Living Flame
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Azurathel|r and |cRXP_FRIENDLY_Scalecommander Cindrethresh|r
    .turnin 64866 >>Turn in Into the Cauldron
    .goto 2109,61.98,36.25
    .accept 64871 >>接任务: |cRXP_WARN_[The Dragon at the Door]|r
    .goto 2109,62.34,36.41
    .target Scalecommander Azurathel
    .target Scalecommander Cindrethresh
step
    #completewith next
    +检查您的行李是否有新设备
step
    >>确保在杀死龙之前完成“到达出口”
    .goto 2109,66.4,10.69
    .complete 64871,1 --Exit reached
step
    >>杀死|cRXP_ENEMY_Lapisagos|r。小元素在死亡时给你一个伤害增益
    .goto 2109,66.4,10.69
    .complete 64871,2 --1/1 Lapisagos slain
    .mob Lapisagos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Cindrethresh|r and |cRXP_FRIENDLY_Scalecommander Azurathel|r
    >>|cRXP_WARN_取消“挤压缓冲”以提高移动速度|r
    .turnin 64871 >>Turn in The Dragon at the Door
    .accept 64872 >>接任务: |cRXP_WARN_[The Fire Within]|r
    .goto 2118,44.39,61.51
    .accept 65615 >>接任务: |cRXP_WARN_奥术侵扰|r
    .goto 2118,44.10,61.38
    .target Scalecommander Cindrethresh
    .target Scalecommander Azurathel
step
    #completewith TheForbiddenReachTheFireWithin3
    +检查您的行李是否有新设备
step
    #completewith TheForbiddenReachTheFireWithin
    +|cRXP_WARN_您可以单击|cRXP_PICK_Fire Breath Infusers|r来重置您的Fire Breast冷却时间|r
step
    #label TheForbiddenReachTheFireWithin3
    >>施放|T4622458:0|t[喷火之息]并按住它直到到达最后一个施放部分
    .goto 2118,43.78,61.29
    .complete 64872,3 --Cast an Empowered III Fire Breath
step
    >>施放|T4622458:0|t[火息]并按住它，直到到达|cRXP_WARN_cond|r增强部分
    .goto 2118,43.78,61.29
    .complete 64872,2 --Cast an Empowered II Fire Breath
step
    #completewith next
    +您可以跳过下一个过场（Esc->是）
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Beacon|r
    .goto 2118,45.42,53.71
    .complete 65615,1 --1/1 Beacon investigated
step
    #label TheForbiddenReachTheFireWithin
    >>铸造|T4622458:0|t[火息]（不要按住按钮）
    .goto 2118,44.41,57.63
    .complete 64872,1 --Cast an Empowered I Fire Breath
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Cindrethresh|r and |cRXP_FRIENDLY_Scalecommander Azurathel|r
    .turnin 64872 >>Turn in The Fire Within
    .goto 2118,44.40,61.50
    .turnin 65615 >>Turn in Arcane Intrusion
    .goto 2118,44.09,61.36
    .target Scalecommander Cindrethresh
    .target Azurathel
step
    #completewith next
    #sticky
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fusethrian|r
	.target Fusethrian
    .goto 2118,43.42,60.80
    .home >>将你的炉石设置为古老的韦恩高地
step
    .goto 2118,44.54,61.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r
	.target Scalecommander Emberthal
    .accept 64873 >>接任务: |cRXP_WARN_[Stretch Your Wings]|r
step
    #completewith next
    +检查您的行李是否有新设备
step
    >>使用[ExtraActionButton]传送到NPC的正前方
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dervishian|r
	.target Dervishian
    .goto 2118,44.73,57.65
    .use 195044
    .complete 64873,1 --1/1 Learn about coasting
step
    #completewith next
    +检查您的拼写手册|T4622485:0|t[Soar]
step
    >>Use |T4622485:0|t[Soar]
    .complete 64873,2 --Cast Soar
step
    >>使用翱翔能力|T2103880:0|t[向前冲]（1）和|T2103876:0|t[向上爬]（2）|cRXP_WARN_确保飞越吊环|r
    .goto 2118,50.53,45.29
    .complete 64873,3 --5/5 Soared through rings
step
    #completewith next
    .cast 369536 >>Cast Soar
step
    .goto 2118,42.12,34.36
    .turnin 65909 >>拿起|cRXP_Pick_Bag of Enchanted Wind|r进行移动速度Buff
step
    #completewith next
    +使用[ExtraActionButton]返回
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kodethi|r
	.target Kodethi
    .use 195044
    .goto 2118,41.42,48.21
    .complete 64873,4 --1/1 Learn about diving
step
    #completewith next
    .cast 369536 >>Cast Soar
step
    >>使用翱翔能力|T2103880:0|t[向前冲]（1）和|T2103876:0|t[向上爬]（2）|cRXP_WARN_确保飞越吊环|r
    .goto 2118,34.59,49.58
    .complete 64873,5 --5/5 Diving through rings
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dervishian|r
	.target Dervishian
    .goto 2118,44.71,57.64
    .complete 64873,6 --1/1 Learn about Advanced Flying
step
    #completewith next
    .cast 369536 >>Cast Soar
step
    >>使用翱翔能力|T2103880:0|t[向前冲]（1）和|T2103876:0|t[向上爬]（2）|cRXP_WARN_确保飞越吊环|r
    .goto 2118,52.78,35.59
    .complete 64873,7 --3/3 Soar through rings
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dervishian|r
	.target Dervishian
    .goto 2118,44.71,57.63
    .turnin 64873 >>Turn in Stretch Your Wings
    .accept 65036 >>接任务: |cRXP_WARN_[Train Like We Fight]|r
step
    >>Use |T4622485:0|t[Soar]
    .complete 65036,1 --Practice Soar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r
	.target Scalecommander Emberthal
    .goto 2118,44.23,61.16
    .turnin 65036 >>Turn in Train Like We Fight
    .accept 65060 >>接任务: |cRXP_WARN_[Caldera of the Menders]|r
step
    #completewith next
    .cast 369536 >>铸索尔，顺箭而行
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Cindrethresh|r
	.target Scalecommander Cindrethresh
    .goto 2118,36.46,32.54
    .skipgossip 1
    .complete 65060,1 --1/1 Meet Cindrethresh at the Caldera of the Menders
step
    #completewith next
    .cast 369536 >>铸索尔，顺箭而行
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Cindrethresh|r
    .goto 2118,18.81,15.82
    .turnin 65060 >>Turn in Caldera of the Menders
    .accept 65063 >>接任务: |cRXP_WARN_[Into the Hive]|r
	.target Scalecommander Cindrethresh
step
    >>|cRXP_WARN_不要跟着他|r。只需沿着箭头站在汽油中填满进度条。
    .goto 2110,84.91,77.00
    .complete 65063,1 --1/1 Follow Cindrethresh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Viridia|r and |cRXP_FRIENDLY_Scalecommander Cindrethresh|r
    .turnin 65063 >>Turn in Into the Hive
    .accept 65073 >>接任务: |cRXP_WARN_[A Toxic Problem]|r
    .goto 2118,20.08,19.08
    .accept 65074 >>接任务: |cRXP_WARN_[Easy Prey]|r
    .goto 2118,20.22,19.00
	.target Scalecommander Viridia
	.target Scalecommander Cindrethresh
step
    #completewith next
    +检查您的行李是否有新设备
step
    #completewith next
    +垃圾邮件空间比正常行走更快
step
    #completewith next
    >>杀死区域中的|cRXP_ENEMY_Scythed|r
    .complete 65074,1 --4/4 Scythid slain
    .mob Scythid Steamstalker
    .mob Deatheater Scythid
step
    >>杀死区域中的|cRXP_ENEMY_Scalerenders|r。为|cRXP_Loot_glands|r掠夺它们
#loop
	.line 2118,24.77,30.11,26.89,32.41,28.52,30.33,30.39,29.45,33.84,29.78,36.97,24.44,30.60,20.52
	.goto 2118,24.77,30.11,20,0
	.goto 2118,26.89,32.41,20,0
	.goto 2118,28.52,30.33,20,0
	.goto 2118,30.39,29.45,20,0
	.goto 2118,33.84,29.78,20,0
	.goto 2118,36.97,24.44,20,0
	.goto 2118,30.60,20.52,20,0
    .complete 65073,1 --6/6 Toxin Glands collected
    .mob Mature Scalerender
    .mob Scalerender Beetle
    .mob Deatheater Scythid
step
    >>杀死区域中的|cRXP_ENEMY_Scythed|r
    .goto 2118,35.21,24.52,30,0
    .goto 2118,31.33,24.79,30,0
#loop
	.line 2118,24.77,30.11,26.89,32.41,28.52,30.33,30.39,29.45,33.84,29.78,36.97,24.44,30.60,20.52
	.goto 2118,24.77,30.11,20,0
	.goto 2118,26.89,32.41,20,0
	.goto 2118,28.52,30.33,20,0
	.goto 2118,30.39,29.45,20,0
	.goto 2118,33.84,29.78,20,0
	.goto 2118,36.97,24.44,20,0
	.goto 2118,30.60,20.52,20,0
    .complete 65074,1 --4/4 Scythid slain
    .mob Scythid Steamstalker
    .mob Deatheater Scythid
step
    #completewith next
    .cooldown spell,369536,>0,1
    .cast 369536 >>铸索尔，顺箭而行
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Cindrethresh|r and |cRXP_FRIENDLY_Scalecommander Viridia|r
    .goto 2118,20.59,17.44,30,0
    .turnin 65074 >>Turn in Easy Prey
    .goto 2118,20.23,19.01
    .turnin 65073 >>Turn in A Toxic Problem
    .accept 65307 >>接任务: |cRXP_WARN_[Mercy First]|r
    .goto 2118,20.07,19.08
	.target Scalecommander Cindrethresh
    .target Scalecommander Viridia
step
    #completewith next
    +检查您的行李是否有新设备
    *Check your Spellbook for Emerald Blossom and Fury of the Aspect(if you are 60)
step
    >>在任何|cRXP_FRIENDLY_Injured Drakonid|r上使用|T4622457:0|t[Emerald Blossom]。与|cRX_PICK_Emerald Bloossom Infuser|r交互以重置冷却时间
    *Alternatively use |T4622464:0:0|t[Living Flame]
    .complete 65307,3 --1/1 Atrenosh Hailstone healed
    .goto 2118,24.90,13.59
    .complete 65307,2 --4/4 Injured drakonid healed
    .goto 2118,24.90,13.59
    .target Injured Drakonid
step
    >>使用|T4622457:0:0|t[Emerald Blossom]在任何|cRXP_FRIENDLY_Injured Talon|r上。与|cRX_PICK_Emerald Bloossom Infuser|r交互以重置冷却时间
    *Alternatively use |T4622464:0:0|t[Living Flame]
    .goto 2118,25.77,17.75,15,0
    .goto 2118,25.89,18.55,15,0
    .goto 2118,24.03,22.16,15,0
    .goto 2118,21.89,22.21
    .complete 65307,1 --10/10 Injured dracthyr healed
    .target Injured Talon
step
    #requires Area3
    .goto 2118,21.76,18.36,15,0
    .goto 2118,20.61,17.41,15,0
    .goto 2118,20.06,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Viridia|r
	.target Scalecommander Viridia
    .turnin 65307 >>Turn in Mercy First
    .accept 66324 >>接任务: |cRXP_WARN_[Never Forgotten]|r
step
    #completewith TheForbiddenReachNeverForgotten3
    +|cRXP_WARN_几乎在冷却时使用[ExtraActionButton]来降低毒性水平|r
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the |cRXP_PICK_Report: Infestation|r on the Ground
    .goto 2110,66.63,67.70
    .complete 66324,2 --1/1 Clues discovered
    .use 191729
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tSearch |cRXP_FRIENDLY_Karinasa|r
    .goto 2110,39.43,28.74
    .complete 66324,1,1 --3/3 Horn signets collected
    .use 191729
    .target Karinasa
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tSearch |cRXP_FRIENDLY_Rethenash|r
    .goto 2110,34.49,38.6
    .complete 66324,1,2 --3/3 Horn signets collected
    .use 191729
    .target Rethenash
step
    #label TheForbiddenReachNeverForgotten3
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tSearch |cRXP_FRIENDLY_Tenezeth|r
    .goto 2110,18.66,50.86
    .complete 66324,1,3 --3/3 Horn signets collected
    .use 191729
    .target Tenezeth
step
    #completewith TheForbiddenReachNeverForgotten10
    +|cRXP_WARN_仅使用|cffffff00[ExtraActionButton]|r保持在50-60%左右|r
step
    #completewith next
    .goto 2110,27.74,45.67
    .cast 6478 >>拿起地上的|cRXP_Pick_Crystal Key|r
step
    #label TheForbiddenReachNeverForgotten10
    >>将Crystal Key放入|cRXP_PICK_Crystal Lock |r
    .goto 2110,25.6,33.76
    .complete 66324,3 --10/10 Survivors Rescued
    .use 191729
step
    #completewith next
    .goto 2110,32.46,40.74,10,0
    +|cRXP_WARN_Stop使用[ExtraActionButton]。让它发生吧|r踏入气体云会产生更多毒性。
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Viridia|r
	.target Scalecommander Viridia
    .goto 2118,20.07,19.08
    .turnin 66324 >>Turn in Never Forgotten
    .accept 65075 >>接任务: |cRXP_WARN_[The Healing Wings]|r
step
    #completewith next
    +检查您的行李是否有新设备
    *Check your Spellbook for Hover
step
    >>进入空气涡流，返回|cRXP_FRIENDLY_Scalecommander Emberthal|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r
    .goto 2118,20.4,19.6,5,0
    .goto 2118,44.24,61.17
    .turnin 65075 >>Turn in The Healing Wings
    .accept 65045 >>接任务: |cRXP_WARN_[Stormsunder Crater]|r
    .target Scalecommander Emberthal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Treysh|r. Choose any mount of you like (Ctrl+Click for a preview)
    .goto 2118,45.31,61.34
    .turnin 72263 >>交任务: |cRXP_FRIENDLY_[Cavalry Has Its Place]|r
step
    #completewith TheForbiddenReachStormsunderCrater
    +|cRXP_WARN_使用包中的支架并将支架拖动到动作栏|r
step
    #completewith next
    .cooldown spell,369536,>0,1
    .cast 369536 >>铸索尔，顺箭而行
step
    #label TheForbiddenReachStormsunderCrater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Azurathel|r and |cRXP_FRIENDLY_Dervishian|r
    .turnin 65045 >>Turn in Stormsunder Crater
    .accept 65049 >>接任务: |cRXP_WARN_[Tangle with the Tarasek]|r
    .accept 65050 >>接任务: |cRXP_WARN_[Conjured Army]|r
    .goto 2118,70.43,64.35
    .accept 65046 >>接任务: |cRXP_WARN_[The Primalists]|r
    .goto 2118,70.36,64.61
    .target Scalecommander Azurathel
    .target Dervishian
step
    #completewith TheForbiddenReachThePrimalists1
    +提醒：您现在可以上车了
step
    #sticky
    #label TheForbiddenReachConjuredArmy
    >>杀死|cRXP_ENEMY_魔法元素|r
    .goto 2118,76.04,66.83,0,0
    .complete 65050,1 --12/12 Conjured elementals slain
    .mob Conjured Stormling
step
    #completewith next
    >>杀死|cRXP_ENEMY_Taraseks|r
    .complete 65049,1 --7/7 Tarasek slain
    .mob Infused Tarasek
    .mob Tarasek Shockbringer
    .mob Tarasek Shockshaman
step
    #label TheForbiddenReachThePrimalists1
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the floating |cRXP_PICK_stones|r
    .goto 2118,71.87,60.20
    .complete 65046,1 --1/1 Primalist intentions discovered
step
    #completewith TheForbiddenReachThePrimalists
    >>杀死|cRXP_ENEMY_Taraseks|r
    .complete 65049,1 --7/7 Tarasek slain
    .mob Infused Tarasek
    .mob Tarasek Shockbringer
    .mob Tarasek Shockshaman
step
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the floating |cRXP_PICK_stones|r
    .goto 2118,71.93,54.52
    .complete 65046,3 --1/1 Primalist leaders discovered
step
    #completewith next
    .cast 369536 >>铸索尔，顺箭而行
step
    #label TheForbiddenReachThePrimalists
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tInteract with the floating |cRXP_PICK_stones|r
    .goto 2118,78.25,66.47
    .complete 65046,2 --1/1 Primalist motivations discovered
step
    >>杀死|cRXP_ENEMY_Taraseks|r
    .goto 2118,77.71,68.82,30,0
    .goto 2118,74.28,68.59,30,0
    .goto 2118,73.49,65.82,20,0
    .goto 2118,70.78,60.33,30,0
    .goto 2118,74.91,56.79
    .complete 65049,1 --7/7 Tarasek slain
    .mob Infused Tarasek
    .mob Tarasek Shockbringer
    .mob Tarasek Shockshaman
step
    #requires TheForbiddenReachConjuredArmy
    .goto 2118,79.42,62.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dervishian|r and |cRXP_FRIENDLY_Scalecommander Azurathel|r
    .turnin 65046 >>Turn in The Primalists
    .turnin 65049 >>Turn in Tangle with the Tarasek
    .turnin 65050 >>Turn in Conjured Army
    .accept 65052 >>接任务: |cRXP_WARN_[The Ebon Scales]|r
    .target Dervishian
    .target Scalecommander Azurathel
step
    #completewith next
    +检查您的包是否有新设备
    *Check your Spellbook for new Spells
step
    #completewith next
    +您可以跳过下一个过场（Esc->是）
step
    >>只要你能看到[ExtraActionButon]，就按它。
    .goto 2118,81.32,56.81
    .complete 65052,1 --1/1 Attack on Ekrazathal signaled
step
    #completewith next
    +检查您的包是否有新设备
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Sarkareth|r
	.target Scalecommander Sarkareth
    .goto 2118,81.22,53.96
    .turnin 65052 >>Turn in The Ebon Scales
    .accept 65057 >>接任务: |cRXP_WARN_[Rally to Emberthal]|r
step
    #completewith next
    .hs >>向禁入之境致敬
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r
	.target Scalecommander Emberthal
    .goto 2118,44.22,61.17
    *您可以跳过下一个过场（Esc->是）
    .turnin 65057 >>Turn in Rally to Emberthal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r
	.target Scalecommander Emberthal
    .goto 2118,44.83,57.69
    .accept 65701 >>接任务: |cRXP_WARN_[Preservation, Augmentation, or Devastation]|r
step
    >>选择毁灭（DPS）或保存（治疗）
    .complete 65701,1 --1/1 Activate a Talent Spec
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r
	.target Scalecommander Emberthal
    .goto 2118,44.83,57.69
    .turnin 65701 >>Turn in Preservation or Devastation
    .accept 65084 >>接任务: |cRXP_WARN_[The Froststone Vault]|r
step
    #completewith next
    +检查您的行李是否有新设备
    *Check your Spellbook for new spells
step
    #completewith next
    .cast 369536 >>铸索尔，顺箭而行
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Sarkareth|r
	.target Scalecommander Sarkareth
    .goto 2118,56.72,28.18
    .turnin 65084 >>Turn in The Froststone Vault
    .accept 65087 >>接任务: |cRXP_WARN_[The Prize Inside]|r
step
    >>使用翡翠花和活焰治疗NPC并杀死敌人
    *The best way is to find a |cRXP_FRIENDLY_Azuresworn Drakonid|r with very low HP and heal him.
    .goto 2118,54.52,31.64
    .complete 65087,1 --Froststone Vault defended (100%)
step
    #completewith next
    +您可以跳过下一个过场（Esc->是）
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Sarkareth|r
	.target Scalecommander Sarkareth
    .goto 2118,56.35,28.75
    .turnin 65087 >>Turn in The Prize Inside
step
    .goto 2118,54.10,32.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r
	.target Scalecommander Emberthal
    .accept 65097 >>接任务: |cRXP_WARN_[Run!]|r
step
    #completewith TheForbiddenReachFinalOrders
    +|cRXP_WARN_提醒：垃圾空间比正常行走更快|r
step
    >>立即开始运行并进入|cRXP_FRIENDLY_Wrathion|r
    .goto 2118,47.02,35.52
    .complete 65097,1 --1/1 Outrun the Avatar of the Storm
step
    >>访问|cRXP_FRIENDLY_Wrathion|r
    .goto 2118,47.75,34.69
    .complete 65097,2 --Wrathion found
step
    >>用活焰和翡翠花治愈|cRXP_FRIENDLY_Wrathion|r
    .goto 2118,47.09,35.38
    .complete 65097,3 --1/1 Wrathion healed
    .target Wrathion
step
    .goto 2118,47.04,35.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉希奥|r
	.target Wrathion
    .turnin 65097 >>Turn in Run!
    .accept 65098 >>接任务: |cRXP_WARN_[The Consequence of Courage]|r
step
    >>避免拉暴徒。按照箭头
    .goto 2118,45.96,40.26
    .complete 65098,1 --1/1 Ebyssian found
step
    >>Heal |cRXP_FRIENDLY_Ebyssian|r above 90% HP with Living Flame and Emerald Blossom
    .goto 2118,43.22,38.26
    .complete 65098,2 --1/1 Ebyssian healed
    .target Ebyssian
step
    .goto 2118,41.68,44.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Emberthal|r
	.target Scalecommander Emberthal
    .turnin 65098 >>Turn in The Consequence of Courage
    .accept 65100 >>接任务: |cRXP_WARN_[Final Orders]|r
step
    #completewith next
    +检查您的行李是否有新设备
step
    >>Follow the arrow
    .goto 2118,41.79,53.44
    .complete 65100,1 --1/1 Reach the Old Weyrn Grounds
step
    #completewith next
    +您可以跳过下一个过场（Esc->是）
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_诺兹多姆|r
    .goto 2118,42.98,59.63,25,0
    .goto 2118,43.57,59.68
    .complete 65100,2 --1/1 Speak with Nozdormu
    .target Nozdormu
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viridia|r
	.target Viridia
    .goto 2118,43.47,54.15
    .skipgossip 1
    .complete 65100,4 --1/1 Viridia spoken to
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sarkareth|r
	.target Sarkareth
    .goto 2118,47.06,55.88
    .skipgossip 1
    .complete 65100,3 --1/1 Sarkareth spoken to
step
    #completewith next
    +您可以跳过下一个过场（Esc->是）
step
    --x .goto 2118,44.65,55.16 --x maybe talent choice based?
    #label TheForbiddenReachFinalOrders
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Azurathel|r
	.target Scalecommander Azurathel
    .goto 2118,44.64,55.16
    .turnin 65100 >>Turn in Final Orders
step << Alliance
    #completewith next
    +检查您的行李是否有新设备
step << Alliance
    .goto 37,32.26,49.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉希奥|r
	.target Wrathion
    .accept 65286 >>接任务: |cRXP_WARN_龙裔交际|r
step << Alliance
    .goto 37,32.26,49.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Azurathel|r
	.target Scalecommander Azurathel
    .turnin 65286 >>Turn in Draconic Connections
    .accept 66513 >>接任务: |cRXP_WARN_探路假期|r
step << Alliance
    >>Follow the Waypoint
    .goto 84,62.63,77.65
    .complete 66513,2 --Visit the Bank
step << Alliance
    >>Follow the Waypoint
    .goto 84,61.60,72.29
    .complete 66513,1 --Visit the Auction House
step << Alliance
    >>Follow the Waypoint
    .goto 84,49.05,87.11
    .complete 66513,4 --Visit the Portal Room
step << Alliance
    >>Follow the Waypoint
    .goto 84,52.39,13.83
    .complete 66513,3 --Visit the Embassy
step << Alliance
    .goto 84,79.93,26.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Azurathel|r
	.target Scalecommander Azurathel
    .turnin 66513 >>Turn in Ground Leave
step << Alliance
    .goto 84,79.84,27.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉希奥|r
	.target Wrathion
    .accept 66577 >>接任务: |cRXP_WARN_守护巨龙之邀|r
    .turnin 66577 >>Turn in Aspectral Invitation
    .accept 65101 >>接任务: |cRXP_WARN_龙裔标志造型|r
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉希奥|r
	.target Wrathion
    .complete 65101,1 --1/1 Speak to Wrathion
step << Alliance
    >>关注Wrathion并尽快使用ExtraActionButon
    .goto 84,82.61,23.94
    .complete 65101,2 --1/1 Learn about visage form
    .complete 65101,3 --1/1 Assume your mortal visage
step << Alliance
    .goto 84,82.58,23.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_拉希奥|r
	.target Wrathion
    .turnin 65101 >>Turn in An Iconic, Draconic Look
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spiritwalker Ebonhorn|r and |cRXP_FRIENDLY_Scalecommander Cindrethresh|r
    .accept 66237 >>接任务: |cRXP_WARN_[Spiritual Allies]|r
    .goto 1,45.62,12.89
    .turnin 66237 >>Turn in Spiritual Allies
    .accept 66534 >>接任务: |cRXP_WARN_探路假期|r
    .goto 1,45.56,12.95
    .target Spiritwalker Ebonhorn
    .target Scalecommander Cindrethresh
step << Horde
    #completewith next
    +|cRXP_WARN_提醒：您可以再次登上！|r
step << Horde
    >>Follow the arrow
    .complete 66534,4 --Visit the Portal Room
    .goto 85,55.77,90.01
    .complete 66534,2 --Visit the Bank
    .goto 85,48.97,82.67
    .complete 66534,1 --Visit the Auction House
    .goto 85,53.45,74.25
    .complete 66534,3 --Visit the Embassy
    .goto 85,38.26,80.72
step << Horde
    #completewith DracthyrHordeTrainRiding
    .cooldown spell,369536,>20,1
    .cast 369536 >>铸索尔，顺箭而行
step << Horde
    #completewith DracthyrHordeTrainRiding
    .noflyable 85
    .cooldown spell,369536,<1,1
    .goto 85,43.70,67.46,5 >>Take the elevator
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scalecommander Cindrethresh|r
	.target Scalecommander Cindrethresh
    .goto 85,44.02,38.23
    .turnin 66534 >>Turn in Ground Leave
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebyssian|r
	.target Ebyssian
    .goto 85,44.06,37.93
    .accept 65437 >>接任务: |cRXP_WARN_守护巨龙之邀|r
step
    #completewith next
    +您可以跳过下一个过场（Esc->是）
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebyssian|r
	.target Ebyssian
    .goto 85,44.06,37.93
    .skipgossip 190239,1
    .complete 65437,1 --1/1 Speak with Ebyssian
step << Horde
    .goto 85,44.07,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebyssian|r
	.target Ebyssian
    .turnin 65437 >>Turn in Aspectral Invitation
    .accept 65613 >>接任务: |cRXP_WARN_龙裔标志造型|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebyssian|r
	.target Ebyssian
    .goto 85,44.07,37.96
    .skipgossip 190239,1
    .complete 65613,1 --1/1 Ask Ebyssian about Visage Form
step << Horde
    >>等待|cRXP_FRIENDLY_Ebyssian|r完成他的故事
    .goto 85,44.06,37.96
    .complete 65613,2 --1/1 Learn about Visage Form
step
    >>使用[ExtraActionButon]
    .goto 85,44.06,37.96
    .complete 65613,3 --1/1 Adopt a Visage Form
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebyssian|r
	.target Ebyssian
    .goto 85,44.09,37.98
    .turnin 65613 >>Turn in An Iconic, Draconic Look
]])
