# Exerc�cio2

# Definic�o do vetor:
vet = 1:10
vet

# OU a defini��o do vetor deste outro modo:
vet = c (4, 9, 16, 25, 36, 49, 64, 81, 100, 121)
vet

raiz_quadrada <- function(x) { sqrt(x) }
for (i in seq_along(vet)) {
  vet[i] = raiz_quadrada(vet[i])
}
vet


# Exerc�cio3

# Defini��o do vetor:
vet = 1:10
vet

# OU a defini��o do vetor deste outro modo:
vet = c (6, 11, 21, 38, 4, 5, 2, 7, 4, 3)
vet


n = length(vet) 
produto_rec <- function (vet, n){
  if (n == 1)
    vet[n]
  else
    (vet[n] * produto_rec(vet, n-1))
}
produto_rec(vet, n)

# Essa fun��o � poss�vel o somat�rio do vetor trocando o sinal de * por +
n = length(vet) 
produto_rec <- function (vet, n){
  if (n == 1)
    vet[n]
  else
    (vet[n] + produto_rec(vet, n-1))
}
produto_rec(vet, n)
