exercise001 <- function(){
  # Returns if in 24 rolls at least a double aces have been happened
  count = 0
  for(i in c(0:24) ){
    a = round(runif(1,0,6), 0)
    b = round(runif(1,0,6), 0)
    if (a*b == 1){
      count = count + 1
    }
  }
  return(as.integer(count > 0))
}

probability001 <-function(number){
  probab = 0
  for (i in c(0:number)){
    probab = probab + exercise001()
  }
  return(probab/number)
}

probability001(10000)