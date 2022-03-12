#' Bloc d'une case du Sudoku
#' @param i entier entre 1 et 9 
#' @param j entier entre 1 et 9 
#' @return retourne les coordonnees i_1,j_1 du premier element du bloc (9 elements) auquel appartient la case de coordonnees i,j
#' @export
#' @examples bloc_ij(2,2)
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

#' Valeurs d'une case du Sudoku
#' @param M matrice incomplete de Sudoku
#' @param i entier entre 1 et 9 
#' @param j entier entre 1 et 9 
#' @return retourne le nombre de valeurs possibles dans un case cachee du Sudoku
#' @export
#' @examples solutions_case(Grille_incomplete(Sudoku(),30),2,2)
solutions_case<-function(M,i,j){
  if (!(is.na(M[i,j]))){
    return(0)
  }
  
  x <- bloc_ij(i,j)
  a <- x[1]
  b <- x[2]
  
  c <- c(M[i,],M[,j],M[a:(a+2),b],M[a:(a+2),b+1],M[a:(a+2),b+2])
  c <- c[!(is.na(c))]
  c <- factor(c)
  return(9-nlevels(c))
}


#' Premiere étape de resoltion de l'algorithme de Backtracking
#' @param M matrice incomplete de Sudoku
#' @return retourne une matrice dont les cases de valeur manquante sont remplacees par leur nb de solution possible
#' @export
#' @examples index_Grille(Grille_incomplete(Sudoku(),30))
index_Grille<-function(M){
  L<-matrix(0,9,9)
  for (i in 1:9){
    for (j in 1:9){
      L[i,j] <- solutions_case(M,i,j)
    }
  }
  return(L)
}

#' Deuxième étape du Backtraking
#' @param M matrice indexee de Sudoku
#' @return retourne la matrice de Sudoku avec l'ordre de lecture dans les cases vides
#' @export
#' @examples parcour_Grille(index_Grille(Grille_incomplete(Sudoku(),30)))
parcour_Grille<-function(M){
  b <- 1
  L <- matrix(0,9,9)
  
  for (a in 1:9){
    for (i in 1:9){
      for (j in 1:9){
        if (M[i,j]==a){
          L[i,j]<-b
          b<-b+1
        }
      }
    }
  }
  return(L)
}

#' Valeurs admissibles pour une case cachée
#' @param M matrice incomplete de Sudoku
#' @param i entier entre 1 et 9 
#' @param j entier entre 1 et 9 
#' @return retourne les valeurs admissibles pour une case cachee
#' @export
#' @examples valeurs_case(Grille_incomplete(Sudoku(),30),2,1)
valeurs_case<-function(M,i,j){
  x <- bloc_ij(i,j)
  a <- x[1]
  b <- x[2]
  d <- c()
  
  for (k in 1:9){
    if (!(is.element(k,c(M[i,],M[,j],M[a:(a+2),b],M[a:(a+2),b+1],M[a:(a+2),b+2])))){
      d<-c(d,k)
    }
  }
  return(d)
}

