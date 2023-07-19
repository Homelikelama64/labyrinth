kill @e[tag=fill]
execute in labyrinth:labyrinth run summon armor_stand 0 0 0 {Tags:["Point1","fill"],NoAI:1,NoGravity:1}
execute in labyrinth:labyrinth run summon armor_stand 0 0 0 {Tags:["Point2","fill"],NoAI:1,NoGravity:1}
execute in labyrinth:labyrinth run summon armor_stand 0 0 0 {Tags:["Clear","fill"],NoAI:1,NoGravity:1}

execute store result storage jankfill Point1X double 1 run scoreboard players get Point1X-mod Fill
execute store result storage jankfill Point1Y double 1 run scoreboard players get Point1Y-mod Fill
execute store result storage jankfill Point1Z double 1 run scoreboard players get Point1Z-mod Fill

execute store result storage jankfill Point2X double 1 run scoreboard players get Point2X-mod Fill
execute store result storage jankfill Point2Y double 1 run scoreboard players get Point2Y-mod Fill
execute store result storage jankfill Point2Z double 1 run scoreboard players get Point2Z-mod Fill

data modify entity @e[type=armor_stand,limit=1,tag=Point1,tag=fill] Pos[0] set from storage jankfill Point1X
data modify entity @e[type=armor_stand,limit=1,tag=Point1,tag=fill] Pos[1] set from storage jankfill Point1Y
data modify entity @e[type=armor_stand,limit=1,tag=Point1,tag=fill] Pos[2] set from storage jankfill Point1Z

data modify entity @e[type=armor_stand,limit=1,tag=Point2,tag=fill] Pos[0] set from storage jankfill Point2X
data modify entity @e[type=armor_stand,limit=1,tag=Point2,tag=fill] Pos[1] set from storage jankfill Point2Y
data modify entity @e[type=armor_stand,limit=1,tag=Point2,tag=fill] Pos[2] set from storage jankfill Point2Z

data modify entity @e[type=armor_stand,limit=1,tag=Clear,tag=fill] Pos[0] set from storage jankfill Point1X
data modify entity @e[type=armor_stand,limit=1,tag=Clear,tag=fill] Pos[1] set from storage jankfill Point1Y
data modify entity @e[type=armor_stand,limit=1,tag=Clear,tag=fill] Pos[2] set from storage jankfill Point1Z

scoreboard players operation Xsize Fill = Point1X-mod Fill
scoreboard players operation Xsize Fill -= Point2X-mod Fill
scoreboard players operation Xsizeabs Fill = Xsize Fill
scoreboard players set ABS Fill 0
execute if score Xsize Fill matches ..-1 run scoreboard players set ABS Fill 1
execute if score ABS Fill matches 1 run scoreboard players operation Xsizeabs Fill -= Xsize Fill
execute if score ABS Fill matches 1 run scoreboard players operation Xsizeabs Fill -= Xsize Fill

scoreboard players operation Ysize Fill = Point1Y-mod Fill
scoreboard players operation Ysize Fill -= Point2Y-mod Fill
scoreboard players operation Ysizeabs Fill = Ysize Fill
scoreboard players set ABS Fill 0
execute if score Ysize Fill matches ..-1 run scoreboard players set ABS Fill 1
execute if score ABS Fill matches 1 run scoreboard players operation Ysizeabs Fill -= Ysize Fill
execute if score ABS Fill matches 1 run scoreboard players operation Ysizeabs Fill -= Ysize Fill

scoreboard players operation Zsize Fill = Point1Y-mod Fill
scoreboard players operation Zsize Fill -= Point2Y-mod Fill
scoreboard players operation Zsizeabs Fill = Zsize Fill
scoreboard players set ABS Fill 0
execute if score Zsize Fill matches ..-1 run scoreboard players set ABS Fill 1
execute if score ABS Fill matches 1 run scoreboard players operation Zsizeabs Fill -= Zsize Fill
execute if score ABS Fill matches 1 run scoreboard players operation Zsizeabs Fill -= Zsize Fill

scoreboard players operation rowreset Fill = Xsizeabs Fill
scoreboard players add rowreset Fill 1

scoreboard players operation collumreset Fill = Zsizeabs Fill


scoreboard players set Xpos Fill 0
scoreboard players set Ypos Fill 0
scoreboard players set Zpos Fill 0
function fill:row