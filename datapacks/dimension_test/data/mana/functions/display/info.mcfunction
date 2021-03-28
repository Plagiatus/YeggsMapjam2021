setblock ~ 250 ~ stone
setblock ~ 251 ~ oak_sign
tag @s add info_src

execute if entity @s[tag=mana_generator] run data merge block ~ 251 ~ {Text1:'[{"text":"+","color":"green"},{"score":{"name":"@e[tag=info_src]","objective":"mana"}},{"text":"\\uF006","color":"white"},{"text":" / "},{"score":{"name":"@e[tag=info_src]","objective":"cooldown"}},{"text":"t"}]'}
execute if entity @s[tag=mana_generator] run data modify entity @e[tag=machine_display,limit=1,sort=nearest] CustomName set from block ~ 251 ~ Text1

execute if entity @s[tag=chunk_loader] run data merge block ~ 251 ~ {Text1:'[{"text":"-","color":"red"},{"score":{"name":"@e[tag=info_src]","objective":"mana"}},{"text":"\\uF006","color":"white"},{"text":" / "},{"score":{"name":"@e[tag=info_src]","objective":"cooldown"}},{"text":"t"}]'}
execute if entity @s[tag=chunk_loader] run data modify entity @e[tag=machine_display,limit=1,sort=nearest] CustomName set from block ~ 251 ~ Text1

execute if entity @s[tag=mana_storage] run data merge block ~ 251 ~ {Text1:'[{"text":"+","color":"white"},{"score":{"name":"@e[tag=info_src]","objective":"mana"}},{"text":"\\uF006","color":"white"}]'}
execute if entity @s[tag=mana_storage] run data modify entity @e[tag=machine_display,limit=1,sort=nearest] CustomName set from block ~ 251 ~ Text1

execute if entity @s[tag=extractor] run data merge block ~ 251 ~ {Text1:'[{"text":"+1","color":"green"},{"text":"\\uF006","color":"white"},{"text":" / "},{"score":{"name":"@e[tag=info_src]","objective":"cooldown"}},{"text":"t, +"},{"score":{"name":"@e[tag=info_src]","objective":"mana"}},{"text":"\\uF006","color":"white"}]'}
execute if entity @s[tag=extractor] run data modify entity @e[tag=machine_display,limit=1,sort=nearest] CustomName set from block ~ 251 ~ Text1

execute if entity @s[tag=portal] run data merge block ~ 251 ~ {Text1:'[{"text":"-","color":"red"},{"score":{"name":"@e[tag=info_src]","objective":"mana"}},{"text":"\\uF006","color":"white"},{"text":" / "},{"score":{"name":"@e[tag=info_src]","objective":"cooldown"}},{"text":"t"}]'}
execute if entity @s[tag=portal] run data modify entity @e[tag=machine_display,limit=1,sort=nearest] CustomName set from block ~ 251 ~ Text1


tag @s remove info_src
setblock ~ 251 ~ air
setblock ~ 250 ~ air