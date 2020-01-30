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


Model = 2;

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