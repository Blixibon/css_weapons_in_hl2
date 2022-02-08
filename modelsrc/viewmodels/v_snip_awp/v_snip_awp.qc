// Created by Crowbar 0.71

$modelname "weapons\v_snip_awp.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "awm_reference.smd"
}
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 3.377 -10.715 -6.046

$cdmaterials "models\weapons\v_models\snip_awp\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.awm_parent" 0 3.5 28 rotate 0 0 0
$attachment "2" "v_weapon.awm_parent" 0 3.5 4.2 rotate 20 180 0
$attachment "muzzle" "v_weapon.awm_parent" -0.30 4.40 29.40 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -10.095 -2.925 -11.259 31.524 9.68 -0.833

$pushd "v_snip_awp_anims"

$sequence "awm_idle" "awm_idle.smd" activity "ACT_VM_IDLE" 1

$sequence "awm_fire" {
	"awm_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 26 "0" }
	//{ event 5001 0 "1" }
	{ event 5004 15 "Weapon_AWP.Bolt" }
	{ event 5004 19 "Weapon_AWP.Bolt" }
	{ event 5004 32 "Weapon_AWP.Bolt" }
	//{ event AE_CLIENT_EFFECT_ATTACH 26 "EjectBrass_338Mag 2 70" }
	snap
}

$sequence "awm_draw" {
	"awm_draw.smd"
	activity "ACT_VM_DRAW" 1
	snap
}

$sequence "awm_reload" {
	"awm_reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 26 "Weapon_AWP.Clipout" }
	{ event 5004 50 "Weapon_AWP.Clipin" }
	{ event 5004 89 "Weapon_AWP.Bolt" }
}

$popd
