# generator
scoreboard players set @s[tag=mana_generator,scores={lvl=0}] cooldown 20
scoreboard players set @s[tag=mana_generator,scores={lvl=1}] cooldown 10
scoreboard players set @s[tag=mana_generator,scores={lvl=2}] cooldown 5
scoreboard players set @s[tag=mana_generator,scores={lvl=3..}] cooldown 1

scoreboard players set @s[tag=mana_generator,scores={lvl=0..3}] mana 1
scoreboard players set @s[tag=mana_generator,scores={lvl=4}] mana 2
scoreboard players set @s[tag=mana_generator,scores={lvl=5}] mana 5

# storage
scoreboard players set @s[tag=mana_storage,scores={lvl=0}] mana 100
scoreboard players set @s[tag=mana_storage,scores={lvl=1}] mana 250
scoreboard players set @s[tag=mana_storage,scores={lvl=2}] mana 600
scoreboard players set @s[tag=mana_storage,scores={lvl=3}] mana 1500

# extractor
scoreboard players set @s[tag=extractor,scores={lvl=0}] cooldown 4
scoreboard players set @s[tag=extractor,scores={lvl=1}] cooldown 2
scoreboard players set @s[tag=extractor,scores={lvl=2}] cooldown 1
scoreboard players set @s[tag=extractor,scores={lvl=0}] mana 20
scoreboard players set @s[tag=extractor,scores={lvl=1}] mana 40
scoreboard players set @s[tag=extractor,scores={lvl=2}] mana 50
scoreboard players set @s[tag=extractor,scores={lvl=0}] extr_timer 100
scoreboard players set @s[tag=extractor,scores={lvl=1}] extr_timer 100
scoreboard players set @s[tag=extractor,scores={lvl=2}] extr_timer 100

# chunk loader
scoreboard players set @s[tag=chunk_loader,scores={lvl=0}] mana 1
scoreboard players set @s[tag=chunk_loader,scores={lvl=0}] cooldown 1

# portal
scoreboard players set @s[tag=portal,tag=origin,scores={portal_id=1}] mana 1
scoreboard players set @s[tag=portal,tag=origin,scores={portal_id=1}] cooldown 10