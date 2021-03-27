
#TODO drop resources?

execute as @e[tag=machine,limit=1,sort=nearest] at @s[tag=chunk_loader] run forceload remove ~ ~

kill @e[tag=machine,limit=1,sort=nearest]
fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace #mana:machinepart

scoreboard players set @s cc 0