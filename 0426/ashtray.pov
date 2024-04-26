#include "colors.inc"
#include "shapes.inc"

// 物体
difference {
	object { Disk_Y scale <2.0, 0.5, 2.0> }
	object { Disk_Y scale <1.8, 0.5, 1.8> translate <0.0, 0.2, 0.0> }
	object { Disk_X scale <3.0, 0.2, 0.2> translate <0.0, 0.5, 0.0> }
	object { Disk_Z scale <0.2, 0.2, 3.0> translate <0.0, 0.5, 0.0> }
	pigment { color Gray }
}

// 座標軸
object { Cylinder_X scale 0.02 pigment{color Red} }    // x軸
object { Cylinder_Y scale 0.02 pigment{color Green} }  // y軸
object { Cylinder_Z scale 0.02 pigment{color Blue} }   // z軸

// 背景
background { color LightBlue }

// 照明
light_source {
  <500, 800, -600>           // 照明の位置
  color White*2
  parallel point_at <0, 0, 0>
}

// カメラ
camera{
  location <5.0, 6.0, -8.0>  // カメラの位置
  look_at <0.0, 0.0, 0.0>    // カメラの注目する位置
  angle 35  		     // カメラの視野角
}

