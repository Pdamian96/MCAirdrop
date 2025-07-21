



scoreboard objectives add mca.temp1 dummy
scoreboard objectives add mca.temp2 dummy
scoreboard objectives add mca.timers dummy


scoreboard objectives add mca.settings dummy
scoreboard players set x mca.settings 500
scoreboard players set z mca.settings 500

execute store result storage mca settings.x int 1 run scoreboard players get x mca.settings
execute store result storage mca settings.z int 1 run scoreboard players get z mca.settings


scoreboard objectives add mca.airdrop_properties dummy



bossbar add airdrop [{"text":"Airdrop Landing at: x"},{"score":{"name":"x","objective":"mca.airdrop_properties"}},{"text":"z"},{"score":{"name":"z","objective":"mca.airdrop_properties"}}]
bossbar set airdrop visible false
bossbar set airdrop color red
bossbar set airdrop max 100

