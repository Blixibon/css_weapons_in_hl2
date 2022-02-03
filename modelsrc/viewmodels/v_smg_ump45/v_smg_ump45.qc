// Created by Crowbar 0.71

$modelname "weapons\v_smg_ump45.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "ump45_reference.smd"
}
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 5.033 -9.887 -8.499

$cdmaterials "models\weapons\V_models\smg_ump45\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.ump45_Parent" 0 4.3 14 rotate 0 0 0
$attachment "2" "v_weapon.ump45_Parent" 0 4.5 4 rotate -12 165 0
$attachment "muzzle" "v_weapon.ump45_Parent" 0.15 5.70 17.00 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -6.595 -0.711 -14.548 26.368 10.777 -2.449

$pushd "v_smg_ump45_anims"

$sequence "idle1" "idle1.smd" activity "ACT_VM_IDLE" 1 snap fps 12

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 23 "Weapon_UMP45.Clipout" }
	{ event 5004 59 "Weapon_UMP45.Clipin" }
	{ event 5004 86 "Weapon_UMP45.Boltslap" }
	snap
	fps 33
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	snap
	fps 25
}

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
	fps 32
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
	fps 32
}

$sequence "shoot3" {
	"shoot3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
	fps 32
}
