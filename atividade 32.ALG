algoritmo "ReajusteSalarial"
var
   salarioAtual, percentualAumento, aumento, novoSalario: real
inicio
   escreva("Digite o salário atual do colaborador: ")
   leia(salarioAtual)
   escreva("Digite o percentual de aumento (em %): ")
   leia(percentualAumento)
   aumento := salarioAtual * (percentualAumento / 100)
   novoSalario := salarioAtual + aumento
   escreva("O aumento salarial é: R$ ", aumento:0:2)
   escreva("O novo salário é: R$ ", novoSalario:0:2)
fimalgoritmo
