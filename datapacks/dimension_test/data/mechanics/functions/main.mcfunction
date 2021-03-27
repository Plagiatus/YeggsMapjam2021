scoreboard players add @a launch_timer 0
scoreboard players add @a twister_timer 0

execute as @a[scores={launch_timer=1..}] at @s run function mechanics:spells/launch/main
execute as @a[scores={cc=1,launch_timer=0}] if predicate mechanics:spells/launch at @s run function mechanics:spells/launch/init

execute as @a[scores={cc=1,twister_timer=0}] if predicate mechanics:spells/twister at @s anchored eyes run function mechanics:spells/twister/init
execute as @e[type=armor_stand,tag=spell.twister] at @s run function mechanics:spells/twister/main
execute as @e[type=armor_stand,tag=push_block] run function mechanics:spells/twister/interaction/push_block/main

execute as @a[scores={cc=1}] if predicate mechanics:spells/water at @s anchored eyes run function mechanics:spells/water/init
function mechanics:spells/water/main

#casting cooldown
scoreboard players remove @a[scores={twister_timer=1..}] twister_timer 1

scoreboard players reset @a cc