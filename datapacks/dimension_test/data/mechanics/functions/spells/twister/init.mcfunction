scoreboard players reset @s cc
playsound minecraft:entity.villager.work_librarian master @a ~ ~ ~ 1 2
summon armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Marker:1b,Tags:["spell.twister","tmp"],CustomName:'{"text":"V"}',CustomNameVisible:1}
tp @e[type=armor_stand,tag=tmp,distance=..0.1,limit=1,sort=nearest,tag=tmp] @s
tag @e[distance=..0.1,tag=tmp,limit=1,sort=nearest] remove tmp