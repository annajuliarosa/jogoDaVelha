algoritmo "JogoDaVelha"
// Função :
// Autor :
// Data : 27/09/2021
// Seção de Declarações

var
valores: vetor [1..3, 1..3] de caractere
l, c, cont, finalizou, fim: inteiro
x, o: caractere

procedimento Tabuleiro()
inicio
para l <- 1 ate 3 faca
     ESCREVAL ("+--+--+--+")
   para c <- 1 ate 3 faca

           ESCREVA ("| ", valores[l,c])
   fimpara

 Escreva("|")
      ESCREVAL
fimpara
ESCREVAL ("+--+--+--+")
fimprocedimento


procedimento mostraVelha()
inicio
cont<-1
para l <- 1 ate 3 faca
     ESCREVAL ("+--+--+--+")
   para c <- 1 ate 3 faca
          valores[l,c] <- NumpCarac(Cont)
          Cont <- Cont + 1
           ESCREVA ("| ", valores[l,c])
   fimpara

 Escreva("|")
      ESCREVAL
fimpara
ESCREVAL ("+--+--+--+")

fimprocedimento


procedimento JogadaX()
inicio

ESCREVAL ("Vai jogar [x] em qual posição? ")
LEIA (x)


limpatela

para l <- 1 ate 3 faca
   para c <- 1 ate 3 faca

      se (x=valores[l,c]) entao
      valores[l,c]<-"X"
      fimse

      se (valores[1,c]="X") E (valores[2,c]="X") E (valores[3,c]="X")   entao
          finalizou<-1
      senao
          se (valores[l,1]="X") E (valores[l,2]="X") E (valores[l,3]="X") entao
          finalizou<-1
      senao
          se (valores[1,1]="X") E (valores[2,2]="X") E (valores[3,3]="X") entao
          finalizou<-1
      senao
          se (valores[1,3]="X") E (valores[2,2]="X") E (valores[3,1]="X") entao
          finalizou<-1
          fimse
          fimse
          fimse
          fimse

    fimpara
    fimpara

Tabuleiro()

fimprocedimento

procedimento JogadaO()
inicio

se (finalizou<>1) entao
 ESCREVAL ("Vai jogar [o] em qual posição? ")
LEIA (o)

limpatela

para l <- 1 ate 3 faca
   para c <- 1 ate 3 faca

se (o=valores[l,c]) entao
   valores[l,c]<-"O"
    fimse
       se (valores[1,c]="o") E (valores[2,c]="o") E (valores[3,c]="o")   entao
          finalizou<-1
      senao
          se (valores[l,1]="o") E (valores[l,2]="o") E (valores[l,3]="o") entao
          finalizou<-1
      senao
          se (valores[1,1]="o") E (valores[2,2]="o") E (valores[3,3]="o") entao
          finalizou<-1
      senao
          se (valores[1,3]="o") E (valores[2,2]="o") E (valores[3,1]="o") entao
          finalizou<-1
          fimse
          fimse
          fimse
          fimse
      fimpara
fimpara

Tabuleiro()
fimse

fimprocedimento

procedimento velha()
inicio

fim<-0

para l <- 1 ate 3 faca
   para c <- 1 ate 3 faca

se (valores[l,c]<>"X") e (valores[l,c]<>"O") entao
fim<-fim+1
fimse
fimpara
fimpara

se (fim=0)entao
finalizou<-1
fimse

fimprocedimento

inicio

mostraVelha()

repita


JogadaX()
JogadaO()
Velha()

se (finalizou=1)entao
ESCREVAL ("JOGO FINALIZOU!!!")
fimse

ate (finalizou=1)



fimalgoritmo

