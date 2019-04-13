# Stationary diffusion equation
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">

</head>
<body>
 To solve we got an equation which describe the carrier flow from surface to bulk including the carrier lifetime and Einstein diffussion coefficient: <br>
  
 $$   D \frac{\partial^2 p_n} {\partial x^2} = \frac{p_n - p_0} {\tau} $$ 
    
where $ \tau $ is carrier lifetime, $ p_0 $ is minrority carrier concentration in bulk semiconductor in steady state and $p_n$ is equal to concentration injected carriers near the surface. We assume that the $ p_n \ge p_0$.

This equation descirbie the situation when the extra carriers was injected to the semiconductor and next we observe how carriers from higher concentrations move to the area of lower concentration. The number of extra carriers will recombine and reduce $e$-times (about $ 66\%$) after some distance $L$, this distance is called the \textbf{diffusion lenght}. 

In Matlab the bvp4c (boundary value probles for ordiniary differential equations) is involve to solve this equation. The method requires from us to reduce the order of equation by one. Knowing that the diffusion lenght is related with the Einstein Diffusion Coefficient and the Carrier lifetime by $\sqrt{D\tau}$ we can write:
  $$ \frac{d^2 p_n}{dx^2} - p_n \frac{1}{L^2} + p_0 \frac{1}{L^2} = 0 $$
Substituting for

$$ y_2 = \frac{dp_n} {dx} $$
$$ y_1 = p_n $$
$$ a = \frac{1}{L^2} $$

we obtain and equation which can be applay in Matlab using bvp4c function:

$$ y_{2}^{'} - y_1 a + p_0 a = 0 $$

The bvp4c function requires the first order differenatial equation \texbf{odefun}, the bounduary conditions \textbf{bcfun} and the guessed value to initiate the computations \textbf{solinit}.
To make everything alife lest assume some typical values in our calculations:

- the concentration of carriers near the surface $p_n[0] = 10^{14}$
- the concentration of carriers in bulk $ p_0 = 10^{13} $
- the diffusion lenght $ L = 6 [\mu m]$

Using above conditions the equations looks like:

$$ y_{2}^{'} = \frac{y_1}{36} - \frac{10^{13}} {36} = 0 $$





</body>
</html>
