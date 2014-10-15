---
title: "Project3"
author: "Mary Tracy"
date: "Tuesday, October 14, 2014"
output: html_document
---

This data is based on patients diagnosed with AIDS in Australia before 1 July 1991

Variables
state: Grouped state of origin: "NSW "includes ACT and "other" is WA, SA, NT and TAS.
sex: Sex of patient.
diag: (Julian) date of diagnosis.
death: (Julian) date of death or end of observation.
status: "A" (alive) or "D" (dead) at end of observation
T.categ: Reported transmission category
age: Age (years) at diagnosis

```{r}
data(Aids2)
NROW(Aids2)
NCOL(Aids2)
A <- data.frame(Aids2)
head(A)
```

Unfortunetly, the dates for "diag" and "death" are too inappropriately formatted for me to tidy and use in my analysis.

```{r}
str(A)
View(A)
```

```{r}
cor(as.numeric(A$"status"),A$"age")
```
There is a very weak correlation between the age in which they were diagnosed and whether or not they were alive at the end of the observation.
  
```{r}
cor(as.numeric(A$"status"),as.numeric(A$"state"))
```
There is a very weak correlation between the state in which they came from and whether or not they were alive at the end of the observation.
  
```{r}
cor(as.numeric(A$"status"),as.numeric(A$"sex"))
```
There is almost no correlation between the patient's gender and whether or not they were alive at the end of the observation.
  
```{r}
cor(as.numeric(A$"T.categ"),as.numeric(A$"sex"))
```
There is some correlation between gender and reported transmission category.

```{r}
cor(as.numeric(A$"T.categ"),as.numeric(A$"age"))
```
There is a very weak correlation between the age in which they were diagnosed and the reported transmission category.
  
  
```{r}
cor(as.numeric(A$"T.categ"),as.numeric(A$"state"))
```
There is a very weak correlation between the state in which they came from and the reported transmission category.
