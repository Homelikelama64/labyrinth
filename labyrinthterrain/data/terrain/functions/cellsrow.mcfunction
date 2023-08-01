scoreboard players add terrainX LABYRINTH 1


function terrain:checkblocks
execute as @e[type=armor_stand,tag=Terrain] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[type=armor_stand,tag=Terrain] at @s run tp ~5 ~ ~

execute if score terrainsizex LABYRINTH < terrainX LABYRINTH if score CHUNKSIZEY-MOD LABYRINTH > terrainY LABYRINTH run function terrain:cellsnextlayer
execute if score terrainsizex LABYRINTH >= terrainX LABYRINTH run function terrain:cellsrow