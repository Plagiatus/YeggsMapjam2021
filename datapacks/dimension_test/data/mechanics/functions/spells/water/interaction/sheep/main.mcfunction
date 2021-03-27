scoreboard players add @s timer 1

execute if score @s timer matches 5 run replaceitem entity @e[type=armor_stand,limit=1,sort=nearest,tag=cloud_sheep,distance=..1] armor.head leather_horse_armor{CustomModelData:1,display:{color:16775936}}
execute if score @s timer matches 5 run function mechanics:spells/water/interaction/sheep/ambient
execute if score @s timer matches 20 run replaceitem entity @e[type=armor_stand,limit=1,sort=nearest,tag=cloud_sheep,distance=..1] armor.head leather_horse_armor{CustomModelData:2,display:{color:16775936}}
execute if score @s timer matches 20 run function mechanics:spells/water/interaction/sheep/ambient
execute if score @s timer matches 45 run replaceitem entity @e[type=armor_stand,limit=1,sort=nearest,tag=cloud_sheep,distance=..1] armor.head leather_horse_armor{CustomModelData:3,display:{color:16775936}}
execute if score @s timer matches 45 run function mechanics:spells/water/interaction/sheep/ambient

execute if score @s timer matches 75 run function mechanics:spells/water/interaction/sheep/inflated

execute if score @s timer matches 100 run function mechanics:spells/water/interaction/sheep/ambient
execute if score @s timer matches 200 run function mechanics:spells/water/interaction/sheep/ambient
execute if score @s timer matches 300 run function mechanics:spells/water/interaction/sheep/ambient
execute if score @s timer matches 400 run function mechanics:spells/water/interaction/sheep/ambient
execute if score @s timer matches 500 run function mechanics:spells/water/interaction/sheep/ambient

execute if score @s timer matches 45.. run execute positioned ~-2 ~-1 ~-2 run effect give @a[dx=3,dy=2,dz=3] levitation 1 20 true


execute if score @s timer matches 500 run function mechanics:spells/water/interaction/sheep/deflate
execute if score @s timer matches 510 run replaceitem entity @e[type=armor_stand,limit=1,sort=nearest,tag=cloud_sheep,distance=..1] armor.head leather_horse_armor{CustomModelData:2,display:{color:16775936}}
execute if score @s timer matches 530 run replaceitem entity @e[type=armor_stand,limit=1,sort=nearest,tag=cloud_sheep,distance=..1] armor.head leather_horse_armor{CustomModelData:1,display:{color:16775936}}
execute if score @s timer = #CloudSheep timer run function mechanics:spells/water/interaction/sheep/deflated