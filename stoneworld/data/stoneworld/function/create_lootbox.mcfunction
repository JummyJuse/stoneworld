execute as @s positioned as @s rotated as @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:[lootbox]}
execute as @s positioned as @s rotated as @s align xyz positioned ~0.5 ~0.5 ~0.5 run execute as @n[tag=lootbox] run scoreboard players set @s lootrefresh 0
execute as @s positioned as @s rotated as @s run setblock ~ ~ ~ chest
