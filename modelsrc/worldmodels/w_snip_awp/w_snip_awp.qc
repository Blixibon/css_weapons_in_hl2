// Created by Crowbar 0.71

$modelname "weapons\w_snip_awp.mdl"

$bodygroup "studio"
{
	studio "w_snip_awp.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.252 -14.681 1.443

$cdmaterials "models\weapons\w_models\w_snip_awp\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox -11.531 -1.351 -4.125 40.893 1.855 7.011

$pushd "w_snip_awp_anims"

$include "..\w_generic_seq_sniperrifle.qci"

$popd

$collisionmodel "w_snip_awp_physics.smd"
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
