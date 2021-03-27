# check status

execute as @a if predicate mana:building_tool run tag @s add building

execute as @a[tag=building,scores={build=..0}] at @s run function mana:build/selector
execute as @a[tag=building,scores={build=1..}] at @s run function mana:build/preview/main
execute as @a[tag=building,scores={build=1..,cc=1..}] at @s run function mana:build/build
scoreboard players set @a[tag=!building] build 0
execute at @a[tag=!building,tag=build_selection] run tp @e[tag=build_preview,type=chest_minecart,limit=1,sort=nearest] ~ -100 ~
tag @a[tag=!building] remove build_selection

tag @a remove building

scoreboard players add @e[tag=preview] cooldown 1
execute as @e[tag=preview,scores={cooldown=5..}] run function mana:build/remove_preview