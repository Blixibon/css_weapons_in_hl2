// Created by Crowbar 0.71

$modelname "weapons\w_rif_famas.mdl"

$bodygroup "studio"
{
	studio "w_rif_famas.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.199 -7.419 1.48

$cdmaterials "models\weapons\w_models\w_rif_famas\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -10.487 -1.078 -4.979 25.325 1.284 7.938

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 1.227019 4.371634 7.456431 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" -1.226424 -4.365376 -8.678885 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash" "ValveBiped.weapon_bone" -1.124347 -1.260991 17.618429 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_rif_famas_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_rif_famas_physics.smd"
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
