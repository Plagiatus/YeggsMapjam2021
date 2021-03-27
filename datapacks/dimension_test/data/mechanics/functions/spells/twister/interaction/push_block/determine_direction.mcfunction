execute positioned ~ ~ ~0.5 if entity @s[distance=..0.49] run scoreboard players set @s value 1
execute positioned ~ ~ ~-0.5 if entity @s[distance=..0.49] run scoreboard players set @s value 2
execute positioned ~0.5 ~ ~ if entity @s[distance=..0.49] run scoreboard players set @s value 3
execute positioned ~-0.5 ~ ~ if entity @s[distance=..0.49] run scoreboard players set @s value 4

execute if score @s value matches 1 run tellraw @a[tag=debug] {"text":"South"}
execute if score @s value matches 2 run tellraw @a[tag=debug] {"text":"North"}
execute if score @s value matches 3 run tellraw @a[tag=debug] {"text":"East"}
execute if score @s value matches 4 run tellraw @a[tag=debug] {"text":"West"}

execute if score @s value matches 1.. run tag @s add move
execute positioned ~ ~0.25 ~ as @e[distance=..0.1,limit=1,sort=nearest,tag=spell.twister] run function mechanics:spells/twister/kill
