algoritmo "Projeto - Semana 5"
// Fun��o: converter temperatura de Celsius para Fahrenheit (e vice-versa) com ordena��o dos dados utilizando vetor/matriz
// Autor: Carolina Aparecida Sens
// Data: Maio/2022

var
opcaoMenu, realizarConversao: literal
i, j: inteiro
dadosHora: vetor[1..4] de real
dadosTemperaturaInformada: vetor[1..4] de real
dadosTemperaturaConvertida: vetor[1..4] de real

procedimento limparVar()
inicio
para i de 1 ate 4 faca
   dadosHora[i] <- 0
   dadosTemperaturaInformada[i] <- 0
   dadosTemperaturaConvertida[i] <- 0
   i <- 0
   j <- 0
   realizarConversao <- ""
fimpara
fimprocedimento

procedimento mostrarMenu()
inicio
escreval ("Para convers�o de temperaturas: ")
escreval ("1 - Converter de CELSIUS para FAHRENHEIT")
escreval ("2 - Converter de FAHRENHEIT para CELSIUS")
escreval ("3 - Sair")
escreval ("")
escreva ("Digite o n�mero equivalente � op��o escolhida: ")
leia (opcaoMenu)
fimprocedimento

procedimento captarDados()
inicio
para i de 1 ate 4 faca
   escreval("Preencha os dados de n�",i," (somente n�meros)")
   escreva ("Hor�rio de leitura (h): ")
   leia(dadosHora[i])
   escreva ("Temperatura da leitura (�): ")
   leia(dadosTemperaturaInformada[i])
   escreval("")
fimpara
limpatela
fimprocedimento

funcao converterCelparaFah(dadosTemperaturaInformada:real): real
inicio
retorne dadosTemperaturaInformada[i]*(9/5) + 32
fimfuncao

funcao converterFahparaCel(dadosTemperaturaInformada:real): real
inicio
retorne (dadosTemperaturaInformada[i] - 32) * 5/9
fimfuncao

procedimento organizarTemperaturas()
var
aux1, aux2, aux3: real
i,j: inteiro
inicio
aux1 <- 0
aux2 <- 0
aux3 <- 0
i <- 0
j<- 0
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      se dadosTemperaturaInformada[j] > dadosTemperaturaInformada[i] entao
         aux1 <- dadosTemperaturaInformada[i]
         aux2 <- dadosHora[i]
         aux3 <- dadosTemperaturaConvertida[i]
         dadosTemperaturaInformada[i] <- dadosTemperaturaInformada[j]
         dadosHora[i] <- dadosHora[j]
         dadosTemperaturaConvertida[i] <- dadosTemperaturaConvertida[j]
         dadosTemperaturaInformada[j] <- aux1
         dadosHora[j] <- aux2
         dadosTemperaturaConvertida[j] <- aux3
      fimse
   fimpara
fimpara
fimprocedimento

inicio
repita
   opcaoMenu <- ""
   mostrarMenu()
   limparVar()
   limpatela
   se opcaoMenu = "1" entao
      escreval ("")
      escreval ("Voc� selecionou a op��o de converter CELSIUS para FAHRENHEIT")
      escreval ("")
      captarDados()
      para i de 1 ate 4 faca
         dadosTemperaturaConvertida[i] <- converterCelparaFah(dadosTemperaturaInformada[i])
      fimpara
      organizarTemperaturas()
      escreval ("")
      escreval ("Relat�rio por ordem crescente de temperatura:")
      para i de 1 ate 4 faca
         escreval ("")
         escreval ("Dado",i)
         escreval ("Temperatura registrada �s ",dadosHora[i]:2:1,"h")
         escreval ("Leitura obtida em Celsius: ", dadosTemperaturaInformada[i]:2:1," �C")
         escreval ("Temperatura convertida para Fahrenheit: ",dadosTemperaturaConvertida[i]:2:1," �F")
      fimpara
   senao
      se opcaoMenu = "2" entao
         escreval ("")
         escreval ("Voc� selecionou a op��o de converter FAHRENHEIT para CELSIUS")
         escreval ("")
         captarDados()
         para i de 1 ate 4 faca
            dadosTemperaturaConvertida[i] <- converterFahparaCel(dadosTemperaturaInformada[i])
         fimpara
         organizarTemperaturas()
         escreval ("")
         escreval ("Relat�rio por ordem crescente de temperatura:")
         para i de 1 ate 4 faca
            escreval ("")
            escreval ("Dado",i)
            escreval ("Temperatura registrada �s ",dadosHora[i]:2:1,"h")
            escreval ("Leitura obtida em Fahreinheit: ", dadosTemperaturaInformada[i]:2:1," �F")
            escreval ("Temperatura convertida para Celsius: ",dadosTemperaturaConvertida[i]:2:1," �C")
         fimpara
      senao
         se opcaoMenu <> "3" entao
            escreval ("Op��o inv�lida, por favor, tente novamente")
         fimse
      fimse
   fimse
   se opcaoMenu = "3" entao
      realizarConversao <- "N"
   senao
      escreval ("")
      escreval ("-------------------")
      escreval ("")
      escreval ("Voc� deseja realizar outra convers�o? (S/N)")
      leia(realizarConversao)
   fimse
ate realizarConversao <> "S"
limpatela
escreval ("Voc� optou por n�o realizar nenhuma convers�o. Obrigado!")
fimalgoritmo
