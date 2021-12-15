library(tidyverse)
150/3
a <- 10
a

b <- "Cool"


data(mpg)
view(mpg)
head(mpg)

glimpse(mpg)


ggplot(mpg, aes(displ, hwy, colour = class)) +
geom_point()


ggplot(mpg, aes(displ, hwy, )) +
  geom_point(colour="red")



ggplot(mpg, aes(displ, hwy, colour=trans)) +
  geom_point() +
facet_wrap(~class) +
  labs(x="Displacement", y ="Highway miles", colour="Transmission",
       title="Point Chart", caption="Figure 1") +
  theme_dark()




