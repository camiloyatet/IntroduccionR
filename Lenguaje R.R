# ******************************************************** #
#                    Introduccion a R                      #
# ******************************************************** #

# Introduccion ----

# Verificacuon de la Sesion:
sessionInfo()
# Los paquetes "base" son caragados automaticamente al iniciar una sesion

# Paquetes ----

nrow(available.packages())

# Listado de paquetes base y recomendados:
paquetes <- installed.packages()
paquetes[paquetes[,"Priority"] %in% c("base","recommended"), c("Package", "Priority")]

# Listado de los paquetes disponibles localmente
library() 

# Listado de los paquetes cargados en la sesion
search()

# CRAN ----
# Listado de mirrors del repositorio
chooseCRANmirror()

# Instalacion de Paquetes ----

# Funcion para instalar desde CRAN
install.packages("DT")

# Instalar desde Bioconductor
source("https://bioconductor.org/biocLite.R")
biocLite("S4Vectors") # Install from bioconductor

# Instalar desde Github
devtools::install_github("hadley/dplyr")

# Instalar desde archivo local
install.packages("Ruta", repos = NULL, type="source")

# Cargue de librerias
library(DT)

# Ayudas ----
?mean
?? data.table

# Working Directory

# Imprime la carpeta de trabajo actual
getwd()

# Cambia la carpeta de trabajo, (Ctrl+Shift+h)
setwd()

# Listar los elemtos dentro del directorio de trabajo
dir(path="~",recursive = T) # recursive muestra todo el arbol de carpetas contenidas  
