
#QUESTION 1
setwd("/Users/jessicaarriens/bootcamp-2016")
getwd()
snpsDataFrame=read.table('hapmap_CEU_r23a_chr2_ld-2.txt',header=TRUE)

#convert data frame to a matrix
snps=as.matrix(snpsDataFrame)

# perform the chi-square test for HW that we did in class on all SNPs
# save P-values in a vector called “pvals”
compute_chisquare=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n
  chisq=sum((obscnts-expcnts)^2/expcnts)
  return(chisq)
}

chisqs=apply(snps,1,compute_chisquare)
chisqs
pvals=pchisq(chisqs,1,lower.tail=FALSE)

# What proportion of P-values  are <0.05? 
length(pvals[pvals<0.05])
length(pvals[pvals<0.05])/length(pvals)
#proportion = 0.04509218
# What proportion are <0.01? 
length(pvals[pvals<0.01])/length(pvals)
#proportion = 0.01021425
# Are any <0.001?
length(pvals[pvals<0.001])/length(pvals)
#proportion = 0.00124564

# How many SNPs were tested for departures from Hardy-Weinberg equilibrium? 
num_pval=length(pvals)

# Hint: How many P-values do you have? = 4014

# Say that you have “num_pval” total P-values.Assuming that the null hypothesis is true 
# (i.e. all SNPs are in Hardy-Weinberg), the smallest P-values is expected to be 1/num_pval 
# The second smallest P-value is expected to be 2/num_pval 
# The third smallest P-value is expected to be 3/num_pval, etc. 
# The largest P-value is expected to be num_pval/num_pval (or 1). 
# Calculate the vector of expected P-values for the chi-square test. 
# Save these in the vector called “exp_pvals”.
exp_pvals<-c(1:num_pval)/num_pval
#sort observed p-values smallest to largest and save in a new variable 
sort_pvals=sort(pvals)


# Find the –log10 of the observed and expected P-values. 
# Store these in the vector “log_sort_pvals” and “log_exp_pvals”.
log_sort_pvals=-log10(sort_pvals)
log_exp_pvals=-log10(exp_pvals)

#make the qq plot
qqplot(log_exp_pvals,log_sort_pvals)

# Add a diagonal line to the QQ plot
abline(a=0,b=1,col="magenta",lwd=2)

# QUESTION 2

# Load file, store in a data frame 
zz=read.table('pheno.sim.2014-1.txt',header=TRUE)
str(zz)

# Find the value of the phenotype such that 25% of the individuals have a phenotype LESS than this value.
sort_zz=sort(zz$glucose_mmolperL)
str(sort_zz)

quantile(sort_zz,probs=seq(0,1,0.25))
first_quart <- quantile(sort_zz, probs = seq(0,1,0.25))[2]
third_quart<-quantile(sort_zz,probs=seq(0,1,0.25))[4]

# Find the value of the phenotype such that 25% of the individuals have a phenotype GREATER than this value 

# Make a density plot of the distribution of phenotypes (i.e.theblood glucose levels). 
# Add vertical lines to the plot to denote the 25% and 75% tails of the distribution.
plot(density(sort_zz),main="phenotype density")
abline(v=first_quart,col="green"); abline(v=third_quart,col="green")


