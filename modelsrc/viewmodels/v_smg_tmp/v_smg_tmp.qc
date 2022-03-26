// Created by Crowbar 0.71

$modelname "weapons\v_smg_tmp.mdl"

$scale 1.0
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}

$scale 1.3
$bodygroup "studio"
{
	studio "tmp_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 2.84 -10.119 -6.762

$cdmaterials "models\weapons\V_models\smg_tmp\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.TMP_Parent" 0 2.5 14 rotate 0 0 0
$attachment "2" "v_weapon.TMP_Parent" 0 3 -1.2 rotate -30 165 0
$attachment "muzzle" "v_weapon.TMP_Parent" -0.08 3.30 16.50 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -6.295 -3.397 -11.532 26.532 9.077 -1.992

$pushd "v_smg_tmp_anims"

$sequence "idle1" "idle1.smd" activity "ACT_VM_IDLE" 1 fps 12

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 12 "Weapon_TMP.Clipout" }
	{ event 5004 32 "Weapon_TMP.Clipin" }
	snap
	fps 25
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 9 "Weapon_TMP.Deploy" }
	snap
	fps 18
}

$sequence "fire1" {
	"fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
	fps 15
}

$sequence "fire2" {
	"fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
	fps 15
}

$popd
