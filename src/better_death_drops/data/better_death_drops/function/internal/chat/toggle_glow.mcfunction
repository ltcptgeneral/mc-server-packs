scoreboard players add glow bdd_vars 1

# if the glow is two or more, reset to 0.
execute if score glow bdd_vars matches 2.. run scoreboard players set glow bdd_vars 0

function better_death_drops:options