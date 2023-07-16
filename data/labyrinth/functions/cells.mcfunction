scoreboard players add CELLXPOS LABYRINTH 1

function labyrinth:loopthrougharmorstands

tellraw @a "LOL"

execute if score CHUNKSIZEX LABYRINTH = CELLXPOS LABYRINTH if score CHUNKSIZEY LABYRINTH > CELLYPOS LABYRINTH run function labyrinth:cunksnextrow 
execute if score CHUNKSIZEX LABYRINTH > CELLXPOS LABYRINTH run function labyrinth:cells