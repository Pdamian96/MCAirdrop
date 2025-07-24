




execute if score $first_countdown mca.timers matches 1.. run scoreboard players remove $first_countdown mca.timers 1
execute if score $first_countdown mca.timers matches 1.. store result bossbar airdrop value run scoreboard players get $first_countdown mca.timers

execute if score $first_countdown mca.timers matches 1..10 run tellraw @a ["",{"color":"red","text":"The Airdrop drops in: "},{"score":{"name":"$first_countdown","objective":"mca.timers"}}]
execute if score $first_countdown mca.timers matches 1..10 run execute as @a at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 1
execute if score $first_countdown mca.timers matches 0 run function airdrop:steps/second_countdown
execute if score $first_countdown mca.timers matches 0 run scoreboard players set $first_countdown mca.timers -1





execute if score $second_countdown mca.timers matches 1.. run scoreboard players remove $second_countdown mca.timers 1
execute if score $second_countdown mca.timers matches 1.. store result bossbar airdrop value run scoreboard players get $second_countdown mca.timers

execute if score $second_countdown mca.timers matches 1..10 at @e[type=marker,tag=mca.airdrop] as @a[distance=..100] run tellraw @s ["",{"color":"red","text":"The Airdrop opens in: "},{"score":{"name":"$second_countdown","objective":"mca.timers"}}]
execute if score $second_countdown mca.timers matches 1..10 at @e[type=marker,tag=mca.airdrop] as @a[distance=..100] run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 .5
execute if score $second_countdown mca.timers matches 0 at @e[type=marker,tag=mca.airdrop] as @a[distance=..100] run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~ ~ 100 .5
execute if score $second_countdown mca.timers matches 0 run function airdrop:steps/open_drop with storage mca properties
execute if score $second_countdown mca.timers matches 0 run scoreboard players set $second_countdown mca.timers -1


execute as @e[type=text_display,tag=mca.text] run data modify entity @s text set value '["",{"text":"Airdrop opening in: ","color":"red"},{"score":{"name":"$second_countdown","objective":"mca.timers"},"color":"dark_red"}]'

# To do: automatic Airdrops with toggle
# execute if score $airdrop_cooldown mca.timers matches



