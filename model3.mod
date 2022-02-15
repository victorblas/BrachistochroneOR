param n > 0;
param a > 0;
param g > 0;
param b > 0;
param eps > 0;
param delta > 0;

var y{i in 0..n};
var x{i in 0..n};

minimize objectiu:
	 (1/sqrt(2*g)) * sum {i in 0..n-1} sqrt(((x[i+1]-x[i])^2 + (y[i+1]-y[i])^2)/y[i]);

subject to origen_x:
	x[0] = eps;
	
subject to final_x:
	x[n] = a;
	
subject to origen_y:
	y[0] = eps;
	
subject to final_y:
	y[n] = b;

subject to fita_x1 {i in 0..n}:
	x[i] >= eps;
	
subject to fita_y {i in 0..n}:
	y[i] >= eps;
	
subject to fita_x2 {i in 0..n}:
	x[i] <= a;
	
subject to distribuir {i in 0..n-1}:
	x[i+1] - x[i]  >= delta;