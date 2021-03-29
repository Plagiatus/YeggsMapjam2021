scoreboard players add @a gauntlet_timer 0
scoreboard players add @a launch_timer 0
scoreboard players add @a twister_timer 0

execute as @a[scores={launch_timer=1..}] at @s run function mechanics:spells/launch/main
execute as @a[scores={cc=1,launch_timer=0}] if predicate mechanics:spells/launch at @s run function mechanics:spells/launch/init

execute as @a[scores={cc=1,twister_timer=0}] if predicate mechanics:spells/twister at @s anchored eyes run function mechanics:spells/twister/init
execute as @e[type=armor_stand,tag=spell.twister] at @s run function mechanics:spells/twister/main
execute as @e[type=armor_stand,tag=push_block] run function mechanics:spells/twister/interaction/push_block/main

execute as @a[scores={cc=1}] if predicate mechanics:spells/water at @s anchored eyes run function mechanics:spells/water/init
function mechanics:spells/water/main

execute as @a[scores={cc=1,gauntlet_timer=0}] if predicate mechanics:gauntlet at @s anchored eyes run function mechanics:gauntlet/smash/init
execute as @a[tag=gauntlet_smash] at @s run function mechanics:gauntlet/smash/main


#casting cooldown
scoreboard players remove @a[scores={twister_timer=1..}] twister_timer 1

scoreboard players reset @a cc

#Puzzle stuff:
execute as @e[type=area_effect_cloud,tag=puzzle_cam,limit=1,sort=nearest] at @s run function mechanics:spells/twister/puzzle/cutscene

# dimensions specific mechanics
execute in dim:pink run function mechanics:dimensions/pink/main
execute in dim:yellow run function mechanics:dimensions/yellow/main