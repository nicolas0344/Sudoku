#' Matrice de Sudoku
#' @return retourne une matrice de Sudoku complete 
#' @export
#' @examples Sudoku()
Sudoku<-function(){
  M<-matrix(0,nrow=9,ncol=9)
  L1<-sample(1:9)
  M[1,]<-L1
  M[2,]<-perm3(L1)
  M[3,]<-perm3(M[2,])
  
  for (j in seq(1,7,by=3)){
    for (i in seq(4,7,by=3)){
      a<-c(M[(i-3):(i-1),j],M[(i-3):(i-1),j+1],M[(i-3):(i-1),j+2])
      L_c<-perm3(a)
      M[i:(i+2),j]<-L_c[1:3]
      M[i:(i+2),j+1]<-L_c[4:6]
      M[i:(i+2),j+2]<-L_c[7:9]
    }
  }
  return(M)
}


