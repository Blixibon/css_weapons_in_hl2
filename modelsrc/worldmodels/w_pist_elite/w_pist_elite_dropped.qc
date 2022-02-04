// Created by Crowbar 0.71

$modelname "weapons\w_pist_elite_dropped.mdl"

$bodygroup "studio"
{
	studio "w_pist_elite_dropped.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.22 -0.623 0.135

$cdmaterials "models\weapons\w_models\w_pist_elite\"

$cbox 0 0 0 0 0 0

$bbox -5.824 -5.259 -1.665 7.045 5.688 1.931

$definebone "polymsh" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_elite_dropped_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_elite_dropped_physics.smd"
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
