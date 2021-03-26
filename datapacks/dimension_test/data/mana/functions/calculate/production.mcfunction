# total
# scoreboard players set #total mana 0
scoreboard players operation #max mana += @e[tag=mana_storage] mana

# generator
scoreboard players operation #current mana += @e[tag=mana_generator] mana

# extractor
execute at @e[type=area_effect_cloud,tag=extractor] as @e[distance=..1.5,type=item] at @s run function mana:calculate/extract_item
execute at @e[type=area_effect_cloud,tag=extractor] run tag @e[distance=..4,type=!#mana:nonextractable] add extract_me
execute as @e[tag=extract_me] at @s run function mana:calculate/extract_entity
# portal
scoreboard players operation #current mana -= @e[tag=portal] mana


# cap
scoreboard players operation #current mana < #max mana