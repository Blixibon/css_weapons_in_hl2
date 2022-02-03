// Created by Crowbar 0.71

$modelname "weapons\w_smg_ump45.mdl"

$bodygroup "studio"
{
	studio "w_smg_ump45.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.372 -5.174 -0.184

$cdmaterials "models\weapons\w_models\w_smg_ump45\"

$attachment "muzzle_flash" "ValveBiped.flash" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -10.8 -0.797 -7.76 21.148 1.227 7.271

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 1.227019 4.371634 5.825668 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" -1.090437 -6.825416 5.79273 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.flash" "ValveBiped.weapon_bone" -1.063202 -0.160185 15.041173 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_smg_ump45_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_smg_ump45_physics.smd"
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
