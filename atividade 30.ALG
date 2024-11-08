algoritmo "OrdemDecrescente"
var
   numero1, numero2, numero3, maior, meio, menor: real
inicio
   escreva("Digite o primeiro número: ")
   leia(numero1)
   escreva("Digite o segundo número: ")
   leia(numero2)
   escreva("Digite o terceiro número: ")
   leia(numero3)
   se (numero1 >= numero2) e (numero1 >= numero3) entao
      maior := numero1
      se (numero2 >= numero3) entao
         meio := numero2
         menor := numero3
      senao
         meio := numero3
         menor := numero2
      fimse
   senao
      se (numero2 >= numero1) e (numero2 >= numero3) entao
         maior := numero2
         se (numero1 >= numero3) entao
            meio := numero1
            menor := numero3
         senao
            meio := numero3
            menor := numero1
         fimse
      senao
         maior := numero3
         se (numero1 >= numero2) entao
            meio := numero1
            menor := numero2
         senao
            meio := numero2
            menor := numero1
         fimse
      fimse
   fimse
escreva("Os números em ordem decrescente são: ", maior, ", ", meio, ", ", menor)
fimalgoritmo
