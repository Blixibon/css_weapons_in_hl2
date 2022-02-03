// Created by Crowbar 0.71

$modelname "weapons\w_smg_p90.mdl"

$bodygroup "studio"
{
	studio "w_smg_p90.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.44 -6.903 4.673

$cdmaterials "models\weapons\w_models\w_smg_p90\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -4.606 -0.738 -0.245 18.412 1.617 9.597

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 0.448546 6.11845 9.799571 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash" "ValveBiped.weapon_bone" 0.007867 -1.499806 8.361932 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_smg_p90_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_smg_p90_physics.smd"
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
