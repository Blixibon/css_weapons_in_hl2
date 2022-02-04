// Created by Crowbar 0.71

$modelname "weapons\w_pist_usp_silencer.mdl"

$bodygroup "studio"
{
	studio "w_pist_usp_silencer.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.666 -8.952 1.199

$cdmaterials "models\weapons\w_models\w_pist_usp\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox 0 -0.288 -2.419 17.903 1.62 4.8

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 1.227019 4.371634 5.825668 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" -0.365569 -4.566531 -2.077255 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash" "ValveBiped.weapon_bone" -0.560574 -0.791052 12.077674 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.silencer" "ValveBiped.weapon_bone" -0.560574 -0.529543 7.90589 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_usp_silencer_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_usp_silencer_physics.smd"
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
