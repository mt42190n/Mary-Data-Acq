# 1. One sentence for each of the OSEMN
  # Obtain: A data scientist must know what data to look for, 
          # where to look for it, and how to extract it for further 
          # analysis.
  # Scrub: Once a data scientist has the data in his/her own software, 
          # it must be edited to uniformity and fixed into a format 
          # that is most useful for the upcoming analysis.
  # Explore: After the data is in a presentable and usable format, 
          # the data scientist should take the time to look through 
          # the data--notice patterns, variables, and overall shape.
  # Models: The data scientist must now clarify what questions are we 
          # asking, what are the expected answers, and how do we get 
          # the data to display these answers?
  # Interpret: The data scientist will now look at these answers the 
          # data has provided and now draw conclusion, make predictions, 
          # and iterate these interpretations into a format and language 
          # understood by others.

# 2. I believe having a well designed function interface that was decently 
    # implemented is better because even thought the implementation is not 
    # perfect, you can still get more out of it because the foundation is secure.

# 3. Display the day of the year
library(lubridate)
date_current <- Sys.Date()
today <- ymd(date_current)
dayofToday <- yday(today)
dayofToday

# 4. I would use POSIXlt when I want to show the month in its word form, i.e. May.

# 5. How long ago was Claude Shannon born?
as.POSIXct(Sys.Date()) - as.POSIXct("1916-04-30", format = "%Y-%m-%d", tz = "UTC")

# 6. data frame creation and extension 
month <- c(1,2,3,4,5)
day <- c(15,14,15,16,13)
year <- c(2013,2013,2013,2013,2013)
dates <- data.frame(month,day,year)
dates
dates$together <- as.Date(paste(dates$month, dates$day, dates$year, sep = "-"), format = "%m-%d-%Y")
dates

# 7. MM-DD-YYYY to date
date <- as.Date("11-28-2010", format = "%m-%d-%Y")
date

# 8. extract the month
mm <- format(date, "%m")
mm

# 9. January 1,2005 - December 31, 2014
allDates <- seq(as.Date("2005-01-01"), as.Date("2014-12-31"), "day")
allDates

# 10. not converting character vectors into factors
  # include:  stringAsFactors=FALSE