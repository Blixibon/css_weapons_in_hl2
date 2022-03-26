// Created by Crowbar 0.71

$modelname "weapons\v_pist_usp.mdl"

$scale 1.0
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}

$scale 1.3
$bodygroup "studio"
{
	studio "usp_reference.smd"
}

$surfaceprop "default"

$contents "solid"

$illumposition 2.802 -8.263 -8.118

$cdmaterials "models\weapons\V_models\pist_usp\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.USP_Parent" 0 2.75 6.5 rotate 0 0 0
$attachment "2" "v_weapon.USP_Parent" 0 2.9 1 rotate -10 -180 0
$attachment "muzzle" "v_weapon.USP_Parent" -0.10 2.80 4.25 rotate -90 0 0
$attachment "muzzle_sil" "v_weapon.USP_Parent" -0.10 2.80 10.00 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -6.595 -3.073 -13.55 23.121 8.677 -2.685

$pushd "v_pist_usp_anims"

$sequence "idle" "idle.smd" activity "ACT_VM_IDLE_SILENCED" 1 snap fps 16

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK_SILENCED" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE_SIL" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK_SILENCED" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE_SIL" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
}

$sequence "shoot3" {
	"shoot3.smd"
	activity "ACT_VM_PRIMARYATTACK_SILENCED" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE_SIL" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
}

$sequence "shootlast" {
	"shootlast.smd"
	activity "ACT_VM_DRYFIRE_SILENCED" 1
	snap
	fps 32
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD_SILENCED" 1
	{ event 5004 0 "Weapon_USP.Slideback2" }
	{ event 5004 17 "Weapon_USP.Clipout" }
	{ event 5004 40 "Weapon_USP.Clipin" }
	{ event 5004 82 "Weapon_USP.Sliderelease" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 37
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW_SILENCED" 1
	{ event 5004 26 "Weapon_USP.Slideback" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 48
}

$sequence "add_silencer" {
	"add_silencer.smd"
	activity "ACT_VM_ATTACH_SILENCER" 1
	{ event 5004 38 "Weapon_USP.AttachSilencer" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 37
}

$sequence "idle_unsil" "idle_unsil.smd" activity "ACT_VM_IDLE" 1 snap fps 16

$sequence "shoot1_unsil" {
	"shoot1_unsil.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
}

$sequence "shoot2_unsil" {
	"shoot2_unsil.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
}

$sequence "shoot3_unsil" {
	"shoot3_unsil.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	snap
}

$sequence "shootlast_unsil" {
	"shootlast_unsil.smd"
	activity "ACT_VM_DRYFIRE" 1
	snap
}

$sequence "reload_unsil" {
	"reload_unsil.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "Weapon_USP.Slideback2" }
	{ event 5004 17 "Weapon_USP.Clipout" }
	{ event 5004 40 "Weapon_USP.Clipin" }
	{ event 5004 82 "Weapon_USP.Sliderelease" }
	snap
	fps 37
}

$sequence "draw_unsil" {
	"draw_unsil.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 26 "Weapon_USP.Slideback" }
	snap
	fps 48
}

$sequence "detach_silencer" {
	"detach_silencer.smd"
	activity "ACT_VM_DETACH_SILENCER" 1
	{ event 5004 29 "Weapon_USP.DetachSilencer" }
	fps 37
}

$popd
