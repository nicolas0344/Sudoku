plotSudoku <- function(sol, set, sud) {
  # Inspiration from
  # http://www.econometricsbysimulation.com/2013/06/sudoku-automation-solver-challenge-r.html
  
  plot(0:10, 0:10, type="n", axes=F, xlab="Column", ylab="Row")
  
  for (row in 1:9) for (col in 1:9) {
    backcol = grey(.95)
    number = sol[row, col]
    if (sud[row, col] != 0) {
      backcol = grey(.85) # given
      number = sud[row, col]
    } else if (set[row, col] != 0) { # a guess
      if (sol[row, col] == 0) {
        grey(.65) # no solution yet
        number = set[row, col]
      } else if (sol[row, col] == set[row, col]) {
        backcol = rgb(0, 1, 0) # correct guess - green
      } else {
        backcol = rgb(1, 0, 0) # wrong guess - red
      }
    } else if (sol[row, col] != 0) {
      backcol = rgb(1, 1, 0) # not guessed - yellow
    }
    polygon(c(col-.5, col-.5, col+.5, col+.5), 
            c((10-row)-.5, (10-row)+.5, (10-row)+.5, (10-row)-.5), col=backcol)
    if (number > 0) text(col, 10-row, number, offset=0)
  }
  
  # Add row and column numbers
  for (i in 1:9) {
    text(.25, 10-i, i, offset=0)    
    text(9.75, 10-i, i, offset=0)
    text(i, .1, i, offset=0)        
    text(i, 9.9, i, offset=0)
  }
  
  # Plot thick lines
  for (i in seq(.5,9.5,3)) {
    lines(c(.5, 9.5), c(i, i), lwd=3)
    lines(c(i, i), c(.5, 9.5), lwd=3)
  }  
}

setMatrix <- matrix(0, nrow=9, ncol=9)
solutionMatrix <- matrix(0, nrow=9, ncol=9)
sudokuMatrix <- matrix(0, nrow=9, ncol=9)

plotSudoku(solutionMatrix, setMatrix, sudokuMatrix)   


      