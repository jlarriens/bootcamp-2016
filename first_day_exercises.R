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
  