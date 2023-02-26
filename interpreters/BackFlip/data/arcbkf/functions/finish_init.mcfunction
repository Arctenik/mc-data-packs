tp @s ~ ~ ~ ~ ~
tag @s add arcbkf_pointer
data merge entity @s {ArmorItems:[{id:"minecraft:paper",Count:1,tag:{arcbkf_output:[]}}],Invulnerable:1,NoGravity:1,ShowArms:1,NoBasePlate:1,Pose:{LeftArm:[0f,0f,0f],RightArm:[-90f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
function arcbkf:align
scoreboard players set @s arcbkf_backward 0
scoreboard players set @s arcbkf_delay 5
function arcbkf:self_speed_medium