// Created by Crowbar 0.71

$modelname "weapons\v_snip_g3sg1.mdl"

$scale 1.0
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}

$scale 1.3
$bodygroup "studio"
{
	studio "g3sg1_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 3.306 -12.434 -7.268

$cdmaterials "models\weapons\V_models\snip_g3sg1\"
$cdmaterials "models\weapons\v_models\snip_awp\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.g3sg1_Parent" 0 3.7 21 rotate 0 0 0
$attachment "2" "v_weapon.g3sg1_Parent" 0 3.5 4.5 rotate 0 180 0
$attachment "muzzle" "v_weapon.g3sg1_Parent" 0.00 4.85 27.00 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -7.595 -2.864 -12.949 32.464 9.477 -1.587

$pushd "v_snip_g3sg1_anims"

$sequence "idle1" {
	"idle1.smd"
	activity "ACT_VM_IDLE" 1
	fps 16
}

$sequence "shoot" {
	"shoot.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 90" }
	snap
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 2
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 90" }
	snap
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 16 "Weapon_G3SG1.Slide" }
	{ event 5004 54 "Weapon_G3SG1.Clipout" }
	{ event 5004 85 "Weapon_G3SG1.Clipin" }
	{ event 5004 116 "Weapon_G3SG1.Slide" }
	snap
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	snap
}

$popd
