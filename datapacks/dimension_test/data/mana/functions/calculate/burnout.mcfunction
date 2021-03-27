scoreboard players set #burnout cooldown 100 
execute at @e[tag=machine] run particle minecraft:explosion ~ ~ ~ 1 1 1 5 0
execute at @e[tag=machine] run playsound entity.generic.explode voice @a
scoreboard players set #current mana 0

title @a subtitle [{"text": "You've ran out of mana!", "color": "red"}]
title @a times 10 80 10
title @a title [{"text": "ALERT!", "color": "red"}]