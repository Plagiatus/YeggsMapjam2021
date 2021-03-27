
#TODO drop resources?

kill @e[tag=machine,limit=1,sort=nearest]
fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace #mana:machinepart

scoreboard players set @s cc 0