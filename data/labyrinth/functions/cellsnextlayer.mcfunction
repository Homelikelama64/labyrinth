
execute store result storage jankteleport xaxis double 0.01 run data get entity @e[tag=BEGIN,limit=1] Pos[0] 100
execute store result score Xjankteleport LABYRINTH run data get storage minecraft:jankteleport xaxis
scoreboard players operation Xjankteleport LABYRINTH -= CUNKSPACING LABYRINTH
execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport LABYRINTH
data modify entity @e[tag=BEGIN,limit=1] Pos[0] set from storage jankteleport xaxis

execute if score CELLOFFSET LABYRINTH matches 0 run scoreboard players set CELLOFFSETTOGGLE LABYRINTH 0
execute if score CELLOFFSET LABYRINTH matches 1 run scoreboard players set CELLOFFSETTOGGLE LABYRINTH 1

execute if score CELLOFFSETTOGGLE LABYRINTH matches 0 run execute store result storage jankteleport xaxis double 0.01 run data get entity @e[tag=BEGIN,limit=1] Pos[0] 100
execute if score CELLOFFSETTOGGLE LABYRINTH matches 0 run execute store result score Xjankteleport LABYRINTH run data get storage minecraft:jankteleport xaxis
execute if score CELLOFFSETTOGGLE LABYRINTH matches 0 run scoreboard players operation Xjankteleport LABYRINTH -= OFFSETSIZE LABYRINTH
execute if score CELLOFFSETTOGGLE LABYRINTH matches 0 run execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport LABYRINTH
execute if score CELLOFFSETTOGGLE LABYRINTH matches 0 run data modify entity @e[tag=BEGIN,limit=1] Pos[0] set from storage jankteleport xaxis

execute if score CELLOFFSETTOGGLE LABYRINTH matches 1 run execute store result storage jankteleport xaxis double 0.01 run data get entity @e[tag=BEGIN,limit=1] Pos[0] 100
execute if score CELLOFFSETTOGGLE LABYRINTH matches 1 run execute store result score Xjankteleport LABYRINTH run data get storage minecraft:jankteleport xaxis
execute if score CELLOFFSETTOGGLE LABYRINTH matches 1 run scoreboard players operation Xjankteleport LABYRINTH += OFFSETSIZE LABYRINTH
execute if score CELLOFFSETTOGGLE LABYRINTH matches 1 run execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport LABYRINTH
execute if score CELLOFFSETTOGGLE LABYRINTH matches 1 run data modify entity @e[tag=BEGIN,limit=1] Pos[0] set from storage jankteleport xaxis

execute if score CELLOFFSETTOGGLE LABYRINTH matches 1 run scoreboard players set CELLOFFSET LABYRINTH 0
execute if score CELLOFFSETTOGGLE LABYRINTH matches 0 run scoreboard players set CELLOFFSET LABYRINTH 1