library(tidyverse)
library(ggplot2)
library(ggsci)
library(RColorBrewer)

bd_rel <- tibble(
  Religion = c("Islam", "Hinduism", "Buddhism", "Christianity", "Others"),
  Percentage = c(90.4, 8.5, 0.6, 0.4, 0.1))

us_races <- tibble(
  Race = c("White", "Black", "Multiracial", "Asian", "Others"), 
  Percentage = c(61.6, 12.4, 10.2, 6, 9.8))

us_races$Race=factor(us_races$Race, 
                     levels = us_races$Race[order(-us_races$Percentage)])


## Bar 
us_races %>% ggplot(aes(Race, Percentage, fill = Race))+
  geom_bar(stat="identity", width = 0.6)+
  scale_fill_brewer(palette = "Set2")+
  geom_text(data = us_races, aes(Race, Percentage-2, 
                      label=paste0(Percentage, "%")))

us_races %>% ggplot(aes(Race, Percentage, fill = Race))+
  geom_bar(stat="identity", width = 0.6)+
  scale_fill_brewer(palette = "Set2")+
  geom_text(data = us_races, aes(Race, Percentage-2, 
                                 label=paste0(Percentage, "%")))+
  theme(legend.position = "none")


ggsave("docs/math/resources/us_races.png")

# Steps to convert

us_races %>% ggplot(aes(x="", y = Percentage, fill = Race))+
  geom_bar(stat="identity")+
  coord_polar("y")+
  theme_void()+
  theme(legend.position = "none")+
  geom_text(aes(label = paste0(Percentage, " % \n ", Race)), 
            position = position_stack(vjust = 0.5), 
            size = 4, color = "black")
  
  
us_races %>% ggplot(aes(x="", Percentage, fill = Race))+
  geom_bar(stat="identity")+
  coord_polar("y")+
  theme_void()+
  theme(legend.position = "none")+
  geom_text(aes(label = paste0(Percentage, " % \n ", Race)), 
            position = position_stack(vjust = 0.5), 
            size = 4, color = "black")+
  scale_fill_brewer(palette = "GnBu", direction = -1)
  

## Convert Bar to Pie

us_races %>% ggplot(aes(x="", Percentage, fill = Race))+
  geom_bar(stat="identity", width = 15)+
  scale_fill_manual(values = c("#006699", "#0099cc", "#0066cc", "#6666ff",
                               "#6600ff"))+
  geom_text(aes(label = paste0(Percentage, " % \n ", Race)), 
            position = position_stack(vjust = 0.5), 
            size = 4, color = "white")+
  coord_polar("y", start = 0)+
  theme_void()+
  theme(legend.position = "none")
  
## Donut

us_races %>% ggplot(aes(2, Percentage, fill = Race))+
  geom_col(position = "stack", width = 1)+
  xlim(0.5, 2.5)+
  coord_polar("y")+
  theme_void()+
  geom_text(aes(label = paste0(Percentage, " % \n ", Race)), 
            position = position_stack(vjust = 0.5), size = 4)+
  scale_fill_brewer(palette = 10)+
  theme(legend.position="none")

ggsave("docs/math/resources/us_races_donut.png")
# Works great. Don't tweak

## ggplot2 Pie

pie(us_races$Percentage, us_races$Race,
    col = c('#009933', '#ff9900', '#ffcc99', '#cc6600', '#cc66ff'),
    init.angle = 130, border = NA )

pie(us_races$Percentage, us_races$Race,
    col = c('#9900ff', '#cc99ff', '#cc66ff', '#cc33ff', '#9900cc'),
    init.angle = 130, border = NA )

bd_pop <- tibble(Year = c(1901, 1991, 2001, 2011),
                 Population = c(87, 106, 124, 142))
## Pie 

Sex = c('Male', 'Female')
Number = c(125, 375)
df = data.frame(Sex, Number)

ggplot(aes(x= Sex, y = Number, fill = Sex), data = df) +
  geom_bar(stat = "identity") +
  coord_polar("y") +
  theme_void() +
  theme (legend.position="top") + # legend position
  geom_text(aes(label = (Number/sum(Number))), position = position_stack(vjust = 0.75), size = 3) +
  ggtitle("Participants by Sex")

ggplot(df, aes(x = 2, y = Number, fill = Sex)) +
  geom_col(position = "stack", width = 1) +
  geom_text(aes(label = (Number/sum(Number))), position = position_stack(vjust = 0.75), size = 3) +
  xlim(0.5, 2.5) +
  ggtitle("Participants by Sex")+
  coord_polar("y") +
  theme_void() +
  theme(legend.position="top")
