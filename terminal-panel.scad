// default resolution
$fn = 50;

// power jack 
// 28mm between screws
// 3mm screw diameter (5mm clearance)
// 10mm usb port opening

// output jack
// screw holes 15mm apart on center
// screw diameter 3mm
// jack holes 15mm apart on center
// jack holes diameter 11m (at base)
module phono_jacks(){
    // jacks
    
    // jack 1
    cylinder(r=11/2, h=5);
    translate([15,0,0]){
        // jack 2
        cylinder(r=11/2, h=5);
    }
    
    // screws
    translate([15/2,0,0]){
        
        // screw 1
        translate([0,-15/2,0]){
            cylinder(r=3/2,h=5);
        }
        
        // screw 2
        translate([0,15/2,0]){
            cylinder(r=3/2,h=5);
        }
    }
}

difference(){
    
    // main panel
    cube([91,43,3]);
    
    // panel mounting screw holes (5mm from edge, 3mm diam)
    translate([5,5,-1]){
        cylinder(r=3/2, h=5);
    }
    
    translate([(91-5),5,-1]){
        cylinder(r=3/2, h=5);
    }

    translate([(91-5),(43-5),-1]){
        cylinder(r=3/2, h=5);
    }

    translate([5,(43-5),-1]){
        cylinder(r=3/2, h=5);
    }    
    
    // power input
    translate([20,(43/2),-1]){
        // left screw
        cylinder(r=3/2, h=5);
        
        // usb socket hole
        translate([28/2,0,0]){
            //cylinder(r=10/2, h=5);
            translate([-15/2,-8/2,0]){
                cube([15,8,5]);
            }
        }
        
        // right screw
        translate([28,0,0]){
            cylinder(r=3/2, h=5);
        }
    }
    
    
    // phono output
    translate([65,14,-1]){
        rotate([0,0,90]){       
                phono_jacks();
        }
    }
}