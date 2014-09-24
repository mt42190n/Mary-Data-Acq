# 1.merge data frames
makeModelData <- read.csv("C:/Users/hatipoglu/Desktop/Mary-Data-Acq/week-4-make-model-data.csv")
makeModelData
priceData <- read.csv("C:/Users/hatipoglu/Desktop/Mary-Data-Acq/week-4-price-data.csv")
priceData
priceMakeModel <- merge(makeModelData, priceData, by="ModelNumber")
priceMakeModel
    # There are 27 observations. In the original price-data table there are 28 observations but 
    #one of the items has an error that R recognized and elimintated from the merger.

# 2.remerge with all
priceMakeModel2 <- merge(makeModelData, priceData, by="ModelNumber", all=TRUE)
priceMakeModel2

# 3.subset for 2010 vehicles
priceMakeModel2010 <- priceMakeModel2[priceMakeModel2$Year=="2010",]
priceMakeModel2010
na.omit(priceMakeModel2010)

# 4.subset for red cars more than $10,000
priceMakeModelRed10 <- priceMakeModel2[priceMakeModel2$Color=="Red" & priceMakeModel2$Price>10000,]
priceMakeModelRed10

# 5.subset to remove ModelNumber and Color
red10Edit <- within(priceMakeModelRed10, rm(ModelNumber, Color))
red10Edit

# 6.function that takes character into numeric
vector <- c("green", "purple", "red", "blue")
operation <- function(v)  {
  numeric <- nchar(v)
  print(numeric)
}
operation(vector)
