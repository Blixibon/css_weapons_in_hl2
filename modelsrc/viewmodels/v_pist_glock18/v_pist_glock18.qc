// Created by Crowbar 0.71

$modelname "weapons\v_pist_glock18.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "glock18_reference.smd"
}
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition 2.486 -4.839 -7.433

$cdmaterials "models\weapons\v_models\pist_glock18\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.Glock_Parent" -6.5 4 -0.6 rotate 0 0 0
$attachment "2" "v_weapon.Glock_Parent" 0 2.4 -0.5 rotate 80 -180 0
$attachment "muzzle" "v_weapon.Glock_Parent" -3.50 3.35 -0.60 rotate 0 165 -170

$cbox 0 0 0 0 0 0

$bbox -7.195 -3.308 -13.33 16.873 8.28 -1.536

$pushd "v_pist_glock18_anims"

$sequence "glock_idle" "glock_idle.smd" activity "ACT_VM_IDLE" 1 snap

$sequence "glock_fireburst1" {
	"glock_fireburst1.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event AE_MUZZLEFLASH 2 "PISTOL MUZZLE" }
	{ event AE_MUZZLEFLASH 3 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	{ event 6001 2 "0" }
	{ event 6001 3 "0" }
	//{ event 5001 0 "1" }
	//{ event 5001 2 "1" }
	//{ event 5001 3 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 90" }
	//{ event AE_CLIENT_EFFECT_ATTACH 2 "EjectBrass_9mm 2 90" }
	//{ event AE_CLIENT_EFFECT_ATTACH 3 "EjectBrass_9mm 2 90" }
	snap
	fps 40
}

$sequence "glock_fireburst2" {
	"glock_fireburst2.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event AE_MUZZLEFLASH 2 "PISTOL MUZZLE" }
	{ event AE_MUZZLEFLASH 3 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	{ event 6001 2 "0" }
	{ event 6001 3 "0" }
	//{ event 5001 0 "1" }
	//{ event 5001 2 "1" }
	//{ event 5001 3 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 90" }
	//{ event AE_CLIENT_EFFECT_ATTACH 2 "EjectBrass_9mm 2 90" }
	//{ event AE_CLIENT_EFFECT_ATTACH 3 "EjectBrass_9mm 2 90" }
	snap
	fps 40
}

$sequence "glock_firesingle" {
	"glock_firesingle.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 90" }
	snap
	fps 40
}

$sequence "glock_firelast" {
	"glock_firelast.smd"
	activity "ACT_VM_DRYFIRE" 1
	snap
	fps 35
}

$sequence "glock_draw" {
	"glock_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 17 "Weapon_Glock.Sliderelease" }
	snap
	fps 45
}

$sequence "glock_reload" {
	"glock_reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "Weapon_Glock.Slideback" }
	{ event 5004 14 "Weapon_Glock.Clipout" }
	{ event 5004 38 "Weapon_Glock.Clipin" }
	{ event 5004 64 "Weapon_Glock.Sliderelease" }
	snap
	fps 35
}

$popd
