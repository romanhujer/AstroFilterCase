/* Astro caps
             0

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

// 1 Edge HD 3.25" Cap  (Optec Lepus  0.62x  or T2) 
// 2 SCT  2"     Cap 
// 3 M48 x 0.75  Cap
// 4 M42 x 0.75  Cap


Model = 8;

if (Model == 1) {
    

  difference() {
    union()  {
        translate ([0,0,12]) cylinder (h = 3, r=48, center = true, $fn=100 );
        english_thread (diameter=3.28, threads_per_inch=16, length=1/2);
    }
    union()  {
        cylinder (h = 21, r=26, center = true, $fn=100 );
        cylinder (h = 5.5, r=39, center = true, $fn=100 );
    }
  }
}
else if (Model == 2) {
    difference() {
        cylinder (h = 10, r=28,  $fn=100 );
        translate ([0,0,2])english_thread (diameter=2+0.03, threads_per_inch=24, length=1/2, internal=true);
    } 
    
    
}
else if (Model == 3) {
 difference() {
        cylinder (h = 10, r=28,  $fn=100 );
        translate ([0,0,2])  metric_thread (diameter=48.8, pitch=0.75, length=10, internal=true);
         
    } 
    
}    
else if (Model == 4) {
 difference() {
        cylinder (h = 10, r=23,  $fn=100 );
        translate ([0,0,2])  metric_thread (diameter=42.8, pitch=0.75, length=10, internal=true );
         
    } 
}    
else if (Model == 5) {
     
    tredad_dia = 29.5; tredad_pitch=0.6;  thread_fix = 0.7;  // For 1.25"   M28.5 x 0.6
    difference() {
    union(){
    metric_thread (diameter=tredad_dia, pitch=tredad_pitch, length=5, internal=false );
    translate ([0,0,5])  metric_thread (diameter=42.3, pitch=0.75, length=5, internal=false );
    translate ([0,0,4.5]) cylinder (h = 1, r=22,  $fn=100 );
    }
    union(){
    cylinder (h = 10, r=13,  $fn=100 );
    translate ([0,0,5.5]) cylinder (h = 10, r=16.5,  $fn=100 );  
  }
}
    
}    

else if (Model == 6) {
     
    tredad_dia = 29.8; tredad_pitch=0.6;  thread_fix = 0.7;  // For 1.25"   M28.5 x 0.6
    difference() {
    union(){
    metric_thread (diameter=tredad_dia, pitch=tredad_pitch, length=5, internal=false );
    translate ([0,0,5])  metric_thread (diameter=28.7, pitch=0.6, length=4, internal=false );
    translate ([0,0,5]) cylinder (h = 0.3, r=15,  $fn=100 );
    }
    union(){
    cylinder (h = 10, r=11,  $fn=100 );
   }
}
    
}    

else if (Model == 7) {
     
    tredad_dia = 51.4; tredad_pitch=0.75;  thread_fix = 0.7;  // For 1.25"   M28.5 x 0.6
    difference() {
    union(){
    metric_thread (diameter=tredad_dia, pitch=tredad_pitch, length=5, internal=false );
    translate ([0,0,5])  metric_thread (diameter=28.7, pitch=0.6, length=4, internal=false );
    translate ([0,0,5]) cylinder (h = 0.8, r=26.5,  $fn=100 );
    }
    union(){
    cylinder (h = 10, r=11,  $fn=100 );
   }
}
}
else if (Model == 8) {
     
    tredad_dia = 50.7; tredad_pitch=0.75;  
    difference() {
    union(){
    metric_thread (diameter=tredad_dia, pitch=tredad_pitch, length=5, internal=false );
    translate ([0,0,24])  metric_thread (diameter=41.7, pitch=0.75, length=4, internal=false );
    translate ([0,0,5]) cylinder (h = 20, r=26.5,  $fn=100 );
    translate ([0,0,-1]) cylinder (h = 2, r=49/2,  $fn=100 );    
    translate ([0,0,28]) cylinder (h = 1, r=20,  $fn=100 );            
    }
    union(){
    translate ([0,0,-1]) cylinder (h = 30, r=17,  $fn=100 );
   }
}
    
}    