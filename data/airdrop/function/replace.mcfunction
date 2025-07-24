summon block_display ~-.5 ~ ~-.5 {Tags:["mca.airdrop_display","mca"],block_state:{Name:"minecraft:barrel"}}
setblock ~ ~ ~ barrier
summon interaction ~-.5 ~ ~-.5 {width:1.1f,height:1.1f,Tags:["mca.interaction","mca"]}

summon text_display ~ ~3 ~ {width:5f,height:5f,billboard:"center",alignment:"center",Tags:["mca","mca.text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]}}

execute as @n[type=marker,tag=mca.airdrop] at @s store result storage mca properties.y int 1 run data get entity @s Pos[1]

