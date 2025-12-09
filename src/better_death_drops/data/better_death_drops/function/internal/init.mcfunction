
scoreboard players add CONST_ticks_in_minute bdd_vars 1200

scoreboard players add despawn_time bdd_vars 30
scoreboard players add item_despawning bdd_vars 1
scoreboard players add glow bdd_vars 1

# The value below zero for the Age nbt. 6000 = -6000 ticks.
scoreboard players add despawn_time_raw bdd_vars 6000

# Stop this from getting called again.
scoreboard players add init bdd_vars 1

#tellraw @a [{"text": "Better Death Drops", "color": "dark_green", "bold":true}, {"text": " initialised.", "color": "gray", "bold":false}]
#tellraw @a [{"text": "Settings configurable with ", "color": "gray"},{"text": "/function better_death_drops:options", "color": "yellow", "clickEvent": {"action": "suggest_command", "value": "/function better_death_drops:options"}}]
#tellraw @a {"text": "(Click command to get started.)", "color": "gray"}