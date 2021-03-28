# to connect two portals (use the portal/new function to make them), give them the same, unique portal_id score
# give the one on the main island the "origin" tag, the one far away the "destination" tag
# set the mana and the cooldown score in the mana:values function for the correct portal_id, to take effect on the mana consumption


execute as @e[tag=portal,tag=origin] run function mana:portal/check/connection
execute if score #burnout cooldown matches 1.. run tag @e[tag=portal] remove connected

execute as @e[tag=portal,tag=connected] at @s unless data entity @s ArmorItems[{id:"minecraft:warped_fungus"}] run replaceitem entity @s armor.head warped_fungus
execute as @e[tag=portal,tag=!connected] at @s unless data entity @s ArmorItems[{id:"minecraft:crimson_fungus"}] run replaceitem entity @s armor.head crimson_fungus

# teleport
tag @e remove in_portal
execute at @e[tag=portal,tag=connected] run tag @e[type=!#mana:nonteleportable,distance=..1] add in_portal
execute as @e[tag=in_portal,tag=!tp_cd] at @s run function mana:portal/check/teleportation
execute as @e[tag=!in_portal,type=!#mana:nonteleportable] run scoreboard players set @s portal_cd 0
execute as @e[tag=!in_portal,type=!#mana:nonteleportable,tag=tp_cd] run tag @s remove tp_cd