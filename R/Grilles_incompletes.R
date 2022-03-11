#' Matrice d'une grille de Sudoku
#' @param M matrice de Sudoku
#' @param n nb de valeur a retirer 
#'
#' @return retourne une matrice de Sudoku avec n valeurs cachees aleatoirement
#' @export 
#' @examples Grille_incomplete(Sudoku(),30)
Grille_incomplete<-function(M,n){
  m<-length(M)
  if (n>m){
    return(c("n doit etre inferieur a",m))
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

