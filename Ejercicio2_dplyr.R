# Definir función que coja omo argumento el path donde está Sheeps.csv y devuelva una gráfica hecha con ggplot2

library(msleep)
library(ggplot2)

 

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

#____________________________#
# Par importar un archivo vamos a File >Import dataser >From text (readr)

# Buscamos ruta de archivo
file.choose()
# Copiamos la ruta en la consola y la guardamos en una variable
ruta_csv <- "/Users/elsa/Desktop/Lenguaje_R/R-basics/day3/data/sheeps.csv"




#___________________________#
# Ejercicio:
func_sheep <- function(path=ruta_csv, to_filter=FALSE){
  data <- read.csv(path, header = TRUE, sep = ",")
  plot <- ggplot(data, aes(x=name, y=sleep_total)) + geom_line()
  
  if (to_filter == TRUE) {
    new_data <- filter(data, order == "Carnivora")
      ggplot(aes(x=bodywt)) + geom_line()
  }
}


func_sheep(path=ruta_csv)

#Se agrega color a la gráfica y una legenda
plot + geom_point(aes(color = vore))



### Me vuelve a pasar lo mismo no me grafica

