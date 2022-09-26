# A function to find moments

rmom <- function(x, a, r){
  (sum(x-a)^r)/length(x)
}
# Example 

x <- c(160, 162, 168, 170, 175)

rmom(x =x , a = mean(x), r = 3)

