scoreboard players remove despawn_time bdd_vars 1

execute if score despawn_time bdd_vars matches ..4 run scoreboard players set despawn_time bdd_vars 5

# Updates the despawn time in ticks.
function better_death_drops:internal/convert_despawn_time_to_raw

function better_death_drops:options