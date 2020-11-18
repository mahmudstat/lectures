gm <- function(x) exp(mean(log(x)))
x <- c(80, 87, 67, 65, 83, 76, 53)

gm(x)

mean(x)

hm <- function (x) 1/mean(1/x)

hm(x)
