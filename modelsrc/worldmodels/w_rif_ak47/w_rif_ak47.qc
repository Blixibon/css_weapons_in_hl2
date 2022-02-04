// Created by Crowbar 0.71

$modelname "weapons\w_rif_ak47.mdl"

$bodygroup "studio"
{
	studio "w_rif_ak47.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.166 -8.589 -0.118

$cdmaterials "models\weapons\w_models\w_rif_ak47\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -12.071 -0.922 -6.535 29.248 0.974 6.298

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 0.941094 5.232718 2.9241 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" 0.033044 -4.566531 3.146277 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash" "ValveBiped.weapon_bone" -0.951264 -2.71904 26.053394 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_rif_ak47_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_rif_ak47_physics.smd"
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
