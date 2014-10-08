library(MASS)
caith
# 1. the data compares the pigmintation of hair and possible eyes.

# 2. 
require(MASS)
data(caith)
EyeColor <- rowSums(caith)
EyeColor
  # this describes the sum of all observations according to eye color.

# 3.
HairColor <- colSums(caith)

# 4.
plot(EyeColor)
  # the histogram didn't display the data accurately, so I used plot
  # and I see that "medium" is the most common eye color.

# 5. 
caitha <- as.matrix(caith)
caitha
  # this turns the data frame into a matrix

# 6. 
barplot(t(as.matrix(caith)))
   # this displays the sums of each eye color but then broken down by 
   # hair color with "fair" being the shading at the bottom and "black"
   # being the shading at the top.

# 7. 
barplot(t(as.matrix(caith)), beside = TRUE)

# 8. 
plot(EyeColor,HairColor)
cor(HairColor,EyeColor)
  # the correlation operation didn't work because of "incompatible 
  # dimensions" and I couldn't figure out a way around it. However, 
  # I can tell by looking at the matrix and graphs that there is not
  # a significant relationship between the two variables.