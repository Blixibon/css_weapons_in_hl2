// Created by Crowbar 0.71

$modelname "weapons\v_pist_p228.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "p228_reference.smd"
}
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition 2.934 -4.637 -6.617

$cdmaterials "models\weapons\V_models\pist_p228\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.p228_Parent" 0 3 4.2 rotate 0 0 0
$attachment "2" "v_weapon.p228_Parent" 0 3.1 1 rotate -10 -180 0
$attachment "muzzle" "v_weapon.p228_Parent" -0.10 2.90 3.90 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -7.095 -2.908 -13.234 16.368 8.777 0

$pushd "v_pist_p228_anims"

$sequence "idle" "idle.smd" activity "ACT_VM_IDLE" 1 fps 16

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 1 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
	fps 34
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 1 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
	fps 34
}

$sequence "shoot3" {
	"shoot3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 1 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
	fps 34
}

$sequence "shoot_empty" {
	"shoot_empty.smd"
	activity "ACT_VM_DRYFIRE" 1
	//{ event 5001 0 "11" }
	fps 34
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "Weapon_P228.Slideback" }
	{ event 5004 24 "Weapon_P228.Clipout" }
	{ event 5004 49 "Weapon_P228.Clipin" }
	{ event 5004 81 "Weapon_P228.Sliderelease" }
	snap
	fps 35
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 15 "Weapon_P228.Slidepull" }
}

$popd
