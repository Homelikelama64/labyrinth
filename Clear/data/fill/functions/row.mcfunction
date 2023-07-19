execute as @e[type=armor_stand,limit=1,tag=Clear,tag=fill] at @s run setblock ~ ~ ~ air
execute as @e[type=armor_stand,limit=1,tag=Clear,tag=fill] at @s run tp ~1 ~ ~

execute if score Xpos Fill = Xsizeabs Fill if score Zsizeabs Fill > Zpos Fill run function fill:collum
execute if score Xpos Fill = Xsizeabs Fill if score Ysizeabs Fill > Ypos Fill if score Zsizeabs Fill = Zpos Fill run function fill:nextlayer
execute if score Xpos Fill = Xsizeabs Fill if score Ysizeabs Fill = Ypos Fill if score Zsizeabs Fill = Zpos Fill run kill @e[tag=fill]
scoreboard players add Xpos Fill 1
execute if score Xsizeabs Fill >= Xpos Fill run function fill:row
