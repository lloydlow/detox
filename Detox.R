setwd("/Users/lloyd/Documents/lloyd_2015/Research/Detox/GSTs/Analysis_in_R")
detox.df <- read.csv("AllgenesAllpseudo_v27.csv")
detox.df <- detox.df[1:nrow(detox.df)-1,]
table(detox.df$Species,detox.df$Class)
