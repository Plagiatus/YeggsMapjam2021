summon area_effect_cloud 0 255 0 {Tags:["newPig"],Duration:2}

execute as @e[tag=newPig] store result entity @s Pos[0] double 0.0000000149 run data get entity @s UUID[0]
execute as @e[tag=newPig] store result entity @s Pos[2] double 0.0000000149 run data get entity @s UUID[1]
schedule function mechanics:dimensions/pink/make_pig_delay 1t
scoreboard players set #pigtimer cooldown 5