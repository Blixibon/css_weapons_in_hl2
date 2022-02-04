// Created by Crowbar 0.71

$modelname "weapons\w_rif_aug.mdl"

$bodygroup "studio"
{
	studio "w_rif_aug.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.833 -12.83 3.23

$cdmaterials "models\weapons\w_models\w_rif_aug\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -4.75 -0.767 -2.878 30.41 2.308 9.338

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 0.437203 5.568959 12.277983 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" -0.305385 -4.371634 -7.399602 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash" "ValveBiped.weapon_bone" -0.074414 -0.001451 17.496016 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_rif_aug_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_rif_aug_physics.smd"
{
	$mass 10
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
