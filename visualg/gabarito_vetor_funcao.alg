algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 09/08/2022
// Se��o de Declara��es
var
   nome :vetor [1..3] de caractere
   prova :vetor [1..5] de caractere
   gabarito : vetor [1..5] de caractere
   nota : vetor [1..3] de real
   a : inteiro
   s, m : real

procedimento cadastrogabarito()
var
c : inteiro
inicio
escreval ("------------GABARITO------------")
para c de 1 ate 5 faca
escreva (c,"o quest�o: ")
leia (gabarito[c])
fimpara
fimprocedimento

funcao cadastraprova() : real
var c :inteiro
    notafinal: real
inicio
notafinal <- 0
escreval ("-------RESPOSTAS DADAS--------")
para c <- 1 ate 5 faca
escreva (c, "o Quest�o: ")
leia (prova[c])
se maiusc(prova[c]) = maiusc(gabarito[c]) entao
notafinal <- notafinal + 2
fimse
fimpara
retorne notafinal
fimfuncao

inicio

cadastrogabarito()
para a <- 1 ate 3 faca
limpatela
escreval ("----------------------------")
escreval (a, "o Aluno ")
escreval ("----------------------------")
escreva ("Nome: ")
leia (nome[a])
nota[a] <- cadastraprova()
s <- s +  nota [a]
fimpara

limpatela
escreval ("---------- NOTAS FINAIS -----------")
escreval()
para a <- 1 ate 3 faca
escreval(nome[a]:10, nota[a]:3:2)
fimpara
m <- s /3
escreval ("----------------------------------")
escreval("A m�dia da turma foi: ",m:3:2)



fimalgoritmo
