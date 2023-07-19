scoreboard players add Zpos Fill 1

execute store result storage jankteleport xaxis double 0.01 run data get entity @e[type=armor_stand,limit=1,tag=Clear,tag=fill] Pos[0] 100
execute store result score Xjankteleport Fill run data get storage minecraft:jankteleport xaxis
scoreboard players operation Xjankteleport Fill -= rowreset Fill
execute store result storage jankteleport xaxis double 1 run scoreboard players get Xjankteleport Fill
data modify entity @e[type=armor_stand,limit=1,tag=Clear,tag=fill] Pos[0] set from storage jankteleport xaxis


execute as @e[type=armor_stand,limit=1,tag=Clear,tag=fill] at @s run tp ~ ~ ~1
scoreboard players set Xpos Fill 0
function fill:row