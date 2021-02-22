# Mean Deviation
# About Mean
mdm <- function(x) sum(abs(x-mean(x)))/length(x)

# About Median 
mdmed <- function(x) sum(abs(x-median(x)))/length(x)

# Coefficient of Range
cr <- function(x) (range(x)[2]-range(x)[1])/(range(x)[2]+range(x)[1])*100

# Coefficient of Mean Deviation 
# About Mean
cmdm <- function(x) mdm(x)/mean(x)*100

# Coefficient of Variance

cv <- function(x) sd(x)/mean(x)*100

## Coefficient of Quartile Deviation

cqd <- function(x) {
  (quantile(x)[4]-quantile(x)[2])/(quantile(x)[4]+quantile(x)[2])*100
}

## Coefficient of Variation

cv1 <- function(x) paste0(sd(x)/mean(x)*100, "%")

cv2 <- function(mean, sd) paste0(round(sd/mean*100,2), "%")

# Combined Mean and variance

cmv <- function(n1, n2, m1, m2, v1, v2){
  mc <- (n1*m1+n2*m2)/(n1+n2)
  d1 <- m1-mc
  d2 <- m2-mc
  comv <- (n1*(v1^2+d1^2)+n2*(v2^2+d2^2))/(n1+n2)
  comsd <- sqrt(comv)
  list("Combined Mean" = mc, "Combined Variance" = comv,
       "Combined SD" = comsd)
}

