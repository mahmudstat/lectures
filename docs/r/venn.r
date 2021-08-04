library(VennDiagram)
# https://statisticsglobe.com/venn-diagram-in-r
# Three
draw.triple.venn(area1 = 10,                          # Remove lines from venn diagram
                 area2 = 20,
                 area3 = 15,
                 n12 = 2,
                 n23 = 3,
                 n13 = 7,
                 n123 = 2,
                 fill = c("pink", "green", "orange"),
                 lty = "blank")

## two

draw.pairwise.venn(area1 = 10,                        # Create pairwise venn diagram
                   area2 = 20,
                   cross.area = 2)

x <- data.frame(x <- rep(210801:210831, each=3))
