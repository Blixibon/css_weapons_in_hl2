// Created by Crowbar 0.71

$modelname "weapons\v_smg_p90.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "p90_reference.smd"
}
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 3.033 -5.796 -7.287

$cdmaterials "models\weapons\V_models\smg_p90\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.p90_Parent" 0 3 9.5 rotate 0 0 0
$attachment "2" "v_weapon.p90_Parent" 0 0 -2.2 rotate 20 -150 -50
$attachment "muzzle" "v_weapon.p90_Parent" 0.10 3.85 9.75 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -7.295 -2.711 -12.804 18.886 8.777 -1.77

$pushd "v_smg_p90_anims"

$sequence "idle" "idle.smd" activity "ACT_VM_IDLE" 1

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 17 "Weapon_P90.Cliprelease" }
	{ event 5004 35 "Weapon_P90.Clipout" }
	{ event 5004 75 "Weapon_P90.Clipin" }
	{ event 5004 108 "Weapon_P90.Boltpull" }
	fps 40
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 9 "Weapon_P90.Boltpull" }
}

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_57 2 100" }
	snap
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_57 2 100" }
	snap
}

$sequence "shoot3" {
	"shoot3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_57 2 100" }
	snap
}

$popd
