#####################
# Ejercicio funcion #
#####################

# Una vez lo termines, subelo a tu github desde R y mandanos el link

### EJERCICIO 

# Crea una funcion llamada mi_cancion que genere la letra de la pegadiza cancion del enlace:
# https://www.letras.com/pinkfong/baby-shark/

# Encontraras respuesta a algunas de tus preguntas: 
# https://www.gastonsanchez.com/r4strings/formatting.html
#__________________________________________________________________________________________#



my_string <- function(){
  doo <-toString("doo doo doo doo doo doo")
  a <- toString("Baby shark")
  b <- toString("Mommy shark")
  c <- toString("Daddy shark")
  d <- toString("Grandma shark")
  e <- toString("Grandpa shark")
  f <- toString("Let`s go")
  g <- toString("Run away")
  h <- toString("Safe at last")
  i <- toString("It`s the end")
  for (elem in 1:3){
    cat(a,doo, file = "", sep = " ", fill = FALSE, append = FALSE,"\n")
    if (elem ==3){
      print(cat(a,"!", file = "", sep = " ", fill = FALSE, append = FALSE,"\n"))}}
  for (elem in 4:6){
    cat(b,doo, file = "", sep = " ", fill = FALSE, append = FALSE,"\n")
    if (elem ==6){
      print(cat(b,"!", file = "", sep = " ", fill = FALSE, append = FALSE,"\n"))}}
  for (elem in 7:9){
    cat(c,doo, file = "", sep = " ", fill = FALSE, append = FALSE,"\n")
    if (elem ==9){
      print(cat(c,"!", file = "", sep = " ", fill = FALSE, append = FALSE,"\n"))}}
  for (elem in 10:12){
    cat(d,doo, file = "", sep = " ", fill = FALSE, append = FALSE,"\n")
    if (elem ==12){
      print(cat(d,"!", file = "", sep = " ", fill = FALSE, append = FALSE,"\n"))}}
  for (elem in 13:15){
    cat(e,doo, file = "", sep = " ", fill = FALSE, append = FALSE,"\n")
    if (elem ==15){
      print(cat(e,"!", file = "", sep = " ", fill = FALSE, append = FALSE,"\n"))}}
  for (elem in 16:18){
    cat(f,doo, file = "", sep = " ", fill = FALSE, append = FALSE,"\n")
    if (elem ==18){
      print(cat(f,"!", file = "", sep = " ", fill = FALSE, append = FALSE,"\n"))}}
  for (elem in 19:21){
    cat(g,doo, file = "", sep = " ", fill = FALSE, append = FALSE,"\n")
    if (elem ==21){
      print(cat(g,"!", file = "", sep = " ", fill = FALSE, append = FALSE,"\n"))}}
  for (elem in 22:24){
    cat(h,doo, file = "", sep = " ", fill = FALSE, append = FALSE,"\n")
    if (elem ==24){
      print(cat(h,"!", file = "", sep = " ", fill = FALSE, append = FALSE,"\n"))}}
  for (elem in 25:27){
    cat(i,doo, file = "", sep = " ", fill = FALSE, append = FALSE,"\n")
    if (elem ==27){
      print(cat(i,"!", file = "", sep = " ", fill = FALSE, append = FALSE,"\n"))}
    
  }
}
my_string()     
    
  



#_______________






# Si desea imprimir cadenas de caracteres sin comillas, puede establecer el argumentoquote = FALSE
print(g, quote = FALSE)




### BONUS
# Crea una funcion llamada otra_cancion que genere la letra de esta otra cancion:
# https://es.wikipedia.org/wiki/99_Bottles_of_Beer
