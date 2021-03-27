scoreboard players remove @s tmp 1

execute unless block ~ ~ ~ air positioned ^ ^ ^-.1 if block ~ ~-1 ~ #mana:placeable if score @s tmp matches 1.. if score @s build matches 1 align xyz positioned ~0.5 ~ ~0.5 positioned ~-1 ~-1 ~-1 unless entity @e[tag=machine,dx=2,dy=2,dz=2] positioned ~1 ~1 ~1 run function mana:build/preview/place
execute unless block ~ ~ ~ air positioned ^ ^ ^-.1 if block ~ ~-1 ~ #mana:placeable if score @s tmp matches 1.. if score @s build matches 2.. align xyz positioned ~0.5 ~ ~0.5 positioned ~-2 ~-2 ~-2 unless entity @e[tag=machine,dx=4,dy=4,dz=4] positioned ~2 ~2 ~2 run function mana:build/preview/place

execute unless block ~ ~ ~ air positioned ^ ^ ^-.1 if block ~ ~-1 ~ #mana:placeable if score @s tmp matches 1.. if score @s build matches 1 align xyz positioned ~0.5 ~ ~0.5 positioned ~-1 ~-1 ~-1 if entity @e[tag=machine,dx=2,dy=2,dz=2] run title @s actionbar [{"color":"red", "text":"Too close to existing machine."}]
execute unless block ~ ~ ~ air positioned ^ ^ ^-.1 if block ~ ~-1 ~ #mana:placeable if score @s tmp matches 1.. if score @s build matches 2.. align xyz positioned ~0.5 ~ ~0.5 positioned ~-2 ~-2 ~-2 if entity @e[tag=machine,dx=4,dy=4,dz=4] run title @s actionbar [{"color":"red", "text":"Too close to existing machine."}]

execute unless block ~ ~ ~ air positioned ^ ^ ^-.1 unless block ~ ~-1 ~ #mana:placeable run title @s actionbar [{"color":"red", "text":"Cannot place that there."}]

execute if block ~ ~ ~ air positioned ^ ^ ^.1 if score @s tmp matches 1.. run function mana:build/preview/raycast

execute if score @s tmp matches 0 run title @s actionbar [{"color":"red", "text":"Too far away."}]