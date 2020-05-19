
# ******************************************************** #
#                 Tipos de Ojetos en R                     #
# ******************************************************** #

# Clases Atomicas ----

s1<-"The quick brown fox jumps over the lazy dog" # <- es el caracter de asignacion, es equivalente a =
s1
print(s1)
class(s1)

nchar(s1) # Numero de caracteres en la cadena

s2<-'Introduccion a R'
s2

# Numeros
x <- 1 # <- es el caracter de asignacion, es equivalente a =
x # Auto impresion del objeto
print(x) # Impresion Explicita
class(x) # Imporesion de la clase del objeto
is.numeric(x) # Validacion de tipo numerico

# Numeros enteros
x1<-1L # Forma explicita de numero entero
x1=as.integer(1) # Forma explicita as.* donde * puede ser cualquier clase
class(x1) 
is.numeric(x1)
is.integer(x1)

# Notese que un entero es numerico pero el reciproco no es cierto:
is.integer(x)

# Logicos
l1<-T
l2<- 3==4
l3<-F

class(l1)
l2

a <- 2
b <- (3!=3)
a*b

# Complejos
c1<-1+2i
class(c1)

# Vectores ----

# Por extension:
x1 <- c(0.56, 0.89)
x2 <- c(T, TRUE, F, F, FALSE)
x3 <- c("Hola", "Mi", "Nombre", "es:")
x4 <- c(0.32+2i,0.5+0.2i,0.6-3i)
x5 <- c(4L, 5L)

## Ejercicio 1: Encuentre las clases de los vectores creados anteriormente

# generacion de vectores numericos por secuencias
x6 <- 0:8 # el operador : indica secuencias de numeros enteros.
x7<- seq(0.5, 2, by=0.3)

# Coercion Implicita
x8 <- c(1.2,"a") # Hace coercion a categoirico
x9 <- c(F, "b")
x10 <- c(T,4) # Los objetos booleanos son transformados en numerico {0: F, >0: T}

# Coercion Explicita
# Se convierten objetos a otros tipos mediante las funciones as.*
?as.numeric
x11 <- as.integer(x6)
x12 <- as.logical(x6)

# Coercion sin sentido
x13 <- as.numeric(x3) # Generacion de Warning


# Extraccion de un elemento de un vector
# El operador  [] indica la posicion de un elemento dentro de un vector.
x6[1]
x6[1:3]
x6[3]

# Matrices ----

m1 <- matrix(nrow = 2, ncol = 3) 
class(m1)
# Una matriz tiene por atributo la dimension
attributes(m1)

m2 <- matrix(1:25, nrow = 5, ncol = 5)
dim(m2)

m3 <- matrix(1:25, nrow = 2, ncol = 5) # Error de dimensionalidad

# Creacion de una matriz a partir de vectores

m <- seq(10,50, by=5)
dim(m) <- c(3,3)
m


## Ejercicio 2: Contruya una matriz de con los numeros del 1 al 100 de dimension 10x10



# Extraccion de un elemento de una matriz
m[1,1] # los indices dentro de los corchetes son [fila, col]
m[2,]

## Ejercicio 3 Extraiga la fila 2 de la matriz m



# Binding ----

bin1 <- rbind(x1, x5) # Al unir dos vectores, se hace coercion al formato en comun disponible
bin1 <- cbind(x1, x5) # Al unir dos vectores, se hace coercion al formato en comun disponible

## Ejercicio 3: Cual es el resultado al ejecutar un rbind de x1  x2???


## Ejercicio 4: Cual es el resultado al ejecutar un cbind de x2  x3???



# Listas ----

lista1 <- list(1,"a", T, 1+4i, c(1,5,3,6,8), 3:5)

lista1[5] # Accede al vector almacenado en la posicion 5 de la lista
lista1[[6]][3] # Accede al tercer elemento del vector almacenado en la posicion 6 de la lista

## Ejercicio 5: Imprima el primer elemento del vector almacenado en la quinta posicion de la lista.



# Factores ----

fact1<-factor(c("yes","no","yes","no","no", "yes", "no"))
fact1

table(fact1)
unclass(fact1)


fact2<-factor(c("yes","no","yes","no","no", "yes", "no"), levels = c("yes", "no"))
fact2

## Ejercicio 6: Convierta el vector x3 a factor. Cuantos niveles tiene la nueva variable?


# Valores Ausentes ----

mv1 <- c(1,2,3,NA, NaN, 10, -8)
mv2 <- c("a","b","c",NA)

is.na(mv1) # las condiciones en vectores se eval?an para cada elemento.
!is.na(mv1) # las condiciones en vectores se eval?an para cada elemento.
is.nan(mv1) # las condiciones en vectores se eval?an para cada elemento.

mv1==NA

is.na(mv2)
is.nan(mv2)

# Para contar el numero de ausentes en un vector se puede ysar la funcion sum
sum(is.na(mv1))

# Para calcular la proporci?n de ausentes en un vector se puede ysar la funcion mean
mean(is.na(mv1))

# Data Frames ----

df1 <- data.frame(foo=1:4, bar=c(T,T,F,F))
df1

names(df1)
dim(df1)


# Operaciones ----

a <- c(1,2,3,4)

# Num?ricas

b <- a^2 # Potenciacion elemento por elemento
a + 5
a ** 9
a %/% 2 # Divisi?n entera.
a %% 3 # Residuo de la divisi?n.

b <- b+b # Suma de elementos uno a uno con el mismo objeto

c <- a+b

d <-c(1:3, 7:9)

e <-d+a # Advertencia en ejecuci?n

# minimos

max(a,b)
pmax(a,b)

# Logicas
f <- a <= 3
g <- a > 8 | b < 5

d %in% a # Contenencia

### Ejercicio 7
# Con el siguiente vector calcular:

ej7_1 <- c(seq(10,50, by=5), -5:7, 0)

# 1. Calcular el vector ej7_3 como 3 veces el vector ej7_1 mas 5
# 2. Calcular el vector ej7_4 como el logaritmo natural de ej7_3