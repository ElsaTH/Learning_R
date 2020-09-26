# Definir función que coja omo argumento el path donde está Sheeps.csv y devuelva una gráfica hecha con ggplot2

library(msleep)
library(ggplot2)
file.choose()
getwd()
 

# Ejemplo para hacer el ejercicio:
#  https://jstaf.github.io/hpc-r/ggplot2/
# Load the example data
data <- msleep
str(data)
ref <- ggplot()
ref <- ggplot(data)
ref <- ggplot(data, aes(x = bodywt, y = sleep_total)) 
# This is the same thing as the line above:
ref <- ggplot(data, aes(x = data$bodywt, y = data$sleep_total))



#___________________________#
# Ejercicio:
func_sheep <- function(path="data/sheeps.csv", to_filter=FALSE){
  data <- read.csv(path, header = TRUE, sep = ",")
  plot <- ggplot(data, aes(x=conservation)) + geom_line()
  
  if (to_filter == TRUE) {
    new_data <- filter(data, conservation == "Primates")
      ggplot(aes(x=bodywt)) + geom_line()
  }
}


func_sheep(path="data/sheeps.csv")

#Se agrega color a la gráfica y una legenda
plot + geom_point(aes(color = vore))



### Me vuelve a pasar lo mismo no me grafica

