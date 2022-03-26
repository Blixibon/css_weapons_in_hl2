// Created by Crowbar 0.71

$modelname "weapons\v_rif_galil.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "v_galil_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -2.208 -15.106 -7.046

$cdmaterials "models\weapons\v_models\rif_galil\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.attachment1" 0 0 0 rotate 0 0 0
$attachment "2" "v_weapon.attachment2" 0 0 0 rotate 0 0 0
$attachment "muzzle" "v_weapon.attachment1" 0.00 0.00 0.00 rotate -90 -0 0
//$attachment "muzzle" "v_weapon.attachment1" -0.00 8.50 -4.00 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -5.721 -7.83 -14.091 35.933 3.413 0

$pushd "v_rif_galil_anims"

$sequence "idle" "idle.smd" activity "ACT_VM_IDLE" 1 snap

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 16 "Weapon_Galil.Clipout" }
	{ event 5004 55 "Weapon_Galil.Clipin" }
	{ event 5004 91 "Weapon_Galil.Boltpull" }
	snap
	fps 42
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	snap
	fps 32
}

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 75" }
	snap
	fps 35
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 100" }
	snap
	fps 35
}

$sequence "shoot3" {
	"shoot3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 115" }
	snap
	fps 35
}

$popd
