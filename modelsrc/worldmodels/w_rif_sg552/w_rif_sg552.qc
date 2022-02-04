// Created by Crowbar 0.71

$modelname "weapons\w_rif_sg552.mdl"

$bodygroup "studio"
{
	studio "w_rif_sg552.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.131 -8.093 2.347

$cdmaterials "models\weapons\w_models\w_rif_sg552\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -10.17 -1.569 -3.725 26.357 1.83 8.42

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 1.227019 4.371634 5.825668 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" -1.220291 -4.904069 4.54315 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash" "ValveBiped.weapon_bone" -1.066471 -0.809379 20.249756 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_rif_sg552_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_rif_sg552_physics.smd"
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
