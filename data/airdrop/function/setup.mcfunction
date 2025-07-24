



scoreboard objectives add mca.temp1 dummy
scoreboard objectives add mca.temp2 dummy
scoreboard objectives add mca.timers dummy
scoreboard objectives add mca.kills playerKillCount
scoreboard objectives add mca.settings dummy



scoreboard objectives add mca.airdrop_properties dummy


scoreboard objectives add mca.math.const dummy
scoreboard players set 3 mca.math.const 3
scoreboard players set 5 mca.math.const 5
scoreboard players set 2 mca.math.const 2




bossbar add airdrop [{"text":"Airdrop Landing at: x"},{"score":{"name":"x","objective":"mca.airdrop_properties"}},{"text":"z"},{"score":{"name":"z","objective":"mca.airdrop_properties"}}]
bossbar set airdrop visible false
bossbar set airdrop color red
bossbar set airdrop max 100

