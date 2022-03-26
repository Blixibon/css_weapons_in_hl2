// Created by Crowbar 0.71

$modelname "weapons\v_snip_scout.mdl"

$scale 1.0
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}

$scale 1.3
$bodygroup "studio"
{
	studio "scout_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 4.148 -7.731 -6.307

$cdmaterials "models\weapons\V_models\snip_scout\"
$cdmaterials "models\weapons\v_models\snip_awp\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.scout_Parent" 0 2.45 21 rotate 0 0 0
$attachment "2" "v_weapon.scout_Parent" 0 2.85 4 rotate 20 180 0
$attachment "muzzle" "v_weapon.scout_Parent" 0.00 3.25 26.50 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -11.495 -3.34 -10.706 26.958 11.636 -1.908

$pushd "v_snip_scout_anims"

$sequence "idle1" "idle1.smd" activity "ACT_VM_IDLE" 1 fps 16

$sequence "shoot" {
	"shoot.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 20 "0" }
	//{ event 5001 0 "1" }
	{ event 5004 13 "Weapon_Scout.Bolt" }
	//{ event AE_CLIENT_EFFECT_ATTACH 20 "EjectBrass_762Nato 2 40" }
	snap
	fps 35
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 13 "Weapon_Scout.Clipout" }
	{ event 5004 37 "Weapon_Scout.Clipin" }
	{ event 5004 52 "Weapon_Scout.Bolt" }
	snap
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	snap
}

$popd
