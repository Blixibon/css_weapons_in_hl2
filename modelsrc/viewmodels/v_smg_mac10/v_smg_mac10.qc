// Created by Crowbar 0.71

$modelname "weapons\v_smg_mac10.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "mac10_reference.smd"
}
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 2.405 -7.765 -6.776

$cdmaterials "models\weapons\V_models\smg_mac10\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.mac10_parent" 0 3 5 rotate 0 0 0
$attachment "2" "v_weapon.mac10_parent" 0 3.5 0 rotate -20 15 0
$attachment "muzzle" "v_weapon.mac10_parent" -0.25 3.85 5.50 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -3.495 -4.752 -13.452 19.025 9.563 -0.1

$pushd "v_smg_mac10_anims"

$sequence "mac10_idle" "mac10_idle.smd" activity "ACT_VM_IDLE" 1 snap fps 12

$sequence "mac10_reload" {
	"mac10_reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 22 "Weapon_MAC10.Clipout" }
	{ event 5004 55 "Weapon_MAC10.Clipin" }
	{ event 5004 87 "Weapon_MAC10.Boltpull" }
	snap
	fps 35
}

$sequence "mac10_fire" {
	"mac10_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
	fps 40
}

$sequence "mac10_fire2" {
	"mac10_fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
	fps 40
}

$sequence "mac10_fire3" {
	"mac10_fire3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
	fps 40
}

$sequence "mac10_draw" {
	"mac10_draw.smd"
	activity "ACT_VM_DRAW" 1
	snap
}

$popd
