execute if score #upgrade upgrade_wood matches 1.. run clear @s #logs 1
execute if score #upgrade upgrade_wood matches 1.. run scoreboard players remove #upgrade upgrade_wood 1
execute if score #upgrade upgrade_iron matches 1.. run clear @s iron_ingot 1
execute if score #upgrade upgrade_iron matches 1.. run scoreboard players remove #upgrade upgrade_iron 1
execute if score #upgrade upgrade_gold matches 1.. run clear @s gold_ingot 1
execute if score #upgrade upgrade_gold matches 1.. run scoreboard players remove #upgrade upgrade_gold 1
execute if score #upgrade upgrade_lapis matches 1.. run clear @s lapis_lazuli 1
execute if score #upgrade upgrade_lapis matches 1.. run scoreboard players remove #upgrade upgrade_lapis 1
execute if score #upgrade upgrade_diamond matches 1.. run clear @s diamond 1
execute if score #upgrade upgrade_diamond matches 1.. run scoreboard players remove #upgrade upgrade_diamond 1


execute if score #upgrade upgrade_wood matches 1.. run function mana:build/upgrade/clear_all
execute if score #upgrade upgrade_iron matches 1.. run function mana:build/upgrade/clear_all
execute if score #upgrade upgrade_gold matches 1.. run function mana:build/upgrade/clear_all
execute if score #upgrade upgrade_lapis matches 1.. run function mana:build/upgrade/clear_all
execute if score #upgrade upgrade_diamond matches 1.. run function mana:build/upgrade/clear_all