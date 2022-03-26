// Created by Crowbar 0.71

$modelname "weapons\v_pist_fiveseven.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "fiveseven_reference.smd"
}
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition 2.344 -4.979 -9.149

$cdmaterials "models\weapons\V_models\pist_fiveseven\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.FIVESEVEN_PARENT" 0 2.2 7.5 rotate 0 0 0
$attachment "2" "v_weapon.FIVESEVEN_PARENT" 0 2.4 2.4 rotate 0 -180 0
$attachment "muzzle" "v_weapon.FIVESEVEN_PARENT" -0.10 2.30 6.90 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -7.095 -3.69 -15.062 17.052 8.377 -3.235

$pushd "v_pist_fiveseven_anims"

$sequence "idle" "idle.smd" activity "ACT_VM_IDLE" 1 fps 16

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_57 2 100" }
	snap
	fps 36
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_57 2 100" }
	snap
	fps 36
}

$sequence "shoot_empty" {
	"shoot_empty.smd"
	activity "ACT_VM_DRYFIRE" 1
	fps 36
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "Weapon_FiveSeven.Slideback" }
	{ event 5004 15 "Weapon_FiveSeven.Clipout" }
	{ event 5004 41 "Weapon_FiveSeven.Clipin" }
	{ event 5004 75 "Weapon_FiveSeven.Sliderelease" }
	snap
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 13 "Weapon_FiveSeven.Slidepull" }
}

$popd
