execute store result storage jankteleport xaxis double 0.01 run data get entity @e[tag=Terrain,limit=1] Pos[0] 100
execute store result score Xjankteleport LABYRINTH run data get storage minecraft:jankteleport xaxis
scoreboard players operation Xjankteleport LABYRINTH -= terrainsizexinblocks LABYRINTH
execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport LABYRINTH
data modify entity @e[tag=Terrain,limit=1] Pos[0] set from storage jankteleport xaxis

execute store result storage jankteleport xaxis double 0.01 run data get entity @e[tag=Terrain,limit=1] Pos[0] 100
execute store result score Xjankteleport LABYRINTH run data get storage minecraft:jankteleport xaxis
scoreboard players operation Xjankteleport LABYRINTH -= #5 LABYRINTH
execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport LABYRINTH
data modify entity @e[tag=Terrain,limit=1] Pos[0] set from storage jankteleport xaxis

execute as @e[tag=Terrain,limit=1] at @s run tp ~ ~ ~5

scoreboard players add terrainY LABYRINTH 1
scoreboard players set terrainX LABYRINTH 0
function terrain:cellsrow