data modify storage name:temp tagg set value 'overworld_gen'
function name:refresh with storage name:temp

data modify storage name:temp tagg set value 'lapis_gen'
function name:refresh with storage name:temp

data modify storage name:temp tagg set value 'gold_gen'
function name:refresh with storage name:temp

data modify storage name:temp tagg set value 'iron_gen'
function name:refresh with storage name:temp

data modify storage name:temp tagg set value 'diamond_gen'
function name:refresh with storage name:temp

data modify storage name:temp tagg set value 'gamble_gen'
function name:refresh with storage name:temp

execute as @e[type=minecraft:marker] at @s run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 1 10