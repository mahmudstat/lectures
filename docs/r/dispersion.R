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
