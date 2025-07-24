

execute positioned over world_surface if block ~ ~-1 ~ water run setblock ~ ~-1 ~ dirt
execute positioned over world_surface if block ~ ~-1 ~ lava run setblock ~ ~-1 ~ dirt





$execute positioned $(x) 100 $(z) if loaded ~ ~ ~ positioned over world_surface run summon marker ~ ~ ~ {Tags:["mca.airdrop"]}
$execute positioned $(x) 100 $(z) if loaded ~ ~ ~ positioned over world_surface run summon falling_block ~ ~100 ~ {BlockState:{Name:"minecraft:barrel"},TileEntityData:{lock:{items:"bedrock",count:1}},Time:1,Tags:["mca.airdrop"]}
$execute positioned $(x) 100 $(z) if loaded ~ ~ ~ run tellraw @a ["",{"color":"gray","text":"The Airdrop has landed at:"},{"shadow_color":0,"text":" "},{"color":"red","shadow_color":0,"text":"x"},{"color":"dark_red","shadow_color":0,"score":{"name":"x","objective":"mca.airdrop_properties"}},{"color":"dark_gray","shadow_color":0,"text":" "},{"color":"red","shadow_color":0,"text":"z"},{"color":"dark_red","shadow_color":0,"score":{"name":"z","objective":"mca.airdrop_properties"}}]
$execute positioned $(x) 100 $(z) if loaded ~ ~ ~ run scoreboard players operation $second_countdown mca.timers = $second_countdown mca.settings

$execute positioned $(x) 100 $(z) unless loaded ~ ~ ~ run tellraw @a ["",{"color":"gray","shadow_color":0,"text":"No one at the Airdrop Site."},{"color":"dark_red","shadow_color":0,"text":" Airdrop Cancelled."}]
$execute positioned $(x) 100 $(z) unless loaded ~ ~ ~ run bossbar set airdrop visible false

