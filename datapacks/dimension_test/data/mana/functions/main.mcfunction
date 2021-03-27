# calculate
## production
function mana:calculate/production

## usage
function mana:calculate/usage


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