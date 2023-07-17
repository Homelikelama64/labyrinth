tag @e[type=armor_stand,tag=Cell,tag=!Using,tag=!loop,limit=1] add Using

tellraw @a "reset"


execute store result storage jankteleport xaxis double 0.01 run data get entity @e[type=armor_stand,tag=Cell,tag=Using,limit=1] Pos[0] 100
execute store result score Xjankteleport LABYRINTH run data get storage minecraft:jankteleport xaxis
scoreboard players operation Xjankteleport LABYRINTH -= CUNKSPACING LABYRINTH
execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport LABYRINTH
data modify entity @e[type=armor_stand,tag=Cell,tag=Using,limit=1] Pos[0] set from storage jankteleport xaxis

execute if score CELLOFFSET LABYRINTH matches 0 run scoreboard players set CELLOFFSETTOGGLE LABYRINTH 0
execute if score CELLOFFSET LABYRINTH matches 1 run scoreboard players set CELLOFFSETTOGGLE LABYRINTH 1

execute if score CELLOFFSETTOGGLE LABYRINTH matches 0 run execute store result storage jankteleport xaxis double 0.01 run data get entity @e[type=armor_stand,tag=Cell,tag=Using,limit=1] Pos[0] 100
execute if score CELLOFFSETTOGGLE LABYRINTH matches 0 run execute store result score Xjankteleport LABYRINTH run data get storage minecraft:jankteleport xaxis
execute if score CELLOFFSETTOGGLE LABYRINTH matches 0 run scoreboard players operation Xjankteleport LABYRINTH -= OFFSETSIZE LABYRINTH
execute if score CELLOFFSETTOGGLE LABYRINTH matches 0 run execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport LABYRINTH
execute if score CELLOFFSETTOGGLE LABYRINTH matches 0 run data modify entity @e[type=armor_stand,tag=Cell,tag=Using,limit=1] Pos[0] set from storage jankteleport xaxis

execute if score CELLOFFSETTOGGLE LABYRINTH matches 1 run execute store result storage jankteleport xaxis double 0.01 run data get entity @e[type=armor_stand,tag=Cell,tag=Using,limit=1] Pos[0] 100
execute if score CELLOFFSETTOGGLE LABYRINTH matches 1 run execute store result score Xjankteleport LABYRINTH run data get storage minecraft:jankteleport xaxis
execute if score CELLOFFSETTOGGLE LABYRINTH matches 1 run scoreboard players operation Xjankteleport LABYRINTH += OFFSETSIZE LABYRINTH
execute if score CELLOFFSETTOGGLE LABYRINTH matches 1 run execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport LABYRINTH
execute if score CELLOFFSETTOGGLE LABYRINTH matches 1 run data modify entity @e[type=armor_stand,tag=Cell,tag=Using,limit=1] Pos[0] set from storage jankteleport xaxis

execute if score CELLOFFSETTOGGLE LABYRINTH matches 1 run scoreboard players set CELLOFFSET LABYRINTH 0
execute if score CELLOFFSETTOGGLE LABYRINTH matches 0 run scoreboard players set CELLOFFSET LABYRINTH 1

execute store result storage jankteleport Yaxis double 0.01 run data get entity @e[type=armor_stand,tag=Cell,tag=Using,limit=1] Pos[2] 100
execute store result score Yjankteleport LABYRINTH run data get storage minecraft:jankteleport Yaxis
scoreboard players operation Yjankteleport LABYRINTH += WALLSPACING LABYRINTH
execute store result storage jankteleport Yaxis double 1 run scoreboard players get Yjankteleport LABYRINTH
data modify entity @e[type=armor_stand,tag=Cell,tag=Using,limit=1] Pos[2] set from storage jankteleport Yaxis

tag @e[type=armor_stand,tag=Cell,tag=Using] add loop
tag @e[type=armor_stand,tag=Cell,tag=Using,tag=loop] remove Using
scoreboard players set NotLooped LABYRINTH 0
execute as @e[type=armor_stand,tag=Cell,tag=!loop] run scoreboard players add NotLooped LABYRINTH 1

execute if score NotLooped LABYRINTH matches 1.. run function labyrinth:cellsresetloopthrougharmorstands
execute if score NotLooped LABYRINTH matches 0 run tag @e[type=armor_stand] remove loop