scoreboard players add despawn_time bdd_vars 1

execute if score despawn_time bdd_vars matches 30.. run scoreboard players set despawn_time bdd_vars 30

# Updates the despawn time in ticks.
function better_death_drops:internal/convert_despawn_time_to_raw

function better_death_drops:options