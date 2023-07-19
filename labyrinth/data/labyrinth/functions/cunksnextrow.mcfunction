



execute store result storage jankteleport xaxis double 0.01 run data get entity @e[tag=BEGIN,limit=1] Pos[0] 100
execute store result score Xjankteleport LABYRINTH run data get storage minecraft:jankteleport xaxis
scoreboard players operation Xjankteleport LABYRINTH -= MAPSCALE LABYRINTH
execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport LABYRINTH
data modify entity @e[tag=BEGIN,limit=1] Pos[0] set from storage jankteleport xaxis

#execute if score OFFSET LABYRINTH matches 0 run scoreboard players set OFFSETTOGGLE LABYRINTH 0
#execute if score OFFSET LABYRINTH matches 1 run scoreboard players set OFFSETTOGGLE LABYRINTH 1
#
#execute if score OFFSETTOGGLE LABYRINTH matches 0 run execute store result storage jankteleport xaxis double 0.01 run data get entity @e[tag=BEGIN,limit=1] Pos[0] 100
#execute if score OFFSETTOGGLE LABYRINTH matches 0 run execute store result score Xjankteleport LABYRINTH run data get storage minecraft:jankteleport xaxis
#execute if score OFFSETTOGGLE LABYRINTH matches 0 run scoreboard players operation Xjankteleport LABYRINTH -= OFFSETSIZE LABYRINTH
#execute if score OFFSETTOGGLE LABYRINTH matches 0 run execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport LABYRINTH
#execute if score OFFSETTOGGLE LABYRINTH matches 0 run data modify entity @e[tag=BEGIN,limit=1] Pos[0] set from storage jankteleport xaxis
#
#execute if score OFFSETTOGGLE LABYRINTH matches 1 run execute store result storage jankteleport xaxis double 0.01 run data get entity @e[tag=BEGIN,limit=1] Pos[0] 100
#execute if score OFFSETTOGGLE LABYRINTH matches 1 run execute store result score Xjankteleport LABYRINTH run data get storage minecraft:jankteleport xaxis
#execute if score OFFSETTOGGLE LABYRINTH matches 1 run scoreboard players operation Xjankteleport LABYRINTH += OFFSETSIZE LABYRINTH
#execute if score OFFSETTOGGLE LABYRINTH matches 1 run execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport LABYRINTH
#execute if score OFFSETTOGGLE LABYRINTH matches 1 run data modify entity @e[tag=BEGIN,limit=1] Pos[0] set from storage jankteleport xaxis
#
#execute if score OFFSETTOGGLE LABYRINTH matches 1 run scoreboard players set OFFSET LABYRINTH 0
#execute if score OFFSETTOGGLE LABYRINTH matches 0 run scoreboard players set OFFSET LABYRINTH 1

execute store result storage jankteleport Yaxis double 0.01 run data get entity @e[tag=BEGIN,limit=1] Pos[2] 100
execute store result score Yjankteleport LABYRINTH run data get storage minecraft:jankteleport Yaxis
scoreboard players operation Yjankteleport LABYRINTH += CUNKSPACINGY LABYRINTH
execute store result storage jankteleport Yaxis double 1 run scoreboard players get Yjankteleport LABYRINTH
data modify entity @e[tag=BEGIN,limit=1] Pos[2] set from storage jankteleport Yaxis


scoreboard players set CHUNKX LABYRINTH 0
scoreboard players add CHUNKY LABYRINTH 1
function labyrinth:chunks