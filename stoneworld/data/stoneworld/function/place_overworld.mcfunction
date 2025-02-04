$summon minecraft:chest_minecart ~ ~ ~ {Tags:[$(tagg)]}

$loot replace entity @n[type=chest_minecart,tag=$(tagg)] container.0 loot stoneworld:$(loott)
$data modify storage stoneworld:block text set from entity @n[type=chest_minecart,tag=$(tagg)] Items[{Slot:0b}].id
data modify storage stoneworld:block nbt set value "{}"
$data modify storage stoneworld:block nbt set from entity @n[type=chest_minecart,tag=$(tagg)] Items[{Slot:0b}].components."minecraft:custom_data".a
function stoneworld:place with storage stoneworld:block
$item replace entity @n[type=chest_minecart,tag=$(tagg)] container.0 with air
$kill @n[type=chest_minecart,tag=$(tagg)]
$scoreboard players set @n[tag=$(gentag)] timer 0
particle minecraft:composter ~ ~ ~ 0.5 0.5 0.5 1 20
playsound minecraft:entity.illusioner.cast_spell block @a ~ ~ ~