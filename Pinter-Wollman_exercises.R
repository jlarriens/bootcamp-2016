#load Chick Weight data set
ChickWeight=ChickWeight
head(ChickWeight)
# Plot ChickWeight diet and examine if there is a statistical difference between weights of chicks
#assigned to different diet treatments on day 0
unique(ChickWeight$Time)
day0<-ChickWeight[ChickWeight$Time==0,]
boxplot(weight~Diet,data=day0)
#there is no statistical difference
#Plot and examine if there is a statistical difference between the weights of chicks
#assigned to different diet treatments at the end of the study (day 21).
day21<-ChickWeight[ChickWeight$Time==21,]
boxplot(weight~Diet,data=day21)
#there is more variance 
#is there an effect of diet on chick growth? use repeated measures anova
anova2=aov(ChickWeight$weight~ChickWeight$Diet)
summary(anova2)
#plot the effects of diet on chick growth
boxplot(weight~Diet,data=ChickWeight)


#Using a for-loop, plot the growth of each chick in a different color, all on the same plot
plot.new()
colors<-rainbow(50)
for (i in 1:50){
  chick <- ChickWeight[ChickWeight$Chick==i,1]
  lines(chick,col=colors[i])
}

#and I recently learned we can also do this in ggplot! 
library(ggplot2)
p <- ggplot(data=ChickWeight, aes(y=weight, x=Time))
p + geom_point(colour = factor(ChickWeight$Chick))


