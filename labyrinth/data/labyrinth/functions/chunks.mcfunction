scoreboard players add CHUNKX LABYRINTH 1
tellraw @a "HI"

execute as @e[tag=BEGIN,limit=1] at @s run summon armor_stand ~ ~ ~ {Tags:[Cell],NoAI:1,NoGravity:1,Invulnerable:1}

execute store result storage jankteleport xaxis double 0.01 run data get entity @e[tag=BEGIN,limit=1] Pos[0] 100
execute store result score Xjankteleport LABYRINTH run data get storage minecraft:jankteleport xaxis
scoreboard players operation Xjankteleport LABYRINTH += CUNKSPACING LABYRINTH
execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport LABYRINTH
data modify entity @e[tag=BEGIN,limit=1] Pos[0] set from storage jankteleport xaxis

execute if score MAPSIZEX LABYRINTH = CHUNKX LABYRINTH if score MAPSIZEY LABYRINTH > CHUNKY LABYRINTH run function labyrinth:cunksnextrow 
execute if score MAPSIZEX LABYRINTH > CHUNKX LABYRINTH run function labyrinth:chunks

execute if score MAPSIZEX LABYRINTH = CHUNKX LABYRINTH if score MAPSIZEY LABYRINTH = CHUNKY LABYRINTH run kill @e[tag=BEGIN]

