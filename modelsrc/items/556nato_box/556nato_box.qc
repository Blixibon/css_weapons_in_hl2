// Created by Crowbar 0.71

$modelname "items\556mm_box.mdl"

$staticprop

$bodygroup "body"
{
	studio "boxmrounds_reference.smd"
}

$lod 20
{
	replacemodel "boxmrounds_reference.smd" "boxmrounds_reference_lod1.smd"
	nofacial
}

$surfaceprop "item"

$contents "solid"

$illumposition 0 -0.059 6.721

$cdmaterials "models\items\"

$cbox 0 0 0 0 0 0

// Generate a new bounding box
//$bbox -6.105 -9.972 -0.345 6.105 9.972 13.572

$definebone "static_prop" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"boxmrounds_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 5
	loop
}

$collisionmodel "boxmrounds_physics.smd"
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
