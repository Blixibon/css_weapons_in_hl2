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
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox -10.17 -1.569 -3.725 26.357 1.83 8.42

$pushd "w_rif_sg552_anims"

$include "..\w_generic_seq_rifle.qci"

$popd

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
