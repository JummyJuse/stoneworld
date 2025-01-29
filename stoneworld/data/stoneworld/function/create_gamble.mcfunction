execute align zyx positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:[gamble_gen],data: {t:gamble,l:gamble,g:gamble_gen}}
scoreboard players set @n[tag=gamble_gen] timer 1
scoreboard players set @n[tag=gamble_gen] shown 0
setblock ~ ~ ~ air