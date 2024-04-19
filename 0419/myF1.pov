#include "F1.inc"
#include "colors.inc"
#include "shapes.inc"

// F1 マシン
merge {
  // マシン本体
  merge {
    object { AeroBody }
    object { FrontLeg2(-15) }
    object { RearLeg2 }
    object { AeroNose2 }
    object { AeroSide1 }
    object { FrontWing3 pigment { color Orange } translate <0, -0.1, 0> }
    object { RearWing1 pigment { color Orange } translate <0, 0, -0.1> }
    pigment { color Gray05 }
  }

  // ドライバー
  merge {
    object { Driver }
    object { Helmet2 }
    object { Shield }
    rotate -15*z
  }
  rotate 15*y
  translate <0, 0.3, 0>
}

object {Ground }
sky_sphere { Fine }

/*
// 座標軸
object { Cylinder_X scale 0.02 pigment { color Red } }    // x軸
object { Cylinder_Y scale 0.02 pigment { color Green } }  // y軸
object { Cylinder_Z scale 0.02 pigment { color Blue } }   // z軸
*/

// 背景
background { color LightBlue }

// 照明
light_source {
  < 100, 200,  -100>  // 照明の位置
  color White*1.0
  parallel point_at <0, 0, 0>
}

// カメラ
camera {
  location <4.0, 6.0, -8.0>  // カメラの位置
  look_at <-0.5, 0.0, 0.0>    // 注目先の位置
  angle 25  		     // 視野角
}

