scoreboard objectives add leave minecraft.custom:minecraft.leave_game

scoreboard objectives add status dummy
execute unless score #status status = #status status run scoreboard players set #status status 0