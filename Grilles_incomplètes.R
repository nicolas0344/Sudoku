library(combinat)

Grille_incomplete<-function(M,n){
  m<-length(M)
  if (n>m){
    return(c("n doit être inférieur à",m))
  }
  for (i in 1:n){
    n_1 <- sample(1:9)[1]
    n_2 <- sample(1:9)[1]
    M[n_1,n_2]<-NA
  }
  return(M)
}

