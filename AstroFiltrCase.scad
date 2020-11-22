/* Astro filter case
   

   Copyright (c) 2020 Roman Hujer   http://hujer.net

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,ss
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.

  Description: 

*/

use <threads.scad>

module M4_imbus_B(){
 rv2=7.3;
 hm = 3.4;
 union(){  

 translate([0,0,-0.5 ]) cylinder(h=4.7, r=7.3/2, center=false, $fn=360);
 cylinder(h=26, r=4.2/2, center=false, $fn=360);
 }
}


module M3_imbus_B(){
 rv2=7.3;
 hm = 3.4;
 union(){  

 translate([0,0,-0.5 ]) cylinder(h=4, r=6/2, center=false, $fn=360);
 cylinder(h=26, r=3.2/2, center=false, $fn=360);
  }
}





//Select  model
Model = 2;   //  1 = box, 2 = Filtr holder; 3= Filtr changer;
BoxCount = 1;  // Box count



// Options for filtr holder 

//label="H-Alpha";
//label="H-Beta";
//label="SII";
//label="OIII";
//label="UHC";
//label="CLS";
//label="R";
//label="G";
//label="B";
//label="L-Pro";
//label="L-eNhance";
//label="Skyglow";
//label="UV/IR-cut";
//label="Moon";
//label="Ca";
//label="Venus";
//label="FLD";
//label="CPL";
//label="Yellow";
//label="Orange";
//label="Moon 1.25";
//label="UV/IR 1.25";
//label="CLS 1.25";
//label="UHC 1.25";
//label="Skyglow           1.25";
//label="H-Alpha           1.25";
//label="SII               1.25";
//label="OIII              1.25";
//label="Red23A              1.25";
//label="Blue80A             1.25";
//label="Grean56             1.25";
label="Yellow12            1.25";

//label=" ";


//tredad_dia = 48;     tredad_pitch=0.75; thread_fix = 0.4;  // For 2"      M48   x 0.75    
tredad_dia = 28.5; tredad_pitch=0.6;  thread_fix = 0.5;  // For 1.25"   M28.5 x 0.6
//tredad_dia = 49;   tredad_pitch=0.75; thread_fix = 0.7;  // 49 - Foto M49

 


if (Model == 1) {

for (i=[0:1:BoxCount-1]) translate ([0,0,i*15-i])

   
    difference()
    {
      translate ([0,-2.5,-4]) cube([66,63,15],center=true);
 
     {
       translate ([0, 0,-11/2+1.4]) cube([53.2,58.5,11.5],center=true); // Big Hole
       cube([56.8,58.5,3.2],center=true);      //Small Hole  
       translate([29.5,29.1,-6.5])rotate([90,0,0]) cylinder (h = 1.5, r=2.7,  $fn=100 );  //Hole for Magnet
       translate([-29.5,29.1,-6.5])rotate([90,0,0]) cylinder (h = 1.5, r=2.7,  $fn=100 ); //Hole for Magnet
     }    
  } 

}  

else if (Model == 2) {
// For 2"  M48
difference() {
 union()  {
 difference() { // base plate
   difference() {
     cube([56,53,2.8],center=true);  // base plate
     translate ([0,0,-2])  metric_thread (diameter=tredad_dia  + thread_fix, pitch=tredad_pitch, length=4, internal=true );  //thread
   }  
   difference() {   // Camber
     translate ([0,0,-2]) cylinder (h = 4, r=80/2,  $fn=100);
     translate ([0,0,-2]) cylinder (h = 4, r=73/2,  $fn=100 );
   }
 } 
     translate ([0,56/2-0.5,-11.5/2+1.4]) cube([53,3,11.5],center=true);  // Cap
     translate ([0,56/2+2.5,-13/2+1.4]) cube([66,3,13],center=true);  //Cap out face
     translate ([0,56/2+5,-13/2+1.4]) cube([5,10,5],center=true);     // Hand holder
}
          
 {
   translate([29.5,30.4,-6.5])rotate([90,0,0]) cylinder (h = 1.5, r=2.7,  $fn=100 );  //Hole for Magnet
   translate([-29.5,30.4,-6.5])rotate([90,0,0]) cylinder (h = 1.5, r=2.7,  $fn=100 ); //Hole for Magnet
   translate([-27,31.5,-4])rotate([-90,0,0]) linear_extrude(height = 0.5 )text( label, size=3.5); // Label
          
 } 
}
   


}else if (Model == 3) {
    difference() {  
    difference()
    {
      translate ([0,-1.5,-4]) cube([66,61,25],center=true);
 
     {
       translate ([0, 0,-11/2+1.4]) cube([53.2,58.5,11.5],center=true); // Big Hole
       cube([56.8,58.5,3.2],center=true);      //Small Hole  
       translate([29.5,29.1,-6.5])rotate([90,0,0]) cylinder (h = 1.5, r=2.7,  $fn=100 );  //Hole for Magnet
       translate([-29.5,29.1,-6.5])rotate([90,0,0]) cylinder (h = 1.5, r=2.7,  $fn=100 ); //Hole for Magnet
     }    
  } 
     translate ([0,0,-17])  metric_thread (diameter=42 + 0.2,  pitch=0.75, length=27, internal=true );  //thread
}
    
} else if (Model == 4) {
    
    difference()
    {
      translate ([0,-1.5,-4]) cube([66,61,26.5],center=true);
 
     {
       translate ([0, 0,-11/2+1.4]) cube([53.2,58.5,11.5],center=true); // Big Hole
       cube([56.8,58.5,3.2],center=true);      //Small Hole  
       translate([29.5,29.1,-6.5])rotate([90,0,0]) cylinder (h = 1.5, r=2.7,  $fn=100 );  //Hole for Magnet
       translate([-29.5,29.1,-6.5])rotate([90,0,0]) cylinder (h = 1.5, r=2.7,  $fn=100 ); //Hole for Magnet
     translate ([0,0,-19])  metric_thread (diameter=42 + 0.2,  pitch=1, length=10, internal=true );  //thread
     translate ([0,0, 0])  metric_thread (diameter=42 + 0.2,  pitch=0.75, length=10, internal=true );  //thread

         }    
  } 
     
    

} else if (Model == 5) {
  difference() {
    union(){
   metric_thread (diameter=42.2,  pitch=0.75, length=5, internal=false );  
   translate ([0,0,4])cylinder (h =45.5-12.5-27 , r=28,  $fn=12 );
   translate ([0,0,4+45.5-12.5-28])metric_thread (diameter=42,  pitch=0.75, length=5, internal=false );  
    }
   cylinder (h =15 , r=18.5,  $fn=360 );    
}

} else if (Model == 6) {
    
    difference()
    {
      translate ([0,-1.5,-4]) cube([66,61,19],center=true);
 
     {
       translate ([0, 0,-11/2+1.4]) cube([53.2,58.5,11.5],center=true); // Big Hole
       cube([56.8,58.5,3.2],center=true);      //Small Hole  
       translate([29.5,29.1,-6.5])rotate([90,0,0]) cylinder (h = 1.5, r=2.7,  $fn=100 );  //Hole for Magnet
       translate([-29.5,29.1,-6.5])rotate([90,0,0]) cylinder (h = 1.5, r=2.7,  $fn=100 ); //Hole for Magnet
     translate ([0,0,-19])  metric_thread (diameter=42 + 0.2,  pitch=0.75, length=10, internal=true );  //thread
     translate ([0,0, 0])  metric_thread (diameter=42 + 0.2,  pitch=0.75, length=10, internal=true );  //thread

         }    
  } 
     
    

}
 else if (Model == 7) {
    difference() {
    union(){
   cylinder (h =21.5 , r=28,  $fn=12 );
   translate ([0,0,21.5-1])metric_thread (diameter=42,  pitch=0.75, length=5, internal=false );  
    }
    union(){
    metric_thread (diameter=42.35,  pitch=1, length=10, internal=true );  
    translate ([0,0,10]) cylinder (h =30 , r=18.5,  $fn=360 );    
    translate([0,-27.5,9])rotate([90,0,15]) linear_extrude(height = 0.5 ) text( " 21.5" , size=3.5); // Label  
}
        
    }   
  
} else if (Model == 8) {
  union(){

  metric_thread (diameter=48.3,  pitch=0.75, length=8, internal=false );
  cylinder (h=8.5 , r=23.3,  $fn=360 );          
  cylinder (h=4 , r=28,  $fn=12 );      
      
  }
} 
else if (Model == 9) {
    
    difference() {
     
        translate ([0,0,9.5/2])  cube([44+16,44+16,9.5],center=true); 
        
     union(){
    metric_thread (diameter=42.5,  pitch=1, length=10, internal=true );  
     translate ([22,22,0])  M3_imbus_B();
    translate ([-22,22,0]) M3_imbus_B();        
    translate ([-22,-22,0])  M3_imbus_B();        
    translate ([22,-22,0]) M3_imbus_B();        
   
  
  }
}
}



