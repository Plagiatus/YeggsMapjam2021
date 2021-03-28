scoreboard players add @s timer 1

execute if entity @s[scores={const=1,timer=30..}] positioned -2 70 980 run function mechanics:spells/twister/puzzle/cutscene1
execute if entity @s[scores={const=2,timer=30..}] positioned 23 78 989 run function mechanics:spells/twister/puzzle/cutscene2
execute if entity @s[scores={const=3,timer=30..}] positioned -12 69 994 run function mechanics:spells/twister/puzzle/cutscene3