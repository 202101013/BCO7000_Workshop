library(tidyverse)
install.packages("knitr")
library(knitr)

pizza_barstool <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-10-01/pizza_barstool.csv")

pizza_barstool <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-10-01/pizza_barstool.csv")

glimpse(pizza_barstool)

pizza_short <- pizza_barstool %>%
  select(name, city, price_level, provider_rating, provider_review_count)


pizza_short %>%
  count(city)


pizza_short %>%
  count(city, sort = TRUE)


pizza_short %>%
  count(city) %>%
  arrange(n)


pizza_short %>%
  count(city) %>%
  arrange(desc(n)) %>%
  top_n(7)



pizza_short %>%
  count(city, price_level)



pizza_short %>%
  count(city, price_level, name = "No of places")




pizza_short %>%
  count(city, price_level, name = "No of places") %>%
  kable()


kable(pizza_short[1:10, 1:3])  
  
  
good_pizza <- pizza_short %>%
  filter(provider_rating > 4) 

bad_pizza <- pizza_short %>%
  filter(provider_rating >= 4) 


pizza_short %>%
  filter(provider_rating != 2) 


pizza_short %>%
  group_by(city) %>%
  summarise()



pizza_short %>%
  group_by(city) %>%
  summarise(mean_rating = mean(provider_rating))
  
  

pizza_short %>%
  group_by(city) %>%
  summarise(mean_rating = mean(provider_rating)) %>%
ungroup()


pizza_short %>%
  group_by(city) %>%
  summarise(mean_rating = mean(provider_rating)) %>%
  ungroup() %>%
  arrange(desc(mean_rating)) %>%
  kable()


new_file <- pizza_short %>%
  group_by(city) %>%
  mutate(mean_rating = mean_provider)
  
  
  
  
  
  






  


