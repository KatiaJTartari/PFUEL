# Exemplos p�gina 10
# Matriz como implementar: matrix()
m_1 <- matrix(1:8)
View(m_1)

m_2 <- matrix(1:8, ncol = 2)
View(m_2)


# Exemplos p�gina 11
# Matriz como implementar: matrix()
m_3 <- matrix(data = 1:10, nrow = 5, ncol = 2)
View(m_3)

m_4 <- matrix(data = 1:10, nrow = 5, ncol = 2, byrow = TRUE)
View(m_4)


# Exemplos p�gina 12
# Matriz como implementar: rbind()
v_1 <- c(2, 4, 6)
v_2 <- c(8, 10, 12)
m_5 <- rbind(v_1, v_2)


# Exemplos p�gina 13
# Matriz como implementar: cbind()
v_1 <- c(2, 4, 6)
v_2 <- c(8, 10, 12)
m_6 <- cbind(v_1, v_2)


# Exemplos p�gina 14
# Matriz Acessando seus elementos
m_6[2,2]
m_6[2,]
m_6[,2]
m_6[2:3,]


# Exemplos p�gina 16
# Data Frame como Implementar - Defini��o
df <- data.frame(
  nome = c("Maria", "Cláudio", "Amanda", "Carla", "Fernanda", "Gustavo"),
  idade = c(22, 21, 18, 20, 23, 19),
  altura = c(1.80, 1.77, 1.71, 1.65, 1.66, 1.63),
  peso = c(78.3, 82.1, 66.5, 88.1, 58, 75.4)
)


# Exemplos p�gina 17
# Data Frame como Implementar - Importa��o de Dados
df <- read.table("dados.csv", header = TRUE, sep = ";", dec = ".")
df <- read.csv2("dados.csv")


# Exemplos p�gina 18
# Data Frame Acessando seus elementos - str()
str(df) 


# Exemplos p�gina 19
# Data Frame Acessando seus elementos - head() e tail()
head(df, n = 3) 
tail(df, n = 2)


# Exemplos p�gina 20
# Data Frame Acessando seus elementos
df[2,3]
df[3,]
df[,4]


# Exemplos p�gina 21
# Data Frame Acessando seus elementos
df[,"nome"]
df$nome


# Exemplos p�gina 22
# Data Frame Acessando seus elementos
df[df$idade > 20, c("nome", "idade")]


# Exemplos p�gina 23
# Data Frame Acessando seus elementos
df[order(df$nome),]
