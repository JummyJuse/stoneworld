$execute positioned as @s if entity @s[y_rotation=-45..45] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:[cannon],Rotation:[0f,0f],data: {power:$(power)}}
$execute positioned as @s if entity @s[y_rotation=45..135] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:[cannon],Rotation:[90f,0f],data: {power:$(power)}}
$execute positioned as @s if entity @s[y_rotation=-135..-45] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:[cannon],Rotation:[-90f,0f],data: {power:$(power)}}
$execute positioned as @s if entity @s[y_rotation=-225..-135] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:[cannon],Rotation:[180f,0f],data: {power:$(power)}}