# Exercício 2

soma <- function(a, b) { a + b }

multiplica <- function(a, b) { a * b }

resultado <- function(a, b, func) { func(a, b) - 2 }

resultado(100, 2, soma)

resultado(100, 2, multiplica)


# Concatenação de Strings com a função paste

concatena <- function(a, b, c) { paste(a, b, c) }

resultado <- function(a, b, c, func) { func(a, b, c) }

resultado("Estudar", "Programação", "Funcional" , concatena)


# Ou concatenação de Strings com a função paste deste outro modo

resultado <- function(a, b, c, func) { func(a, b, c) }

resultado("Estudar", "Programação", "Funcional", function(a, b, c) { paste(a, b, c) })


# Exercício 3

a <- c(10, 15, 29) 

b <- c(6, 4, 7)

soma <- function(a, b) { a + b }

multiplica <- function(a, b) { a * b }

subtrai <- function(a, b) { a - b }

divisao_inteira <- function(a, b) { a %/% b }

resto <- function(a, b) { a %% b }

resultado <- function(a, b) { resto(divisao_inteira(subtrai(multiplica(soma(a, b), b), b), b), b) }

resultado(a, b)  

