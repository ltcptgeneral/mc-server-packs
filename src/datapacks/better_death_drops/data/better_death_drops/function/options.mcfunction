tellraw @s [{"text":" ", "color": "gray"}]
tellraw @s [{"text":"----------------------------", "color": "gray"}]
tellraw @s [{"text": "Better Death Drops", "color": "dark_green", "bold":true}]

# Glow option
execute if score glow bdd_vars matches 0 run tellraw @s [{"text": "Items Glow: "}, {"text": "[Disabled]", "color":"red", "bold": true, "underlined": true, "click_event": {"action": "run_command", "command": "/function better_death_drops:internal/chat/toggle_glow"}}]
execute if score glow bdd_vars matches 1 run tellraw @s [{"text": "Items Glow: "}, {"text": "[Enabled]", "color":"green", "bold": true, "underlined": true, "click_event": {"action": "run_command", "command": "/function better_death_drops:internal/chat/toggle_glow"}}]

# Despawning option
execute if score item_despawning bdd_vars matches 0 run tellraw @s [{"text": "Despawn Items: "}, {"text": "[Disabled]", "color":"red", "bold": true, "underlined": true, "click_event": {"action": "run_command", "command": "/function better_death_drops:internal/chat/toggle_despawn"}}]
execute if score item_despawning bdd_vars matches 1 run tellraw @s [{"text": "Despawn Items: "}, {"text": "[Enabled]", "color":"green", "bold": true, "underlined": true, "click_event": {"action": "run_command", "command": "/function better_death_drops:internal/chat/toggle_despawn"}}]

# Despawn duration option
execute if score item_despawning bdd_vars matches 1 run tellraw @s [{"text": "Despawn Duration: "},{"text": "[-] ", "color": "dark_aqua", "click_event": {"action": "run_command", "command": "/function better_death_drops:internal/chat/decr_time"}}, {"score": {"name":"despawn_time","objective": "bdd_vars"}}, {"text":" mins. "}, {"text": "[+] ", "color": "dark_aqua", "click_event": {"action": "run_command", "command": "/function better_death_drops:internal/chat/incr_time"}}]