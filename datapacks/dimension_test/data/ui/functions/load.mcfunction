bossbar add generator:power {"text":"Fuel level:"}
bossbar set generator:power color blue
bossbar set generator:power style notched_10
bossbar set generator:power players @a

execute unless score #generator max matches 1.. run scoreboard players set #generator max 100