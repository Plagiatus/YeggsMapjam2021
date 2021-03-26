effect clear @s levitation
scoreboard players remove @s launch_timer 1
execute if score @s launch_timer matches ..65 if predicate mechanics:onground run scoreboard players set @s launch_timer 0