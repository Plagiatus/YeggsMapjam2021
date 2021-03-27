scoreboard players remove @s tmp 1

execute at @e[tag=machine,distance=..1.5,limit=1,sort=nearest] run function mana:build/preview/removal

execute unless entity @e[tag=machine,distance=..1.5] run title @s actionbar [{"color":"red", "text":"Nothing to remove."}]

execute if score @s tmp matches 1.. unless entity @e[tag=machine,distance=..1.5] positioned ^ ^ ^.1 run function mana:build/preview/raycast_deconstruct

# execute if score @s tmp matches 0 run title @s actionbar [{"color":"red", "text":"."}]