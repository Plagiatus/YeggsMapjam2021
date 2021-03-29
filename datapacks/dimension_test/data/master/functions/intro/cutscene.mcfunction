scoreboard players add @s timer 1
gamemode spectator @a
execute at @a run spectate @s @p

#Part 1: exploding:

execute if score @s timer matches 20 run particle flash -2 92 2001 0 0 0 2 1 force
execute if score @s timer matches 60 run particle flash -2 92 2001 0 0 0 2 2 force
execute if score @s timer matches 80 run particle flash -2 92 2001 0.25 0.25 0.25 2 2 force
execute if score @s timer matches 90 run particle flash -2 92 2001 0.75 0.75 0.75 2 5 force
execute if score @s timer matches 95 run particle flash -2 92 2001 2 2 2 2 10 force
execute if score @s timer matches 98 run particle flash -2 92 2001 3 3 3 2 20 force
execute if score @s timer matches 100 run particle flash -2 92 2001 0 0 0 2 10 force
execute if score @s timer matches 100 run summon tnt -2 92 1998 {Fuse:0}

execute if score @s timer matches 110 run summon falling_block -2 96 1998 {Time:-20,BlockState:{Name:"minecraft:light_blue_stained_glass"},Motion:[-0.5d,3.0,0.0d]}
execute if score @s timer matches 113 run summon falling_block -1 96 1998 {Time:-20,BlockState:{Name:"minecraft:light_blue_stained_glass"},Motion:[0.5d,1.0,-0.75d]}
execute if score @s timer matches 116 run summon falling_block -2 96 1999 {Time:-20,BlockState:{Name:"minecraft:light_blue_stained_glass"},Motion:[-0.25d,2.0,0.25d]}
execute if score @s timer matches 119 run summon falling_block -2 96 1997 {Time:-20,BlockState:{Name:"minecraft:light_blue_stained_glass"},Motion:[3.0d,0.5,0.0d]}


#Part 2: landing:
execute if score @s timer matches 120 run summon sheep -110.9 87 2011.2 {Color:4b,Rotation:[141.5f,19.8f],Tags:["intro_mob"]}
execute if score @s timer matches 150 run tp @s -103.864 89.494 2006.628
execute if score @s timer matches 155 run playsound entity.sheep.ambient neutral @a -110.9 87 2011.2 3
execute if score @s timer matches 155..159 as @e[type=sheep,tag=intro_mob,x=-110,y=87,z=211] at @s run tp @s ~ ~ ~ ~5 ~
execute if score @s timer matches 170 run summon falling_block -106 112 2022 {Time:-20,BlockState:{Name:"minecraft:light_blue_stained_glass"},Motion:[-0.5d,-3.0,-1.0d]}
execute if score @s timer matches 175..179 as @e[type=sheep,tag=intro_mob,x=-110,y=87,z=211] run data merge entity @s {Motion:[-0.25d,0.5d,-0.5d]}
execute if score @s timer matches 175..179 as @e[type=sheep,tag=intro_mob,x=-110,y=87,z=211] at @s run tp @s ~ ~ ~ ~20 ~

