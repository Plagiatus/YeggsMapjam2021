execute positioned ~ ~ ~0.5 if entity @s[distance=..0.49] run scoreboard players set @s value 1
execute positioned ~ ~ ~-0.5 if entity @s[distance=..0.49] run scoreboard players set @s value 2
execute positioned ~0.5 ~ ~ if entity @s[distance=..0.49] run scoreboard players set @s value 3
execute positioned ~-0.5 ~ ~ if entity @s[distance=..0.49] run scoreboard players set @s value 4

execute if score @s value matches 1.. run kill @e[distance=..0.1,limit=1,sort=nearest]
