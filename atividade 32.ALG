algoritmo "ReajusteSalarial"
var
   salarioAtual, percentualAumento, aumento, novoSalario: real
inicio
   escreva("Digite o sal�rio atual do colaborador: ")
   leia(salarioAtual)
   escreva("Digite o percentual de aumento (em %): ")
   leia(percentualAumento)
   aumento := salarioAtual * (percentualAumento / 100)
   novoSalario := salarioAtual + aumento
   escreva("O aumento salarial �: R$ ", aumento:0:2)
   escreva("O novo sal�rio �: R$ ", novoSalario:0:2)
fimalgoritmo
