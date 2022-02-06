// Created by Crowbar 0.71

$modelname "weapons\w_shot_xm1014.mdl"

$bodygroup "studio"
{
	studio "w_shot_xm1014.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.124 -8.204 1.645

$cdmaterials "models\weapons\w_models\w_shot_xm1014\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox -9.727 -1.343 -2.489 26.134 1.094 5.779

$pushd "w_shot_xm1014_anims"

$include "..\w_generic_seq_shotgun.qci"

$popd

$collisionmodel "w_shot_xm1014_physics.smd"
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
