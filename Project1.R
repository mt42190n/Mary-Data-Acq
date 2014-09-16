v <- c(3,8,23,NA,7,4,NA,-2)

# determine the minimum
sort(v)[1]

# determine the maximum
-(sort(-v)[1])

# determine the mean
(sum(v, na.rm=TRUE)) / (sum(!is.na(v)))

# determine the median
k <- sum(!is.na(v))
   #k is count of actual numbers
if (k %% 2 == 0) {
  ((sort(v)[k / 2]) + (sort(v)[(k / 2) + 1])) / 2
} else { sort(v)[(k + 1) / 2]
}    

# determine first quartile
k <- sum(!is.na(v))
   #k is count of actual numbers in v
g <- ((k + 1) / 2) - 1
   # g is count of actual numbers in lower 
   # half of v when k is odd
h <- k / 2
   # h is count of actual numbers in lower 
   # half of v when k is even
if (k %% 2 == 0)  
  if (h %% 2 == 0) {
    (sort(v)[k / 2] + sort(v)[(h / 2) + 1]) / 2
  } else { sort(v)[(h + 1) / 2]  
  } else   
    if (g %% 2 == 0) {
      (sort(v)[k / 2] + sort(v)[(g / 2) + 1]) / 2
    } else { sort(v)[(g + 1) / 2]
    }

# determine third quartile
if (k %% 2 == 0)  
  if (h %% 2 == 0) {
    (-(sort(-v)[k / 2]) + -(sort(-v)[(h / 2) + 1])) / 2
  } else { -sort(-v)[(h + 1) / 2]  
  } else   
    if (g %% 2 == 0) {
      (-(sort(-v)[k / 2]) + -(sort(-v)[(g / 2) + 1])) / 2
    } else { -sort(-v)[(g + 1) / 2]
    }

# determine standard deviation
m <- (sum(v, na.rm=TRUE)) / (sum(!is.na(v)))
   #m is the mean
v - m
p <- (v - m) * (v - m)
p
(sum(p, na.rm = TRUE)) / (sum(!is.na(p)))

# determine the number of missing values
sum(is.na(v))
