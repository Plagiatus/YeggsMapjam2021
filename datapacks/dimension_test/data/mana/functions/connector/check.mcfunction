tag @s add connected
tag @s remove newConnected
tag @e[tag=machine,distance=..20,tag=!connected] add newConnected
execute as @e[tag=newConnected,tag=connector,limit=1] at @s run function mana:connector/check