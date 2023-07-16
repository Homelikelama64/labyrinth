scoreboard players add CELLXPOS LABYRINTH 1

function labyrinth:loopthrougharmorstands

tellraw @a "LOL"

execute if score CHUNKSIZEX LABYRINTH > CELLXPOS LABYRINTH run function labyrinth:cells