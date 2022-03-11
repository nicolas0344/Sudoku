#' Difficulte Sudoku
#' @param D un string = c(Low, Medium, High, Expert)
#' @return retourne une matrice grille de Sudoku par difficulte
#' @export
#' @examples Difficulte("Low")
Difficulte <- function(D){
  M <- Sudoku()
  n <- sample(5:80)[1]
  G <- Grille_incomplete(M,n)
  B <- 0 
  "B = BackTracking(G)"
  if (D == "Low"){
    while (!(is.element(B,10:20))){
      n <- sample(5:80)[1]
      G <- Grille_incomplete(M,n)
      B <- B +1 
      "BackTracking(G)"
    }
    return(G)
  }
  if (D == "Medium"){
    while (!(is.element(B,20:30))){
      n <- sample(5:80)[1]
      G <- Grille_incomplete(M,n)
      B <- B +1 
      "BackTracking(G)"
    }
    return(G)
  }
  if (D == "High"){
    while (!(is.element(B,30:40))){
      n <- sample(5:80)[1]
      G <- Grille_incomplete(M,n)
      B <- B +1 
      "BackTracking(G)"
    }
    return(G)
  }
  if (D == "Expert"){
    while (!(is.element(B,40:50))){
      n <- sample(5:80)[1]
      G <- Grille_incomplete(M,n)
      B <- B +1 
      "BackTracking(G)"
    }
    return(G)
  }
}