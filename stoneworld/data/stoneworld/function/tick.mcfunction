data modify storage stoneworld:temp tagg set value 'overworld_gen'
function stoneworld:refresh with storage stoneworld:temp
execute in minecraft:the_nether run function stoneworld:refresh with storage stoneworld:temp

data modify storage stoneworld:temp tagg set value 'lapis_gen'
function stoneworld:refresh with storage stoneworld:temp
execute in minecraft:the_nether run function stoneworld:refresh with storage stoneworld:temp

data modify storage stoneworld:temp tagg set value 'gold_gen'
function stoneworld:refresh with storage stoneworld:temp
execute in minecraft:the_nether run function stoneworld:refresh with storage stoneworld:temp

data modify storage stoneworld:temp tagg set value 'iron_gen'
function stoneworld:refresh with storage stoneworld:temp
execute in minecraft:the_nether run function stoneworld:refresh with storage stoneworld:temp

data modify storage stoneworld:temp tagg set value 'diamond_gen'
function stoneworld:refresh with storage stoneworld:temp
execute in minecraft:the_nether run function stoneworld:refresh with storage stoneworld:temp

data modify storage stoneworld:temp tagg set value 'gamble_gen'
function stoneworld:refresh with storage stoneworld:temp
execute in minecraft:the_nether run function stoneworld:refresh with storage stoneworld:temp

execute as @e[type=minecraft:marker] at @s run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 1 2

execute as @a[scores={drill=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data~{dp:1}] positioned as @s rotated as @s run function stoneworld:break3x3
execute as @a[scores={drill=1..}] run scoreboard players set @s drill 0

execute as @a[scores={drill=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data~{sp:1}] positioned as @s rotated as @s run function stoneworld:break2x2
execute as @a[scores={drill=1..}] run scoreboard players set @s drill 0

execute as @a[scores={divine=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data~{ddp:1}] positioned as @s rotated as @s run function stoneworld:break3x3d
execute as @a[scores={divine=1..}] run scoreboard players set @s divine 0


# lootbox_15s.mcfunction is scheduled in load

# this adds one to lootrefresh when loottimer is more than 72000. Then if any lootboxes get loaded in and their lootrefresh is less than this lootrefresh, refresh the lootbox.
execute if score loot_global_timer loottimer matches 72000.. run scoreboard players add loot_global_timer lootrefresh 1
execute if score loot_global_timer loottimer matches 72000.. run scoreboard players set loot_global_timer loottimer 0
scoreboard players add loot_global_timer loottimer 1