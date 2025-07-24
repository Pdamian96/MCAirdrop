

execute store result storage mca settings.x int 1 run scoreboard players get x mca.settings
execute store result storage mca settings.z int 1 run scoreboard players get z mca.settings

scoreboard players set $deaths mca.airdrop_properties 0
scoreboard players set $kills mca.airdrop_properties 0
scoreboard players set @a mca.kills 0

function airdrop:steps/random_coordinate with storage minecraft:mca settings
bossbar set minecraft:airdrop color red

scoreboard players set $first_countdown mca.timers 10
scoreboard players operation $first_countdown mca.timers = $first_countdown mca.settings


bossbar set airdrop name ["",{"color":"white","text":"Airdrop Landing at:"},{"shadow_color":0,"text":" "},{"color":"red","shadow_color":0,"text":"x"},{"color":"dark_red","shadow_color":0,"score":{"name":"x","objective":"mca.airdrop_properties"}},{"color":"dark_gray","shadow_color":0,"text":" |"},{"shadow_color":0,"text":" "},{"color":"red","shadow_color":0,"text":"z"},{"color":"dark_red","shadow_color":0,"score":{"name":"z","objective":"mca.airdrop_properties"}}]
bossbar set airdrop visible true

execute store result storage mca properties.x int 1 run scoreboard players get x mca.airdrop_properties
execute store result storage mca properties.z int 1 run scoreboard players get z mca.airdrop_properties

function airdrop:debug with storage mca properties



# next:
# announcement
# starting timer
# check for loaded player at end of timer
# spawn airdrop
# FIGOUZRE OUT HOW THE FUCK THE ARIDROP IS GONNA LOOK????
#    