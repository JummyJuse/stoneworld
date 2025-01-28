execute as @a at @s anchored eyes if items entity @s weapon.mainhand *[minecraft:custom_data~{dp:1}] run summon armor_stand ^ ^ ^1 {Invisible:true,Marker:true,Tags:["center"]}

execute as @e[type=armor_stand,tag=center] at @s if block ~-1 ~-1 ~-1 #allow_break run setblock ~-1 ~-1 ~-1 air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~-1 ~-1 ~ #allow_break run setblock ~-1 ~-1 ~ air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~-1 ~-1 ~1 #allow_break run setblock ~-1 ~-1 ~1 air destroy

execute as @e[type=armor_stand,tag=center] at @s if block ~-1 ~ ~-1 #allow_break run setblock ~-1 ~ ~-1 air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~-1 ~ ~ #allow_break run setblock ~-1 ~ ~ air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~-1 ~ ~1 #allow_break run setblock ~-1 ~ ~1 air destroy

execute as @e[type=armor_stand,tag=center] at @s if block ~-1 ~1 ~-1 #allow_break run setblock ~-1 ~1 ~-1 air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~-1 ~1 ~ #allow_break run setblock ~-1 ~1 ~ air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~-1 ~1 ~1 #allow_break run setblock ~-1 ~1 ~1 air destroy

execute as @e[type=armor_stand,tag=center] at @s if block ~ ~-1 ~-1 #allow_break run setblock ~ ~-1 ~-1 air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~ ~-1 ~ #allow_break run setblock ~ ~-1 ~ air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~ ~-1 ~1 #allow_break run setblock ~ ~-1 ~1 air destroy

execute as @e[type=armor_stand,tag=center] at @s if block ~ ~ ~-1 #allow_break run setblock ~ ~ ~-1 air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~ ~ ~ #allow_break run setblock ~ ~ ~ air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~ ~ ~1 #allow_break run setblock ~ ~ ~1 air destroy

execute as @e[type=armor_stand,tag=center] at @s if block ~ ~1 ~-1 #allow_break run setblock ~ ~1 ~-1 air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~ ~1 ~ #allow_break run setblock ~ ~1 ~ air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~ ~1 ~1 #allow_break run setblock ~ ~1 ~1 air destroy

execute as @e[type=armor_stand,tag=center] at @s if block ~1 ~-1 ~-1 #allow_break run setblock ~1 ~-1 ~-1 air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~1 ~-1 ~ #allow_break run setblock ~1 ~-1 ~ air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~1 ~-1 ~1 #allow_break run setblock ~1 ~-1 ~1 air destroy

execute as @e[type=armor_stand,tag=center] at @s if block ~1 ~ ~-1 #allow_break run setblock ~1 ~ ~-1 air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~1 ~ ~ #allow_break run setblock ~1 ~ ~ air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~1 ~ ~1 #allow_break run setblock ~1 ~ ~1 air destroy

execute as @e[type=armor_stand,tag=center] at @s if block ~1 ~1 ~-1 #allow_break run setblock ~1 ~1 ~-1 air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~1 ~1 ~ #allow_break run setblock ~1 ~1 ~ air destroy
execute as @e[type=armor_stand,tag=center] at @s if block ~1 ~1 ~1 #allow_break run setblock ~1 ~1 ~1 air destroy

kill @e[type=armor_stand,tag=center]