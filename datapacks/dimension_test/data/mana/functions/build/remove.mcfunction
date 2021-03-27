
#TODO drop resources?

execute as @e[tag=machine,limit=1,sort=nearest] at @s[tag=chunk_loader] run forceload remove ~ ~
execute as @e[tag=machine,limit=1,sort=nearest] at @s[tag=mana_storage] run kill @e[tag=mana_storage_display,limit=1,sort=nearest,distance=..1.5]

kill @e[tag=machine,limit=1,sort=nearest]
fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace #mana:machinepart

scoreboard players set @s cc 0