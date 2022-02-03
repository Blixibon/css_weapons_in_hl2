// Created by Crowbar 0.71

$modelname "weapons\w_pist_deagle.mdl"

$bodygroup "studio"
{
	studio "w_pist_deagle.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.629 -6.47 1.581

$cdmaterials "models\weapons\w_models\w_pist_deagle\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox 0 -0.516 -1.998 13.222 1.773 5.221

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 1.227019 4.371634 5.825668 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" -0.365569 -4.566531 -2.077255 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash" "ValveBiped.weapon_bone" -0.605127 -0.347153 7.114526 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_deagle_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_deagle_physics.smd"
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
