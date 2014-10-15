xI <- c(10.0,8.0,13.0,9.0,11.0,14.0,6.0,4.0,12.0,7.0,5.0)
yI <- c(8.04,6.95,7.58,8.81,8.33,9.96,7.24,4.26,10.84,4.82,5.68)
xII <- c(10.0,8.0,13.0,9.0,11.0,14.0,6.0,4.0,12.0,7.0,5.0)
yII <- c(9.14,8.14,8.74,8.77,9.26,8.10,6.13,3.10,9.13,7.26,4.74)
xIII <- c(10.0,8.0,13.0,9.0,11.0,14.0,6.0,4.0,12.0,7.0,5.0)
yIII <- c(7.46,6.77,12.74,7.11,7.81,8.84,6.08,5.39,8.15,6.42,5.73)
xIV <- c(8.0,8.0,8.0,8.0,8.0,8.0,8.0,19.0,8.0,8.0,8.0)
yIV <- c(6.58,5.76,7.71,8.84,8.47,7.04,5.25,12.5,5.56,7.91,6.89)

cor(xI,yI)
cor(xII,yII)
cor(xIII,yIII)
cor(xIV,yIV)
# all four correlations are very similar and positive

dataFrame <- data.frame(xI,yI,xII,yII,xIII,yIII,xIV,yIV)
dataFrame

hist(as.matrix(dataFrame))
barplot(t(as.matrix(dataFrame)), beside = FALSE)
boxplot(as.matrix(dataFrame))
summary(dataFrame)
