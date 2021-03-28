# titles
title @s times 10 50 10

title @s[nbt={Dimension:"dim:pink"}] subtitle [{"text":"Where pigs fly","color":"#fc7972"}]
title @s[nbt={Dimension:"dim:pink"}] title [{"text":"Pink Dimension","color":"#ff908a"}]

# other fixes
gamemode adventure @s[nbt={Dimension:"minecraft:overworld"}] 

execute as @s[nbt={Dimension:"dim:pink"}] at @s as @e[tag=makePig] at @s run data merge entity @s {DeathLootTable:"minecraft:empty"}
execute as @s[nbt={Dimension:"dim:pink"}] at @s as @e[tag=makePig] at @s run kill @s[y=250,dy=10]
gamemode survival @s[nbt={Dimension:"dim:pink"}]