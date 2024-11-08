algoritmo "ProdutoMaisBarato"
var
   preco1, preco2, preco3: real
inicio
   escreva("Digite o preço do primeiro produto: ")
   leia(preco1)
   escreva("Digite o preço do segundo produto: ")
   leia(preco2)
   escreva("Digite o preço do terceiro produto: ")
   leia(preco3)
se (preco1 < preco2) e (preco1 < preco3) entao
      escreva("Você deve comprar o primeiro produto, que custa: ", preco1)
   senao
      se (preco2 < preco1) e (preco2 < preco3) entao
         escreva("Você deve comprar o segundo produto, que custa: ", preco2)
      senao
         escreva("Você deve comprar o terceiro produto, que custa: ", preco3)
      fimse
   fimse
fimalgoritmo