tellraw @a ["",{"color":"#e30b1c","text":"["},{"color":"#c61639","text":"A"},{"color":"#aa2155","text":"i"},{"color":"#8e2c71","text":"r"},{"color":"#71368e","text":"d"},{"color":"#5541aa","text":"r"},{"color":"#394cc6","text":"o"},{"color":"#1c57e3","text":"p"},{"color":"#0062ff","text":"]"},{"text":" Reloaded!"}]
function airdrop:settings

scoreboard players set $first_countdown mca.timers -1
scoreboard players set $second_countdown mca.timers -1
scoreboard players operation $airdrop_cooldown mca.timers = $airdrop_cooldown mca.settings

execute store result storage mca settings.x int 1 run scoreboard players get x mca.settings
execute store result storage mca settings.z int 1 run scoreboard players get z mca.settings
