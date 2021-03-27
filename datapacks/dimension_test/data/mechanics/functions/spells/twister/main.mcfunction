#detect pushable block
execute positioned ~ ~-0.25 ~ as @e[distance=..0.75,type=armor_stand,tag=push_block,tag=!move,tag=!move_up,tag=!move_down,limit=1,sort=nearest] run function mechanics:spells/twister/interaction/push_block/determine_direction
execute positioned ~ ~-0.25 ~ if entity @e[distance=..0.75,type=armor_stand,tag=push_block,limit=1] run function mechanics:spells/twister/kill

execute positioned ~ ~-0.25 ~ at @e[distance=..0.75,type=!armor_stand,type=!player,limit=1,sort=nearest] run function mechanics:spells/twister/interaction/entity/hit

#Sound
scoreboard players add @s timer 1
execute if score @s timer matches 1 run stopsound @a * minecraft:item.elytra.flying
execute if score @s timer matches 1 run playsound minecraft:item.elytra.flying player @a[distance=..50] ~ ~ ~ 0.25 1.5 0.25

execute if score @s timer matches 1 run scoreboard players set @s timer 11

execute if score @s timer matches 11 run data merge entity @s {CustomName:'["",{"text":"\\uE100\\uF001\\uE100"}]'}
execute if score @s timer matches 13 run data merge entity @s {CustomName:'["",{"text":"\\uE100\\uF002\\uE100"}]'}
execute if score @s timer matches 15 run data merge entity @s {CustomName:'["",{"text":"\\uE100\\uF003\\uE100"}]'}
execute if score @s timer matches 17 run data merge entity @s {CustomName:'["",{"text":"\\uE100\\uF004\\uE100"}]'}
#execute if score @s timer matches 19 run data merge entity @s {CustomName:'["",{"text":"\\uE100\\uF005\\uE100"}]'}

execute if score @s timer matches 17.. run scoreboard players set @s timer 10


#move block unless wall
execute if block ^ ^0.25 ^0.5 #mechanics:twister run tp @s ^ ^ ^0.25
execute unless block ^ ^0.25 ^0.5 #mechanics:twister run function mechanics:spells/twister/kill

#Kill twister after 20 blocks
scoreboard players add @s value 1
execute if score @s value matches 80 run function mechanics:spells/twister/kill

