# Creates the scoreboard.
scoreboard objectives add bdd_deaths deathCount "BetterDeathDrop Deaths"
scoreboard objectives add bdd_vars dummy "BetterDeathDrop Variables"

# Create initial variables
execute unless score init bdd_vars matches 1 run function better_death_drops:internal/init