# Slide 5
# Criando um vetor atômico com vector
x = vector()
x

  
# Slide 6
# Criando um vetor atômico de character
x = vector("character", length = 5)
x  


# Slide 7
# numeric
x = numeric(5)
x

# logical
x = logical(5)
x

# integer
x = integer(5)
x


# Slide 8
# Criando vetor com 3 elementos
x = c(1, 2, 3)
x

# Verificando a classe do vetor
class(x)


# Slide 9
# Criando um vetor de inteiros com 3 elementos
x = c(1L, 2L, 3L)
x


# Slide 10
# Criando um vetor de valores lógicos com 5 elementos
x = c(TRUE, TRUE, FALSE, FALSE)
x

# Criando um vetor de character com 4 elementos
x = c("PFUEL", "IFSP", "2021", "TADS")
x


# Slide 11
# Adicionando dois elementos ao vetor 
x = c(x, "1º Semestre", "eletiva")
x


# Slide 12
# Criando 3 vetores de character com 3 elementos cada
x = c("a", "b", "c")
y = c("d", "e", "f")
z = c("g", "h", "i")

# Combinando os três vetores com a função c
combinacao = c(x, y, z)
combinacao


# Slide 13
# Remove os elementos 30 e 1 do vetor atômico x
x = c(1, 2, 3, 10, 15, 30)
x = setdiff(x, c(30, 1))
x

# Remove um elemento em uma posição específica
x = c(1, 2, 3, 10, 15, 30)
x = x[-(1)]
x


# Slide 14
# Criando um vetor de numéricos de 1 até 100
x = 1:100
x

# Criando um vetor de números com a função seq
x = seq(from = 1, to = 100, by = 0.5)
x
