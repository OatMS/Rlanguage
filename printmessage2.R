printmessage2 <- function(x){
  
  if(is.na(x))
    print("x is a missing value!") else if (x >0)
      print("x is greater than zero") else print("X is less than or equal to zero")
  invisible(x)
  
}
X <-log(-1)

f <- function(x){
  r <- x- g(x)
  r
}

g <- function(y){
  r <- y*h(y)
  r
}

h <- function(z){
  r <- log(z)
  if(r < 10)
    r^2
  else 
    r^3
}

SS <- function(mu,x){
  d <-x- mu
  d2<-d^2
   ss <- sum(d2)
  ss
}