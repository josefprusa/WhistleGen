module Candal_contour00x21_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[9, 44], [16.0, 44.0], [23, 44], 
		[22.0, 30.0], [21, 16], [16.0, 16.0], 
		[11, 16],[10.0, 30.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[9, 44], [16.0, 44.0], [23, 44], 
		[22.0, 30.0], [21, 16], [16.0, 16.0], 
		[11, 16],[10.0, 30.0], ]);
}}}

module Candal_contour00x21_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x21_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x21(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x21_skeleton(height);
			Candal_contour00x21_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x21_subtractive_curves(steps, height);
	}
}

module Candal_contour10x21_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[16, -1], [14, -1], [12.5, -0.5], 
		[11, 0], [10.0, 1.0], [9, 2], 
		[8.5, 3.0], [8, 4], [8, 5], 
		[8, 6], [8.5, 7.0], [9, 8], 
		[10.0, 9.0], [11, 10], [12.5, 10.5], 
		[14, 11], [16, 11], [18, 11], 
		[19.5, 10.5], [21, 10], [22.0, 9.0], 
		[23, 8], [23.5, 7.0], [24, 6], 
		[24, 5], [24, 4], [23.5, 3.0], 
		[23, 2], [22.0, 1.0], [21, 0], 
		[19.5, -0.5],[18, -1], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[16, -1], [14, -1], [12.5, -0.5], 
		[11, 0], [10.0, 1.0], [9, 2], 
		[8.5, 3.0], [8, 4], [8, 5], 
		[8, 6], [8.5, 7.0], [9, 8], 
		[10.0, 9.0], [11, 10], [12.5, 10.5], 
		[14, 11], [16, 11], [18, 11], 
		[19.5, 10.5], [21, 10], [22.0, 9.0], 
		[23, 8], [23.5, 7.0], [24, 6], 
		[24, 5], [24, 4], [23.5, 3.0], 
		[23, 2], [22.0, 1.0], [21, 0], 
		[19.5, -0.5],[18, -1], ]);
}}}

module Candal_contour10x21_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x21_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([16, -1], [14, -1], [12.5, -0.5],steps,height);
	BezConic([12.5, -0.5], [11, 0], [10.0, 1.0],steps,height);
	BezConic([10.0, 1.0], [9, 2], [8.5, 3.0],steps,height);
	BezConic([8.5, 3.0], [8, 4], [8, 5],steps,height);
	BezConic([8, 5], [8, 6], [8.5, 7.0],steps,height);
	BezConic([8.5, 7.0], [9, 8], [10.0, 9.0],steps,height);
	BezConic([10.0, 9.0], [11, 10], [12.5, 10.5],steps,height);
	BezConic([12.5, 10.5], [14, 11], [16, 11],steps,height);
	BezConic([16, 11], [18, 11], [19.5, 10.5],steps,height);
	BezConic([19.5, 10.5], [21, 10], [22.0, 9.0],steps,height);
	BezConic([22.0, 9.0], [23, 8], [23.5, 7.0],steps,height);
	BezConic([23.5, 7.0], [24, 6], [24, 5],steps,height);
	BezConic([24, 5], [24, 4], [23.5, 3.0],steps,height);
	BezConic([23.5, 3.0], [23, 2], [22.0, 1.0],steps,height);
	BezConic([22.0, 1.0], [21, 0], [19.5, -0.5],steps,height);
	BezConic([19.5, -0.5], [18, -1], [16, -1],steps,height);
}
}

module Candal_contour10x21(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x21_skeleton(height);
			Candal_contour10x21_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x21_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x21(steps=2, height) {
	difference() {
		Candal_contour00x21(steps, height);
		
	}
}

module Candal_chunk20x21(steps=2, height) {
	difference() {
		Candal_contour10x21(steps, height);
		
	}
}

Candal_bbox0x21=[[8, -1], [24, 44]];

module Candal_letter0x21(steps=2, height) {
	Candal_chunk10x21(steps, height);
	Candal_chunk20x21(steps, height);
} //end skeleton

module Candal_contour00x22_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 48], [11.0, 48.0], [16, 48], 
		[15.0, 39.5], [14, 31], [10.5, 31.0], 
		[7, 31],[6.5, 39.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 48], [11.0, 48.0], [16, 48], 
		[15.0, 39.5], [14, 31], [10.5, 31.0], 
		[7, 31],[6.5, 39.5], ]);
}}}

module Candal_contour00x22_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x22_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x22(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x22_skeleton(height);
			Candal_contour00x22_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x22_subtractive_curves(steps, height);
	}
}

module Candal_contour10x22_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 48], [24.0, 48.0], [29, 48], 
		[28.0, 39.5], [27, 31], [23.5, 31.0], 
		[20, 31],[19.5, 39.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 48], [24.0, 48.0], [29, 48], 
		[28.0, 39.5], [27, 31], [23.5, 31.0], 
		[20, 31],[19.5, 39.5], ]);
}}}

module Candal_contour10x22_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x22_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x22(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x22_skeleton(height);
			Candal_contour10x22_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x22_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x22(steps=2, height) {
	difference() {
		Candal_contour00x22(steps, height);
		
	}
}

module Candal_chunk20x22(steps=2, height) {
	difference() {
		Candal_contour10x22(steps, height);
		
	}
}

Candal_bbox0x22=[[6, 31], [29, 48]];

module Candal_letter0x22(steps=2, height) {
	Candal_chunk10x22(steps, height);
	Candal_chunk20x22(steps, height);
} //end skeleton

module Candal_contour00x23_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[8, 22], [6, 23], [5.5, 25.5], 
		[5, 28], [5, 30], [5, 32], 
		[5.5, 34.0], [6, 36], [7, 38], 
		[5.5, 39.5], [4, 41], [6.5, 43.5], 
		[9, 46], [10.5, 44.5], [12, 43], 
		[14, 43], [15.5, 43.5], [17, 44], 
		[19, 44], [21, 44], [22.5, 43.5], 
		[24, 43], [25, 43], [26.5, 44.5], 
		[28, 46], [30.5, 43.5], [33, 41], 
		[31.5, 39.5], [30, 38], [32, 37], 
		[32.5, 34.5], [33, 32], [33, 30], 
		[33, 28], [32.0, 25.5], [31, 23], 
		[30, 21], [31.5, 19.5], [33, 18], 
		[30.5, 15.5], [28, 13], [26.0, 15.0], 
		[24, 17], [22, 16], [19, 16], 
		[17, 16], [15.5, 16.5], [14, 17], 
		[13, 17], [11.0, 15.0], [9, 13], 
		[6.5, 15.5], [4, 18], [6.0, 20.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[8, 22], [6, 23], [5.5, 25.5], 
		[5, 28], [5, 30], [5, 32], 
		[5.5, 34.0], [6, 36], [7, 38], 
		[5.5, 39.5], [4, 41], [6.5, 43.5], 
		[9, 46], [10.5, 44.5], [12, 43], 
		[14, 43], [15.5, 43.5], [17, 44], 
		[19, 44], [21, 44], [22.5, 43.5], 
		[24, 43], [25, 43], [26.5, 44.5], 
		[28, 46], [30.5, 43.5], [33, 41], 
		[31.5, 39.5], [30, 38], [32, 37], 
		[32.5, 34.5], [33, 32], [33, 30], 
		[33, 28], [32.0, 25.5], [31, 23], 
		[30, 21], [31.5, 19.5], [33, 18], 
		[30.5, 15.5], [28, 13], [26.0, 15.0], 
		[24, 17], [22, 16], [19, 16], 
		[17, 16], [15.5, 16.5], [14, 17], 
		[13, 17], [11.0, 15.0], [9, 13], 
		[6.5, 15.5], [4, 18], [6.0, 20.0], 
		 ]);
}}}

module Candal_contour00x23_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, 43], [14, 43], [15.5, 43.5],steps,height);
	BezConic([22.5, 43.5], [24, 43], [25, 43],steps,height);
	BezConic([15.5, 16.5], [14, 17], [13, 17],steps,height);
}
}

module Candal_contour00x23_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([8, 22], [6, 23], [5.5, 25.5],steps,height);
	BezConic([5.5, 25.5], [5, 28], [5, 30],steps,height);
	BezConic([5, 30], [5, 32], [5.5, 34.0],steps,height);
	BezConic([5.5, 34.0], [6, 36], [7, 38],steps,height);
	BezConic([15.5, 43.5], [17, 44], [19, 44],steps,height);
	BezConic([19, 44], [21, 44], [22.5, 43.5],steps,height);
	BezConic([30, 38], [32, 37], [32.5, 34.5],steps,height);
	BezConic([32.5, 34.5], [33, 32], [33, 30],steps,height);
	BezConic([33, 30], [33, 28], [32.0, 25.5],steps,height);
	BezConic([32.0, 25.5], [31, 23], [30, 21],steps,height);
	BezConic([24, 17], [22, 16], [19, 16],steps,height);
	BezConic([19, 16], [17, 16], [15.5, 16.5],steps,height);
}
}

module Candal_contour00x23(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x23_skeleton(height);
			Candal_contour00x23_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x23_subtractive_curves(steps, height);
	}
}

module Candal_contour10x23_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[13, 30], [13, 29], [13.5, 27.5], 
		[14, 26], [14.5, 25.0], [15, 24], 
		[16.0, 23.5], [17, 23], [19, 23], 
		[21, 23], [22.0, 23.5], [23, 24], 
		[23.5, 25.0], [24, 26], [24.5, 27.5], 
		[25, 29], [25, 30], [25, 31], 
		[24.5, 32.5], [24, 34], [23.5, 35.0], 
		[23, 36], [22.0, 36.5], [21, 37], 
		[19, 37], [17, 37], [16.0, 36.5], 
		[15, 36], [14.5, 35.0], [14, 34], 
		[13.5, 32.5],[13, 31], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[13, 30], [13, 29], [13.5, 27.5], 
		[14, 26], [14.5, 25.0], [15, 24], 
		[16.0, 23.5], [17, 23], [19, 23], 
		[21, 23], [22.0, 23.5], [23, 24], 
		[23.5, 25.0], [24, 26], [24.5, 27.5], 
		[25, 29], [25, 30], [25, 31], 
		[24.5, 32.5], [24, 34], [23.5, 35.0], 
		[23, 36], [22.0, 36.5], [21, 37], 
		[19, 37], [17, 37], [16.0, 36.5], 
		[15, 36], [14.5, 35.0], [14, 34], 
		[13.5, 32.5],[13, 31], ]);
}}}

module Candal_contour10x23_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([13, 30], [13, 29], [13.5, 27.5],steps,height);
	BezConic([13.5, 27.5], [14, 26], [14.5, 25.0],steps,height);
	BezConic([14.5, 25.0], [15, 24], [16.0, 23.5],steps,height);
	BezConic([16.0, 23.5], [17, 23], [19, 23],steps,height);
	BezConic([19, 23], [21, 23], [22.0, 23.5],steps,height);
	BezConic([22.0, 23.5], [23, 24], [23.5, 25.0],steps,height);
	BezConic([23.5, 25.0], [24, 26], [24.5, 27.5],steps,height);
	BezConic([24.5, 27.5], [25, 29], [25, 30],steps,height);
	BezConic([25, 30], [25, 31], [24.5, 32.5],steps,height);
	BezConic([24.5, 32.5], [24, 34], [23.5, 35.0],steps,height);
	BezConic([23.5, 35.0], [23, 36], [22.0, 36.5],steps,height);
	BezConic([22.0, 36.5], [21, 37], [19, 37],steps,height);
	BezConic([19, 37], [17, 37], [16.0, 36.5],steps,height);
	BezConic([16.0, 36.5], [15, 36], [14.5, 35.0],steps,height);
	BezConic([14.5, 35.0], [14, 34], [13.5, 32.5],steps,height);
	BezConic([13.5, 32.5], [13, 31], [13, 30],steps,height);
}
}

module Candal_contour10x23_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x23(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x23_skeleton(height);
			Candal_contour10x23_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x23_additive_curves(steps, height);
	}
}

module Candal_chunk10x23(steps=2, height) {
	difference() {
		Candal_contour00x23(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x23(steps, height);
	}
}

Candal_bbox0x23=[[4, 13], [33, 46]];

module Candal_letter0x23(steps=2, height) {
	Candal_chunk10x23(steps, height);
} //end skeleton

module Candal_contour00x24_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[18, 1], [15, 2], [12.0, 2.5], 
		[9, 3], [6, 4], [6.0, 9.5], 
		[6, 15], [7, 14], [8.5, 13.5], 
		[10, 13], [12.0, 12.5], [14, 12], 
		[16.0, 11.5], [18, 11], [19, 11], 
		[21, 11], [22.0, 11.0], [23, 11], 
		[24.0, 11.5], [25, 12], [25.5, 12.5], 
		[26, 13], [26, 14], [26, 15], 
		[25.5, 15.5], [25, 16], [23.5, 16.5], 
		[22, 17], [20.5, 18.0], [19, 19], 
		[17, 20], [15, 20], [13.5, 21.0], 
		[12, 22], [11.0, 23.0], [10, 24], 
		[8.5, 25.0], [7, 26], [6.5, 27.0], 
		[6, 28], [5.5, 30.0], [5, 32], 
		[5, 34], [5, 36], [5.5, 38.0], 
		[6, 40], [7.5, 41.5], [9, 43], 
		[11.5, 44.0], [14, 45], [17, 45], 
		[17.0, 47.5], [17, 50], [21.0, 50.0], 
		[25, 50], [25.0, 47.5], [25, 45], 
		[26, 45], [28.0, 45.0], [30, 45], 
		[31.5, 44.5], [33, 44], [34.5, 43.5], 
		[36, 43], [37, 42], [36.5, 37.5], 
		[36, 33], [35, 34], [33.5, 34.5], 
		[32, 35], [30.5, 35.5], [29, 36], 
		[27.0, 36.0], [25, 36], [22, 36], 
		[20, 36], [19.5, 35.5], [19, 35], 
		[19, 34], [19, 33], [19.5, 32.5], 
		[20, 32], [21.0, 31.5], [22, 31], 
		[23.5, 30.5], [25, 30], [26, 29], 
		[27, 29], [28.5, 28.0], [30, 27], 
		[31.5, 26.0], [33, 25], [34.5, 24.0], 
		[36, 23], [37.0, 21.5], [38, 20], 
		[38.5, 18.0], [39, 16], [39, 14], 
		[39, 12], [38.0, 10.0], [37, 8], 
		[35.5, 6.0], [34, 4], [31.5, 3.0], 
		[29, 2], [26, 1], [26.0, -1.0], 
		[26, -3], [22.0, -3.0], [18, -3], 
		[18.0, -1.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[18, 1], [15, 2], [12.0, 2.5], 
		[9, 3], [6, 4], [6.0, 9.5], 
		[6, 15], [7, 14], [8.5, 13.5], 
		[10, 13], [12.0, 12.5], [14, 12], 
		[16.0, 11.5], [18, 11], [19, 11], 
		[21, 11], [22.0, 11.0], [23, 11], 
		[24.0, 11.5], [25, 12], [25.5, 12.5], 
		[26, 13], [26, 14], [26, 15], 
		[25.5, 15.5], [25, 16], [23.5, 16.5], 
		[22, 17], [20.5, 18.0], [19, 19], 
		[17, 20], [15, 20], [13.5, 21.0], 
		[12, 22], [11.0, 23.0], [10, 24], 
		[8.5, 25.0], [7, 26], [6.5, 27.0], 
		[6, 28], [5.5, 30.0], [5, 32], 
		[5, 34], [5, 36], [5.5, 38.0], 
		[6, 40], [7.5, 41.5], [9, 43], 
		[11.5, 44.0], [14, 45], [17, 45], 
		[17.0, 47.5], [17, 50], [21.0, 50.0], 
		[25, 50], [25.0, 47.5], [25, 45], 
		[26, 45], [28.0, 45.0], [30, 45], 
		[31.5, 44.5], [33, 44], [34.5, 43.5], 
		[36, 43], [37, 42], [36.5, 37.5], 
		[36, 33], [35, 34], [33.5, 34.5], 
		[32, 35], [30.5, 35.5], [29, 36], 
		[27.0, 36.0], [25, 36], [22, 36], 
		[20, 36], [19.5, 35.5], [19, 35], 
		[19, 34], [19, 33], [19.5, 32.5], 
		[20, 32], [21.0, 31.5], [22, 31], 
		[23.5, 30.5], [25, 30], [26, 29], 
		[27, 29], [28.5, 28.0], [30, 27], 
		[31.5, 26.0], [33, 25], [34.5, 24.0], 
		[36, 23], [37.0, 21.5], [38, 20], 
		[38.5, 18.0], [39, 16], [39, 14], 
		[39, 12], [38.0, 10.0], [37, 8], 
		[35.5, 6.0], [34, 4], [31.5, 3.0], 
		[29, 2], [26, 1], [26.0, -1.0], 
		[26, -3], [22.0, -3.0], [18, -3], 
		[18.0, -1.0], ]);
}}}

module Candal_contour00x24_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 1], [15, 2], [12.0, 2.5],steps,height);
	BezConic([6, 15], [7, 14], [8.5, 13.5],steps,height);
	BezConic([8.5, 13.5], [10, 13], [12.0, 12.5],steps,height);
	BezConic([12.0, 12.5], [14, 12], [16.0, 11.5],steps,height);
	BezConic([16.0, 11.5], [18, 11], [19, 11],steps,height);
	BezConic([19, 11], [21, 11], [22.0, 11.0],steps,height);
	BezConic([22.0, 11.0], [23, 11], [24.0, 11.5],steps,height);
	BezConic([24.0, 11.5], [25, 12], [25.5, 12.5],steps,height);
	BezConic([25.5, 12.5], [26, 13], [26, 14],steps,height);
	BezConic([26, 14], [26, 15], [25.5, 15.5],steps,height);
	BezConic([25.5, 15.5], [25, 16], [23.5, 16.5],steps,height);
	BezConic([20.5, 18.0], [19, 19], [17, 20],steps,height);
	BezConic([11.0, 23.0], [10, 24], [8.5, 25.0],steps,height);
	BezConic([25, 45], [26, 45], [28.0, 45.0],steps,height);
	BezConic([31.5, 44.5], [33, 44], [34.5, 43.5],steps,height);
	BezConic([36, 33], [35, 34], [33.5, 34.5],steps,height);
	BezConic([33.5, 34.5], [32, 35], [30.5, 35.5],steps,height);
	BezConic([30.5, 35.5], [29, 36], [27.0, 36.0],steps,height);
	BezConic([27.0, 36.0], [25, 36], [22, 36],steps,height);
	BezConic([22, 36], [20, 36], [19.5, 35.5],steps,height);
	BezConic([19.5, 35.5], [19, 35], [19, 34],steps,height);
	BezConic([19, 34], [19, 33], [19.5, 32.5],steps,height);
	BezConic([19.5, 32.5], [20, 32], [21.0, 31.5],steps,height);
	BezConic([21.0, 31.5], [22, 31], [23.5, 30.5],steps,height);
	BezConic([28.5, 28.0], [30, 27], [31.5, 26.0],steps,height);
	BezConic([31.5, 26.0], [33, 25], [34.5, 24.0],steps,height);
}
}

module Candal_contour00x24_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12.0, 2.5], [9, 3], [6, 4],steps,height);
	BezConic([23.5, 16.5], [22, 17], [20.5, 18.0],steps,height);
	BezConic([17, 20], [15, 20], [13.5, 21.0],steps,height);
	BezConic([13.5, 21.0], [12, 22], [11.0, 23.0],steps,height);
	BezConic([8.5, 25.0], [7, 26], [6.5, 27.0],steps,height);
	BezConic([6.5, 27.0], [6, 28], [5.5, 30.0],steps,height);
	BezConic([5.5, 30.0], [5, 32], [5, 34],steps,height);
	BezConic([5, 34], [5, 36], [5.5, 38.0],steps,height);
	BezConic([5.5, 38.0], [6, 40], [7.5, 41.5],steps,height);
	BezConic([7.5, 41.5], [9, 43], [11.5, 44.0],steps,height);
	BezConic([11.5, 44.0], [14, 45], [17, 45],steps,height);
	BezConic([28.0, 45.0], [30, 45], [31.5, 44.5],steps,height);
	BezConic([34.5, 43.5], [36, 43], [37, 42],steps,height);
	BezConic([23.5, 30.5], [25, 30], [26, 29],steps,height);
	BezConic([26, 29], [27, 29], [28.5, 28.0],steps,height);
	BezConic([34.5, 24.0], [36, 23], [37.0, 21.5],steps,height);
	BezConic([37.0, 21.5], [38, 20], [38.5, 18.0],steps,height);
	BezConic([38.5, 18.0], [39, 16], [39, 14],steps,height);
	BezConic([39, 14], [39, 12], [38.0, 10.0],steps,height);
	BezConic([38.0, 10.0], [37, 8], [35.5, 6.0],steps,height);
	BezConic([35.5, 6.0], [34, 4], [31.5, 3.0],steps,height);
	BezConic([31.5, 3.0], [29, 2], [26, 1],steps,height);
}
}

module Candal_contour00x24(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x24_skeleton(height);
			Candal_contour00x24_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x24_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x24(steps=2, height) {
	difference() {
		Candal_contour00x24(steps, height);
		
	}
}

Candal_bbox0x24=[[5, -3], [39, 50]];

module Candal_letter0x24(steps=2, height) {
	Candal_chunk10x24(steps, height);
} //end skeleton

module Candal_contour00x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[18, 9], [15, 9], [12.5, 9.5], 
		[10, 10], [8.0, 11.5], [6, 13], 
		[5.0, 14.5], [4, 16], [3.0, 18.0], 
		[2, 20], [2.0, 22.5], [2, 25], 
		[2, 27], [2, 29], [2.0, 31.5], 
		[2, 34], [3.0, 36.0], [4, 38], 
		[5.0, 39.5], [6, 41], [8.0, 42.5], 
		[10, 44], [12.5, 44.5], [15, 45], 
		[18, 45], [22, 45], [25.0, 43.5], 
		[28, 42], [30.0, 39.5], [32, 37], 
		[32.5, 34.0], [33, 31], [33, 27], 
		[33, 25], [33.0, 22.5], [33, 20], 
		[32.0, 18.0], [31, 16], [30.0, 14.5], 
		[29, 13], [27.0, 11.5], [25, 10], 
		[23.0, 9.5],[21, 9], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[18, 9], [15, 9], [12.5, 9.5], 
		[10, 10], [8.0, 11.5], [6, 13], 
		[5.0, 14.5], [4, 16], [3.0, 18.0], 
		[2, 20], [2.0, 22.5], [2, 25], 
		[2, 27], [2, 29], [2.0, 31.5], 
		[2, 34], [3.0, 36.0], [4, 38], 
		[5.0, 39.5], [6, 41], [8.0, 42.5], 
		[10, 44], [12.5, 44.5], [15, 45], 
		[18, 45], [22, 45], [25.0, 43.5], 
		[28, 42], [30.0, 39.5], [32, 37], 
		[32.5, 34.0], [33, 31], [33, 27], 
		[33, 25], [33.0, 22.5], [33, 20], 
		[32.0, 18.0], [31, 16], [30.0, 14.5], 
		[29, 13], [27.0, 11.5], [25, 10], 
		[23.0, 9.5],[21, 9], ]);
}}}

module Candal_contour00x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([2.0, 22.5], [2, 25], [2, 27],steps,height);
	BezConic([2, 27], [2, 29], [2.0, 31.5],steps,height);
	BezConic([33, 27], [33, 25], [33.0, 22.5],steps,height);
}
}

module Candal_contour00x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 9], [15, 9], [12.5, 9.5],steps,height);
	BezConic([12.5, 9.5], [10, 10], [8.0, 11.5],steps,height);
	BezConic([8.0, 11.5], [6, 13], [5.0, 14.5],steps,height);
	BezConic([5.0, 14.5], [4, 16], [3.0, 18.0],steps,height);
	BezConic([3.0, 18.0], [2, 20], [2.0, 22.5],steps,height);
	BezConic([2.0, 31.5], [2, 34], [3.0, 36.0],steps,height);
	BezConic([3.0, 36.0], [4, 38], [5.0, 39.5],steps,height);
	BezConic([5.0, 39.5], [6, 41], [8.0, 42.5],steps,height);
	BezConic([8.0, 42.5], [10, 44], [12.5, 44.5],steps,height);
	BezConic([12.5, 44.5], [15, 45], [18, 45],steps,height);
	BezConic([18, 45], [22, 45], [25.0, 43.5],steps,height);
	BezConic([25.0, 43.5], [28, 42], [30.0, 39.5],steps,height);
	BezConic([30.0, 39.5], [32, 37], [32.5, 34.0],steps,height);
	BezConic([32.5, 34.0], [33, 31], [33, 27],steps,height);
	BezConic([33.0, 22.5], [33, 20], [32.0, 18.0],steps,height);
	BezConic([32.0, 18.0], [31, 16], [30.0, 14.5],steps,height);
	BezConic([30.0, 14.5], [29, 13], [27.0, 11.5],steps,height);
	BezConic([27.0, 11.5], [25, 10], [23.0, 9.5],steps,height);
	BezConic([23.0, 9.5], [21, 9], [18, 9],steps,height);
}
}

module Candal_contour00x25(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x25_skeleton(height);
			Candal_contour00x25_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x25_subtractive_curves(steps, height);
	}
}

module Candal_contour10x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[18, 16], [19, 16], [20.0, 17.0], 
		[21, 18], [21.5, 19.5], [22, 21], 
		[22.5, 23.0], [23, 25], [23, 27], 
		[23, 29], [22.5, 31.0], [22, 33], 
		[21.5, 34.5], [21, 36], [20.0, 37.0], 
		[19, 38], [18, 38], [16, 38], 
		[15.0, 37.0], [14, 36], [13.5, 34.5], 
		[13, 33], [12.5, 31.0], [12, 29], 
		[12, 27], [12, 25], [12.5, 23.0], 
		[13, 21], [13.5, 19.5], [14, 18], 
		[15.0, 17.0],[16, 16], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[18, 16], [19, 16], [20.0, 17.0], 
		[21, 18], [21.5, 19.5], [22, 21], 
		[22.5, 23.0], [23, 25], [23, 27], 
		[23, 29], [22.5, 31.0], [22, 33], 
		[21.5, 34.5], [21, 36], [20.0, 37.0], 
		[19, 38], [18, 38], [16, 38], 
		[15.0, 37.0], [14, 36], [13.5, 34.5], 
		[13, 33], [12.5, 31.0], [12, 29], 
		[12, 27], [12, 25], [12.5, 23.0], 
		[13, 21], [13.5, 19.5], [14, 18], 
		[15.0, 17.0],[16, 16], ]);
}}}

module Candal_contour10x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 16], [19, 16], [20.0, 17.0],steps,height);
	BezConic([20.0, 17.0], [21, 18], [21.5, 19.5],steps,height);
	BezConic([21.5, 19.5], [22, 21], [22.5, 23.0],steps,height);
	BezConic([22.5, 23.0], [23, 25], [23, 27],steps,height);
	BezConic([23, 27], [23, 29], [22.5, 31.0],steps,height);
	BezConic([22.5, 31.0], [22, 33], [21.5, 34.5],steps,height);
	BezConic([21.5, 34.5], [21, 36], [20.0, 37.0],steps,height);
	BezConic([20.0, 37.0], [19, 38], [18, 38],steps,height);
	BezConic([18, 38], [16, 38], [15.0, 37.0],steps,height);
	BezConic([15.0, 37.0], [14, 36], [13.5, 34.5],steps,height);
	BezConic([13.5, 34.5], [13, 33], [12.5, 31.0],steps,height);
	BezConic([12.5, 31.0], [12, 29], [12, 27],steps,height);
	BezConic([12, 27], [12, 25], [12.5, 23.0],steps,height);
	BezConic([12.5, 23.0], [13, 21], [13.5, 19.5],steps,height);
	BezConic([13.5, 19.5], [14, 18], [15.0, 17.0],steps,height);
	BezConic([15.0, 17.0], [16, 16], [18, 16],steps,height);
}
}

module Candal_contour10x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x25(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x25_skeleton(height);
			Candal_contour10x25_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x25_additive_curves(steps, height);
	}
}

module Candal_contour20x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[71, -1], [68, -1], [65.5, 0.0], 
		[63, 1], [61.0, 2.0], [59, 3], 
		[58.0, 5.0], [57, 7], [56.0, 9.0], 
		[55, 11], [55.0, 13.0], [55, 15], 
		[55, 17], [55, 20], [55.0, 22.0], 
		[55, 24], [56.0, 26.0], [57, 28], 
		[58.0, 29.5], [59, 31], [61.0, 32.5], 
		[63, 34], [65.5, 34.5], [68, 35], 
		[71, 35], [75, 35], [78.0, 33.5], 
		[81, 32], [83.0, 29.5], [85, 27], 
		[85.5, 24.0], [86, 21], [86, 17], 
		[86, 15], [86.0, 13.0], [86, 11], 
		[85.0, 9.0], [84, 7], [83.0, 5.0], 
		[82, 3], [80.0, 2.0], [78, 1], 
		[76.0, 0.0],[74, -1], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[71, -1], [68, -1], [65.5, 0.0], 
		[63, 1], [61.0, 2.0], [59, 3], 
		[58.0, 5.0], [57, 7], [56.0, 9.0], 
		[55, 11], [55.0, 13.0], [55, 15], 
		[55, 17], [55, 20], [55.0, 22.0], 
		[55, 24], [56.0, 26.0], [57, 28], 
		[58.0, 29.5], [59, 31], [61.0, 32.5], 
		[63, 34], [65.5, 34.5], [68, 35], 
		[71, 35], [75, 35], [78.0, 33.5], 
		[81, 32], [83.0, 29.5], [85, 27], 
		[85.5, 24.0], [86, 21], [86, 17], 
		[86, 15], [86.0, 13.0], [86, 11], 
		[85.0, 9.0], [84, 7], [83.0, 5.0], 
		[82, 3], [80.0, 2.0], [78, 1], 
		[76.0, 0.0],[74, -1], ]);
}}}

module Candal_contour20x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([58.0, 5.0], [57, 7], [56.0, 9.0],steps,height);
	BezConic([55.0, 13.0], [55, 15], [55, 17],steps,height);
	BezConic([55, 17], [55, 20], [55.0, 22.0],steps,height);
	BezConic([86, 17], [86, 15], [86.0, 13.0],steps,height);
	BezConic([85.0, 9.0], [84, 7], [83.0, 5.0],steps,height);
	BezConic([80.0, 2.0], [78, 1], [76.0, 0.0],steps,height);
}
}

module Candal_contour20x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([71, -1], [68, -1], [65.5, 0.0],steps,height);
	BezConic([65.5, 0.0], [63, 1], [61.0, 2.0],steps,height);
	BezConic([61.0, 2.0], [59, 3], [58.0, 5.0],steps,height);
	BezConic([56.0, 9.0], [55, 11], [55.0, 13.0],steps,height);
	BezConic([55.0, 22.0], [55, 24], [56.0, 26.0],steps,height);
	BezConic([56.0, 26.0], [57, 28], [58.0, 29.5],steps,height);
	BezConic([58.0, 29.5], [59, 31], [61.0, 32.5],steps,height);
	BezConic([61.0, 32.5], [63, 34], [65.5, 34.5],steps,height);
	BezConic([65.5, 34.5], [68, 35], [71, 35],steps,height);
	BezConic([71, 35], [75, 35], [78.0, 33.5],steps,height);
	BezConic([78.0, 33.5], [81, 32], [83.0, 29.5],steps,height);
	BezConic([83.0, 29.5], [85, 27], [85.5, 24.0],steps,height);
	BezConic([85.5, 24.0], [86, 21], [86, 17],steps,height);
	BezConic([86.0, 13.0], [86, 11], [85.0, 9.0],steps,height);
	BezConic([83.0, 5.0], [82, 3], [80.0, 2.0],steps,height);
	BezConic([76.0, 0.0], [74, -1], [71, -1],steps,height);
}
}

module Candal_contour20x25(steps=2, height) {
	difference() {
		union() {
			Candal_contour20x25_skeleton(height);
			Candal_contour20x25_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour20x25_subtractive_curves(steps, height);
	}
}

module Candal_contour30x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[71, 7], [72, 7], [73.0, 7.5], 
		[74, 8], [74.5, 9.5], [75, 11], 
		[75.5, 13.0], [76, 15], [76, 17], 
		[76, 19], [75.5, 21.0], [75, 23], 
		[74.5, 24.5], [74, 26], [73.0, 27.0], 
		[72, 28], [71, 28], [69, 28], 
		[68.0, 27.0], [67, 26], [66.5, 24.5], 
		[66, 23], [65.5, 21.0], [65, 19], 
		[65, 17], [65, 15], [65.5, 13.0], 
		[66, 11], [66.5, 9.5], [67, 8], 
		[68.0, 7.5],[69, 7], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[71, 7], [72, 7], [73.0, 7.5], 
		[74, 8], [74.5, 9.5], [75, 11], 
		[75.5, 13.0], [76, 15], [76, 17], 
		[76, 19], [75.5, 21.0], [75, 23], 
		[74.5, 24.5], [74, 26], [73.0, 27.0], 
		[72, 28], [71, 28], [69, 28], 
		[68.0, 27.0], [67, 26], [66.5, 24.5], 
		[66, 23], [65.5, 21.0], [65, 19], 
		[65, 17], [65, 15], [65.5, 13.0], 
		[66, 11], [66.5, 9.5], [67, 8], 
		[68.0, 7.5],[69, 7], ]);
}}}

module Candal_contour30x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([71, 7], [72, 7], [73.0, 7.5],steps,height);
	BezConic([73.0, 7.5], [74, 8], [74.5, 9.5],steps,height);
	BezConic([74.5, 9.5], [75, 11], [75.5, 13.0],steps,height);
	BezConic([75.5, 13.0], [76, 15], [76, 17],steps,height);
	BezConic([76, 17], [76, 19], [75.5, 21.0],steps,height);
	BezConic([75.5, 21.0], [75, 23], [74.5, 24.5],steps,height);
	BezConic([74.5, 24.5], [74, 26], [73.0, 27.0],steps,height);
	BezConic([73.0, 27.0], [72, 28], [71, 28],steps,height);
	BezConic([71, 28], [69, 28], [68.0, 27.0],steps,height);
	BezConic([68.0, 27.0], [67, 26], [66.5, 24.5],steps,height);
	BezConic([66.5, 24.5], [66, 23], [65.5, 21.0],steps,height);
	BezConic([65.5, 21.0], [65, 19], [65, 17],steps,height);
	BezConic([65, 17], [65, 15], [65.5, 13.0],steps,height);
	BezConic([65.5, 13.0], [66, 11], [66.5, 9.5],steps,height);
	BezConic([66.5, 9.5], [67, 8], [68.0, 7.5],steps,height);
	BezConic([68.0, 7.5], [69, 7], [71, 7],steps,height);
}
}

module Candal_contour30x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour30x25(steps=2, height) {
	difference() {
		union() {
			Candal_contour30x25_skeleton(height);
			Candal_contour30x25_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour30x25_additive_curves(steps, height);
	}
}

module Candal_contour40x25_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[59, 45], [51.0, 22.5], [43, 0], 
		[36.0, 0.0], [29, 0], [37.0, 22.5], 
		[45, 45],[52.0, 45.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[59, 45], [51.0, 22.5], [43, 0], 
		[36.0, 0.0], [29, 0], [37.0, 22.5], 
		[45, 45],[52.0, 45.0], ]);
}}}

module Candal_contour40x25_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour40x25_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour40x25(steps=2, height) {
	difference() {
		union() {
			Candal_contour40x25_skeleton(height);
			Candal_contour40x25_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour40x25_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x25(steps=2, height) {
	difference() {
		Candal_contour00x25(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x25(steps, height);
	}
}

module Candal_chunk20x25(steps=2, height) {
	difference() {
		Candal_contour20x25(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour30x25(steps, height);
	}
}

module Candal_chunk30x25(steps=2, height) {
	difference() {
		Candal_contour40x25(steps, height);
		
	}
}

Candal_bbox0x25=[[2, -1], [86, 45]];

module Candal_letter0x25(steps=2, height) {
	Candal_chunk10x25(steps, height);
	Candal_chunk20x25(steps, height);
	Candal_chunk30x25(steps, height);
} //end skeleton

module Candal_contour00x26_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[42, 14], [42, 13], [42.0, 12.0], 
		[42, 11], [42.5, 10.5], [43, 10], 
		[44.0, 9.5], [45, 9], [47, 9], 
		[48, 9], [49.0, 9.0], [50, 9], 
		[52, 10], [52.5, 5.5], [53, 1], 
		[51, 0], [48.5, -0.5], [46, -1], 
		[43, -1], [42, -1], [40.5, -1.0], 
		[39, -1], [38, 0], [37, 0], 
		[36.5, 0.5], [36, 1], [35.5, 1.5], 
		[35, 2], [34.5, 2.5], [34, 3], 
		[34, 4], [32, 2], [29.0, 0.5], 
		[26, -1], [21, -1], [16, -1], 
		[13.0, 0.0], [10, 1], [8.0, 3.0], 
		[6, 5], [5.0, 7.0], [4, 9], 
		[4, 12], [4, 14], [4.5, 16.0], 
		[5, 18], [6.5, 19.5], [8, 21], 
		[10.0, 22.0], [12, 23], [15, 23], 
		[12, 23], [10.5, 24.0], [9, 25], 
		[8.0, 26.5], [7, 28], [7.0, 29.5], 
		[7, 31], [7, 33], [7, 35], 
		[7.5, 37.0], [8, 39], [10.0, 40.5], 
		[12, 42], [14.0, 43.0], [16, 44], 
		[18.0, 44.5], [20, 45], [22.5, 45.0], 
		[25, 45], [27, 45], [28, 45], 
		[30.0, 45.0], [32, 45], [34.0, 44.5], 
		[36, 44], [37.5, 43.5], [39, 43], 
		[41, 43], [40.0, 38.5], [39, 34], 
		[36, 35], [32.5, 35.0], [29, 35], 
		[27, 35], [25, 35], [23.5, 35.0], 
		[22, 35], [20.5, 34.5], [19, 34], 
		[18.5, 33.0], [18, 32], [18, 30], 
		[18, 29], [18.0, 28.5], [18, 28], 
		[18.0, 27.5], [18, 27], [18.5, 26.5], 
		[19, 26], [19, 26], [20, 25], 
		[21.5, 24.5], [23, 24], [24, 24], 
		[26.5, 24.0], [29, 24], [29.0, 26.5], 
		[29, 29], [35.5, 29.0], [42, 29], 
		[42.0, 21.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[42, 14], [42, 13], [42.0, 12.0], 
		[42, 11], [42.5, 10.5], [43, 10], 
		[44.0, 9.5], [45, 9], [47, 9], 
		[48, 9], [49.0, 9.0], [50, 9], 
		[52, 10], [52.5, 5.5], [53, 1], 
		[51, 0], [48.5, -0.5], [46, -1], 
		[43, -1], [42, -1], [40.5, -1.0], 
		[39, -1], [38, 0], [37, 0], 
		[36.5, 0.5], [36, 1], [35.5, 1.5], 
		[35, 2], [34.5, 2.5], [34, 3], 
		[34, 4], [32, 2], [29.0, 0.5], 
		[26, -1], [21, -1], [16, -1], 
		[13.0, 0.0], [10, 1], [8.0, 3.0], 
		[6, 5], [5.0, 7.0], [4, 9], 
		[4, 12], [4, 14], [4.5, 16.0], 
		[5, 18], [6.5, 19.5], [8, 21], 
		[10.0, 22.0], [12, 23], [15, 23], 
		[12, 23], [10.5, 24.0], [9, 25], 
		[8.0, 26.5], [7, 28], [7.0, 29.5], 
		[7, 31], [7, 33], [7, 35], 
		[7.5, 37.0], [8, 39], [10.0, 40.5], 
		[12, 42], [14.0, 43.0], [16, 44], 
		[18.0, 44.5], [20, 45], [22.5, 45.0], 
		[25, 45], [27, 45], [28, 45], 
		[30.0, 45.0], [32, 45], [34.0, 44.5], 
		[36, 44], [37.5, 43.5], [39, 43], 
		[41, 43], [40.0, 38.5], [39, 34], 
		[36, 35], [32.5, 35.0], [29, 35], 
		[27, 35], [25, 35], [23.5, 35.0], 
		[22, 35], [20.5, 34.5], [19, 34], 
		[18.5, 33.0], [18, 32], [18, 30], 
		[18, 29], [18.0, 28.5], [18, 28], 
		[18.0, 27.5], [18, 27], [18.5, 26.5], 
		[19, 26], [19, 26], [20, 25], 
		[21.5, 24.5], [23, 24], [24, 24], 
		[26.5, 24.0], [29, 24], [29.0, 26.5], 
		[29, 29], [35.5, 29.0], [42, 29], 
		[42.0, 21.5], ]);
}}}

module Candal_contour00x26_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([42, 14], [42, 13], [42.0, 12.0],steps,height);
	BezConic([42.0, 12.0], [42, 11], [42.5, 10.5],steps,height);
	BezConic([42.5, 10.5], [43, 10], [44.0, 9.5],steps,height);
	BezConic([44.0, 9.5], [45, 9], [47, 9],steps,height);
	BezConic([47, 9], [48, 9], [49.0, 9.0],steps,height);
	BezConic([49.0, 9.0], [50, 9], [52, 10],steps,height);
	BezConic([43, -1], [42, -1], [40.5, -1.0],steps,height);
	BezConic([36.5, 0.5], [36, 1], [35.5, 1.5],steps,height);
	BezConic([35.5, 1.5], [35, 2], [34.5, 2.5],steps,height);
	BezConic([7.0, 29.5], [7, 31], [7, 33],steps,height);
	BezConic([22.5, 45.0], [25, 45], [27, 45],steps,height);
	BezConic([27, 45], [28, 45], [30.0, 45.0],steps,height);
	BezConic([37.5, 43.5], [39, 43], [41, 43],steps,height);
	BezConic([39, 34], [36, 35], [32.5, 35.0],steps,height);
	BezConic([32.5, 35.0], [29, 35], [27, 35],steps,height);
	BezConic([27, 35], [25, 35], [23.5, 35.0],steps,height);
	BezConic([23.5, 35.0], [22, 35], [20.5, 34.5],steps,height);
	BezConic([20.5, 34.5], [19, 34], [18.5, 33.0],steps,height);
	BezConic([18.5, 33.0], [18, 32], [18, 30],steps,height);
	BezConic([18, 30], [18, 29], [18.0, 28.5],steps,height);
	BezConic([18.0, 28.5], [18, 28], [18.0, 27.5],steps,height);
	BezConic([18.0, 27.5], [18, 27], [18.5, 26.5],steps,height);
	BezConic([18.5, 26.5], [19, 26], [19, 26],steps,height);
	BezConic([19, 26], [20, 25], [21.5, 24.5],steps,height);
	BezConic([21.5, 24.5], [23, 24], [24, 24],steps,height);
}
}

module Candal_contour00x26_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([53, 1], [51, 0], [48.5, -0.5],steps,height);
	BezConic([48.5, -0.5], [46, -1], [43, -1],steps,height);
	BezConic([40.5, -1.0], [39, -1], [38, 0],steps,height);
	BezConic([38, 0], [37, 0], [36.5, 0.5],steps,height);
	BezConic([34.5, 2.5], [34, 3], [34, 4],steps,height);
	BezConic([34, 4], [32, 2], [29.0, 0.5],steps,height);
	BezConic([29.0, 0.5], [26, -1], [21, -1],steps,height);
	BezConic([21, -1], [16, -1], [13.0, 0.0],steps,height);
	BezConic([13.0, 0.0], [10, 1], [8.0, 3.0],steps,height);
	BezConic([8.0, 3.0], [6, 5], [5.0, 7.0],steps,height);
	BezConic([5.0, 7.0], [4, 9], [4, 12],steps,height);
	BezConic([4, 12], [4, 14], [4.5, 16.0],steps,height);
	BezConic([4.5, 16.0], [5, 18], [6.5, 19.5],steps,height);
	BezConic([6.5, 19.5], [8, 21], [10.0, 22.0],steps,height);
	BezConic([10.0, 22.0], [12, 23], [15, 23],steps,height);
	BezConic([15, 23], [12, 23], [10.5, 24.0],steps,height);
	BezConic([10.5, 24.0], [9, 25], [8.0, 26.5],steps,height);
	BezConic([8.0, 26.5], [7, 28], [7.0, 29.5],steps,height);
	BezConic([7, 33], [7, 35], [7.5, 37.0],steps,height);
	BezConic([7.5, 37.0], [8, 39], [10.0, 40.5],steps,height);
	BezConic([10.0, 40.5], [12, 42], [14.0, 43.0],steps,height);
	BezConic([14.0, 43.0], [16, 44], [18.0, 44.5],steps,height);
	BezConic([18.0, 44.5], [20, 45], [22.5, 45.0],steps,height);
	BezConic([30.0, 45.0], [32, 45], [34.0, 44.5],steps,height);
	BezConic([34.0, 44.5], [36, 44], [37.5, 43.5],steps,height);
}
}

module Candal_contour00x26(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x26_skeleton(height);
			Candal_contour00x26_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x26_subtractive_curves(steps, height);
	}
}

module Candal_contour10x26_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[29, 9], [29, 9], [29.0, 9.5], 
		[29, 10], [29.0, 11.0], [29, 12], 
		[29.0, 13.5], [29, 15], [29, 18], 
		[25, 18], [23.0, 17.5], [21, 17], 
		[19.5, 16.5], [18, 16], [18.0, 15.0], 
		[18, 14], [18, 13], [18, 12], 
		[18.0, 11.0], [18, 10], [19.0, 9.5], 
		[20, 9], [21.0, 8.5], [22, 8], 
		[24, 8], [25, 8], [26.5, 8.0], 
		[28, 8], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[29, 9], [29, 9], [29.0, 9.5], 
		[29, 10], [29.0, 11.0], [29, 12], 
		[29.0, 13.5], [29, 15], [29, 18], 
		[25, 18], [23.0, 17.5], [21, 17], 
		[19.5, 16.5], [18, 16], [18.0, 15.0], 
		[18, 14], [18, 13], [18, 12], 
		[18.0, 11.0], [18, 10], [19.0, 9.5], 
		[20, 9], [21.0, 8.5], [22, 8], 
		[24, 8], [25, 8], [26.5, 8.0], 
		[28, 8], ]);
}}}

module Candal_contour10x26_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29, 9], [29, 9], [29.0, 9.5],steps,height);
	BezConic([29.0, 9.5], [29, 10], [29.0, 11.0],steps,height);
	BezConic([29.0, 11.0], [29, 12], [29.0, 13.5],steps,height);
	BezConic([29.0, 13.5], [29, 15], [29, 18],steps,height);
	BezConic([29, 18], [25, 18], [23.0, 17.5],steps,height);
	BezConic([23.0, 17.5], [21, 17], [19.5, 16.5],steps,height);
	BezConic([19.5, 16.5], [18, 16], [18.0, 15.0],steps,height);
	BezConic([18.0, 15.0], [18, 14], [18, 13],steps,height);
	BezConic([18, 13], [18, 12], [18.0, 11.0],steps,height);
	BezConic([18.0, 11.0], [18, 10], [19.0, 9.5],steps,height);
	BezConic([19.0, 9.5], [20, 9], [21.0, 8.5],steps,height);
	BezConic([21.0, 8.5], [22, 8], [24, 8],steps,height);
	BezConic([24, 8], [25, 8], [26.5, 8.0],steps,height);
	BezConic([26.5, 8.0], [28, 8], [29, 9],steps,height);
}
}

module Candal_contour10x26_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x26(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x26_skeleton(height);
			Candal_contour10x26_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x26_additive_curves(steps, height);
	}
}

module Candal_chunk10x26(steps=2, height) {
	difference() {
		Candal_contour00x26(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x26(steps, height);
	}
}

Candal_bbox0x26=[[4, -1], [53, 45]];

module Candal_letter0x26(steps=2, height) {
	Candal_chunk10x26(steps, height);
} //end skeleton

module Candal_contour00x27_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 48], [11.0, 48.0], [16, 48], 
		[15.0, 38.5], [14, 29], [10.5, 29.0], 
		[7, 29],[6.5, 38.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 48], [11.0, 48.0], [16, 48], 
		[15.0, 38.5], [14, 29], [10.5, 29.0], 
		[7, 29],[6.5, 38.5], ]);
}}}

module Candal_contour00x27_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x27_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x27(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x27_skeleton(height);
			Candal_contour00x27_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x27_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x27(steps=2, height) {
	difference() {
		Candal_contour00x27(steps, height);
		
	}
}

Candal_bbox0x27=[[6, 29], [16, 48]];

module Candal_letter0x27(steps=2, height) {
	Candal_chunk10x27(steps, height);
} //end skeleton

module Candal_contour00x28_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 22], [5, 25], [5.5, 28.0], 
		[6, 31], [7.5, 34.0], [9, 37], 
		[10.5, 39.0], [12, 41], [14.0, 42.5], 
		[16, 44], [19.0, 45.0], [22, 46], 
		[25, 46], [25.0, 42.0], [25, 38], 
		[24, 38], [22.5, 36.5], [21, 35], 
		[20.0, 33.0], [19, 31], [18.5, 28.0], 
		[18, 25], [18, 22], [18, 19], 
		[18.5, 16.5], [19, 14], [20.0, 12.0], 
		[21, 10], [22.5, 8.5], [24, 7], 
		[25, 7], [25.0, 3.0], [25, -1], 
		[22, -1], [19.0, 0.0], [16, 1], 
		[14.0, 2.5], [12, 4], [10.5, 6.0], 
		[9, 8], [7.5, 10.5], [6, 13], 
		[5.5, 16.0],[5, 19], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 22], [5, 25], [5.5, 28.0], 
		[6, 31], [7.5, 34.0], [9, 37], 
		[10.5, 39.0], [12, 41], [14.0, 42.5], 
		[16, 44], [19.0, 45.0], [22, 46], 
		[25, 46], [25.0, 42.0], [25, 38], 
		[24, 38], [22.5, 36.5], [21, 35], 
		[20.0, 33.0], [19, 31], [18.5, 28.0], 
		[18, 25], [18, 22], [18, 19], 
		[18.5, 16.5], [19, 14], [20.0, 12.0], 
		[21, 10], [22.5, 8.5], [24, 7], 
		[25, 7], [25.0, 3.0], [25, -1], 
		[22, -1], [19.0, 0.0], [16, 1], 
		[14.0, 2.5], [12, 4], [10.5, 6.0], 
		[9, 8], [7.5, 10.5], [6, 13], 
		[5.5, 16.0],[5, 19], ]);
}}}

module Candal_contour00x28_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 38], [24, 38], [22.5, 36.5],steps,height);
	BezConic([22.5, 36.5], [21, 35], [20.0, 33.0],steps,height);
	BezConic([20.0, 33.0], [19, 31], [18.5, 28.0],steps,height);
	BezConic([18.5, 28.0], [18, 25], [18, 22],steps,height);
	BezConic([18, 22], [18, 19], [18.5, 16.5],steps,height);
	BezConic([18.5, 16.5], [19, 14], [20.0, 12.0],steps,height);
	BezConic([20.0, 12.0], [21, 10], [22.5, 8.5],steps,height);
	BezConic([22.5, 8.5], [24, 7], [25, 7],steps,height);
}
}

module Candal_contour00x28_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 22], [5, 25], [5.5, 28.0],steps,height);
	BezConic([5.5, 28.0], [6, 31], [7.5, 34.0],steps,height);
	BezConic([7.5, 34.0], [9, 37], [10.5, 39.0],steps,height);
	BezConic([10.5, 39.0], [12, 41], [14.0, 42.5],steps,height);
	BezConic([14.0, 42.5], [16, 44], [19.0, 45.0],steps,height);
	BezConic([19.0, 45.0], [22, 46], [25, 46],steps,height);
	BezConic([25, -1], [22, -1], [19.0, 0.0],steps,height);
	BezConic([19.0, 0.0], [16, 1], [14.0, 2.5],steps,height);
	BezConic([14.0, 2.5], [12, 4], [10.5, 6.0],steps,height);
	BezConic([10.5, 6.0], [9, 8], [7.5, 10.5],steps,height);
	BezConic([7.5, 10.5], [6, 13], [5.5, 16.0],steps,height);
	BezConic([5.5, 16.0], [5, 19], [5, 22],steps,height);
}
}

module Candal_contour00x28(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x28_skeleton(height);
			Candal_contour00x28_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x28_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x28(steps=2, height) {
	difference() {
		Candal_contour00x28(steps, height);
		
	}
}

Candal_bbox0x28=[[5, -1], [25, 46]];

module Candal_letter0x28(steps=2, height) {
	Candal_chunk10x28(steps, height);
} //end skeleton

module Candal_contour00x29_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[25, 22], [25, 19], [24.5, 16.0], 
		[24, 13], [22.5, 10.5], [21, 8], 
		[19.5, 6.0], [18, 4], [15.5, 2.5], 
		[13, 1], [10.5, 0.0], [8, -1], 
		[5, -1], [5.0, 3.0], [5, 7], 
		[6, 7], [7.5, 8.5], [9, 10], 
		[10.0, 12.0], [11, 14], [11.5, 16.5], 
		[12, 19], [12, 22], [12, 25], 
		[11.5, 28.0], [11, 31], [10.0, 33.0], 
		[9, 35], [7.5, 36.5], [6, 38], 
		[5, 38], [5.0, 42.0], [5, 46], 
		[8, 46], [10.5, 45.0], [13, 44], 
		[15.5, 42.5], [18, 41], [19.5, 39.0], 
		[21, 37], [22.5, 34.0], [24, 31], 
		[24.5, 28.0],[25, 25], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[25, 22], [25, 19], [24.5, 16.0], 
		[24, 13], [22.5, 10.5], [21, 8], 
		[19.5, 6.0], [18, 4], [15.5, 2.5], 
		[13, 1], [10.5, 0.0], [8, -1], 
		[5, -1], [5.0, 3.0], [5, 7], 
		[6, 7], [7.5, 8.5], [9, 10], 
		[10.0, 12.0], [11, 14], [11.5, 16.5], 
		[12, 19], [12, 22], [12, 25], 
		[11.5, 28.0], [11, 31], [10.0, 33.0], 
		[9, 35], [7.5, 36.5], [6, 38], 
		[5, 38], [5.0, 42.0], [5, 46], 
		[8, 46], [10.5, 45.0], [13, 44], 
		[15.5, 42.5], [18, 41], [19.5, 39.0], 
		[21, 37], [22.5, 34.0], [24, 31], 
		[24.5, 28.0],[25, 25], ]);
}}}

module Candal_contour00x29_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 7], [6, 7], [7.5, 8.5],steps,height);
	BezConic([7.5, 8.5], [9, 10], [10.0, 12.0],steps,height);
	BezConic([10.0, 12.0], [11, 14], [11.5, 16.5],steps,height);
	BezConic([11.5, 16.5], [12, 19], [12, 22],steps,height);
	BezConic([12, 22], [12, 25], [11.5, 28.0],steps,height);
	BezConic([11.5, 28.0], [11, 31], [10.0, 33.0],steps,height);
	BezConic([10.0, 33.0], [9, 35], [7.5, 36.5],steps,height);
	BezConic([7.5, 36.5], [6, 38], [5, 38],steps,height);
}
}

module Candal_contour00x29_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 22], [25, 19], [24.5, 16.0],steps,height);
	BezConic([24.5, 16.0], [24, 13], [22.5, 10.5],steps,height);
	BezConic([22.5, 10.5], [21, 8], [19.5, 6.0],steps,height);
	BezConic([19.5, 6.0], [18, 4], [15.5, 2.5],steps,height);
	BezConic([15.5, 2.5], [13, 1], [10.5, 0.0],steps,height);
	BezConic([10.5, 0.0], [8, -1], [5, -1],steps,height);
	BezConic([5, 46], [8, 46], [10.5, 45.0],steps,height);
	BezConic([10.5, 45.0], [13, 44], [15.5, 42.5],steps,height);
	BezConic([15.5, 42.5], [18, 41], [19.5, 39.0],steps,height);
	BezConic([19.5, 39.0], [21, 37], [22.5, 34.0],steps,height);
	BezConic([22.5, 34.0], [24, 31], [24.5, 28.0],steps,height);
	BezConic([24.5, 28.0], [25, 25], [25, 22],steps,height);
}
}

module Candal_contour00x29(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x29_skeleton(height);
			Candal_contour00x29_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x29_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x29(steps=2, height) {
	difference() {
		Candal_contour00x29(steps, height);
		
	}
}

Candal_bbox0x29=[[5, -1], [25, 46]];

module Candal_letter0x29(steps=2, height) {
	Candal_chunk10x29(steps, height);
} //end skeleton

module Candal_contour00x2a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[12, 15], [9.0, 16.5], [6, 18], 
		[8.5, 22.5], [11, 27], [6.0, 27.0], 
		[1, 27], [1.0, 30.5], [1, 34], 
		[6.0, 34.0], [11, 34], [8.5, 39.0], 
		[6, 44], [9.0, 45.5], [12, 47], 
		[14.0, 42.0], [16, 37], [18.0, 42.0], 
		[20, 47], [23.0, 45.5], [26, 44], 
		[24.0, 39.0], [22, 34], [26.5, 34.0], 
		[31, 34], [31.0, 31.0], [31, 28], 
		[26.5, 28.0], [22, 28], [24.0, 23.0], 
		[26, 18], [23.0, 16.5], [20, 15], 
		[18.0, 19.5], [16, 24], [14.0, 19.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[12, 15], [9.0, 16.5], [6, 18], 
		[8.5, 22.5], [11, 27], [6.0, 27.0], 
		[1, 27], [1.0, 30.5], [1, 34], 
		[6.0, 34.0], [11, 34], [8.5, 39.0], 
		[6, 44], [9.0, 45.5], [12, 47], 
		[14.0, 42.0], [16, 37], [18.0, 42.0], 
		[20, 47], [23.0, 45.5], [26, 44], 
		[24.0, 39.0], [22, 34], [26.5, 34.0], 
		[31, 34], [31.0, 31.0], [31, 28], 
		[26.5, 28.0], [22, 28], [24.0, 23.0], 
		[26, 18], [23.0, 16.5], [20, 15], 
		[18.0, 19.5], [16, 24], [14.0, 19.5], 
		 ]);
}}}

module Candal_contour00x2a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x2a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x2a(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x2a_skeleton(height);
			Candal_contour00x2a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x2a_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x2a(steps=2, height) {
	difference() {
		Candal_contour00x2a(steps, height);
		
	}
}

Candal_bbox0x2a=[[1, 15], [31, 47]];

module Candal_letter0x2a(steps=2, height) {
	Candal_chunk10x2a(steps, height);
} //end skeleton

module Candal_contour00x2b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[13, 17], [9.5, 17.0], [6, 17], 
		[6.0, 21.5], [6, 26], [9.5, 26.0], 
		[13, 26], [13.0, 30.0], [13, 34], 
		[18.0, 34.0], [23, 34], [23.0, 30.0], 
		[23, 26], [26.5, 26.0], [30, 26], 
		[30.0, 21.5], [30, 17], [26.5, 17.0], 
		[23, 17], [23.0, 13.0], [23, 9], 
		[18.0, 9.0], [13, 9], [13.0, 13.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[13, 17], [9.5, 17.0], [6, 17], 
		[6.0, 21.5], [6, 26], [9.5, 26.0], 
		[13, 26], [13.0, 30.0], [13, 34], 
		[18.0, 34.0], [23, 34], [23.0, 30.0], 
		[23, 26], [26.5, 26.0], [30, 26], 
		[30.0, 21.5], [30, 17], [26.5, 17.0], 
		[23, 17], [23.0, 13.0], [23, 9], 
		[18.0, 9.0], [13, 9], [13.0, 13.0], 
		 ]);
}}}

module Candal_contour00x2b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x2b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x2b(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x2b_skeleton(height);
			Candal_contour00x2b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x2b_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x2b(steps=2, height) {
	difference() {
		Candal_contour00x2b(steps, height);
		
	}
}

Candal_bbox0x2b=[[6, 9], [30, 34]];

module Candal_letter0x2b(steps=2, height) {
	Candal_chunk10x2b(steps, height);
} //end skeleton

module Candal_contour00x2c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[12, 0], [10, -1], [9, -1], 
		[8, -1], [7.0, -0.5], [6, 0], 
		[5.0, 1.0], [4, 2], [3.5, 3.0], 
		[3, 4], [3, 6], [3, 7], 
		[3.5, 8.5], [4, 10], [5.0, 11.0], 
		[6, 12], [7.5, 12.5], [9, 13], 
		[11, 13], [16, 13], [18.0, 10.5], 
		[20, 8], [20, 3], [20, -1], 
		[19.0, -3.5], [18, -6], [16.0, -7.5], 
		[14, -9], [11.5, -9.5], [9, -10], 
		[7, -10], [5.5, -10.0], [4, -10], 
		[4.0, -7.0], [4, -4], [7, -4], 
		[8.5, -4.0], [10, -4], [11.0, -3.0], 
		[12, -2], [12.0, -1.5], [12, -1], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[12, 0], [10, -1], [9, -1], 
		[8, -1], [7.0, -0.5], [6, 0], 
		[5.0, 1.0], [4, 2], [3.5, 3.0], 
		[3, 4], [3, 6], [3, 7], 
		[3.5, 8.5], [4, 10], [5.0, 11.0], 
		[6, 12], [7.5, 12.5], [9, 13], 
		[11, 13], [16, 13], [18.0, 10.5], 
		[20, 8], [20, 3], [20, -1], 
		[19.0, -3.5], [18, -6], [16.0, -7.5], 
		[14, -9], [11.5, -9.5], [9, -10], 
		[7, -10], [5.5, -10.0], [4, -10], 
		[4.0, -7.0], [4, -4], [7, -4], 
		[8.5, -4.0], [10, -4], [11.0, -3.0], 
		[12, -2], [12.0, -1.5], [12, -1], 
		 ]);
}}}

module Candal_contour00x2c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4, -4], [7, -4], [8.5, -4.0],steps,height);
	BezConic([8.5, -4.0], [10, -4], [11.0, -3.0],steps,height);
	BezConic([11.0, -3.0], [12, -2], [12.0, -1.5],steps,height);
	BezConic([12.0, -1.5], [12, -1], [12, 0],steps,height);
}
}

module Candal_contour00x2c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, 0], [10, -1], [9, -1],steps,height);
	BezConic([9, -1], [8, -1], [7.0, -0.5],steps,height);
	BezConic([7.0, -0.5], [6, 0], [5.0, 1.0],steps,height);
	BezConic([5.0, 1.0], [4, 2], [3.5, 3.0],steps,height);
	BezConic([3.5, 3.0], [3, 4], [3, 6],steps,height);
	BezConic([3, 6], [3, 7], [3.5, 8.5],steps,height);
	BezConic([3.5, 8.5], [4, 10], [5.0, 11.0],steps,height);
	BezConic([5.0, 11.0], [6, 12], [7.5, 12.5],steps,height);
	BezConic([7.5, 12.5], [9, 13], [11, 13],steps,height);
	BezConic([11, 13], [16, 13], [18.0, 10.5],steps,height);
	BezConic([18.0, 10.5], [20, 8], [20, 3],steps,height);
	BezConic([20, 3], [20, -1], [19.0, -3.5],steps,height);
	BezConic([19.0, -3.5], [18, -6], [16.0, -7.5],steps,height);
	BezConic([16.0, -7.5], [14, -9], [11.5, -9.5],steps,height);
	BezConic([11.5, -9.5], [9, -10], [7, -10],steps,height);
}
}

module Candal_contour00x2c(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x2c_skeleton(height);
			Candal_contour00x2c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x2c_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x2c(steps=2, height) {
	difference() {
		Candal_contour00x2c(steps, height);
		
	}
}

Candal_bbox0x2c=[[3, -10], [20, 13]];

module Candal_letter0x2c(steps=2, height) {
	Candal_chunk10x2c(steps, height);
} //end skeleton

module Candal_contour00x2d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[28, 26], [28.0, 21.0], [28, 16], 
		[15.5, 16.0], [3, 16], [3.0, 21.0], 
		[3, 26],[15.5, 26.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[28, 26], [28.0, 21.0], [28, 16], 
		[15.5, 16.0], [3, 16], [3.0, 21.0], 
		[3, 26],[15.5, 26.0], ]);
}}}

module Candal_contour00x2d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x2d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x2d(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x2d_skeleton(height);
			Candal_contour00x2d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x2d_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x2d(steps=2, height) {
	difference() {
		Candal_contour00x2d(steps, height);
		
	}
}

Candal_bbox0x2d=[[3, 16], [28, 26]];

module Candal_letter0x2d(steps=2, height) {
	Candal_chunk10x2d(steps, height);
} //end skeleton

module Candal_contour00x2e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[14, -1], [12, -1], [10.5, -0.5], 
		[9, 0], [8.0, 1.0], [7, 2], 
		[6.5, 3.5], [6, 5], [6, 6], 
		[6, 7], [6.5, 8.5], [7, 10], 
		[8.0, 11.0], [9, 12], [10.5, 12.5], 
		[12, 13], [14, 13], [16, 13], 
		[17.5, 12.5], [19, 12], [20.0, 11.0], 
		[21, 10], [22.0, 8.5], [23, 7], 
		[23, 6], [23, 5], [22.0, 3.5], 
		[21, 2], [20.0, 1.0], [19, 0], 
		[17.5, -0.5],[16, -1], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[14, -1], [12, -1], [10.5, -0.5], 
		[9, 0], [8.0, 1.0], [7, 2], 
		[6.5, 3.5], [6, 5], [6, 6], 
		[6, 7], [6.5, 8.5], [7, 10], 
		[8.0, 11.0], [9, 12], [10.5, 12.5], 
		[12, 13], [14, 13], [16, 13], 
		[17.5, 12.5], [19, 12], [20.0, 11.0], 
		[21, 10], [22.0, 8.5], [23, 7], 
		[23, 6], [23, 5], [22.0, 3.5], 
		[21, 2], [20.0, 1.0], [19, 0], 
		[17.5, -0.5],[16, -1], ]);
}}}

module Candal_contour00x2e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x2e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([14, -1], [12, -1], [10.5, -0.5],steps,height);
	BezConic([10.5, -0.5], [9, 0], [8.0, 1.0],steps,height);
	BezConic([8.0, 1.0], [7, 2], [6.5, 3.5],steps,height);
	BezConic([6.5, 3.5], [6, 5], [6, 6],steps,height);
	BezConic([6, 6], [6, 7], [6.5, 8.5],steps,height);
	BezConic([6.5, 8.5], [7, 10], [8.0, 11.0],steps,height);
	BezConic([8.0, 11.0], [9, 12], [10.5, 12.5],steps,height);
	BezConic([10.5, 12.5], [12, 13], [14, 13],steps,height);
	BezConic([14, 13], [16, 13], [17.5, 12.5],steps,height);
	BezConic([17.5, 12.5], [19, 12], [20.0, 11.0],steps,height);
	BezConic([20.0, 11.0], [21, 10], [22.0, 8.5],steps,height);
	BezConic([22.0, 8.5], [23, 7], [23, 6],steps,height);
	BezConic([23, 6], [23, 5], [22.0, 3.5],steps,height);
	BezConic([22.0, 3.5], [21, 2], [20.0, 1.0],steps,height);
	BezConic([20.0, 1.0], [19, 0], [17.5, -0.5],steps,height);
	BezConic([17.5, -0.5], [16, -1], [14, -1],steps,height);
}
}

module Candal_contour00x2e(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x2e_skeleton(height);
			Candal_contour00x2e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x2e_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x2e(steps=2, height) {
	difference() {
		Candal_contour00x2e(steps, height);
		
	}
}

Candal_bbox0x2e=[[6, -1], [23, 13]];

module Candal_letter0x2e(steps=2, height) {
	Candal_chunk10x2e(steps, height);
} //end skeleton

module Candal_contour00x2f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[27, 45], [20.5, 22.0], [14, -1], 
		[7.0, -1.0], [0, -1], [6.0, 22.0], 
		[12, 45],[19.5, 45.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[27, 45], [20.5, 22.0], [14, -1], 
		[7.0, -1.0], [0, -1], [6.0, 22.0], 
		[12, 45],[19.5, 45.0], ]);
}}}

module Candal_contour00x2f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x2f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x2f(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x2f_skeleton(height);
			Candal_contour00x2f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x2f_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x2f(steps=2, height) {
	difference() {
		Candal_contour00x2f(steps, height);
		
	}
}

Candal_bbox0x2f=[[0, -1], [27, 45]];

module Candal_letter0x2f(steps=2, height) {
	Candal_chunk10x2f(steps, height);
} //end skeleton

module Candal_contour00x30_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[24, 45], [28, 45], [31.0, 44.0], 
		[34, 43], [36.5, 41.5], [39, 40], 
		[40.5, 38.0], [42, 36], [43.0, 33.5], 
		[44, 31], [44.5, 28.0], [45, 25], 
		[45, 22], [45, 19], [44.5, 16.5], 
		[44, 14], [43.0, 11.0], [42, 8], 
		[40.5, 6.0], [39, 4], [36.5, 2.5], 
		[34, 1], [31.0, 0.0], [28, -1], 
		[24, -1], [20, -1], [17.0, 0.0], 
		[14, 1], [11.5, 2.5], [9, 4], 
		[7.5, 6.0], [6, 8], [5.0, 11.0], 
		[4, 14], [3.5, 16.5], [3, 19], 
		[3, 22], [3, 25], [3.5, 28.0], 
		[4, 31], [5.0, 33.5], [6, 36], 
		[7.5, 38.0], [9, 40], [11.5, 41.5], 
		[14, 43], [17.0, 44.0], [20, 45], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[24, 45], [28, 45], [31.0, 44.0], 
		[34, 43], [36.5, 41.5], [39, 40], 
		[40.5, 38.0], [42, 36], [43.0, 33.5], 
		[44, 31], [44.5, 28.0], [45, 25], 
		[45, 22], [45, 19], [44.5, 16.5], 
		[44, 14], [43.0, 11.0], [42, 8], 
		[40.5, 6.0], [39, 4], [36.5, 2.5], 
		[34, 1], [31.0, 0.0], [28, -1], 
		[24, -1], [20, -1], [17.0, 0.0], 
		[14, 1], [11.5, 2.5], [9, 4], 
		[7.5, 6.0], [6, 8], [5.0, 11.0], 
		[4, 14], [3.5, 16.5], [3, 19], 
		[3, 22], [3, 25], [3.5, 28.0], 
		[4, 31], [5.0, 33.5], [6, 36], 
		[7.5, 38.0], [9, 40], [11.5, 41.5], 
		[14, 43], [17.0, 44.0], [20, 45], 
		 ]);
}}}

module Candal_contour00x30_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x30_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 45], [28, 45], [31.0, 44.0],steps,height);
	BezConic([31.0, 44.0], [34, 43], [36.5, 41.5],steps,height);
	BezConic([36.5, 41.5], [39, 40], [40.5, 38.0],steps,height);
	BezConic([40.5, 38.0], [42, 36], [43.0, 33.5],steps,height);
	BezConic([43.0, 33.5], [44, 31], [44.5, 28.0],steps,height);
	BezConic([44.5, 28.0], [45, 25], [45, 22],steps,height);
	BezConic([45, 22], [45, 19], [44.5, 16.5],steps,height);
	BezConic([44.5, 16.5], [44, 14], [43.0, 11.0],steps,height);
	BezConic([43.0, 11.0], [42, 8], [40.5, 6.0],steps,height);
	BezConic([40.5, 6.0], [39, 4], [36.5, 2.5],steps,height);
	BezConic([36.5, 2.5], [34, 1], [31.0, 0.0],steps,height);
	BezConic([31.0, 0.0], [28, -1], [24, -1],steps,height);
	BezConic([24, -1], [20, -1], [17.0, 0.0],steps,height);
	BezConic([17.0, 0.0], [14, 1], [11.5, 2.5],steps,height);
	BezConic([11.5, 2.5], [9, 4], [7.5, 6.0],steps,height);
	BezConic([7.5, 6.0], [6, 8], [5.0, 11.0],steps,height);
	BezConic([5.0, 11.0], [4, 14], [3.5, 16.5],steps,height);
	BezConic([3.5, 16.5], [3, 19], [3, 22],steps,height);
	BezConic([3, 22], [3, 25], [3.5, 28.0],steps,height);
	BezConic([3.5, 28.0], [4, 31], [5.0, 33.5],steps,height);
	BezConic([5.0, 33.5], [6, 36], [7.5, 38.0],steps,height);
	BezConic([7.5, 38.0], [9, 40], [11.5, 41.5],steps,height);
	BezConic([11.5, 41.5], [14, 43], [17.0, 44.0],steps,height);
	BezConic([17.0, 44.0], [20, 45], [24, 45],steps,height);
}
}

module Candal_contour00x30(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x30_skeleton(height);
			Candal_contour00x30_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x30_subtractive_curves(steps, height);
	}
}

module Candal_contour10x30_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[24, 35], [22, 35], [21.0, 34.0], 
		[20, 33], [19.0, 31.0], [18, 29], 
		[17.5, 27.0], [17, 25], [17, 22], 
		[17, 20], [17.5, 17.5], [18, 15], 
		[18.5, 13.0], [19, 11], [20.5, 10.0], 
		[22, 9], [24, 9], [26, 9], 
		[27.0, 10.0], [28, 11], [29.0, 13.0], 
		[30, 15], [30.5, 17.5], [31, 20], 
		[31, 22], [31, 25], [30.5, 27.0], 
		[30, 29], [29.0, 31.0], [28, 33], 
		[27.0, 34.0],[26, 35], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[24, 35], [22, 35], [21.0, 34.0], 
		[20, 33], [19.0, 31.0], [18, 29], 
		[17.5, 27.0], [17, 25], [17, 22], 
		[17, 20], [17.5, 17.5], [18, 15], 
		[18.5, 13.0], [19, 11], [20.5, 10.0], 
		[22, 9], [24, 9], [26, 9], 
		[27.0, 10.0], [28, 11], [29.0, 13.0], 
		[30, 15], [30.5, 17.5], [31, 20], 
		[31, 22], [31, 25], [30.5, 27.0], 
		[30, 29], [29.0, 31.0], [28, 33], 
		[27.0, 34.0],[26, 35], ]);
}}}

module Candal_contour10x30_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 35], [22, 35], [21.0, 34.0],steps,height);
	BezConic([21.0, 34.0], [20, 33], [19.0, 31.0],steps,height);
	BezConic([19.0, 31.0], [18, 29], [17.5, 27.0],steps,height);
	BezConic([17.5, 27.0], [17, 25], [17, 22],steps,height);
	BezConic([17, 22], [17, 20], [17.5, 17.5],steps,height);
	BezConic([17.5, 17.5], [18, 15], [18.5, 13.0],steps,height);
	BezConic([18.5, 13.0], [19, 11], [20.5, 10.0],steps,height);
	BezConic([20.5, 10.0], [22, 9], [24, 9],steps,height);
	BezConic([24, 9], [26, 9], [27.0, 10.0],steps,height);
	BezConic([27.0, 10.0], [28, 11], [29.0, 13.0],steps,height);
	BezConic([29.0, 13.0], [30, 15], [30.5, 17.5],steps,height);
	BezConic([30.5, 17.5], [31, 20], [31, 22],steps,height);
	BezConic([31, 22], [31, 25], [30.5, 27.0],steps,height);
	BezConic([30.5, 27.0], [30, 29], [29.0, 31.0],steps,height);
	BezConic([29.0, 31.0], [28, 33], [27.0, 34.0],steps,height);
	BezConic([27.0, 34.0], [26, 35], [24, 35],steps,height);
}
}

module Candal_contour10x30_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x30(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x30_skeleton(height);
			Candal_contour10x30_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x30_additive_curves(steps, height);
	}
}

module Candal_chunk10x30(steps=2, height) {
	difference() {
		Candal_contour00x30(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x30(steps, height);
	}
}

Candal_bbox0x30=[[3, -1], [45, 45]];

module Candal_letter0x30(steps=2, height) {
	Candal_chunk10x30(steps, height);
} //end skeleton

module Candal_contour00x31_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[27, 0], [20.5, 0.0], [14, 0], 
		[14.0, 16.0], [14, 32], [10.5, 31.5], 
		[7, 31], [7.0, 35.0], [7, 39], 
		[9, 40], [11.5, 41.0], [14, 42], 
		[17, 44], [22.0, 44.0], [27, 44], 
		[27.0, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[27, 0], [20.5, 0.0], [14, 0], 
		[14.0, 16.0], [14, 32], [10.5, 31.5], 
		[7, 31], [7.0, 35.0], [7, 39], 
		[9, 40], [11.5, 41.0], [14, 42], 
		[17, 44], [22.0, 44.0], [27, 44], 
		[27.0, 22.0], ]);
}}}

module Candal_contour00x31_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([11.5, 41.0], [14, 42], [17, 44],steps,height);
}
}

module Candal_contour00x31_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([7, 39], [9, 40], [11.5, 41.0],steps,height);
}
}

module Candal_contour00x31(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x31_skeleton(height);
			Candal_contour00x31_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x31_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x31(steps=2, height) {
	difference() {
		Candal_contour00x31(steps, height);
		
	}
}

Candal_bbox0x31=[[7, 0], [27, 44]];

module Candal_letter0x31(steps=2, height) {
	Candal_chunk10x31(steps, height);
} //end skeleton

module Candal_contour00x32_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 11], [27.5, 11.0], [36, 11], 
		[36.0, 5.5], [36, 0], [21.0, 0.0], 
		[6, 0], [5.5, 5.5], [5, 11], 
		[6, 12], [8.0, 13.5], [10, 15], 
		[12.0, 16.5], [14, 18], [15.5, 20.0], 
		[17, 22], [18.5, 23.5], [20, 25], 
		[21.0, 27.0], [22, 29], [22, 31], 
		[22, 32], [21.5, 33.0], [21, 34], 
		[20.5, 34.5], [20, 35], [18.5, 35.0], 
		[17, 35], [16, 35], [15, 35], 
		[13.5, 35.0], [12, 35], [11.0, 34.5], 
		[10, 34], [9.0, 33.5], [8, 33], 
		[7, 33], [6.0, 38.0], [5, 43], 
		[9, 44], [12.5, 44.5], [16, 45], 
		[19, 45], [23, 45], [26.5, 44.0], 
		[30, 43], [32.0, 41.0], [34, 39], 
		[35.0, 36.5], [36, 34], [36, 32], 
		[36, 29], [34.5, 26.0], [33, 23], 
		[31.0, 20.0], [29, 17], [25.5, 15.0], 
		[22, 13], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 11], [27.5, 11.0], [36, 11], 
		[36.0, 5.5], [36, 0], [21.0, 0.0], 
		[6, 0], [5.5, 5.5], [5, 11], 
		[6, 12], [8.0, 13.5], [10, 15], 
		[12.0, 16.5], [14, 18], [15.5, 20.0], 
		[17, 22], [18.5, 23.5], [20, 25], 
		[21.0, 27.0], [22, 29], [22, 31], 
		[22, 32], [21.5, 33.0], [21, 34], 
		[20.5, 34.5], [20, 35], [18.5, 35.0], 
		[17, 35], [16, 35], [15, 35], 
		[13.5, 35.0], [12, 35], [11.0, 34.5], 
		[10, 34], [9.0, 33.5], [8, 33], 
		[7, 33], [6.0, 38.0], [5, 43], 
		[9, 44], [12.5, 44.5], [16, 45], 
		[19, 45], [23, 45], [26.5, 44.0], 
		[30, 43], [32.0, 41.0], [34, 39], 
		[35.0, 36.5], [36, 34], [36, 32], 
		[36, 29], [34.5, 26.0], [33, 23], 
		[31.0, 20.0], [29, 17], [25.5, 15.0], 
		[22, 13], ]);
}}}

module Candal_contour00x32_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([8.0, 13.5], [10, 15], [12.0, 16.5],steps,height);
	BezConic([12.0, 16.5], [14, 18], [15.5, 20.0],steps,height);
	BezConic([18.5, 23.5], [20, 25], [21.0, 27.0],steps,height);
	BezConic([21.0, 27.0], [22, 29], [22, 31],steps,height);
	BezConic([22, 31], [22, 32], [21.5, 33.0],steps,height);
	BezConic([21.5, 33.0], [21, 34], [20.5, 34.5],steps,height);
	BezConic([20.5, 34.5], [20, 35], [18.5, 35.0],steps,height);
	BezConic([18.5, 35.0], [17, 35], [16, 35],steps,height);
	BezConic([16, 35], [15, 35], [13.5, 35.0],steps,height);
	BezConic([13.5, 35.0], [12, 35], [11.0, 34.5],steps,height);
	BezConic([11.0, 34.5], [10, 34], [9.0, 33.5],steps,height);
	BezConic([25.5, 15.0], [22, 13], [19, 11],steps,height);
}
}

module Candal_contour00x32_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 11], [6, 12], [8.0, 13.5],steps,height);
	BezConic([15.5, 20.0], [17, 22], [18.5, 23.5],steps,height);
	BezConic([9.0, 33.5], [8, 33], [7, 33],steps,height);
	BezConic([5, 43], [9, 44], [12.5, 44.5],steps,height);
	BezConic([12.5, 44.5], [16, 45], [19, 45],steps,height);
	BezConic([19, 45], [23, 45], [26.5, 44.0],steps,height);
	BezConic([26.5, 44.0], [30, 43], [32.0, 41.0],steps,height);
	BezConic([32.0, 41.0], [34, 39], [35.0, 36.5],steps,height);
	BezConic([35.0, 36.5], [36, 34], [36, 32],steps,height);
	BezConic([36, 32], [36, 29], [34.5, 26.0],steps,height);
	BezConic([34.5, 26.0], [33, 23], [31.0, 20.0],steps,height);
	BezConic([31.0, 20.0], [29, 17], [25.5, 15.0],steps,height);
}
}

module Candal_contour00x32(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x32_skeleton(height);
			Candal_contour00x32_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x32_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x32(steps=2, height) {
	difference() {
		Candal_contour00x32(steps, height);
		
	}
}

Candal_bbox0x32=[[5, 0], [36, 45]];

module Candal_letter0x32(steps=2, height) {
	Candal_chunk10x32(steps, height);
} //end skeleton

module Candal_contour00x33_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[9, 27], [13, 27], [15.0, 27.5], 
		[17, 28], [18.5, 28.5], [20, 29], 
		[20.5, 29.5], [21, 30], [21, 31], 
		[21, 33], [20.5, 33.5], [20, 34], 
		[19.0, 35.0], [18, 36], [17.0, 36.0], 
		[16, 36], [14, 36], [13, 36], 
		[11.5, 36.0], [10, 36], [9.0, 35.5], 
		[8, 35], [6.5, 34.5], [5, 34], 
		[4, 34], [4.0, 38.0], [4, 42], 
		[7, 44], [10.0, 44.5], [13, 45], 
		[17, 45], [21, 45], [23.5, 44.5], 
		[26, 44], [28.0, 43.0], [30, 42], 
		[31.5, 41.0], [33, 40], [33.5, 38.5], 
		[34, 37], [34.5, 35.5], [35, 34], 
		[35, 32], [35, 30], [34.0, 28.0], 
		[33, 26], [32.0, 25.0], [31, 24], 
		[29.5, 23.5], [28, 23], [27, 23], 
		[28, 22], [29.5, 21.5], [31, 21], 
		[32.5, 20.0], [34, 19], [35.0, 17.0], 
		[36, 15], [36, 13], [36, 11], 
		[35.5, 9.0], [35, 7], [34.0, 5.5], 
		[33, 4], [32.0, 3.0], [31, 2], 
		[28.5, 1.0], [26, 0], [23.0, -0.5], 
		[20, -1], [16, -1], [13, -1], 
		[10.0, -0.5], [7, 0], [4, 1], 
		[4.0, 5.5], [4, 10], [5, 10], 
		[6.5, 9.5], [8, 9], [9.0, 8.5], 
		[10, 8], [11.5, 8.0], [13, 8], 
		[14, 8], [16, 8], [17.0, 8.5], 
		[18, 9], [19.0, 9.5], [20, 10], 
		[20.5, 11.0], [21, 12], [21, 13], 
		[21, 15], [20.5, 16.0], [20, 17], 
		[19.0, 17.5], [18, 18], [15.5, 18.5], 
		[13, 19], [9, 19], [9.0, 23.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[9, 27], [13, 27], [15.0, 27.5], 
		[17, 28], [18.5, 28.5], [20, 29], 
		[20.5, 29.5], [21, 30], [21, 31], 
		[21, 33], [20.5, 33.5], [20, 34], 
		[19.0, 35.0], [18, 36], [17.0, 36.0], 
		[16, 36], [14, 36], [13, 36], 
		[11.5, 36.0], [10, 36], [9.0, 35.5], 
		[8, 35], [6.5, 34.5], [5, 34], 
		[4, 34], [4.0, 38.0], [4, 42], 
		[7, 44], [10.0, 44.5], [13, 45], 
		[17, 45], [21, 45], [23.5, 44.5], 
		[26, 44], [28.0, 43.0], [30, 42], 
		[31.5, 41.0], [33, 40], [33.5, 38.5], 
		[34, 37], [34.5, 35.5], [35, 34], 
		[35, 32], [35, 30], [34.0, 28.0], 
		[33, 26], [32.0, 25.0], [31, 24], 
		[29.5, 23.5], [28, 23], [27, 23], 
		[28, 22], [29.5, 21.5], [31, 21], 
		[32.5, 20.0], [34, 19], [35.0, 17.0], 
		[36, 15], [36, 13], [36, 11], 
		[35.5, 9.0], [35, 7], [34.0, 5.5], 
		[33, 4], [32.0, 3.0], [31, 2], 
		[28.5, 1.0], [26, 0], [23.0, -0.5], 
		[20, -1], [16, -1], [13, -1], 
		[10.0, -0.5], [7, 0], [4, 1], 
		[4.0, 5.5], [4, 10], [5, 10], 
		[6.5, 9.5], [8, 9], [9.0, 8.5], 
		[10, 8], [11.5, 8.0], [13, 8], 
		[14, 8], [16, 8], [17.0, 8.5], 
		[18, 9], [19.0, 9.5], [20, 10], 
		[20.5, 11.0], [21, 12], [21, 13], 
		[21, 15], [20.5, 16.0], [20, 17], 
		[19.0, 17.5], [18, 18], [15.5, 18.5], 
		[13, 19], [9, 19], [9.0, 23.0], 
		 ]);
}}}

module Candal_contour00x33_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([9, 27], [13, 27], [15.0, 27.5],steps,height);
	BezConic([15.0, 27.5], [17, 28], [18.5, 28.5],steps,height);
	BezConic([18.5, 28.5], [20, 29], [20.5, 29.5],steps,height);
	BezConic([20.5, 29.5], [21, 30], [21, 31],steps,height);
	BezConic([21, 31], [21, 33], [20.5, 33.5],steps,height);
	BezConic([20.5, 33.5], [20, 34], [19.0, 35.0],steps,height);
	BezConic([19.0, 35.0], [18, 36], [17.0, 36.0],steps,height);
	BezConic([17.0, 36.0], [16, 36], [14, 36],steps,height);
	BezConic([14, 36], [13, 36], [11.5, 36.0],steps,height);
	BezConic([11.5, 36.0], [10, 36], [9.0, 35.5],steps,height);
	BezConic([33.5, 38.5], [34, 37], [34.5, 35.5],steps,height);
	BezConic([27, 23], [28, 22], [29.5, 21.5],steps,height);
	BezConic([9.0, 8.5], [10, 8], [11.5, 8.0],steps,height);
	BezConic([11.5, 8.0], [13, 8], [14, 8],steps,height);
	BezConic([14, 8], [16, 8], [17.0, 8.5],steps,height);
	BezConic([17.0, 8.5], [18, 9], [19.0, 9.5],steps,height);
	BezConic([19.0, 9.5], [20, 10], [20.5, 11.0],steps,height);
	BezConic([20.5, 11.0], [21, 12], [21, 13],steps,height);
	BezConic([21, 13], [21, 15], [20.5, 16.0],steps,height);
	BezConic([20.5, 16.0], [20, 17], [19.0, 17.5],steps,height);
	BezConic([19.0, 17.5], [18, 18], [15.5, 18.5],steps,height);
	BezConic([15.5, 18.5], [13, 19], [9, 19],steps,height);
}
}

module Candal_contour00x33_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([9.0, 35.5], [8, 35], [6.5, 34.5],steps,height);
	BezConic([6.5, 34.5], [5, 34], [4, 34],steps,height);
	BezConic([4, 42], [7, 44], [10.0, 44.5],steps,height);
	BezConic([10.0, 44.5], [13, 45], [17, 45],steps,height);
	BezConic([17, 45], [21, 45], [23.5, 44.5],steps,height);
	BezConic([23.5, 44.5], [26, 44], [28.0, 43.0],steps,height);
	BezConic([28.0, 43.0], [30, 42], [31.5, 41.0],steps,height);
	BezConic([31.5, 41.0], [33, 40], [33.5, 38.5],steps,height);
	BezConic([34.5, 35.5], [35, 34], [35, 32],steps,height);
	BezConic([35, 32], [35, 30], [34.0, 28.0],steps,height);
	BezConic([34.0, 28.0], [33, 26], [32.0, 25.0],steps,height);
	BezConic([32.0, 25.0], [31, 24], [29.5, 23.5],steps,height);
	BezConic([29.5, 23.5], [28, 23], [27, 23],steps,height);
	BezConic([29.5, 21.5], [31, 21], [32.5, 20.0],steps,height);
	BezConic([32.5, 20.0], [34, 19], [35.0, 17.0],steps,height);
	BezConic([35.0, 17.0], [36, 15], [36, 13],steps,height);
	BezConic([36, 13], [36, 11], [35.5, 9.0],steps,height);
	BezConic([35.5, 9.0], [35, 7], [34.0, 5.5],steps,height);
	BezConic([34.0, 5.5], [33, 4], [32.0, 3.0],steps,height);
	BezConic([32.0, 3.0], [31, 2], [28.5, 1.0],steps,height);
	BezConic([28.5, 1.0], [26, 0], [23.0, -0.5],steps,height);
	BezConic([23.0, -0.5], [20, -1], [16, -1],steps,height);
	BezConic([16, -1], [13, -1], [10.0, -0.5],steps,height);
	BezConic([10.0, -0.5], [7, 0], [4, 1],steps,height);
	BezConic([4, 10], [5, 10], [6.5, 9.5],steps,height);
	BezConic([6.5, 9.5], [8, 9], [9.0, 8.5],steps,height);
}
}

module Candal_contour00x33(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x33_skeleton(height);
			Candal_contour00x33_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x33_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x33(steps=2, height) {
	difference() {
		Candal_contour00x33(steps, height);
		
	}
}

Candal_bbox0x33=[[4, -1], [36, 45]];

module Candal_letter0x33(steps=2, height) {
	Candal_chunk10x33(steps, height);
} //end skeleton

module Candal_contour00x34_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[35, 19], [37.5, 19.0], [40, 19], 
		[40.0, 14.0], [40, 9], [37.5, 9.0], 
		[35, 9], [35.0, 4.5], [35, 0], 
		[28.5, 0.0], [22, 0], [22.0, 4.5], 
		[22, 9], [12.5, 9.0], [3, 9], 
		[3.0, 14.0], [3, 19], [8.5, 31.5], 
		[14, 44], [24.5, 44.0], [35, 44], 
		[35.0, 31.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[35, 19], [37.5, 19.0], [40, 19], 
		[40.0, 14.0], [40, 9], [37.5, 9.0], 
		[35, 9], [35.0, 4.5], [35, 0], 
		[28.5, 0.0], [22, 0], [22.0, 4.5], 
		[22, 9], [12.5, 9.0], [3, 9], 
		[3.0, 14.0], [3, 19], [8.5, 31.5], 
		[14, 44], [24.5, 44.0], [35, 44], 
		[35.0, 31.5], ]);
}}}

module Candal_contour00x34_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x34_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x34(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x34_skeleton(height);
			Candal_contour00x34_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x34_subtractive_curves(steps, height);
	}
}

module Candal_contour10x34_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 35], [16.0, 27.0], [13, 19], 
		[17.5, 19.0], [22, 19], [22.0, 27.0], 
		[22, 35],[20.5, 35.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 35], [16.0, 27.0], [13, 19], 
		[17.5, 19.0], [22, 19], [22.0, 27.0], 
		[22, 35],[20.5, 35.0], ]);
}}}

module Candal_contour10x34_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x34_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x34(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x34_skeleton(height);
			Candal_contour10x34_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x34_additive_curves(steps, height);
	}
}

module Candal_chunk10x34(steps=2, height) {
	difference() {
		Candal_contour00x34(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x34(steps, height);
	}
}

Candal_bbox0x34=[[3, 0], [40, 44]];

module Candal_letter0x34(steps=2, height) {
	Candal_chunk10x34(steps, height);
} //end skeleton

module Candal_contour00x35_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 20], [6.5, 32.0], [8, 44], 
		[22.5, 44.0], [37, 44], [36.5, 39.5], 
		[36, 35], [27.0, 35.0], [18, 35], 
		[17.0, 30.5], [16, 26], [18, 27], 
		[19.0, 27.5], [20, 28], [21.5, 28.5], 
		[23, 29], [24.0, 29.0], [25, 29], 
		[27, 29], [29, 29], [32.0, 28.0], 
		[35, 27], [37.0, 25.0], [39, 23], 
		[40.0, 20.5], [41, 18], [41, 15], 
		[41, 11], [40.0, 8.0], [39, 5], 
		[36.5, 3.0], [34, 1], [30.5, 0.0], 
		[27, -1], [23, -1], [18, -1], 
		[15.0, 0.0], [12, 1], [9.5, 3.0], 
		[7, 5], [6.0, 7.5], [5, 10], 
		[4, 12], [10.5, 12.0], [17, 12], 
		[18, 11], [18.5, 10.5], [19, 10], 
		[19.5, 9.5], [20, 9], [21.0, 8.5], 
		[22, 8], [23, 8], [24, 8], 
		[25.0, 8.5], [26, 9], [26.5, 9.5], 
		[27, 10], [27.5, 11.5], [28, 13], 
		[28, 14], [28, 15], [28.0, 16.5], 
		[28, 18], [27.0, 18.5], [26, 19], 
		[25.0, 19.5], [24, 20], [23, 20], 
		[22, 20], [21.0, 20.0], [20, 20], 
		[19.0, 19.5], [18, 19], [17.5, 19.0], 
		[17, 19], [16, 18], [10.5, 19.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 20], [6.5, 32.0], [8, 44], 
		[22.5, 44.0], [37, 44], [36.5, 39.5], 
		[36, 35], [27.0, 35.0], [18, 35], 
		[17.0, 30.5], [16, 26], [18, 27], 
		[19.0, 27.5], [20, 28], [21.5, 28.5], 
		[23, 29], [24.0, 29.0], [25, 29], 
		[27, 29], [29, 29], [32.0, 28.0], 
		[35, 27], [37.0, 25.0], [39, 23], 
		[40.0, 20.5], [41, 18], [41, 15], 
		[41, 11], [40.0, 8.0], [39, 5], 
		[36.5, 3.0], [34, 1], [30.5, 0.0], 
		[27, -1], [23, -1], [18, -1], 
		[15.0, 0.0], [12, 1], [9.5, 3.0], 
		[7, 5], [6.0, 7.5], [5, 10], 
		[4, 12], [10.5, 12.0], [17, 12], 
		[18, 11], [18.5, 10.5], [19, 10], 
		[19.5, 9.5], [20, 9], [21.0, 8.5], 
		[22, 8], [23, 8], [24, 8], 
		[25.0, 8.5], [26, 9], [26.5, 9.5], 
		[27, 10], [27.5, 11.5], [28, 13], 
		[28, 14], [28, 15], [28.0, 16.5], 
		[28, 18], [27.0, 18.5], [26, 19], 
		[25.0, 19.5], [24, 20], [23, 20], 
		[22, 20], [21.0, 20.0], [20, 20], 
		[19.0, 19.5], [18, 19], [17.5, 19.0], 
		[17, 19], [16, 18], [10.5, 19.0], 
		 ]);
}}}

module Candal_contour00x35_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([16, 26], [18, 27], [19.0, 27.5],steps,height);
	BezConic([24.0, 29.0], [25, 29], [27, 29],steps,height);
	BezConic([6.0, 7.5], [5, 10], [4, 12],steps,height);
	BezConic([18.5, 10.5], [19, 10], [19.5, 9.5],steps,height);
	BezConic([19.5, 9.5], [20, 9], [21.0, 8.5],steps,height);
	BezConic([21.0, 8.5], [22, 8], [23, 8],steps,height);
	BezConic([23, 8], [24, 8], [25.0, 8.5],steps,height);
	BezConic([25.0, 8.5], [26, 9], [26.5, 9.5],steps,height);
	BezConic([26.5, 9.5], [27, 10], [27.5, 11.5],steps,height);
	BezConic([27.5, 11.5], [28, 13], [28, 14],steps,height);
	BezConic([28, 14], [28, 15], [28.0, 16.5],steps,height);
	BezConic([28.0, 16.5], [28, 18], [27.0, 18.5],steps,height);
	BezConic([27.0, 18.5], [26, 19], [25.0, 19.5],steps,height);
	BezConic([25.0, 19.5], [24, 20], [23, 20],steps,height);
	BezConic([23, 20], [22, 20], [21.0, 20.0],steps,height);
	BezConic([21.0, 20.0], [20, 20], [19.0, 19.5],steps,height);
	BezConic([17.5, 19.0], [17, 19], [16, 18],steps,height);
}
}

module Candal_contour00x35_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([19.0, 27.5], [20, 28], [21.5, 28.5],steps,height);
	BezConic([21.5, 28.5], [23, 29], [24.0, 29.0],steps,height);
	BezConic([27, 29], [29, 29], [32.0, 28.0],steps,height);
	BezConic([32.0, 28.0], [35, 27], [37.0, 25.0],steps,height);
	BezConic([37.0, 25.0], [39, 23], [40.0, 20.5],steps,height);
	BezConic([40.0, 20.5], [41, 18], [41, 15],steps,height);
	BezConic([41, 15], [41, 11], [40.0, 8.0],steps,height);
	BezConic([40.0, 8.0], [39, 5], [36.5, 3.0],steps,height);
	BezConic([36.5, 3.0], [34, 1], [30.5, 0.0],steps,height);
	BezConic([30.5, 0.0], [27, -1], [23, -1],steps,height);
	BezConic([23, -1], [18, -1], [15.0, 0.0],steps,height);
	BezConic([15.0, 0.0], [12, 1], [9.5, 3.0],steps,height);
	BezConic([9.5, 3.0], [7, 5], [6.0, 7.5],steps,height);
	BezConic([17, 12], [18, 11], [18.5, 10.5],steps,height);
	BezConic([19.0, 19.5], [18, 19], [17.5, 19.0],steps,height);
}
}

module Candal_contour00x35(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x35_skeleton(height);
			Candal_contour00x35_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x35_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x35(steps=2, height) {
	difference() {
		Candal_contour00x35(steps, height);
		
	}
}

Candal_bbox0x35=[[4, -1], [41, 44]];

module Candal_letter0x35(steps=2, height) {
	Candal_chunk10x35(steps, height);
} //end skeleton

module Candal_contour00x36_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[37, 34], [36, 34], [35.0, 34.5], 
		[34, 35], [32.5, 35.5], [31, 36], 
		[29.5, 36.0], [28, 36], [27, 36], 
		[25, 36], [23.0, 35.5], [21, 35], 
		[20.0, 34.0], [19, 33], [18.0, 31.0], 
		[17, 29], [17, 25], [18, 26], 
		[19.0, 26.0], [20, 26], [21.5, 26.5], 
		[23, 27], [24.0, 27.0], [25, 27], 
		[27, 27], [29, 27], [31.5, 26.0], 
		[34, 25], [36.0, 23.5], [38, 22], 
		[39.5, 19.5], [41, 17], [41, 14], 
		[41, 12], [40.5, 10.5], [40, 9], 
		[39.5, 7.0], [39, 5], [37.5, 3.5], 
		[36, 2], [34.0, 1.0], [32, 0], 
		[29.5, -0.5], [27, -1], [24, -1], 
		[20, -1], [16.5, 0.0], [13, 1], 
		[11.0, 2.5], [9, 4], [7.5, 6.0], 
		[6, 8], [5.0, 10.5], [4, 13], 
		[4.0, 16.0], [4, 19], [4, 22], 
		[4, 27], [5.0, 31.0], [6, 35], 
		[9.0, 38.5], [12, 42], [16.0, 43.5], 
		[20, 45], [25, 45], [28, 45], 
		[31.0, 44.5], [34, 44], [38, 43], 
		[37.5, 38.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[37, 34], [36, 34], [35.0, 34.5], 
		[34, 35], [32.5, 35.5], [31, 36], 
		[29.5, 36.0], [28, 36], [27, 36], 
		[25, 36], [23.0, 35.5], [21, 35], 
		[20.0, 34.0], [19, 33], [18.0, 31.0], 
		[17, 29], [17, 25], [18, 26], 
		[19.0, 26.0], [20, 26], [21.5, 26.5], 
		[23, 27], [24.0, 27.0], [25, 27], 
		[27, 27], [29, 27], [31.5, 26.0], 
		[34, 25], [36.0, 23.5], [38, 22], 
		[39.5, 19.5], [41, 17], [41, 14], 
		[41, 12], [40.5, 10.5], [40, 9], 
		[39.5, 7.0], [39, 5], [37.5, 3.5], 
		[36, 2], [34.0, 1.0], [32, 0], 
		[29.5, -0.5], [27, -1], [24, -1], 
		[20, -1], [16.5, 0.0], [13, 1], 
		[11.0, 2.5], [9, 4], [7.5, 6.0], 
		[6, 8], [5.0, 10.5], [4, 13], 
		[4.0, 16.0], [4, 19], [4, 22], 
		[4, 27], [5.0, 31.0], [6, 35], 
		[9.0, 38.5], [12, 42], [16.0, 43.5], 
		[20, 45], [25, 45], [28, 45], 
		[31.0, 44.5], [34, 44], [38, 43], 
		[37.5, 38.5], ]);
}}}

module Candal_contour00x36_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([35.0, 34.5], [34, 35], [32.5, 35.5],steps,height);
	BezConic([32.5, 35.5], [31, 36], [29.5, 36.0],steps,height);
	BezConic([29.5, 36.0], [28, 36], [27, 36],steps,height);
	BezConic([27, 36], [25, 36], [23.0, 35.5],steps,height);
	BezConic([23.0, 35.5], [21, 35], [20.0, 34.0],steps,height);
	BezConic([20.0, 34.0], [19, 33], [18.0, 31.0],steps,height);
	BezConic([18.0, 31.0], [17, 29], [17, 25],steps,height);
	BezConic([19.0, 26.0], [20, 26], [21.5, 26.5],steps,height);
	BezConic([24.0, 27.0], [25, 27], [27, 27],steps,height);
	BezConic([40.5, 10.5], [40, 9], [39.5, 7.0],steps,height);
	BezConic([4.0, 16.0], [4, 19], [4, 22],steps,height);
}
}

module Candal_contour00x36_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([37, 34], [36, 34], [35.0, 34.5],steps,height);
	BezConic([17, 25], [18, 26], [19.0, 26.0],steps,height);
	BezConic([21.5, 26.5], [23, 27], [24.0, 27.0],steps,height);
	BezConic([27, 27], [29, 27], [31.5, 26.0],steps,height);
	BezConic([31.5, 26.0], [34, 25], [36.0, 23.5],steps,height);
	BezConic([36.0, 23.5], [38, 22], [39.5, 19.5],steps,height);
	BezConic([39.5, 19.5], [41, 17], [41, 14],steps,height);
	BezConic([41, 14], [41, 12], [40.5, 10.5],steps,height);
	BezConic([39.5, 7.0], [39, 5], [37.5, 3.5],steps,height);
	BezConic([37.5, 3.5], [36, 2], [34.0, 1.0],steps,height);
	BezConic([34.0, 1.0], [32, 0], [29.5, -0.5],steps,height);
	BezConic([29.5, -0.5], [27, -1], [24, -1],steps,height);
	BezConic([24, -1], [20, -1], [16.5, 0.0],steps,height);
	BezConic([16.5, 0.0], [13, 1], [11.0, 2.5],steps,height);
	BezConic([11.0, 2.5], [9, 4], [7.5, 6.0],steps,height);
	BezConic([7.5, 6.0], [6, 8], [5.0, 10.5],steps,height);
	BezConic([5.0, 10.5], [4, 13], [4.0, 16.0],steps,height);
	BezConic([4, 22], [4, 27], [5.0, 31.0],steps,height);
	BezConic([5.0, 31.0], [6, 35], [9.0, 38.5],steps,height);
	BezConic([9.0, 38.5], [12, 42], [16.0, 43.5],steps,height);
	BezConic([16.0, 43.5], [20, 45], [25, 45],steps,height);
	BezConic([25, 45], [28, 45], [31.0, 44.5],steps,height);
	BezConic([31.0, 44.5], [34, 44], [38, 43],steps,height);
}
}

module Candal_contour00x36(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x36_skeleton(height);
			Candal_contour00x36_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x36_subtractive_curves(steps, height);
	}
}

module Candal_contour10x36_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[17, 18], [17, 15], [17.5, 13.0], 
		[18, 11], [19.0, 10.0], [20, 9], 
		[21.5, 8.5], [23, 8], [24, 8], 
		[25, 8], [26.0, 8.5], [27, 9], 
		[28.0, 9.5], [29, 10], [29.5, 11.0], 
		[30, 12], [30, 13], [30, 14], 
		[29.5, 15.0], [29, 16], [28.5, 17.0], 
		[28, 18], [26.5, 18.5], [25, 19], 
		[23, 19], [22, 19], [20.5, 19.0], 
		[19, 19], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[17, 18], [17, 15], [17.5, 13.0], 
		[18, 11], [19.0, 10.0], [20, 9], 
		[21.5, 8.5], [23, 8], [24, 8], 
		[25, 8], [26.0, 8.5], [27, 9], 
		[28.0, 9.5], [29, 10], [29.5, 11.0], 
		[30, 12], [30, 13], [30, 14], 
		[29.5, 15.0], [29, 16], [28.5, 17.0], 
		[28, 18], [26.5, 18.5], [25, 19], 
		[23, 19], [22, 19], [20.5, 19.0], 
		[19, 19], ]);
}}}

module Candal_contour10x36_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([17, 18], [17, 15], [17.5, 13.0],steps,height);
	BezConic([17.5, 13.0], [18, 11], [19.0, 10.0],steps,height);
	BezConic([19.0, 10.0], [20, 9], [21.5, 8.5],steps,height);
	BezConic([21.5, 8.5], [23, 8], [24, 8],steps,height);
	BezConic([24, 8], [25, 8], [26.0, 8.5],steps,height);
	BezConic([26.0, 8.5], [27, 9], [28.0, 9.5],steps,height);
	BezConic([28.0, 9.5], [29, 10], [29.5, 11.0],steps,height);
	BezConic([29.5, 11.0], [30, 12], [30, 13],steps,height);
	BezConic([30, 13], [30, 14], [29.5, 15.0],steps,height);
	BezConic([29.5, 15.0], [29, 16], [28.5, 17.0],steps,height);
	BezConic([28.5, 17.0], [28, 18], [26.5, 18.5],steps,height);
	BezConic([26.5, 18.5], [25, 19], [23, 19],steps,height);
	BezConic([23, 19], [22, 19], [20.5, 19.0],steps,height);
	BezConic([20.5, 19.0], [19, 19], [17, 18],steps,height);
}
}

module Candal_contour10x36_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x36(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x36_skeleton(height);
			Candal_contour10x36_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x36_additive_curves(steps, height);
	}
}

module Candal_chunk10x36(steps=2, height) {
	difference() {
		Candal_contour00x36(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x36(steps, height);
	}
}

Candal_bbox0x36=[[4, -1], [41, 45]];

module Candal_letter0x36(steps=2, height) {
	Candal_chunk10x36(steps, height);
} //end skeleton

module Candal_contour00x37_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[35, 35], [28.5, 17.5], [22, 0], 
		[14.5, 0.0], [7, 0], [13.5, 17.5], 
		[20, 35], [12.0, 35.0], [4, 35], 
		[4.0, 39.5], [4, 44], [19.0, 44.0], 
		[34, 44],[34.5, 39.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[35, 35], [28.5, 17.5], [22, 0], 
		[14.5, 0.0], [7, 0], [13.5, 17.5], 
		[20, 35], [12.0, 35.0], [4, 35], 
		[4.0, 39.5], [4, 44], [19.0, 44.0], 
		[34, 44],[34.5, 39.5], ]);
}}}

module Candal_contour00x37_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x37_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x37(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x37_skeleton(height);
			Candal_contour00x37_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x37_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x37(steps=2, height) {
	difference() {
		Candal_contour00x37(steps, height);
		
	}
}

Candal_bbox0x37=[[4, 0], [35, 44]];

module Candal_letter0x37(steps=2, height) {
	Candal_chunk10x37(steps, height);
} //end skeleton

module Candal_contour00x38_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[43, 34], [43, 31], [41.0, 29.0], 
		[39, 27], [35, 25], [37, 24], 
		[39.0, 23.0], [41, 22], [42.5, 21.0], 
		[44, 20], [45.0, 18.0], [46, 16], 
		[46, 14], [46, 12], [45.5, 10.5], 
		[45, 9], [44.0, 7.0], [43, 5], 
		[41.5, 3.5], [40, 2], [37.5, 1.0], 
		[35, 0], [32.0, -0.5], [29, -1], 
		[24, -1], [19, -1], [15.5, 0.0], 
		[12, 1], [9.0, 3.0], [6, 5], 
		[5.0, 7.0], [4, 9], [4, 11], 
		[4, 14], [6.5, 17.0], [9, 20], 
		[14, 21], [12, 22], [11.0, 23.0], 
		[10, 24], [9.0, 25.5], [8, 27], 
		[7.5, 29.0], [7, 31], [7, 33], 
		[7, 35], [8.0, 37.5], [9, 40], 
		[11.5, 41.5], [14, 43], [17.0, 44.0], 
		[20, 45], [25, 45], [29, 45], 
		[32.5, 44.0], [36, 43], [38.0, 41.5], 
		[40, 40], [41.5, 38.0], [43, 36], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[43, 34], [43, 31], [41.0, 29.0], 
		[39, 27], [35, 25], [37, 24], 
		[39.0, 23.0], [41, 22], [42.5, 21.0], 
		[44, 20], [45.0, 18.0], [46, 16], 
		[46, 14], [46, 12], [45.5, 10.5], 
		[45, 9], [44.0, 7.0], [43, 5], 
		[41.5, 3.5], [40, 2], [37.5, 1.0], 
		[35, 0], [32.0, -0.5], [29, -1], 
		[24, -1], [19, -1], [15.5, 0.0], 
		[12, 1], [9.0, 3.0], [6, 5], 
		[5.0, 7.0], [4, 9], [4, 11], 
		[4, 14], [6.5, 17.0], [9, 20], 
		[14, 21], [12, 22], [11.0, 23.0], 
		[10, 24], [9.0, 25.5], [8, 27], 
		[7.5, 29.0], [7, 31], [7, 33], 
		[7, 35], [8.0, 37.5], [9, 40], 
		[11.5, 41.5], [14, 43], [17.0, 44.0], 
		[20, 45], [25, 45], [29, 45], 
		[32.5, 44.0], [36, 43], [38.0, 41.5], 
		[40, 40], [41.5, 38.0], [43, 36], 
		 ]);
}}}

module Candal_contour00x38_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([35, 25], [37, 24], [39.0, 23.0],steps,height);
}
}

module Candal_contour00x38_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([43, 34], [43, 31], [41.0, 29.0],steps,height);
	BezConic([41.0, 29.0], [39, 27], [35, 25],steps,height);
	BezConic([39.0, 23.0], [41, 22], [42.5, 21.0],steps,height);
	BezConic([42.5, 21.0], [44, 20], [45.0, 18.0],steps,height);
	BezConic([45.0, 18.0], [46, 16], [46, 14],steps,height);
	BezConic([46, 14], [46, 12], [45.5, 10.5],steps,height);
	BezConic([45.5, 10.5], [45, 9], [44.0, 7.0],steps,height);
	BezConic([44.0, 7.0], [43, 5], [41.5, 3.5],steps,height);
	BezConic([41.5, 3.5], [40, 2], [37.5, 1.0],steps,height);
	BezConic([37.5, 1.0], [35, 0], [32.0, -0.5],steps,height);
	BezConic([32.0, -0.5], [29, -1], [24, -1],steps,height);
	BezConic([24, -1], [19, -1], [15.5, 0.0],steps,height);
	BezConic([15.5, 0.0], [12, 1], [9.0, 3.0],steps,height);
	BezConic([9.0, 3.0], [6, 5], [5.0, 7.0],steps,height);
	BezConic([5.0, 7.0], [4, 9], [4, 11],steps,height);
	BezConic([4, 11], [4, 14], [6.5, 17.0],steps,height);
	BezConic([6.5, 17.0], [9, 20], [14, 21],steps,height);
	BezConic([14, 21], [12, 22], [11.0, 23.0],steps,height);
	BezConic([11.0, 23.0], [10, 24], [9.0, 25.5],steps,height);
	BezConic([9.0, 25.5], [8, 27], [7.5, 29.0],steps,height);
	BezConic([7.5, 29.0], [7, 31], [7, 33],steps,height);
	BezConic([7, 33], [7, 35], [8.0, 37.5],steps,height);
	BezConic([8.0, 37.5], [9, 40], [11.5, 41.5],steps,height);
	BezConic([11.5, 41.5], [14, 43], [17.0, 44.0],steps,height);
	BezConic([17.0, 44.0], [20, 45], [25, 45],steps,height);
	BezConic([25, 45], [29, 45], [32.5, 44.0],steps,height);
	BezConic([32.5, 44.0], [36, 43], [38.0, 41.5],steps,height);
	BezConic([38.0, 41.5], [40, 40], [41.5, 38.0],steps,height);
	BezConic([41.5, 38.0], [43, 36], [43, 34],steps,height);
}
}

module Candal_contour00x38(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x38_skeleton(height);
			Candal_contour00x38_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x38_subtractive_curves(steps, height);
	}
}

module Candal_contour10x38_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[23, 17], [22, 18], [21.0, 18.0], 
		[20, 18], [19, 19], [18, 18], 
		[17.5, 16.5], [17, 15], [17, 14], 
		[17, 12], [17.5, 11.0], [18, 10], 
		[19.0, 9.5], [20, 9], [21.5, 8.5], 
		[23, 8], [24, 8], [26, 8], 
		[27.0, 8.0], [28, 8], [29.0, 9.0], 
		[30, 10], [31.0, 11.0], [32, 12], 
		[32, 13], [32, 14], [31.0, 14.5], 
		[30, 15], [29.0, 15.5], [28, 16], 
		[26.5, 16.5],[25, 17], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[23, 17], [22, 18], [21.0, 18.0], 
		[20, 18], [19, 19], [18, 18], 
		[17.5, 16.5], [17, 15], [17, 14], 
		[17, 12], [17.5, 11.0], [18, 10], 
		[19.0, 9.5], [20, 9], [21.5, 8.5], 
		[23, 8], [24, 8], [26, 8], 
		[27.0, 8.0], [28, 8], [29.0, 9.0], 
		[30, 10], [31.0, 11.0], [32, 12], 
		[32, 13], [32, 14], [31.0, 14.5], 
		[30, 15], [29.0, 15.5], [28, 16], 
		[26.5, 16.5],[25, 17], ]);
}}}

module Candal_contour10x38_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([23, 17], [22, 18], [21.0, 18.0],steps,height);
	BezConic([19, 19], [18, 18], [17.5, 16.5],steps,height);
	BezConic([17.5, 16.5], [17, 15], [17, 14],steps,height);
	BezConic([17, 14], [17, 12], [17.5, 11.0],steps,height);
	BezConic([17.5, 11.0], [18, 10], [19.0, 9.5],steps,height);
	BezConic([19.0, 9.5], [20, 9], [21.5, 8.5],steps,height);
	BezConic([21.5, 8.5], [23, 8], [24, 8],steps,height);
	BezConic([24, 8], [26, 8], [27.0, 8.0],steps,height);
	BezConic([27.0, 8.0], [28, 8], [29.0, 9.0],steps,height);
	BezConic([31.0, 11.0], [32, 12], [32, 13],steps,height);
	BezConic([32, 13], [32, 14], [31.0, 14.5],steps,height);
	BezConic([31.0, 14.5], [30, 15], [29.0, 15.5],steps,height);
	BezConic([29.0, 15.5], [28, 16], [26.5, 16.5],steps,height);
	BezConic([26.5, 16.5], [25, 17], [23, 17],steps,height);
}
}

module Candal_contour10x38_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21.0, 18.0], [20, 18], [19, 19],steps,height);
	BezConic([29.0, 9.0], [30, 10], [31.0, 11.0],steps,height);
}
}

module Candal_contour10x38(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x38_skeleton(height);
			Candal_contour10x38_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x38_additive_curves(steps, height);
	}
}

module Candal_contour20x38_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[25, 37], [22, 37], [21.0, 36.0], 
		[20, 35], [20, 34], [20, 32], 
		[20.5, 31.0], [21, 30], [22.0, 29.5], 
		[23, 29], [24.5, 28.0], [26, 27], 
		[28, 27], [28, 28], [29.0, 29.5], 
		[30, 31], [30, 32], [30, 33], 
		[29.5, 34.0], [29, 35], [28.5, 35.5], 
		[28, 36], [27.0, 36.5], [26, 37], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[25, 37], [22, 37], [21.0, 36.0], 
		[20, 35], [20, 34], [20, 32], 
		[20.5, 31.0], [21, 30], [22.0, 29.5], 
		[23, 29], [24.5, 28.0], [26, 27], 
		[28, 27], [28, 28], [29.0, 29.5], 
		[30, 31], [30, 32], [30, 33], 
		[29.5, 34.0], [29, 35], [28.5, 35.5], 
		[28, 36], [27.0, 36.5], [26, 37], 
		 ]);
}}}

module Candal_contour20x38_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 37], [22, 37], [21.0, 36.0],steps,height);
	BezConic([21.0, 36.0], [20, 35], [20, 34],steps,height);
	BezConic([20, 34], [20, 32], [20.5, 31.0],steps,height);
	BezConic([20.5, 31.0], [21, 30], [22.0, 29.5],steps,height);
	BezConic([24.5, 28.0], [26, 27], [28, 27],steps,height);
	BezConic([29.0, 29.5], [30, 31], [30, 32],steps,height);
	BezConic([30, 32], [30, 33], [29.5, 34.0],steps,height);
	BezConic([29.5, 34.0], [29, 35], [28.5, 35.5],steps,height);
	BezConic([28.5, 35.5], [28, 36], [27.0, 36.5],steps,height);
	BezConic([27.0, 36.5], [26, 37], [25, 37],steps,height);
}
}

module Candal_contour20x38_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([22.0, 29.5], [23, 29], [24.5, 28.0],steps,height);
	BezConic([28, 27], [28, 28], [29.0, 29.5],steps,height);
}
}

module Candal_contour20x38(steps=2, height) {
	difference() {
		union() {
			Candal_contour20x38_skeleton(height);
			Candal_contour20x38_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour20x38_additive_curves(steps, height);
	}
}

module Candal_chunk10x38(steps=2, height) {
	difference() {
		Candal_contour00x38(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x38(steps, height);
	translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour20x38(steps, height);
	}
}

Candal_bbox0x38=[[4, -1], [46, 45]];

module Candal_letter0x38(steps=2, height) {
	Candal_chunk10x38(steps, height);
} //end skeleton

module Candal_contour00x39_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[8, 10], [8, 10], [9.5, 9.5], 
		[11, 9], [12.0, 8.5], [13, 8], 
		[14.5, 8.0], [16, 8], [17, 8], 
		[19, 8], [21.0, 8.5], [23, 9], 
		[24.5, 10.0], [26, 11], [26.5, 13.5], 
		[27, 16], [28, 19], [26, 19], 
		[25.0, 18.5], [24, 18], [22.5, 17.5], 
		[21, 17], [20.0, 17.0], [19, 17], 
		[18, 17], [15, 17], [12.5, 18.0], 
		[10, 19], [8.0, 20.5], [6, 22], 
		[5.0, 24.5], [4, 27], [4, 30], 
		[4, 32], [4.0, 34.0], [4, 36], 
		[5.0, 37.5], [6, 39], [7.0, 40.5], 
		[8, 42], [10.0, 43.0], [12, 44], 
		[14.5, 44.5], [17, 45], [20, 45], 
		[25, 45], [28.0, 44.0], [31, 43], 
		[33.0, 41.5], [35, 40], [36.5, 38.0], 
		[38, 36], [39.0, 33.5], [40, 31], 
		[40.5, 28.0], [41, 25], [41, 22], 
		[41, 17], [39.5, 13.0], [38, 9], 
		[35.0, 6.0], [32, 3], [28.0, 1.0], 
		[24, -1], [19, -1], [16, -1], 
		[13.0, -0.5], [10, 0], [7, 1], 
		[7.5, 5.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[8, 10], [8, 10], [9.5, 9.5], 
		[11, 9], [12.0, 8.5], [13, 8], 
		[14.5, 8.0], [16, 8], [17, 8], 
		[19, 8], [21.0, 8.5], [23, 9], 
		[24.5, 10.0], [26, 11], [26.5, 13.5], 
		[27, 16], [28, 19], [26, 19], 
		[25.0, 18.5], [24, 18], [22.5, 17.5], 
		[21, 17], [20.0, 17.0], [19, 17], 
		[18, 17], [15, 17], [12.5, 18.0], 
		[10, 19], [8.0, 20.5], [6, 22], 
		[5.0, 24.5], [4, 27], [4, 30], 
		[4, 32], [4.0, 34.0], [4, 36], 
		[5.0, 37.5], [6, 39], [7.0, 40.5], 
		[8, 42], [10.0, 43.0], [12, 44], 
		[14.5, 44.5], [17, 45], [20, 45], 
		[25, 45], [28.0, 44.0], [31, 43], 
		[33.0, 41.5], [35, 40], [36.5, 38.0], 
		[38, 36], [39.0, 33.5], [40, 31], 
		[40.5, 28.0], [41, 25], [41, 22], 
		[41, 17], [39.5, 13.0], [38, 9], 
		[35.0, 6.0], [32, 3], [28.0, 1.0], 
		[24, -1], [19, -1], [16, -1], 
		[13.0, -0.5], [10, 0], [7, 1], 
		[7.5, 5.5], ]);
}}}

module Candal_contour00x39_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12.0, 8.5], [13, 8], [14.5, 8.0],steps,height);
	BezConic([14.5, 8.0], [16, 8], [17, 8],steps,height);
	BezConic([17, 8], [19, 8], [21.0, 8.5],steps,height);
	BezConic([21.0, 8.5], [23, 9], [24.5, 10.0],steps,height);
	BezConic([24.5, 10.0], [26, 11], [26.5, 13.5],steps,height);
	BezConic([28, 19], [26, 19], [25.0, 18.5],steps,height);
	BezConic([20.0, 17.0], [19, 17], [18, 17],steps,height);
	BezConic([4, 30], [4, 32], [4.0, 34.0],steps,height);
	BezConic([5.0, 37.5], [6, 39], [7.0, 40.5],steps,height);
}
}

module Candal_contour00x39_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([8, 10], [8, 10], [9.5, 9.5],steps,height);
	BezConic([9.5, 9.5], [11, 9], [12.0, 8.5],steps,height);
	BezConic([26.5, 13.5], [27, 16], [28, 19],steps,height);
	BezConic([25.0, 18.5], [24, 18], [22.5, 17.5],steps,height);
	BezConic([22.5, 17.5], [21, 17], [20.0, 17.0],steps,height);
	BezConic([18, 17], [15, 17], [12.5, 18.0],steps,height);
	BezConic([12.5, 18.0], [10, 19], [8.0, 20.5],steps,height);
	BezConic([8.0, 20.5], [6, 22], [5.0, 24.5],steps,height);
	BezConic([5.0, 24.5], [4, 27], [4, 30],steps,height);
	BezConic([4.0, 34.0], [4, 36], [5.0, 37.5],steps,height);
	BezConic([7.0, 40.5], [8, 42], [10.0, 43.0],steps,height);
	BezConic([10.0, 43.0], [12, 44], [14.5, 44.5],steps,height);
	BezConic([14.5, 44.5], [17, 45], [20, 45],steps,height);
	BezConic([20, 45], [25, 45], [28.0, 44.0],steps,height);
	BezConic([28.0, 44.0], [31, 43], [33.0, 41.5],steps,height);
	BezConic([33.0, 41.5], [35, 40], [36.5, 38.0],steps,height);
	BezConic([36.5, 38.0], [38, 36], [39.0, 33.5],steps,height);
	BezConic([39.0, 33.5], [40, 31], [40.5, 28.0],steps,height);
	BezConic([40.5, 28.0], [41, 25], [41, 22],steps,height);
	BezConic([41, 22], [41, 17], [39.5, 13.0],steps,height);
	BezConic([39.5, 13.0], [38, 9], [35.0, 6.0],steps,height);
	BezConic([35.0, 6.0], [32, 3], [28.0, 1.0],steps,height);
	BezConic([28.0, 1.0], [24, -1], [19, -1],steps,height);
	BezConic([19, -1], [16, -1], [13.0, -0.5],steps,height);
	BezConic([13.0, -0.5], [10, 0], [7, 1],steps,height);
}
}

module Candal_contour00x39(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x39_skeleton(height);
			Candal_contour00x39_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x39_subtractive_curves(steps, height);
	}
}

module Candal_contour10x39_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[28, 26], [28, 30], [27.0, 32.0], 
		[26, 34], [25.0, 35.0], [24, 36], 
		[23.0, 36.0], [22, 36], [20, 36], 
		[19, 36], [18.0, 35.5], [17, 35], 
		[16.0, 34.5], [15, 34], [15.0, 33.0], 
		[15, 32], [15, 31], [15, 30], 
		[15.0, 29.0], [15, 28], [15.5, 27.0], 
		[16, 26], [17.5, 25.5], [19, 25], 
		[21, 25], [22, 25], [24.0, 25.5], 
		[26, 26], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[28, 26], [28, 30], [27.0, 32.0], 
		[26, 34], [25.0, 35.0], [24, 36], 
		[23.0, 36.0], [22, 36], [20, 36], 
		[19, 36], [18.0, 35.5], [17, 35], 
		[16.0, 34.5], [15, 34], [15.0, 33.0], 
		[15, 32], [15, 31], [15, 30], 
		[15.0, 29.0], [15, 28], [15.5, 27.0], 
		[16, 26], [17.5, 25.5], [19, 25], 
		[21, 25], [22, 25], [24.0, 25.5], 
		[26, 26], ]);
}}}

module Candal_contour10x39_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([28, 26], [28, 30], [27.0, 32.0],steps,height);
	BezConic([27.0, 32.0], [26, 34], [25.0, 35.0],steps,height);
	BezConic([25.0, 35.0], [24, 36], [23.0, 36.0],steps,height);
	BezConic([23.0, 36.0], [22, 36], [20, 36],steps,height);
	BezConic([20, 36], [19, 36], [18.0, 35.5],steps,height);
	BezConic([16.0, 34.5], [15, 34], [15.0, 33.0],steps,height);
	BezConic([15.0, 33.0], [15, 32], [15, 31],steps,height);
	BezConic([15, 31], [15, 30], [15.0, 29.0],steps,height);
	BezConic([15.0, 29.0], [15, 28], [15.5, 27.0],steps,height);
	BezConic([15.5, 27.0], [16, 26], [17.5, 25.5],steps,height);
	BezConic([17.5, 25.5], [19, 25], [21, 25],steps,height);
	BezConic([21, 25], [22, 25], [24.0, 25.5],steps,height);
}
}

module Candal_contour10x39_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18.0, 35.5], [17, 35], [16.0, 34.5],steps,height);
	BezConic([24.0, 25.5], [26, 26], [28, 26],steps,height);
}
}

module Candal_contour10x39(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x39_skeleton(height);
			Candal_contour10x39_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x39_additive_curves(steps, height);
	}
}

module Candal_chunk10x39(steps=2, height) {
	difference() {
		Candal_contour00x39(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x39(steps, height);
	}
}

Candal_bbox0x39=[[4, -1], [41, 45]];

module Candal_letter0x39(steps=2, height) {
	Candal_chunk10x39(steps, height);
} //end skeleton

module Candal_contour00x3a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[15, 0], [13, 0], [11.0, 0.5], 
		[9, 1], [8.5, 2.0], [8, 3], 
		[7.5, 4.5], [7, 6], [7, 7], 
		[7, 9], [7.5, 10.5], [8, 12], 
		[9, 13], [10, 14], [11.5, 14.5], 
		[13, 15], [15, 15], [17, 15], 
		[18.5, 14.5], [20, 14], [21, 13], 
		[22, 12], [22.5, 10.5], [23, 9], 
		[23, 7], [23, 6], [22.5, 4.5], 
		[22, 3], [21.0, 2.0], [20, 1], 
		[18.5, 0.5],[17, 0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[15, 0], [13, 0], [11.0, 0.5], 
		[9, 1], [8.5, 2.0], [8, 3], 
		[7.5, 4.5], [7, 6], [7, 7], 
		[7, 9], [7.5, 10.5], [8, 12], 
		[9, 13], [10, 14], [11.5, 14.5], 
		[13, 15], [15, 15], [17, 15], 
		[18.5, 14.5], [20, 14], [21, 13], 
		[22, 12], [22.5, 10.5], [23, 9], 
		[23, 7], [23, 6], [22.5, 4.5], 
		[22, 3], [21.0, 2.0], [20, 1], 
		[18.5, 0.5],[17, 0], ]);
}}}

module Candal_contour00x3a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x3a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 0], [13, 0], [11.0, 0.5],steps,height);
	BezConic([11.0, 0.5], [9, 1], [8.5, 2.0],steps,height);
	BezConic([8.5, 2.0], [8, 3], [7.5, 4.5],steps,height);
	BezConic([7.5, 4.5], [7, 6], [7, 7],steps,height);
	BezConic([7, 7], [7, 9], [7.5, 10.5],steps,height);
	BezConic([7.5, 10.5], [8, 12], [9, 13],steps,height);
	BezConic([9, 13], [10, 14], [11.5, 14.5],steps,height);
	BezConic([11.5, 14.5], [13, 15], [15, 15],steps,height);
	BezConic([15, 15], [17, 15], [18.5, 14.5],steps,height);
	BezConic([18.5, 14.5], [20, 14], [21, 13],steps,height);
	BezConic([21, 13], [22, 12], [22.5, 10.5],steps,height);
	BezConic([22.5, 10.5], [23, 9], [23, 7],steps,height);
	BezConic([23, 7], [23, 6], [22.5, 4.5],steps,height);
	BezConic([22.5, 4.5], [22, 3], [21.0, 2.0],steps,height);
	BezConic([21.0, 2.0], [20, 1], [18.5, 0.5],steps,height);
	BezConic([18.5, 0.5], [17, 0], [15, 0],steps,height);
}
}

module Candal_contour00x3a(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x3a_skeleton(height);
			Candal_contour00x3a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x3a_subtractive_curves(steps, height);
	}
}

module Candal_contour10x3a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[15, 22], [12, 22], [10.5, 22.0], 
		[9, 22], [8, 24], [8, 25], 
		[7.5, 26.0], [7, 27], [7, 29], 
		[7, 30], [7.5, 31.5], [8, 33], 
		[9.0, 34.0], [10, 35], [11.5, 35.5], 
		[13, 36], [15, 36], [17, 36], 
		[18.5, 35.5], [20, 35], [21.0, 34.0], 
		[22, 33], [22.5, 31.5], [23, 30], 
		[23, 29], [23, 27], [22.5, 26.0], 
		[22, 25], [21, 24], [20, 22], 
		[18.5, 22.0],[17, 22], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[15, 22], [12, 22], [10.5, 22.0], 
		[9, 22], [8, 24], [8, 25], 
		[7.5, 26.0], [7, 27], [7, 29], 
		[7, 30], [7.5, 31.5], [8, 33], 
		[9.0, 34.0], [10, 35], [11.5, 35.5], 
		[13, 36], [15, 36], [17, 36], 
		[18.5, 35.5], [20, 35], [21.0, 34.0], 
		[22, 33], [22.5, 31.5], [23, 30], 
		[23, 29], [23, 27], [22.5, 26.0], 
		[22, 25], [21, 24], [20, 22], 
		[18.5, 22.0],[17, 22], ]);
}}}

module Candal_contour10x3a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 22], [12, 22], [10.5, 22.0],steps,height);
	BezConic([8, 24], [8, 25], [7.5, 26.0],steps,height);
	BezConic([18.5, 22.0], [17, 22], [15, 22],steps,height);
}
}

module Candal_contour10x3a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([10.5, 22.0], [9, 22], [8, 24],steps,height);
	BezConic([7.5, 26.0], [7, 27], [7, 29],steps,height);
	BezConic([7, 29], [7, 30], [7.5, 31.5],steps,height);
	BezConic([7.5, 31.5], [8, 33], [9.0, 34.0],steps,height);
	BezConic([9.0, 34.0], [10, 35], [11.5, 35.5],steps,height);
	BezConic([11.5, 35.5], [13, 36], [15, 36],steps,height);
	BezConic([15, 36], [17, 36], [18.5, 35.5],steps,height);
	BezConic([18.5, 35.5], [20, 35], [21.0, 34.0],steps,height);
	BezConic([21.0, 34.0], [22, 33], [22.5, 31.5],steps,height);
	BezConic([22.5, 31.5], [23, 30], [23, 29],steps,height);
	BezConic([23, 29], [23, 27], [22.5, 26.0],steps,height);
	BezConic([22.5, 26.0], [22, 25], [21, 24],steps,height);
	BezConic([21, 24], [20, 22], [18.5, 22.0],steps,height);
}
}

module Candal_contour10x3a(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x3a_skeleton(height);
			Candal_contour10x3a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x3a_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x3a(steps=2, height) {
	difference() {
		Candal_contour00x3a(steps, height);
		
	}
}

module Candal_chunk20x3a(steps=2, height) {
	difference() {
		Candal_contour10x3a(steps, height);
		
	}
}

Candal_bbox0x3a=[[7, 0], [23, 36]];

module Candal_letter0x3a(steps=2, height) {
	Candal_chunk10x3a(steps, height);
	Candal_chunk20x3a(steps, height);
} //end skeleton

module Candal_contour00x3b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[12, 21], [10, 21], [8.5, 22.0], 
		[7, 23], [6.0, 24.0], [5, 25], 
		[4.5, 26.0], [4, 27], [4, 29], 
		[4, 30], [4.5, 31.5], [5, 33], 
		[6.0, 34.0], [7, 35], [8.5, 35.5], 
		[10, 36], [12, 36], [14, 36], 
		[15.5, 35.5], [17, 35], [18.0, 34.0], 
		[19, 33], [19.5, 31.5], [20, 30], 
		[20, 29], [20, 27], [19.5, 26.0], 
		[19, 25], [18.0, 24.0], [17, 23], 
		[15.5, 22.0],[14, 21], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[12, 21], [10, 21], [8.5, 22.0], 
		[7, 23], [6.0, 24.0], [5, 25], 
		[4.5, 26.0], [4, 27], [4, 29], 
		[4, 30], [4.5, 31.5], [5, 33], 
		[6.0, 34.0], [7, 35], [8.5, 35.5], 
		[10, 36], [12, 36], [14, 36], 
		[15.5, 35.5], [17, 35], [18.0, 34.0], 
		[19, 33], [19.5, 31.5], [20, 30], 
		[20, 29], [20, 27], [19.5, 26.0], 
		[19, 25], [18.0, 24.0], [17, 23], 
		[15.5, 22.0],[14, 21], ]);
}}}

module Candal_contour00x3b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x3b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, 21], [10, 21], [8.5, 22.0],steps,height);
	BezConic([8.5, 22.0], [7, 23], [6.0, 24.0],steps,height);
	BezConic([6.0, 24.0], [5, 25], [4.5, 26.0],steps,height);
	BezConic([4.5, 26.0], [4, 27], [4, 29],steps,height);
	BezConic([4, 29], [4, 30], [4.5, 31.5],steps,height);
	BezConic([4.5, 31.5], [5, 33], [6.0, 34.0],steps,height);
	BezConic([6.0, 34.0], [7, 35], [8.5, 35.5],steps,height);
	BezConic([8.5, 35.5], [10, 36], [12, 36],steps,height);
	BezConic([12, 36], [14, 36], [15.5, 35.5],steps,height);
	BezConic([15.5, 35.5], [17, 35], [18.0, 34.0],steps,height);
	BezConic([18.0, 34.0], [19, 33], [19.5, 31.5],steps,height);
	BezConic([19.5, 31.5], [20, 30], [20, 29],steps,height);
	BezConic([20, 29], [20, 27], [19.5, 26.0],steps,height);
	BezConic([19.5, 26.0], [19, 25], [18.0, 24.0],steps,height);
	BezConic([18.0, 24.0], [17, 23], [15.5, 22.0],steps,height);
	BezConic([15.5, 22.0], [14, 21], [12, 21],steps,height);
}
}

module Candal_contour00x3b(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x3b_skeleton(height);
			Candal_contour00x3b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x3b_subtractive_curves(steps, height);
	}
}

module Candal_contour10x3b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[13, 0], [11, -1], [9, -1], 
		[8, -1], [7.0, -0.5], [6, 0], 
		[5.5, 1.0], [5, 2], [4.5, 3.0], 
		[4, 4], [4, 6], [4, 7], 
		[4.5, 8.0], [5, 9], [6.0, 10.0], 
		[7, 11], [8.5, 12.0], [10, 13], 
		[12, 13], [16, 13], [18.5, 10.5], 
		[21, 8], [21, 3], [21, -1], 
		[19.5, -3.5], [18, -6], [16.5, -7.5], 
		[15, -9], [12.5, -9.5], [10, -10], 
		[8, -10], [6.5, -10.0], [5, -10], 
		[5.0, -7.0], [5, -4], [7, -4], 
		[8.5, -4.0], [10, -4], [11.0, -3.5], 
		[12, -3], [12.5, -2.0], [13, -1], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[13, 0], [11, -1], [9, -1], 
		[8, -1], [7.0, -0.5], [6, 0], 
		[5.5, 1.0], [5, 2], [4.5, 3.0], 
		[4, 4], [4, 6], [4, 7], 
		[4.5, 8.0], [5, 9], [6.0, 10.0], 
		[7, 11], [8.5, 12.0], [10, 13], 
		[12, 13], [16, 13], [18.5, 10.5], 
		[21, 8], [21, 3], [21, -1], 
		[19.5, -3.5], [18, -6], [16.5, -7.5], 
		[15, -9], [12.5, -9.5], [10, -10], 
		[8, -10], [6.5, -10.0], [5, -10], 
		[5.0, -7.0], [5, -4], [7, -4], 
		[8.5, -4.0], [10, -4], [11.0, -3.5], 
		[12, -3], [12.5, -2.0], [13, -1], 
		 ]);
}}}

module Candal_contour10x3b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5.5, 1.0], [5, 2], [4.5, 3.0],steps,height);
	BezConic([5, -4], [7, -4], [8.5, -4.0],steps,height);
	BezConic([8.5, -4.0], [10, -4], [11.0, -3.5],steps,height);
	BezConic([11.0, -3.5], [12, -3], [12.5, -2.0],steps,height);
	BezConic([12.5, -2.0], [13, -1], [13, 0],steps,height);
}
}

module Candal_contour10x3b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([13, 0], [11, -1], [9, -1],steps,height);
	BezConic([9, -1], [8, -1], [7.0, -0.5],steps,height);
	BezConic([7.0, -0.5], [6, 0], [5.5, 1.0],steps,height);
	BezConic([4.5, 3.0], [4, 4], [4, 6],steps,height);
	BezConic([4, 6], [4, 7], [4.5, 8.0],steps,height);
	BezConic([4.5, 8.0], [5, 9], [6.0, 10.0],steps,height);
	BezConic([6.0, 10.0], [7, 11], [8.5, 12.0],steps,height);
	BezConic([8.5, 12.0], [10, 13], [12, 13],steps,height);
	BezConic([12, 13], [16, 13], [18.5, 10.5],steps,height);
	BezConic([18.5, 10.5], [21, 8], [21, 3],steps,height);
	BezConic([21, 3], [21, -1], [19.5, -3.5],steps,height);
	BezConic([19.5, -3.5], [18, -6], [16.5, -7.5],steps,height);
	BezConic([16.5, -7.5], [15, -9], [12.5, -9.5],steps,height);
	BezConic([12.5, -9.5], [10, -10], [8, -10],steps,height);
}
}

module Candal_contour10x3b(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x3b_skeleton(height);
			Candal_contour10x3b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x3b_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x3b(steps=2, height) {
	difference() {
		Candal_contour00x3b(steps, height);
		
	}
}

module Candal_chunk20x3b(steps=2, height) {
	difference() {
		Candal_contour10x3b(steps, height);
		
	}
}

Candal_bbox0x3b=[[4, -10], [21, 36]];

module Candal_letter0x3b(steps=2, height) {
	Candal_chunk10x3b(steps, height);
	Candal_chunk20x3b(steps, height);
} //end skeleton

module Candal_contour00x3c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 32], [17.0, 36.0], [28, 40], 
		[28.0, 35.0], [28, 30], [20.0, 28.0], 
		[12, 26], [20.0, 24.0], [28, 22], 
		[28.0, 17.0], [28, 12], [17.0, 16.0], 
		[6, 20],[6.0, 26.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 32], [17.0, 36.0], [28, 40], 
		[28.0, 35.0], [28, 30], [20.0, 28.0], 
		[12, 26], [20.0, 24.0], [28, 22], 
		[28.0, 17.0], [28, 12], [17.0, 16.0], 
		[6, 20],[6.0, 26.0], ]);
}}}

module Candal_contour00x3c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x3c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x3c(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x3c_skeleton(height);
			Candal_contour00x3c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x3c_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x3c(steps=2, height) {
	difference() {
		Candal_contour00x3c(steps, height);
		
	}
}

Candal_bbox0x3c=[[6, 12], [28, 40]];

module Candal_letter0x3c(steps=2, height) {
	Candal_chunk10x3c(steps, height);
} //end skeleton

module Candal_contour00x3d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[28, 16], [28.0, 12.0], [28, 8], 
		[17.0, 8.0], [6, 8], [6.0, 12.0], 
		[6, 16],[17.0, 16.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[28, 16], [28.0, 12.0], [28, 8], 
		[17.0, 8.0], [6, 8], [6.0, 12.0], 
		[6, 16],[17.0, 16.0], ]);
}}}

module Candal_contour00x3d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x3d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x3d(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x3d_skeleton(height);
			Candal_contour00x3d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x3d_subtractive_curves(steps, height);
	}
}

module Candal_contour10x3d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[28, 29], [28.0, 25.0], [28, 21], 
		[17.0, 21.0], [6, 21], [6.0, 25.0], 
		[6, 29],[17.0, 29.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[28, 29], [28.0, 25.0], [28, 21], 
		[17.0, 21.0], [6, 21], [6.0, 25.0], 
		[6, 29],[17.0, 29.0], ]);
}}}

module Candal_contour10x3d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x3d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x3d(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x3d_skeleton(height);
			Candal_contour10x3d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x3d_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x3d(steps=2, height) {
	difference() {
		Candal_contour00x3d(steps, height);
		
	}
}

module Candal_chunk20x3d(steps=2, height) {
	difference() {
		Candal_contour10x3d(steps, height);
		
	}
}

Candal_bbox0x3d=[[6, 8], [28, 29]];

module Candal_letter0x3d(steps=2, height) {
	Candal_chunk10x3d(steps, height);
	Candal_chunk20x3d(steps, height);
} //end skeleton

module Candal_contour00x3e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[28, 20], [17.0, 16.0], [6, 12], 
		[6.0, 17.0], [6, 22], [14.0, 24.0], 
		[22, 26], [14.0, 28.0], [6, 30], 
		[6.0, 35.0], [6, 40], [17.0, 36.0], 
		[28, 32],[28.0, 26.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[28, 20], [17.0, 16.0], [6, 12], 
		[6.0, 17.0], [6, 22], [14.0, 24.0], 
		[22, 26], [14.0, 28.0], [6, 30], 
		[6.0, 35.0], [6, 40], [17.0, 36.0], 
		[28, 32],[28.0, 26.0], ]);
}}}

module Candal_contour00x3e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x3e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x3e(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x3e_skeleton(height);
			Candal_contour00x3e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x3e_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x3e(steps=2, height) {
	difference() {
		Candal_contour00x3e(steps, height);
		
	}
}

Candal_bbox0x3e=[[6, 12], [28, 40]];

module Candal_letter0x3e(steps=2, height) {
	Candal_chunk10x3e(steps, height);
} //end skeleton

module Candal_contour00x3f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 24], [14, 24], [16.0, 24.5], 
		[18, 25], [20.0, 25.5], [22, 26], 
		[23.0, 27.0], [24, 28], [24.5, 28.5], 
		[25, 29], [25.0, 30.0], [25, 31], 
		[25, 32], [25, 33], [24.5, 34.0], 
		[24, 35], [23.5, 35.5], [23, 36], 
		[22.0, 36.5], [21, 37], [20, 37], 
		[19, 37], [18.0, 36.5], [17, 36], 
		[16.5, 35.5], [16, 35], [15.5, 34.0], 
		[15, 33], [15, 32], [10.0, 32.0], 
		[5, 32], [5, 35], [6.0, 37.5], 
		[7, 40], [9.0, 41.5], [11, 43], 
		[14.0, 44.0], [17, 45], [21, 45], 
		[25, 45], [28.0, 44.0], [31, 43], 
		[33.0, 41.0], [35, 39], [36.0, 36.5], 
		[37, 34], [37, 32], [37, 30], 
		[36.0, 27.5], [35, 25], [33.0, 23.5], 
		[31, 22], [28.0, 20.5], [25, 19], 
		[22, 19], [22.0, 16.5], [22, 14], 
		[16.5, 14.0], [11, 14], [10.5, 19.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 24], [14, 24], [16.0, 24.5], 
		[18, 25], [20.0, 25.5], [22, 26], 
		[23.0, 27.0], [24, 28], [24.5, 28.5], 
		[25, 29], [25.0, 30.0], [25, 31], 
		[25, 32], [25, 33], [24.5, 34.0], 
		[24, 35], [23.5, 35.5], [23, 36], 
		[22.0, 36.5], [21, 37], [20, 37], 
		[19, 37], [18.0, 36.5], [17, 36], 
		[16.5, 35.5], [16, 35], [15.5, 34.0], 
		[15, 33], [15, 32], [10.0, 32.0], 
		[5, 32], [5, 35], [6.0, 37.5], 
		[7, 40], [9.0, 41.5], [11, 43], 
		[14.0, 44.0], [17, 45], [21, 45], 
		[25, 45], [28.0, 44.0], [31, 43], 
		[33.0, 41.0], [35, 39], [36.0, 36.5], 
		[37, 34], [37, 32], [37, 30], 
		[36.0, 27.5], [35, 25], [33.0, 23.5], 
		[31, 22], [28.0, 20.5], [25, 19], 
		[22, 19], [22.0, 16.5], [22, 14], 
		[16.5, 14.0], [11, 14], [10.5, 19.0], 
		 ]);
}}}

module Candal_contour00x3f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([10, 24], [14, 24], [16.0, 24.5],steps,height);
	BezConic([16.0, 24.5], [18, 25], [20.0, 25.5],steps,height);
	BezConic([20.0, 25.5], [22, 26], [23.0, 27.0],steps,height);
	BezConic([23.0, 27.0], [24, 28], [24.5, 28.5],steps,height);
	BezConic([24.5, 28.5], [25, 29], [25.0, 30.0],steps,height);
	BezConic([25.0, 30.0], [25, 31], [25, 32],steps,height);
	BezConic([25, 32], [25, 33], [24.5, 34.0],steps,height);
	BezConic([24.5, 34.0], [24, 35], [23.5, 35.5],steps,height);
	BezConic([23.5, 35.5], [23, 36], [22.0, 36.5],steps,height);
	BezConic([22.0, 36.5], [21, 37], [20, 37],steps,height);
	BezConic([20, 37], [19, 37], [18.0, 36.5],steps,height);
	BezConic([18.0, 36.5], [17, 36], [16.5, 35.5],steps,height);
	BezConic([16.5, 35.5], [16, 35], [15.5, 34.0],steps,height);
	BezConic([15.5, 34.0], [15, 33], [15, 32],steps,height);
}
}

module Candal_contour00x3f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([5, 32], [5, 35], [6.0, 37.5],steps,height);
	BezConic([6.0, 37.5], [7, 40], [9.0, 41.5],steps,height);
	BezConic([9.0, 41.5], [11, 43], [14.0, 44.0],steps,height);
	BezConic([14.0, 44.0], [17, 45], [21, 45],steps,height);
	BezConic([21, 45], [25, 45], [28.0, 44.0],steps,height);
	BezConic([28.0, 44.0], [31, 43], [33.0, 41.0],steps,height);
	BezConic([33.0, 41.0], [35, 39], [36.0, 36.5],steps,height);
	BezConic([36.0, 36.5], [37, 34], [37, 32],steps,height);
	BezConic([37, 32], [37, 30], [36.0, 27.5],steps,height);
	BezConic([36.0, 27.5], [35, 25], [33.0, 23.5],steps,height);
	BezConic([33.0, 23.5], [31, 22], [28.0, 20.5],steps,height);
	BezConic([28.0, 20.5], [25, 19], [22, 19],steps,height);
}
}

module Candal_contour00x3f(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x3f_skeleton(height);
			Candal_contour00x3f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x3f_subtractive_curves(steps, height);
	}
}

module Candal_contour10x3f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[17, -1], [15, -1], [14.0, -0.5], 
		[13, 0], [12.0, 1.0], [11, 2], 
		[10.5, 3.0], [10, 4], [10, 5], 
		[10, 6], [10.5, 7.0], [11, 8], 
		[12.0, 9.0], [13, 10], [14.0, 10.0], 
		[15, 10], [17, 10], [19, 10], 
		[20.0, 10.0], [21, 10], [22.0, 9.0], 
		[23, 8], [23.5, 7.0], [24, 6], 
		[24, 5], [24, 4], [23.5, 3.0], 
		[23, 2], [22.0, 1.0], [21, 0], 
		[20.0, -0.5],[19, -1], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[17, -1], [15, -1], [14.0, -0.5], 
		[13, 0], [12.0, 1.0], [11, 2], 
		[10.5, 3.0], [10, 4], [10, 5], 
		[10, 6], [10.5, 7.0], [11, 8], 
		[12.0, 9.0], [13, 10], [14.0, 10.0], 
		[15, 10], [17, 10], [19, 10], 
		[20.0, 10.0], [21, 10], [22.0, 9.0], 
		[23, 8], [23.5, 7.0], [24, 6], 
		[24, 5], [24, 4], [23.5, 3.0], 
		[23, 2], [22.0, 1.0], [21, 0], 
		[20.0, -0.5],[19, -1], ]);
}}}

module Candal_contour10x3f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([14.0, 10.0], [15, 10], [17, 10],steps,height);
	BezConic([17, 10], [19, 10], [20.0, 10.0],steps,height);
}
}

module Candal_contour10x3f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([17, -1], [15, -1], [14.0, -0.5],steps,height);
	BezConic([14.0, -0.5], [13, 0], [12.0, 1.0],steps,height);
	BezConic([12.0, 1.0], [11, 2], [10.5, 3.0],steps,height);
	BezConic([10.5, 3.0], [10, 4], [10, 5],steps,height);
	BezConic([10, 5], [10, 6], [10.5, 7.0],steps,height);
	BezConic([10.5, 7.0], [11, 8], [12.0, 9.0],steps,height);
	BezConic([12.0, 9.0], [13, 10], [14.0, 10.0],steps,height);
	BezConic([20.0, 10.0], [21, 10], [22.0, 9.0],steps,height);
	BezConic([22.0, 9.0], [23, 8], [23.5, 7.0],steps,height);
	BezConic([23.5, 7.0], [24, 6], [24, 5],steps,height);
	BezConic([24, 5], [24, 4], [23.5, 3.0],steps,height);
	BezConic([23.5, 3.0], [23, 2], [22.0, 1.0],steps,height);
	BezConic([22.0, 1.0], [21, 0], [20.0, -0.5],steps,height);
	BezConic([20.0, -0.5], [19, -1], [17, -1],steps,height);
}
}

module Candal_contour10x3f(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x3f_skeleton(height);
			Candal_contour10x3f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x3f_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x3f(steps=2, height) {
	difference() {
		Candal_contour00x3f(steps, height);
		
	}
}

module Candal_chunk20x3f(steps=2, height) {
	difference() {
		Candal_contour10x3f(steps, height);
		
	}
}

Candal_bbox0x3f=[[5, -1], [37, 45]];

module Candal_letter0x3f(steps=2, height) {
	Candal_chunk10x3f(steps, height);
	Candal_chunk20x3f(steps, height);
} //end skeleton

module Candal_contour00x40_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[56, 9], [57, 9], [58.0, 11.5], 
		[59, 14], [59, 19], [59, 23], 
		[57.5, 26.0], [56, 29], [53.5, 31.5], 
		[51, 34], [47.5, 35.0], [44, 36], 
		[39, 36], [34, 36], [30.0, 35.0], 
		[26, 34], [23.0, 32.0], [20, 30], 
		[18.0, 26.5], [16, 23], [16, 18], 
		[16, 13], [18.0, 9.5], [20, 6], 
		[23.5, 3.5], [27, 1], [32.0, 0.0], 
		[37, -1], [43, -1], [43.5, -3.5], 
		[44, -6], [43, -6], [41.0, -6.5], 
		[39, -7], [36, -7], [29, -7], 
		[25, -6], [20, -5], [16.0, -2.5], 
		[12, 0], [9.0, 3.0], [6, 6], 
		[5.0, 10.0], [4, 14], [4, 18], 
		[4, 23], [5.5, 27.0], [7, 31], 
		[9.0, 34.0], [11, 37], [14.5, 39.0], 
		[18, 41], [22.0, 42.5], [26, 44], 
		[30.0, 44.5], [34, 45], [39, 45], 
		[43, 45], [46.5, 44.5], [50, 44], 
		[54.0, 42.5], [58, 41], [61.0, 39.5], 
		[64, 38], [66.0, 35.0], [68, 32], 
		[69.0, 28.5], [70, 25], [70, 21], 
		[70, 18], [70.0, 15.5], [70, 13], 
		[69.0, 11.0], [68, 9], [66.5, 7.5], 
		[65, 6], [63.5, 4.5], [62, 3], 
		[60.0, 2.5], [58, 2], [55, 2], 
		[53, 2], [51.5, 2.5], [50, 3], 
		[48.5, 4.0], [47, 5], [46.0, 6.0], 
		[45, 7], [44, 9], [43, 8], 
		[42.5, 7.5], [42, 7], [41.0, 6.0], 
		[40, 5], [38.5, 5.0], [37, 5], 
		[36, 5], [32, 5], [29.5, 6.0], 
		[27, 7], [25.0, 9.0], [23, 11], 
		[22.0, 13.0], [21, 15], [21, 18], 
		[21, 21], [22.0, 23.0], [23, 25], 
		[24.5, 26.5], [26, 28], [28.5, 29.5], 
		[31, 31], [34, 31], [40, 31], 
		[42, 26], [42.5, 27.5], [43, 29], 
		[46.5, 29.0], [50, 29], [51.0, 27.0], 
		[52, 25], [52.0, 18.5], [52, 12], 
		[52, 11], [52.5, 10.5], [53, 10], 
		[53.5, 9.5], [54, 9], [54.5, 9.0], 
		[55, 9], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[56, 9], [57, 9], [58.0, 11.5], 
		[59, 14], [59, 19], [59, 23], 
		[57.5, 26.0], [56, 29], [53.5, 31.5], 
		[51, 34], [47.5, 35.0], [44, 36], 
		[39, 36], [34, 36], [30.0, 35.0], 
		[26, 34], [23.0, 32.0], [20, 30], 
		[18.0, 26.5], [16, 23], [16, 18], 
		[16, 13], [18.0, 9.5], [20, 6], 
		[23.5, 3.5], [27, 1], [32.0, 0.0], 
		[37, -1], [43, -1], [43.5, -3.5], 
		[44, -6], [43, -6], [41.0, -6.5], 
		[39, -7], [36, -7], [29, -7], 
		[25, -6], [20, -5], [16.0, -2.5], 
		[12, 0], [9.0, 3.0], [6, 6], 
		[5.0, 10.0], [4, 14], [4, 18], 
		[4, 23], [5.5, 27.0], [7, 31], 
		[9.0, 34.0], [11, 37], [14.5, 39.0], 
		[18, 41], [22.0, 42.5], [26, 44], 
		[30.0, 44.5], [34, 45], [39, 45], 
		[43, 45], [46.5, 44.5], [50, 44], 
		[54.0, 42.5], [58, 41], [61.0, 39.5], 
		[64, 38], [66.0, 35.0], [68, 32], 
		[69.0, 28.5], [70, 25], [70, 21], 
		[70, 18], [70.0, 15.5], [70, 13], 
		[69.0, 11.0], [68, 9], [66.5, 7.5], 
		[65, 6], [63.5, 4.5], [62, 3], 
		[60.0, 2.5], [58, 2], [55, 2], 
		[53, 2], [51.5, 2.5], [50, 3], 
		[48.5, 4.0], [47, 5], [46.0, 6.0], 
		[45, 7], [44, 9], [43, 8], 
		[42.5, 7.5], [42, 7], [41.0, 6.0], 
		[40, 5], [38.5, 5.0], [37, 5], 
		[36, 5], [32, 5], [29.5, 6.0], 
		[27, 7], [25.0, 9.0], [23, 11], 
		[22.0, 13.0], [21, 15], [21, 18], 
		[21, 21], [22.0, 23.0], [23, 25], 
		[24.5, 26.5], [26, 28], [28.5, 29.5], 
		[31, 31], [34, 31], [40, 31], 
		[42, 26], [42.5, 27.5], [43, 29], 
		[46.5, 29.0], [50, 29], [51.0, 27.0], 
		[52, 25], [52.0, 18.5], [52, 12], 
		[52, 11], [52.5, 10.5], [53, 10], 
		[53.5, 9.5], [54, 9], [54.5, 9.0], 
		[55, 9], ]);
}}}

module Candal_contour00x40_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([56, 9], [57, 9], [58.0, 11.5],steps,height);
	BezConic([58.0, 11.5], [59, 14], [59, 19],steps,height);
	BezConic([59, 19], [59, 23], [57.5, 26.0],steps,height);
	BezConic([57.5, 26.0], [56, 29], [53.5, 31.5],steps,height);
	BezConic([53.5, 31.5], [51, 34], [47.5, 35.0],steps,height);
	BezConic([47.5, 35.0], [44, 36], [39, 36],steps,height);
	BezConic([39, 36], [34, 36], [30.0, 35.0],steps,height);
	BezConic([30.0, 35.0], [26, 34], [23.0, 32.0],steps,height);
	BezConic([23.0, 32.0], [20, 30], [18.0, 26.5],steps,height);
	BezConic([18.0, 26.5], [16, 23], [16, 18],steps,height);
	BezConic([16, 18], [16, 13], [18.0, 9.5],steps,height);
	BezConic([18.0, 9.5], [20, 6], [23.5, 3.5],steps,height);
	BezConic([23.5, 3.5], [27, 1], [32.0, 0.0],steps,height);
	BezConic([32.0, 0.0], [37, -1], [43, -1],steps,height);
	BezConic([44, -6], [43, -6], [41.0, -6.5],steps,height);
	BezConic([70, 21], [70, 18], [70.0, 15.5],steps,height);
	BezConic([66.5, 7.5], [65, 6], [63.5, 4.5],steps,height);
	BezConic([44, 9], [43, 8], [42.5, 7.5],steps,height);
	BezConic([42.5, 7.5], [42, 7], [41.0, 6.0],steps,height);
	BezConic([38.5, 5.0], [37, 5], [36, 5],steps,height);
	BezConic([52, 12], [52, 11], [52.5, 10.5],steps,height);
	BezConic([52.5, 10.5], [53, 10], [53.5, 9.5],steps,height);
	BezConic([53.5, 9.5], [54, 9], [54.5, 9.0],steps,height);
	BezConic([54.5, 9.0], [55, 9], [56, 9],steps,height);
}
}

module Candal_contour00x40_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([41.0, -6.5], [39, -7], [36, -7],steps,height);
	BezConic([36, -7], [29, -7], [25, -6],steps,height);
	BezConic([25, -6], [20, -5], [16.0, -2.5],steps,height);
	BezConic([16.0, -2.5], [12, 0], [9.0, 3.0],steps,height);
	BezConic([9.0, 3.0], [6, 6], [5.0, 10.0],steps,height);
	BezConic([5.0, 10.0], [4, 14], [4, 18],steps,height);
	BezConic([4, 18], [4, 23], [5.5, 27.0],steps,height);
	BezConic([5.5, 27.0], [7, 31], [9.0, 34.0],steps,height);
	BezConic([9.0, 34.0], [11, 37], [14.5, 39.0],steps,height);
	BezConic([14.5, 39.0], [18, 41], [22.0, 42.5],steps,height);
	BezConic([22.0, 42.5], [26, 44], [30.0, 44.5],steps,height);
	BezConic([30.0, 44.5], [34, 45], [39, 45],steps,height);
	BezConic([39, 45], [43, 45], [46.5, 44.5],steps,height);
	BezConic([46.5, 44.5], [50, 44], [54.0, 42.5],steps,height);
	BezConic([54.0, 42.5], [58, 41], [61.0, 39.5],steps,height);
	BezConic([61.0, 39.5], [64, 38], [66.0, 35.0],steps,height);
	BezConic([66.0, 35.0], [68, 32], [69.0, 28.5],steps,height);
	BezConic([69.0, 28.5], [70, 25], [70, 21],steps,height);
	BezConic([70.0, 15.5], [70, 13], [69.0, 11.0],steps,height);
	BezConic([69.0, 11.0], [68, 9], [66.5, 7.5],steps,height);
	BezConic([63.5, 4.5], [62, 3], [60.0, 2.5],steps,height);
	BezConic([60.0, 2.5], [58, 2], [55, 2],steps,height);
	BezConic([55, 2], [53, 2], [51.5, 2.5],steps,height);
	BezConic([51.5, 2.5], [50, 3], [48.5, 4.0],steps,height);
	BezConic([48.5, 4.0], [47, 5], [46.0, 6.0],steps,height);
	BezConic([46.0, 6.0], [45, 7], [44, 9],steps,height);
	BezConic([41.0, 6.0], [40, 5], [38.5, 5.0],steps,height);
	BezConic([36, 5], [32, 5], [29.5, 6.0],steps,height);
	BezConic([29.5, 6.0], [27, 7], [25.0, 9.0],steps,height);
	BezConic([25.0, 9.0], [23, 11], [22.0, 13.0],steps,height);
	BezConic([22.0, 13.0], [21, 15], [21, 18],steps,height);
	BezConic([21, 18], [21, 21], [22.0, 23.0],steps,height);
	BezConic([22.0, 23.0], [23, 25], [24.5, 26.5],steps,height);
	BezConic([24.5, 26.5], [26, 28], [28.5, 29.5],steps,height);
	BezConic([28.5, 29.5], [31, 31], [34, 31],steps,height);
	BezConic([34, 31], [40, 31], [42, 26],steps,height);
}
}

module Candal_contour00x40(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x40_skeleton(height);
			Candal_contour00x40_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x40_subtractive_curves(steps, height);
	}
}

module Candal_contour10x40_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[42, 22], [40, 24], [38, 24], 
		[36, 24], [35.0, 23.5], [34, 23], 
		[33.0, 22.0], [32, 21], [32.0, 20.0], 
		[32, 19], [32, 18], [32, 17], 
		[32.5, 16.0], [33, 15], [33.5, 14.0], 
		[34, 13], [35.5, 12.5], [37, 12], 
		[38, 12], [40, 12], [42, 13], 
		[42.0, 17.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[42, 22], [40, 24], [38, 24], 
		[36, 24], [35.0, 23.5], [34, 23], 
		[33.0, 22.0], [32, 21], [32.0, 20.0], 
		[32, 19], [32, 18], [32, 17], 
		[32.5, 16.0], [33, 15], [33.5, 14.0], 
		[34, 13], [35.5, 12.5], [37, 12], 
		[38, 12], [40, 12], [42, 13], 
		[42.0, 17.5], ]);
}}}

module Candal_contour10x40_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([42, 22], [40, 24], [38, 24],steps,height);
	BezConic([38, 24], [36, 24], [35.0, 23.5],steps,height);
	BezConic([35.0, 23.5], [34, 23], [33.0, 22.0],steps,height);
	BezConic([33.0, 22.0], [32, 21], [32.0, 20.0],steps,height);
	BezConic([32.0, 20.0], [32, 19], [32, 18],steps,height);
	BezConic([32, 18], [32, 17], [32.5, 16.0],steps,height);
	BezConic([32.5, 16.0], [33, 15], [33.5, 14.0],steps,height);
	BezConic([33.5, 14.0], [34, 13], [35.5, 12.5],steps,height);
	BezConic([35.5, 12.5], [37, 12], [38, 12],steps,height);
	BezConic([38, 12], [40, 12], [42, 13],steps,height);
}
}

module Candal_contour10x40_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x40(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x40_skeleton(height);
			Candal_contour10x40_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x40_additive_curves(steps, height);
	}
}

module Candal_chunk10x40(steps=2, height) {
	difference() {
		Candal_contour00x40(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x40(steps, height);
	}
}

Candal_bbox0x40=[[4, -7], [70, 45]];

module Candal_letter0x40(steps=2, height) {
	Candal_chunk10x40(steps, height);
} //end skeleton

module Candal_contour00x41_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[43, 0], [35.0, 0.0], [27, 0], 
		[26.0, 4.5], [25, 9], [19.5, 9.0], 
		[14, 9], [13.0, 4.5], [12, 0], 
		[6.0, 0.0], [0, 0], [6.0, 22.0], 
		[12, 44], [21.5, 44.0], [31, 44], 
		[37.0, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[43, 0], [35.0, 0.0], [27, 0], 
		[26.0, 4.5], [25, 9], [19.5, 9.0], 
		[14, 9], [13.0, 4.5], [12, 0], 
		[6.0, 0.0], [0, 0], [6.0, 22.0], 
		[12, 44], [21.5, 44.0], [31, 44], 
		[37.0, 22.0], ]);
}}}

module Candal_contour00x41_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x41_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x41(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x41_skeleton(height);
			Candal_contour00x41_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x41_subtractive_curves(steps, height);
	}
}

module Candal_contour10x41_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 37], [17.0, 27.0], [15, 17], 
		[19.5, 17.0], [24, 17], [22.0, 27.0], 
		[20, 37],[19.5, 37.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 37], [17.0, 27.0], [15, 17], 
		[19.5, 17.0], [24, 17], [22.0, 27.0], 
		[20, 37],[19.5, 37.0], ]);
}}}

module Candal_contour10x41_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x41_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x41(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x41_skeleton(height);
			Candal_contour10x41_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x41_additive_curves(steps, height);
	}
}

module Candal_chunk10x41(steps=2, height) {
	difference() {
		Candal_contour00x41(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x41(steps, height);
	}
}

Candal_bbox0x41=[[0, 0], [43, 44]];

module Candal_letter0x41(steps=2, height) {
	Candal_chunk10x41(steps, height);
} //end skeleton

module Candal_contour00x42_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 44], [12.5, 44.0], [20, 44], 
		[22, 44], [24.5, 44.0], [27, 44], 
		[29.0, 43.5], [31, 43], [33.5, 42.5], 
		[36, 42], [37.5, 40.5], [39, 39], 
		[40.0, 37.0], [41, 35], [41, 33], 
		[41, 32], [41.0, 30.5], [41, 29], 
		[40.0, 27.5], [39, 26], [37.5, 25.0], 
		[36, 24], [33, 24], [36, 24], 
		[38.0, 23.0], [40, 22], [41.5, 20.5], 
		[43, 19], [43.5, 17.0], [44, 15], 
		[44, 13], [44, 11], [43.0, 8.5], 
		[42, 6], [40.0, 4.0], [38, 2], 
		[34.0, 1.0], [30, 0], [24, 0], 
		[14.5, 0.0], [5, 0], [5.0, 22.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 44], [12.5, 44.0], [20, 44], 
		[22, 44], [24.5, 44.0], [27, 44], 
		[29.0, 43.5], [31, 43], [33.5, 42.5], 
		[36, 42], [37.5, 40.5], [39, 39], 
		[40.0, 37.0], [41, 35], [41, 33], 
		[41, 32], [41.0, 30.5], [41, 29], 
		[40.0, 27.5], [39, 26], [37.5, 25.0], 
		[36, 24], [33, 24], [36, 24], 
		[38.0, 23.0], [40, 22], [41.5, 20.5], 
		[43, 19], [43.5, 17.0], [44, 15], 
		[44, 13], [44, 11], [43.0, 8.5], 
		[42, 6], [40.0, 4.0], [38, 2], 
		[34.0, 1.0], [30, 0], [24, 0], 
		[14.5, 0.0], [5, 0], [5.0, 22.0], 
		 ]);
}}}

module Candal_contour00x42_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20, 44], [22, 44], [24.5, 44.0],steps,height);
	BezConic([29.0, 43.5], [31, 43], [33.5, 42.5],steps,height);
	BezConic([41, 33], [41, 32], [41.0, 30.5],steps,height);
}
}

module Candal_contour00x42_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24.5, 44.0], [27, 44], [29.0, 43.5],steps,height);
	BezConic([33.5, 42.5], [36, 42], [37.5, 40.5],steps,height);
	BezConic([37.5, 40.5], [39, 39], [40.0, 37.0],steps,height);
	BezConic([40.0, 37.0], [41, 35], [41, 33],steps,height);
	BezConic([41.0, 30.5], [41, 29], [40.0, 27.5],steps,height);
	BezConic([40.0, 27.5], [39, 26], [37.5, 25.0],steps,height);
	BezConic([37.5, 25.0], [36, 24], [33, 24],steps,height);
	BezConic([33, 24], [36, 24], [38.0, 23.0],steps,height);
	BezConic([38.0, 23.0], [40, 22], [41.5, 20.5],steps,height);
	BezConic([41.5, 20.5], [43, 19], [43.5, 17.0],steps,height);
	BezConic([43.5, 17.0], [44, 15], [44, 13],steps,height);
	BezConic([44, 13], [44, 11], [43.0, 8.5],steps,height);
	BezConic([43.0, 8.5], [42, 6], [40.0, 4.0],steps,height);
	BezConic([40.0, 4.0], [38, 2], [34.0, 1.0],steps,height);
	BezConic([34.0, 1.0], [30, 0], [24, 0],steps,height);
}
}

module Candal_contour00x42(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x42_skeleton(height);
			Candal_contour00x42_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x42_subtractive_curves(steps, height);
	}
}

module Candal_contour10x42_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 8], [22.0, 8.0], [25, 8], 
		[28, 8], [29.0, 9.5], [30, 11], 
		[30, 13], [30, 14], [29.5, 15.0], 
		[29, 16], [28.0, 16.5], [27, 17], 
		[25.0, 17.5], [23, 18], [19, 18], 
		[19.0, 13.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 8], [22.0, 8.0], [25, 8], 
		[28, 8], [29.0, 9.5], [30, 11], 
		[30, 13], [30, 14], [29.5, 15.0], 
		[29, 16], [28.0, 16.5], [27, 17], 
		[25.0, 17.5], [23, 18], [19, 18], 
		[19.0, 13.0], ]);
}}}

module Candal_contour10x42_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 8], [28, 8], [29.0, 9.5],steps,height);
	BezConic([29.0, 9.5], [30, 11], [30, 13],steps,height);
	BezConic([30, 13], [30, 14], [29.5, 15.0],steps,height);
	BezConic([29.5, 15.0], [29, 16], [28.0, 16.5],steps,height);
	BezConic([28.0, 16.5], [27, 17], [25.0, 17.5],steps,height);
	BezConic([25.0, 17.5], [23, 18], [19, 18],steps,height);
}
}

module Candal_contour10x42_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x42(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x42_skeleton(height);
			Candal_contour10x42_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x42_additive_curves(steps, height);
	}
}

module Candal_contour20x42_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[24, 26], [25, 26], [26.5, 26.5], 
		[28, 27], [28.5, 27.5], [29, 28], 
		[29.5, 29.0], [30, 30], [30, 31], 
		[30, 33], [29.5, 33.5], [29, 34], 
		[28.0, 35.0], [27, 36], [24.5, 36.0], 
		[22, 36], [19, 36], [19.0, 31.0], 
		[19, 26],[21.5, 26.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[24, 26], [25, 26], [26.5, 26.5], 
		[28, 27], [28.5, 27.5], [29, 28], 
		[29.5, 29.0], [30, 30], [30, 31], 
		[30, 33], [29.5, 33.5], [29, 34], 
		[28.0, 35.0], [27, 36], [24.5, 36.0], 
		[22, 36], [19, 36], [19.0, 31.0], 
		[19, 26],[21.5, 26.0], ]);
}}}

module Candal_contour20x42_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 26], [25, 26], [26.5, 26.5],steps,height);
	BezConic([26.5, 26.5], [28, 27], [28.5, 27.5],steps,height);
	BezConic([28.5, 27.5], [29, 28], [29.5, 29.0],steps,height);
	BezConic([29.5, 29.0], [30, 30], [30, 31],steps,height);
	BezConic([30, 31], [30, 33], [29.5, 33.5],steps,height);
	BezConic([29.5, 33.5], [29, 34], [28.0, 35.0],steps,height);
	BezConic([28.0, 35.0], [27, 36], [24.5, 36.0],steps,height);
	BezConic([24.5, 36.0], [22, 36], [19, 36],steps,height);
}
}

module Candal_contour20x42_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour20x42(steps=2, height) {
	difference() {
		union() {
			Candal_contour20x42_skeleton(height);
			Candal_contour20x42_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour20x42_additive_curves(steps, height);
	}
}

module Candal_chunk10x42(steps=2, height) {
	difference() {
		Candal_contour00x42(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x42(steps, height);
	translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour20x42(steps, height);
	}
}

Candal_bbox0x42=[[5, 0], [44, 44]];

module Candal_letter0x42(steps=2, height) {
	Candal_chunk10x42(steps, height);
} //end skeleton

module Candal_contour00x43_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[3, 22], [3, 27], [5.0, 31.5], 
		[7, 36], [10.0, 39.0], [13, 42], 
		[17.5, 43.5], [22, 45], [27, 45], 
		[30, 45], [33.5, 44.5], [37, 44], 
		[41, 42], [40.0, 37.0], [39, 32], 
		[36, 34], [33.5, 34.5], [31, 35], 
		[29, 35], [26, 35], [23.5, 34.0], 
		[21, 33], [19.5, 31.5], [18, 30], 
		[17.5, 27.5], [17, 25], [17, 22], 
		[17, 19], [17.5, 16.5], [18, 14], 
		[19.5, 12.5], [21, 11], [23.5, 10.0], 
		[26, 9], [29, 9], [31, 9], 
		[33.5, 10.0], [36, 11], [39, 12], 
		[40.0, 7.0], [41, 2], [37, 0], 
		[33.5, -0.5], [30, -1], [27, -1], 
		[22, -1], [17.5, 0.5], [13, 2], 
		[10.0, 5.0], [7, 8], [5.0, 12.5], 
		[3, 17], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[3, 22], [3, 27], [5.0, 31.5], 
		[7, 36], [10.0, 39.0], [13, 42], 
		[17.5, 43.5], [22, 45], [27, 45], 
		[30, 45], [33.5, 44.5], [37, 44], 
		[41, 42], [40.0, 37.0], [39, 32], 
		[36, 34], [33.5, 34.5], [31, 35], 
		[29, 35], [26, 35], [23.5, 34.0], 
		[21, 33], [19.5, 31.5], [18, 30], 
		[17.5, 27.5], [17, 25], [17, 22], 
		[17, 19], [17.5, 16.5], [18, 14], 
		[19.5, 12.5], [21, 11], [23.5, 10.0], 
		[26, 9], [29, 9], [31, 9], 
		[33.5, 10.0], [36, 11], [39, 12], 
		[40.0, 7.0], [41, 2], [37, 0], 
		[33.5, -0.5], [30, -1], [27, -1], 
		[22, -1], [17.5, 0.5], [13, 2], 
		[10.0, 5.0], [7, 8], [5.0, 12.5], 
		[3, 17], ]);
}}}

module Candal_contour00x43_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([39, 32], [36, 34], [33.5, 34.5],steps,height);
	BezConic([33.5, 34.5], [31, 35], [29, 35],steps,height);
	BezConic([29, 35], [26, 35], [23.5, 34.0],steps,height);
	BezConic([23.5, 34.0], [21, 33], [19.5, 31.5],steps,height);
	BezConic([19.5, 31.5], [18, 30], [17.5, 27.5],steps,height);
	BezConic([17.5, 27.5], [17, 25], [17, 22],steps,height);
	BezConic([17, 22], [17, 19], [17.5, 16.5],steps,height);
	BezConic([17.5, 16.5], [18, 14], [19.5, 12.5],steps,height);
	BezConic([19.5, 12.5], [21, 11], [23.5, 10.0],steps,height);
	BezConic([23.5, 10.0], [26, 9], [29, 9],steps,height);
	BezConic([29, 9], [31, 9], [33.5, 10.0],steps,height);
}
}

module Candal_contour00x43_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3, 22], [3, 27], [5.0, 31.5],steps,height);
	BezConic([5.0, 31.5], [7, 36], [10.0, 39.0],steps,height);
	BezConic([10.0, 39.0], [13, 42], [17.5, 43.5],steps,height);
	BezConic([17.5, 43.5], [22, 45], [27, 45],steps,height);
	BezConic([27, 45], [30, 45], [33.5, 44.5],steps,height);
	BezConic([33.5, 44.5], [37, 44], [41, 42],steps,height);
	BezConic([33.5, 10.0], [36, 11], [39, 12],steps,height);
	BezConic([41, 2], [37, 0], [33.5, -0.5],steps,height);
	BezConic([33.5, -0.5], [30, -1], [27, -1],steps,height);
	BezConic([27, -1], [22, -1], [17.5, 0.5],steps,height);
	BezConic([17.5, 0.5], [13, 2], [10.0, 5.0],steps,height);
	BezConic([10.0, 5.0], [7, 8], [5.0, 12.5],steps,height);
	BezConic([5.0, 12.5], [3, 17], [3, 22],steps,height);
}
}

module Candal_contour00x43(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x43_skeleton(height);
			Candal_contour00x43_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x43_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x43(steps=2, height) {
	difference() {
		Candal_contour00x43(steps, height);
		
	}
}

Candal_bbox0x43=[[3, -1], [41, 45]];

module Candal_letter0x43(steps=2, height) {
	Candal_chunk10x43(steps, height);
} //end skeleton

module Candal_contour00x44_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 0], [5.0, 22.0], [5, 44], 
		[13.0, 44.0], [21, 44], [26, 44], 
		[30.5, 43.0], [35, 42], [38.5, 39.0], 
		[42, 36], [43.5, 32.0], [45, 28], 
		[45, 22], [45, 18], [44.0, 15.0], 
		[43, 12], [41.5, 9.5], [40, 7], 
		[38.0, 5.0], [36, 3], [33.0, 2.0], 
		[30, 1], [27.0, 0.5], [24, 0], 
		[21, 0],[13.0, 0.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 0], [5.0, 22.0], [5, 44], 
		[13.0, 44.0], [21, 44], [26, 44], 
		[30.5, 43.0], [35, 42], [38.5, 39.0], 
		[42, 36], [43.5, 32.0], [45, 28], 
		[45, 22], [45, 18], [44.0, 15.0], 
		[43, 12], [41.5, 9.5], [40, 7], 
		[38.0, 5.0], [36, 3], [33.0, 2.0], 
		[30, 1], [27.0, 0.5], [24, 0], 
		[21, 0],[13.0, 0.0], ]);
}}}

module Candal_contour00x44_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x44_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21, 44], [26, 44], [30.5, 43.0],steps,height);
	BezConic([30.5, 43.0], [35, 42], [38.5, 39.0],steps,height);
	BezConic([38.5, 39.0], [42, 36], [43.5, 32.0],steps,height);
	BezConic([43.5, 32.0], [45, 28], [45, 22],steps,height);
	BezConic([45, 22], [45, 18], [44.0, 15.0],steps,height);
	BezConic([44.0, 15.0], [43, 12], [41.5, 9.5],steps,height);
	BezConic([41.5, 9.5], [40, 7], [38.0, 5.0],steps,height);
	BezConic([38.0, 5.0], [36, 3], [33.0, 2.0],steps,height);
	BezConic([33.0, 2.0], [30, 1], [27.0, 0.5],steps,height);
	BezConic([27.0, 0.5], [24, 0], [21, 0],steps,height);
}
}

module Candal_contour00x44(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x44_skeleton(height);
			Candal_contour00x44_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x44_subtractive_curves(steps, height);
	}
}

module Candal_contour10x44_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 10], [19.5, 10.0], [20, 10], 
		[23, 10], [25.0, 10.5], [27, 11], 
		[28.5, 12.5], [30, 14], [30.5, 16.0], 
		[31, 18], [31, 22], [31, 26], 
		[30.5, 28.5], [30, 31], [28.5, 32.5], 
		[27, 34], [25.0, 34.5], [23, 35], 
		[21, 35], [20.0, 35.0], [19, 35], 
		[19.0, 22.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 10], [19.5, 10.0], [20, 10], 
		[23, 10], [25.0, 10.5], [27, 11], 
		[28.5, 12.5], [30, 14], [30.5, 16.0], 
		[31, 18], [31, 22], [31, 26], 
		[30.5, 28.5], [30, 31], [28.5, 32.5], 
		[27, 34], [25.0, 34.5], [23, 35], 
		[21, 35], [20.0, 35.0], [19, 35], 
		[19.0, 22.5], ]);
}}}

module Candal_contour10x44_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20, 10], [23, 10], [25.0, 10.5],steps,height);
	BezConic([25.0, 10.5], [27, 11], [28.5, 12.5],steps,height);
	BezConic([28.5, 12.5], [30, 14], [30.5, 16.0],steps,height);
	BezConic([30.5, 16.0], [31, 18], [31, 22],steps,height);
	BezConic([31, 22], [31, 26], [30.5, 28.5],steps,height);
	BezConic([30.5, 28.5], [30, 31], [28.5, 32.5],steps,height);
	BezConic([28.5, 32.5], [27, 34], [25.0, 34.5],steps,height);
	BezConic([25.0, 34.5], [23, 35], [21, 35],steps,height);
}
}

module Candal_contour10x44_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x44(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x44_skeleton(height);
			Candal_contour10x44_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x44_additive_curves(steps, height);
	}
}

module Candal_chunk10x44(steps=2, height) {
	difference() {
		Candal_contour00x44(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x44(steps, height);
	}
}

Candal_bbox0x44=[[5, 0], [45, 44]];

module Candal_letter0x44(steps=2, height) {
	Candal_chunk10x44(steps, height);
} //end skeleton

module Candal_contour00x45_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 44], [20.5, 44.0], [36, 44], 
		[36.0, 40.0], [36, 36], [27.5, 36.0], 
		[19, 36], [19.0, 31.5], [19, 27], 
		[26.5, 27.0], [34, 27], [34.0, 23.0], 
		[34, 19], [26.5, 19.0], [19, 19], 
		[19.0, 14.0], [19, 9], [27.5, 9.0], 
		[36, 9], [36.0, 4.5], [36, 0], 
		[20.5, 0.0], [5, 0], [5.0, 22.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 44], [20.5, 44.0], [36, 44], 
		[36.0, 40.0], [36, 36], [27.5, 36.0], 
		[19, 36], [19.0, 31.5], [19, 27], 
		[26.5, 27.0], [34, 27], [34.0, 23.0], 
		[34, 19], [26.5, 19.0], [19, 19], 
		[19.0, 14.0], [19, 9], [27.5, 9.0], 
		[36, 9], [36.0, 4.5], [36, 0], 
		[20.5, 0.0], [5, 0], [5.0, 22.0], 
		 ]);
}}}

module Candal_contour00x45_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x45_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x45(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x45_skeleton(height);
			Candal_contour00x45_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x45_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x45(steps=2, height) {
	difference() {
		Candal_contour00x45(steps, height);
		
	}
}

Candal_bbox0x45=[[5, 0], [36, 44]];

module Candal_letter0x45(steps=2, height) {
	Candal_chunk10x45(steps, height);
} //end skeleton

module Candal_contour00x46_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 44], [20.5, 44.0], [36, 44], 
		[36.0, 40.0], [36, 36], [27.5, 36.0], 
		[19, 36], [19.0, 31.5], [19, 27], 
		[26.5, 27.0], [34, 27], [34.0, 22.5], 
		[34, 18], [26.5, 18.0], [19, 18], 
		[19.0, 9.0], [19, 0], [12.0, 0.0], 
		[5, 0],[5.0, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 44], [20.5, 44.0], [36, 44], 
		[36.0, 40.0], [36, 36], [27.5, 36.0], 
		[19, 36], [19.0, 31.5], [19, 27], 
		[26.5, 27.0], [34, 27], [34.0, 22.5], 
		[34, 18], [26.5, 18.0], [19, 18], 
		[19.0, 9.0], [19, 0], [12.0, 0.0], 
		[5, 0],[5.0, 22.0], ]);
}}}

module Candal_contour00x46_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x46_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x46(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x46_skeleton(height);
			Candal_contour00x46_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x46_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x46(steps=2, height) {
	difference() {
		Candal_contour00x46(steps, height);
		
	}
}

Candal_bbox0x46=[[5, 0], [36, 44]];

module Candal_letter0x46(steps=2, height) {
	Candal_chunk10x46(steps, height);
} //end skeleton

module Candal_contour00x47_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[27, -1], [24, -1], [20.5, 0.0], 
		[17, 1], [14.5, 2.5], [12, 4], 
		[10.0, 6.0], [8, 8], [6.5, 10.5], 
		[5, 13], [4.0, 16.0], [3, 19], 
		[3, 22], [3, 27], [5.0, 31.5], 
		[7, 36], [10.5, 39.0], [14, 42], 
		[19.0, 43.5], [24, 45], [30, 45], 
		[33, 45], [37.0, 44.5], [41, 44], 
		[44, 43], [43.0, 38.0], [42, 33], 
		[39, 34], [36.5, 34.5], [34, 35], 
		[31, 35], [28, 35], [25.5, 34.0], 
		[23, 33], [21.0, 31.5], [19, 30], 
		[18.0, 27.5], [17, 25], [17, 22], 
		[17, 19], [17.5, 16.5], [18, 14], 
		[19.5, 12.5], [21, 11], [23.0, 10.0], 
		[25, 9], [28, 9], [30.0, 9.0], 
		[32, 9], [32.0, 13.5], [32, 18], 
		[28.5, 17.5], [25, 17], [25.0, 21.0], 
		[25, 25], [34.5, 25.0], [44, 25], 
		[44.0, 14.5], [44, 4], [42, 3], 
		[39.5, 2.0], [37, 1], [35.0, 0.5], 
		[33, 0], [31.0, -0.5], [29, -1], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[27, -1], [24, -1], [20.5, 0.0], 
		[17, 1], [14.5, 2.5], [12, 4], 
		[10.0, 6.0], [8, 8], [6.5, 10.5], 
		[5, 13], [4.0, 16.0], [3, 19], 
		[3, 22], [3, 27], [5.0, 31.5], 
		[7, 36], [10.5, 39.0], [14, 42], 
		[19.0, 43.5], [24, 45], [30, 45], 
		[33, 45], [37.0, 44.5], [41, 44], 
		[44, 43], [43.0, 38.0], [42, 33], 
		[39, 34], [36.5, 34.5], [34, 35], 
		[31, 35], [28, 35], [25.5, 34.0], 
		[23, 33], [21.0, 31.5], [19, 30], 
		[18.0, 27.5], [17, 25], [17, 22], 
		[17, 19], [17.5, 16.5], [18, 14], 
		[19.5, 12.5], [21, 11], [23.0, 10.0], 
		[25, 9], [28, 9], [30.0, 9.0], 
		[32, 9], [32.0, 13.5], [32, 18], 
		[28.5, 17.5], [25, 17], [25.0, 21.0], 
		[25, 25], [34.5, 25.0], [44, 25], 
		[44.0, 14.5], [44, 4], [42, 3], 
		[39.5, 2.0], [37, 1], [35.0, 0.5], 
		[33, 0], [31.0, -0.5], [29, -1], 
		 ]);
}}}

module Candal_contour00x47_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([42, 33], [39, 34], [36.5, 34.5],steps,height);
	BezConic([36.5, 34.5], [34, 35], [31, 35],steps,height);
	BezConic([31, 35], [28, 35], [25.5, 34.0],steps,height);
	BezConic([25.5, 34.0], [23, 33], [21.0, 31.5],steps,height);
	BezConic([21.0, 31.5], [19, 30], [18.0, 27.5],steps,height);
	BezConic([18.0, 27.5], [17, 25], [17, 22],steps,height);
	BezConic([17, 22], [17, 19], [17.5, 16.5],steps,height);
	BezConic([17.5, 16.5], [18, 14], [19.5, 12.5],steps,height);
	BezConic([19.5, 12.5], [21, 11], [23.0, 10.0],steps,height);
	BezConic([23.0, 10.0], [25, 9], [28, 9],steps,height);
	BezConic([35.0, 0.5], [33, 0], [31.0, -0.5],steps,height);
}
}

module Candal_contour00x47_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([27, -1], [24, -1], [20.5, 0.0],steps,height);
	BezConic([20.5, 0.0], [17, 1], [14.5, 2.5],steps,height);
	BezConic([14.5, 2.5], [12, 4], [10.0, 6.0],steps,height);
	BezConic([10.0, 6.0], [8, 8], [6.5, 10.5],steps,height);
	BezConic([6.5, 10.5], [5, 13], [4.0, 16.0],steps,height);
	BezConic([4.0, 16.0], [3, 19], [3, 22],steps,height);
	BezConic([3, 22], [3, 27], [5.0, 31.5],steps,height);
	BezConic([5.0, 31.5], [7, 36], [10.5, 39.0],steps,height);
	BezConic([10.5, 39.0], [14, 42], [19.0, 43.5],steps,height);
	BezConic([19.0, 43.5], [24, 45], [30, 45],steps,height);
	BezConic([30, 45], [33, 45], [37.0, 44.5],steps,height);
	BezConic([37.0, 44.5], [41, 44], [44, 43],steps,height);
	BezConic([44, 4], [42, 3], [39.5, 2.0],steps,height);
	BezConic([39.5, 2.0], [37, 1], [35.0, 0.5],steps,height);
	BezConic([31.0, -0.5], [29, -1], [27, -1],steps,height);
}
}

module Candal_contour00x47(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x47_skeleton(height);
			Candal_contour00x47_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x47_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x47(steps=2, height) {
	difference() {
		Candal_contour00x47(steps, height);
		
	}
}

Candal_bbox0x47=[[3, -1], [44, 45]];

module Candal_letter0x47(steps=2, height) {
	Candal_chunk10x47(steps, height);
} //end skeleton

module Candal_contour00x48_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 44], [12.0, 44.0], [19, 44], 
		[19.0, 35.5], [19, 27], [25.5, 27.0], 
		[32, 27], [32.0, 35.5], [32, 44], 
		[39.0, 44.0], [46, 44], [46.0, 22.0], 
		[46, 0], [39.0, 0.0], [32, 0], 
		[32.0, 9.0], [32, 18], [25.5, 18.0], 
		[19, 18], [19.0, 9.0], [19, 0], 
		[12.0, 0.0], [5, 0], [5.0, 22.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 44], [12.0, 44.0], [19, 44], 
		[19.0, 35.5], [19, 27], [25.5, 27.0], 
		[32, 27], [32.0, 35.5], [32, 44], 
		[39.0, 44.0], [46, 44], [46.0, 22.0], 
		[46, 0], [39.0, 0.0], [32, 0], 
		[32.0, 9.0], [32, 18], [25.5, 18.0], 
		[19, 18], [19.0, 9.0], [19, 0], 
		[12.0, 0.0], [5, 0], [5.0, 22.0], 
		 ]);
}}}

module Candal_contour00x48_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x48_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x48(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x48_skeleton(height);
			Candal_contour00x48_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x48_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x48(steps=2, height) {
	difference() {
		Candal_contour00x48(steps, height);
		
	}
}

Candal_bbox0x48=[[5, 0], [46, 44]];

module Candal_letter0x48(steps=2, height) {
	Candal_chunk10x48(steps, height);
} //end skeleton

module Candal_contour00x49_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 44], [12.0, 44.0], [19, 44], 
		[19.0, 22.0], [19, 0], [12.0, 0.0], 
		[5, 0],[5.0, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 44], [12.0, 44.0], [19, 44], 
		[19.0, 22.0], [19, 0], [12.0, 0.0], 
		[5, 0],[5.0, 22.0], ]);
}}}

module Candal_contour00x49_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x49_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x49(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x49_skeleton(height);
			Candal_contour00x49_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x49_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x49(steps=2, height) {
	difference() {
		Candal_contour00x49(steps, height);
		
	}
}

Candal_bbox0x49=[[5, 0], [19, 44]];

module Candal_letter0x49(steps=2, height) {
	Candal_chunk10x49(steps, height);
} //end skeleton

module Candal_contour00x4a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[11, -1], [8, -1], [5.5, -0.5], 
		[3, 0], [1, 1], [1.0, 5.5], 
		[1, 10], [3, 9], [4.5, 9.0], 
		[6, 9], [8, 9], [9, 9], 
		[10.0, 9.5], [11, 10], [11.5, 11.0], 
		[12, 12], [12.0, 13.0], [12, 14], 
		[12, 15], [12.0, 29.5], [12, 44], 
		[19.0, 44.0], [26, 44], [26.0, 28.5], 
		[26, 13], [26, 10], [24.5, 7.0], 
		[23, 4], [21.0, 2.5], [19, 1], 
		[16.0, 0.0],[13, -1], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[11, -1], [8, -1], [5.5, -0.5], 
		[3, 0], [1, 1], [1.0, 5.5], 
		[1, 10], [3, 9], [4.5, 9.0], 
		[6, 9], [8, 9], [9, 9], 
		[10.0, 9.5], [11, 10], [11.5, 11.0], 
		[12, 12], [12.0, 13.0], [12, 14], 
		[12, 15], [12.0, 29.5], [12, 44], 
		[19.0, 44.0], [26, 44], [26.0, 28.5], 
		[26, 13], [26, 10], [24.5, 7.0], 
		[23, 4], [21.0, 2.5], [19, 1], 
		[16.0, 0.0],[13, -1], ]);
}}}

module Candal_contour00x4a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([1, 10], [3, 9], [4.5, 9.0],steps,height);
	BezConic([4.5, 9.0], [6, 9], [8, 9],steps,height);
	BezConic([8, 9], [9, 9], [10.0, 9.5],steps,height);
	BezConic([10.0, 9.5], [11, 10], [11.5, 11.0],steps,height);
	BezConic([11.5, 11.0], [12, 12], [12.0, 13.0],steps,height);
	BezConic([12.0, 13.0], [12, 14], [12, 15],steps,height);
}
}

module Candal_contour00x4a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([11, -1], [8, -1], [5.5, -0.5],steps,height);
	BezConic([5.5, -0.5], [3, 0], [1, 1],steps,height);
	BezConic([26, 13], [26, 10], [24.5, 7.0],steps,height);
	BezConic([24.5, 7.0], [23, 4], [21.0, 2.5],steps,height);
	BezConic([21.0, 2.5], [19, 1], [16.0, 0.0],steps,height);
	BezConic([16.0, 0.0], [13, -1], [11, -1],steps,height);
}
}

module Candal_contour00x4a(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x4a_skeleton(height);
			Candal_contour00x4a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x4a_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x4a(steps=2, height) {
	difference() {
		Candal_contour00x4a(steps, height);
		
	}
}

Candal_bbox0x4a=[[1, -1], [26, 44]];

module Candal_letter0x4a(steps=2, height) {
	Candal_chunk10x4a(steps, height);
} //end skeleton

module Candal_contour00x4b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 19], [19.0, 9.5], [19, 0], 
		[12.0, 0.0], [5, 0], [5.0, 22.0], 
		[5, 44], [12.0, 44.0], [19, 44], 
		[19.0, 34.5], [19, 25], [24.0, 34.5], 
		[29, 44], [37.5, 44.0], [46, 44], 
		[39.5, 33.5], [33, 23], [39.5, 11.5], 
		[46, 0], [37.5, 0.0], [29, 0], 
		[24.5, 10.5], [20, 21], [19.5, 20.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 19], [19.0, 9.5], [19, 0], 
		[12.0, 0.0], [5, 0], [5.0, 22.0], 
		[5, 44], [12.0, 44.0], [19, 44], 
		[19.0, 34.5], [19, 25], [24.0, 34.5], 
		[29, 44], [37.5, 44.0], [46, 44], 
		[39.5, 33.5], [33, 23], [39.5, 11.5], 
		[46, 0], [37.5, 0.0], [29, 0], 
		[24.5, 10.5], [20, 21], [19.5, 20.0], 
		 ]);
}}}

module Candal_contour00x4b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x4b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x4b(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x4b_skeleton(height);
			Candal_contour00x4b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x4b_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x4b(steps=2, height) {
	difference() {
		Candal_contour00x4b(steps, height);
		
	}
}

Candal_bbox0x4b=[[5, 0], [46, 44]];

module Candal_letter0x4b(steps=2, height) {
	Candal_chunk10x4b(steps, height);
} //end skeleton

module Candal_contour00x4c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 44], [12.0, 44.0], [19, 44], 
		[19.0, 26.5], [19, 9], [26.5, 9.0], 
		[34, 9], [34.0, 4.5], [34, 0], 
		[19.5, 0.0], [5, 0], [5.0, 22.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 44], [12.0, 44.0], [19, 44], 
		[19.0, 26.5], [19, 9], [26.5, 9.0], 
		[34, 9], [34.0, 4.5], [34, 0], 
		[19.5, 0.0], [5, 0], [5.0, 22.0], 
		 ]);
}}}

module Candal_contour00x4c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x4c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x4c(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x4c_skeleton(height);
			Candal_contour00x4c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x4c_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x4c(steps=2, height) {
	difference() {
		Candal_contour00x4c(steps, height);
		
	}
}

Candal_bbox0x4c=[[5, 0], [34, 44]];

module Candal_letter0x4c(steps=2, height) {
	Candal_chunk10x4c(steps, height);
} //end skeleton

module Candal_contour00x4d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 44], [11.5, 44.0], [18, 44], 
		[23.5, 35.5], [29, 27], [34.5, 35.5], 
		[40, 44], [47.0, 44.0], [54, 44], 
		[54.0, 22.0], [54, 0], [46.5, 0.0], 
		[39, 0], [39.0, 12.0], [39, 24], 
		[34.0, 15.5], [29, 7], [27.5, 7.0], 
		[26, 7], [20.5, 15.5], [15, 24], 
		[15.0, 12.0], [15, 0], [10.0, 0.0], 
		[5, 0],[5.0, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 44], [11.5, 44.0], [18, 44], 
		[23.5, 35.5], [29, 27], [34.5, 35.5], 
		[40, 44], [47.0, 44.0], [54, 44], 
		[54.0, 22.0], [54, 0], [46.5, 0.0], 
		[39, 0], [39.0, 12.0], [39, 24], 
		[34.0, 15.5], [29, 7], [27.5, 7.0], 
		[26, 7], [20.5, 15.5], [15, 24], 
		[15.0, 12.0], [15, 0], [10.0, 0.0], 
		[5, 0],[5.0, 22.0], ]);
}}}

module Candal_contour00x4d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x4d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x4d(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x4d_skeleton(height);
			Candal_contour00x4d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x4d_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x4d(steps=2, height) {
	difference() {
		Candal_contour00x4d(steps, height);
		
	}
}

Candal_bbox0x4d=[[5, 0], [54, 44]];

module Candal_letter0x4d(steps=2, height) {
	Candal_chunk10x4d(steps, height);
} //end skeleton

module Candal_contour00x4e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 44], [12.0, 44.0], [19, 44], 
		[27.5, 33.0], [36, 22], [36.0, 33.0], 
		[36, 44], [41.0, 44.0], [46, 44], 
		[46.0, 22.0], [46, 0], [39.0, 0.0], 
		[32, 0], [24.0, 12.0], [16, 24], 
		[16.0, 12.0], [16, 0], [10.5, 0.0], 
		[5, 0],[5.0, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 44], [12.0, 44.0], [19, 44], 
		[27.5, 33.0], [36, 22], [36.0, 33.0], 
		[36, 44], [41.0, 44.0], [46, 44], 
		[46.0, 22.0], [46, 0], [39.0, 0.0], 
		[32, 0], [24.0, 12.0], [16, 24], 
		[16.0, 12.0], [16, 0], [10.5, 0.0], 
		[5, 0],[5.0, 22.0], ]);
}}}

module Candal_contour00x4e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x4e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x4e(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x4e_skeleton(height);
			Candal_contour00x4e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x4e_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x4e(steps=2, height) {
	difference() {
		Candal_contour00x4e(steps, height);
		
	}
}

Candal_bbox0x4e=[[5, 0], [46, 44]];

module Candal_letter0x4e(steps=2, height) {
	Candal_chunk10x4e(steps, height);
} //end skeleton

module Candal_contour00x4f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[25, -1], [21, -1], [17.5, 0.0], 
		[14, 1], [11.5, 2.5], [9, 4], 
		[7.5, 6.0], [6, 8], [5.0, 10.5], 
		[4, 13], [3.5, 16.0], [3, 19], 
		[3, 22], [3, 25], [3.5, 28.0], 
		[4, 31], [5.0, 33.5], [6, 36], 
		[8.0, 38.0], [10, 40], [12.5, 41.5], 
		[15, 43], [18.0, 44.0], [21, 45], 
		[25, 45], [29, 45], [32.0, 44.0], 
		[35, 43], [37.5, 41.5], [40, 40], 
		[41.5, 38.0], [43, 36], [44.5, 33.5], 
		[46, 31], [46.5, 28.0], [47, 25], 
		[47, 22], [47, 19], [46.5, 16.0], 
		[46, 13], [45.0, 10.5], [44, 8], 
		[42.0, 6.0], [40, 4], [37.5, 2.5], 
		[35, 1], [32.0, 0.0], [29, -1], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[25, -1], [21, -1], [17.5, 0.0], 
		[14, 1], [11.5, 2.5], [9, 4], 
		[7.5, 6.0], [6, 8], [5.0, 10.5], 
		[4, 13], [3.5, 16.0], [3, 19], 
		[3, 22], [3, 25], [3.5, 28.0], 
		[4, 31], [5.0, 33.5], [6, 36], 
		[8.0, 38.0], [10, 40], [12.5, 41.5], 
		[15, 43], [18.0, 44.0], [21, 45], 
		[25, 45], [29, 45], [32.0, 44.0], 
		[35, 43], [37.5, 41.5], [40, 40], 
		[41.5, 38.0], [43, 36], [44.5, 33.5], 
		[46, 31], [46.5, 28.0], [47, 25], 
		[47, 22], [47, 19], [46.5, 16.0], 
		[46, 13], [45.0, 10.5], [44, 8], 
		[42.0, 6.0], [40, 4], [37.5, 2.5], 
		[35, 1], [32.0, 0.0], [29, -1], 
		 ]);
}}}

module Candal_contour00x4f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x4f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, -1], [21, -1], [17.5, 0.0],steps,height);
	BezConic([17.5, 0.0], [14, 1], [11.5, 2.5],steps,height);
	BezConic([11.5, 2.5], [9, 4], [7.5, 6.0],steps,height);
	BezConic([7.5, 6.0], [6, 8], [5.0, 10.5],steps,height);
	BezConic([5.0, 10.5], [4, 13], [3.5, 16.0],steps,height);
	BezConic([3.5, 16.0], [3, 19], [3, 22],steps,height);
	BezConic([3, 22], [3, 25], [3.5, 28.0],steps,height);
	BezConic([3.5, 28.0], [4, 31], [5.0, 33.5],steps,height);
	BezConic([5.0, 33.5], [6, 36], [8.0, 38.0],steps,height);
	BezConic([8.0, 38.0], [10, 40], [12.5, 41.5],steps,height);
	BezConic([12.5, 41.5], [15, 43], [18.0, 44.0],steps,height);
	BezConic([18.0, 44.0], [21, 45], [25, 45],steps,height);
	BezConic([25, 45], [29, 45], [32.0, 44.0],steps,height);
	BezConic([32.0, 44.0], [35, 43], [37.5, 41.5],steps,height);
	BezConic([37.5, 41.5], [40, 40], [41.5, 38.0],steps,height);
	BezConic([41.5, 38.0], [43, 36], [44.5, 33.5],steps,height);
	BezConic([44.5, 33.5], [46, 31], [46.5, 28.0],steps,height);
	BezConic([46.5, 28.0], [47, 25], [47, 22],steps,height);
	BezConic([47, 22], [47, 19], [46.5, 16.0],steps,height);
	BezConic([46.5, 16.0], [46, 13], [45.0, 10.5],steps,height);
	BezConic([45.0, 10.5], [44, 8], [42.0, 6.0],steps,height);
	BezConic([42.0, 6.0], [40, 4], [37.5, 2.5],steps,height);
	BezConic([37.5, 2.5], [35, 1], [32.0, 0.0],steps,height);
	BezConic([32.0, 0.0], [29, -1], [25, -1],steps,height);
}
}

module Candal_contour00x4f(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x4f_skeleton(height);
			Candal_contour00x4f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x4f_subtractive_curves(steps, height);
	}
}

module Candal_contour10x4f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[17, 22], [17, 18], [17.5, 15.5], 
		[18, 13], [19.0, 11.5], [20, 10], 
		[21.5, 9.0], [23, 8], [25, 8], 
		[27, 8], [28.5, 9.0], [30, 10], 
		[31.0, 11.5], [32, 13], [32.5, 15.5], 
		[33, 18], [33, 22], [33, 26], 
		[32.5, 28.5], [32, 31], [31.0, 33.0], 
		[30, 35], [28.5, 35.5], [27, 36], 
		[25, 36], [23, 36], [21.5, 35.5], 
		[20, 35], [19.0, 33.0], [18, 31], 
		[17.5, 28.5],[17, 26], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[17, 22], [17, 18], [17.5, 15.5], 
		[18, 13], [19.0, 11.5], [20, 10], 
		[21.5, 9.0], [23, 8], [25, 8], 
		[27, 8], [28.5, 9.0], [30, 10], 
		[31.0, 11.5], [32, 13], [32.5, 15.5], 
		[33, 18], [33, 22], [33, 26], 
		[32.5, 28.5], [32, 31], [31.0, 33.0], 
		[30, 35], [28.5, 35.5], [27, 36], 
		[25, 36], [23, 36], [21.5, 35.5], 
		[20, 35], [19.0, 33.0], [18, 31], 
		[17.5, 28.5],[17, 26], ]);
}}}

module Candal_contour10x4f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([17, 22], [17, 18], [17.5, 15.5],steps,height);
	BezConic([17.5, 15.5], [18, 13], [19.0, 11.5],steps,height);
	BezConic([19.0, 11.5], [20, 10], [21.5, 9.0],steps,height);
	BezConic([21.5, 9.0], [23, 8], [25, 8],steps,height);
	BezConic([25, 8], [27, 8], [28.5, 9.0],steps,height);
	BezConic([28.5, 9.0], [30, 10], [31.0, 11.5],steps,height);
	BezConic([31.0, 11.5], [32, 13], [32.5, 15.5],steps,height);
	BezConic([32.5, 15.5], [33, 18], [33, 22],steps,height);
	BezConic([33, 22], [33, 26], [32.5, 28.5],steps,height);
	BezConic([32.5, 28.5], [32, 31], [31.0, 33.0],steps,height);
	BezConic([31.0, 33.0], [30, 35], [28.5, 35.5],steps,height);
	BezConic([28.5, 35.5], [27, 36], [25, 36],steps,height);
	BezConic([25, 36], [23, 36], [21.5, 35.5],steps,height);
	BezConic([21.5, 35.5], [20, 35], [19.0, 33.0],steps,height);
	BezConic([19.0, 33.0], [18, 31], [17.5, 28.5],steps,height);
	BezConic([17.5, 28.5], [17, 26], [17, 22],steps,height);
}
}

module Candal_contour10x4f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x4f(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x4f_skeleton(height);
			Candal_contour10x4f_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x4f_additive_curves(steps, height);
	}
}

module Candal_chunk10x4f(steps=2, height) {
	difference() {
		Candal_contour00x4f(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x4f(steps, height);
	}
}

Candal_bbox0x4f=[[3, -1], [47, 45]];

module Candal_letter0x4f(steps=2, height) {
	Candal_chunk10x4f(steps, height);
} //end skeleton

module Candal_contour00x50_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 44], [13.5, 44.0], [22, 44], 
		[27, 44], [30.5, 43.5], [34, 43], 
		[36.0, 42.0], [38, 41], [40.0, 39.5], 
		[42, 38], [43.0, 36.5], [44, 35], 
		[44.5, 33.0], [45, 31], [45, 29], 
		[45, 27], [44.5, 25.5], [44, 24], 
		[43.0, 22.5], [42, 21], [40.5, 19.5], 
		[39, 18], [36.5, 17.0], [34, 16], 
		[31.0, 15.5], [28, 15], [24, 15], 
		[24, 15], [23.0, 15.0], [22, 15], 
		[21, 15], [20.0, 15.0], [19, 15], 
		[19.0, 7.5], [19, 0], [12.0, 0.0], 
		[5, 0],[5.0, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 44], [13.5, 44.0], [22, 44], 
		[27, 44], [30.5, 43.5], [34, 43], 
		[36.0, 42.0], [38, 41], [40.0, 39.5], 
		[42, 38], [43.0, 36.5], [44, 35], 
		[44.5, 33.0], [45, 31], [45, 29], 
		[45, 27], [44.5, 25.5], [44, 24], 
		[43.0, 22.5], [42, 21], [40.5, 19.5], 
		[39, 18], [36.5, 17.0], [34, 16], 
		[31.0, 15.5], [28, 15], [24, 15], 
		[24, 15], [23.0, 15.0], [22, 15], 
		[21, 15], [20.0, 15.0], [19, 15], 
		[19.0, 7.5], [19, 0], [12.0, 0.0], 
		[5, 0],[5.0, 22.0], ]);
}}}

module Candal_contour00x50_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 15], [24, 15], [23.0, 15.0],steps,height);
	BezConic([23.0, 15.0], [22, 15], [21, 15],steps,height);
}
}

module Candal_contour00x50_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([22, 44], [27, 44], [30.5, 43.5],steps,height);
	BezConic([30.5, 43.5], [34, 43], [36.0, 42.0],steps,height);
	BezConic([36.0, 42.0], [38, 41], [40.0, 39.5],steps,height);
	BezConic([40.0, 39.5], [42, 38], [43.0, 36.5],steps,height);
	BezConic([43.0, 36.5], [44, 35], [44.5, 33.0],steps,height);
	BezConic([44.5, 33.0], [45, 31], [45, 29],steps,height);
	BezConic([45, 29], [45, 27], [44.5, 25.5],steps,height);
	BezConic([44.5, 25.5], [44, 24], [43.0, 22.5],steps,height);
	BezConic([43.0, 22.5], [42, 21], [40.5, 19.5],steps,height);
	BezConic([40.5, 19.5], [39, 18], [36.5, 17.0],steps,height);
	BezConic([36.5, 17.0], [34, 16], [31.0, 15.5],steps,height);
	BezConic([31.0, 15.5], [28, 15], [24, 15],steps,height);
}
}

module Candal_contour00x50(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x50_skeleton(height);
			Candal_contour00x50_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x50_subtractive_curves(steps, height);
	}
}

module Candal_contour10x50_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[19, 22], [21.0, 22.0], [23, 22], 
		[25, 22], [26.5, 22.5], [28, 23], 
		[29.0, 24.0], [30, 25], [30.5, 26.5], 
		[31, 28], [31, 29], [31, 31], 
		[30.0, 32.5], [29, 34], [28.0, 35.0], 
		[27, 36], [25.5, 36.5], [24, 37], 
		[23, 37], [21.0, 37.0], [19, 37], 
		[19.0, 29.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[19, 22], [21.0, 22.0], [23, 22], 
		[25, 22], [26.5, 22.5], [28, 23], 
		[29.0, 24.0], [30, 25], [30.5, 26.5], 
		[31, 28], [31, 29], [31, 31], 
		[30.0, 32.5], [29, 34], [28.0, 35.0], 
		[27, 36], [25.5, 36.5], [24, 37], 
		[23, 37], [21.0, 37.0], [19, 37], 
		[19.0, 29.5], ]);
}}}

module Candal_contour10x50_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([23, 22], [25, 22], [26.5, 22.5],steps,height);
	BezConic([26.5, 22.5], [28, 23], [29.0, 24.0],steps,height);
	BezConic([29.0, 24.0], [30, 25], [30.5, 26.5],steps,height);
	BezConic([30.5, 26.5], [31, 28], [31, 29],steps,height);
	BezConic([31, 29], [31, 31], [30.0, 32.5],steps,height);
	BezConic([30.0, 32.5], [29, 34], [28.0, 35.0],steps,height);
	BezConic([28.0, 35.0], [27, 36], [25.5, 36.5],steps,height);
	BezConic([25.5, 36.5], [24, 37], [23, 37],steps,height);
}
}

module Candal_contour10x50_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x50(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x50_skeleton(height);
			Candal_contour10x50_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x50_additive_curves(steps, height);
	}
}

module Candal_chunk10x50(steps=2, height) {
	difference() {
		Candal_contour00x50(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x50(steps, height);
	}
}

Candal_bbox0x50=[[5, 0], [45, 44]];

module Candal_letter0x50(steps=2, height) {
	Candal_chunk10x50(steps, height);
} //end skeleton

module Candal_contour00x51_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[38, -15], [35, -14], [32.5, -13.0], 
		[30, -12], [28.0, -10.0], [26, -8], 
		[24.5, -6.0], [23, -4], [21, -1], 
		[18, 0], [15.0, 1.0], [12, 2], 
		[10.0, 3.5], [8, 5], [7.0, 7.0], 
		[6, 9], [5.0, 11.5], [4, 14], 
		[3.5, 16.5], [3, 19], [3, 22], 
		[3, 25], [3.5, 28.0], [4, 31], 
		[5.0, 33.5], [6, 36], [8.0, 38.0], 
		[10, 40], [12.5, 41.5], [15, 43], 
		[18.0, 44.0], [21, 45], [25, 45], 
		[29, 45], [32.0, 44.0], [35, 43], 
		[37.5, 41.5], [40, 40], [41.5, 38.0], 
		[43, 36], [44.5, 33.5], [46, 31], 
		[46.5, 28.0], [47, 25], [47, 22], 
		[47, 18], [46.0, 14.5], [45, 11], 
		[43.5, 8.0], [42, 5], [39.0, 3.0], 
		[36, 1], [32, 0], [32, -1], 
		[33.5, -2.0], [35, -3], [36.5, -4.0], 
		[38, -5], [39.5, -5.5], [41, -6], 
		[43, -7],[40.5, -11.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[38, -15], [35, -14], [32.5, -13.0], 
		[30, -12], [28.0, -10.0], [26, -8], 
		[24.5, -6.0], [23, -4], [21, -1], 
		[18, 0], [15.0, 1.0], [12, 2], 
		[10.0, 3.5], [8, 5], [7.0, 7.0], 
		[6, 9], [5.0, 11.5], [4, 14], 
		[3.5, 16.5], [3, 19], [3, 22], 
		[3, 25], [3.5, 28.0], [4, 31], 
		[5.0, 33.5], [6, 36], [8.0, 38.0], 
		[10, 40], [12.5, 41.5], [15, 43], 
		[18.0, 44.0], [21, 45], [25, 45], 
		[29, 45], [32.0, 44.0], [35, 43], 
		[37.5, 41.5], [40, 40], [41.5, 38.0], 
		[43, 36], [44.5, 33.5], [46, 31], 
		[46.5, 28.0], [47, 25], [47, 22], 
		[47, 18], [46.0, 14.5], [45, 11], 
		[43.5, 8.0], [42, 5], [39.0, 3.0], 
		[36, 1], [32, 0], [32, -1], 
		[33.5, -2.0], [35, -3], [36.5, -4.0], 
		[38, -5], [39.5, -5.5], [41, -6], 
		[43, -7],[40.5, -11.0], ]);
}}}

module Candal_contour00x51_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21, -1], [18, 0], [15.0, 1.0],steps,height);
	BezConic([32, 0], [32, -1], [33.5, -2.0],steps,height);
	BezConic([33.5, -2.0], [35, -3], [36.5, -4.0],steps,height);
	BezConic([36.5, -4.0], [38, -5], [39.5, -5.5],steps,height);
}
}

module Candal_contour00x51_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([38, -15], [35, -14], [32.5, -13.0],steps,height);
	BezConic([32.5, -13.0], [30, -12], [28.0, -10.0],steps,height);
	BezConic([28.0, -10.0], [26, -8], [24.5, -6.0],steps,height);
	BezConic([24.5, -6.0], [23, -4], [21, -1],steps,height);
	BezConic([15.0, 1.0], [12, 2], [10.0, 3.5],steps,height);
	BezConic([10.0, 3.5], [8, 5], [7.0, 7.0],steps,height);
	BezConic([7.0, 7.0], [6, 9], [5.0, 11.5],steps,height);
	BezConic([5.0, 11.5], [4, 14], [3.5, 16.5],steps,height);
	BezConic([3.5, 16.5], [3, 19], [3, 22],steps,height);
	BezConic([3, 22], [3, 25], [3.5, 28.0],steps,height);
	BezConic([3.5, 28.0], [4, 31], [5.0, 33.5],steps,height);
	BezConic([5.0, 33.5], [6, 36], [8.0, 38.0],steps,height);
	BezConic([8.0, 38.0], [10, 40], [12.5, 41.5],steps,height);
	BezConic([12.5, 41.5], [15, 43], [18.0, 44.0],steps,height);
	BezConic([18.0, 44.0], [21, 45], [25, 45],steps,height);
	BezConic([25, 45], [29, 45], [32.0, 44.0],steps,height);
	BezConic([32.0, 44.0], [35, 43], [37.5, 41.5],steps,height);
	BezConic([37.5, 41.5], [40, 40], [41.5, 38.0],steps,height);
	BezConic([41.5, 38.0], [43, 36], [44.5, 33.5],steps,height);
	BezConic([44.5, 33.5], [46, 31], [46.5, 28.0],steps,height);
	BezConic([46.5, 28.0], [47, 25], [47, 22],steps,height);
	BezConic([47, 22], [47, 18], [46.0, 14.5],steps,height);
	BezConic([46.0, 14.5], [45, 11], [43.5, 8.0],steps,height);
	BezConic([43.5, 8.0], [42, 5], [39.0, 3.0],steps,height);
	BezConic([39.0, 3.0], [36, 1], [32, 0],steps,height);
	BezConic([39.5, -5.5], [41, -6], [43, -7],steps,height);
}
}

module Candal_contour00x51(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x51_skeleton(height);
			Candal_contour00x51_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x51_subtractive_curves(steps, height);
	}
}

module Candal_contour10x51_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[17, 22], [17, 18], [17.5, 15.5], 
		[18, 13], [19.0, 11.5], [20, 10], 
		[21.5, 9.0], [23, 8], [25, 8], 
		[27, 8], [28.5, 9.0], [30, 10], 
		[31.0, 11.5], [32, 13], [32.5, 15.5], 
		[33, 18], [33, 22], [33, 26], 
		[32.5, 28.5], [32, 31], [31.0, 33.0], 
		[30, 35], [28.5, 35.5], [27, 36], 
		[25, 36], [23, 36], [21.5, 35.5], 
		[20, 35], [19.0, 33.0], [18, 31], 
		[17.5, 28.5],[17, 26], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[17, 22], [17, 18], [17.5, 15.5], 
		[18, 13], [19.0, 11.5], [20, 10], 
		[21.5, 9.0], [23, 8], [25, 8], 
		[27, 8], [28.5, 9.0], [30, 10], 
		[31.0, 11.5], [32, 13], [32.5, 15.5], 
		[33, 18], [33, 22], [33, 26], 
		[32.5, 28.5], [32, 31], [31.0, 33.0], 
		[30, 35], [28.5, 35.5], [27, 36], 
		[25, 36], [23, 36], [21.5, 35.5], 
		[20, 35], [19.0, 33.0], [18, 31], 
		[17.5, 28.5],[17, 26], ]);
}}}

module Candal_contour10x51_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([17, 22], [17, 18], [17.5, 15.5],steps,height);
	BezConic([17.5, 15.5], [18, 13], [19.0, 11.5],steps,height);
	BezConic([19.0, 11.5], [20, 10], [21.5, 9.0],steps,height);
	BezConic([21.5, 9.0], [23, 8], [25, 8],steps,height);
	BezConic([25, 8], [27, 8], [28.5, 9.0],steps,height);
	BezConic([28.5, 9.0], [30, 10], [31.0, 11.5],steps,height);
	BezConic([31.0, 11.5], [32, 13], [32.5, 15.5],steps,height);
	BezConic([32.5, 15.5], [33, 18], [33, 22],steps,height);
	BezConic([33, 22], [33, 26], [32.5, 28.5],steps,height);
	BezConic([32.5, 28.5], [32, 31], [31.0, 33.0],steps,height);
	BezConic([31.0, 33.0], [30, 35], [28.5, 35.5],steps,height);
	BezConic([28.5, 35.5], [27, 36], [25, 36],steps,height);
	BezConic([25, 36], [23, 36], [21.5, 35.5],steps,height);
	BezConic([21.5, 35.5], [20, 35], [19.0, 33.0],steps,height);
	BezConic([19.0, 33.0], [18, 31], [17.5, 28.5],steps,height);
	BezConic([17.5, 28.5], [17, 26], [17, 22],steps,height);
}
}

module Candal_contour10x51_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x51(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x51_skeleton(height);
			Candal_contour10x51_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x51_additive_curves(steps, height);
	}
}

module Candal_chunk10x51(steps=2, height) {
	difference() {
		Candal_contour00x51(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x51(steps, height);
	}
}

Candal_bbox0x51=[[3, -15], [47, 45]];

module Candal_letter0x51(steps=2, height) {
	Candal_chunk10x51(steps, height);
} //end skeleton

module Candal_contour00x52_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 44], [15.0, 44.0], [25, 44], 
		[30, 44], [33.5, 43.0], [37, 42], 
		[39.5, 40.0], [42, 38], [43.0, 35.5], 
		[44, 33], [44, 30], [44, 28], 
		[44.0, 26.0], [44, 24], [42.5, 22.0], 
		[41, 20], [39.5, 19.0], [38, 18], 
		[35, 17], [35, 15], [36.0, 13.5], 
		[37, 12], [38.5, 9.5], [40, 7], 
		[41.5, 4.5], [43, 2], [44, 0], 
		[36.0, 0.0], [28, 0], [27, 3], 
		[25.5, 7.0], [24, 11], [23, 15], 
		[21.0, 15.0], [19, 15], [19.0, 7.5], 
		[19, 0], [12.0, 0.0], [5, 0], 
		[5.0, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 44], [15.0, 44.0], [25, 44], 
		[30, 44], [33.5, 43.0], [37, 42], 
		[39.5, 40.0], [42, 38], [43.0, 35.5], 
		[44, 33], [44, 30], [44, 28], 
		[44.0, 26.0], [44, 24], [42.5, 22.0], 
		[41, 20], [39.5, 19.0], [38, 18], 
		[35, 17], [35, 15], [36.0, 13.5], 
		[37, 12], [38.5, 9.5], [40, 7], 
		[41.5, 4.5], [43, 2], [44, 0], 
		[36.0, 0.0], [28, 0], [27, 3], 
		[25.5, 7.0], [24, 11], [23, 15], 
		[21.0, 15.0], [19, 15], [19.0, 7.5], 
		[19, 0], [12.0, 0.0], [5, 0], 
		[5.0, 22.0], ]);
}}}

module Candal_contour00x52_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([44, 30], [44, 28], [44.0, 26.0],steps,height);
	BezConic([35, 17], [35, 15], [36.0, 13.5],steps,height);
	BezConic([38.5, 9.5], [40, 7], [41.5, 4.5],steps,height);
	BezConic([28, 0], [27, 3], [25.5, 7.0],steps,height);
}
}

module Candal_contour00x52_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, 44], [30, 44], [33.5, 43.0],steps,height);
	BezConic([33.5, 43.0], [37, 42], [39.5, 40.0],steps,height);
	BezConic([39.5, 40.0], [42, 38], [43.0, 35.5],steps,height);
	BezConic([43.0, 35.5], [44, 33], [44, 30],steps,height);
	BezConic([44.0, 26.0], [44, 24], [42.5, 22.0],steps,height);
	BezConic([42.5, 22.0], [41, 20], [39.5, 19.0],steps,height);
	BezConic([39.5, 19.0], [38, 18], [35, 17],steps,height);
	BezConic([36.0, 13.5], [37, 12], [38.5, 9.5],steps,height);
	BezConic([41.5, 4.5], [43, 2], [44, 0],steps,height);
	BezConic([25.5, 7.0], [24, 11], [23, 15],steps,height);
}
}

module Candal_contour00x52(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x52_skeleton(height);
			Candal_contour00x52_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x52_subtractive_curves(steps, height);
	}
}

module Candal_contour10x52_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[22, 22], [24, 22], [25.5, 22.5], 
		[27, 23], [28.0, 24.0], [29, 25], 
		[29.5, 26.5], [30, 28], [30, 29], 
		[30, 31], [29.5, 33.0], [29, 35], 
		[28.0, 35.5], [27, 36], [25.0, 36.5], 
		[23, 37], [22, 37], [20.5, 37.0], 
		[19, 37], [19.0, 29.5], [19, 22], 
		[20.5, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[22, 22], [24, 22], [25.5, 22.5], 
		[27, 23], [28.0, 24.0], [29, 25], 
		[29.5, 26.5], [30, 28], [30, 29], 
		[30, 31], [29.5, 33.0], [29, 35], 
		[28.0, 35.5], [27, 36], [25.0, 36.5], 
		[23, 37], [22, 37], [20.5, 37.0], 
		[19, 37], [19.0, 29.5], [19, 22], 
		[20.5, 22.0], ]);
}}}

module Candal_contour10x52_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([22, 22], [24, 22], [25.5, 22.5],steps,height);
	BezConic([25.5, 22.5], [27, 23], [28.0, 24.0],steps,height);
	BezConic([28.0, 24.0], [29, 25], [29.5, 26.5],steps,height);
	BezConic([29.5, 26.5], [30, 28], [30, 29],steps,height);
	BezConic([30, 29], [30, 31], [29.5, 33.0],steps,height);
	BezConic([29.5, 33.0], [29, 35], [28.0, 35.5],steps,height);
	BezConic([28.0, 35.5], [27, 36], [25.0, 36.5],steps,height);
	BezConic([25.0, 36.5], [23, 37], [22, 37],steps,height);
}
}

module Candal_contour10x52_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x52(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x52_skeleton(height);
			Candal_contour10x52_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x52_additive_curves(steps, height);
	}
}

module Candal_chunk10x52(steps=2, height) {
	difference() {
		Candal_contour00x52(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x52(steps, height);
	}
}

Candal_bbox0x52=[[5, 0], [44, 44]];

module Candal_letter0x52(steps=2, height) {
	Candal_chunk10x52(steps, height);
} //end skeleton

module Candal_contour00x53_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[37, 33], [36, 33], [34.0, 33.5], 
		[32, 34], [30.0, 34.5], [28, 35], 
		[26.5, 35.5], [25, 36], [23, 36], 
		[20, 36], [18.5, 35.0], [17, 34], 
		[17, 33], [17, 32], [17.5, 31.5], 
		[18, 31], [19.0, 30.0], [20, 29], 
		[21.5, 28.5], [23, 28], [25, 28], 
		[26.0, 27.5], [27, 27], [30, 26], 
		[32.0, 25.0], [34, 24], [36.0, 22.0], 
		[38, 20], [38.5, 18.0], [39, 16], 
		[39, 13], [39, 10], [38.0, 7.5], 
		[37, 5], [35.0, 3.0], [33, 1], 
		[29.5, 0.0], [26, -1], [22, -1], 
		[17, -1], [13.0, -0.5], [9, 0], 
		[5, 2], [5.0, 7.5], [5, 13], 
		[9, 10], [12.5, 9.5], [16, 9], 
		[20, 9], [23, 9], [24.5, 9.5], 
		[26, 10], [26, 12], [26, 13], 
		[25.5, 14.0], [25, 15], [24.0, 15.5], 
		[23, 16], [21.0, 16.5], [19, 17], 
		[16, 18], [14, 19], [11.5, 20.0], 
		[9, 21], [7.5, 23.0], [6, 25], 
		[5.0, 27.0], [4, 29], [4, 32], 
		[4, 35], [5.0, 37.5], [6, 40], 
		[8.0, 41.5], [10, 43], [13.5, 44.0], 
		[17, 45], [22, 45], [23, 45], 
		[25.0, 45.0], [27, 45], [29.0, 44.5], 
		[31, 44], [33.5, 43.5], [36, 43], 
		[37, 42],[37.0, 37.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[37, 33], [36, 33], [34.0, 33.5], 
		[32, 34], [30.0, 34.5], [28, 35], 
		[26.5, 35.5], [25, 36], [23, 36], 
		[20, 36], [18.5, 35.0], [17, 34], 
		[17, 33], [17, 32], [17.5, 31.5], 
		[18, 31], [19.0, 30.0], [20, 29], 
		[21.5, 28.5], [23, 28], [25, 28], 
		[26.0, 27.5], [27, 27], [30, 26], 
		[32.0, 25.0], [34, 24], [36.0, 22.0], 
		[38, 20], [38.5, 18.0], [39, 16], 
		[39, 13], [39, 10], [38.0, 7.5], 
		[37, 5], [35.0, 3.0], [33, 1], 
		[29.5, 0.0], [26, -1], [22, -1], 
		[17, -1], [13.0, -0.5], [9, 0], 
		[5, 2], [5.0, 7.5], [5, 13], 
		[9, 10], [12.5, 9.5], [16, 9], 
		[20, 9], [23, 9], [24.5, 9.5], 
		[26, 10], [26, 12], [26, 13], 
		[25.5, 14.0], [25, 15], [24.0, 15.5], 
		[23, 16], [21.0, 16.5], [19, 17], 
		[16, 18], [14, 19], [11.5, 20.0], 
		[9, 21], [7.5, 23.0], [6, 25], 
		[5.0, 27.0], [4, 29], [4, 32], 
		[4, 35], [5.0, 37.5], [6, 40], 
		[8.0, 41.5], [10, 43], [13.5, 44.0], 
		[17, 45], [22, 45], [23, 45], 
		[25.0, 45.0], [27, 45], [29.0, 44.5], 
		[31, 44], [33.5, 43.5], [36, 43], 
		[37, 42],[37.0, 37.5], ]);
}}}

module Candal_contour00x53_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([34.0, 33.5], [32, 34], [30.0, 34.5],steps,height);
	BezConic([26.5, 35.5], [25, 36], [23, 36],steps,height);
	BezConic([23, 36], [20, 36], [18.5, 35.0],steps,height);
	BezConic([18.5, 35.0], [17, 34], [17, 33],steps,height);
	BezConic([17, 33], [17, 32], [17.5, 31.5],steps,height);
	BezConic([19.0, 30.0], [20, 29], [21.5, 28.5],steps,height);
	BezConic([21.5, 28.5], [23, 28], [25, 28],steps,height);
	BezConic([5, 13], [9, 10], [12.5, 9.5],steps,height);
	BezConic([12.5, 9.5], [16, 9], [20, 9],steps,height);
	BezConic([20, 9], [23, 9], [24.5, 9.5],steps,height);
	BezConic([24.5, 9.5], [26, 10], [26, 12],steps,height);
	BezConic([26, 12], [26, 13], [25.5, 14.0],steps,height);
	BezConic([25.5, 14.0], [25, 15], [24.0, 15.5],steps,height);
	BezConic([24.0, 15.5], [23, 16], [21.0, 16.5],steps,height);
	BezConic([16, 18], [14, 19], [11.5, 20.0],steps,height);
	BezConic([22, 45], [23, 45], [25.0, 45.0],steps,height);
	BezConic([29.0, 44.5], [31, 44], [33.5, 43.5],steps,height);
}
}

module Candal_contour00x53_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([37, 33], [36, 33], [34.0, 33.5],steps,height);
	BezConic([30.0, 34.5], [28, 35], [26.5, 35.5],steps,height);
	BezConic([17.5, 31.5], [18, 31], [19.0, 30.0],steps,height);
	BezConic([27, 27], [30, 26], [32.0, 25.0],steps,height);
	BezConic([32.0, 25.0], [34, 24], [36.0, 22.0],steps,height);
	BezConic([36.0, 22.0], [38, 20], [38.5, 18.0],steps,height);
	BezConic([38.5, 18.0], [39, 16], [39, 13],steps,height);
	BezConic([39, 13], [39, 10], [38.0, 7.5],steps,height);
	BezConic([38.0, 7.5], [37, 5], [35.0, 3.0],steps,height);
	BezConic([35.0, 3.0], [33, 1], [29.5, 0.0],steps,height);
	BezConic([29.5, 0.0], [26, -1], [22, -1],steps,height);
	BezConic([22, -1], [17, -1], [13.0, -0.5],steps,height);
	BezConic([13.0, -0.5], [9, 0], [5, 2],steps,height);
	BezConic([21.0, 16.5], [19, 17], [16, 18],steps,height);
	BezConic([11.5, 20.0], [9, 21], [7.5, 23.0],steps,height);
	BezConic([7.5, 23.0], [6, 25], [5.0, 27.0],steps,height);
	BezConic([5.0, 27.0], [4, 29], [4, 32],steps,height);
	BezConic([4, 32], [4, 35], [5.0, 37.5],steps,height);
	BezConic([5.0, 37.5], [6, 40], [8.0, 41.5],steps,height);
	BezConic([8.0, 41.5], [10, 43], [13.5, 44.0],steps,height);
	BezConic([13.5, 44.0], [17, 45], [22, 45],steps,height);
	BezConic([25.0, 45.0], [27, 45], [29.0, 44.5],steps,height);
	BezConic([33.5, 43.5], [36, 43], [37, 42],steps,height);
}
}

module Candal_contour00x53(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x53_skeleton(height);
			Candal_contour00x53_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x53_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x53(steps=2, height) {
	difference() {
		Candal_contour00x53(steps, height);
		
	}
}

Candal_bbox0x53=[[4, -1], [39, 45]];

module Candal_letter0x53(steps=2, height) {
	Candal_chunk10x53(steps, height);
} //end skeleton

module Candal_contour00x54_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[10, 0], [10.0, 17.0], [10, 34], 
		[5.0, 34.0], [0, 34], [0.0, 39.0], 
		[0, 44], [17.5, 44.0], [35, 44], 
		[35.0, 39.0], [35, 34], [29.5, 34.0], 
		[24, 34], [24.0, 17.0], [24, 0], 
		[17.0, 0.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[10, 0], [10.0, 17.0], [10, 34], 
		[5.0, 34.0], [0, 34], [0.0, 39.0], 
		[0, 44], [17.5, 44.0], [35, 44], 
		[35.0, 39.0], [35, 34], [29.5, 34.0], 
		[24, 34], [24.0, 17.0], [24, 0], 
		[17.0, 0.0], ]);
}}}

module Candal_contour00x54_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x54_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x54(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x54_skeleton(height);
			Candal_contour00x54_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x54_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x54(steps=2, height) {
	difference() {
		Candal_contour00x54(steps, height);
		
	}
}

Candal_bbox0x54=[[0, 0], [35, 44]];

module Candal_letter0x54(steps=2, height) {
	Candal_chunk10x54(steps, height);
} //end skeleton

module Candal_contour00x55_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[25, -1], [21, -1], [17.0, 0.5], 
		[13, 2], [10.5, 4.5], [8, 7], 
		[6.5, 11.5], [5, 16], [5, 21], 
		[5.0, 32.5], [5, 44], [12.0, 44.0], 
		[19, 44], [19.0, 32.5], [19, 21], 
		[19, 18], [19.5, 15.5], [20, 13], 
		[20.5, 11.5], [21, 10], [22.5, 9.0], 
		[24, 8], [26, 8], [28, 8], 
		[29.0, 9.0], [30, 10], [31.0, 11.5], 
		[32, 13], [32.0, 15.5], [32, 18], 
		[32, 21], [32.0, 32.5], [32, 44], 
		[38.0, 44.0], [44, 44], [44.0, 32.5], 
		[44, 21], [44, 16], [43.0, 11.5], 
		[42, 7], [39.5, 4.5], [37, 2], 
		[33.5, 0.5],[30, -1], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[25, -1], [21, -1], [17.0, 0.5], 
		[13, 2], [10.5, 4.5], [8, 7], 
		[6.5, 11.5], [5, 16], [5, 21], 
		[5.0, 32.5], [5, 44], [12.0, 44.0], 
		[19, 44], [19.0, 32.5], [19, 21], 
		[19, 18], [19.5, 15.5], [20, 13], 
		[20.5, 11.5], [21, 10], [22.5, 9.0], 
		[24, 8], [26, 8], [28, 8], 
		[29.0, 9.0], [30, 10], [31.0, 11.5], 
		[32, 13], [32.0, 15.5], [32, 18], 
		[32, 21], [32.0, 32.5], [32, 44], 
		[38.0, 44.0], [44, 44], [44.0, 32.5], 
		[44, 21], [44, 16], [43.0, 11.5], 
		[42, 7], [39.5, 4.5], [37, 2], 
		[33.5, 0.5],[30, -1], ]);
}}}

module Candal_contour00x55_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([19, 21], [19, 18], [19.5, 15.5],steps,height);
	BezConic([19.5, 15.5], [20, 13], [20.5, 11.5],steps,height);
	BezConic([20.5, 11.5], [21, 10], [22.5, 9.0],steps,height);
	BezConic([22.5, 9.0], [24, 8], [26, 8],steps,height);
	BezConic([26, 8], [28, 8], [29.0, 9.0],steps,height);
	BezConic([29.0, 9.0], [30, 10], [31.0, 11.5],steps,height);
	BezConic([31.0, 11.5], [32, 13], [32.0, 15.5],steps,height);
	BezConic([32.0, 15.5], [32, 18], [32, 21],steps,height);
}
}

module Candal_contour00x55_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([25, -1], [21, -1], [17.0, 0.5],steps,height);
	BezConic([17.0, 0.5], [13, 2], [10.5, 4.5],steps,height);
	BezConic([10.5, 4.5], [8, 7], [6.5, 11.5],steps,height);
	BezConic([6.5, 11.5], [5, 16], [5, 21],steps,height);
	BezConic([44, 21], [44, 16], [43.0, 11.5],steps,height);
	BezConic([43.0, 11.5], [42, 7], [39.5, 4.5],steps,height);
	BezConic([39.5, 4.5], [37, 2], [33.5, 0.5],steps,height);
	BezConic([33.5, 0.5], [30, -1], [25, -1],steps,height);
}
}

module Candal_contour00x55(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x55_skeleton(height);
			Candal_contour00x55_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x55_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x55(steps=2, height) {
	difference() {
		Candal_contour00x55(steps, height);
		
	}
}

Candal_bbox0x55=[[5, -1], [44, 44]];

module Candal_letter0x55(steps=2, height) {
	Candal_chunk10x55(steps, height);
} //end skeleton

module Candal_contour00x56_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[0, 44], [8.5, 44.0], [17, 44], 
		[20.5, 27.5], [24, 11], [27.5, 27.5], 
		[31, 44], [36.5, 44.0], [42, 44], 
		[36.0, 22.0], [30, 0], [20.5, 0.0], 
		[11, 0],[5.5, 22.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[0, 44], [8.5, 44.0], [17, 44], 
		[20.5, 27.5], [24, 11], [27.5, 27.5], 
		[31, 44], [36.5, 44.0], [42, 44], 
		[36.0, 22.0], [30, 0], [20.5, 0.0], 
		[11, 0],[5.5, 22.0], ]);
}}}

module Candal_contour00x56_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x56_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x56(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x56_skeleton(height);
			Candal_contour00x56_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x56_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x56(steps=2, height) {
	difference() {
		Candal_contour00x56(steps, height);
		
	}
}

Candal_bbox0x56=[[0, 0], [42, 44]];

module Candal_letter0x56(steps=2, height) {
	Candal_chunk10x56(steps, height);
} //end skeleton

module Candal_contour00x57_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[33, 25], [31.0, 12.5], [29, 0], 
		[19.5, 0.0], [10, 0], [6.0, 22.0], 
		[2, 44], [10.0, 44.0], [18, 44], 
		[20.0, 26.5], [22, 9], [25.0, 26.5], 
		[28, 44], [34.5, 44.0], [41, 44], 
		[44.0, 26.5], [47, 9], [49.0, 26.5], 
		[51, 44], [56.5, 44.0], [62, 44], 
		[58.5, 22.0], [55, 0], [46.5, 0.0], 
		[38, 0],[35.5, 12.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[33, 25], [31.0, 12.5], [29, 0], 
		[19.5, 0.0], [10, 0], [6.0, 22.0], 
		[2, 44], [10.0, 44.0], [18, 44], 
		[20.0, 26.5], [22, 9], [25.0, 26.5], 
		[28, 44], [34.5, 44.0], [41, 44], 
		[44.0, 26.5], [47, 9], [49.0, 26.5], 
		[51, 44], [56.5, 44.0], [62, 44], 
		[58.5, 22.0], [55, 0], [46.5, 0.0], 
		[38, 0],[35.5, 12.5], ]);
}}}

module Candal_contour00x57_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x57_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x57(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x57_skeleton(height);
			Candal_contour00x57_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x57_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x57(steps=2, height) {
	difference() {
		Candal_contour00x57(steps, height);
		
	}
}

Candal_bbox0x57=[[2, 0], [62, 44]];

module Candal_letter0x57(steps=2, height) {
	Candal_chunk10x57(steps, height);
} //end skeleton

module Candal_contour00x58_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[33, 22], [38.5, 11.0], [44, 0], 
		[35.5, 0.0], [27, 0], [24.5, 8.5], 
		[22, 17], [18.0, 8.5], [14, 0], 
		[7.5, 0.0], [1, 0], [6.5, 11.0], 
		[12, 22], [6.5, 33.0], [1, 44], 
		[9.5, 44.0], [18, 44], [21.5, 36.5], 
		[25, 29], [28.5, 36.5], [32, 44], 
		[38.0, 44.0], [44, 44], [38.5, 33.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[33, 22], [38.5, 11.0], [44, 0], 
		[35.5, 0.0], [27, 0], [24.5, 8.5], 
		[22, 17], [18.0, 8.5], [14, 0], 
		[7.5, 0.0], [1, 0], [6.5, 11.0], 
		[12, 22], [6.5, 33.0], [1, 44], 
		[9.5, 44.0], [18, 44], [21.5, 36.5], 
		[25, 29], [28.5, 36.5], [32, 44], 
		[38.0, 44.0], [44, 44], [38.5, 33.0], 
		 ]);
}}}

module Candal_contour00x58_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x58_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x58(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x58_skeleton(height);
			Candal_contour00x58_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x58_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x58(steps=2, height) {
	difference() {
		Candal_contour00x58(steps, height);
		
	}
}

Candal_bbox0x58=[[1, 0], [44, 44]];

module Candal_letter0x58(steps=2, height) {
	Candal_chunk10x58(steps, height);
} //end skeleton

module Candal_contour00x59_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[13, 0], [13.0, 7.5], [13, 15], 
		[6.0, 29.5], [-1, 44], [7.0, 44.0], 
		[15, 44], [18.0, 36.0], [21, 28], 
		[23.5, 36.0], [26, 44], [32.5, 44.0], 
		[39, 44], [33.0, 30.0], [27, 16], 
		[27.0, 8.0], [27, 0], [20.0, 0.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[13, 0], [13.0, 7.5], [13, 15], 
		[6.0, 29.5], [-1, 44], [7.0, 44.0], 
		[15, 44], [18.0, 36.0], [21, 28], 
		[23.5, 36.0], [26, 44], [32.5, 44.0], 
		[39, 44], [33.0, 30.0], [27, 16], 
		[27.0, 8.0], [27, 0], [20.0, 0.0], 
		 ]);
}}}

module Candal_contour00x59_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x59_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x59(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x59_skeleton(height);
			Candal_contour00x59_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x59_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x59(steps=2, height) {
	difference() {
		Candal_contour00x59(steps, height);
		
	}
}

Candal_bbox0x59=[[-1, 0], [39, 44]];

module Candal_letter0x59(steps=2, height) {
	Candal_chunk10x59(steps, height);
} //end skeleton

module Candal_contour00x5a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[31, 44], [31.0, 39.0], [31, 34], 
		[24.5, 22.0], [18, 10], [24.0, 10.0], 
		[30, 10], [30.0, 5.0], [30, 0], 
		[16.5, 0.0], [3, 0], [3.0, 5.0], 
		[3, 10], [10.5, 22.0], [18, 34], 
		[10.5, 34.0], [3, 34], [3.0, 39.0], 
		[3, 44],[17.0, 44.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[31, 44], [31.0, 39.0], [31, 34], 
		[24.5, 22.0], [18, 10], [24.0, 10.0], 
		[30, 10], [30.0, 5.0], [30, 0], 
		[16.5, 0.0], [3, 0], [3.0, 5.0], 
		[3, 10], [10.5, 22.0], [18, 34], 
		[10.5, 34.0], [3, 34], [3.0, 39.0], 
		[3, 44],[17.0, 44.0], ]);
}}}

module Candal_contour00x5a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x5a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x5a(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x5a_skeleton(height);
			Candal_contour00x5a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x5a_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x5a(steps=2, height) {
	difference() {
		Candal_contour00x5a(steps, height);
		
	}
}

Candal_bbox0x5a=[[3, 0], [31, 44]];

module Candal_letter0x5a(steps=2, height) {
	Candal_chunk10x5a(steps, height);
} //end skeleton

module Candal_contour00x5b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 45], [17.0, 45.0], [28, 45], 
		[28.0, 40.5], [28, 36], [23.5, 36.0], 
		[19, 36], [19.0, 22.5], [19, 9], 
		[23.5, 9.0], [28, 9], [28.0, 4.5], 
		[28, 0], [17.0, 0.0], [6, 0], 
		[6.0, 22.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 45], [17.0, 45.0], [28, 45], 
		[28.0, 40.5], [28, 36], [23.5, 36.0], 
		[19, 36], [19.0, 22.5], [19, 9], 
		[23.5, 9.0], [28, 9], [28.0, 4.5], 
		[28, 0], [17.0, 0.0], [6, 0], 
		[6.0, 22.5], ]);
}}}

module Candal_contour00x5b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x5b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x5b(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x5b_skeleton(height);
			Candal_contour00x5b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x5b_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x5b(steps=2, height) {
	difference() {
		Candal_contour00x5b(steps, height);
		
	}
}

Candal_bbox0x5b=[[6, 0], [28, 45]];

module Candal_letter0x5b(steps=2, height) {
	Candal_chunk10x5b(steps, height);
} //end skeleton

module Candal_contour00x5c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[14, 45], [20.5, 22.5], [27, 0], 
		[20.0, 0.0], [13, 0], [6.5, 22.5], 
		[0, 45],[7.0, 45.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[14, 45], [20.5, 22.5], [27, 0], 
		[20.0, 0.0], [13, 0], [6.5, 22.5], 
		[0, 45],[7.0, 45.0], ]);
}}}

module Candal_contour00x5c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x5c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x5c(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x5c_skeleton(height);
			Candal_contour00x5c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x5c_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x5c(steps=2, height) {
	difference() {
		Candal_contour00x5c(steps, height);
		
	}
}

Candal_bbox0x5c=[[0, 0], [27, 45]];

module Candal_letter0x5c(steps=2, height) {
	Candal_chunk10x5c(steps, height);
} //end skeleton

module Candal_contour00x5d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[27, 0], [16.0, 0.0], [5, 0], 
		[5.0, 4.5], [5, 9], [9.0, 9.0], 
		[13, 9], [13.0, 22.5], [13, 36], 
		[9.0, 36.0], [5, 36], [5.0, 40.5], 
		[5, 45], [16.0, 45.0], [27, 45], 
		[27.0, 22.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[27, 0], [16.0, 0.0], [5, 0], 
		[5.0, 4.5], [5, 9], [9.0, 9.0], 
		[13, 9], [13.0, 22.5], [13, 36], 
		[9.0, 36.0], [5, 36], [5.0, 40.5], 
		[5, 45], [16.0, 45.0], [27, 45], 
		[27.0, 22.5], ]);
}}}

module Candal_contour00x5d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x5d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x5d(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x5d_skeleton(height);
			Candal_contour00x5d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x5d_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x5d(steps=2, height) {
	difference() {
		Candal_contour00x5d(steps, height);
		
	}
}

Candal_bbox0x5d=[[5, 0], [27, 45]];

module Candal_letter0x5d(steps=2, height) {
	Candal_chunk10x5d(steps, height);
} //end skeleton

module Candal_contour00x5e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, 16], [10.5, 27.0], [15, 38], 
		[21.5, 38.0], [28, 38], [32.5, 27.0], 
		[37, 16], [31.5, 16.0], [26, 16], 
		[24.0, 23.5], [22, 31], [19.5, 23.5], 
		[17, 16],[11.5, 16.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, 16], [10.5, 27.0], [15, 38], 
		[21.5, 38.0], [28, 38], [32.5, 27.0], 
		[37, 16], [31.5, 16.0], [26, 16], 
		[24.0, 23.5], [22, 31], [19.5, 23.5], 
		[17, 16],[11.5, 16.0], ]);
}}}

module Candal_contour00x5e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x5e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x5e(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x5e_skeleton(height);
			Candal_contour00x5e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x5e_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x5e(steps=2, height) {
	difference() {
		Candal_contour00x5e(steps, height);
		
	}
}

Candal_bbox0x5e=[[6, 16], [37, 38]];

module Candal_letter0x5e(steps=2, height) {
	Candal_chunk10x5e(steps, height);
} //end skeleton

module Candal_contour00x5f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[31, 0], [31.0, -3.5], [31, -7], 
		[15.5, -7.0], [0, -7], [0.0, -3.5], 
		[0, 0],[15.5, 0.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[31, 0], [31.0, -3.5], [31, -7], 
		[15.5, -7.0], [0, -7], [0.0, -3.5], 
		[0, 0],[15.5, 0.0], ]);
}}}

module Candal_contour00x5f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x5f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x5f(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x5f_skeleton(height);
			Candal_contour00x5f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x5f_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x5f(steps=2, height) {
	difference() {
		Candal_contour00x5f(steps, height);
		
	}
}

Candal_bbox0x5f=[[0, -7], [31, 0]];

module Candal_letter0x5f(steps=2, height) {
	Candal_chunk10x5f(steps, height);
} //end skeleton

module Candal_contour00x60_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[18, 38], [14.0, 48.0], [10, 58], 
		[17.0, 58.0], [24, 58], [25.5, 48.0], 
		[27, 38],[22.5, 38.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[18, 38], [14.0, 48.0], [10, 58], 
		[17.0, 58.0], [24, 58], [25.5, 48.0], 
		[27, 38],[22.5, 38.0], ]);
}}}

module Candal_contour00x60_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x60_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x60(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x60_skeleton(height);
			Candal_contour00x60_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x60_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x60(steps=2, height) {
	difference() {
		Candal_contour00x60(steps, height);
		
	}
}

Candal_bbox0x60=[[10, 38], [27, 58]];

module Candal_letter0x60(steps=2, height) {
	Candal_chunk10x60(steps, height);
} //end skeleton

module Candal_contour00x61_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[13, -1], [11, -1], [9.0, -0.5], 
		[7, 0], [6.0, 1.5], [5, 3], 
		[4.0, 4.5], [3, 6], [3, 8], 
		[3, 11], [3.5, 12.5], [4, 14], 
		[5.5, 15.5], [7, 17], [8.5, 17.5], 
		[10, 18], [12.0, 18.5], [14, 19], 
		[16.0, 19.0], [18, 19], [20, 19], 
		[21, 19], [22.5, 19.0], [24, 19], 
		[25, 19], [25, 21], [24.0, 22.5], 
		[23, 24], [22.0, 24.5], [21, 25], 
		[19.5, 25.5], [18, 26], [17, 26], 
		[15, 26], [13.5, 26.0], [12, 26], 
		[10.5, 25.5], [9, 25], [7.5, 24.5], 
		[6, 24], [5, 24], [5.0, 28.5], 
		[5, 33], [6, 33], [8.0, 33.5], 
		[10, 34], [12.0, 34.0], [14, 34], 
		[16.0, 34.5], [18, 35], [20, 35], 
		[22, 35], [24.5, 34.5], [27, 34], 
		[29.0, 33.5], [31, 33], [32.5, 31.5], 
		[34, 30], [35.5, 28.5], [37, 27], 
		[37.5, 24.5], [38, 22], [38, 19], 
		[38.0, 9.5], [38, 0], [32.0, 0.0], 
		[26, 0], [26.0, 3.0], [26, 6], 
		[25, 4], [23.5, 3.0], [22, 2], 
		[20.5, 1.0], [19, 0], [17.0, -0.5], 
		[15, -1], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[13, -1], [11, -1], [9.0, -0.5], 
		[7, 0], [6.0, 1.5], [5, 3], 
		[4.0, 4.5], [3, 6], [3, 8], 
		[3, 11], [3.5, 12.5], [4, 14], 
		[5.5, 15.5], [7, 17], [8.5, 17.5], 
		[10, 18], [12.0, 18.5], [14, 19], 
		[16.0, 19.0], [18, 19], [20, 19], 
		[21, 19], [22.5, 19.0], [24, 19], 
		[25, 19], [25, 21], [24.0, 22.5], 
		[23, 24], [22.0, 24.5], [21, 25], 
		[19.5, 25.5], [18, 26], [17, 26], 
		[15, 26], [13.5, 26.0], [12, 26], 
		[10.5, 25.5], [9, 25], [7.5, 24.5], 
		[6, 24], [5, 24], [5.0, 28.5], 
		[5, 33], [6, 33], [8.0, 33.5], 
		[10, 34], [12.0, 34.0], [14, 34], 
		[16.0, 34.5], [18, 35], [20, 35], 
		[22, 35], [24.5, 34.5], [27, 34], 
		[29.0, 33.5], [31, 33], [32.5, 31.5], 
		[34, 30], [35.5, 28.5], [37, 27], 
		[37.5, 24.5], [38, 22], [38, 19], 
		[38.0, 9.5], [38, 0], [32.0, 0.0], 
		[26, 0], [26.0, 3.0], [26, 6], 
		[25, 4], [23.5, 3.0], [22, 2], 
		[20.5, 1.0], [19, 0], [17.0, -0.5], 
		[15, -1], ]);
}}}

module Candal_contour00x61_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6.0, 1.5], [5, 3], [4.0, 4.5],steps,height);
	BezConic([16.0, 19.0], [18, 19], [20, 19],steps,height);
	BezConic([20, 19], [21, 19], [22.5, 19.0],steps,height);
	BezConic([22.5, 19.0], [24, 19], [25, 19],steps,height);
	BezConic([25, 19], [25, 21], [24.0, 22.5],steps,height);
	BezConic([24.0, 22.5], [23, 24], [22.0, 24.5],steps,height);
	BezConic([22.0, 24.5], [21, 25], [19.5, 25.5],steps,height);
	BezConic([19.5, 25.5], [18, 26], [17, 26],steps,height);
	BezConic([17, 26], [15, 26], [13.5, 26.0],steps,height);
	BezConic([13.5, 26.0], [12, 26], [10.5, 25.5],steps,height);
	BezConic([10.5, 25.5], [9, 25], [7.5, 24.5],steps,height);
	BezConic([5, 33], [6, 33], [8.0, 33.5],steps,height);
	BezConic([12.0, 34.0], [14, 34], [16.0, 34.5],steps,height);
	BezConic([32.5, 31.5], [34, 30], [35.5, 28.5],steps,height);
	BezConic([23.5, 3.0], [22, 2], [20.5, 1.0],steps,height);
}
}

module Candal_contour00x61_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([13, -1], [11, -1], [9.0, -0.5],steps,height);
	BezConic([9.0, -0.5], [7, 0], [6.0, 1.5],steps,height);
	BezConic([4.0, 4.5], [3, 6], [3, 8],steps,height);
	BezConic([3, 8], [3, 11], [3.5, 12.5],steps,height);
	BezConic([3.5, 12.5], [4, 14], [5.5, 15.5],steps,height);
	BezConic([5.5, 15.5], [7, 17], [8.5, 17.5],steps,height);
	BezConic([8.5, 17.5], [10, 18], [12.0, 18.5],steps,height);
	BezConic([12.0, 18.5], [14, 19], [16.0, 19.0],steps,height);
	BezConic([7.5, 24.5], [6, 24], [5, 24],steps,height);
	BezConic([8.0, 33.5], [10, 34], [12.0, 34.0],steps,height);
	BezConic([16.0, 34.5], [18, 35], [20, 35],steps,height);
	BezConic([20, 35], [22, 35], [24.5, 34.5],steps,height);
	BezConic([24.5, 34.5], [27, 34], [29.0, 33.5],steps,height);
	BezConic([29.0, 33.5], [31, 33], [32.5, 31.5],steps,height);
	BezConic([35.5, 28.5], [37, 27], [37.5, 24.5],steps,height);
	BezConic([37.5, 24.5], [38, 22], [38, 19],steps,height);
	BezConic([26, 6], [25, 4], [23.5, 3.0],steps,height);
	BezConic([20.5, 1.0], [19, 0], [17.0, -0.5],steps,height);
	BezConic([17.0, -0.5], [15, -1], [13, -1],steps,height);
}
}

module Candal_contour00x61(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x61_skeleton(height);
			Candal_contour00x61_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x61_subtractive_curves(steps, height);
	}
}

module Candal_contour10x61_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[18, 6], [19, 6], [20.0, 6.5], 
		[21, 7], [22.0, 8.0], [23, 9], 
		[24.0, 10.5], [25, 12], [25, 15], 
		[24.5, 15.0], [24, 15], [22, 15], 
		[20.5, 14.5], [19, 14], [18.0, 13.5], 
		[17, 13], [16.0, 12.0], [15, 11], 
		[15, 10], [15, 9], [15.5, 8.5], 
		[16, 8], [16.0, 7.5], [16, 7], 
		[17.0, 6.5],[18, 6], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[18, 6], [19, 6], [20.0, 6.5], 
		[21, 7], [22.0, 8.0], [23, 9], 
		[24.0, 10.5], [25, 12], [25, 15], 
		[24.5, 15.0], [24, 15], [22, 15], 
		[20.5, 14.5], [19, 14], [18.0, 13.5], 
		[17, 13], [16.0, 12.0], [15, 11], 
		[15, 10], [15, 9], [15.5, 8.5], 
		[16, 8], [16.0, 7.5], [16, 7], 
		[17.0, 6.5],[18, 6], ]);
}}}

module Candal_contour10x61_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 6], [19, 6], [20.0, 6.5],steps,height);
	BezConic([20.0, 6.5], [21, 7], [22.0, 8.0],steps,height);
	BezConic([22.0, 8.0], [23, 9], [24.0, 10.5],steps,height);
	BezConic([24.0, 10.5], [25, 12], [25, 15],steps,height);
	BezConic([24, 15], [22, 15], [20.5, 14.5],steps,height);
	BezConic([20.5, 14.5], [19, 14], [18.0, 13.5],steps,height);
	BezConic([18.0, 13.5], [17, 13], [16.0, 12.0],steps,height);
	BezConic([16.0, 12.0], [15, 11], [15, 10],steps,height);
	BezConic([15, 10], [15, 9], [15.5, 8.5],steps,height);
	BezConic([16.0, 7.5], [16, 7], [17.0, 6.5],steps,height);
	BezConic([17.0, 6.5], [18, 6], [18, 6],steps,height);
}
}

module Candal_contour10x61_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15.5, 8.5], [16, 8], [16.0, 7.5],steps,height);
}
}

module Candal_contour10x61(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x61_skeleton(height);
			Candal_contour10x61_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x61_additive_curves(steps, height);
	}
}

module Candal_chunk10x61(steps=2, height) {
	difference() {
		Candal_contour00x61(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x61(steps, height);
	}
}

Candal_bbox0x61=[[3, -1], [38, 35]];

module Candal_letter0x61(steps=2, height) {
	Candal_chunk10x61(steps, height);
} //end skeleton

module Candal_contour00x62_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[30, -1], [28, -1], [26.5, -0.5], 
		[25, 0], [23.5, 1.0], [22, 2], 
		[20.5, 3.0], [19, 4], [18, 6], 
		[18.0, 3.0], [18, 0], [11.5, 0.0], 
		[5, 0], [5.0, 24.0], [5, 48], 
		[11.5, 48.0], [18, 48], [18.0, 38.5], 
		[18, 29], [19, 30], [20.5, 31.0], 
		[22, 32], [23.5, 33.0], [25, 34], 
		[26.5, 34.5], [28, 35], [30, 35], 
		[33, 35], [35.5, 34.0], [38, 33], 
		[40.0, 30.5], [42, 28], [43.5, 25.0], 
		[45, 22], [45, 17], [45, 12], 
		[43.5, 9.0], [42, 6], [40.0, 3.5], 
		[38, 1], [35.5, 0.0], [33, -1], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[30, -1], [28, -1], [26.5, -0.5], 
		[25, 0], [23.5, 1.0], [22, 2], 
		[20.5, 3.0], [19, 4], [18, 6], 
		[18.0, 3.0], [18, 0], [11.5, 0.0], 
		[5, 0], [5.0, 24.0], [5, 48], 
		[11.5, 48.0], [18, 48], [18.0, 38.5], 
		[18, 29], [19, 30], [20.5, 31.0], 
		[22, 32], [23.5, 33.0], [25, 34], 
		[26.5, 34.5], [28, 35], [30, 35], 
		[33, 35], [35.5, 34.0], [38, 33], 
		[40.0, 30.5], [42, 28], [43.5, 25.0], 
		[45, 22], [45, 17], [45, 12], 
		[43.5, 9.0], [42, 6], [40.0, 3.5], 
		[38, 1], [35.5, 0.0], [33, -1], 
		 ]);
}}}

module Candal_contour00x62_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([23.5, 1.0], [22, 2], [20.5, 3.0],steps,height);
	BezConic([20.5, 31.0], [22, 32], [23.5, 33.0],steps,height);
}
}

module Candal_contour00x62_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([30, -1], [28, -1], [26.5, -0.5],steps,height);
	BezConic([26.5, -0.5], [25, 0], [23.5, 1.0],steps,height);
	BezConic([20.5, 3.0], [19, 4], [18, 6],steps,height);
	BezConic([18, 29], [19, 30], [20.5, 31.0],steps,height);
	BezConic([23.5, 33.0], [25, 34], [26.5, 34.5],steps,height);
	BezConic([26.5, 34.5], [28, 35], [30, 35],steps,height);
	BezConic([30, 35], [33, 35], [35.5, 34.0],steps,height);
	BezConic([35.5, 34.0], [38, 33], [40.0, 30.5],steps,height);
	BezConic([40.0, 30.5], [42, 28], [43.5, 25.0],steps,height);
	BezConic([43.5, 25.0], [45, 22], [45, 17],steps,height);
	BezConic([45, 17], [45, 12], [43.5, 9.0],steps,height);
	BezConic([43.5, 9.0], [42, 6], [40.0, 3.5],steps,height);
	BezConic([40.0, 3.5], [38, 1], [35.5, 0.0],steps,height);
	BezConic([35.5, 0.0], [33, -1], [30, -1],steps,height);
}
}

module Candal_contour00x62(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x62_skeleton(height);
			Candal_contour00x62_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x62_subtractive_curves(steps, height);
	}
}

module Candal_contour10x62_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[31, 17], [31, 19], [30.5, 21.0], 
		[30, 23], [29.0, 24.0], [28, 25], 
		[27.0, 25.5], [26, 26], [25, 26], 
		[24, 26], [22.5, 25.5], [21, 25], 
		[20.0, 24.0], [19, 23], [18.5, 21.0], 
		[18, 19], [18, 17], [18, 14], 
		[18.5, 12.5], [19, 11], [20.0, 10.0], 
		[21, 9], [22.5, 8.5], [24, 8], 
		[25, 8], [26, 8], [27.0, 8.5], 
		[28, 9], [29.0, 10.0], [30, 11], 
		[30.5, 12.5],[31, 14], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[31, 17], [31, 19], [30.5, 21.0], 
		[30, 23], [29.0, 24.0], [28, 25], 
		[27.0, 25.5], [26, 26], [25, 26], 
		[24, 26], [22.5, 25.5], [21, 25], 
		[20.0, 24.0], [19, 23], [18.5, 21.0], 
		[18, 19], [18, 17], [18, 14], 
		[18.5, 12.5], [19, 11], [20.0, 10.0], 
		[21, 9], [22.5, 8.5], [24, 8], 
		[25, 8], [26, 8], [27.0, 8.5], 
		[28, 9], [29.0, 10.0], [30, 11], 
		[30.5, 12.5],[31, 14], ]);
}}}

module Candal_contour10x62_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([31, 17], [31, 19], [30.5, 21.0],steps,height);
	BezConic([30.5, 21.0], [30, 23], [29.0, 24.0],steps,height);
	BezConic([29.0, 24.0], [28, 25], [27.0, 25.5],steps,height);
	BezConic([27.0, 25.5], [26, 26], [25, 26],steps,height);
	BezConic([25, 26], [24, 26], [22.5, 25.5],steps,height);
	BezConic([22.5, 25.5], [21, 25], [20.0, 24.0],steps,height);
	BezConic([20.0, 24.0], [19, 23], [18.5, 21.0],steps,height);
	BezConic([18.5, 21.0], [18, 19], [18, 17],steps,height);
	BezConic([18, 17], [18, 14], [18.5, 12.5],steps,height);
	BezConic([18.5, 12.5], [19, 11], [20.0, 10.0],steps,height);
	BezConic([20.0, 10.0], [21, 9], [22.5, 8.5],steps,height);
	BezConic([22.5, 8.5], [24, 8], [25, 8],steps,height);
	BezConic([25, 8], [26, 8], [27.0, 8.5],steps,height);
	BezConic([27.0, 8.5], [28, 9], [29.0, 10.0],steps,height);
	BezConic([29.0, 10.0], [30, 11], [30.5, 12.5],steps,height);
	BezConic([30.5, 12.5], [31, 14], [31, 17],steps,height);
}
}

module Candal_contour10x62_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x62(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x62_skeleton(height);
			Candal_contour10x62_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x62_additive_curves(steps, height);
	}
}

module Candal_chunk10x62(steps=2, height) {
	difference() {
		Candal_contour00x62(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x62(steps, height);
	}
}

Candal_bbox0x62=[[5, -1], [45, 48]];

module Candal_letter0x62(steps=2, height) {
	Candal_chunk10x62(steps, height);
} //end skeleton

module Candal_contour00x63_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[16, 17], [16, 15], [16.5, 13.0], 
		[17, 11], [18.0, 10.0], [19, 9], 
		[20.5, 8.5], [22, 8], [24, 8], 
		[26, 8], [28.0, 8.5], [30, 9], 
		[32, 10], [33.0, 6.0], [34, 2], 
		[33, 1], [31.0, 0.5], [29, 0], 
		[27.5, -0.5], [26, -1], [24.5, -1.0], 
		[23, -1], [21, -1], [17, -1], 
		[13.5, 0.0], [10, 1], [7.5, 3.5], 
		[5, 6], [4.0, 9.0], [3, 12], 
		[3, 17], [3, 21], [4.0, 24.5], 
		[5, 28], [7.5, 30.0], [10, 32], 
		[13.5, 33.5], [17, 35], [21, 35], 
		[23, 35], [24.5, 34.5], [26, 34], 
		[27.5, 34.0], [29, 34], [31.0, 33.0], 
		[33, 32], [34, 32], [33.0, 28.0], 
		[32, 24], [30, 25], [28.0, 25.5], 
		[26, 26], [24, 26], [22, 26], 
		[20.5, 25.5], [19, 25], [18.0, 24.0], 
		[17, 23], [16.5, 21.0], [16, 19], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[16, 17], [16, 15], [16.5, 13.0], 
		[17, 11], [18.0, 10.0], [19, 9], 
		[20.5, 8.5], [22, 8], [24, 8], 
		[26, 8], [28.0, 8.5], [30, 9], 
		[32, 10], [33.0, 6.0], [34, 2], 
		[33, 1], [31.0, 0.5], [29, 0], 
		[27.5, -0.5], [26, -1], [24.5, -1.0], 
		[23, -1], [21, -1], [17, -1], 
		[13.5, 0.0], [10, 1], [7.5, 3.5], 
		[5, 6], [4.0, 9.0], [3, 12], 
		[3, 17], [3, 21], [4.0, 24.5], 
		[5, 28], [7.5, 30.0], [10, 32], 
		[13.5, 33.5], [17, 35], [21, 35], 
		[23, 35], [24.5, 34.5], [26, 34], 
		[27.5, 34.0], [29, 34], [31.0, 33.0], 
		[33, 32], [34, 32], [33.0, 28.0], 
		[32, 24], [30, 25], [28.0, 25.5], 
		[26, 26], [24, 26], [22, 26], 
		[20.5, 25.5], [19, 25], [18.0, 24.0], 
		[17, 23], [16.5, 21.0], [16, 19], 
		 ]);
}}}

module Candal_contour00x63_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([16, 17], [16, 15], [16.5, 13.0],steps,height);
	BezConic([16.5, 13.0], [17, 11], [18.0, 10.0],steps,height);
	BezConic([18.0, 10.0], [19, 9], [20.5, 8.5],steps,height);
	BezConic([20.5, 8.5], [22, 8], [24, 8],steps,height);
	BezConic([24, 8], [26, 8], [28.0, 8.5],steps,height);
	BezConic([28.0, 8.5], [30, 9], [32, 10],steps,height);
	BezConic([31.0, 0.5], [29, 0], [27.5, -0.5],steps,height);
	BezConic([24.5, -1.0], [23, -1], [21, -1],steps,height);
	BezConic([24.5, 34.5], [26, 34], [27.5, 34.0],steps,height);
	BezConic([31.0, 33.0], [33, 32], [34, 32],steps,height);
	BezConic([32, 24], [30, 25], [28.0, 25.5],steps,height);
	BezConic([28.0, 25.5], [26, 26], [24, 26],steps,height);
	BezConic([24, 26], [22, 26], [20.5, 25.5],steps,height);
	BezConic([20.5, 25.5], [19, 25], [18.0, 24.0],steps,height);
	BezConic([18.0, 24.0], [17, 23], [16.5, 21.0],steps,height);
	BezConic([16.5, 21.0], [16, 19], [16, 17],steps,height);
}
}

module Candal_contour00x63_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([34, 2], [33, 1], [31.0, 0.5],steps,height);
	BezConic([27.5, -0.5], [26, -1], [24.5, -1.0],steps,height);
	BezConic([21, -1], [17, -1], [13.5, 0.0],steps,height);
	BezConic([13.5, 0.0], [10, 1], [7.5, 3.5],steps,height);
	BezConic([7.5, 3.5], [5, 6], [4.0, 9.0],steps,height);
	BezConic([4.0, 9.0], [3, 12], [3, 17],steps,height);
	BezConic([3, 17], [3, 21], [4.0, 24.5],steps,height);
	BezConic([4.0, 24.5], [5, 28], [7.5, 30.0],steps,height);
	BezConic([7.5, 30.0], [10, 32], [13.5, 33.5],steps,height);
	BezConic([13.5, 33.5], [17, 35], [21, 35],steps,height);
	BezConic([21, 35], [23, 35], [24.5, 34.5],steps,height);
	BezConic([27.5, 34.0], [29, 34], [31.0, 33.0],steps,height);
}
}

module Candal_contour00x63(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x63_skeleton(height);
			Candal_contour00x63_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x63_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x63(steps=2, height) {
	difference() {
		Candal_contour00x63(steps, height);
		
	}
}

Candal_bbox0x63=[[3, -1], [34, 35]];

module Candal_letter0x63(steps=2, height) {
	Candal_chunk10x63(steps, height);
} //end skeleton

module Candal_contour00x64_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[18, -1], [15, -1], [12.0, 0.0], 
		[9, 1], [7.0, 3.5], [5, 6], 
		[4.0, 9.0], [3, 12], [3, 17], 
		[3, 22], [4.0, 25.0], [5, 28], 
		[7.0, 30.5], [9, 33], [12.0, 34.0], 
		[15, 35], [17, 35], [19, 35], 
		[21.0, 34.5], [23, 34], [24.5, 33.0], 
		[26, 32], [27.0, 31.0], [28, 30], 
		[29, 29], [29.0, 38.5], [29, 48], 
		[36.0, 48.0], [43, 48], [43.0, 24.0], 
		[43, 0], [36.0, 0.0], [29, 0], 
		[29.0, 3.0], [29, 6], [28, 4], 
		[27.0, 3.0], [26, 2], [24.5, 1.0], 
		[23, 0], [21.5, -0.5], [20, -1], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[18, -1], [15, -1], [12.0, 0.0], 
		[9, 1], [7.0, 3.5], [5, 6], 
		[4.0, 9.0], [3, 12], [3, 17], 
		[3, 22], [4.0, 25.0], [5, 28], 
		[7.0, 30.5], [9, 33], [12.0, 34.0], 
		[15, 35], [17, 35], [19, 35], 
		[21.0, 34.5], [23, 34], [24.5, 33.0], 
		[26, 32], [27.0, 31.0], [28, 30], 
		[29, 29], [29.0, 38.5], [29, 48], 
		[36.0, 48.0], [43, 48], [43.0, 24.0], 
		[43, 0], [36.0, 0.0], [29, 0], 
		[29.0, 3.0], [29, 6], [28, 4], 
		[27.0, 3.0], [26, 2], [24.5, 1.0], 
		[23, 0], [21.5, -0.5], [20, -1], 
		 ]);
}}}

module Candal_contour00x64_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([27.0, 31.0], [28, 30], [29, 29],steps,height);
}
}

module Candal_contour00x64_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, -1], [15, -1], [12.0, 0.0],steps,height);
	BezConic([12.0, 0.0], [9, 1], [7.0, 3.5],steps,height);
	BezConic([7.0, 3.5], [5, 6], [4.0, 9.0],steps,height);
	BezConic([4.0, 9.0], [3, 12], [3, 17],steps,height);
	BezConic([3, 17], [3, 22], [4.0, 25.0],steps,height);
	BezConic([4.0, 25.0], [5, 28], [7.0, 30.5],steps,height);
	BezConic([7.0, 30.5], [9, 33], [12.0, 34.0],steps,height);
	BezConic([12.0, 34.0], [15, 35], [17, 35],steps,height);
	BezConic([17, 35], [19, 35], [21.0, 34.5],steps,height);
	BezConic([21.0, 34.5], [23, 34], [24.5, 33.0],steps,height);
	BezConic([24.5, 33.0], [26, 32], [27.0, 31.0],steps,height);
	BezConic([29, 6], [28, 4], [27.0, 3.0],steps,height);
	BezConic([27.0, 3.0], [26, 2], [24.5, 1.0],steps,height);
	BezConic([24.5, 1.0], [23, 0], [21.5, -0.5],steps,height);
	BezConic([21.5, -0.5], [20, -1], [18, -1],steps,height);
}
}

module Candal_contour00x64(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x64_skeleton(height);
			Candal_contour00x64_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x64_subtractive_curves(steps, height);
	}
}

module Candal_contour10x64_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[16, 17], [16, 14], [16.5, 12.5], 
		[17, 11], [18.0, 10.0], [19, 9], 
		[20.0, 8.5], [21, 8], [23, 8], 
		[24, 8], [25.0, 8.5], [26, 9], 
		[27.0, 10.0], [28, 11], [28.5, 12.5], 
		[29, 14], [29, 17], [29, 19], 
		[28.5, 21.0], [28, 23], [27.0, 24.0], 
		[26, 25], [25.0, 25.5], [24, 26], 
		[23, 26], [21, 26], [20.0, 25.5], 
		[19, 25], [18.0, 24.0], [17, 23], 
		[16.5, 21.0],[16, 19], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[16, 17], [16, 14], [16.5, 12.5], 
		[17, 11], [18.0, 10.0], [19, 9], 
		[20.0, 8.5], [21, 8], [23, 8], 
		[24, 8], [25.0, 8.5], [26, 9], 
		[27.0, 10.0], [28, 11], [28.5, 12.5], 
		[29, 14], [29, 17], [29, 19], 
		[28.5, 21.0], [28, 23], [27.0, 24.0], 
		[26, 25], [25.0, 25.5], [24, 26], 
		[23, 26], [21, 26], [20.0, 25.5], 
		[19, 25], [18.0, 24.0], [17, 23], 
		[16.5, 21.0],[16, 19], ]);
}}}

module Candal_contour10x64_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([16, 17], [16, 14], [16.5, 12.5],steps,height);
	BezConic([16.5, 12.5], [17, 11], [18.0, 10.0],steps,height);
	BezConic([18.0, 10.0], [19, 9], [20.0, 8.5],steps,height);
	BezConic([20.0, 8.5], [21, 8], [23, 8],steps,height);
	BezConic([23, 8], [24, 8], [25.0, 8.5],steps,height);
	BezConic([25.0, 8.5], [26, 9], [27.0, 10.0],steps,height);
	BezConic([27.0, 10.0], [28, 11], [28.5, 12.5],steps,height);
	BezConic([28.5, 12.5], [29, 14], [29, 17],steps,height);
	BezConic([29, 17], [29, 19], [28.5, 21.0],steps,height);
	BezConic([28.5, 21.0], [28, 23], [27.0, 24.0],steps,height);
	BezConic([27.0, 24.0], [26, 25], [25.0, 25.5],steps,height);
	BezConic([25.0, 25.5], [24, 26], [23, 26],steps,height);
	BezConic([23, 26], [21, 26], [20.0, 25.5],steps,height);
	BezConic([20.0, 25.5], [19, 25], [18.0, 24.0],steps,height);
	BezConic([18.0, 24.0], [17, 23], [16.5, 21.0],steps,height);
	BezConic([16.5, 21.0], [16, 19], [16, 17],steps,height);
}
}

module Candal_contour10x64_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x64(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x64_skeleton(height);
			Candal_contour10x64_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x64_additive_curves(steps, height);
	}
}

module Candal_chunk10x64(steps=2, height) {
	difference() {
		Candal_contour00x64(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x64(steps, height);
	}
}

Candal_bbox0x64=[[3, -1], [43, 48]];

module Candal_letter0x64(steps=2, height) {
	Candal_chunk10x64(steps, height);
} //end skeleton

module Candal_contour00x65_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[36, 1], [33, 0], [29.5, -0.5], 
		[26, -1], [23, -1], [19, -1], 
		[15.0, 0.0], [11, 1], [8.5, 3.5], 
		[6, 6], [4.5, 9.5], [3, 13], 
		[3, 17], [3, 20], [3.5, 22.5], 
		[4, 25], [5.5, 27.0], [7, 29], 
		[9.0, 30.5], [11, 32], [13.0, 33.0], 
		[15, 34], [17.5, 34.5], [20, 35], 
		[23, 35], [26, 35], [29.0, 34.0], 
		[32, 33], [33.5, 31.5], [35, 30], 
		[36.0, 28.5], [37, 27], [37, 25], 
		[37, 22], [36.0, 20.5], [35, 19], 
		[34.0, 18.0], [33, 17], [31.0, 16.0], 
		[29, 15], [27.0, 14.5], [25, 14], 
		[23.0, 14.0], [21, 14], [19, 14], 
		[18, 14], [17.5, 14.0], [17, 14], 
		[16, 14], [17, 13], [17.5, 11.5], 
		[18, 10], [19.0, 9.5], [20, 9], 
		[21.5, 8.5], [23, 8], [25, 8], 
		[26, 8], [27.5, 8.0], [29, 8], 
		[30.5, 8.5], [32, 9], [33.5, 9.5], 
		[35, 10], [36, 10], [36.0, 5.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[36, 1], [33, 0], [29.5, -0.5], 
		[26, -1], [23, -1], [19, -1], 
		[15.0, 0.0], [11, 1], [8.5, 3.5], 
		[6, 6], [4.5, 9.5], [3, 13], 
		[3, 17], [3, 20], [3.5, 22.5], 
		[4, 25], [5.5, 27.0], [7, 29], 
		[9.0, 30.5], [11, 32], [13.0, 33.0], 
		[15, 34], [17.5, 34.5], [20, 35], 
		[23, 35], [26, 35], [29.0, 34.0], 
		[32, 33], [33.5, 31.5], [35, 30], 
		[36.0, 28.5], [37, 27], [37, 25], 
		[37, 22], [36.0, 20.5], [35, 19], 
		[34.0, 18.0], [33, 17], [31.0, 16.0], 
		[29, 15], [27.0, 14.5], [25, 14], 
		[23.0, 14.0], [21, 14], [19, 14], 
		[18, 14], [17.5, 14.0], [17, 14], 
		[16, 14], [17, 13], [17.5, 11.5], 
		[18, 10], [19.0, 9.5], [20, 9], 
		[21.5, 8.5], [23, 8], [25, 8], 
		[26, 8], [27.5, 8.0], [29, 8], 
		[30.5, 8.5], [32, 9], [33.5, 9.5], 
		[35, 10], [36, 10], [36.0, 5.5], 
		 ]);
}}}

module Candal_contour00x65_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([23.0, 14.0], [21, 14], [19, 14],steps,height);
	BezConic([19, 14], [18, 14], [17.5, 14.0],steps,height);
	BezConic([17.5, 14.0], [17, 14], [16, 14],steps,height);
	BezConic([17.5, 11.5], [18, 10], [19.0, 9.5],steps,height);
	BezConic([19.0, 9.5], [20, 9], [21.5, 8.5],steps,height);
	BezConic([21.5, 8.5], [23, 8], [25, 8],steps,height);
	BezConic([25, 8], [26, 8], [27.5, 8.0],steps,height);
	BezConic([27.5, 8.0], [29, 8], [30.5, 8.5],steps,height);
	BezConic([30.5, 8.5], [32, 9], [33.5, 9.5],steps,height);
}
}

module Candal_contour00x65_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([36, 1], [33, 0], [29.5, -0.5],steps,height);
	BezConic([29.5, -0.5], [26, -1], [23, -1],steps,height);
	BezConic([23, -1], [19, -1], [15.0, 0.0],steps,height);
	BezConic([15.0, 0.0], [11, 1], [8.5, 3.5],steps,height);
	BezConic([8.5, 3.5], [6, 6], [4.5, 9.5],steps,height);
	BezConic([4.5, 9.5], [3, 13], [3, 17],steps,height);
	BezConic([3, 17], [3, 20], [3.5, 22.5],steps,height);
	BezConic([3.5, 22.5], [4, 25], [5.5, 27.0],steps,height);
	BezConic([5.5, 27.0], [7, 29], [9.0, 30.5],steps,height);
	BezConic([9.0, 30.5], [11, 32], [13.0, 33.0],steps,height);
	BezConic([13.0, 33.0], [15, 34], [17.5, 34.5],steps,height);
	BezConic([17.5, 34.5], [20, 35], [23, 35],steps,height);
	BezConic([23, 35], [26, 35], [29.0, 34.0],steps,height);
	BezConic([29.0, 34.0], [32, 33], [33.5, 31.5],steps,height);
	BezConic([33.5, 31.5], [35, 30], [36.0, 28.5],steps,height);
	BezConic([36.0, 28.5], [37, 27], [37, 25],steps,height);
	BezConic([37, 25], [37, 22], [36.0, 20.5],steps,height);
	BezConic([36.0, 20.5], [35, 19], [34.0, 18.0],steps,height);
	BezConic([34.0, 18.0], [33, 17], [31.0, 16.0],steps,height);
	BezConic([31.0, 16.0], [29, 15], [27.0, 14.5],steps,height);
	BezConic([27.0, 14.5], [25, 14], [23.0, 14.0],steps,height);
	BezConic([16, 14], [17, 13], [17.5, 11.5],steps,height);
	BezConic([33.5, 9.5], [35, 10], [36, 10],steps,height);
}
}

module Candal_contour00x65(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x65_skeleton(height);
			Candal_contour00x65_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x65_subtractive_curves(steps, height);
	}
}

module Candal_contour10x65_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[16, 19], [17, 19], [18.0, 19.0], 
		[19, 19], [20.5, 19.5], [22, 20], 
		[23.0, 20.0], [24, 20], [25.5, 20.5], 
		[27, 21], [27.5, 21.5], [28, 22], 
		[28, 23], [28, 25], [26.5, 26.0], 
		[25, 27], [23, 27], [22, 27], 
		[21.0, 26.5], [20, 26], [19.0, 25.0], 
		[18, 24], [17.0, 22.5], [16, 21], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[16, 19], [17, 19], [18.0, 19.0], 
		[19, 19], [20.5, 19.5], [22, 20], 
		[23.0, 20.0], [24, 20], [25.5, 20.5], 
		[27, 21], [27.5, 21.5], [28, 22], 
		[28, 23], [28, 25], [26.5, 26.0], 
		[25, 27], [23, 27], [22, 27], 
		[21.0, 26.5], [20, 26], [19.0, 25.0], 
		[18, 24], [17.0, 22.5], [16, 21], 
		 ]);
}}}

module Candal_contour10x65_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([16, 19], [17, 19], [18.0, 19.0],steps,height);
	BezConic([18.0, 19.0], [19, 19], [20.5, 19.5],steps,height);
	BezConic([23.0, 20.0], [24, 20], [25.5, 20.5],steps,height);
	BezConic([25.5, 20.5], [27, 21], [27.5, 21.5],steps,height);
	BezConic([27.5, 21.5], [28, 22], [28, 23],steps,height);
	BezConic([28, 23], [28, 25], [26.5, 26.0],steps,height);
	BezConic([26.5, 26.0], [25, 27], [23, 27],steps,height);
	BezConic([23, 27], [22, 27], [21.0, 26.5],steps,height);
	BezConic([21.0, 26.5], [20, 26], [19.0, 25.0],steps,height);
	BezConic([19.0, 25.0], [18, 24], [17.0, 22.5],steps,height);
	BezConic([17.0, 22.5], [16, 21], [16, 19],steps,height);
}
}

module Candal_contour10x65_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20.5, 19.5], [22, 20], [23.0, 20.0],steps,height);
}
}

module Candal_contour10x65(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x65_skeleton(height);
			Candal_contour10x65_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x65_additive_curves(steps, height);
	}
}

module Candal_chunk10x65(steps=2, height) {
	difference() {
		Candal_contour00x65(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x65(steps, height);
	}
}

Candal_bbox0x65=[[3, -1], [37, 35]];

module Candal_letter0x65(steps=2, height) {
	Candal_chunk10x65(steps, height);
} //end skeleton

module Candal_contour00x66_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[20, 0], [13.5, 0.0], [7, 0], 
		[7.0, 13.0], [7, 26], [4.0, 26.0], 
		[1, 26], [1.0, 30.0], [1, 34], 
		[3.5, 34.0], [6, 34], [6, 38], 
		[7.5, 40.5], [9, 43], [10.5, 45.0], 
		[12, 47], [15.0, 48.0], [18, 49], 
		[21, 49], [24, 49], [26.5, 48.5], 
		[29, 48], [31, 47], [30.5, 43.0], 
		[30, 39], [28, 39], [26.5, 39.5], 
		[25, 40], [24, 40], [23, 40], 
		[22.0, 39.5], [21, 39], [20.5, 38.0], 
		[20, 37], [20.0, 36.0], [20, 35], 
		[20, 34], [24.5, 34.0], [29, 34], 
		[29, 32], [29.0, 30.0], [29, 28], 
		[29, 26], [24.5, 26.0], [20, 26], 
		[20.0, 13.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[20, 0], [13.5, 0.0], [7, 0], 
		[7.0, 13.0], [7, 26], [4.0, 26.0], 
		[1, 26], [1.0, 30.0], [1, 34], 
		[3.5, 34.0], [6, 34], [6, 38], 
		[7.5, 40.5], [9, 43], [10.5, 45.0], 
		[12, 47], [15.0, 48.0], [18, 49], 
		[21, 49], [24, 49], [26.5, 48.5], 
		[29, 48], [31, 47], [30.5, 43.0], 
		[30, 39], [28, 39], [26.5, 39.5], 
		[25, 40], [24, 40], [23, 40], 
		[22.0, 39.5], [21, 39], [20.5, 38.0], 
		[20, 37], [20.0, 36.0], [20, 35], 
		[20, 34], [24.5, 34.0], [29, 34], 
		[29, 32], [29.0, 30.0], [29, 28], 
		[29, 26], [24.5, 26.0], [20, 26], 
		[20.0, 13.0], ]);
}}}

module Candal_contour00x66_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([26.5, 39.5], [25, 40], [24, 40],steps,height);
	BezConic([24, 40], [23, 40], [22.0, 39.5],steps,height);
	BezConic([22.0, 39.5], [21, 39], [20.5, 38.0],steps,height);
	BezConic([20.5, 38.0], [20, 37], [20.0, 36.0],steps,height);
	BezConic([20.0, 36.0], [20, 35], [20, 34],steps,height);
	BezConic([29, 34], [29, 32], [29.0, 30.0],steps,height);
	BezConic([29.0, 30.0], [29, 28], [29, 26],steps,height);
}
}

module Candal_contour00x66_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, 34], [6, 38], [7.5, 40.5],steps,height);
	BezConic([7.5, 40.5], [9, 43], [10.5, 45.0],steps,height);
	BezConic([10.5, 45.0], [12, 47], [15.0, 48.0],steps,height);
	BezConic([15.0, 48.0], [18, 49], [21, 49],steps,height);
	BezConic([21, 49], [24, 49], [26.5, 48.5],steps,height);
	BezConic([26.5, 48.5], [29, 48], [31, 47],steps,height);
	BezConic([30, 39], [28, 39], [26.5, 39.5],steps,height);
}
}

module Candal_contour00x66(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x66_skeleton(height);
			Candal_contour00x66_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x66_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x66(steps=2, height) {
	difference() {
		Candal_contour00x66(steps, height);
		
	}
}

Candal_bbox0x66=[[1, 0], [31, 49]];

module Candal_letter0x66(steps=2, height) {
	Candal_chunk10x66(steps, height);
} //end skeleton

module Candal_contour00x67_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[28, 6], [27, 3], [24.0, 1.5], 
		[21, 0], [18, 0], [14, 0], 
		[11.0, 1.5], [8, 3], [6.0, 5.5], 
		[4, 8], [3.5, 11.0], [3, 14], 
		[3, 17], [3, 20], [4.0, 23.0], 
		[5, 26], [6.5, 28.5], [8, 31], 
		[11.0, 33.0], [14, 35], [17, 35], 
		[20, 35], [21.5, 34.5], [23, 34], 
		[24.5, 33.0], [26, 32], [27.0, 30.5], 
		[28, 29], [29, 27], [29, 27], 
		[29.0, 28.0], [29, 29], [29.0, 30.0], 
		[29, 31], [28.5, 32.0], [28, 33], 
		[28, 34], [35.0, 34.0], [42, 34], 
		[42.0, 20.5], [42, 7], [42, 2], 
		[40.5, -2.5], [39, -7], [36.5, -9.5], 
		[34, -12], [30.0, -13.5], [26, -15], 
		[22, -15], [20, -15], [18.5, -15.0], 
		[17, -15], [15.5, -14.5], [14, -14], 
		[12.5, -14.0], [11, -14], [10, -14], 
		[10.5, -10.0], [11, -6], [11, -6], 
		[12.5, -6.0], [14, -6], [15.0, -6.5], 
		[16, -7], [17.5, -7.0], [19, -7], 
		[20, -7], [22, -7], [24.0, -6.0], 
		[26, -5], [27.0, -3.0], [28, -1], 
		[28.0, 1.0],[28, 3], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[28, 6], [27, 3], [24.0, 1.5], 
		[21, 0], [18, 0], [14, 0], 
		[11.0, 1.5], [8, 3], [6.0, 5.5], 
		[4, 8], [3.5, 11.0], [3, 14], 
		[3, 17], [3, 20], [4.0, 23.0], 
		[5, 26], [6.5, 28.5], [8, 31], 
		[11.0, 33.0], [14, 35], [17, 35], 
		[20, 35], [21.5, 34.5], [23, 34], 
		[24.5, 33.0], [26, 32], [27.0, 30.5], 
		[28, 29], [29, 27], [29, 27], 
		[29.0, 28.0], [29, 29], [29.0, 30.0], 
		[29, 31], [28.5, 32.0], [28, 33], 
		[28, 34], [35.0, 34.0], [42, 34], 
		[42.0, 20.5], [42, 7], [42, 2], 
		[40.5, -2.5], [39, -7], [36.5, -9.5], 
		[34, -12], [30.0, -13.5], [26, -15], 
		[22, -15], [20, -15], [18.5, -15.0], 
		[17, -15], [15.5, -14.5], [14, -14], 
		[12.5, -14.0], [11, -14], [10, -14], 
		[10.5, -10.0], [11, -6], [11, -6], 
		[12.5, -6.0], [14, -6], [15.0, -6.5], 
		[16, -7], [17.5, -7.0], [19, -7], 
		[20, -7], [22, -7], [24.0, -6.0], 
		[26, -5], [27.0, -3.0], [28, -1], 
		[28.0, 1.0],[28, 3], ]);
}}}

module Candal_contour00x67_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29, 27], [29, 27], [29.0, 28.0],steps,height);
	BezConic([29.0, 28.0], [29, 29], [29.0, 30.0],steps,height);
	BezConic([29.0, 30.0], [29, 31], [28.5, 32.0],steps,height);
	BezConic([22, -15], [20, -15], [18.5, -15.0],steps,height);
	BezConic([15.5, -14.5], [14, -14], [12.5, -14.0],steps,height);
	BezConic([12.5, -14.0], [11, -14], [10, -14],steps,height);
	BezConic([11, -6], [11, -6], [12.5, -6.0],steps,height);
	BezConic([15.0, -6.5], [16, -7], [17.5, -7.0],steps,height);
	BezConic([17.5, -7.0], [19, -7], [20, -7],steps,height);
	BezConic([20, -7], [22, -7], [24.0, -6.0],steps,height);
	BezConic([24.0, -6.0], [26, -5], [27.0, -3.0],steps,height);
	BezConic([27.0, -3.0], [28, -1], [28.0, 1.0],steps,height);
	BezConic([28.0, 1.0], [28, 3], [28, 6],steps,height);
}
}

module Candal_contour00x67_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([28, 6], [27, 3], [24.0, 1.5],steps,height);
	BezConic([24.0, 1.5], [21, 0], [18, 0],steps,height);
	BezConic([18, 0], [14, 0], [11.0, 1.5],steps,height);
	BezConic([11.0, 1.5], [8, 3], [6.0, 5.5],steps,height);
	BezConic([6.0, 5.5], [4, 8], [3.5, 11.0],steps,height);
	BezConic([3.5, 11.0], [3, 14], [3, 17],steps,height);
	BezConic([3, 17], [3, 20], [4.0, 23.0],steps,height);
	BezConic([4.0, 23.0], [5, 26], [6.5, 28.5],steps,height);
	BezConic([6.5, 28.5], [8, 31], [11.0, 33.0],steps,height);
	BezConic([11.0, 33.0], [14, 35], [17, 35],steps,height);
	BezConic([17, 35], [20, 35], [21.5, 34.5],steps,height);
	BezConic([21.5, 34.5], [23, 34], [24.5, 33.0],steps,height);
	BezConic([24.5, 33.0], [26, 32], [27.0, 30.5],steps,height);
	BezConic([27.0, 30.5], [28, 29], [29, 27],steps,height);
	BezConic([28.5, 32.0], [28, 33], [28, 34],steps,height);
	BezConic([42, 7], [42, 2], [40.5, -2.5],steps,height);
	BezConic([40.5, -2.5], [39, -7], [36.5, -9.5],steps,height);
	BezConic([36.5, -9.5], [34, -12], [30.0, -13.5],steps,height);
	BezConic([30.0, -13.5], [26, -15], [22, -15],steps,height);
	BezConic([18.5, -15.0], [17, -15], [15.5, -14.5],steps,height);
	BezConic([12.5, -6.0], [14, -6], [15.0, -6.5],steps,height);
}
}

module Candal_contour00x67(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x67_skeleton(height);
			Candal_contour00x67_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x67_subtractive_curves(steps, height);
	}
}

module Candal_contour10x67_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[15, 17], [15, 14], [15.5, 12.5], 
		[16, 11], [17.0, 10.0], [18, 9], 
		[19.5, 8.5], [21, 8], [22, 8], 
		[23, 8], [24.0, 8.5], [25, 9], 
		[26.0, 10.0], [27, 11], [27.5, 12.5], 
		[28, 14], [28, 17], [28, 19], 
		[27.5, 21.0], [27, 23], [26.0, 24.0], 
		[25, 25], [24.0, 25.5], [23, 26], 
		[22, 26], [21, 26], [19.5, 25.5], 
		[18, 25], [17.0, 24.0], [16, 23], 
		[15.5, 21.0],[15, 19], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[15, 17], [15, 14], [15.5, 12.5], 
		[16, 11], [17.0, 10.0], [18, 9], 
		[19.5, 8.5], [21, 8], [22, 8], 
		[23, 8], [24.0, 8.5], [25, 9], 
		[26.0, 10.0], [27, 11], [27.5, 12.5], 
		[28, 14], [28, 17], [28, 19], 
		[27.5, 21.0], [27, 23], [26.0, 24.0], 
		[25, 25], [24.0, 25.5], [23, 26], 
		[22, 26], [21, 26], [19.5, 25.5], 
		[18, 25], [17.0, 24.0], [16, 23], 
		[15.5, 21.0],[15, 19], ]);
}}}

module Candal_contour10x67_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([15, 17], [15, 14], [15.5, 12.5],steps,height);
	BezConic([15.5, 12.5], [16, 11], [17.0, 10.0],steps,height);
	BezConic([17.0, 10.0], [18, 9], [19.5, 8.5],steps,height);
	BezConic([19.5, 8.5], [21, 8], [22, 8],steps,height);
	BezConic([22, 8], [23, 8], [24.0, 8.5],steps,height);
	BezConic([24.0, 8.5], [25, 9], [26.0, 10.0],steps,height);
	BezConic([26.0, 10.0], [27, 11], [27.5, 12.5],steps,height);
	BezConic([27.5, 12.5], [28, 14], [28, 17],steps,height);
	BezConic([28, 17], [28, 19], [27.5, 21.0],steps,height);
	BezConic([27.5, 21.0], [27, 23], [26.0, 24.0],steps,height);
	BezConic([26.0, 24.0], [25, 25], [24.0, 25.5],steps,height);
	BezConic([24.0, 25.5], [23, 26], [22, 26],steps,height);
	BezConic([22, 26], [21, 26], [19.5, 25.5],steps,height);
	BezConic([19.5, 25.5], [18, 25], [17.0, 24.0],steps,height);
	BezConic([17.0, 24.0], [16, 23], [15.5, 21.0],steps,height);
	BezConic([15.5, 21.0], [15, 19], [15, 17],steps,height);
}
}

module Candal_contour10x67_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x67(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x67_skeleton(height);
			Candal_contour10x67_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x67_additive_curves(steps, height);
	}
}

module Candal_chunk10x67(steps=2, height) {
	difference() {
		Candal_contour00x67(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x67(steps, height);
	}
}

Candal_bbox0x67=[[3, -15], [42, 35]];

module Candal_letter0x67(steps=2, height) {
	Candal_chunk10x67(steps, height);
} //end skeleton

module Candal_contour00x68_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 48], [11.5, 48.0], [18, 48], 
		[18.0, 38.5], [18, 29], [19, 30], 
		[20.5, 31.0], [22, 32], [23.5, 33.0], 
		[25, 34], [27.0, 34.5], [29, 35], 
		[31, 35], [33, 35], [35.0, 34.0], 
		[37, 33], [38.5, 31.5], [40, 30], 
		[41.0, 27.5], [42, 25], [42, 21], 
		[42.0, 10.5], [42, 0], [35.0, 0.0], 
		[28, 0], [28.0, 9.0], [28, 18], 
		[28, 20], [28.0, 21.5], [28, 23], 
		[27.0, 24.0], [26, 25], [25.5, 25.5], 
		[25, 26], [24, 26], [23, 26], 
		[22.0, 25.5], [21, 25], [20.5, 24.5], 
		[20, 24], [19.5, 23.0], [19, 22], 
		[18, 21], [18.0, 10.5], [18, 0], 
		[11.5, 0.0], [5, 0], [5.0, 24.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 48], [11.5, 48.0], [18, 48], 
		[18.0, 38.5], [18, 29], [19, 30], 
		[20.5, 31.0], [22, 32], [23.5, 33.0], 
		[25, 34], [27.0, 34.5], [29, 35], 
		[31, 35], [33, 35], [35.0, 34.0], 
		[37, 33], [38.5, 31.5], [40, 30], 
		[41.0, 27.5], [42, 25], [42, 21], 
		[42.0, 10.5], [42, 0], [35.0, 0.0], 
		[28, 0], [28.0, 9.0], [28, 18], 
		[28, 20], [28.0, 21.5], [28, 23], 
		[27.0, 24.0], [26, 25], [25.5, 25.5], 
		[25, 26], [24, 26], [23, 26], 
		[22.0, 25.5], [21, 25], [20.5, 24.5], 
		[20, 24], [19.5, 23.0], [19, 22], 
		[18, 21], [18.0, 10.5], [18, 0], 
		[11.5, 0.0], [5, 0], [5.0, 24.0], 
		 ]);
}}}

module Candal_contour00x68_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20.5, 31.0], [22, 32], [23.5, 33.0],steps,height);
	BezConic([28, 18], [28, 20], [28.0, 21.5],steps,height);
	BezConic([28.0, 21.5], [28, 23], [27.0, 24.0],steps,height);
	BezConic([27.0, 24.0], [26, 25], [25.5, 25.5],steps,height);
	BezConic([25.5, 25.5], [25, 26], [24, 26],steps,height);
	BezConic([24, 26], [23, 26], [22.0, 25.5],steps,height);
	BezConic([22.0, 25.5], [21, 25], [20.5, 24.5],steps,height);
	BezConic([20.5, 24.5], [20, 24], [19.5, 23.0],steps,height);
}
}

module Candal_contour00x68_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 29], [19, 30], [20.5, 31.0],steps,height);
	BezConic([23.5, 33.0], [25, 34], [27.0, 34.5],steps,height);
	BezConic([27.0, 34.5], [29, 35], [31, 35],steps,height);
	BezConic([31, 35], [33, 35], [35.0, 34.0],steps,height);
	BezConic([35.0, 34.0], [37, 33], [38.5, 31.5],steps,height);
	BezConic([38.5, 31.5], [40, 30], [41.0, 27.5],steps,height);
	BezConic([41.0, 27.5], [42, 25], [42, 21],steps,height);
	BezConic([19.5, 23.0], [19, 22], [18, 21],steps,height);
}
}

module Candal_contour00x68(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x68_skeleton(height);
			Candal_contour00x68_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x68_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x68(steps=2, height) {
	difference() {
		Candal_contour00x68(steps, height);
		
	}
}

Candal_bbox0x68=[[5, 0], [42, 48]];

module Candal_letter0x68(steps=2, height) {
	Candal_chunk10x68(steps, height);
} //end skeleton

module Candal_contour00x69_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 34], [12.0, 34.0], [19, 34], 
		[19.0, 17.0], [19, 0], [12.0, 0.0], 
		[5, 0],[5.0, 17.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 34], [12.0, 34.0], [19, 34], 
		[19.0, 17.0], [19, 0], [12.0, 0.0], 
		[5, 0],[5.0, 17.0], ]);
}}}

module Candal_contour00x69_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x69_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x69(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x69_skeleton(height);
			Candal_contour00x69_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x69_subtractive_curves(steps, height);
	}
}

module Candal_contour10x69_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[12, 41], [10, 41], [8.5, 41.0], 
		[7, 41], [6.0, 42.0], [5, 43], 
		[4.0, 44.0], [3, 45], [3, 46], 
		[3, 47], [4.0, 48.0], [5, 49], 
		[6.0, 49.5], [7, 50], [8.5, 50.5], 
		[10, 51], [12, 51], [14, 51], 
		[15.5, 50.5], [17, 50], [18.0, 49.5], 
		[19, 49], [19.5, 48.0], [20, 47], 
		[20, 46], [20, 45], [19.5, 44.0], 
		[19, 43], [18.0, 42.0], [17, 41], 
		[15.5, 41.0],[14, 41], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[12, 41], [10, 41], [8.5, 41.0], 
		[7, 41], [6.0, 42.0], [5, 43], 
		[4.0, 44.0], [3, 45], [3, 46], 
		[3, 47], [4.0, 48.0], [5, 49], 
		[6.0, 49.5], [7, 50], [8.5, 50.5], 
		[10, 51], [12, 51], [14, 51], 
		[15.5, 50.5], [17, 50], [18.0, 49.5], 
		[19, 49], [19.5, 48.0], [20, 47], 
		[20, 46], [20, 45], [19.5, 44.0], 
		[19, 43], [18.0, 42.0], [17, 41], 
		[15.5, 41.0],[14, 41], ]);
}}}

module Candal_contour10x69_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, 41], [10, 41], [8.5, 41.0],steps,height);
	BezConic([6.0, 42.0], [5, 43], [4.0, 44.0],steps,height);
	BezConic([15.5, 41.0], [14, 41], [12, 41],steps,height);
}
}

module Candal_contour10x69_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([8.5, 41.0], [7, 41], [6.0, 42.0],steps,height);
	BezConic([4.0, 44.0], [3, 45], [3, 46],steps,height);
	BezConic([3, 46], [3, 47], [4.0, 48.0],steps,height);
	BezConic([4.0, 48.0], [5, 49], [6.0, 49.5],steps,height);
	BezConic([6.0, 49.5], [7, 50], [8.5, 50.5],steps,height);
	BezConic([8.5, 50.5], [10, 51], [12, 51],steps,height);
	BezConic([12, 51], [14, 51], [15.5, 50.5],steps,height);
	BezConic([15.5, 50.5], [17, 50], [18.0, 49.5],steps,height);
	BezConic([18.0, 49.5], [19, 49], [19.5, 48.0],steps,height);
	BezConic([19.5, 48.0], [20, 47], [20, 46],steps,height);
	BezConic([20, 46], [20, 45], [19.5, 44.0],steps,height);
	BezConic([19.5, 44.0], [19, 43], [18.0, 42.0],steps,height);
	BezConic([18.0, 42.0], [17, 41], [15.5, 41.0],steps,height);
}
}

module Candal_contour10x69(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x69_skeleton(height);
			Candal_contour10x69_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x69_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x69(steps=2, height) {
	difference() {
		Candal_contour00x69(steps, height);
		
	}
}

module Candal_chunk20x69(steps=2, height) {
	difference() {
		Candal_contour10x69(steps, height);
		
	}
}

Candal_bbox0x69=[[3, 0], [20, 51]];

module Candal_letter0x69(steps=2, height) {
	Candal_chunk10x69(steps, height);
	Candal_chunk20x69(steps, height);
} //end skeleton

module Candal_contour00x6a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[6, -13], [4, -13], [1.5, -13.0], 
		[-1, -13], [-3, -12], [-3.0, -7.5], 
		[-3, -3], [-2, -3], [-1.5, -3.5], 
		[-1, -4], [0.0, -4.0], [1, -4], 
		[1.0, -4.0], [1, -4], [2, -4], 
		[3, -4], [4.0, -3.5], [5, -3], 
		[5.5, -2.0], [6, -1], [6.0, 0.0], 
		[6, 1], [6, 2], [6.0, 18.0], 
		[6, 34], [12.5, 34.0], [19, 34], 
		[19.0, 17.5], [19, 1], [19, -3], 
		[18.0, -5.5], [17, -8], [15.5, -10.0], 
		[14, -12], [11.5, -12.5], [9, -13], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[6, -13], [4, -13], [1.5, -13.0], 
		[-1, -13], [-3, -12], [-3.0, -7.5], 
		[-3, -3], [-2, -3], [-1.5, -3.5], 
		[-1, -4], [0.0, -4.0], [1, -4], 
		[1.0, -4.0], [1, -4], [2, -4], 
		[3, -4], [4.0, -3.5], [5, -3], 
		[5.5, -2.0], [6, -1], [6.0, 0.0], 
		[6, 1], [6, 2], [6.0, 18.0], 
		[6, 34], [12.5, 34.0], [19, 34], 
		[19.0, 17.5], [19, 1], [19, -3], 
		[18.0, -5.5], [17, -8], [15.5, -10.0], 
		[14, -12], [11.5, -12.5], [9, -13], 
		 ]);
}}}

module Candal_contour00x6a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([6, -13], [4, -13], [1.5, -13.0],steps,height);
	BezConic([-1.5, -3.5], [-1, -4], [0.0, -4.0],steps,height);
	BezConic([0.0, -4.0], [1, -4], [1.0, -4.0],steps,height);
	BezConic([1.0, -4.0], [1, -4], [2, -4],steps,height);
	BezConic([2, -4], [3, -4], [4.0, -3.5],steps,height);
	BezConic([4.0, -3.5], [5, -3], [5.5, -2.0],steps,height);
	BezConic([5.5, -2.0], [6, -1], [6.0, 0.0],steps,height);
	BezConic([6.0, 0.0], [6, 1], [6, 2],steps,height);
}
}

module Candal_contour00x6a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([1.5, -13.0], [-1, -13], [-3, -12],steps,height);
	BezConic([-3, -3], [-2, -3], [-1.5, -3.5],steps,height);
	BezConic([19, 1], [19, -3], [18.0, -5.5],steps,height);
	BezConic([18.0, -5.5], [17, -8], [15.5, -10.0],steps,height);
	BezConic([15.5, -10.0], [14, -12], [11.5, -12.5],steps,height);
	BezConic([11.5, -12.5], [9, -13], [6, -13],steps,height);
}
}

module Candal_contour00x6a(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x6a_skeleton(height);
			Candal_contour00x6a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x6a_subtractive_curves(steps, height);
	}
}

module Candal_contour10x6a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[12, 41], [11, 41], [9.0, 41.5], 
		[7, 42], [6.0, 42.5], [5, 43], 
		[4.5, 44.0], [4, 45], [4, 46], 
		[4, 48], [4.5, 48.5], [5, 49], 
		[6.0, 50.0], [7, 51], [9.0, 51.0], 
		[11, 51], [12, 51], [14, 51], 
		[15.5, 51.0], [17, 51], [18.5, 50.0], 
		[20, 49], [20.5, 48.5], [21, 48], 
		[21, 46], [21, 45], [20.5, 44.0], 
		[20, 43], [18.5, 42.5], [17, 42], 
		[15.5, 41.5],[14, 41], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[12, 41], [11, 41], [9.0, 41.5], 
		[7, 42], [6.0, 42.5], [5, 43], 
		[4.5, 44.0], [4, 45], [4, 46], 
		[4, 48], [4.5, 48.5], [5, 49], 
		[6.0, 50.0], [7, 51], [9.0, 51.0], 
		[11, 51], [12, 51], [14, 51], 
		[15.5, 51.0], [17, 51], [18.5, 50.0], 
		[20, 49], [20.5, 48.5], [21, 48], 
		[21, 46], [21, 45], [20.5, 44.0], 
		[20, 43], [18.5, 42.5], [17, 42], 
		[15.5, 41.5],[14, 41], ]);
}}}

module Candal_contour10x6a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([4.5, 48.5], [5, 49], [6.0, 50.0],steps,height);
	BezConic([9.0, 51.0], [11, 51], [12, 51],steps,height);
	BezConic([12, 51], [14, 51], [15.5, 51.0],steps,height);
	BezConic([18.5, 42.5], [17, 42], [15.5, 41.5],steps,height);
}
}

module Candal_contour10x6a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, 41], [11, 41], [9.0, 41.5],steps,height);
	BezConic([9.0, 41.5], [7, 42], [6.0, 42.5],steps,height);
	BezConic([6.0, 42.5], [5, 43], [4.5, 44.0],steps,height);
	BezConic([4.5, 44.0], [4, 45], [4, 46],steps,height);
	BezConic([4, 46], [4, 48], [4.5, 48.5],steps,height);
	BezConic([6.0, 50.0], [7, 51], [9.0, 51.0],steps,height);
	BezConic([15.5, 51.0], [17, 51], [18.5, 50.0],steps,height);
	BezConic([18.5, 50.0], [20, 49], [20.5, 48.5],steps,height);
	BezConic([20.5, 48.5], [21, 48], [21, 46],steps,height);
	BezConic([21, 46], [21, 45], [20.5, 44.0],steps,height);
	BezConic([20.5, 44.0], [20, 43], [18.5, 42.5],steps,height);
	BezConic([15.5, 41.5], [14, 41], [12, 41],steps,height);
}
}

module Candal_contour10x6a(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x6a_skeleton(height);
			Candal_contour10x6a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x6a_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x6a(steps=2, height) {
	difference() {
		Candal_contour00x6a(steps, height);
		
	}
}

module Candal_chunk20x6a(steps=2, height) {
	difference() {
		Candal_contour10x6a(steps, height);
		
	}
}

Candal_bbox0x6a=[[-3, -13], [21, 51]];

module Candal_letter0x6a(steps=2, height) {
	Candal_chunk10x6a(steps, height);
	Candal_chunk20x6a(steps, height);
} //end skeleton

module Candal_contour00x6b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[31, 34], [38.0, 34.0], [45, 34], 
		[38.5, 26.0], [32, 18], [38.5, 9.0], 
		[45, 0], [37.5, 0.0], [30, 0], 
		[24.5, 8.0], [19, 16], [18.5, 15.5], 
		[18, 15], [18.0, 7.5], [18, 0], 
		[11.5, 0.0], [5, 0], [5.0, 24.0], 
		[5, 48], [11.5, 48.0], [18, 48], 
		[18.0, 33.5], [18, 19], [24.5, 26.5], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[31, 34], [38.0, 34.0], [45, 34], 
		[38.5, 26.0], [32, 18], [38.5, 9.0], 
		[45, 0], [37.5, 0.0], [30, 0], 
		[24.5, 8.0], [19, 16], [18.5, 15.5], 
		[18, 15], [18.0, 7.5], [18, 0], 
		[11.5, 0.0], [5, 0], [5.0, 24.0], 
		[5, 48], [11.5, 48.0], [18, 48], 
		[18.0, 33.5], [18, 19], [24.5, 26.5], 
		 ]);
}}}

module Candal_contour00x6b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x6b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x6b(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x6b_skeleton(height);
			Candal_contour00x6b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x6b_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x6b(steps=2, height) {
	difference() {
		Candal_contour00x6b(steps, height);
		
	}
}

Candal_bbox0x6b=[[5, 0], [45, 48]];

module Candal_letter0x6b(steps=2, height) {
	Candal_chunk10x6b(steps, height);
} //end skeleton

module Candal_contour00x6c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 48], [11.5, 48.0], [18, 48], 
		[18.0, 24.0], [18, 0], [11.5, 0.0], 
		[5, 0],[5.0, 24.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 48], [11.5, 48.0], [18, 48], 
		[18.0, 24.0], [18, 0], [11.5, 0.0], 
		[5, 0],[5.0, 24.0], ]);
}}}

module Candal_contour00x6c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x6c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x6c(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x6c_skeleton(height);
			Candal_contour00x6c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x6c_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x6c(steps=2, height) {
	difference() {
		Candal_contour00x6c(steps, height);
		
	}
}

Candal_bbox0x6c=[[5, 0], [18, 48]];

module Candal_letter0x6c(steps=2, height) {
	Candal_chunk10x6c(steps, height);
} //end skeleton

module Candal_contour00x6d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 34], [11.5, 34.0], [18, 34], 
		[18, 33], [18.0, 32.0], [18, 31], 
		[18.0, 30.5], [18, 30], [18.0, 29.0], 
		[18, 28], [18, 27], [18, 29], 
		[19.5, 30.0], [21, 31], [22.5, 32.0], 
		[24, 33], [26.0, 34.0], [28, 35], 
		[30, 35], [32, 35], [33.5, 34.5], 
		[35, 34], [36.0, 33.0], [37, 32], 
		[38.5, 30.5], [40, 29], [40, 28], 
		[41, 29], [42.5, 30.5], [44, 32], 
		[46.0, 33.0], [48, 34], [50.0, 34.5], 
		[52, 35], [55, 35], [58, 35], 
		[60.5, 34.0], [63, 33], [64.5, 31.0], 
		[66, 29], [66.5, 26.5], [67, 24], 
		[67, 21], [67.0, 10.5], [67, 0], 
		[60.0, 0.0], [53, 0], [53.0, 9.5], 
		[53, 19], [53, 20], [53.0, 21.0], 
		[53, 22], [52.5, 23.0], [52, 24], 
		[51.0, 25.0], [50, 26], [48, 26], 
		[47, 26], [46.0, 25.5], [45, 25], 
		[44.5, 24.0], [44, 23], [43.5, 22.0], 
		[43, 21], [43, 20], [43.0, 10.0], 
		[43, 0], [36.0, 0.0], [29, 0], 
		[29.0, 9.5], [29, 19], [29, 20], 
		[29.0, 21.5], [29, 23], [28.5, 24.0], 
		[28, 25], [27.0, 25.5], [26, 26], 
		[24, 26], [23, 26], [22.0, 25.5], 
		[21, 25], [20.0, 24.5], [19, 24], 
		[18.5, 23.0], [18, 22], [18, 21], 
		[18.0, 10.5], [18, 0], [11.5, 0.0], 
		[5, 0],[5.0, 17.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 34], [11.5, 34.0], [18, 34], 
		[18, 33], [18.0, 32.0], [18, 31], 
		[18.0, 30.5], [18, 30], [18.0, 29.0], 
		[18, 28], [18, 27], [18, 29], 
		[19.5, 30.0], [21, 31], [22.5, 32.0], 
		[24, 33], [26.0, 34.0], [28, 35], 
		[30, 35], [32, 35], [33.5, 34.5], 
		[35, 34], [36.0, 33.0], [37, 32], 
		[38.5, 30.5], [40, 29], [40, 28], 
		[41, 29], [42.5, 30.5], [44, 32], 
		[46.0, 33.0], [48, 34], [50.0, 34.5], 
		[52, 35], [55, 35], [58, 35], 
		[60.5, 34.0], [63, 33], [64.5, 31.0], 
		[66, 29], [66.5, 26.5], [67, 24], 
		[67, 21], [67.0, 10.5], [67, 0], 
		[60.0, 0.0], [53, 0], [53.0, 9.5], 
		[53, 19], [53, 20], [53.0, 21.0], 
		[53, 22], [52.5, 23.0], [52, 24], 
		[51.0, 25.0], [50, 26], [48, 26], 
		[47, 26], [46.0, 25.5], [45, 25], 
		[44.5, 24.0], [44, 23], [43.5, 22.0], 
		[43, 21], [43, 20], [43.0, 10.0], 
		[43, 0], [36.0, 0.0], [29, 0], 
		[29.0, 9.5], [29, 19], [29, 20], 
		[29.0, 21.5], [29, 23], [28.5, 24.0], 
		[28, 25], [27.0, 25.5], [26, 26], 
		[24, 26], [23, 26], [22.0, 25.5], 
		[21, 25], [20.0, 24.5], [19, 24], 
		[18.5, 23.0], [18, 22], [18, 21], 
		[18.0, 10.5], [18, 0], [11.5, 0.0], 
		[5, 0],[5.0, 17.0], ]);
}}}

module Candal_contour00x6d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 34], [18, 33], [18.0, 32.0],steps,height);
	BezConic([18.0, 32.0], [18, 31], [18.0, 30.5],steps,height);
	BezConic([18.0, 29.0], [18, 28], [18, 27],steps,height);
	BezConic([19.5, 30.0], [21, 31], [22.5, 32.0],steps,height);
	BezConic([36.0, 33.0], [37, 32], [38.5, 30.5],steps,height);
	BezConic([53, 19], [53, 20], [53.0, 21.0],steps,height);
	BezConic([53.0, 21.0], [53, 22], [52.5, 23.0],steps,height);
	BezConic([52.5, 23.0], [52, 24], [51.0, 25.0],steps,height);
	BezConic([51.0, 25.0], [50, 26], [48, 26],steps,height);
	BezConic([48, 26], [47, 26], [46.0, 25.5],steps,height);
	BezConic([46.0, 25.5], [45, 25], [44.5, 24.0],steps,height);
	BezConic([44.5, 24.0], [44, 23], [43.5, 22.0],steps,height);
	BezConic([43.5, 22.0], [43, 21], [43, 20],steps,height);
	BezConic([29, 19], [29, 20], [29.0, 21.5],steps,height);
	BezConic([29.0, 21.5], [29, 23], [28.5, 24.0],steps,height);
	BezConic([28.5, 24.0], [28, 25], [27.0, 25.5],steps,height);
	BezConic([27.0, 25.5], [26, 26], [24, 26],steps,height);
	BezConic([24, 26], [23, 26], [22.0, 25.5],steps,height);
	BezConic([22.0, 25.5], [21, 25], [20.0, 24.5],steps,height);
	BezConic([20.0, 24.5], [19, 24], [18.5, 23.0],steps,height);
	BezConic([18.5, 23.0], [18, 22], [18, 21],steps,height);
}
}

module Candal_contour00x6d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18.0, 30.5], [18, 30], [18.0, 29.0],steps,height);
	BezConic([18, 27], [18, 29], [19.5, 30.0],steps,height);
	BezConic([22.5, 32.0], [24, 33], [26.0, 34.0],steps,height);
	BezConic([26.0, 34.0], [28, 35], [30, 35],steps,height);
	BezConic([30, 35], [32, 35], [33.5, 34.5],steps,height);
	BezConic([33.5, 34.5], [35, 34], [36.0, 33.0],steps,height);
	BezConic([38.5, 30.5], [40, 29], [40, 28],steps,height);
	BezConic([40, 28], [41, 29], [42.5, 30.5],steps,height);
	BezConic([42.5, 30.5], [44, 32], [46.0, 33.0],steps,height);
	BezConic([46.0, 33.0], [48, 34], [50.0, 34.5],steps,height);
	BezConic([50.0, 34.5], [52, 35], [55, 35],steps,height);
	BezConic([55, 35], [58, 35], [60.5, 34.0],steps,height);
	BezConic([60.5, 34.0], [63, 33], [64.5, 31.0],steps,height);
	BezConic([64.5, 31.0], [66, 29], [66.5, 26.5],steps,height);
	BezConic([66.5, 26.5], [67, 24], [67, 21],steps,height);
}
}

module Candal_contour00x6d(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x6d_skeleton(height);
			Candal_contour00x6d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x6d_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x6d(steps=2, height) {
	difference() {
		Candal_contour00x6d(steps, height);
		
	}
}

Candal_bbox0x6d=[[5, 0], [67, 35]];

module Candal_letter0x6d(steps=2, height) {
	Candal_chunk10x6d(steps, height);
} //end skeleton

module Candal_contour00x6e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 34], [11.5, 34.0], [18, 34], 
		[18, 33], [18.0, 31.0], [18, 29], 
		[18, 28], [19, 29], [20.5, 30.5], 
		[22, 32], [24.0, 33.0], [26, 34], 
		[28.0, 34.5], [30, 35], [33, 35], 
		[35, 35], [37.0, 34.0], [39, 33], 
		[41.0, 31.5], [43, 30], [44.0, 27.5], 
		[45, 25], [45, 21], [45.0, 10.5], 
		[45, 0], [38.0, 0.0], [31, 0], 
		[31.0, 9.5], [31, 19], [31, 21], 
		[30.5, 22.5], [30, 24], [29.5, 24.5], 
		[29, 25], [28.0, 25.5], [27, 26], 
		[26, 26], [24, 26], [23.0, 25.5], 
		[22, 25], [21.0, 24.5], [20, 24], 
		[19.5, 23.0], [19, 22], [18, 21], 
		[18.0, 10.5], [18, 0], [11.5, 0.0], 
		[5, 0],[5.0, 17.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 34], [11.5, 34.0], [18, 34], 
		[18, 33], [18.0, 31.0], [18, 29], 
		[18, 28], [19, 29], [20.5, 30.5], 
		[22, 32], [24.0, 33.0], [26, 34], 
		[28.0, 34.5], [30, 35], [33, 35], 
		[35, 35], [37.0, 34.0], [39, 33], 
		[41.0, 31.5], [43, 30], [44.0, 27.5], 
		[45, 25], [45, 21], [45.0, 10.5], 
		[45, 0], [38.0, 0.0], [31, 0], 
		[31.0, 9.5], [31, 19], [31, 21], 
		[30.5, 22.5], [30, 24], [29.5, 24.5], 
		[29, 25], [28.0, 25.5], [27, 26], 
		[26, 26], [24, 26], [23.0, 25.5], 
		[22, 25], [21.0, 24.5], [20, 24], 
		[19.5, 23.0], [19, 22], [18, 21], 
		[18.0, 10.5], [18, 0], [11.5, 0.0], 
		[5, 0],[5.0, 17.0], ]);
}}}

module Candal_contour00x6e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 34], [18, 33], [18.0, 31.0],steps,height);
	BezConic([18.0, 31.0], [18, 29], [18, 28],steps,height);
	BezConic([31, 19], [31, 21], [30.5, 22.5],steps,height);
	BezConic([30.5, 22.5], [30, 24], [29.5, 24.5],steps,height);
	BezConic([29.5, 24.5], [29, 25], [28.0, 25.5],steps,height);
	BezConic([28.0, 25.5], [27, 26], [26, 26],steps,height);
	BezConic([26, 26], [24, 26], [23.0, 25.5],steps,height);
	BezConic([23.0, 25.5], [22, 25], [21.0, 24.5],steps,height);
	BezConic([21.0, 24.5], [20, 24], [19.5, 23.0],steps,height);
}
}

module Candal_contour00x6e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 28], [19, 29], [20.5, 30.5],steps,height);
	BezConic([20.5, 30.5], [22, 32], [24.0, 33.0],steps,height);
	BezConic([24.0, 33.0], [26, 34], [28.0, 34.5],steps,height);
	BezConic([28.0, 34.5], [30, 35], [33, 35],steps,height);
	BezConic([33, 35], [35, 35], [37.0, 34.0],steps,height);
	BezConic([37.0, 34.0], [39, 33], [41.0, 31.5],steps,height);
	BezConic([41.0, 31.5], [43, 30], [44.0, 27.5],steps,height);
	BezConic([44.0, 27.5], [45, 25], [45, 21],steps,height);
	BezConic([19.5, 23.0], [19, 22], [18, 21],steps,height);
}
}

module Candal_contour00x6e(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x6e_skeleton(height);
			Candal_contour00x6e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x6e_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x6e(steps=2, height) {
	difference() {
		Candal_contour00x6e(steps, height);
		
	}
}

Candal_bbox0x6e=[[5, 0], [45, 35]];

module Candal_letter0x6e(steps=2, height) {
	Candal_chunk10x6e(steps, height);
} //end skeleton

module Candal_contour00x6f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[22, -1], [18, -1], [15.5, -0.5], 
		[13, 0], [10.5, 1.5], [8, 3], 
		[6.5, 4.5], [5, 6], [4.0, 8.0], 
		[3, 10], [3.0, 12.5], [3, 15], 
		[3, 17], [3, 19], [3.0, 21.0], 
		[3, 23], [4.0, 25.0], [5, 27], 
		[6.5, 29.0], [8, 31], [10.5, 32.0], 
		[13, 33], [15.5, 34.0], [18, 35], 
		[22, 35], [26, 35], [28.5, 34.0], 
		[31, 33], [33.5, 32.0], [36, 31], 
		[37.5, 29.0], [39, 27], [40.0, 25.0], 
		[41, 23], [41.5, 21.0], [42, 19], 
		[42, 17], [42, 15], [41.5, 12.5], 
		[41, 10], [40.0, 8.0], [39, 6], 
		[37.5, 4.5], [36, 3], [33.5, 1.5], 
		[31, 0], [28.5, -0.5], [26, -1], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[22, -1], [18, -1], [15.5, -0.5], 
		[13, 0], [10.5, 1.5], [8, 3], 
		[6.5, 4.5], [5, 6], [4.0, 8.0], 
		[3, 10], [3.0, 12.5], [3, 15], 
		[3, 17], [3, 19], [3.0, 21.0], 
		[3, 23], [4.0, 25.0], [5, 27], 
		[6.5, 29.0], [8, 31], [10.5, 32.0], 
		[13, 33], [15.5, 34.0], [18, 35], 
		[22, 35], [26, 35], [28.5, 34.0], 
		[31, 33], [33.5, 32.0], [36, 31], 
		[37.5, 29.0], [39, 27], [40.0, 25.0], 
		[41, 23], [41.5, 21.0], [42, 19], 
		[42, 17], [42, 15], [41.5, 12.5], 
		[41, 10], [40.0, 8.0], [39, 6], 
		[37.5, 4.5], [36, 3], [33.5, 1.5], 
		[31, 0], [28.5, -0.5], [26, -1], 
		 ]);
}}}

module Candal_contour00x6f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([3.0, 12.5], [3, 15], [3, 17],steps,height);
	BezConic([3, 17], [3, 19], [3.0, 21.0],steps,height);
	BezConic([10.5, 32.0], [13, 33], [15.5, 34.0],steps,height);
	BezConic([28.5, 34.0], [31, 33], [33.5, 32.0],steps,height);
}
}

module Candal_contour00x6f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([22, -1], [18, -1], [15.5, -0.5],steps,height);
	BezConic([15.5, -0.5], [13, 0], [10.5, 1.5],steps,height);
	BezConic([10.5, 1.5], [8, 3], [6.5, 4.5],steps,height);
	BezConic([6.5, 4.5], [5, 6], [4.0, 8.0],steps,height);
	BezConic([4.0, 8.0], [3, 10], [3.0, 12.5],steps,height);
	BezConic([3.0, 21.0], [3, 23], [4.0, 25.0],steps,height);
	BezConic([4.0, 25.0], [5, 27], [6.5, 29.0],steps,height);
	BezConic([6.5, 29.0], [8, 31], [10.5, 32.0],steps,height);
	BezConic([15.5, 34.0], [18, 35], [22, 35],steps,height);
	BezConic([22, 35], [26, 35], [28.5, 34.0],steps,height);
	BezConic([33.5, 32.0], [36, 31], [37.5, 29.0],steps,height);
	BezConic([37.5, 29.0], [39, 27], [40.0, 25.0],steps,height);
	BezConic([40.0, 25.0], [41, 23], [41.5, 21.0],steps,height);
	BezConic([41.5, 21.0], [42, 19], [42, 17],steps,height);
	BezConic([42, 17], [42, 15], [41.5, 12.5],steps,height);
	BezConic([41.5, 12.5], [41, 10], [40.0, 8.0],steps,height);
	BezConic([40.0, 8.0], [39, 6], [37.5, 4.5],steps,height);
	BezConic([37.5, 4.5], [36, 3], [33.5, 1.5],steps,height);
	BezConic([33.5, 1.5], [31, 0], [28.5, -0.5],steps,height);
	BezConic([28.5, -0.5], [26, -1], [22, -1],steps,height);
}
}

module Candal_contour00x6f(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x6f_skeleton(height);
			Candal_contour00x6f_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x6f_subtractive_curves(steps, height);
	}
}

module Candal_contour10x6f_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[16, 17], [16, 15], [16.5, 13.5], 
		[17, 12], [17.5, 10.5], [18, 9], 
		[19.0, 8.5], [20, 8], [22, 8], 
		[24, 8], [25.0, 8.5], [26, 9], 
		[26.5, 10.5], [27, 12], [27.5, 13.5], 
		[28, 15], [28, 17], [28, 19], 
		[27.5, 20.5], [27, 22], [26.5, 23.0], 
		[26, 24], [25.0, 25.0], [24, 26], 
		[22, 26], [20, 26], [19.0, 25.0], 
		[18, 24], [17.5, 23.0], [17, 22], 
		[16.5, 20.5],[16, 19], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[16, 17], [16, 15], [16.5, 13.5], 
		[17, 12], [17.5, 10.5], [18, 9], 
		[19.0, 8.5], [20, 8], [22, 8], 
		[24, 8], [25.0, 8.5], [26, 9], 
		[26.5, 10.5], [27, 12], [27.5, 13.5], 
		[28, 15], [28, 17], [28, 19], 
		[27.5, 20.5], [27, 22], [26.5, 23.0], 
		[26, 24], [25.0, 25.0], [24, 26], 
		[22, 26], [20, 26], [19.0, 25.0], 
		[18, 24], [17.5, 23.0], [17, 22], 
		[16.5, 20.5],[16, 19], ]);
}}}

module Candal_contour10x6f_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([16, 17], [16, 15], [16.5, 13.5],steps,height);
	BezConic([17.5, 10.5], [18, 9], [19.0, 8.5],steps,height);
	BezConic([19.0, 8.5], [20, 8], [22, 8],steps,height);
	BezConic([22, 8], [24, 8], [25.0, 8.5],steps,height);
	BezConic([25.0, 8.5], [26, 9], [26.5, 10.5],steps,height);
	BezConic([26.5, 10.5], [27, 12], [27.5, 13.5],steps,height);
	BezConic([27.5, 13.5], [28, 15], [28, 17],steps,height);
	BezConic([28, 17], [28, 19], [27.5, 20.5],steps,height);
	BezConic([27.5, 20.5], [27, 22], [26.5, 23.0],steps,height);
	BezConic([26.5, 23.0], [26, 24], [25.0, 25.0],steps,height);
	BezConic([25.0, 25.0], [24, 26], [22, 26],steps,height);
	BezConic([22, 26], [20, 26], [19.0, 25.0],steps,height);
	BezConic([19.0, 25.0], [18, 24], [17.5, 23.0],steps,height);
	BezConic([17.5, 23.0], [17, 22], [16.5, 20.5],steps,height);
	BezConic([16.5, 20.5], [16, 19], [16, 17],steps,height);
}
}

module Candal_contour10x6f_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([16.5, 13.5], [17, 12], [17.5, 10.5],steps,height);
}
}

module Candal_contour10x6f(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x6f_skeleton(height);
			Candal_contour10x6f_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x6f_additive_curves(steps, height);
	}
}

module Candal_chunk10x6f(steps=2, height) {
	difference() {
		Candal_contour00x6f(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x6f(steps, height);
	}
}

Candal_bbox0x6f=[[3, -1], [42, 35]];

module Candal_letter0x6f(steps=2, height) {
	Candal_chunk10x6f(steps, height);
} //end skeleton

module Candal_contour00x70_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 34], [12.0, 34.0], [19, 34], 
		[18, 32], [18.0, 30.5], [18, 29], 
		[18, 28], [19, 29], [20.0, 30.5], 
		[21, 32], [23.0, 33.0], [25, 34], 
		[26.5, 34.5], [28, 35], [30, 35], 
		[33, 35], [35.5, 34.0], [38, 33], 
		[40.0, 30.5], [42, 28], [43.0, 25.0], 
		[44, 22], [44, 17], [44, 12], 
		[42.5, 8.5], [41, 5], [39.0, 3.0], 
		[37, 1], [34.5, 0.0], [32, -1], 
		[30, -1], [28, -1], [26.0, -0.5], 
		[24, 0], [22.5, 0.5], [21, 1], 
		[20.0, 2.0], [19, 3], [18, 4], 
		[18.0, -5.0], [18, -14], [11.5, -14.0], 
		[5, -14],[5.0, 10.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 34], [12.0, 34.0], [19, 34], 
		[18, 32], [18.0, 30.5], [18, 29], 
		[18, 28], [19, 29], [20.0, 30.5], 
		[21, 32], [23.0, 33.0], [25, 34], 
		[26.5, 34.5], [28, 35], [30, 35], 
		[33, 35], [35.5, 34.0], [38, 33], 
		[40.0, 30.5], [42, 28], [43.0, 25.0], 
		[44, 22], [44, 17], [44, 12], 
		[42.5, 8.5], [41, 5], [39.0, 3.0], 
		[37, 1], [34.5, 0.0], [32, -1], 
		[30, -1], [28, -1], [26.0, -0.5], 
		[24, 0], [22.5, 0.5], [21, 1], 
		[20.0, 2.0], [19, 3], [18, 4], 
		[18.0, -5.0], [18, -14], [11.5, -14.0], 
		[5, -14],[5.0, 10.0], ]);
}}}

module Candal_contour00x70_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([19, 34], [18, 32], [18.0, 30.5],steps,height);
	BezConic([18.0, 30.5], [18, 29], [18, 28],steps,height);
	BezConic([18, 28], [19, 29], [20.0, 30.5],steps,height);
}
}

module Candal_contour00x70_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([20.0, 30.5], [21, 32], [23.0, 33.0],steps,height);
	BezConic([23.0, 33.0], [25, 34], [26.5, 34.5],steps,height);
	BezConic([26.5, 34.5], [28, 35], [30, 35],steps,height);
	BezConic([30, 35], [33, 35], [35.5, 34.0],steps,height);
	BezConic([35.5, 34.0], [38, 33], [40.0, 30.5],steps,height);
	BezConic([40.0, 30.5], [42, 28], [43.0, 25.0],steps,height);
	BezConic([43.0, 25.0], [44, 22], [44, 17],steps,height);
	BezConic([44, 17], [44, 12], [42.5, 8.5],steps,height);
	BezConic([42.5, 8.5], [41, 5], [39.0, 3.0],steps,height);
	BezConic([39.0, 3.0], [37, 1], [34.5, 0.0],steps,height);
	BezConic([34.5, 0.0], [32, -1], [30, -1],steps,height);
	BezConic([30, -1], [28, -1], [26.0, -0.5],steps,height);
	BezConic([26.0, -0.5], [24, 0], [22.5, 0.5],steps,height);
	BezConic([22.5, 0.5], [21, 1], [20.0, 2.0],steps,height);
	BezConic([20.0, 2.0], [19, 3], [18, 4],steps,height);
}
}

module Candal_contour00x70(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x70_skeleton(height);
			Candal_contour00x70_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x70_subtractive_curves(steps, height);
	}
}

module Candal_contour10x70_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[18, 17], [18, 14], [19.0, 12.5], 
		[20, 11], [20.5, 10.0], [21, 9], 
		[22.5, 8.5], [24, 8], [25, 8], 
		[26, 8], [27.0, 8.5], [28, 9], 
		[29.0, 10.0], [30, 11], [30.5, 12.5], 
		[31, 14], [31, 17], [31, 19], 
		[30.5, 21.0], [30, 23], [29.0, 24.0], 
		[28, 25], [27.0, 25.5], [26, 26], 
		[25, 26], [24, 26], [22.5, 25.5], 
		[21, 25], [20.5, 24.0], [20, 23], 
		[19.0, 21.0],[18, 19], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[18, 17], [18, 14], [19.0, 12.5], 
		[20, 11], [20.5, 10.0], [21, 9], 
		[22.5, 8.5], [24, 8], [25, 8], 
		[26, 8], [27.0, 8.5], [28, 9], 
		[29.0, 10.0], [30, 11], [30.5, 12.5], 
		[31, 14], [31, 17], [31, 19], 
		[30.5, 21.0], [30, 23], [29.0, 24.0], 
		[28, 25], [27.0, 25.5], [26, 26], 
		[25, 26], [24, 26], [22.5, 25.5], 
		[21, 25], [20.5, 24.0], [20, 23], 
		[19.0, 21.0],[18, 19], ]);
}}}

module Candal_contour10x70_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 17], [18, 14], [19.0, 12.5],steps,height);
	BezConic([20.5, 10.0], [21, 9], [22.5, 8.5],steps,height);
	BezConic([22.5, 8.5], [24, 8], [25, 8],steps,height);
	BezConic([25, 8], [26, 8], [27.0, 8.5],steps,height);
	BezConic([27.0, 8.5], [28, 9], [29.0, 10.0],steps,height);
	BezConic([29.0, 10.0], [30, 11], [30.5, 12.5],steps,height);
	BezConic([30.5, 12.5], [31, 14], [31, 17],steps,height);
	BezConic([31, 17], [31, 19], [30.5, 21.0],steps,height);
	BezConic([30.5, 21.0], [30, 23], [29.0, 24.0],steps,height);
	BezConic([29.0, 24.0], [28, 25], [27.0, 25.5],steps,height);
	BezConic([27.0, 25.5], [26, 26], [25, 26],steps,height);
	BezConic([25, 26], [24, 26], [22.5, 25.5],steps,height);
	BezConic([22.5, 25.5], [21, 25], [20.5, 24.0],steps,height);
	BezConic([20.5, 24.0], [20, 23], [19.0, 21.0],steps,height);
	BezConic([19.0, 21.0], [18, 19], [18, 17],steps,height);
}
}

module Candal_contour10x70_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([19.0, 12.5], [20, 11], [20.5, 10.0],steps,height);
}
}

module Candal_contour10x70(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x70_skeleton(height);
			Candal_contour10x70_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x70_additive_curves(steps, height);
	}
}

module Candal_chunk10x70(steps=2, height) {
	difference() {
		Candal_contour00x70(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x70(steps, height);
	}
}

Candal_bbox0x70=[[5, -14], [44, 35]];

module Candal_letter0x70(steps=2, height) {
	Candal_chunk10x70(steps, height);
} //end skeleton

module Candal_contour00x71_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[29, -14], [29.0, -5.0], [29, 4], 
		[28, 3], [27.0, 2.0], [26, 1], 
		[24.5, 0.5], [23, 0], [21.0, -0.5], 
		[19, -1], [17, -1], [15, -1], 
		[12.0, 0.0], [9, 1], [7.0, 3.0], 
		[5, 5], [4.0, 8.5], [3, 12], 
		[3, 17], [3, 22], [4.0, 25.0], 
		[5, 28], [7.0, 30.5], [9, 33], 
		[11.5, 34.0], [14, 35], [17, 35], 
		[19, 35], [20.5, 34.5], [22, 34], 
		[23.5, 33.0], [25, 32], [26.5, 31.0], 
		[28, 30], [29, 29], [29.0, 31.5], 
		[29, 34], [35.5, 34.0], [42, 34], 
		[42.0, 10.0], [42, -14], [35.5, -14.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[29, -14], [29.0, -5.0], [29, 4], 
		[28, 3], [27.0, 2.0], [26, 1], 
		[24.5, 0.5], [23, 0], [21.0, -0.5], 
		[19, -1], [17, -1], [15, -1], 
		[12.0, 0.0], [9, 1], [7.0, 3.0], 
		[5, 5], [4.0, 8.5], [3, 12], 
		[3, 17], [3, 22], [4.0, 25.0], 
		[5, 28], [7.0, 30.5], [9, 33], 
		[11.5, 34.0], [14, 35], [17, 35], 
		[19, 35], [20.5, 34.5], [22, 34], 
		[23.5, 33.0], [25, 32], [26.5, 31.0], 
		[28, 30], [29, 29], [29.0, 31.5], 
		[29, 34], [35.5, 34.0], [42, 34], 
		[42.0, 10.0], [42, -14], [35.5, -14.0], 
		 ]);
}}}

module Candal_contour00x71_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29, 4], [28, 3], [27.0, 2.0],steps,height);
	BezConic([23.5, 33.0], [25, 32], [26.5, 31.0],steps,height);
}
}

module Candal_contour00x71_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([27.0, 2.0], [26, 1], [24.5, 0.5],steps,height);
	BezConic([24.5, 0.5], [23, 0], [21.0, -0.5],steps,height);
	BezConic([21.0, -0.5], [19, -1], [17, -1],steps,height);
	BezConic([17, -1], [15, -1], [12.0, 0.0],steps,height);
	BezConic([12.0, 0.0], [9, 1], [7.0, 3.0],steps,height);
	BezConic([7.0, 3.0], [5, 5], [4.0, 8.5],steps,height);
	BezConic([4.0, 8.5], [3, 12], [3, 17],steps,height);
	BezConic([3, 17], [3, 22], [4.0, 25.0],steps,height);
	BezConic([4.0, 25.0], [5, 28], [7.0, 30.5],steps,height);
	BezConic([7.0, 30.5], [9, 33], [11.5, 34.0],steps,height);
	BezConic([11.5, 34.0], [14, 35], [17, 35],steps,height);
	BezConic([17, 35], [19, 35], [20.5, 34.5],steps,height);
	BezConic([20.5, 34.5], [22, 34], [23.5, 33.0],steps,height);
	BezConic([26.5, 31.0], [28, 30], [29, 29],steps,height);
}
}

module Candal_contour00x71(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x71_skeleton(height);
			Candal_contour00x71_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x71_subtractive_curves(steps, height);
	}
}

module Candal_contour10x71_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[16, 17], [16, 14], [16.5, 12.5], 
		[17, 11], [18.0, 10.0], [19, 9], 
		[20.0, 8.5], [21, 8], [22, 8], 
		[23, 8], [24.5, 8.5], [26, 9], 
		[27.0, 10.0], [28, 11], [28.5, 12.5], 
		[29, 14], [29, 17], [29, 19], 
		[28.5, 21.0], [28, 23], [27.0, 24.0], 
		[26, 25], [24.5, 25.5], [23, 26], 
		[22, 26], [21, 26], [20.0, 25.5], 
		[19, 25], [18.0, 24.0], [17, 23], 
		[16.5, 21.0],[16, 19], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[16, 17], [16, 14], [16.5, 12.5], 
		[17, 11], [18.0, 10.0], [19, 9], 
		[20.0, 8.5], [21, 8], [22, 8], 
		[23, 8], [24.5, 8.5], [26, 9], 
		[27.0, 10.0], [28, 11], [28.5, 12.5], 
		[29, 14], [29, 17], [29, 19], 
		[28.5, 21.0], [28, 23], [27.0, 24.0], 
		[26, 25], [24.5, 25.5], [23, 26], 
		[22, 26], [21, 26], [20.0, 25.5], 
		[19, 25], [18.0, 24.0], [17, 23], 
		[16.5, 21.0],[16, 19], ]);
}}}

module Candal_contour10x71_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([16, 17], [16, 14], [16.5, 12.5],steps,height);
	BezConic([16.5, 12.5], [17, 11], [18.0, 10.0],steps,height);
	BezConic([18.0, 10.0], [19, 9], [20.0, 8.5],steps,height);
	BezConic([20.0, 8.5], [21, 8], [22, 8],steps,height);
	BezConic([22, 8], [23, 8], [24.5, 8.5],steps,height);
	BezConic([24.5, 8.5], [26, 9], [27.0, 10.0],steps,height);
	BezConic([27.0, 10.0], [28, 11], [28.5, 12.5],steps,height);
	BezConic([28.5, 12.5], [29, 14], [29, 17],steps,height);
	BezConic([29, 17], [29, 19], [28.5, 21.0],steps,height);
	BezConic([28.5, 21.0], [28, 23], [27.0, 24.0],steps,height);
	BezConic([27.0, 24.0], [26, 25], [24.5, 25.5],steps,height);
	BezConic([24.5, 25.5], [23, 26], [22, 26],steps,height);
	BezConic([22, 26], [21, 26], [20.0, 25.5],steps,height);
	BezConic([20.0, 25.5], [19, 25], [18.0, 24.0],steps,height);
	BezConic([18.0, 24.0], [17, 23], [16.5, 21.0],steps,height);
	BezConic([16.5, 21.0], [16, 19], [16, 17],steps,height);
}
}

module Candal_contour10x71_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour10x71(steps=2, height) {
	difference() {
		union() {
			Candal_contour10x71_skeleton(height);
			Candal_contour10x71_subtractive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x71_additive_curves(steps, height);
	}
}

module Candal_chunk10x71(steps=2, height) {
	difference() {
		Candal_contour00x71(steps, height);
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour10x71(steps, height);
	}
}

Candal_bbox0x71=[[3, -14], [42, 35]];

module Candal_letter0x71(steps=2, height) {
	Candal_chunk10x71(steps, height);
} //end skeleton

module Candal_contour00x72_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[5, 34], [11.5, 34.0], [18, 34], 
		[18, 33], [18.0, 32.0], [18, 31], 
		[18.0, 30.0], [18, 29], [18.0, 28.0], 
		[18, 27], [18, 26], [18, 27], 
		[19.0, 28.5], [20, 30], [21.5, 31.5], 
		[23, 33], [24.5, 34.0], [26, 35], 
		[29, 35], [29, 35], [29.5, 34.5], 
		[30, 34], [30.5, 34.0], [31, 34], 
		[31.5, 34.0], [32, 34], [32, 34], 
		[31.5, 27.5], [31, 21], [30, 21], 
		[28.0, 21.5], [26, 22], [25, 22], 
		[24, 22], [22.5, 21.5], [21, 21], 
		[20.5, 20.5], [20, 20], [19.5, 19.0], 
		[19, 18], [18, 18], [18.0, 9.0], 
		[18, 0], [11.5, 0.0], [5, 0], 
		[5.0, 17.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[5, 34], [11.5, 34.0], [18, 34], 
		[18, 33], [18.0, 32.0], [18, 31], 
		[18.0, 30.0], [18, 29], [18.0, 28.0], 
		[18, 27], [18, 26], [18, 27], 
		[19.0, 28.5], [20, 30], [21.5, 31.5], 
		[23, 33], [24.5, 34.0], [26, 35], 
		[29, 35], [29, 35], [29.5, 34.5], 
		[30, 34], [30.5, 34.0], [31, 34], 
		[31.5, 34.0], [32, 34], [32, 34], 
		[31.5, 27.5], [31, 21], [30, 21], 
		[28.0, 21.5], [26, 22], [25, 22], 
		[24, 22], [22.5, 21.5], [21, 21], 
		[20.5, 20.5], [20, 20], [19.5, 19.0], 
		[19, 18], [18, 18], [18.0, 9.0], 
		[18, 0], [11.5, 0.0], [5, 0], 
		[5.0, 17.0], ]);
}}}

module Candal_contour00x72_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 34], [18, 33], [18.0, 32.0],steps,height);
	BezConic([18.0, 32.0], [18, 31], [18.0, 30.0],steps,height);
	BezConic([18.0, 30.0], [18, 29], [18.0, 28.0],steps,height);
	BezConic([18.0, 28.0], [18, 27], [18, 26],steps,height);
	BezConic([29.5, 34.5], [30, 34], [30.5, 34.0],steps,height);
	BezConic([30.5, 34.0], [31, 34], [31.5, 34.0],steps,height);
	BezConic([31.5, 34.0], [32, 34], [32, 34],steps,height);
	BezConic([28.0, 21.5], [26, 22], [25, 22],steps,height);
	BezConic([25, 22], [24, 22], [22.5, 21.5],steps,height);
	BezConic([22.5, 21.5], [21, 21], [20.5, 20.5],steps,height);
	BezConic([20.5, 20.5], [20, 20], [19.5, 19.0],steps,height);
}
}

module Candal_contour00x72_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([18, 26], [18, 27], [19.0, 28.5],steps,height);
	BezConic([19.0, 28.5], [20, 30], [21.5, 31.5],steps,height);
	BezConic([21.5, 31.5], [23, 33], [24.5, 34.0],steps,height);
	BezConic([24.5, 34.0], [26, 35], [29, 35],steps,height);
	BezConic([29, 35], [29, 35], [29.5, 34.5],steps,height);
	BezConic([31, 21], [30, 21], [28.0, 21.5],steps,height);
	BezConic([19.5, 19.0], [19, 18], [18, 18],steps,height);
}
}

module Candal_contour00x72(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x72_skeleton(height);
			Candal_contour00x72_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x72_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x72(steps=2, height) {
	difference() {
		Candal_contour00x72(steps, height);
		
	}
}

Candal_bbox0x72=[[5, 0], [32, 35]];

module Candal_letter0x72(steps=2, height) {
	Candal_chunk10x72(steps, height);
} //end skeleton

module Candal_contour00x73_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[31, 24], [28, 25], [25.0, 26.0], 
		[22, 27], [20, 27], [17, 27], 
		[16.0, 26.5], [15, 26], [15, 25], 
		[15, 24], [16.5, 23.0], [18, 22], 
		[21, 22], [24, 21], [26.5, 20.0], 
		[29, 19], [30.5, 17.5], [32, 16], 
		[32.5, 14.5], [33, 13], [33, 10], 
		[33, 8], [32.0, 6.0], [31, 4], 
		[29.5, 2.5], [28, 1], [25.0, 0.0], 
		[22, -1], [18, -1], [14, -1], 
		[10.5, -0.5], [7, 0], [4, 1], 
		[4.0, 6.0], [4, 11], [7, 10], 
		[10.0, 9.0], [13, 8], [16, 8], 
		[22, 8], [22, 10], [22, 11], 
		[21.5, 11.0], [21, 11], [20.5, 11.5], 
		[20, 12], [18.5, 12.0], [17, 12], 
		[16, 13], [13, 14], [10.5, 15.0], 
		[8, 16], [6.5, 17.0], [5, 18], 
		[4.0, 20.0], [3, 22], [3, 25], 
		[3, 27], [4.0, 28.5], [5, 30], 
		[7.0, 31.5], [9, 33], [11.5, 34.0], 
		[14, 35], [18, 35], [20, 35], 
		[22.0, 34.5], [24, 34], [25.5, 34.0], 
		[27, 34], [28.5, 33.5], [30, 33], 
		[32, 33],[31.5, 28.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[31, 24], [28, 25], [25.0, 26.0], 
		[22, 27], [20, 27], [17, 27], 
		[16.0, 26.5], [15, 26], [15, 25], 
		[15, 24], [16.5, 23.0], [18, 22], 
		[21, 22], [24, 21], [26.5, 20.0], 
		[29, 19], [30.5, 17.5], [32, 16], 
		[32.5, 14.5], [33, 13], [33, 10], 
		[33, 8], [32.0, 6.0], [31, 4], 
		[29.5, 2.5], [28, 1], [25.0, 0.0], 
		[22, -1], [18, -1], [14, -1], 
		[10.5, -0.5], [7, 0], [4, 1], 
		[4.0, 6.0], [4, 11], [7, 10], 
		[10.0, 9.0], [13, 8], [16, 8], 
		[22, 8], [22, 10], [22, 11], 
		[21.5, 11.0], [21, 11], [20.5, 11.5], 
		[20, 12], [18.5, 12.0], [17, 12], 
		[16, 13], [13, 14], [10.5, 15.0], 
		[8, 16], [6.5, 17.0], [5, 18], 
		[4.0, 20.0], [3, 22], [3, 25], 
		[3, 27], [4.0, 28.5], [5, 30], 
		[7.0, 31.5], [9, 33], [11.5, 34.0], 
		[14, 35], [18, 35], [20, 35], 
		[22.0, 34.5], [24, 34], [25.5, 34.0], 
		[27, 34], [28.5, 33.5], [30, 33], 
		[32, 33],[31.5, 28.5], ]);
}}}

module Candal_contour00x73_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([31, 24], [28, 25], [25.0, 26.0],steps,height);
	BezConic([25.0, 26.0], [22, 27], [20, 27],steps,height);
	BezConic([20, 27], [17, 27], [16.0, 26.5],steps,height);
	BezConic([16.0, 26.5], [15, 26], [15, 25],steps,height);
	BezConic([15, 25], [15, 24], [16.5, 23.0],steps,height);
	BezConic([16.5, 23.0], [18, 22], [21, 22],steps,height);
	BezConic([4, 11], [7, 10], [10.0, 9.0],steps,height);
	BezConic([10.0, 9.0], [13, 8], [16, 8],steps,height);
	BezConic([16, 8], [22, 8], [22, 10],steps,height);
	BezConic([22, 10], [22, 11], [21.5, 11.0],steps,height);
	BezConic([20.5, 11.5], [20, 12], [18.5, 12.0],steps,height);
	BezConic([22.0, 34.5], [24, 34], [25.5, 34.0],steps,height);
	BezConic([28.5, 33.5], [30, 33], [32, 33],steps,height);
}
}

module Candal_contour00x73_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([21, 22], [24, 21], [26.5, 20.0],steps,height);
	BezConic([26.5, 20.0], [29, 19], [30.5, 17.5],steps,height);
	BezConic([30.5, 17.5], [32, 16], [32.5, 14.5],steps,height);
	BezConic([32.5, 14.5], [33, 13], [33, 10],steps,height);
	BezConic([33, 10], [33, 8], [32.0, 6.0],steps,height);
	BezConic([32.0, 6.0], [31, 4], [29.5, 2.5],steps,height);
	BezConic([29.5, 2.5], [28, 1], [25.0, 0.0],steps,height);
	BezConic([25.0, 0.0], [22, -1], [18, -1],steps,height);
	BezConic([18, -1], [14, -1], [10.5, -0.5],steps,height);
	BezConic([10.5, -0.5], [7, 0], [4, 1],steps,height);
	BezConic([21.5, 11.0], [21, 11], [20.5, 11.5],steps,height);
	BezConic([18.5, 12.0], [17, 12], [16, 13],steps,height);
	BezConic([16, 13], [13, 14], [10.5, 15.0],steps,height);
	BezConic([10.5, 15.0], [8, 16], [6.5, 17.0],steps,height);
	BezConic([6.5, 17.0], [5, 18], [4.0, 20.0],steps,height);
	BezConic([4.0, 20.0], [3, 22], [3, 25],steps,height);
	BezConic([3, 25], [3, 27], [4.0, 28.5],steps,height);
	BezConic([4.0, 28.5], [5, 30], [7.0, 31.5],steps,height);
	BezConic([7.0, 31.5], [9, 33], [11.5, 34.0],steps,height);
	BezConic([11.5, 34.0], [14, 35], [18, 35],steps,height);
	BezConic([18, 35], [20, 35], [22.0, 34.5],steps,height);
	BezConic([25.5, 34.0], [27, 34], [28.5, 33.5],steps,height);
}
}

module Candal_contour00x73(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x73_skeleton(height);
			Candal_contour00x73_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x73_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x73(steps=2, height) {
	difference() {
		Candal_contour00x73(steps, height);
		
	}
}

Candal_bbox0x73=[[3, -1], [33, 35]];

module Candal_letter0x73(steps=2, height) {
	Candal_chunk10x73(steps, height);
} //end skeleton

module Candal_contour00x74_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[22, -1], [19, -1], [16.0, 0.0], 
		[13, 1], [11.0, 2.5], [9, 4], 
		[8.0, 6.5], [7, 9], [7, 14], 
		[7.0, 20.0], [7, 26], [4.0, 26.0], 
		[1, 26], [1.0, 27.0], [1, 28], 
		[8.5, 36.0], [16, 44], [18.5, 44.0], 
		[21, 44], [21.0, 39.0], [21, 34], 
		[26.0, 34.0], [31, 34], [30, 32], 
		[30.0, 30.0], [30, 28], [30, 26], 
		[25.5, 26.0], [21, 26], [21.0, 20.0], 
		[21, 14], [21, 13], [21.0, 11.5], 
		[21, 10], [21.5, 9.5], [22, 9], 
		[23.0, 8.5], [24, 8], [26, 8], 
		[27, 8], [28.0, 8.0], [29, 8], 
		[31, 9], [31.5, 5.0], [32, 1], 
		[30, 0], [27.5, -0.5], [25, -1], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[22, -1], [19, -1], [16.0, 0.0], 
		[13, 1], [11.0, 2.5], [9, 4], 
		[8.0, 6.5], [7, 9], [7, 14], 
		[7.0, 20.0], [7, 26], [4.0, 26.0], 
		[1, 26], [1.0, 27.0], [1, 28], 
		[8.5, 36.0], [16, 44], [18.5, 44.0], 
		[21, 44], [21.0, 39.0], [21, 34], 
		[26.0, 34.0], [31, 34], [30, 32], 
		[30.0, 30.0], [30, 28], [30, 26], 
		[25.5, 26.0], [21, 26], [21.0, 20.0], 
		[21, 14], [21, 13], [21.0, 11.5], 
		[21, 10], [21.5, 9.5], [22, 9], 
		[23.0, 8.5], [24, 8], [26, 8], 
		[27, 8], [28.0, 8.0], [29, 8], 
		[31, 9], [31.5, 5.0], [32, 1], 
		[30, 0], [27.5, -0.5], [25, -1], 
		 ]);
}}}

module Candal_contour00x74_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([31, 34], [30, 32], [30.0, 30.0],steps,height);
	BezConic([30.0, 30.0], [30, 28], [30, 26],steps,height);
	BezConic([21, 14], [21, 13], [21.0, 11.5],steps,height);
	BezConic([21.0, 11.5], [21, 10], [21.5, 9.5],steps,height);
	BezConic([21.5, 9.5], [22, 9], [23.0, 8.5],steps,height);
	BezConic([23.0, 8.5], [24, 8], [26, 8],steps,height);
	BezConic([26, 8], [27, 8], [28.0, 8.0],steps,height);
	BezConic([28.0, 8.0], [29, 8], [31, 9],steps,height);
}
}

module Candal_contour00x74_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([22, -1], [19, -1], [16.0, 0.0],steps,height);
	BezConic([16.0, 0.0], [13, 1], [11.0, 2.5],steps,height);
	BezConic([11.0, 2.5], [9, 4], [8.0, 6.5],steps,height);
	BezConic([8.0, 6.5], [7, 9], [7, 14],steps,height);
	BezConic([32, 1], [30, 0], [27.5, -0.5],steps,height);
	BezConic([27.5, -0.5], [25, -1], [22, -1],steps,height);
}
}

module Candal_contour00x74(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x74_skeleton(height);
			Candal_contour00x74_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x74_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x74(steps=2, height) {
	difference() {
		Candal_contour00x74(steps, height);
		
	}
}

Candal_bbox0x74=[[1, -1], [32, 44]];

module Candal_letter0x74(steps=2, height) {
	Candal_chunk10x74(steps, height);
} //end skeleton

module Candal_contour00x75_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[43, 0], [36.0, 0.0], [29, 0], 
		[29.0, 1.0], [29, 2], [29, 3], 
		[29.5, 4.5], [30, 6], [30, 7], 
		[29, 5], [27.5, 3.5], [26, 2], 
		[24.5, 1.0], [23, 0], [21.0, -0.5], 
		[19, -1], [17, -1], [14, -1], 
		[12.0, 0.0], [10, 1], [8.5, 2.5], 
		[7, 4], [6.0, 7.0], [5, 10], 
		[5, 14], [5.0, 24.0], [5, 34], 
		[11.5, 34.0], [18, 34], [18.0, 24.5], 
		[18, 15], [18, 13], [18.5, 11.5], 
		[19, 10], [19.5, 9.5], [20, 9], 
		[21.0, 8.5], [22, 8], [23, 8], 
		[24, 8], [25.0, 8.5], [26, 9], 
		[27.0, 9.5], [28, 10], [28.5, 11.0], 
		[29, 12], [29, 13], [29.0, 23.5], 
		[29, 34], [36.0, 34.0], [43, 34], 
		[43.0, 17.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[43, 0], [36.0, 0.0], [29, 0], 
		[29.0, 1.0], [29, 2], [29, 3], 
		[29.5, 4.5], [30, 6], [30, 7], 
		[29, 5], [27.5, 3.5], [26, 2], 
		[24.5, 1.0], [23, 0], [21.0, -0.5], 
		[19, -1], [17, -1], [14, -1], 
		[12.0, 0.0], [10, 1], [8.5, 2.5], 
		[7, 4], [6.0, 7.0], [5, 10], 
		[5, 14], [5.0, 24.0], [5, 34], 
		[11.5, 34.0], [18, 34], [18.0, 24.5], 
		[18, 15], [18, 13], [18.5, 11.5], 
		[19, 10], [19.5, 9.5], [20, 9], 
		[21.0, 8.5], [22, 8], [23, 8], 
		[24, 8], [25.0, 8.5], [26, 9], 
		[27.0, 9.5], [28, 10], [28.5, 11.0], 
		[29, 12], [29, 13], [29.0, 23.5], 
		[29, 34], [36.0, 34.0], [43, 34], 
		[43.0, 17.0], ]);
}}}

module Candal_contour00x75_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29.5, 4.5], [30, 6], [30, 7],steps,height);
	BezConic([18, 15], [18, 13], [18.5, 11.5],steps,height);
	BezConic([18.5, 11.5], [19, 10], [19.5, 9.5],steps,height);
	BezConic([19.5, 9.5], [20, 9], [21.0, 8.5],steps,height);
	BezConic([21.0, 8.5], [22, 8], [23, 8],steps,height);
	BezConic([23, 8], [24, 8], [25.0, 8.5],steps,height);
	BezConic([25.0, 8.5], [26, 9], [27.0, 9.5],steps,height);
	BezConic([27.0, 9.5], [28, 10], [28.5, 11.0],steps,height);
	BezConic([28.5, 11.0], [29, 12], [29, 13],steps,height);
}
}

module Candal_contour00x75_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29, 2], [29, 3], [29.5, 4.5],steps,height);
	BezConic([30, 7], [29, 5], [27.5, 3.5],steps,height);
	BezConic([27.5, 3.5], [26, 2], [24.5, 1.0],steps,height);
	BezConic([24.5, 1.0], [23, 0], [21.0, -0.5],steps,height);
	BezConic([21.0, -0.5], [19, -1], [17, -1],steps,height);
	BezConic([17, -1], [14, -1], [12.0, 0.0],steps,height);
	BezConic([12.0, 0.0], [10, 1], [8.5, 2.5],steps,height);
	BezConic([8.5, 2.5], [7, 4], [6.0, 7.0],steps,height);
	BezConic([6.0, 7.0], [5, 10], [5, 14],steps,height);
}
}

module Candal_contour00x75(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x75_skeleton(height);
			Candal_contour00x75_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x75_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x75(steps=2, height) {
	difference() {
		Candal_contour00x75(steps, height);
		
	}
}

Candal_bbox0x75=[[5, -1], [43, 34]];

module Candal_letter0x75(steps=2, height) {
	Candal_chunk10x75(steps, height);
} //end skeleton

module Candal_contour00x76_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[1, 34], [8.5, 34.0], [16, 34], 
		[19.0, 21.0], [22, 8], [25.0, 21.0], 
		[28, 34], [34.0, 34.0], [40, 34], 
		[34.5, 17.0], [29, 0], [20.5, 0.0], 
		[12, 0],[6.5, 17.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[1, 34], [8.5, 34.0], [16, 34], 
		[19.0, 21.0], [22, 8], [25.0, 21.0], 
		[28, 34], [34.0, 34.0], [40, 34], 
		[34.5, 17.0], [29, 0], [20.5, 0.0], 
		[12, 0],[6.5, 17.0], ]);
}}}

module Candal_contour00x76_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x76_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x76(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x76_skeleton(height);
			Candal_contour00x76_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x76_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x76(steps=2, height) {
	difference() {
		Candal_contour00x76(steps, height);
		
	}
}

Candal_bbox0x76=[[1, 0], [40, 34]];

module Candal_letter0x76(steps=2, height) {
	Candal_chunk10x76(steps, height);
} //end skeleton

module Candal_contour00x77_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[2, 34], [9.0, 34.0], [16, 34], 
		[18.5, 21.0], [21, 8], [24.0, 21.0], 
		[27, 34], [34.0, 34.0], [41, 34], 
		[44.0, 21.0], [47, 8], [48.5, 21.0], 
		[50, 34], [55.5, 34.0], [61, 34], 
		[57.5, 17.0], [54, 0], [45.5, 0.0], 
		[37, 0], [34.5, 11.0], [32, 22], 
		[30.0, 11.0], [28, 0], [19.0, 0.0], 
		[10, 0],[6.0, 17.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[2, 34], [9.0, 34.0], [16, 34], 
		[18.5, 21.0], [21, 8], [24.0, 21.0], 
		[27, 34], [34.0, 34.0], [41, 34], 
		[44.0, 21.0], [47, 8], [48.5, 21.0], 
		[50, 34], [55.5, 34.0], [61, 34], 
		[57.5, 17.0], [54, 0], [45.5, 0.0], 
		[37, 0], [34.5, 11.0], [32, 22], 
		[30.0, 11.0], [28, 0], [19.0, 0.0], 
		[10, 0],[6.0, 17.0], ]);
}}}

module Candal_contour00x77_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x77_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x77(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x77_skeleton(height);
			Candal_contour00x77_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x77_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x77(steps=2, height) {
	difference() {
		Candal_contour00x77(steps, height);
		
	}
}

Candal_bbox0x77=[[2, 0], [61, 34]];

module Candal_letter0x77(steps=2, height) {
	Candal_chunk10x77(steps, height);
} //end skeleton

module Candal_contour00x78_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[30, 18], [36.0, 9.0], [42, 0], 
		[34.0, 0.0], [26, 0], [23.0, 5.5], 
		[20, 11], [17.0, 5.5], [14, 0], 
		[8.5, 0.0], [3, 0], [7.5, 8.5], 
		[12, 17], [6.5, 25.5], [1, 34], 
		[8.5, 34.0], [16, 34], [19.0, 28.5], 
		[22, 23], [25.5, 28.5], [29, 34], 
		[34.5, 34.0], [40, 34], [35.0, 26.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[30, 18], [36.0, 9.0], [42, 0], 
		[34.0, 0.0], [26, 0], [23.0, 5.5], 
		[20, 11], [17.0, 5.5], [14, 0], 
		[8.5, 0.0], [3, 0], [7.5, 8.5], 
		[12, 17], [6.5, 25.5], [1, 34], 
		[8.5, 34.0], [16, 34], [19.0, 28.5], 
		[22, 23], [25.5, 28.5], [29, 34], 
		[34.5, 34.0], [40, 34], [35.0, 26.0], 
		 ]);
}}}

module Candal_contour00x78_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x78_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x78(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x78_skeleton(height);
			Candal_contour00x78_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x78_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x78(steps=2, height) {
	difference() {
		Candal_contour00x78(steps, height);
		
	}
}

Candal_bbox0x78=[[1, 0], [42, 34]];

module Candal_letter0x78(steps=2, height) {
	Candal_chunk10x78(steps, height);
} //end skeleton

module Candal_contour00x79_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[27, 34], [33.5, 34.0], [40, 34], 
		[40.0, 19.5], [40, 5], [40, 1], 
		[39.5, -1.5], [39, -4], [37.5, -6.5], 
		[36, -9], [34.0, -10.5], [32, -12], 
		[30.0, -13.0], [28, -14], [25.5, -14.5], 
		[23, -15], [21, -15], [17, -15], 
		[14.0, -14.5], [11, -14], [8, -14], 
		[8.5, -10.0], [9, -6], [12, -6], 
		[14.5, -6.5], [17, -7], [18, -7], 
		[21, -7], [23.0, -6.0], [25, -5], 
		[26, -3], [26, -2], [26.5, -1.0], 
		[27, 0], [27.0, 1.0], [27, 2], 
		[27.0, 3.0], [27, 4], [27, 5], 
		[27, 4], [25.5, 3.0], [24, 2], 
		[23.0, 1.5], [22, 1], [20.0, 0.5], 
		[18, 0], [17, 0], [15, 0], 
		[12.5, 1.0], [10, 2], [8.5, 3.5], 
		[7, 5], [6.0, 7.5], [5, 10], 
		[5, 14], [5.0, 24.0], [5, 34], 
		[11.0, 34.0], [17, 34], [17.0, 24.0], 
		[17, 14], [17, 12], [17.0, 11.0], 
		[17, 10], [18.0, 9.5], [19, 9], 
		[20.0, 8.5], [21, 8], [22, 8], 
		[23, 8], [23.5, 8.0], [24, 8], 
		[25.0, 9.0], [26, 10], [26.5, 10.5], 
		[27, 11], [27, 12], [27.0, 23.0], 
		 ]);
}else {	linear_extrude(height=height) polygon( points=[
		[27, 34], [33.5, 34.0], [40, 34], 
		[40.0, 19.5], [40, 5], [40, 1], 
		[39.5, -1.5], [39, -4], [37.5, -6.5], 
		[36, -9], [34.0, -10.5], [32, -12], 
		[30.0, -13.0], [28, -14], [25.5, -14.5], 
		[23, -15], [21, -15], [17, -15], 
		[14.0, -14.5], [11, -14], [8, -14], 
		[8.5, -10.0], [9, -6], [12, -6], 
		[14.5, -6.5], [17, -7], [18, -7], 
		[21, -7], [23.0, -6.0], [25, -5], 
		[26, -3], [26, -2], [26.5, -1.0], 
		[27, 0], [27.0, 1.0], [27, 2], 
		[27.0, 3.0], [27, 4], [27, 5], 
		[27, 4], [25.5, 3.0], [24, 2], 
		[23.0, 1.5], [22, 1], [20.0, 0.5], 
		[18, 0], [17, 0], [15, 0], 
		[12.5, 1.0], [10, 2], [8.5, 3.5], 
		[7, 5], [6.0, 7.5], [5, 10], 
		[5, 14], [5.0, 24.0], [5, 34], 
		[11.0, 34.0], [17, 34], [17.0, 24.0], 
		[17, 14], [17, 12], [17.0, 11.0], 
		[17, 10], [18.0, 9.5], [19, 9], 
		[20.0, 8.5], [21, 8], [22, 8], 
		[23, 8], [23.5, 8.0], [24, 8], 
		[25.0, 9.0], [26, 10], [26.5, 10.5], 
		[27, 11], [27, 12], [27.0, 23.0], 
		 ]);
}}}

module Candal_contour00x79_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([14.0, -14.5], [11, -14], [8, -14],steps,height);
	BezConic([14.5, -6.5], [17, -7], [18, -7],steps,height);
	BezConic([18, -7], [21, -7], [23.0, -6.0],steps,height);
	BezConic([23.0, -6.0], [25, -5], [26, -3],steps,height);
	BezConic([26.5, -1.0], [27, 0], [27.0, 1.0],steps,height);
	BezConic([27.0, 1.0], [27, 2], [27.0, 3.0],steps,height);
	BezConic([27.0, 3.0], [27, 4], [27, 5],steps,height);
	BezConic([17, 14], [17, 12], [17.0, 11.0],steps,height);
	BezConic([17.0, 11.0], [17, 10], [18.0, 9.5],steps,height);
	BezConic([18.0, 9.5], [19, 9], [20.0, 8.5],steps,height);
	BezConic([20.0, 8.5], [21, 8], [22, 8],steps,height);
	BezConic([22, 8], [23, 8], [23.5, 8.0],steps,height);
	BezConic([23.5, 8.0], [24, 8], [25.0, 9.0],steps,height);
	BezConic([25.0, 9.0], [26, 10], [26.5, 10.5],steps,height);
	BezConic([26.5, 10.5], [27, 11], [27, 12],steps,height);
}
}

module Candal_contour00x79_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([40, 5], [40, 1], [39.5, -1.5],steps,height);
	BezConic([39.5, -1.5], [39, -4], [37.5, -6.5],steps,height);
	BezConic([37.5, -6.5], [36, -9], [34.0, -10.5],steps,height);
	BezConic([34.0, -10.5], [32, -12], [30.0, -13.0],steps,height);
	BezConic([30.0, -13.0], [28, -14], [25.5, -14.5],steps,height);
	BezConic([25.5, -14.5], [23, -15], [21, -15],steps,height);
	BezConic([21, -15], [17, -15], [14.0, -14.5],steps,height);
	BezConic([9, -6], [12, -6], [14.5, -6.5],steps,height);
	BezConic([26, -3], [26, -2], [26.5, -1.0],steps,height);
	BezConic([27, 5], [27, 4], [25.5, 3.0],steps,height);
	BezConic([25.5, 3.0], [24, 2], [23.0, 1.5],steps,height);
	BezConic([23.0, 1.5], [22, 1], [20.0, 0.5],steps,height);
	BezConic([20.0, 0.5], [18, 0], [17, 0],steps,height);
	BezConic([17, 0], [15, 0], [12.5, 1.0],steps,height);
	BezConic([12.5, 1.0], [10, 2], [8.5, 3.5],steps,height);
	BezConic([8.5, 3.5], [7, 5], [6.0, 7.5],steps,height);
	BezConic([6.0, 7.5], [5, 10], [5, 14],steps,height);
}
}

module Candal_contour00x79(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x79_skeleton(height);
			Candal_contour00x79_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x79_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x79(steps=2, height) {
	difference() {
		Candal_contour00x79(steps, height);
		
	}
}

Candal_bbox0x79=[[5, -15], [40, 34]];

module Candal_letter0x79(steps=2, height) {
	Candal_chunk10x79(steps, height);
} //end skeleton

module Candal_contour00x7a_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[18, 8], [24.5, 8.0], [31, 8], 
		[30, 7], [30.0, 4.5], [30, 2], 
		[30, 0], [16.5, 0.0], [3, 0], 
		[3.0, 4.0], [3, 8], [9.0, 17.0], 
		[15, 26], [9.0, 26.0], [3, 26], 
		[3.0, 30.0], [3, 34], [16.5, 34.0], 
		[30, 34], [30.0, 30.0], [30, 26], 
		[24.0, 17.0], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[18, 8], [24.5, 8.0], [31, 8], 
		[30, 7], [30.0, 4.5], [30, 2], 
		[30, 0], [16.5, 0.0], [3, 0], 
		[3.0, 4.0], [3, 8], [9.0, 17.0], 
		[15, 26], [9.0, 26.0], [3, 26], 
		[3.0, 30.0], [3, 34], [16.5, 34.0], 
		[30, 34], [30.0, 30.0], [30, 26], 
		[24.0, 17.0], ]);
}}}

module Candal_contour00x7a_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([31, 8], [30, 7], [30.0, 4.5],steps,height);
	BezConic([30.0, 4.5], [30, 2], [30, 0],steps,height);
}
}

module Candal_contour00x7a_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x7a(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x7a_skeleton(height);
			Candal_contour00x7a_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x7a_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x7a(steps=2, height) {
	difference() {
		Candal_contour00x7a(steps, height);
		
	}
}

Candal_bbox0x7a=[[3, 0], [31, 34]];

module Candal_letter0x7a(steps=2, height) {
	Candal_chunk10x7a(steps, height);
} //end skeleton

module Candal_contour00x7b_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[12, 33], [12, 37], [13.0, 40.0], 
		[14, 43], [16.5, 45.5], [19, 48], 
		[22.0, 49.5], [25, 51], [29, 51], 
		[29.0, 47.5], [29, 44], [28, 44], 
		[27.5, 43.5], [27, 43], [26.5, 41.5], 
		[26, 40], [26.0, 38.5], [26, 37], 
		[26, 36], [26, 34], [25.5, 32.0], 
		[25, 30], [24.0, 28.5], [23, 27], 
		[21.0, 25.5], [19, 24], [17, 24], 
		[19, 23], [21.0, 21.5], [23, 20], 
		[24.0, 18.5], [25, 17], [25.5, 15.0], 
		[26, 13], [26, 11], [26, 10], 
		[26.0, 8.5], [26, 7], [26.5, 6.0], 
		[27, 5], [27.5, 4.5], [28, 4], 
		[29, 4], [29.0, 0.5], [29, -3], 
		[25, -3], [22.0, -2.0], [19, -1], 
		[16.5, 1.5], [14, 4], [13.0, 7.5], 
		[12, 11], [12, 15], [12, 16], 
		[11.5, 16.5], [11, 17], [10.5, 17.5], 
		[10, 18], [9.0, 18.5], [8, 19], 
		[7, 19], [7.0, 24.0], [7, 29], 
		[8, 29], [9.0, 29.0], [10, 29], 
		[10.5, 29.5], [11, 30], [11.5, 31.0], 
		[12, 32], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[12, 33], [12, 37], [13.0, 40.0], 
		[14, 43], [16.5, 45.5], [19, 48], 
		[22.0, 49.5], [25, 51], [29, 51], 
		[29.0, 47.5], [29, 44], [28, 44], 
		[27.5, 43.5], [27, 43], [26.5, 41.5], 
		[26, 40], [26.0, 38.5], [26, 37], 
		[26, 36], [26, 34], [25.5, 32.0], 
		[25, 30], [24.0, 28.5], [23, 27], 
		[21.0, 25.5], [19, 24], [17, 24], 
		[19, 23], [21.0, 21.5], [23, 20], 
		[24.0, 18.5], [25, 17], [25.5, 15.0], 
		[26, 13], [26, 11], [26, 10], 
		[26.0, 8.5], [26, 7], [26.5, 6.0], 
		[27, 5], [27.5, 4.5], [28, 4], 
		[29, 4], [29.0, 0.5], [29, -3], 
		[25, -3], [22.0, -2.0], [19, -1], 
		[16.5, 1.5], [14, 4], [13.0, 7.5], 
		[12, 11], [12, 15], [12, 16], 
		[11.5, 16.5], [11, 17], [10.5, 17.5], 
		[10, 18], [9.0, 18.5], [8, 19], 
		[7, 19], [7.0, 24.0], [7, 29], 
		[8, 29], [9.0, 29.0], [10, 29], 
		[10.5, 29.5], [11, 30], [11.5, 31.0], 
		[12, 32], ]);
}}}

module Candal_contour00x7b_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([29, 44], [28, 44], [27.5, 43.5],steps,height);
	BezConic([27.5, 43.5], [27, 43], [26.5, 41.5],steps,height);
	BezConic([26.5, 41.5], [26, 40], [26.0, 38.5],steps,height);
	BezConic([26.0, 38.5], [26, 37], [26, 36],steps,height);
	BezConic([26, 11], [26, 10], [26.0, 8.5],steps,height);
	BezConic([26.0, 8.5], [26, 7], [26.5, 6.0],steps,height);
	BezConic([26.5, 6.0], [27, 5], [27.5, 4.5],steps,height);
	BezConic([27.5, 4.5], [28, 4], [29, 4],steps,height);
	BezConic([12, 15], [12, 16], [11.5, 16.5],steps,height);
	BezConic([11.5, 16.5], [11, 17], [10.5, 17.5],steps,height);
	BezConic([10.5, 17.5], [10, 18], [9.0, 18.5],steps,height);
	BezConic([9.0, 18.5], [8, 19], [7, 19],steps,height);
	BezConic([7, 29], [8, 29], [9.0, 29.0],steps,height);
	BezConic([9.0, 29.0], [10, 29], [10.5, 29.5],steps,height);
	BezConic([10.5, 29.5], [11, 30], [11.5, 31.0],steps,height);
	BezConic([11.5, 31.0], [12, 32], [12, 33],steps,height);
}
}

module Candal_contour00x7b_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([12, 33], [12, 37], [13.0, 40.0],steps,height);
	BezConic([13.0, 40.0], [14, 43], [16.5, 45.5],steps,height);
	BezConic([16.5, 45.5], [19, 48], [22.0, 49.5],steps,height);
	BezConic([22.0, 49.5], [25, 51], [29, 51],steps,height);
	BezConic([26, 36], [26, 34], [25.5, 32.0],steps,height);
	BezConic([25.5, 32.0], [25, 30], [24.0, 28.5],steps,height);
	BezConic([24.0, 28.5], [23, 27], [21.0, 25.5],steps,height);
	BezConic([21.0, 25.5], [19, 24], [17, 24],steps,height);
	BezConic([17, 24], [19, 23], [21.0, 21.5],steps,height);
	BezConic([21.0, 21.5], [23, 20], [24.0, 18.5],steps,height);
	BezConic([24.0, 18.5], [25, 17], [25.5, 15.0],steps,height);
	BezConic([25.5, 15.0], [26, 13], [26, 11],steps,height);
	BezConic([29, -3], [25, -3], [22.0, -2.0],steps,height);
	BezConic([22.0, -2.0], [19, -1], [16.5, 1.5],steps,height);
	BezConic([16.5, 1.5], [14, 4], [13.0, 7.5],steps,height);
	BezConic([13.0, 7.5], [12, 11], [12, 15],steps,height);
}
}

module Candal_contour00x7b(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x7b_skeleton(height);
			Candal_contour00x7b_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x7b_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x7b(steps=2, height) {
	difference() {
		Candal_contour00x7b(steps, height);
		
	}
}

Candal_bbox0x7b=[[7, -3], [29, 51]];

module Candal_letter0x7b(steps=2, height) {
	Candal_chunk10x7b(steps, height);
} //end skeleton

module Candal_contour00x7c_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[7, 50], [13.5, 50.0], [20, 50], 
		[20.0, 23.5], [20, -3], [13.5, -3.0], 
		[7, -3],[7.0, 23.5], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[7, 50], [13.5, 50.0], [20, 50], 
		[20.0, 23.5], [20, -3], [13.5, -3.0], 
		[7, -3],[7.0, 23.5], ]);
}}}

module Candal_contour00x7c_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x7c_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
}
}

module Candal_contour00x7c(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x7c_skeleton(height);
			Candal_contour00x7c_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x7c_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x7c(steps=2, height) {
	difference() {
		Candal_contour00x7c(steps, height);
		
	}
}

Candal_bbox0x7c=[[7, -3], [20, 50]];

module Candal_letter0x7c(steps=2, height) {
	Candal_chunk10x7c(steps, height);
} //end skeleton

module Candal_contour00x7d_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[24, 33], [24, 32], [24.5, 31.0], 
		[25, 30], [25.5, 29.5], [26, 29], 
		[27.0, 29.0], [28, 29], [29, 29], 
		[29.0, 24.0], [29, 19], [28, 19], 
		[27.0, 18.5], [26, 18], [25.5, 17.5], 
		[25, 17], [24.5, 16.5], [24, 16], 
		[24, 15], [24, 11], [23.0, 7.5], 
		[22, 4], [20.0, 1.5], [18, -1], 
		[14.5, -2.0], [11, -3], [7, -3], 
		[7.0, 0.5], [7, 4], [8, 4], 
		[9.0, 4.5], [10, 5], [10.0, 6.0], 
		[10, 7], [10.0, 8.5], [10, 10], 
		[10, 11], [10, 13], [10.5, 15.0], 
		[11, 17], [12.5, 18.5], [14, 20], 
		[15.5, 21.5], [17, 23], [20, 24], 
		[17, 24], [15.5, 25.5], [14, 27], 
		[12.5, 28.5], [11, 30], [10.5, 32.0], 
		[10, 34], [10, 36], [10, 37], 
		[10.0, 38.5], [10, 40], [10.0, 41.5], 
		[10, 43], [9.0, 43.5], [8, 44], 
		[7, 44], [7.0, 47.5], [7, 51], 
		[11, 51], [14.5, 49.5], [18, 48], 
		[20.0, 45.5], [22, 43], [23.0, 40.0], 
		[24, 37], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[24, 33], [24, 32], [24.5, 31.0], 
		[25, 30], [25.5, 29.5], [26, 29], 
		[27.0, 29.0], [28, 29], [29, 29], 
		[29.0, 24.0], [29, 19], [28, 19], 
		[27.0, 18.5], [26, 18], [25.5, 17.5], 
		[25, 17], [24.5, 16.5], [24, 16], 
		[24, 15], [24, 11], [23.0, 7.5], 
		[22, 4], [20.0, 1.5], [18, -1], 
		[14.5, -2.0], [11, -3], [7, -3], 
		[7.0, 0.5], [7, 4], [8, 4], 
		[9.0, 4.5], [10, 5], [10.0, 6.0], 
		[10, 7], [10.0, 8.5], [10, 10], 
		[10, 11], [10, 13], [10.5, 15.0], 
		[11, 17], [12.5, 18.5], [14, 20], 
		[15.5, 21.5], [17, 23], [20, 24], 
		[17, 24], [15.5, 25.5], [14, 27], 
		[12.5, 28.5], [11, 30], [10.5, 32.0], 
		[10, 34], [10, 36], [10, 37], 
		[10.0, 38.5], [10, 40], [10.0, 41.5], 
		[10, 43], [9.0, 43.5], [8, 44], 
		[7, 44], [7.0, 47.5], [7, 51], 
		[11, 51], [14.5, 49.5], [18, 48], 
		[20.0, 45.5], [22, 43], [23.0, 40.0], 
		[24, 37], ]);
}}}

module Candal_contour00x7d_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 33], [24, 32], [24.5, 31.0],steps,height);
	BezConic([24.5, 31.0], [25, 30], [25.5, 29.5],steps,height);
	BezConic([25.5, 29.5], [26, 29], [27.0, 29.0],steps,height);
	BezConic([27.0, 29.0], [28, 29], [29, 29],steps,height);
	BezConic([29, 19], [28, 19], [27.0, 18.5],steps,height);
	BezConic([27.0, 18.5], [26, 18], [25.5, 17.5],steps,height);
	BezConic([25.5, 17.5], [25, 17], [24.5, 16.5],steps,height);
	BezConic([24.5, 16.5], [24, 16], [24, 15],steps,height);
	BezConic([7, 4], [8, 4], [9.0, 4.5],steps,height);
	BezConic([9.0, 4.5], [10, 5], [10.0, 6.0],steps,height);
	BezConic([10.0, 6.0], [10, 7], [10.0, 8.5],steps,height);
	BezConic([10.0, 8.5], [10, 10], [10, 11],steps,height);
	BezConic([15.5, 25.5], [14, 27], [12.5, 28.5],steps,height);
	BezConic([10, 36], [10, 37], [10.0, 38.5],steps,height);
	BezConic([10.0, 38.5], [10, 40], [10.0, 41.5],steps,height);
	BezConic([10.0, 41.5], [10, 43], [9.0, 43.5],steps,height);
	BezConic([9.0, 43.5], [8, 44], [7, 44],steps,height);
}
}

module Candal_contour00x7d_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([24, 15], [24, 11], [23.0, 7.5],steps,height);
	BezConic([23.0, 7.5], [22, 4], [20.0, 1.5],steps,height);
	BezConic([20.0, 1.5], [18, -1], [14.5, -2.0],steps,height);
	BezConic([14.5, -2.0], [11, -3], [7, -3],steps,height);
	BezConic([10, 11], [10, 13], [10.5, 15.0],steps,height);
	BezConic([10.5, 15.0], [11, 17], [12.5, 18.5],steps,height);
	BezConic([12.5, 18.5], [14, 20], [15.5, 21.5],steps,height);
	BezConic([15.5, 21.5], [17, 23], [20, 24],steps,height);
	BezConic([20, 24], [17, 24], [15.5, 25.5],steps,height);
	BezConic([12.5, 28.5], [11, 30], [10.5, 32.0],steps,height);
	BezConic([10.5, 32.0], [10, 34], [10, 36],steps,height);
	BezConic([7, 51], [11, 51], [14.5, 49.5],steps,height);
	BezConic([14.5, 49.5], [18, 48], [20.0, 45.5],steps,height);
	BezConic([20.0, 45.5], [22, 43], [23.0, 40.0],steps,height);
	BezConic([23.0, 40.0], [24, 37], [24, 33],steps,height);
}
}

module Candal_contour00x7d(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x7d_skeleton(height);
			Candal_contour00x7d_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x7d_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x7d(steps=2, height) {
	difference() {
		Candal_contour00x7d(steps, height);
		
	}
}

Candal_bbox0x7d=[[7, -3], [29, 51]];

module Candal_letter0x7d(steps=2, height) {
	Candal_chunk10x7d(steps, height);
} //end skeleton

module Candal_contour00x7e_skeleton(height) {
translate([0,0,-height/2]) {if(height == 0) {polygon( points=[
		[32, 26], [31, 26], [30.0, 26.5], 
		[29, 27], [27.5, 27.5], [26, 28], 
		[25.0, 29.0], [24, 30], [23.0, 30.5], 
		[22, 31], [20.5, 31.5], [19, 32], 
		[18, 32], [17, 32], [15.5, 31.0], 
		[14, 30], [13, 28], [9.5, 29.5], 
		[6, 31], [7, 34], [8.5, 36.0], 
		[10, 38], [12.0, 39.5], [14, 41], 
		[16.0, 42.0], [18, 43], [20, 43], 
		[22, 43], [23.0, 42.5], [24, 42], 
		[25.0, 41.0], [26, 40], [27.5, 39.5], 
		[29, 39], [30.0, 38.0], [31, 37], 
		[32.0, 37.0], [33, 37], [34, 37], 
		[36, 37], [37.0, 37.5], [38, 38], 
		[39, 40], [42.5, 38.5], [46, 37], 
		[45, 34], [43.5, 32.0], [42, 30], 
		[40.0, 28.5], [38, 27], [36.0, 26.5], 
		[34, 26], ]);
}else {	linear_extrude(height=height) polygon( points=[
		[32, 26], [31, 26], [30.0, 26.5], 
		[29, 27], [27.5, 27.5], [26, 28], 
		[25.0, 29.0], [24, 30], [23.0, 30.5], 
		[22, 31], [20.5, 31.5], [19, 32], 
		[18, 32], [17, 32], [15.5, 31.0], 
		[14, 30], [13, 28], [9.5, 29.5], 
		[6, 31], [7, 34], [8.5, 36.0], 
		[10, 38], [12.0, 39.5], [14, 41], 
		[16.0, 42.0], [18, 43], [20, 43], 
		[22, 43], [23.0, 42.5], [24, 42], 
		[25.0, 41.0], [26, 40], [27.5, 39.5], 
		[29, 39], [30.0, 38.0], [31, 37], 
		[32.0, 37.0], [33, 37], [34, 37], 
		[36, 37], [37.0, 37.5], [38, 38], 
		[39, 40], [42.5, 38.5], [46, 37], 
		[45, 34], [43.5, 32.0], [42, 30], 
		[40.0, 28.5], [38, 27], [36.0, 26.5], 
		[34, 26], ]);
}}}

module Candal_contour00x7e_additive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([30.0, 26.5], [29, 27], [27.5, 27.5],steps,height);
	BezConic([25.0, 29.0], [24, 30], [23.0, 30.5],steps,height);
	BezConic([23.0, 30.5], [22, 31], [20.5, 31.5],steps,height);
	BezConic([20.5, 31.5], [19, 32], [18, 32],steps,height);
	BezConic([18, 32], [17, 32], [15.5, 31.0],steps,height);
	BezConic([15.5, 31.0], [14, 30], [13, 28],steps,height);
	BezConic([25.0, 41.0], [26, 40], [27.5, 39.5],steps,height);
	BezConic([30.0, 38.0], [31, 37], [32.0, 37.0],steps,height);
	BezConic([32.0, 37.0], [33, 37], [34, 37],steps,height);
	BezConic([34, 37], [36, 37], [37.0, 37.5],steps,height);
	BezConic([37.0, 37.5], [38, 38], [39, 40],steps,height);
}
}

module Candal_contour00x7e_subtractive_curves(steps=2, height) {
translate([0,0,-height/2]){ 
	BezConic([32, 26], [31, 26], [30.0, 26.5],steps,height);
	BezConic([27.5, 27.5], [26, 28], [25.0, 29.0],steps,height);
	BezConic([6, 31], [7, 34], [8.5, 36.0],steps,height);
	BezConic([8.5, 36.0], [10, 38], [12.0, 39.5],steps,height);
	BezConic([12.0, 39.5], [14, 41], [16.0, 42.0],steps,height);
	BezConic([16.0, 42.0], [18, 43], [20, 43],steps,height);
	BezConic([20, 43], [22, 43], [23.0, 42.5],steps,height);
	BezConic([23.0, 42.5], [24, 42], [25.0, 41.0],steps,height);
	BezConic([27.5, 39.5], [29, 39], [30.0, 38.0],steps,height);
	BezConic([46, 37], [45, 34], [43.5, 32.0],steps,height);
	BezConic([43.5, 32.0], [42, 30], [40.0, 28.5],steps,height);
	BezConic([40.0, 28.5], [38, 27], [36.0, 26.5],steps,height);
	BezConic([36.0, 26.5], [34, 26], [32, 26],steps,height);
}
}

module Candal_contour00x7e(steps=2, height) {
	difference() {
		union() {
			Candal_contour00x7e_skeleton(height);
			Candal_contour00x7e_additive_curves(steps, height);
		}
		translate([0, 0, -0.1]) scale([1,1,1.1]) Candal_contour00x7e_subtractive_curves(steps, height);
	}
}

module Candal_chunk10x7e(steps=2, height) {
	difference() {
		Candal_contour00x7e(steps, height);
		
	}
}

Candal_bbox0x7e=[[6, 26], [46, 43]];

module Candal_letter0x7e(steps=2, height) {
	Candal_chunk10x7e(steps, height);
} //end skeleton



function Candal_letter_space(char, extra) =
	char == "!" ? (24 + extra) : 
	char == "\"" ? (29 + extra) : 
	char == "#" ? (33 + extra) : 
	char == "$" ? (39 + extra) : 
	char == "%" ? (86 + extra) : 
	char == "&" ? (53 + extra) : 
	char == "'" ? (16 + extra) : 
	char == "(" ? (25 + extra) : 
	char == ")" ? (25 + extra) : 
	char == "*" ? (31 + extra) : 
	char == "+" ? (30 + extra) : 
	char == "," ? (20 + extra) : 
	char == "-" ? (28 + extra) : 
	char == "." ? (23 + extra) : 
	char == "/" ? (27 + extra) : 
	char == "0" ? (45 + extra) : 
	char == "1" ? (27 + extra) : 
	char == "2" ? (36 + extra) : 
	char == "3" ? (36 + extra) : 
	char == "4" ? (40 + extra) : 
	char == "5" ? (41 + extra) : 
	char == "6" ? (41 + extra) : 
	char == "7" ? (35 + extra) : 
	char == "8" ? (46 + extra) : 
	char == "9" ? (41 + extra) : 
	char == ":" ? (23 + extra) : 
	char == ";" ? (21 + extra) : 
	char == "<" ? (28 + extra) : 
	char == "=" ? (28 + extra) : 
	char == ">" ? (28 + extra) : 
	char == "?" ? (37 + extra) : 
	char == "@" ? (70 + extra) : 
	char == "A" ? (43 + extra) : 
	char == "B" ? (44 + extra) : 
	char == "C" ? (41 + extra) : 
	char == "D" ? (45 + extra) : 
	char == "E" ? (36 + extra) : 
	char == "F" ? (36 + extra) : 
	char == "G" ? (44 + extra) : 
	char == "H" ? (46 + extra) : 
	char == "I" ? (19 + extra) : 
	char == "J" ? (26 + extra) : 
	char == "K" ? (46 + extra) : 
	char == "L" ? (34 + extra) : 
	char == "M" ? (54 + extra) : 
	char == "N" ? (46 + extra) : 
	char == "O" ? (47 + extra) : 
	char == "P" ? (45 + extra) : 
	char == "Q" ? (47 + extra) : 
	char == "R" ? (44 + extra) : 
	char == "S" ? (39 + extra) : 
	char == "T" ? (35 + extra) : 
	char == "U" ? (44 + extra) : 
	char == "V" ? (42 + extra) : 
	char == "W" ? (62 + extra) : 
	char == "X" ? (44 + extra) : 
	char == "Y" ? (39 + extra) : 
	char == "Z" ? (31 + extra) : 
	char == "[" ? (28 + extra) : 
	char == "\\" ? (27 + extra) : 
	char == "]" ? (27 + extra) : 
	char == "^" ? (37 + extra) : 
	char == "_" ? (31 + extra) : 
	char == "`" ? (27 + extra) : 
	char == "a" ? (38 + extra) : 
	char == "b" ? (45 + extra) : 
	char == "c" ? (34 + extra) : 
	char == "d" ? (43 + extra) : 
	char == "e" ? (37 + extra) : 
	char == "f" ? (31 + extra) : 
	char == "g" ? (42 + extra) : 
	char == "h" ? (42 + extra) : 
	char == "i" ? (20 + extra) : 
	char == "j" ? (21 + extra) : 
	char == "k" ? (45 + extra) : 
	char == "l" ? (18 + extra) : 
	char == "m" ? (67 + extra) : 
	char == "n" ? (45 + extra) : 
	char == "o" ? (42 + extra) : 
	char == "p" ? (44 + extra) : 
	char == "q" ? (42 + extra) : 
	char == "r" ? (32 + extra) : 
	char == "s" ? (33 + extra) : 
	char == "t" ? (32 + extra) : 
	char == "u" ? (43 + extra) : 
	char == "v" ? (40 + extra) : 
	char == "w" ? (61 + extra) : 
	char == "x" ? (42 + extra) : 
	char == "y" ? (40 + extra) : 
	char == "z" ? (31 + extra) : 
	char == "{" ? (29 + extra) : 
	char == "|" ? (20 + extra) : 
	char == "}" ? (29 + extra) : 
	(46 + extra);

module Candal_letter(char, steps, height) {
	if(char == "!") {
		Candal_letter0x21(steps, height);
	}
	if(char == "\"") {
		Candal_letter0x22(steps, height);
	}
	if(char == "#") {
		Candal_letter0x23(steps, height);
	}
	if(char == "$") {
		Candal_letter0x24(steps, height);
	}
	if(char == "%") {
		Candal_letter0x25(steps, height);
	}
	if(char == "&") {
		Candal_letter0x26(steps, height);
	}
	if(char == "'") {
		Candal_letter0x27(steps, height);
	}
	if(char == "(") {
		Candal_letter0x28(steps, height);
	}
	if(char == ")") {
		Candal_letter0x29(steps, height);
	}
	if(char == "*") {
		Candal_letter0x2a(steps, height);
	}
	if(char == "+") {
		Candal_letter0x2b(steps, height);
	}
	if(char == ",") {
		Candal_letter0x2c(steps, height);
	}
	if(char == "-") {
		Candal_letter0x2d(steps, height);
	}
	if(char == ".") {
		Candal_letter0x2e(steps, height);
	}
	if(char == "/") {
		Candal_letter0x2f(steps, height);
	}
	if(char == "0") {
		Candal_letter0x30(steps, height);
	}
	if(char == "1") {
		Candal_letter0x31(steps, height);
	}
	if(char == "2") {
		Candal_letter0x32(steps, height);
	}
	if(char == "3") {
		Candal_letter0x33(steps, height);
	}
	if(char == "4") {
		Candal_letter0x34(steps, height);
	}
	if(char == "5") {
		Candal_letter0x35(steps, height);
	}
	if(char == "6") {
		Candal_letter0x36(steps, height);
	}
	if(char == "7") {
		Candal_letter0x37(steps, height);
	}
	if(char == "8") {
		Candal_letter0x38(steps, height);
	}
	if(char == "9") {
		Candal_letter0x39(steps, height);
	}
	if(char == ":") {
		Candal_letter0x3a(steps, height);
	}
	if(char == ";") {
		Candal_letter0x3b(steps, height);
	}
	if(char == "<") {
		Candal_letter0x3c(steps, height);
	}
	if(char == "=") {
		Candal_letter0x3d(steps, height);
	}
	if(char == ">") {
		Candal_letter0x3e(steps, height);
	}
	if(char == "?") {
		Candal_letter0x3f(steps, height);
	}
	if(char == "@") {
		Candal_letter0x40(steps, height);
	}
	if(char == "A") {
		Candal_letter0x41(steps, height);
	}
	if(char == "B") {
		Candal_letter0x42(steps, height);
	}
	if(char == "C") {
		Candal_letter0x43(steps, height);
	}
	if(char == "D") {
		Candal_letter0x44(steps, height);
	}
	if(char == "E") {
		Candal_letter0x45(steps, height);
	}
	if(char == "F") {
		Candal_letter0x46(steps, height);
	}
	if(char == "G") {
		Candal_letter0x47(steps, height);
	}
	if(char == "H") {
		Candal_letter0x48(steps, height);
	}
	if(char == "I") {
		Candal_letter0x49(steps, height);
	}
	if(char == "J") {
		Candal_letter0x4a(steps, height);
	}
	if(char == "K") {
		Candal_letter0x4b(steps, height);
	}
	if(char == "L") {
		Candal_letter0x4c(steps, height);
	}
	if(char == "M") {
		Candal_letter0x4d(steps, height);
	}
	if(char == "N") {
		Candal_letter0x4e(steps, height);
	}
	if(char == "O") {
		Candal_letter0x4f(steps, height);
	}
	if(char == "P") {
		Candal_letter0x50(steps, height);
	}
	if(char == "Q") {
		Candal_letter0x51(steps, height);
	}
	if(char == "R") {
		Candal_letter0x52(steps, height);
	}
	if(char == "S") {
		Candal_letter0x53(steps, height);
	}
	if(char == "T") {
		Candal_letter0x54(steps, height);
	}
	if(char == "U") {
		Candal_letter0x55(steps, height);
	}
	if(char == "V") {
		Candal_letter0x56(steps, height);
	}
	if(char == "W") {
		Candal_letter0x57(steps, height);
	}
	if(char == "X") {
		Candal_letter0x58(steps, height);
	}
	if(char == "Y") {
		Candal_letter0x59(steps, height);
	}
	if(char == "Z") {
		Candal_letter0x5a(steps, height);
	}
	if(char == "[") {
		Candal_letter0x5b(steps, height);
	}
	if(char == "\\") {
		Candal_letter0x5c(steps, height);
	}
	if(char == "]") {
		Candal_letter0x5d(steps, height);
	}
	if(char == "^") {
		Candal_letter0x5e(steps, height);
	}
	if(char == "_") {
		Candal_letter0x5f(steps, height);
	}
	if(char == "`") {
		Candal_letter0x60(steps, height);
	}
	if(char == "a") {
		Candal_letter0x61(steps, height);
	}
	if(char == "b") {
		Candal_letter0x62(steps, height);
	}
	if(char == "c") {
		Candal_letter0x63(steps, height);
	}
	if(char == "d") {
		Candal_letter0x64(steps, height);
	}
	if(char == "e") {
		Candal_letter0x65(steps, height);
	}
	if(char == "f") {
		Candal_letter0x66(steps, height);
	}
	if(char == "g") {
		Candal_letter0x67(steps, height);
	}
	if(char == "h") {
		Candal_letter0x68(steps, height);
	}
	if(char == "i") {
		Candal_letter0x69(steps, height);
	}
	if(char == "j") {
		Candal_letter0x6a(steps, height);
	}
	if(char == "k") {
		Candal_letter0x6b(steps, height);
	}
	if(char == "l") {
		Candal_letter0x6c(steps, height);
	}
	if(char == "m") {
		Candal_letter0x6d(steps, height);
	}
	if(char == "n") {
		Candal_letter0x6e(steps, height);
	}
	if(char == "o") {
		Candal_letter0x6f(steps, height);
	}
	if(char == "p") {
		Candal_letter0x70(steps, height);
	}
	if(char == "q") {
		Candal_letter0x71(steps, height);
	}
	if(char == "r") {
		Candal_letter0x72(steps, height);
	}
	if(char == "s") {
		Candal_letter0x73(steps, height);
	}
	if(char == "t") {
		Candal_letter0x74(steps, height);
	}
	if(char == "u") {
		Candal_letter0x75(steps, height);
	}
	if(char == "v") {
		Candal_letter0x76(steps, height);
	}
	if(char == "w") {
		Candal_letter0x77(steps, height);
	}
	if(char == "x") {
		Candal_letter0x78(steps, height);
	}
	if(char == "y") {
		Candal_letter0x79(steps, height);
	}
	if(char == "z") {
		Candal_letter0x7a(steps, height);
	}
	if(char == "{") {
		Candal_letter0x7b(steps, height);
	}
	if(char == "|") {
		Candal_letter0x7c(steps, height);
	}
	if(char == "}") {
		Candal_letter0x7d(steps, height);
	}
	if(char == "~") {
		Candal_letter0x7e(steps, height);
	}
}

module Candal(strArr, steps=2, center=false, extra = 0, height = 10) {
	if(center) {
		translate([-Candal_width(strArr, extra)/2, 0, 0])
			Candal_str(strArr, steps, extra, height);
	}
	else {
		Candal_str(strArr, steps, extra, height);
	}
}

module Candal_str(strArr, steps=2, extra, height = 10) {
	for(i = [0:len(strArr)-1]) {
		assign(char = strArr[i]) {
			if(i == 0) {
				translate([0, 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 1) {
				translate([Candal_letter_space(strArr[0], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 2) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 3) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 4) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 5) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 6) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 7) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 8) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 9) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 10) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 11) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 12) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 13) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 14) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 15) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 16) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 17) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 18) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 19) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 20) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 21) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 22) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 23) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 24) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 25) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 26) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 27) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 28) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 29) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 30) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 31) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 32) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 33) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 34) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 35) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 36) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 37) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 38) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 39) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 40) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 41) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 42) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 43) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 44) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 45) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 46) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 47) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 48) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 49) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 50) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 51) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 52) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 53) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 54) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 55) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 56) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 57) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 58) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 59) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 60) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 61) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 62) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 63) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 64) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 65) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 66) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 67) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 68) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 69) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 70) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 71) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 72) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 73) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 74) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 75) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 76) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 77) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 78) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 79) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 80) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 81) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 82) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 83) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 84) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 85) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 86) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 87) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 88) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 89) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 90) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 91) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 92) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 93) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 94) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra)+Candal_letter_space(strArr[93], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 95) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra)+Candal_letter_space(strArr[93], extra)+Candal_letter_space(strArr[94], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 96) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra)+Candal_letter_space(strArr[93], extra)+Candal_letter_space(strArr[94], extra)+Candal_letter_space(strArr[95], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 97) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra)+Candal_letter_space(strArr[93], extra)+Candal_letter_space(strArr[94], extra)+Candal_letter_space(strArr[95], extra)+Candal_letter_space(strArr[96], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 98) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra)+Candal_letter_space(strArr[93], extra)+Candal_letter_space(strArr[94], extra)+Candal_letter_space(strArr[95], extra)+Candal_letter_space(strArr[96], extra)+Candal_letter_space(strArr[97], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			else if(i == 99) {
				translate([Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra)+Candal_letter_space(strArr[93], extra)+Candal_letter_space(strArr[94], extra)+Candal_letter_space(strArr[95], extra)+Candal_letter_space(strArr[96], extra)+Candal_letter_space(strArr[97], extra)+Candal_letter_space(strArr[98], extra), 0, 0])
					Candal_letter(char, steps, height);
			}
			}
		}
	}

function Candal_width(strArr, extra = 0) =
	(len(strArr) == 0) ? (
		0) : (len(strArr) == 1) ? (
		Candal_letter_space(strArr[0], extra)) : (len(strArr) == 2) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)) : (len(strArr) == 3) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)) : (len(strArr) == 4) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)) : (len(strArr) == 5) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)) : (len(strArr) == 6) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)) : (len(strArr) == 7) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)) : (len(strArr) == 8) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)) : (len(strArr) == 9) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)) : (len(strArr) == 10) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)) : (len(strArr) == 11) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)) : (len(strArr) == 12) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)) : (len(strArr) == 13) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)) : (len(strArr) == 14) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)) : (len(strArr) == 15) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)) : (len(strArr) == 16) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)) : (len(strArr) == 17) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)) : (len(strArr) == 18) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)) : (len(strArr) == 19) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)) : (len(strArr) == 20) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)) : (len(strArr) == 21) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)) : (len(strArr) == 22) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)) : (len(strArr) == 23) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)) : (len(strArr) == 24) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)) : (len(strArr) == 25) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)) : (len(strArr) == 26) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)) : (len(strArr) == 27) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)) : (len(strArr) == 28) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)) : (len(strArr) == 29) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)) : (len(strArr) == 30) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)) : (len(strArr) == 31) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)) : (len(strArr) == 32) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)) : (len(strArr) == 33) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)) : (len(strArr) == 34) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)) : (len(strArr) == 35) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)) : (len(strArr) == 36) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)) : (len(strArr) == 37) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)) : (len(strArr) == 38) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)) : (len(strArr) == 39) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)) : (len(strArr) == 40) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)) : (len(strArr) == 41) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)) : (len(strArr) == 42) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)) : (len(strArr) == 43) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)) : (len(strArr) == 44) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)) : (len(strArr) == 45) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)) : (len(strArr) == 46) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)) : (len(strArr) == 47) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)) : (len(strArr) == 48) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)) : (len(strArr) == 49) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)) : (len(strArr) == 50) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)) : (len(strArr) == 51) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)) : (len(strArr) == 52) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)) : (len(strArr) == 53) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)) : (len(strArr) == 54) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)) : (len(strArr) == 55) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)) : (len(strArr) == 56) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)) : (len(strArr) == 57) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)) : (len(strArr) == 58) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)) : (len(strArr) == 59) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)) : (len(strArr) == 60) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)) : (len(strArr) == 61) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)) : (len(strArr) == 62) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)) : (len(strArr) == 63) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)) : (len(strArr) == 64) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)) : (len(strArr) == 65) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)) : (len(strArr) == 66) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)) : (len(strArr) == 67) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)) : (len(strArr) == 68) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)) : (len(strArr) == 69) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)) : (len(strArr) == 70) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)) : (len(strArr) == 71) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)) : (len(strArr) == 72) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)) : (len(strArr) == 73) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)) : (len(strArr) == 74) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)) : (len(strArr) == 75) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)) : (len(strArr) == 76) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)) : (len(strArr) == 77) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)) : (len(strArr) == 78) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)) : (len(strArr) == 79) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)) : (len(strArr) == 80) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)) : (len(strArr) == 81) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)) : (len(strArr) == 82) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)) : (len(strArr) == 83) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)) : (len(strArr) == 84) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)) : (len(strArr) == 85) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)) : (len(strArr) == 86) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)) : (len(strArr) == 87) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)) : (len(strArr) == 88) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)) : (len(strArr) == 89) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)) : (len(strArr) == 90) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)) : (len(strArr) == 91) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)) : (len(strArr) == 92) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)) : (len(strArr) == 93) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra)) : (len(strArr) == 94) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra)+Candal_letter_space(strArr[93], extra)) : (len(strArr) == 95) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra)+Candal_letter_space(strArr[93], extra)+Candal_letter_space(strArr[94], extra)) : (len(strArr) == 96) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra)+Candal_letter_space(strArr[93], extra)+Candal_letter_space(strArr[94], extra)+Candal_letter_space(strArr[95], extra)) : (len(strArr) == 97) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra)+Candal_letter_space(strArr[93], extra)+Candal_letter_space(strArr[94], extra)+Candal_letter_space(strArr[95], extra)+Candal_letter_space(strArr[96], extra)) : (len(strArr) == 98) ? (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra)+Candal_letter_space(strArr[93], extra)+Candal_letter_space(strArr[94], extra)+Candal_letter_space(strArr[95], extra)+Candal_letter_space(strArr[96], extra)+Candal_letter_space(strArr[97], extra)) : (
		Candal_letter_space(strArr[0], extra)+Candal_letter_space(strArr[1], extra)+Candal_letter_space(strArr[2], extra)+Candal_letter_space(strArr[3], extra)+Candal_letter_space(strArr[4], extra)+Candal_letter_space(strArr[5], extra)+Candal_letter_space(strArr[6], extra)+Candal_letter_space(strArr[7], extra)+Candal_letter_space(strArr[8], extra)+Candal_letter_space(strArr[9], extra)+Candal_letter_space(strArr[10], extra)+Candal_letter_space(strArr[11], extra)+Candal_letter_space(strArr[12], extra)+Candal_letter_space(strArr[13], extra)+Candal_letter_space(strArr[14], extra)+Candal_letter_space(strArr[15], extra)+Candal_letter_space(strArr[16], extra)+Candal_letter_space(strArr[17], extra)+Candal_letter_space(strArr[18], extra)+Candal_letter_space(strArr[19], extra)+Candal_letter_space(strArr[20], extra)+Candal_letter_space(strArr[21], extra)+Candal_letter_space(strArr[22], extra)+Candal_letter_space(strArr[23], extra)+Candal_letter_space(strArr[24], extra)+Candal_letter_space(strArr[25], extra)+Candal_letter_space(strArr[26], extra)+Candal_letter_space(strArr[27], extra)+Candal_letter_space(strArr[28], extra)+Candal_letter_space(strArr[29], extra)+Candal_letter_space(strArr[30], extra)+Candal_letter_space(strArr[31], extra)+Candal_letter_space(strArr[32], extra)+Candal_letter_space(strArr[33], extra)+Candal_letter_space(strArr[34], extra)+Candal_letter_space(strArr[35], extra)+Candal_letter_space(strArr[36], extra)+Candal_letter_space(strArr[37], extra)+Candal_letter_space(strArr[38], extra)+Candal_letter_space(strArr[39], extra)+Candal_letter_space(strArr[40], extra)+Candal_letter_space(strArr[41], extra)+Candal_letter_space(strArr[42], extra)+Candal_letter_space(strArr[43], extra)+Candal_letter_space(strArr[44], extra)+Candal_letter_space(strArr[45], extra)+Candal_letter_space(strArr[46], extra)+Candal_letter_space(strArr[47], extra)+Candal_letter_space(strArr[48], extra)+Candal_letter_space(strArr[49], extra)+Candal_letter_space(strArr[50], extra)+Candal_letter_space(strArr[51], extra)+Candal_letter_space(strArr[52], extra)+Candal_letter_space(strArr[53], extra)+Candal_letter_space(strArr[54], extra)+Candal_letter_space(strArr[55], extra)+Candal_letter_space(strArr[56], extra)+Candal_letter_space(strArr[57], extra)+Candal_letter_space(strArr[58], extra)+Candal_letter_space(strArr[59], extra)+Candal_letter_space(strArr[60], extra)+Candal_letter_space(strArr[61], extra)+Candal_letter_space(strArr[62], extra)+Candal_letter_space(strArr[63], extra)+Candal_letter_space(strArr[64], extra)+Candal_letter_space(strArr[65], extra)+Candal_letter_space(strArr[66], extra)+Candal_letter_space(strArr[67], extra)+Candal_letter_space(strArr[68], extra)+Candal_letter_space(strArr[69], extra)+Candal_letter_space(strArr[70], extra)+Candal_letter_space(strArr[71], extra)+Candal_letter_space(strArr[72], extra)+Candal_letter_space(strArr[73], extra)+Candal_letter_space(strArr[74], extra)+Candal_letter_space(strArr[75], extra)+Candal_letter_space(strArr[76], extra)+Candal_letter_space(strArr[77], extra)+Candal_letter_space(strArr[78], extra)+Candal_letter_space(strArr[79], extra)+Candal_letter_space(strArr[80], extra)+Candal_letter_space(strArr[81], extra)+Candal_letter_space(strArr[82], extra)+Candal_letter_space(strArr[83], extra)+Candal_letter_space(strArr[84], extra)+Candal_letter_space(strArr[85], extra)+Candal_letter_space(strArr[86], extra)+Candal_letter_space(strArr[87], extra)+Candal_letter_space(strArr[88], extra)+Candal_letter_space(strArr[89], extra)+Candal_letter_space(strArr[90], extra)+Candal_letter_space(strArr[91], extra)+Candal_letter_space(strArr[92], extra)+Candal_letter_space(strArr[93], extra)+Candal_letter_space(strArr[94], extra)+Candal_letter_space(strArr[95], extra)+Candal_letter_space(strArr[96], extra)+Candal_letter_space(strArr[97], extra)+Candal_letter_space(strArr[98], extra));




module BezConic(p0,p1,p2,steps=5,h=10) {

	stepsize1 = (p1-p0)/steps;
	stepsize2 = (p2-p1)/steps;

	for (i=[0:steps-1]) {
		assign(point1 = p0+stepsize1*i) 
		assign(point2 = p1+stepsize2*i) 
		assign(point3 = p0+stepsize1*(i+1))
		assign(point4 = p1+stepsize2*(i+1))
		assign(bpoint1 = point1+(point2-point1)*(i/steps))
		assign(bpoint2 = point3+(point4-point3)*((i+1)/steps)) {
			if(h == 0) {
				polygon(points=[bpoint1,bpoint2,p1]);
			}
			else {
				linear_extrude(height=h) {
					polygon(points=[bpoint1,bpoint2,p1]);
				}
			}
		}
	}
}