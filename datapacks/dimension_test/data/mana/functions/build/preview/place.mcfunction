title @s actionbar [{"text":""}]

# remove close placers
execute positioned ~-2 ~-2 ~-2 run kill @e[tag=preview,dx=4,dy=4,dz=4]

# TODO use proper blocks
execute if score @s build matches 1 unless entity @e[tag=preview,dx=0,dy=0,dz=0] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["preview"],ArmorItems:[{},{},{},{id:"stone",Count:1b}]}
execute if score @s build matches 2 unless entity @e[tag=preview,dx=0,dy=0,dz=0] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["preview"],ArmorItems:[{},{},{},{id:"andesite",Count:1b}]}