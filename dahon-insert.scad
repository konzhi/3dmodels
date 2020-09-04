h = 10;
w = 12;
d = 9;

// inner box wall thickness
th = 1.5;
// inner box depth
id = 6;

// circle radius
r = 13;


difference() {
    // chimney
    cube([w, h, d]);

    union() {
        // inner cube to remove
        translate([th, th, 0])
        cube([w - 2 * th, h - 2 * th, id]);
    }
    
    union() {
        translate([0, h / 2, id + r])
        rotate([90, 0, 90])
        cylinder(w, r, r);
    }
 
}



