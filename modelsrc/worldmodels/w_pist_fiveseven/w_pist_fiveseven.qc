// Created by Crowbar 0.71

$modelname "weapons\w_pist_fiveseven.mdl"

$bodygroup "studio"
{
	studio "w_pist_fiveseven.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.614 -5.282 1.58

$cdmaterials "models\weapons\w_models\w_pist_fiveseven\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox 0 -0.171 -1.723 10.845 1.374 4.884

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 1.227019 4.371634 5.825668 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" -0.365569 -4.566531 -2.077255 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash" "ValveBiped.weapon_bone" -0.623461 -0.636568 4.692646 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_fiveseven_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_fiveseven_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}

$keyvalues
{
	prop_data 
	{
		"base"		"Metal.Small"
	}
}
