#Spell Cooldowns
scoreboard objectives add launch_timer dummy
scoreboard players set #settings launch_timer 75
scoreboard objectives add twister_timer dummy
scoreboard players set #settings twister_timer 20
scoreboard objectives add gauntlet_timer dummy

#Other constants
scoreboard players set #CloudSheep timer 550


# 1 second delay
function mechanics:second

# crystal
scoreboard objectives add broke_crystal minecraft.mined:minecraft.light_blue_stained_glass
execute unless score #recovered broke_crystal = #recovered broke_crystal run scoreboard players set #recovered broke_crystal 0
execute unless score #total broke_crystal = #total broke_crystal run scoreboard players set #total broke_crystal 6