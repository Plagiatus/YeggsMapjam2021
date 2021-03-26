scoreboard players add @a launch_timer 0

execute as @a[scores={launch_timer=1..}] at @s run function mechanics:spells/launch/main
execute as @a[scores={cc=1,launch_timer=0}] if predicate mechanics:spells/launch at @s run function mechanics:spells/launch/init


scoreboard players reset @a cc