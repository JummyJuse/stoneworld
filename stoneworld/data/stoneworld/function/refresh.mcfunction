$execute at @e[tag=$(tagg),scores={timer=0}] if block ~ ~ ~ air run function stoneworld:resettimer with storage stoneworld:temp
$scoreboard players add @e[tag=$(tagg),scores={timer=1..}] timer 1
$execute at @e[tag=$(tagg),scores={timer=40..}] if block ~ ~ ~ air run data modify storage stoneworld:placing tagg set from entity @n[type=marker] data.t
$execute at @e[tag=$(tagg),scores={timer=40..}] if block ~ ~ ~ air run data modify storage stoneworld:placing loott set from entity @n[type=marker] data.l
$execute at @e[tag=$(tagg),scores={timer=40..}] if block ~ ~ ~ air run data modify storage stoneworld:placing gentag set from entity @n[type=marker] data.g
$execute at @e[tag=$(tagg),scores={timer=40..}] if block ~ ~ ~ air run function stoneworld:place_overworld with storage stoneworld:placing