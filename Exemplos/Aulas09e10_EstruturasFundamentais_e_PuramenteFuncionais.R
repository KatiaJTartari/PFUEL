# Exemplos slide 31:
# Imperativo
a = 1
a = a + 1
a

# Funcional
a = 1
soma_um <- function(x) { x + 1 }
soma_um(a)


# Exemplos slide 32:
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


# Exemplos slide 33:
# Imperativo
fatorial = function(n){
  fat = 1
  if(n == 0)
    return (1)
  for (i in 1:n) {
    fat = fat*i
  }
  return (fat)
}
fatorial(5)
  
# Funcional
retorna_um <- function() { 1 }
fatorial_rec <- function(n) {
  if(n == 0)
    retorna_um()
  else
    n*fatorial_rec(n-1)
}
fatorial_rec(5)
