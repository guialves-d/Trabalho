Algoritmo "semnome"
Var
   n, i, fatorial: inteiro
Inicio
escreval("Digite um n�mero inteiro para calcular o fatorial: ")
leia(n)
fatorial := 1
se (n < 0) entao
escreval("N�o � poss�vel calcular o fatorial de um n�mero negativo.")
   senao
para i de 1 ate n faca
fatorial := fatorial * i
      fimpara
      escreval("O fatorial de ", n, " �: ", fatorial)
   fimse
Fimalgoritmo