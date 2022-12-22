library("GGally") 
library("rstudioapi")         

setwd(dirname(getActiveDocumentContext()$path))  

data <- read.csv("data.csv")
data <- data[c(2:6)]

png(paste("analysis.png", sep = ""), width=2000, height=1304, units="px")
ggpairs(data=data,
        mapping = ggplot2::aes(color = color,alpha=0.5),
        title = "Analysis of n=713 colored chocolate peanuts from four different brands")+    
  scale_fill_manual(values=c('blue','brown','yellow','green','orange','red')) +
  scale_colour_manual(values=c('blue','brown','yellow','green','orange','red')) +
  theme(legend.position = "none", 
        panel.grid.major = element_blank(), 
        axis.text = element_text(colour = "black", size = 18),
        strip.background = element_rect(fill = "#999999"),
        strip.text = element_text(colour = "white", size = 18, face = "bold"), 
        panel.border = element_rect(linetype = "dashed", colour = "black", fill = NA),
        plot.title = element_text(hjust = 0.5, size=36))
dev.off()