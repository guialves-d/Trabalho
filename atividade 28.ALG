algoritmo "MaiorEMenorDeTresNumeros"
var
   numero1, numero2, numero3, maior, menor: real
inicio
   escreva("Digite o primeiro número: ")
   leia(numero1)
   escreva("Digite o segundo número: ")
   leia(numero2)
   escreva("Digite o terceiro número: ")
   leia(numero3)
   maior := numero1
   menor := numero1
se (numero2 > maior) entao
      maior := numero2
   fimse
   se (numero3 > maior) entao
      maior := numero3
   fimse
   se (numero2 < menor) entao
      menor := numero2
   fimse
   se (numero3 < menor) entao
      menor := numero3
   fimse
   escreva("O maior número é: ", maior)
   escreva("O menor número é: ", menor)
fimalgoritmo