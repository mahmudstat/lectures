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


us_races %>% ggplot(aes(Race, Percentage, fill = Race))+
  geom_bar(stat="identity", width = 0.6)

ggsave("docs/r/tmp_bar1.png")

us_races %>% ggplot(aes(Race, Percentage, fill = Race))+
  geom_bar(stat="identity", width = 0.6)+
  scale_fill_brewer(palette = "Set2")+
  geom_text(data = us_races, aes(Race, Percentage-2, 
                                 label=paste0(Percentage, "%")))

ggsave("docs/r/tmp_bar2.png")

# Remove legend

us_races %>% ggplot(aes(Race, Percentage, fill = Race))+
  geom_bar(stat="identity", width = 0.6)+
  scale_fill_brewer(palette = "Set2")+
  geom_text(data = us_races, aes(Race, Percentage-2, 
                                 label=paste0(Percentage, "%")))+
  theme(legend.position = "none")

#Pie 1

us_races %>% ggplot(aes(x="", y = Percentage, fill = Race))+
  geom_bar(stat="identity")

ggsave("docs/r/tmp_pie1.png")

us_races %>% ggplot(aes(x="", y = Percentage, fill = Race))+
  geom_bar(stat="identity")+
  coord_polar("y")
ggsave("docs/r/tmp_pie2.png")

us_races %>% ggplot(aes(x="", y = Percentage, fill = Race))+
  geom_bar(stat="identity")+
  coord_polar("y")+
  theme_void()

ggsave("docs/r/tmp_pie3.png")


us_races %>% ggplot(aes(x="", y = Percentage, fill = Race))+
  geom_bar(stat="identity")+
  coord_polar("y")+
  theme_void()+
  scale_fill_brewer(palette = 13)

ggsave("docs/r/tmp_pie4.png")

us_races %>% ggplot(aes(x="", y = Percentage, fill = Race))+
  geom_bar(stat="identity")+
  coord_polar("y")+
  theme_void()+
  scale_fill_brewer(palette = 13)+
  theme(legend.position = "none")+
  geom_text(aes(label = paste0(Percentage, " % \n ", Race)), 
            position = position_stack(vjust = 0.5), 
            size = 4, color = "black")

ggsave("docs/r/tmp_pie5.png")

