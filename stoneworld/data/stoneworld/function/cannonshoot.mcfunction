scoreboard players set $strength player_motion.api.launch 40000
tp @p ~ ~ ~ facing ^ ^2 ^3
execute as @p rotated as @p run function player_motion:api/launch_looking
particle minecraft:explosion
playsound minecraft:entity.generic.explode block @a ~ ~ ~
tag @p add shot
effect give @s jump_boost infinite 255 true