# Exemplos slide 14 - Fun��o de Mapeamento - Map:
 
# Imperativo
vet = 3:9
vet

for (i in seq_along(vet)) {
   vet[i] = vet[i] + 1
}
vet

# Imperativo + Funcional
vet = 3:9
vet

soma_um <- function(x) { x + 1 }
for (i in seq_along(vet)) {
  vet[i] = soma_um(vet[i])
}
vet


# Exemplo slide 15 - Fun��o de Mapeamento - Map:

# Funcional - Fun��o explicitamente declarada
library(purrr)
vet = 3:9
vet

soma_um <- function(x) { x + 1 }
vet_somado_1 = map(vet, soma_um)
vet_somado_1


# Exemplo slide 16 - Fun��o de Mapeamento - Map:

# Funcional - Fun��o an�nima
library(purrr)
vet = 3:9
vet

vet_somado_1 = map(vet, function(x){x+1})
vet_somado_1


# Exemplos slide 19 - Fun��o de Mapeamento - Map:
vet = 3:9
vet

vet_somado_1 = map_dbl(vet, function(x){x+1})
vet_somado_1

vet_somado_1 = map_chr(vet, function(x){x+1})
vet_somado_1


vet

eh_par <- function(x) { x %% 2 == 0 }

vet_2_par = map_if(vet, eh_par, function(x){ x / 2 }) %>% flatten_dbl()
vet_2_par


# Exemplos slide 20 - Fun��o de Filtragem - Filter:

pessoas <- list(
  list(0, nome = "Maria", idade = 23),
  list(1, nome = "Jos�", idade = 57),
  list(2, nome = "Tereza", idade = 12)
)
map(pessoas, "nome")


pessoas <- data.frame(nome = c("Maria","Jos�","Tereza"),
                      idade = c(22,34,89))

pluck(pessoas, "nome")

pluck(pessoas, "nome", 3)

pluck(pessoas, "idade", 3)


# Exemplos slide 21 - Fun��o de Filtragem - Filter:

pessoas <- data.frame(nome = c("Maria","Jos�","Tereza"),
                      idade = c(22,34,89))

keep(pessoas$idade, function(x){ x > 30 })

discard(pessoas$idade, function(x){ x > 30 })


# Exemplos slide 23 - Fun��o de Redu��o - Reduce:

reduce(c(1,2,3,4), function(x, y){ x + y })

reduce(c(1,2,3,4), function(x, y){ x * y })


accumulate(c(1,2,3,4), function(x, y){ x + y })

accumulate(c(1,2,3,4), function(x, y){ x * y })


# Exemplos slide 24 - Fun��o de Redu��o - Reduce:

l = list(list(7, 1, 8, 8, 3, 8, 2, 4, 7, 10),
         list(6, 10, 9, 5, 6, 7, 8, 6, 10, 8),
         list(9, 8, 6, 4, 4, 5, 2, 9, 9, 6))
saida = l[[1]]

saida = intersect(saida, l[[2]])

saida = intersect(saida, l[[3]])

saida

