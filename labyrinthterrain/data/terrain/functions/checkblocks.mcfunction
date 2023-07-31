scoreboard players set -x0 LABYRINTH 0
scoreboard players set -y0 LABYRINTH 0
scoreboard players set x0 LABYRINTH 0
scoreboard players set y0 LABYRINTH 0

scoreboard players set -x1 LABYRINTH 0
scoreboard players set -y1 LABYRINTH 0
scoreboard players set x1 LABYRINTH 0
scoreboard players set y1 LABYRINTH 0

execute as @e[type=armor_stand,tag=Test] at @s if block ~-3 ~ ~ grass_block run scoreboard players set -x0 LABYRINTH 1
execute as @e[type=armor_stand,tag=Test] at @s if block ~3 ~ ~ grass_block run scoreboard players set x0 LABYRINTH 1
execute as @e[type=armor_stand,tag=Test] at @s if block ~ ~ ~-3 grass_block run scoreboard players set -y0 LABYRINTH 1
execute as @e[type=armor_stand,tag=Test] at @s if block ~ ~ ~3 grass_block run scoreboard players set y0 LABYRINTH 1

execute as @e[type=armor_stand,tag=Test] at @s if block ~-3 ~1 ~ grass_block run scoreboard players set -x1 LABYRINTH 1
execute as @e[type=armor_stand,tag=Test] at @s if block ~3 ~1 ~ grass_block run scoreboard players set x1 LABYRINTH 1
execute as @e[type=armor_stand,tag=Test] at @s if block ~ ~1 ~-3 grass_block run scoreboard players set -y1 LABYRINTH 1
execute as @e[type=armor_stand,tag=Test] at @s if block ~ ~1 ~3 grass_block run scoreboard players set y1 LABYRINTH 1

execute as @e[type=armor_stand,tag=Test] at @s run function terrain:collapse