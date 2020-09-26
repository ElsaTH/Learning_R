# Elegir un dataset built-in de dplyr

install.packages("tidyverse")
library(tidyverse)
library(tidyr)
library(dplyr)
library(ggplot2)

data("mtcars")


# Aplicar seis verbos y utilizar un pipeline con tres de ellos.
# Yo he aplicado los dos puntos a la vez:
mtcars %>%
  filter(mtcars, mpg < 10) %>% 
  arrange(desc(cyl)) %>% 
  summarise(conteo = n()) %>% 
  select((carb)) %>% 
  group_by(mtcars) %>% 
  mutate(qsec==20) %>% 
  
# Hacer 3 gráficas con ggplot
graficas_mtcasrs <- mtcars %>% 
  select (drat, mpg) %>% 
  ggplot(aes(x = drat, y = mpg)) + geom_point() %>% 
  ggplot(aes(x = mpg, y = drat)) + geom_line() %>% 
  ggplot(aes(x = drat, y = drat)) + geom_boxplot() %>% 
  
 
### NO SÉ QUE HAGO MAL, NO ME HACE LA GRÁFICA