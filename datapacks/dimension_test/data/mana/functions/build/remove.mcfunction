
#TODO drop resources?

execute as @e[tag=machine,limit=1,sort=nearest] at @s[tag=chunk_loader] run forceload remove ~ ~
execute as @e[tag=machine,limit=1,sort=nearest] at @s[tag=mana_storage] run kill @e[tag=mana_storage_display,limit=1,sort=nearest,distance=..1.5]

execute at @e[tag=machine,tag=connector,limit=1,sort=nearest] run setblock ~ ~1 ~ air
execute at @e[tag=machine,limit=1,sort=nearest] run setblock ~ ~-1 ~ purpur_block
kill @e[tag=machine,limit=1,sort=nearest]
kill @e[tag=machine_display,limit=1,sort=nearest]
fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace #mana:machinepart

scoreboard players set @s cc 0