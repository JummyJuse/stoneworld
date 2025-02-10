# if loottimer gets reset, then lootrefresh gets incremented by one, if a lootbox loads in and it's lootrefresh is less than the global lootrefresh, then reset the lootbox

execute in minecraft:the_nether as @e[tag=lootbox] if score loot_global_timer lootrefresh > @s lootrefresh run data modify block ~ ~ ~ LootTable set value "stoneworld:lootbox"
execute in minecraft:the_nether as @e[tag=lootbox] if score loot_global_timer lootrefresh > @s lootrefresh run playsound minecraft:block.creaking_heart.fall block @a ~ ~ ~ 1 1
execute in minecraft:the_nether as @e[tag=lootbox] if score loot_global_timer lootrefresh > @s lootrefresh run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 1 10

execute as @e[tag=lootbox] if score loot_global_timer lootrefresh > @s lootrefresh positioned as @s run data modify block ~ ~ ~ LootTable set value "stoneworld:lootbox"
execute as @e[tag=lootbox] if score loot_global_timer lootrefresh > @s lootrefresh positioned as @s run playsound minecraft:block.creaking_heart.fall block @a ~ ~ ~ 1 1
execute as @e[tag=lootbox] if score loot_global_timer lootrefresh > @s lootrefresh positioned as @s run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 1 10

execute as @e[tag=lootbox] run scoreboard players operation @s lootrefresh = loot_global_timer lootrefresh

schedule function stoneworld:lootbox_15s 15s