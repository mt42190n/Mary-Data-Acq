library(MASS)
data(Aids2)
NROW(Aids2)
NCOL(Aids2)
A <- data.frame(Aids2)
head(A)

# Data on patients diagnosed with AIDS in Australia before 1 July 1991
# state Grouped state of origin: "NSW "includes ACT and "other" is WA, SA, NT and TAS.
# sex Sex of patient.
# diag (Julian) date of diagnosis.
# death (Julian) date of death or end of observation.
# status "A" (alive) or "D" (dead) at end of observation
# T.categ Reported transmission category
# age Age (years) at diagnosis


library(tidyr)
library(ggplot2)
str(A)
View(A)

# unfortunetly, the dates for "diag" and "death" are too inappropriately formatted for
# me to tidy and use in my analysis.

cor(as.numeric(A$"status"),A$"age")
  # there is a very weak correlation between the age in which they were diagnosed and
  # whether or not they were alive at the end of the observation.
cor(as.numeric(A$"status"),as.numeric(A$"state"))
  # there is a very weak correlation between the state in which they came from and
  # whether or not they were alive at the end of the observation.
cor(as.numeric(A$"status"),as.numeric(A$"sex"))
  # there is almost no correlation between the patient's gender and
  # whether or not they were alive at the end of the observation.
cor(as.numeric(A$"T.categ"),as.numeric(A$"sex"))
  # there is some correlation between gender and reported transmission category.
cor(as.numeric(A$"T.categ"),as.numeric(A$"age"))
  # there is a very weak correlation between the age in which they were diagnosed and
  # the reported transmission category.
cor(as.numeric(A$"T.categ"),as.numeric(A$"state"))
  # there is a very weak correlation between the state in which they came from and
  # the reported transmission category.


