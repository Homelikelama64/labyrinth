tag @e[type=armor_stand,tag=Cell,tag=!Using,tag=!loop,limit=1] add Using

tellraw @a "loop"

execute as @e[type=armor_stand,tag=Cell,tag=Using] at @s run function labyrinth:walls


execute store result storage jankteleport xaxis double 0.01 run data get entity @e[type=armor_stand,tag=Cell,tag=Using,limit=1] Pos[0] 100
execute store result score Xjankteleport LABYRINTH run data get storage minecraft:jankteleport xaxis
scoreboard players operation Xjankteleport LABYRINTH += WALLSPACING LABYRINTH
execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport LABYRINTH
data modify entity @e[type=armor_stand,tag=Cell,tag=Using,limit=1] Pos[0] set from storage jankteleport xaxis



tag @e[type=armor_stand,tag=Cell,tag=Using] add loop
tag @e[type=armor_stand,tag=Cell,tag=Using,tag=loop] remove Using
scoreboard players set NotLooped LABYRINTH 0
execute as @e[type=armor_stand,tag=Cell,tag=!loop] run scoreboard players add NotLooped LABYRINTH 1

execute if score NotLooped LABYRINTH matches 1.. run function labyrinth:loopthrougharmorstands
execute if score NotLooped LABYRINTH matches 0 run tag @e[type=armor_stand] remove loop