#lecture chapter5
#เกี่ยวกับพวกทอยเต๋า
#เช็คว่าเต๋าตอนทอยมันแปร์ไม๊ อยากใส่ weightให้เต๋ายังไง

roll <- function(){
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  
 sum(dice)
}

roll2 <- function(bones=1:6){
  
  dice <- sample(bones, size = 2, replace = TRUE)
  
  sum(dice)
  
}

gplot <- function(){
  x <- c(-1,-0.8,-0.6,-0.4,-0.2,0,0.2,0.4,0.6,0.8,1)
  y <- x^3
  qplot(x,y)
}

gplot2 <- function(){
  x2 <- c(1,1,1,1,1,2,2,2,2,3,3,4)
  qplot(x2 ,binwidth = 1)
  
  x <- c(1,2,2,2,3,3)
  qplot(x, binwidth = 1)
  
}

##function roll แบบโกง weight
rollCheat <- function(){
  die <- 1:6
  weight = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8)
  dice <- sample (die , size=2 , replace = T , prob = weight)
  sum(dice)
}

#โยนลูกเต๋าหลายๆรอบเพื่อดูว่ามันfairไม๊
rolls <- function(round){
  
  #replicate(round,...comand...)
  rolling <- replicate(round,rollCheat())
  qplot(rolling , binwidth=1)
}



