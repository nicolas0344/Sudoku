#' Difficulte Sudoku
#' @param D un string = c(Low, Medium, High, Expert)
#' @return retourne une matrice grille de Sudoku par difficulte
#' @export
#' @examples Difficulte2("Low")
Difficulte2<- function(D){
  M <- Sudoku()
  if (D == "Low" ){
    n <- 40
    G <- Grille_incomplete(M,n)
    B <- Backtraking(G)
    while (B>51){
      M <- Sudoku()
      G <- Grille_incomplete(M,n)
      B <- Backtraking(G)
    }
    return(G)
  }
  if (D == "Medium" ){
    n <- 47
    G <- Grille_incomplete(M,n)
    B <- Backtraking(G)
    while (!(is.element(B,47:58))){
      M <- Sudoku()
      G <- Grille_incomplete(M,n)
      B <- Backtraking(G)
    }
    return(G)
  }
  if (D == "High" ){
    n <- 55
    G <- Grille_incomplete(M,n)
    B <- Backtraking(G)
    while (!(is.element(B,55:66))){
      M <- Sudoku()
      G <- Grille_incomplete(M,n)
      B <- Backtraking(G)
    }
    return(G)
  }
  if (D == "Expert" ){
    n <- 62
    G <- Grille_incomplete(M,n)
    B <- Backtraking(G)
    "BackTracking(G)"
    while (B<62){
      M <- Sudoku()
      G <- Grille_incomplete(M,n)
      B <- Backtraking(G)
    }
    return(G)
  }
  else {
    return(Grille_incomplete(M,45))
  }
}