execute align zyx positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Tags:[overworld_gen],data: {t:overworld,l:overworld_blocks,g:overworld_gen}}
scoreboard players set @n[tag=overworld_gen] timer 1
scoreboard players add @n[tag=overworld_gen] shown 0
scoreboard players add @n[tag=overworld_gen] gen_fuel 0
setblock ~ ~ ~ air