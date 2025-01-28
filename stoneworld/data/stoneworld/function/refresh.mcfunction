$execute at @e[tag=$(tagg),scores={timer=0}] if block ~ ~ ~ air run function name:resettimer with storage name:temp
$scoreboard players add @e[tag=$(tagg),scores={timer=1..}] timer 1
$execute at @e[tag=$(tagg),scores={timer=40..}] if block ~ ~ ~ air run data modify storage name:placing tagg set from entity @n[type=marker] data.t
$execute at @e[tag=$(tagg),scores={timer=40..}] if block ~ ~ ~ air run data modify storage name:placing loott set from entity @n[type=marker] data.l
$execute at @e[tag=$(tagg),scores={timer=40..}] if block ~ ~ ~ air run data modify storage name:placing gentag set from entity @n[type=marker] data.g
$execute at @e[tag=$(tagg),scores={timer=40..}] if block ~ ~ ~ air run function name:place_overworld with storage name:placing