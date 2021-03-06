% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Sudoku_solver.R
\name{solve_sudoku2}
\alias{solve_sudoku2}
\title{Solver Sudoku initale}
\usage{
solve_sudoku2(M, etape = 1, P, compteur = 0)
}
\arguments{
\item{M}{matrice de Sudoku incomplete}

\item{etape}{valeur initale = 1}

\item{P}{Parcour de la grille du Sudoku incomplet}

\item{compteur}{valeur initale = 0}
}
\value{
retourne un vecteur de taille 82, dont la solution(1:81) et le backtraking/compteur(82)
}
\description{
Solver Sudoku initale
}
\examples{
solve_sudoku2(Grille_incomplete(Sudoku(),30),etape=1,parcour_Grille(index_Grille(Grille_incomplete(Sudoku(),30))),compteur=0)
}
