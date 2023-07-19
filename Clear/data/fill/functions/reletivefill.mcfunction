scoreboard players operation Point1X-mod Fill = Point1X Fill
scoreboard players operation Point1Y-mod Fill = Point1Y Fill
scoreboard players operation Point1Z-mod Fill = Point1Z Fill

scoreboard players operation Point2X-mod Fill = Point2X Fill
scoreboard players operation Point2Y-mod Fill = Point2Y Fill
scoreboard players operation Point2Z-mod Fill = Point2Z Fill

execute store result storage jankfill xcoord double 0.01 run data get entity @s Pos[0] 100
execute store result score reletiveXcoord Fill run data get storage jankfill xcoord
scoreboard players operation Point1X-mod Fill += reletiveXcoord Fill
scoreboard players operation Point2X-mod Fill += reletiveXcoord Fill

execute store result storage jankfill ycoord double 0.01 run data get entity @s Pos[1] 100
execute store result score reletiveycoord Fill run data get storage jankfill ycoord
scoreboard players operation Point1Y-mod Fill += reletiveycoord Fill
scoreboard players operation Point2Y-mod Fill += reletiveycoord Fill

execute store result storage jankfill zcoord double 0.01 run data get entity @s Pos[2] 100
execute store result score reletivezcoord Fill run data get storage jankfill zcoord
scoreboard players operation Point1Z-mod Fill += reletivezcoord Fill
scoreboard players operation Point2Z-mod Fill += reletivezcoord Fill

function fill:fill