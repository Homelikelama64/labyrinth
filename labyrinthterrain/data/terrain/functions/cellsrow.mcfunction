scoreboard players add terrainX LABYRINTH 1


function terrain:checkblocks
execute as @e[type=armor_stand,tag=Terrain] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[type=armor_stand,tag=Terrain] at @s run tp ~5 ~ ~

execute if score terrainsizex LABYRINTH < terrainX LABYRINTH if score terrainsizey LABYRINTH > terrainY LABYRINTH run function terrain:cellscollum
execute if score terrainsizex LABYRINTH >= terrainX LABYRINTH run function terrain:cellsrow
execute if score terrainsizex LABYRINTH <= terrainX LABYRINTH if score terrainsizey LABYRINTH <= terrainY LABYRINTH run kill @e[type=armor_stand,tag=Terrain]
execute if score terrainsizex LABYRINTH <= terrainX LABYRINTH if score terrainsizey LABYRINTH <= terrainY LABYRINTH positioned 0 0 0 run schedule function labyrinth:chunks 1t