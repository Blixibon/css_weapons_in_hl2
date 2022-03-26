// Created by Crowbar 0.71

$modelname "weapons\v_rif_ak47.mdl"

$scale 1.0
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}

$scale 1.3
$bodygroup "studio"
{
	studio "ak47_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 3.867 -10.599 -6.354

$cdmaterials "models\weapons\V_models\rif_ak47\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.AK47_Parent" 0 3.5 19 rotate 0 0 0
$attachment "2" "v_weapon.AK47_Parent" 0 4.1 5 rotate -30 165 0
$attachment "muzzle" "v_weapon.AK47_Parent" 0.00 3.80 24.75 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -8.641 -2.271 -12.708 29.839 10.005 0

$pushd "v_rif_ak47_anims"

$sequence "ak47_idle" "ak47_idle.smd" activity "ACT_VM_IDLE" 1 loop

$sequence "ak47_fire1" {
	"ak47_fire1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
	snap
	fps 20
}

$sequence "ak47_fire2" {
	"ak47_fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
	snap
	fps 20
}

$sequence "ak47_fire3" {
	"ak47_fire3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
	snap
	fps 20
}

$sequence "ak47_draw" {
	"ak47_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 11 "Weapon_AK47.BoltPull" }
}

$sequence "ak47_reload" {
	"ak47_reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 13 "Weapon_AK47.Clipout" }
	{ event 5004 57 "Weapon_AK47.Clipin" }
	fps 37
}
