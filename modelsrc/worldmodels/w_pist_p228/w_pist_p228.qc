// Created by Crowbar 0.71

$modelname "weapons\w_pist_p228.mdl"

$bodygroup "studio"
{
	studio "w_pist_p228.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.614 -4.9 1.657

$cdmaterials "models\weapons\w_models\w_pist_p228\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox 0 -0.176 -1.612 10.066 1.304 4.93

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 1.227019 4.371634 5.825668 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" -0.365569 -4.566531 -2.077255 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash" "ValveBiped.weapon_bone" -0.580306 -0.570495 3.973946 0 0 0.296506 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_p228_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_p228_physics.smd"
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
