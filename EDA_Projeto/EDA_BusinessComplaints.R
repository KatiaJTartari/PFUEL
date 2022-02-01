# Importando e Visualizando a Base de Dados 
# Consumer Business Complaints in Brazil obtida pelo Kaggle

base2012 <- read.csv("archive/reclamacoes-fundamentadas-sindec-2012.csv")

View(base2012)


base2013 <- read.csv("archive/reclamacoes-fundamentadas-sindec-2013.csv")

View(base2013)


base2014 <- read.csv("archive/reclamacoes-fundamentadas-sindec-2014.csv")

View(base2014)


base2015 <- read.csv("archive/reclamacoes-fundamentadas-sindec-2015.csv")

View(base2015)


base2016 <- read.csv("archive/reclamacoes-fundamentadas-sindec-2016.csv")

View(base2016)


#-------------------------------------------------------------------------------
# Região e Estado com mais reclamações em cada ano no período de 2012 a 2016 

library(ggplot2)

ggplot(data = base2012) + geom_bar(mapping = aes(Regiao))
ggplot(data = base2012) + geom_bar(mapping = aes(UF))

ggplot(data = base2013) + geom_bar(mapping = aes(Regiao))
ggplot(data = base2013) + geom_bar(mapping = aes(UF))

ggplot(data = base2014) + geom_bar(mapping = aes(Regiao))
ggplot(data = base2014) + geom_bar(mapping = aes(UF))

ggplot(data = base2015) + geom_bar(mapping = aes(Regiao))
ggplot(data = base2015) + geom_bar(mapping = aes(UF))

ggplot(data = base2016) + geom_bar(mapping = aes(Regiao))
ggplot(data = base2016) + geom_bar(mapping = aes(UF))


library(ggplot2)
library(dplyr)

base2012 %>% count(Regiao)
base2012 %>% count(UF)

base2013 %>% count(Regiao)
base2013 %>% count(UF)

base2014 %>% count(Regiao)
base2014 %>% count(UF)

base2015 %>% count(Regiao)
base2015 %>% count(UF)

base2016 %>% count(Regiao)
base2016 %>% count(UF)


#-------------------------------------------------------------------------------
# Empresa com mais reclamações em cada ano no período de 2012 a 2016

library(ggplot2)

ggplot(data = base2012) + geom_bar(mapping = aes(strNomeFantasia)) + 
        (coord_cartesian(ylim = c(24, 45)))

ggplot(data = base2013) + geom_bar(mapping = aes(strNomeFantasia)) + 
        (coord_cartesian(ylim = c(11, 44)))

ggplot(data = base2014) + geom_bar(mapping = aes(strNomeFantasia)) + 
        coord_cartesian(ylim = c(80, 300))

ggplot(data = base2015) + geom_bar(mapping = aes(strNomeFantasia)) + 
        coord_cartesian(ylim = c(30, 130))

ggplot(data = base2016) + geom_bar(mapping = aes(strNomeFantasia)) + 
        coord_cartesian(ylim = c(15, 55))


library(ggplot2)
library(dplyr)

base2012 %>% count(strNomeFantasia) %>% filter(n >= 24)

base2013 %>% count(strNomeFantasia) %>% filter(n >= 11)

base2014 %>% count(strNomeFantasia) %>% filter(n >= 170)

base2015 %>% count(strNomeFantasia) %>% filter(n >= 30)

base2016 %>% count(strNomeFantasia) %>% filter(n >= 15)


#-------------------------------------------------------------------------------
# Regiões que mais tiveram as reclamações atendidas em cada ano de 2012 a 2016

library(ggplot2)
library(dplyr)

x <- xtabs(~Atendida + Regiao, data = base2012)
x
cols <- c( "white", "red", "green")
# Barras lado a lado
barplot(x,
        beside = TRUE,
        xlab = "Região",
        ylab = "Número de casos",
        col = cols)
legend("topleft",
       title = "Atendida",
       legend = c("Null", "N", "S"),
       fill = cols,
       bty = "n")
box(bty = "L")


x <- xtabs(~Atendida + Regiao, data = base2013)
x
cols <- c( "white", "red", "green")
# Barras lado a lado
barplot(x,
        beside = TRUE,
        xlab = "Região",
        ylab = "Número de casos",
        col = cols)
legend("topleft",
       title = "Atendida",
       legend = c("Null", "N", "S"),
       fill = cols,
       bty = "n")
box(bty = "L")


x <- xtabs(~Atendida + Regiao, data = base2014)
x
cols <- c( "white", "red", "green")
# Barras lado a lado
barplot(x,
        beside = TRUE,
        xlab = "Região",
        ylab = "Número de casos",
        col = cols)
legend("topleft",
       title = "Atendida",
       legend = c("Null", "N", "S"),
       fill = cols,
       bty = "n")
box(bty = "L")


x <- xtabs(~Atendida + Regiao, data = base2015)
x
cols <- c( "white", "red", "green")
# Barras lado a lado
barplot(x,
        beside = TRUE,
        xlab = "Região",
        ylab = "Número de casos",
        col = cols)
legend("topleft",
       title = "Atendida",
       legend = c("Null", "N", "S"),
       fill = cols,
       bty = "n")
box(bty = "L")


x <- xtabs(~Atendida + Regiao, data = base2016)
x
cols <- c( "white", "red", "green")
# Barras lado a lado
barplot(x,
        beside = TRUE,
        xlab = "Região",
        ylab = "Número de casos",
        col = cols)
legend("topleft",
       title = "Atendida",
       legend = c("Null", "N", "S"),
       fill = cols,
       bty = "n")
box(bty = "L")


cols <- c( "white", "red", "green")
# Barras empilhadas
barplot(x,
        beside = FALSE,
        xlab = "Região",
        ylab = "Número de casos",
        col = cols)
legend("topleft",
       title = "Atendida",
       legend = c("Null", "S", "N"),
       fill = cols,
       bty = "n")
box(bty = "L")


# Total de reclamações atendidas e não atendidas em cada ano

base2012 %>% count(Atendida)

base2013 %>% count(Atendida)

base2014 %>% count(Atendida)

base2015 %>% count(Atendida)

base2016 %>% count(Atendida)

