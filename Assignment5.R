library(dplyr)
head(mtcars)
mtcars %>% 
  select(cyl,am,mpg,wt) %>%
  mutate(avempg = ave(mpg,cyl)) %>%
  mutate(avewt = ave(wt,cyl)) %>%
  filter(mpg > 20) %>%
  select(cyl,am,avempg,avewt)
