#include "colors.inc"
#include "shapes.inc"

// 物体
#macro Eye(SIZE)
merge {
	object { Disk_Z scale<SIZE, SIZE, 0.1> pigment { color NavyBlue } }
	difference {
		object { Disk_Z scale<1.5, 1.5, 0.1> pigment { color White } }
		object { Disk_Z scale<SIZE, SIZE, 0.2> }
	}
}
#end
#declare L_disk = difference {
	object { Disk_Z scale<2.2, 2.2, 0.1> pigment { color OrangeRed } }
	object { Disk_Z scale<1.5, 1.5, 0.2> }
}
#declare Wing = merge {
	object { Cube scale<0.35, 1.8, 0.1>}
	object { Disk_Z scale<0.35, 0.35, 0.1> translate<0, 1.8, 0>}
	pigment { color OrangeRed}
	rotate<0, 0, 90>
	translate<-1.8, 1.85, 0>
}

#macro Icon(SIZE)
union {
	object { Eye(SIZE) }
	object { L_disk }
	object { Wing }
	object { Wing rotate<0, 0, 30>}
	object { Wing rotate<0, 0, 60>}
	rotate<0, 0, -30>
}
#end

object { Icon(0.9) translate<-4, 0, 0> }
object { Icon(0.5) translate<4, 0, 0> }


/*
// 座標軸
object { Cylinder_X scale 0.02 pigment{color Red} }    // x軸
object { Cylinder_Y scale 0.02 pigment{color Green} }  // y軸
object { Cylinder_Z scale 0.02 pigment{color Blue} }   // z軸
*/

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
  location <-0.5, -4.0, -15.0>  // カメラの位置
  look_at <-0.5, 0.0, 0.0>    // カメラの注目する位置
  angle 60  		     // カメラの視野角
}

