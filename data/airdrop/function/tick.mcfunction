
scoreboard players add 1s mca.timers 1




execute if score 1s mca.timers matches 20.. run function airdrop:loop/1s
execute if score 1s mca.timers matches 20.. run scoreboard players set 1s mca.timers 0

execute if score $second_countdown mca.timers matches 1.. run function airdrop:loop/during_second_cooldown

execute as @e[type=marker,tag=mca.airdrop] at @s if block ~ ~ ~ barrel run function airdrop:replace
execute if score $second_countdown mca.timers matches 1.. at @e[type=marker,tag=mca.airdrop] run particle smoke ~ ~ ~ 1 .5 1 .05 1

