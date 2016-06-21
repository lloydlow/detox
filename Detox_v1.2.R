setwd("/Users/lloyd/Documents/lloyd_2015/Research/Detox/GSTs/Analysis_in_R")
#need to delete last line in csv using vi
detox.df <- read.csv("AllgenesAllpseudo_v27.csv")
#detox.df <- detox.df[1:nrow(detox.df)-1,]
Spp.class <- table(detox.df$Species,detox.df$Class)
Spp.class <- as.data.frame(unclass(Spp.class))
#put back label on the axes
boxplot(Spp.class$alpha,Spp.class$mu,Spp.class$theta,
        Spp.class$pi,Spp.class$omega,Spp.class$zeta)
barplot(t(test2),col = c("light coral","cyan","orange","deep pink","purple","green"),
        las = 2, cex.axis = 0.8)
