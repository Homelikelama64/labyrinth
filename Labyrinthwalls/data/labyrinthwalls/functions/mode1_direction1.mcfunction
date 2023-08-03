scoreboard players set Chosen LABYRINTH 0

scoreboard players set Chosing LABYRINTH 0
execute if predicate labyrinthwalls:20percentchance if score Chosen LABYRINTH matches 0 run scoreboard players set Chosing LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run scoreboard players set Chosen LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run setblock ~ ~ ~ minecraft:structure_block{mirror:"LEFT_RIGHT",mode:"LOAD",posX:0,posY:3,posZ:-3,name:"terrain:wall2",rotation:CLOCKWISE_90}

scoreboard players set Chosing LABYRINTH 0
execute if predicate labyrinthwalls:20percentchance if score Chosen LABYRINTH matches 0 run scoreboard players set Chosing LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run scoreboard players set Chosen LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run setblock ~ ~ ~ minecraft:structure_block{mirror:"LEFT_RIGHT",mode:"LOAD",posX:0,posY:3,posZ:-3,name:"terrain:wall1",rotation:CLOCKWISE_90}

scoreboard players set Chosing LABYRINTH 0
execute if predicate labyrinthwalls:20percentchance if score Chosen LABYRINTH matches 0 run scoreboard players set Chosing LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run scoreboard players set Chosen LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run setblock ~ ~ ~ minecraft:structure_block{mirror:"LEFT_RIGHT",mode:"LOAD",posX:0,posY:3,posZ:-3,name:"terrain:wall5",rotation:CLOCKWISE_90}

scoreboard players set Chosing LABYRINTH 0
execute if predicate labyrinthwalls:20percentchance if score Chosen LABYRINTH matches 0 run scoreboard players set Chosing LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run scoreboard players set Chosen LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run setblock ~ ~ ~ minecraft:structure_block{mirror:"LEFT_RIGHT",mode:"LOAD",posX:0,posY:3,posZ:-3,name:"terrain:wall4",rotation:CLOCKWISE_90}

scoreboard players set Chosing LABYRINTH 0
execute if predicate labyrinthwalls:20percentchance if score Chosen LABYRINTH matches 0 run scoreboard players set Chosing LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run scoreboard players set Chosen LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run setblock ~ ~ ~ minecraft:structure_block{mirror:"LEFT_RIGHT",mode:"LOAD",posX:0,posY:3,posZ:-3,name:"terrain:wall3",rotation:CLOCKWISE_90}
