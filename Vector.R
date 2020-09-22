# 3. Escriba un programa en R para agregar valor a un vector vacío dado.
vector <- c()
valor <- c(0,1,2,3)
for (elem in 1:length(valor))
  vector[elem] <- valor[elem]

# 6. Escriba un programa R para encontrar la suma, la media y el producto de un vector. 
sum(vector) #suman
mean(vector) # media
prod(vector) # producto vector


#7. Escriba un programa R para encontrar la suma, la media y el producto de un vector, ignore elementos como NA o NaN.
a1 = c(NULL, NULL, 2, 33, NA, 20, NULL)
sum(x, na.rm=TRUE)
mean(x, na.rm=TRUE)
prod(x, na.rm=TRUE)

# 8. Escriba un programa R para encontrar el mínimo y el máximo de un vector.
max(vector)
min(vector)

# 9. Escriba un programa R para ordenar un vector en orden ascendente y descendente.
sort(vector)
sort(vector, decreasing=TRUE)

# 10. Escriba un programa en R para probar si un vector dado contiene un elemento específico.
is.element(2, vector)

# 12. Escriba un programa R para acceder al último valor en un vector dado.
tail(vector, 1)

# 13. Escriba un programa R para encontrar el segundo valor más alto en un vector dado.
vector <-sort(vector, decreasing=FALSE)[-2]
vector

# 14. Escriba un programa R para encontrar el n- ésimo valor más alto en un vector dado

sort(vector, TRUE)[9]

# 16. Escriba un programa en R para convertir la (s) columna (s) de un marco de datos en un vector.
df1 <- c(1, 2, 3, 4, 5)
df2 <- c(6, 7, 8, 9, 10)

vector_df <- data.frame(df1=1:5, df2=6:10)


# 20. Escribe un programa en R para invertir el orden de un vector dado.
rev(vector)

# 23. Escriba un programa en R para convertir dos columnas de un marco de datos en un vector con nombre.
vector_nombre = setNames(as.character(mi_df$entero), mi_df$factor)




