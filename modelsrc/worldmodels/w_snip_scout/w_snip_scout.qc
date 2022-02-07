// Created by Crowbar 0.71

$modelname "weapons\w_snip_scout.mdl"

$bodygroup "studio"
{
	studio "w_snip_scout.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.758 -11.94 2.751

$cdmaterials "models\weapons\w_models\w_snip_scout\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox -10.118 -2.613 -1.958 33.964 1.114 7.46

$pushd "w_snip_scout_anims"

$include "..\w_generic_seq_sniperrifle.qci"

$popd

$collisionmodel "w_snip_scout_physics.smd"
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
