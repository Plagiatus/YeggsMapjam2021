# total
# scoreboard players set #total mana 0
scoreboard players operation #max mana += @e[tag=mana_storage] mana

# generator
scoreboard players remove @e[tag=mana_generator] cooldown 1
scoreboard players operation #current mana += @e[tag=mana_generator,scores={cooldown=..0}] mana
execute as @e[tag=mana_generator,scores={cooldown=..0}] run function mana:values

# extractor
execute at @e[type=area_effect_cloud,tag=extractor] as @e[distance=..1.5,type=item] at @s run function mana:calculate/extract_item
execute at @e[type=area_effect_cloud,tag=extractor] run tag @e[distance=..4,type=!#mana:nonextractable] add extract_me
execute as @e[tag=extract_me] at @s run function mana:calculate/extract_entity
