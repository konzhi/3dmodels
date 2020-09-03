h = 11;
w = 12;
d = 10;

// inner box wall thickness
th = 2;
// inner box depth
id = 8;

// circle radius
r = 7.5625;


difference() {
    // chimney
    cube([w, h, d]);

    union() {
        // inner cube to remove
        translate([2, 2, 0])
        cube([w - 2 * th, h - 2 * th, id]);
    }
    
    union() {
        translate([0, h / 2, id + r])
        rotate([90, 0, 90])
        cylinder(w, r, r);
    }
 
}



