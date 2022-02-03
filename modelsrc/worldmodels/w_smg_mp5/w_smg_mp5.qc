// Created by Crowbar 0.71

$modelname "weapons\w_smg_mp5.mdl"

$bodygroup "studio"
{
	studio "w_smg_mp5.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.277 -8.749 1.616

$cdmaterials "models\weapons\w_models\w_smg_mp5\"

$attachment "muzzle_flash" "ValveBiped.Flash" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -8.179 -1.262 -5.094 25.427 1.815 8.325

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone" "ValveBiped" 0.585547 4.371634 8.27127 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.weapon_bone_Clip" "ValveBiped.weapon_bone" -0.310123 -4.371033 5.233142 0 0 0 0 0 0 0 0 0
$definebone "ValveBiped.Flash" "ValveBiped.weapon_bone" -0.264453 0.966145 17.15546 -0.406743 1.267039 -0.162605 0 0 0 0 0 0


$sequence "idle" {
	"w_smg_mp5_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_smg_mp5_physics.smd"
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
