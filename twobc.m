% the boundary conctidions ya(1)-10^14 -> y[0] - 10^14 = 0 and yb(1) - 10^13 -> y[\infty] - 10^13 = 0
function res = twobc(ya,yb)
res = [ ya(1)-10^14; yb(1) - 10^13 ];  % droga dyfuzji
end
