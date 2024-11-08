algoritmo "ReajusteSalarial"
var
   salarioAtual, percentualAumento, aumento, novoSalario: real
inicio
   escreva("Digite o salário do colaborador: ")
   leia(salarioAtual)
se (salarioAtual <= 280.00) entao
      percentualAumento := 20
   senao
      se (salarioAtual > 280.00) e (salarioAtual <= 700.00) entao
         percentualAumento := 15
      senao
         se (salarioAtual > 700.00) e (salarioAtual <= 1500.00) entao
            percentualAumento := 10
         senao
            percentualAumento := 5
         fimse
      fimse
   fimse
   aumento := salarioAtual * (percentualAumento / 100)
   novoSalario := salarioAtual + aumento
   escreva("Salário antes do reajuste: R$ ", salarioAtual:0:2)
   escreva("Percentual de aumento aplicado: ", percentualAumento:0:2, "%")
   escreva("Valor do aumento: R$ ", aumento:0:2)
   escreva("Novo salário, após o aumento: R$ ", novoSalario:0:2)
fimalgoritmo
