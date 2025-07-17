



scoreboard objectives add mca.temp1 dummy
scoreboard objectives add mca.temp2 dummy

scoreboard objectives add mca.settings dummy
scoreboard players set x mca.settings 500
scoreboard players set y mca.settings 500

execute store result storage mca settings.x int 1 run scoreboard players get x mca.settings
execute store result storage mca settings.y int 1 run scoreboard players get y mca.settings


scoreboard objectives add mca.airdrop_properties dummy