############## String, factores y las fechas#############
#aprenderemos a usar las regeps para descubrir patrones en strings
#es un poco difíciles, pero es muy útil saber porque se utiliza en muchos lenguajes.

library(tidyverse)
library(stringr)
 #recomendación: usar siempre comillas dobles. Pero, si usas simples siempre simples 
#o siempre dobles
s1 <- "Esto es un string"
s2 <- 'Esto es un string que contiene otro "string" dentro'
s3 <- "Esto es un string sin cerrar"

#siempre recordar cerrar un string, porque si nó en la consola 
#aparece un signo + que indica que debemos continuar. 
#solución]: O cerramos o aplicamos scape (a veces se necesita hacer scape 2 veces)

#para incluir una comilla doble dentro de un string
double_quote <- "\"" # '"'
single_quote <- '\'´' # "'"
backslash <- "\\"

x <- c(single_quote, double_quote, backslash)
x
writeLines(x)

#\n -> intro o salto de líneas
#\t -> tabulador
"\u00b5"
mu <- "\u00b5"
mu

#se queremos saber mas información de estos 
#caracteres escapantes conultar el manual de las quotes así:

?'"'

#para crear un vector de caracteres con conjunto de string
c("uno", "dos", "tres")

#PREFIJO STr: 
str_length(c("x", "Macarena es top", NA))

#como combinar o juntar dos strings
str_c("a", "b", "c")
str_c("a", "b", "c", sep=", ")

#si quiero imprimir los NA entre comillas ocupo la función string replace NA
x <- c("abc", NA)
str_c("hola", "adios")

str_c("hola", str_replace_na(x), "adios", sep = " ")

#la función string está vectorizada

str_c("prefix-", c("a", "b", "c"), "-suffix")

#combinación de string en acción

name <- "Macarena"
momento_del_dia <- "tarde"
cumpleaños <- F

str_c(
  "Buena ", momento_del_dia, " ", name, 
  if (cumpleaños) " y FELIZ CUMPLEAÑOS!!! =D",
  "."
)

name <- "Sergio"
momento_del_dia <- "tarde"
cumpleaños <- TRUE

str_c(
  "Buena ", momento_del_dia, " ", name, 
  if (cumpleaños) " y FELIZ CUMPLEAÑOS!!! =D",
  "."
)

#si queremos copapsar un vector de string en un solo string

str_c(c("a", "b", "c"), collapse = "'")