
scoreboard players add 1s mca.timers 1




execute if score 1s mca.timers matches 20.. run function airdrop:loop/1s
execute if score 1s mca.timers matches 20.. run scoreboard players set 1s mca.timers 0

execute if score $second_countdown mca.timers matches 1.. as @e[type=falling_block,tag=mca.airdrop] at @s run particle minecraft:white_ash ~ ~ ~ 1 1 1 0 10