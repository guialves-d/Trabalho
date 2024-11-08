algoritmo "MaiorDeTresNumeros"
var
   numero1, numero2, numero3, maior: real
inicio
   escreva("Digite o primeiro número: ")
   leia(numero1)
   escreva("Digite o segundo número: ")
   leia(numero2)
   escreva("Digite o terceiro número: ")
   leia(numero3)
   maior := numero1
   se (numero2 > maior) entao
      maior := numero2
   fimse
   se (numero3 > maior) entao
      maior := numero3
   fimse
   escreva("O maior número é: ", maior)
fimalgoritmo