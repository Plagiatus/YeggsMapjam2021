# general
title @s times 10 50 10
effect clear @s

## pink
title @s[nbt={Dimension:"dim:pink"}] subtitle [{"text":"Where pigs fly","color":"#fc7972"}]
title @s[nbt={Dimension:"dim:pink"}] title [{"text":"Pink Dimension","color":"#ff908a"}]

## gray
title @s[nbt={Dimension:"dim:gray"}] subtitle [{"text":"A dwarfs kingdom","color":"#525252"}]
title @s[nbt={Dimension:"dim:gray"}] title [{"text":"Gray Dimension","color":"#363536"}]

## green
title @s[nbt={Dimension:"dim:green"}] subtitle [{"text":"The infinite forest","color":"#13ed1a"}]
title @s[nbt={Dimension:"dim:green"}] title [{"text":"Green Dimension","color":"#0bdb12"}]

## blue
title @s[nbt={Dimension:"dim:blue"}] subtitle [{"text":"Gravity? ¿ʎʇᴉʌɐɹפ","color":"#51fcc3"}]
title @s[nbt={Dimension:"dim:blue"}] title [{"text":"Blue Dimension","color":"#00ffaa"}]

## yellow
title @s[nbt={Dimension:"dim:yellow"}] subtitle [{"text":"Sheep Clouds. Literally.","color":"#eefa46"}]
title @s[nbt={Dimension:"dim:yellow"}] title [{"text":"Yellow Dimension","color":"#f0ff17"}]

## hub
title @s[nbt={Dimension:"minecraft:overworld"}] subtitle [{"text":"Welcome back","color":"#fc7972"}]
title @s[nbt={Dimension:"minecraft:overworld"}] title [{"text":"Home","color":"#ff908a"}]

# other fixes
gamemode adventure @s[nbt={Dimension:"minecraft:overworld"}] 

## pink
execute as @s[nbt={Dimension:"dim:pink"}] at @s as @e[tag=makePig] at @s run data merge entity @s {DeathLootTable:"minecraft:empty"}
execute as @s[nbt={Dimension:"dim:pink"}] at @s as @e[tag=makePig] at @s run kill @s[y=250,dy=10]
gamemode survival @s[nbt={Dimension:"dim:pink"}]

## gray
gamemode survival @s[nbt={Dimension:"dim:gray"}]

## green
gamemode survival @s[nbt={Dimension:"dim:green"}]