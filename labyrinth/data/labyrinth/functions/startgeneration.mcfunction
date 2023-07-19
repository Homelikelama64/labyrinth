kill @e[tag=Cell]
execute align xyz run summon armor_stand ~10 ~ 10 {Tags:[BEGIN],NoAI:1,NoGravity:1,Invulnerable:1}

scoreboard players set CHUNKX LABYRINTH 0
scoreboard players set CHUNKY LABYRINTH 1
scoreboard players set CELLXPOS LABYRINTH 0
scoreboard players set CELLYPOS LABYRINTH 1
scoreboard players set OFFSET LABYRINTH 0
scoreboard players set CELLOFFSET LABYRINTH 0


scoreboard players operation CUNKSPACING LABYRINTH = CHUNKSIZEX LABYRINTH
scoreboard players operation CUNKSPACING LABYRINTH *= WALLSPACING LABYRINTH
scoreboard players operation CUNKSPACING LABYRINTH += WALLSPACING LABYRINTH

scoreboard players operation CUNKSPACINGY LABYRINTH = CHUNKSIZEY LABYRINTH
scoreboard players operation CUNKSPACINGY LABYRINTH *= WALLSPACING LABYRINTH
scoreboard players operation CUNKSPACINGY LABYRINTH += WALLSPACING LABYRINTH

scoreboard players operation CunkSize LABYRINTH = CHUNKSIZEX LABYRINTH
scoreboard players operation CunkSize LABYRINTH *= WALLSPACING LABYRINTH
scoreboard players operation CunkSize LABYRINTH += WALLSPACING LABYRINTH

scoreboard players operation CHUNKSIZEY-MOD LABYRINTH = CHUNKSIZEY LABYRINTH
scoreboard players operation CHUNKSIZEY-MOD LABYRINTH *= #2 LABYRINTH
scoreboard players operation CHUNKSIZEY-MOD LABYRINTH += #2 LABYRINTH

scoreboard players set #2 LABYRINTH 2

scoreboard players operation OFFSETSIZE LABYRINTH = WALLSPACING LABYRINTH
scoreboard players operation OFFSETSIZE LABYRINTH /= #2 LABYRINTH
scoreboard players operation OFFSETSIZE LABYRINTH /= #1 LABYRINTH

scoreboard players operation MAPSCALE LABYRINTH = CUNKSPACING LABYRINTH
scoreboard players operation MAPSCALE LABYRINTH *= MAPSIZEX LABYRINTH

scoreboard players operation MAPSCALEY LABYRINTH = CUNKSPACINGY LABYRINTH
scoreboard players operation MAPSCALEY LABYRINTH *= MAPSIZEY LABYRINTH

execute as @e[tag=BEGIN] at @s run fill ~-6 3 ~-6 ~120 ~10 ~120 air

function labyrinth:chunks