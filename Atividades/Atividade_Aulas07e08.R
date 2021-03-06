# Exerc�cio 1
m_1 <- matrix(1:100, nrow = 10, ncol = 10)
View(m_1)
m_2 <- matrix(1:100, nrow = 10, ncol = 10)
View(m_2)

# Produto dos elementos das matrizes
m_1 * m_2

# Matriz transposta de cada uma
m_1 <- matrix(1:100, nrow = 10, ncol = 10, byrow = TRUE)
View(m_1)
m_2 <- matrix(1:100, nrow = 10, ncol = 10, byrow = TRUE)
View(m_2)
# Ou para Matriz transposta de cada uma basta usar a fun��o t
t(m_1)
t(m_2)

# Determinante de cada matriz usa-se a fun��o det
det(m_1)
det(m_2)


# Exerc�cio 2
matrix(data = 1:6, nrow = 5, ncol = 2)


# Exerc�cio 3
matrix(data = 1:12, nrow = 5, ncol = 2)
