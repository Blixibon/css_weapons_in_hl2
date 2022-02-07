// Created by Crowbar 0.71

$modelname "weapons\w_snip_g3sg1.mdl"

$bodygroup "studio"
{
	studio "w_snip_g3sg1.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.274 -9.621 2.683

$cdmaterials "models\weapons\w_models\w_snip_g3sg1\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox -11.312 -1.057 -3.428 30.553 1.605 8.794

$pushd "w_snip_g3sg1_anims"

$include "..\w_generic_seq_sniperrifle.qci"

$popd

$collisionmodel "w_snip_g3sg1_physics.smd"
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
