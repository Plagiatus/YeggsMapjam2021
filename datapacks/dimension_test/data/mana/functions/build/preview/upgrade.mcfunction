title @s actionbar ""
execute if score @s lvl = @s maxlvl run title @s actionbar [{"color": "red", "text": "This is already max-level."}]
particle happy_villager ~ ~1 ~ 0.3 0.3 0.3 0 2
execute unless score @s lvl = @s maxlvl run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["preview"]}
execute unless score @s lvl = @s maxlvl run title @p[tag=building] actionbar [{"text": "Upgrade Cost: "},{"score":{"name": "@s","objective": "upgrade_mana"}},"\uF006 ",{"score":{"name": "@s","objective": "upgrade_wood"}},"\uF007 ",{"score":{"name": "@s","objective": "upgrade_iron"}},"\uF008 ",{"score":{"name": "@s","objective": "upgrade_gold"}},"\uF009 ",{"score":{"name": "@s","objective": "upgrade_lapis"}},"\uF010 ",{"score":{"name": "@s","objective": "upgrade_diamond"}},"\uF011"]

scoreboard players operation #upgrade upgrade_mana = @s upgrade_mana
scoreboard players operation #upgrade upgrade_wood = @s upgrade_wood
scoreboard players operation #upgrade upgrade_iron = @s upgrade_iron
scoreboard players operation #upgrade upgrade_gold = @s upgrade_gold
scoreboard players operation #upgrade upgrade_lapis = @s upgrade_lapis
scoreboard players operation #upgrade upgrade_diamond = @s upgrade_diamond