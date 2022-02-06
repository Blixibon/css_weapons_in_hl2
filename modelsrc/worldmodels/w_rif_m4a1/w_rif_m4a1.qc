// Created by Crowbar 0.71

$modelname "weapons\w_rif_m4a1.mdl"

$bodygroup "studio"
{
	studio "w_rif_m4a1.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.965 -11.975 1.683

$cdmaterials "models\weapons\w_models\w_rif_m4a1\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "muzzle_flash_silencer" "ValveBiped.flash_silencer" 0 0 0 rotate -90 0 0
$attachment "L_Hand_Attach" "ValveBiped.L_hand_attach" 0 0 0 rotate 0 0 0
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox -8.773 -1.248 -4.683 32.471 2.928 8.048

$pushd "w_rif_m4a1_anims"

$include "..\w_generic_seq_rifle.qci"

$popd

$collisionmodel "w_rif_m4a1_physics.smd"
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
