execute as @a[scores={ghastflymode=1..}] at @s run function stationary_happy_ghast:trigger
scoreboard players enable @a ghastflymode

#parked
execute as @e[type=happy_ghast,scores={ghast_parking_state=1}] at @s run function stationary_happy_ghast:parkedghast