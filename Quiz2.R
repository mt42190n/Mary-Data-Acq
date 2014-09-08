v <- c(2,3,5,7,11,13,2,3,5,5,4,6,8,10,11,12,13,14,15,16)
v
# 1.create vector of 20 numbers
# 2.turn vector into a character vector
as.character(v)
# 3.turn vector into a vector of factors
xFactor <- as.factor(v)
xFactor
# 4.how many levels the vector has
nlevels(xFactor)
# 5.perform vector on 3x^2 -4x +1
y <- function(v) {3 * v^2 - 4 * v + 1}
y(v)
# 6.create a named list
list("pink", "yellow", "blue", "brown", "magenta")
# 7.create a data frame
a <- c("pink", "yellow", "blue", "brown", "magenta","pink", "yellow", "blue", "brown", "magenta")
b <- c(2,4,6,8,10,12,14,16,18,20)
c <- factor(c("Mindy","Sandy","Sarah","Hilary","Marge","Lisa","Celia","Steph","Sandy","Mindy"))
d <- as.Date(c("15-1-2013","15-2-2013","15-3-2013","15-4-2013","15-5-2013","15-6-2013","15-7-2013","15-8-2013","15-9-2013","15-10-2013"))
dataFrame <- data.frame("color" = a, "number" = b, "name" = c, "date" = d)
dataFrame
# 8.add a row with a value
aa <- c("purple")
bb <- c(22)
cc <- factor(c("Carla"))
dd <- as.Date(c("15-11-2013"))
rowEleven <- data.frame("color" = aa, "number" = bb, "name" = cc, "date" = dd)
dataFrameTwo <- rbind(dataFrame, rowEleven)
dataFrameTwo
# 9.code for CSV file
csvFile <- read.table(file = "temperatures.csv", header = TRUE, sep = ",")
# 10.code for TSV file
tsvFile <- read.table('measurements.txt', header=TRUE, sep="\t")
# 11.code for delimited file
delFile <- "http://imlearningR.com/noteasy"
read.delim(file = delFile, header = TRUE, sep = "|")
