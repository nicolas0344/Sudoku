#' Permutation par bloc de 3
#' @param c un vecteur
#' @return retourne un vecteur permute de 3 valeurs
#' @export
#' @examples perm3(c(1,2,3,4,5))
perm3<-function(c){
  n<-length(c)
  a<-rep(0,n)
  a[1:3]<-c[(n-2):n]
  for (i in 4:n){
    a[i]<-c[i-3]
    if (i == n)
      return(a)
  }
}