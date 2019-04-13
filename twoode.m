function dydx = twoode(x,y)
dydx = [ y(2); (y(1) / 36) - (10^13 / 36) ];  % droga dyfuzji
end

