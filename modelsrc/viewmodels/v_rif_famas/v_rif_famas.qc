// Created by Crowbar 0.71

$modelname "weapons\v_rif_famas.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "v_famas_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -1.521 -8.899 -7.216

$cdmaterials "models\weapons\v_models\rif_famas\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.famas1" 0 0 0 rotate 0 0 0
$attachment "2" "v_weapon.famas2" 0 0 0 rotate 0 0 0
$attachment "muzzle" "v_weapon.famas1" 0.00 0.00 0.00 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -5.18 -9.343 -14.082 22.978 6.302 -0.35

$pushd "v_rif_famas_anims"

$sequence "idle" "idle.smd" activity "ACT_VM_IDLE" 1 snap

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 14 "Weapon_FAMAS.Clipout" }
	{ event 5004 40 "Weapon_FAMAS.Clipin" }
	{ event 5004 63 "Weapon_FAMAS.Forearm" }
	snap
	fps 27
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	snap
}

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 130" }
	snap
	fps 35
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 125" }
	snap
	fps 35
}

$sequence "shoot3" {
	"shoot3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 155" }
	snap
	fps 35
}

$popd
