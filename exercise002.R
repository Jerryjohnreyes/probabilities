exercise002 <- function(){
  'This function will return the number of kings that a five-card poker hand has.'
  poker_hand = vector(mode='list', length = 5)
  for (i in c(1:5)){
    poker_hand[i] = round(runif(1,1,52))
  }
  kings_in_hand = vector(mode='list')
  for (i in c(1:5)){
    if (poker_hand[[i]] %% 13 == 0){
      kings_in_hand[i] = 1
    }else{kings_in_hand[i]=0}
  }
  #print(kings_in_hand)
  return(sum(unlist(kings_in_hand)))
}

probability002 <- function(number){
  'This function will return the approximate probability that a poker hand'
  'has exactly two kings.'s
  ocurrences = vector(mode='list', length = number)
  for (i in c(1:number)){
    number_of_kings = exercise002()
    if(number_of_kings == 2){ocurrences[[i]]=1}
    else{ocurrences[[i]]=0}
  }
  return(sum(unlist(ocurrences))/number)
}