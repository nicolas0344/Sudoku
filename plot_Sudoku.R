plotSudoku_2 <- function(M) {
  par(mar=c(3,3,3,3))
  plot(0:10, 0:10, type="n", axes=FALSE, xlab=NA, ylab=NA)
  for (row in 1:9) {
    for (col in 1:9) {
      
      backcol = grey(.95)
      number = M[row, col]
      polygon(c(col-.5, col-.5, col+.5, col+.5), 
            c((10-row)-.5, (10-row)+.5, (10-row)+.5, (10-row)-.5), col=backcol)
      if (number > 0 & (!(is.na(number)))) text(col, 10-row, number, offset=0)
    }
  }
  
  for (i in 1:9) {
    text(.25, 10-i, i, offset=0)    
    text(9.75, 10-i, i, offset=0)
    text(i, .1, i, offset=0)        
    text(i, 9.9, i, offset=0)
  }
  
  for (i in seq(.5,9.5,3)) {
    lines(c(.5, 9.5), c(i, i), lwd=3)
    lines(c(i, i), c(.5, 9.5), lwd=3)
  }
}
M = diag(1:9)
M = Grille_incomplete(Sudoku(),30)
plotSudoku_2(M)



