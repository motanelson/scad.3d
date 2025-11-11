// Engrenagem simples - Diâmetro: 40mm, 12 dentes
module engrenagem_simples() {
    color("Yellow")
    difference() {
        // Corpo principal da engrenagem
        cylinder(h=5, r=20, $fn=60);
        
        // Furo central (eixo de 5mm)
        cylinder(h=5, r=2.5, $fn=30);
    }
    color("Yellow")
    translate([0, 0, -10])
    cylinder(h=25, r=3, $fn=60);
    color("Yellow")
    translate([0, 0, -2])
    cylinder(h=9, r=8, $fn=60);

    // Dentes (simplificado)
    for (i = [0:11]) {
        rotate([0, 0, i * 30])
        translate([18, 0, 0])
        cube([5, 5, 5], center=false);
    }
}

engrenagem_simples();