# general
    # generator
    scoreboard players set @s[tag=mana_generator,scores={lvl=0}] cooldown 20
    scoreboard players set @s[tag=mana_generator,scores={lvl=1}] cooldown 10
    scoreboard players set @s[tag=mana_generator,scores={lvl=2}] cooldown 5
    scoreboard players set @s[tag=mana_generator,scores={lvl=3..}] cooldown 1

    scoreboard players set @s[tag=mana_generator,scores={lvl=0..3}] mana 1
    scoreboard players set @s[tag=mana_generator,scores={lvl=4}] mana 2
    scoreboard players set @s[tag=mana_generator,scores={lvl=5}] mana 5
    scoreboard players set @s[tag=mana_generator] maxlvl 5

    # storage
    scoreboard players set @s[tag=mana_storage,scores={lvl=0}] mana 100
    scoreboard players set @s[tag=mana_storage,scores={lvl=1}] mana 250
    scoreboard players set @s[tag=mana_storage,scores={lvl=2}] mana 600
    scoreboard players set @s[tag=mana_storage,scores={lvl=3}] mana 1500
    scoreboard players set @s[tag=mana_storage] maxlvl 3

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
    scoreboard players set @s[tag=extractor] maxlvl 2

    # chunk loader
    scoreboard players set @s[tag=chunk_loader,scores={lvl=0}] mana 1
    scoreboard players set @s[tag=chunk_loader,scores={lvl=0}] cooldown 1
    scoreboard players set @s[tag=chunk_loader] maxlvl 0

    # portal
    scoreboard players set @s[tag=portal,tag=origin,scores={portal_id=1}] mana 1
    scoreboard players set @s[tag=portal,tag=origin,scores={portal_id=1}] cooldown 10

# upgrade cost
    # generator
    scoreboard players set @s[tag=mana_generator,scores={lvl=0}] upgrade_mana 20
    scoreboard players set @s[tag=mana_generator,scores={lvl=0}] upgrade_wood 16
    scoreboard players set @s[tag=mana_generator,scores={lvl=0}] upgrade_iron 0
    scoreboard players set @s[tag=mana_generator,scores={lvl=0}] upgrade_gold 0
    scoreboard players set @s[tag=mana_generator,scores={lvl=0}] upgrade_lapis 0
    scoreboard players set @s[tag=mana_generator,scores={lvl=0}] upgrade_diamond 0
    scoreboard players set @s[tag=mana_generator,scores={lvl=1}] upgrade_mana 50
    scoreboard players set @s[tag=mana_generator,scores={lvl=1}] upgrade_wood 32
    scoreboard players set @s[tag=mana_generator,scores={lvl=1}] upgrade_iron 4
    scoreboard players set @s[tag=mana_generator,scores={lvl=1}] upgrade_gold 0
    scoreboard players set @s[tag=mana_generator,scores={lvl=1}] upgrade_lapis 0
    scoreboard players set @s[tag=mana_generator,scores={lvl=1}] upgrade_diamond 0
    scoreboard players set @s[tag=mana_generator,scores={lvl=2}] upgrade_mana 100
    scoreboard players set @s[tag=mana_generator,scores={lvl=2}] upgrade_wood 16
    scoreboard players set @s[tag=mana_generator,scores={lvl=2}] upgrade_iron 16
    scoreboard players set @s[tag=mana_generator,scores={lvl=2}] upgrade_gold 5
    scoreboard players set @s[tag=mana_generator,scores={lvl=2}] upgrade_lapis 2
    scoreboard players set @s[tag=mana_generator,scores={lvl=2}] upgrade_diamond 0
    scoreboard players set @s[tag=mana_generator,scores={lvl=3}] upgrade_mana 250
    scoreboard players set @s[tag=mana_generator,scores={lvl=3}] upgrade_wood 32
    scoreboard players set @s[tag=mana_generator,scores={lvl=3}] upgrade_iron 32
    scoreboard players set @s[tag=mana_generator,scores={lvl=3}] upgrade_gold 10
    scoreboard players set @s[tag=mana_generator,scores={lvl=3}] upgrade_lapis 8
    scoreboard players set @s[tag=mana_generator,scores={lvl=3}] upgrade_diamond 0
    scoreboard players set @s[tag=mana_generator,scores={lvl=4}] upgrade_mana 1000
    scoreboard players set @s[tag=mana_generator,scores={lvl=4}] upgrade_wood 0
    scoreboard players set @s[tag=mana_generator,scores={lvl=4}] upgrade_iron 64
    scoreboard players set @s[tag=mana_generator,scores={lvl=4}] upgrade_gold 32
    scoreboard players set @s[tag=mana_generator,scores={lvl=4}] upgrade_lapis 20
    scoreboard players set @s[tag=mana_generator,scores={lvl=4}] upgrade_diamond 5

    # storage
    scoreboard players set @s[tag=mana_storage,scores={lvl=0}] upgrade_mana 100
    scoreboard players set @s[tag=mana_storage,scores={lvl=0}] upgrade_wood 24
    scoreboard players set @s[tag=mana_storage,scores={lvl=0}] upgrade_iron 0
    scoreboard players set @s[tag=mana_storage,scores={lvl=0}] upgrade_gold 0
    scoreboard players set @s[tag=mana_storage,scores={lvl=0}] upgrade_lapis 0
    scoreboard players set @s[tag=mana_storage,scores={lvl=0}] upgrade_diamond 0
    scoreboard players set @s[tag=mana_storage,scores={lvl=1}] upgrade_mana 250
    scoreboard players set @s[tag=mana_storage,scores={lvl=1}] upgrade_wood 12
    scoreboard players set @s[tag=mana_storage,scores={lvl=1}] upgrade_iron 20
    scoreboard players set @s[tag=mana_storage,scores={lvl=1}] upgrade_gold 5
    scoreboard players set @s[tag=mana_storage,scores={lvl=1}] upgrade_lapis 0
    scoreboard players set @s[tag=mana_storage,scores={lvl=1}] upgrade_diamond 0
    scoreboard players set @s[tag=mana_storage,scores={lvl=2}] upgrade_mana 500
    scoreboard players set @s[tag=mana_storage,scores={lvl=2}] upgrade_wood 0
    scoreboard players set @s[tag=mana_storage,scores={lvl=2}] upgrade_iron 16
    scoreboard players set @s[tag=mana_storage,scores={lvl=2}] upgrade_gold 24
    scoreboard players set @s[tag=mana_storage,scores={lvl=2}] upgrade_lapis 10
    scoreboard players set @s[tag=mana_storage,scores={lvl=2}] upgrade_diamond 0

    # extractor
    scoreboard players set @s[tag=extractor,scores={lvl=0}] upgrade_mana 500
    scoreboard players set @s[tag=extractor,scores={lvl=0}] upgrade_wood 24
    scoreboard players set @s[tag=extractor,scores={lvl=0}] upgrade_iron 32
    scoreboard players set @s[tag=extractor,scores={lvl=0}] upgrade_gold 32
    scoreboard players set @s[tag=extractor,scores={lvl=0}] upgrade_lapis 10
    scoreboard players set @s[tag=extractor,scores={lvl=0}] upgrade_diamond 0
    scoreboard players set @s[tag=extractor,scores={lvl=1}] upgrade_mana 1500
    scoreboard players set @s[tag=extractor,scores={lvl=1}] upgrade_wood 24
    scoreboard players set @s[tag=extractor,scores={lvl=1}] upgrade_iron 32
    scoreboard players set @s[tag=extractor,scores={lvl=1}] upgrade_gold 64
    scoreboard players set @s[tag=extractor,scores={lvl=1}] upgrade_lapis 16
    scoreboard players set @s[tag=extractor,scores={lvl=1}] upgrade_diamond 2