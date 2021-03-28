scoreboard players remove @s tmp 1

execute as @e[tag=machine,tag=!portal,tag=!connector,distance=..1.5,limit=1,sort=nearest] at @s run function mana:build/preview/upgrade

execute if entity @e[tag=portal,distance=..1.5] run title @s actionbar [{"color":"red", "text":"Cannot upgrade portals"}]
execute if entity @e[tag=connector,distance=..1.5] run title @s actionbar [{"color":"red", "text":"Cannot upgrade connectors"}]
execute unless entity @e[tag=machine,distance=..1.5] run title @s actionbar [{"color":"red", "text":"Nothing to upgrade."}]

execute if score @s tmp matches 1.. unless entity @e[tag=machine,distance=..1.5] positioned ^ ^ ^.1 run function mana:build/preview/raycast_upgrade

# execute if score @s tmp matches 0 run title @s actionbar [{"color":"red", "text":"."}]