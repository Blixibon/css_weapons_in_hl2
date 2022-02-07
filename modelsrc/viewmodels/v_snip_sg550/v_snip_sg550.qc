// Created by Crowbar 0.71

$modelname "weapons\v_snip_sg550.mdl"

$scale 1.3

$bodygroup "studio"
{
	studio "sg550_reference.smd"
}
$bodygroup "hands"
{
	studio "../hands_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 5.79 -18.343 -6.323

$cdmaterials "models\weapons\V_models\snip_sg550\"
$cdmaterials "models\weapons\v_models\snip_awp\"
$cdmaterials "models\weapons\v_hand\" //"models\weapons\v_models\hands\"

$attachment "1" "v_weapon.sg550_Parent" 0.3 3.5 31 rotate 0 0 0
$attachment "2" "v_weapon.sg550_Parent" -0.2 4.1 4.1 rotate 0 180 0
$attachment "muzzle" "v_weapon.sg550_Parent" 0.00 4.50 26.75 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -2.843 -2.396 -11.502 39.529 13.977 -1.145

$pushd "v_snip_sg550_anims"

$sequence "idle1" "idle1.smd" activity "ACT_VM_IDLE" 1 snap fps 16

$sequence "shoot" {
	"shoot.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 85" }
	snap
	fps 45
}

$sequence "shoot2" {
	"shoot2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	//{ event 5001 0 "1" }
	//{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass?556 2 80" }
	snap
	fps 45
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 22 "Weapon_SG550.Clipout" }
	{ event 5004 46 "Weapon_SG550.Clipin" }
	{ event 5004 82 "Weapon_SG550.Boltpull" }
	snap
	fps 28
}

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	snap
}

$popd
