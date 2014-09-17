# 1.numbers not divisible by 3,7, and 11 in 1:1000
a <- c(1:1000)
sum(a %% 3 != 0) + sum(a %% 7 != 0) + sum(a %% 11 != 0)

# 2.function for calculating missing values
sum(is.na(vector))

# 3.extraction of missing values in vector form from data frame
r = c(1, 2, NA, 4, 5, 6)
s = c(NA, 6, 7, 8, 9, 10)
t = c(11, 12, 13, NA, NA, 15)
dataFrame = data.frame(r, s, t)
missingValues <- sum(is.na(subset(dataFrame=="NA")))
missingValues
