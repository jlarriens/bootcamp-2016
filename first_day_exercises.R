#question 1
for (ii in 1:9) {
if (ii==9){
  cat("*")
} else {
  cat("\n")
}
  } 

#question 2
for (ii in 1:10){
  if (ii<11){
    cat("*&")
  }}

#question 3
#dog starting value = 11, dogs ending value = 15
#meatloaf starting value = 6, meatloaf ending value = 10  
#bubbles starting value = 11, bubbles ending value = 8

#question 4, modify this statement so it prints out a message in 2020 as well 
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
  }
    else if(years[ii] %% 4 == 0){
    }
    cat(years[ii], 'Hooray, elections!', sep = '\t', fill = T)
  }

#question 5
#define bankAccounts and interest rate
bankAccounts=c(10, 9.2, 5.6, 3.7, 8.8, 0.5)
interestRate=0.0125
#define compounded. It must repeat for the length of bankAccounts
compounded=rep(0,length.out=length(bankAccounts))
for(i in 1:length(bankAccounts)){
  compounded[i]=interestRate*bankAccounts[i]+bankAccounts[i];
}
compounded

bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this

#question 6
bankAccounts=c(10, 9.2, 5.6); #define bank accounts here
interestRate=0.0525;   
#deduct
house=c(4.8, 3.8, 5.7);food=c(3.5, 4.3, 5.0);fun=c(7.8, 2.1, 10.5);
#add incomes (through TAships) 
income=c(21, 21, 21);
realbankAccounts=(bankAccounts-house-food-fun+income)
realbankAccounts
realbankAccounts*interestRate+realbankAccounts
#initialize compounded vector. Make a vector representing bank accounts, turn into a list for easier reference
#use rep function to replicate some action to each element in vector 5 times (for 5 years)
compounded <- rep(list(c(0,0,0)), 5)
#build nested for-loop
for (j in 1:5) {
  for (i in 1:length(bankAccounts)) {
    compounded[[j]][i]=(j*interestRate*realbankAccounts[i])+realbankAccounts[i]}};
compounded    
 
#question 7
house <- c(4.8, 3.8, 5.7); 
food<- c(3.5, 4.3, 5.0); 
fun <- c(7.8, 2.1, 10.5); 
#and incomes (through TAships) of 
income <- c(21, 21, 21);
income<-income-house-food-fun
#write nested for-loop
for (j in 1:5) {
  #if an odd year, add 5000 to income 1 and 3
  if (j%%2!=0){
    income[[j]][1]<-income[[j]][1]+5000
    income[[j]][3]<-income[[j]][3]+5000}
      for (i in 1:length(income)) {
        compounded[[j]][i]=(j*interestRate*income[i])+income[i]}};
compounded    

#question 8
answer<-0
count<-0
while (count<18){
  print(c(count,answer))
  answer <- answer + (count+1)
  count<-count+1
}

#question 9
question9<-function(num){
  if (num<=-1){print("small")}
    if(num<=1){print("medium")}
      else{print("big")}}
 question9(2)




