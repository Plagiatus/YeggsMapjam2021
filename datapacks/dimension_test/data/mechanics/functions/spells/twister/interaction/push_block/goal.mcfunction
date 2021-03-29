playsound minecraft:block.beacon.power_select master @a
setblock ~ ~-1 ~ air

execute if score @s const matches 1 run function mechanics:spells/twister/puzzle/1/solved
execute if score @s const matches 2 run function mechanics:spells/twister/puzzle/2/solved
execute if score @s const matches 3 run function mechanics:spells/twister/puzzle/3/solved
execute if score @s const matches 4 run function mechanics:spells/twister/puzzle/4/solved
execute if score @s const matches 5 run function mechanics:spells/twister/puzzle/5/solved
execute if score @s const matches 6 run function mechanics:spells/twister/puzzle/6/solved
execute if score @s const matches 7 run function mechanics:spells/twister/puzzle/7/solved
execute if score @s const matches 8 run function mechanics:spells/twister/puzzle/8/solved
execute if score @s const matches 9 run function mechanics:spells/twister/puzzle/9/solved
execute if score @s const matches 10 run function mechanics:spells/twister/puzzle/lobby/solved
