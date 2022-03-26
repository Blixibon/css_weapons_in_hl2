// Created by Crowbar 0.71

$modelname "weapons\v_mach_m249para.mdl"

$scale 1.0
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}

$scale 1.3
$bodygroup "studio"
{
	studio "v_m249_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition -1.238 -10.568 -7.374

$cdmaterials "models\weapons\V_models\mach_m249para\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.attachment1" 0 0 0 rotate 0 0 0
$attachment "2" "v_weapon.attachment2" 0 0 0 rotate 0 0 0
$attachment "muzzle" "v_weapon.attachment1" 0.00 0.00 0.00 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -7.913 -7.218 -14.748 29.048 4.742 0

$pushd "v_mach_m249para_anims"

$sequence "idle1" {
	"idle1.smd"
	activity "ACT_VM_IDLE" 1
	loop
}

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 90" }
	snap
	fps 38
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 105" }
	snap
	fps 35
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 14 "Weapon_M249.Boxout" }
	{ event 5004 45 "Weapon_M249.Coverup" }
	{ event 5004 80 "Weapon_M249.Boxin" }
	{ event 5004 99 "Weapon_M249.Chain" }
	{ event 5004 135 "Weapon_M249.Coverdown" }
	snap
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	snap
	fps 25
}

$popd
