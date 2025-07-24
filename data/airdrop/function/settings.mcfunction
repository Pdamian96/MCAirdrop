

#how far out the drop can spawn. (ex.: 500 is -500 to 500)
scoreboard players set x mca.settings 200
scoreboard players set z mca.settings 200


#countdown (in seconds) before the airdrop drops to the ground (if there is no player in the area after this countdown, the airdrop fails)
scoreboard players set $first_countdown mca.settings 5

#countdown (in seconds) before the Airdrop opens 
scoreboard players set $second_countdown mca.settings 15


#countdown (in seconds) before another Airdrop spawns
scoreboard players set $airdrop_cooldown mca.settings 100


#in data\airdrop\function\steps\summon_airdrop.mcfunction, in the summon field, change the loottable to your loot table.



