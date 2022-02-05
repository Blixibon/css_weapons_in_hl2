// Created by Crowbar 0.71

$modelname "weapons\v_shot_xm1014.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "xm1014_reference.smd"
}
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 3.728 -7.994 -5.445

$cdmaterials "models\weapons\V_models\shot_xm1014\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.xm1014_Parent" 0 3.4 22 rotate 0 0 0
$attachment "2" "v_weapon.xm1014_Parent" 0 3.4 5 rotate -30 165 0
$attachment "muzzle" "v_weapon.xm1014_Parent" 0.00 4.50 26.75 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -12.16 -2.064 -10.89 28.149 9.519 0

$pushd "v_shot_xm1014_anims"

$sequence "idle" "idle.smd" activity "ACT_VM_IDLE" 1 fps 12

$sequence "shoot1" {
	"shoot1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event 6001 0 "2" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_12gauge 2 95" }
	snap
	fps 40
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SHOTGUN MUZZLE" }
	{ event 6001 0 "2" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_12gauge 2 90" }
	snap
	fps 40
}

$sequence "insert" {
	"insert.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 2 "Weapon_XM1014.InsertShell" }
	snap
	fps 90
}

$sequence "after_reload" {
	"after_reload.smd"
	activity "ACT_SHOTGUN_RELOAD_FINISH" 1
	snap
}

$sequence "start_reload" {
	"start_reload.smd"
	activity "ACT_SHOTGUN_RELOAD_START" 1
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_DEagle.Deploy" }
	snap
}

$popd
