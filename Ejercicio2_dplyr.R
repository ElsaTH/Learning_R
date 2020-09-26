# Definir función que coja omo argumento el path donde está Sheeps.csv y devuelva una gráfica hecha con ggplot2



file.choose()
getwd()



func_sheep <- function(path="data/sheeps.csv", to_filter=FALSE){
  data <- read.csv(path, header = TRUE, sep = ",")
  plot <- ggplot(data, aes(x=sleep_total)) + geom_line()
  
  if (to_filter == TRUE) {
    new_data <- filter(data, vore == "carni")
      ggplot(aes(x=bodywt)) + geom_line()
  }
}

func_sheep(path="data/sheeps.csv")


### Me vuelve a pasar lo mismo no me grafica

