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
# Put values of n, m, and v as vectors

cmv <- function(n, m, v){
  mc <- sum(n*m)/sum(n)
  d <- m-mc
  comv <- sum(n*(v+d^2))/sum(n)
  comsd <- sqrt(comv)
  cocv <- comsd/mc*100
  list("Combined Mean" = mc, "Combined Variance" = comv,
       "Combined SD" = comsd, "Combined CV" = cocv)
}


