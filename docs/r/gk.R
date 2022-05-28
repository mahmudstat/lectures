## Questions list database

## Cadet List randomization

x <- c(seq(2161,2221,2))

select_cadet <- function(){
cadet <- sample(x,1)
x <<- x[x!=cadet]
print(paste0("Cadet ", cadet, " will answer the next question."))

}

select_cadet()

## Test
x <- 11:20
a <- 20
x <- x[x!=a]
x

## Successful

## for web

numbers <- 11:100

select_num <- function(){
  num <- sample(numbers,1)
  numbers <<- numbers[numbers!=num]
  print(paste0("This time the number ", num, " has been selected"))
  
}

select_num()
numbers

