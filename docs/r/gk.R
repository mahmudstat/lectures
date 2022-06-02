## Questions list database

## Cadet List randomization

x <- c(seq(2161,2221,2))

select_cadet <- function(){
cadet <- sample(x,1)
x <<- x[x!=cadet]
print(paste0("Cadet ", cadet, " will answer the next question."))
}
select_cadet()

## Select questions 


qdb <- read.csv("docs/r/gk/gk_intl.csv")

qdb_bcup <- read.csv("docs/r/gk/gk_intl.csv")


View(qdb)

select_ques <- function(){
  ques <<- sample(qdb$Question, 1)
  qdb <<- subset(qdb, qdb$Question!=ques)
  print(ques)
  }

select_ans <- function() qdb_bcup$Answer[qdb_bcup$Question==ques]

select_ques()
select_ans()

# Answer


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

