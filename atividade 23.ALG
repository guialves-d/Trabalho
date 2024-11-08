Algoritmo "semnome"
var
   valor: real
inicio
   escreva("Digite um valor: ")
   leia(valor)
se (valor > 0) entao
      escreva("O valor é positivo.")
   senao
      se (valor < 0) entao
         escreva("O valor é negativo.")
      senao
         escreva("O valor é zero.")
      fimse
   fimse
Fimalgoritmo