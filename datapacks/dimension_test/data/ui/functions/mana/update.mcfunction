scoreboard players operation #percent mana = #current mana
scoreboard players operation #percent mana *= #100 const
scoreboard players operation #percent mana /= #max mana

scoreboard players set #danger mana 20

execute if score #percent mana < #danger mana run bossbar set mana:display_red visible true
execute if score #percent mana < #danger mana run bossbar set mana:display visible false
execute if score #percent mana >= #danger mana run bossbar set mana:display_red visible false
execute if score #percent mana >= #danger mana run bossbar set mana:display visible true
bossbar set mana:display_red players @a
bossbar set mana:display players @a

execute store result bossbar mana:display_red max run scoreboard players get #max mana
execute store result bossbar mana:display_red value run scoreboard players get #current mana
execute store result bossbar mana:display max run scoreboard players get #max mana
execute store result bossbar mana:display value run scoreboard players get #current mana

bossbar set mana:display name [{"text":"Mana "}, {"score":{"name":"#current","objective":"mana"}}, "/", {"score":{"name":"#max","objective":"mana"}}]
bossbar set mana:display_red name [{"text":"Low Mana! "}, {"score":{"name":"#current","objective":"mana"}}, "/", {"score":{"name":"#max","objective":"mana"}}]