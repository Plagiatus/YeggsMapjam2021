
execute store result score @s upgrade_mana run scoreboard players get #current mana
execute store result score @s upgrade_wood run clear @s #minecraft:logs 0
execute store result score @s upgrade_iron run clear @s iron_ingot 0
execute store result score @s upgrade_gold run clear @s gold_ingot 0
execute store result score @s upgrade_lapis run clear @s lapis_lazuli 0
execute store result score @s upgrade_diamond run clear @s diamond 0

execute if score @s upgrade_mana >= #upgrade upgrade_mana if score @s upgrade_wood >= #upgrade upgrade_wood if score @s upgrade_iron >= #upgrade upgrade_iron if score @s upgrade_gold >= #upgrade upgrade_gold if score @s upgrade_lapis >= #upgrade upgrade_lapis if score @s upgrade_diamond >= #upgrade upgrade_diamond run tag @s add upgrade_ready

execute if entity @s[tag=upgrade_ready] run scoreboard players add @e[tag=machine,limit=1,sort=nearest] lvl 1
execute if entity @s[tag=upgrade_ready] as @e[tag=machine,limit=1,sort=nearest] run function mana:values
execute if entity @s[tag=upgrade_ready] as @e[tag=machine,limit=1,sort=nearest] run function mana:display/info

execute if entity @s[tag=upgrade_ready] run function mana:build/upgrade/clear_all
execute if entity @s[tag=upgrade_ready] run scoreboard players operation #current mana -= #upgrade upgrade_mana 



execute if entity @s[tag=!upgrade_ready] run tellraw @s [{"color": "red","text": "You don't have enough resources!"}]

tag @s remove upgrade_ready
scoreboard players set @s cc 0