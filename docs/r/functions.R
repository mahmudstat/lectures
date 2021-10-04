
# Permutation
npr <- function(n,p){
  factorial(n)/factorial(n-p)
}
  
# Combination 

ncr <- function(n,r){
  factorial(n)/(factorial(r)*factorial(n-r))
}
