library(combinat)

bloc_ij<-function(i,j){
  x<-c(0,0)
  for (k in seq(1,7,by=3)){
    if (is.element(i,(k:(k+3)))){
      x[1]<-k
    }
    if (is.element(j,(k:(k+3)))){
      x[2]<-k
    }
  }
  return(x)
}


solutions_case<-function(M,i,j){
  x <- bloc_ij(i,j)
  a <- x[1]
  b <- x[2]
  
  c <- c(M[i,],M[,j],M[(a:a+2),b],M[(a:a+2),b+1],M[(a:a+2),b+2])
  c <- c[!(is.na(c))]
  c <- factor(c)
  return(9-nlevels(c))
}

M <- Grille_incomplete(Sudoku(),30)
solutions_case(M,1,3)


