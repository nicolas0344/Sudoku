#' Indice d'un reel
#' @param x un reel
#' @return retourne l'entier le plus proche de x
#' @export
#' @examples indice(1.6)
indice <- function(x){
  a <- floor(x)
  if (x>a+0.5){
    return(a+1)
  }
  if (x<=a+0.5){
    return(a)
  }
}