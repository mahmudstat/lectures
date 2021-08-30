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

colfunc <- colorRampPalette(c("#33cccc", "#9900ff"))

us_races %>% ggplot(aes(Race, Percentage, fill = Race))+
  geom_bar(stat="identity", width = 0.6)

us_races %>% ggplot(aes(Race, Percentage, fill = Race))+
  geom_bar(stat="identity", width = 0.6)+
  scale_fill_manual(values = colfunc(5))

ggsave("docs/r/tmp_bar1.png")

us_races %>% ggplot(aes(Race, Percentage, fill = Race))+
  geom_bar(stat="identity", width = 0.6)+
  scale_fill_brewer(palette = "Set3")+
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

ggsave("docs/r/tmp_bar3.png")

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
  scale_fill_brewer(palette = 5)

ggsave("docs/r/tmp_pie4.png")

us_races %>% ggplot(aes(x="", y = Percentage, fill = Race))+
  geom_bar(stat="identity")+
  coord_polar("y")+
  theme_void()+
  theme(legend.position = "none")+
  geom_text(aes(label = paste0(Percentage, " % \n ", Race)), 
            position = position_stack(vjust = 0.5), 
            size = 4, color = "black")+
  scale_fill_brewer(palette = 2)

ggsave("docs/r/tmp_pie5.png")

# Donut

us_races %>% ggplot(aes(x=2, y = Percentage, fill = Race))+
  geom_col(position = "stack", width = 1)+
  coord_polar("y")+
  theme_void()+
  theme(legend.position = "none")+
  geom_text(aes(label = paste0(Percentage, " % \n ", Race)), 
            position = position_stack(vjust = 0.5), 
            size = 4, color = "black")+
  scale_fill_manual(values = colfunc(5))+
  xlim(-0.5, 2.5)

## Solar system

planets <- data.frame(planet = c("Mercury", "Venus", "Mars", "Earth",
                                 "Jupiter", "Saturn", "Uranus", "Neptune"),
                      Mass = c(0.05, 0.815, 0.107, 1, 318, 95, 14, 17)) %>% 
  filter(Mass >1)



planets$planet=factor(planets$planet, 
                     levels = planets$planet[order(-planets$Mass)])

## Donut

planets %>% ggplot(aes(x=6, Mass, fill = planet))+
  geom_col(position = "stack", width = 1)+
  coord_polar("y")+
  theme_void()+
  theme(legend.position = "top")+
  labs(title = "Planets' Mass in Terms of Earth Mass")+
  geom_text(aes(label = Mass), 
            position = position_stack(vjust = 0.5), 
            size = 4, color = "black")+
  scale_fill_brewer(palette = 3)+
  xlim(c(4,6.5))

## Base R Pie

pie(us_races$Percentage, us_races$Race, 
    init.angle = 130, border = NA,
    col = heat.colors(5))

pie(us_races$Percentage, us_races$Race,
    col = c('#009933', '#ff9900', '#ffcc99', '#cc6600', '#cc66ff'),
    init.angle = 130, border = NA )

## Base R pie many categories

pie(x=sample(100,26), paste0("Letter Name:", LETTERS),
    col = topo.colors(26),
    init.angle = 359, border = NA)
segments(0, 0, 0.5, 1, col = "red", lwd = 2)
text(0, 1, "init.angle = 90", col = "red")

pie(c(Sky = 78, "Sunny side of pyramid" = 17, "Shady side of pyramid" = 5),
    init.angle = 315, col = c("deepskyblue", "yellow", "yellow3"), border = FALSE)
