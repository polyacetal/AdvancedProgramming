#include"colors.inc"
#include"shapes.inc"
#include"textures.inc"

camera{	location <-5, 0, -20>
	look_at <0, 0, 0>
	angle 50}

light_source{	<10, 0, -20>
		color White*2 }

merge{
	object{
        	Disk_X
	        texture{Silver1}
		scale <2, 1, 1>
		translate <0, .5, 0>
	}
	object{
        	Disk_Y
        	texture{DMFWood6}
		scale <0.5, 5, 0.5>
		translate <0, -3, 0>
	}
	translate <-5, 3, 0>
}

merge{
	intersection{
		object{
			Sphere
		}
		object{
	        	Cone_Y
			scale <1.5, 1.5, 1.5>
		}
		texture{DMFWood6}
		scale <2, 2, 2>
		translate <0, -3, 0>
	}
	object{
		Cone_Y
		texture{Silver1}
		scale <0.3, 4, 0.3>
		translate <0, 1, 0>
	}
}

difference{
	object{
		Disk_X
		scale <1, 4, 4>
	}
	object{
        	Disk_X
		scale <1.5, 3, 3>
		translate <0, 0, -0.5>
	}
	texture{DMFWood6}
	translate <5, 0, 0>
}
