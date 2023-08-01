kill @e[tag=Terrain]
execute align xyz run summon armor_stand ~5 ~ ~5 {Tags:[Terrain],NoAI:1,NoGravity:1,Invulnerable:1}

scoreboard players set terrainX LABYRINTH 0
scoreboard players set terrainY LABYRINTH 0

scoreboard players operation terrainsizex LABYRINTH = WALLSPACING LABYRINTH
scoreboard players operation terrainsizex LABYRINTH *= CHUNKSIZEX LABYRINTH
scoreboard players operation terrainsizex LABYRINTH *= MAPSIZEX LABYRINTH
scoreboard players set #5 LABYRINTH 5
scoreboard players operation terrainsizex LABYRINTH /= #5 LABYRINTH

scoreboard players operation terrainsizey LABYRINTH = WALLSPACING LABYRINTH
scoreboard players operation terrainsizey LABYRINTH *= CHUNKSIZEY LABYRINTH
scoreboard players operation terrainsizey LABYRINTH *= MAPSIZEY LABYRINTH
scoreboard players set #5 LABYRINTH 5
scoreboard players operation terrainsizey LABYRINTH /= #5 LABYRINTH

function terrain:cellsrow