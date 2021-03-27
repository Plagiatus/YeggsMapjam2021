tag @e[tag=mana_storage_display,limit=1,sort=nearest,distance=..1.5] add to_move

# tp @e[tag=to_move] @s
execute store result score #y tmp run data get entity @s Pos[1] 100
scoreboard players remove #y tmp 100
scoreboard players operation #y tmp += #percent mana
execute store result entity @e[tag=to_move,limit=1] Pos[1] double 0.01 run scoreboard players get #y tmp

tag @e[tag=to_move] remove to_move