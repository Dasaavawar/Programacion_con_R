######################
#     Data frames    #
#     jstats1702     #
######################

# Web page : https://sites.google.com/view/juansosa/
# YouTube  : https://www.youtube.com/c/JuanSosa1702
# RPubs    : https://rpubs.com/jstats1702
# GitHub   : https://github.com/jstats1702

#-------------------------------------------------------------------------------

# https://www.forbes.com/lists/global2000/#7e9e39675ac0

pais <- c("China", "US", "US", "China", "Saudi Arabia")

ventas <- c(190.5, 136.2, 245.5, 173.5, 229.7)

ganancias <- c(45.8, 40.4, 42.5, 39.3, 49.3)

activos <- c(4914.7, 3689.3, 873.7, 4301.7, 510.3)

valor <- c(249.5, 464.8, 624.4, 210.4, 1897.2)

# clase de objetos
class(pais)

class(ventas)

# data frames : bases de datos
# filas       : individuos
# columnas    : variables

FG5 <- data.frame(pais, ventas, ganancias, activos, valor)

FG5

# asignar nombres a las variables
colnames(FG5) <- c("country", "sales", "profits", "assets", "value")

# asignar nombres a los registros
rownames(FG5) <- c("ICBC", "JPMorgan Chase", "Berkshire Hathaway", "China Construction Bank", "Saudi Aramco")

FG5

# clase de objeto
class(FG5)

# dimension de la base de datos
dim(FG5)

# numero de individuos (tamano de la muestra)
n <- nrow(FG5)

n

# numero de variables
ncol(FG5)

# ventas de la primera compania
FG5[1, 2]

# datos de las ventas
FG5$sales

# promedio de las ventas
mean(FG5$sales)

# datos de las ventas y los activos
FG5[ , c(2, 4)]

FG5[ , c("sales", "assets")]

# promedio de las ventas y los activos
colMeans(FG5[ , c("sales", "assets")])

# acceder a los datos de la prima compania
FG5[1, ]

# datos companias que no son de estados unidos
FG5[c(1, 4, 5), ]

# datos companias de estados unidos
FG5[c(2, 3), ]

FG5[2:3, ]