# check connections

tag @e[tag=machine] remove connected
execute at @e[tag=mana_generator] run tag @e[tag=machine,distance=..10] add newConnected
execute as @e[tag=newConnected,tag=connector,limit=1] at @s run function mana:connector/check

tag @e[tag=newConnected,tag=!connector] add connected
tag @e[tag=newConnected] remove newConnected

execute at @e[tag=machine,tag=!connected,tag=!portal] run particle barrier ~ ~2 ~

# chunk loaders
execute at @e[tag=chunk_loader,tag=!connected] run forceload remove ~ ~
execute at @e[tag=chunk_loader,tag=connected] run forceload add ~ ~ ~ ~