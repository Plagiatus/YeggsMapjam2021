scoreboard players add @s extr_timer 1

execute if entity @s[scores={extr_timer=1}] run data merge entity @s {NoAI:1b,DeathLootTable:"minecraft:empty"}
execute if entity @s[scores={extr_timer=1..}] run tp @s ~ ~.02 ~ facing entity @e[tag=extractor,limit=1,sort=nearest]

execute if entity @s[scores={extr_timer=1..}] run particle witch ~ ~ ~ 0.25 0 0.25 0 1


execute if score @s extr_timer >= @e[tag=extractor,limit=1,sort=nearest] extr_timer run kill @s
execute if score @s extr_timer >= @e[tag=extractor,limit=1,sort=nearest] extr_timer run data merge entity @s {DeathTime:19}
execute if score @s extr_timer >= @e[tag=extractor,limit=1,sort=nearest] extr_timer run particle witch ~ ~.5 ~ 0.25 0.25 0.25 1 25