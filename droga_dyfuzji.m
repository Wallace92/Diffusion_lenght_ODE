clear;
clc;
% solinit - vector with initial guessed values of equation
% bcfun - function with bounduary conditions 
% odefun - function with columnar vector

solinit = bvpinit(linspace(0,50,100),[10^14 10^13]);
sol = bvp4c(@twoode,@twobc,solinit);
x = linspace(0,10);
y=deval(sol,x);
%plot(x,y(1,:))
pk = deval(sol, 6)
p = 10^13+[10^14-10^13]*exp(-x / 6);
figure
subplot(1,2,1)
pk2 = 10^13+[10^14-10^13]*exp(-6 / 6)
plot(x,y(1,:), 6, pk(1,:), 'o', 'MarkerSize', 10)         
title('Obliczona numerycznie p(L = 6 um)')
subplot(1,2,2)       
plot(x,p(1,:), 6, pk2(1,:), 'o', 'MarkerSize', 10)    
title('Obliczona analitycznie p(L = 6 um')
