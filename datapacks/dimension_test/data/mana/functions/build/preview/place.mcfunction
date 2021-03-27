title @s actionbar [{"text":""}]

# remove close placers
execute positioned ~-2 ~-2 ~-2 run kill @e[tag=preview,dx=4,dy=4,dz=4]

# TODO use proper blocks
execute if score @s build matches 1 unless entity @e[tag=preview,dx=0,dy=0,dz=0] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["preview"],ArmorItems:[{},{},{},{id:"white_stained_glass_pane",Count:1b,tag:{CustomModelData:4}}]}
execute if score @s build matches 2 unless entity @e[tag=preview,dx=0,dy=0,dz=0] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["preview"],ArmorItems:[{},{},{},{id:"white_stained_glass_pane",Count:1b,tag:{CustomModelData:3}}]}
execute if score @s build matches 3 unless entity @e[tag=preview,dx=0,dy=0,dz=0] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["preview"],ArmorItems:[{},{},{},{id:"white_stained_glass_pane",Count:1b,tag:{CustomModelData:2}}]}
execute if score @s build matches 4 unless entity @e[tag=preview,dx=0,dy=0,dz=0] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["preview"],ArmorItems:[{},{},{},{id:"white_stained_glass_pane",Count:1b,tag:{CustomModelData:5}}]}
execute if score @s build matches 5 unless entity @e[tag=preview,dx=0,dy=0,dz=0] align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {NoBasePlate:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Tags:["preview"],ArmorItems:[{},{},{},{id:"white_stained_glass_pane",Count:1b,tag:{CustomModelData:1}}]}


# for message
tag @s add can_place