


# Points = quality of loot drop. 3 different quality loot tables possible:
# pOINTS:
# per kill around airdrop: 3 points
# per 5 people online: 1 point
# per 2 people around the airdrop: 1 point
#
# loot tables  common : 1-2  points
#             "normal": 3-5  points
#              extra  : 6..  points
#


#all the math for this

scoreboard players set $points mca.airdrop_properties 0

#kills
scoreboard players operation $kills mca.airdrop_properties *= 3 mca.math.const
scoreboard players operation $points mca.airdrop_properties += $kills mca.airdrop_properties

#per people online
scoreboard players set temp mca.temp1 0
execute as @a run scoreboard players add temp mca.temp1 1
scoreboard players operation temp mca.temp1 /= 5 mca.math.const
scoreboard players operation $points mca.airdrop_properties += temp mca.temp1

#people around the drop
scoreboard players set temp2 mca.temp1 0
$execute positioned $(x) $(y) $(z) as @a[distance=..100] run scoreboard players add temp2 mca.temp1 1
scoreboard players operation temp2 mca.temp1 /= 2 mca.math.const
scoreboard players operation $points mca.airdrop_properties += temp2 mca.temp1



$execute if score $points mca.airdrop_properties matches ..2 run execute positioned $(x) $(y) $(z) run setblock ~ ~ ~ barrel{LootTable:"minecraft:archaeology/desert_pyramid"} replace
$execute if score $points mca.airdrop_properties matches 3..5 run execute positioned $(x) $(y) $(z) run setblock ~ ~ ~ barrel{LootTable:"minecraft:archaeology/desert_pyramid"} replace
$execute if score $points mca.airdrop_properties matches 6.. run execute positioned $(x) $(y) $(z) run setblock ~ ~ ~ barrel{LootTable:"minecraft:archaeology/desert_pyramid"} replace


$execute positioned $(x) $(y) $(z) run kill @e[tag=mca,distance=..10]
$execute positioned $(x) $(y) $(z) run kill @e[type=marker]


tellraw @a ["",{"color":"dark_green","text":"The Airdrop has been opened!"}]
bossbar set airdrop visible false