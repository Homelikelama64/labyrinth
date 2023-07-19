scoreboard players set Marker Fill 0
execute as @e[tag=Marker] run scoreboard players add Marker Fill 1 
execute if score Marker Fill matches 0 run kill @e[tag=Marker]
execute in labyrinth:labyrinth run execute if score Marker Fill matches 0 run summon armor_stand ~ ~ ~ {NoAI:1,NoGravity:1,Tags:["Marker1","Marker"],Marker:1,Invisible:1}
execute in labyrinth:labyrinth run execute if score Marker Fill matches 0 run summon armor_stand ~ ~ ~ {NoAI:1,NoGravity:1,Tags:["Marker2","Marker"],Marker:1,Invisible:1}

data modify entity @e[tag=Marker,limit=1,tag=Marker1] Pos[0] set from storage jankfill Point1X
data modify entity @e[tag=Marker,limit=1,tag=Marker1] Pos[1] set from storage jankfill Point1Y
data modify entity @e[tag=Marker,limit=1,tag=Marker1] Pos[2] set from storage jankfill Point1Z

data modify entity @e[tag=Marker,limit=1,tag=Marker2] Pos[0] set from storage jankfill Point2X
data modify entity @e[tag=Marker,limit=1,tag=Marker2] Pos[1] set from storage jankfill Point2Y
data modify entity @e[tag=Marker,limit=1,tag=Marker2] Pos[2] set from storage jankfill Point2Z

execute as @e[tag=Marker,limit=1,tag=Marker1] at @s run particle minecraft:block_marker red_concrete ~.5 ~.5 ~.5 0.1 0.1 0.1 0 1 normal
execute as @e[tag=Marker,limit=1,tag=Marker2] at @s run particle minecraft:block_marker red_concrete ~.5 ~.5 ~.5 0.1 0.1 0.1 0 1 normal