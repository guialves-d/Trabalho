Algoritmo "CadastroCompletoCliente"
var
   nome: caractere
   idade: inteiro
   genero: caractere
   totalCompras: real
   valorFinal: real
   continuarCadastro: caractere
   somaTotal: real
   contadorClientes: inteiro
   relatorioClientes: vetor[1..100] de caractere
   relatorioValores: vetor[1..100] de real
   relatorioDescontos: vetor[1..100] de caractere
   totalVendas: real
   i: inteiro  // Variável de controle para o loop

funcao cadastroNome(): caractere
var
   nome: caractere
inicio
   escreva("Digite o nome do cliente: ")
   leia(nome)
   escreval("Bem-vindo, ", nome, "!")
   retorne nome
fimfuncao

funcao cadastroIdade(): inteiro
var
   idade: inteiro
inicio
   escreva("Digite a idade do cliente: ")
   leia(idade)
   enquanto (idade < 0) ou (idade > 120) faca
      escreva("Idade inválida. Por favor, digite uma idade entre 0 e 120: ")
      leia(idade)
   fimenquanto
   retorne idade
fimfuncao

funcao cadastroGenero(): caractere
var
   genero: caractere
inicio
   escreva("Digite o gênero do cliente (M/F): ")
   leia(genero)
   enquanto (genero <> "M") e (genero <> "F") faca
      escreva("Gênero inválido. Por favor, digite M para Masculino ou F para Feminino: ")
      leia(genero)
   fimenquanto
   retorne genero
fimfuncao

funcao registraCompras(): real
var
   valorCompra: real
   total: real
   continuar: caractere
inicio
   total := 0
   repita
      escreva("Digite o valor da compra: ")
      leia(valorCompra)
      enquanto valorCompra < 0 faca
         escreva("Valor inválido. Por favor, digite um valor não negativo: ")
         leia(valorCompra)
      fimenquanto
      total := total + valorCompra
      escreva("Deseja registrar outra compra? (S/N): ")
      leia(continuar)
   ate (continuar <> "S") e (continuar <> "s")
   retorne total
fimfuncao

funcao verificaMaioridade(idade: inteiro): caractere
inicio
   se idade >= 18 entao
      retorne "Você é maior de idade."
   senao
      retorne "Você é menor de idade."
   fimse
fimfuncao

funcao aplicarDesconto(total: real): real
var
   desconto: real
inicio
   desconto := 0
   se total > 100 entao
      desconto := total * 0.10
   fimse
   retorne total - desconto
fimfuncao

inicio
   continuarCadastro := "S"
   somaTotal := 0
   contadorClientes := 0
   totalVendas := 0

   enquanto (continuarCadastro = "S") ou (continuarCadastro = "s") faca
      nome := cadastroNome()
      idade := cadastroIdade()
      genero := cadastroGenero()
      escreval(verificaMaioridade(idade))
      totalCompras := registraCompras()
      valorFinal := aplicarDesconto(totalCompras)

      // Armazenar informações para o relatório
      contadorClientes := contadorClientes + 1
      relatorioClientes[contadorClientes] := nome
      relatorioValores[contadorClientes] := totalCompras

      // Determinar se desconto foi aplicado
      se (valorFinal < totalCompras) então
         relatorioDescontos[contadorClientes] := "Sim"
      senao
         relatorioDescontos[contadorClientes] := "Não"

      escreval("Cadastro completo! Nome: ", nome, ", Idade: ", idade, ", Gênero: ", genero)
      escreval("Total gasto em compras: R$ ", totalCompras:0:2)
      escreval("Valor final com desconto: R$ ", valorFinal:0:2)

      somaTotal := somaTotal + totalCompras
      totalVendas := totalVendas + totalCompras

      escreva("Deseja cadastrar outro cliente? (S/N): ")
      leia(continuarCadastro)
   fimse

   // Relatório final do dia
   se contadorClientes > 0 entao
      escreval("Total de clientes cadastrados: ", contadorClientes)
      escreval("Soma total de compras: R$ ", somaTotal:0:2)
      escreval("Média de gastos dos clientes: R$ ", (somaTotal / contadorClientes):0:2)
      escreval("Relatório Final do Dia:")

      // Loop para gerar o relatório dos clientes
      para i de 1 ate contadorClientes faca
         escreval("Nome: ", relatorioClientes[i], ", Total Compras: R$ ", relatorioValores[i]:0:2, ", Desconto Aplicado: ", relatorioDescontos[i])
      fimpara

      escreval("Soma total das vendas do dia: R$ ", totalVendas:0:2)
   senao
      escreval("Nenhum cliente cadastrado.")
   fimse
   fimenquanto
fimalgoritmo
