# portal
scoreboard players remove @e[tag=portal,tag=origin,tag=connected] cooldown 1
scoreboard players operation #current mana -= @e[tag=portal,tag=origin,tag=connected,scores={cooldown=..0}] mana
execute as @e[tag=portal,tag=origin,tag=connected,scores={cooldown=..0}] run function mana:values

# chunk loader
scoreboard players remove @e[tag=chunk_loader,tag=connected] cooldown 1
scoreboard players operation #current mana -= @e[tag=chunk_loader,tag=connected] mana
execute as @e[tag=chunk_loader,tag=connected,scores={cooldown=..0}] run function mana:values