// Created by Crowbar 0.71

$modelname "weapons\w_rif_aug.mdl"

$bodygroup "studio"
{
	studio "w_rif_aug.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.833 -12.83 3.23

$cdmaterials "models\weapons\w_models\w_rif_aug\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox -4.75 -0.767 -2.878 30.41 2.308 9.338

$pushd "w_rif_aug_anims"

$include "..\w_generic_seq_rifle.qci"

$popd

$collisionmodel "w_rif_aug_physics.smd"
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
