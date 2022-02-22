library(combinat)

Grille_incomplete<-function(M,n){
  m<-length(M)
  if (n>m){
    return(c("n doit être inférieur à",m))
  }
  a <- 0 
  while (a < n){
    n_1 <- sample(1:9)[1]
    n_2 <- sample(1:9)[1]
    
    if (!(is.na(M[n_1,n_2]))){
      M[n_1,n_2]<-NA
      a <- a+1
    }
  }
  return(M)
}



