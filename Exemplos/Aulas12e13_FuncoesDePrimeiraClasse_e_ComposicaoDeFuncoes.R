# Exemplo slide 20 - Funções de Primeira Classe:

eleva <- function(x, y) { x ^ y }

resultado = eleva(2,8)

resultado


# Exemplo slide 21 - Funções de Ordem Superior:

eleva <- function(x, y) { x ^ y }

raiz <- function(x, y) { x ^ (1/y) }

faz_alguma_coisa <- function(x, y, func) { func(x, y) + 1 }

faz_alguma_coisa(100, 2, eleva)

faz_alguma_coisa(100, 2, raiz)


# Exemplo slide 22 - Funções de Ordem Superior:

faz_alguma_coisa <- function(x, y, func) { func(x, y) + 1 }

faz_alguma_coisa(100, 2, function(x, y) { x ^ y })

faz_alguma_coisa(100, 2, function(x, y) { x ^ (1/y) })


# Exemplo slide 24 - Composição de Funções:

multiplica <- function(x, y) { x * y }

divide <- function(x, y) { x / y }

eleva <- function(x, y) { x ^ y }

raiz <- function(x, y) { x ^ (1/y) }

faz_nada <- function(x, y) {raiz(eleva(divide(multiplica(x, y), y), y), y) }
  
faz_nada(8, 2)  
  
  
# Exemplo slide 25 - Composição de Funções:  

multiplica <- function(x, y) { x * y }

divide <- function(x, y) { x / y }

eleva <- function(x, y) { x ^ y }

raiz <- function(x, y) { x ^ (1/y) }

saida = multiplica(8, 2)
saida

saida = divide(saida, 2)
saida

saida = eleva(saida, 2)
saida

saida = raiz(saida, 2)
saida
