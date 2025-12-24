# set happy ghasts (with ghastflymode true) to have still_timeout 10
execute as @s run data modify entity @s still_timeout set value 10

# clear still_timeout from ghasts being actively ridden by players
execute as @e[type=minecraft:player] on vehicle if entity @s[type=minecraft:happy_ghast] run data modify entity @s still_timeout set value 0