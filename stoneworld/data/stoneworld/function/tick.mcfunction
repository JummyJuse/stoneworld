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

execute as @e[tag=cannon] positioned as @s rotated as @s if entity @p[distance=..2,tag=!shot] run function stoneworld:cannonshoot
execute as @a[tag=shot,predicate=!stoneworld:onground] run tag @s add leftground
execute as @a[tag=leftground,predicate=stoneworld:onground] run attribute @s minecraft:fall_damage_multiplier base reset
execute as @a[tag=leftground,predicate=stoneworld:onground] positioned as @s if entity @n[tag=cannon,distance=3..] run tag @s remove shot
execute as @a[tag=leftground,predicate=stoneworld:onground] positioned as @s if entity @n[tag=cannon,distance=3..] run tag @s remove leftground

#one hour is 72,000
execute in minecraft:the_nether as @e[tag=lootbox,scores={loottimer=72000..}] positioned as @s run data modify block ~ ~ ~ LootTable set value "stoneworld:lootbox"
execute in minecraft:the_nether as @e[tag=lootbox,scores={loottimer=72000..}] positioned as @s run playsound minecraft:block.creaking_heart.fall block @a ~ ~ ~ 1 1
execute in minecraft:the_nether as @e[tag=lootbox,scores={loottimer=72000..}] positioned as @s run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 1 10

execute as @e[tag=lootbox,scores={loottimer=72000..}] positioned as @s run data modify block ~ ~ ~ LootTable set value "stoneworld:lootbox"
execute as @e[tag=lootbox,scores={loottimer=72000..}] positioned as @s run playsound minecraft:block.creaking_heart.fall block @a ~ ~ ~ 1 1
execute as @e[tag=lootbox,scores={loottimer=72000..}] positioned as @s run particle minecraft:crit ~ ~1 ~ 0.1 0.1 0.1 1 10

execute as @e[tag=lootbox,scores={loottimer=72000..}] run scoreboard players set @s loottimer 0
execute as @e[tag=lootbox,scores={loottimer=..72000}] run scoreboard players add @s loottimer 1