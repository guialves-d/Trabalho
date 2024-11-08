Algoritmo "semnome"
var
   i, maior, menor, segundomaior, segundomenor: inteiro
   vet : vetor[1..5] de inteiro;
inicio
   para i de 1 ate 10 faca
      escreva("Digite o ", i, "º número: ")
      leia(vet[i])
   fimpara
   maior := vetor[1]
   menor := vetor[1]
   para i de 2 ate 10 faca
      se vet[i] > maior entao
         maior := vet[i]
      fimse
      se vet[i] < menor entao
         menor := vet[i]
      fimse
   fimpara
   segundomaior := menor - 1
   segundomenor := maior + 1
   para i de 1 ate 10 faca
      se vet[i] < maior e vet[i] > segundomaior entao
         segundomaior := vet[i]
      fimse
   se vet[i] > menor e vet[i] < segundomenor entao
         segundomenor := vet[i]
      fimse
   fimpara
   escreval("O segundo maior valor é: ", segundomaior)
   escreval("O segundo menor valor é: ", segundomenor)
Fimalgoritmo