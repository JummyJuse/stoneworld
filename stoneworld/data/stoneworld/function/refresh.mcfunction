$execute at @e[tag=$(tagg),scores={timer=0}] if block ~ ~ ~ air run function stoneworld:resettimer with storage stoneworld:temp
$scoreboard players add @e[tag=$(tagg),scores={timer=1..,gen_fuel=1..}] timer 1
$execute at @e[tag=$(tagg),scores={timer=40..}] if block ~ ~ ~ air run data modify storage stoneworld:placing tagg set from entity @n[type=marker] data.t
$execute at @e[tag=$(tagg),scores={timer=40..}] if block ~ ~ ~ air run data modify storage stoneworld:placing loott set from entity @n[type=marker] data.l
$execute at @e[tag=$(tagg),scores={timer=40..}] if block ~ ~ ~ air run data modify storage stoneworld:placing gentag set from entity @n[type=marker] data.g
$execute at @e[tag=$(tagg),scores={timer=40..,gen_fuel=1..}] if block ~ ~ ~ air run function stoneworld:place_overworld with storage stoneworld:placing
$execute as @e[tag=$(tagg)] positioned as @s if entity @n[type=item,nbt={Item:{id:"minecraft:coal"}},distance=..1.1] run scoreboard players add @n[tag=$(tagg)] gen_fuel 1

$execute as @e[tag=$(tagg),scores={shown=1}] positioned as @s if entity @n[type=item,nbt={Item:{id:"minecraft:coal"}},distance=..1.1] run kill @n[type=minecraft:text_display]
$execute as @e[tag=$(tagg),scores={shown=1}] positioned as @s if entity @n[type=item,nbt={Item:{id:"minecraft:coal"}},distance=..1.1] run scoreboard players set @s shown 0

$execute as @e[tag=$(tagg)] positioned as @s if entity @n[type=item,nbt={Item:{id:"minecraft:coal"}},distance=..1.1] run kill @n[type=item,nbt={Item:{id:"minecraft:coal"}}]

$execute at @e[tag=$(tagg),scores={gen_fuel=0,shown=0}] run summon minecraft:text_display ~ ~1 ~ {billboard:"center",text:'{"text":"needs coal!"}'}
$execute as @e[tag=$(tagg),scores={gen_fuel=0,shown=0}] run scoreboard players set @s shown 1