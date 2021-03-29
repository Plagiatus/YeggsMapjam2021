scoreboard players set @s broke_crystal 0
scoreboard players add #recovered broke_crystal 1

execute as @a at @s run playsound ui.toast.challenge_complete voice @s

execute if score #recovered broke_crystal matches 0 in minecraft:overworld run setblock 1986 100 1982 structure_block[mode=load]{posX:0,mode:"LOAD",posY:-1,posZ:0,name:"crystal:stage_0"}
execute if score #recovered broke_crystal matches 1 in minecraft:overworld run setblock 1986 100 1982 structure_block[mode=load]{posX:0,mode:"LOAD",posY:-1,posZ:0,name:"crystal:stage_1"}
execute if score #recovered broke_crystal matches 2 in minecraft:overworld run setblock 1986 100 1982 structure_block[mode=load]{posX:0,mode:"LOAD",posY:-1,posZ:0,name:"crystal:stage_2"}
execute if score #recovered broke_crystal matches 3 in minecraft:overworld run setblock 1986 100 1982 structure_block[mode=load]{posX:0,mode:"LOAD",posY:-1,posZ:0,name:"crystal:stage_3"}
execute if score #recovered broke_crystal matches 4 in minecraft:overworld run setblock 1986 100 1982 structure_block[mode=load]{posX:0,mode:"LOAD",posY:-1,posZ:0,name:"crystal:stage_4"}
execute if score #recovered broke_crystal matches 5 in minecraft:overworld run setblock 1986 100 1982 structure_block[mode=load]{posX:0,mode:"LOAD",posY:-1,posZ:0,name:"crystal:stage_5"}


execute if score #recovered broke_crystal matches 0..5 in minecraft:overworld run setblock 1986 101 1982 redstone_block
execute if score #recovered broke_crystal matches 0..6 in minecraft:overworld run particle witch 1991 102 1988 2.5 2.5 2.5 1 1000
execute if score #recovered broke_crystal matches 0..6 in minecraft:overworld run particle happy_villager 1991 102 1988 2.5 2.5 2.5 1 50

execute if entity @s[x=2005,y=101,z=2007,distance=..10] as @a run function mechanics:spell/water/give
execute if entity @s[x=37,y=32,z=-2,distance=..10] as @a run function mechanics:spell/launch/give
execute if entity @s[x=21,y=142,z=2962,distance=..10] as @a run function mechanics:spell/twister/give
execute if entity @s[x=60,y=90,z=1020,distance=..10] as @a run function mechanics:gauntlet/give


# TODO start end cutscene
# execute if score #recovered broke_crystal matches 6 run 