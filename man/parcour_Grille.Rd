% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Resolution_Sudoku.R
\name{parcour_Grille}
\alias{parcour_Grille}
\title{Deuxième étape du Backtraking}
\usage{
parcour_Grille(M)
}
\arguments{
\item{M}{matrice indexee de Sudoku}
}
\value{
retourne la matrice de Sudoku avec l'ordre de lecture dans les cases vides
}
\description{
Deuxième étape du Backtraking
}
\examples{
parcour_Grille(index_Grille(Grille_incomplete(Sudoku(),30)))
}
