execute as @s at @s anchored eyes if items entity @s weapon.mainhand *[minecraft:custom_data~{dp:1}] run summon armor_stand ^ ^ ^2 {Invisible:true,Marker:true,Tags:["center"]}

execute positioned as @n[type=armor_stand,tag=center] positioned as @n[type=item] rotated 0.0 0.0 if entity @s[x_rotation=-70..70] if entity @s[y_rotation=-45..45] run function stoneworld:destroy_3x3_macro
execute positioned as @n[type=armor_stand,tag=center] positioned as @n[type=item] rotated 90 0.0 if entity @s[x_rotation=-70..70] if entity @s[y_rotation=45..135] run function stoneworld:destroy_3x3_macro
execute positioned as @n[type=armor_stand,tag=center] positioned as @n[type=item] rotated -90 0.0 if entity @s[x_rotation=-70..70] if entity @s[y_rotation=-135..-45] run function stoneworld:destroy_3x3_macro
execute positioned as @n[type=armor_stand,tag=center] positioned as @n[type=item] rotated 180 0.0 if entity @s[x_rotation=-70..70] if entity @s[y_rotation=-225..-135] run function stoneworld:destroy_3x3_macro

execute positioned as @n[type=armor_stand,tag=center] positioned as @n[type=item] rotated 0.0 90.0 if entity @s[x_rotation=70..90] if entity @s[y_rotation=-45..45] run function stoneworld:destroy_3x3_macro
execute positioned as @n[type=armor_stand,tag=center] positioned as @n[type=item] rotated 90 90.0 if entity @s[x_rotation=70..90] if entity @s[y_rotation=45..135] run function stoneworld:destroy_3x3_macro
execute positioned as @n[type=armor_stand,tag=center] positioned as @n[type=item] rotated -90 90.0 if entity @s[x_rotation=70..90] if entity @s[y_rotation=-135..-45] run function stoneworld:destroy_3x3_macro
execute positioned as @n[type=armor_stand,tag=center] positioned as @n[type=item] rotated 180 90.0 if entity @s[x_rotation=70..90] if entity @s[y_rotation=-225..-135] run function stoneworld:destroy_3x3_macro

execute positioned as @n[type=armor_stand,tag=center] positioned as @n[type=item] rotated 0.0 -90.0 if entity @s[x_rotation=-90..-70] if entity @s[y_rotation=-45..45] run function stoneworld:destroy_3x3_macro
execute positioned as @n[type=armor_stand,tag=center] positioned as @n[type=item] rotated 90 -90.0 if entity @s[x_rotation=-90..-70] if entity @s[y_rotation=45..135] run function stoneworld:destroy_3x3_macro
execute positioned as @n[type=armor_stand,tag=center] positioned as @n[type=item] rotated -90 -90.0 if entity @s[x_rotation=-90..-70] if entity @s[y_rotation=-135..-45] run function stoneworld:destroy_3x3_macro
execute positioned as @n[type=armor_stand,tag=center] positioned as @n[type=item] rotated 180 -90.0 if entity @s[x_rotation=-90..-70] if entity @s[y_rotation=-225..-135] run function stoneworld:destroy_3x3_macro
kill @n[type=armor_stand,tag=center]