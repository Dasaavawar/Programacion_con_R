############################
#     Introduccion a R     #
#     jstats1702           #
############################

# Web page : https://sites.google.com/view/juansosa/
# YouTube  : https://www.youtube.com/c/JuanSosa1702
# RPubs    : https://rpubs.com/jstats1702
# GitHub   : https://github.com/jstats1702

#-------------------------------------------------------------------------------

# '#' se utiliza para escribir 'comentarios'

# 1+1

1+1

#-------------------------------------------------------------------------------

# algunos atajos
# limpiar la consola : Ctrl + L
# correr codigo      : Ctrl + Enter
# ir al script       : Ctrl + 1
# ir a la consala    : Ctrl + 2
# aumentar zoom      : Ctrl + + 
# aumentar zoom      : Ctrl + - 

#-------------------------------------------------------------------------------a
# aritmetica basica
# + : suma
# - : resta
# / : division
# * : multiplicacion

2 + 2

(2 + 2) * (12 / 4)

2*(-3) + 5

#-------------------------------------------------------------------------------

# usar nombres significativos
# mayusculas y minusculas representan caracteres diferentes
# es permitido usar puntos '.' y guiones bajos '_'
# no usar nombres que inicien con numeros
# no usar nombres reservados: c, t, seq, sum, mean, plot, ...
# usar '=' o '<-' para definir objetos

x <- 13

yrg = 2.7

#-------------------------------------------------------------------------------

# concatenar valores
x <- c(3, 7, 1, 4, 2)

# clase de un objecto
class(x)

# secuencias
y <- 1:5

z <- seq(from = 2, to = 10, by = 2)

v <- rep(x = 1, times = 5)

# longitud de un objecto
length(x)

# algunas operaciones basicas
x + 2

x^2

sqrt(x)

x + y

y / z

# remover objetos
rm(x, y, z, v)

# valor en el mercado (en billones de US)
# https://www.forbes.com/lists/global2000/#7e9e39675ac0
valor <- c(249.5, 464.8, 624.4, 210.4, 1897.2)

# algunas funciones basicas
class(valor)

length(valor)

min(valor)

max(valor)

sum(valor)

mean(valor)

sort(valor)
