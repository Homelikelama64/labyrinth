execute if score CELLOFFSET LABYRINTH matches 0 run scoreboard players set CELLOFFSETTOGGLE LABYRINTH 0
execute if score CELLOFFSET LABYRINTH matches 1 run scoreboard players set CELLOFFSETTOGGLE LABYRINTH 1

execute if score CELLOFFSETTOGGLE LABYRINTH matches 1 run scoreboard players set CELLOFFSET LABYRINTH 0
execute if score CELLOFFSETTOGGLE LABYRINTH matches 0 run scoreboard players set CELLOFFSET LABYRINTH 1

function labyrinth:cellsresetloopthrougharmorstands

scoreboard players set CELLXPOS LABYRINTH 0
scoreboard players add CELLYPOS LABYRINTH 1
function labyrinth:cells