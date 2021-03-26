execute store result score @s tmp run data get entity @s Item.Count

# blacklist
tag @s[tag=!blacklist,nbt={Item:{id:"minecraft:iron_axe"}}] add blacklist

# multipliers




# tally up
scoreboard players operation #current mana += @s[tag=!blacklist] tmp
execute if entity @s[tag=!blacklist] run particle minecraft:witch ~ ~ ~ 0.1 0.1 0.1 1 5 force
kill @s[tag=!blacklist]

# boing
data merge entity @s[tag=blacklist] {Motion:[0.0d,0.5d,0.0d]}
execute store result entity @s Motion[0] double 0.000000000046566129 run data get entity @s UUID[0]
execute store result entity @s Motion[2] double 0.000000000046566129 run data get entity @s UUID[1]
execute if entity @s[tag=blacklist] run playsound entity.shulker.ambient voice @a ~ ~ ~ 1 0.5