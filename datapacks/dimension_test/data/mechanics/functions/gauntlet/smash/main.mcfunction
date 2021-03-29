execute if score @s gauntlet_timer matches 5 run effect give @s levitation 1 200 true 
execute if score @s gauntlet_timer matches 5 run playsound entity.iron_golem.attack master @a ~ ~ ~ 1 0

execute if score @s gauntlet_timer matches 5..49 positioned ~ ~-1 ~ run function mechanics:gauntlet/smash/break_floor
execute if score @s gauntlet_timer matches 6..49 positioned ~ ~-2 ~ run function mechanics:gauntlet/smash/break_floor
execute if score @s gauntlet_timer matches 8..49 positioned ~ ~-3 ~ run function mechanics:gauntlet/smash/break_floor
execute if score @s gauntlet_timer matches 12..49 positioned ~ ~-4 ~ run function mechanics:gauntlet/smash/break_floor
execute if score @s gauntlet_timer matches 20..49 positioned ~ ~-5 ~ run function mechanics:gauntlet/smash/break_floor
execute if score @s gauntlet_timer matches 9..49 positioned ~ ~1 ~ run function mechanics:gauntlet/smash/particles


execute if score @s gauntlet_timer matches 10..49 if block ~ ~-1 ~ #mechanics:gauntlet/bounce run function mechanics:gauntlet/smash/bounce
execute if score @s[tag=!tmp] gauntlet_timer matches 10..49 if block ~ ~-2 ~ #mechanics:gauntlet/bounce run function mechanics:gauntlet/smash/bounce
execute if score @s[tag=!tmp] gauntlet_timer matches 10..49 if block ~ ~-3 ~ #mechanics:gauntlet/bounce run function mechanics:gauntlet/smash/bounce
tag @s remove tmp

scoreboard players add @s gauntlet_timer 1
tag @s remove tmp
execute if score @s gauntlet_timer matches 11..49 unless block ~ ~-1 ~ #mechanics:gauntlet/bounce unless block ~ ~-1 ~ air run tag @s add tmp 
execute if score @s[tag=tmp] timer matches 11..49 run scoreboard players set @s gauntlet_timer 50 
execute if score @s[tag=tmp] timer matches 11..49 run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 0.5 0
execute if score @s[tag=tmp] timer matches 11..49 run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 0.7 0.7
execute if score @s gauntlet_timer matches 50 run effect clear @s levitation
execute if score @s gauntlet_timer matches 60 run tag @s remove gauntlet_smash
execute if score @s gauntlet_timer matches 60.. run scoreboard players reset @s gauntlet_timer