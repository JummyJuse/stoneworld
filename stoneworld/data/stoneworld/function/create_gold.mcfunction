execute align zyx positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:[gold_gen],data: {t:gold,l:gold,g:gold_gen}}
scoreboard players set @n[tag=gold_gen] timer 1
scoreboard players set @n[tag=gold_gen] shown 0
scoreboard players add @n[tag=gold_gen] gen_fuel 0
setblock ~ ~ ~ air