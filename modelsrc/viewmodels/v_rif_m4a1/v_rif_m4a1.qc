// Created by Crowbar 0.71

$modelname "weapons\v_rif_m4a1.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "m4a1_reference.smd"
}
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 3.995 -9.538 -6.393

$cdmaterials "models\weapons\V_models\rif_m4a1\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.m4_Parent" 0.2 3.5 20 rotate 0 0 0
$attachment "2" "v_weapon.m4_Parent" 0 3.6 3 rotate -30 165 0
$attachment "muzzle" "v_weapon.m4_Parent" 0.10 4.55 19.00 rotate -90 -10 0
$attachment "muzzle_sil" "v_weapon.m4_Parent" 0.10 4.55 25.30 rotate -90 -10 0

$cbox 0 0 0 0 0 0

$bbox -9.973 -1.882 -12.786 29.049 9.873 0

$pushd "v_rif_m4a1_anims"

$sequence "idle" "idle.smd" activity "ACT_VM_IDLE_SILENCED" 1 fps 16

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK_SILENCED" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE_SIL" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
	snap
	fps 20
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK_SILENCED" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE_SIL" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
	snap
	fps 20
}

$sequence "shoot3" {
	"shoot3.smd"
	activity "ACT_VM_PRIMARYATTACK_SILENCED" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE_SIL" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
	snap
	fps 20
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD_SILENCED" 1
	{ event 5004 25 "Weapon_M4A1.Clipout" }
	{ event 5004 53 "Weapon_M4A1.Clipin" }
	{ event 5004 88 "Weapon_M4A1.Boltpull" }
	snap
	fps 37
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW_SILENCED" 1
	{ event 5004 1 "Weapon_M4A1.Deploy" }
	{ event 5004 17 "Weapon_M4A1.Boltpull" }
	snap
	fps 40
}

$sequence "add_silencer" {
	"add_silencer.smd"
	activity "ACT_VM_ATTACH_SILENCER" 1
	{ event 5004 28 "Weapon_M4A1.Silencer_On" }
}

$sequence "idle_unsil" {
	"idle_unsil.smd"
	activity "ACT_VM_IDLE" 1
	fps 16
}

$sequence "shoot1_unsil" {
	"shoot1_unsil.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
	snap
	fps 20
}

$sequence "shoot2_unsil" {
	"shoot2_unsil.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
	snap
	fps 20
}

$sequence "shoot3_unsil" {
	"shoot3_unsil.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
	snap
	fps 20
}

$sequence "reload_unsil" {
	"reload_unsil.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 25 "Weapon_M4A1.Clipout" }
	{ event 5004 53 "Weapon_M4A1.Clipin" }
	{ event 5004 88 "Weapon_M4A1.Boltpull" }
	snap
	fps 37
}

$sequence "draw_unsil" {
	"draw_unsil.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_M4A1.Deploy" }
	{ event 5004 17 "Weapon_M4A1.Boltpull" }
	snap
	fps 40
}

$sequence "detach_silencer" {
	"detach_silencer.smd"
	activity "ACT_VM_DETACH_SILENCER" 1
	{ event 5004 21 "Weapon_M4A1.Silencer_Off" }
}

$popd
