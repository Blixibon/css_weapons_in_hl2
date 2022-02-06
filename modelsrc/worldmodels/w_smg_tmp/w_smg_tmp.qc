// Created by Crowbar 0.71

$modelname "weapons\w_smg_tmp.mdl"

$bodygroup "studio"
{
	studio "w_smg_tmp.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.478 -12.345 1.722

$cdmaterials "models\weapons\w_models\w_smg_tmp\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox 0 -0.826 -4.233 24.94 1.532 7.677

$pushd "w_smg_tmp_anims"

$include "..\w_generic_seq_smg.qci"

$popd

$collisionmodel "w_smg_tmp_physics.smd"
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
