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

# portals
function mana:portal/main

# make sure you don't drop your CoaSs
execute if score #status status matches 1 as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}] run data merge entity @s {PickupDelay:0}
execute if score #status status matches 1 as @a store result score @s tmp run clear @s carrot_on_a_stick{buildtool:1b} 0
execute if score #status status matches 1 as @a[scores={tmp=0}] run scoreboard players add @s coas_check 1
execute if score #status status matches 1 as @a[scores={tmp=1..}] run scoreboard players set @s coas_check 0
execute if score #status status matches 1 as @a[scores={coas_check=5..}] run give @s carrot_on_a_stick{CustomModelData:2,buildtool:1b,display:{Name:'{"text":"Build Tool","italic":false}'}}