scoreboard players set -x0 LABYRINTH 0
scoreboard players set -y0 LABYRINTH 0
scoreboard players set x0 LABYRINTH 0
scoreboard players set y0 LABYRINTH 0

scoreboard players set -x1 LABYRINTH 0
scoreboard players set -y1 LABYRINTH 0
scoreboard players set x1 LABYRINTH 0
scoreboard players set y1 LABYRINTH 0

execute as @e[type=armor_stand,tag=Terrain] at @s if block ~-3 ~ ~ air unless block ~-3 ~1 ~ grass_block run function terrain:-x0
execute as @e[type=armor_stand,tag=Terrain] at @s if block ~-3 ~ ~ grass_block unless block ~-3 ~1 ~ grass_block run scoreboard players set -x0 LABYRINTH 1


execute as @e[type=armor_stand,tag=Terrain] at @s if block ~ ~ ~-3 air unless block ~ ~1 ~-3 grass_block run function terrain:-y0
execute as @e[type=armor_stand,tag=Terrain] at @s if block ~ ~ ~-3 grass_block unless block ~ ~1 ~-3 grass_block run scoreboard players set -y0 LABYRINTH 1

execute as @e[type=armor_stand,tag=Terrain] at @s if block ~3 ~ ~ air unless block ~3 ~1 ~ grass_block run function terrain:x0
execute as @e[type=armor_stand,tag=Terrain] at @s if block ~3 ~ ~ grass_block unless block ~3 ~1 ~ grass_block run scoreboard players set x0 LABYRINTH 1

execute as @e[type=armor_stand,tag=Terrain] at @s if block ~ ~ ~3 air unless block ~ ~1 ~3 grass_block run function terrain:y0
execute as @e[type=armor_stand,tag=Terrain] at @s if block ~ ~ ~3 grass_block unless block ~ ~1 ~3 grass_block run scoreboard players set y0 LABYRINTH 1


execute as @e[type=armor_stand,tag=Terrain] at @s if block ~-3 ~1 ~ air unless block ~-3 ~ ~ grass_block run function terrain:-x1
execute as @e[type=armor_stand,tag=Terrain] at @s if block ~-3 ~1 ~ grass_block unless block ~-3 ~ ~ grass_block run scoreboard players set -x1 LABYRINTH 1

execute as @e[type=armor_stand,tag=Terrain] at @s if block ~ ~1 ~-3 air unless block ~ ~ ~-3 grass_block run function terrain:-y1
execute as @e[type=armor_stand,tag=Terrain] at @s if block ~ ~1 ~-3 grass_block unless block ~ ~ ~-3 grass_block run scoreboard players set -y1 LABYRINTH 1

execute as @e[type=armor_stand,tag=Terrain] at @s if block ~3 ~1 ~ air unless block ~3 ~ ~ grass_block run function terrain:x1
execute as @e[type=armor_stand,tag=Terrain] at @s if block ~3 ~1 ~ grass_block unless block ~3 ~ ~ grass_block run scoreboard players set x1 LABYRINTH 1

execute as @e[type=armor_stand,tag=Terrain] at @s if block ~ ~1 ~3 air unless block ~ ~ ~3 grass_block run function terrain:y1
execute as @e[type=armor_stand,tag=Terrain] at @s if block ~ ~1 ~3 grass_block unless block ~ ~ ~3 grass_block run scoreboard players set y1 LABYRINTH 1

scoreboard players set TerrainType LABYRINTH 0
execute if score -x1 LABYRINTH matches 1 run scoreboard players add TerrainType LABYRINTH 1000
execute if score -y1 LABYRINTH matches 1 run scoreboard players add TerrainType LABYRINTH 100
execute if score x1 LABYRINTH matches 1 run scoreboard players add TerrainType LABYRINTH 10
execute if score y1 LABYRINTH matches 1 run scoreboard players add TerrainType LABYRINTH 1

execute as @e[type=armor_stand,tag=Terrain] at @s run function terrain:collapse