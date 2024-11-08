Algoritmo "semnome"
Var
   n, i, fatorial: inteiro
Inicio
escreval("Digite um número inteiro para calcular o fatorial: ")
leia(n)
fatorial := 1
se (n < 0) entao
escreval("Não é possível calcular o fatorial de um número negativo.")
   senao
para i de 1 ate n faca
fatorial := fatorial * i
      fimpara
      escreval("O fatorial de ", n, " é: ", fatorial)
   fimse
Fimalgoritmo