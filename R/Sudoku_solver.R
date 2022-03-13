#' Solver Sudoku initale
#' @param M matrice de Sudoku incomplete
#' @param etape valeur initale = 1
#' @param P Parcour de la grille du Sudoku incomplet 
#' @param compteur valeur initale = 0
#' @return retourne un vecteur de taille 82, dont la solution(1:81) et le backtraking/compteur(82)
#' @export
#' @examples solve_sudoku2(Grille_incomplete(Sudoku(),30),etape=1,parcour_Grille(index_Grille(Grille_incomplete(Sudoku(),30))),compteur=0)
solve_sudoku2<- function(M, etape=1, P, compteur=0){
  if(all(!is.na(M))){
    return(c(M,compteur))
  }
  A <- which(P==etape,arr.ind = T)
  i <- A[1]
  j <- A[2]
  choices <- valeurs_case(M,i,j)
  
  for (k in choices){
    M[i,j] <- k
    answer <- solve_sudoku2(M,etape+1,P,compteur+1)
    compteur = compteur + 1
    if (!is.null(answer[1])){
      return(answer)
    }
  }
  return(NULL)
}

#' Solver Sudoku 
#' @param M matrice de Sudoku incomplete
#' @return retourne la solution sous forme matricielle
#' @export
#' @examples solve_sudoku1(Grille_incomplete(Sudoku(),30))
solve_sudoku1 <- function(M){
  P <- parcour_Grille(index_Grille(M))
  M <- solve_sudoku2(M, etape = 1, P, compteur =0)[1:81]
  return(matrix(M,9,9))
}

#' Backtraking
#' @param M matrice de Sudoku incomplete 
#' @return retourne le backtraking/compteur dans solve_sudoku2
#' @export
#' @examples Backtraking(Grille_incomplete(Sudoku(),30))
Backtraking <- function(M){
  P <- parcour_Grille(index_Grille(M))
  B <- solve_sudoku2(M, etape = 1, P, compteur =0)[82]
  return(B)
}


