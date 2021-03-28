# to connect two portals (use the portal/new function to make them), give them the same, unique portal_id score
# give the one on the main island the "origin" tag, the one far away the "destination" tag
# set the mana and the cooldown score in the mana:values function for the correct portal_id, to take effect on the mana consumption


execute as @e[tag=portal,tag=origin] run function mana:portal/check/connection
execute if score #burnout cooldown matches 1.. run tag @e[tag=portal] remove connected

execute as @e[tag=portal,tag=connected] at @s unless block ~ ~ ~ warped_fungus run setblock ~ ~ ~ warped_fungus
execute as @e[tag=portal,tag=!connected] at @s unless block ~ ~ ~ crimson_fungus run setblock ~ ~ ~ crimson_fungus

# teleport
execute as @a at @s if entity @e[tag=portal,tag=connected,distance=..1] run function mana:portal/check/teleportation
execute as @a at @s unless entity @e[tag=portal,tag=connected,distance=..1] run scoreboard players set @s portal_cd 0