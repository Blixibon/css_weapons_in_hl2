// Created by Crowbar 0.71

$modelname "items\45acp_box.mdl"

$staticprop

$bodygroup "body"
{
	studio "boxsrounds_reference.smd"
}


$surfaceprop "item"

$contents "solid"

$illumposition 0 0 5.757

$cdmaterials "models\items\"

$cbox 0 0 0 0 0 0

$bbox -3.131 -9.379 -0.28 3.131 9.476 11.515

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"boxsrounds_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 5
	loop
}

$collisionmodel "boxsrounds_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave
	$maxconvexpieces 1

}

$keyvalues
{
	prop_data 
	{
		"base"		"Item.Small"
	}
}
