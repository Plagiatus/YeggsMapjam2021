replaceitem entity @e[type=armor_stand,limit=1,sort=nearest,tag=cloud_sheep,distance=..1] armor.head air
data merge entity @s {Sheared:0b}
effect clear @s invisibility
scoreboard players reset @s timer