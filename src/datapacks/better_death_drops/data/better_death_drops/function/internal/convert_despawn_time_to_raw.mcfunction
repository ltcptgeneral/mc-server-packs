scoreboard players operation despawn_time_raw bdd_vars = despawn_time bdd_vars
scoreboard players remove despawn_time_raw bdd_vars 5
scoreboard players operation despawn_time_raw bdd_vars *= CONST_ticks_in_minute bdd_vars