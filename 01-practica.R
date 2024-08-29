#Ejercicios - Gardón Manuel, grupo 8
#  ---------------------------------------
# Verificamos si funciona R:
R.version.string

# Crar un hola mundo
holaMundo <- "Hola mundo"
print(holaMundo)

# Crear una suma de dos variables en forma directa y con variables
var1 <- 2
var2 <- 4
sum(var1, var2)

# Crear una resta de dos variables en forma directa y con variables
resta <- var2 - var1
print(resta)

# Calcular la potencia en forma directa y con variables
potencia <- var2^var1
print(potencia)

# plotear un conjunto de datos
plotDatos <- c(12, 14, 10, 23, 21, 15, 4, 2)
plot(plotDatos)

#Ejercicios iniciales
#Ejercicios

#1 - Escriba un programa de R para tomar la entrada del usuario (nombre y edad) y mostrar los valores.
nombre <- readline(prompt = "Ingrese su nombre: ")
edad <- as.numeric(readline(prompt = "Ingrese su edad: "))
print(paste("Hola", nombre, ", tu edad es:", edad, "años"))

#2 - Escriba un programa de R para obtener los detalles de los objetos en memoria. Hacerlo con un vector, variables y finalmente con un set de datos integrados.
miVector <- c(2, 4, 6, 8, 10)
miVariable <- "Mi variable"
datasetIntegrado <- datasets::WWWusage
print(ls.str())

#3 - Escribe un programa R para crear una secuencia de números del 10 al 50 y encuentra la media de los números del 20 al 60 y la suma de los números del 51 al 91.
secuenciaNums10a50 <- c(10:50)
print(secuenciaNums10a50)
median(20:60)
sum(51:91)

#4 - Escribe un programa de R para crear un vector que contenga 10 valores enteros aleatorios entre -10 y +10.
vector10valores <- sample(-10:10, 10, replace = TRUE)
print(vector10valores)

#5 - Escribe un programa para imprimir únicamente los diez primeros vehículos del dataset de mtcars. Adicionalmente, que liste aparte las 5 primeras cilindradas, y que me diga la cilindrada más común.
head(mtcars, 10)
head(mtcars$cyl, 5)
library(DescTools)
Mode(mtcars$cyl)

#6 - Cual es el promedio de cilindrada de los vehículos en mtcars?
mean(mtcars$cyl)

#7 -Escribe un programa para guardar todos los hp de los vehículos de mtcars en un vector, calcular moda, media y mediana, e imprimir la información. Luego, ordenar los datos y mostrar los 10 superiores
hps <- mtcars$hp
print(hps)
Mode(hps) # moda
mean(hps) # media
median(hps) # mediana
head(sort(unique(hps), decreasing = TRUE), 10) # ordenar datos y mostrar 10 primeros

#8 (INVESTIGAR) Escribe un programa que contenga 3 vectores con 5 numeros al azar, luego, unir los tres vectores en una matriz, finalmente que muestre el contenido de la matriz, en cada ejecución la matriz debe cambiar (hint: cbind)
v1 <- sample(1:100, 5)
v2 <- sample(1:100, 5)
v3 <- sample(1:100, 5)
matriz <- cbind(v1, v2, v3)

#9 - Usando el dataset notten, escribir un programa que me indique la temperatura mas baja de todo el set, la maxima, y despues la minima y maxima por mes, y finalmente el minimo, maximo y promedio por año.
dataset <- nottem
print(dataset)
min(dataset) # Temperatura más baja
max(dataset) # Temperatura más alta

#10 - Crear un dataset que contenga el nombre, apellido, edad, año de nacimiento, mes de nacimiento y día de nacimiento de cada miembro de su grupo. Puede hacerse directamente o con cbind. Una vez hecho, que muestre el contenido, que indique la edad maxima, la minima y el promedio de edad del grupo.
dataset_miembros <- data.frame(
  nombre = c("Valentin", "Eugenia", "Jeremias", "Nicolas", "Mayra", "Facundo", "Manuel"),
  apellido = c("Imperio", "Garat", "Sanchez", "Gold", "Aldana", "Ikemiya", "Gardon"),
  edad = c(26, 32, 31, 38, 33, 30, 24),
  anio_nacimiento = c(1998, 1992, 1992, 1986, 1991, 1994, 1999),
  mes_nacimiento = c(04, 04, 12, 06, 07, 08, 10),
  dia_nacimiento = c(25, 27, 16, 26, 28, 01, 19)
)
print(dataset_miembros) # contenido
max(dataset_miembros$edad) # edad máxima
min(dataset_miembros$edad) # edad mínima
mean(dataset_miembros$edad) # edad promedio

#11 - (INVESTIGAR) Usando el dataset creado en el ejercicio 10, imprimir el resumen de la información. Probar de hacer lo mismo con iris.
summary(dataset_miembros)
summary(iris)

#12 Del set IRIS,  indicar el promedio de longitud de pétalos, solamente de la especie setosa. Luego indicar el máximo de longitud de pétalo, solo de la especie virginica. (Se puede resolver solo con lo aclarado en esta guía pero hay formas mas elegantes de hacerlo)
mean(iris$Sepal.Length) # promedio longitud pétalos

library(dplyr)
longitud_max_virginica <- iris %>%
  filter(Species == "virginica") %>%
  summarise(longitud_max = max(Petal.Length)) %>%
  pull(longitud_max) # extraigo longitud máxima del pétalo de la especie virgínica

print(longitud_max_virginica)

#13 Usando el dataset de nhtemp, cual es el promedio total de temperaturas? cual es el promedio total de temperaturas entre 1912 y 1922, y cual es el promedio de temperaturas entre 1961 y 1971. En todos los casos, cual es el mínimo y el máximo.
Dataset_nhtemp <- nhtemp
print(Dataset_nhtemp)
mean(Dataset_nhtemp) # promedio de temperaturas
min(Dataset_nhtemp) # mínimo de temperaturas
max(Dataset_nhtemp) # máximo de temperaturas

temp_1912_1922 <- Dataset_nhtemp[1:11]
mean(temp_1912_1922) # promedio de temperaturas entre 1912 y 1922
min(temp_1912_1922) # mínimo de temperaturas entre 1912 y 1922
max(temp_1912_1922) # máximo de temperaturas entre 1912 y 1922

temp_1961_1971 <- Dataset_nhtemp[50:60]
print(temp_1961_1971)
mean(temp_1961_1971) # promedio de temperaturas entre 1961 y 1971
min(temp_1961_1971) # mínimo de temperaturas entre 1961 y 1971
max(temp_1961_1971) # máximo de temperaturas entre 1961 y 1971

#13 Usando el dataset mtcars, indicar cuantos vehículos tienen caja de cambios en números impares
Dataset_mtcars <- mtcars
?mtcars # para entender las columnas del dataset
caja_cambio_impares <- nrow(mtcars[mtcars$gear %% 2 == 1,])
print(caja_cambio_impares) # cantidad de vehículos con caja de cambios impar. Lleva coma (,) al final del []

#14 Calcular la relación entre los cilindros y el hp de los vehículos en mtcars y mostrarlo. Luego calcular, moda, mediana y promedio
relacion_cyl_hp <- Dataset_mtcars$cyl / Dataset_mtcars$hp
print(relacion_cyl_hp)
Mode(relacion_cyl_hp)
median(relacion_cyl_hp)
mean(relacion_cyl_hp)

#15 - Usando cualquier dataset en datasets::, hacer un estudio aplicando todo lo visto hasta ahora, este ejercicio es libre, pero se pide al menos un resumen, mediana, moda, promedio, alguna relación, top de información, etc. Esta información tiene que tener sentido y ser consistente dentro de los datos analizados.

# Quarterly earnings (dollars) per Johnson & Johnson share 1960–80.
Dataset_earnings_JJ <- datasets::JohnsonJohnson

print(Dataset_earnings_JJ)
str(Dataset_earnings_JJ) # info básica

summary(Dataset_earnings_JJ) # contiene min, max, mediana, media
Mode(Dataset_earnings_JJ) # moda

head(sort(Dataset_earnings_JJ, decreasing = TRUE), 5) # top 5 mejores ganancias
