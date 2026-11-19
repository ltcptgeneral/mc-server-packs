execute if score glow bdd_vars matches 1 run data merge entity @s {Glowing:1b}

# If item despawning is disabled, set age to limit (which disables despawning behaviours.)
execute if score item_despawning bdd_vars matches 0 run data merge entity @s {Age:-32768}
execute if score item_despawning bdd_vars matches 1 store result entity @s Age int -1.0 run scoreboard players get despawn_time_raw bdd_vars
