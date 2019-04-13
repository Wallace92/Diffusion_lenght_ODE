# Stationary diffusion equation
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">

</head>
<body>
 To solve we got an equation which describe the carrier flow from surface to bulk including the carrier lifetime and Einstein diffussion coefficient: <br>
  
<ul>
  <p>
  $$   D \frac{\partial^2 p_n} {\partial x^2} = \frac{p_n - p_0} {\tau} $$ 
    
   where $ \tau $ is carrier lifetime, $ p_0 $ is minrority carrier concentration in bulk semiconductor in steady state and $p_n$ is equal to concentration injected carriers near the surface. We assume that the $ p_n \ge p_0$.
</p>
  <li>The standar deviation is expressed as:
  
  $$ \sigma = \frac{\sum_{i=1}^N (x_i - \mu)}{N} $$

</li>
  <li>The Gauss distribution very well fit many experimental data and determine the probability of occurence each of it</li>
</ul>
Finally the graph is presented using matplotlib library with beatiful latex graphics. The straight line at the middle shows the mean value of approximated data.
</body>
</html>
