// Created by Crowbar 0.71

$modelname "weapons\w_pist_glock18.mdl"

$bodygroup "studio"
{
	studio "w_pist_glock18.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.551 -5.195 1.398

$cdmaterials "models\weapons\w_models\w_pist_glock18\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0
$attachment "1" "ValveBiped.weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45 // Shell eject
$attachment "muzzle" "ValveBiped.flash" 0 0 0 rotate -90 0 0 // HL2 uses this name

$cbox 0 0 0 0 0 0

$bbox 0 -0.409 -1.932 10.625 1.28 4.73

$pushd "w_pist_glock18_anims"

$include "../w_generic_seq_pistol.qci"

$popd

$collisionmodel "w_pist_glock18_physics.smd"
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
