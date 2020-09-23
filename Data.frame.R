# 1. Escriba un programa en R para crear un marco de datos vacío.
df <- data.frame()

# 2. Escriba un programa en R para crear un marco de datos a partir de cuatro vectores dados.
a1 <- c(2,3,4,5)
a2 <- c("a", "b", "c", "d")
a3 <- c(3,4,5,6)
a4 <- c("l","m","h","q")
df1 <- data.frame(a1,a2,a3,a4)

# 3. Escriba un programa en R para obtener la estructura de un marco de datos dado.
str(df1)

# 4. Escriba un programa R para obtener el resumen estadístico y la naturaleza de los datos de un marco de datos dado.
summary(df1)


# 5. Escriba un programa en R para extraer una columna específica de un marco de datos usando el nombre de la columna.
df1$a2

# 6. Escriba un programa en R para extraer las dos primeras filas de un marco de datos determinado.
df1$a1[1:2]

# 7. Escriba un programa R para extraer la 3ª y la 5ª filas con la 1ª y 3ª columnas de un marco de datos dado.
df1[c(3,5),c(1,3)]

# 8. Escriba un programa en R para agregar una nueva columna en un marco de datos dado.
df1$a5 <-c(2,4,5,8)

# 9. Escriba un programa R para agregar nuevas filas a un marco de datos existente.
df1 <- rbind("j", "h", "m", "h")
df1
# 10. Escriba un programa en R para eliminar la (s) columna (s) por nombre de un marco de datos dado.
df1 <- subset(df1, select = -c(a2, a4))
df1

# 11. Escriba un programa R para eliminar filas por número de un marco de datos dado.
df1 <- df1[-c(2, 4, 6), ]
df1

# 12. Escriba un programa en R para ordenar un marco de datos determinado por varias columnas.
df1_ord <- df1[, order(c(names(df1)))]

# 13. Escriba un programa en R para crear una unión (fusión) interna, externa, izquierda, derecha a partir de dos marcos de datos dados.
fusion = merge(df1, df1_ord)


# 14. Escriba un programa R para reemplazar los valores NA con 3 en un marco de datos dado.
df1[is.na(df1)] = 3

# 15. Escriba un programa en R para cambiar el nombre de una columna de un marco de datos dado.
df1
colnames(df1)[which(names(df1) == "a3")] = "A3"

# 16. Escriba un programa en R para cambiar más de un nombre de columna de un marco de datos determinado.
colnames(df1)[which(names(df1) == "a1")] = "A1"

# 17. Escriba un programa R para seleccionar algunas filas aleatorias de un marco de datos dado.
df1[sample(nrow(df1), 1)]

# 18. Escriba un programa en R para reordenar un marco de datos determinado por nombre de columna.
df1 <- df1[c("a2", "a3", "a4","a1")]

# 19. Escriba un programa R para comparar dos marcos de datos para encontrar los elementos en el primer marco de datos que no están presentes en el segundo marco de datos.

setdiff(a1, a3)

# 20. Escriba un programa en R para encontrar elementos que están presentes en dos marcos de datos dados.
intersect(a1, a3)

# 21. Escriba un programa R para encontrar los elementos que vienen solo una vez que son comunes a ambos marcos de datos dados.
union(a1, a3)

# 22. Escriba un programa de R para guardar la información de un marco de datos en un archivo y mostrar la información del archivo. 
save(df1,file="df1.r")

# 23. Escriba un programa R para contar el número de valores NA en una columna de marco de datos.
is.na(df1$a1)

# 24. Escriba un programa R para crear un marco de datos usando dos vectores dados y muestre los elementos duplicados y filas únicas de dicho marco de datos.
duplicated(a1)
unique(a1)

# 25. Escriba un programa R para llamar al conjunto de datos (integrado) airquality. Compruebe si es un marco de datos o no. Ordene todo el marco de datos por la primera y la segunda columna. 
datos = airquality
datos[order(datos[,1]),]

# 26. Escriba un programa R para llamar al conjunto de datos (integrado) airquality. Elimine las variables 'Solar.R' y 'Viento' y muestre el marco de datos.
datos[,c("Solar.R")]=NULL
datos[,c("Wind")]=NULL
# Intento eliminar la variable así y no sé porqué no me deja.
rm('Viento')


