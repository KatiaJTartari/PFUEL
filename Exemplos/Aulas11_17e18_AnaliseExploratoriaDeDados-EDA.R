# Primeiro de tudo importar a biblioteca que ser� usada:
# Exemplo slide 32
library(ggplot2)


# Exemplo slide 22 - Importar e apresentar o conjunto de dados:
diamonds


# Exemplo slide 23 - Importar e apresentar o conjunto de dados:
str(diamonds)


# Exemplo slide 32 - Visualizar a distribui��o da vari�vel categ�rica "cut"
ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut))


# Exemplo slide 33 - Visualizar a distribui��o da vari�vel categ�rica "cut"
library(dplyr)
diamonds %>% count(cut)


# Exemplo slide 35 - Visualizar a distribui��o da vari�vel cont�nua "carat"
ggplot(data = diamonds) + 
    geom_histogram(mapping = aes(x = carat),
                   binwidth = 0.1)


# Exemplo slide 36 - Visualizar a distribui��o da vari�vel cont�nua "carat"
library(dplyr)
diamonds %>% count(cut_width(carat, 0.1))


# Exemplo slide 37 - Visualizar a distribui��o da vari�vel cont�nua "carat"
zoom <- diamonds %>% filter(carat < 2)

ggplot(data = zoom, mapping = aes(x = carat)) +
    geom_histogram(binwidth = 0.1)


# Exemplo slide 39 - Visualizar a distribui��o da vari�vel cont�nua "carat" e da categórica "cut"
zoom <- diamonds %>% filter(carat < 2)

ggplot(data = zoom, mapping = aes(x = carat, colour = cut)) +
  geom_freqpoly(binwidth = 0.1)


# Exemplo slide 42
zoom <- diamonds %>% filter(carat < 2)

ggplot(data = zoom, mapping = aes(x = carat)) +
  geom_histogram(binwidth = 0.01)


# Exemplo slide 45
ggplot(diamonds) +
  geom_histogram(mapping = aes(x = y), binwidth = 0.5)


# Exemplo slide 46
ggplot(diamonds) +
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  coord_cartesian(ylim = c(0, 50))


# Exemplo slide 48 - Remover a linha toda do conjunto de dados
sem_outliers <- diamonds %>% filter(between(y, 3, 20))


# Exemplo slide 49 - Remover a linha toda do conjunto de dados
ggplot(sem_outliers) +
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  coord_cartesian(ylim = c(0, 50))


# Exemplo slide 50 - Substituir o dado: NA, m�dia, m�ximo, m�nimo etc
sem_outliers <- diamonds %>% 
  mutate(y = ifelse(y < 3 | y > 20, NA, y))


# Exemplo slide 51 - Substituir o dado: NA, m�dia, m�ximo, m�nimo etc
ggplot(sem_outliers) +
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  coord_cartesian(ylim = c(0, 50))

