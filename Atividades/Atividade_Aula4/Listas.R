# Slide 4
# Criando uma lista com 4 elementos
x = list(1, "a", TRUE, 1+4i)
x


# Slide 5
# Acessando o segundo elemento da lista
x = list(1, "a", TRUE, 1+4i)
x[[2]]
x[[10]]


# Slide 6
# Acessando o terceiro elemento da lista e mostrando seu tamanho e classe
x = list(1, "a", TRUE, 1+4i)
x[3]
class(x[3])
length((x[3]))

# Slide 7
# Acessando o terceiro elemento da lista e mostrando seu tamanho e classe
x = list(1, "a", TRUE, 1+4i)
x[[3]]
class(x[[3]])
length((x[[3]]))


# Slide 8
# Criando uma lista com um elemento do tipo list e vector
x = c("IFSP", "PFUEL", "2021")
y = list(2021, "Funcionacional", 10L)
myList = list(x, y, "Outro elemento");

myList[[1]][2]

myList[[2]][1]

myList[[2]][1] = "Imperativa"
myList[[2]][1]


# Slide 9
# Adicionando elemento em listas
x = c("IFSP", "PFUEL", "2021")
y = list(2021, "Funcionacional", 10L)
myList = list(x, y);

mylist = append(myList, "novo elemento")
mylist[[3]]


# Slide 10
# Removendo elemento da lista
x = c("IFSP", "PFUEL", "2021")
y = list(2021, "Funcionacional", 10L)
myList = list(x, y, "novo elemento");

# Remove o segundo elemento da lista myList
myList = myList[-2]
myList


# Slide 11
# Nomeando os elementos de uma lista
x = list(nome = "Thiago", idade = 26, altura = 1.80, notas = 1:10)
x

# Acessando um elemento específico com base no nome
x$nome
