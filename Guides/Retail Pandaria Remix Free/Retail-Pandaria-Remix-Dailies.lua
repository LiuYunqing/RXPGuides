----------------------------
---x DAILIES
----------------------------

-- Cloud Serpent Dailies
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X） 云蛇Dailies
#internal

--     .accept 30155 >>接任务: |cRXP_WARN_恢复平衡|r
--     -- .daily 31707 30158 31712 30155 31698 31706
--     .target Instructor Skythorn
-- -- step
-- --     .goto 371,57.50,45.29
-- --     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Your Hatchling|r
-- --     .accept 30156 >>接任务: |cRXP_WARN_喂食时间|r
-- --     -- .daily 30150 30151 30154 30156 31704 31708 31710
-- --     .target Your Hatchling
-- -- step
--     -- .goto 371,57.5,44.7
--     -- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenova Longeye|r
--     -- .accept 30146 >>接任务: |cRXP_WARN_打牙祭|r
--     -- .accept 30147 >>接任务: |cRXP_WARN_历史的残片|r
--     -- .accept 30148 >>接任务: |cRXP_WARN_只是皮肉伤|r
--     -- .accept 30149 >>接任务: |cRXP_WARN_味觉盛宴|r
--     -- .target Jenova Longeye
-- step
--     .goto 371,57.74,44.85
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
--     .accept 31194 >>接任务: |cRXP_WARN_镇压滑鳞氏族|r
--     -- .daily 31194,31701,31702,31703,31705,31711,31715
--     .target Elder Anli
-- step
--     .goto 371,58.46,44.70
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suchi the Sweet|r
--     .accept 30157 >>接任务: |cRXP_WARN_空空如也的巢穴|r
--     .daily 30157,30159
--     .target Suchi the Sweet
-- step
--     #completewith next
--     .isOnQuest 80013
--     .goto 371,65.25,37.20
--     >>使用|T134376:0|t[青铜计时器]
--     .itemcount 216712,1
--     .use 216712
-- -- step
-- --     #completewith next
-- --     >>杀死|cRXP_ENEMY_Slitherscale Saurok|r
-- --     .complete 30155,1 --8/8 Slitherscale saurok slain
-- --     .mob Slitherscale Eggdrinker
-- step
--     .goto 371,69.73,31.28
--     >>杀死|cRXP_ENEMY_Slitherscale蜥蜴领主|r
--     .complete 31194,1 --1/1 Slitherscale Lizard-Lord slain
--     .mob slitherscale lizard-lord
-- step
--     #completewith next
--     .isOnQuest 80013
--     .goto 371,65.25,37.20
--     >>使用|T134376:0|t[青铜计时器]
--     .itemcount 216712,1
--     .use 216712
-- step
--     #completewith Slitherscale Saurok 2
--     #hidewindow
--     #loop
--     .goto 371,65.49,33.79,20,0
--     .goto 371,65.19,33.09,20,0
--     .goto 371,64.55,32.55,20,0
--     .goto 371,64.68,32.01,20,0
--     .goto 371,64.59,31.15,20,0
--     .goto 371,64.51,29.51,20,0
--     .goto 371,65.37,29.39,20,0
--     .goto 371,65.31,28.41,20,0
--     .goto 371,64.72,27.94,20,0
--     .goto 371,64.08,28.5,20,0
--     .goto 371,63.85,30.86,20,0
--     .goto 371,63.66,32.7,20,0
--     +1
-- step
--     #completewith Interact with Windward Hatchlings 2
--     >>杀死|cRXP_ENEMY_Slitherscale Saurok|r
--     .complete 30155,1 --8/8 Slitherscale saurok slain
--     .mob Slitherscale Eggdrinker
-- step
--     .isOnQuest 30157
--     .cast 110171 >>与|cRXP_FRIENDLY_Windward Hatchling|r交互
--     .use 78947
--     .target Windward Hatchlings
-- step
--     .isOnQuest 30157
--     .cast 110171 >>与|cRXP_FRIENDLY_Windward Hatchling|r交互
--     .use 78947
--     .target Windward Hatchlings
-- step
--     .isOnQuest 30157
--     .cast 110171 >>与|cRXP_FRIENDLY_Windward Hatchling|r交互
--     .use 78947
--     .target Windward Hatchlings
-- step
--     .isOnQuest 30157
--     .cast 110171 >>与|cRXP_FRIENDLY_Windward Hatchling|r交互
--     .use 78947
--     .target Windward Hatchlings
-- step
--     .isOnQuest 30157
--     .cast 110171 >>与|cRXP_FRIENDLY_Windward Hatchling|r交互
--     .use 78947
--     .target Windward Hatchlings
-- step
--     #label Interact with Windward Hatchlings 2
--     .isOnQuest 30157
--     .cast 110171 >>与|cRXP_FRIENDLY_Windward图案填充交互|
--     .use 78947
--     .target Windward Hatchlings
-- step
--     #label Slitherscale Saurok 2
--     >>杀死|cRXP_ENEMY_Slitherscale Saurok|r
--     .complete 30155,1 --8/8 Slitherscale saurok slain
--     .mob Slitherscale Eggdrinker
-- step
--     .goto 371,65.18,30.07,-1
--     .goto 371,65.64,30.22,-1
--     .goto 371,65.71,30.69,-1
--     .goto 371,65.8,31.25,-1
--     >>|cRXP_WARN_Follow the Arrow|r
--     .complete 30157,1 --6/6 Windward Hatchlings returned to their nests
-- step
--     #completewith HatchlingFedCloud
--     .goto 371,65.25,37.20
--     >>使用|T134376:0|t[青铜计时器]
--     .itemcount 216712,1
--     .use 216712
-- step
--     .isOnQuest 30156
--     >>杀死|cRXP_ENEMY_Saltback Yearling|r和|cRXX_ENEMY_Saaltback Turtle|r掠夺它们以获取|cRXP_Loot_|T237339:0|t备用肉废料|r
--     .collect 79028,15
--     .mob Saltback Turtle
-- step
--     .isOnQuest 30156
--     .cast 110456 >>使用|T237339:0|t[咸肉废料]创建|T237338:0|t[咸肉]
--     .use 79028
-- step
--     .isOnQuest 30156
--     .cast 110456 >>使用|T237339:0|t[咸肉废料]创建|T237338:0|t[咸肉]
--     .use 79028
-- step
--     .isOnQuest 30156
--     .cast 110456 >>使用|T237339:0|t[咸肉废料]创建|T237338:0|t[咸肉]
--     .use 79028
-- step
--     #label HatchlingFedCloud
--     >>单击您的|cRXP_FRIENDLY_Hatching|r为其提供信息。
--     .complete 30156,1 --3/3 Hatchling fed
--     .use 79027
--     .target Azure Hatchling
--     -- insert other hatchling x2
-- step
--     .goto 371,57.73,44.83
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
--     .turnin 30155 >>Turn in Restoring the Balance
--     -- .turnin 30156 >>Turn in Feeding Time
--     .turnin 30157 >>Turn in Emptier Nests
--     .turnin 31194 >>Turn in Slitherscale Suppression
--     .target Elder Anli
-- step
--     .goto 371,61.70,26.59
--     >>杀死|cRXP_ENEMY_shadowfae骗子|r
--     .complete 31699,1 --7/7 Shadowfae Trickster slain
--     .mob shadowfae trickster
-- step
--     .goto 371,62.10,24.48
--     >>杀死|cRXP_ENEMY_迎风虎|r
--     .complete 31698,1 --8/8 Windward Tiger slain
--     .mob windward tiger
-- step
--     .goto 371,62.69,26.71
--     >>杀死|cRXP_ENEMY_shadowfae疯子|r
--     .complete 31703,1 --1/1 Shadowfae Madcap slain
--     .mob shadowfae madcap
-- step
--     .goto 371,61.59,26.61
--     >>杀死|cRXP_ENEMY_shadowfae骗子|r
--     .complete 31699,1 --7/7 Shadowfae Trickster slain
--     .mob shadowfae trickster
-- step
--     .goto 371,62.02,23.76
--     .complete 30154,1 --5/5 Tiger Flank
-- step
--     .goto 371,64.87,25.59
--     >>杀死|cRXP_ENEMY_逆风女猎手|r
--     .complete 31701,1 --1/1 Windward Huntress slain
--     .mob windward huntress

]])

-- Vale Dailies
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) Vale Dailies 1
#internal

step
    .goto 390,21.48,71.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
    --.turnin 31385 >>Turn in The Golden Lotus
    .accept 30277 >>接任务: |cRXP_WARN_破败的大厅|r
    .target +Anji Autumnlight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
    .accept 30266 >>接任务: |cRXP_WARN_浸血的苍穹|r
    .accept 30243 >>接任务: |cRXP_WARN_火烧螳螂|r
    .target +Kun Autumnlight
step
    .goto 390,19.61,75.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai-Me Heavyhands|r
    .accept 30306 >>接任务: |cRXP_WARN_大竞技场|r
    .target Hai-Me Heavyhands
step
    .goto 390,19.81,74.28
    .complete 30306,1 --20/20 Shado-Pan Trainees defeated
step
    .goto 390,19.61,75.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai-Me Heavyhands|r
    .turnin 30306 >>Turn in The Battle Ring
    .target Hai-Me Heavyhands
step
    .goto 390,18.48,71.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yumi Goldenpaw|r
    .accept 30242 >>接任务: |cRXP_WARN_生存之环：刀刃|r
    .target Yumi Goldenpaw
step
    >>站在航路点的正上方
    .goto 390,19.72,67.97
    .complete 30242,1 --1/1 Live through the Survival Ring for 60 seconds
step
    .goto 390,18.50,71.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yumi Goldenpaw|r
    .turnin 30242 >>Turn in Survival Ring: Blades
    .target Yumi Goldenpaw



-- step
-- .goto 390,21.38,71.45
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
-- .accept 30266 >>接任务: |cRXP_WARN_浸血的苍穹|r
-- .target Kun Autumnlight
-- .accept 30243 >>接任务: |cRXP_WARN_火烧螳螂|r
-- step
-- .goto 390,21.51,71.62
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
-- .turnin 80427 >>交任务: |cRXP_FRIENDLY_协助金莲教|r
-- .target Anji Autumnlight
-- .accept 30280 >>接任务: |cRXP_WARN_雷电|r
-- step
-- .goto 390,19.49,75.83
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai-Me Heavyhands|r
-- .accept 30306 >>接任务: |cRXP_WARN_大竞技场|r
-- .target Hai-Me Heavyhands
-- step
-- .goto 390,18.48,71.47
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yumi Goldenpaw|r
-- .accept 30240 >>接任务: |cRXP_WARN_生存之环：火焰|r
-- .target Yumi Goldenpaw
-- step
-- .goto 390,19.35,73.47
-- .complete 30306,1 --20/20 Shado-Pan Trainees defeated
-- step
-- .goto 390,19.51,75.80
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai-Me Heavyhands|r
-- .turnin 30306 >>Turn in The Battle Ring
-- .target Hai-Me Heavyhands
-- step
-- .goto 390,18.84,67.63
-- .complete 30240,1 --1/1 Live through the Survival Ring for 60 seconds
-- step
-- .goto 390,18.09,63.55
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelari Featherfoot|r
-- .accept 30261 >>接任务: |cRXP_WARN_翻滚俱乐部：蟠龙脊|r
-- .target Kelari Featherfoot
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelari Featherfoot|r
-- .complete 30261,1 --1/1 Speak to Kelari Featherfoot
-- .target Kelari Featherfoot
-- step
-- .goto 424,39.06,78.02
-- .complete 30261,2 --1/1 Serpent's Spine Roll Course finished
-- step
-- .goto 390,18.10,63.58
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelari Featherfoot|r
-- .turnin 30261 >>Turn in Roll Club: Serpent's Spine
-- .target Kelari Featherfoot
-- step
-- .goto 390,18.49,71.53
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yumi Goldenpaw|r
-- .turnin 30240 >>Turn in Survival Ring: Flame
-- .target Yumi Goldenpaw
-- step
-- .goto 390,2.63,54.92
-- >>杀死|cRXP_ENEMY_Krik'thik Hiveling|r
-- .complete 30243,1 --80/80 Krik'thik Hiveling slain
-- .mob Krik'thik Hiveling
-- step
-- .goto 390,7.50,46.86
-- >>杀死|cRXP_ENEMY_Krik'thik Swarmer|r
-- .complete 30266,1 --30/30 Krik'thik Swarmer slain
-- .mob Krik'thik Swarmer
-- step
-- .goto 396,55.76,59.55
-- >>杀死|cRXP_ENEMY_Milau|r
-- .complete 30280,1 --1/1 Milau slain
-- .mob Milau
-- step
-- .goto 390,21.37,71.47
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
-- .turnin 30243 >>Turn in Mantid Under Fire
-- .target Kun Autumnlight
-- .turnin 30266 >>Turn in Bloodied Skies

-- step
-- .goto 390,21.43,71.65
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
-- .turnin 30280 >>Turn in The Thunder Below
-- .target Anji Autumnlight
-- .turnin 80427 >>交任务: |cRXP_FRIENDLY_协助金莲教|r


step
    .goto 395,42.08,27.81
    .complete 30277,1 --1/1 Deactivate Spirit Wall
step
    .goto 395,49.46,30.70
    .complete 30277,2 --1/1 Ancient Guo-Lai Artifact

    step
    .goto 390,21.52,71.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
    .accept 30277 >>接任务: |cRXP_WARN_破败的大厅|r
    .target Anji Autumnlight

    step
    .goto 390,21.47,71.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
    .turnin 30277 >>Turn in The Crumbling Hall
    .target Anji Autumnlight
    .turnin 80427 >>交任务: |cRXP_FRIENDLY_协助金莲教|r
]])

-- Niuzao Dailies
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) Niuzao Daillies
#internal


]])

-- Dreadwastes Dailies
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) Dreadwastes Daillies
#internal


step
    .goto 422,54.25,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .accept 31268 >>接任务: |cRXP_WARN_脑力劳动|r
    .target Kaz'tik the Manipulator
    .accept 31024 >>接任务: |cRXP_WARN_喂食恐虫|r
step
    .goto 422,54.36,35.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .accept 31271 >>接任务: |cRXP_WARN_恶毒基因|r
    .target Rik'kal the Dissector
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .accept 31270 >>接任务: |cRXP_WARN_以暴制暴|r
    .target Korven the Prime
    .accept 31269 >>接任务: |cRXP_WARN_邪鳞领主|r
step
    .goto 422,59.13,53.27
    >>杀死|cRXP_ENEMY_恐怖等级记分|r
    .complete 31270,1 --15/15 Horrorscale Scorpid slain
    .mob Horrorscale Scorpid
step
    .goto 422,61.74,54.07
    .complete 31024,1 --4/4 Meaty Turtle Haunch
step
    .goto 422,62.55,66.55
    >>杀死|cRXP_ENEMY_Ik'thik Genemancer|r
    .complete 31271,1 --3/3 Ik'thik Genemancer slain
    .mob Ik'thik Genemancer
step
    .goto 422,61.67,70.77
    .complete 31268,1 --3/3 Amber-Encrusted Brain
step
    .goto 422,60.90,71.95
    >>杀死|cRXP_ENEMY_Ik'thik蛋无人机|r
    .complete 31271,2 --6/6 Ik'thik Egg-Drone slain
    .mob Ik'thik Egg-Drone
step
    .goto 422,66.40,66.21
    >>杀死|cRXP_ENEMY_Misblade Scale Lord|r
    .complete 31269,1 --1/1 Mistblade Scale-Lord slain
    .mob Mistblade Scale-Lord
step
    .goto 422,54.26,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31024 >>Turn in Kunchong Treats
    .target Kaz'tik the Manipulator
    .turnin 31268 >>Turn in A Little Brain Work

step
    .goto 422,54.36,35.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .turnin 31271 >>Turn in Bad Genes
    .target Rik'kal the Dissector
step
    .goto 422,54.30,36.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .turnin 31269 >>Turn in The Fight Against Fear
    .target Korven the Prime
    .turnin 31270 >>Turn in The Fight Against Fear

set 2

step
    .goto 422,54.26,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .accept 31506 >>Accept Shackles of Manipulation
    .target Kaz'tik the Manipulator
step
    .goto 422,54.36,35.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .accept 31509 >>Accept Fear Takes Root
    .target Rik'kal the Dissector
    .accept 31508 >>Accept Specimen Request
step
    .goto 422,54.30,36.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .accept 31507 >>Accept Meltdown
    .target Korven the Prime
step
    .goto 422,29.99,73.05
    .complete 31508,1 --6/6 Kyparite Shards
step
    .goto 422,22.20,75.78
    >>Kill |cRXP_ENEMY_Zan'thik Amberhusk|r
    .complete 31507,1 --6/6 Zan'thik Amberhusk slain
    .mob Zan'thik Amberhusk
step
    .goto 422,28.46,71.80
    .complete 31509,1 --15/15 Dreadspore Bulbs destroyed
step
    .goto 422,32.34,78.35
    .complete 31506,1 --6/6 Zan'thik Shackles
step
    .goto 422,54.32,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .turnin 31507 >>Turn in Meltdown
    .target Korven the Prime
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .turnin 31509 >>Turn in Specimen Request
    .target Rik'kal the Dissector
    .turnin 31508 >>Turn in Specimen Request

    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31506 >>Turn in Shackles of Manipulation
    .target Kaz'tik the Manipulator
    .accept 31808 >>接任务: |cRXP_LOOT_狂暴|r Against the Machine
step
    .goto 422,50.82,41.26
    .complete 31808,1 --1/1 Locate Kovok near the Clutches of Shek'zeer
step
    .goto 422,45.09,29.26
    >>Kill |cRXP_ENEMY_Mantid|r
    .complete 31808,2 --200/200 Mantid slain
    .mob Mantid
step
    .goto 422,54.25,35.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31808 >>交任务: |cRXP_FRIENDLY_狂暴|r Against the Machine
    .target Kaz'tik the Manipulator

]])

-- August Celestial Dailies: Jade Forest
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X） 八月天乳
#internal


step
    .goto 371,53.90,61.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .accept 30066 >>接任务: |cRXP_WARN_隐藏的力量|r
    .target Elder Sage Tai-Feng
    .accept 30065 >>接任务: |cRXP_WARN_命运之箭|r
    .accept 30006 >>接任务: |cRXP_WARN_黑暗缠身|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Storm-Sing|r
    .turnin 80429 >>交任务: |cRXP_FRIENDLY_协助至尊天神|r
    .target Elder Sage Storm-Sing
step
    .goto 371,52.63,55.65
    .complete 30065,1 --8/8 Defender's Arrow
step
    .goto 371,53.73,56.63
    .complete 30066,1 --6/6 Ancient Mantras delivered
step
    .goto 371,55.08,57.07
    >>杀死|cRXP_ENEMY_Sha入侵者|r
    .complete 30006,1 --15/15 Sha invaders slain
    .mob Sha invaders
step
    .goto 371,53.90,61.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .turnin 30006 >>Turn in Arrows of Fortune
    .target Elder Sage Tai-Feng
    .turnin 30066 >>Turn in Arrows of Fortune

    .turnin 30065 >>Turn in Arrows of Fortune

    .accept 30067 >>接任务: |cRXP_WARN_疑之影|r
step
    .goto 371,57.53,62.36
    >>杀死|cRXP_ENEMY_怀疑的阴影|r
    .complete 30067,1 --1/1 Shadow of Doubt slain
    .mob Shadow of Doubt
step
    .goto 371,53.91,61.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .turnin 30067 >>Turn in The Shadow of Doubt
    .target Elder Sage Tai-Feng


    SET2
    step
    .goto 371,53.92,61.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .accept 30066 >>接任务: |cRXP_WARN_隐藏的力量|r
    .target Elder Sage Tai-Feng
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Storm-Sing|r
    .accept 30064 >>接任务: |cRXP_WARN_抢救经书|r
    .target Elder Sage Storm-Sing
    .accept 30063 >>接任务: |cRXP_WARN_面具背后|r
step
    .goto 371,53.89,54.57
    .complete 30063,1 --8/8 Mask of Doubt
    .complete 30066,1 --6/6 Ancient Mantras delivered
step
    .goto 371,54.93,51.21
    .complete 30064,1 --6/6 Ancient Sutra
step
    .goto 371,53.89,61.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Storm-Sing|r
    .turnin 30063 >>Turn in Behind the Masks
    .target Elder Sage Storm-Sing
    .turnin 30064 >>Turn in Saving the Sutras

    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .turnin 30066 >>Turn in Hidden Power
    .target Elder Sage Tai-Feng
    .accept 30068 >>接任务: |cRXP_WARN_虚无之火|r
step
    .goto 371,55.57,54.36
    .complete 30068,1 --6/6 Void Flames doused
step
    .goto 371,53.91,61.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .turnin 30068 >>Turn in Flames of the Void
    .target Elder Sage Tai-Feng
]])

-- August Celestial Dailies: Kunlai
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X） 八月天乳
#internal


step
    .goto 379,67.24,55.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .turnin 80431 >>交任务: |cRXP_FRIENDLY_协助至尊天神|r
    .target Xuen
    .accept 31517 >>接任务: |cRXP_WARN_与恶霸抗争|r
    .accept 30879 >>接任务: |cRXP_WARN_第1回合：酒仙倩妮|r
step
    .goto 379,71.09,55.93
    >>杀死|cRXP_ENEMY_Shonuf|r
    .complete 31517,1 --1/1 Shonuf slain
    .mob Shonuf
step
    .goto 379,70.96,51.82
    .complete 30879,1 --1/1 Defeat Brewmaster Chani
step
    .goto 379,70.28,51.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .turnin 30879 >>Turn in Round 1: Brewmaster Chani
    .target Xuen
    .accept 30881 >>接任务: |cRXP_WARN_第2回合：聪明的阿西约和肯肯|r
    .turnin 31517 >>Turn in Contending With Bullies

step
    .goto 379,71.67,45.35
    .complete 30881,2 --1/1 Defeat Ken-Ken
    .complete 30881,1 --1/1 Defeat Clever Ashyo
step
    .goto 379,71.76,44.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .turnin 30881 >>Turn in Round 2: Clever Ashyo & Ken-Ken
    .target Xuen
    .accept 30883 >>接任务: |cRXP_WARN_第3回合：摔跤手|r
step
    .goto 379,66.74,46.53
    .complete 30883,1 --1/1 Defeat The Wrestler
step
    .goto 379,66.39,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .turnin 30883 >>Turn in Round 3: The Wrestler
    .target Xuen
    .accept 30907 >>接任务: |cRXP_WARN_第4回合：以一敌三|r
step
    .goto 379,69.02,43.76
    .complete 30907,3 --1/1 Defeat Tankiss
    .complete 30907,1 --1/1 Defeat Hackiss
    .complete 30907,2 --1/1 Defeat Healiss
step
    .goto 379,68.49,44.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .turnin 30907 >>Turn in Round 4: The P.U.G.
    .target Xuen
    .turnin 80431 >>交任务: |cRXP_FRIENDLY_协助至尊天神|r



]])

-- August Celestial Dailies: Townlong
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X） 八月天乳
#internal

step
    .goto 388,38.90,62.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Adept Paosha|r
    .accept 30955 >>接任务: |cRXP_WARN_进贡|r
    .target High Adept Paosha
step
    .goto 388,39.33,62.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
    .accept 30954 >>接任务: |cRXP_WARN_敌人的刀也是刀|r
    .target Ogo the Younger
step
    .goto 388,39.14,62.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yak-Keeper Kyana|r
    .accept 30953 >>接任务: |cRXP_WARN_虚弱的戒卫|r
    .target Yak-Keeper Kyana
step
    .goto 388,39.41,61.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
    .turnin 80430 >>交任务: |cRXP_FRIENDLY_协助至尊天神|r
    .target Sentinel Commander Qipan
    .turnin 80430 >>交任务: |cRXP_FRIENDLY_协助至尊天神|r

    .turnin 80430 >>交任务: |cRXP_FRIENDLY_协助至尊天神|r

    .turnin 80430 >>交任务: |cRXP_FRIENDLY_协助至尊天神|r

    .turnin 80430 >>交任务: |cRXP_FRIENDLY_协助至尊天神|r
step
    .goto 388,39.35,62.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Elder|r
    .turnin 31383 >>交任务: |cRXP_FRIENDLY_砮皂寺的防御|r
    .target Ogo the Elder
    .accept 30952 >>接任务: |cRXP_WARN_无休止的围攻|r
step
    .goto 388,41.36,58.39
    >>杀死|cRXP_ENEMY_Sra'thik攻击者|r
    .complete 30952,1 --12/12 Sra'thik attacker slain
    .mob Sra'thik attacker
step
    .goto 388,41.80,57.85
    .complete 30954,1 --10/10 Sra'thik Weapon
step
    .goto 388,40.43,58.80
    .complete 30955,1 --6/6 Gather Food for Niuzao
step
    .goto 388,41.86,59.42
    .complete 30953,1 --8/8 Niuzao Sentinel healed
step
    .goto 388,39.33,62.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
    .turnin 30954 >>Turn in A Blade is a Blade
    .target Ogo the Younger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Elder|r
    .turnin 30952 >>Turn in The Unending Siege
    .target Ogo the Elder
step
    .goto 388,39.16,62.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yak-Keeper Kyana|r
    .turnin 30953 >>Turn in Fallen Sentinels
    .target Yak-Keeper Kyana
step
    .goto 388,38.91,62.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Adept Paosha|r
    .turnin 30955 >>Turn in Paying Tribute
    .target High Adept Paosha
--- SET 2 ---


step
    .goto 422,54.26,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .accept 31506 >>Accept Shackles of Manipulation
    .target Kaz'tik the Manipulator
step
    .goto 422,54.36,35.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .accept 31509 >>Accept Fear Takes Root
    .target Rik'kal the Dissector
    .accept 31508 >>Accept Specimen Request
step
    .goto 422,54.30,36.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .accept 31507 >>Accept Meltdown
    .target Korven the Prime
step
    .goto 422,29.99,73.05
    .complete 31508,1 --6/6 Kyparite Shards
step
    .goto 422,22.20,75.78
    >>Kill |cRXP_ENEMY_Zan'thik Amberhusk|r
    .complete 31507,1 --6/6 Zan'thik Amberhusk slain
    .mob Zan'thik Amberhusk
step
    .goto 422,28.46,71.80
    .complete 31509,1 --15/15 Dreadspore Bulbs destroyed
step
    .goto 422,32.34,78.35
    .complete 31506,1 --6/6 Zan'thik Shackles
step
    .goto 422,54.32,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .turnin 31507 >>Turn in Meltdown
    .target Korven the Prime
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .turnin 31509 >>Turn in Specimen Request
    .target Rik'kal the Dissector
    .turnin 31508 >>Turn in Specimen Request

    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31506 >>Turn in Shackles of Manipulation
    .target Kaz'tik the Manipulator
    .accept 31808 >>接任务: |cRXP_LOOT_狂暴|r Against the Machine
step
    .goto 422,50.82,41.26
    .complete 31808,1 --1/1 Locate Kovok near the Clutches of Shek'zeer
step
    .goto 422,45.09,29.26
    >>Kill |cRXP_ENEMY_Mantid|r
    .complete 31808,2 --200/200 Mantid slain
    .mob Mantid
step
    .goto 422,54.25,35.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31808 >>交任务: |cRXP_FRIENDLY_狂暴|r Against the Machine
    .target Kaz'tik the Manipulator
step
    .goto 388,39.40,61.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
    .turnin 80430 >>交任务: |cRXP_FRIENDLY_协助至尊天神|r
    .target Sentinel Commander Qipan
    .accept 30957 >>Accept The Overwhelming Swarm
step
    .goto 388,39.32,62.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
    .accept 30959 >>Accept The Big Guns
    .target Ogo the Younger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Elder|r
    .accept 30956 >>接任务: |cRXP_LOOT_虫临城下|r Swells
    .target Ogo the Elder
step
    .goto 388,38.81,62.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Adept Paosha|r
    .accept 30958 >>Accept In Battle's Shadow
    .target High Adept Paosha
step
    .goto 388,41.46,59.83
    >>杀死|cRXP_ENEMY_Sra'thik攻击者|r
    .complete 30956,1 --25/25 Sra'thik attacker slain
    .mob Sra'thik attacker
step
    .goto 388,40.26,60.67
    >>Kill |cRXP_ENEMY_Sra'thik Kunchong|r
    .complete 30957,1 --4/4 Sra'thik Kunchong slain
    .mob Sra'thik Kunchong
step
    .goto 388,42.51,61.70
    .complete 30958,1 --10/10 Loose Brick
step
    .goto 388,42.82,63.15
    .complete 30959,1 --3/3 Sra'thik War Wagon exploded
step
    .goto 388,39.41,61.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
    .turnin 30957 >>Turn in The Overwhelming Swarm
    .target Sentinel Commander Qipan
    .turnin 80430 >>交任务: |cRXP_FRIENDLY_协助至尊天神|r

step
    .goto 388,39.33,62.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
    .turnin 30959 >>Turn in The Big Guns
    .target Ogo the Younger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Elder|r
    .turnin 30956 >>交任务: |cRXP_FRIENDLY_虫临城下|r Swells
    .target Ogo the Elder
step
    .goto 388,39.16,62.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yak-Keeper Kyana|r
    .turnin 30958 >>Turn in In Battle's Shadow
    .target Yak-Keeper Kyana


    step
    .goto 388,43.86,65.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ku-Mo|r
    .accept 30931 >>Accept My Father's Crossbow
    .target Ku-Mo
step
    .goto 388,38.70,65.41
    .complete 30931,1 --1/1 Father's Crossbow
step
    .goto 388,43.89,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ku-Mo|r
    .turnin 30931 >>Turn in My Father's Crossbow
    .target Ku-Mo

    step
    .goto 388,39.42,61.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
    .accept 30932 >>Accept Father's Footsteps
    .target Sentinel Commander Qipan
step
    .goto 388,39.24,61.19
    .complete 30932,4 --1/1 Find Sentinel Yalo
step
    .goto 388,37.56,61.35
    .complete 30932,2 --1/1 Find Father's Shield
step
    .goto 388,37.37,60.93
    .complete 30932,1 --1/1 Find Father's Bedroll
step
    .goto 388,37.64,63.89
    .complete 30932,3 --1/1 Find Ha-Cha
step
    .goto 388,39.45,61.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ku-Mo|r
    .turnin 30932 >>Turn in Father's Footsteps
    .target Ku-Mo

]])

-- August Celestial Dailies: Krasarang
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X） 八月天乳
#internal

step
    .goto 418,31.34,63.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .accept 30718 >>接任务: |cRXP_WARN_赤精的弟子们|r
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuo-Na Quillpaw|r
    .accept 30716 >>接任务: |cRXP_WARN_追赶希望|r
    .target Kuo-Na Quillpaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan Quillpaw|r
    .accept 30717 >>接任务: |cRXP_WARN_神鹤的恩赐|r
    .target Yan Quillpaw
step
    .goto 418,33.20,80.65
    .complete 30717,1 --10/10 Gift of the Great Crane
step
    .goto 418,33.88,79.47
    .complete 30718,1 --10/10 Student of Chi-Ji dueled
step
    .goto 418,32.50,69.62
    .complete 30716,1 --3/3 Spirit of the Crane found
step
    .goto 418,31.33,63.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .turnin 30718 >>Turn in Students of Chi-Ji
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuo-Na Quillpaw|r
    .turnin 30716 >>Turn in Chasing Hope
    .target Kuo-Na Quillpaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan Quillpaw|r
    .turnin 30717 >>Turn in Gifts of the Great Crane
    .target Yan Quillpaw
step
    .goto 418,31.34,63.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .turnin 80433 >>交任务: |cRXP_FRIENDLY_协助至尊天神|r
    .target Thelonius
    .accept 30725 >>接任务: |cRXP_WARN_艾黎亚·鸦鬃|r
step
    .goto 418,31.84,71.11
    .complete 30725,1 --1/1 Ellia Ravenmane defeated
step
    .goto 418,31.34,63.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .turnin 30725 >>Turn in Ellia Ravenmane
    .target Thelonius


]])

-- Landafall Dailies
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) Landfall Daillies
#internal


]])

-- Landfall Daillies Alliance
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X） Landfall Daillies联盟
#internal


---SET1---
step
    .goto 418,89.66,32.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
    .accept 32150 >>接任务: |cRXP_WARN_补给困难|r
    .target Mishka
    .accept 32149 >>接任务: |cRXP_WARN_资源采集|r
step
    .goto 418,89.69,33.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Troteman|r
    .accept 32153 >>接任务: |cRXP_WARN_英雄杀手|r
    .target Marshal Troteman
    .accept 32151 >>接任务: |cRXP_WARN_塔防建材|r
    .accept 32148 >>接任务: |cRXP_WARN_进攻！前进！|r
step
    .goto 418,79.16,27.32
    >>杀死|cRXP_ENEMY_部落英雄|r
    .complete 32153,1 --1/1 Horde Hero slain
    .mob Horde Hero
step
    .goto 418,76.90,22.55
    .complete 32149,1 --12/12 Lion's Landing Lumber
step
    .goto 418,77.22,22.10
    >>杀死|cRXP_ENEMY_主宰萨满或突袭者|r
    .complete 32148,1 --12/12 Dominance Shaman or Raider slain
    .mob Dominance Shaman or Raider
step
    .goto 418,76.06,18.93
    .complete 32151,1 --20/20 Animatable Stone
step
    .goto 418,77.85,30.09
    .complete 32150,1 --8/8 Domination Point Supplies destroyed
step
    .goto 418,89.66,32.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
    .turnin 32150 >>Turn in Supply Block
    .target Mishka
    .turnin 32149 >>Turn in Resource Gathering

step
    .goto 418,89.67,33.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Troteman|r
    .turnin 32153 >>Turn in Hero Killer
    .target Marshal Troteman
    .turnin 32148 >>Turn in Tower Defense

    .turnin 32151 >>Turn in Tower Defense
---SET2---

step
    .goto 418,89.82,32.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amber Kearnen|r
    .accept 32451 >>接任务: |cRXP_WARN_明确的信息|r
    .target Amber Kearnen


step
    .goto 418,16.46,79.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r
    .turnin 32451 >>Turn in Send A Message
    .target Sky Admiral Rogers
    .accept 32142 >>接任务: |cRXP_WARN_干掉他们！|r
    .accept 32146 >>接任务: |cRXP_WARN_达摩克利斯之锤|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r
    .accept 32143 >>接任务: |cRXP_WARN_神奇魔法|r
    .target Tinkmaster Overspark
step
    .goto 418,16.66,78.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
    .accept 32144 >>接任务: |cRXP_WARN_重压之下|r
    .target Mishka
step
    .goto 418,11.66,67.84
    .complete 32143,1 --1/1 Eliminate the Beachhead Demolishers
step
    .goto 418,8.38,65.87
    .complete 32144,1 --8/8 Horde Supply Crates Destroyed
step
    .goto 418,8.65,61.42
    >>杀死|cRXP_ENEMY_主宰兽人|r
    .complete 32142,1 --10/10 Domination Orc slain
    .mob Domination Orc
step
    .goto 418,8.78,60.67
    >>杀死|cRXP_ENEMY_Heavy Mook|r
    .complete 32146,1 --5/5 Heavy Mook slain
    .mob Heavy Mook
step
    .goto 418,10.89,60.91
    .complete 32143,2 --1/1 Eliminate the Horde Wolves
step
    .goto 418,12.64,56.60
    .complete 32143,3 --1/1 Destroy the Horde Bomb Stockpile
step
    .goto 418,12.64,56.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shiekrunners|r
    .turnin 32143 >>Turn in A Kind of Magic
    .target Shiekrunners
    .accept 32145 >>接任务: |cRXP_WARN_小心你的脑袋|r
step
    .goto 418,13.29,56.25
    >>杀死|cRXP_ENEMY_首席炸弹工程师Snicklefritz|r
    .complete 32145,3 --1/1 Chief Bombgineer Snicklefritz slain
    .mob Chief Bombgineer Snicklefritz
step
    .goto 418,13.40,57.85
    >>杀死|cRXP_ENEMY_Stone Guard Ruk'Ra|r
    .complete 32145,2 --1/1 Stone Guard Ruk'Ra slain
    .mob Stone Guard Ruk'Ra
step
    .goto 418,10.38,58.00
    >>杀死|cRXP_ENEMY_Or'Dac|r
    .complete 32145,1 --1/1 Or'Dac slain
    .mob Or'Dac
step
    .goto 418,16.68,78.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
    .turnin 32144 >>Turn in Under Pressure
    .target Mishka
step
    .goto 418,16.47,79.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r
    .turnin 32142 >>Turn in We Will Rock You
    .target Sky Admiral Rogers
    .turnin 32146 >>Turn in Hammer to Fall

step
    .goto 418,16.52,79.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_工匠大师欧沃斯巴克|r
    .turnin 32145 >>Turn in Don't Lose Your Head
    .target Tinkmaster Overspark

    ---SET1---

step
    .goto 418,68.31,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John "Big Hook" Marsock|r
    .accept 30753 >>接任务: |cRXP_WARN_骑鲨鱼|r
    .target John "Big Hook" Marsock
step
    .goto 418,67.94,45.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fisherman Haito|r
    .accept 30586 >>接任务: |cRXP_WARN_粗糙的鲍鱼|r
    .target Fisherman Haito
step
    .goto 418,68.91,37.96
    .complete 30586,1 --9/9 Jagged Abalone Meat
step
    .goto 418,68.33,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John "Big Hook" Marsock|r
    .turnin 30753 >>Turn in Jumping the Shark
    .target John "Big Hook" Marsock
step
    .goto 418,67.93,45.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fisherman Haito|r
    .turnin 30586 >>Turn in Jagged Abalone
    .target Fisherman Haito
---SET2---

step
    .goto 418,89.70,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Troteman|r
    .accept 32116 >>接任务: |cRXP_WARN_救人要紧！|r
    .target Marshal Troteman
step
    .goto 419,30.20,27.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilda Hornswaggle|r
    .turnin 32116 >>Turn in Priorities, People!
    .target Hilda Hornswaggle
    .accept 32347 >>接任务: |cRXP_WARN_驱逐令|r
    .accept 32346 >>接任务: |cRXP_WARN_灾祸猛于鬼！|r
    .accept 32122 >>接任务: |cRXP_WARN_敖骨打的副官|r
    .accept 32121 >>接任务: |cRXP_WARN_灵魂陷阱|r
    .accept 32115 >>接任务: |cRXP_WARN_旧日的枷锁|r
step
    .goto 421,57.97,3.19
    .complete 32115,1 --14/14 Troubled Slave Spirits released
step
    .goto 421,62.17,1.69
    >>杀死|cRXP_ENEMY_Spiritbound Mogu|r
    .complete 32346,1 --12/12 Spiritbound Mogu slain
    .mob Spiritbound Mogu
step
    .goto 421,81.92,96.31
    .complete 32121,1 --3/3 Spirit Trap destroyed
step
    .goto 420,68.66,78.64
    >>杀死|cRXP_ENEMY_Gen-li，单词扭曲器|r
    .complete 32122,1 --1/1 Gen-li, Twister of Words slain
    .mob Gen-li, Twister of Words
    >>杀死|cRXP_ENEMY_Meng-do，山脉之力|r
    .complete 32122,2 --1/1 Meng-do, Strength of Mountains slain
    .mob Meng-do, Strength of Mountains
step
    .goto 421,60.11,52.81
    >>杀死|cRXP_ENEMY_圣物|r
    .complete 32347,1 --10/10 Reliquary slain
    .mob Reliquary
step
    .goto 419,30.07,27.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilda Hornswaggle|r
    .turnin 32347 >>Turn in Eviction Notice
    .target Hilda Hornswaggle
    .turnin 32115 >>Turn in Shackles of the Past

    .turnin 32346 >>Turn in Oi Ain't Afraid o' No Ghosts!

    .turnin 32121 >>Turn in The Spirit Trap

    .turnin 32122 >>Turn in Ogudei's Lieutenants
]])
