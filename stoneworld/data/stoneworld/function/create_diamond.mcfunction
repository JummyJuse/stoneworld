execute align zyx positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:[diamond_gen],data: {t:diamond,l:diamond,g:diamond_gen}}
scoreboard players set @n[tag=diamond_gen] timer 1
scoreboard players set @n[tag=diamond_gen] shown 0
setblock ~ ~ ~ air