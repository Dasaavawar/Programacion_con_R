##############################################
#     Importar y consultar bases de datos    #
#     jstats1702                             #
##############################################

# Web page : https://sites.google.com/view/juansosa/
# YouTube  : https://www.youtube.com/c/JuanSosa1702
# RPubs    : https://rpubs.com/jstats1702
# GitHub   : https://github.com/jstats1702

#-------------------------------------------------------------------------------
# 2021 GLOBAL 2000
#
# Variables (campos o features)
# - ranking   : Ranking
# - nombre    : Nombre de la compania
# - pais      : Pais de procedencia de la compania
# - ventas    : Ventas
# - ganancias : Ganancias
# - activos   : Activos
# - valor     : Valor de la compania en el mercado
#
# Nota: cifras en Billones (miles de millones) de dolares
#
# Fuente: https://www.forbes.com/lists/global2000/#7e9e39675ac0
#
# Disponible: https://github.com/jstats1702/Programacion-en-R
#-------------------------------------------------------------------------------

#################
# base de datos #
#################

# importar la base de datos
FG <- read.csv("C:/Users/Juan Camilo/Desktop/FG2000_2021.csv", sep=";")

# clase de objeto
class(FG)

# dimension de la base
dim(FG)

# nombres de las variables
names(FG)

# filtro booleano de registros completos
registro_completo <- complete.cases(FG)

# clase de registro_completo
class(registro_completo)

# tabla de registro_completo
table(registro_completo)

#####################
# algunas consultas #
#####################

# 10 primeras companias
FG[1:10, ]

# otra manera
head(x = FG, n = 10)

# companias con datos no completos
FG[!registro_completo, ] 

# companias mas valiosas: valor en el mercado mayor a 369B
FG[FG$valor > 369, ]

# companias mas valiosas y estan en el top 5
FG[(FG$valor > 369) & (FG$ranking <= 5), ]

# companias mas valiosas o estan en el top 5
FG[(FG$valor > 369) | (FG$ranking <= 5), ]

# comnias mas valiosas y son de estados unidos
FG[(FG$valor > 369) & (FG$pais == "United States"), ]

# companias mas valiosas y no son de estados unidos
FG[(FG$valor > 369) & (FG$pais != "United States"), ]

# companias colombianas
FG_colombia <- FG[FG$pais == "Colombia", ]
FG_colombia

# organizar companias de colombia por valor
FG_colombia[order(FG_colombia$valor, decreasing = TRUE), ]