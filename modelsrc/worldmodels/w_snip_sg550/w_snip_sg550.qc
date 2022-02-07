// Created by Crowbar 0.71

$modelname "weapons\w_snip_sg550.mdl"

$bodygroup "studio"
{
	studio "w_snip_sg550.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.22 -13.689 2.268

$cdmaterials "models\weapons\w_models\w_snip_sg550\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox -7.038 -1.069 -2.777 34.136 1.457 7.313

$pushd "w_snip_sg550_anims"

$include "..\w_generic_seq_sniperrifle.qci"

$popd

$collisionmodel "w_snip_sg550_physics.smd"
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
