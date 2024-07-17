RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 3） Krasarang Wilds Dojani
#internal
step
.convertquest 30349,30127 << Horde
#completewith Dojani Dominator
>>杀死|cRXP_ENEMY_Dojani取料机|r、|cRXD_ENEMY_Surveyor|r和|cRXP_ENEMY_Dojani执行器|r
*|cRXP_WARN_Avoid the red circles on the ground; to deal extra damage, pull enemies inside them.|r
.complete 30349,1 
.complete 30349,2 
.complete 30349,3 
.mob Dojani Reclaimer
.mob Dojani Surveyor
.mob Dojani Enforcer
step
.convertquest 30351,30130 << Horde
#completewith Dojani Dominator
>>单击|cRXP_PICK_Leaves |r
.complete 30351,1 
step
.convertquest 30346,30129 << Horde
#label Dojani Dominator
.goto 418,55.45,34.50
>>杀死|cRXP_ENEMY_Dojani主宰|r抢劫他|cRXP_Loot_Dojani订单|r
.complete 30346,1 
.mob Dojani Dominator
step << Alliance
>>点击任务弹出窗口，打开任务。
.goto 418,55.501,34.431
.turnin 30346 >>交任务: |cRXP_FRIENDLY_青春之池在哪里|r
.accept 30347 >>接任务: |cRXP_WARN_青春之池|r
step << Horde
.goto 418,55.501,34.431
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r
.turnin 30129 >>交任务: |cRXP_FRIENDLY_青春之池在哪里|r
.accept 30128 >>接任务: |cRXP_WARN_青春之池|r
.target Kang Bramblestaff
step
#label DojaniSurvRecEnfSlain
#completewith FirstSwoopDojani
>>杀死|cRXP_ENEMY_Dojani取料机|r、|cRXD_ENEMY_Surveyor|r和|cRXP_ENEMY_Dojani执行器|r
*|cRXP_WARN_Avoid the red circles on the ground; to deal extra damage, pull enemies inside them.|r
.complete 30349,1 
.complete 30349,2 
.complete 30349,3 
.mob Dojani Reclaimer
.mob Dojani Surveyor
.mob Dojani Enforcer
step
#label ImperialLotusLeaves
#completewith FirstSwoopDojani
>>单击|cRXP_PICK_Leaves |r
.complete 30351,1 
step
.isOnQuest 30351
#hidewindow
#label FirstSwoopDojani
#completewith DojaniSurvRecEnfSlain
.goto 418,56.45,38.88,35,0
.goto 418,55.06,40.81,35,0
.goto 418,53.24,37.76,35 >>1
step
#requires FirstSwoopDojani
.isOnQuest 30347,30128
#completewith next
.gossipoption 39799 >>Talk to |cRXP_FRIENDLY_Na Lek|r
.goto 418,51.928,32.742
.timer 15,RPs
.target Na Lek
step
.convertquest 30347,30128 << Horde
#requires FirstSwoopDojani
#loop
.goto 418,51.66,33.08,10,0
.goto 418,52.36,32.81,10,0
.goto 418,51.89,32.20,10,0
.goto 418,51.66,33.08,0
.goto 418,52.36,32.81,0
.goto 418,51.89,32.20,0
>>杀死|cRXP_ENEMY_睡眠守护者|r点击|cRXP_PICK_Water of Youth|r
.complete 30347,1 
.mob Sleeping Guardian
step
#completewith Dojani Enforcer
#hidewindow
#loop
.goto 418,55.30,32.08,40,0
.goto 418,55.66,30.16,40,0
.goto 418,54.54,30.84,40,0
.goto 418,56.45,38.88,35,0
.goto 418,55.06,40.81,35,0
.goto 418,53.24,37.76,35,0
.goto 418,55.30,32.08,0
.goto 418,55.66,30.16,0
.goto 418,54.54,30.84,0
.goto 418,56.45,38.88,0
.goto 418,55.06,40.81,0
.goto 418,53.24,37.76,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Dojani取料机|r、|cRXD_ENEMY_Surveyor|r和|cRXP_ENEMY_Dojani执行器|r
*|cRXP_WARN_Avoid the red circles on the ground; to deal extra damage, pull enemies inside them.|r
.complete 30349,1 
.complete 30349,2 
.complete 30349,3 
.mob Dojani Reclaimer
.mob Dojani Surveyor
.mob Dojani Enforcer
step
>>单击|cRXP_PICK_Leaves |r
.complete 30351,1 
step
#label Dojani Enforcer
>>杀死|cRXP_ENEMY_Dojani取料机|r、|cRXD_ENEMY_Surveyor|r和|cRXP_ENEMY_Dojani执行器|r
*|cRXP_WARN_Avoid the red circles on the ground; to deal extra damage, pull enemies inside them.|r
.complete 30349,1 
.complete 30349,2 
.complete 30349,3 
.mob Dojani Reclaimer
.mob Dojani Surveyor
.mob Dojani Enforcer
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 3） Krasarang Wilds Korjan
#internal
step << Alliance
#completewith Korjan Reclaimer
#hidewindow
#loop
.goto 418,26.71,37.67,25,0
.goto 418,27.51,39.57,25,0
.goto 418,26.35,39.35,25,0
.goto 418,25.45,39.14,25,0
.goto 418,26.75,42.26,25,0
.goto 418,25.13,42.55,25,0
.goto 418,23.64,41.59,25,0
.goto 418,24.14,39.28,25,0
.goto 418,23.44,37.83,25,0
.goto 418,24.84,38.08,25,0
.goto 418,26.71,37.67,0
.goto 418,27.51,39.57,0
.goto 418,26.35,39.35,0
.goto 418,25.45,39.14,0
.goto 418,26.75,42.26,0
.goto 418,25.13,42.55,0
.goto 418,23.64,41.59,0
.goto 418,24.14,39.28,0
.goto 418,23.44,37.83,0
.goto 418,24.84,38.08,0
+1
step << Horde
#completewith Korjan Reclaimer
#hidewindow
#loop
.goto 418,26.75,42.26,25,0
.goto 418,25.13,42.55,25,0
.goto 418,23.64,41.59,25,0
.goto 418,24.14,39.28,25,0
.goto 418,23.44,37.83,25,0
.goto 418,24.84,38.08,25,0
.goto 418,26.71,37.67,25,0
.goto 418,27.51,39.57,25,0
.goto 418,26.35,39.35,25,0
.goto 418,25.45,39.14,25,0
.goto 418,26.75,42.26,0
.goto 418,25.13,42.55,0
.goto 418,23.64,41.59,0
.goto 418,24.14,39.28,0
.goto 418,23.44,37.83,0
.goto 418,24.84,38.08,0
.goto 418,26.71,37.67,0
.goto 418,27.51,39.57,0
.goto 418,26.35,39.35,0
.goto 418,25.45,39.14,0
+1
step
.convertquest 30356,30229 << Horde
#completewith Captives Freed
>>杀死|cRXP_ENEMY_Korjan取料机|r
.complete 30356,1 
.mob Korjan Reclaimer
.mob Korjan Slavemaster
.mob Korjan Collector
step
.convertquest 30355,30230 << Horde
#completewith Captives Freed
>>单击|cRXP_PICK_Mogu工件|r
.complete 30355,1 
step
.convertquest 30354,30163 << Horde
#label Captives Freed
>>与|cRXP_FRIENDLY_Captive Sentinel|r交互
.complete 30354,1 
.target Captive Sentinel
step
#completewith next
>>杀死|cRXP_ENEMY_Korjan取料机|r
.complete 30356,1 
.mob korjan reclaimer
.mob Korjan Slavemaster
.mob Korjan Collector
step
>>单击|cRXP_PICK_Mogu工件|r
.complete 30355,1 
step
#label Korjan Reclaimer
>>杀死|cRXP_ENEMY_Korjan取料机|r
.complete 30356,1 
.mob korjan reclaimer
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 3) Krasarang Crane Wing
#internal
step
.xp >34,1
.goto 418,44.20,42.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r
.accept 30269 >>接任务: |cRXP_WARN_危险的小径|r
.target Koro Mistwalker
step
.xp >34,1
#completewith AccompanyKoro
#label TalkKoro
.goto 418,44.20,42.87
.gossipoption 40208 >>Talk to |cRXP_FRIENDLY_Koro Mistwalker|r
.timer 80,RP
.target Koro Mistwalker
step
.xp >34,1
#completewith AccompanyKoro
#requires TalkKoro
.goto 418,43.81,38.3
>>|cRXP_WARN_护送|cRXP_FRIENDLY_Koro Mistwalker|r杀死|cRXP_ENEMY_Riverblade血书|r|r
.cast 113142 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r when he stops moving
.skipgossip 58978,1
.timer 80,RP
.mob Riverblade Bloodletter
.target Koro Mistwalker
step
.xp >34,1
#label AccompanyKoro
.goto 418,43.88,36.85
>>|cRXP_WARN_继续护送|cRXP_FRIENDLY_Koro Mistwalker|r杀死|cRXP_ENEMY_Riverblade血书|r|r
.complete 30269,1 
.mob Riverblade Bloodletter
step
.xp >34,1
.goto 418,40.60,33.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r
.turnin 30269 >>Turn in Unsafe Passage
.accept 30270 >>接任务: |cRXP_WARN_斩断耳目|r
.accept 30694 >>接任务: |cRXP_WARN_如履薄冰|r
.target Koro Mistwalker
step
.xp >34,1
.goto 418,40.49,34.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安度因·乌瑞恩|r
.accept 30268 >>接任务: |cRXP_WARN_污鳞盗汗症|r
.target Anduin Wrynn
step
.xp >34,1
#completewith Riverblade Pathstalker
#hidewindow
#loop
.goto 418,38.88,38.20,40,0
.goto 418,36.91,41.20,40,0
.goto 418,35.84,35.96,40,0
.goto 418,36.89,37.32,40,0
.goto 418,38.16,34.17,40,0
.goto 418,40.75,30.61,40,0
.goto 418,43.71,30.95,40,0
.goto 418,45.13,29.71,40,0
.goto 418,46.13,28.25,40,0
.goto 418,47.48,30.29,40,0
.goto 418,48.35,33.53,40,0
.goto 418,47.02,36.37,40,0
.goto 418,45.52,38.23,40,0
.goto 418,38.88,38.20,0
.goto 418,36.91,41.20,0
.goto 418,35.84,35.96,0
.goto 418,36.89,37.32,0
.goto 418,38.16,34.17,0
.goto 418,40.75,30.61,0
.goto 418,43.71,30.95,0
.goto 418,45.13,29.71,0
.goto 418,46.13,28.25,0
.goto 418,47.48,30.29,0
.goto 418,48.35,33.53,0
.goto 418,47.02,36.37,0
.goto 418,45.52,38.23,0
+1
step
.xp >34,1
#completewith Traps Poked
>>杀死|cRXP_ENEMY_Riverblade Pathstalker|r
.complete 30270,1 
.mob riverblade pathstalker
step
.xp >34,1
#completewith Traps Poked
>>杀死|cRXP_ENEMY_Murkscale Striker|r掠夺他们|T348531:0|t[|cRXP-Loot_Murkscale Head|r]
.complete 30268,1 
.mob Murkscale Striker
step
.xp >34,1
#label Traps Poked
>>单击|cRXP_PICK_Traps|r|cRXP _WARN_确保不要踩到它们|r
.complete 30694,1 
step
.xp >34,1
#completewith next
>>杀死|cRXP_ENEMY_Murkscale Striker|r为|cRXD_Loot_Murkscale Head|r掠夺它们
.complete 30268,1 
.mob Murkscale Striker
step
.xp >34,1
#label Riverblade Pathstalker
>>杀死|cRXP_ENEMY_Riverblade Pathstalker|r
.complete 30270,1 
.mob riverblade pathstalker
step
.xp >34,1
#loop
.goto 418,37.32,43.07,35,0
.goto 418,35.50,34.25,35,0
.goto 418,42.04,38.52,42,0
.goto 418,37.32,43.07,0
.goto 418,35.50,34.25,0
.goto 418,42.04,38.52,0
>>杀死|cRXP_ENEMY_Murkscale Striker|r为|cRXD_Loot_Murkscale Head|r掠夺它们
.complete 30268,1 
.mob Murkscale Striker
step
.xp >34,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安度因·乌瑞恩|r, Koro Mistwalker
.turnin 30268 >>Turn in The Murksweats
.goto 418,40.49,34.66
.target +Anduin Wrynn
.turnin 30270 >>Turn in Blinding the Riverblades
.turnin 30694 >>Turn in Tread Lightly
.accept 30272 >>接任务: |cRXP_WARN_拨云见日|r
.accept 30695 >>接任务: |cRXP_WARN_一路向前|r
.goto 418,40.60,33.69
.target +Koro Mistwalker
.accept 30271 >>接任务: |cRXP_WARN_不惧强敌|r
.goto 418,40.49,34.66
.target +Anduin Wrynn
step
.xp >34,1
#completewith West Pagoda Cleansed
>>杀死|cRXP_ENEMY_Despair化身|r和|cRXD_ENEMY_Haunt of Despair |r|cRXP_WARN_while standing near |cRXT_FRIENDLY_Hopeless Acolytes|r|r
.complete 30272,1 
.complete 30271,1 
.mob Incarnation of Despair
.mob Haunt of Despair
.target Hopeless Acolyte
step
.xp >34,1
.goto 418,43.05,54.22
>>杀死|cRXP_ENEMY_Maw of Despair|r
.complete 30695,2 
.mob Maw of Despair
step
.xp >34,1
.goto 418,37.78,54.37
#label West Pagoda Cleansed
>>杀死|cRXP_ENEMY_Maw of Despair|r
.complete 30695,1 
.mob Maw of Despair
step
.xp >34,1
#loop
.goto 418,38.20,51.86,40,0
.goto 418,36.95,50.92,40,0
.goto 418,37.20,49.43,40,0
.goto 418,38.97,48.36,40,0
.goto 418,39.65,48.84,40,0
.goto 418,40.36,47.18,40,0
.goto 418,41.60,46.87,40,0
.goto 418,41.75,48.12,40,0
.goto 418,42.72,50.25,40,0
.goto 418,43.12,51.13,40,0
.goto 418,38.20,51.86,0
.goto 418,36.95,50.92,0
.goto 418,37.20,49.43,0
.goto 418,38.97,48.36,0
.goto 418,39.65,48.84,0
.goto 418,40.36,47.18,0
.goto 418,41.60,46.87,0
.goto 418,41.75,48.12,0
.goto 418,42.72,50.25,0
.goto 418,43.12,51.13,0
>>杀死|cRXP_ENEMY_Despair化身|r和|cRXD_ENEMY_Haunt of Despair |r|cRXP_WARN_while standing near |cRXT_FRIENDLY_Hopeless Acolytes|r|r
.complete 30272,1 
.complete 30271,1 
.mob Incarnation of Despair
.mob Haunt of Despair
.target Hopeless Acolyte
step
.xp >34,1
.goto 418,40.42,50.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安度因·乌瑞恩|r, next to you
.turnin 30271 >>Turn in Ahead on the Way
.turnin 30272 >>Turn in Striking the Rain
.turnin 30695 >>Turn in Ahead on the Way
.accept 30273 >>接任务: |cRXP_WARN_朱鹤之室|r
.target Anduin Wrynn
step
.xp >34,1
#completewith next
.goto 418,40.42,57.31,15,0
.goto 418,40.95,57.12,15,0
.goto 418,40.43,54.48,20,0
>>|cRXP_WARN_顺着箭头向下进入寺庙|r
.gossipoption 39489 >>Talk to |cRXP_FRIENDLY_Chi-Ji|r
.timer 10,RP
.target Chi-Ji
step
.xp >34,1
.goto 418,40.45,54.52
>>杀死|cRXP_ENEMY_Sha的绝望|r
.complete 30273,1 
.timer 10,RP
.mob Sha of Despair
step
.xp >34,1
.goto 418,40.97,57.19,15,0
.goto 418,40.44,57.11,15,0
.goto 418,40.43,49.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chi-Ji|r |cRXP_WARN_outside|r
.turnin 30273 >>Turn in In the House of the Red Crane
.target Chi-Ji
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 3） Krasarang Wilds I'thik
#internal
step << Alliance
#completewith Ik'thik Mantid
#hidewindow
#loop
.goto 418,14.46,36.69,30,0
.goto 418,14.23,35.67,30,0
.goto 418,15.45,35.45,30,0
.goto 418,15.88,34.63,30,0
.goto 418,16.98,35.28,30,0
.goto 418,17.36,36.67,30,0
.goto 418,15.70,37.35,30,0
.goto 418,14.46,36.69,0
.goto 418,14.23,35.67,0
.goto 418,15.45,35.45,0
.goto 418,15.88,34.63,0
.goto 418,16.98,35.28,0
.goto 418,17.36,36.67,0
.goto 418,15.70,37.35,0
+1
step << Horde
#completewith Ik'thik Mantid
#hidewindow
#loop
.goto 418,15.633,37.257,25,0
.goto 418,17.204,35.091,35,0
.goto 418,15.527,34.668,25,0
.goto 418,11.823,37.577,35,0
.goto 418,13.210,37.820,25,0
.goto 418,14.136,41.437,35,0
.goto 418,15.633,37.257,0
.goto 418,17.204,35.091,0
.goto 418,15.527,34.668,0
.goto 418,11.823,37.577,0
.goto 418,13.210,37.820,0
.goto 418,14.136,41.437,0
+1
step
.convertquest 30361,30175 << Horde
#completewith next
>>杀死|cRXP_ENEMY_Ik'thik Mantid|r
.complete 30361,1 
.mob Ik'thik Precursor
.mob Ik'thik Vanguard
step
.convertquest 30357,30164 << Horde
>>与|cRXP_FRIENDLY_Stoneploy Envoy|r交互
.complete 30357,1 
.target Stoneplow Envoy
step
#label Ik'thik Mantid
>>杀死|cRXP_ENEMY_Ik'thik Mantid|r
.complete 30361,1 
.mob Ik'thik Precursor
.mob Ik'thik Vanguard
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 3） 克拉萨朗野生动物园
#internal
step
.goto 418,51.66,75.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tony Tuna|r
.accept 30667 >>接任务: |cRXP_WARN_特别的羽毛|r
.target Tony Tuna
step
.goto 418,51.53,76.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jay Cloudfall|r
.accept 30666 >>接任务: |cRXP_WARN_突然袭击|r
.target Jay Cloudfall
step
#completewith Mortbreath crocolisk
#hidewindow
#loop
.goto 418,47.65,69.69,35,0
.goto 418,44.59,68.24,35,0
.goto 418,42.59,69.95,35,0
.goto 418,44.07,73.97,50,0
.goto 418,47.65,69.69,0
.goto 418,44.59,68.24,0
.goto 418,42.59,69.95,0
.goto 418,44.07,73.97,0
+1
step
#completewith Emerald Tailfeather
>>杀死|cRXP_ENEMY_Morthbreath crocolisk|r
.complete 30666,1 
.mob mortbreath crocolisk
step
#completewith Emerald Tailfeather
>>杀死|cRXP_ENEMY_Dusky Lory|r掠夺它们|T132921:0|t[|cRXD_Loot_Dunsky Tailfeath|r]
.complete 30667,3 
.mob Dusky Lory
step
#completewith Emerald Tailfeather
>>杀死|cRXP_ENEMY_Crimson Lory|r掠夺它们|T132929:0|t[|cRXP-Loot_Crymson Tailfeath|r]
.complete 30667,2 
.mob Crimson Lory
step
#label Emerald Tailfeather
>>杀死|cRXP_ENEMY_Emerald Lory|r掠夺它们|T132924:0|t[|cRXD_Loot_Ermerald Tailfeath|r]
.complete 30667,1 
.mob Emerald Lory
step
#completewith Crimson Tailfeather
>>杀死|cRXP_ENEMY_Morthbreath crocolisk|r
.complete 30666,1 
.mob mortbreath crocolisk
step
#completewith Crimson Tailfeather
>>杀死|cRXP_ENEMY_Dusky Lory|r掠夺它们|T132921:0|t[|cRXD_Loot_Dunsky Tailfeath|r]
.complete 30667,3 
.mob Dusky Lory
step
#label Crimson Tailfeather
>>杀死|cRXP_ENEMY_Crimson Lory|r掠夺它们|T132929:0|t[|cRXP-Loot_Crymson Tailfeath|r]
.complete 30667,2 
.mob Crimson Lory
step
#completewith next
>>杀死|cRXP_ENEMY_Morthbreath crocolisk|r
.complete 30666,1 
.mob mortbreath crocolisk
step
>>杀死|cRXP_ENEMY_Dusky Lory|r掠夺它们|T132921:0|t[|cRXD_Loot_Dunsky Tailfeath|r]
.complete 30667,3 
.mob Dusky Lory
step
#label Mortbreath crocolisk
>>杀死|cRXP_ENEMY_Morthbreath crocolisk|r
.complete 30666,1 
.mob mortbreath crocolisk
step
.goto 418,51.66,75.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tony Tuna|r
.turnin 30667 >>Turn in Particular Plumage
.target Tony Tuna
step
.goto 418,51.53,76.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jay Cloudfall|r
.turnin 30666 >>Turn in Sudden, Unexpected Crocolisk Aggression
.accept 30668 >>接任务: |cRXP_WARN_造木筏|r
.target Jay Cloudfall
step
.goto 418,52.26,77.95
>>单击|cRXP_PICK_Tough Kelp|r
.complete 30668,2 
step
.goto 418,52.38,76.18
>>单击|cRXP_PICK_Spare Plank|r
.complete 30668,1 
step
.goto 418,51.54,76.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jay Cloudfall|r
.turnin 30668 >>Turn in Build Your Own Raft
.accept 30669 >>接任务: |cRXP_WARN_湖面上的游学者|r
.target Jay Cloudfall
step
.goto 418,51.68,76.58
>>单击|cRXP_PICK_Raft|r
.complete 30669,1 
step
.goto 418,45.97,78.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wise Ana Wu|r
.turnin 30669 >>Turn in The Lorewalker on the Lake
.accept 30671 >>接任务: |cRXP_WARN_知识有价|r
.accept 30691 >>接任务: |cRXP_WARN_悲天悯人|r
.target Wise Ana Wu
step
#completewith next
>>杀死|cRXP_ENEMY_大灰鲨|r和|cRXX_ENEMY_Nayeli锤头|r为|T350573:0|t[|cRXP_Loot_Shark Fille|r]掠夺它们。
.complete 30671,1 
.mob Great Grey Shark
.mob Nayeli Hammerhead
step
#completewith next
#title Swim Down
.goto 418,46.00,80.23,10 >>进入|cRXP_WARN_underwater|r洞穴。
step
>>杀死|cRXP_ENEMY_Nahasa|r
.complete 30691,1 
.goto 418,46.202,83.462
.mob Nahassa
step
>>点击任务弹出窗口以提交任务
.goto 418,46.202,83.462
.turnin 30691 >>Turn in Misery
step
#completewith next
.goto 418,46,80.23,10 >>Leave the Cave.
step
#loop
.goto 418,47.04,79.26,40,0
.goto 418,49.13,78.94,40,0
.goto 418,46.31,77.34,40,0
.goto 418,44.45,79.32,40,0
.goto 418,47.04,79.26,0
.goto 418,49.13,78.94,0
.goto 418,46.31,77.34,0
.goto 418,44.45,79.32,0
>>杀死|cRXP_ENEMY_大灰鲨|r和|cRXX_ENEMY_Nayeli锤头|r为|T350573:0|t[|cRXP_Loot_Shark Fille|r]掠夺它们。
.complete 30671,1 
.mob Great Grey Shark
.mob Nayeli Hammerhead
step
.goto 418,45.98,78.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wise Ana Wu|r |cRXP_WARN_on the surface.|r
.turnin 30671 >>Turn in Wisdom Has A Price
.target Wise Ana Wu
.accept 30672 >>接任务: |cRXP_WARN_平衡|r
step
#completewith next
>>杀死|cRXP_ENEMY_Unga捕鱼器|r为任务掠夺它们|cRXP_Loot_埋藏的Hozen宝藏|r。点击你的包里
.complete 30672,1 
.collect 80827,1,30675,0
.accept 30675 >>接任务: |cRXP_WARN_埋好的猢狲财宝|r
.mob Unga Fish-getter
step
.goto 418,45.17,84.59
>>|cRXP_WARN_Follow the Arrow|r
.accept 30674 >>接任务: |cRXP_WARN_自然法则|r
step << Alliance
#completewith UngaFishGetter
#hidewindow
#loop
.goto 418,43.49,85.45,40,0
.goto 418,44.42,87.40,40,0
.goto 418,47.74,87.01,40,0
.goto 418,48.64,87.54,40,0
.goto 418,50.20,86.64,40,0
.goto 418,51.12,86.50,40,0
.goto 418,51.76,84.55,40,0
.goto 418,49.38,84.88,40,0
.goto 418,43.49,85.45,0
.goto 418,44.42,87.40,0
.goto 418,47.74,87.01,0
.goto 418,48.64,87.54,0
.goto 418,50.20,86.64,0
.goto 418,51.12,86.50,0
.goto 418,51.76,84.55,0
.goto 418,49.38,84.88,0
+1
step << Horde
#completewith UngaFishGetter
#hidewindow
#loop
.goto 418,43.49,85.45,40,0
.goto 418,42.377,86.719,25,0
.goto 418,44.42,87.40,40,0
.goto 418,47.74,87.01,40,0
.goto 418,48.64,87.54,40,0
.goto 418,50.20,86.64,40,0
.goto 418,51.12,86.50,40,0
.goto 418,51.76,84.55,40,0
.goto 418,49.38,84.88,40,0
.goto 418,43.49,85.45,0
.goto 418,42.38,86.72,0
.goto 418,44.42,87.40,0
.goto 418,47.74,87.01,0
.goto 418,48.64,87.54,0
.goto 418,50.20,86.64,0
.goto 418,51.12,86.50,0
.goto 418,51.76,84.55,0
.goto 418,49.38,84.88,0
+1
step
#completewith Buried Hozen Treasure
>>杀死|cRXP_ENEMY_Unga捕鱼器|r为任务掠夺它们|cRXP_Loot_埋藏的Hozen宝藏|r
.complete 30672,1 
.collect 80827,1,30675,0
.accept 30675 >>接任务: |cRXP_WARN_埋好的猢狲财宝|r
.mob Unga Fish-getter
step
#completewith Buried Hozen Treasure
>>与|cRXP_PICK_Flailing Carp|r交互
.complete 30674,1 
.target Flailing Carp
step
#label Buried Hozen Treasure
>>单击|cRXP_PICK_Dirt|r
.complete 30675,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Unga捕鱼器|r为任务掠夺它们|cRXP_Loot_埋藏的Hozen宝藏|r
.complete 30672,1 
.mob unga fish-getter
step
>>与|cRXP_PICK_Flailing Carp|r交互
.complete 30674,1 
.target Flailing Carp
step
#label UngaFishGetter
>>杀死|cRXP_ENEMY_Unga捕鱼器|r为任务掠夺它们|cRXP_Loot_埋藏的Hozen宝藏|r
.complete 30672,1 
.collect 80827,1,30675,0
.accept 30675 >>接任务: |cRXP_WARN_埋好的猢狲财宝|r
.mob unga fish-getter
step
>>点击任务弹出窗口以提交任务
.turnin 30674 >>Turn in Balance Without Violence
.turnin 30675 >>Turn in Buried Hozen Treasure
step
.goto 418,51.52,76.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jay Cloudfall|r
.turnin 30672 >>Turn in Balance
.target Jay Cloudfall
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 3） 克拉萨朗荒野部落战役
#internal
<< Horde
step
.goto 390,62.92,28.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
.accept 32249 >>接任务: |cRXP_WARN_寻找斥候|r
.target Sunwalker Dezco
step
.goto 390,63.40,20.77
.fp >>获取the Golden Terrace飞行路线
step
.goto 390,63.40,20.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bowmaster Ku|r
.accept 31391 >>接任务: |cRXP_WARN_卡拉克西|r
.target Bowmaster Ku
step
.goto 390,63.14,22.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Weng the Merciful|r
.accept 31385 >>接任务: |cRXP_WARN_金莲教|r
.target Weng the Merciful
step
.goto 418,8.74,64.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Rokla|r
.turnin 32249 >>Turn in Meet the Scout
.target Scout Rokla
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加尔鲁什·地狱咆哮|r
.accept 32250 >>接任务: |cRXP_WARN_酋长的力量|r
.target Garrosh Hellscream
step
.goto 418,12.02,63.42
>>杀死|cRXP_ENEMY_Alliance|r
.complete 32250,1 
.mob Alliance
step
>>|cRXP_WARN_Follow the arrow|r
.goto 418,10.70,53.15
.complete 32250,2 
step
>>|cRXP_WARN_Follow the arrow|r
.goto 418,15.73,57.75
.complete 32250,3 
step
.goto 418,15.73,57.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_加尔鲁什·地狱咆哮|r
.turnin 32250 >>Turn in The Might of the Warchief
.accept 32108 >>接任务: |cRXP_WARN_统御岗哨|r
.target Garrosh Hellscream
step
.goto 418,8.53,63.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Signal Fire|r
.turnin 32108 >>交任务: |cRXP_FRIENDLY_控制权|r Point
.target Signal Fire
step
.goto 418,10.38,53.71
.accept 32251 >>接任务: |cRXP_WARN_黑暗中的匕首|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.accept 32256 >>接任务: |cRXP_WARN_帝国的崛起|r
.target General Nazgrim
step
.goto 418,12.74,56.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bounty Board|r
.accept 32222 >>接任务: |cRXP_WARN_[WANTED: Chief Engineer Cogwrench]|r
.target Bounty Board
step
.goto 418,12.97,56.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.accept 32214 >>接任务: |cRXP_WARN_[Bilgewater Infiltrators]|r
.target Rivett Clutchpop
step
.goto 418,13.80,55.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_公爵|r
.accept 32197 >>接任务: |cRXP_WARN_神秘肉卷|r
.target Duke
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss-Lady Trixel|r
.accept 32136 >>接任务: |cRXP_WARN_[Work Order: Fuel]|r
.target Boss-Lady Trixel
step
.goto 418,25.26,60.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixy Buzzsaw|r
.accept 32237 >>接任务: |cRXP_WARN_[Precious Resource]|r
.target Bixy Buzzsaw
step
.goto 418,25.54,60.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzle Gearslip|r
.turnin 32136 >>Turn in Work Order: Fuel
.target Grizzle Gearslip
.accept 32137 >>接任务: |cRXP_WARN_[Runnin' On Empty]|r
step
.goto 418,21.34,65.00
.complete 32197,1 
step
.goto 418,25.33,64.38
.complete 32137,1 
step
.goto 418,26.05,58.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sezik Steampot|r
.turnin 32197 >>Turn in Mystery Meatloaf
.target Sezik Steampot
step
.goto 418,21.78,54.02
.complete 32237,1 
step
.goto 418,19.36,63.11
>>杀死|cRXP_ENEMY_破坏者|r
.complete 32214,1 
.mob Saboteur
step
.goto 418,25.26,60.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixy Buzzsaw|r
.turnin 32237 >>Turn in Precious Resource
.target Bixy Buzzsaw
step
.goto 418,21.66,51.14
>>杀死|cRXP_ENEMY_总工程师Cogchank|r
.complete 32222,1 
.mob Chief Engineer Cogwrench
step
.goto 418,13.79,55.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss-Lady Trixel|r
.turnin 32137 >>Turn in Runnin' On Empty
.target Boss-Lady Trixel
step
.goto 418,12.91,56.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 32214 >>Turn in Bilgewater Infiltrators
.target Rivett Clutchpop
step
.goto 418,10.08,53.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gro'tash|r
.turnin 32222 >>Turn in WANTED: Chief Engineer Cogwrench
.target Blood Guard Gro'tash
step
.goto 418,10.38,53.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim to queue for "Dagger in the Dark"|r
.complete 32251,1 
.target General Nazgrim to queue for "Dagger in the Dark"
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 7） 昆莱峰会我的儿子
#internal
step
.goto 379,74.97,88.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Shi,|r

.accept 30467 >>接任务: |cRXP_WARN_我的儿子……|r
.accept 30469 >>接任务: |cRXP_WARN_取回补给|r
.target Merchant Shi
step
.goto 379,74.80,88.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swordmistress Mei|r
.accept 30468 >>接任务: |cRXP_WARN_复仇之怒|r
.target Swordmistress Mei
step
.goto 379,75.14,87.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
.accept 30496 >>接任务: |cRXP_WARN_水语者的法杖|r
.accept 30967 >>接任务: |cRXP_WARN_解救叛逆者|r
.target Waterspeaker Gorai
step << Alliance
#completewith Role Call
>>杀死|cRXP_ENEMY_Enraged Jinyu|r
.complete 30468,1 
.mob Orachi
.mob Enraged Cavalier
.mob Enraged Priest
.mob Enraged Blacksmith
.mob Enraged Enforcer
.mob Enraged Spearman
.mob Enraged Tideweaver
step << Alliance
#completewith Role Call
>>单击|cRXP_PICK_Stolen Supplies|r
.complete 30469,1 
step << Alliance
#completewith Role Call
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkgill Dissenter.|r
.complete 30967,1 
.skipgossip
.target Inkgill Dissenter
step << Alliance
#label Role Call
.goto 379,74.48,83.55
.achievement 6846,1 >>单击|cRXP_PICK_Scroll|r
step
#completewith Orachi
>>杀死|cRXP_ENEMY_Enraged Jinyu|r
.complete 30468,1 
.mob Orachi
.mob Enraged Cavalier
.mob Enraged Priest
.mob Enraged Blacksmith
.mob Enraged Enforcer
.mob Enraged Spearman
.mob Enraged Tideweaver
step << Alliance
#completewith Orachi
>>单击|cRXP_PICK_Stolen Supplies|r
.complete 30469,1 
step << Alliance
#completewith Orachi
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkgill Dissenter.|r
.complete 30967,1 
.skipgossip
.target Inkgill Dissenter
step
#completewith Orachi
>>杀死|cRXP_ENEMY_Enraged Jinyu|r
.complete 30468,1 
.mob Orachi
.mob Enraged Cavalier
.mob Enraged Priest
.mob Enraged Blacksmith
.mob Enraged Enforcer
.mob Enraged Spearman
.mob Enraged Tideweaver
step
#completewith Orachi
>>单击|cRXP_PICK_Stolen Supplies|r
.complete 30469,1 
step
#completewith Orachi
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkgill Dissenter.|r
.complete 30967,1 
.skipgossip
.target Inkgill Dissenter
step
.goto 379,74.27,78.13
>>杀死|cRXP_ENEMY_Orachi|r为|cRXP_Loot_Stolen Inkgill仪式杖抢劫他|r
.complete 30496,1 
.mob Orachi
step
#label Orachi
.goto 379,74.68,76.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu-Peng|r
.turnin 30467 >>Turn in My Son...
.accept 30834 >>接任务: |cRXP_WARN_父子团聚|r
.target Wu-Peng
step
#completewith Turn in The Waterspeaker's Staff
#hidewindow
#loop
.goto 379,73.08,76.26,40,0
.goto 379,73.17,77.19,40,0
.goto 379,74.33,78.61,40,0
.goto 379,74.79,79.76,40,0
.goto 379,74.77,82.39,40,0
.goto 379,73.86,82.87,40,0
.goto 379,73.72,84.08,40,0
.goto 379,74.63,84.98,40,0
.goto 379,73.08,76.26,0
.goto 379,73.17,77.19,0
.goto 379,74.33,78.61,0
.goto 379,74.79,79.76,0
.goto 379,74.77,82.39,0
.goto 379,73.86,82.87,0
.goto 379,73.72,84.08,0
.goto 379,74.63,84.98,0
+1
step
#completewith Inkgill Dissenters
>>杀死|cRXP_ENEMY_Enraged Jinyu|r
.complete 30468,1 
.mob Enraged Cavalier
.mob Enraged Priest
.mob Enraged Blacksmith
.mob Enraged Enforcer
.mob Enraged Spearman
.mob Enraged Tideweaver
.mob Orachi
step
#completewith Inkgill Dissenters
>>单击|cRXP_PICK_Stolen Supplies|r
.complete 30469,1 
step
#label Inkgill Dissenters
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkgill Dissenter.|r
.complete 30967,1 
.skipgossip
.target Inkgill Dissenter
step
#completewith next
>>杀死|cRXP_ENEMY_Enraged Jinyu|r
.complete 30468,1 
.mob Enraged Cavalier
.mob Enraged Priest
.mob Enraged Blacksmith
.mob Enraged Enforcer
.mob Enraged Spearman
.mob Enraged Tideweaver
.mob Orachi
step
>>单击|cRXP_PICK_Stolen Supplies|r
.complete 30469,1 
step
#label Turn in The Waterspeaker's Staff
>>杀死|cRXP_ENEMY_Enraged Jinyu|r
.complete 30468,1 
.mob Enraged Cavalier
.mob Enraged Priest
.mob Enraged Blacksmith
.mob Enraged Enforcer
.mob Enraged Spearman
.mob Enraged Tideweaver
.mob Orachi
step
.goto 379,75.21,88.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
.turnin 30496 >>Turn in The Waterspeaker's Staff
.turnin 30967 >>Turn in Free the Dissenters
.target Waterspeaker Gorai


step
.goto 379,74.78,88.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Swordmistress Mei|r
.turnin 30468 >>Turn in Enraged Vengeance
.target Swordmistress Mei
step
.goto 379,74.97,88.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Shi|r
.turnin 30469 >>Turn in Repossession
.turnin 30834 >>Turn in Father and Child Reunion
.target Merchant Shi
step
.goto 379,75.21,88.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
.accept 30480 >>接任务: |cRXP_WARN_仪式|r
.target Waterspeaker Gorai
step
.goto 379,75.21,88.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
.target Waterspeaker Gorai
.complete 30480,1 
.timer 34,RP
.skipgossip 60973,1

step
.goto 379,74.90,88.58
>>|cRXP_WARN_在任务停机期间，根据您当前的需求，专注于以下活动，最大限度地提高效率：|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397



























.complete 30480,2 
step

>>杀死|cRXP_ENEMY_爆炸帽|r
.complete 30480,3 
.timer 14,RP
.mob Explosive Hatred
step

.goto 379,74.90,88.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Waterspeaker Gorai|r
.turnin 30480 >>Turn in The Ritual
.target Waterspeaker Gorai
































































































]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 7） 昆莱峰会破坏者
#internal
step
#loop
.goto 379,71.57,74.97,40,0
.goto 379,70.74,72.41,40,0
.goto 379,71.55,71.05,40,0
.goto 379,71.57,74.97,0
.goto 379,70.74,72.41,0
.goto 379,71.55,71.05,0
>>杀死|cRXP_ENEMY_Burilgi Despoiler|r。将其掠夺|T133364:0|t[Muskpaw's Keepsake]。这将开始一个探索。
.accept 30582 >>接任务: |cRXP_WARN_已故的麝香爪夫人|r
.mob Burilgi Despoiler
step
#loop
.goto 379,71.61,70.08,20,0
.goto 379,71.21,69.36,20,0
.goto 379,71.61,70.08,0
.goto 379,71.21,69.36,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao Muskpaw|r

.turnin 30582 >>Turn in The Late Mrs. Muskpaw
.accept 30488 >>接任务: |cRXP_WARN_找回麝香爪|r
.accept 30489 >>接任务: |cRXP_WARN_鲜松针的香味|r
.accept 30804 >>接任务: |cRXP_WARN_恐惧大师|r
.target Lao Muskpaw
step
#completewith next
.goto 379,73.05,73.49,20,0
.goto 381,16.39,39.7,10,0
.goto 381,26.25,61.08,10,0
.goto 381,41.97,40.32,10,0
.goto 381,53.77,32.01,10,0
.goto 381,65.53,43.08,10,0
>>杀死|cRXP_ENEMY_Needle精灵|r为|T134439:0|t[|cRXP_Loot_Pugent精灵针|r]掠夺它们。
.complete 30489,1 
.mob Needle Sprite
step
.goto 381,63.96,59.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muskpaw Jr.|r
.turnin 30488 >>Turn in The Missing Muskpaw
.target Muskpaw Jr.
step
.group
.goto 381,63.96,59.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muskpaw Jr.|r
.accept 30491 >>接任务: |cRXP_WARN_洗牛站|r
.target Muskpaw Jr.
step
#completewith next
.goto 381,65.53,43.08,10,0
.goto 381,53.77,32.01,10,0
.goto 381,41.97,40.32,10,0
.goto 381,26.25,61.08,10,0
.goto 381,16.39,39.7,10,0
.goto 379,73.05,73.49,10,0
.goto 379,71.92,72.18,30,0
.goto 379,71.5,72.05,30,0
.goto 379,69.31,72.72,30,0
.goto 379,67.99,72.47,30,0
.goto 379,65.68,73.11,30,0
.goto 379,66.96,74.17,30,0
>>杀死|cRXP_ENEMY_Needle精灵|r为|cRXP_Loot_Pugent精灵针掠夺它们|r
.complete 30489,1 
.mob Needle Sprite
step
#loop
.goto 379,71.57,74.97,40,0
.goto 379,70.74,72.41,40,0
.goto 379,71.55,71.05,40,0
.goto 379,71.57,74.97,0
.goto 379,70.74,72.41,0
.goto 379,71.55,71.05,0
>>杀死|cRXP_ENEMY_Burilgi Despoiler|r接受任务：[Yakity Yak]
*|cRXP_WARN_This can take multiple kills|r
.accept 30587 >>接任务: |cRXP_WARN_喋喋不休|r
.mob Burilgi Despoiler
step
#completewith The Fearmaster
>>杀死|cRXP_ENEMY_Needle精灵|r为|cRXP_Loot_Pugent精灵针掠夺它们|r
.complete 30489,1 
.mob Needle Sprite
step
#completewith The Fearmaster
>>杀死|cRXP_ENEMY_Burilgi Despoiler|r
.complete 30587,1 
.mob burilgi despoiler
step
#label The Fearmaster
.goto 379,67.84,73.97
>>杀死|cRXP_ENEMY_恐惧大师|r
.complete 30804,1 
.mob the fearmaster
step
#completewith Needle Sprite
#hidewindow
#loop
.goto 379,68.10,71.70,40,0
.goto 379,70.00,70.27,40,0
.goto 379,72.67,71.49,40,0
.goto 379,71.79,74.10,40,0
.goto 379,66.54,74.19,40,0
.goto 379,68.10,71.70,0
.goto 379,70.00,70.27,0
.goto 379,72.67,71.49,0
.goto 379,71.79,74.10,0
.goto 379,66.54,74.19,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Needle精灵|r为|cRXP_Loot_Pugent精灵针掠夺它们|r
.complete 30489,1 
.mob Needle Sprite
step
>>杀死|cRXP_ENEMY_Burilgi Despoiler|r
.complete 30587,1 
.mob burilgi despoiler
step
#label Needle Sprite
>>杀死|cRXP_ENEMY_Needle精灵|r为|cRXP_Loot_Pugent精灵针掠夺它们|r
.complete 30489,1 
.mob Needle Sprite
step
.group
#loop
#completewith next
.goto 379,70.36,69.68,40,0
.goto 379,69.63,70.46,40,0
.goto 379,69.08,70.90,40,0
.goto 379,69.63,72.10,40,0
.goto 379,70.77,72.30,40,0
.goto 379,70.36,69.68,0
.goto 379,69.63,70.46,0
.goto 379,69.08,70.90,0
.goto 379,69.63,72.10,0
.goto 379,70.77,72.30,0
.vehicle >>与|cRXP_FRIENDLY_Escaped Yak|r交互
.mob Escaped Yak
step
.group
.isOnQuest 30491
.goto 379,71.41,69.14
>>|cRXP_WARN_Follow the Arrow |r and Use |T132335:0|t[Rash]（1）to sprint。
.complete 30491,1,1 
step
.group
#loop
#completewith next
.goto 379,70.36,69.68,40,0
.goto 379,69.63,70.46,40,0
.goto 379,69.08,70.90,40,0
.goto 379,69.63,72.10,40,0
.goto 379,70.77,72.30,40,0
.goto 379,70.36,69.68,0
.goto 379,69.63,70.46,0
.goto 379,69.08,70.90,0
.goto 379,69.63,72.10,0
.goto 379,70.77,72.30,0
.isOnQuest 30489
.vehicle >>与|cRXP_FRIENDLY_Escaped Yak|r交互
.mob Escaped Yak
step
.group
.isOnQuest 30491
.goto 379,71.41,69.14
>>|cRXP_WARN_Follow the Arrow |r and Use |T132335:0|t[Rash]（1）to sprint。
.complete 30491,1,2 
step
.group
#loop
#completewith next
.goto 379,70.36,69.68,40,0
.goto 379,69.63,70.46,40,0
.goto 379,69.08,70.90,40,0
.goto 379,69.63,72.10,40,0
.goto 379,70.77,72.30,40,0
.goto 379,70.36,69.68,0
.goto 379,69.63,70.46,0
.goto 379,69.08,70.90,0
.goto 379,69.63,72.10,0
.goto 379,70.77,72.30,0
.isOnQuest 30489
.vehicle >>与|cRXP_FRIENDLY_Escaped Yak|r交互
.mob Escaped Yak
step
.group
.isOnQuest 30491
.goto 379,71.41,69.14
>>|cRXP_WARN_Follow the Arrow |r and Use |T132335:0|t[Rash]（1）to sprint。
.complete 30491,1,3 
step
.group
#loop
#completewith next
.goto 379,70.36,69.68,40,0
.goto 379,69.63,70.46,40,0
.goto 379,69.08,70.90,40,0
.goto 379,69.63,72.10,40,0
.goto 379,70.77,72.30,40,0
.goto 379,70.36,69.68,0
.goto 379,69.63,70.46,0
.goto 379,69.08,70.90,0
.goto 379,69.63,72.10,0
.goto 379,70.77,72.30,0
.isOnQuest 30489
.vehicle >>与|cRXP_FRIENDLY_Escaped Yak|r交互
.mob Escaped Yak
step
.group
.isOnQuest 30491
.goto 379,71.41,69.14
>>|cRXP_WARN_Follow the Arrow |r and Use |T132335:0|t[Rash]（1）to sprint。
.complete 30491,1,4 
step
.group
#loop
#completewith next
.goto 379,70.36,69.68,40,0
.goto 379,69.63,70.46,40,0
.goto 379,69.08,70.90,40,0
.goto 379,69.63,72.10,40,0
.goto 379,70.77,72.30,40,0
.goto 379,70.36,69.68,0
.goto 379,69.63,70.46,0
.goto 379,69.08,70.90,0
.goto 379,69.63,72.10,0
.goto 379,70.77,72.30,0
.isOnQuest 30489
.vehicle >>与|cRXP_FRIENDLY_Escaped Yak|r交互
.mob Escaped Yak
step
.group
.isOnQuest 30491
.goto 379,71.41,69.14
>>|cRXP_WARN_Follow the Arrow |r and Use |T132335:0|t[Rash]（1）to sprint。
.complete 30491,1,5 
step
.group
#loop
#completewith next
.goto 379,70.36,69.68,40,0
.goto 379,69.63,70.46,40,0
.goto 379,69.08,70.90,40,0
.goto 379,69.63,72.10,40,0
.goto 379,70.77,72.30,40,0
.goto 379,70.36,69.68,0
.goto 379,69.63,70.46,0
.goto 379,69.08,70.90,0
.goto 379,69.63,72.10,0
.goto 379,70.77,72.30,0
.isOnQuest 30489
.vehicle >>与|cRXP_FRIENDLY_Escaped Yak|r交互
.mob Escaped Yak
step
.group
.isOnQuest 30491
.goto 379,71.41,69.14
>>|cRXP_WARN_Follow the Arrow |r and Use |T132335:0|t[Rash]（1）to sprint。
.complete 30491,1,6 
step
#loop
.goto 379,71.21,69.39,25,0
.goto 379,71.94,70.30,25,0
.goto 379,71.21,69.39,0
.goto 379,71.94,70.30,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao Muskpaw|r
.turnin 30489 >>Turn in Fresh Needle Scent
.turnin 30587 >>Turn in Yakity Yak
.turnin 30804 >>Turn in The Fearmaster
.target Lao Muskpaw
step
.group
.goto 379,71.40,69.28
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muskpaw Jr.|r
.turnin 30491 >>Turn in At the Yak Wash
.accept 30492 >>接任务: |cRXP_WARN_再说牦牛|r
.target Muskpaw Jr.
step
#label Yaungoil
.goto 379,71.73,63.03
.achievement 6847,3 >>单击|cRXP_PICK_Scroll|r
step
.goto 379,65.49,60.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slimy Inkstain|r
.accept 30614 >>接任务: |cRXP_WARN_采油站|r
.target Slimy Inkstain
step
.goto 379,64.88,60.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey Sootassle|r
.accept 30616 >>接任务: |cRXP_WARN_交通问题|r
.target Smokey Sootassle
step
.group
.goto 379,65.12,61.65
>>|cRXP_WARN_Follow the Arrow|r
.complete 30492,1 
step
.group
.goto 379,64.71,61.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Eightcoins|r
.turnin 30492 >>Turn in Back in Yak
step
.goto 379,64.71,61.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Eightcoins|r
.accept 30808 >>接任务: |cRXP_WARN_土地精的好运|r
.target Lucky Eightcoins
step
#completewith Filled Oil Vial
>>杀死|cRXP_ENEMY_Ruqin步兵|r和|cRXP_ENEMY_Ruqin长老|r
.complete 30616,1 
.mob Ruqin Infantry
.mob Ruqin Elder
step
#completewith Filled Oil Vial
>>单击|cRXP_PICK_被盗Luckydos的袋子|r
.complete 30808,1 
step
#label Filled Oil Vial
.goto 379,63.34,68.46
>>单击|cRXP_PICK_Yaungol Oil Derrik|r
.complete 30614,1 
step
#completewith Ruqin Yaungols
#hidewindow
#loop
.goto 379,62.19,69.29,20,0
.goto 379,62.04,67.93,20,0
.goto 379,63.38,66.86,20,0
.goto 379,62.19,69.29,0
.goto 379,62.04,67.93,0
.goto 379,63.38,66.86,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Ruqin步兵|r和|cRXP_ENEMY_Ruqin长老|r
.complete 30616,1 
.mob Ruqin Infantry
.mob Ruqin Elder
.mob Ruqin Outrider
step
>>单击|cRXP_PICK_被盗Luckydos的袋子|r
.complete 30808,1 
step
#label Ruqin Yaungols
>>杀死|cRXP_ENEMY_Ruqin步兵|r和|cRXP_ENEMY_Ruqin长老|r
.complete 30616,1 
.mob Ruqin Infantry
.mob Ruqin Elder
.mob Ruqin Outrider
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 7） 坤来巅峰防御影盘
#internal
step
#completewith DefenseShadopan
.goto 379,45.05,89.96,20 >>Enter the Castle
step
.isOnQuest 31455,31453
#optional
.goto 379,44.48,89.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
.turnin 31455 >>交任务: |cRXP_FRIENDLY_影踪派|r << Alliance
.turnin 31453 >>交任务: |cRXP_FRIENDLY_影踪派|r << Horde
.accept 30665 >>接任务: |cRXP_WARN_保卫影踪别院|r
.accept 30670 >>接任务: |cRXP_WARN_道法自然|r
.target Shado-Master Chong
step
#label DefenseShadopan
.goto 379,44.48,89.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
.accept 30665 >>接任务: |cRXP_WARN_保卫影踪别院|r
.accept 30670 >>接任务: |cRXP_WARN_道法自然|r
.target Shado-Master Chong
step
#completewith Holed Up
>>杀死|cRXP_ENEMY_sha-infested yaungol|r
.complete 30665,1 
.mob Sha-Infested Yaungol
step
#completewith Holed Up
>>杀死|cRXP_ENEMY_Blind Rage|r为|cRXP_Loot_Blind Rage Essence掠夺它们|r
.complete 30670,1 
.mob Blind Rage
step
#completewith Holed Up
.goto 379,44.51,89.06,10 >>Leave the Castle
step
#label Holed Up
.goto 379,42.94,88.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sya Zhong|r |cRXP_WARN_inside the small house|r
.accept 30682 >>接任务: |cRXP_WARN_救民水火|r
.target Sya Zhong
step
#completewith Jin Warmkeg
>>杀死|cRXP_ENEMY_Sha-Infested Yaungol|r
.complete 30665,1 
.mob Sha-Infested Yaungol
step
#completewith Jin Warmkeg
>>杀死|cRXP_ENEMY_Blind Rage|r为|cRXP_Loot_Blind Rage Essence掠夺它们|r
.complete 30670,1 
.mob Blind Rage
step
.goto 379,43.12,88.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sya Zhong|r
.complete 30682,4 
.skipgossip
.target Sya Zhong
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ya Firebough|r
.complete 30682,2 
.goto 379,41.07,87.00
.skipgossip
.target Ya Firebough
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Lady Fung|r
.complete 30682,3 
.goto 379,42.84,85.71
.skipgossip
.target Old Lady Fung
step
#label Jin Warmkeg
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin Warmkeg|r
.complete 30682,1 
.goto 379,43.88,86.17
.skipgossip
.target Jin Warmkeg
step
#completewith Sha-Infested Yaungol
#hidewindow
#loop
.goto 379,45.15,88.27,40,0
.goto 379,42.89,87.97,40,0
.goto 379,41.06,86.39,40,0
.goto 379,42.80,86.06,40,0
.goto 379,45.15,88.27,0
.goto 379,42.89,87.97,0
.goto 379,41.06,86.39,0
.goto 379,42.80,86.06,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Sha-Infested Yaungol|r
.complete 30665,1 
.mob Sha-Infested Yaungol
step
>>杀死|cRXP_ENEMY_Blind Rage|r为|cRXP_Loot_Blind Rage Essence掠夺它们|r
.complete 30670,1 
.mob Blind Rage
step
#label Sha-Infested Yaungol
>>杀死|cRXP_ENEMY_Sha-Infested Yaungol|r
.complete 30665,1 
.mob Sha-Infested Yaungol
step
#completewith next
.goto 379,44.51,89.06,12 >>Enter the Castle
step
.goto 379,44.47,89.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
.turnin 30665 >>Turn in The Defense of Shado-Pan Fallback
.turnin 30670 >>Turn in Turnabout
.turnin 30682 >>Turn in Holed Up
.accept 30690 >>接任务: |cRXP_WARN_幕后真凶|r
.target Shado-Master Chong
step
#completewith KobaiTrapMask
.goto 379,44.51,89.06,12 >>Leave the Castle
step
#sticky
#label KobaiTrapMask
.complete 30690,1 
step
#label KobaiTrap
#completewith KobaiTrapMask
#loop
.goto 379,44.94,86.47,20,0
.goto 379,45.14,85.98,20,0
.goto 379,45.51,85.53,20,0
.goto 379,45.82,86.57,20,0
.goto 379,45.49,86.96,20,0
.goto 379,44.94,86.47,0
.goto 379,45.14,85.98,0
.goto 379,45.51,85.53,0
.goto 379,45.82,86.57,0
.goto 379,45.49,86.96,0
.cast 118938 >>在|cRXP_ENEMY_Kobai附近使用|T537467:0|t[Blinding Rage Trap]|r
.mob Kobai
.use 81741
step
.isOnQuest 30690
#requires KobaiTrap
#completewith KobaiTrapMask
.goto 379,45.44,85.47
.cast 118984 >>将|cRXP_ENEMY_Kobai|r拉入陷阱，并在|cRXX_ENEMY_Kobai|r上使用|T133564:0|t[Blinding Rage Trap]偷走他的面具。
.use 118984
.mob Kobai
step
#requires KobaiTrapMask
>>杀死|cRXP_ENEMY_恶毒之怒|r
.complete 30690,2 
.mob malevolent fury
step
#completewith next
.goto 379,44.51,89.06,12 >>Enter the Castle
step
.goto 379,44.48,89.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
.turnin 30690 >>Turn in Unmasking the Yaungol
.target Shado-Master Chong
.accept 30699 >>接任务: |cRXP_WARN_前往冬花营|r
step
#completewith next
.goto 379,45.13,89.98,10 >>Leave the Castle
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 7） 主战役玉林中立
#internal
step
.goto 371,46.65,46.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
.accept 29716 >>接任务: |cRXP_WARN_胆比猢狲大|r
.target An Windfur
.accept 29717 >>接任务: |cRXP_WARN_教训小猫！|r
step
.goto 371,46.46,45.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tzu the Ironbelly|r
.accept 29865 >>接任务: |cRXP_WARN_丝木林之路|r
.target Tzu the Ironbelly
step
.goto 371,46.63,45.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lo Wanderbrew|r
.accept 29866 >>接任务: |cRXP_WARN_万千烦恼丝|r
.target Lo Wanderbrew
step
#completewith SilkwoodStalker
#hidewindow
#loop
.goto 371,45.10,47.18,30,0
.goto 371,44.98,49.66,35,0
.goto 371,43.92,51.05,35,0
.goto 371,41.70,50.53,42,0
.goto 371,42.87,47.47,42,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Silkwood Stalker|r
.complete 29865,1 
.mob Silkwood Stalker
step
>>单击|cRXP_PICK_Silk Patches|r
.complete 29866,1 
step
#label SilkwoodStalker
>>杀死|cRXP_ENEMY_Silkwood Stalker|r
.complete 29865,1 
.mob Silkwood Stalker
step
#completewith JadeGuardian
#hidewindow
#loop
.goto 371,39.81,47.28,32,0
.goto 371,37.61,48.69,38,0
.goto 371,36.68,45.59,38,0
.goto 371,37.27,43.31,38,0
.goto 371,38.38,41.85,38,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_翡翠守护者|r
.complete 29717,1 
.mob Jade Guardian
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scared Pandaren Cubs|r
.complete 29716,1 
.skipgossip 55267,1
.target Scared Pandaren Cubs
step
#label JadeGuardian
>>杀死|cRXP_ENEMY_翡翠守护者|r
.complete 29717,1 
.mob Jade Guardian
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r |cRXP_WARN_next to you|r
*If she's no longer next to you then head back to Dawn's Blossom
.turnin 29716 >>Turn in The Double Hozen Dare
.turnin 29717 >>Turn in Down Kitty!
.accept 29723 >>接任务: |cRXP_WARN_青玉巫婆|r
.target An Windfur
step
#completewith next
.gossipoption 39810 >>Talk to |cRXP_FRIENDLY_Widow Greenpaw|r
.timer 35,Roleplay Duration
.target Widow Greenpaw
step
>>|cRXP_WARN_关注|r|cRXP_FRIENDLY_Widow Greenpaw|r
>>Kill |cRXP_ENEMY_Widow Greenpaw|r when she becomes hostile
.goto 371,39.75,46.22
.complete 29723,1 
.mob Widow Greenpaw
step
.goto 371,46.46,45.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tzu the Ironbelly|r
.turnin 29865 >>Turn in The Silkwood Road
.target Tzu the Ironbelly
step
.goto 371,46.63,45.32
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lo Wanderbrew|r
.turnin 29866 >>Turn in The Threads that Stick
.target Lo Wanderbrew
step
.goto 371,46.86,45.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_An Windfur|r
*|cRXP_WARN_She runs around in a circle around the village|r
.turnin 29723 >>Turn in The Jade Witch
.target An Windfur
step
.goto 371,46.86,45.96
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kai Wanderbrew|r
.accept 29993 >>接任务: |cRXP_WARN_找到男孩|r
.target Kai Wanderbrew
step
.goto 371,47.16,46.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
.accept 29925 >>接任务: |cRXP_WARN_竭尽所能|r
.target Toya
step
.goto 371,54.67,44.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Wei|r
.turnin 29993 >>Turn in Find the Boy
.accept 29995 >>接任务: |cRXP_WARN_黎明神龛|r
.target Inkmaster Wei
step
.goto 371,54.89,45.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Glenzu|r
.accept 29881 >>接任务: |cRXP_WARN_理想的颜色|r
.target Inkmaster Glenzu
step
.goto 371,55.32,45.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Jo Po|r
.accept 29882 >>接任务: |cRXP_WARN_尾针翎笔|r
.target Inkmaster Jo Po
step
#completewith FreshlyFallenPetal
#hidewindow
#loop
.goto 371,56.56,42.36,34,0
.goto 371,52.97,42.98,45,0
.goto 371,51.79,44.56,35,0
.goto 371,53.90,49.59,42,0
.goto 371,53.78,45.35,40,0
+1
step
#completewith next
>>杀死|cRXP_FRIENDLY_Orchard Wasps|r。为|T133723:0|t[黄蜂毒刺]掠夺它们
.complete 29882,1 
.mob Orchard Wasps
step
>>单击|cRXP_PICK_Freshly Fallen Petals|r
.complete 29881,1 
step
#label FreshlyFallenPetal
>>杀死|cRXP_FRIENDLY_Orchard Wasps|r。为|T133723:0|t[黄蜂毒刺]掠夺它们
.complete 29882,1 
.mob Orchard Wasps
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Inkmaster Jo Po|r and |cRXP_FRIENDLY_Inkmaster Glenzu|r
.turnin 29882 >>Turn in Quill of Stingers
.goto 371,55.32,45.22
.target +Inkmaster Jo Po
.turnin 29881 >>Turn in The Perfect Color
.goto 371,54.89,45.31
.target +Inkmaster Glenzu
step
.goto 371,52.57,38.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syra Goldendraft|r
.turnin 29995 >>Turn in Shrine of the Dawn
.accept 29920 >>接任务: |cRXP_WARN_长辈的许可|r
.target Syra Goldendraft
step
#completewith next
.gossipoption 40636 >>Talk to |cRXP_FRIENDLY_Pandriarch Bramblestaff|r
.target Pandriarch Bramblestaff
step
>>击败|cRXP_ENEMY_Pandriarch Bramblestaff|r
.goto 371,54.08,38.46
.complete 29920,2 
.skipgossip 56209,1
.mob Pandriarch Bramblestaff
step
#completewith next
.gossipoption 40637 >>Talk to |cRXP_FRIENDLY_Pandriarch Goldendraft|r
.target Pandriarch Goldendraft
step
>>击败|cRXP_ENEMY_Pandriarch Goldendraft|r
.goto 371,53.59,36.74
.complete 29920,3 
.mob Pandriarch Goldendraft
step
#completewith next
.gossipoption 40541 >>Talk to |cRXP_FRIENDLY_Pandriarch Windfur|r
.target Pandriarch Windfur
step
>>击败|cRXP_ENEMY_Pandriarch Windfur|r
.goto 371,52.54,35.57
.complete 29920,1 
.skipgossip 56206,1
.mob Pandriarch Windfur
step
.goto 371,52.59,38.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lo Wanderbrew|r
.turnin 29920 >>Turn in Getting Permission
.target Lo Wanderbrew
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r and |cRXP_FRIENDLY_Foreman Mann|r
.turnin 29925 >>Turn in All We Can Spare
.goto 371,50.91,27.07
.target +Lorewalker Cho
.accept 29928 >>接任务: |cRXP_WARN_疯狂的石头|r
.goto 371,50.94,27.02
.target +Foreman Mann
step
.goto 371,48.17,29.96,30,0
.goto 371,48.29,32.51,35,0
.goto 371,48.31,31.03
>>杀死|cRXP_ENEMY_Puckish精灵|r。拿起|cRX_Pick_Chunks of Jade |r
.complete 29928,1 
.mob Puckfish Sprite
step
.goto 371,50.94,27.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
.turnin 29928 >>Turn in I Have No Jade And I Must Scream
.accept 29926 >>接任务: |cRXP_WARN_玉石灾星|r
.accept 29927 >>接任务: |cRXP_WARN_孟的丈夫|r
.target Foreman Mann
step
#completewith next
#title Enter Cave
.goto 372,75.17,23.51,10 >>|cRXP_WARN_进入洞穴|r
step
>>|cRXP_WARN_Follow the arrow|r
.goto 372,67.27,24.92
.complete 29927,1 
step
.goto 372,60.90,36.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hao Mann|r
.turnin 29927 >>Turn in Mann's Man
.accept 29929 >>接任务: |cRXP_WARN_被困住了！|r
.target Hao Mann
step
#completewith CalamityJade
#hidewindow
#loop
.goto 373,39.70,20.15,30,0
.goto 373,34.53,75.24,22,0
.goto 373,44.62,80.91,25,0
.goto 373,67.94,37.16,25,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Greenstone Nibbler|r和|cRXX_ENEMY_Green stone Gorger|r
.complete 29926,1 
.mob +Greenstone Nibbler
.complete 29926,2 
.mob +Greenstone Gorger
step
>>单击|cRXP_FRIENDLY_Greenstone Miners|r
.goto 373,36.71,38.18
.complete 29929,1 
.target Greenstone Miner
step
#label CalamityJade
>>杀死|cRXP_ENEMY_Greenstone Nibbler|r和|cRXX_ENEMY_Green stone Gorger|r
.complete 29926,1 
.mob +Greenstone Nibbler
.complete 29926,2 
.mob +Greenstone Gorger
step
#completewith next
#title Leave Cave
.goto 373,53.68,57.27,8,0
.goto 372,43.09,31.86,8,0
.goto 372,52.42,41.97,8,0
.goto 372,77.58,25.03,10 >>|cRXP_WARN_回去离开洞穴|r
step
.goto 371,46.29,29.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hao Mann|r
.turnin 29929 >>Turn in Trapped!
.accept 29930 >>接任务: |cRXP_WARN_全归你了|r
.target Hao Mann
step
#completewith next
.vehicle 56508 >>进入|cRXP_FRIENDLY_Jade Cart|r
.goto 371,46.27,29.47
.timer 52,Cart Duration
.target Jade Cart
step
>>杀死进攻方|cRXP_ENEMY_Brittle Greenstone Gorger|r
*|cRXP_WARN_Be careful not to attack |cRXP_ENEMY_Hutia|r|r
.goto 371,51.21,26.72
.complete 29930,1 
.timer 40,Hao Mann Roleplay
.mob Brittle Greenstone Gorger
step
.goto 371,50.94,27.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Mann|r
.turnin 29926 >>Turn in Calamity Jade
.turnin 29930 >>Turn in What's Mined Is Yours
.accept 29931 >>接任务: |cRXP_WARN_神龙之心|r
.target Foreman Mann
step
.goto 371,48.31,61.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Raike|r
.turnin 29931 >>Turn in The Serpent's Heart
.accept 30495 >>接任务: |cRXP_WARN_爱的劳动|r
.target Foreman Raike
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitemaster Shoku|r
.goto 371,48.18,60.02
.complete 30495,3 
.skipgossip 59392,2
.target Kitemaster Shoku
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taskmaster Emi|r |cRXP_WARN_at the top of the statue|r
.goto 371,47.58,60.67
.complete 30495,4 
.skipgossip 59397,1
.target Taskmaster Emi
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Surveyor Sawa|r
.goto 371,46.94,60.35
.complete 30495,2 
.skipgossip 59401,1
.target Surveyor Sawa
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Dinh|r
.goto 371,46.37,61.81
.complete 30495,1 
.skipgossip 59395,1
.target Historian Dinh
step
.goto 371,48.31,61.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Raike|r
.turnin 30495 >>Turn in Love's Labor
.accept 29932 >>接任务: |cRXP_WARN_青龙寺|r
.target Foreman Raike
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Wind-Yi|r
.goto 371,55.85,57.08
.complete 29932,1 
.skipgossip 57242,1
.target Elder Sage Wind-Yi
step
.goto 371,58.13,58.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Rain-Zhu|r
.turnin 29932 >>Turn in The Temple of the Jade Serpent
.accept 29997 >>接任务: |cRXP_WARN_占卜师的困境|r
.accept 29998 >>接任务: |cRXP_WARN_藏书人的困境|r
.target Elder Sage Rain-Zhu
step
.goto 371,58.03,59.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
.accept 29999 >>接任务: |cRXP_WARN_骑士的羁绊|r
.accept 30005 >>接任务: |cRXP_WARN_点亮天空|r
.target Fei
step
#completewith LibrariansQuandary
>>单击|cRXP_PICK_Firework启动器|r
.complete 30005,1 
step
>>单击|cRXP_FRIENDLY_Playful深红蛇|r
.goto 371,58.17,61.38
.complete 29999,2 
.target Playful Crimson Serpent
step
#label LibrariansQuandary
.goto 371,56.27,60.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
.turnin 29998 >>Turn in The Librarian's Quandary
.accept 30001 >>接任务: |cRXP_WARN_飞蛾满屋|r
.accept 30002 >>接任务: |cRXP_WARN_历史书页|r
.target Lorewalker Stonestep
step
#completewith next
>>杀死|cRXP_ENEMY_斑点蛾|r
.complete 30001,1 
.mob Dappled Moth
step
>>单击|cRXP_FRIENDLY_Playful Gold Serpent|r
.goto 371,56.00,60.34
.complete 29999,4 
.target Playful Gold Serpent
step
#completewith next
>>杀死|cRXP_ENEMY_斑点蛾|r
.complete 30001,1 
.mob Dappled Moth
step
.goto 371,56.00,60.34
>>单击|cRXP_PICK_Infested Books|r
>>单击|cRXP_ENEMY_Bookworms|r以杀死它们
.complete 30002,1 
.mob Bookworm
step
.goto 371,56.00,60.34
>>杀死|cRXP_ENEMY_斑点蛾|r
.complete 30001,1 
.mob Dappled Moth
step
.goto 371,56.26,60.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Stonestep|r
.turnin 30001 >>Turn in Moth-Ridden
.turnin 30002 >>Turn in Pages of History
.accept 30004 >>接任务: |cRXP_WARN_完好如初|r
.target Lorewalker Stonestep
step
#completewith PlayfulEmeraldSerpent
#title Leave Library
#label LeaveLibrary
.goto 371,57.45,60.99,10 >>|cRXP_WARN_Leave the library|r
step
#requires LeaveLibrary
#completewith EnterFountain
>>单击|cRXP_PICK_Firework启动器|r
.complete 30005,1 
step
#label PlayfulEmeraldSerpent
>>单击|cRXP_FRIENDLY_Playful Emerald Serpent|r
.goto 371,56.54,58.40
.complete 29999,3 
.target Playful Emerald Serpent
step
#completewith next
#title Enter building
#label EnterFountain
.goto 371,56.82,57.09,12,0
.goto 371,56.43,56.46,12,0
.goto 371,56.67,55.76,12 >>|cRXP_WARN_进入永恒者之泉|r
step
>>杀死|cRXP_ENEMY_Water Fiends|r。为|T135139:0|t[Sryer's Staff]掠夺它们
.goto 371,57.09,55.79
.complete 29997,1 
.mob Water Fiend
step
.goto 371,57.57,56.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wise Mari|r
.turnin 29997 >>Turn in The Scryer's Dilemma
.accept 30011 >>接任务: |cRXP_WARN_新的视界|r
.target Wise Mari
step
#completewith next
>>单击|cRXP_PICK_Firework启动器|r
.complete 30005,1 
step
>>单击|cRXP_FRIENDLY_Playful Azure Serpent|r
.goto 371,59.16,56.78
.complete 29999,1 
.target Playful Azure Serpent
step
#loop
.goto 371,58.10,57.36,20,0
.goto 371,57.46,59.97,20,0
.goto 371,57.87,61.19,25,0
.goto 371,56.60,58.04,25,0
.goto 371,58.82,56.60,25,0
.goto 371,58.10,57.36,0
.goto 371,57.46,59.97,0
.goto 371,57.87,61.19,0
.goto 371,56.60,58.04,0
.goto 371,58.82,56.60,0
>>单击|cRXP_PICK_Firework启动器|r
.complete 30005,1 
step
.goto 371,58.14,58.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Rain-Zhu|r
.turnin 30004 >>Turn in Everything In Its Place
.turnin 30011 >>Turn in A New Vision
.target Elder Sage Rain-Zhu
step
.goto 371,58.03,59.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
.turnin 29999 >>Turn in The Rider's Bind
.turnin 30005 >>Turn in Lighting Up the Sky
.accept 30000 >>接任务: |cRXP_WARN_青龙|r
.target Fei
step
.goto 371,52.15,58.12
>>|cRXP_WARN_在任务停机期间，根据您当前的需求，专注于以下活动，最大限度地提高效率：|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
.complete 30000,1 
step
.goto 371,55.84,57.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Wind-Yi|r
.turnin 30000 >>Turn in The Jade Serpent
.accept 30498 >>接任务: |cRXP_WARN_快回来！|r <<Alliance
.accept 30499 >>接任务: |cRXP_WARN_快回来！|r <<Horde
.target Elder Sage Wind-Yi
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 7） 主战役玉林中立2
#internal
step
>>使用|T133305:0|t[Cho Family Heirloom]
.goto 371,44.50,66.94
.use 80071
.complete 30485,1 
step
.convertquest 31303,31362 <<Horde
.goto 371,44.78,67.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 30485 >>交任务: |cRXP_FRIENDLY_最后一块拼图|r
.accept 31303 >>接任务: |cRXP_WARN_破损的封印|r
.target Lorewalker Cho
step
#completewith next
.goto 371,44.77,67.04
.vehicle 64249 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米什基|r
.skipgossip 64244,1
.target Mishi
step
>>在|cRXP_PICK_Sha裂缝上使用|T135821:0|t[射炮]（1）|r
.goto 371,46.88,58.29
.complete 31303,1 
step
.goto 371,49.30,61.47
.convertquest 30504,31319 <<Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31303 >>Turn in The Seal is Broken
.accept 30500 >>接任务: |cRXP_WARN_残存的影响|r
.accept 30502 >>接任务: |cRXP_WARN_灵玉之心|r
.accept 30504 >>接任务: |cRXP_WARN_紧急救援|r
.target Lorewalker Cho
step
#completewith EmergencyResponse
>>拿起|cRXP_Pick_天玉|r。在|cRXP_FRIENDLY_Sha Remnants|r上使用它们来削弱它们
>>杀死|cRXP_FRIENDLY_Sha残余物|r
.collect 80074,6,30502,0x1,-1
.disablecheckbox
.complete 30502,1 
.use 80074
.mob Sha Remnant
step
#completewith EmergencyResponse
>>杀死|cRXP_FRIENDLY_Sha回声|r
.complete 30500,1 
.mob Sha Echo
step << Horde
#title Go upstaris
>>|cRXP_WARN_在|cRXP_FRIENDLY_General Nazrim|r|cRXP-WARN_upstairs上使用|r|T620828:0|t[Cho's Fireworks]|r
.goto 371,48.13,61.77
.use 86467
.complete 30504,1 
.target General Nazgrim
step << Horde
>>|cRXP_WARN_在|cRXP_FRIENDLY_Shademaster Kiryn上使用|r|T620828:0|t[Cho's Fireworks]|r
.goto 371,47.24,62.54
.use 86467
.complete 30504,2 
.target Shademaster Kiryn
step << Horde
>>|cRXP_WARN_在|cRXP_FRIENDLY_Shokia上使用|r|T620828:0|t[Cho's Fireworks]|r
.goto 371,46.87,60.70
.use 86467
.complete 30504,3 
.target Shokia
step << Alliance
>>|cRXP_WARN_在|cRXP_FRIENDLY_Admiral Taylor上使用|r|T620828:0|t[Cho's Fireworks]|r
.goto 371,48.13,61.77
.use 86511
.complete 30504,1 
.target Admiral Taylor
step << Alliance
>>|cRXP_WARN_在|cRXP_FRIENDLY_Mishka上使用|r|T620828:0|t[Cho's Fireworks]|r
.goto 371,46.37,61.67
.use 86511
.complete 30504,2 
.target Mishka
step << Alliance
#label EmergencyResponse
>>|cRXP_WARN_在|cRXP_FRIENDLY_Sully上使用|r|T620828:0|t[Cho's Fireworks]|r
.goto 371,47.53,59.2
.use 86511
.complete 30504,3 
.target Sully
step << Horde
#label EmergencyResponse
>>|cRXP_WARN_Use|r|T620828:0|t[赵的烟花]
.goto 371,48.02,59.08
.use 86467
.complete 30504,4 
step
#completewith next
>>杀死|cRXP_FRIENDLY_Sha回声|r
.complete 30500,1 
.mob Sha Echo
step
#loop
.goto 371,49.36,58.31,40,0
.goto 371,48.06,62.74,40,0
.goto 371,46.08,63.17,40,0
.goto 371,46.63,57.54,40,0
>>拿起|cRXP_Pick_天玉|r。在|cRXP_FRIENDLY_Sha Remnants|r上使用它们来削弱它们
>>杀死|cRXP_FRIENDLY_Sha残余物|r
.collect 80074,6,30502,0x1,-1
.disablecheckbox
.complete 30502,1 
.use 80074
.mob Sha Remnant
step
#loop
.goto 371,48.99,60.95,30,0
.goto 371,47.42,62.41,30,0
.goto 371,45.98,60.57,30,0
.goto 371,47.65,58.58,30,0
>>杀死|cRXP_FRIENDLY_Sha回声|r
.complete 30500,1 
.mob Sha Echo
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 30500 >>Turn in Residual Fallout
.turnin 30502 >>Turn in Jaded Heart
.turnin 30504 >>Turn in Emergency Response
.goto 371,49.30,61.47
.target +Lorewalker Cho
step
.goto 371,49.31,61.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fei|r
.accept 30648 >>接任务: |cRXP_WARN_勇往直前|r
.target Fei
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 1) Monk Quests
#internal

step
.isQuestAvailable 31834
.zoneskip 379
.cast 126892 >>Use Zen Pilgrimage
step
.goto 379,48.60,42.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.accept 31834 >>接任务: |cRXP_WARN_开始训练：程大师|r
.target Master Hight
step
#completewith next
.goto 379,48.12,43.3,10 >>Leave the Temple
step
.isOnQuest 31834
.goto 379,47.06,40.15
.gossipoption 41015 >>Talk to |cRXP_FRIENDLY_Master Cheng|r
.timer 29,RP
.target Master Cheng
step
.isOnQuest 31834
>>|cRXP_WARN_按箭头|r当|cRXP_FRIENDLY_Master Cheng|r停止移动时，将其重新定位为鞠躬，然后在决斗中击败他。
.emote BOW,66138
.goto 379,48.12,40.35
.complete 31834,1 
.target Master Cheng
.mob Master Cheng
step
#completewith next
.goto 379,48.25,43.34,10 >>Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31834 >>Turn in Begin Your Training: Master Cheng
.accept 31835 >>接任务: |cRXP_WARN_继续训练：吉斯坦大师|r
.accept 31840 >>接任务: |cRXP_WARN_熟能生巧：程大师|r
.target Master Hight
step
#completewith next
.goto 379,48.12,43.3,10 >>Leave the Temple
step
.isOnQuest 31840
.goto 379,47.06,40.15
.gossipoption 41015 >>Talk to |cRXP_FRIENDLY_Master Cheng|r
.timer 30,RP
.target Master Cheng
step
.isOnQuest 31835
.goto 379,48.05,39.02
.gossipoption 40841 >>Talk to |cRXP_FRIENDLY_Master Kistane|r
.timer 30,RP
.target Master Kistane
step
>>|cRXP_WARN_按箭头|r当|cRXP_FRIENDLY_Master Cheng|r和|cRXP_FRIENDLY_Master Kistane|r停止移动时，将他们重新定目标鞠躬，然后在决斗中击败他。
.emote BOW,66138
.emote BOW,65899
.goto 379,48.11,40.31
.complete 31840,1 
.complete 31835,1 
.target Master Cheng
.mob Master Cheng
.target Master Kistane
.mob Master Kistane
step
#completewith next
.goto 379,48.25,43.34,10 >>Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31835 >>Turn in Continue Your Training: Master Kistane
.turnin -31840 >>Turn in Practice Makes Perfect: Master Cheng
.accept 31836 >>接任务: |cRXP_WARN_继续训练：尹大师|r
.target Master Hight
step
#completewith next
.goto 379,49.17,42.86,10 >>Leave the Temple
step
.isOnQuest 31836
#loop
.goto 379,48.96,40.88,10,0
.goto 379,48.95,40.48,10,0
.goto 379,48.74,40.65,10,0
.goto 379,48.55,40.71,10,0
.gossipoption 40843 >>Talk to |cRXP_FRIENDLY_Master Yoon|r
.timer 30,RP
.target Master Yoon
step
#loop
.goto 379,48.95,40.48,10,0
.goto 379,48.74,40.65,10,0
.goto 379,48.55,40.71,10,0
>>|cRXP_WARN_按箭头|r当|cRXP_FRIENDLY_Master Yoon|r停止移动时，将其重新定位为鞠躬，然后在决斗中击败他。
.emote BOW,66073
.complete 31836,1 
.target Master Yoon
step
#completewith next
.goto 379,48.25,43.34,10 >>Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31836 >>Turn in Continue Your Training: Master Yoon
.accept 31837 >>接任务: |cRXP_WARN_继续训练：程大师|r
.target Master Hight
step
#completewith next
.goto 379,48.25,43.34,10 >>Enter the Temple
step
.isOnQuest 31837
.goto 379,48.53,41.49
.gossipoption 40975 >>Talk to |cRXP_FRIENDLY_Master Cheng|r
.timer 30,RP
.target Master Cheng
step
>>|cRXP_WARN_按箭头|r当|cRXP_FRIENDLY_Master Cheng|r停止移动时，将其重新定位为鞠躬，然后在决斗中击败他。
.emote BOW,66180
.goto 379,48.10,40.31
.complete 31837,1 
.target Master Cheng
step
#completewith next
.goto 379,48.25,43.34,10 >>Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31837 >>Turn in Continue Your Training: Master Cheng
.accept 31838 >>接任务: |cRXP_WARN_继续训练：曾大师|r
.target Master Hight
step
#completewith next
.goto 379,48.12,43.3,10 >>Leave the Temple
step
.isOnQuest 31838
.goto 379,48.07,41.37
.gossipoption 41014 >>Talk to |cRXP_FRIENDLY_Master Tsang|r
.timer 30,RP
.target Master Tsang
step
>>|cRXP_WARN_按箭头|r当|cRXP_FRIENDLY_Master Tsang |r停止移动时，将其重新定位为鞠躬，然后在决斗中击败他。
*Use |T606542:0|tCrackling Jade Lightning on the Monk Trainees around you on the Balance Poles, then deafeat Master Tsang
.emote BOW,66149
.goto 379,48.12,40.37
.complete 31838,1 
.target Master Tsang
step
#completewith next
.goto 379,48.25,43.34,10 >>Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31838 >>Turn in Continue Your Training: Master Tsang
.accept 31839 >>接任务: |cRXP_WARN_继续训练：许大师|r
.target Master Hight
step
#completewith next
.goto 379,48.12,43.3,10 >>Leave the Temple
step
.isOnQuest 31839
.goto 379,47.49,40.93
.gossipoption 40709 >>Talk to |cRXP_FRIENDLY_Master Hsu|r
.timer 30,RP
.target Master Hsu
step
>>|cRXP_WARN_按箭头|r当|cRXP_FRIENDLY_MasterHsu|r停止移动时，将其重新定位为鞠躬，然后在决斗中击败他。
.emote BOW,65977
.goto 379,48.11,40.36
.complete 31839,1 
.target Master Hsu
step
#completewith next
.goto 379,48.25,43.34,10 >>Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31839 >>Turn in Continue Your Training: Master Hsu
.accept 31944 >>接任务: |cRXP_WARN_完成训练：终极试炼|r
.target Master Hight
step
#completewith next
.goto 379,48.12,43.3,10 >>Leave the Temple
step
.isOnQuest 31944
.goto 379,48.32,41.52
.gossipoption 41235 >>Talk to |cRXP_FRIENDLY_Master Hight|r
.timer 30,RP
.target Master Hight
step
>>|cRXP_WARN_按箭头|r当|cRXP_FRIENDLY_Master Hight|r停止移动时，将其重定向到弓上，然后在决斗中击败他。
.emote BOW,66732
.goto 379,48.15,40.46
.complete 31944,1 
.target Master Hight
step
#completewith next
.goto 379,48.25,43.34,10 >>Enter the Temple
step
.goto 379,48.59,42.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Hight|r
.turnin 31944 >>Turn in Complete Your Training: The Final Test
.target Master Hight
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 1) Dragonriding
#internal
step << Alliance
.goto 371,45.8,84.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
.target Moratari
.accept 80012 >>接任务: |cRXP_WARN_驭龙术|r
step << Alliance
.goto 371,45.81,84.7
>>单击|cRXP_PICK_Portal|r
.complete 80012,1 
.complete 80012,3 
.disablecheckbox
step << Alliance
.goto 371,65.25,37.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_MoratariLord Andestrasz|r

.complete 80012,4 
.target Lord Andestrasz
step << Horde
.goto 371,45.79,84.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
.target Moratari
.accept 80012 >>接任务: |cRXP_WARN_驭龙术|r
step << Horde
.goto 371,45.84,84.73
>>单击|cRXP_PICK_Portal|r
.complete 80012,1 
.complete 80012,3 
.disablecheckbox
step << Horde
.goto 371,65.25,37.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r

.complete 80012,4 
.target Lord Andestrasz
step
.goto 371,65.28,37.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.turnin 80012 >>Turn in Dragonriding
.target Lord Andestrasz
.accept 80013 >>接任务: |cRXP_WARN_驭滑翔术|r
step
#completewith How to Glide with Your Dragon
.goto 371,65.25,37.20,30,0
.cast 437035 >>使用|T134376:0|t[青铜计时器]传送到龙骑任务。
.itemcount 216712,1
.use 216712
step
#completewith How to Glide with Your Dragon
>>使用你的龙之山。
.complete 80013,1 
step
#label How to Glide with Your Dragon
.goto 371,65.37,37.27
>>|cRXP_WARN_Follow the Arrow|r
.complete 80013,2,1 
step
.goto 371,66.55,37.05
>>|cRXP_WARN_Follow the Arrow|r
.complete 80013,2,2 
step
.goto 371,67.45,36.12
>>|cRXP_WARN_Follow the Arrow|r
.complete 80013,2,3 
step
.goto 371,67.57,34.72
>>|cRXP_WARN_Follow the Arrow|r
.complete 80013,2,4 
step
.goto 371,67.32,33.95
>>|cRXP_WARN_Follow the Arrow|r
.complete 80013,2,5 
step
.goto 371,66.8,33.41
>>|cRXP_WARN_Follow the Arrow|r
.complete 80013,3 
step
.goto 371,66.75,33.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
.turnin 80013 >>Turn in How to Glide with Your Dragon
.timer 2,RP
.target Celormu
step
.goto 371,65.28,37.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 80015 >>接任务: |cRXP_WARN_驭龙俯冲术|r
.target Lord Andestrasz
step
#completewith How to Dive with Your Dragon
>>使用你的龙之山。
.complete 80015,1 
step
#label How to Dive with Your Dragon
.goto 371,65.37,37.27
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,1 
step
.goto 371,66.59,37.19
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,2 
step
.goto 371,67.92,37.28
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,3 
step
.goto 371,68.9,38.16
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,4 
step
.goto 371,69.72,39.82
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,5 
step
.goto 371,69.93,44.03
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,6 
step
.goto 371,68.09,46.82
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,2,7 
step
.goto 371,66.33,49.38
>>|cRXP_WARN_Follow the Arrow|r
.complete 80015,3 
step
.goto 371,66.26,49.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
.turnin 80015 >>Turn in How to Dive with Your Dragon
.timer 2,RP
.target Celormu
step
.goto 371,65.28,37.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 80016 >>接任务: |cRXP_WARN_极品飞龙|r
.target Lord Andestrasz
step
.goto 371,65.35,37.27
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,2,1 
step
.goto 371,66.35,37.22
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,2,2 
step
.goto 371,68.31,36.03
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,2,3 
step
.goto 371,68.62,32.48
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,2,4 
step
.goto 371,67.29,27.3
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,2,5 
step
.goto 371,65.89,25.58
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,2,6 
step
.goto 371,65.03,24.33
>>|cRXP_WARN_Follow the Arrow|r
.complete 80016,3 
step
.goto 371,64.99,24.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
.turnin 80016 >>Turn in The Need For Higher Velocities
.timer 2,RP
.target Celormu
step
.goto 371,65.28,37.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 80017 >>接任务: |cRXP_WARN_极品腾龙|r
.target Lord Andestrasz
step
#completewith next
>>使用你的龙之山。
.complete 80017,1 
step
.goto 371,65.35,37.18
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,2,1 
step
.goto 371,66.27,37.05
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,2,2 
step
.goto 371,67.83,35.58
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,2,3 
step
.goto 371,68.76,33.22
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,2,4 
step
.goto 371,68.17,29.85
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,2,5 
step
.goto 371,65.26,29.44
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,2,6 
step
.goto 371,62.6,28.68
>>|cRXP_WARN_Follow the Arrow|r
.complete 80017,3 
step
.goto 371,62.46,28.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celormu|r
.turnin 80017 >>Turn in The Need For Higher Altitudes
.timer 2,RP
.target Celormu
step
.goto 371,65.28,37.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 80018 >>接任务: |cRXP_WARN_飞出时髦|r
.target Lord Andestrasz
step
.goto 371,65.05,37.00
>>单击|cRXP_PICK_Rostrum of Transformation |r，然后按|cRXP_WARN_escape关闭窗口|r
.complete 80018,1 
step
.goto 371,65.28,37.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r
.turnin 80018 >>Turn in Fashionable Flying
.accept 80349 >>接任务: |cRXP_WARN_回程时间|r
.target Lord Andestrasz
step << Horde
#completewith next
.cast 421177 >>单击|cRXP_PICK_蜜露村门户|r
.goto 371,65.20,37.45
step << Horde
.goto 371,28.52,14.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
.turnin 80349 >>Turn in Time to Return
.target Moratari
step << Alliance
#completewith next
.goto 371,65.21,37.46,5,0
.goto 371,45.8,84.6,40 >>单击|cRXP_PICK_Portal|r返回。
step << Alliance
.goto 371,45.78,84.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
.turnin 80349 >>Turn in Time to Return
.target Moratari
step << Horde
.goto 371,45.79,84.7
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r
.turnin 80349 >>Turn in Time to Return
.target Moratari
step << Alliance
#completewith next
.goto 371,65.11,37.32,30 >>单击|cRXP_PICK_Portal|r
step
#completewith next
.goto 371,65.27,37.18
.gossipoption 121340 >>Talk to |cRXP_FRIENDLY_Lord Andestrasz|r
.accept 80013 >>接任务: |cRXP_WARN_驭滑翔术|r
.target Lord Andestrasz
step
.goto 371,65.21,37.46,5,0
.goto 371,45.8,84.6,40 >>|cRXP_WARN_我们将继续这项任务的传送物品。|r
*单击|cRXP_PICK_Portal|r返回。
.itemcount 216712,1
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 4） 四风谷1
#displayname Chapter 2 - Valley of the Four Winds Pt. 1
#title Valley of the Four Winds 1
#next 5) Krasarang Wilds 1

step
.goto 376,85.94,22.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.accept 29907 >>接任务: |cRXP_WARN_陈和丽丽|r
.timer 15,Roleplay Duration
.target Chen Stormstout
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nan Thunderfoot|r
.goto 376,83.76,20.20
.home >>将您的炉石设置为Thunderfoot Inn
.target Nan Thunderfoot
step
>>Wait for the roleplay
.goto 376,83.70,21.02
.complete 29907,1 
step
.goto 376,83.70,21.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pang Thunderfoot|r
.turnin 29907 >>Turn in Chen and Li Li
.target Pang Thunderfoot
.accept 29908 >>接任务: |cRXP_WARN_剪不断理还乱|r
step
.goto 376,82.70,21.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muno the Farmhand|r
.accept 29877 >>接任务: |cRXP_WARN_缺乏常识|r
.target Muno the Farmhand
step
#completewith BuriedFarmEquipment
#hidewindow
#loop
.goto 376,82.017,18.318,25,0
.goto 376,78.302,23.206,25,0
.goto 376,79.416,26.042,25,0
.goto 376,82.792,23.050,25,0
.goto 376,84.614,13.816,25,0
.goto 376,82.017,18.318,0
.goto 376,78.302,23.206,0
.goto 376,79.416,26.042,0
.goto 376,82.792,23.050,0
.goto 376,84.614,13.816,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_病毒感染者|r和|cRXX_ENEMY_Large病毒|r
.complete 29908,2 
.complete 29908,1 
.mob Virmen Pesterling
.mob Snagtooth Virmen
.mob Snagtooth Tool-Grabber
.mob Snagtooth Troublemaker
step
>>|cRXP_WARN_单击|r|cRXP_PICK_Rake树|r
.complete 29877,1 
step
#label BuriedFarmEquipment
>>杀死|cRXP_ENEMY_病毒感染者|r和|cRXX_ENEMY_Large病毒|r
.complete 29908,2 
.complete 29908,1 
.mob Virmen Pesterling
.mob Snagtooth Virmen
.mob Snagtooth Tool-Grabber
.mob Snagtooth Troublemaker
step
.goto 376,82.70,21.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muno the Farmhand|r
.turnin 29877 >>Turn in A Poor Grasp of the Basics
.target Muno the Farmhand
step
.goto 376,83.69,21.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pang Thunderfoot|r
.turnin 29908 >>Turn in A Seemingly Endless Nuisance
.target Pang Thunderfoot
.accept 29909 >>接任务: |cRXP_WARN_低产的芜菁|r
step
.goto 376,81.60,25.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ang Thunderfoot|r
.turnin 29909 >>Turn in Low Turnip Turnout
.accept 29940 >>接任务: |cRXP_WARN_夺回作物|r
.target Ang Thunderfoot
step
#loop
.goto 376,81.877,25.752,8,0
.goto 376,81.925,26.512,8,0
.goto 376,82.399,26.466,8,0
.goto 376,82.585,26.275,8,0
.goto 376,82.676,25.538,8,0
.goto 376,82.190,25.828,8,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ana Thunderfoot|r
.accept 29910 >>接任务: |cRXP_WARN_鼠辈泛滥|r
.target Ana Thunderfoot
step
#completewith next
>>|cRXP_WARN_单击|r|cRXP_ENEMY_Plump Marmots|r
.complete 29910,1 
.mob Plump Marmot
step
>>单击|cRXP_FRIENDLY_Marmot Hole|r。|cRXP_WARN_|cRXP _ENEMY_Plump Marmots|r可以中断您的投射|r
.goto 376,82.364,25.759
.complete 29910,2 
step
>>|cRXP_WARN_单击|r|cRXP_FRIENDLY_Pumpt Marmots|r
.goto 376,82.364,25.759
.complete 29910,1 
.mob Plump Marmot
step
#completewith next
#title Enter Cave
.goto 376,86.478,28.052,8 >>|cRXP_WARN_进入洞穴|r
step
>>|cRXP_WARN_捡起|r|cRXP_Pick_被盗的萝卜|r
.goto 376,85.19,27.17
.complete 29940,1 
stepw
#completewith next
#title Leave Cave
.goto 376,86.478,28.052,8 >>|cRXP_WARN_离开洞穴|r
step
>>|cRXP_WARN_捡起|r|cRXP_Pick_偷来的西瓜|r
.goto 376,85.301,32.329
.complete 29940,2 
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 11) Landfall
#displayname Chapter 2 - Landfall Intro
#title Landfall
#next 5) Krasarang Wilds 1
#internal
step
.isOnQuest 29940
.goto 418,76.65,5.18 >>|cRXP_WARN_Follow the Arrow|r
step
#completewith Meet the Scout
.cast 441154 >>使用|T134491:0|t[Nostwin's Voucher]传送到无限集市。
.use 217930
.itemcount 217930,1
step << Alliance
.isQuestComplete 80446
.goto 393,75.04,45.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arturos|r
.turnin 80446 >>交任务: |cRXP_FRIENDLY_寻求组队|r
.target Arturos
step << Alliance
.isQuestComplete 80447
.goto 393,76.55,48.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
.turnin 80447 >>交任务: |cRXP_FRIENDLY_寻求团队|r
.target Pythagorus






step << Alliance
#completewith Meet the Scout
.goto 393,67.15,43.64,10,0
.vendor >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy additional gems |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
.skipgossip
.target Lidamorrutu
step << Alliance
.isQuestComplete 80448
.goto 393,64.6,42.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah Treebender|r
.turnin 80448 >>交任务: |cRXP_FRIENDLY_新鲜场景|r
.target Larah Treebender
step << Alliance
#label Meet the Scout
.goto 390,84.00,58.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
.accept 32246 >>接任务: |cRXP_WARN_寻找斥候|r
.target Lyalia
step << Horde
.isQuestComplete 80447
.goto 391,21.13,40.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
.turnin 80447 >>交任务: |cRXP_FRIENDLY_寻求团队|r
.target Pythagorus
step << Horde
.isQuestComplete 80446
.goto 391,28.56,30.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arturos|r
.turnin 80446 >>Accept Looking for Group
.target Arturos
step << Horde
#completewith Meet the Scout
.goto 391,30.05,40.79,10,0
.vendor >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy additional gems |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
.skipgossip
.target Lidamorrutu
step << Horde
.isQuestComplete 80448
.goto 391,32.98,54.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah Treebender|r
.turnin 80448 >>Accept A Fresh Scene
.target Larah Treebender






step << Horde
#completewith Meet the Scout
.goto 390,59.14,17.93,10 >>Leave the building
step << Horde
#label Meet the Scout
.goto 390,62.8,28.0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
.accept 32249 >>接任务: |cRXP_WARN_寻找斥候|r
.target Sunwalker Dezco
step
#completewith next
.aura -449510
.cast 449508 >>使用|T134488:0|t[Nostwin's Return Service]返回克拉萨朗荒野。
.use 449508
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 5) Krasarang Wilds 1
#displayname Chapter 3 - Krasarang Wilds Pt. 1
#title Krasarang Wilds 1
#next 6） 四风之谷2

step
.goto 418,76.22,7.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
.accept 30079 >>接任务: |cRXP_WARN_朱家堡之殇|r
.target Ken-Ken
step
.goto 418,75.84,7.59
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
.complete 30079,4 
.accept 30080 >>接任务: |cRXP_WARN_找到易默|r
.target Mei Barrelbottom
step
.goto 418,75.48,9.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yun|r |cRXP_WARN_inside the hut.|r
.complete 30079,3 
.target Yun
step
.goto 418,76.69,8.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Despondent Warden of Zhu|r
.complete 30079,1 
.skipgossip
.target Despondent Warden of Zhu
step
.goto 418,77.48,8.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunni|r
.complete 30079,2 
.skipgossip
.target Sunni
step
.isOnQuest 30079
.goto 418,77.26,8.69,5 >>Leave the hut
step
.goto 418,81.31,6.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yi-Mo Longbrow|r
.complete 30080,1 
.skipgossip
.target Yi-Mo Longbrow
step
.goto 418,81.31,6.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yi-Mo Longbrow|r
.turnin 30080 >>Turn in Finding Yi-Mo
.accept 30082 >>接任务: |cRXP_WARN_振作起来，易默|r
.target Yi-Mo Longbrow
step
.isOnQuest 30082
.goto 418,81.31,6.85
.gossipoption 40648 >>Talk to |cRXP_FRIENDLY_Yi-Mo Longbrow|r
.skipgossip 58376,1
.timer 60,RP
step
.isOnQuest 30082
.goto 418,81.31,6.83
.cast 108175 >>与|cRXP_FRIENDLY_Yi-Mo Longbrow交互|r|cRXP_WARN_（1）|r
step
.isOnQuest 30082
.goto 418,80.98,6.88
.cast 108175 >>与|cRXP_FRIENDLY_Yi-Mo Longbrow交互|r|cRXP_WARN_（2）|r
step
.isOnQuest 30082
.goto 418,80.65,6.95
.cast 108175 >>与|cRXP_FRIENDLY_Yi-Mo Longbrow交互|r|cRXP_WARN_（3）|r
step
.isOnQuest 30082
.goto 418,80.33,7
.cast 108175 >>与|cRXP_FRIENDLY_Yi-Mo Longbrow交互|r|cRXP_WARN_（4）|r
step
.isOnQuest 30082
.goto 418,80.01,7.08
.cast 108175 >>杀死|cRXP_ENEMY_Thunderbird|r，然后与|cRXP_FRIENDLY_Yi-Mo Longbrow互动|r|cRXP_WARN_（5）|r
.mob Thunderbird
step
.isOnQuest 30082
.goto 418,79.68,7.14
.cast 108175 >>与|cRXP_FRIENDLY_Yi-Mo Longbrow交互|r|cRXP_WARN_（6）|r
step
.isOnQuest 30082
.goto 418,79.35,7.2
.cast 108175 >>杀死|cRXP_ENEMY_Thunderbird|r，然后与|cRXP_FRIENDLY_Yi-Mo Longbrow互动|r|cRXP_WARN_（7）|r
.mob Thunderbird
step
.isOnQuest 30082
.goto 418,79.02,7.28
.cast 108175 >>与|cRXP_FRIENDLY_Yi-Mo Longbrow交互|r|cRXP_WARN_（8）|r
step
.isOnQuest 30082
.goto 418,78.69,7.34
.cast 108175 >>与|cRXP_FRIENDLY_Yi-Mo Longbrow交互|r|cRXP_WARN_（9）|r
step
.isOnQuest 30082
.goto 418,78.37,7.41
.cast 108175 >>与|cRXP_FRIENDLY_Yi-Mo Longbrow交互|r|cRXP_WARN_（10）|r
step
.isOnQuest 30082
.goto 418,78.04,7.49
.cast 108175 >>杀死|cRXP_ENEMY_Thunderbird|r，然后与|cRXP_FRIENDLY_Yi-Mo Longbrow互动|r|cRXP_WARN_（11）|r
.mob Thunderbird
step
.isOnQuest 30082
.goto 418,77.71,7.56
.cast 108175 >>与|cRXP_FRIENDLY_Yi-Mo Longbrow交互|r|cRXP_WARN_（12）|r
step
.isOnQuest 30082
.goto 418,77.38,7.64
.cast 108175 >>杀死|cRXP_ENEMY_Thunderbird|r，然后与|cRXP_FRIENDLY_Yi-Mo Longbrow互动|r|cRXP_WARN_（13）|r
.mob Thunderbird
step
.isOnQuest 30082
.goto 418,77.07,7.73
.cast 108175 >>与|cRXP_FRIENDLY_Yi-Mo Longbrow交互|r|cRXP_WARN_（14）|r
step
.goto 418,75.84,7.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
.turnin 30082 >>Turn in Cheer Up, Yi-Mo
.target Mei Barrelbottom
.accept 30091 >>接任务: |cRXP_WARN_潘达利亚之泪|r
step
.goto 418,76.20,7.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
.turnin 30079 >>Turn in What's Eating Zhu's Watch?
.accept 30081 >>接任务: |cRXP_WARN_对症下药|r
.target Ken-Ken
step
#completewith SaltyCore
#hidewindow
#loop
.goto 418,75.80,11.14,40,0
.goto 418,75.22,11.85,40,0
.goto 418,73.71,11.21,35,0
.goto 418,72.47,12.42,35,0
.goto 418,71.21,10.30,35,0
+1
step
#completewith Chunk of Honeycomb
>>杀死|cRXP_ENEMY_哭泣恐怖|r掠夺它们以获取|cRXP_OOT_Salty Core |r
.complete 30091,1 
.complete 30081,1 
.mob weeping horror
step
#completewith Chunk of Honeycomb
>>单击|cRXP_PICK_Slick Mudfish |r
.complete 30081,2 
step
#label Chunk of Honeycomb
.goto 418,75.80,11.14,0
.goto 418,75.22,11.85,0
.goto 418,73.71,11.21,0
.goto 418,72.47,12.42,0
.goto 418,71.21,10.30,0
>>单击|cRXP_PICK_Rain-Click蜂窝|r
.complete 30081,3 
step
#completewith next
>>杀死|cRXP_ENEMY_哭泣恐怖|r掠夺它们以获取|cRXP_OOT_Salty Core |r
.complete 30091,1 
.complete 30081,1 
.mob weeping horror
step
>>单击|cRXP_PICK_Slick Mudfish |r
.complete 30081,2 
step
#label SaltyCore
>>杀死|cRXP_ENEMY_哭泣恐怖|r掠夺它们以获取|cRXP_OOT_Salty Core |r
.complete 30091,1 
.complete 30081,1 
.mob weeping horror
step
.goto 418,75.84,7.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
.turnin 30091 >>Turn in Tears of Pandaria
.target Mei Barrelbottom
.accept 30083 >>接任务: |cRXP_WARN_保卫朱家界|r
.accept 30084 >>接任务: |cRXP_WARN_边境|r
step
.goto 418,76.22,7.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
.turnin 30081 >>Turn in Materia Medica
.accept 30088 >>接任务: |cRXP_WARN_干嘛这么严肃？|r
.target Ken-Ken
step
#completewith next
>>杀死|cRXP_ENEMY_Wildscale Saurok|r
.complete 30083,1 
.mob Wildscale Herbalist
step
.isOnQuest 30083
.goto 376,77.23,57.34,10 >>Enter the Cave
step
#completewith Leave the Cave
>>杀死|cRXP_ENEMY_Wildscale Saurok|r
.complete 30083,1 
.mob Wildscale Herbalist
step
.isOnQuest 30088
.goto 376,75.02,55.26
.cast 3365 >>点击石碑
step
.goto 376,76.63,56.72,20,0
.goto 376,76.51,55.44,20,0
.goto 376,75.71,56.69,20,0
.goto 376,73.88,56.41
>>单击|cRXP_PICK_Jar of Pigment|r
.complete 30088,2 
step
#label Leave the Cave
#title Leave Cave
.isOnQuest 30088
.goto 376,76.26,55.52,20,0
.goto 376,77.04,57.27,20 >>Leave the Cave
step
#loop
.goto 418,71.27,9.11,20,0
.goto 376,77.34,58.65,20,0
.goto 376,76.67,56.99,20,0
.goto 376,76.55,55.41,20,0
.goto 376,76.04,55.79,20,0
.goto 376,74.15,56.29,20,0
.goto 418,71.27,9.11,0
.goto 376,77.34,58.65,0
.goto 376,76.67,56.99,0
.goto 376,76.55,55.41,0
.goto 376,76.04,55.79,0
.goto 376,74.15,56.29,0
>>杀死|cRXP_ENEMY_Wildscale Saurok|r
.complete 30083,1 
.mob Wildscale Herbalist
step
#completewith Memorial Flame of Po
>>杀死|cRXP_ENEMY_Krasari跟踪者|r为|T134298:0|t[|cRXP_Loot_巨大豹方|r]掠夺它们。
.complete 30088,1 
.mob Krasari Stalker
step
.goto 418,71.27,17.46
>>使用|cRXP_WARN_Memorial附近的|T135432:0|t[Zhu手表的火焰]|r
.complete 30084,3 
.use 78928
step
.goto 418,72.77,18.08
>>使用|cRXP_WARN_Memorial附近的|T135432:0|t[Zhu手表的火焰]|r
.complete 30084,1 
.use 78928
step
#label Memorial Flame of Po
.goto 418,73.87,16.85
>>使用|cRXP_WARN_Memorial附近的|T135432:0|t[Zhu手表的火焰]|r
.complete 30084,2 
.use 78928
step
#loop
.goto 418,74.05,15.35,20,0
.goto 418,74.06,18.86,20,0
.goto 418,70.95,18.69,20,0
.goto 418,70.06,16.99,20,0
.goto 418,74.05,15.35,0
.goto 418,74.06,18.86,0
.goto 418,70.95,18.69,0
.goto 418,70.06,16.99,0
>>杀死|cRXP_ENEMY_Krasari跟踪者|r为|cRXP_Loot_巨大的豹方而掠夺它们|r
.complete 30088,1 
.mob Krasari Stalker
step
.goto 418,75.83,7.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
.turnin 30083 >>Turn in Securing the Province
.target Mei Barrelbottom
.turnin 30084 >>Turn in Borderlands
step
.goto 418,76.21,7.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
.turnin 30088 >>Turn in Why So Serious?
.target Ken-Ken
.accept 30089 >>接任务: |cRXP_WARN_变相怪杰|r
step
#loop
.goto 418,76.51,8.20,20,0
.goto 418,76.39,8.46,20,0
.goto 418,76.69,8.86,20,0
.goto 418,76.83,9.33,20,0
.goto 418,76.13,9.00,20,0
.goto 418,75.95,8.40,20,0
.goto 418,75.94,7.79,20,0
.goto 418,77.29,8.31,20,0
.goto 418,77.47,9.84,20,0
.goto 418,75.44,8.30,20,0
.goto 418,76.51,8.20,0
.goto 418,76.39,8.46,0
.goto 418,76.69,8.86,0
.goto 418,76.83,9.33,0
.goto 418,76.13,9.00,0
.goto 418,75.95,8.40,0
.goto 418,75.94,7.79,0
.goto 418,77.29,8.31,0
.goto 418,77.47,9.84,0
.goto 418,75.44,8.30,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Despondents Wardens of Zhu|r then kill |cRXP_ENEMY_Manifestation of Despair.|r
.complete 30089,1 
.target Despondent Warden of Zhu
.mob Manifestation of Despair
step
.goto 418,76.22,7.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r
.turnin 30089 >>Turn in Apply Directly to the Forehead
.target Ken-Ken
.accept 30090 >>接任务: |cRXP_WARN_朱家堡的绝望|r
step
#loop
.goto 418,75.65,8.73,40,0
.goto 418,77.24,9.52,40,0
.goto 418,77.07,8.21,40,0
.goto 418,75.65,8.73,0
.goto 418,77.24,9.52,0
.goto 418,77.07,8.21,0
>>杀死|cRXP_ENEMY_绝望的本质|r
.complete 30090,1 
.mob essence of despair
step
.goto 418,76.49,8.77
>>与|cRXP_FRIENDLY_Yi-Mo Longbrow交互|r.杀死|cRXP_ENEMY_绝望的精华|r
.complete 30090,2 
.target Yi-Mo Longbrow
.target Quintessence of Despair




























































































































step << Horde
#completewith next
.logout 19 >>Logout to skip RP
step
.goto 418,76.22,7.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken-Ken|r

.turnin 30090 >>Turn in Zhu's Despair
.target Ken-Ken
step
.goto 418,75.85,7.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mei Barrelbottom|r
.accept 30178 >>接任务: |cRXP_WARN_深入荒野|r << Alliance
.accept 30133 >>接任务: |cRXP_WARN_深入荒野|r << Horde
.target Mei Barrelbottom
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 6） 四风之谷2
#displayname Chapter 4 - Valley of the Four Winds Pt. 2
#title Valley of the Four Winds 2
#next 7) Krasarang Wilds 2

step
#completewith next
.cooldown item,6948,>0,1
.hs >>Heath to Thunderfoot Inn
step
#loop
.goto 376,81.877,25.752,8,0
.goto 376,81.925,26.512,8,0
.goto 376,82.399,26.466,8,0
.goto 376,82.585,26.275,8,0
.goto 376,82.676,25.538,8,0
.goto 376,82.190,25.828,8,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ana Thunderfoot|r
.turnin 29910 >>Turn in Rampaging Rodents
.target Ana Thunderfoot
step
.goto 376,81.59,25.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ang Thunderfoot|r
.turnin 29940 >>Turn in Taking a Crop
.target Ang Thunderfoot
.accept 29911 >>接任务: |cRXP_WARN_近乎完美的作物|r
step
.goto 376,83.70,21.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pang Thunderfoot|r
.turnin 29911 >>Turn in Practically Perfect Produce
.target Pang Thunderfoot
.accept 29912 >>接任务: |cRXP_WARN_热心的范妮小姐|r
step
>>拿起|T645346:0|t[|cRXP_Pick_Ang's Giant Pink Turnip|r]，|T645349:0|t[|cRX_Pick_Ang's Summer Watermelon|r]和|T461809:0|t[| cRXP_Pick_Pang's Extra Spicy Toff]
.collect 75259,1,29912,1
.goto 376,84.313,21.945
.collect 75258,1,29912,1
.goto 376,84.152,22.075
.collect 75256,1,29912,1
.goto 376,83.997,22.060









step
.goto 376,82.99,21.42
.gossipoption 40435 >>Talk to |cRXP_FRIENDLY_Miss Fanny|r |cRXP_WARN_1|r
.timer 2,RP
step
.goto 376,82.99,21.42
.gossipoption 40431 >>Talk to |cRXP_FRIENDLY_Miss Fanny|r |cRXP_WARN_2|r
.timer 2,RP
step
.goto 376,82.99,21.42
.gossipoption 40430 >>Talk to |cRXP_FRIENDLY_Miss Fanny|r |cRXP_WARN_3|r
step
.convertquest 29875,29874 <<Alliance
.goto 376,84.09,21.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiao|r
.accept 30086 >>接任务: |cRXP_WARN_寻找隐秘大师|r
.disablecheckbox
.turnin 30086 >>Turn in The Search for the Hidden Master
.disablecheckbox
.accept 29871 >>接任务: |cRXP_WARN_聪明的阿西约|r
.accept 29872 >>接任务: |cRXP_WARN_林·柔掌|r
.accept 29875 >>接任务: |cRXP_WARN_康·棘杖|r
.target Xiao
step
.goto 376,75.23,24.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liang Thunderfoot|r
.turnin 29912 >>Turn in The Fabulous Miss Fanny
.target Liang Thunderfoot
.accept 29913 >>接任务: |cRXP_WARN_爱吃的肉|r
.accept 29914 >>接任务: |cRXP_WARN_送回猪圈|r
step
#completewith Ling
>>杀死|cRXP_ENEMY_青少年Mushans|r。为|T237348:0|t[|cRXP-Loot_Mushan肩排|r]掠夺它们
.complete 29913,1 
.mob Adolescent Mushan
step
>>提货|cRXP_FRIENDLY_Jian|r
.goto 376,70.185,24.146
.complete 29914,1 
.target Jian
step
#loop
.goto 376,70.832,27.857,25,0
.goto 376,69.738,28.920,20,0
.goto 376,70.832,27.857,0
.goto 376,69.738,28.920,0
>>拾取|cRXP_FRIENDLY_Smelly|r
.complete 29914,3 
.target Smelly
step
#completewith next
>>杀死|cRXP_ENEMY_Wyrmhorn海龟|r。为|T237349:0|t[|cRXP-Loot_Turtle Meat Scraps|r]掠夺它们
.complete 29913,2 
.mob Wyrmhorn Turtle
step
#label Ling
#loop
.goto 376,66.654,28.408,10,0
.goto 376,67.082,30.280,10,0
.goto 376,66.654,28.408,0
.goto 376,67.082,30.280,0
>>拾取|cRXP_FRIENDLY_Ling|r
.complete 29914,2 
.target Ling
step
>>杀死|cRXP_ENEMY_Wyrmhorn海龟|r。为|T237349:0|t[|cRXP-Loot_Turtle Meat Scraps|r]掠夺它们
.complete 29913,2 
.goto 376,67.431,29.011
.goto 376,66.004,32.550,0
.mob Wyrmhorn Turtle
step
#loop
.goto 376,71.818,32.955,25,0
.goto 376,72.835,25.457,25,0
.goto 376,68.621,26.309,25,0
.goto 376,67.378,32.271,30,0
.goto 376,71.818,32.955,0
.goto 376,72.835,25.457,0
.goto 376,68.621,26.309,0
.goto 376,67.378,32.271,0
>>杀死|cRXP_ENEMY_青少年Mushans|r。为|T237348:0|t[|cRXP-Loot_Mushan肩排|r]掠夺它们
.complete 29913,1 
.mob Adolescent Mushan
step
.goto 376,75.22,24.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liang Thunderfoot|r
.turnin 29913 >>Turn in The Meat They'll Eat
.turnin 29914 >>Turn in Back to the Sty
.accept 29915 >>接任务: |cRXP_WARN_邻居的义务|r
.target Liang Thunderfoot
step
.goto 376,78.11,32.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis the Shepherd Boy|r
.turnin 29915 >>Turn in A Neighbor's Duty
.target Francis the Shepherd Boy
.accept 29916 >>接任务: |cRXP_WARN_利爪馋嘴|r
.accept 29917 >>接任务: |cRXP_WARN_卢佩罗|r
step
#completewith Lupello
>>杀死|cRXP_ENEMY_偷狼|r
.complete 29916,2 
.mob Thieving Wolf
step
#completewith Lupello
>>杀死|cRXP_ENEMY_偷牌鹰|r
.complete 29916,1 
.mob Thieving Plainshawk
step
#label Lupello
.goto 376,81.220,40.110,12,0
.goto 376,82.351,38.481,12,0
.goto 376,82.002,39.723
>>杀死|cRXP_ENEMY_Lupello|r
.complete 29917,1 
.mob Lupello
step
#completewith ThievingWolf
#hidewindow
#loop
.goto 376,83.421,33.525,25,0
.goto 376,81.487,33.047,25,0
.goto 376,75.694,38.619,25,0
.goto 376,83.421,33.525,0
.goto 376,81.487,33.047,0
.goto 376,75.694,38.619,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_偷狼|r
.complete 29916,2 
.mob Thieving Wolf
step
>>杀死|cRXP_ENEMY_偷牌鹰|r
.complete 29916,1 
.mob Thieving Plainshawk
step
#label ThievingWolf
>>杀死|cRXP_ENEMY_偷狼|r
.complete 29916,2 
.mob Thieving Wolf
step
.goto 376,78.13,32.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Francis the Shepherd Boy|r
.turnin 29916 >>Turn in Piercing Talons and Slavering Jaws
.turnin 29917 >>Turn in Lupello
.timer 12,Roleplay Duration
.target Francis the Shepherd Boy
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shang Thunderfoot|r
.accept 29918 >>接任务: |cRXP_WARN_英勇的一课|r
.goto 376,78.188,32.806
.target Shang Thunderfoot
step
#loop
.goto 376,83.334,27.036,45,0
.goto 376,74.878,37.148,45,0
.goto 376,77.079,27.024,45,0
.goto 376,83.334,27.036,0
.goto 376,74.878,37.148,0
.goto 376,77.079,27.024,0
>>|cRXP_WARN_望向天空。使用|r|T134326:0|t[Lancher’s Lariat]|cRXP_WARN_on a|r|cRXP_ENEMY_Great White Plainshawk|r
>>杀死|cRXP_ENEMY_Great White Plainshawk|r
.use 75208
.complete 29918,1 
.timer 6,RP
.mob Great White Plainshawk
step
#loop
.goto 376,74.69,34.6,8,0
.goto 376,74.41,34.5,8,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shang Thunderfoot|r
.turnin 29918 >>Turn in A Lesson in Bravery
.target Shang Thunderfoot
step
.goto 376,75.28,35.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.accept 29919 >>接任务: |cRXP_WARN_英雄所喝略同|r
.target Chen Stormstout
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
>>|cRXP_WARN_关注|r|cRXP_FRIENDLY_Chen Stormtust|r
*|cRXP_WARN_Open your boxes,euip new gear, combine your gems, and clean up your inventory|r
.goto 376,68.72,43.52
.skipgossip 1
.timer 147,Roleplay Duration
.complete 29919,1 
.target Chen Stormstout
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Mudmug, |cRXP_FRIENDLY_陈·风暴烈酒|r, Li Li
.turnin 29919 >>Turn in Great Minds Drink Alike
.goto 376,68.72,43.12
.target +Mudmug
.accept 29944 >>接任务: |cRXP_WARN_擒兔先擒首|r
.goto 376,68.876,43.155
.target +Chen Stormstout
.accept 29945 >>接任务: |cRXP_WARN_黄配红变橙色|r
.goto 376,68.881,43.308
.target +Li Li
step
#completewith Frenzyhop
>>拿起|T133938:0|t[Meedow Marigold]
.complete 29945,1 
step
#completewith Frenzyhop
>>杀死|cRXP_ENEMY_Tawnyhide雄鹿|r、|cRXD_ENEMY_TAwnyhideDos|r和|cRXP_ENEMY_Tawnyhide-Fawns|r。掠夺它们以获取|T134830:0|t[动物血瓶]
.complete 29945,2 
.mob Tawnyhide Stag
.mob Tawnyhide Doe
.mob Tawnyhide Fawn
step
.goto 376,68.55,38.24
>>杀死|cRXP_ENEMY_Aiyu Skillet|r
.complete 29944,1 
.mob Aiyu the Skillet
step
.goto 376,66.685,38.168
.line 376,66.063,37.171,66.534,37.736,66.690,38.577,66.195,39.540
>>杀死爪刃|cRXP_ENEMY_Jinanya |r
.complete 29944,2 
.mob Jinanya the Clawblade
step
#label Frenzyhop
.goto 376,64.57,40.73
>>杀死|cRXP_ENEMY_Frenzhop|r
.complete 29944,3 
.mob Frenzyhop
step
#completewith next
>>杀死|cRXP_ENEMY_deer|r、|cRXD_ENEMY_Mushan Nomads|r和|cRXP_ENEMY_Longfang Howlers|r。为|T134830:0|t[动物血瓶]掠夺它们
.complete 29945,2 
.mob Tawnyhide Stag
.mob Tawnyhide Doe
.mob Tawnyhide Fawn
.mob Mushan Nomads
.mob Longfang Howler
step
#loop
.goto 376,65.688,43.014,28,0
.goto 376,70.109,49.136,20,0
.goto 376,71.492,47.352,20,0
.goto 376,65.688,43.014,0
.goto 376,70.109,49.136,0
.goto 376,71.492,47.352,0
>>拿起|T133938:0|t[Meedow Marigold]
.complete 29945,1 
step
#loop
.goto 376,72.318,44.864,35,0
.goto 376,69.969,35.925,45,0
.goto 376,63.691,38.550,40,0
.goto 376,66.756,48.196,35,0
.goto 376,71.100,48.800,35,0
.goto 376,72.318,44.864,0
.goto 376,69.969,35.925,0
.goto 376,63.691,38.550,0
.goto 376,66.756,48.196,0
.goto 376,71.100,48.800,0
>>杀死|cRXP_ENEMY_deer|r、|cRXD_ENEMY_Mushan Nomads|r和|cRXP_ENEMY_Longfang Howlers|r。为|T134830:0|t[动物血瓶]掠夺它们
.complete 29945,2 
.mob Tawnyhide Stag
.mob Tawnyhide Doe
.mob Tawnyhide Fawn
.mob Mushan Nomads
.mob Longfang Howler
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Li Li, |cRXP_FRIENDLY_陈·风暴烈酒|r, Mudmug
.turnin 29945 >>Turn in Yellow and Red Make Orange
.accept 29947 >>接任务: |cRXP_WARN_真假胡萝卜|r
.goto 376,68.88,43.31
.target +Li Li
.turnin 29944 >>Turn in Leaders Among Breeders
.accept 29946 >>接任务: |cRXP_WARN_密径主母|r
.goto 376,68.878,43.140
.target +Chen Stormstout
.accept 29948 >>接任务: |cRXP_WARN_贼性难改|r
.goto 376,68.713,43.113
.target +Mudmug
step
#completewith Chufa
>>|cRXP_WARN_不要杀死|cRXP_ENEMY_Twitchheel囤积器|r。|r
>>|cRXP_WARN_使用|r|T133960:0|t[橘色萝卜]|cRXP_WARN_将萝卜扔到|cRXD_ENEMY_Twitchheel囤积器|r|r等待它们计数到任务中，然后再扔下一个。
.complete 29947,1 
.use 76370
.mob Twitchheel Hoarder
step
#completewith Chufa
>>在洞穴内捡起|cRXP_Pick_Stolen Sack of Hops|r
.complete 29948,1 
step
#completewith next
.goto 376,69.087,39.689,8 >>进入洞穴
step
#label Chufa
.goto 376,68.328,36.743,12,0
.goto 376,67.89,37.46
>>杀死|cRXP_ENEMY_Chufa|r|cRXP-WARN_in洞穴边|r
.complete 29946,1 
.mob Chufa
step
#completewith next
>>|cRXP_WARN_不要杀死|cRXP_ENEMY_Twitchheel囤积器|r。|r
>>|cRXP_WARN_使用|r T133960:0|t[橘色萝卜]|cRXP_WARN_将萝卜扔到|cRXD_ENEMY_Twitchheel囤积器|r附近。|r等待它们计入任务后再扔下一个。
.complete 29947,1 
.mob Twitchheel Hoarder
step
#loop
.goto 376,66.700,37.985,15,0
.goto 376,68.863,36.211,15,0
.goto 376,69.472,34.920,15,0
.goto 376,68.909,36.655,15,0
.goto 376,66.700,37.985,0
.goto 376,68.863,36.211,0
.goto 376,69.472,34.920,0
.goto 376,68.909,36.655,0
>>捡起|cRXP_Pick_偷来的一袋啤酒花|r
.complete 29948,1 
step
#loop
.goto 376,65,141,38.141,30,0
.goto 376,69.133,40.985,30,0
.goto 376,68.399,33.112,30,0
.goto 376,65,141,38.141,0
.goto 376,69.133,40.985,0
.goto 376,68.399,33.112,0
>>|cRXP_WARN_不要杀死|cRXP_ENEMY_Twitchheel囤积器|r。|r
>>|cRXP_WARN_使用|r T133960:0|t[橘色萝卜]|cRXP_WARN_将萝卜扔到|cRXD_ENEMY_Twitchheel囤积器|r附近。|r等待它们计入任务后再扔下一个。
.use 76370
.complete 29947,1 
.mob Twitchheel Hoarder
step
#completewith next
.goto 376,65.9,38.34,20 >>离开洞穴
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Mudmug, Li Li, |cRXP_FRIENDLY_陈·风暴烈酒|r
.turnin 29948 >>Turn in Thieves to the Core
.goto 376,68.71,43.12
.target +Mudmug
.turnin 29947 >>Turn in Crouching Carrot, Hidden Turnip
.goto 376,68.88,43.31
.target +Li Li
.turnin 29946 >>Turn in The Warren-Mother
.accept 29949 >>接任务: |cRXP_WARN_遗产|r
.timer 6,Roleplay Duration
.goto 376,68.881,43.144
.target +Chen Stormstout
step
.goto 376,68.77,43.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r
.turnin 29949 >>Turn in Legacy
.accept 29950 >>接任务: |cRXP_WARN_丽丽的假日|r
.target Li Li
step
>>如果|cRXP_FRIENDLY_Li Li |r已经脱光|cRXP_WARN_然后使用|r|T413582:0|t[李的许愿石]|cRXP _WARN_t在营地附近重新召唤她|r
.goto 376,60.75,35.78
.use 763650
.complete 29950,2 
step << Alliance
.achievement 6846,2 >>单击|cRXP_PICK_Scroll|r
.goto 418,30.55,38.59
step
.goto 376,61.23,34.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clever Ashyo|r
.turnin 29871 >>Turn in Clever Ashyo
.accept 29577 >>接任务: |cRXP_WARN_阿西约的预见|r
.timer 47,Roleplay Duration
.target Clever Ashyo
step
.goto 376,60.61,33.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan|r
.accept 29757 >>接任务: |cRXP_WARN_蛤蟆酱|r
.target Yan





step
.goto 376,59.82,27.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhang Yue|r
.accept 29600 >>接任务: |cRXP_WARN_果断措施|r
.target Zhang Yue
step
#completewith RazorbackSnapper
#hidewindow
#loop
.goto 376,64.425,27.991,22,0
.goto 376,64.613,24.968,22,0
.goto 376,62.705,24.250,22,0
.goto 376,61.884,26.753,22,0
.goto 376,64.425,27.991,0
.goto 376,64.613,24.968,0
.goto 376,62.705,24.250,0
.goto 376,61.884,26.753,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Razorback Snapper|r
.complete 29600,1 
.mob Razorback Snapper
step
>>|cRXP_WARN_单击|cRXP_PICK_Gurling Toadpawn |r（气泡）|r
.complete 29757,1 
step
#label RazorbackSnapper
>>杀死|cRXP_ENEMY_Razorback Snapper|r
.complete 29600,1 
.mob Razorback Snapper
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clever Ashyo|r
.goto 376,59.250,27.563
.skipgossip 56113
.complete 29577,1 
step
.goto 376,59.83,27.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhang Yue|r
.turnin 29577 >>Turn in Ashyo's Vision
.turnin 29600 >>Turn in Snap Judgment
.accept 29581 >>接任务: |cRXP_WARN_金色梦境|r
.target Zhang Yue
step
>>杀死|cRXP_ENEMY_Krosh|r。为|T134964:0|t[Krosh的背部]抢劫他
.goto 376,65.35,25.73
.collect 83767,1,29758
.accept 29758 >>接任务: |cRXP_WARN_猜猜谁回来了|r
.mob Krosh
step
>>拿起|cRXP_Pick_Dreamleaf布什|r
.goto 376,65.24,26.28
.complete 29581,1 
step
.goto 376,60.62,33.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan|r
.turnin 29581 >>Turn in The Golden Dream
.turnin 29757 >>Turn in Bottletoads
.turnin 29758 >>Turn in Guess Whose Back
.target Yan
step
.goto 376,68.71,43.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r
.accept 29951 >>接任务: |cRXP_WARN_泥水|r
.target Mudmug
step
>>如果|cRXP_FRIENDLY_Li Li |r已经脱光|cRXP_WARN_然后使用|r|T413582:0|t[李的许愿石]|cRXP _WARN_t在瀑布附近再次召唤她|r
.goto 376,75.45,43.00
.use 763650
.complete 29950,3 
step
#loop
.goto 376,74.343,48.529,25,0
.goto 376,72.876,55.405,25,0
.goto 376,69.513,56.363,25,0
.goto 376,67.209,60.601,30,0
.goto 376,69.113,61.606,25,0
.goto 376,74.343,48.529,0
.goto 376,72.876,55.405,0
.goto 376,69.513,56.363,0
.goto 376,67.209,60.601,0
.goto 376,69.113,61.606,0
>>|cRXP_WARN_单击|cRXP_PICK_Muddy Water|r，直到您的小瓶装满为止|r
.complete 29951,1 
step
.goto 376,63.56,58.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Journeyman Chu|r
.accept 30059 >>接任务: |cRXP_WARN_飞蛾叛乱|r
.target Journeyman Chu
step
>>如果|cRXP_FRIENDLY_Li Li |r已经脱光|cRXP_WARN_然后使用|r|T413582:0|t[李的许愿石]|cRXP _WARN_t在村庄中心附近重新召唤她|r
.goto 376,62.55,59.11
.use 763650
.complete 29950,1 
step
.goto 376,62.67,59.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silkmaster Tsai|r
.accept 30072 >>接任务: |cRXP_WARN_蚕丝从哪里来|r
.target Silkmaster Tsai
step
>>|cRXP_WARN_单击|r|cRXP_PICK_Mulberry桶|r
.goto 376,61.13,56.73
.complete 30072,1 
step
>>单击|cRXP_FRIENDLY_红蚕|r
.goto 376,61.209,60.834,15,0
.complete 30072,2 
.target Hungry Silkworm
step
#completewith next
.goto 376,62.48,61.58,10 >>Enter the Hut
step
>>|cRXP_WARN_点击|r|cRXP_PICK_Silk茧桶|r
.goto 376,62.36,62.49
.complete 30072,3 
step
#completewith next
.goto 376,62.48,61.58,10 >>Leave the Hut
step
#loop
.goto 376,61.209,60.834,15,0
.goto 376,62.378,56.573,15,0
.goto 376,61.209,60.834,0
.goto 376,62.378,56.573,0
>>单击|cRXP_FRIENDLY_红蚕|r
.complete 30072,2 
.target Hungry Silkworm
step
#completewith TinyMutatedSilkmoth
#hidewindow
#loop
.goto 376,64.020,55.545,35,0
.goto 376,66.575,53.118,35,0
.goto 376,68.216,54.578,35,0
.goto 376,64.506,63.334,35,0
.goto 376,64.020,55.545,0
.goto 376,66.575,53.118,0
.goto 376,68.216,54.578,0
.goto 376,64.506,63.334,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_微小突变蚕蛾|r
.complete 30059,2 
.mob Tiny Mutated Silkmoth
step
>>杀死|cRXP_ENEMY_突变蚕蛾|r
.complete 30059,1 
.mob Mutated Silkmoth
step
#label TinyMutatedSilkmoth
>>杀死|cRXP_ENEMY_微小突变蚕蛾|r
.complete 30059,2 
.mob Tiny Mutated Silkmoth
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Journeyman Chu|r and |cRXP_FRIENDLY_Master Goh|r
.turnin 30059 >>Turn in The Moth Rebellion
.goto 376,63.55,58.46
.target +Journeyman Chu
.accept 30058 >>接任务: |cRXP_WARN_魔丝勒斯！|r
.goto 376,63.625,58.526
.target Master Goh
step
#completewith next
.goto 376,64.364,57.972
.cast 6478 >>|cRXP_WARN_单击|cRXP_PICK_Mothalus诱饵|r
.timer 14,Roleplay Duration
step
.goto 376,62.66,59.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silkmaster Tsai|r
.turnin 30072 >>Turn in Where Silk Comes From
.target Silkmaster Tsai
step
>>|cRXP_WARN_单击|cRXP_PICK_Mothallos诱饵|r开始产卵角色扮演|r
>>杀死|cRXP_ENEMY_Mothalos|r
.goto 376,64.364,57.972
.complete 30058,1 
.mob Mothallus
step
.goto 376,63.63,58.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Goh|r
.turnin 30058 >>Turn in Mothallus!
.target Master Goh
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r and |cRXP_FRIENDLY_Li Li|r
.turnin 29951 >>Turn in Muddy Water
.goto 376,68.72,43.11
.target +Mudmug
step
#completewith next
.cast 106276 >>使用|T135975:0|t[李的许愿石]召唤|cRXP_FRIENDLY_Li李|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r
.turnin 29950 >>Turn in Li Li's Day Off
.timer 15,Roleplay Duration
.goto 376,68.78,43.44
.target +Li Li
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.accept 29952 >>接任务: |cRXP_WARN_破碎的梦想|r
.goto 376,68.853,43.400
.target Chen Stormstout
step
#completewith ListenToChen
#label TalkChenStormstout
.goto 376,68.853,43.400
.gossipoption 40423 >>对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
step
#requires TalkChenStormstout
#completewith next
+|cRXP_WARN_在任务停机期间，根据您当前的需求，专注于以下活动，最大限度地提高效率：|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
.use 211279
.usespell 436523
.usespell 433397
step
#label ListenToChen
>>|cRXP_WARN_不要跑在|r|cRXP_FRIENDLY_Uncle Gao|r前面，杀死暴徒后跟着他|r
>>使用|r|T572033:0|t[Stormtust Fu]（1）杀死|cRXP_ENEMY_Unruly Alemental|r和|cRXT_ENEMY_Wuk-Wuk|r|cRXP-WARN_b。使用|T132805:0|t[饮用]（2）治疗。
.goto 376,34.761,70.381,15,0
.goto 376,35.841,72.712,15,0
.goto 376,36.687,72.242,15,0
.goto 376,36.364,71.080,15,0
.goto 376,34.611,70.778
.skipgossip 56133,1
.complete 29952,1 
.mob Unruly Alemental
.mob Wuk-Wuk
step
.goto 376,68.85,43.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.turnin 29952 >>Turn in Broken Dreams
.target Chen Stormstout
.accept 30046 >>接任务: |cRXP_WARN_陈的决意|r
step
#completewith next
.cast 441154 >>使用|T134491:0|t[Nostwin's Voucher]传送到无限集市。
.use 217930
.itemcount 217930,1
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.goto 376,55.89,49.44
.turnin 30046 >>Turn in Chen's Resolution
.accept 30048 >>接任务: |cRXP_WARN_丽丽和谷物|r
.accept 30049 >>接任务: |cRXP_WARN_扛不动水|r
.accept 30053 >>接任务: |cRXP_WARN_寻找啤酒花|r
.target Chen Stormstout
step
.goto 376,55.14,47.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stonecarver Mac|r
.accept 32045 >>接任务: |cRXP_WARN_水的孩子|r
.target Stonecarver Mac
step
#completewith next
#loop
.goto 376,55.24,50.69,10,0
.goto 376,54.96,50.54,10,0
.goto 376,55.07,50.29,10,0
.goto 376,54.93,50.14,10,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Lei Lan|r
.home >>将你的炉石设定为懒惰的萝卜
.target Innkeeper Lei Lan
step
.goto 376,52.69,62.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r
.turnin 30048 >>Turn in Li Li and the Grain
.accept 30031 >>接任务: |cRXP_WARN_尝味|r
.target Li Li
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grainlord Kai|r and |cRXP_FRIENDLY_Grainer Pan|r
.accept 30029 >>接任务: |cRXP_WARN_玩个小把戏|r
.goto 376,52.738,62.994
.target +Grainlord Kai
.accept 30030 >>接任务: |cRXP_WARN_斩草除根|r
.goto 376,52.595,62.986
.target +Grainer Pan
step
#completewith AgedGrain
>>杀死|cRXP_ENEMY_Tricky Maizer |r
.complete 30029,1 
.mob Tricky Maizer
step
>>|cRXP_WARN_单击|cRXP_PICK_Light Grain|r|r
.goto 376,53.688,63.296
.complete 30031,2 
step
>>|cRXP_WARN_单击|cRXP_PICK_Fresh Grain|r|r
.goto 376,53.036,64.488
.complete 30031,4 
step
#completewith next
.goto 376,51.589,64.262,8 >>|cRXP_WARN_Enter the mill|r
step
#title Go up
.goto 376,51.449,64.484
>>杀死|cRXP_ENEMY_Cornan|r|cRXP-WARN_in侧磨机|r
.complete 30030,1 
.mob Cornan
step
>>|cRXP_WARN_单击|cRXP_PICK_Malted Grain|r|r
.goto 376,50.718,61.954
.complete 30031,3 
step
#label AgedGrain
>>|cRXP_WARN_单击|cRXP_PICK_AgedGrain|r|r
.goto 376,51.202,60.831
.complete 30031,1 
step
#loop
.goto 376,53.887,62.260,30,0
.goto 376,52.820,65.814,30,0
.goto 376,50.537,60.261,40,0
.goto 376,53.887,62.260,0
.goto 376,52.820,65.814,0
.goto 376,50.537,60.261,0
>>杀死|cRXP_ENEMY_Tricky Maizer |r
.complete 30029,1 
.mob Tricky Maizer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r, |cRXP_FRIENDLY_Grainer Pan|r, and |cRXP_FRIENDLY_Grainlord Kai|r
.turnin 30031 >>Turn in Taste Test
.goto 376,52.69,62.84
.target +Li Li
.turnin 30030 >>Turn in Out of Sprite
.goto 376,52.595,62.975
.target +Grainer Pan
.accept 30028 >>接任务: |cRXP_WARN_找回谷物|r
.turnin 30029 >>Turn in Wee Little Shenanigans
.accept 30032 >>接任务: |cRXP_WARN_寻找更好的大麦|r
.goto 376,52.743,63.001
.target +Grainlord Kai
step
#completewith next
>>|cRXP_WARN_Click on the |cRXP_PICK_Stolen Malt Sacks|r|r to PICK |T133849:0|t[Sacks of Grain]
.complete 30028,1 
step
>>|cRXP_WARN_单击|cRXP_PICK_Rappeling绳索|r
.goto 376,51.26,77.49
.complete 30032,1 
step
.isOnQuest 30032
#completewith next
.goto 376,53.599,76.171,8 >>|cRXP_WARN_进入洞穴|r
step
>>|cRXP_WARN_单击|cRXP_PICK_麦芽洞穴大麦|r|r
.goto 376,53.35,75.29
.complete 30032,2 
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 7) Krasarang Wilds 2
#displayname Chapter 5 - Krasarang Wilds Pt. 2
#title Krasarang Wilds 2
#next 8） 四风之谷3

step << Horde
.goto 418,67.62,25.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.accept 30352 >>接任务: |cRXP_WARN_猎鹤|r
.accept 30353 >>接任务: |cRXP_WARN_唯利是图|r
.target Daggle Bombstrider
step << Horde
#completewith CourierFound
>>杀死|cRXP_ENEMY_鲤鱼猎人|r
.complete 30352,1 
.mob carp hunter
step << Horde
#completewith CourierFound
>>杀死|cRXP_ENEMY_Krasari女猎手|r掠夺它们以获取|cRXP_Loot_老虎血小瓶|r
.complete 30353,1 
.mob Krasari Huntress
step << Horde
.goto 418,68.80,22.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chezin Dawnchaser|r
.accept 30179 >>接任务: |cRXP_WARN_中毒！|r
.target Chezin Dawnchaser
step << Horde
#loop
.goto 418,67.565,24.310,30,0
.goto 418,65.963,19.910,30,0
.goto 418,69.549,18.694,30,0
.goto 418,67.565,24.310,0
.goto 418,65.963,19.910,0
.goto 418,69.549,18.694,0
.complete 30179,1 
step << Horde
#label CourierFound
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zhu's Watch Courier|r
.goto 418,62.55,25.45
.complete 30133,1 
.target Zhu's Watch Courier
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r and |cRXP_FRIENDLY_Kor Bloodtusk|r
.turnin 30179 >>Turn in Poisoned!
.goto 418,59.89,24.69
.target +Sunwalker Dezco
.accept 30124 >>接任务: |cRXP_WARN_敌明我暗！|r
.goto 418,59.875,24.803
.target +Kor Bloodtusk
step << Horde
.isOnQuest 29875
.goto 418,60.09,25.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r
.turnin 29875 >>交任务: |cRXP_FRIENDLY_康·棘杖|r
.accept 30123 >>接任务: |cRXP_WARN_飞掠者炖肉|r
.target Kang Bramblestaff
step << Horde
#optional
.goto 418,60.09,25.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r
.accept 30123 >>接任务: |cRXP_WARN_飞掠者炖肉|r
.target Kang Bramblestaff
step << Horde
#completewith next
>>杀死|cRXP_FRIENDLY_Jungle Skitter|r。为|T237415:0|t[|cRXP _Loot_Intact Skitter Glands]掠夺它们
.complete 30123,1 
.mob Jungle Skitterer
step << Horde
#loop
.goto 418,62.343,30.723,15,0
.goto 418,61.027,29.295,15,0
.goto 418,62.343,30.723,0
.goto 418,61.027,29.295,0
>>杀死|cRXP_ENEMY_Darnassian Outrider|r
.complete 30124,1 
.mob Darnassian Outrider
step << Horde
#completewith SkittererGlands
>>杀死|cRXP_ENEMY_鲤鱼猎人|r
.complete 30352,1 
.mob carp hunter
step << Horde
#completewith SkittererGlands
>>杀死|cRXP_FRIENDLY_Jungle Skitter|r。为|T237415:0|t[|cRXP _Loot_Intact Skitter Glands]掠夺它们
.complete 30123,1 
.mob Jungle Skitterer
step << Horde
#label SkittererGlands
#loop
.goto 418,63.44,37.62,45,0
.goto 418,65.40,30.81,30,0
.goto 418,69.69,30.41,45,0
.goto 418,72.12,21.28,55,0
.goto 418,64.77,21.72,40,0
.goto 418,61.02,22.06,55,0
.goto 418,63.44,37.62,0
.goto 418,65.40,30.81,0
.goto 418,69.69,30.41,0
.goto 418,72.12,21.28,0
.goto 418,64.77,21.72,0
.goto 418,61.02,22.06,0
>>杀死|cRXP_ENEMY_Krasari女猎手|r掠夺它们以获取|cRXP_Loot_老虎血小瓶|r
.complete 30353,1 
.mob Krasari Huntress
step << Horde
#completewith CarpHunterSlain
#hidewindow
#loop
.goto 418,60.77,22.11,45,0
.goto 418,65.09,22.15,35,0
.goto 418,65.20,32.70,30,0
.goto 418,63.44,37.62,45,0
.goto 418,60.77,22.11,0
.goto 418,65.09,22.15,0
.goto 418,65.20,32.70,0
.goto 418,63.44,37.62,0
+1
step << Horde
#completewith next
>>杀死|cRXP_ENEMY_鲤鱼猎人|r
.complete 30352,1 
.mob carp hunter
step << Horde
>>杀死|cRXP_FRIENDLY_Jungle Skitter|r。为|T237415:0|t[|cRXP _Loot_Intact Skitter Glands]掠夺它们
.complete 30123,1 
.mob Jungle Skitterer
step << Horde
#label CarpHunterSlain
>>杀死|cRXP_ENEMY_鲤鱼猎人|r
.complete 30352,1 
.mob carp hunter
step << Horde
.goto 418,67.63,25.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.turnin 30352 >>Turn in Profit Mastery
.accept 31262 >>接任务: |cRXP_WARN_猎鹤高手：针尖铁嘴|r
.turnin 30353 >>Turn in Profit Mastery
.accept 31260 >>接任务: |cRXP_WARN_唯利是图：查舍恩|r
.target Daggle Bombstrider
step << Horde
>>杀死|cRXP_ENEMY_Needlepeak|r。将其掠夺|T133707:0|t[|cRXP-Loot_The Needlebeak|r]
.goto 418,62.73,20.46
.complete 31262,1 
.mob Needlebeak
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r and |cRXP_FRIENDLY_Kor Bloodtusk|r
.turnin 30123 >>Turn in Skitterer Stew
.goto 418,60.09,25.00
.target +Kang Bramblestaff
.turnin 30124 >>Turn in Blind Them!
.accept 30127 >>接任务: |cRXP_WARN_都阳的威胁|r
.goto 418,59.87,24.80
.target +Kor Bloodtusk
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r and |cRXP_FRIENDLY_Kang Bramblestaff|r
.accept 30130 >>接任务: |cRXP_WARN_草药治疗|r
.goto 418,59.883,24.694
.target +Sunwalker Dezco
.accept 30129 >>Accept The Mogu Agenda
.goto 418,60.09,25.00
.target +Kang Bramblestaff
step << Horde
>>杀死|cRXP_ENEMY_Chasheen|r。掠夺他获得|T134817:0|t[|cRXD_Loot_古代虎血]
.goto 418,61.81,32.09
.complete 31260,1 
.mob Ancient Tiger's Blood
step << Alliance
.goto 418,67.62,25.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.accept 30352 >>接任务: |cRXP_WARN_猎鹤|r
.accept 30353 >>接任务: |cRXP_WARN_唯利是图|r
.target Daggle Bombstrider
step << Alliance
#completewith Zhu's Watch Courier
>>杀死|cRXP_ENEMY_鲤鱼猎人|r
.complete 30352,1 
.mob carp hunter
step << Alliance
#completewith Zhu's Watch Courier
>>杀死|cRXP_ENEMY_Krasari女猎手|r掠夺它们以获取|cRXP_Loot_老虎血小瓶|r
.complete 30353,1 
.mob Krasari Huntress
step << Alliance
#label Zhu's Watch Courier
.goto 418,67.94,31.53
>>单击|cRXP_PICK_Northeast Oubliette Shackle|r
.complete 30274,1 
step << Alliance
#completewith next
.goto 418,67.46,32.3,35 >>|cRXP_WARN_走进紫色的泡泡。|r
step << Alliance
.goto 418,66.69,31.57
>>单击|cRXP_PICK_Northwest Oubliette Shackle|r
.complete 30274,2 
step << Alliance
.goto 418,66.26,30.95
>>|cRXP_WARN_Follow the Arrow|r
.accept 30274 >>接任务: |cRXP_WARN_奥法地牢|r
.complete 30178,1 
.skipgossip
.target Zhu's Watch Courier
step << Alliance
.goto 418,66.70,33.68
>>单击|cRXP_PICK_Southwest Oubliette Shackle|r
.complete 30274,3 
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin,|r|cRXP_FRIENDLY_Lyalia|r and |cRXP_FRIENDLY_Kang Bramblestaff|r
.turnin 30274 >>Turn in The Arcanic Oubliette
.accept 30344 >>接任务: |cRXP_WARN_失落的王朝|r
.goto 418,67.45,32.64
.accept 30384 >>接任务: |cRXP_WARN_敌明我暗！|r
.goto 418,67.45,32.71
.turnin 29874 >>交任务: |cRXP_FRIENDLY_康·棘杖|r
.accept 30350 >>接任务: |cRXP_WARN_飞掠杂碎汤|r
.goto 418,67.36,32.75
.target Kang Bramblestaff
.target Lorekeeper Vaeldrin
.target Lyalia
step << Alliance
#completewith Vial of Tiger Blood
>>杀死|cRXP_ENEMY_Jungle Skitter|r掠夺它们以获得|cRXD_Loot_完整的Skitter Glands|r
.complete 30350,1 
step << Alliance
#completewith Vial of Tiger Blood
>>杀死|cRXP_ENEMY_鲤鱼猎人|r
.complete 30352,1 
.mob carp hunter
step << Alliance
#completewith Vial of Tiger Blood
>>杀死|cRXP_ENEMY_Krasari女猎手|r掠夺它们以获取|cRXP_Loot_老虎血小瓶|r|cRXP_WARN_它们中的大多数都是隐蔽的，通常位于树旁边|r
.complete 30353,1 
.mob Krasari Huntress
step << Alliance
#hidewindow
#label Vial of Tiger Blood
.goto 418,65.44,35.54,20,0
.goto 418,64.7,35.17,20,0
.goto 418,63.89,35.25,20,0
.goto 418,63.78,36.24,20,0
.goto 418,62.66,36.89,20,0
.goto 418,62.12,36.21,20,0
.goto 418,61.57,37.11,20,0
.goto 418,60.53,37.18,20,0
.goto 418,60.34,36.39,20,0
.goto 418,59.51,36.21,20,0
.goto 418,60.89,34,20,0
.goto 418,61.46,34.78,20,0
.goto 418,62.13,33.6,20,0
.goto 418,63.51,32.23,20,0
.goto 418,64.63,31.86,20,0
.goto 418,64.63,30.79,20,0
.goto 418,63.32,30.79,20,0
.goto 418,61.66,32.92,20,0
.goto 418,61.9,30.26,20,0
.goto 418,61.1,28.9,20,0
.goto 418,61.69,27.68,20,0
.goto 418,62.57,28.66,20,0
.goto 418,63.44,27.13,20,0
.goto 418,63.01,25.74,20,0
.goto 418,63.87,24.98,20
step << Alliance
#completewith next
>>杀死|cRXP_ENEMY_Sunwalker Scout|r
.complete 30384,1 
.mob sunwalker scout
step
.isQuestComplete 30352
.isQuestComplete 30353
.goto 418,67.63,25.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.turnin 30352 >>Turn in Profit Mastery
.turnin 30353 >>Turn in Profit Mastery
.accept 31260 >>接任务: |cRXP_WARN_唯利是图：查舍恩|r
.accept 31262 >>接任务: |cRXP_WARN_猎鹤高手：针尖铁嘴|r
.target Daggle Bombstrider
step << Alliance
#loop
.goto 418,63.94,24.99,30,0
.goto 418,66.8,25.15,30,0
.goto 418,67.36,26.95,30,0
>>杀死|cRXP_ENEMY_Sunwalker Scout|r
.complete 30384,1 
.mob sunwalker scout
step << Alliance
#loop
.goto 418,69.73,23.71,25,0
.goto 418,69.59,22.68,25,0
.goto 418,69.56,20.78,25,0
.goto 418,68.89,20.6,25,0
.goto 418,66.89,20.32,25,0
.goto 418,66.72,23.3,25,0
>>单击|cRXP_PICK_Dynastic Tablets|r
.complete 30344,1 
step << Alliance
.isQuestAvailable 30352
.isQuestAvailable 30353
#loop
.goto 418,71.7,23.47,20,0
.goto 418,70.47,25.23,20,0
.goto 418,70.6,26.06,20,0
.goto 418,70.23,28.97,20,0
.goto 418,70.73,29.82,20,0
>>杀死|cRXP_ENEMY_Krasari女猎手|r掠夺它们以获取|cRXP_Loot_老虎血小瓶|r|cRXP_WARN_它们中的大多数都是隐蔽的，通常位于树旁边|r
.complete 30353,1 
.mob Krasari Huntress
step
.isQuestAvailable 30352
.isQuestAvailable 30353
#hidewindow
#completewith Carp Hunter
.goto 418,67.69,30.25,30,0
.goto 418,64.56,30.29,30,0
.goto 418,63.88,28.24,30,0
.goto 418,65.56,26.2,30,0
.goto 418,68.22,27.7,30,0
#loop
+1
step << Alliance
#completewith next
.isQuestAvailable 30352
.isQuestAvailable 30353
>>杀死|cRXP_ENEMY_Jungle Skitter|r掠夺它们以获得|cRXD_Loot_完整的Skitter Glands|r
.complete 30350,1 
step << Alliance
#label Carp Hunter
.isQuestAvailable 30352
.isQuestAvailable 30353
>>杀死|cRXP_ENEMY_鲤鱼猎人|r
.complete 30352,1 
.mob carp hunter
step << Alliance
.goto 418,67.63,25.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.turnin 30352 >>Turn in Profit Mastery
.turnin 30353 >>Turn in Profit Mastery
.accept 31260 >>接任务: |cRXP_WARN_唯利是图：查舍恩|r
.accept 31262 >>接任务: |cRXP_WARN_猎鹤高手：针尖铁嘴|r
.target Daggle Bombstrider
step << Alliance
#completewith Chasheen
.isOnQuest 31260
>>杀死|cRXP_ENEMY_Jungle Skitter|r掠夺它们以获得|cRXD_Loot_完整的Skitter Glands|r
.complete 30350,1 
step << Alliance
.isOnQuest 31260
.goto 418,62.84,20.33
>>杀死|cRXP_ENEMY_Needbeak|r
.complete 31262,1 
.mob Needlebeak
step << Alliance
.isOnQuest 31260
.goto 418,61.65,31.97
#label Chasheen
>>杀死|cRXP_ENEMY_Chasheen|r掠夺他|cRXD_Loot_古虎之血|r
.complete 31260,1 
.mob Chasheen
step << Alliance
.isOnQuest 31260
>>杀死|cRXP_ENEMY_Jungle Skitter|r掠夺它们以获得|cRXD_Loot_完整的Skitter Glands|r
.complete 30350,1 
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff,|r |cRXP_FRIENDLY_Lyalia|r and |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r
.turnin 30350 >>Turn in Squirmy Delight
.goto 418,67.45,32.64
.target +Kang Bramblestaff
.turnin 30384 >>Turn in Blind Them!
.goto 418,67.45,32.71
.target +Lyalia
.turnin 30344 >>Turn in The Lost Dynasty
.goto 418,67.46,32.64
.target +Lorekeeper Vaeldrin
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin,|r |cRXP_FRIENDLY_Kang Bramblestaff|r and |cRXP_FRIENDLY_Lyalia|r
.accept 30346 >>Accept Where are the Pools
.goto 418,67.45,32.64
.accept 30349 >>接任务: |cRXP_WARN_都阳的威胁|r
.goto 418,67.45,32.71
.accept 30351 >>接任务: |cRXP_WARN_莲叶茶|r
.goto 418,67.37,32.76
.target Lyalia
.target Kang Bramblestaff
.target Lorekeeper Vaeldrin
step << Alliance
.goto 418,67.63,25.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.turnin 31260 >>Turn in Profit Mastery: Chasheen
.turnin 31262 >>Turn in Crane Mastery: Needlebeak
step
#include 3） Krasarang Wilds Dojani
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor Bloodtusk|r and |cRXP_FRIENDLY_Sunwalker Dezco|r
.turnin 30127 >>Turn in Threat from Dojan
.goto 418,59.88,24.81
.target +Kor Bloodtusk
.turnin 30128 >>Turn in The Pools of Youth
.turnin 30130 >>Turn in Herbal Remedies
.accept 30131 >>接任务: |cRXP_WARN_生命|r
.goto 418,59.881,24.700
.target +Sunwalker Dezco
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
.goto 418,59.881,24.700
.skipgossip 58113,1
.complete 30131,1 
.target Sunwalker Dezco
step << Horde
.goto 418,60.41,25.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
.turnin 30131 >>Turn in Life
.accept 30132 >>接任务: |cRXP_WARN_一路向西|r
.target Sunwalker Dezco
step << Horde
.goto 418,67.63,25.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daggle Bombstrider|r
.turnin 31260 >>Turn in Profit Mastery: Chasheen
.turnin 31262 >>Turn in Crane Mastery: Needlebeak
.target Daggle Bombstrider
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Sunwalker Scout|r
.goto 418,43.80,42.77
.complete 30132,1 
.target Sunwalker Scout
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Kang Bramblestaff|r |cRXP_WARN_next to you.|r
.turnin 30351 >>Turn in Lotus Tea
.target Kang Bramblestaff
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r and |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r
.turnin 30349 >>Turn in Threat from Dojan
.goto 418,67.45,32.7
.turnin 30347 >>Turn in The Pools of Youth
.accept 30348 >>接任务: |cRXP_WARN_长生不老？|r
.timer 22,RP
.goto 418,67.46,32.64
.target Lorekeeper Vaeldrin
.target Lyalia
step << Alliance
.goto 418,67.42,32.41
>>|cRXP_WARN_在任务停机期间，根据您当前的需求，专注于以下活动，最大限度地提高效率：|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397



























.complete 30348,1 
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r and |cRXP_FRIENDLY_Lyalia|r
.turnin 30348 >>Turn in Immortality?
.goto 418,67.46,32.64
.accept 30363 >>接任务: |cRXP_WARN_准备进攻|r
.goto 418,67.45,32.7
.target Lyalia
step << Alliance
.goto 418,43.93,43.41
.isOnQuest 30269
>>与|cRXP_FRIENDLY_Incursion Sentinel|r交互
.complete 30363,1 
.timer 58, RP
.target Incursion Sentinel
step
.goto 418,44.20,42.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Koro Mistwalker|r
.turnin 30178 >>Turn in Into the Wilds
.target Koro Mistwalker
step
#include 3) Krasarang Crane Wing
step
.goto 418,29.67,39.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tired Shushen|r
.accept 30168 >>接任务: |cRXP_WARN_野蛮入侵|r
.accept 30169 >>接任务: |cRXP_WARN_掠夺者首领司罗凡|r
.target Tired Shushen
step
#completewith next
>>杀死|cRXP_FRIENDLY_Riverblade肉肉猎人|r。为|T132594:0|t[|cRXP _Loot_Pillaged Jinyu Loot|r]掠夺它们
.complete 30168,1 
.mob Riverblade Flesh-hunter
step
.goto 418,31.80,28.97
>>杀死|cRXP_ENEMY_Slovan|r
.complete 30169,1 
.mob Slovan
step
#loop
.goto 418,35.86,80.50,35,0
.goto 418,31.56,49.07,42,0
.goto 418,27.90,44.32,42,0
.goto 418,31.80,28.97,42,0
>>杀死|cRXP_FRIENDLY_Riverblade猎肉者|r和|cRXP_FRIENDLY_Riverbrade杀手|r。为|T132594:0|t掠夺它们
.complete 30168,1 
.mob Riverblade Flesh-hunter
step << Alliance
.achievement 6846,3 >>单击|cRXP_PICK_Scroll|r
.goto 418,30.55,38.59
step
.goto 418,29.67,39.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tired Shushen|r
.turnin 30168 >>Turn in Thieving Raiders
.turnin 30169 >>Turn in Raid Leader Slovan
.target Tired Shushen
step << Horde
.goto 418,28.69,50.88
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor Bloodtusk|r
.turnin 30132 >>Turn in Going West
.accept 30163 >>接任务: |cRXP_WARN_为了部落|r
.accept 30229 >>接任务: |cRXP_WARN_更大的危险|r
.target Kor Bloodtusk
step << Horde
.goto 418,28.84,50.57
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r
.accept 30230 >>接任务: |cRXP_WARN_重夺神器|r
.target Kang Bramblestaff
step << Alliance
.goto 418,24.71,34.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r

.turnin 30465 >>交任务: |cRXP_FRIENDLY_准备进攻|r
.accept 30356 >>接任务: |cRXP_WARN_切断补给线|r
.accept 30354 >>接任务: |cRXP_WARN_一个姐妹也不能少|r
.target Lyalia
step << Alliance
.goto 418,25.21,34.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r
.accept 30355 >>接任务: |cRXP_WARN_重夺神器|r
.target Kang Bramblestaff
step
#include 3） Krasarang Wilds Korjan
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor Bloodtusk|r and |cRXP_FRIENDLY_Kang Bramblestaff|r
.turnin 30163 >>Turn in For the Tribe
.turnin 30229 >>Turn in The Greater Danger
.goto 418,28.68,50.88
.target +Kor Bloodtusk
.turnin 30230 >>Turn in Re-Reclaim
.goto 418,28.84,50.57
.target +Kang Bramblestaff
step << Horde
.goto 418,29.06,51.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Han|r
.accept 30175 >>接任务: |cRXP_WARN_螳螂妖|r
.target Ambassador Han
step << Horde
.goto 418,15.98,39.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
.accept 30164 >>接任务: |cRXP_WARN_石犁村守卫|r
.target Sunwalker Dezco
step << Alliance
.goto 418,25.20,34.53
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r
.turnin 30355 >>Turn in Re-Reclaim
.target Kang Bramblestaff
step << Alliance
.goto 418,24.70,34.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
.turnin 30354 >>Turn in No Sister Left Behind
.turnin 30356 >>Turn in Sever Their Supply Line
.target Lyalia
step << Alliance
.goto 418,24.88,34.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Han|r
.accept 30361 >>接任务: |cRXP_WARN_螳螂妖|r
.target Ambassador Han
step << Alliance
.goto 418,15.08,39.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r
.accept 30357 >>接任务: |cRXP_WARN_石犁村守卫|r
.target Lorekeeper Vaeldrin
step
#include 3） Krasarang Wilds I'thik
step << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Len|r and |cRXP_FRIENDLY_Sunwalker Dezco|r
.turnin 30175 >>Turn in The Mantid
.goto 418,15.69,39.71
.target +Ambassador Len
.turnin 30164 >>Turn in The Stoneplow Convoy
.accept 30174 >>接任务: |cRXP_WARN_为了家人|r
.goto 418,15.98,39.78
.target +Sunwalker Dezco
step << Alliance
.goto 418,15.70,39.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambassador Len|r
.turnin 30361 >>Turn in The Mantid
.target Ambassador Len
step << Alliance
.goto 418,15.09,39.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r
.turnin 30357 >>Turn in The Stoneplow Convoy
.target Lorekeeper Vaeldrin
step << Alliance
.goto 418,15.09,39.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r
.accept 30359 >>接任务: |cRXP_WARN_复国领主|r
.target Lorekeeper Vaeldrin
step << Horde
#completewith next
.gossipoption 40073 >>Talk to |cRXP_FRIENDLY_Kor Bloodtusk|r
.timer 5,Roleplay Duration
.goto 418,23.644,48.828
step << Horde
.goto 418,23.587,48.691
>>杀死|cRXP_ENEMY_Groundbreaker Brojai|r
.complete 30174,1 
.mob Groundbreaker Brojai
step << Horde
.goto 418,28.89,50.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
.turnin 30174 >>Turn in For Family
.target Sunwalker Dezco
step << Alliance
.isOnQuest 30359
.goto 418,23.58,48.84
.gossipoption 40353 >>Talk to |cRXP_FRIENDLY_Lyalia|r
.timer 10,RP
.target Lyalia
step << Alliance
.goto 418,23.53,48.75
>>杀死|cRXP_ENEMY_Groundbreaker Brojai|r
.complete 30359,1 
.mob groundbreaker brojai
step << Alliance
.goto 418,24.69,34.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorekeeper Vaeldrin|r
.turnin 30359 >>Turn in The Lord Reclaimer
.target Lorekeeper Vaeldrin
.accept 30445 >>接任务: |cRXP_WARN_青春之水|r
.timer 40,RP
step << Alliance
#completewith Turn in The Waters of Youth
.cast 441154 >>使用|T134491:0|t[Nostwin's Voucher]传送到无限集市。
.use 217930
.itemcount 217930,1
step << Alliance
.isQuestComplete 80446
.goto 393,75.04,45.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arturos|r
.turnin 80446 >>交任务: |cRXP_FRIENDLY_寻求组队|r
.target Arturos
step << Alliance
.isQuestComplete 80447
.goto 393,76.55,48.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
.turnin 80447 >>交任务: |cRXP_FRIENDLY_寻求团队|r
.target Pythagorus






step << Alliance
#completewith Turn in The Waters of Youth
.goto 393,67.15,43.64,10,0
.vendor >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy additional gems |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
.skipgossip
.target Lidamorrutu
step << Alliance
.goto 393,64.6,42.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah Treebender|r
.turnin 80448 >>Accept A Fresh Scene
.target Larah Treebender
step << Alliance
.goto 390,84.00,58.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
.accept 32246 >>接任务: |cRXP_WARN_寻找斥候|r
.target Lyalia
step << Alliance
#completewith Turn in The Waters of Youth
.aura -449510
.cast 449508 >>使用|T134488:0|t[Nostwin's Return Service]返回克拉萨朗荒野。
.use 449508
step << Alliance
.goto 418,24.71,34.03
#label Turn in The Waters of Youth
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyalia|r
.turnin 30445 >>Turn in The Waters of Youth
.target Lyalia
step
#include 3） 克拉萨朗野生动物园
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 8） 四风之谷3
#displayname Chapter 6 - Valley of the Four Winds Pt. 3
#title Valey of the Four Winds 3
#next 9) Kun-Lai Summit

step
#completewith next
.hs >>对懒惰的萝卜心
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Li|r, |cRXP_FRIENDLY_Grainer Pan|r, and |cRXP_FRIENDLY_Grainlord Kai|r
.goto 376,52.595,62.975
.target +Grainer Pan
.accept 30028 >>接任务: |cRXP_WARN_找回谷物|r
step
#loop
.goto 376,59.581,69.383,30,0
.goto 376,54.601,70.412,30,0
.goto 376,51.092,68.264,35,0
.goto 376,51.900,63.731,35,0
.goto 376,56.060,63.842,25,0
.goto 376,58.172,59.069,35,0
.goto 376,59.581,69.383,0
.goto 376,54.601,70.412,0
.goto 376,51.092,68.264,0
.goto 376,51.900,63.731,0
.goto 376,56.060,63.842,0
.goto 376,58.172,59.069,0
>>|cRXP_WARN_Click on the |cRXP_PICK_Stolen Malt Sacks|r|r to PICK |T133849:0|t[Sacks of Grain]
*Also look on top of buildings
.complete 30028,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grainlord Kai|r and |cRXP_FRIENDLY_Li Li|r
.turnin 30028 >>Turn in Grain Recovery
.goto 376,52.73,62.99
.target +Grainlord Kai
.turnin 30032 >>Turn in The Quest for Better Barley
.accept 30047 >>接任务: |cRXP_WARN_陈的口味|r
.goto 376,52.685,62.829
.target +Li Li
step
.xp >40,1
.goto 376,38.58,51.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gai Lan|r |cRXP_WARN_twice.|r
.accept 30052 >>接任务: |cRXP_WARN_除草大战|r

.skipgossip 57385,2
.complete 30053,2 
.target Gai Lan
step
.goto 376,38.58,51.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gai Lan|r twice
.skipgossip 57385,1
.complete 30053,2 
.target Gai Lan
step
.isOnQuest 30052
.gossipoption 40209 >>Talk to |cRXP_FRIENDLY_Gai Lan|r to start the quest. |cRXP_WARN_Don't finish it yet, just follow the guide|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Den Mudclaw|r and |cRXP_FRIENDLY_Mung-Mung|r
.accept 30056 >>接任务: |cRXP_WARN_农夫的女儿|r
.complete 30053,3 
.goto 376,44.24,34.23
.target +Den Mudclaw
.accept 30054 >>接任务: |cRXP_WARN_够了，真受够了|r
.goto 376,44.160,34.239
.target +Mung-Mung
.skipgossip 62385,1
step
.isOnQuest 30052
>>杀死|cRXP_WARN_Last Weed|r
*Click on |cRXP_ENEMY_Ugly Weed|r
*Run over the small weed
*|cRXP_WARN_Pick up and use the |cRXP_PICK_Weed-B-Gone Gas Bomb|r to destroy multiple small and medium ones at once|r
.goto 376,39.572,51.659
.skipgossip 57385,1
.complete 30052,1 
.mob Ugly Weed
.mob Nasty Weed
step
.isOnQuest 30052
.goto 376,38.57,51.73
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gai Lan|r
.turnin 30052 >>Turn in Weed War
.target Gai Lan
step
#completewith MinaMudclaw
>>杀死|cRXP_ENEMY_Springtail病毒|r。为|T133725:0|t[|cRXP-Loot_Verment Tooth|r]掠夺它们
.complete 30054,1 
.mob Springtail Gnasher
.mob Springtail Leaper
.mob Springtail Digger
.mob Springtail Thumper
step
#completewith next
.goto 376,43.286,40.939,8 >>|cRXP_WARN_进入洞穴|r
step
.goto 376,43.548,35.329,0
.goto 376,41.33,38.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mina Mudclaw|r
.turnin 30056 >>Turn in The Farmer's Daughter
.accept 30057 >>接任务: |cRXP_WARN_眼放橙光|r
.target Mina Mudclaw
step
#label MinaMudclaw
>>离开洞穴
.goto 376,44.18,34.47
.complete 30057,1 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mung-Mung|r and |cRXP_FRIENDLY_Den Mudclaw|r
.turnin 30054 >>Turn in Enough is Ookin' Enough
.goto 376,44.17,34.24
.target +Mung-Mung
.turnin 30057 >>Turn in Seeing Orange
.goto 376,44.259,34.205
.target +Den Mudclaw
step
.goto 376,48.31,33.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gardener Fran|r |cRXP_WARN_twice.|r
.accept 30050 >>接任务: |cRXP_WARN_园丁芳兰和洒水壶|r
.complete 30053,1 
.turnin 30053 >>Turn in Hop Hunting
.skipgossip 62377,2
.target Gardener Fran
step
#completewith next
.goto 376,48.31,33.46
.gossipoption 36034 >>Talk to |cRXP_FRIENDLY_Gardener Fran|r again to start the quest
step
>>|cRXP_WARN_使用|r[ExtraActionButton]|cRXP_WARN_在发光的蔬菜之间切换|r。你必须浇水的蔬菜类型大约每20秒切换一次
.goto 376,49.143,32.929,25,0
.goto 376,47.658,32.382,20,0
.goto 376,49.362,31.912,25,0
.goto 376,48.295,30.983,25,0
.goto 376,48.290,29.023,25,0
.goto 376,50.468,27.960,25,0
.goto 376,51.288,29.325,15,0
.goto 376,48.336,29.195,25,0
.complete 30050,1 
step
.goto 376,48.31,33.47
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gardener Fran|r
.turnin 30050 >>Turn in Gardener Fran and the Watering Can
.target Gardener Fran
step
.goto 376,54.28,38.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r
.turnin 30049 >>Turn in Doesn't Hold Water
.accept 30051 >>接任务: |cRXP_WARN_寻找活水|r
.target Mudmug
step
.isOnQuest 30051
.goto 376,54.28,38.74
.gossipoption 40623 >>Talk to |cRXP_FRIENDLY_Mudmug|r
step
#completewith Succula
>>|cRXP_WARN_运行到|cRXP_PICK_Swirling Pools|r，同时|cRXP_FRIENDLY_Mudmug|r跟随您|r。杀死正在生成的|cRXD_ENEMY_mobs|r
>>|cRXP_WARN_不要跑得离|cRXP_FRIENDLY_Mudmug|r太远|r
.complete 30051,2 
.mob Glade Pincher
.mob Waterbite Creeper
.mob Toothrow Skulker
step
.goto 376,55.97,33.84
>>杀死|cRXP_ENEMY_Kracor|r
.complete 32045,1 
.mob Kracor
step
.goto 376,55.130,25.580
>>杀死|cRXP_ENEMY_Thundergill|r
.complete 32045,2 
.mob Thundergill
step
#label Succula
.goto 376,51.439,26.673
>>杀死|cRXP_ENEMY_Succula|r
.complete 32045,3 
.mob Succula
step
.goto 376,55.95,49.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r
.turnin 30051 >>Turn in The Great Water Hunt
.accept 30172 >>接任务: |cRXP_WARN_一起走|r
.target Mudmug
step
.xp >40,1
#completewith next
>>这个任务应该会自动推送到你的任务日志中
.accept 30055 >>接任务: |cRXP_WARN_风暴烈酒的啤酒花|r
step
>>|cRXP_WARN_不要跑得离|cRXP_FRIENDLY_Mudmug|r太远|r
.goto 376,56.00,49.05
.complete 30172,1 
step
.xp >40,1
.goto 376,55.89,49.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.turnin 30055 >>Turn in Stormstout's Hops
.turnin 30047 >>Turn in The Chen Taste Test
.turnin 30172 >>Turn in Barreling Along
.accept 30073 >>接任务: |cRXP_WARN_帝王酒|r
.timer 30,Roleplay Duration
.target Chen Stormstout
step
.xp <40,1
.goto 376,55.89,49.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.turnin 30047 >>Turn in The Chen Taste Test
.turnin 30172 >>Turn in Barreling Along
.target Chen Stormstout
step
.xp >40,1
.isOnQuest 30073
#completewith next
>>Wait for the roleplay
.complete 30073,1 
step
.goto 376,55.14,47.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stonecarver Mac|r
.turnin 32045 >>Turn in Children of the Water
.target Stonecarver Mac
step
.xp >40,1
>>Wait for the roleplay
.goto 376,55.97,49.55
.complete 30073,1 
step
.xp >40,1
.goto 376,55.84,49.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.turnin 30073 >>Turn in The Emperor
.accept 30074 >>接任务: |cRXP_WARN_敲门|r
.target Chen Stormstout
step
.xp >40,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.goto 376,32.25,68.56
.turnin 30074 >>Turn in Knocking on the Door
.target Chen Stormstout
step
.xp >40,1
#completewith next
.goto 376,29.220,66.185,10 >>飞出NPC的范围以跳过角色扮演
step
.xp >40,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.accept 30075 >>接任务: |cRXP_LOOT_扫清道路|r
.goto 376,32.12,68.34
.target +Chen Stormstout
step
.xp >40,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mudmug|r, and |cRXP_FRIENDLY_Li Li|r
.accept 30076 >>接任务: |cRXP_WARN_最奇妙的液体|r
.goto 376,32.254,68.275
.target +Mudmug
.accept 30077 >>接任务: |cRXP_WARN_看那些木桶，伙计|r
.goto 376,32.34,68.48
.target +Li Li
step
.xp >40,1
#completewith BarreledPandaren
>>杀死|cRXP_ENEMY_Ale-Addled Hozen|r和|cRXP_ENEMY_Mischievous Virmen|r
.complete 30075,1 
.mob Ale-Addled Hozen
.mob Mischievous Virmen
step
.xp >40,1
#completewith BarreledPandaren
>>杀死|cRXP_ENEMY_Curious Water Spirits|r。为|T134800:0|t[|cRXP-Loot_SLittewater Essence |r]掠夺它们
.complete 30076,1 
.mob Curious Water Spirit
step
.xp >40,1
#label BarreledPandaren
#loop
.goto 376,37.869,64.733,35,0
.goto 376,35.533,66.383,35,0
.goto 376,37.869,64.733,0
.goto 376,35.533,66.383,0
>>|cRXP_WARN_Hide from |cRXP_ENEMY_Ook-Ook|r when he near
>>单击|cRXP_PICK_Barrered Pandaren|r释放它们
.complete 30077,1 
.target Barreled Pandaren
step
.xp >40,1
#completewith next
>>杀死|cRXP_ENEMY_Ale-Addled Hozen|r和|cRXP_ENEMY_Mischievous Virmen|r
.complete 30075,1 
.mob Ale-Addled Hozen
.mob Mischievous Virmen
step
.xp >40,1
#loop
.goto 376,36.702,64.690,30,0
.goto 376,36.858,71.038,30,0
.goto 376,36.702,64.690,0
.goto 376,36.858,71.038,0
>>杀死|cRXP_ENEMY_Curious Water Spirits|r。为|T134800:0|t[|cRXP-Loot_SLittewater Essence |r]掠夺它们
.complete 30076,1 
.mob Curious Water Spirit
step
.xp >40,1
#loop
.goto 376,33.576,64.610,35,0
.goto 376,30.822,68.634,35,0
.goto 376,37.986,64.710,35,0
.goto 376,33.576,64.610,0
.goto 376,30.822,68.634,0
.goto 376,37.986,64.710,0
>>杀死|cRXP_ENEMY_Ale-Addled Hozen|r和|cRXP_ENEMY_Mischievous Virmen|r
.complete 30075,1 
.mob Ale-Addled Hozen
.mob Mischievous Virmen
step
.xp >40,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Li Li, Mudmug, |cRXP_FRIENDLY_陈·风暴烈酒|r
.turnin 30077 >>Turn in Barrels, Man
.goto 376,36.13,69.06
.target +Li Li
.turnin 30076 >>Turn in The Fanciest Water
.goto 376,36.01,69.09
.target +Mudmug
.turnin 30075 >>交任务: |cRXP_FRIENDLY_扫清道路|r
.accept 30078 >>接任务: |cRXP_WARN_打扫房间|r
.goto 376,36.037,68.975
.target +Chen Stormstout
step
.xp >40,1
.group
#completewith FizzyYelloeAlemental
.gossipoption 39238 >>对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.goto 376,36.037,68.975
.target Chen Stormstout
step
.xp >40,1
.group
.goto 376,36.037,68.975,0
.goto 376,33.857,70.717
>>Kill |cRXP_ENEMY_Eddy|r
.complete 30078,1 
.mob Eddy
step
.xp >40,1
.group
.goto 376,36.037,68.975,0
.goto 376,34.588,70.465
>>杀死|cRXP_ENEMY_Jooga|r
*|cRXP_WARN_Click on |cRXP_PICK_Empty Kegs|r to stun him|r
.complete 30078,2 
.mob Jooga
step
.xp >40,1
.group
#label FizzyYelloeAlemental
.goto 376,36.037,68.975,0
.goto 376,38.67,69.34
>>杀死|cRXP_WARN_all the |r|cRXP_ENEMY_Fizzy Yellow Spirits|r以产生|cRXX_ENEMY_Fizzy Ye黄啤酒|r
>>杀死|cRXP_ENEMY_Fizzy Yellow Alemental |r
.complete 30078,3 
.mob Fizzy Yellow Spirits
.mob Fizzy Yellow Alemental
step
.xp >40,1
.group
.goto 376,36.00,69.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.turnin 30078 >>交任务: |cRXP_FRIENDLY_打扫房间|r
.target Chen Stormstout
step
.xp >45,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Tani, |cRXP_FRIENDLY_赫米特·奈辛瓦里二世|r
.accept 30183 >>接任务: |cRXP_WARN_猎虎|r
.goto 376,16.195,82.538
.target +Tani
.accept 30181 >>接任务: |cRXP_WARN_猎穆山兽|r
.goto 376,16.068,82.618
.target +Hemet Nesingwary Jr.
step
.xp >45,1
#completewith next
>>杀死|cRXP_ENEMY_Dustback Mushan|r
.complete 30181,1 
.mob Dustback Mushan
step
.xp >45,1
#loop
.goto 376,16.099,67.419,42,0
.goto 376,12.860,68.913,30,0
.goto 376,10.496,71.845,30,0
.goto 376,15.001,73.442,40,0
.goto 376,11.775,80.562,30,0
.goto 376,14.325,78.846,42,0
.goto 376,16.099,67.419,0
.goto 376,12.860,68.913,0
.goto 376,10.496,71.845,0
.goto 376,15.001,73.442,0
.goto 376,11.775,80.562,0
.goto 376,14.325,78.846,0
>>杀死|cRXP_ENEMY_Gorge Stalker|r
.complete 30183,1 
.mob Gorge Stalker
step
.xp >45,1
#loop
.goto 376,14.440,66.456,55,0
.goto 376,26.025,68.550,42,0
.goto 376,26.957,80.187,42,0
.goto 376,11.589,79.370,45,0
.goto 376,14.440,66.456,0
.goto 376,26.025,68.550,0
.goto 376,26.957,80.187,0
.goto 376,11.589,79.370,0
>>杀死|cRXP_ENEMY_Dustback Mushan|r
.complete 30181,1 
.mob Dustback Mushan
step
.xp >45,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Tani, |cRXP_FRIENDLY_赫米特·奈辛瓦里二世|r
.turnin 30183 >>Turn in Stalker Mastery
.accept 30182 >>接任务: |cRXP_WARN_猎狐狸|r
.goto 376,16.195,82.538
.target +Tani
.turnin 30181 >>Turn in Mushan Mastery
.goto 376,16.068,82.626
.target +Hemet Nesingwary Jr.
step
.xp >45,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里二世|r, Matt "Lucky" Gotcher
.accept 30184 >>接任务: |cRXP_WARN_猎穆山兽：黑暗之皮|r
.goto 376,16.009,82.484
.target +Hemet Nesingwary Jr.
.accept 32038 >>接任务: |cRXP_WARN_雄鹿大师|r
.goto 376,15.90,82.24
.target +Matt "Lucky" Gotcher
step
.xp >45,1
#completewith DarkhidesHead
>>杀死|cRXP_ENEMY_Wilderland雄鹿|r
.complete 32038,1 
.mob Wilderland Stag
step
.xp >45,1
#completewith DarkhidesHead
>>杀死|cRXP_ENEMY_Sly狐狸|r和|cRXX_ENEMY_Sly小狗|r
*|cRXP_WARN_Most of the time they're invisible|r
.complete 30182,1 
.mob Sly Fox
.mob Sly Pup
step
.xp >45,1
#label DarkhidesHead
>>杀死|cRXP_ENEMY_Darkhide|r。掠夺他|T132243:0|t[|cRXD_Loot_DDarkhide的头|r]
.goto 376,26.106,75.552
.complete 30184,1 
.mob Darkhide
step
.xp >45,1
#completewith WilderlandStags
#hidewindow
#loop
.goto 376,22.277,76.530,25,0
.goto 376,20.213,69.976,42,0
.goto 376,28.106,68.363,45,0
.goto 376,30.175,82.637,35,0
.goto 376,20.904,81.513,42,0
.goto 376,22.277,76.530,0
.goto 376,20.213,69.976,0
.goto 376,28.106,68.363,0
.goto 376,30.175,82.637,0
.goto 376,20.904,81.513,0
+1
step
.xp >45,1
#completewith next
>>杀死|cRXP_ENEMY_Wilderland雄鹿|r
.complete 32038,1 
.mob Wilderland Stag
step
.xp >45,1
>>杀死|cRXP_ENEMY_Sly狐狸|r和|cRXX_ENEMY_Sly小狗|r
*|cRXP_WARN_Most of the time they're invisible|r
.complete 30182,1 
.mob Sly Fox
.mob Sly Pup
step
.xp >45,1
#label WilderlandStags
>>杀死|cRXP_ENEMY_Wilderland雄鹿|r
.complete 32038,1 
.mob Wilderland Stag
step
.goto 376,15.89,82.24
.xp >45,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matt "Lucky" Gotcher|r
.turnin 32038 >>Turn in Stag Mastery
.target Matt "Lucky" Gotcher
step
.xp >45,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: Tani, |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 30182 >>Turn in Fox Mastery
.goto 376,16.201,82.534
.target +Tani
.turnin 30184 >>Turn in Mushan Mastery: Darkhide
.goto 376,16.01,82.50
.target +Hemet Nesingwary
step
.goto 376,16.07,82.62
.xp >45,1
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里二世|r
.accept 30185 >>接任务: |cRXP_WARN_猎龟|r
.target Hemet Nesingwary Jr.
step
.xp >45,1
#loop
.goto 376,18.753,78.292,20,0
.goto 376,22.170,75.040,20,0
.goto 376,21.877,71.745,20,0
.goto 376,19.650,72.880,20,0
.goto 376,18.753,78.292,0
.goto 376,22.170,75.040,0
.goto 376,21.877,71.745,0
.goto 376,19.650,72.880,0
>>杀死|cRXP_ENEMY_Bulgeback乌龟|r。掠夺它们以获得|T1:0|t[|cRXP-Loot_完整的龟壳|r]
.complete 30185,1 
.mob Bulgeback Tortoise
step
.xp >45,1
.goto 376,19.91,75.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里二世|r
.turnin 30185 >>Turn in Tortoise Mastery
.target Hemet Nesingwary Jr.
.accept 30186 >>接任务: |cRXP_WARN_父亲的压力|r
step
.xp >45,1
#title Swim down
#completewith RescueHemetJr
.goto 376,21.834,74.394,10 >>|cRXP_WARN_进入水下洞穴|r
step
.xp >45,1
#completewith RescueHemetJr
.goto 376,24.537,74.631
.gossipoption 40247 >>对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里二世|r
step
.xp >45,1
#label RescueHemetJr
.goto 376,24.537,74.631
>>杀死|cRXP_ENEMY_Torjar的Bane|r
.complete 30186,1 
.mob Torjar's Bane
step
.xp >45,1
.goto 376,16.01,82.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赫米特·奈辛瓦里|r
.turnin 30186 >>Turn in Parental Mastery
.target Hemet Nesingwary
step
.goto 376,19.87,56.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
.turnin 29872 >>Turn in Lin Tenderpaw
.accept 29981 >>接任务: |cRXP_WARN_堵住虫群|r
.target Lin Tenderpaw
step
.goto 376,19.55,56.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loon Mai|r
.accept 29982 >>接任务: |cRXP_WARN_疏散命令|r
.target Loon Mai
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haiyun Greentill|r
.goto 376,15.85,56.27
.skipgossip 57123,1
.skipgossip 57124,1
.complete 29982,3 
.target Haiyun Greentill
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mia Marlfur|r
.goto 376,15.48,54.93
.skipgossip 57126,1
.skipgossip 57127,1
.complete 29982,4 
.target Mia Marlfur
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feng Shadepaw|r
.goto 376,12.850,55.721
.skipgossip 57121,1
.skipgossip 57122,1
.complete 29982,2 
.target Feng Shadepaw
step
#completewith next
>>杀死|cRXP_ENEMY_Ik'thik mantid|r
.complete 29981,1 
.mob Ik'thik Wingblade
.mob Ik'thik Swiftclaw
step
#completewith next
.gossipoption 40360 >>Talk to |cRXP_FRIENDLY_Wei Blacksoil|r once
.timer 1,Roleplay Duration
step
>>杀死|cRXP_ENEMY_Ik'thik救护车|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wei Blacksoil|r twice
.goto 376,7.15,54.83
.skipgossip 57120,1
.complete 29982,1 
.mob Ik'thik Ambusher
.target Wei Blacksoil
step
#loop
.goto 376,9.85,47.00,42,0
.goto 376,11.64,52.86,42,0
.goto 376,12.50,60.47,38,0
.goto 376,9.46,60.36,38,0
.goto 376,9.85,47.00,0
.goto 376,11.64,52.86,0
.goto 376,12.50,60.47,0
.goto 376,9.46,60.36,0
>>杀死|cRXP_ENEMY_Ik'thik mantid|r
.complete 29981,1 
.mob Ik'thik Wingblade
.mob Ik'thik Swiftclaw
step
.goto 376,19.55,56.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loon Mai|r
.turnin 29981 >>Turn in Stemming the Swarm
.turnin 29982 >>交任务: |cRXP_FRIENDLY_撤退行动|r Orders
.accept 29983 >>接任务: |cRXP_WARN_隐秘大师|r
.target Loon Mai
step
.goto 376,18.29,31.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
.turnin 29983 >>Turn in The Hidden Master
.accept 29984 >>接任务: |cRXP_WARN_不屈之拳：竹之试炼|r
.target Master Bruised Paw
step
.isOnQuest 29984
.vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
.timer 26,Roleplay Duration
.skipgossip 56714,1
.target Master Bruised Paw
step
>>当屏幕下半部分的圆圈填满并发光时，使用|T132334:0|t[不屈服的拳头]（1）|cRXP_WARN_
.goto 376,18.29,31.22
.complete 29984,1 
step
.goto 376,18.30,31.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
.turnin 29984 >>Turn in Unyielding Fists: Trial of Bamboo
.target Master Bruised Paw
.accept 29985 >>接任务: |cRXP_WARN_迷雾重重|r
.accept 29986 >>接任务: |cRXP_WARN_驱雾火盆|r
step
.goto 376,18.06,31.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
.accept 29992 >>接任务: |cRXP_WARN_以柔掌之名，以柔掌之誉|r
.target Lin Tenderpaw
step
#completewith SouthernFogWard
>>杀死|cRXP_ENEMY_Mist化身|r
.complete 29985,1 
.mob Mist Incarnation
step
#completewith SouthernFogWard
>>|cRXP_WARN_Click on the |cRXP_PICK_Jademons|r to PICK up |r|T136041:0|t[Jademoon Leaves]
.complete 29992,1 
step
>>单击|cRXP_PICK_Northern Fog Ward|r
.goto 376,16.017,32.103
.complete 29986,1 
step
>>单击|cRXP_PICK_Western Fog Ward|r
.goto 376,14.853,36.827
.complete 29986,2 
step
#label SouthernFogWard
>>单击|cRXP_PICK_Southern Fog Ward|r
.goto 376,18.104,41.459
.complete 29986,3 
step
#completewith MistIncarnation
#hidewindow
#loop
.goto 376,18.264,38.237,25,0
.goto 376,19.074,35.042,30,0
.goto 376,17.877,33.701,25,0
.goto 376,16.855,29.516,25,0
.goto 376,15.910,33.957,25,0
.goto 376,14.206,41.283,25,0
.goto 376,18.896,41.497,25,0
.goto 376,18.264,38.237,0
.goto 376,19.074,35.042,0
.goto 376,17.877,33.701,0
.goto 376,16.855,29.516,0
.goto 376,15.910,33.957,0
.goto 376,14.206,41.283,0
.goto 376,18.896,41.497,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Mist化身|r
.complete 29985,1 
.mob Mist Incarnation
step
>>|cRXP_WARN_Click on the |cRXP_PICK_Jademons|r to PICK up |r|T136041:0|t[Jademoon Leaves]
.complete 29992,1 
step
#label MistIncarnation
>>杀死|cRXP_ENEMY_Mist化身|r
.complete 29985,1 
.mob Mist Incarnation
step
.goto 376,18.06,31.01
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r
.turnin 29992 >>Turn in Tenderpaw By Name, Tender Paw By Reputation
.target Lin Tenderpaw
step
.goto 376,18.30,31.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
.turnin 29985 >>Turn in They Will Be Mist
.turnin 29986 >>Turn in Fog Wards
.accept 29987 >>接任务: |cRXP_WARN_不屈之拳：木之试炼|r
.target Master Bruised Paw
step
.isOnQuest 29987
.vehicle >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
.timer 18,Roleplay Duration
.goto 376,18.30,31.23
.skipgossip 56714,1
.target Master Bruised Paw
step
.goto 376,18.28,32.14
>>当屏幕下半部分的圆圈填满并发光时，使用|T132334:0|t[不屈服的拳头]（1）|cRXP_WARN_
.complete 29987,1 
step
.goto 376,18.29,31.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Bruised Paw|r
.turnin 29987 >>Turn in Unyielding Fists: Trial of Wood
.target Master Bruised Paw
TODO for Loremaster: Add missing quests after this point
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 9) Kun-Lai Summit
#displayname Chapter 7 - Kun-Lai Summit
#title Kun-Lai Summit
#next 9a) Townlong Steppes



step <<Monk
#include 1) Monk Quests
step
.goto 371,65.25,37.20,30,0
.cast 437035 >>使用|T134376:0|t[青铜计时器]传送到龙骑任务。
.itemcount 216712,1
.use 216712
step << Alliance
#completewith next
.goto 371,65.21,37.46,5,0
.goto 371,45.8,84.6,40 >>单击|cRXP_PICK_Portal|r返回。
step << Alliance
.isOnQuest 80013
.goto 418,86.84,11.06,10 >>|cRXP_WARN_Follow the Arrow|r
step << Alliance
#completewith next
.cast 441154 >>使用|T134491:0|t[Nostwin's Voucher]传送到无限集市。
.use 217930
.itemcount 217930,1
step << Horde
.goto 371,65.25,37.20,30,0
.cast 437035 >>使用|T134376:0|t[青铜计时器]传送到龙骑任务。
.itemcount 216712,1
.use 216712
step << Horde
.goto 371,65.21,37.46,5,0
.goto 371,28.59,14.03,40 >>单击|cRXP_PICK_Portal|r返回。
.itemcount 216712,1
step << Horde
#include 7） 昆莱峰会破坏者
step << Horde
#include 7） 昆莱峰会我的儿子
step << Alliance
.isQuestComplete 80446
.goto 393,75.04,45.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arturos|r
.turnin 80446 >>交任务: |cRXP_FRIENDLY_寻求组队|r
.target Arturos
step << Alliance
.isQuestComplete 80447
.goto 393,76.55,48.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
.turnin 80447 >>交任务: |cRXP_FRIENDLY_寻求团队|r
.target Pythagorus






step << Alliance
#completewith The Lorewalkers
.goto 393,67.15,43.64,10,0
.vendor >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy additional gems |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
.skipgossip
.target Lidamorrutu
step << Alliance
.goto 393,64.6,42.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah Treebender|r
.turnin 80448 >>交任务: |cRXP_FRIENDLY_新鲜场景|r
.target Larah Treebender
step << Alliance
#label The Lorewalkers
.goto 390,85.50,60.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scrollmaker Resshi|r |cRXP_WARN_underneath shrine of seven stars|r
.accept 31367 >>接任务: |cRXP_WARN_游学者|r
.target Scrollmaker Resshi
step << Alliance
.goto 390,84.96,60.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米什基|r, while mounted
.complete 31367,1 
.target Mishi
step << Alliance
.goto 390,81.41,31.99,20 >>Enter the Temple
step << Alliance
.goto 390,83.28,29.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31367 >>Turn in The Lorewalkers
.target Lorewalker Cho
step << Alliance
.goto 390,81.41,31.99,20 >>Leave the Temple
step
.goto 390,80.78,33.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_克罗米|r
.accept 33231 >>接任务: |cRXP_WARN_永恒岛之旅|r
.target Chromie





step << Horde
.goto 379,72.27,91.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Bramblestaff|r

.accept 30457 >>接任务: |cRXP_WARN_引出他们的头儿|r
.target Mayor Bramblestaff





step << Horde
.goto 379,71.57,92.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Cheng|r
.accept 30460 >>接任务: |cRXP_WARN_救死扶伤|r
.target Apothecary Cheng
step << Horde
.goto 379,70.75,90.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Hsieh|r
.accept 30459 >>接任务: |cRXP_WARN_多多益善|r
.target Commander Hsieh
step << Alliance
.goto 379,71.57,92.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Cheng|r
.accept 30460 >>接任务: |cRXP_WARN_救死扶伤|r
.target Apothecary Cheng
step << Alliance
.goto 379,72.27,91.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Bramblestaff|r

.accept 30457 >>接任务: |cRXP_WARN_引出他们的头儿|r
.target Mayor Bramblestaff
step << Alliance
.goto 379,70.75,90.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Hsieh|r
.accept 30459 >>接任务: |cRXP_WARN_多多益善|r
.target Commander Hsieh
step
#completewith Injured Binan Warrior
#hidewindow
#loop
.goto 379,69.85,90.86,25,0
.goto 379,68.56,90.96,25,0
.goto 379,67.88,89.11,25,0
.goto 379,67.97,87.75,25,0
.goto 379,68.88,87.10,25,0
.goto 379,70.76,89.27,25,0
.goto 379,69.85,90.86,0
.goto 379,68.56,90.96,0
.goto 379,67.88,89.11,0
.goto 379,67.97,87.75,0
.goto 379,68.88,87.10,0
.goto 379,70.76,89.27,0
+1
step
#completewith Dit Da Jow
>>杀死|cRXP_ENEMY_Batari部落成员|r和|cRXD_ENEMY_巴塔里火战士|r|cRXP_WARN_他在杀死10x后重生|cRXX_ENEMY_巴塔里部落成员|r|r
.complete 30457,1 
.complete 30457,2 
.mob Bataari Flamecaller
.mob bataari fire-warrior
.mob Bataari Yaungol
step
#completewith Dit Da Jow
>>单击|cRXP_PICK_Arrows|r
.complete 30459,1 
step
#label Dit Da Jow
>>使用|T132798:0|t[Dit Da Jow]on |cRXP_FRIENDLY_受伤的Binan Warrior|r
*|cRXP_WARN_Priotize your own healing spells, if you have any.|r
.complete 30460,1 
.use 79819
.target Injured Binan Warrior
step
#completewith next
>>使用|T132798:0|t[Dit Da Jow]on |cRXP_FRIENDLY_受伤的Binan Warrior|r
*|cRXP_WARN_Priotize your own healing spells, if you have any.|r
.complete 30460,1 
.use 79819
.target Injured Binan Warrior
step
>>单击|cRXP_PICK_Arrows|r
.complete 30459,1 
step
#label Injured Binan Warrior
>>使用|T132798:0|t[Dit Da Jow]on |cRXP_FRIENDLY_受伤的Binan Warrior|r
*|cRXP_WARN_Priotize your own healing spells, if you have any.|r
.complete 30460,1 
.use 79819
.target Injured Binan Warrior
step
.goto 379,70.76,90.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Hsieh|r
.turnin 30459 >>Turn in All of the Arrows
.target Commander Hsieh
step
.goto 379,72.27,91.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Bramblestaff|r
.turnin 30457 >>Turn in Call Out Their Leader
.target Mayor Bramblestaff





step
.goto 379,71.57,92.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Cheng|r
.turnin 30460 >>Turn in Hit Medicine
.target Apothecary Cheng
.accept 30508 >>接任务: |cRXP_WARN_海军上将泰勒醒了|r <<Alliance
.accept 30511 >>接任务: |cRXP_WARN_纳兹戈林将军苏醒了|r <<Horde
step << Alliance
.goto 379,71.48,93.18,5,0
.goto 379,71.53,93.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r |cRXP_WARN_inside the house upstairs.|r
.turnin 30508 >>Turn in Admiral Taylor has Awakened
.target Admiral Taylor
.accept 30512 >>接任务: |cRXP_WARN_西风之息|r
step << Alliance
#include 7） 昆莱峰会我的儿子
step << Alliance
#include 7） 昆莱峰会破坏者





step << Horde
.goto 379,71.48,93.18,5,0
.goto 379,71.65,93.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 30511 >>Turn in General Nazgrim has Awakened
.accept 30513 >>接任务: |cRXP_WARN_东风之眠|r
.target General Nazgrim
step << Alliance
.goto 379,58.87,80.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Bo|r
.complete 30512,1 
.skipgossip 63754,1
.target Farmhand Bo
step << Alliance
.goto 379,56.34,84.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Tsulan|r
.complete 30512,2 
.skipgossip 63542,1
.target Elder Tsulan
step <<Alliance
.goto 379,56.34,84.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Tsulan|r
.turnin 30512 >>Turn in Westwind Rest
.target Elder Tsulan
.accept 30514 >>接任务: |cRXP_WARN_接受挑战|r
step << Horde
.goto 379,63.68,86.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Ko|r
.complete 30513,1 
.target Farmhand Ko
.skipgossip 63751,1
step << Horde
.goto 379,61.80,82.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
.complete 30513,2 
.skipgossip 63535,1
.target Elder Shiao
step << Horde
.goto 379,61.19,82.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
.turnin 30513 >>Turn in Eastwind Rest
.accept 30515 >>接任务: |cRXP_WARN_接受挑战|r
.target Elder Shiao
step
#completewith next
.goto 379,58.19,84.11
.cast 8386 >>单击|cRXP_PICK_Banner |r调用|cRXP_ENEMY_Ur-Bataar|r|cRXP-WARN_to调用|r|cRXP_ENEMY_Ur-Betaar|r
step
.convertquest 30514,30515 <<Horde
.goto 379,58.20,84.35
>>杀死|cRXP_ENEMY_Ur-Bataar|r
.complete 30514,1 
.mob ur-bataar
step << Alliance
.goto 379,54.69,84.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Tsulan|r
.turnin 30514 >>Turn in Challenge Accepted
.target Elder Tsulan
step << Alliance
.goto 379,53.77,82.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.accept 30575 >>接任务: |cRXP_WARN_赶牛|r
.target Admiral Taylor
step << Alliance
.goto 379,54.08,82.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kai the Restless|r
.home >>将你的炉石设置为西风休息
.target Kai the Restless
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully“The Pickle”McLeary|r |cRXP_FRIENDLY_Elder Tsulan|r
.accept 30583 >>接任务: |cRXP_WARN_食物危机|r
.goto 379,54.15,83.30
.accept 30619 >>接任务: |cRXP_WARN_魔古族？！哦，不！|r
.goto 379,54.18,83.43
.target Elder Tsulan
.target Sully“The Pickle”McLeary
step << Alliance
.goto 379,53.78,84.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Bo|r
.accept 30569 >>接任务: |cRXP_WARN_农场的麻烦|r
.target Farmhand Bo
step <<Alliance
#loop
.goto 379,53.45,83.36,10,0
.goto 379,53.46,83.08,10,0
.goto 379,53.68,83.28,10,0
.goto 379,53.45,83.36,0
.goto 379,53.46,83.08,0
.goto 379,53.68,83.28,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
.accept 30593 >>接任务: |cRXP_WARN_复活的雕像|r
.target Mishka
step << Horde
.goto 379,61.58,80.18
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
.turnin 30515 >>Turn in Challenge Accepted
.target Elder Shiao
step << Horde
.goto 379,63.00,80.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.accept 31256 >>接任务: |cRXP_WARN_赶牛|r
.target General Nazgrim
step << Horde
.goto 379,54.08,82.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mai the Sleepy|r
.home >>将你的炉石设置为东风休息
.target Mai the Sleepy
step << Horde
.goto 379,62.70,80.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.accept 30594 >>接任务: |cRXP_WARN_复活的雕像|r
.target Shademaster Kiryn
step << Horde
.goto 379,62.78,79.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.accept 31251 >>接任务: |cRXP_WARN_绝世美肉！|r
.target Rivett Clutchpop
step << Horde
.goto 379,62.53,79.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Ko|r
.accept 30570 >>接任务: |cRXP_WARN_农场的麻烦|r
.target Farmhand Ko
step << Horde
.goto 379,62.33,79.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
.accept 30620 >>接任务: |cRXP_WARN_魔古族？！哦，不！|r
.target Elder Shiao
step
#completewith Profiting off of the Past
.convertquest 30575,31256 << Horde
.isOnQuest 30575,31256

+与3|cRXP_FRIENDLY_牦牛互动|r让他们跟着你|cRXP_WARN_别担心你和牦牛之间的距离|r|cFFFF0000绳子不应该断了。完成任务时无法完成此步骤|r
.target Captured Yak
.mob Wild Plains Yak
step
#completewith Profiting off of the Past
.convertquest 30583,31251 << Horde
>>杀死|cRXP_ENEMY_Kun-lai野生动物|r为|cRXP_Loot_Kun-Lai Meaty Bits|r掠夺它们
.complete 30583,1 
.mob Highlands Calf
.mob Highlands Mushan
.mob Razorquill Porcupine
.mob Summit Bonestripper
step
#label Profiting off of the Past
.goto 379,59.61,78.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bao Jian|r
.accept 30595 >>接任务: |cRXP_WARN_生财有道|r
.target Bao Jian
step
#completewith Mogujia Soul-caller
.isOnQuest 30595
+如果你发现任何|cRXP_PICK_Bottles|r，点击它们获得加速和dmg buff。
*|cRXP_WARN_Refresh its duration if you spot another.|r
step
.convertquest 30593,30594 << Horde
#loop
.goto 379,58.84,76.29,40,0
.goto 379,57.77,76.89,40,0
.goto 379,56.62,76.53,40,0
.goto 379,56.88,75.53,40,0
.goto 379,57.96,74.50,40,0
.goto 379,59.28,73.51,40,0
.goto 379,59.98,75.57,20,0
.goto 379,58.84,76.29,0
.goto 379,57.77,76.89,0
.goto 379,56.62,76.53,0
.goto 379,56.88,75.53,0
.goto 379,57.96,74.50,0
.goto 379,59.28,73.51,0
.goto 379,59.98,75.57,0
>>杀死|cRXP_ENEMY_Terracotta Warriors|r和|cRXP_ENEMY_ Terracotta Guardians|r。掠夺它们以获取|cRXD_Loot_Mogu遗迹|r|cRXP_WARN_另外单击地面上的|cRXP_PICK_Mogu遗迹|r|cRXP_WARN_|r|r
.complete 30593,1 
.complete 30595,1 
.mob Terracotta Guardian
.mob Terracotta Warrior



step
.convertquest 30619,30620 << Horde
.goto 379,58.13,70.92
>>杀死|cRXP_ENEMY_Mogujia灵魂召唤者|r
.complete 30619,1 
.mob mogujia soul-caller
step
#label Mogujia Soul-caller
.goto 379,59.60,78.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bao Jian|r
.turnin 30595 >>Turn in Profiting off of the Past
.target Bao Jian
step
#completewith next
>>杀死|cRXP_ENEMY_Kun-lai野生动物|r为|cRXP_Loot_Kun-Lai Meaty Bits|r掠夺它们
.complete 30583,1 
.mob Highlands Calf
.mob Highlands Mushan
.mob Razorquill Porcupine
.mob Summit Bonestripper
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Chow|r and |cRXP_FRIENDLY_Uyen Chow|r
.turnin 30569 >>Turn in Trouble on the Farmstead << Alliance
.turnin 30570 >>Turn in Trouble on the Farmstead << Horde
.accept 30571 >>接任务: |cRXP_WARN_解救雇农|r
.goto 379,60.25,85.81
.accept 30581 >>接任务: |cRXP_WARN_……锅呢？|r
.goto 379,60.17,85.93
.target Uyen Chow
.target Farmer Chow
step
#completewith Back to Westwind Rest
.isOnQuest 30571
+如果你发现任何|cRXP_PICK_Bottles|r，点击它们获得加速和dmg buff。
*|cRXP_WARN_Refresh its duration if you spot another.|r
step
#completewith Farmstead Slaves
#hidewindow
#loop
.goto 379,60.88,86.97,40,0
.goto 379,61.29,86.14,40,0
.goto 379,61.92,87.15,40,0
.goto 379,61.87,87.85,40,0
.goto 379,61.31,87.85,40,0
.goto 379,61.41,88.37,40,0
.goto 379,60.79,88.00,40,0
.goto 379,60.50,87.52,40,0
.goto 379,58.87,88.61,40,0
.goto 379,58.38,88.40,40,0
.goto 379,58.31,89.41,40,0
.goto 379,58.33,90.11,40,0
.goto 379,58.85,90.11,40,0
.goto 379,58.95,89.78,40,0
.goto 379,60.88,86.97,0
.goto 379,61.29,86.14,0
.goto 379,61.92,87.15,0
.goto 379,61.87,87.85,0
.goto 379,61.31,87.85,0
.goto 379,61.41,88.37,0
.goto 379,60.79,88.00,0
.goto 379,60.50,87.52,0
.goto 379,58.87,88.61,0
.goto 379,58.38,88.40,0
.goto 379,58.31,89.41,0
.goto 379,58.33,90.11,0
.goto 379,58.85,90.11,0
.goto 379,58.95,89.78,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Ordo监督|r以营救|cRXP_FRIENDLY_Farmstead奴隶|r
.complete 30571,1 
.mob Ordo Raider
.mob Ordo Overseer
step
>>杀死|cRXP_ENEMY_Wasally Wirmen|r掠夺他很多|cRXP_Loot_Root蔬菜|r|cRXP_WARN_另外单击|cRX_PICK_Root Vegetables|r|r
.complete 30581,1 
.mob Wascally Wirmen
step
#label Farmstead Slaves
>>杀死|cRXP_ENEMY_Ordo监督|r以营救|cRXP_FRIENDLY_Farmstead奴隶|r
.complete 30571,1 
.mob Ordo Raider
.mob Ordo Overseer
step
.goto 379,60.02,88.45
>>点击|cRXP_PICK_Root Vegetable|r|cRXP-WARN_in小房子旁边|r
.complete 30581,2 
.mob Cookie McYaungol
step
#label Back to Westwind Rest
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uyen Chow|r and |cRXP_FRIENDLY_Farmer Chow|r
.turnin 30581 >>Turn in ... and the Pot, Too!
.goto 379,60.17,85.92
.turnin 30571 >>Turn in Farmhand Freedom
.accept 31252 >>接任务: |cRXP_WARN_返回西风之息|r << Alliance
.accept 31253 >>接任务: |cRXP_WARN_返回东风之眠|r << Horde
.goto 379,60.24,85.8
.target Uyen Chow
.target Farmer Chow
step << Alliance
#completewith WildPlaneYakC
#hidewindow
#loop
.goto 379,55.21,86.24,40,0
.goto 379,53.95,88.55,40,0
.goto 379,53.73,90.23,40,0
.goto 379,51.77,88.90,40,0
.goto 379,50.04,88.73,40,0
.goto 379,50.07,85.97,40,0
.goto 379,50.01,84.46,40,0
.goto 379,51.98,81.15,40,0
.goto 379,54.55,79.55,40,0
.goto 379,55.21,86.24,0
.goto 379,53.95,88.55,0
.goto 379,53.73,90.23,0
.goto 379,51.77,88.90,0
.goto 379,50.04,88.73,0
.goto 379,50.07,85.97,0
.goto 379,50.01,84.46,0
.goto 379,51.98,81.15,0
.goto 379,54.55,79.55,0
+1
step << Horde
#completewith WildPlaneYakC
#hidewindow
#loop
.goto 379,63.51,84.80,40,0
.goto 379,65.95,85.31,40,0
.goto 379,67.45,80.68,40,0
.goto 379,66.52,77.04,40,0
.goto 379,64.40,78.05,40,0
.goto 379,63.51,84.80,0
.goto 379,65.95,85.31,0
.goto 379,67.45,80.68,0
.goto 379,66.52,77.04,0
.goto 379,64.40,78.05,0
+1
step
#completewith next

+与3|cRXP_FRIENDLY_牦牛互动|r
*|cFFFF0000If you already have 3 yaks following you ignore this step.|r

.target Captured Yak
.mob Wild Plains Yak
step
#label Kun-Lai Meaty Bits
>>杀死|cRXP_ENEMY_Kun-lai野生动物|r为|cRXP_Loot_Kun-Lai Meaty Bits掠夺它们|r
.complete 30583,1 
.mob Highlands Calf
.mob Highlands Mushan
.mob Razorquill Porcupine
.mob Summit Bonestripper






step
#completewith Yaksroundedup
#label WildPlaneYakA

*|cRXP_WARN_If you already have 3 yaks following you ignore this step.|r
.aura 114661,1+ >>单击|cRXP_FRIENDLY_Wild Plane Yaks|r。
.target Captured Yak
.mob Wild Plains Yak
step
#requires WildPlaneYakA
#completewith Yaksroundedup
#label WildPlaneYakB

*|cRXP_WARN_If you already have 3 yaks following you ignore this step.|r
.cast 114653 >>单击|cRXP_FRIENDLY_Wild Plane Yaks|r。
.target Captured Yak
.mob Wild Plains Yak
step
#requires WildPlaneYakB
#completewith Yaksroundedup
#label WildPlaneYakC

*|cRXP_WARN_If you already have 3 yaks following you ignore this step.|r
.cast 114653 >>单击|cRXP_FRIENDLY_Wild Plane Yaks|r。
.target Captured Yak
.mob Wild Plains Yak
step
#label Yaksroundedup
.goto 379,54.08,83.57 << Alliance
.goto 379,62.48,80.14 << Horde
>>|cRXP_WARN_当您有3个|cRXP_FRIENDLY_Captured Yaks|r时，请按照箭头操作。|r
.complete 30575,1 
step << Alliance
#completewith Mishka
.isOnQuest 30593
+如果你发现任何|cRXP_PICK_Bottles|r，点击它们获得加速和dmg buff。
*|cRXP_WARN_Refresh its duration if you spot another.|r
step << Alliance
.goto 379,53.79,84.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Bo|r
.turnin 31252 >>Turn in Back to Westwind Rest
.target Farmhand Bo
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Tsulan|r and |cRXP_FRIENDLY_Sully“The Pickle”McLeary|r
.turnin 30619 >>Turn in Mogu?! Oh No-gu!
.accept 30650 >>接任务: |cRXP_WARN_熊猫人囚徒|r
.goto 379,54.17,83.43
.turnin 30583 >>Turn in Blue Dwarf Needs Food Badly
.accept 30651 >>接任务: |cRXP_WARN_炸药桶的乐趣|r
.goto 379,54.17,83.28
.target Sully“The Pickle”McLeary
.target Elder Tsulan
step << Alliance
.goto 379,53.76,82.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r |cRXP_WARN_inside the tent.|r
.turnin 30575 >>Turn in Round 'Em Up
.accept 30652 >>接任务: |cRXP_WARN_帐内导能|r

.target Admiral Taylor
step << Alliance
.isOnQuest 30652
.goto 379,53.84,83.02,10 >>Leave the tent.
step << Alliance
#label Mishka
#loop
.goto 379,53.45,83.36,10,0
.goto 379,53.46,83.08,10,0
.goto 379,53.68,83.28,10,0
.goto 379,53.45,83.36,0
.goto 379,53.46,83.08,0
.goto 379,53.68,83.28,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
.turnin 30593 >>Turn in Deanimate the Reanimated
.target Mishka
step << Horde
.goto 379,62.78,79.90
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 31251 >>Turn in Best Meals Anywhere!
.target Rivett Clutchpop
step << Horde
.goto 379,62.54,79.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmhand Ko|r
.turnin 31253 >>Turn in Back to Eastwind Rest
.target Farmhand Ko
step << Horde
.goto 379,62.34,79.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
.turnin 30620 >>Turn in Mogu?! Oh No-gu!
.accept 30655 >>接任务: |cRXP_WARN_熊猫人囚徒|r
.target Elder Shiao
step << Horde
.goto 379,62.73,79.94
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.accept 30656 >>接任务: |cRXP_WARN_炸药桶的乐趣|r
.target Rivett Clutchpop
step << Horde
.goto 379,63.00,80.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 31256 >>Turn in Round 'Em Up
.target General Nazgrim
.accept 30657 >>接任务: |cRXP_WARN_帐内导能|r
step << Horde
.goto 379,62.69,80.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.turnin 30594 >>Turn in Deanimate the Reanimated
.target Shademaster Kiryn
step
.convertquest 30652,30657 << Horde
.convertquest 30650,30655 << Horde
.convertquest 30651,30656 << Horde
.convertquest 30660,30661
#completewith Akonu the Embercaller
>>单击|cRXP_FRIENDLY_Pandaren Prisons|r
.complete 30650,1 
.target Pandaren Prisoner
step
#sticky
#label EasternOilRigDestroyed
.goto 379,50.97,79.53
.use 80528
.cast 115550 >>使用|T252176:0|t[炸药桶]|cRXP_WARN_next到钻机|r
.timer 5,Explosion
.disablecheckbox
.complete 30651,1 
step
#title Pick up |T252176:0|t[|cRXP_PICK_Explosives Barrel|r]
#completewith EasternOilRigDestroyed
.goto 379,51.24,79.29,10,0
.goto 379,51,79.37
.collect 80528,1 >>拿起|T252176:0|t[|cRXP_Pick_Explorers Barre|r]
step
#requires EasternOilRigDestroyed
.goto 379,50.4,78.66
>>杀死|cRXP_ENEMY_开拓者穆萨安|r
.complete 30652,1 
.mob musaan the blazecaster
step
.goto 379,50.38,79.28
.achievement 6847,1 >>单击|cRXP_PICK_Scroll|r
step
.goto 379,49.44,78.49
>>杀死喷火者|cRXP_ENEMY_Harala |r
.complete 30652,3 
.mob harala the firespeaker








step
#sticky
#label SouthernOilRigDestroyed
.goto 379,49.57,81.04
.use 80528
.cast 115550 >>使用|T252176:0|t[炸药桶]|cRXP_WARN_next到钻机|r
.timer 5,Explosion
.disablecheckbox
.complete 30651,2 
step
#title Pick up |T252176:0|t[|cRXP_PICK_Explosives Barrel|r]
#completewith SouthernOilRigDestroyed
.goto 379,49.59,78.92,20,0
.goto 379,49.57,81.04
.collect 80528,1 >>拿起|T252176:0|t[|cRXP_Pick_Explorers Barre|r]
step
#requires SouthernOilRigDestroyed
.goto 379,49.35,81.06,20,0
.goto 379,49.17,80.38
>>杀死法师|cRXP_ENEMY_Pao-kun|r
.complete 30652,4 
.mob pao-kun the pyromancer
step
.goto 379,47.70,80.05
>>Kill |cRXP_ENEMY_Akonu the Embercaller|r
.complete 30652,2 
.mob akonu the embercaller
step
.goto 379,48.9,76.89
>>点击任务日志以完成任务。
.turnin 30652 >>Turn in In Tents Channeling
step
#sticky
#label WesternOilRigDestroyed
.goto 379,47.86,81.42
.use 80528
.cast 115550 >>使用|T252176:0|t[炸药桶]|cRXP_WARN_next到钻机|r
.timer 5,Explosion
.disablecheckbox
.complete 30651,3 
step
#title Pick up |T252176:0|t[|cRXP_PICK_Explosives Barrel|r]
#completewith WesternOilRigDestroyed
.goto 379,47.53,80.18,15,0
.goto 379,47.86,81.42
.collect 80528,1 >>拿起|T252176:0|t[|cRXP_Pick_Explorers Barre|r]
step
#requires WesternOilRigDestroyed
#completewith Ordo Warbringer
>>与|cRXP_FRIENDLY_Pandaren囚犯互动|r
.complete 30650,1 
.target Pandaren Prisoner
step
#requires WesternOilRigDestroyed
#sticky
#label Ordo Warbringer
.goto 379,48.37,76.70
>>杀死洞穴中的|cRXP_ENEMY_Ordo Warbringer|r|cRXP-WARN_in|r
.complete 30660,1 
.mob ordo warbringer
step
#requires WesternOilRigDestroyed
#completewith Ordo Warbringer
.goto 379,48.9,76.89,10 >>进入洞穴.
step
#requires Ordo Warbringer
#loop
.goto 379,49.60,78.64,40,0
.goto 379,51.11,79.30,40,0
.goto 379,51.59,79.85,40,0
.goto 379,49.41,80.91,40,0
.goto 379,47.71,80.24,40,0
.goto 379,49.60,78.64,0
.goto 379,51.11,79.30,0
.goto 379,51.59,79.85,0
.goto 379,49.41,80.91,0
.goto 379,47.71,80.24,0
>>与|cRXP_FRIENDLY_Pandaren囚犯互动|r
.complete 30650,1 
.target Pandaren Prisoner
step
#include 7） 坤来巅峰防御影盘
step << Alliance
.isOnQuest 33231
.cast 147988 >>使用|T134376:0|t[古铜计时器]传送到永恒之岛。
step << Alliance
.goto 554,23.15,71.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Lara|r
.turnin 33231 >>Turn in Journey to the Timeless Isle
.target Watcher Lara
step << Alliance
.goto 379,54.08,82.87
.hs >>使用炉石西风休息
step << Alliance
#loop
.goto 379,54.02,83.39,10,0
.goto 379,53.91,83.57,10,0
.goto 379,53.85,83.35,10,0
.goto 379,53.66,83.45,10,0
.goto 379,53.76,83.68,10,0
.goto 379,54.05,83.43,10,0
.goto 379,54.33,82.97,10,0
.goto 379,54.31,82.76,10,0
.goto 379,54.02,83.39,0
.goto 379,53.91,83.57,0
.goto 379,53.85,83.35,0
.goto 379,53.66,83.45,0
.goto 379,53.76,83.68,0
.goto 379,54.05,83.43,0
.goto 379,54.33,82.97,0
.goto 379,54.31,82.76,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.turnin 30650 >>Turn in Pandaren Prisoners
.turnin 30660 >>交任务: |cRXP_FRIENDLY_斡耳朵战争使者|r 

.target Admiral Taylor
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully“The Pickle”McLeary|r
.turnin 30651 >>Turn in Barrels of Fun
.goto 379,54.17,83.27
.target Sully“The Pickle”McLeary
step << Alliance
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Tsulan|r
.accept 31695 >>接任务: |cRXP_WARN_城墙之外|r

.goto 379,54.17,83.43
.target Elder Tsulan
step << Alliance
#loop
.goto 379,53.45,83.36,10,0
.goto 379,53.46,83.08,10,0
.goto 379,53.68,83.28,10,0
.goto 379,53.45,83.36,0
.goto 379,53.46,83.08,0
.goto 379,53.68,83.28,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
.accept 31460 >>接任务: |cRXP_WARN_周卓的书信|r
.target Mishka
step << Horde
#completewith next
.goto 379,54.08,82.87
.hs >>用你的红心石去东风休息
step << Horde
.goto 379,62.45,80.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 30661 >>交任务: |cRXP_FRIENDLY_斡耳朵战争使者|r
.target General Nazgrim
.turnin 30655 >>Turn in Pandaren Prisoners
step << Horde
.goto 379,62.77,79.91
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 30656 >>Turn in Barrels of Fun
.target Rivett Clutchpop
step << Horde
.goto 379,62.69,80.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.accept 31459 >>接任务: |cRXP_WARN_周卓的书信|r
.target Shademaster Kiryn





step << Horde
.goto 379,62.35,79.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shiao|r
.accept 31695 >>接任务: |cRXP_WARN_城墙之外|r
.target Elder Shiao





step
.goto 379,44.48,89.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Master Chong|r
.accept 30699 >>接任务: |cRXP_WARN_前往冬花营|r
.target Shado-Master Chong
step
#sticky
#label Grummle's Luck
.goto 379,64.71,61.76,0,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Eightcoins|r
.turnin 30808 >>Turn in A Grummle's Luck
.target Lucky Eightcoins
step
#completewith Grummle's Luck
#label NostwinsVoucher
.cast 441154 >>使用|T134491:0|t[Nostwin's Voucher]传送到无限集市。
.use 217930
.itemcount 217930,1
step
#completewith Grummle's Luck
#requires NostwinsVoucher
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r or |cRXP_FRIENDLY_Past Nostwin|r
.buy 217930,1
.goto 379,69.62,53.04
.itemcount 217930,0
.target Nostwin
.target Past Nostwin
step
#requires NostwinsVoucher
.isQuestComplete 80446
.goto 379,69.54,53.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arturos|r
.turnin 80446 >>交任务: |cRXP_FRIENDLY_寻求组队|r
.target Arturos
step
#requires NostwinsVoucher
.isQuestComplete 80447
.goto 379,69.76,53.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
.turnin 80447 >>交任务: |cRXP_FRIENDLY_寻求团队|r
.target Pythagorus
step
#requires NostwinsVoucher
.isQuestComplete 80448
.goto 379,69.84,53.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah Treebender|r
.turnin 80448 >>交任务: |cRXP_FRIENDLY_新鲜场景|r
.target Larah Treebender
step
#label UpdradeGearKunlai
#completewith Grummle's Luck
.goto 379,69.58,52.47
.cast 436451 >>Talk to |cRXP_FRIENDLY_Momentus|r and upgrade your gear |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
*|cRXP_WARN_Skip this step if you don't want to or can't upgrade anything|r
.skipgossip
.target Momentus
step
#requires UpdradeGearKunlai
#completewith Grummle's Luck
#label GemsKunlai
.goto 379,69.34,52.59
.vendor >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy additional gems |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
.skipgossip
.target Lidamorrutu

step
#requires Grummle's Luck
.goto 379,65.48,60.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slimy Inkstain|r
.turnin 30614 >>Turn in Oil Stop
.target Slimy Inkstain
step
.goto 379,64.89,60.5
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smokey Sootassle|r
.turnin 30616 >>Turn in Traffic Issues
.accept 30617 >>接任务: |cRXP_WARN_道路救援|r
.target Smokey Sootassle
step
#loop
.goto 379,62.91,62.03,20,0
.goto 379,62.85,63.05,20,0
.goto 379,62.79,63.80,20,0
.goto 379,62.95,64.57,20,0
.goto 379,62.44,64.45,20,0
.goto 379,62.04,64.90,20,0
.goto 379,61.73,65.37,20,0
.goto 379,61.18,65.59,20,0
.goto 379,60.37,66.00,20,0
.goto 379,59.96,65.27,20,0
.goto 379,59.33,65.10,20,0
.goto 379,58.91,64.33,20,0
.goto 379,59.00,63.81,20,0
.goto 379,58.73,63.09,20,0
.goto 379,58.81,62.48,20,0
.goto 379,58.34,62.13,20,0
.goto 379,58.35,61.63,20,0
.goto 379,62.91,62.03,0
.goto 379,62.85,63.05,0
.goto 379,62.79,63.80,0
.goto 379,62.95,64.57,0
.goto 379,62.44,64.45,0
.goto 379,62.04,64.90,0
.goto 379,61.73,65.37,0
.goto 379,61.18,65.59,0
.goto 379,60.37,66.00,0
.goto 379,59.96,65.27,0
.goto 379,59.33,65.10,0
.goto 379,58.91,64.33,0
.goto 379,59.00,63.81,0
.goto 379,58.73,63.09,0
.goto 379,58.81,62.48,0
.goto 379,58.34,62.13,0
.goto 379,58.35,61.63,0
>>单击|cRXP_PICK_Lucky Burlap熏香|r|cRXP-WARN_（安装时可能）|r
.complete 30617,1 
step
.goto 379,58.1,61.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Trailscenter|r

.turnin 30617 >>Turn in Roadside Assistance
.accept 30592 >>接任务: |cRXP_WARN_粗麻小径：前往粗麻驿站|r
.target Brother Trailscenter
step
.goto 379,57.34,61.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31460 >>Turn in Cho's Missive
.target Lorewalker Cho
.accept 30999 >>接任务: |cRXP_WARN_朝圣之旅|r
step
.goto 379,57.21,61.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Cloverleaf|r
.turnin 30999 >>Turn in Path Less Traveled
.target Uncle Cloverleaf
.accept 30601 >>接任务: |cRXP_WARN_一鼓作气|r
step
#completewith next
.goto 379,57.5,60.17 >>Enter the House
step
.goto 379,57.72,61.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Sal|r |cRXP_WARN_inside the small house.|r
.accept 30618 >>接任务: |cRXP_WARN_恢复酒坛集的补给|r
.target Big Sal
step
.goto 379,57.37,60.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chiyo Mistpaw|r |cRXP_WARN_inside the house.|r
.home >>将您的炉石设置为幸运游侠
.target Chiyo Mistpaw
step
.goto 379,57.33,60.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji-Lu the Lucky|r |cRXP_WARN_inside the house.|r
.accept 30621 >>接任务: |cRXP_WARN_他们偷走了我的好运！|r
.target Ji-Lu the Lucky
step
#completewith next
.goto 379,57.5,60.17,5 >>Leave the House
step
#completewith Stolen Sprite Treasure
>>杀死|cRXP_ENEMY_恶作剧雪精灵|r和|cRXX_ENEMY_-可疑雪堆|r
.complete 30621,4 
.complete 30621,1 
.complete 30621,2 
.complete 30621,3 
.mob Mischievous Snow Sprite
.mob Suspicious Snow Pile
step
#completewith Stolen Sprite Treasure
>>单击|cRXP_PICK_Stolen Supplies |r
.complete 30618,1 
step
#completewith Stolen Sprite Treasure
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hiding Guides|r
.complete 30601,1 
.skipgossip
.target Hiding Guide
step
#label Stolen Sprite Treasure
.goto 379,59.1,52.86,30,0
.goto 380,67.33,77.53,30,0
.goto 380,53.37,69.48,30,0
.goto 380,50.97,63.32,30,0
.goto 380,46.7,57.95,30,0
.goto 380,51.65,44.26,30,0
.goto 380,53.14,25.91,30,0
.goto 380,42.65,20.78,30,0
.goto 380,32.2,31.27,30,0
.goto 380,33.46,42.71,30,0
.goto 380,41.54,44.4,30,0
.cast 3365 >>点击|cRXP_PICK_Stolen精灵宝|r
step
#completewith Lucky
#hidewindow
#loop
.goto 380,33.53,41.3,30,0
.goto 380,36.82,29.36,30,0
.goto 380,42.6,24.98,30,0
.goto 380,53.88,45.19,30,0
.goto 380,66,49.91,30,0
.goto 380,48.42,58.72,30,0
.goto 380,58.72,75.11,30,0
.goto 380,67.86,78.37,30,0
.goto 379,59.1,53.18,30,0
.goto 380,33.53,41.3,0
.goto 380,36.82,29.36,0
.goto 380,42.6,24.98,0
.goto 380,53.88,45.19,0
.goto 380,66,49.91,0
.goto 380,48.42,58.72,0
.goto 380,58.72,75.11,0
.goto 380,67.86,78.37,0
.goto 379,59.1,53.18,0
+1
step
#completewith Hiding Guide
>>杀死|cRXP_ENEMY_Mischievous Snow Sprite |r和|cRXX_ENEMY_Suspire Snow Pile|r掠夺它们以获取|cRXD_Loot_LLucky的物品|r
.complete 30621,4 
.complete 30621,1 
.complete 30621,2 
.complete 30621,3 
.mob Mischievous Snow Sprite
.mob Suspicious Snow Pile
step
#completewith Hiding Guide
>>单击|cRXP_PICK_Stolen Supplies |r
.complete 30618,1 
step
#label Hiding Guide
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hiding Guides|r
.complete 30601,1 
.skipgossip
.target Hiding Guide
step
#completewith next
>>杀死|cRXP_ENEMY_Mischievous Snow Sprite |r和|cRXX_ENEMY_Suspire Snow Pile|r掠夺它们以获取|cRXD_Loot_LLucky的物品|r
.complete 30621,4 
.complete 30621,1 
.complete 30621,2 
.complete 30621,3 
.mob Mischievous Snow Sprite
.mob Suspicious Snow Pile
step
>>单击|cRXP_PICK_Stolen Supplies |r
.complete 30618,1 
step
#label Lucky
>>杀死|cRXP_ENEMY_Mischievous Snow Sprite |r和|cRXX_ENEMY_Suspicous Snow Pile|r掠夺它们以获取|cRXP_Loot_Lucky的物品|r
.complete 30621,4 
.complete 30621,1 
.complete 30621,2 
.complete 30621,3 
.mob Mischievous Snow Sprite
.mob Suspicious Snow Pile





step
#completewith TheyStoleMyLuck
.aura -449510
.cast 449508 >>使用|T134488:0|t[Nostwin's Return Service]返回Westwood Rest << Alliance
.cast 449508 >>使用|T134488:0|t[Nostwin's Return Service]返回Eastwood Rest << Horde
.use 449508
step
#completewith TheyStoleMyLuck
.goto 379,57.5,60.17,5 >>Enter the House
step
#label TheyStoleMyLuck
.goto 379,57.32,60.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ji-Lu the Lucky|r |cRXP_WARN_inside small house.|r
.turnin 30621 >>Turn in They Stole My Luck!
.target Ji-Lu the Lucky
step
.goto 379,57.72,61.76
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Sal|r
.turnin 30618 >>Turn in Resupplying One Keg
.target Big Sal
step
.goto 379,57.22,61.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Cloverleaf|r
.turnin 30601 >>Turn in Instant Courage
.accept 30487 >>接任务: |cRXP_WARN_环山路|r
.target Uncle Cloverleaf
step
.goto 379,57.30,61.55
>>单击|cRXP_FRIENDLY_Ji-Lu的购物车|r
.complete 30487,1 
.timer 125,RP
.target Ji-Lu's Cart
step
.goto 379,48.13,48.92
>>|cRXP_WARN_在任务停机期间，根据您当前的需求，专注于以下活动，最大限度地提高效率：|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397
.complete 30487,2 
step
.goto 379,48.13,49.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Bluestring|r
.turnin 30487 >>Turn in Comin' Round the Mountain
.target Lucky Bluestring
.accept 30683 >>接任务: |cRXP_WARN_一位旅行者的不幸|r
step
.goto 379,50.07,49.25
>>单击|cRXP_PICK_废弃残骸|r
.complete 30683,1 
.timer 9,RP
step
.goto 379,50.07,49.37
>>杀死|cRXP_ENEMY_Stone Guardians|r然后|cRXX_ENEMY_General Sho Lien|r
.complete 30683,2 
.mob general sho lien
.mob Stone Guardian
step
.goto 379,48.14,49.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucky Bluestring|r
.turnin 30683 >>Turn in One Traveler's Misfortune
.target Lucky Bluestring
.accept 30684 >>接任务: |cRXP_WARN_探索者末路|r
step
.goto 379,44.78,49.17
>>单击|cRXP_PICK_Shrine|r
.complete 30684,1 
step
.goto 379,42.68,50.11
>>单击|cRXP_PICK_Shrine|r
.complete 30684,2 
step
.goto 379,43.17,51.98
>>单击|cRXP_PICK_Shrine|r
.complete 30684,3 
step
.goto 379,43.80,51.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 30684 >>Turn in Seeker's Folly
.accept 30829 >>接任务: |cRXP_WARN_巴匈之舌|r
.target Lorewalker Cho
step
#completewith Reclaimer Zuan
.goto 379,43.80,51.04
.gossipoption 40517 >>Talk to |cRXP_FRIENDLY_Lorewalker Cho|r
.timer 20,RP
.skipgossip 61315,1
.target Lorewalker Cho
step
#completewith Reclaimer Zuan
+|cRXP_WARN_在任务停机期间，根据您当前的需求，专注于以下活动，最大限度地提高效率：|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397
step
#label Reclaimer Zuan
.goto 379,43.46,51.42
>>杀死|cRXP_ENEMY_Reclaimer Zuan|r
.complete 30829,1 
.mob Reclaimer Zuan
.mob Yachi
step
.goto 379,43.77,51.11
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 30829 >>Turn in The Tongue of Ba-Shon
.accept 30795 >>接任务: |cRXP_WARN_保持联系|r
.target Lorewalker Cho
step
.goto 379,57.11,47.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curious Text|r
.accept 30797 >>接任务: |cRXP_WARN_功亏一篑|r
.target Curious Text
step
.goto 379,57.11,47.89
>>单击|cRXP_PICK_Torn页面|r
.complete 30797,1 
step
.goto 379,57.11,47.89
>>使用|T512479:0|t[巴的舌头]靠近书。
.complete 30795,1 
.use 81712
step
.goto 379,57.11,47.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho|r
>>|cRXP_WARN_Use|r|T512479:0|t[Ba-Shon的舌头]|cRXP_WARN_if you can't see|cRXT_FRIENDLY_Image of Lorewalker Cho|r|r。
.turnin 30795 >>Turn in Staying Connected
.accept 30796 >>接任务: |cRXP_WARN_尘埃落定|r
.turnin 30797 >>Turn in It Was Almost Alive
.accept 30799 >>接任务: |cRXP_WARN_暗影古陵|r
.use 81712
.target Image of Lorewalker Cho
step
#loop
.goto 379,57.18,49.04,20,0
.goto 379,56.73,47.23,20,0
.goto 379,57.46,47.40,20,0
.goto 379,57.18,49.04,0
.goto 379,56.73,47.23,0
.goto 379,57.46,47.40,0
>>杀死|cRXP_ENEMY_被折磨的灵魂|r
.complete 30796,1 
.mob tormented spirits
step
#completewith next
.goto 379,55.88,46.21,10 >>Enter the Temple
step
.goto 379,57.07,45.03
>>单击|cRXP_PICK_Tablet|r
.complete 30799,3 
step
.goto 379,57.13,43.49
>>单击雕像旁边的|cRXP_PICK_Tablet|r|cRXP-WARN_|r
.complete 30799,1 
step
.goto 379,56.36,43.45
>>单击杆下的|cRXP_PICK_Tablet|r|cRXP-WARN_|r
.complete 30799,2 
step
#completewith next
.cast 118927 >>使用|T512479:0|t[巴的舌头]召唤一个|cRXP_FRIENDLY_Image of Lorewalker Cho|r
step
.goto 379,55.88,46.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho.|r
>>|cRXP_WARN_Use|r|T512479:0|t[Ba-Shon的舌头]|cRXP_WARN_if you can't see|cRXT_FRIENDLY_Image of Lorewalker Cho|r|r。
.turnin 30796 >>Turn in An End to Everything
.turnin 30799 >>Turn in The Tomb of Shadows
.accept 30798 >>接任务: |cRXP_WARN_击破皇帝之盾|r
.target Image of Lorewalker Cho
.use 81712
step
#completewith InterruptedSpiritbinding
#label LeaveTempleSpiritbinding
.goto 379,55.88,46.21,10 >>Leave the Temple
step
#requires LeaveTempleSpiritbinding
#completewith InterruptedSpiritbinding
#label EnterTempleSpiritbinding
.goto 379,53.33,49.35,10 >>Enter the Temple
step
#completewith InterruptedSpiritbinding
#requires EnterTempleSpiritbinding
.goto 379,52.98,51.25,15 >>|cRXP_WARN_Follow the Arrow|r
step
#label InterruptedSpiritbinding
.goto 379,52.93,51.34
>>杀死|cRXP_ENEMY_Imperial Guards|r和|cRXX_ENEMY_Nakk'rakas|r
.complete 30798,1 
.mob Imperial Guard
.mob Nakk'rakas
step
#completewith next
.cast 118927 >>使用|T512479:0|t[巴的舌头]召唤一个|cRXP_FRIENDLY_Image of Lorewalker Cho|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho.|r
>>|cRXP_WARN_Use|r|T512479:0|t[Ba-Shon的舌头]|cRXP_WARN_if you can't see|cRXT_FRIENDLY_Image of Lorewalker Cho|r|r。
.turnin 30798 >>Turn in Breaking the Emperor's Shield
.accept 30800 >>接任务: |cRXP_WARN_窃取他们的雷电之王|r
.target Image of Lorewalker Cho
.use 81712
step
#completewith BottomFragment
#label LeaveTempleBottomFragment
.goto 379,53.33,49.35,10 >>Leave the Temple
step
#completewith BottomFragment
#requires LeaveTempleBottomFragment
.goto 379,53.07,46.44,10 >>Enter the Temple
step
#label BottomFragment
.goto 385,84.12,61.59,10,0
.goto 385,81.57,74.06,10,0
.goto 385,58.66,72.54
>>单击|cRXP_PICK_King’s Coffer|r
.complete 30800,1 
step
.goto 385,39.71,69.08,10,0
.goto 385,34.33,61.67
>>单击墙上的|cRXP_PICK_Tablet|r。
.complete 30800,2 
.mob Terracotta Gladiator
step
#completewith next
.cast 118927 >>使用|T512479:0|t[巴的舌头]召唤一个|cRXP_FRIENDLY_Image of Lorewalker Cho|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho.|r
>>|cRXP_WARN_Use|r|T512479:0|t[Ba-Shon的舌头]|cRXP_WARN_if you can't see|cRXT_FRIENDLY_Image of Lorewalker Cho|r|r。
.turnin 30800 >>Turn in Stealing Their Thunder King
.accept 30801 >>接任务: |cRXP_WARN_历史的教训|r
.target Image of Lorewalker Cho
.use 81712
step
.goto 385,34.33,61.67
>>单击墙上的|cRXP_PICK_Tablet|r。
.complete 30801,1 
step
#completewith next
.cast 118927 >>使用|T512479:0|t[巴的舌头]召唤一个|cRXP_FRIENDLY_Image of Lorewalker Cho|r
step
.goto 385,33.44,62.75
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho|r
>>|cRXP_WARN_Use|r|T512479:0|t[Ba-Shon的舌头]|cRXP_WARN_if you can't see|cRXT_FRIENDLY_Image of Lorewalker Cho|r|r。
.turnin 30801 >>Turn in Lessons from History
.accept 30802 >>接任务: |cRXP_WARN_追逐风暴|r
.target Image of Lorewalker Cho
.use 81712
step
#loop
.goto 385,53.79,72.07,20,0
.goto 385,58.69,85.70,20,0
.goto 385,66.66,74.20,20,0
.goto 385,61.77,59.20,20,0
.goto 385,81.60,75.95,20,0
.goto 385,53.79,72.07,0
.goto 385,58.69,85.70,0
.goto 385,66.66,74.20,0
.goto 385,61.77,59.20,0
.goto 385,81.60,75.95,0
>>杀死|cRXP_ENEMY_Zandalari战士|r为|cRXP_Loot_Blood-Leveled Map掠夺它们|r
.complete 30802,1 
.mob Zandalari Warrior
step
#completewith next
.cast 118927 >>使用|T512479:0|t[巴的舌头]召唤一个|cRXP_FRIENDLY_Image of Lorewalker Cho|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Image of Lorewalker Cho|r
>>|cRXP_WARN_Use|r|T512479:0|t[Ba-Shon的舌头]|cRXP_WARN_if you can't see|cRXT_FRIENDLY_Image of Lorewalker Cho|r|r。
.turnin 30802 >>Turn in Chasing the Storm
.accept 30935 >>接任务: |cRXP_WARN_渔夫的故事|r
.target Image of Lorewalker Cho
.use 81712
step
#completewith next
.goto 385,82.66,75.15,15,0
.goto 385,83.41,64.77,15,0
.goto 379,52.99,46.57,10 >>Leave the Temple
step
#sticky
#label SpeaktoMishiLeiShensTomb
.goto 379,52.97,46.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_米什基|r
.complete 30935,1 

.skipgossip
.target Mishi
step
#completewith SpeaktoMishiLeiShensTomb
.goto 379,52.97,46.39
.logout >>|cRXP_WARN_将自己定位在航路点位置。|r
*>>|cRXP_WARN_按Escape并选择Logout |r|cFFFF0000这是跳过RP。|r
step
#requires SpeaktoMishiLeiShensTomb
.cast 441154 >>使用|T134491:0|t[Nostwin's Voucher]传送到无限集市。
.use 217930
.itemcount 217930,1
step
.isQuestComplete 80446
.goto 379,69.54,53.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arturos|r
.turnin 80446 >>交任务: |cRXP_FRIENDLY_寻求组队|r
.target Arturos
step
.isQuestComplete 80447
.goto 379,69.76,53.6
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r
.turnin 80447 >>交任务: |cRXP_FRIENDLY_寻求团队|r
.target Pythagorus
step
.isQuestComplete 80448
.goto 379,69.84,53.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larah Treebender|r
.turnin 80448 >>交任务: |cRXP_FRIENDLY_新鲜场景|r
.target Larah Treebender






step
.isOnQuest 30935
.goto 379,69.34,52.59,10,0
.vendor >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy additional gems |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency.|r
.skipgossip
.target Lidamorrutu

step
.isOnQuest 30935
#label access Zouchin Province
.goto 379,63.32,40.23
.logout >>|cRXP_WARN_将自己定位在航路点位置。|r
*>>|cRXP_WARN_按Escape并选择Logout |r|cFFFF0000这是跳过RP。|r
.timer 15,Speak Timer
step
.goto 379,63.32,40.23
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shin Whispercloud|r |cRXP_WARN_once the Speak Timer (at the bottom of the main window) is up.|r
.complete 30935,2 
.skipgossip

.target Shin Whispercloud
step
#requires SpeakShinWhispercloudZouchinProvince
.goto 379,62.32,29.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r |cRXP_WARN_inside the house.|r
.turnin 30935 >>Turn in Fisherman's Tale
.accept 30944 >>接任务: |cRXP_WARN_全村出动|r
.target Lorewalker Cho
step
#completewith next
.goto 379,62.39,29.27,5 >>Leave the House
step
.goto 379,63.37,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steelbender Doshu|r
.accept 30945 >>接任务: |cRXP_WARN_你的就是我的|r
.target Steelbender Doshu
step
.goto 379,63.74,30.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shomi|r |cRXP_WARN_outside and under the house.|r
.accept 30942 >>接任务: |cRXP_WARN_传授武功|r
.target Shomi
step
#completewith Amani Skirmishers
#label ExhaustedDefenderRelieved
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exhausted Defenders|r
.complete 30944,1 
.skipgossip
.target Exhausted Defender
step
#completewith Amani Skirmishers
>>杀死|cRXP_ENEMY_Amani滑雪者|r
.complete 30942,1 
.mob amani skirmishers
step
#label Amani Skirmishers
#completewith ExhaustedDefenderRelieved
#hidewindow
.isOnQuest 30942
.goto 379,63.63,31.79,40,0
.goto 379,64.56,29.79,30 >>1
step
#requires Amani Skirmishers
.goto 379,63.17,29.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Hai|r
.accept 30816 >>接任务: |cRXP_WARN_取得联络|r
.target Li Hai
step
#loop
.goto 379,63.33,28.75,10,0
.goto 379,63.58,28.73,10,0
.goto 379,63.23,28.65,10,0
.goto 379,63.47,28.81,10,0
.goto 379,63.33,28.75,0
.goto 379,63.58,28.73,0
.goto 379,63.23,28.65,0
.goto 379,63.47,28.81,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shu|r
.accept 30943 >>接任务: |cRXP_LOOT_小心运送|r
.target Elder Shu
step
#completewith Exhausted Defender Relieved
#hidewindow
#loop
.goto 379,63.50,28.22,40,0
.goto 379,61.90,28.16,40,0
.goto 379,63.93,31.50,40,0
.goto 379,64.59,29.73,40,0
.goto 379,64.05,28.68,40,0
.goto 379,63.50,28.22,0
.goto 379,61.90,28.16,0
.goto 379,63.93,31.50,0
.goto 379,64.59,29.73,0
.goto 379,64.05,28.68,0
+1
step
#completewith next
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exhausted Defenders|r
.complete 30944,1 
.skipgossip
.target Exhausted Defender
step
>>杀死|cRXP_ENEMY_Amani滑雪者|r
.complete 30942,1 
.mob amani skirmishers
step
#label Exhausted Defender Relieved
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exhausted Defenders|r
.complete 30944,1 
.skipgossip
.target Exhausted Defender
step
.goto 379,60.60,21.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
.turnin 30816 >>Turn in Checking In
.accept 30794 >>接任务: |cRXP_WARN_紧急救护|r
.target Sage Liao
step
.isOnQuest 30794
#completewith next
>>点击小屋内的|cRXP_PICK_Treasure Chest|r << Hunter/Rogue/Warlock/Warrior/DeathKnight/DemonHunter/Mage
.goto 379,61.01,21.54
.collect 81177,1
step
.goto 379,60.61,21.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
.complete 30794,1 
.timer 8,RP
.target Sage Liao
step
.goto 379,60.61,21.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
.turnin 30794 >>Turn in Emergency Care
.target Sage Liao
step
.goto 379,60.61,21.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shu|r

.accept 30805 >>接任务: |cRXP_WARN_制裁|r
.accept 30806 >>接任务: |cRXP_WARN_长寿香|r
.accept 30807 >>接任务: |cRXP_WARN_瀑布之祭|r
.target Elder Shu
step
#completewith next
>>杀死|cRXP_ENEMY_Azure Prickly爬网程序|r掠夺它们|cRXP_Loot_乳白色蓝色蟹壳|r
.complete 30806,1 
.mob Azure Prickly Crawler
step
#loop
.goto 379,59.03,27.23,30,0
.goto 379,59.72,29.83,30,0
.goto 379,60.19,31.25,30,0
.goto 379,58.89,24.56,30,0
.goto 379,59.03,27.23,0
.goto 379,59.72,29.83,0
.goto 379,60.19,31.25,0
.goto 379,58.89,24.56,0
>>单击|cRXP_PICK_瀑布抛光石|r
.complete 30807,1 
step
#completewith Captain Ripflesh
>>杀死|cRXP_ENEMY_Azure Prickly爬网程序|r掠夺它们|cRXP_Loot_乳白色蓝色蟹壳|r
.complete 30806,1 
.mob Azure Prickly Crawler
step
#completewith Captain Ripflesh
>>点击|cRXP_PICK_Barrels|r|cRXP_WARN_并额外掠夺|cRXP-ENEMY_Me|r获取更多信息|cRXP_OOT_Spices|r
.complete 30806,2 
step
#label Captain Ripflesh
.goto 379,62.11,23.51
>>杀死|cRXP_ENEMY_Captain Ripprows|r和|cRXX_ENEMY_Blackmane Tracker|r
.complete 30805,1 
.complete 30805,2 
.disablecheckbox
.mob captain ripflesh
.mob Blackmane Tracker
.mob Blackmane Brigand
.mob Blackmane Pillager
step
#completewith Blackmane Mercenaries
#hidewindow
#loop
.goto 379,62.61,21.88,40,0
.goto 379,63.55,21.97,40,0
.goto 379,64.51,21.12,40,0
.goto 379,63.30,20.80,40,0
.goto 379,62.16,20.72,40,0
.goto 379,62.61,21.88,0
.goto 379,63.55,21.97,0
.goto 379,64.51,21.12,0
.goto 379,63.30,20.80,0
.goto 379,62.16,20.72,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Azure Prickly爬网程序|r掠夺它们|cRXP_Loot_乳白色蓝色蟹壳|r
.complete 30806,1 
.mob Azure Prickly Crawler
step
>>杀死|cRXP_ENEMY_Blackmane雇佣军|r为|cRXP_Loot_Pandaren Spices掠夺它们|r|cRXP_WARN_另外单击|cRX_PICK_Barrels|r|r
.complete 30805,2 
.complete 30806,2 
.mob Blackmane Tracker
.mob Blackmane Brigand
.mob Blackmane Pillager
step
#label Blackmane Mercenaries
>>杀死|cRXP_ENEMY_Azure Prickly爬网程序|r掠夺它们|cRXP_Loot_乳白色蓝色蟹壳|r
.complete 30806,1 
.mob Azure Prickly Crawler
step
.goto 379,60.61,21.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
.turnin 30805 >>Turn in Justice
.turnin 30806 >>Turn in The Scent of Life
.turnin 30807 >>Turn in By the Falls, For the Fallen
.accept 30819 >>接任务: |cRXP_WARN_准备葬礼|r
.target Sage Liao
step
#completewith Drakkari Frostweavers
#hidewindow
#loop
.goto 379,68.17,25.56,40,0
.goto 379,70.77,25.95,40,0
.goto 379,71.90,26.42,40,0
.goto 379,72.72,30.69,40,0
.goto 379,72.23,32.21,40,0
.goto 379,70.93,29.33,40,0
.goto 379,68.06,28.35,40,0
.goto 379,68.17,25.56,0
.goto 379,70.77,25.95,0
.goto 379,71.90,26.42,0
.goto 379,72.72,30.69,0
.goto 379,72.23,32.21,0
.goto 379,70.93,29.33,0
.goto 379,68.06,28.35,0
+1
step
#completewith Exhausted Defender
>>杀死|cRXP_ENEMY_Gurubashi Hexer|r、|cRXP_ENEMY_Drakkari Frostweakers|r和|cRXD_ENEMY_Amani Skormishers|r
.complete 30942,1 
.mob +Amani Skirmishers
.complete 30942,2 
.mob +Gurubashi Hexxer
.complete 30942,3 
.mob +Drakkari Frostweavers
step
#completewith Exhausted Defender
>>杀死|cRXP_ENEMY_Amani Skullbreaker|r掠夺它们以获取|cRXP_Loot_血腥之刃|r
.complete 30945,1 
.mob Amani Raptor-Handler
step
#completewith Exhausted Defender
>>单击|cRXP_PICK_Volatile Blooms|r
.complete 30943,1 
step
#label Exhausted Defender
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Exhausted Defenders|r
.complete 30944,1 
.skipgossip
.target Exhausted Defender
step
#completewith Volatile Blooms
>>杀死|cRXP_ENEMY_Gurubashi Hexer|r，|cRXD_ENEMY_Drakkari霜织者|r和|cRXP_ENEMY_Amani滑雪者|r
.complete 30942,1 
.mob +Amani Skirmishers
.complete 30942,2 
.mob +Gurubashi Hexxer
.complete 30942,3 
.mob +Drakkari Frostweavers
step
#completewith Volatile Blooms
>>杀死|cRXP_ENEMY_Amani Skullbreaker|r和|cRXX_ENEMY_Raptor-Handler|r掠夺它们以获取|cRXP_Loot_血腥之刃|r
.complete 30945,1 
.mob Amani Skullbreaker
.mob Amani Raptor-Handler
step
#label Volatile Blooms
>>单击|cRXP_PICK_Volatile Blooms|r
.complete 30943,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Gurubashi Hexer|r，|cRXD_ENEMY_Drakkari霜织者|r和|cRXP_ENEMY_Amani滑雪者|r
.complete 30942,1 
.complete 30942,2 
.complete 30942,3 
.mob drakkari frostweaver
.mob gurubashi hexxer
.mob amani skirmisher
step
>>杀死|cRXP_ENEMY_Amani Skullbreaker|r掠夺它们以获取|cRXP_Loot_血腥之刃|r
.complete 30945,1 
.mob Amani Skullbreaker
.mob Amani Raptor-Handler
step
#label Drakkari Frostweavers
>>杀死|cRXP_ENEMY_Gurubashi Hexer|r，|cRXD_ENEMY_Drakkari霜织者|r和|cRXP_ENEMY_Amani滑雪者|r
.complete 30942,1 
.complete 30942,2 
.complete 30942,3 
.mob drakkari frostweaver
.mob gurubashi hexxer
.mob amani skirmisher


step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shomi|r |cRXP_WARN_next to you.|r
.turnin 30942 >>Turn in Make A Fighter Out of Me
.target Shomi
step
.goto 379,63.16,29.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Li Hai|r
.turnin 30819 >>Turn in Preparing the Remains
.target Li Hai
.accept 30820 >>接任务: |cRXP_WARN_葬礼|r
step
#loop
.goto 379,63.33,28.75,10,0
.goto 379,63.58,28.73,10,0
.goto 379,63.23,28.65,10,0
.goto 379,63.47,28.81,10,0
.goto 379,63.33,28.75,0
.goto 379,63.58,28.73,0
.goto 379,63.23,28.65,0
.goto 379,63.47,28.81,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Shu|r
.turnin 30943 >>交任务: |cRXP_FRIENDLY_小心运送|r
.target Elder Shu
step
.goto 379,66.95,33.33
>>单击|cRXP_PICK_Incense|r
.complete 30820,1 
step
.goto 379,67.05,33.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sage Liao|r
.turnin 30820 >>Turn in A Funeral
.target Sage Liao
step
.goto 379,63.37,30.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Steelbender Doshu|r
.turnin 30945 >>Turn in What's Yours Is Mine
.target Steelbender Doshu
step
.goto 379,62.33,29.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r |cRXP_WARN_inside the house.|r
.turnin 30944 >>Turn in It Takes A Village
.accept 31011 >>接任务: |cRXP_WARN_兵临城下|r
.target Lorewalker Cho
step
#completewith next
.goto 379,62.41,29.32,10 >>Leave the House
step
#completewith next
>>杀死|cRXP_ENEMY_Amani狂暴战士|r
.complete 31011,1 
.mob amani berserker
step
#loop
.goto 379,64.40,29.05,30,0
.goto 379,65.44,28.04,30,0
.goto 379,65.43,31.15,30,0
.goto 379,64.29,32.11,30,0
.goto 379,64.40,29.05,0
.goto 379,65.44,28.04,0
.goto 379,65.43,31.15,0
.goto 379,64.29,32.11,0
>>杀死|cRXP_ENEMY_Gurubashi血腥骑士|r|cRXP-WARN_who跑向路障|r
.complete 31011,3 
.mob gurubashi bloodrider
step
#completewith next
>>杀死|cRXP_ENEMY_Amani狂暴战士|r
.complete 31011,1 
.mob amani berserker
step
#loop
.goto 379,61.19,29.08,20,0
.goto 379,61.15,27.97,30,0
.goto 379,61.19,29.08,0
.goto 379,61.15,27.97,0
>>杀死|cRXP_ENEMY_Amani Behemoth|r|cRXP-WARN_当他们在路障处时，你可以使用爆破筒摧毁他们|r。
.complete 31011,2 
.mob amani behemoth
step
#loop
.goto 379,62.04,28.39,40,0
.goto 379,63.25,28.32,40,0
.goto 379,63.87,29.63,40,0
.goto 379,63.23,30.70,40,0
.goto 379,62.04,28.39,0
.goto 379,63.25,28.32,0
.goto 379,63.87,29.63,0
.goto 379,63.23,30.70,0
>>杀死|cRXP_ENEMY_Amani狂暴战士|r
.complete 31011,1 
.mob amani berserker
step
#completewith next
.goto 379,62.36,29.2,5 >>Enter the House
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r |cRXP_WARN_inside the house.|r
.turnin 31011 >>Turn in Enemies At Our Door
.accept 30946 >>接任务: |cRXP_WARN_揭开真相|r
.goto 379,62.33,29.06
.target Lorewalker Cho
step
.goto 379,62.59,28.90,5,0
.goto 379,62.46,29.05,5,0
.goto 379,62.48,28.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_ENEMY_Zandalari Prisoner|r |cRXP_WARN_upstairs|r
.complete 30946,1 
.skipgossip
step
.goto 379,62.32,29.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 30946 >>Turn in Revelations
.target Lorewalker Cho



















































step
.isOnQuest 30592
.hs >>使用你的炉石一桶
step
.goto 379,58.71,64.77,20,0
.goto 379,58.29,64.78,20,0
.goto 379,49.74,67.57,20,0
.goto 379,53.08,66.58

>>|cRXP_WARN_Follow the Arrow，|r保卫并护送愤怒的人。
.complete 30592,1 
.mob Knucklethump Snatcher
.mob Ookin Marauder
.mob Broketooth Spear-Haver
.target Trail Packer
step
.goto 379,51.67,67.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Trailscenter|r
.turnin 30592 >>Turn in The Burlap Trail: To Burlap Waystation
.accept 30602 >>接任务: |cRXP_WARN_兔子脚|r
.target Brother Trailscenter
step
.goto 379,49.11,70.45
>>与|cRXP_FRIENDLY_Brother Rabbitsfoot|r交互
.complete 30602,1 
.target Brother Rabbitsfoot
step
.goto 379,49.10,70.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r
.accept 30603 >>接任务: |cRXP_WARN_断牙猢狲的破坏|r
.target Brother Rabbitsfoot
step
.goto 379,48.08,73.11
>>杀死山上的|cRXP_ENEMY_Mo Mo|r|cRXP-WARN_in|r为|cRXP_Loot_Rabbitsfoot的Luckydo抢劫他|r
.complete 30603,1 
.mob Mo Mo
step
#completewith next
.isQuestAvailable 30602
+单击|cRXP_PICK_Mo-Mo的宝箱|r|cRXP-WARN_if it are there|r
.goto 379,47.88,73.52
step
.goto 379,51.97,67.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r
.turnin 30602 >>Turn in The Rabbitsfoot
.turnin 30603 >>Turn in The Broketooth Ravage
.accept 30599 >>接任务: |cRXP_WARN_猴子神像|r
.accept 30600 >>接任务: |cRXP_WARN_一个也不能少|r
.accept 30604 >>接任务: |cRXP_WARN_铲除断牙猢狲|r
.target Brother Rabbitsfoot
step
#completewith Breaking Broketooth
.isOnQuest 30604
+如果您发现任何|cRXP_PICK_Bottles|r或|cRX_PICK_Luckydo的|r，请单击它们以获得非常强大的buff。
*|cRXP_WARN_Refresh its duration if you spot another.|r
.target Luckydo
step
#completewith Ko Ko
>>杀死|cRXP_ENEMY_Broketoth Charger|r和|cRXX_ENEMY_broketoth Tosser|r
.complete 30604,1 
.complete 30604,2 
.mob Broketooth Charger
.mob broketooth tosser
step
#completewith Ko Ko
>>与|cRXP_FRIENDLY_Dead Packer|r交互
.complete 30600,1 
.target Dead Packer
step
.isOnQuest 30599
.goto 379,56.84,70.99
.cast 6478 >>杀死|cRXP_ENEMY_Tak Tak |r，然后点击|cRX_PICK_Tak的祭坛刀|r
.timer 5, RP
.mob Tak Tak
step
#label Ko Ko
.goto 379,52.27,71.44
.isOnQuest 30599
.cast 6478 >>杀死|cRXP_ENEMY_Ko-Ko|r，然后点击|cRX_PICK_Ko-Ko的祭坛刀|r
.complete 30599,2 
.mob Ko Ko
step
.isOnQuest 30599
.goto 379,52.86,71.43,10 >>Enter the Cave
step
#completewith Dak Dak's Altar
>>杀死|cRXP_ENEMY_Broketoth Charger|r和|cRXX_ENEMY_broketoth Tosser|r
.complete 30604,1 
.complete 30604,2 
.mob Broketooth Charger
.mob broketooth tosser
step
#completewith Dak Dak's Altar
>>与|cRXP_FRIENDLY_Dead Packers交互|r
.complete 30600,1 
.target Dead Packer
step
#label Dak Dak's Altar
#loop
.goto 383,51.21,31.60,20,0
.goto 383,38.75,45.06,60,0
.goto 383,40.88,74.58,60,0
.goto 384,49.65,39.63,60,0
.goto 383,51.21,31.60,0
.goto 383,38.75,45.06,0
.goto 383,40.88,74.58,0
.goto 384,49.65,39.63,0
.cast 6478 >>杀死|cRXP_ENEMY_Dak Dak|r，然后点击|cRX_PICK_Dak的祭坛刀|r
.mob Dak Dak
step
#completewith next
>>杀死|cRXP_ENEMY_Broketoth Charger|r和|cRXX_ENEMY_broketoth Tosser|r
.complete 30604,1 
.complete 30604,2 
.mob Broketooth Charger
.mob broketooth tosser
step
#loop
.goto 384,30.32,43.00,22,0
.goto 384,18.82,65.84,22,0
.goto 384,30.03,76.33,22,0
.goto 384,34.85,62.95,22,0
.goto 384,32.50,45.56,22,0
.goto 384,66.18,59.02,22,0
.goto 384,82.00,54.17,22,0
.goto 384,77.71,67.89,22,0
.goto 384,67.96,74.52,22,0
.goto 384,61.43,66.89,22,0
.goto 384,66.54,58.53,22,0
.goto 384,41.07,45.53,22,0
.goto 384,49.74,58.73,22,0
.goto 384,30.32,43.00,0
.goto 384,18.82,65.84,0
.goto 384,30.03,76.33,0
.goto 384,34.85,62.95,0
.goto 384,32.50,45.56,0
.goto 384,66.18,59.02,0
.goto 384,82.00,54.17,0
.goto 384,77.71,67.89,0
.goto 384,67.96,74.52,0
.goto 384,61.43,66.89,0
.goto 384,66.54,58.53,0
.goto 384,41.07,45.53,0
.goto 384,49.74,58.73,0
>>与|cRXP_FRIENDLY_Dead Packer|r交互
.complete 30600,1 
.target Dead Packer
step
#completewith next
>>杀死|cRXP_ENEMY_Broketoth Charger|r和|cRXX_ENEMY_broketoth Tosser|r
.complete 30604,1 
.complete 30604,2 
.mob Broketooth Charger
.mob broketooth tosser
step
.isOnQuest 30599
.goto 379,52.86,71.43,10 >>Leave the Cave
step
#loop
.goto 379,55.52,70.17,30,0
.goto 379,52.80,70.65,30,0
.goto 379,55.52,70.17,0
.goto 379,52.80,70.65,0
>>杀死|cRXP_ENEMY_Broketoth Charger|r和|cRXX_ENEMY_broketoth Tosser|r
.complete 30604,1 
.complete 30604,2 
.mob Broketooth Charger
.mob broketooth tosser
step
#label Breaking Broketooth
.goto 379,51.97,67.21
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r
.turnin 30599 >>Turn in A Monkey Idol
.turnin 30600 >>Turn in No Pack Left Behind
.turnin 30604 >>Turn in Breaking Broketooth
.accept 30605 >>接任务: |cRXP_WARN_好运牦牛鞋|r
.target Brother Rabbitsfoot
step
.isOnQuest 30605
.goto 379,50.53,64.2
.cast 115562 >>与|cRXP_ENEMY_Mok Mok|r交互
.timer 11,RP
.mob Mok Mok
step
.goto 379,50.57,64.08
>>|cRXP_WARN_在任务停机期间，根据您当前的需求，专注于以下活动，最大限度地提高效率：|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397
.complete 30605,1 
step
.goto 379,50.56,64.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Yakshoe|r
.turnin 30605 >>Turn in Lucky Yakshoe
.accept 30606 >>接任务: |cRXP_WARN_重挫肘锤猢狲|r
.accept 30607 >>接任务: |cRXP_WARN_猢狲和钥匙|r
.accept 30608 >>接任务: |cRXP_WARN_打牙祭|r
.target Brother Yakshoe
step
#completewith Silverback Hozen
.isOnQuest 30606
+如果您发现任何|cRXP_PICK_Bottles|r或|cRX_PICK_Luckydo的|r，请单击它们以获得非常强大的buff。
*|cRXP_WARN_Refresh its duration if you spot another.|r
step
#completewith Release Old Poot Poot
>>杀死|cRXP_ENEMY_Knuckle重击击杀器|r和|cRXD_ENEMY_克努克重击起重臂稳定器|r
.complete 30606,1 
.mob Knucklethump Smasher
.mob Knucklethump Jibstabber
step
.goto 379,50.96,62.73,15,0
.goto 379,50.94,61.97,15,0
.goto 379,50.29,62.45,15,0
.goto 379,51.04,64.09,15,0
.goto 379,51.61,63.23,15,0
>>单击|cRXP_PICK_Cages|r并销毁|cRXP_ENEMY_Prisoner Bindings|r以营救|cRXP _FRIENDLY_Impressed Grummle|r
.complete 30608,1 
.target Imprisoned Grummle
.mob Prisoner Bindings
step
#completewith next
.goto 382,75.83,91.72,10 >>Enter the Cave
step
.goto 382,76.35,77.58,10,0
.goto 382,74.8,58.31,10,0
.goto 382,48.4,70.72,10,0
.goto 382,36.22,52.47,10,0
.goto 382,32.32,30.96,10,0
.goto 382,42.73,26.19
>>杀死|cRXP_ENEMY_Cho Cho the Wicked|r抢劫他|cRXP_Loot_Yeti镣铐钥匙|r
.complete 30607,1 
.mob Cho Cho the Wicked
step
#label Release Old Poot Poot
.goto 382,42.73,26.19
>>单击|cRXP_PICK_Old Poot Poot|r
.complete 30607,2 
.timer 25, Time until Cave Exit
.target Old Poot Poot
step
.isOnQuest 30607
.goto 379,50.72,62.5,25 >>|cRXP_WARN_使用|cFFFF0000/leavevehicle|r宏命令，在洞穴|r外拆除Yeti |cFFFFO 000。|r
.link /leavevehicle>>单击此处 FOR MACRO.
*|cRXP_WARN_建议保护此宏以备将来使用。|r
step
#loop
.goto 379,49.90,64.28,25,0
.goto 379,51.63,63.58,25,0
.goto 382,74.31,85.72,25,0
.goto 379,49.90,64.28,0
.goto 379,51.63,63.58,0
.goto 382,74.31,85.72,0
>>杀死|cRXP_ENEMY_Knuckle重击击杀器|r和|cRXD_ENEMY_克努克重击起重臂稳定器|r
.complete 30606,1 
.mob Knucklethump Smasher
.mob Knucklethump Jibstabber
step
#label Silverback Hozen
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r and |cRXP_FRIENDLY_Brother Yakshoe.|r
.turnin 30607 >>Turn in Hozen Love Their Keys
.turnin 30608 >>Turn in The Snackrifice
.accept 30610 >>接任务: |cRXP_WARN_土地精！土地精！土地精！|r
.goto 379,52.02,67.18
.turnin 30606 >>Turn in Thumping Knucklethump
.accept 30611 >>接任务: |cRXP_WARN_释放雪人！|r
.goto 379,51.98,67.22
.target Brother Rabbitsfoot
.target Brother Yakshoe
step
#completewith Turn in Grummle! Grummle! Grummle!
.isOnQuest 30611
+如果您发现任何|cRXP_PICK_Bottles|r或|cRX_PICK_Luckydo的|r，请单击它们以获得非常强大的buff。
*|cRXP_WARN_Refresh its duration if you spot another.|r
step
#completewith Cagemaster
#hidewindow
#loop
.goto 379,46.33,64.87,40,0
.goto 379,46.74,66.01,40,0
.goto 379,45.41,65.40,40,0
.goto 379,45.88,64.12,30,0
.goto 379,45.27,63.01,30,0
.goto 379,46.06,62.07,30,0
.goto 379,46.83,63.26,30,0
.goto 379,46.33,64.87,0
.goto 379,46.74,66.01,0
.goto 379,45.41,65.40,0
.goto 379,45.88,64.12,0
.goto 379,45.27,63.01,0
.goto 379,46.06,62.07,0
.goto 379,46.83,63.26,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Cagemasters|r
.complete 30611,1 
.mob cagemaster















step
>>单击|cRXP_PICK_Grummle Gear|r|cRXP-WARN_but确保在单击下一个之前有大约2秒的间隙|r
.complete 30610,1 
step
#label Cagemaster
>>杀死|cRXP_ENEMY_Cagemasters|r
.complete 30611,1 
.mob cagemaster
step
#label Turn in Grummle! Grummle! Grummle!
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Yakshoe|r and |cRXP_FRIENDLY_Brother Rabbitsfoot|r
.turnin 30610 >>Turn in Grummle! Grummle! Grummle!
.turnin 30611 >>Turn in Unleash The Yeti!
.goto 379,45.95,64.06
.accept 30612 >>接任务: |cRXP_WARN_猢狲头领|r
.goto 379,45.91,64.06
.timer 24,RP
.target Brother Yakshoe
.target Brother Rabbitsfoot
step
#completewith Turn in The Leader Hozen
.isOnQuest 30612
+如果您发现任何|cRXP_PICK_Bottles|r或|cRX_PICK_Luckydo的|r，请单击它们以获得非常强大的buff。
*|cRXP_WARN_Refresh its duration if you spot another.|r
step
.goto 379,46.09,63.34
>>|cRXP_WARN_在任务停机期间，根据您当前的需求，专注于以下活动，最大限度地提高效率：|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397



























.complete 30612,1 
step
#loop
.goto 379,45.74,62.85,15,0
.goto 379,46.11,62.79,15,0
.goto 379,46.20,63.34,15,0
.goto 379,45.74,62.85,0
.goto 379,46.11,62.79,0
.goto 379,46.20,63.34,0
>>杀死|cRXP_ENEMY_末日之声|r
.complete 30612,2 
.mob the ook of dook
step
#label Turn in The Leader Hozen
.goto 379,51.97,67.22
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Rabbitsfoot|r
.turnin 30612 >>Turn in The Leader Hozen
.target Brother Rabbitsfoot



















step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Keenbean|r and |cRXP_FRIENDLY_Cousin Gootfur|r
.accept 30744 >>接任务: |cRXP_WARN_寇塔混合咔啡|r
.accept 30745 >>接任务: |cRXP_WARN_制造难题|r
.goto 379,42.42,69.66
.accept 30742 >>接任务: |cRXP_WARN_知错就改|r
.accept 30743 >>接任务: |cRXP_WARN_羊屎咔啡|r
.goto 379,42.36,69.74
.target Uncle Keenbean
.target Cousin Gootfur
step
#completewith Kafa'kota Berry
>>杀死|cRXP_ENEMY_Kafa疯狂的山羊|r
.complete 30742,1 
.mob kafa-crazed mountain goat
step
#completewith Kafa'kota Berry
>>单击|cRXP_PICK_Kafa'goot“存款”|r
.complete 30743,1 
step
#completewith Kafa'kota Berry
>>杀死|cRXP_ENEMY_Kafa疯狂的Yeti|r
.complete 30745,1 
.mob kafa-crazed yeti
step
#loop
.goto 379,40.39,71.44,30,0
.goto 379,40.04,71.93,30,0
.goto 379,39.45,73.15,30,0
.goto 379,38.79,73.67,30,0
.goto 379,39.45,75.67,20,0
.goto 379,39.25,74.67,20,0
.goto 379,39.21,74.17,20,0
.goto 379,38.67,74.28,20,0
.goto 379,38.27,75.01,20,0
.goto 379,38.00,75.24,20,0
.goto 379,37.89,74.07,20,0
.goto 379,38.55,74.39,20,0
.goto 379,38.30,73.21,30,0
.goto 379,39.25,74.30,30,0
.goto 379,39.44,75.38,30,0
.goto 379,39.71,78.09,30,0
.goto 379,38.46,78.35,30,0
.goto 379,36.93,77.58,30,0
.goto 379,37.55,78.04,30,0
.goto 379,37.68,77.16,30,0
.goto 379,37.70,75.61,30,0
.goto 379,40.39,71.44,0
.goto 379,40.04,71.93,0
.goto 379,39.45,73.15,0
.goto 379,38.79,73.67,0
.goto 379,39.45,75.67,0
.goto 379,39.25,74.67,0
.goto 379,39.21,74.17,0
.goto 379,38.67,74.28,0
.goto 379,38.27,75.01,0
.goto 379,38.00,75.24,0
.goto 379,37.89,74.07,0
.goto 379,38.55,74.39,0
.goto 379,38.30,73.21,0
.goto 379,39.25,74.30,0
.goto 379,39.44,75.38,0
.goto 379,39.71,78.09,0
.goto 379,38.46,78.35,0
.goto 379,36.93,77.58,0
.goto 379,37.55,78.04,0
.goto 379,37.68,77.16,0
.goto 379,37.70,75.61,0
#label Kafa'kota Berry
>>单击|cRXP_PICK_Kafa'kota Berry|r并使用|T133958:0|t[Kafa'kota Berries]显著提升您的统计数据。
.complete 30744,1 
.turnin 30744 >>Turn in Kota Blend
.accept 30746 >>接任务: |cRXP_WARN_公平的交易|r
.use 81054
step
.goto 379,36.95,76.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nephew Burrberry|r |cRXP_WARN_outside the cave ontop of the mountain.|r
.turnin 30746 >>Turn in A Fair Trade
.target Nephew Burrberry
step
#completewith Kafa-Crazed Mountain Goat
#hidewindow
#loop
.goto 379,38.72,73.54,30,0
.goto 379,38.55,72.60,30,0
.goto 379,40.04,71.97,30,0
.goto 379,40.73,72.39,30,0
.goto 379,40.41,73.12,30,0
.goto 379,39.51,76.93,30,0
.goto 379,38.42,78.15,30,0
.goto 379,38.72,73.54,0
.goto 379,38.55,72.60,0
.goto 379,40.04,71.97,0
.goto 379,40.73,72.39,0
.goto 379,40.41,73.12,0
.goto 379,39.51,76.93,0
.goto 379,38.42,78.15,0
+1
step
#completewith Kafa'goot "Deposit" Marked
>>杀死|cRXP_ENEMY_Kafa疯狂的山羊|r
.complete 30742,1 
.mob kafa-crazed mountain goat
step
#completewith Kafa'goot "Deposit" Marked
>>杀死|cRXP_ENEMY_Kafa疯狂的Yeti|r
.complete 30745,1 
.mob kafa-crazed yeti
step
#label Kafa'goot "Deposit" Marked
>>单击|cRXP_PICK_Kafa'goot“存款”|r
.complete 30743,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Kafa疯狂的山羊|r
.complete 30742,1 
.mob kafa-crazed mountain goat
step
>>杀死|cRXP_ENEMY_Kafa疯狂的Yeti|r
.complete 30745,1 
.mob kafa-crazed yeti
step
#label Kafa-Crazed Mountain Goat
>>杀死|cRXP_ENEMY_Kafa疯狂的山羊|r
.complete 30742,1 
.mob kafa-crazed mountain goat
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uncle Keenbean|r, |cRXP_FRIENDLY_Cousin Gootfur|r and |cRXP_FRIENDLY_Nephew Burrberry|r
.turnin 30742 >>Turn in Shut it Down
.turnin 30743 >>Turn in Gourmet Kafa
.goto 379,42.52,69.35
.turnin 30745 >>Turn in Trouble Brewing
.goto 379,42.53,69.44

.goto 379,42.52,69.35
.target Nephew Burrberry
.target Uncle Keenbean
.target Cousin Gootfur





































































step
.goto 379,34.96,59.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Silentstrike|r
.turnin 30699 >>Turn in To Winter's Blossom
.target Lin Silentstrike
.accept 30723 >>接任务: |cRXP_WARN_马革裹尸|r
step
.goto 379,35.12,59.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.accept 30715 >>接任务: |cRXP_WARN_生死与共|r
.target Ban Bearheart
step
#completewith Shiya Boldblade
>>杀死|cRXP_ENEMY_Kun-Lai僵尸|r
.complete 30723,1 
.mob kun-lai corpsepicker
step
.goto 379,29.98,64.39
>>与|cRXP_FRIENDLY_Shiya Boldblade交互|r
.complete 30715,3 
.target Shiya Boldblade
step
.goto 379,30.16,62.49
>>与|cRXP_FRIENDLY_Liu of the Thousand互动|r
.complete 30715,2 
.target Liu of the Thousand
step
#label Shiya Boldblade
.goto 379,30.33,60.02
>>与|cRXP_FRIENDLY_Shado-Master智耀互动|r
.complete 30715,1 
.target Shado-Master Zhiyao
step
#loop
.goto 379,32.00,62.40,20,0
.goto 379,29.73,63.74,20,0
.goto 379,30.30,60.30,20,0
.goto 379,32.00,62.40,0
.goto 379,29.73,63.74,0
.goto 379,30.30,60.30,0
>>杀死|cRXP_ENEMY_Kun-Lai僵尸|r
.complete 30723,1 
.mob kun-lai corpsepicker
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Silentstrike|r and |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30715 >>Turn in A Line Unbroken
.goto 379,35.11,59.64
.turnin 30723 >>Turn in Honor, Even in Death
.accept 30724 >>接任务: |cRXP_WARN_上城墙！|r
.goto 379,34.95,59.30
.target Lin Silentstrike
.target Ban Bearheart
step
#completewith next
.goto 379,34.53,59.12
.logout >>|cRXP_WARN_将自己定位在航路点位置。|r
*>>|cRXP_WARN_按Escape并选择Logout |r|cFFFF0000这是跳过RP。|r
step
.goto 379,34.53,59.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kite-Master Len |r
.complete 30724,1 

.skipgossip 61512,2
.target Kite-Master Len
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike|r and |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
.turnin 30724 >>Turn in To the Wall!
.accept 30750 >>接任务: |cRXP_WARN_滚下去！|r
.goto 379,29.31,62.29
.accept 30751 >>接任务: |cRXP_WARN_恐怖的献祭|r
.goto 379,29.25,62.3
.target Lao-Chin the Iron Belly
.target Suna Silentstrike
step
#completewith Osul Veteran Archers
#hidewindow
#loop
.goto 379,27.92,60.90,25,0
.goto 379,26.84,60.04,25,0
.goto 379,26.05,59.10,25,0
.goto 379,27.92,60.90,0
.goto 379,26.84,60.04,0
.goto 379,26.05,59.10,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_资深弓箭手|r|cRXX_ENEMY_Fire-Warrior|r
.complete 30750,1 
.mob Osul Veteran Archer
.mob Osul Fire-Warrior
step
>>单击|cRXP_PICK_Yaungol油桶|r
.complete 30751,1 
step
#label Osul Veteran Archers
>>杀死|cRXP_ENEMY_资深弓箭手|r|cRXX_ENEMY_Fire-Warrior|r
.complete 30750,1 
.mob Osul Veteran Archer
.mob Osul Fire-Warrior
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r and |cRXP_FRIENDLY_Suna Silentstrike|r
.turnin 30751 >>Turn in A Terrible Sacrifice
.goto 379,29.25,62.30
.turnin 30750 >>Turn in Off the Wall!
.accept 30994 >>接任务: |cRXP_WARN_老陈的金点子|r
.goto 379,29.3,62.29
.target Suna Silentstrike
.target Lao-Chin the Iron Belly
step
#completewith next
.goto 379,29.31,62.29
.logout >>|cRXP_WARN_将自己定位在航路点位置。|r
*>>|cRXP_WARN_按Escape并选择Logout |r|cFFFF0000这是跳过RP。|r
step
.goto 379,29.31,62.29
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike |r
.complete 30994,1 

.skipgossip
.target Suna Silentstrike
step
.goto 379,31.81,60.10
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
.turnin 30994 >>Turn in Lao-Chin's Gambit
.target Lao-Chin the Iron Belly
.accept 30991 >>接任务: |cRXP_WARN_侧翻的酒桶！|r
step
.isOnQuest 30991
.goto 379,32.08,60.52
.vehicle >>单击|cRXP_PICK_Keg炸弹|r
.target Keg Bomb
step
#loop
.goto 379,30.90,62.46,20,0
.goto 379,30.90,63.36,20,0
.goto 379,30.09,63.92,20,0
.goto 379,29.94,62.80,20,0
.goto 379,30.90,62.46,0
.goto 379,30.90,63.36,0
.goto 379,30.09,63.92,0
.goto 379,29.94,62.80,0
>>使用|T135265:0|t[点燃Keg]（1）在附近多次摧毁|cRXP_ENEMY_Invaders|r和|cRXX_ENEMY_Osul Treelauncher |r|cRXP_WARN_doo|r
.complete 30991,1 
.complete 30991,2 
.mob osul invader
.mob osul treelauncher
step
.goto 379,31.82,60.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
.turnin 30991 >>Turn in Do a Barrel Roll!
.target Lao-Chin the Iron Belly
.accept 30992 >>接任务: |cRXP_WARN_终结！|r
step
.goto 379,31.36,61.48
>>杀死|cRXP_ENEMY_Gong Da|r
.complete 30992,1 
.mob Gong Da
step
.goto 379,31.28,61.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30992 >>Turn in Finish This!
.accept 30993 >>接任务: |cRXP_WARN_我的援军在哪儿？|r
.target Ban Bearheart
step
.goto 379,31.3,61.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
.complete 30993,1 
.skipgossip 61819,1
.target Ban Bearheart
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike|r

.target Suna Silentstrike
step
#completewith next
.logout 15 >>按Escape并在|cRXP_FRIENDLY_Ban Bearheart|r前面选择注销
step
.goto 379,33.97,58.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r |cRXP_WARN_only when 5seconds are left on the login timer.|r
.complete 30993,2 
.skipgossip 61819,1
.target Ban Bearheart
step
.goto 379,35.32,49.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30993 >>Turn in Where are My Reinforcements?
.target Ban Bearheart
.accept 30752 >>接任务: |cRXP_WARN_难以置信！|r
step
.isOnQuest 30752
.goto 379,36.7,47.72
.gossipoption 41432 >>Talk to |cRXP_FRIENDLY_Shado-Pan Sentinel|r
.timer 10,RP
.target Shado-Pan Sentinel
step
.goto 379,36.7,47.72
>>杀死|cRXP_ENEMY_Shadow-Pan哨兵|r
.complete 30752,1 
.skipgossip
.target Shado-Pan Sentinel
step
.goto 379,36.70,47.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r |cRXP_WARN_next to you.|r
.turnin 30752 >>Turn in Unbelievable!
.target Ban Bearheart





































































]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 9a) Townlong Steppes
#displayname Chapter 8 - Townlong Steppes
#next 9b) Dread Wastes





step
.goto 388,71.16,56.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r

.turnin 31695 >>Turn in Beyond the Wall
.accept 30814 >>接任务: |cRXP_WARN_迈出第一步|r
.target Taran Zhu
step
#loop
.goto 388,70.33,54.19,30,0
.goto 388,70.06,53.00,30,0
.goto 388,71.12,52.16,30,0
.goto 388,71.47,53.14,30,0
.goto 388,70.33,54.19,0
.goto 388,70.06,53.00,0
.goto 388,71.12,52.16,0
.goto 388,71.47,53.14,0
>>杀死|cRXP_ENEMY_Osul充电器|r
.complete 30814,1 
.mob osul charger
step
.goto 388,71.16,56.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30814 >>Turn in A Foot in the Door
.accept 30769 >>接任务: |cRXP_WARN_首波攻击|r
.accept 30770 >>接任务: |cRXP_WARN_四散奔逃|r
.accept 30771 >>接任务: |cRXP_WARN_完美沥青|r
.target Taran Zhu
step
#completewith Osul Sharphorn
#hidewindow
#loop
.goto 388,68.96,55.25,40,0
.goto 388,68.43,54.65,40,0
.goto 388,67.26,54.54,40,0
.goto 388,67.43,53.88,40,0
.goto 388,68.39,53.10,40,0
.goto 388,68.80,52.01,40,0
.goto 388,69.37,50.29,40,0
.goto 388,68.96,55.25,0
.goto 388,68.43,54.65,0
.goto 388,67.26,54.54,0
.goto 388,67.43,53.88,0
.goto 388,68.39,53.10,0
.goto 388,68.80,52.01,0
.goto 388,69.37,50.29,0
+1
step
#completewith Pots
>>杀死|cRXP_ENEMY_Osul Sharphorn|r
.complete 30769,1 
.mob osul sharphorn
step
#completewith Pots
>>与|cRXP_FRIENDLY_Long-Haired Yak|r和|cRXP_FRIENDLY_Steppebeast|r交互
.complete 30770,1 
.target Long-Haired Yak
.target Steppebeast
step
#label Pots
>>单击|cRXP_PICK_Pots|r
.complete 30771,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Osul Sharphorn|r
.complete 30769,1 
.mob osul sharphorn
step
>>与|cRXP_FRIENDLY_Long-Haired Yak|r和|cRXP_FRIENDLY_Steppebeast|r交互
.complete 30770,1 
.target Long-Haired Yak
.target Steppebeast
step
#label Osul Sharphorn
>>杀死|cRXP_ENEMY_Osul Sharphorn|r
.complete 30769,1 
.mob osul sharphorn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suna Silentstrike|r and |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30769 >>Turn in First Assault
.accept 30772 >>接任务: |cRXP_WARN_红色高原|r
.accept 30774 >>接任务: |cRXP_WARN_营救游侠|r
.goto 388,67.25,52.22
.turnin 30770 >>Turn in Running Rampant
.turnin 30771 >>Turn in Perfect Pitch
.accept 30773 >>接任务: |cRXP_WARN_借花献佛|r
.goto 388,67.21,52.28
.target Suna Silentstrike
.target Ban Bearheart
step
#completewith next
>>杀死|cRXP_ENEMY_Osul掠夺者|r为|cRXP_Loot_Stone Keys|r掠夺它们，并使用它们打开附近的|cRXP _PICK_Cages|r
.complete 30772,1 
.complete 30774,1 
.collect 81178,4,30774,0x2,-1
.disablecheckbox
.mob osul marauder
.target Longying Ranger
step
.goto 388,67.01,51.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katak the Defeated|r
.accept 30775 >>接任务: |cRXP_WARN_放逐|r
.target Katak the Defeated
step
#completewith Ku-Tong
>>杀死|cRXP_ENEMY_Osul掠夺者|r|cRXX_ENEMY_ Osul喷火|r抢夺|cRXP_Loot_Stone Keys|r，并用它们打开附近的|cRXT_PICK_Cages|r
.complete 30772,1 
.complete 30774,1 
.collect 81178,4,30774,0x2,-1
.disablecheckbox
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
#completewith Ku-Tong
>>向|cRXP_WARN_Ballistas投掷|T463515:0|t[Ban's Explorers]|r|cFFFF0000不要把它扔到有旋转杆的人身上|r
.complete 30773,1 
.use 81193
step
.goto 388,66.97,47.93,10,0
.goto 388,66.96,48.25
#label Ku-Tong
>>杀死小屋旁的|cRXP_ENEMY_Ku-Tong|r|cRXP-WARN_in|r
.complete 30775,3 
.mob ku-tong
step
#completewith Free Lin Silentstrike
>>向|cRXP_WARN_Ballistas投掷|T463515:0|t[Ban's Explorers]|r|cFFFF0000不要把它扔到有旋转杆的人身上|r
.complete 30773,1 
.use 81193
step
#completewith Free Lin Silentstrike
>>杀死|cRXP_ENEMY_Osul掠夺者|r|cRXX_ENEMY_ Osul喷火|r抢夺|cRXP_Loot_Stone Keys|r，并用它们打开附近的|cRXT_PICK_Cages|r
.complete 30772,1 
.complete 30774,2 
.collect 81178,4,30774,0x2,-1
.disablecheckbox
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
.goto 388,66.58,49.16
#label Free Lin Silentstrike
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Silentstrike|r
.complete 30774,3 
.skipgossip
.target Lin Silentstrike
step
#completewith Dominance
>>杀死|cRXP_ENEMY_Osul掠夺者|r|cRXX_ENEMY_ Osul喷火|r抢夺|cRXP_Loot_Stone Keys|r，并用它们打开附近的|cRXT_PICK_Cages|r
.complete 30772,1 
.collect 81178,4,30774,0x2,-1
.complete 30774,2 
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
#completewith Dominance
>>向|cRXP_WARN_Ballistas投掷|T463515:0|t[Ban's Explorers]|r|cFFFF0000不要把它扔到有旋转杆的人身上|r
.complete 30773,1 
.use 81193
step
#label Dominance
.achievement 6847,2 >>单击|cRXP_PICK_Scroll|r
step
#completewith Urang
>>杀死|cRXP_ENEMY_Osul掠夺者|r|cRXX_ENEMY_ Osul喷火|r抢夺|cRXP_Loot_Stone Keys|r，并用它们打开附近的|cRXT_PICK_Cages|r
.complete 30772,1 
.collect 81178,4,30774,0x2,-1
.complete 30774,2 
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
#completewith Urang
>>向|cRXP_WARN_Ballistas投掷|T463515:0|t[Ban's Explorers]|r|cFFFF0000不要把它扔到有旋转杆的人身上|r
.complete 30773,1 
.use 81193
step
.goto 388,64.80,50.21
#label Urang
>>杀死小屋旁的|cRXP_ENEMY_Urang |r|cRXP-WARN_in|r
.complete 30775,2 
.mob urang
step
#completewith Battat
>>杀死|cRXP_ENEMY_Osul掠夺者|r|cRXX_ENEMY_ Osul喷火|r抢夺|cRXP_Loot_Stone Keys|r，并用它们打开附近的|cRXT_PICK_Cages|r
.complete 30772,1 
.collect 81178,4,30774,0x2,-1
.complete 30774,2 
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
#completewith Battat
>>向|cRXP_WARN_Ballistas投掷|T463515:0|t[Ban's Explorers]|r|cFFFF0000不要把它扔到有旋转杆的人身上|r
.complete 30773,1 
.use 81193
step
.goto 388,65.75,51.4,10,0
.goto 388,65.72,51.64
#label Battat
>>杀死小屋旁的|cRXP_ENEMY_Battat|r|cRXP-WARN_in|r
.complete 30775,1 
.mob battat
step
#completewith Osul Marauder
#hidewindow
#loop
.goto 388,66.14,52.44,40,0
.goto 388,67.49,50.99,40,0
.goto 388,68.05,49.37,40,0
.goto 388,67.27,46.01,40,0
.goto 388,67.43,44.31,40,0
.goto 388,67.10,43.57,40,0
.goto 388,66.34,45.13,40,0
.goto 388,66.25,46.27,40,0
.goto 388,64.89,50.58,40,0
.goto 388,66.14,52.44,0
.goto 388,67.49,50.99,0
.goto 388,68.05,49.37,0
.goto 388,67.27,46.01,0
.goto 388,67.43,44.31,0
.goto 388,67.10,43.57,0
.goto 388,66.34,45.13,0
.goto 388,66.25,46.27,0
.goto 388,64.89,50.58,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Osul掠夺者|r|cRXX_ENEMY_ Osul喷火|r抢夺|cRXP_Loot_Stone Keys|r，并用它们打开附近的|cRXT_PICK_Cages|r
.complete 30772,1 
.collect 81178,4,30774,0x2,-1
.complete 30774,2 
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
>>向|cRXP_WARN_Ballistas投掷|T463515:0|t[Ban's Explorers]|r|cFFFF0000不要把它扔到有旋转杆的人身上|r
.complete 30773,1 
.use 81193
step
#label Osul Marauder
>>杀死|cRXP_ENEMY_Osul掠夺者|r|cRXX_ENEMY_ Osul喷火|r抢夺|cRXP_Loot_Stone Keys|r，并用它们打开附近的|cRXT_PICK_Cages|r
.complete 30772,1 
.collect 81178,4,30774,0x2,-1
.complete 30774,2 
.mob osul marauder
.mob Osul Spitfire
.target Longying Ranger
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r and |cRXP_FRIENDLY_Suna Silentstrike|r
.turnin 30774 >>Turn in Ranger Rescue
.turnin 30772 >>Turn in Seeing Red
.turnin 30773 >>Turn in Pitching In
.goto 388,67.21,52.27
.accept 30776 >>接任务: |cRXP_WARN_江达克|r
.goto 388,67.26,52.22
.target Suna Silentstrike
.target Ban Bearheart
step
.goto 388,66.99,51.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Katak the Defeated|r
.turnin 30775 >>Turn in The Exile
.target Katak the Defeated
step
.goto 388,66.66,51
>>单击|cRXP_PICK_Ceremonial Pile|r并杀死|cRXP_ENEMY_Jung Duk|r
.complete 30776,1 
.mob jung duk
step
.goto 388,71.02,56.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30776 >>Turn in Jung Duk
.accept 30777 >>接任务: |cRXP_WARN_搜寻孙娜|r
.timer 15,RP
.target Ban Bearheart
step
.goto 388,82.68,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30777 >>Turn in In Search of Suna
.accept 30778 >>接任务: |cRXP_WARN_尘归尘，土归土|r
.accept 30779 >>接任务: |cRXP_WARN_杀死食腐者|r
.target Ban Bearheart
step
.goto 388,82.71,73.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiao Tu|r
.accept 30781 >>接任务: |cRXP_WARN_野牛人的丧钟|r
.target Xiao Tu
step
.goto 388,82.59,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r
.accept 30780 >>接任务: |cRXP_WARN_图腾研究|r
.target Yalia Sagewhisper
step
#completewith Eastern Smoke Trail
>>杀死|cRXP_ENEMY_Ashfang Hyena |r
.complete 30779,1 
.mob ashfang hyena
step
#completewith Eastern Smoke Trail
>>单击|cRXP_PICK_淡风图腾|r
.complete 30780,1 
step
#completewith Eastern Smoke Trail
>>投掷|T135432:0|t[Shadow Pan Torch]on |cRXP_ENEMY_Palewind村民|r
.complete 30778,1 
.mob Palewind Villager
step
#label Eastern Smoke Trail
.goto 388,81.26,72.27
>>前往烟雾轨迹，但确保|cRXP_FRIENDLY_Xiao Tu|r跟随您。
*|cRXP_WARN_Wait for him at the smoke trail.|r
*|cFFFF0000In case you lose him, talk to him at his original location.|r
.complete 30781,2 
.timer 6,RP
.target Xiao Tu
step
#completewith Northwestern Smoke Trail
>>杀死|cRXP_ENEMY_Ashfang Hyena |r
.complete 30779,1 
.mob ashfang hyena
step
#completewith Northwestern Smoke Trail
>>单击|cRXP_PICK_淡风图腾|r
.complete 30780,1 
step
#completewith Northwestern Smoke Trail
>>投掷|T135432:0|t[Shadow Pan Torch]on |cRXP_ENEMY_Palewind村民|r
.complete 30778,1 
.mob Palewind Villager
step
#label Northwestern Smoke Trail
.goto 388,84.12,70.62
>>前往烟雾轨迹，但确保|cRXP_FRIENDLY_Xiao Tu|r跟随您。
*|cRXP_WARN_Wait for him at the smoke trail.|r
*|cFFFF0000In case you lose him, talk to him at his original location.|r
.complete 30781,4 
.target Xiao Tu
step
#completewith Eastern Smoke Trail
>>杀死|cRXP_ENEMY_Ashfang Hyena |r
.complete 30779,1 
.mob ashfang hyena
step
#completewith Eastern Smoke Trail
>>单击|cRXP_PICK_淡风图腾|r
.complete 30780,1 
step
#completewith Eastern Smoke Trail
>>投掷|T135432:0|t[Shadow Pan Torch]on |cRXP_ENEMY_Palewind村民|r
.complete 30778,1 
.mob Palewind Villager
step
#label Eastern Smoke Trail
.goto 388,84.86,71.55
>>前往烟雾轨迹，但确保|cRXP_FRIENDLY_Xiao Tu|r跟随您。
*|cRXP_WARN_Wait for him at the smoke trail.|r
*|cFFFF0000In case you lose him, talk to him at his original location.|r
.complete 30781,1 
.target Xiao Tu
step
#completewith Trapped in a strange land
>>杀死|cRXP_ENEMY_Ashfang Hyena |r
.complete 30779,1 
.mob ashfang hyena
step
#completewith Trapped in a strange land
>>单击|cRXP_PICK_淡风图腾|r
.complete 30780,1 
step
#completewith Trapped in a strange land
>>投掷|T135432:0|t[Shadow Pan Torch]on |cRXP_ENEMY_Palewind村民|r
.complete 30778,1 
.mob Palewind Villager
step
#label Trapped in a strange land
.goto 388,84.08,72.87
.achievement 6847,4 >>单击|cRXP_PICK_Scroll|r
step
#completewith Southern Smoke Trail
>>单击|cRXP_PICK_淡风图腾|r
.complete 30780,1 
step
#completewith Southern Smoke Trail
>>投掷|T135432:0|t[Shadow Pan Torch]on |cRXP_ENEMY_Palewind村民|r
.complete 30778,1 
.mob Palewind Villager
step
#label Southern Smoke Trail
.goto 388,83.49,78.51
>>前往烟雾轨迹，但确保|cRXP_FRIENDLY_Xiao Tu|r跟随您。
*|cFFFF0000In case you lose him, talk to him at his original location.|r
.complete 30781,3 
.target Xiao Tu
step
#completewith Ashfang Hyena
#hidewindow
#loop
.goto 388,83.02,79.57,40,0
.goto 388,83.00,77.23,40,0
.goto 388,82.62,74.11,40,0
.goto 388,80.27,71.93,40,0
.goto 388,82.65,70.41,40,0
.goto 388,83.02,79.57,0
.goto 388,83.00,77.23,0
.goto 388,82.62,74.11,0
.goto 388,80.27,71.93,0
.goto 388,82.65,70.41,0
+1
step
#completewith Palewind Villagers
>>杀死|cRXP_ENEMY_Ashfang Hyena |r
.complete 30779,1 
.mob ashfang hyena
step
#completewith Palewind Villagers
>>单击|cRXP_PICK_淡风图腾|r
.complete 30780,1 
step
#label Palewind Villagers
>>投掷|T135432:0|t[Shadow Pan Torch]on |cRXP_ENEMY_Palewind村民|r
.complete 30778,1 
.mob Palewind Villager
step
#completewith next
>>杀死|cRXP_ENEMY_Ashfang Hyena |r
.complete 30779,1 
.mob ashfang hyena
step
>>单击|cRXP_PICK_淡风图腾|r
.complete 30780,1 
step
#label Ashfang Hyena
>>杀死|cRXP_ENEMY_Ashfang Hyena |r
.complete 30779,1 
.mob ashfang hyena
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r and |cRXP_FRIENDLY_Yalia Sagewhisper|r
.turnin 30778 >>Turn in Dust to Dust
.turnin 30779 >>Turn in Slaying the Scavengers
.turnin 30781 >>Turn in Last Toll of the Yaungol
.goto 388,82.68,73.03
.turnin 30780 >>Turn in Totemic Research
.accept 30827 >>接任务: |cRXP_WARN_幕后黑手|r
.goto 388,82.6,73.03
.target Yalia Sagewhisper
.target Ban Bearheart
step
.goto 388,82.59,73.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r
.complete 30827,1 
.timer 18,RP
.skipgossip 60864,1
.target Yalia Sagewhisper
step
.goto 388,82.59,73.25
>>单击|cRXP_PICK_善良图腾|r
.complete 30827,2 
step
.goto 388,82.69,73.64
>>单击|cRXP_PICK_宁静图腾|r
.complete 30827,4 
step
.goto 388,82.42,73.57
>>点击|cRXP_PICK_宁静图腾|r
.complete 30827,3 
.timer 30,RP
step
>>|cRXP_WARN_在任务停机期间，根据您当前的需求，专注于以下活动，最大限度地提高效率：|r
*- Open |cRXP_FRIENDLY_|T1542852:0|t[Caches of Infinite Treasures]|r
*- Replace Old Gear
*- Extract Old Gems
*- Scrap Obsolete Gear
*- Combine Prismatic Gems
.use 211279
.usespell 436523
.usespell 433397



























.complete 30827,5 
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r and |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30827 >>Turn in What Lies Beneath
.accept 30783 >>接任务: |cRXP_WARN_恨之入骨|r
.goto 388,82.59,73.04
.accept 30782 >>接任务: |cRXP_WARN_怨恨的灵魂|r
.goto 388,82.68,73.03
.target Ban Bearheart
step
#completewith Spiteful Spirit
#hidewindow
#loop
.goto 388,83.22,73.59,40,0
.goto 388,82.28,73.91,40,0
.goto 388,81.97,72.68,40,0
.goto 388,83.02,71.87,40,0
.goto 388,83.22,73.59,0
.goto 388,82.28,73.91,0
.goto 388,81.97,72.68,0
.goto 388,83.02,71.87,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Spiteful Spirit|r
.complete 30782,1 
.mob spiteful spirit
step
>>投掷|T310733:0|t[和谐图腾]到|cRXP_FRIENDLY_Crazed Shadow Pan Rangers|r并杀死|cRXP_ENEMY_Seething Hatred|r
.complete 30783,1 
.mob Seething Hatred
step
#label Spiteful Spirit
>>杀死|cRXP_ENEMY_Spiteful Spirit|r
.complete 30782,1 
.mob spiteful spirit
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yalia Sagewhisper|r and |cRXP_FRIENDLY_Ban Bearheart|r
.turnin 30783 >>Turn in Hatred Becomes Us
.goto 388,82.6,73.03
.turnin 30782 >>Turn in Spiteful Spirits
.accept 30784 >>接任务: |cRXP_WARN_不归路|r
.goto 388,82.67,73.03
.target Yalia Sagewhisper
.target Ban Bearheart
step
.goto 388,84.08,70.52
>>杀死|cRXP_ENEMY_Suna Silentstrike|r
.complete 30784,1 
.mob Suna Silentstrike
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r and |cRXP_FRIENDLY_Yalia Sagewhisper|r
.turnin 30784 >>Turn in The Point of No Return
.accept 30785 >>接任务: |cRXP_WARN_高岚阵|r
.goto 388,82.68,73.02

.goto 388,82.59,73.03
.target Yalia Sagewhisper
.target Ban Bearheart
step
.goto 388,76.41,82.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30785 >>Turn in Gao-Ran Battlefront
.target Taran Zhu
.accept 30884 >>接任务: |cRXP_WARN_战场后方|r
step
.goto 388,75.86,83.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
.accept 30891 >>接任务: |cRXP_WARN_解毒良药|r
.target Septi the Herbalist
step
#completewith next
>>单击|cRXP_PICK_Violet Citron|r
.complete 30891,1 
step
.goto 388,76.94,78.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
.turnin 30884 >>Turn in Behind the Battlefront
.target Taoshi
.accept 30887 >>接任务: |cRXP_WARN_不速之客|r
step
#completewith Krik'thik Deep-Scout
#hidewindow
#loop
.goto 388,77.99,80.34,40,0
.goto 388,78.69,80.95,40,0
.goto 388,79.41,78.88,40,0
.goto 388,79.84,76.93,40,0
.goto 388,78.77,75.90,40,0
.goto 388,78.41,75.15,40,0
.goto 388,76.48,76.91,40,0
.goto 388,77.99,80.34,0
.goto 388,78.69,80.95,0
.goto 388,79.41,78.88,0
.goto 388,79.84,76.93,0
.goto 388,78.77,75.90,0
.goto 388,78.41,75.15,0
.goto 388,76.48,76.91,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Krik'thik深度侦察兵|r
.complete 30887,1 
.mob krik'thik deep-scout
step
>>单击|cRXP_PICK_Violet Citron|r
.complete 30891,1 
step
#label Krik'thik Deep-Scout
>>杀死|cRXP_ENEMY_Krik'thik深度侦察兵|r
.complete 30887,1 
.mob krik'thik deep-scout
step
.goto 388,75.86,83.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
.turnin 30891 >>Turn in Treatment for the Troops
.target Septi the Herbalist
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r and |cRXP_FRIENDLY_Mao the Lookout|r
.turnin 30887 >>Turn in Unwelcome Intruders
.accept 30888 >>接任务: |cRXP_WARN_防线上的突破口|r
.accept 30890 >>接任务: |cRXP_WARN_疲惫不堪|r
.goto 388,79.47,84.47
.accept 30889 >>接任务: |cRXP_WARN_布置陷阱|r
.goto 388,79.38,84.45
.target Mao the Lookout
.target Taoshi
step
#completewith Scout Jai-gan
*Use |T135815:0|t[Shado-Pan Flare] near moving red dust to make |cRXP_ENEMY_Krik'thik Scentlayer|r visible.
>>杀死|cRXP_ENEMY_Krik'thik场景层|r
.complete 30888,1 
.mob krik'thik scentlayer
.use 81925
step
#completewith Scout Jai-gan
>>单击|cRXP_PICK_Shadow-Pan Spike Traps|r
.complete 30889,1 
step
.goto 388,82.21,84.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Wei-chin|r
.complete 30890,1 
.skipgossip
.target Scout Wei-chin
step
.goto 388,81.30,86.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Long|r
.complete 30890,2 
.skipgossip
.target Scout Long
step
.goto 388,82.52,89.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Ying|r
.complete 30890,3 
.skipgossip
.target Scout Ying
step
#label Scout Jai-gan
.goto 388,79.02,90.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Jai-gan|r
.complete 30890,4 
.skipgossip
.target Scout Jai-gan
step
#completewith Krik'thik Scentlayer
#hidewindow
#loop
.goto 388,80.71,87.11,40,0
.goto 388,81.30,83.97,40,0
.goto 388,81.34,82.25,40,0
.goto 388,81.98,84.61,40,0
.goto 388,81.87,88.40,40,0
.goto 388,81.11,90.75,40,0
.goto 388,80.71,87.11,0
.goto 388,81.30,83.97,0
.goto 388,81.34,82.25,0
.goto 388,81.98,84.61,0
.goto 388,81.87,88.40,0
.goto 388,81.11,90.75,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Krik'thik场景层|r
*Use |T135815:0|t[Shado-Pan Flare] near moving red dust to make |cRXP_ENEMY_Krik'thik Scentlayer|r visible.
.complete 30888,1 
.mob krik'thik scentlayer
step
>>单击|cRXP_PICK_Shadow-Pan Spike Traps|r
.complete 30889,1 
.use 81925
step
#label Krik'thik Scentlayer
>>杀死|cRXP_ENEMY_Krik'thik场景层|r
*Use |T135815:0|t[Shado-Pan Flare] near moving red dust to make |cRXP_ENEMY_Krik'thik Scentlayer|r visible.
.complete 30888,1 
.mob krik'thik scentlayer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r and |cRXP_FRIENDLY_Mao the Lookout|r
.turnin 30888 >>交任务: |cRXP_FRIENDLY_防线上的突破口|r
.turnin 30890 >>Turn in The Restless Watch
.accept 30960 >>接任务: |cRXP_WARN_小径归来|r
.goto 388,79.46,84.47
.turnin 30889 >>Turn in Trap Setting
.goto 388,79.39,84.46
.target Mao the Lookout
.target Taoshi
step
.goto 388,76.41,82.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30960 >>Turn in Returning from the Pass
.target Taran Zhu
.accept 30893 >>接任务: |cRXP_WARN_无尽的螳螂妖|r
step
.goto 388,75.86,83.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
.accept 30892 >>接任务: |cRXP_WARN_救死扶伤|r
.accept 30894 >>接任务: |cRXP_WARN_搜查遗体|r
.target Septi the Herbalist
step
#completewith Krik'thik Limbpincer
#hidewindow
#loop
.goto 388,73.68,86.64,40,0
.goto 388,73.53,88.82,40,0
.goto 388,74.50,90.48,40,0
.goto 388,75.25,89.01,40,0
.goto 388,74.78,87.34,40,0
.goto 388,74.72,85.84,40,0
.goto 388,73.68,86.64,0
.goto 388,73.53,88.82,0
.goto 388,74.50,90.48,0
.goto 388,75.25,89.01,0
.goto 388,74.78,87.34,0
.goto 388,74.72,85.84,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Krik'thik肢钳|r和|cRXD_ENEMY_克里克蝗虫卫士|r并点击它们的|cRX_PICK_Krik'thik肢|r
.complete 30893,1 
.complete 30894,1 
.mob Krik'thik Limbpincer
.mob Krik'thik Locust-Guard
step
>>Use |T237266:0|t[Citron-Infused Bandages] on |cRXP_FRIENDLY_Injured Gao-ran Blackguards|r
*|cRXP_WARN_Priotize your own healing spells, if you have any.|r
.complete 30892,1 
.use 82787
.target Injured Gao-ran Blackguards
step
#label Krik'thik Limbpincer
>>杀死|cRXP_ENEMY_Krik'thik肢钳|r和|cRXD_ENEMY_克里克蝗虫卫士|r并点击它们的|cRX_PICK_Krik'thik肢|r
.complete 30893,1 
.complete 30894,1 
.mob Krik'thik Limbpincer
.mob Krik'thik Locust-Guard
step
.goto 388,75.86,83.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Septi the Herbalist|r
.turnin 30892 >>Turn in Back on Their Feet
.turnin 30894 >>Turn in Rummaging Through the Remains
.target Septi the Herbalist
step
.goto 388,76.42,82.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30893 >>Turn in The Endless Swarm
.target Taran Zhu
.accept 30895 >>接任务: |cRXP_WARN_临时弹药|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Feng|r and |cRXP_FRIENDLY_Initiate Chao|r
.accept 30896 >>接任务: |cRXP_WARN_小偷和捣蛋鬼|r
.goto 388,70.46,86.37
.accept 30897 >>接任务: |cRXP_WARN_所托非人|r
.goto 388,70.33,86.67
.target Initiate Feng
.target Initiate Chao
step
#completewith next
>>杀死|cRXP_ENEMY_Agated Nettleskins|r和|cRXD_ENEMY_AGated Seedderer|r为|cRXP_OOT_Volatile Dread Orbs|r掠夺它们
.complete 30896,1 
.complete 30895,1 
.mob Agitated Nettleskin
.mob Agitated Seedstealer
step
.goto 388,63.07,87.65
>>杀死|cRXP_ENEMY_Needbottom|r为|cRXP_Loot_Chao的剑而掠夺它们|r
.complete 30897,1 
.mob Needlebottom
step
#loop
.goto 388,65.27,87.95,40,0
.goto 388,67.00,87.12,40,0
.goto 388,68.90,89.21,40,0
.goto 388,68.65,85.72,40,0
.goto 388,69.97,84.44,40,0
.goto 388,65.27,87.95,0
.goto 388,67.00,87.12,0
.goto 388,68.90,89.21,0
.goto 388,68.65,85.72,0
.goto 388,69.97,84.44,0
>>杀死|cRXP_ENEMY_Agated Nettleskins|r和|cRXD_ENEMY_AGated Seedderer|r为|cRXP_Loot_易失性Dread Orbs|r|cRXT_WARN_额外点击它们|r
.complete 30896,1 
.complete 30895,1 
.mob Agitated Nettleskin
.mob Agitated Seedstealer
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Feng|r and |cRXP_FRIENDLY_Initiate Chao|r
.turnin 30897 >>Turn in In the Wrong Hands
.goto 388,70.34,86.67
.turnin 30896 >>Turn in Thieves and Troublemakers
.goto 388,70.46,86.38
.target Initiate Chao
.target Initiate Feng
step
.goto 388,76.41,82.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30895 >>Turn in Improvised Ammunition
.target Taran Zhu
.accept 30898 >>接任务: |cRXP_WARN_削减虫群|r
step
.goto 388,74.8,84.72
.isOnQuest 30898
.vehicle >>单击|cRXP_PICK_Dragon Launcher|r
.target Dragon Launcher
step
>>使用|T135597:0|t[龙炮]杀死来袭的|cRXP_ENEMY_Krik'thik无人机|r
.complete 30898,1 
.mob krik'thik drone
step
.goto 388,74.22,85.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
.turnin 30898 >>Turn in Cutting the Swarm
.target Taoshi
.accept 30900 >>接任务: |cRXP_WARN_恐惧废土之骇|r
step
.goto 388,74.41,86.37
>>杀死从泥土中出现的|cRXP_ENEMY_Norvakes|r。
.complete 30900,1 
.mob norvakess
step
.goto 388,76.42,82.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30900 >>Turn in Terror of the Dread Wastes
.target Taran Zhu
.accept 30901 >>接任务: |cRXP_WARN_沿着南部前线|r
step
.goto 388,67.31,80.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
.turnin 30901 >>Turn in Along the Southern Front
.target Taoshi
.accept 30970 >>接任务: |cRXP_WARN_憎恨的怒火|r
step
.goto 388,67.36,80.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Initiate Pao-Me|r
.accept 30971 >>接任务: |cRXP_WARN_添加库存|r
.target Initiate Pao-Me
step
#completewith Seething Fleshripper
#hidewindow
#loop
.goto 388,64.17,82.63,40,0
.goto 388,66.69,83.71,40,0
.goto 388,66.65,81.43,40,0
.goto 388,64.17,82.63,0
.goto 388,66.69,83.71,0
.goto 388,66.65,81.43,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Seething Fleshripper|r
.complete 30970,1 
.mob seething fleshripper
step
>>单击|cRXP_PICK_Shadow-Pan火箭|r
.complete 30971,1 
step
#label Seething Fleshripper
>>杀死|cRXP_ENEMY_Seething Fleshripper|r
.complete 30970,1 
.mob seething fleshripper
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r and |cRXP_FRIENDLY_Initiate Pao-Me|r
.turnin 30970 >>Turn in Enraged By Hatred
.goto 388,67.32,80.86
.turnin 30971 >>Turn in Taking Stock
.accept 30972 >>接任务: |cRXP_WARN_加入战斗|r
.goto 388,67.37,80.67
.target Taoshi
.target Initiate Pao-Me
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r and |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30972 >>Turn in Joining the Fight
.goto 388,61.59,79.36
.accept 30973 >>接任务: |cRXP_WARN_火攻|r
.goto 388,61.64,79.33
.target Taran Zhu
.target Lao-Chin the Iron Belly
step
#loop
.goto 388,61.24,79.28,40,0
.goto 388,60.77,78.83,40,0
.goto 388,62.14,79.64,40,0
.goto 388,60.58,81.01,40,0
.goto 388,61.24,79.28,0
.goto 388,60.77,78.83,0
.goto 388,62.14,79.64,0
.goto 388,60.58,81.01,0
>>杀死|cRXP_ENEMY_Kor'thik Timberhusk|r
.complete 30973,1 
.mob kor'thik timberhusk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r and |cRXP_FRIENDLY_Lao-Chin the Iron Belly|r
.turnin 30973 >>Turn in Up In Flames
.goto 388,61.64,79.32
.accept 30975 >>接任务: |cRXP_WARN_占领黯光桥|r
.goto 388,61.6,79.35
.target Lao-Chin the Iron Belly
.target Taran Zhu
step
.isOnQuest 30975
.goto 422,44.87,9.87,5 >>|cRXP_WARN_Follow the Arrow|r
.timer 15, Time until enemy arrival
step
.goto 422,43.33,10.89,20,0
.goto 422,44.38,12.08,20,0
.goto 422,45.57,11.24,20,0
.goto 422,44.85,9.96
>>杀死|cRXP_ENEMY_Korthik血书|r和|cRXD_ENEMY_Hulking Korthik Fleshrender |r|cRXP_WARN_pickup桶以获得伤害增益|r
.complete 30975,1 
.complete 30975,2 
.mob hulking kor'thik fleshrender
.mob kor'thik bloodletter
step
.goto 388,61.11,83.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30975 >>Turn in The Taking of Dusklight Bridge
.target Taran Zhu
.accept 30976 >>接任务: |cRXP_WARN_参加狩猎|r
step
.goto 388,67.94,67.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r

.target Orbiss
.accept 30786 >>接任务: |cRXP_WARN_利矛穿心，铁锁囚魂|r
step
.goto 388,68.42,71.46,10,0
.goto 388,67.94,67.66
>>杀死|cRXP_ENEMY_Dmong Naruuk|r|cRXP-WARN_一旦他在0%|r上，你就可以移回任务给予者。
.complete 30786,1 
.mob dmong naruuk
step
.goto 388,67.94,67.66
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.turnin 30786 >>Turn in A Spear Through My Side, A Chain Through My Soul
.target Orbiss
.accept 30787 >>接任务: |cRXP_WARN_火把|r
step
#loop
>>杀死|cRXP_ENEMY_Osul迷雾萨满|r，然后点击|cRX_PICK_Mist-Shaman的火炬|r
.goto 388,66.30,67.89,30,0
.goto 388,65.76,68.96,30,0
.goto 388,67.94,69.51,30,0
.goto 388,66.30,67.89,0
.goto 388,65.76,68.96,0
.goto 388,67.94,69.51,0
.complete 30787,1 
.mob Osul Mist-Shaman
step
.goto 388,67.94,67.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orbiss|r
.turnin 30787 >>Turn in The Torches
.target Orbiss






































































step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r and |cRXP_FRIENDLY_Rensai Oakhide|r
.turnin 30976 >>交任务: |cRXP_FRIENDLY_参加狩猎|r
.accept 30899 >>接任务: |cRXP_WARN_神射手|r
.goto 388,54.04,78.08
.accept 30977 >>接任务: |cRXP_WARN_落地欢迎|r
.goto 388,53.93,78.14
.target Rensai Oakhide
.target Taran Zhu
step
.goto 388,51.27,83.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Ye|r
.accept 31032 >>接任务: |cRXP_WARN_烟雾弥漫|r
.target Marksman Ye
step
#completewith next
>>杀死|cRXP_ENEMY_Kor'thik Fleetwing|r
*Use |T135433:0|t[Wu Kao Torch] near dead |cRXP_ENEMY_Kor'thik Fleetwing.|r
.complete 30977,1 
.complete 31032,1 
.mob kor'thik fleetwing
.use 83768
step
.goto 388,51.67,87.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
.turnin 30899 >>Turn in In Skilled Hands
.target Hawkmaster Nurong
.accept 30978 >>接任务: |cRXP_WARN_愤怒的天空|r
step
.goto 388,51.66,87.31
.isOnQuest 30978
.vehicle >>单击|cRXP_PICK_Nurong的大炮|r
.target Nurong's Cannon
step
.goto 388,51.66,87.31
>>使用|T135597:0|t[Nurong’s Cannon Shot]（1）Shootdown |cRXP_ENEMY_Kor'thik Swarmers |r和|cRXP_WARN_afterwards|r kill|cRXX_ENEMY_Voress'talik|r
*|cRXP_WARN_Don't spam shot at |cRXP_ENEMY_Voress'thalik|r, try to be gentle :)|r


.complete 30978,1 
.complete 30978,2 
.target Voress'thalik
.target Kor'thik Swarmers
step
.goto 388,51.67,87.26
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
.turnin 30978 >>Turn in Hostile Skies
.target Hawkmaster Nurong
.accept 30979 >>接任务: |cRXP_WARN_毁灭|r
step
#loop
.goto 388,53.64,87.59,20,0
.goto 388,54.25,87.76,20,0
.goto 388,53.64,87.59,0
.goto 388,54.25,87.76,0
>>杀死|cRXP_ENEMY_Voress'talik|r
.complete 30979,1 
.mob voress'thalik
step
.goto 388,53.99,86.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hawkmaster Nurong|r
.turnin 30979 >>交任务: |cRXP_FRIENDLY_毁灭|r Below
.accept 30980 >>接任务: |cRXP_WARN_影踪派的英雄|r
.target Hawkmaster Nurong
step
#loop
.goto 388,52.28,82.91,20,0
.goto 388,50.37,84.64,20,0
.goto 388,51.30,85.97,20,0
.goto 388,52.28,82.91,0
.goto 388,50.37,84.64,0
.goto 388,51.30,85.97,0
>>杀死|cRXP_ENEMY_Kor'thik Fleetwing|r
*Use |T135433:0|t[Wu Kao Torch] near dead |cRXP_ENEMY_Kor'thik Fleetwing.|r
.complete 30977,1 
.complete 31032,1 
.mob kor'thik fleetwing
.use 83768
step
.goto 388,51.26,83.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Ye|r
.turnin 31032 >>Turn in Choking the Skies
.target Marksman Ye
step
.goto 388,53.92,78.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
.turnin 30977 >>Turn in Grounded Welcome
.target Rensai Oakhide
step
.goto 388,54.07,77.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30980 >>Turn in Heroes of the Shado-Pan
.target Taran Zhu
.accept 31065 >>接任务: |cRXP_WARN_洞悉|r
step
.goto 388,53.49,77.40
>>单击|cRXP_PICK_Wu Kao Spyglass|r
.complete 31065,1 
step
.goto 388,54.06,77.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 31065 >>Turn in Buried Beneath
.target Taran Zhu
.accept 30981 >>接任务: |cRXP_WARN_陶矢和考维克西斯|r
.accept 31063 >>接任务: |cRXP_WARN_老陈和塞勒沃克斯|r
.accept 31064 >>接任务: |cRXP_WARN_砮荣和罗塞克|r
step
.goto 388,53.94,78.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
.accept 31687 >>接任务: |cRXP_WARN_削弱希克提克|r
.accept 31688 >>接任务: |cRXP_WARN_寻找冷恒|r
.target Rensai Oakhide
step
#completewith Korvexxis
>>杀死|cRXP_ENEMY_Sik'thik咒语|r
.complete 31687,1 
.mob Sik'thik Drone
.mob Sik'thik Vess-Guard
.mob Sik'thik Venomspitter
step
#completewith Korvexxis
>>单击|cRXP_PICK_Sik'thik Cages|r
.complete 31688,1 
.complete 31688,2 
step
#label Korvexxis
.goto 388,46.64,83.04
>>杀死|cRXP_ENEMY_Korvexis|r
.complete 30981,1 
.mob korvexxis
step
#completewith Serevex
>>杀死|cRXP_ENEMY_Sik'thik咒语|r
.complete 31687,1 
.mob Sik'thik Drone
.mob Sik'thik Vess-Guard
.mob Sik'thik Venomspitter
step
#completewith Serevex
>>单击|cRXP_PICK_Sik'thik Cages|r
.complete 31688,1 
.complete 31688,2 
step
#label Serevex
.goto 388,45.35,77.39
>>杀死|cRXP_ENEMY_Sereve|r
.complete 31063,1 
.mob serevex
step
#completewith Rothek
>>杀死|cRXP_ENEMY_Sik'thik咒语|r
.complete 31687,1 
.mob Sik'thik Drone
.mob Sik'thik Vess-Guard
.mob Sik'thik Venomspitter
step
#completewith Rothek
>>单击|cRXP_PICK_Sik'thik Cages|r
.complete 31688,1 
.complete 31688,2 
step
#label Rothek
.goto 388,39.82,75.66
>>杀死|cRXP_ENEMY_Rothek|r
.complete 31064,1 
.mob rothek
step
#completewith Sik'thik Mantids
#hidewindow
#loop
.goto 388,40.70,80.95,40,0
.goto 388,42.62,78.48,40,0
.goto 388,44.29,77.31,40,0
.goto 388,46.64,76.70,40,0
.goto 388,46.60,74.42,40,0
.goto 388,49.41,78.82,40,0
.goto 388,47.78,83.93,40,0
.goto 388,46.95,86.57,40,0
.goto 388,40.70,80.95,0
.goto 388,42.62,78.48,0
.goto 388,44.29,77.31,0
.goto 388,46.64,76.70,0
.goto 388,46.60,74.42,0
.goto 388,49.41,78.82,0
.goto 388,47.78,83.93,0
.goto 388,46.95,86.57,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Sik'thik咒语|r
.complete 31687,1 
.mob Sik'thik Drone
.mob Sik'thik Vess-Guard
.mob Sik'thik Venomspitter
step
>>单击|cRXP_PICK_Sik'thik Cages|r
.complete 31688,1 
.complete 31688,2 
step
#label Sik'thik Mantids
>>杀死|cRXP_ENEMY_Sik'thik咒语|r
.complete 31687,1 
.mob Sik'thik Drone
.mob Sik'thik Vess-Guard
.mob Sik'thik Venomspitter
step
.goto 388,47.49,78.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r
.turnin 30981 >>Turn in Nurong and Rothek
.target Taran Zhu
.turnin 31063 >>Turn in Lao-Chin and Serevex
.turnin 31064 >>Turn in Nurong and Rothek
.accept 30968 >>接任务: |cRXP_WARN_恨之煞|r
.timer 38,RP
step
.goto 388,53.92,78.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rensai Oakhide|r
.turnin 31687 >>Turn in Thinning the Sik'thik
.turnin 31688 >>Turn in The Search for Restless Leng
.target Rensai Oakhide
step
.goto 388,46.05,82.59
>>Kill |cRXP_ENEMY_Sha of Hatred|r
.complete 30968,1 
.mob Sha of Hatred
step
.goto 388,46.12,82.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taoshi|r
.turnin 30968 >>Turn in The Sha of Hatred
.target Taoshi
step
.isQuestAvailable 30964
.goto 388,47.37,79.1 >>Leave the Temple


step
.goto 388,49.15,71.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Bamfu|r
.accept 30922 >>接任务: |cRXP_WARN_纯天然抗菌剂|r
.accept 30963 >>接任务: |cRXP_WARN_战场铸甲师|r
.accept 30964 >>接任务: |cRXP_WARN_合适的药膏|r
.target Provisioner Bamfu
step
.goto 388,49.14,71.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai Ho|r
.accept 30921 >>接任务: |cRXP_WARN_螳螂妖的动机|r
.accept 30923 >>接任务: |cRXP_WARN_拖住螳螂妖|r
.target Tai Ho
step
#completewith Gunpowder Casks
>>杀死|cRXP_ENEMY_Longshadow Mushan |r掠夺它们|cRXD_Loot_满Mushan膀胱|r
.complete 30922,1 
.mob Longshadow Mushan
.mob Longshadow Bull
step
#completewith Gunpowder Casks
>>杀死|cRXP_ENEMY_Rankbit Tortoise|r和|cRXD_ENEMY_rankbit Ancient|r掠夺它们以获取|cRXP_Loot_Rankbite外壳碎片|r
.complete 30963,1 
.mob Rankbite Tortoise
.mob Rankbite Ancient
step
#completewith Gunpowder Casks
>>单击|cRXP_PICK_Mao-Willow的。|r
.complete 30964,1 
step
#completewith Gunpowder Casks
>>杀死|cRXP_ENEMY_Kri'thik尖叫者|r和|cRXX_ENEMY_克里西克接骨木师|r|cRXP_WARN_实际上一次只能有一个|r
.complete 30921,1 
.complete 30921,2 
.complete 30921,3 
.complete 30921,4 
.mob Kri'thik Screamer
.mob Kri'thik Boneslicer
step
>>在武器上投掷|T463484:0|t[火药桶]。
.goto 388,55.41,53.09
.use 81891
.complete 30923,1 
step
#label Gunpowder Casks
>>向补给品投掷|T463484:0|t[火药桶]。
.goto 388,56.59,54.04
.use 81891
.complete 30923,2 
step
#completewith next
>>单击|cRXP_PICK_Mao-Willow的。|r
.complete 30964,1 
step
#loop
.goto 388,57.59,53.91,40,0
.goto 388,56.84,50.49,40,0
.goto 388,55.29,51.79,40,0
.goto 388,55.97,54.82,40,0
.goto 388,57.59,53.91,0
.goto 388,56.84,50.49,0
.goto 388,55.29,51.79,0
.goto 388,55.97,54.82,0
>>杀死|cRXP_ENEMY_Kri'thik尖叫者|r和|cRXX_ENEMY_克里西克接骨木师|r|cRXP_WARN_实际上一次只能有一个|r
.complete 30921,1 
.complete 30921,2 
.complete 30921,3 
.complete 30921,4 
.mob Kri'thik Screamer
.mob Kri'thik Boneslicer
step
#completewith Full Mushan Bladder
#hidewindow
#loop
.goto 388,56.83,50.58,40,0
.goto 388,57.59,54.05,40,0
.goto 388,58.51,56.64,40,0
.goto 388,59.20,57.76,40,0
.goto 388,58.12,59.26,40,0
.goto 388,58.38,61.03,40,0
.goto 388,58.09,64.19,40,0
.goto 388,57.20,64.49,40,0
.goto 388,55.87,62.68,40,0
.goto 388,56.04,67.92,40,0
.goto 388,54.48,69.09,40,0
.goto 388,52.91,66.00,40,0
.goto 388,50.48,63.93,40,0
.goto 388,51.25,70.61,40,0
.goto 388,56.83,50.58,0
.goto 388,57.59,54.05,0
.goto 388,58.51,56.64,0
.goto 388,59.20,57.76,0
.goto 388,58.12,59.26,0
.goto 388,58.38,61.03,0
.goto 388,58.09,64.19,0
.goto 388,57.20,64.49,0
.goto 388,55.87,62.68,0
.goto 388,56.04,67.92,0
.goto 388,54.48,69.09,0
.goto 388,52.91,66.00,0
.goto 388,50.48,63.93,0
.goto 388,51.25,70.61,0
+1
step
#completewith Mao-Willow
>>杀死|cRXP_ENEMY_Longshadow Mushan |r掠夺它们|cRXD_Loot_满Mushan膀胱|r
.complete 30922,1 
.mob Longshadow Mushan
.mob Longshadow Bull
step
#completewith Mao-Willow
>>杀死|cRXP_ENEMY_Rankbit Tortoise|r和|cRXD_ENEMY_rankbit Ancient|r掠夺它们以获取|cRXP_Loot_Rankbite外壳碎片|r
.complete 30963,1 
.mob Rankbite Tortoise
.mob Rankbite Ancient
step
#label Mao-Willow
>>单击|cRXP_PICK_Mao-Willow的。|r
.complete 30964,1 
step
#completewith next
>>杀死|cRXP_ENEMY_Longshadow Mushan |r掠夺它们|cRXD_Loot_满Mushan膀胱|r
.complete 30922,1 
.mob Longshadow Mushan
step
>>杀死|cRXP_ENEMY_Rankbit Tortoise|r和|cRXD_ENEMY_rankbit Ancient|r掠夺它们以获取|cRXP_Loot_Rankbite外壳碎片|r
.complete 30963,1 
.mob Rankbite Tortoise
.mob Rankbite Ancient
step
#label Full Mushan Bladder
>>杀死|cRXP_ENEMY_Longshadow Mushan |r掠夺它们|cRXD_Loot_满Mushan膀胱|r
.complete 30922,1 
.mob Longshadow Mushan
.mob Longshadow Bull
step
#loop
.goto 388,49.23,70.64,20,0
.goto 388,49.15,71.41,20,0
.goto 388,49.23,70.64,0
.goto 388,49.15,71.41,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Provisioner Bamfu|r
.turnin 30922 >>Turn in Natural Antiseptic
.turnin 30963 >>Turn in The Field Armorer
.turnin 30964 >>Turn in A Proper Poultice
.target Provisioner Bamfu
step
.goto 388,49.13,71.24
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai Ho|r
.turnin 30921 >>Turn in The Motives of the Mantid
.turnin 30923 >>Turn in Set the Mantid Back

.target Tai Ho























































































































































































































]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 9b) Dread Wastes
#displayname Chapter 9 - Dread Wastes
step
.goto 390,14.13,76.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bowmistress Li|r

.target Bowmistress Li
.accept 31001 >>接任务: |cRXP_WARN_坠落|r
.accept 31002 >>接任务: |cRXP_WARN_绝不|r
step
#completewith DreadspinnerTender
#hidewindow
#loop
.goto 422,74.173,24.745,25,0
.goto 422,72.484,22.262,25,0
.goto 422,70.920,22.080,20,0
.goto 422,71.506,28.578,25,0
.goto 422,65.619,27.905,25,0
.goto 422,67.872,31.332,30,0
.goto 422,74.173,24.745,0
.goto 422,72.484,22.262,0
.goto 422,70.920,22.080,0
.goto 422,71.506,28.578,0
.goto 422,65.619,27.905,0
.goto 422,67.872,31.332,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Dreadspinner投标书|r
.complete 31002,2 
.mob Dreadspinner Tender
step
>>|cRXP_WARN_使用|r|T133837:0|t[Shadow Pan Dragon Gun]|cRXP_WARN_to摧毁面前的|cRX_PICK_Dreadspinner Egg|r|r
*The gun also damages the spiders
*You can cancel the channel with ESC
.use 82807
.complete 31002,1 
step
#label DreadspinnerTender
>>杀死|cRXP_ENEMY_Dreadspinner投标书|r
.complete 31002,2 
.mob Dreadspinner Tender
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Lann|r
.goto 422,72.55,28.68
.skipgossip 62166,1
.complete 31001,1 
.target Marksman Lann
step
.goto 422,72.55,28.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marksman Lann|r
.turnin 31001 >>Turn in Falling Down
.turnin 31002 >>Turn in Nope
.accept 31003 >>接任务: |cRXP_WARN_疯狂螳螂妖|r
.target Marksman Lann
step
.goto 422,73.48,27.49
>>杀死|cRXP_ENEMY_副官克雷佐特|r
.complete 31003,1 
.mob Adjunct Kree'zot
step
.goto 422,73.67,27.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klaxxi'va Tik|r
.turnin 31003 >>Turn in Psycho Mantid
.target Klaxxi'va Tik
.accept 31004 >>接任务: |cRXP_WARN_保存于琥珀中|r
step
>>单击|cRXP_PICK_Ancient Amber Chunk|r
.goto 422,70.210,25.661
.complete 31004,1 
step
.goto 422,70.21,25.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.turnin 31004 >>Turn in Preserved in Amber
.target Kil'ruk the Wind-Reaver
.accept 31676 >>接任务: |cRXP_WARN_远古复仇|r
.accept 31005 >>接任务: |cRXP_WARN_虚弱的觉醒|r
step
#completewith VengefulGurthani
#hidewindow
#loop
.goto 422,71.394,30.671,30,0
.goto 422,71.329,39.100,30,0
.goto 422,71.394,30.671,30,0
.goto 422,66.021,27.701,30,0
.goto 422,71.394,30.671,0
.goto 422,66.021,27.701,0
.goto 422,71.329,39.100,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_复仇的古灵|r
.complete 31676,1 
.mob Vengeful Gurthani Spirit
step
>>杀死|cRXP_ENEMY_Sapfly|r。掠夺它们以获得|T237143:0|t[|cRXP-Loot_Sapfly Bits|r]
.complete 31005,1 
.mob Sapfly
step
#label VengefulGurthani
>>杀死|cRXP_ENEMY_复仇的古灵|r
.complete 31676,1 
.mob Vengeful Gurthani Spirit
step
.goto 422,70.19,25.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.turnin 31005 >>Turn in Wakening Sickness
.turnin 31676 >>Turn in Ancient Vengeance
.accept 31006 >>接任务: |cRXP_WARN_卡拉克西议会|r
.target Kil'ruk the Wind-Reaver
step
.goto 422,55.67,34.90
>>飞往Klaxsieves|cRXP_WARN_不要选择八卦选项|r
.complete 31006,1 
step
.goto 422,54.99,34.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.turnin 31006 >>Turn in The Klaxxi Council
.target Kil'ruk the Wind-Reaver
.accept 31007 >>接任务: |cRXP_WARN_超速生长|r
.accept 31660 >>接任务: |cRXP_WARN_虫群不宜|r
step
.goto 422,54.77,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
.accept 31009 >>接任务: |cRXP_WARN_死亡区域|r
.target Kor'ik
step
.goto 422,55.02,35.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambersmith Zikk|r
.accept 31008 >>接任务: |cRXP_WARN_琥珀武器|r
.target Ambersmith Zikk
step
#completewith next
>>杀死|cRXP_ENEMY_Shek'zeer刀刃发誓|r
.complete 31008,1 
.mob Shek'zeer Bladesworn
step
>>单击|cRXP_ENEMY_Inactive Sonic Relay|r
.goto 422,40.02,39.00
.complete 31009,1 
step
>>点击你的小地图下的弹出窗口或在你的任务日志中完成任务
.goto 422,40.02,39.00
.turnin 31009 >>Turn in Dead Zone
.accept 31010 >>接任务: |cRXP_WARN_逃出魔掌|r
.timer 70,Defend Duration
step
.goto 422,44.59,41.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sha-Haunted Crystal|r
.accept 31661 >>接任务: |cRXP_WARN_恐惧力量之源|r
.target Sha-Haunted Crystal
step
#completewith ParagonWeakened
>>杀死|cRXP_ENEMY_Shek'zeer Swarmborn|r和|cRXD_ENEMY_Shek'zer离合器保持器|r
.complete 31660,1 
.complete 31007,1 
.mob Shek'zeer Swarmborn
.mob Shek'zeer Clutch-Keeper
step
#completewith ParagonWeakened
>>杀死|cRXP_ENEMY_Shek'zeer刀刃发誓|r
.complete 31008,1 
.mob Shek'zeer Bladesworn

step
#label ParagonWeakened
>>单击|cRXP_PICK_Ancient Amber Chunk|r
>>|cRXP_WARN_保卫|r|cRXP_FRIENDLY_Malik the Unsheaved|r
.goto 422,44.76,41.58
.complete 31010,1 
step
#completewith AmberBlade
>>杀死|cRXP_ENEMY_Shek'zeer Swarmborn|r和|cRXD_ENEMY_Shek'zer离合器保持器|r
.complete 31660,1 
.complete 31007,1 
.mob Shek'zeer Swarmborn
.mob Shek'zeer Clutch-Keeper
step
#label AmberBlade
#loop
.goto 422,49.124,43.860,30,0
.goto 422,39.037,39.632,30,0
.goto 422,49.124,43.860,0
.goto 422,39.037,39.632,0
>>杀死|cRXP_ENEMY_Shek'zeer刀刃发誓|r
.complete 31008,1 
.mob Shek'zeer Bladesworn
step
#completewith next
>>杀死|cRXP_ENEMY_Shek'zeer Swarmborn|r
.complete 31660,1 
.mob Shek'zeer Swarmborn
step
#loop
.goto 422,41.597,42.415,35,0
.goto 422,42.505,46.290,35,0
.goto 422,47.282,41.128,35,0
.goto 422,44.549,40.010,25,0
.goto 422,41.597,42.415,0
.goto 422,42.505,46.290,0
.goto 422,47.282,41.128,0
.goto 422,44.549,40.010,0
>>杀死|cRXP_ENEMY_Shek'zeer离合器保持器|r
.complete 31007,1 
.mob Shek'zeer Clutch-Keeper
step
>>杀死|cRXP_ENEMY_Shek'zeer Swarmborn|r
.goto 422,44.797,41.647
.complete 31660,1 
.mob Shek'zeer Swarmborn
step
.goto 422,55.02,35.55
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ambersmith Zikk|r
.turnin 31008 >>Turn in Amber Arms
.target Ambersmith Zikk
.turnin 31661 >>Turn in A Source of Terrifying Power
.accept 31108 >>接任务: |cRXP_WARN_密集的恐惧|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malik the Unscathed|r and |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.turnin 31010 >>Turn in In Her Clutch
.goto 422,54.94,34.13
.target +Malik the Unscathed
.turnin 31007 >>Turn in The Dread Clutches
.goto 422,54.986,34.045
.target +Kil'ruk the Wind-Reaver
step
.goto 422,54.98,34.03
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.turnin 31660 >>Turn in Not Fit to Swarm
.target Kil'ruk the Wind-Reaver
step
.goto 422,54.76,34.07
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
.accept 31066 >>接任务: |cRXP_WARN_黑暗中的嘶吼|r
.timer 34,Roleplay Duratin
.target Kor'ik
step
.goto 422,55.07,35.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malik the Unscathed|r
.accept 31107 >>接任务: |cRXP_WARN_新帝国的公民|r
.target Malik the Unscathed
.accept 31689 >>接任务: |cRXP_WARN_惧誓者|r
step
#completewith QitartheDeathcaller
>>杀死|cRXP_ENEMY_Vortthik Dreadswear|r
.complete 31689,1 
.mob Vor'thik Dreadsworn
step
#completewith QitartheDeathcaller
>>单击|cRXP_PICK_Vorthik Egg|r
.complete 31107,1 
step
#label QitartheDeathcaller
.goto 422,59.40,18.44
>>杀死死亡召唤者|cRXP_ENEMY_Qi'tar |r
.complete 31066,1 
.mob Qi'tar the Deathcaller
step
#completewith DreadAmberFocus
>>杀死|cRXP_ENEMY_Vortthik Dreadswear|r
.complete 31689,1 
.mob Vor'thik Dreadsworn
step
#completewith DreadAmberFocus
>>单击|cRXP_PICK_Vorthik Egg|r
.complete 31107,1 
step
#label DreadAmberFocus
#loop
.goto 422,57.697,12.068,25,0
.goto 422,56.946,18.664,25,0
.goto 422,58.205,18.625,25,0
.goto 422,60.180,15.167,28,0
.goto 422,57.697,12.068,0
.goto 422,56.454,15.593,0
.goto 422,56.946,18.664,0
.goto 422,58.205,18.625,0
.goto 422,60.180,15.167,0
>>杀死|cRXP_ENEMY_Vortthik恐惧塑造者|r。为|T348563:0|t[|cRXP-Loot_Dread Amber Focus|r]掠夺它们
.complete 31108,1 
.mob Vor'thik Fear-Shaper
step
#completewith next
>>杀死|cRXP_ENEMY_Vortthik Dreadswear|r
.complete 31689,1 
.mob Vor'thik Dreadsworn
step
#loop
.goto 422,58.700,17.269,25,0
.goto 422,58.369,19.191,20,0
.goto 422,59.651,20.048,20,0
.goto 422,60.288,17.509,20,0
.goto 422,58.700,17.269,0
.goto 422,58.369,19.191,0
.goto 422,59.651,20.048,0
.goto 422,60.288,17.509,0
>>单击|cRXP_PICK_Vorthik Egg|r
.complete 31107,1 
step
#loop
.goto 422,59.164,14.671,25,0
.goto 422,56.862,11.771,25,0
.goto 422,57.658,16.739,32,0
.goto 422,59.164,14.671,0
.goto 422,56.862,11.771,0
.goto 422,57.658,16.739,0
>>杀死|cRXP_ENEMY_Vortthik Dreadswear|r
.complete 31689,1 
.mob Vor'thik Dreadsworn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malik the Unscathed|r and |cRXP_FRIENDLY_Ambersmith Zikk|r
.turnin 31107 >>Turn in Citizens of a New Empire
.turnin 31689 >>Turn in The Dreadsworn
.goto 422,55.060,35.482
.target +Malik the Unscathed
.turnin 31108 >>Turn in Concentrated Fear
.goto 422,55.016,35.555
.target +Ambersmith Zikk
step
.goto 422,54.76,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
.turnin 31066 >>Turn in A Cry From Darkness
.accept 31087 >>接任务: |cRXP_WARN_扩大范围|r
.accept 31605 >>接任务: |cRXP_WARN_扎尼提克的发现|r
.target Kor'ik
step
.goto 422,55.06,35.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.accept 31019 >>接任务: |cRXP_WARN_琥珀即生命|r
.accept 31175 >>接任务: |cRXP_WARN_觅血者斯基尔|r


.target Kil'ruk the Wind-Reaver
step
.isOnQuest 31730
#optional
.goto 422,51.21,11.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r
.turnin 31730 >>交任务: |cRXP_FRIENDLY_不那么友好的请求|r
.accept 31067 >>接任务: |cRXP_WARN_战云密布|r
.target Sapmaster Vu
step
.goto 422,51.21,11.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r
.accept 31067 >>接任务: |cRXP_WARN_战云密布|r
.target Sapmaster Vu
step
#completewith next
.goto 422,53.525,15.100,10 >>|cRXP_WARN_Enter The Amber Vault|r
step
.goto 422,53.08,12.36
>>单击|cRXP_PICK_Scroll of Auspice|r
.accept 31068 >>接任务: |cRXP_WARN_神圣配方|r
.target Scroll of Auspice
step
.goto 422,52.78,10.56
>>杀死|cRXP_ENEMY_Azzix K'tai|r
.complete 31067,1 
.mob Azzix K'tai
step
#completewith next
.goto 422,53.525,15.100,10 >>|cRXP_WARN_Leave The Amber Vault|r
step
.goto 422,50.73,11.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r
.turnin 31068 >>Turn in Sacred Recipe
.timer 36,Lya of Ten Songs Roleplay
.target Lya of Ten Songs
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r, |cRXP_FRIENDLY_Olon|r, and |cRXP_FRIENDLY_Thirsty Missho|r
.turnin 31067 >>Turn in The Heavens Hum With War
.accept 31069 >>接任务: |cRXP_WARN_融入阴影|r
.goto 422,51.21,11.39
.target +Sapmaster Vu
.accept 31070 >>接任务: |cRXP_WARN_巨兽之匕|r
.goto 422,51.16,11.21
.target +Olon
.accept 31071 >>接任务: |cRXP_WARN_我辜负了大家|r
.goto 422,51.133,11.109
.target +Thirsty Missho
step
.goto 422,50.44,12.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.daily 31076,31129 >>接任务: |cRXP_WARN_风暴烈酒的命运|r
.target Chen Stormstout
step
.isOnQuest 31076
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r
.goto 422,50.73,11.70
.skipgossip 62667,1
.complete 31076,2 
.target Lya of Ten Songs
step
.isOnQuest 31076
.goto 422,50.91,11.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Dan Stormstout|r
.complete 31076,3 
.skipgossip 62845,1
.target Big Dan Stormstout
step
.isOnQuest 31076
.goto 422,51.21,11.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r
.complete 31076,1 
.skipgossip 62666,1
.target Sapmaster Vu
step
.isOnQuest 31129
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r
.goto 422,50.73,11.70
.skipgossip 62667,1
.complete 31129,2 
.target Lya of Ten Songs
step
.isOnQuest 31129
.goto 422,50.91,11.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Big Dan Stormstout|r
.complete 31129,3 
.skipgossip 62845,1
.target Big Dan Stormstout
step
.isOnQuest 31129
.goto 422,51.21,11.39
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r
.complete 31129,1 
.skipgossip 62666,1
.target Sapmaster Vu
step
.goto 422,50.73,11.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r
.accept 31072 >>接任务: |cRXP_WARN_撕裂之匕|r
.target Lya of Ten Songs
step
.goto 422,50.45,12.05
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.turnin 31076 >>Turn in Fate of the Stormstouts
.target Chen Stormstout
step
#completewith BladeofIlikkax
>>杀死|cRXP_LOOT_吓坏了的蘑菇|r。为|T135671:0|t[|cRXP _LOOT_Large Mushan Tooths|r]掠夺它们
.complete 31070,1 
.mob Frightened Mushan
step
>>单击|cRXP_PICK_Lost Mugs|r
.goto 422,51.72,19.07
.complete 31071,1 
step
#label BladeofIlikkax
>>杀死|cRXP_ENEMY_Ilikkax|r。掠夺他获得|T538490:0|t[|cRXP_Loot_ Ilikkax之刃|r]
.goto 422,50.94,20.86
.complete 31072,2 
.mob Ilikkax
step
#loop
.goto 422,52.106,21.147,15,0
.goto 422,53.558,19.712,15,0
.goto 422,52.106,21.147,0
.goto 422,53.558,19.712,0
>>杀死|cRXP_ENEMY_Kz'Kzik|r。掠夺他获得|T538490:0|t[|cRXP_Loot_Kz'Kzik]之刃
.complete 31072,1 
.mob Kz'Kzik
step
.goto 422,54.11,20.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.accept 31077 >>接任务: |cRXP_WARN_艾薇·风暴烈酒|r
.target Chen Stormstout
step
>>单击|cRXP_PICK_Lost Keg|r
.goto 422,54.41,20.33
.complete 31071,2 
step
#completewith LostPicnic
>>杀死|cRXP_LOOT_吓坏了的蘑菇|r。为|T135671:0|t[|cRXP _LOOT_Large Mushan Tooths|r]掠夺它们
.complete 31070,1 
.mob Frightened Mushan
step
#completewith LostPicnic
>>杀死|cRXP_ENEMY_Dread Lurker|r和|cRXX_ENEMY_Nagging Dreadlings|r
.complete 31069,1 
.mob Dread Lurker
.mob Nagging Dreadling
step
#label LostPicnic
>>单击|cRXP_PICK_Lost Picnic Supplies|r
.goto 422,56.02,19.43
.complete 31071,3 
step
#completewith next
>>杀死|cRXP_LOOT_吓坏了的蘑菇|r。为|T135671:0|t[|cRXP _LOOT_Large Mushan Tooths|r]掠夺它们
.complete 31070,1 
.mob Frightened Mushan
step
#loop
.goto 422,57.958,20.062,32,0
.goto 422,56.105,16.052,32,0
.goto 422,53.995,17.333,32,0
.goto 422,55.094,19.947,30,0
.goto 422,57.958,20.062,0
.goto 422,56.105,16.052,0
.goto 422,53.995,17.333,0
.goto 422,55.094,19.947,0
>>杀死|cRXP_ENEMY_Dread Lurker|r和|cRXX_ENEMY_Nagging Dreadlings|r
.complete 31069,1 
.mob Dread Lurker
.mob Nagging Dreadling
step
#loop
.goto 422,51.940,14.578,36,0
.goto 422,49.263,16.335,36,0
.goto 422,47.060,20.709,35,0
.goto 422,49.102,22.156,36,0
.goto 422,56.034,14.707,36,0
.goto 422,51.940,14.578,0
.goto 422,49.263,16.335,0
.goto 422,47.060,20.709,0
.goto 422,49.102,22.156,0
.goto 422,56.034,14.707,0
>>杀死|cRXP_LOOT_吓坏了的蘑菇|r。为|T135671:0|t[|cRXP _LOOT_Large Mushan Tooths|r]掠夺它们
.complete 31070,1 
.mob Frightened Mushan
step
>>|cRXP_WARN_Follow the arrow|r
.goto 422,50.18,10.19
.complete 31077,1 
.timer 27,Roleplay Duration
step
#completewith
>>Turn in the other quests while waiting for the roleplay
.complete 31077,2 
step
.goto 422,50.73,11.71
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r
.turnin 31072 >>Turn in Rending Daggers
.accept 31074 >>接任务: |cRXP_WARN_木头和阴影|r
.target Lya of Ten Songs
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thirsty Missho|r, |cRXP_FRIENDLY_Olon|r, and |cRXP_FRIENDLY_Sapmaster Vu|r
.turnin 31071 >>Turn in I Bring Us Great Shame
.goto 422,51.139,11.112
.target +Thirsty Missho
.turnin 31070 >>Turn in Daggers of the Great Ones
.goto 422,51.17,11.22
.target +Olon
.turnin 31069 >>Turn in Bound With Shade
.accept 31073 >>接任务: |cRXP_WARN_融入木头|r
.goto 422,51.21,11.40
.target +Sapmaster Vu
step
.goto 422,50.18,10.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.turnin 31077 >>Turn in Evie Stormstout
.target Chen Stormstout
.accept 31078 >>接任务: |cRXP_WARN_韩·风暴烈酒|r
step
.goto 422,50.18,12.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Defender Azzo|r
.accept 31133 >>接任务: |cRXP_WARN_库尔提克的侵袭|r
.target Defender Azzo
step
#completewith HanStormstout
>>杀死|cRXP_ENEMY_Kor'thik Mantid|r
.complete 31133,1 
.mob Kor'thik Chitinel
.mob Kor'thik Battlesinger
.mob Kor'thik Havoc
step
#completewith next
.goto 422,46.710,16.787,10 >>|cRXP_WARN_Enter the Morrowchamber|r
step
>>|cRXP_WARN_按照箭头所示，避免造成过大的伤害|r
>>单击|cRXP_FRIENDLY_Han Stormstrut|r
.goto 422,44.943,16.787,14,0
.goto 422,44.668,16.058,14,0
.goto 422,45.091,15.212,14,0
.goto 422,44.523,15.761,14,0
.goto 422,43.555,15.680,14,0
.goto 422,43.043,15.209,14,0
.goto 422,43.375,16.047,14,0
.goto 422,43.77,16.74
.complete 31078,1 
.target Han Stormstout
step
#label HanStormstout
>>|cRXP_WARN_按照箭头所示，避免造成过大的伤害|r
.goto 422,43.375,16.047,14,0
.goto 422,43.043,15.209,14,0
.goto 422,43.555,15.680,14,0
.goto 422,44.523,15.761,14,0
.goto 422,45.091,15.212,14,0
.goto 422,44.668,16.058,14,0
.goto 422,44.41,16.81
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_陈·风暴烈酒|r
.turnin 31078 >>Turn in Han Stormstout
.target Chen Stormstout
step
#completewith HanStormstout
>>杀死|cRXP_ENEMY_Kor'thik Mantid|r
.complete 31133,1 
.mob Kor'thik Chitinel
.mob Kor'thik Battlesinger
.mob Kor'thik Havoc
step
#completewith MarkoftheEmpress
#label LeaveMorrowchamber
.goto 422,46.710,16.787,10 >>|cRXP_WARN_Leave the Morrowchamber|r
step
#completewith MarkoftheEmpress
#requires LeaveMorrowchamber
.goto 422,44.754,15.935,8 >>|cRXP_WARN_Enter the house|r
step
#label MarkoftheEmpress
>>Run down the stairs
.goto 422,44.754,15.935,0
.goto 422,44.515,16.778
.complete 31074,1 
step
#completewith HeartrootofKypariKor
#label LeavetheHouseA
.goto 422,44.754,15.935,8 >>|cRXP_WARN_Leave the house|r
step
#completewith HeartrootofKypariKor
#requires LeavetheHouseA
.goto 422,43.050,13.965,8 >>|cRXP_WARN_Enter the house|r
step
#label HeartrootofKypariKor
>>Run down the stairs
.goto 422,43.116,14.988
.complete 31074,2 
step
#completewith KorthikMantid
#hidewindow
#loop
.goto 422,42.796,7.545,35,0
.goto 422,44.556,7.456,35,0
.goto 422,48.603,11.101,35,0
.goto 422,47.245,19.051,35,0
.goto 422,45.008,18.417,37,0
.goto 422,45.957,13.026,35,0
.goto 422,43.095,12.129,35,0
.goto 422,42.796,7.545,0
.goto 422,44.556,7.456,0
.goto 422,48.603,11.101,0
.goto 422,47.245,19.051,0
.goto 422,45.008,18.417,0
.goto 422,45.957,13.026,0
.goto 422,43.095,12.129,0
+1
step
#completewith next
.goto 422,43.050,13.965,8 >>|cRXP_WARN_Leave the house|r
step
>>单击|cRXP_FRIENDLY_Wihered Husks|r|cRXP _WARN_（安装时可能）|r
.complete 31073,1 
.target Withrered Husk
step
#label KorthikMantid
>>杀死|cRXP_ENEMY_Kor'thik Mantid|r
.complete 31133,1 
.mob Kor'thik Chitinel
.mob Kor'thik Battlesinger
.mob Kor'thik Havoc
step
.goto 422,50.20,12.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Defender Azzo|r
.turnin 31133 >>Turn in Kor'thik Aggression
.target Defender Azzo
step
.goto 422,50.73,11.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r
.turnin 31074 >>Turn in Wood and Shade
.target Lya of Ten Songs
step
.goto 422,51.21,11.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r
.turnin 31073 >>Turn in Bound With Wood
.accept 31075 >>接任务: |cRXP_WARN_日落之王|r
.target Sapmaster Vu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r
.goto 422,38.19,17.18
.turnin 31075 >>Turn in Sunset Kings
.target Sapmaster Vu
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boggeo|r, |cRXP_FRIENDLY_Olon|r, and |cRXP_FRIENDLY_Lya of Ten Songs|r
.accept 31079 >>接任务: |cRXP_WARN_恐怖升腾|r
.goto 422,38.159,17.339
.target +Boggeo
.accept 31080 >>接任务: |cRXP_WARN_火焰之翼|r
.goto 422,38.20,17.13
.target +Olon
.accept 31081 >>接任务: |cRXP_WARN_咒法妖精|r
.goto 422,38.302,17.137
.target +Lya of Ten Songs
step
.goto 422,38.65,17.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Rikkitun|r
.accept 31082 >>接任务: |cRXP_WARN_救赎方舟|r
.target Chief Rikkitun
step
#completewith FliterringDust
>>杀死|cRXP_ENEMY_Shuffling Mis潜伏者|r和|cRXD_ENEMY_Kyparite|r（|cRXP_WARN_look代表棕色移动的东西|r）
.complete 31079,1 
.complete 31079,2 
.mob Shuffling Mistlurker
.mob Kyparite
step
.goto 422,33.07,19.13
>>杀死|cRXP_ENEMY_Mygoness |r
.complete 31081,2 
.mob Mygoness
step
.goto 422,32.10,17.35
>>杀死|cRXP_ENEMY_Ahgunoss|r
.complete 31081,1 
.mob Ahgunoss
step
#label FliterringDust
#loop
.goto 422,34.321,22.761,35,0
.goto 422,39.261,24.069,35,0
.goto 422,39.536,19.790,35,0
.goto 422,36.998,14.867,35,0
.goto 422,34.321,22.761,0
.goto 422,39.261,24.069,0
.goto 422,39.536,19.790,0
.goto 422,36.998,14.867,0
>>单击|cRXP_FRIENDLY_Rikkilea Fltterlings|r。|cRXP _WARN_Try to catch the dust|r
.complete 31080,1 
.target Rikkilea Flitterling
step
#completewith Motherseed
>>杀死|cRXP_ENEMY_Shuffling Mis潜伏者|r和|cRXD_ENEMY_Kyparite|r（|cRXP_WARN_look代表棕色移动的东西|r）
.complete 31079,1 
.complete 31079,2 
.mob Shuffling Mistlurker
.mob Kyparite
step
#completewith next
#loop
.goto 422,36.998,14.867,35,0
.goto 422,35.666,18.056,35,0
.goto 422,35.956,22.458,35,0
.goto 422,34.321,19.465,35,0
.goto 422,36.998,14.867,0
.goto 422,35.666,18.056,0
.goto 422,35.956,22.458,0
.goto 422,34.321,19.465,0
.cast 122165 >>单击|cRXP_PICK_Motherseed|r
step
>>将|cRXP_FRIENDLY_Motherseed|r带回|cRXP-WARN_（一次只能做一个）|r
*|cRXP_WARN_Use the|r |T133706:0|t[Rikkitun Bell] |cRXP_WARN_when you can't click on the seeds|r
.goto 422,36.897,17.445
.use 84267
.complete 31082,1,1 
step
#completewith next
#loop
.goto 422,34.321,19.465,35,0
.goto 422,36.998,14.867,35,0
.goto 422,35.666,18.056,35,0
.goto 422,35.956,22.458,35,0
.goto 422,34.321,19.465,0
.goto 422,36.998,14.867,0
.goto 422,35.666,18.056,0
.goto 422,35.956,22.458,0
.cast 122165 >>单击|cRXP_PICK_Motherseed|r
step
>>将|cRXP_FRIENDLY_Motherseed|r带回|cRXP-WARN_（一次只能做一个）|r
*|cRXP_WARN_Use the|r |T133706:0|t[Rikkitun Bell] |cRXP_WARN_when you can't click on the seeds|r
.goto 422,36.897,17.445
.use 84267
.complete 31082,1,2 
step
#completewith next
#loop
.goto 422,35.956,22.458,35,0
.goto 422,34.321,19.465,35,0
.goto 422,36.998,14.867,35,0
.goto 422,35.666,18.056,35,0
.goto 422,35.956,22.458,0
.goto 422,34.321,19.465,0
.goto 422,36.998,14.867,0
.goto 422,35.666,18.056,0
.cast 122165 >>单击|cRXP_PICK_Motherseed|r
step
#label Motherseed
>>将|cRXP_FRIENDLY_Motherseed|r带回|cRXP-WARN_（一次只能做一个）|r
*|cRXP_WARN_Use the|r |T133706:0|t[Rikkitun Bell] |cRXP_WARN_when you can't click on the seeds|r
.goto 422,36.897,17.445
.use 84267
.complete 31082,1 
step
#loop
.goto 422,32.060,20.009,35,0
.goto 422,33.450,23.674,35,0
.goto 422,36.371,20.878,35,0
.goto 422,38.385,14.506,35,0
.goto 422,32.060,20.009,0
.goto 422,33.450,23.674,0
.goto 422,36.371,20.878,0
.goto 422,38.385,14.506,0
>>杀死|cRXP_ENEMY_Shuffling Mis潜伏者|r和|cRXD_ENEMY_Kyparite|r（|cRXP_WARN_look代表棕色移动的东西|r）
.complete 31079,1 
.complete 31079,2 
.mob Shuffling Mistlurker
.mob Kyparite
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boggeo|r, |cRXP_FRIENDLY_Olon|r, and |cRXP_FRIENDLY_Lya of Ten Songs|r
.turnin 31079 >>Turn in The Horror Comes A-Rising
.goto 422,38.16,17.34
.target +Boggeo
.turnin 31080 >>Turn in Fiery Wings
.goto 422,38.20,17.12
.target +Olon
.turnin 31081 >>Turn in Incantations Fae and Primal
,giti 422,38.304,17.137
.target +Lya of Ten Songs
step
.goto 422,38.65,17.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Rikkitun|r
.turnin 31082 >>Turn in Great Vessel of Salvation
.target Chief Rikkitun
.accept 31084 >>接任务: |cRXP_WARN_施法|r
step
#completewith next
.gossipoption 40853 >>Talk to |cRXP_FRIENDLY_Chief Rikkitun|r
.timer 55,Roleplay Duration
.goto 422,38.65,17.25
.target Chief Rikkitun
step
.goto 422,38.65,17.25,0
>>跟随|cRXP_FRIENDLY_Chief Rikkitun|r。|cRXP-WARN_不要跑得离他太远（最多90码）|r

.goto 422,39.67,23.18
.complete 31084,1 
.target Chief Rikkitun
step
.goto 422,38.65,17.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Rikkitun|r
.turnin 31084 >>Turn in Bind the Glamour
.target Chief Rikkitun
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lya of Ten Songs|r and |cRXP_FRIENDLY_Sapmaster Vu|r
.accept 31085 >>接任务: |cRXP_WARN_远古的血与火|r
.goto 422,38.30,17.13
.target +Lya of Ten Songs
.accept 31086 >>接任务: |cRXP_WARN_远古之血|r
.goto 422,38.183,17.184
.target +Sapmaster Vu
step
>>单击|cRXP_PICK_Chunk of Solidated Amber|r
.goto 422,30.22,30.58
.complete 31086,1 
step
#completewith next
.goto 422,30.23,31.68
.cast 123270 >>Click on the rocks
step
>>|cRXP_WARN_使用|r|T645165:0|t[破坏叉]
.goto 422,32.67,33.88
.use 84771
.complete 31085,1 
step
>>杀死|cRXP_ENEMY_Adjunct G'kkal|r、|cRXP_ENEMY_Appjunct Okzyk|r和|cRXX_ENEMY_Agjunct Pivvika|r
.goto 422,33.013,34.129
.complete 31085,2 
.mob Adjunct G'kkal
.mob Adjunct Okzyk
.mob Adjunct Pivvika
step
#completewith next
.goto 422,30.233,31.716,10 >>|cRXP_WARN_离开琥珀冬眠|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sapmaster Vu|r and |cRXP_FRIENDLY_Lya of Ten Songs|r
.turnin 31086 >>Turn in Blood of Ancients
.goto 422,50.22,12.11
.target +Sapmaster Vu
.turnin 31085 >>Turn in Fires and Fears of Old
.goto 422,50.29,12.07
.target +Lya of Ten Songs
















step
#completewith SeekertheBloodseeker
.goto 422,25.752,53.923,12 >>|cRXP_WARN_进入水下洞穴|r






step
#label SeekertheBloodseeker
>>单击|cRXP_PICK_Ancient Amber Chunk|r
.goto 422,25.709,50.342
.complete 31175,1 
.timer 30,Roleplay Duration
step
.goto 422,25.71,50.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeer the Bloodseeker|r
.turnin 31175 >>Turn in Skeer the Bloodseeker
.target Skeer the Bloodseeker
.accept 31176 >>接任务: |cRXP_WARN_怪异的食欲|r
.accept 31177 >>接任务: |cRXP_WARN_丰盛大餐|r
.accept 31178 >>接任务: |cRXP_WARN_以血为乐|r
step
#completewith next
.goto 422,25.752,53.923,12 >>|cRXP_WARN_离开洞穴|r
step
#completewith VolatileBlood
#hidewindow
#loop
.goto 422,25.435,55.593,25,0
.goto 422,27.393,53.959,30,0
.goto 422,28.144,65.767,40,0
.goto 422,22.978,65.299,32,0
.goto 422,25.435,55.593,0
.goto 422,27.393,53.959,0
.goto 422,28.144,65.767,0
.goto 422,22.978,65.299,0
+1
step
#completewith ClackerTail
>>杀死|cRXP_ENEMY_Dread Remora|r。掠夺它们以获得|T136124:0|t[|cRXP-Loot_挥发性血液|r]
.complete 31178,1 
.mob Dread Remora
step
#completewith ClackerTail
>>单击|cRXP_PICK_Spiny Starfish|rs
.complete 31176,1 
step
#label ClackerTail
>>杀死|cRXP_ENEMY_Briny Clacker |r。为|T134048:0|t[|cRXP-Loot_Clacker Tail|r]掠夺它们
.complete 31177,1 
.mob Briny Clacker
step
#completewith next
>>杀死|cRXP_ENEMY_Dread Remora|r。掠夺它们以获得|T136124:0|t[|cRXP-Loot_挥发性血液|r]
.complete 31178,1 
.mob Dread Remora
step
>>单击|cRXP_PICK_Spiny Starfish|rs
.complete 31176,1 
step
#label VolatileBlood
>>杀死|cRXP_ENEMY_Dread Remora|r。掠夺它们以获得|T136124:0|t[|cRXP-Loot_挥发性血液|r]
.complete 31178,1 
.mob Dread Remora
step
#completewith next
.goto 422,25.752,53.923,12 >>|cRXP_WARN_进入洞穴|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skeer the Bloodseeker|r
.goto 422,25.71,50.61
.turnin 31176 >>Turn in A Strange Appetite
.turnin 31177 >>Turn in Fine Dining
.turnin 31178 >>Turn in A Bloody Delight
.accept 31179 >>接任务: |cRXP_WARN_血之气息|r
.timer 90,Quest Duration
.target Skeer the Bloodseeker
step
>>|cRXP_WARN_Go到航路点位置|r。
>>杀死间谍|cRXP_ENEMY_Muckscale Flesheater|r和|cRXX_ENEMY_Musckscale Serpentus|r
.goto 422,25.711,52.037
.complete 31179,1 
.complete 31179,2 
.mob Muckscale Flesheater
.mob Muckscale Serpentus
step
#completewith next
.goto 422,25.752,53.923,12 >>|cRXP_WARN_离开洞穴|r
step
#completewith next
.goto 422,46.339,52.976,10 >>|cRXP_WARN_Enter Amberglow Hollow|r
step
.goto 422,46.38,52.95
.complete 31087,1 
step
.goto 422,48.125,49.781
>>杀死|cRXP_ENEMY_副官泽图克|r
.complete 31087,2 
.mob Adjunct Zet'uk
step
>>单击|cRXP_PICK_Silent Beacon|r
.goto 422,48.12,49.75
.complete 31087,3 
step
.goto 422,48.11,49.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
.turnin 31087 >>Turn in Extending Our Coverage
.accept 31088 >>接任务: |cRXP_WARN_罪与罚|r
.accept 31090 >>接任务: |cRXP_WARN_越陈越香|r
.target Kor'ik
step
#completewith AmberFilledJar
.goto 422,46.339,52.976,10 >>|cRXP_WARN_Leave Amberglow Hollow|r
step
#completewith IkthikHarvester
#hidewindow
#loop
.goto 422,45.535,52.012,18,0
.goto 422,42.260,50.297,22,0
.goto 422,41.542,52.595,22,0
.goto 422,39.638,52.012,22,0
.goto 422,36.958,51.815,22,0
.goto 422,34.739,51.846,22,0
.goto 422,32.738,50.473,22,0
.goto 422,38.626,49.036,26,0
.goto 422,40.356,47.884,26,0
.goto 422,45.105,57.507,22,0
.goto 422,49.250,62.705,22,0
.goto 422,48.803,64.237,22,0
.goto 422,49.711,66.443,22,0
.goto 422,51.484,66.092,22,0
.goto 422,45.535,52.012,0
.goto 422,42.260,50.297,0
.goto 422,41.542,52.595,0
.goto 422,39.638,52.012,0
.goto 422,36.958,51.815,0
.goto 422,34.739,51.846,0
.goto 422,32.738,50.473,0
.goto 422,38.626,49.036,0
.goto 422,40.356,47.884,0
.goto 422,45.105,57.507,0
.goto 422,49.250,62.705,0
.goto 422,48.803,64.237,0
.goto 422,49.711,66.443,0
.goto 422,51.484,66.092,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Ik'thik收割机|r
.complete 31088,1 
.mob Ik'thik Harvester
step
#label AmberFilledJar
>>点击|cRXP_PICK_Amber Collectors|r
.complete 31090,1 
step
#label IkthikHarvester
>>杀死|cRXP_ENEMY_Ik'thik收割机|r
.complete 31088,1 
.mob Ik'thik Harvester
step
#completewith next
.goto 422,46.339,52.976,10 >>|cRXP_WARN_Enter Amberglow Hollow|r
step
.goto 422,48.11,49.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'ik|r
.turnin 31088 >>交任务: |cRXP_FRIENDLY_罪与罚|r
.turnin 31090 >>Turn in Better With Age
.accept 31089 >>接任务: |cRXP_WARN_大海的庇佑，一去不返|r
.target Kor'ik
step
>>|cRXP_WARN_使用|r|T645165:0|t[Klaxi音叉]
.goto 422,43.42,63.55
.use 84119
.complete 31089,1 
.timer 30,Roleplay Duration
step
.goto 422,43.32,63.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
.turnin 31089 >>Turn in By the Sea, Nevermore
.target Kaz'tik the Manipulator
.accept 31091 >>接任务: |cRXP_WARN_物归原主|r
step
#completewith next
.goto 422,43.321,63.498
.gossipoption 28603 >>Talk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
step
>>|cRXP_WARN_Follow and defend |cRXP_FRIENDLY_Kaz'tik the Manipulator|r|r
.goto 422,43.321,63.498,0
.goto 422,41.763,72.038
.skipgossip 63876,1
.complete 31091,1 
step
.goto 422,41.38,71.42
.complete 31091,2 
step
.goto 422,41.75,72.02
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
.turnin 31091 >>Turn in Reunited
.target Kaz'tik the Manipulator
.accept 31092 >>接任务: |cRXP_WARN_要么喂它，要么被吃掉|r
.accept 31359 >>接任务: |cRXP_WARN_恐虫密语者|r
step
#completewith OracleHissir
>>杀死|cRXP_ENEMY_Muckscale部落|r
.complete 31359,2 
.mob Muckscale Tribe
step
#completewith OracleHissir
>>杀死|cRXP_ENEMY_Brinshell Snappers|r。掠夺它们以获取|T237345:0|t[|cRXD_OOT_Successful Turtle Filet|r]
*|cRXP_WARN_Use the|r |T237345:0|t[|cRXP_LOOT_Succulent Turtle Filet|r]
.use 86489
.collect 86489,6,31092,0x1,-1
.complete 31092,1 
.mob Brineshell Snapper
step
#label OracleHissir
.goto 422,41.935,63.781
>>杀死|cRXP_ENEMY_Oracle His'sir|r
.complete 31359,1 
.mob Oracle Hiss'ir
step
.goto 422,41.87,63.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Glowing Amber|r
.accept 31398 >>接任务: |cRXP_WARN_四分五裂|r
.target Glowing Amber
step
#completewith next
>>杀死|cRXP_ENEMY_Muckscale部落|r
.complete 31359,2 
.mob Muckscale Tribe
step
#loop
.goto 422,44.334,67.336,38,0
.goto 422,45.885,61.940,38,0
.goto 422,39.003,62.402,38,0
.goto 422,35.147,56.680,38,0
.goto 422,34.928,66.549,38,0
.goto 422,39.065,67.311,38,0
.goto 422,41.935,63.781,38,0
.goto 422,44.334,67.336,0
.goto 422,45.885,61.940,0
.goto 422,39.003,62.402,0
.goto 422,35.147,56.680,0
.goto 422,34.928,66.549,0
.goto 422,39.065,67.311,0
.goto 422,41.935,63.781,0
>>杀死|cRXP_ENEMY_Brinshell Snappers|r。掠夺它们以获取|T237345:0|t[|cRXD_OOT_Successful Turtle Filet|r]
*|cRXP_WARN_Use the|r |T237345:0|t[|cRXP_LOOT_Succulent Turtle Filet|r]
.use 86489
.collect 86489,6,31092,0x1,-1
.complete 31092,1 
.mob Brineshell Snapper
step
#loop
.goto 422,41.935,63.781,32,0
.goto 422,37.183,57,529,32,0
.goto 422,38.893,68.359,32,0
.goto 422,41.935,63.781,0
.goto 422,37.183,57,529,0
.goto 422,38.893,68.359,0
>>杀死|cRXP_ENEMY_Muckscale部落|r
.complete 31359,2 
.mob Muckscale Tribe
step
.goto 422,31.80,88.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
.turnin 31605 >>Turn in The Zan'thik Dig
.accept 31606 >>接任务: |cRXP_WARN_切割者觉醒|r
.timer 47,Roleplay Duration
.target Rik'kal the Dissector
step
.goto 422,31.80,88.95
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
.turnin 31606 >>Turn in The Dissector Wakens


.target Rik'kal the Dissector
step
.goto 422,54.73,72.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.accept 31265 >>接任务: |cRXP_WARN_玛祖的气息|r
.target Deck Boss Arie
step
>>|cRXP_WARN_使用|r|T134851:0|t[妈祖呼吸药剂]
.use 85869
.goto 422,54.73,72.17
.complete 31265,1 
step
.goto 422,54.73,72.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.turnin 31265 >>Turn in Mazu's Breath
.target Deck Boss Arie
.accept 31182 >>接任务: |cRXP_WARN_原来是水獭|r
.accept 31181 >>接任务: |cRXP_WARN_新鲜的诱饵|r
step
#completewith ColdwhiskerOtter
#hidewindow
#loop
.goto 422,56.84,80.93,35,0
.goto 422,61.55,79.81,40,0
.goto 422,60.64,85.37,40,0
+1
step
#completewith next
>>单击|cRXP_FRIENDLY_Coldwister Otter|r
.complete 31182,1 
.target Coldwhisker Otter
step
>>杀死|cRXP_ENEMY_Sea Monarch|r。为|T237338:0|t[Sea Monarch Chunks]掠夺它们
>>单击|cRXP_PICK_Empty Crab Pots|r
.complete 31181,1 
.mob Sea Monarch
step
#label ColdwhiskerOtter
>>单击|cRXP_FRIENDLY_Coldwister Otter|r
.complete 31182,1 
.target Coldwhisker Otter
step
.goto 422,54.73,72.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.turnin 31181 >>Turn in Fresh Pots
.turnin 31182 >>Turn in You Otter Know
.accept 31183 >>接任务: |cRXP_WARN_会见船长|r
.target Deck Boss Arie
step
.goto 422,55.67,72.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r
.turnin 31183 >>Turn in Meet the Cap'n
.target Captain "Soggy" Su-Dao
.accept 31184 >>接任务: |cRXP_WARN_往事与背叛|r
.accept 31185 >>接任务: |cRXP_WARN_带狗狗散步|r
step
.goto 422,54.72,72.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.accept 31188 >>接任务: |cRXP_WARN_鲨鱼周|r
.accept 31187 >>接任务: |cRXP_WARN_收获螃蟹|r
.target Deck Boss Arie
step
.goto 422,47.98,73.73
>>|cRXP_WARN_使用|r|T134434:0|t[狗的口哨声]|cRXP_WARN_to召唤您的|r|cRXP-FRIENDLY_Dog|r
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狗|r
.accept 31186 >>接任务: |cRXP_WARN_狗狗的食物|r
.use 85955
.target Dog
step
#completewith BringDogWhaleCorpse
>>杀死|cRXP_ENEMY_Longfin Thresher|r。为|T125055:0|t[Thresher Jaw]掠夺它们。
>>|cRXP_WARN_使用|r|T12505:0|t[脱粒器钳口]
.use 85998
.complete 31188,1 
.mob Longfin Thresher
step
#completewithBringDogWhaleCorpse
>>单击|cRXP_PICK_Full Crab Pots|r
.complete 31187,1 
step
#completewith BringDogWhaleCorpse
>>杀死|cRXP_FRIENDLY_Rockshell Snapclaws |r。
*|cRXP_WARN_Don't kill the too fast. Wait until your dog is in range and has eaten the previous one.|r
.complete 31186,1 
.mob Rockshell Snapclaw
step
>>|cRXP_WARN_Follow the arrow|r
*|cRXP_WARN_Make sure you have summoned your|r |cRXP_FRIENDLY_Dog|r
.goto 422,45.83,73.55
.use 85955
.complete 31185,1 
step
>>|cRXP_WARN_Follow the arrow|r
*|cRXP_WARN_Make sure you have summoned your|r |cRXP_FRIENDLY_Dog|r
.goto 422,44.93,78.32
.use 85955
.complete 31185,2 
step
>>单击|cRXP_PICK_Footlocker|r
.goto 422,44.72,78.66
.complete 31184,1 
step
#label BringDogWhaleCorpse
>>|cRXP_WARN_Follow the arrow|r
*|cRXP_WARN_Make sure you have summoned your|r |cRXP_FRIENDLY_Dog|r
.use 85955
.goto 422,40.14,78.07
.complete 31185,3 
step
#completewith ThresherTeeth
#hidewindow
#loop
.goto 422,46.07,70.14,55,0
.goto 422,46.06,80.77,55,0
.goto 422,44.40,77.46,55,0
.goto 422,39.52,78.78,55,0
+1
step
#completewith DogFed
>>杀死|cRXP_ENEMY_Longfin Thresher|r。为|T125055:0|t[Thresher Jaw]掠夺它们。
>>|cRXP_WARN_使用|r|T12505:0|t[脱粒器钳口]
.use 85998
.complete 31188,1 
.mob Longfin Thresher
step
#completewith DogFed
>>单击|cRXP_PICK_Full Crab Pots|r
.complete 31187,1 
step
#label DogFed
>>杀死|cRXP_FRIENDLY_Rockshell Snapclaws |r。
*|cRXP_WARN_Don't kill the too fast. Wait until your dog is in range and has eaten the previous one.|r
.complete 31186,1 
.use 85955
.mob Rockshell Snapclaw
step
#completewith next
>>杀死|cRXP_ENEMY_Longfin Thresher|r。为|T125055:0|t[Thresher Jaw]掠夺它们。
>>|cRXP_WARN_使用|r|T12505:0|t[脱粒器钳口]
.use 85998
.complete 31188,1 
.mob Longfin Thresher
step
>>单击|cRXP_PICK_Full Crab Pots|r
.complete 31187,1 
step
#label ThresherTeeth
>>杀死|cRXP_ENEMY_Longfin Thresher|r。为|T125055:0|t[Thresher Jaw]掠夺它们。
>>|cRXP_WARN_使用|r|T12505:0|t[脱粒器钳口]
.use 85998
.complete 31188,1 
.mob Longfin Thresher
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_狗|r, next to you
*|cRXP_WARN_使用|r|T134434:0|t[狗的口哨声]|cRXP_WARN_to召唤您的|r|cRXP-FRIENDLY_Dog|r if you can't see it
.turnin 31186 >>Turn in Dog Food
.use 85955
.target Dog
step
.goto 422,55.66,72.50
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r
.turnin 31184 >>Turn in Old Age and Treachery
.target Captain "Soggy" Su-Dao
.turnin 31185 >>Turn in Walking Dog
step
.goto 422,54.72,72.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.turnin 31187 >>Turn in On the Crab
.turnin 31188 >>Turn in Shark Week
.accept 31189 >>接任务: |cRXP_WARN_提供协助|r
.target Deck Boss Arie
step
.goto 422,53.64,76.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Angler Ju Lien|r
.complete 31189,1 
.skipgossip 64259,1
.target Master Angler Ju Lien
step
#completewith next
.cast 125460 >>单击|cRXP_PICK_Bamboo Rod|r
.goto 422,53.69,76.02
.cast 131712 >>单击|cRXP_PICK_Serpent Rod|r
.goto 422,53.68,76.05
.cast 131715 >>单击|cRXP_PICK_Classic杆|r
.goto 422,53.59,76.04
.cast 131718 >>单击|cRXP_PICK_Improved Rod|r
.goto 422,53.58,76.02
step
>>杀死|cRXP_ENEMY_Jiao繁殖|r
.complete 31189,2 
.goto 422,53.64,76.06
.mob Jiao Spawn
step
.goto 422,54.72,72.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.turnin 31189 >>Turn in Reeltime Strategy
.target Deck Boss Arie
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r
.accept 31190 >>接任务: |cRXP_WARN_水手的复仇|r
.goto 422,54.77,72.11
.target Captain "Soggy" Su-Dao
step
#completewith next
.goto 422,56.15,76.33
.vehicle 64235 >>单击|cRXP_PICK_Mist-Hopper Jr
step
>>|cRXP_WARN_使用|r|T514302:0|t[鱼叉炮]（2）|cRXP_WARN_并瞄准十字准线|r
.goto 422,56.15,76.33
.complete 31190,1 
.complete 31190,3 
.complete 31190,4 
.complete 31190,2 
step
#completewith next
.exitvehicle >>Leave the vehicle
step
.goto 422,56.57,75.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain "Soggy" Su-Dao|r
.turnin 31190 >>Turn in The Mariner's Revenge
.target Captain "Soggy" Su-Dao
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deck Boss Arie|r
.accept 31354 >>接任务: |cRXP_WARN_玛祖的奖赏|r
.goto 422,56.57,75.83
.target Deck Boss Arie
step
.goto 422,54.90,72.82
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Angler Ju Lien|r
.turnin 31354 >>Turn in Mazu's Bounty
.target Master Angler Ju Lien
step
#loop
.goto 422,62.190,56.784,30,0
.goto 422,64.457,64.439,28,0
.goto 422,67.859,63.296,30,0
.goto 422,67.536,57.168,30,0
.goto 422,62.190,56.784,0
.goto 422,64.457,64.439,0
.goto 422,67.859,63.296,0
.goto 422,67.536,57.168,0
>>杀死|cRXP_ENEMY_Mistblade开膛手|r
.complete 31019,1,6 
.mob Mistblade Ripper
step
#completewith next
.goto 422,66.772,63.952,10 >>进入洞穴
step
>>杀死|cRXP_ENEMY_Misblade Scale Lord|r
.goto 422,66.43,66.11
.complete 31019,1 
.complete 31019,2 
.mob Mistblade Ripper
.mob Mistblade Scale-Lord
step
.goto 422,66.86,65.35
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ancient Amber Chunk|r and |cRXP_FRIENDLY_Korven the Prime|r
.turnin 31019 >>Turn in Amber Is Life
.timer 30,Roleplay Duration
.target +Ancient Amber Chunk
.accept 31021 >>接任务: |cRXP_WARN_活力琥珀|r
.accept 31020 >>接任务: |cRXP_WARN_喂食|r
.target +Korven the Prime
step
#completewith next
>>杀死|cRXP_ENEMY_Coldbite Crocolisk|r
.complete 31020,1 
.mob Coldbite Crocolisk
step
#loop
.goto 422,66.219,62.486,25,0
.goto 422,66.151,57.196,25,0
.goto 422,63.967,60.886,25,0
.goto 422,66.219,62.486,0
.goto 422,66.151,57.196,0
.goto 422,63.967,60.886,0
>>单击|cRXP_PICK_Amber Fragments|r。
>>|cRXP_WARN_使用|r|T463485:0|t[Living Ember]|cRXP_WARN_NEAR|cRXP_FRIENDLY_Korven the Prime|r|r喂它，而它不吃鳄鱼
.use 82864
.collect 82864,9,31021,0x1,-1
.complete 31021,1 
.target Korven the Prime
step
#loop
.goto 422,67.291,56.815,40,0
.goto 422,65.163,54.581,40,0
.goto 422,62.413,56.369,40,0
.goto 422,64.395,61.529,40,0
.goto 422,66.929,60.934,40,0
.goto 422,65.853,58.294,40,0
.goto 422,67.291,56.815,0
.goto 422,65.163,54.581,0
.goto 422,62.413,56.369,0
.goto 422,64.395,61.529,0
.goto 422,66.929,60.934,0
.goto 422,65.853,58.294,0
>>杀死|cRXP_ENEMY_Coldbite Crocolisk|r
.complete 31020,1 
.mob Coldbite Crocolisk
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
.goto 422,62.687,60.813
.goto 422,66.86,65.35,0
.turnin 31020 >>Turn in Feeding the Beast
.turnin 31021 >>Turn in Living Amber
.accept 31022 >>接任务: |cRXP_WARN_凯帕圣树·扎尔|r
.target Korven the Prime
step
>>单击|cRXP_PICK_Sonar Tower|r
.goto 422,59.799,59.477
.complete 31022,1 
.timer 102,Roleplay Duration
step
>>杀死间谍|cRXP_ENEMY_Ik'thik Towerguards|r
.goto 422,59.799,59.477
.complete 31022,2 
.mob Ik'thik Towerguard
step
.goto 422,66.86,65.35,0
.goto 422,59.799,59.477
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
.turnin 31022 >>Turn in Kypari Zar
.accept 31026 >>接任务: |cRXP_WARN_问题的根源|r
.target Korven the Prime
step
#completewith next
.goto 422,58.526,59.398,8 >>|cRXP_WARN_进入洞穴|r
step
.goto 422,57.368,57.776
>>杀死|cRXP_ENEMY_Coldbite矩阵|r
*|cRXP_WARN_Running over the eggs will spawn more small crocodiles|r
.complete 31026,1 
.mob Coldbite Matriarch
step
.goto 422,57.368,57.776
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
.turnin 31026 >>Turn in The Root of the Problem
.accept 32030 >>接任务: |cRXP_WARN_千年一遇|r
.target Korven the Prime
step
#completewith next
.goto 422,58.526,59.398,8 >>|cRXP_WARN_离开洞穴|r
step
.goto 422,54.26,35.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
.turnin 31092 >>Turn in Feed or Be Eaten
.turnin 31359 >>Turn in The Kunchong Whisperer
.turnin 31398 >>Turn in Falling to Pieces
.target Kaz'tik the Manipulator
step
.goto 422,55.06,35.85
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
.turnin 31179 >>Turn in The Scent of Blood
.target Kil'ruk the Wind-Reaver
step
.goto 422,54.72,34.74
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klaxxi'va Ik|r
.turnin 32030 >>Turn in Once in a Hundred Lifetimes
.accept 31782 >>接任务: |cRXP_WARN_颠覆|r
.target Klaxxi'va Ik
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klaxxi'va Ik|r
.goto 422,54.72,34.74
.complete 31782,1 
.target Klaxxi'va Ik
step
.goto 422,55.11,34.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Klaxxi'va Vor|r
.turnin 31782 >>Turn in Overthrone
.target Klaxxi'va Vor
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 9c）第10章-玉林2
#displayname Chapter 10 - Jade Forest Pt. 2
#title Jade Forest 2
<< Horde
step
.goto 371,27.59,32.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.accept 31121 >>接任务: |cRXP_WARN_驻足聆听|r
.target Lorewalker Cho
step
#completewith next
.vehicle 63138 >>|cRXP_WARN_Click on Cho's Pot|r
.timer 78,Roleplay Duration
.goto 371,27.68,32.56
step
>>等待角色扮演。不要试图跳过它。
.goto 371,27.68,32.56
.complete 31121,1 
step
.goto 371,27.59,32.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31121 >>Turn in Stay a While, and Listen
.accept 31132 >>接任务: |cRXP_WARN_设身处地|r
.timer 1,Roleplay Duration
.target Lorewalker Cho
step
#completewith next
.goto 371,30.84,34.05
.logout 19 >>|cRXP_WARN_在航路点位置注销|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.goto 371,30.84,34.05
.goto 371,27.59,32.68,0
.turnin 31132 >>Turn in A Mile in My Shoes
.accept 31134 >>接任务: |cRXP_WARN_顽石开口|r
.target Lorewalker Cho
step
>>单击|cRXP_PICK_First Stone Monolith|r
.goto 371,30.88,33.69
.complete 31134,1 
step
>>点击|cRXP_PICK_Second Stone Monolith|r。杀死|cRXP_ENEMY_Bloodky Saurok|r
.goto 371,30.64,33.78
.complete 31134,2 
.mob Bloodthirsty Saurok
step
>>单击|cRXP_PICK_Third Stone Monolith|r
.goto 371,30.59,34.15
.complete 31134,3 
step
.goto 371,30.84,34.06
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31134 >>Turn in If These Stones Could Speak
.accept 31152 >>接任务: |cRXP_WARN_窥探过去|r
.timer 90,Roleplay Duration
.target Lorewalker Cho
step
>>|cRXP_WARN_关注|r|cRXP_FRIENDLY_Lorewalker Cho|r
.goto 371,31.46,34.79,22,0
.goto 371,30.04,31.51,22,0
.goto 371,28.83,32.60
.complete 31152,1 
.target Lorewalker Cho
step
.goto 371,28.83,32.62
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31152 >>Turn in Peering Into the Past
.target Lorewalker Cho
.accept 31167 >>接任务: |cRXP_LOOT_兄弟|r
step
>>|cRXP_WARN_单击|r|cRXP_PICK_Incise捆绑包|r
.goto 371,28.79,32.48
.complete 31167,1 
step
.goto 371,28.83,32.61
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31167 >>交任务: |cRXP_FRIENDLY_兄弟|r
.target Lorewalker Cho
.accept 29879 >>接任务: |cRXP_WARN_整个吞下|r
step
#completewith EngorgedCrocolisk
#hidewindow
#loop
.goto 371,24.48,35.57,32,0
.goto 371,23.57,33.43,32,0
.goto 371,22.41,34.98,32,0
.goto 371,23.62,36.74,32,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Engorged Crocollisk|r
.complete 29879,1 
.mob Engorged Crocolisk
step
>>拾取|T133912:0|t[|cRXP_Pick_Speckled Trouts|r]（|cRXP-WARN_possible when mounted）|r
.complete 29879,2 
.target Speckled Trout
step
#label EngorgedCrocolisk
>>杀死|cRXP_ENEMY_Engorged Crocollisk|r
.complete 29879,1 
.mob Engorged Crocolisk
step
.goto 371,26.29,37.33
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tooki Tooki|r
.turnin 29879 >>Turn in Swallowed Whole
.accept 29935 >>接任务: |cRXP_WARN_唯命是从|r
.target Tooki Tooki
step
.goto 371,25.88,38.00
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bo Bo|r
.accept 29933 >>接任务: |cRXP_WARN_上等虫腿|r
.target Bo Bo
step
.goto 371,25.93,38.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nibi Nibi|r
.accept 29924 >>接任务: |cRXP_WARN_杀死柯山|r
.target Nibi Nibi
step
.goto 371,28.19,38.97
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeek Jeek|r
.accept 31241 >>接任务: |cRXP_WARN_邪恶的无毛怪|r
.target Jeek Jeek
step
#completewith next
>>杀死|cRXP_ENEMY_战斗服伞兵|r。掠夺他们获得|T463448:0|t[|cRXP-Loot_Alliance Service Medallion|r]
.complete 31241,1 
.mob Battleworn Paratrooper
step
>>杀死|cRXP_ENEMY_Jack Arrow|r。掠夺他|T134166:0|t[杰克船长的头]。在你的包里点击它。
.goto 371,30.86,41.18
.collect 134166,1,31261,0
.accept 31261 >>接任务: |cRXP_WARN_杰克船长的亡灵|r
.mob Jack Arrow
step
#loop
.goto 371,30.13,39.94,32,0
.goto 371,31.26,39.61,32,0
.goto 371,31.78,42.50,32,0
.goto 371,29.95,42.19,32,0
>>杀死|cRXP_ENEMY_战斗服伞兵|r。掠夺他们获得|T463448:0|t[|cRXP-Loot_Alliance Service Medallion|r]
.complete 31241,1 
.mob Battleworn Paratrooper
step
#completewith next
.goto 371,33.35,42.34,8 >>进入洞穴
step
.goto 371,33.35,41.63
>>杀死|cRXP_ENEMY_Kher Shan|r|cRXP-WARN_in洞穴边|r
.complete 29924,1 
.mob Kher Shan
step
.goto 371,33.35,41.63
>>点击你的小地图下的任务弹出窗口，或者在你的任务日志中打开任务。
.turnin 29924 >>Turn in Kill Kher Shan
step
#loop
.goto 371,32.93,45.42,20,0
.goto 371,30.78,45.11,20,0
.goto 371,29.10,43.94,25,0
.goto 371,28.24,43.10,28,0
.goto 371,29.45,45.55,30,0
>>杀死|cRXP_ENEMY_Tigerflies|r。为|T1:0|t[|cRXP-Loot_Bug Leg|r]掠夺它们
.complete 29933,1 
.mob Tigerfly
step
.goto 371,27.99,47.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
.turnin 29935 >>Turn in Orders are Orders
.turnin 31261 >>Turn in Captain Jack's Dead
.turnin 29933 >>Turn in The Bees' Knees
.turnin 31241 >>Turn in Wicked Wikkets
.accept 29936 >>接任务: |cRXP_WARN_即时通信|r
.target Chief Kah Kah
step
>>|cRXP_WARN_单击|r|cRXP_PICK_Signal Flare|r
.goto 371,27.98,46.78
.complete 29936,1 
step
.goto 371,28.27,47.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 29936 >>Turn in Instant Messaging
.target General Nazgrim
.accept 29941 >>接任务: |cRXP_WARN_超越地平线|r
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
.goto 371,28.349,46.970
.skipgossip 56340,1
.complete 29941,1 
.target Shokia
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kah Kah|r
.goto 371,27.988,47.194
.skipgossip 56336,1
.complete 29941,4 
.target Kah Kah
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.goto 371,27.099,48.986
.skipgossip 56478,1
.complete 29941,3 
.target Shademaster Kiryn
step
#loop
.goto 371,27.058,50.655,12,0
.goto 371,28.068,50.402,12,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gorrok|r
.skipgossip 56477,1
.complete 29941,2 
.target Sergeant Gorrok
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r and |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 29941 >>Turn in Beyond the Horizon
.goto 371,28.25,47.77
.target +General Nazgrim
.accept 29937 >>接任务: |cRXP_WARN_愤怒的飞禽|r
.goto 371,28.297,47.793
.target +Rivett Clutchpop
step
.goto 371,27.985,47.196
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
.accept 31239 >>接任务: |cRXP_WARN_你叫什么名字名字？|r
.target Chief Kah Kah
step

#hidewindow
#completewith RiverstrideJinyu
#label RiverstrideJinyuA
.goto 371,28.409,45.372,18,0
.goto 371,30.067,47.278,25,0
.goto 371,34.370,47.798,25,0
.goto 371,33.611,45.314,25,0
.goto 371,29.212,44.341,25 >>A
step
#completewith next
>>杀死|cRXP_ENEMY_饥饿的血爪|r。为|T237412:0|t[|cRXP-Loot_一拳鸟肠子|r]掠夺它们
.complete 29937,1 
.mob Hungry Bloodtalon
step
#completewith RiverstrideJinyuA
#label RiverstrideJinyu
.goto 371,28.409,45.372,0
.goto 371,30.067,47.278,0
.goto 371,34.370,47.798,0
.goto 371,33.611,45.314,0
.goto 371,29.212,44.341,0
>>杀死|cRXP_ENEMY_Riverstep Jinyu|r
.complete 31239,1 
.mob Riverstride Jinyu
step
#requires RiverstrideJinyu
#completewith next
>>杀死|cRXP_ENEMY_Riverstep Jinyu|r
.complete 31239,1 
.mob Riverstride Jinyu
step
#requires RiverstrideJinyu
#loop
.goto 371,31.903,49.596,22,0
.goto 371,31.407,53.829,22,0
.goto 371,29.808,51.347,25,0
.goto 371,27.943,52.863,28,0
.goto 371,25.672,51.566,38,0
.goto 371,29.510,50.449,28,0
.goto 371,30.147,47.972,20,0
.goto 371,31.903,49.596,0
.goto 371,31.407,53.829,0
.goto 371,29.808,51.347,0
.goto 371,27.943,52.863,0
.goto 371,25.672,51.566,0
.goto 371,29.510,50.449,0
.goto 371,30.147,47.972,0
>>杀死|cRXP_ENEMY_饥饿的血爪|r。为|T237412:0|t[|cRXP-Loot_一拳鸟肠子|r]掠夺它们
.complete 29937,1 
.mob Hungry Bloodtalon
step
.goto 371,27.24,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 29937 >>Turn in Furious Fowl
.accept 29939 >>接任务: |cRXP_WARN_炸鱼|r
.target Rivett Clutchpop
step
.goto 371,27.033,50.842
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eekle Eekle|r
.accept 29942 >>接任务: |cRXP_WARN_鱼儿都是我们的！|r
.target Eekle Eekle
step
#completewith ExplodedSlicky
>>杀死|cRXP_ENEMY_Muck Snapper|r。为|T237339:0|t[Snapper Steaks]掠夺它们
.complete 29942,1 
.mob Muck Snapper
step
#completewith next
.goto 371,26.726,55.367
.cast 105999 >>|cRXP_WARN_使用|r|T463515:0|t[Gut Bomb]|cRXP_WARN_在航路点位置|r。
step
#label ExplodedSlicky
>>拿起|T133916:0|t[|cRXP_Pick_Exploded Slickies|r]
.goto 371,26.726,55.367,0
.goto 371,26.55,55.64
.use 76262
.complete 29939,1 
step
#loop
.goto 371,26.000,54.147,35,0
.goto 371,27.173,54.755,22,0
.goto 371,27.457,56.936,35,0
.goto 371,26.010,56.384,28,0
.goto 371,26.000,54.147,0
.goto 371,27.173,54.755,0
.goto 371,27.457,56.936,0
.goto 371,26.010,56.384,0
>>杀死|cRXP_ENEMY_Muck Snapper|r。为|T237339:0|t[Snapper Steaks]掠夺它们
.complete 29942,1 
.mob Muck Snapper
step
>>杀死|cRXP_ENEMY_Muck Snapper|r。为|T237339:0|t[Snapper Steaks]掠夺它们
.goto 371,27.12,55.13
.complete 29942,1 
.mob Muck Snapper
step
.goto 371,27.04,50.84
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eekle Eekle|r
.turnin 29942 >>Turn in Silly Wikket, Slickies are for Hozen
.target Eekle Eekle
step
.goto 371,27.24,50.78
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 29939 >>Turn in Boom Bait
.target Rivett Clutchpop
step
#loop
.goto 371,30.067,47.278,25,0
.goto 371,28.409,45.372,18,0
.goto 371,29.212,44.341,25,0
.goto 371,33.611,45.314,25,0
.goto 371,34.370,47.798,25,0
.goto 371,30.067,47.278,0
.goto 371,28.409,45.372,0
.goto 371,29.212,44.341,0
.goto 371,33.611,45.314,0
.goto 371,34.370,47.798,0
>>杀死|cRXP_ENEMY_Riverstep Jinyu|r
.complete 31239,1 
.mob Riverstride Jinyu
step
.goto 371,27.98,47.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Kah Kah|r
.turnin 31239 >>Turn in What's in a Name Name?
.target Chief Kah Kah
step
.goto 371,28.60,47.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
.accept 29730 >>接任务: |cRXP_WARN_斥候报告：敌对土著|r
.timer 1,Roleplay Duration
.target Riko
step
>>单击|cRXP_PICK_Warning Sign|r
.goto 371,38.31,45.42
.complete 29730,1 
.target Warning Sign
step
>>点击|cRXP_PICK_栩栩如生的玉像|r
.goto 371,38.87,45.98
.complete 29730,2 
.timer 1,Roleplay Duration
.target Lifelike Jade Statue
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Widow Greenpaw|r
.goto 371,39.23,46.21
.skipgossip 55381,1
.timer 11,Roleplay Duration
.complete 29730,3 
.target Widow Greenpaw
step
.isOnQuest 29730
#completewith next
.exitvehicle >>Leave the vehicle
step
.goto 371,28.60,47.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
.turnin 29730 >>Turn in Scouting Report: Hostile Natives
.target Riko
step
.goto 371,28.65,47.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.accept 29731 >>接任务: |cRXP_WARN_斥候报告：步入正轨|r
.timer 32,Roleplay Duration
.target Shademaster Kiryn
step
>>在|cRXP_ENEMY_Lurking Tiger|r上使用|T458733:0|t[烟雾弹]（1）
.goto 371,48.60,60.12
.complete 29731,1 
.mob Lurking Tiger
step
#completewith next
.exitvehicle >>Exit the vehicle
step
.goto 371,28.65,47.46
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.turnin 29731 >>Turn in Scouting Report: On the Right Track
.target Shademaster Kiryn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
.accept 29823 >>接任务: |cRXP_WARN_斥候报告：敌人的朋友|r
.goto 371,28.60,47.43
.timer 43,Roleplay Duration
.target Riko
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r when she gets trapped
>>|T132939:0|t[上击]（1）：|cRXP_WARN_用于击退敌人|r
>>|T237150:0|t[Fling Filth]（2）：|cRXP_WARN_用于杀死射程内的敌人|r
.goto 371,49.82,70.51
.complete 29823,1 
.skipgossip 55688,1
step
#completewith next
.exitvehicle >>Exit the vehicle
step
.goto 371,28.60,47.43
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
.turnin 29823 >>Turn in Scouting Report: The Friend of My Enemy
.target Riko
step
.goto 371,28.64,47.37
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
.accept 29824 >>接任务: |cRXP_WARN_斥候报告：锦鱼得水|r
.timer 23,Roleplay Duration
.target Shokia
step
>>单击|cRXP_PICK_Snipper Rifle|r
>>|cRXP_WARN_然后单击|cRXP_ENEMY_Pearlfin Poolwatch|r以杀死它们并保护|cRXP_FRIENDLY_Shademaster Kiryn|r|r
*You also have to click on |cRXP_ENEMY_Kiryn's Poison Barrels|r
.goto 371,62.56,82.15
.complete 29824,1 
.mob Pearlfin Poolwatcher
.target Kiryn Poison Barrel
step
#completewith next
.exitvehicle >>Exit the vehicle
step
.goto 371,28.64,47.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
.turnin 29824 >>Turn in Scouting Report: Like Jinyu in a Barrel
.target Shokia
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.accept 29943 >>接任务: |cRXP_WARN_身边的游击队|r
.goto 371,28.67,47.53
.target General Nazgrim
step
.goto 371,27.23,50.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.accept 29968 >>接任务: |cRXP_WARN_绿色能源|r
.target Rivett Clutchpop
step
#completewith AllianceInfiltrator
#hidewindow
#loop
.goto 371,29.17,52.67,30,0
.goto 371,30.32,53.83,25,0
.goto 371,31.79,51.26,35,0
.goto 371,29.56,50.01,35,0
.goto 371,29.17,52.67,0
.goto 371,30.32,53.83,0
.goto 371,31.79,51.26,0
.goto 371,29.56,50.01,0
+1
step
#completewith next
>>杀死|cRXP_ENEMY_Alliance渗透者|r
.complete 29943,1 
.mob Alliance Infiltrator
step
>>单击|cRXP_PICK_Green Branch|r
.complete 29968,1 
step
#label AllianceInfiltrator
>>杀死|cRXP_ENEMY_Alliance渗透者|r
.complete 29943,1 
.mob Alliance Infiltrator
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r |cRXP_WARN_next to you|r
.turnin 29943 >>Turn in Guerrillas in our Midst
.accept 29966 >>接任务: |cRXP_WARN_烧毁那座房子|r
.target General Nazgrim
step
>>|cRXP_WARN_Use|r|T461806:0|t[Nazgrim's Grog]
.use 76336
.goto 371,29.44,54.18
.complete 29966,1 
step
.goto 371,27.23,50.77
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 29968 >>Turn in Green-ish Energy
.accept 29967 >>接任务: |cRXP_WARN_炸弹才是王道！|r
.target Rivett Clutchpop
step
#completewith next
.gossipoption 40650 >>Talk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.target Rivett Clutchpop
step
>>使用|T136173:0|t[投掷甲烷炸弹]（1）在矩形位置创建毒云
>>杀死|cRXP_ENEMY_Jinyu攻击者|r
.goto 371,28.91,49.18
.complete 29967,1 
.mob Jinyu Attackers
step
.goto 371,28.98,49.08
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.turnin 29967 >>Turn in Boom Goes the Doonamite!
.target Rivett Clutchpop
step
.goto 371,28.67,47.53
.convertquest 30015,31230 << Horde
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 29966 >>Turn in Burning Down the House
.accept 30015 >>接任务: |cRXP_WARN_晨芳园|r
.target General Nazgrim
step
.goto 371,46.81,46.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 30015 >>Turn in Dawn's Blossom
.timer 25,Roleplay Duration
.target Lorewalker Cho
step
.goto 371,47.15,46.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
.accept 31230 >>接任务: |cRXP_WARN_欢迎来到晨芳园|r
.target Toya
step
.goto 371,46.78,45.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kai Wanderbrew|r
.complete 31230,3 
.target Kai Wanderbrew
step
.goto 371,48.49,44.49
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Windfur|r
.complete 31230,1 
.target Master Windfur
step
.goto 371,45.72,43.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Peiji Goldendraft|r
.complete 31230,2 
.target Peiji Goldendraft
step
.goto 371,47.16,46.17
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
.turnin 31230 >>Turn in Welcome to Dawn's Blossom
.target Toya
step
#include 7） 主战役玉林中立
step
.goto 371,28.03,47.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 30499 >>Turn in Get Back Here!
.target General Nazgrim
.accept 30484 >>接任务: |cRXP_WARN_评估进度|r
.accept 30466 >>接任务: |cRXP_WARN_高效激励|r
step
>>单击|cRXP_PICK_Barrel of Slickies |r
.goto 371,28.15,47.34
.complete 30466,2 
step
#completewith GaugingOurProgress
>>单击|cRXP_FRIENDLY_Lazy Hozen|r
.complete 30466,1 
.target Lazy Hozen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
.goto 371,28.41,47.79
.complete 30484,2 
.skipgossip 59305,1
.target Rivett Clutchpop
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r
.goto 371,29.16,50.89
.complete 30484,1 
.skipgossip 56841,1
.target Shademaster Kiryn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
.goto 371,28.45,51.92
.complete 30484,3 
.skipgossip 56838,1
.target Shokia
step
#label GaugingOurProgress
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riko|r
.goto 371,27.00,54.94
.complete 30484,4 
.skipgossip 56840,1
.target Riko
step
#loop
.goto 371,26.99,50.60,25,0
.goto 371,27.18,46.53,26,0
.goto 371,28.70,47.40,25,0
.goto 371,28.72,49.73,20,0
>>单击|cRXP_FRIENDLY_Lazy Hozen|r
.complete 30466,1 
.target Lazy Hozen
step
.goto 371,28.03,47.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r
.turnin 30466 >>Turn in Sufficient Motivation
.turnin 30484 >>Turn in Gauging Our Progress
.target General Nazgrim
step << Horde
.goto 371,28.22,46.72
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.accept 30485 >>接任务: |cRXP_WARN_最后一块拼图|r
.target Lorewalker Cho
step
#include 7） 主战役玉林中立2
]])
RXPGuides.RegisterGuide([[
#df
#version 3
#group RestedXP Panda Remix
#name 9c）第10章-玉林2
#displayname Chapter 10 - Jade Forest Pt. 2
#title Jade Forest 2
<< Alliance
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pearlkeeper Fujin.|r
.accept 29894 >>接任务: |cRXP_WARN_水流之灵|r
.goto 371,58.76,81.28
.target Pearlkeeper Fujin
step
.goto 371,58.58,82.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Lusshan|r
.complete 29894,1 
.skipgossip 30,RP
.target Elder Lusshan
step
.goto 371,58.97,81.7
>>do xyz
.complete 29894,2 
step
.goto 371,58.97,81.70
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r
.turnin 29894 >>Turn in Spirits of the Water
.target Bold Karasshi
step
.goto 371,58.98,81.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r
.accept 29733 >>接任务: |cRXP_WARN_军情七处报告：丛林迷失|r
.timer 35,RP
.skipgossip 55333,1
.target Rell Nightwind
step
#completewith next
.goto 371,49.88,70.76
.gossipoption 40098 >>Talk to |cRXP_FRIENDLY_Amber Kearnen|r
.timer 25,RP
.target Amber Kearnen
step
.goto 371,49.83,70.96
>>使用|T135975:0|t[双击，]|T135975m:0|t[Masterful Strike]和|T1359750:0|t[Sure Strike]
.complete 29733,1 
.mob Ambushing Hozen
step
#completewith next
.exitvehicle >>Leave the vehicle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r and |cRXP_FRIENDLY_Sully“The Pickle”McLeary|r
.turnin 29733 >>Turn in SI:7 Report: Lost in the Woods
.goto 371,58.97,81.83
.target +Rell Nightwind
.accept 29725 >>接任务: |cRXP_WARN_军情七处报告：居高临下|r
.timer 46,RP
.goto 371,58.89,81.89,5,0
.goto 371,58.84,81.67
.target +Sully“The Pickle”McLeary
step
.isOnQuest 29725
.goto 371,50.64,62.99,10 >>|cRXP_WARN_按箭头|r|cRXP_WARN_Kill|cRXP_ENEMY_老虎潜伏|r使用|r|T463556:0|t[光镜]（1）
.mon Lurking Tiger
step
.isOnQuest 29725
.goto 371,48.47,58.6,10 >>|cRXP_WARN_按箭头|r|cRXP_WARN_Kill|cRXP_ENEMY_老虎潜伏|r使用|r|T463556:0|t[光镜]（1）
.timer 7,RP
step
.isOnQuest 29725
.goto 371,46.35,61.74,10 >>|cRXP_WARN_按箭头|r|cRXP_WARN_Kill|cRXP_ENEMY_老虎潜伏|r使用|r|T463556:0|t[光镜]（1）
.timer 45,RP
step
.isOnQuest 29725
.goto 371,50.94,63.06,20 >>|cRXP_WARN_按箭头|r|cRXP_WARN_Kill|cRXP_ENEMY_老虎潜伏|r使用|r|T463556:0|t[光镜]（1）
.timer 10,RP
step
.goto 371,50.94,63.06
>>|cRXP_WARN_Kill|cRXP_ENEMY_Ambushing Hozen|r使用|r|T463556:0|t[光镜]（1）
.complete 29725,4 
.mob Ambushing Hozen
step
#completewith next
.exitvehicle >>Leave the vehicle
step
.goto 371,58.84,81.69
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully“The Pickle”McLeary|r
.turnin 29725 >>Turn in SI:7 Report: Fire From the Sky
.target Sully“The Pickle”McLeary
step
.goto 371,59.07,81.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Little Lu|r
.accept 29726 >>接任务: |cRXP_WARN_军情七处报告：敌对土著|r
.timer 35,RP
.target Little Lu
step
.goto 371,38.31,45.4
>>单击|cRXP_PICK_Sign|r
.complete 29726,1 
step
.goto 371,38.86,46.2
>>点击|cRXP_FRIENDLY_Lifelike玉雕像|r
.complete 29726,2 
.target Lifelike Jade Statue
step
.goto 371,38.94,46.32
>>点击|cRXP_FRIENDLY_Suspicous翡翠雕像|r
.complete 29726,3 
.timer 8,RP
.target Suspicious Jade Statue
step
.isOnQuest 29726
.goto 371,39.32,46.23
.gossipoption 40113 >>Talk to |cRXP_FRIENDLY_Widow Greenpaw|r
.timer 53,RP
.target Widow Greenpaw
step
.goto 371,39.25,46.22
>>do xyz
.complete 29726,4 
.target Widow Greenpaw
step
#completewith next
.exitvehicle >>Leave the vehicle
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Little Lu|r and |cRXP_FRIENDLY_Amber Kearnen|r
.turnin 29726 >>Turn in SI:7 Report: Hostile Natives
.goto 371,59.06,81.89
.target +Little Lu
.accept 29727 >>接任务: |cRXP_WARN_军情七处报告：不留俘虏|r
.timer 16,RP
.goto 371,58.93,81.93
.target +Amber Kearnen
step
#completewith next
.goto 371,28.58,54.44,10 >>单击|cRXP_PICK_Sniper Rifle|r
step
>>单击|cRXP_ENEMY_Hozen的|r|cRX_PICK_Barrel的|r和|cRXP_ENEMY_Orc的|r
.complete 29727,1 
step
.goto 371,58.93,81.93
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amber Kearnen|r
.turnin 29727 >>Turn in SI:7 Report: Take No Prisoners
.target Amber Kearnen
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r and |cRXP_FRIENDLY_Admiral Taylor|r
.accept 29888 >>接任务: |cRXP_WARN_找到游学者|r
.goto 371,58.97,81.70
.target +Bold Karasshi
.accept 29903 >>接任务: |cRXP_WARN_绝配|r
.goto 371,58.87,81.69
.target +Admiral Taylor
step
#loop
.goto 371,58.87,82.35,30,0
.goto 371,59.32,83.5,30,0
.goto 371,59.44,84.3,30,0
.goto 371,59.65,85.66,30,0
.goto 371,58.9,84.7,30,0
.goto 371,58.5,84.21,30,0
.goto 371,57.98,82.23,30,0
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pearlfin Aqualyte.|r
.complete 29903,1 




.target Pearlfin Aqualyte
step
.goto 371,58.87,81.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.turnin 29903 >>Turn in A Perfect Match
.target Admiral Taylor
.accept 29904 >>接任务: |cRXP_WARN_另有要事|r
step
#loop
.goto 371,58.72,78.06,30,0
.goto 371,59.89,76.45,30,0
.goto 371,58.72,75.34,30,0
.goto 371,57.75,76.67,30,0
.goto 371,58.72,78.06,0
.goto 371,59.89,76.45,0
.goto 371,58.72,75.34,0
.goto 371,57.75,76.67,0
>>杀死|cRXP_ENEMY_Wild Stalker，|r|cRXD_ENEMY_Stoneskin Basilisk，|r| cRXP__ENEMY_WildHuntress，|r和|cRXP_ENEMY_Jeweld Macaw|r
.complete 29904,1 
.mob Wild Stalker
.mob Stoneskin Basilisk
.mob Wild Huntress
.mob Jeweled Macaw
step
.goto 371,58.86,81.67
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.turnin 29904 >>Turn in Bigger Fish to Fry
.target Admiral Taylor
.accept 29905 >>接任务: |cRXP_WARN_烧死他们|r
.accept 29906 >>接任务: |cRXP_WARN_群龙无首|r
step
#completewith next
>>杀死|cRXP_ENEMY_Grookin强化|r和|cRXX_ENEMY_Slingtail Recruit|r
.complete 29905,1 
.mob Grookin Reinforcement
.mob Slingtail Recruit
step
.goto 371,54.98,79.96
>>杀死|cRXP_ENEMY_Chief Gukgut |r
.complete 29906,1 
.mob chief gukgut
step
#loop
.goto 371,53.42,80.34,30,0
.goto 371,53.61,81.31,30,0
.goto 371,54.09,82.81,30,0
.goto 371,55.79,81.84,30,0
>>杀死|cRXP_ENEMY_Grookin强化|r和|cRXX_ENEMY_Slingtail Recruit|r
.complete 29905,1 
.mob Grookin Reinforcement
.mob Slingtail Recruit
step
.goto 371,58.89,81.48
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Lusshan|r
.turnin 29905 >>Turn in Let Them Burn
.turnin 29906 >>Turn in Carp Diem
.target Elder Lusshan
step
.goto 371,53.72,91.50
>>单击|cRXP_FRIENDLY_Mouthwatering Brew|r
.turnin 29888 >>Turn in Seek Out the Lorewalker
.accept 29889 >>接任务: |cRXP_WARN_借来的美酒|r
.target Mouthwatering Brew
step
#completewith next
.goto 371,53.71,91.48
.cast 105594 >>单击|cRXP_FRIENDLY_Mouthwatering Brew|r
.timer 7,RP
step
.goto 371,53.67,91.4
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 29889 >>Turn in Borrowed Brew
.accept 31130 >>接任务: |cRXP_WARN_拜访游学者周卓|r
.timer 13,RP
.target Lorewalker Cho
step
.goto 371,53.72,90.99
>>单击|cRXP_PICK_Tree|r
.complete 31130,1 
.timer 27,RP
step
#completewith next
.goto 371,54.08,90.67
.gossipoption 33293 >>单击|cRXP_PICK_Painting|r
.timer 40,RP
step
>>右键单击Buff Frame中的Buff:|T237156:0|t[绘画]，可节省20秒。
.complete 31130,2 
.timer 24,RP
step
#completewith next
.goto 371,54.02,91.33
.cast 123949 >>单击|cRXP_PICK_Bird Feeder|r
step
>>右键单击Buff Frame中的Buff:|T605484:0|t[喂食]，可节省20秒。
.complete 31130,3 
step
.goto 371,54.01,91.19
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 31130 >>Turn in A Visit with Lorewalker Cho
.target Lorewalker Cho
.accept 29891 >>接任务: |cRXP_WARN_效力|r
.accept 29892 >>接任务: |cRXP_WARN_醇度|r
.accept 29893 >>接任务: |cRXP_WARN_色泽|r
step
#hidewindow
#completewith Amberfly Wing
#loop
.goto 371,54.86,88.88,30,0
.goto 371,58.01,89.99,30,0
.goto 371,62.56,89.69,30,0
.goto 371,53.58,88.85,30,0
+1
step
#completewith Mist Horror Heart
>>杀死|cRXP_ENEMY_Glittering Amberfly|r单击它们可获得|cRXP_LOOT_Amberfly Wing|r
.complete 29893,1 
.mob Glittering Amberfly
step
#completewith Mist Horror Heart
>>杀死|cRXP_ENEMY_Bog Crocolisk|r为|cRXD_Loot_Pristine Crocolisk Eye掠夺它们|r
.complete 29892,1 
.mob Bog Crocolisk
step
#label Mist Horror Heart
>>杀死8个|cRXP_ENEMY_Mist Creeper’s|r后，|cRXD_ENEMY_米斯特恐怖|r将产生杀死它并掠夺它以获得|cRXP_loot_Misst恐怖之心|r
.complete 29891,1 
.complete 29891,2 
.mob mist creeper
.mob Mist Horror
step
#completewith next
>>杀死|cRXP_ENEMY_Glittering Amberfly|r单击它们可获得|cRXP_LOOT_Amberfly Wing|r
.complete 29893,1 
.mob Glittering Amberfly
step
>>杀死|cRXP_ENEMY_Bog Crocolisk|r为|cRXD_Loot_Pristine Crocolisk Eye掠夺它们|r
.complete 29892,1 
.mob Bog Crocolisk
step
#label Amberfly Wing
>>杀死|cRXP_ENEMY_Glittering Amberfly|r单击它们可获得|cRXP_LOOT_Amberfly Wing|r
.complete 29893,1 
.mob Glittering Amberfly
step
.goto 371,53.78,90.64
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.turnin 29891 >>Turn in Potency
.turnin 29892 >>Turn in Body
.turnin 29893 >>Turn in Hue
.accept 29890 >>接任务: |cRXP_WARN_集中精神|r
.timer 25,RP
.target Lorewalker Cho
step
#completewith next
.goto 371,54.68,92.06
.cast 105668 >>单击|cRXP_PICK_Potent Dream Brew|r
.timer 102,RP
step
.goto 371,54.58,91.89
>>使用|T450906:0|t[Left]（1）和|T450908:0|t[Right]（2）使直线靠近中心。
.complete 29890,1 
step
#completewith next
.exitvehicle >>Leave the vehicle
step
.goto 371,65.90,79.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_安度因·乌瑞恩|r
.turnin 29890 >>Turn in Finding Your Center
.accept 29898 >>接任务: |cRXP_WARN_圣水|r
.target +Anduin Wrynn
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ren Whitepaw|r and |cRXP_FRIENDLY_Lina Whitepaw|r
.accept 29899 >>接任务: |cRXP_WARN_安息|r
.goto 371,65.99,79.29
.target +Ren Whitepaw
.accept 29900 >>接任务: |cRXP_WARN_古老的传说|r
.goto 371,65.99,79.39
.target +Lina Whitepaw
step
#completewith next
>>杀死|cRXP_ENEMY_被折磨的灵魂|r
.complete 29899,1 
.mob tortured spirit
step
#completewith next
.goto 371,66.38,82.16,10 >>Enter the Cave
step
.goto 371,66.82,82.08
>>单击|cRXP_PICK_Restorative Body |r
.complete 29898,1 
step
.goto 371,66.96,83.03,15,0
.goto 371,67.26,81.63
>>单击|cRXP_PICK_Restorative Mind|r
.complete 29898,2 
step
.goto 371,68.03,81.85
>>单击|cRXP_PICK_Restorative Spirit|r
.complete 29898,3 
step
#completewith next
>>杀死|cRXP_ENEMY_凌心拳阴影|r
.complete 29900,1 
.mob shade of ling heartfist
step
.goto 371,66.43,80.01
>>单击|cRXP_PICK_Restorative Heart|r
.complete 29898,4 
step
.goto 371,66.77,80.3
>>杀死|cRXP_ENEMY_凌心拳阴影|r
.complete 29900,1 
.mob shade of ling heartfist
step
.goto 371,66.50,80.51
>>单击|cRXP_PICK_Scroll of Sorrow |r
.complete 29900,2 
step
#completewith next
.goto 371,66.72,81.92,20,0
.goto 371,66.38,82.16,10 >>Leave the Cave
step
#loop
.goto 371,65.99,82.12,30,0
.goto 371,65.78,82.97,30,0
.goto 371,65.15,81.93,30,0
.goto 371,65.71,81.28,30,0
>>杀死|cRXP_ENEMY_被折磨的灵魂|r
.complete 29899,1 
.mob tortured spirit
step
.goto 371,65.98,79.38
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lina Whitepaw|r and |cRXP_FRIENDLY_Ren Whitepaw|r
.turnin 29898 >>Turn in Sacred Waters
.goto 371,65.99,79.4
.target +Lina Whitepaw
.turnin 29899 >>Turn in An Ancient Legend
.turnin 29900 >>Turn in An Ancient Legend
.accept 29901 >>接任务: |cRXP_WARN_安度因的决择|r
.goto 371,65.99,79.3
.target +Ren Whitepaw
step
.goto 371,65.91,79.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin|r
.complete 29901,1 
.target Anduin
.skipgossip
step
.goto 371,58.88,81.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.turnin 29901 >>Turn in Anduin's Decision
.target Admiral Taylor
step
.goto 371,58.05,80.56
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Lusshan|r
.accept 29922 >>接任务: |cRXP_WARN_寻求智慧|r
.target Elder Lusshan
step
.goto 371,57.95,82.51
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitemaster Ut-Nam|r
.complete 29922,1 
.target Kitemaster Ut-Nam
step
.goto 371,47.14,46.15
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toya|r
.turnin 31230 >>Turn in Welcome to Dawn's Blossom
.target Toya
step
#include 7） 主战役玉林中立
step
.goto 371,58.07,80.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.turnin 30498 >>Turn in Get Back Here!
.target Admiral Taylor
.accept 30568 >>接任务: |cRXP_WARN_略尽绵力|r
step
.goto 371,58.55,82.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully“The Pickle”McLeary|r
.accept 30565 >>接任务: |cRXP_WARN_意外之喜|r
.target Sully“The Pickle”McLeary
step
#completewith next
.goto 371,54.81,79.76
.gossipoption 39488 >>Talk to |cRXP_FRIENDLY_Amber Kearnen|r
.target Amber Kearnen
step
.goto 371,54.67,80.07
>>杀死|cRXP_ENEMY_Hozen Brawler|r
.complete 30568,2 
.mob Hozen Brawler
step
#completewith next
#loop
.goto 371,59.09,83.75,30,0
.goto 371,60.04,83.81,30,0
.goto 371,59.43,85.06,30,0
.goto 371,58.73,84.73,30,0
.goto 371,59.09,83.75,0
.goto 371,60.04,83.81,0
.goto 371,59.43,85.06,0
.goto 371,58.73,84.73,0
.gossipoption 39293 >>Talk to |cRXP_FRIENDLY_Pearlfin Recruit|r
.target Pearlfin Recruit
step
>>杀死|cRXP_ENEMY_Pearlfin新兵|r
.complete 30568,1 
.mob Pearlfin Recruit
step
#loop
.goto 371,59.97,86.51,30,0
.goto 371,59.06,86.94,30,0
.goto 371,59.71,88.47,30,0
.goto 371,60.53,88.23,30,0
.goto 371,61.05,87.74,30,0
.goto 371,61.09,86.98,30,0
.goto 371,59.97,86.51,0
.goto 371,59.06,86.94,0
.goto 371,59.71,88.47,0
.goto 371,60.53,88.23,0
.goto 371,61.05,87.74,0
.goto 371,61.09,86.98,0
>>与|cRXP_FRIENDLY_Wounded Pearlfin交互|r
.complete 30568,3 
.target Wounded Pearlfin
step
#loop
.goto 371,61.64,76.69,40,0
.goto 371,65.14,79.72,40,0
.goto 371,61.64,76.69,0
.goto 371,65.14,79.72,0
>>杀死|cRXP_ENEMY_Slingtail Ambusher|r抢夺|cRXD_Loot_生锈的锁紧螺栓|r和|cRXX_Loot_水损坏的装备|r
.complete 30565,2 
.complete 30565,1 
.mob Slingtail Ambusher
step
.goto 371,58.08,80.65
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r
.turnin 30568 >>Turn in Helping the Cause
.target Admiral Taylor
step
.goto 371,58.56,82.30
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully“The Pickle”McLeary|r
.turnin 30565 >>Turn in An Unexpected Advantage
.target Sully“The Pickle”McLeary
step << Alliance
.goto 371,58.85,81.12
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r
.accept 31362 >>接任务: |cRXP_WARN_最后一块拼图|r
.target Lorewalker Cho
step
#include 7） 主战役玉林中立2
]])
