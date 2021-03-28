scoreboard players set @s portal_cd -1


tag @s add tpme
tag @e[tag=portal,limit=1,sort=nearest] add tp_origin

execute as @e[tag=tp_origin] run scoreboard players operation #id portal_id = @s portal_id 
execute as @e[tag=portal,tag=!tp_origin] if score @s portal_id = #id portal_id run tag @s add tp_destination
execute at @e[tag=tp_destination,limit=1] run tp @s ~ ~ ~

#TODO fallback for when no destination can be found
# execute unless entity @e[tag=tp_destination,limit=1]

tag @s remove tpme
tag @e[tag=tp_origin] remove tp_origin
tag @e[tag=tp_destination] remove tp_destination



execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0.3 0 1 100
execute at @s run playsound block.beacon.activate voice @a