// Created by Crowbar 0.71

$modelname "weapons\w_pist_fiveseven.mdl"

$bodygroup "studio"
{
	studio "w_pist_fiveseven.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.614 -5.282 1.58

$cdmaterials "models\weapons\w_models\w_pist_fiveseven\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox 0 -0.171 -1.723 10.845 1.374 4.884

$pushd "w_pist_fiveseven_anims"

$include "..\w_generic_seq_pistol.qci"

$popd

$collisionmodel "w_pist_fiveseven_physics.smd"
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
