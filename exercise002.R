exercise002 <- function(){
  poker_hand = vector(mode='list', length = 5)
  for (i in c(1:5)){
    poker_hand[i] = round(runif(1,1,52))
  }
  print(poker_hand)
  kings_in_hand = vector(mode='list')
  for (i in c(1:5)){
    if (poker_hand[i] %% 13){
      kings_in_hand[i] = 1
    }else{kings_in_hand[i]=0}
  }
  print(kings_in_hand)
}