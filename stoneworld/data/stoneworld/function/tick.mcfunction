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