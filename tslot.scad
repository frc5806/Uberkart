// Forked from Nathan Zadoks 2011 under GPLv2

module tslot(length,size=1,thickness=0.075,gap=0.25,center=false) {
    start=thickness/sqrt(2);
    color([0.5,0.5,0.5]) linear_extrude(height=length,center=center) difference(){
        union(){
            for(d=[0:3]) rotate([0,0,d*90]) polygon(points=[
                [0,0], [0,start],[size/2-thickness-start,size/2-thickness],[gap/2,size/2-thickness],[gap/2,size/2],
                [size/2,size/2],[size/2,gap/2],[size/2-thickness,gap/2],[size/2-thickness,size/2-thickness-start],[start,0]
            ]); square(gap+thickness,center=true);
        } circle(r=gap/2,center=true,$fn=20);
    }
}

module quadslot(length,size=1,thickness=0.075,gap=0.25,center=false) {
    start=thickness/sqrt(2);
    color([0.5,0.5,0.5]) linear_extrude(height=length,center=center) union() {
         for (i=[0:3]) rotate([0,0,i*90]) translate([-size/2,size/2,0]) difference(){
            union(){
                for (d=[0:2]) rotate([0,0,d*90]) polygon(points=[
                    [0,0], [0,start],[size/2-thickness-start,size/2-thickness],[gap/2,size/2-thickness],[gap/2,size/2],
                    [size/2,size/2],[size/2,gap/2],[size/2-thickness,gap/2],[size/2-thickness,size/2-thickness-start],[start,0]
                ]); square(gap+thickness,center=true);
            } circle(r=gap/2,center=true,$fn=20);
        }
    }
}
