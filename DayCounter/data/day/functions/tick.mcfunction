execute store result score $day daycounter run time query day
scoreboard players operation $day daycounter += one daycounter

execute as @a run execute store result score @s coords_x run data get entity @s Pos[0]
execute as @a run execute store result score @s coords_y run data get entity @s Pos[1]
execute as @a run execute store result score @s coords_z run data get entity @s Pos[2]

execute store result score #daytime daytime run time query daytime
scoreboard players operation #hours hours = #daytime daytime
scoreboard players operation #hours hours /= #5 times_c
scoreboard players operation #hours hours *= #18 times_c
scoreboard players operation #hours hours /= #60 times_c
scoreboard players operation #minutes minutes = #hours hours
scoreboard players operation #hours hours /= #60 times_c
scoreboard players operation #time_hours time_hours = #hours hours
scoreboard players operation #time_hours time_hours += #6 times_c
scoreboard players operation #hours hours *= #60 times_c
scoreboard players operation #time_minutes time_minutes = #minutes minutes
scoreboard players operation #time_minutes time_minutes -= #hours hours
execute if score #time_hours time_hours matches 24.. run scoreboard players operation #time_hours time_hours -= #24 times_c

execute as @a if score #time_hours time_hours matches ..9 if score #time_minutes time_minutes matches ..9 run title @a actionbar ["",{"text":"XYZ ","color":"gold"},{"color":"white","score":{"name":"@s","objective":"coords_x"}},{"text":" ","color":"white"},{"color":"white","score":{"name":"@s","objective":"coords_y"}},{"text":" ","color":"white"},{"color":"white","score":{"name":"@s","objective":"coords_z"}},{"text":" |","color":"gold"},{"text":" DAY ","color":"white"},{"score":{"objective":"daycounter","name":"$day"}}]
execute as @a if score #time_hours time_hours matches 10.. if score #time_minutes time_minutes matches ..9 run title @a actionbar ["",{"text":"XYZ ","color":"gold"},{"color":"white","score":{"name":"@s","objective":"coords_x"}},{"text":" ","color":"white"},{"color":"white","score":{"name":"@s","objective":"coords_y"}},{"text":" ","color":"white"},{"color":"white","score":{"name":"@s","objective":"coords_z"}},{"text":" |","color":"gold"},{"text":" DAY ","color":"white"},{"score":{"objective":"daycounter","name":"$day"}}]
execute as @a if score #time_hours time_hours matches ..9 if score #time_minutes time_minutes matches 10.. run title @a actionbar ["",{"text":"XYZ ","color":"gold"},{"color":"white","score":{"name":"@s","objective":"coords_x"}},{"text":" ","color":"white"},{"color":"white","score":{"name":"@s","objective":"coords_y"}},{"text":" ","color":"white"},{"color":"white","score":{"name":"@s","objective":"coords_z"}},{"text":" |","color":"gold"},{"text":" DAY ","color":"white"},{"score":{"objective":"daycounter","name":"$day"}}]
execute as @a if score #time_hours time_hours matches 10.. if score #time_minutes time_minutes matches 10.. run title @a actionbar ["",{"text":"XYZ ","color":"gold"},{"color":"white","score":{"name":"@s","objective":"coords_x"}},{"text":" ","color":"white"},{"color":"white","score":{"name":"@s","objective":"coords_y"}},{"text":" ","color":"white"},{"color":"white","score":{"name":"@s","objective":"coords_z"}},{"text":" |","color":"gold"},{"text":" DAY ","color":"white"},{"score":{"objective":"daycounter","name":"$day"}}]