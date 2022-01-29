# Tipo de dado
x = "dataset"
typeof(x)

# Tipo de dado numérico
x = 10
class(x)
typeof(x)

x = -4.5
class(x)
typeof(x)

# Tipo de dado inteiro
x = 10L
class(x)
typeof(x)

# Tipo de dado lógico
x = TRUE
class(x)
typeof(x)

x = FALSE
class(x)
typeof(x)

# Tipo de dado complexo
x = 4+1i
class(x)

# Importando a base de casos covid
caso <- read.csv("caso.csv", header = TRUE, sep = ",", fileEncoding = "UTF-8") 

# Exibindo a classe do atributo 
caso$
  