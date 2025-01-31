data modify storage stoneworld:temp tagg set value 'overworld_gen'
function stoneworld:refresh with storage stoneworld:temp

data modify storage stoneworld:temp tagg set value 'lapis_gen'
function stoneworld:refresh with storage stoneworld:temp

data modify storage stoneworld:temp tagg set value 'gold_gen'
function stoneworld:refresh with storage stoneworld:temp

data modify storage stoneworld:temp tagg set value 'iron_gen'
function stoneworld:refresh with storage stoneworld:temp

data modify storage stoneworld:temp tagg set value 'diamond_gen'
function stoneworld:refresh with storage stoneworld:temp

data modify storage stoneworld:temp tagg set value 'gamble_gen'
function stoneworld:refresh with storage stoneworld:temp

execute as @e[type=minecraft:marker] at @s run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 1 10

execute as @a[scores={3x3=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data~{dp:1}] positioned as @s rotated as @s run function stoneworld:break3x3
execute as @a[scores={3x3=1..}] run scoreboard players set @s 3x3 0

execute as @a[scores={2x2=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data~{sp:1}] positioned as @s rotated as @s run function stoneworld:break2x2
execute as @a[scores={2x2=1..}] run scoreboard players set @s 2x2 0

execute as @a[scores={3xd=1..}] if items entity @s weapon.mainhand *[minecraft:custom_data~{ddp:1}] positioned as @s rotated as @s run function stoneworld:break3x3d
execute as @a[scores={3xd=1..}] run scoreboard players set @s 3xd 0

execute as @e[tag=cannon] positioned as @s rotated as @s if entity @p[distance=..2,tag=!shot] run function stoneworld:cannonshoot
execute as @a[tag=shot] positioned as @s rotated as @s if entity @e[distance=3..,tag=cannon] run tag @s remove shot