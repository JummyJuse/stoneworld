$scoreboard players set $strength player_motion.api.launch $(power)
tp @p ^ ^ ^4 facing ^ ^2 ^7
execute as @p rotated as @p run function player_motion:api/launch_looking
particle minecraft:explosion
playsound minecraft:entity.generic.explode block @a ~ ~ ~
tag @p add shot
effect give @p jump_boost infinite 255 true