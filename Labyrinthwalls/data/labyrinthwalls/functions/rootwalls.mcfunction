scoreboard players set RootChosen LABYRINTH 0

scoreboard players set Chosing LABYRINTH 0
execute if predicate labyrinthwalls:33percentchance if score RootChosen LABYRINTH matches 0 run scoreboard players set Chosing LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run scoreboard players set RootChosen LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run function labyrinthwalls:mode0

scoreboard players set Chosing LABYRINTH 0
execute if predicate labyrinthwalls:33percentchance if score RootChosen LABYRINTH matches 0 run scoreboard players set Chosing LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run scoreboard players set RootChosen LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run function labyrinthwalls:mode2

scoreboard players set Chosing LABYRINTH 0
execute if predicate labyrinthwalls:33percentchance if score RootChosen LABYRINTH matches 0 run scoreboard players set Chosing LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run scoreboard players set RootChosen LABYRINTH 1
execute if score Chosing LABYRINTH matches 1 run function labyrinthwalls:mode1
