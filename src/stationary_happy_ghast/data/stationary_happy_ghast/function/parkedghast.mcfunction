execute as @s[nbt={still_timeout:10}] as @s[nbt={NoAI:1b}] run data modify entity @s NoAI set value 0b

execute unless entity @s[nbt={still_timeout:10}] unless entity @s[nbt={NoAI:1b}] run data modify entity @s NoAI set value 1b