playsound minecraft:block.beacon.power_select master @a
setblock ~ ~-1 ~ air

execute if score @s const matches 1 run tp @e[type=armor_stand,tag=push_block,scores={const=1},distance=0.1..] ~ ~-200 ~
execute if score @s const matches 2 run tp @e[type=armor_stand,tag=push_block,scores={const=2},distance=0.1..] ~ ~-200 ~
execute if score @s const matches 3 run tp @e[type=armor_stand,tag=push_block,scores={const=3},distance=0.1..] ~ ~-200 ~
execute if score @s const matches 4 run tp @e[type=armor_stand,tag=push_block,scores={const=4},distance=0.1..] ~ ~-200 ~
execute if score @s const matches 5 run tp @e[type=armor_stand,tag=push_block,scores={const=5},distance=0.1..] ~ ~-200 ~
execute if score @s const matches 6 run tp @e[type=armor_stand,tag=push_block,scores={const=6},distance=0.1..] ~ ~-200 ~
execute if score @s const matches 7 run tp @e[type=armor_stand,tag=push_block,scores={const=7},distance=0.1..] ~ ~-200 ~
execute if score @s const matches 8 run tp @e[type=armor_stand,tag=push_block,scores={const=8},distance=0.1..] ~ ~-200 ~
execute if score @s const matches 9 run tp @e[type=armor_stand,tag=push_block,scores={const=9},distance=0.1..] ~ ~-200 ~
execute if score @s const matches 10 run tp @e[type=armor_stand,tag=push_block,scores={const=10},distance=0.1..] ~ ~-200 ~