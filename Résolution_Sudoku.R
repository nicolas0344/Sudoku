library(combinat)

#donne les coordonnées i_1,j_1 du premier élément du bloc (9 éléments) auquel appartient M[i,j]
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

#ex
bloc_ij(2,2)
bloc_ij(3,6)

#donne le nombre de valeurs possibles dans un case cachée du Sudoku
solutions_case<-function(M,i,j){
  if (!(is.na(M[i,j]))){
    return(0)
  }
  
  x <- bloc_ij(i,j)
  a <- x[1]
  b <- x[2]
  
  c <- c(M[i,],M[,j],M[(a:a+2),b],M[(a:a+2),b+1],M[(a:a+2),b+2])
  c <- c[!(is.na(c))]
  c <- factor(c)
  return(9-nlevels(c))
}

#ex
M <- Sudoku()
M <- Grille_incomplete(M,30)
#les valeurs i,j sont à choisir : solutions_case(M,i,j)
solutions_case(M,2,1)


#Première étape de résoltion de l'algorithme de Backtracking (voir pdf projet)
index_Grille<-function(M){
  L<-matrix(0,9,9)
  for (i in 1:9){
    for (j in 1:9){
      L[i,j] <- solutions_case(M,i,j)
    }
  }
  return(L)
}

#ex
index_Grille(M)

#donne la deuxième étape du Backtraking
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

#ex
parcour_Grille(index_Grille(M))


#donne les valeurs admissibles pour une case cachée
valeurs_case<-function(M,i,j){
  x <- bloc_ij(i,j)
  a <- x[1]
  b <- x[2]
  d <- c()
  
  for (k in 1:9){
    if (!(is.element(k,c(M[i,],M[,j],M[(a:a+2),b],M[(a:a+2),b+1],M[(a:a+2),b+2])))){
      d<-c(d,k)
    }
  }
  return(d)
}

#ex
valeurs_case(M,2,1)

