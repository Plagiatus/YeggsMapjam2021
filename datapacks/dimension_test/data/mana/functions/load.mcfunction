scoreboard objectives add mana dummy
scoreboard objectives add extr_timer dummy
scoreboard objectives add cooldown dummy
scoreboard objectives add lvl dummy
scoreboard objectives add maxlvl dummy
scoreboard objectives add build dummy
scoreboard objectives add portal_id dummy
scoreboard objectives add portal_cd dummy
scoreboard objectives add coas_check dummy

scoreboard objectives add upgrade_mana dummy
scoreboard objectives add upgrade_wood dummy
scoreboard objectives add upgrade_iron dummy
scoreboard objectives add upgrade_gold dummy
scoreboard objectives add upgrade_lapis dummy
scoreboard objectives add upgrade_diamond dummy

execute unless score #total mana = #total mana run scoreboard players set #total mana 0
execute unless score #current mana = #current mana run scoreboard players set #current mana 0
execute unless score #max mana = #max mana run scoreboard players set #max mana 0

team add red
team modify red color red