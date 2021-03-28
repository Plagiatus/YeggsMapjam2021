scoreboard players add @s[scores={portal_cd=0..}] portal_cd 1

# particles, sounds, etc
execute if score @s portal_cd matches 1 at @e[tag=portal,limit=1,sort=nearest] run particle minecraft:portal ~ ~1 ~ 0.5 0.3 0.5 0.5 200
execute if score @s portal_cd matches 1 at @e[tag=portal,limit=1,sort=nearest] run playsound block.beacon.activate voice @s

execute if score @s portal_cd matches 40.. run function mana:portal/teleport