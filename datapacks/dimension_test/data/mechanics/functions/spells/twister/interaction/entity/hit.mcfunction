function mechanics:spells/twister/kill
tag @e[distance=..1,limit=1,sort=nearest] add tmp
execute at @s run function mechanics:spells/twister/interaction/entity/calc_forward
tag @e[distance=..1,limit=1,sort=nearest] remove tmp
