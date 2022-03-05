birthdaysInSample <- function(number){
  birthdays = sample(c(1:365), number, replace=TRUE)
  birthdays = sort(birthdays)
  #print(birthdays)
  same = 0
  for ( i in c(1:(number-1))){
    if(birthdays[i] == birthdays[i+1]){
      same = same + 1
    }
  }
  return(as.logical(same))
}

probability004 <- function(number, population){
  hits = 0
  for(i in c(1:number)){
    if(birthdaysInSample(population)){
      hits = hits + 1
    }
  }
  return(hits/number)
}

for(i in c(1:5)){
  print(probability004(1000,50))
}