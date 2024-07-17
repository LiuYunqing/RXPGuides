RXPGuides.RegisterGuide([[
#classic
<< Horde
#xprate >1.99
#name 24-26 Southern Barrens
#version 20
#group RestedXP Horde 22-30
#next 26-28阿申瓦尔；26-28 SoD Ashenvale
step
.goto The Barrens,44.55,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
.accept 879 >>接任务: |cRXP_LOOT_内奸|r
.target Mangletooth
step
#completewith CampTHS2
+|cRXP_WARN_使用剩余的|r|T134128:0|t[血碎片]|cRXP_WARN_toget|r|T136104:0|t[Razorhide]|cRXP_WARN_andother buffs|r << !Mage !Druid
+|cRXP_WARN_使用剩余的|r|T134128:0|t[血碎片]|cRXP_WARN_to获得buff|r << Mage/Druid
+|cRXP_WARN_请确保关闭Questie或Leatrix Plus等插件的任何自动完成功能！|r
step
.goto The Barrens,44.85,59.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_乔恩·星眼|r
.daily 235,742,6382 >>接任务: |cRXP_WARN_灰谷狩猎|r
.target Jorn Skyseer
step << Warrior
.goto The Barrens,44.67,59.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁迦·暴怒图腾|r
.turnin 1823 >>交任务: |cRXP_FRIENDLY_和鲁迦交谈|r
.accept 1824 >>接任务: |cRXP_LOOT_巨人旷野的试炼|r
.target Ruga Ragetotem
step
#label CampTHS2
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.home >>将您的炉石设置为陶拉霍营地
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Byula
.dungeon WC
step
#label CampTHS2
.goto The Barrens,45.58,59.04
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_比鲁拉|r
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时补充食物和水|r << !Rogue !Warrior
.vendor >>|cRXP_BUY_卖掉你的垃圾，必要时再补充食物|r << Rogue/Warrior
.target Innkeeper Byula
.dungeon !WC
step
#completewith next
>>杀死一只|cRXP_ENEMY_Thunderhawk|r。掠夺它的|cRXD_Loot_Fwing|r
.complete 913,1 
.mob Thunderhawk Hatchling
.mob Thunderhawk Cloudscraper
.mob Greater Thunderhawk
step
.goto The Barrens,44.63,62.71,80,0
.goto The Barrens,45.78,63.09,80,0
.goto The Barrens,49.57,59.36
>>在该区域周围找到并杀死|cRXP_ENEMY_Owatanka|r（蓝雷蜥蜴）。抢劫他|T133723:0|t[|cRXP_Loot_Owatanka的尾钉|r]。使用它开始任务
>>|cRXP_WARN_如果找不到他，请跳过此任务|r
.collect 5102,1,884 
.accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
.use 5102
.unitscan Owatanka
step << Warrior
.loop 25,The Barrens,45.17,69.08,43.87,68.84,42.17,69.65,42.35,71.85,42.77,72.28,43.86,72.06,45.38,72.25,45.17,69.08
>>杀死|cRXP_ENEMY_Silithid保护器|r，|cRXD_ENEMY_Silithid Swarmers |r，| cRXP__ENEMY_Silihid Creepers |r和|cRXP_ENEMY_ Silithid Grubs|r。掠夺它们的|T133027:0|t[Twitching Antenna]
>>|cRXP_WARN_注意：|T133027:0|t[Twitching Antenna]只有15分钟的持续时间，在此任务期间不要AFK或注销|r
.complete 1824,1 
.mob Silithid Protector
.mob Silithid Swarmer
.mob Silithid Creeper
.mob Silithid Grub
step << Warrior
.goto The Barrens,44.67,59.42
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_鲁迦·暴怒图腾|r
>>|cRXP_WARN_Skip the follow-up|r
.turnin 1824 >>交任务: |cRXP_FRIENDLY_巨人旷野的试炼|r
.target Ruga Ragetotem
step
#completewith next
>>杀死|cRXP_ENEMY_Silithid Harvester |r。为|T134321:0|t[|cRXP-Loot_HHarvester的头部|r]掠夺它。使用它开始任务
>>|cRXP_WARN_如果找不到他，请跳过此任务|r
.collect 5138,1,897,1 
.accept 897 >>接任务: |cRXP_LOOT_收割者|r
.use 5138
.unitscan Silithid Harvester
step
#label SilithidEggs
.goto The Barrens,45.04,69.85,60,0
.goto The Barrens,42.91,69.86,60,0
.goto The Barrens,42.97,71.11,60,0
.goto The Barrens,45.36,72.36,60,0
.goto The Barrens,47.40,70.11,60,0
.goto The Barrens,48.40,70.08,60,0
.goto The Barrens,42.91,69.86
>>掠夺|cRXP_PICK_Silithid土丘|r以换取|cRXP_Loot_Silithid蛋|r
.complete 868,1 
.isOnQuest 868
.maxlevel 26
step << Shaman
#completewith next
.goto The Barrens,44.76,74.79,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step << Shaman
#completewith next
.goto The Barrens,43.84,77.28,25,0
.goto The Barrens,43.62,77.29,25,0
.goto The Barrens,43.42,77.41,15 >>前往|cRXP_FRIENDLY_Brine|r
step << Shaman
.goto The Barrens,43.42,77.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布瑞恩|r
.turnin 1536 >>交任务: |cRXP_FRIENDLY_水之召唤|r
.accept 1534 >>接任务: |cRXP_LOOT_水之召唤|r
.target Brine
step
#completewith next
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#label Gann1
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.14,75.40
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r|cRXP_WARN_道路上的南北走向|r
.accept 843 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
.maxlevel 26
step << Mage
#season 2
.train 415936,1
.train 1953,3 
.goto The Barrens,45.45,80.00
.aura 421063,1 >>|cRXP_WARN_对着墙壁上的|r|cRXP_PICK_蚀刻雕刻|r|cRXP_WARN_闪烁，得到|r|T236168:0|t[无台阶路径]|cRXP-WARN_buff|r
step << Mage
#season 2
.train 415936,1
.train 1953,3 
.goto The Barrens,45.28,80.14,5,0
.goto The Barrens,45.23,80.42,5,0
.goto The Barrens,45.06,80.57,5,0
.goto The Barrens,44.94,80.80,5,0
.goto The Barrens,44.87,81.08,5,0
.goto The Barrens,44.80,81.37
.train 415936 >>|cRXP_WARN_Cast|r|T135736:0|t[闪烁]|cRXP_WARN_一个接一个地进入绿色圆圈。最后，对着|r|cRXP_PICK_Etched Carving|r|cRXP_WARN_to train|r|T236220:0|t[活炸弹]眨眼
step
#completewith Lok
>>杀死|cRXP_ENEMY_Razormane跟踪者|r和|cRXX_ENEMY_拉佐曼探路者|r。为|T135640:0|t[|cRXD_Loot_Razarmane Backstager|r]掠夺它们
>>杀死|cRXP_ENEMY_Razormane Seers|r。为|T135139:0|t[|cRXP-Loot_Charred Razorman Wand|r]掠夺它们
>>杀死|cRXP_ENEMY_Razormane Warfrenzies|r。为|T134955:0|t[|cRXX_Loot_Razarmane War Shield |r]掠夺它们
>>|cRXP_WARN_|cRXP_ENEMY_Razomane跟踪者|r被窃取|r
.collect 5093,1,893,1 
.collect 5092,1,893,1 
.collect 5094,1,893,1 
.mob Razormane Stalker
.mob Razormane Pathfinder
.mob Razormane Seer
.mob Razormane Warfrenzy
step
#completewith next
.goto The Barrens,44.85,78.81,45,0
.goto The Barrens,44.44,78.97,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
.goto The Barrens,44.06,80.02,45,0
.goto The Barrens,43.91,80.46,45,0
.goto The Barrens,44.03,80.38,45,0
.goto The Barrens,44.16,80.46,45,0
.goto The Barrens,44.31,80.79,45,0
.goto The Barrens,44.66,80.49,45,0
.goto The Barrens,45.10,80.30,45,0
.goto The Barrens,45.52,80.47,45,0
.goto The Barrens,45.46,80.91,45,0
.goto The Barrens,44.83,80.95,45,0
.goto The Barrens,44.15,81.44,45,0
.goto The Barrens,43.79,81.40,45,0
.goto The Barrens,43.63,80.97,45,0
.goto The Barrens,43.49,80.48,45,0
.goto The Barrens,43.24,80.49,45,0
.goto The Barrens,42.82,80.23,45,0
.goto The Barrens,42.65,79.87,45,0
.goto The Barrens,43.07,78.98,45,0
.goto The Barrens,43.48,78.95,45,0
.goto The Barrens,43.66,79.12,45,0
.goto The Barrens,43.80,79.46,45,0
.goto The Barrens,44.43,78.71,45,0
.goto The Barrens,44.89,78.87,45,0
.goto The Barrens,45.12,79.20,45,0
.goto The Barrens,45.05,79.75,45,0
.goto The Barrens,44.83,79.87,45,0
.goto The Barrens,44.37,79.85
.loop 25,The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
>>杀死|cRXP_ENEMY_Kuz|r。掠夺他|cRXX_Loot_Kuz的头骨|r
>>|cRXP_ENEMY_Kuz|r稍微巡视一下
.complete 879,1 
.unitscan Kuz
step
#completewith next
.goto The Barrens,43.14,80.75,45,0
.goto The Barrens,43.35,81.16,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#label Lok
.goto The Barrens,40.31,80.70,20,0
.goto The Barrens,40.14,80.56
>>杀死|cRXP_ENEMY_Lok Orbane|r。掠夺他|cRXD_Loot_Lok的头骨|r
.complete 879,3 
.mob Lok Orcbane
step
#completewith WandShield
.goto The Barrens,44.85,78.81,45,0
.goto The Barrens,44.44,78.97,45,0
.goto The Barrens,43.14,80.75,45,0
.goto The Barrens,43.35,81.16,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#completewith NakSkull
>>杀死|cRXP_ENEMY_Razormane跟踪者|r和|cRXX_ENEMY_拉佐曼探路者|r。掠夺它们一个|T135640:0|t[|cRXD_Loot_Razarmane Backstager|r]
>>|cRXP_WARN_|cRXP_ENEMY_Razomane跟踪者|r被窃取|r
.collect 5093,1,893,1 
.mob Razormane Stalker
.mob Razormane Pathfinder
step
#label WandShield
.loop 25,The Barrens,42.57,78.81,42.12,78.48,41.49,78.69,41.22,79.72,40.91,80.60,40.55,80.84,41.62,80.92,41.54,82.28,42.48,82.28,42.57,78.81
>>杀死|cRXP_ENEMY_Razomane Seers|r。掠夺它们一个|T135139:0|t[|cRXP-Loot_Charred Razomanne Wand|r]
>>杀死|cRXP_ENEMY_Razormane Warfrenzies|r。掠夺它们一个|T134955:0|t[|cRXX_Loot_Razarmane War Shield |r]
.collect 5092,1,893,1 
.collect 5094,1,893,1 
.mob Razormane Seer
.mob Razormane Warfrenzy
step
#label NakSkull
.goto The Barrens,43.87,83.43
>>杀死|cRXP_ENEMY_Nak|r。掠夺他|cRXX_Loot_Nak的头骨|r
.complete 879,2 
.mob Nak
step
.goto The Barrens,44.09,83.70,15,0
.goto The Barrens,44.15,83.34,15,0
.goto The Barrens,44.38,83.05,15,0
.goto The Barrens,44.22,82.67,15,0
.goto The Barrens,44.10,82.38,15,0
.goto The Barrens,43.85,82.25,15,0
.goto The Barrens,43.76,80.84,40,0
.goto The Barrens,44.14,80.03,40,0
.goto The Barrens,44.17,81.02,40,0
.goto The Barrens,44.66,81.18,40,0
.goto The Barrens,45.08,80.34,40,0
.goto The Barrens,45.48,79.89,40,0
.goto The Barrens,44.09,83.70,15,0
.goto The Barrens,44.15,83.34,15,0
.goto The Barrens,44.38,83.05,15,0
.goto The Barrens,44.22,82.67,15,0
.goto The Barrens,44.10,82.38,15,0
.goto The Barrens,43.85,82.25,15,0
.goto The Barrens,43.76,80.84,40,0
.goto The Barrens,44.14,80.03,40,0
.goto The Barrens,44.17,81.02,40,0
.goto The Barrens,44.66,81.18,40,0
.goto The Barrens,45.08,80.34,40,0
.goto The Barrens,45.48,79.89
>>杀死|cRXP_ENEMY_Razormane跟踪者|r和|cRXX_ENEMY_拉佐曼探路者|r。掠夺它们一个|T135640:0|t[|cRXD_Loot_Razarmane Backstager|r]
>>|cRXP_WARN_|cRXP_ENEMY_Razomane跟踪者|r被窃取|r
.collect 5093,1,893,1 
.mob Razormane Stalker
.mob Razormane Pathfinder
step
#completewith next
>>杀死|cRXP_ENEMY_Bael-dun挖掘机|r和|cRXX_ENEMY_Bael-dun工头|r
.complete 843,1 
.complete 843,2 
.mob Bael'dun Excavator
.mob Bael'dun Foreman
.isOnQuest 843
step
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19,15,0
.goto The Barrens,47.51,85.04,15,0
.goto The Barrens,47.44,85.71,15,0
.goto The Barrens,47.94,85.68,15,0
.goto The Barrens,48.34,86.19
>>杀死|cRXP_ENEMY_Explorer Khazgorm|r。掠夺他获取|cRXD_Loot_Khazgorm的日志|r
.complete 843,3 
.mob Prospector Khazgorm
.isOnQuest 843
step
#loop
.goto The Barrens,47.22,84.98,40,0
.goto The Barrens,47.28,85.74,40,0
.goto The Barrens,47.60,85.66,40,0
.goto The Barrens,48.43,86.34,40,0
.goto The Barrens,48.03,85.46,40,0
.goto The Barrens,47.94,84.86,40,0
.goto The Barrens,47.37,84.01,40,0
.goto The Barrens,46.92,84.22,40,0
.goto The Barrens,46.99,85.82,40,0
.goto The Barrens,47.22,84.98,40,0
>>杀死|cRXP_ENEMY_Bael-dun挖掘机|r和|cRXX_ENEMY_Bael-dun工头|r
.complete 843,1 
.complete 843,2 
.mob Bael'dun Excavator
.mob Bael'dun Foreman
.isOnQuest 843
step
#completewith BaelModan
.goto The Barrens,47.21,79.35,45,0
.goto The Barrens,47.22,79.72,45,0
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r|cRXP_WARN_道路上的南北走向|r
.turnin 843 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
.accept 846 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
.isQuestComplete 843
step
#optional
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r|cRXP_WARN_道路上的南北走向|r
.accept 846 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
.isQuestTurnedIn 843
step
#label BaelModan
.goto The Barrens,48.63,84.49,110 >>前往Bael Modan
.isQuestTurnedIn 843
step
#completewith TearMoons2
>>杀死|cRXP_ENEMY_Bael'dun矮人|r。掠夺他们的|cRXP_Loot_硝酸甘油|r、|cRXD_Loot_木浆|r和|cRXP-Loot_硝酸钠|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Bael'dun军官|r|cRXP_WARN_在完成防御姿态动画后，有50%的防御几率增加8秒|r << Rogue/Warrior/Druid/Shaman
.complete 846,1 
.complete 846,2 
.complete 846,3 
.mob Bael'dun Rifleman
.mob Bael'dun Soldier
.mob Bael'dun Officer
.group 0
.isQuestTurnedIn 843
step
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
.accept 857 >>接任务: |cRXP_LOOT_众月之泪|r
.target Feegly the Exiled
.group 3
.isQuestTurnedIn 843
step
#completewith next
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.43,84.28,6 >>下到Baeldun的底层
.group
.isQuestTurnedIn 843
step
.goto The Barrens,49.13,84.25
>>打开|cRXP_PICK_General Twinbraid的Strongbox |r。为|cRXP _Loot_Tear of the Moons而掠夺它|r
>>|cRXP_WARN_小心！在|cRXP_ENEMY_General Twinbraid|r的房间里很容易过度拉伸|r
>>|cRXP_WARN_直接拉除|cRXP_ENEMY_General Twinbraid|r以外的任何暴徒|r
.complete 857,1 
.group 3
.isQuestTurnedIn 843
step
#completewith next
.goto The Barrens,49.43,84.28,8,0
.goto The Barrens,49.53,84.42,8,0
.goto The Barrens,49.38,84.48,8,0
.goto The Barrens,49.06,84.59,8,0
.goto The Barrens,49.01,84.48,8,0
.goto The Barrens,48.75,84.63,20 >>退出Baeldun的商店
.group
.isQuestTurnedIn 843
step
#label TearMoons2
.goto The Barrens,48.94,86.31
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Feegly|r
.turnin 857 >>交任务: |cRXP_FRIENDLY_众月之泪|r
.target Feegly the Exiled
.isQuestComplete 857
.group
step
#loop
.goto The Barrens,48.96,84.36,30,0
.goto The Barrens,48.88,84.02,30,0
.goto The Barrens,49.28,83.76,30,0
.goto The Barrens,49.22,84.21,30,0
.goto The Barrens,49.47,84.41,30,0
.goto The Barrens,49.09,84.67,30,0
.goto The Barrens,48.96,84.36,30,0
>>杀死|cRXP_ENEMY_Bael'dun矮人|r。掠夺他们的|cRXP_Loot_硝酸甘油|r、|cRXD_Loot_木浆|r和|cRXP-Loot_硝酸钠|r
>>|cRXP_WARN_小心|r|cRXP_ENEMY_Bael'dun军官|r|cRXP_WARN_在完成防御姿态动画后，有50%的防御几率增加8秒|r << Rogue/Warrior/Druid/Shaman
.complete 846,1 
.complete 846,2 
.complete 846,3 
.mob Bael'dun Rifleman
.mob Bael'dun Soldier
.mob Bael'dun Officer
.isQuestTurnedIn 843
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r|cRXP_WARN_道路上的南北走向|r
.turnin 846 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
.accept 849 >>接任务: |cRXP_LOOT_加恩的报复|r
.target Gann Stonespire
.isQuestTurnedIn 843
step
.goto The Barrens,46.97,85.63
>>点击平台顶部的|cRXP_PICK_Bael Modan飞行机|r
>>|cRXP_WARN_这有50码的射程|r
.complete 849,1 
.isQuestTurnedIn 843
step
#completewith WashtethePawne
>>杀死一只|cRXP_ENEMY_Thunderhawk|r。掠夺它的|cRXD_Loot_Fwing|r
.complete 913,1 
.mob Thunderhawk Hatchling
.mob Thunderhawk Cloudscraper
.mob Greater Thunderhawk
step
.line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
.goto The Barrens,46.12,81.25,40,0
.goto The Barrens,46.09,80.54,40,0
.goto The Barrens,46.16,79.66,40,0
.goto The Barrens,46.14,79.37,40,0
.goto The Barrens,46.07,79,19,40,0
.goto The Barrens,45.86,78.77,40,0
.goto The Barrens,45.79,78.47,40,0
.goto The Barrens,45.83,77.21,40,0
.goto The Barrens,45.91,76.97,40,0
.goto The Barrens,46.02,76.71,40,0
.goto The Barrens,46.08,76.33,40,0
.goto The Barrens,46.14,75.40,40,0
.goto The Barrens,46.12,81.25
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gann|r
>>|cRXP_FRIENDLY_Gann|r|cRXP_WARN_道路上的南北走向|r
.turnin 849 >>交任务: |cRXP_FRIENDLY_加恩的报复|r
.target Gann Stonespire
.isQuestTurnedIn 843
step
#label WashtethePawne
.loop 25,The Barrens,44.85,78.81,44.44,78.97,43.14,80.75,43.35,81.16,47.22,79.72,47.21,79.35,44.76,74.79,44.85,78.81
>>杀死|cRXP_ENEMY_Washte Pawne|r。掠夺他|T135992:0|t[|cRXX_Loot_Washte Pawne的羽毛|r]。使用它开始任务
.collect 5103,1,885 
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.use 5103
.unitscan Washte Pawne
step
#loop
.goto The Barrens,47.08,78.69,0
.goto The Barrens,47.45,74.53,0
.goto The Barrens,44.95,75.19,0
.waypoint The Barrens,46.81,76.47,60,0
.waypoint The Barrens,47.08,78.69,60,0
.waypoint The Barrens,46.98,79.83,60,0
.waypoint The Barrens,48.73,79.22,60,0
.waypoint The Barrens,47.45,74.53,60,0
.waypoint The Barrens,44.95,75.19,60,0
>>杀死一只|cRXP_ENEMY_Thunderhawk|r。掠夺它的|cRXD_Loot_Fwing|r
.complete 913,1 
.mob Thunderhawk Hatchling
.mob Thunderhawk Cloudscraper
.mob Greater Thunderhawk
step
.goto The Barrens,50.48,78.72,100 >>前往达斯沃洛沼泽
.zoneskip Dustwallow Marsh
step
#completewith next
.goto Dustwallow Marsh,30.65,45.34,40,0
.goto Dustwallow Marsh,32.28,42.80,40,0
.goto Dustwallow Marsh,33.12,40.85,40,0
.goto Dustwallow Marsh,33.55,38.71,40,0
.goto Dustwallow Marsh,34.73,37.66,40,0
.goto Dustwallow Marsh,34.31,34.40,40,0
.goto Dustwallow Marsh,33.30,31.23,40,0
.goto Dustwallow Marsh,34.58,30.62,40,0
.goto Dustwallow Marsh,36.64,31.72,120 >>前往Brackenwall村
>>|cRXP_WARN_小心！该地区有36-38级暴徒。为了安全起见，请遵循航路点|r
step << Warrior/Shaman
.goto Dustwallow Marsh,36.17,31.79
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Zulrg|r|cRXP_BUY_交谈。从他那里买一个|r|T135158:0|t[Big Stick]如果它用完了|r
.collect 12251,1,873,1 
.money <4.3117
.target Zulrg
.itemStat 16,QUALITY,<7
.itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step
.goto Dustwallow Marsh,36.49,30.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞巴莱|r
.vendor >>|cRXP_BUY_从她那里购买|r|T134831:0|t[治疗药剂]|cRXP_Buy_和|r|T134937:0|t[Scrolls]|cRX _ Buy_如果它们用完了|r
.target Balai Lok'Wein
step
.goto Dustwallow Marsh,36.49,30.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_赞巴莱|r
>>|cRXP_BUY_从她那里购买|r|T133735:0|t[急救手册]|cRXP_Buy_|r
.collect 16112,1,873,1 >>图谱：重丝绷带（1）
.collect 16113,1,873,1 >>图谱：Magewave绷带（1）
.collect 16084,1,873,1 >>说明书：专家急救-包扎（1）
.target Balai Lok'Wein
.skill firstaid,<1,1
step
#completewith WeaponsofChoiceTurnin
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙尔迪|r
.fp Brackenwall >>获取Brackenwall村飞行路线
.fly Camp Taurajo >>飞往陶拉霍营地
.target Shardi
.zoneskip The Barrens
.cooldown item,6948,<0
step
.goto Dustwallow Marsh,35.57,31.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_沙尔迪|r
.fp Brackenwall >>获取Brackenwall村飞行路线
.target Shardi
.zoneskip The Barrens
.cooldown item,6948,>0
step << Druid
#completewith DruidTraining33
.cast 18960 >>演员阵容|T135758:0|t[电传：Moonglade]
.zoneskip Moonglade
.cooldown item,6948,>0,1
step << Druid
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 1075 >>训练你的职业技能
.target Loganaar
.xp <24,1
.xp >26,1
.cooldown item,6948,>0,1
step << Druid
#optional
#label DruidTraining33
.goto Moonglade,52.53,40.58
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_洛甘纳尔|r
.train 1850 >>训练你的职业技能
.target Loganaar
.xp <26,1
.cooldown item,6948,>0,1
step
#completewith WeaponsofChoiceTurnin
.hs >>Hearth前往陶拉霍营地
.use 6948
.cooldown item,6948,>0
step
#label WeaponsofChoiceTurnin
.goto The Barrens,45.10,57.68
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_塔特纳克·钢炉|r
.accept 893 >>接任务: |cRXP_LOOT_野猪人的武器|r
.turnin 893 >>交任务: |cRXP_FRIENDLY_野猪人的武器|r
.target Tatternack Steelforge
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 884 >>接任务: |cRXP_LOOT_奥瓦坦卡|r
.turnin 884 >>交任务: |cRXP_FRIENDLY_奥瓦坦卡|r
.itemcount 5102,1
.target Jorn Skyseer
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 885 >>接任务: |cRXP_LOOT_瓦希塔帕恩|r
.turnin 885 >>交任务: |cRXP_FRIENDLY_瓦希塔帕恩|r
.target Jorn Skyseer
.itemcount 5103,1
step
.goto The Barrens,44.86,59.13
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.accept 897 >>接任务: |cRXP_LOOT_收割者|r
.turnin 897 >>交任务: |cRXP_FRIENDLY_收割者|r
.itemcount 5138,1
.target Jorn Skyseer
step
.goto The Barrens,44.85,59.14
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
.turnin 913 >>交任务: |cRXP_FRIENDLY_雷鹰的嘶鸣|r
.accept 874 >>接任务: |cRXP_LOOT_玛伦·星眼|r
.accept 6382 >>接任务: |cRXP_WARN_灰谷狩猎|r
.target Jorn Skyseer
step
.goto The Barrens,44.54,59.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_碎牙|r
.turnin 879 >>交任务: |cRXP_FRIENDLY_内奸|r
.accept 906 >>接任务: |cRXP_LOOT_内奸|r
.target Mangletooth
step
#completewith next
.goto The Barrens,44.45,59.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
.fly Crossroads >>飞向十字路口
.target Omusa Thunderhorn
step
.goto The Barrens,51.50,30.87
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_索克|r
.turnin 906 >>交任务: |cRXP_FRIENDLY_内奸|r
.target Thork
step
.goto The Barrens,51.07,29.63
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_科兰|r
.turnin 868 >>交任务: |cRXP_FRIENDLY_蝎卵|r
.target Korran
.isQuestComplete 868
step
#optional
.destroy 5058 >>摧毁: |cRXP_ENEMY_异种蝎卵|r
.itemcount 5058,1
step
#optional
.abandon 868 >>Abandon Egg Hunt
.isOnQuest 868
step << skip
.goto The Barrens,51.99,29.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_旅店老板伯兰德·草风|r
.home >>将您的炉石设置为十字路口
.target Innkeeper Boorand Plainswind
step << Rogue
.goto The Barrens,51.39,30.20
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈拉玛|r
.vendor >>|cRXP_BUY_库存|r|T134387:0|t[闪光粉末]|cRXP_BUY_并供应|r|T132273:0|t][即时毒药]
.target Hula'mahi
step
.goto The Barrens,51.50,30.34
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_迪弗拉克|r
.fly Ratchet >>飞到棘轮
.target Devrak
step
.goto The Barrens,65.84,43.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛伦·星眼|r
.turnin 874 >>交任务: |cRXP_FRIENDLY_玛伦·星眼|r
.accept 873 >>接任务: |cRXP_LOOT_依沙瓦克|r
.target Mahren Skyseer
step
#loop
.goto The Barrens,65.67,46.63,0
.goto The Barrens,64.74,50.35,0
.goto The Barrens,63.60,53.54,0
.waypoint The Barrens,65.77,45.28,50,0
.waypoint The Barrens,65.67,46.63,50,0
.waypoint The Barrens,64.74,50.35,50,0
.waypoint The Barrens,63.60,53.54,50,0
>>杀死|cRXP_ENEMY_Isha Awak|r。为Isha Awak的|cRXP_Loot_心脏而掠夺他|r
>>|cRXP_WARN_他在海岸边有四个不同的产卵地点|r
.complete 873,1 
.unitscan Isha Awak
step
.goto The Barrens,65.84,43.86
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_玛伦·星眼|r
.turnin 873 >>交任务: |cRXP_FRIENDLY_依沙瓦克|r
.target Mahren Skyseer
step
.goto The Barrens,63.09,37.16
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_布拉高克|r
.fly Orgrimmar >>飞往奥格瑞玛
.target Bragok
step << Warlock
.goto Orgrimmar,48.25,45.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
.trainer >>训练你的职业技能
.turnin 1512 >>交任务: |cRXP_FRIENDLY_爱的礼物|r
.accept 1513 >>接任务: |cRXP_LOOT_誓缚|r
.target Gan'rul Bloodeye
step << Warlock
#completewith next
.cast 9224 >>在召唤圈使用|T133290:0|t[多兰吊坠]
.use 6626
step << Warlock
.goto Orgrimmar,49.66,50.15
>>杀死|cRXP_ENEMY_召唤的女妖|r
.complete 1513,1 
.mob Summoned Succubus
.use 6626
step << Warlock
.goto Orgrimmar,48.25,45.27
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_甘鲁尔·血眼|r
.turnin 1513 >>交任务: |cRXP_FRIENDLY_誓缚|r
.target Gan'rul Bloodeye
step << Mage
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 2121 >>训练你的职业技能
.target Pephredo
.xp <24,1
.xp >26,1
step << Mage
#optional
.goto Orgrimmar,38.36,85.54
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Pephredo|r交谈
.train 120 >>训练你的职业技能
.target Pephredo
.xp <26,1
step << Mage
.goto Orgrimmar,38.66,85.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与小屋顶部的|r|cRXP_FRIENDLY_Thuul|r交谈
.train 3567 >>火车|T135759:0|t[电传：Orgrimar]
.target Thuul
step << Troll Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.turnin 5642 >>交任务: |cRXP_FRIENDLY_暗影守卫|r
.trainer >>训练你的职业技能
.target Ur'kyo
step << Undead Priest
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 3747 >>训练你的职业技能
.target Ur'kyo
.xp <24,1
.xp >26,1
step << Undead Priest
#optional
.goto Orgrimmar,35.59,87.80
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t与|r|cRXP_FRIENDLY_Ur'kyo|r交谈
.train 992 >>训练你的职业技能
.target Ur'kyo
.xp <26,1
step << Priest/Warlock
.goto Orgrimmar,44.16,48.45
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Katis|r|cRXP_BUY_交谈。从她那里买一个|r|T135139:0|t[Burning Wand]|r
.collect 5210,1 
.money <0.5808
.itemStat 18,QUALITY,<7
.itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
.target Katis
step << Shaman
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 905 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <24,1
.xp >26,1
step << Shaman
#optional
.goto Orgrimmar,38.82,36.41
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_卡德里斯|r
.train 943 >>训练你的职业技能
.target Kardris Dreamseeker
.xp <26,1
step << Warrior
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 5308 >>训练你的职业技能
.target Grezz Ragefist
.xp <24,1
.xp >26,1
step << Warrior
#optional
.goto Orgrimmar,79.91,31.36
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
.train 6178 >>训练你的职业技能
.target Grezz Ragefist
.xp <26,1
step << Troll Warrior/Undead Warrior/Tauren Warrior
.goto Orgrimmar,81.52,19.60
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_哈纳什|r
.train 197 >>Train Two-Handed Axes
.target Hanashi
step << Hunter
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 14262 >>训练你的职业技能
.target Ormak Grimshot
.xp <24,1
.xp >26,1
step << Hunter
#optional
.goto Orgrimmar,66.05,18.52
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_奥玛克|r
.train 3045 >>训练你的职业技能
.target Ormak Grimshot
.xp <26,1
step << Hunter
.goto Orgrimmar,66.34,14.83
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_肖祖|r
.train 24558 >>训练你的宠物法术
.target Xao'tsu
.xp <24,1
step << Hunter
.goto Orgrimmar,78.08,38.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Jin'sora交谈|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[Sharp Arrows]|cRXP_Buy_|r
.collect 2515,1800 << Hunter 
.target Jin'sora
.itemcount 2515,<1000
.xp >25,1
step << Hunter
.goto Orgrimmar,78.08,38.44
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_与|r|cRXP_FRIENDLY_Jin'sora交谈|r
>>|cRXP_BUY_从他那里购买|r|T132382:0|t[剃刀箭头]|cRXP_Buy_|r
.collect 3030,1800 << Hunter 
.target Jin'sora
.xp <25,1
.itemcount 3030,<1000
step << Shaman
#xprate >1.99
#season 2
.equip 18,206387 >>|cRXP_WARN_装备|r|T134920:0|t|cRXP_LOOT_[Kajaric图标]|r
.use 206387
.itemcount 206387,1 
.train 410095,1
step << Shaman
#xprate >1.99
#season 2
.goto Orgrimmar,52.77,48.97
.subzone 2437 >>进入阴影裂缝内的Ragefire Chasm
.itemStat 18,QUALITY,2
.train 410095,1
step << Shaman
#xprate >1.99
#season 2
>>|cRXP_WARN_拥抱墙的右侧。下坡道后（第5次暴民之后），走进右侧的浅熔岩池|r
>>|cRXP_WARN_从|r|T135805:0|t[熔岩]|cRXP_WARN_i受到的伤害减少到91，同时装备|r|T134920:0|t|cRXP-LOOT_[Kajaric图标]|r|cRXP_WARN_i|r
.aura 408828 >>|cRXP_WARN_受到|T135805:0|t[熔岩]|cRXP_WARN_source的伤害5次|r
.itemStat 18,QUALITY,2
.train 410095,1
step << Shaman
#xprate >1.99
#season 2
>>|cRXP_WARN_移出|r|T135805:0|t[熔岩]
.cast 402265 >>|cRXP_WARN_使用|r|T134920:0|t|cRXP_LOOT_[Kajaric图标]|r|cRXP_WARN_学习|r|T133816:0|t[雕刻手套-熔岩爆裂]
.use 206387
.aura -408828
.itemStat 18,QUALITY,2
.train 410095,1
step
#ah
.goto Orgrimmar,55.59,62.92
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
>>|cRXP_BUY_从拍卖行购买|r|T133021:0|t[碎纸机操作手册页面]|cRXP_Buy_（如果有）|r 
.target Auctioneer Thathung
.collect 16645,1,6504,1 
.collect 16646,1,6504,1 
.collect 16647,1,6504,1 
.collect 16648,1,6504,1 
.collect 16649,1,6504,1 
.collect 16650,1,6504,1 
.collect 16651,1,6504,1 
.collect 16652,1,6504,1 
.collect 16653,1,6504,1 
.collect 16654,1,6504,1 
.collect 16655,1,6504,1 
.collect 16656,1,6504,1 
step << Hunter
.goto Orgrimmar,45.12,63.89
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|t对话: |cRXP_FRIENDLY_多拉斯|r
.fly Splintertree Post >>飞到Splinterree Post
.target Doras
.zoneskip Thunder Bluff
step << !Hunter
#completewith next
.goto Orgrimmar,26.22,61.58,80,0
.goto Orgrimmar,15.66,63.33,30,0
.zone The Barrens >>前往: |cRXP_PICK_贫瘠之地|r
.zoneskip The Barrens
step << !Hunter
#completewith next
.goto Kalimdor,56.80,45.45,15,0
.goto Ashenvale,94.54,76.15,40,0
.goto Ashenvale,93.49,73.76,40,0
.goto Ashenvale,92.47,71.18,40,0
.goto Ashenvale,91.85,68.71,40,0
.goto Ashenvale,91.39,65.86,25 >>沿着河流向北行驶，进入阿申瓦尔
step << !Hunter
.goto Ashenvale,89.87,68.07,40,0
.goto Ashenvale,86.89,68.65,40,0
.goto Ashenvale,79.89,68.38,40,0
.goto Ashenvale,73.52,63.50,30 >>前往Splintertree Post
>>|cRXP_WARN_你可能会遇到一些29-30级的暴徒，尽可能避开他们|r
]])
