scoreboard players add @s timer 1
gamemode spectator @a[distance=..50]
execute at @a[gamemode=spectator] run spectate @s @p

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