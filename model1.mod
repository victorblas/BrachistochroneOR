param n > 0;
param a > 0;
param g > 0;
param b > 0;
param eps > 0;
param delta > 0;

param x{i in 0..n} := (i/n)^2 *(a-eps)+eps;

var y{i in 0..n};

minimize objectiu:
	(1/sqrt(2*g)) * sum {i in 0..n-1} (sqrt(((x[i+1]-x[i])^2 + (y[i+1]-y[i])^2)/y[i]));

subject to origen:
	y[0] = eps;
	
subject to final:
	y[n] = b;

subject to fita {i in 0..n}:
	y[i] >= eps;
