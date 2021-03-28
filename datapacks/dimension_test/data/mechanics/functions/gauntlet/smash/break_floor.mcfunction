#execute positioned ~ ~ ~ if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~1 ~ ~1 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~-1 ~ ~1 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~1 ~ ~-1 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~ ~ ~-1 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~ ~ ~1 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~1 ~ ~ if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~-1 ~ ~ if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~2 ~ ~-1 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~2 ~ ~0 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~2 ~ ~1 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~-2 ~ ~-1 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~-2 ~ ~0 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~-2 ~ ~1 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~1 ~ ~2 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~0 ~ ~2 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~-1 ~ ~2 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~1 ~ ~-2 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~0 ~ ~-2 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy
#execute positioned ~-1 ~ ~-2 if block ~ ~ ~ #mechanics:gauntlet/break run setblock ~ ~ ~ air destroy

execute store success score #tmp tmp run fill ~1 ~ ~2 ~-1 ~ ~-2 air replace #mechanics:gauntlet/break
execute if score #tmp tmp matches 1 run playsound minecraft:entity.iron_golem.damage master @a ~ ~-10 ~ 0.15 0 0.15
execute if score #tmp tmp matches 1 run particle block cobblestone ~ ~ ~ 1 0.25 1 1 20 
execute store success score #tmp tmp run fill ~2 ~ ~1 ~-2 ~ ~-1 air replace #mechanics:gauntlet/break
execute if score #tmp tmp matches 1 run playsound minecraft:entity.iron_golem.damage master @a ~ ~-10 ~ 0.15 0 0.15
execute if score #tmp tmp matches 1 run particle block cobblestone ~ ~ ~ 1 0.25 1 1 20 
