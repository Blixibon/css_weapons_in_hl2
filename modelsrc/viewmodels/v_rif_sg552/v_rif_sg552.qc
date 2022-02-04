// Created by Crowbar 0.71

$modelname "weapons\v_rif_sg552.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "sg552_reference.smd"
}
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 4.617 -11.744 -7.913

$cdmaterials "models\weapons\V_models\rif_sg552\"
$cdmaterials "models\weapons\v_models\snip_awp\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.sg552_Parent" 0.2 3.5 17 rotate 0 0 0
$attachment "2" "v_weapon.sg552_Parent" 0 4.8 4.6 rotate -5 165 0
$attachment "muzzle" "v_weapon.sg552_Parent" 0.00 5.00 21.80 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -6.445 -1.544 -14.011 29.933 10.777 -1.815

$pushd "v_rif_sg552_anims"

$sequence "idle" {
	"idle.smd"
	activity "ACT_VM_IDLE" 1
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 16 "Weapon_SG552.Clipout" }
	{ event 5004 61 "Weapon_SG552.Clipin" }
	{ event 5004 90 "Weapon_SG552.Boltpull" }
	snap
	fps 37
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 12 "Weapon_SG552.Boltpull" }
	snap
	fps 37
}

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 90" }
	snap
	fps 35
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 90" }
	snap
	fps 35
}

$sequence "shoot3" {
	"shoot3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 90" }
	snap
	fps 35
}

$popd
