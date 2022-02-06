// Created by Crowbar 0.71

$modelname "weapons\w_rif_galil.mdl"

$bodygroup "studio"
{
	studio "w_rif_galil.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.587 -11.603 0.472

$cdmaterials "models\weapons\w_models\w_rif_galil\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox -9.957 -2.569 -5.913 33.164 1.3 6.856

$pushd "w_rif_galil_anims"

$include "..\w_generic_seq_rifle.qci"

$popd

$collisionmodel "w_rif_galil_physics.smd"
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
