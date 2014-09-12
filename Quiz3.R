# 1.loop calculating 12!
factorial <- function(x){
  y <- 1
  for(i in 1:x){
    y <- y*((1:x)[i])
  }
  print(y)
}
factorial(12)
# 2.loop calculating balance
origBalance <- 1500
interestMon <- 1.0324/12
{
  finalBalance <- round(origBalance*interestMon, digits=2)
}
print(finalBalance)
# 3.sum of every third in vector of 20
b <- c(1:20)
b
sum(which(b %in% c(3,6,9,12,15,18)))
# 4.loop calculating summation
x <- c(2,4,6,8,10)
x
for (i in 1:10)
  sum(x^i)
sum(x^i)
# 5.while loop for summation
while (i<10)
{
  sum <- sum(g^i)
  j<-j+1
}
print (sum)
sum(g^i)
# 6.
x <- c(2,4,6,8,10)
x
i <- c(1:10)
sum(x^i)
# 7.vector of 20 to 50 by 5
t <- c(20:50)
c <- t[seq(1, length(t), 5)]
c
# 8."example" vector with length 10
w <- c("example") 
w2 <- rep(w, 10)
# 9.implement quadratic equation on abc
y <- 0
a <- 2
b <- 3
c <- 4
funcQuad <- function(x)
{
  a*x^2 + b*x +c
}
lapply(y,funcQuad)
# 10.function to calculate mean
u <- c(5,6,7,8)
funcMean <- function(x) 
{
  mean(u)
}
funcMean(u)
# 11.modify mean function
u2 <- c(4,5,6,NA,7)
funcMean <- function(x) 
{
  mean(u2, na.rm=TRUE)
}
funcMean(u2)
# 12.calculate greatest common divisor
funcGCD <- function(p,q) ifelse(q==0, p, funcGCD(q, p %% q))
funcGCD(18,6)
funcGCD(33452,2338)
# 13. calculate polynomial
funcPoly <- function(r,s) 
{
  r^2*s + 2*r*s - r*s^2
}
funcPoly(1,2)
