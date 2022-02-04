// Created by Crowbar 0.71

$modelname "weapons\w_mach_m249para.mdl"

$bodygroup "studio"
{
	studio "w_mach_m249.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.849 -10.166 2.943

$cdmaterials "models\weapons\w_models\w_mach_m249\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -8.487 -2.935 -3.858 28.805 4.688 9.744

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 1.420404 4.371634 0.692094 0 0 -2.746645 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" -0.305385 -4.371634 5.839864 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash" "ValveBiped.weapon_bone" -1.230863 0.057261 27.746819 -0.185123 1.564347 2.166411 0 0 0 0 0 0


$sequence "idle" {
	"w_mach_m249para_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_mach_m249para_physics.smd"
{
	$mass 15
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
