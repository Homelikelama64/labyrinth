tag @e[type=armor_stand,tag=Cell,tag=!Using,tag=!loop,limit=1] add Using

scoreboard players set Point1X Fill 0
scoreboard players set Point1Y Fill 3
scoreboard players set Point1Z Fill 0

scoreboard players set Point2X Fill 0
scoreboard players set Point2Y Fill 10
scoreboard players set Point2Z Fill 0

scoreboard players operation Point1X Fill -= WALLSPACING LABYRINTH
scoreboard players operation Point1Z Fill -= WALLSPACING LABYRINTH

scoreboard players operation Point2X Fill += CUNKSPACINGX LABYRINTH
scoreboard players operation Point2Z Fill += CUNKSPACINGY LABYRINTH

execute as @e[type=armor_stand,tag=Cell] at @s run function fill:reletivefill

tag @e[type=armor_stand,tag=Cell,tag=Using] add loop
tag @e[type=armor_stand,tag=Cell,tag=Using,tag=loop] remove Using
scoreboard players set NotLooped LABYRINTH 0
execute as @e[type=armor_stand,tag=Cell,tag=!loop] run scoreboard players add NotLooped LABYRINTH 1

execute if score NotLooped LABYRINTH matches 1.. run function labyrinth:clear
execute if score NotLooped LABYRINTH matches 0 run tag @e[type=armor_stand] remove loop

