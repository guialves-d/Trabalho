algoritmo "MaiorDeTresNumeros"
var
   numero1, numero2, numero3, maior: real
inicio
   escreva("Digite o primeiro n�mero: ")
   leia(numero1)
   escreva("Digite o segundo n�mero: ")
   leia(numero2)
   escreva("Digite o terceiro n�mero: ")
   leia(numero3)
   maior := numero1
   se (numero2 > maior) entao
      maior := numero2
   fimse
   se (numero3 > maior) entao
      maior := numero3
   fimse
   escreva("O maior n�mero �: ", maior)
fimalgoritmo