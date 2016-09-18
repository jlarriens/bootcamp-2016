
#Write a function (called “get_heights”) to draw sample of individuals from population

get_heights=function(sample_size){
  heights<-rnorm(sample_size, mean=69, sd=10)
  return(mean(heights))}

# Use a “for” loop to call get_heights function 1000 times, w/sample of size 100
# Save mean height from each replicate in a vector called “mean_heights_100”
mean_heights_100<-rep(0,length=1000) #initialize mean_heights_100 variable
for(i in 1:1000){
  mean_heights_100[i]=get_heights(100)
}
str(mean_heights_100) #check structure of new variable 

# Use a “for” loop to call get_heights 1000 times w/sample of size 1000 from the population. 
# Save the mean height from each replicate in a vector called “mean_heights_1000”
mean_heights_1000<-rep(1,length=1000) 
for(i in 1:1000){
  mean_heights_1000[i]=get_heights(1000)
}

# Plot a histogram of the distribution of the average heights for your sample size of 100 and 1000 individuals. 
#make sure both histograms have same bin breaks
bins<-seq(65,74,by=0.5)
hist(mean_heights_100,breaks=bins)$breaks
hist(mean_heights_1000,breaks=bins)$breaks
counts_100<-hist(mean_heights_100,breaks=bins)$counts
counts_1000<-hist(mean_heights_1000,breaks=bins)$counts

par(mfrow=c(1,1),mar=c(4,4,3,2)) #set plotting area and margins
#plot the data 
barplot(rbind(counts_100,counts_1000),beside=T,col=c("red","blue"),xlab="average height in inches",
        ylab="sample size", names.arg=seq(65,73.5,by=0.5),
        main="How tall are people in LA?",las=1)
#make a legend
legend("topleft",c("n=100","n=1000"),text.col=c("red","blue"),cex=1.5,bty="n")

