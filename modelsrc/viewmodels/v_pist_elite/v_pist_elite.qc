// Created by Crowbar 0.71

$modelname "weapons\v_pist_elite.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "v_elite_reference.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition -0.566 -7.649 -5.186

$cdmaterials "models\weapons\v_models\pist_elite\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.muzzleflash_right" 0 0 0 rotate 0 0 0
$attachment "2" "v_weapon.muzzleflash_left" 0 0 0 rotate 0 0 0
$attachment "3" "v_weapon.shelleject_right" 0 0 0 rotate 0 0 0
$attachment "4" "v_weapon.shelleject_left" 0 0 0 rotate 0 0 0
$attachment "muzzle" "v_weapon.muzzleflash_right" 0 0 0 rotate -90 0 0
$attachment "muzzle2" "v_weapon.muzzleflash_left" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -2.095 -11.211 -11.675 17.393 10.078 1.302

$pushd "v_pist_elite_anims"

$sequence "idle" "idle.smd" activity "ACT_VM_IDLE" 1 snap fps 16

$sequence "idle_leftempty" {
	"idle_leftempty.smd"
	activity "ACT_VM_IDLE_EMPTY_LEFT" 1
	snap
	fps 16
}

$sequence "shoot_left1" {
	"shoot_left1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 1 "PISTOL MUZZLE2" }
	{ event 6001 0 "0" }
	//{ event 5001 1 "2" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 4 90" }
	snap
	fps 18
}

$sequence "shoot_left2" {
	"shoot_left2.smd"
	activity "ACT_VM_PRIMARYATTACK" 2
	{ event AE_MUZZLEFLASH 1 "PISTOL MUZZLE2" }
	{ event 6001 0 "0" }
	//{ event 5001 1 "2" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 4 90" }
	snap
	fps 18
}

$sequence "shoot_leftlast" {
	"shoot_leftlast.smd"
	activity "ACT_VM_DRYFIRE_LEFT" 1
	{ event AE_MUZZLEFLASH 1 "PISTOL MUZZLE2" }
	{ event 6001 0 "0" }
	//{ event 5001 1 "2" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 4 90" }
	snap
	fps 18
}

$sequence "shoot_right1" {
	"shoot_right1.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	{ event AE_MUZZLEFLASH 1 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 1 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 3 90" }
	snap
	fps 18
}

$sequence "shoot_right2" {
	"shoot_right2.smd"
	activity "ACT_VM_SECONDARYATTACK" 2
	{ event AE_MUZZLEFLASH 1 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 1 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 3 90" }
	snap
	fps 18
}

$sequence "shoot_rightlast" {
	"shoot_rightlast.smd"
	activity "ACT_VM_DRYFIRE" 1
	{ event AE_MUZZLEFLASH 1 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 1 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 3 90" }
	snap
	fps 18
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "Weapon_ELITE.Reloadstart" }
	{ event 5004 12 "Weapon_ELITE.Clipout" }
	{ event 5004 36 "Weapon_ELITE.Rclipin" }
	{ event 5004 59 "Weapon_ELITE.Lclipin" }
	{ event 5004 81 "Weapon_ELITE.Sliderelease" }
	snap
	fps 25
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_ELITE.Deploy" }
	snap
}

$popd
