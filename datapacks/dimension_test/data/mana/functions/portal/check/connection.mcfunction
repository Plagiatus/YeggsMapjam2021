# origin
scoreboard players operation #id portal_id = @s portal_id

# destination
execute if entity @s[tag=connected] as @e[tag=portal,tag=destination] if score @s portal_id = #id portal_id run tag @s add connected
execute if entity @s[tag=!connected] as @e[tag=portal,tag=destination] if score @s portal_id = #id portal_id run tag @s remove connected
