execute align zyx positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:[iron_gen],data: {t:iron,l:iron,g:iron_gen}}
scoreboard players set @n[tag=iron_gen] timer 1
scoreboard players set @n[tag=iron_gen] shown 0
scoreboard players add @n[tag=iron_gen] gen_fuel 0
setblock ~ ~ ~ air