// Created by Crowbar 0.71

$modelname "weapons\w_pist_elite_single.mdl"

$bodygroup "studio"
{
	studio "w_pist_elite_single.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.642 -5.978 1.033

$cdmaterials "models\weapons\w_models\w_pist_elite\"

$attachment "muzzle_flash_r" "ValveBiped.flash_R" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox 0 -0.226 -2.978 12.221 1.566 5.043

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 1.227019 4.371634 5.825668 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash_R" "ValveBiped.weapon_bone" -0.607287 -0.198363 6.129349 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_elite_single_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_elite_single_physics.smd"
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
