% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Resolution_Sudoku.R
\name{bloc_ij}
\alias{bloc_ij}
\title{Bloc d'une case du Sudoku}
\usage{
bloc_ij(i, j)
}
\arguments{
\item{i}{entier entre 1 et 9}

\item{j}{entier entre 1 et 9}
}
\value{
retourne les coordonnees i_1,j_1 du premier element du bloc (9 elements) auquel appartient la case de coordonnees i,j
}
\description{
Bloc d'une case du Sudoku
}
\examples{
bloc_ij(2,2)
}
