// Created by Crowbar 0.71

$modelname "weapons\v_rif_aug.mdl"

$scale 1.0
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}

$scale 1.3
$bodygroup "studio"
{
	studio "aug_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 4.341 -8.15 -7.773

$cdmaterials "models\weapons\V_models\rif_aug\"
$cdmaterials "models\weapons\v_models\snip_awp\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.aug_Parent" -0.2 2.7 14 rotate 0 0 0
$attachment "2" "v_weapon.aug_Parent" 0.3 3.3 -5 rotate -30 -165 0
$attachment "muzzle" "v_weapon.aug_Parent" -0.26 3.51 17.75 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -8.395 -2.411 -14.487 24.694 11.092 -1.06

$pushd "v_rif_aug_anims"

$sequence "idle" "idle.smd" activity "ACT_VM_IDLE" 1 snap

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
	snap
	fps 35
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 2
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
	snap
	fps 35
}

$sequence "shoot3" {
	"shoot3.smd"
	activity "ACT_VM_PRIMARYATTACK" 3
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
	snap
	fps 35
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 9 "Weapon_AUG.Forearm" }
	snap
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 10 "Weapon_AUG.Boltpull" }
	{ event 5004 50 "Weapon_AUG.Clipout" }
	{ event 5004 88 "Weapon_AUG.Clipin" }
	{ event 5004 112 "Weapon_AUG.Boltslap" }
	snap
	fps 35
}

$popd
