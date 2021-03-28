#disables the mana info if no player is near

tag @e[tag=machine_display,tag=was_visible] remove was_visible
tag @e[tag=machine_display,tag=visible] add was_visible
tag @e[tag=machine_display] remove visible
execute at @a[tag=building] run tag @e[tag=machine_display,distance=..20] add visible

execute as @e[tag=machine_display,tag=visible,tag=!was_visible] run data merge entity @s {CustomNameVisible:true}
execute as @e[tag=machine_display,tag=!visible,tag=was_visible] run data merge entity @s {CustomNameVisible:false}