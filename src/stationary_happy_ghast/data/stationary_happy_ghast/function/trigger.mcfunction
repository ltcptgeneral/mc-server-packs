execute as @e[type=happy_ghast,distance=..10,sort=nearest,limit=1] if score @s ghast_parking_state matches 1 run tag @s add _was1
execute as @e[type=happy_ghast,distance=..10,sort=nearest,limit=1] unless score @s ghast_parking_state matches 1 run tag @s add _was0

execute as @e[type=happy_ghast,tag=_was1,limit=1,sort=nearest] run function stationary_happy_ghast:unpark
execute as @e[type=happy_ghast,tag=_was0,limit=1,sort=nearest] run function stationary_happy_ghast:park

execute if entity @e[type=happy_ghast,distance=..10,sort=nearest,limit=1,tag=_was1] run tellraw @a[scores={ghastflymode=1..}] {"text":"Your ghast is now wandering. It will move freely when you dismount.","color":"yellow"}
execute if entity @e[type=happy_ghast,distance=..10,sort=nearest,limit=1,tag=_was0] run tellraw @a[scores={ghastflymode=1..}] {"text":"Your ghast is now stationary. It will no longer wander when you dismount.","color":"yellow"}

tag @e[type=happy_ghast,tag=_was1] remove _was1
tag @e[type=happy_ghast,tag=_was0] remove _was0

execute unless entity @e[type=happy_ghast,distance=..10] run tellraw @s {"text":"You need to be close with your ghast to use this command.","color":"red"}

scoreboard players reset @s ghastflymode


