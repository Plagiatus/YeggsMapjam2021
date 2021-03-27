# not very multiplayer friendly

# TODO use actual blocks & create entities
execute if score @s build matches 1 at @e[tag=preview,limit=1,sort=nearest] run setblock ~ ~ ~ stone
execute if score @s build matches 2 at @e[tag=preview,limit=1,sort=nearest] run setblock ~ ~ ~ andesite


kill @e[tag=preview,limit=1,sort=nearest]
scoreboard players set @s build 0
scoreboard players set @s cc 0