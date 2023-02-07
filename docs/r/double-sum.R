# A function to find double summation

x <- c(20, 30, 25, 10)
y <- c(15, 27, 18, 5)

# Single sum

sum(x*y)
outer(x, y, FUN = "*")

sum(outer(x, y, FUN = "*"))

prd = c()
for (i in x){
  for (j in y){
    prd = c(prd, i*j)
  }
}

sum(prd)

