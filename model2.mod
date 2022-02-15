param n > 0;
param a > 0;
param g > 0;
param b > 0;
param eps > 0;
param delta > 0;

param y{i in 0..n} := i/n*(b-eps)+eps;

var x{i in 0..n};

minimize objectiu:
	(1/sqrt(2*g)) * sum {i in 0..n-1} sqrt(((x[i+1]-x[i])^2 + (y[i+1]-y[i])^2)/y[i]);

subject to origen:
	x[0] = eps;
	
subject to final:
	x[n] = a;

subject to fita1 {i in 0..n}:
	x[i] <= a;
	
subject to fita2 {i in 0..n}:
	x[i] >= eps;