# This data is in a package that already existed in R. The dataset is called 
# "sleep" and it represents the amount of sleep for students.

library(MASS)
data(sleep)
head(sleep)
summary(sleep)
boxplot(sleep$extra, main="Student's Sleep Data", ylab="Extra Hours of Sleep")
hist(sleep$extra, main="Student's Sleep Data", xlab="Extra Hours of Sleep")

# From the graphs I can see that the majority of students are infact obtaining some 
# amount of extra sleep. I am able to make such general statements and arguments 
# about the data because of these graphs. 