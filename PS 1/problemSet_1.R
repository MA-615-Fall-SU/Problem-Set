myName <- "Qihan Su"

#Vector
#1
#1(a)
v1 <- c(1:20)
#1(b)
v2 <- c(20:1)
#1(c)
v3 <- seq(1,19,by=2)
#1(d)
v4 <- rep(c(3,7,11),10)
#1(e)
v5 <- rep(c(3,7,11),length=31)

#2
x <- seq(3,6,by=0.1)
x1 <- exp(x)*sin(x)

#3
i <- c(10:100)
sum1 <- sum(i^3+4*i^2)

#4
#4(a)
# label <- rep('label',times=30)
# x <- c(1:30)
str1 <- paste('label', 1:30, sep=" ")

#4(b)
str2 <- paste("function", 1:30,sep="")

#5
vs <- c(1,'function',NA, seq(1,5,2), 0.125)
vs <- paste(vs, collapse = ",")


#Matrix
#6
A <- matrix(1:9,nrow=3,ncol=3)
m1_ans=A%*%A%*%A

#7
r1 <- rep(c(12),17)
r2 <- rep(c(-12),17)
r3 <- rep(c(12),17)
B <- c(r1,r2,r3)
B <- matrix(B,nrow=17,ncol=3)
m2_ans = t(B)%*%B

#8
yVec <- c(7,-1,-3,5,17)
Amat <- matrix(0,nr=5,nc=5)
Amat <- abs(col(Amat)-row(Amat))+1
solve(Amat,yVec)
m3_ans <- solve(Amat,yVec)


#Function
#9
#9(a)
xv <- seq(0.0, 1.0, by= 0.1); xv

function1 <- function(xv)
{
  xv^(1:length(xv))
}

func1_ans = function1(xv)


#9(b)
function2 <- function(xv)
{
  (xv^(1:length(xv))/(1:length(xv)))
}

func2_ans = function2(xv)

#9(c)
function3 <- function(x,n)
{
  1+sum((x^(1:n))/(1:n))
}
func3_ans <- function3(3,3)
func3_ans

#10
cel_to_far <- function(xv)
{
  return((xv*1.8)+32)
}
cel_to_far(30)

far_to_cel <- function(xv)
{
  return((xv-32)*(5/9))
}
far_to_cel(50)

#11
func_odd <- function(x)
{
  seq(1,x,by=2)
}
odd_ans <- func_odd(2000)
odd_ans


#12
function12 <- function(x)
{
  v12 <- function(r){sum(((1:r)^0.5)/(11+3.5*r^1.2))}
  sum(sapply(x, FUN=v12))
}
sum_ans <- function12(10)
sum_ans

#13
modNumber <- function(x, y)
{
  while(x %% y != 0){
    x = x + 1
  }
  xy <- x
}

#14
numberOfWheels <- function(x)
{
  return(switch(x,
         "unicycle" = 1,
         "bike" = 2,
         "car" = 4,
         "truck" = 4,
         "tricycle" = 3,
         "motorcycle" = 3)
  )
}


#15
myFactorial <- function(n){
  if(n <= 1){
    return(1)
  }else{
    return(n*myFactorial(n-1))
  }
}

#16
myCustomFactorial <- function(x,y){
  prod(y:x)
}

#17
costomRiverMean <- function(x){
  xv <- x
  sum(rivers[xv]/sum(xv))
}
costomRiverMean(400)

#18
longTeeth <- function(){
  for (i in 60){
    if(i >= 15){
      longTeeth <- c(longTeeth,i)
    }
  }
  return (longTeeth)
}
# findlongTeeth()

#19
apply(mtcars,2, mean)
averageHorsePower <- c(mean(mtcars$hp));averageHorsePower
averageWeight <- c(mean(mtcars$wt))

#20
function20 <- function(x,y)
{
  rowSums(sapply(y,FUN=function(n){n<x}))
}
