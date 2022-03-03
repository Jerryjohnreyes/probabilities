rotten_in_sample <- function(){
  'This function returns the number of rotten eggs supposing that 1,2,3 are the'
  'rotten eggs.'
  rotten = 0
  sample_vector = sample(c(1:12), 5, replace=FALSE)
  if (1 %in% sample_vector){rotten = rotten + 1  }
  if (2 %in% sample_vector){rotten = rotten + 1  }
  if (3 %in% sample_vector){rotten = rotten + 1  }
  return( rotten)
}

probability003 <- function(number){
  'This functions calculates the probability that in a sample of five there are'
  'exactly two rotten eggs.'
  hit = 0
  for (i in c(1:number)){
    if (rotten_in_sample() == 2){
      hit = hit + 1
    }
  }
  return(hit/number)
}

'Some results related to the probabilities'
for (i in c(0:5)) {
  print(probability003(1000))
}