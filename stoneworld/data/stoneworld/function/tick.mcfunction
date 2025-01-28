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