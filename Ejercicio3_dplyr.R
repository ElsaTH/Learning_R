# 3. Importar el archivo "president.csv" utilizando la librería readr
#    Utiliza al menos una función de la librería tidyr para hacer estos datos tidyer

library(tidyr)

# Par importar un archivo vamos a File >Import dataser >From text (readr)

# Buscamos ruta de archivo
file.choose()
# Copiamos la ruta en la consola y la guardamos en una variable
ruta_csv <- "/Users/elsa/Desktop/Lenguaje_R/R-basics/day3/data/president.csv"
# Nos muestra en consola el directorio
getwd()
# Cambiamos el directorio. En este caso, no lo voy a cambiar, pero éste sería el procedimiento
setwd("/Users/elsa/Desktop/Lenguaje_R/Learning_R")
# leer los datos
data <- read_csv(ruta_csv,col_names = TRUE, header = TRUE, sep = ",")
data.table::fread()
data
####

#Utilizamos función tidyer  
dplyr()
data <- select(data,Area)
data