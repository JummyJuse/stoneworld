scoreboard objectives add timer dummy
scoreboard objectives add gen_fuel dummy
scoreboard objectives add shown dummy
scoreboard objectives add drill minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add divine minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add loottimer dummy
scoreboard objectives add lootrefresh dummy
scoreboard players set loot_global_timer loottimer 0
scoreboard players set loot_global_timer lootrefresh 0
schedule function stoneworld:lootbox_15s 15s

say loaded