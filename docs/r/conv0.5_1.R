x=sort(sample(20,10))
# 2  3  6  7  9 11 14 15 17 18
rx = max(x)-min(x)
rx

gapx <- rx/length(x)

gapx

# Find increment 
# 16 ... 0.5
# 1 .... 0.5/16
# 2 => (2-2+1)+0.5
# 3 => .5+(3-2)*0.5/rx
inrx <- 0.5/rx
incr5 <- 0.5/length(x)

y <- 0.5 + (x-min(x))*inrx

y

# Function

conv_half_1 <- function(x){
  rx = max(x)-min(x)
  incrx <- 0.5/rx
  y <- 0.5 + (x-min(x))*incrx
  return(y)
}

xr <- sample(30,20)
sort(conv_half_1(xr))

x <- sort(sample(100, 20))
x
conv_half_1(x)*.97

x <- 0:10
conv_half_1(x)*x/(x+0.001)*.97
