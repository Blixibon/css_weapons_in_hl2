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
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox -10.487 -1.078 -4.979 25.325 1.284 7.938

$pushd "w_rif_famas_anims"

$include "..\w_generic_seq_rifle.qci"

$popd

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
