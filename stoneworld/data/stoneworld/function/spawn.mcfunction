recipe give @s stoneworld:copper_drill
recipe give @s stoneworld:diamond_drill
recipe give @s stoneworld:divine_drill
recipe give @s stoneworld:sand_from_sandstone_with_stonecutter

tp @s 0 0 0
particle minecraft:explosion ~ ~ ~
playsound minecraft:entity.generic.explode block @a ~ ~ ~
spawnpoint @s 0 0 0