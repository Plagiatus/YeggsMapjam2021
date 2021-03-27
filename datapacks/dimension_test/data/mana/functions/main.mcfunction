# calculate
## production
execute if score #burnout cooldown matches ..0 run function mana:calculate/production

## usage
execute if score #burnout cooldown matches ..0 run function mana:calculate/usage

# burnout
execute if score #current mana matches ..-1 run function mana:calculate/burnout
scoreboard players remove #burnout cooldown 1

# upgrading


# building
function mana:build/main

# powering
execute as @e[tag=connector,tag=connected] at @s run function mana:connector/display_range
execute as @e[tag=mana_generator] at @s run function mana:connector/display_generator_range

# cap
scoreboard players operation #current mana < #max mana

# ui
function ui:mana/update