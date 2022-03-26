// Created by Crowbar 0.71

$modelname "weapons\v_smg_mp5.mdl"

$scale 1.0
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}

$scale 1.3
$bodygroup "studio"
{
	studio "mp5_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 2.812 -5.618 -7.383

$cdmaterials "models\weapons\V_models\smg_mp5\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.MP5_Parent" 0.1 3 13.5 rotate 0 0 0
$attachment "2" "v_weapon.MP5_Parent" 0 3.5 4.5 rotate 0 0 0
$attachment "muzzle" "v_weapon.MP5_Parent" 0.15 3.80 17.00 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -9.595 -3.303 -12.878 20.831 8.927 -1.889

$pushd "v_smg_mp5_anims"

$sequence "idle" "idle.smd" activity "ACT_VM_IDLE" 1 snap fps 12

$sequence "reload1" {
	"reload1.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 12 "Weapon_MP5Navy.Clipout" }
	{ event 5004 44 "Weapon_MP5Navy.Clipin" }
	{ event 5004 86 "Weapon_MP5Navy.Slideback" }
	snap
	fps 38
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 13 "Weapon_MP5Navy.Slideback" }
	snap
	fps 35
}

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	//{ event 5001 0 "1" }
	snap
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	//{ event 5001 0 "1" }
	snap
}

$sequence "shoot3" {
	"shoot3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	//{ event 5001 0 "1" }
	snap
}

$popd
