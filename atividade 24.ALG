Algoritmo "semnome"
var
   letra: caractere
inicio
   escreva("Digite a letra correspondente ao sexo (F para Feminino, M para Masculino): ")
   leia(letra)
   se (letra = "F") ou (letra = "f") entao
      escreva("F - Feminino")
   senao
      se (letra = "M") ou (letra = "m") entao
         escreva("M - Masculino")
      senao
         escreva("Sexo Inválido")
      fimse
   fimse
Fimalgoritmo