# 3. Escriba un programa R para crear una secuencia de números del 20 al 50 
seq(20,50)
#encuentre la media de los números del 20 al 60 y 
x<-seq(20,60)
mean(x)
#la suma de los números del 51 al 91.
y<- c(51,91) 
sum(y)


# 4. Escriba un programa R para crear un vector que contenga 10 valores enteros aleatorios entre -50 y +50
a<- sample(-50:50, 10)

# 5. Escriba un programa R para obtener los primeros 10 números de Fibonacci.
# importamos librerías
options(warn=-1)
library(ggplot2)

# Para crear la función de fibonacci que genera el n-ésimo número de la serie #

fib <- function(n) {
  if (n == 1) {
    return(0)}
  else if(n == 2) {
    return(1)}
  else if(n > 2) {
    return(fib(n - 1) + fib(n - 2))}
  }

# Se aplica la función para generar el número 10 de la serie #
fib(10)


# 6. Escriba un programa R para obtener todos los números primos hasta un número dado (basado en el tamiz de Eratóstenes)
primos = function(x){
  numeros = 2:x
  d = 1
  while(numeros[d]^2 <= x){
    for(n in numeros){
      if(numeros[d] != n){
        if(n%%numeros[d]==0){
          numeros = numeros[-which(numeros==n)]
        }
      }
    }
    d=d+1
  }
  numeros
}

primos(40)

# 7. Escriba un programa R para imprimir los números del 1 al 100 e imprima "Fizz" para múltiplos de 3, imprima "Buzz" para múltiplos de 5 e imprima "FizzBuzz" para múltiplos de ambos.

for (num  in 1:100){
  if (num%%3 == 0){print("Fizz")}
  else if (num%%5 == 0){print("Buzz")}
  else if (num%%3 == 0 | num%%5 == 0){print("FizzBuzz")}
  else print(num)
  }


# 8. Escriba un programa R para extraer las primeras 10 letras en inglés en minúsculas y las últimas 10 letras en mayúsculas y extraer las letras entre la 22ª y la 24ª letras en mayúscula
substr(x, start = 1, stop = 10)    # Para extraer la subcadena desde el primer  al sexto décimo.
substr(x, 4, 9)     # Para extraer la subcadena desde el cuarto al noveno caracter.
substring(x, first = 10)     # Para extraer la subcadena desde el caracter 10 hasta el último.


#9. Escribe un programa en R para encontrar los factores de un número dado.
function(n) {
for (elem in 1:n){
if ((n%%elem) == 0){
 print(elem)
}
}}

# 10. Escriba un programa R para encontrar el valor máximo y mínimo de un vector dado.
min(a)
max(a)
# para un vector:
which.min(v)
which.max(v)

# 11. Escriba un programa R para obtener los elementos únicos de una cadena dada y números únicos de vector.
#numeros únicos
unique(a)
# elementos únicos de una cadena
cadena <- c("a","b","c","h","a","b")
unique(cadena)

# 12. Escriba un programa en R para crear tres vectores a, b, c con 3 enteros. Combine los tres vectores para formar una matriz de 3 × 3 donde cada columna representa un vector. Imprime el contenido de la matriz.
a<-c(2,4,3)
b<-c(5,1,3)
c<-c(3,8,9)
m<-cbind(a,b,c)
print(m)

# 13. Escriba un programa R para crear una lista de números aleatorios en distribución normal y cuente las ocurrencias de cada valor.
# distribución normal
n <- (rnorm(20, 50, 80))
print(n)
t = table(n)
print(t)

# 14. Escriba un programa en R para leer el archivo .csv y mostrar el contenido.
data = read.csv(file="data.csv")
print(data)

# 15. Escriba un programa R para crear datos numéricos, datos de caracteres y datos lógicos de tres vectores. Muestra el contenido de los vectores y su tipo.
a <- c(1, 2, 5, 3)
b <- c("Gato", "Perro", "Ardilla")
c <- c(TRUE,  FALSE, TRUE)
print(a)
print(typeof(a))
print(b)
print(typeof(b))
print(c)
print(typeof(c))

# 16. Escriba un programa R para crear una matriz de 5 x 4, una matriz de 3 x 3 con etiquetas y llene la matriz por filas y la matriz de 2 × 2 con etiquetas y llene la matriz por columnas
# matriz de 5x4
m1 <- matrix(1:40, nrow=5, ncol=4)
print(m1)
# una matriz de 3 x 3 con etiquetas rellene por filas byrow=True
m2 <- matrix(a, nrow=3, ncol=3, byrow=TRUE, dimnames=list(b,c))
print(m2)
# matriz de 2 × 2 con etiquetas--> la he puesto de 3x3 porque sino tenía q generar nuevas variables
m3 <- matrix(a, nrow=3, ncol=3, byrow=FALSE, dimnames=list(b, c))
print(m3)

# 17. Escriba un programa en R para crear una matriz, pasando un vector de valores y un vector de dimensiones. También proporcione nombres para cada dimensión.
arr <-  array(
  1:40,
  dim = c(3, 2, 4),
  dimnames = list(
    c("al", "bl", "cl"),
    c("Gato", "Perro"),
    c("rojo", "amarillo", "verde")
  )
)  #da error


# 18. Escriba un programa en R para crear una matriz con tres columnas, tres filas y dos "tablas", tomando dos vectores como entrada para la matriz. Imprime la matriz
vector1 = c(1, 3, 5, 7)
vector2 = c(2, 4, 6, 8, 10)
matriz = array(c(vector1, vector2),dim = c(2,4,2))

# 19. Escriba un programa en R para crear una lista de elementos usando vectores, matrices y funciones a. Imprime el contenido de la lista.
lista <- list(c(1, 2, 2, 5, 7, 12),  matrix(1:40, nrow=5, ncol=4),fib)
print(lista)

# 20. Escriba un programa R para dibujar un diagrama vacío y un diagrama vacío especifique los límites de los ejes del gráfico.
plot()
plot(data,type="l",col="blue",lwd=3, main="Seno y Coseno", xlab="", ylab="", las=1, col.axis="red")

# 21. Escriba un programa R para crear un diagrama de barras simple de cinco calificaciones de sujetos.
calificaciones <- c(2, 5, 3, 7)
barplot(calificaciones,
        main = "Comparar calificaciones/sujetos",
        xlab = "Calificaciones",
        ylab = "Sujetos",
        col = "blue",
        horiz = TRUE)

# 22. Escriba un programa R para crear una curva de campana de una distribución normal aleatoria.
#valores al azar de la distribución normal
randNorm <- rnorm(300000)
#calculo de su densidad
randDensity <- dnorm(randNorm)
#gráfica
library(ggplot2)
ggplot(data.frame(x = randNorm, y = randDensity)) + 
  aes(x = x, y = y) +
  geom_point() + 
  labs(x = "Random Normal Variable", y = "Densidad")

# 23. Escriba un programa R para calcular la suma, la media y el producto de un vector dado
z <- c(1,2,4,56,78,90)
sum(z)  # suma
mean(z) # media
prod(z) # producto

# 24. Escriba un programa en R para crear una lista de datos heterogéneos, que incluyen vectores de caracteres, numéricos y lógicos. Imprime las listas.
mi_vector <- 1:10
mi_matriz <- matrix(1:4, nrow = 2)
mi_df     <- data.frame("num" = 1:3, "let" = c("a", "b", "c"))
mi_lista <- list("un_vector" = mi_vector, "una_matriz" = mi_matriz, "un_df" = mi_df)
print(mi_lista)

# 25. Escriba un programa R para crear un marco de datos que contenga detalles de 5 empleados y muestre los detalles.
Empleados = data.frame(Nombre=c("Maria","Juliana","Pablo", "Jaime","Laura"),
                       Calegoria=c("Junior","Senior","Junior","Junior","Senior"),
                       Edad=c(25,28,29,26,36)
)
print(Empleados)

# 26. Escriba un programa R para crear marcos de datos que contengan detalles de 5 empleados y muestren un resumen de los datos.
summary(Empleados)

# 27. Escriba un programa R para crear la idea del sistema de la fecha actual con y sin tiempo.
Sys.Date()
Sys.time()
