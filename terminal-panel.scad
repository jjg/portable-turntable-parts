
// power jack 
// 28mm between screws
// 3mm screw diameter (5mm clearance)
// 10mm usb port opening

// default resolution
$fn = 50;

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
        cylinder(r=5/2, h=5);
        
        // usb socket hole
        translate([28/2,0,0]){
            cylinder(r=10/2, h=5);
        }
        
        // right screw
        translate([28,0,0]){
            cylinder(r=5/2, h=5);
        }
    }
    
    
    // phono output
}