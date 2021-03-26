scoreboard players reset @s cc
scoreboard players operation @s twister_timer = #settings twister_timer

#Summon twister
summon armor_stand ^ ^-0.25 ^0.25 {Small:1b,Invisible:1b,Marker:1b,Tags:["spell.twister","tmp"],CustomName:'{"text":"V"}',CustomNameVisible:1}
tp @e[type=armor_stand,limit=1,sort=nearest,tag=tmp] ^ ^-0.25 ^0.25 ~ ~
tag @e[type=armor_stand,limit=1,sort=nearest,tag=tmp] remove tmp
playsound minecraft:entity.villager.work_librarian player @a ^ ^ ^ 1 2