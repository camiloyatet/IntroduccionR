
# ******************************************************** #
#                 Estructuras de Contol                    #
# ******************************************************** #


### Condicionales ----

a <- "The quick brown fox"
# a <- "The slow yellow bird"

if (a == "The quick brown fox") {
  print("jumps over the lazy dog")
}

ifelse(a=="The quick brown fox", "jumps over the lazy dog", "does not jump")

# Estructura completa.
animal<-"Fox"

if (animal == "Fox") {
  print("Jump")
} else if (animal == "Bird") {
  print("Fly")
} else if (animal == "Fish") {
  print("Swim")
} else {
  print("Other")
}

animal<-"Fox"

if (animal == "Fox") {
  Jump= 1
} else if (animal == "Bird") {
  Fly= 1
} else if (animal == "Fish") {
  Swim =1
} else {
  print("Other")
}

### Ciclos ----

# While 
velocidad <- 64

while (velocidad > 30) {
  print(paste("Velocidad: ",velocidad))
  if ( velocidad > 48) {
    print("Exceso de velocidad")
    velocidad=velocidad-5 
  } else {
    print("Disminuya la velocidad")
    velocidad=velocidad-1
  }
}

### Ciclo For

primos <- list(2, 3, 5, 7, 11, 13)

for (p in primos) {
  print(p)
}

for (i in 1:length(primos)) {
  print(primos[i])
}

# Ciclo sobre una lista
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

for (p in nyc) {
  print(p)
}

for (i in 1:length(nyc)) {
  print(nyc[[i]])
}

# Ciclo sobre una matriz
ttt <- matrix(c("O", NA, "X", NA, "O", "O", "X", NA, "X"), ncol = 3, nrow = 3, byrow = TRUE)
for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste("En la fila", i, "y la columna", j, "El tablero contiene", ttt[i, j]))
  }
}

# Familia apply
# Cuando es necesario aplicar la misma funcion a todos los elementos
# de una lista (por ejemplo un dataframe) o todas las columnas de una
# matriz, es posible usar las funciones lapply() y sapply()

# apply(obj, margin, funcion)

Db<-matrix(1:25, ncol = 5)

a1<-apply(Db,1,mean)
class(a1)
l1<-lapply(Db,mean)
class(l1)
s1<-sapply(Db,mean)
class(s1)


