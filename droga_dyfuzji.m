clear;
clc;

% bcfun - function with bounduary conditions 
% odefun - function with columnar vector

% solinit - vector with initial guessed values of equation
solinit = bvpinit(linspace(0,50,100),[10^14 10^13]);

%the bvp4c solution
sol = bvp4c(@twoode,@twobc,solinit);

%the x vector
x = linspace(0,10);

%the y vector with evaluation of solution at x point
y=deval(sol,x);

%evaluate the value at x = 6 and value of carrier concentration at this point
pk = deval(sol, 6)
p = 10^13+[10^14-10^13]*exp(-x / 6);

%an subplot to compare the numerical and analitycal equation
figure
subplot(1,2,1)

plot(x,y(1,:), 6, y(1,:), 'o', 'MarkerSize', 10)         
title('Numerical at p(L = 6 um)')
subplot(1,2,2) 
%the analitycal equation
pk2 = 10^13+[10^14-10^13]*exp(-6 / 6)
plot(x,p(1,:), 6, pk2(1,:), 'o', 'MarkerSize', 10)    
title('Analitical at p(L = 6 um')
