# A function to draw different circle with different density of points. 

# npoints: number of points to plot; a vector with length a square number; 
# like 1, 4, 9, or 16.
# nplots: length of npoints; 
# r1: radius of smallest circle
# r2: radius of largest circle
# ncircle: number of circles
# mean: mean of random numbers for making deviation from- 
# circumference of circle
# sd: deviation from circumference of circle
# Adjust mean and sd according to radius

# For a unit circle, npoints = 100, ncircle = 1, sd = 0

sketch_circle <- function(npoints=c(15, 25, 35, 50), 
                          r1=0, r2=1, ncircle=20, mean = 0, sd=0.1){
  nplots = length(npoints) 
  par(mfrow=c(sqrt(nplots), sqrt(nplots)))
  for (n in npoints){
    t <- seq(0, 360, length.out = n)*pi/180
    plot(exp(1i*t)*r2, type="p", pch=20, 
         main = "Circle Using Euler Formula",
         xlab = "", ylab = "")
    r <- seq(r1, r2, length.out = ncircle)
    for (i in r){
      points(exp(1i*t)*i+rnorm(n=n, mean = 0, sd = sd), pch=20)
    }
  }
}
