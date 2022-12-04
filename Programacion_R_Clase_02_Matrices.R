######################
#     Matrices       #
#     jstats1702     #
######################

# Web page : https://sites.google.com/view/juansosa/
# YouTube  : https://www.youtube.com/c/JuanSosa1702
# RPubs    : https://rpubs.com/jstats1702
# GitHub   : https://github.com/jstats1702

#-------------------------------------------------------------------------------

# definicion de matrices
matrix(0, 3, 3)

matrix(data = 0, nrow = 3, ncol = 3)

C <- matrix(data = c(1, 3, 2, -1, 2, 1, 4, -1, -1), nrow = 3, ncol = 3)
C

D <- matrix(data = c(1, 3, 2, -1, 2, 1, 4, -1, -1), nrow = 3, ncol = 3, byrow = TRUE)
D

# matriz identidad
I3 <- diag(rep(1, 3))
I3

# clase de objeto
class(C)

# dimension
dim(C)

# numero de filas
nrow(C)

# numero de columnas
ncol(C)

# operaciones basicas
C + 2

C / 2

-C

C^2

# traspuesta de C
t(C)

# traza de una matriz
sum(diag(C))

# otras operaciones especializadas
# determinante : det
# inversa      : solve

#-------------------------------------------------------------------------------

# proponer dos matrices de tamaño 2 x 3 con nombres A y B
A <- matrix(data = c(7,3,4,6,7,2), nrow = 2, ncol = 3)
A

B <- matrix(data = c(1,2,4,5,6,7), nrow = 2, ncol = 3)
B

# operaciones basicas entre matrices
A + B

A * B

A / B

# multiplicacion de matrices
A %*% C

A %*% I3

C %*% solve(C)

#-------------------------------------------------------------------------------

# https://www.forbes.com/lists/global2000/#7e9e39675ac0

ventas <- c(190.5, 136.2, 245.5, 173.5, 229.7)

ganancias <- c(45.8, 40.4, 42.5, 39.3, 49.3)

activos <- c(4914.7, 3689.3, 873.7, 4301.7, 510.3)

valor <- c(249.5, 464.8, 624.4, 210.4, 1897.2)

# unir por columnas
# revisar tambien 'rbind'
FG5 <- cbind(ventas, ganancias, activos, valor)
FG5

# clase de objeto
class(FG5)

# obtener un elemento
FG5[2, 1]

# obtener filas
FG5[1, ]

FG5[c(1, 3), ]

FG5[1:3, ]

# obtener columnas
FG5[ , 1]

FG5[ , c(1, 2)]

FG5[ , 1:2]

# obtener filas y columnas
FG5[1:3, 3:4]

#-------------------------------------------------------------------------------