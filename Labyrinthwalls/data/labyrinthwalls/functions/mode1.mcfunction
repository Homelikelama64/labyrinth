scoreboard players set ModeChosen LABYRINTH 0

scoreboard players set Chosing LABYRINTH 0
execute if predicate labyrinthwalls:25percentchance if score ModeChosen LABYRINTH matches 0 run scoreboard players set Chosing LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run scoreboard players set ModeChosen LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run function labyrinthwalls:mode1_direction3

scoreboard players set Chosing LABYRINTH 0
execute if predicate labyrinthwalls:25percentchance if score ModeChosen LABYRINTH matches 0 run scoreboard players set Chosing LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run scoreboard players set ModeChosen LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run function labyrinthwalls:mode1_direction0

scoreboard players set Chosing LABYRINTH 0
execute if predicate labyrinthwalls:25percentchance if score ModeChosen LABYRINTH matches 0 run scoreboard players set Chosing LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run scoreboard players set ModeChosen LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run function labyrinthwalls:mode1_direction2

scoreboard players set Chosing LABYRINTH 0
execute if predicate labyrinthwalls:25percentchance if score ModeChosen LABYRINTH matches 0 run scoreboard players set Chosing LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run scoreboard players set ModeChosen LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run function labyrinthwalls:mode1_direction1
