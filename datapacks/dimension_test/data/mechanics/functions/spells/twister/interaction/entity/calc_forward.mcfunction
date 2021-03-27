execute positioned 0.0 0.5 0.0 run summon area_effect_cloud ^ ^0.5 ^1.5 {Tags:["direction"]}
data modify entity @e[tag=tmp,limit=1] Motion set from entity @e[type=area_effect_cloud,tag=direction,limit=1] Pos
kill @e[tag=direction]