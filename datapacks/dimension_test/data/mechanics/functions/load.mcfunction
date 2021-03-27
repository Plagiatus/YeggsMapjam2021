#Spell Cooldowns
scoreboard objectives add launch_timer dummy
scoreboard players set #settings launch_timer 75
scoreboard objectives add twister_timer dummy
scoreboard players set #settings twister_timer 20

# 1 second delay
function mechanics:second