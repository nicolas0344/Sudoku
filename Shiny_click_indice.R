indice <- function(x){
  a <- floor(x)
  if (x>a+0.5){
    return(a+1)
  }
  if (x<=a+0.5){
    return(a)
  }
}