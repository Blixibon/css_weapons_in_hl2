// Created by Crowbar 0.71

$modelname "weapons\v_pist_deagle.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "deagle_reference.smd"
}
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition 3.334 -5.962 -8.123

$cdmaterials "models\weapons\V_models\pist_deagle\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.Deagle_Parent" 0 2.75 6.5 rotate 0 0 0
$attachment "2" "v_weapon.Deagle_Parent" 0 2.9 0 rotate -10 -180 0
$attachment "muzzle" "v_weapon.Deagle_Parent" 0 3.0 6.0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -6.895 -2.508 -13.534 18.82 9.177 -2.712

$pushd "v_pist_deagle_anims"

$sequence "idle1" "idle1.smd" activity "ACT_VM_IDLE" 1 snap fps 16

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
	fps 40
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "357 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
	fps 40
}

$sequence "shoot_empty" {
	"shoot_empty.smd"
	activity "ACT_VM_DRYFIRE" 1
	//{ event 5001 0 "21" }
	snap
	fps 40
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "Weapon_DEagle.Slideback" }
	{ event 5004 14 "Weapon_DEagle.Clipout" }
	{ event 5004 34 "Weapon_DEagle.Clipin" }
	snap
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_DEagle.Deploy" }
	snap
}
