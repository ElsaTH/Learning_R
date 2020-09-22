# 1. Escriba un programa de R para crear una lista que contenga cadenas, números, vectores y valores lógicos.
data <- list("Bootcamp", "Data", "Science", c(2, 3, 4), 20.3,30.3,40.3)

# 8. Escriba un programa R para fusionar dos listas dadas en una lista.
lista1 <- list(1,2,3,4,5)
lista2 <- list(4,5,6,7,8)
lista3 <- c(lista1,lista2)

#10. Escriba un programa en R para crear una lista de marcos de datos y acceder a cada uno de esos marcos de datos de la lista.
mi_df <- data.frame(
  "entero" = 1:4, 
  "factor" = c("a", "b", "c", "d"), 
  "numero" = c(1.2, 3.4, 4.5, 5.6),
  "cadena" = as.character(c("a", "b", "c", "d"))
)

mi_df
# acceder a posiciones
mi_df[[1]]

# 11. Escriba un programa en R para contar el número de objetos en una lista dada.
length(data)

# 12. Escriba un programa en R para convertir un marco de datos dado en una lista por filas.
lista_df = split(mi_df, seq(nrow(mi_df)))

# 14. Escriba un programa R para asignar NULL a un elemento de lista dado.
lista3[2]==NULL
