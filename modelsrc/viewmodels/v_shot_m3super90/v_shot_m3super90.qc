// Created by Crowbar 0.71

$modelname "weapons\v_shot_m3super90.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "m3_reference.smd"
}
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 3.706 -6.714 -8.115

$cdmaterials "models\weapons\V_models\shot_m3super90\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.M3_PARENT" 0 3 18 rotate 0 0 0
$attachment "2" "v_weapon.M3_PARENT" -0.5 3.5 5 rotate -35 180 0
$attachment "muzzle" "v_weapon.M3_PARENT" 0.00 4.50 23.50 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -12.095 -2.365 -12.834 25.523 9.777 -3.396

$pushd "v_shot_m3super90_anims"

$sequence "idle" "idle.smd" activity "ACT_VM_IDLE" 1 fps 12

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event 6001 0 "2" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 22 "EjectBrass_12Gauge 2 70" }
	//{ event 5001 0 "1" }
	snap
	fps 32
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event 6001 0 "2" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 23 "EjectBrass_12Gauge 2 70" }
	//{ event 5001 0 "1" }
	snap
	fps 37
}

$sequence "insert" {
	"insert.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "Weapon_M3.Insertshell" }
	fps 55
}

$sequence "after_reload" {
	"after_reload.smd"
	activity "ACT_SHOTGUN_RELOAD_FINISH" 1
	{ event 5004 12 "Weapon_M3.Pump" }
	fps 40
}

$sequence "start_reload" {
	"start_reload.smd"
	activity "ACT_SHOTGUN_RELOAD_START" 1
	fps 40
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 11 "Weapon_M3.Pump" }
}

// Custom sequence for HL2's generic shotgun pump
$sequence "pump_layer" {
	"shoot2.smd"
	frame 10 36
	hidden
	fps 37
}

$sequence "pump" {
	"idle.smd"
	numframes 30
	blendlayer "pump_layer" 0 5 25 30
	activity "ACT_SHOTGUN_PUMP" 1
	{ event 5004 8 "Weapon_M3.Pump" }
	snap
	fps 37
}

$popd
