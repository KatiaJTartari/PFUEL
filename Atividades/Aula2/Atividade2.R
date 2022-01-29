# Atividade 2


# Importando a base de dados titanic
titanic <- read.csv("archive/train_and_test2.csv")

# Ou pode importar a base de dados titanic também deste modo:
titanic <- read.csv("train_and_test2.csv", header = TRUE, fileEncoding = "UTF-8")



# Visualização algumas linhas da base casos
View(titanic)

# Exibindo a classe do atributo age da base de titanic
class(titanic$Age)

