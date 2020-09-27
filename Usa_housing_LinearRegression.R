# EJERCICIO PRÁCTICO: En la carpeta data está el archivo "USA_housing.csv"
install.packages("caret")
install.packages("corrplot")
library(caret)
library(ggplot2)
library(tidyverse)
library(corrplot)
library(ModelMetrics)

# 01. Relizar regresión linel multivariable igual que se hizo con python

# Par importar un archivo vamos a File >Import dataser >From text (readr)

# Buscamos ruta de archivo
file.choose()
# Copiamos la ruta en la consola y la guardamos en una variable
ruta_csv <- "/Users/elsa/Desktop/Lenguaje_R/R-basics/day4/data/USA_Housing.csv"
df <- read_csv(ruta_csv,col_names = TRUE)

# Observación de los datos
class(df)
# Caret enfrenta problemas al trabajar con tbl, 
# así que cambiemos los datos a un marco de datos simple 
df_simple = data.frame(df)
message("La clase es ahora: ", class(df_simple))

# Ver las primeras filas 
head(df_simple)
#Comprobamos número de filas y de columnas
dim(df_simple)

# Comprobamos por columnas el tipo que es
map(df_simple, class) 
# Todas son numéricas menos Address, la eliminamos porque no nos sirve para el entrenamiento
df_simple <- select(df_simple, -Address)
# Verificamos si hay columnas que no nos aportan datos o hay valores nulos que no nos sirven:
map(df_simple, ~sum(is.na(.)))
# Comprobamos que todo está correcto y que todas nuestra columnas son aptas para el entrenamiento


# También podemos ver la corrección entre las diversas variables usando un mapa de calor
correlations = cor(df_simple)
corrplot(correlations, method="color")
#_____________________________
# library ( caret ) <- ya la hemos importado arriba
# Caret agiliza el proceso para crear modelos predictivos. 
# El paquete contiene herramientas para: 
    
    # división de datos 
    # preprocesamiento 
    # selección de características 
    # ajuste del modelo usando remuestreo 
    # estimación de importancia variable 
    # así como otras funciones.

# En R, la función createDataPartition de Caret crea índices para el entrenamiento y la parte de prueba de los datos para nosotros.
# DIVIDIMOS EL CONJUNTO DE ENTRENAMIENTO:
# crear índices de conjuntos de entrenamiento con el 80% del 
set.seed(100)   # Ponemos semilla

# Dividimos en train y test, indicando cual es la variable a predecir
inTrain <- createDataPartition(y = df_simple$Price, p = 0.8, list = FALSE) 
training <- df_simple[inTrain,]
test <- df_simple[-inTrain,]

dim(training)
dim(test)

## Linear Regression
# Fit linear regression model  (~ .-->para que coja todos los elementos menos el target)
fit_train <- train(Price ~ ., data=df_simple,method = "lm", metric="RMSE")
fit_train$finalModel


#Calculamos el error del entrenamiento
pred_train <- predict(fit_train, newdata=training)
train_rmse <- RMSE(pred_train, training$Price)
fit_train$results[c("RMSE","Rsquared")] %>%
  round(2)
summary(fit_train)


# predicción del entrenamiento
pred_train <- predict(fit_train, newdata=training)
# dibujamos el modelo
plot(x=training$Price, y=pred_train,col="magenta")
# predicción del test
pred_test <- predict(fit_train, newdata=test)

#_______________________
# Calculo los errores
SSE = sum((test -pred)^2)    # sum of squared errors
SST = sum((test[,5] - mean(training[,5]))^2) # total sum of squares, remember to use training data here

R_square = 1 - SSE/SST
message('R_squared on the test data:')
round(R_square, 2)

SSE = sum((test[,5] - pred)^2)
RMSE = sqrt(SSE/length(pred_test))
message("Root mean square error on the test data: ")
round(RMSE, 2)

message("MAE de test: ")
MAE(pred_price, test$Price)
message("RMSE de test: ")
RMSE(pred_price, test$Price)

#___________________



# 02. Mejorar las gráficas planteadas en clase
# plot normal
plot(pred_test,test$Price)

# Preparo una variable para plotear con ggplot
my_data = as.data.frame(cbind(predicted = pred_test,
                              observed = test$Price))

# Plot prediccione entre test data
ggplot(my_data,aes(predicted, observed)) +
  geom_point(color = "darkred", alpha = 0.5) + 
  geom_smooth(method=lm, se=FALSE)+ ggtitle('Linear Regression ') +
  ggtitle("Linear Regression: Prediction vs Test Data") +
  xlab("Predecited Power Output ") +
  ylab("Observed Power Output") +
  theme(plot.title = element_text(color="darkgreen",size=18,hjust = 0.5),
        axis.text.y = element_text(size=12),
        axis.text.x = element_text(size=12,hjust=.5),
        axis.title.x = element_text(size=14),
        axis.title.y = element_text(size=14))

##### Me da error `geom_smooth()` using formula 'y ~ x'   



# 03. Utilizar dos funciones de caret que no se hayan utilizado. Una de ellas puede ser varlmp. También hay que plotearla

# Ejemplo para calcular 
#filterVarImp {caret}
#Cálculo de la importancia de la variable basada en filtros
#Descripción
    #Motores específicos de importancia variable modelo por modelo.
    
    #Uso
    #filterVarImp (x, y, nonpara = FALSE, ...)
    #Argumentos
        #x	-->Una matriz o marco de datos de datos predictores
        #y	-->Un vector (numérico o factor) de resultados)
        #nonpara	-->¿Deberían utilizarse métodos no paramétricos para evaluar la relación entre las características y la respuesta?
        #...	
        #opciones para pasar a cualquiera lmo loess
filterVar <- filterVarImp(df_simple,y=test, nonpara = FALSE)
roc_imp <- filterVarImp(x = training[, -ncol(training)], y = training)
plot(filterVar)

###No funciona no sé que hago mal
