rivers <- read.csv("docs/stat/rivers_bd.csv")
bcup <- rivers
select_ques <- function(){
  ques <<- sample(rivers$Question, 1)
  rivers <<- subset(rivers, rivers$Question!=ques)
  print(ques)
}

select_ans <- function() bcup$Answer[bcup$Question==ques]
par(bg="green")
plot(1)
text(x=1, y = 1.3, labels = select_ques(), cex = 1)
text(x=1, y= 0.8, labels = select_ans(), cex = 3)
