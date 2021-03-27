scoreboard players remove @s tmp 1

execute unless block ~ ~ ~ air positioned ^ ^ ^-.1 if block ~ ~-1 ~ #mana:placeable if score @s tmp matches 1.. run function mana:build/preview/place
execute unless block ~ ~ ~ air positioned ^ ^ ^-.1 unless block ~ ~-1 ~ #mana:placeable run title @s actionbar [{"color":"red", "text":"Cannot place that there."}]
execute if block ~ ~ ~ air positioned ^ ^ ^.1 if score @s tmp matches 1.. run function mana:build/preview/raycast
execute if score @s tmp matches 0 run title @s actionbar [{"color":"red", "text":"Too far away."}]