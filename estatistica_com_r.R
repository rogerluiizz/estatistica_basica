#ROTEIRO DAS AULAS PR�TICAS

Como o R funciona?
      Ele recebe comandos digitados pelo usuario no prompt e os processa usando 
      pacotes carregados na memoria. 
      O resultado desse processamento pode ser exibido na tela ou armazenado em um
      objeto na memoria do R.

BUSCANDO O DIRETORIO DE TRABALHO
Para saber qual diret�rio de trabalho � usado pelo R para gravar, ler, importar e exportar arquivos 
usa-se o comando getwd(). Caso haja necessidade de mudar o seu diret�rio usa-se o comando setwd()
e dentro dos par�nteses colocar o caminho da pasta que ser� utilizada como diret�rio 
principal entre aspas. 
getwd()
setwd("C:/Users/roger/Documents")

CACULADORA
      O R pode ser usado como calculadora na realiza��o dos mais diversos calculos
      e opera��es matematica
      Exemplo
2+2
2/3
2*3
2-3
2*3+8/8

OBTENDO AJUDA
      DICA: Procurar na internet o script e adequa-lo ao seu uso e os seus 
      dados

COMANDOS E ARGUMENTOS
      O R � feito de inumeros comendos agrupados em pacotes. Estes comandos
      s�o executados pelos seus respectivos nomes, seguidos de par�ntese ().
      Os comandos possuem argumentos que definem como o comando ser� executado.
      Exemplo
seq()   
        #sequencia numerica
        #ele tem como argumentos: from, to e by. Quer dizer que o comando seq
        #tem como complemento a ele esses argumentos. Esses argumentos s�o
        #separados por virgula e devem vir na ordem e s�o definidos pelo 
        # sinal de igualdade = Exemplo

seq(from=1,to=10, by=3)
      
      Outros exemplos de comandos:
citation()
#
q()
rm(x)
c()
    
  
MANIPULANDO OBJETOS
      Um objeto pode ser criado com a apera��o de atribui��o, � qual se denota
      como uma flecha, com o sinal de menos e o simbolo de > ou <, dependendo
      da dire��o em que se atribui o objeto.
    
      O nome do objeto deve come�ar com uma letra qualquer, maiuscula ou minuscula
      que pode ser seguida de outra letra ou numero ou ponto
      Exemplo
x<-10  
x # o objeto x receber� o valor de 10
15->y.A 
y.A # o objeto y.A receber� o valor de 15
X<-8
X #observar diferen�a entre maiusculo e minusculo
x<-sqrt(5)
x#observar que o valor de x agora � o valor da raiz quadrada de 5
rm(x) #remove o objeto x
rm(list = ls())  #remove todos os objetos do R. CUIDADO!

PRINCIPAIS OBJETOS = VETOR
      Uma das principais estruturas do R � o vetor(vector). Eles armazenam um
      ou mais elementos do tipo numerico e do tipo caractere. Mas cada um deles
      suporta apena um dos tipos mencionados.
      A maneira mais simples de criar um vetor � usando o comando c()
      Exemplo
x<-c(2,3,5,7,11)
x
y<-c(x,13,17,19)
y
z<-seq(1,10,1)    
z
a<-1:10 #outra forma de criar uma sequencia de inteiros de 1 at� 10
a
b<-rep(3,10) #cria uma repeti��o de 10 valores de 1 em 1
b

PRINCIPAIS OBJETOS = MATRIZ
      O R tamb�m � capaz de de operar matrizes. O comando matrix()
      recebe um vetor como argumento e o transforma em uma matriz de acordo
      com as dimens�es especificadas.
      Exemplo
x<-1:12  
x #cria uma sequencia de 1 a 12 
matriz1<-matrix(x,ncol = 3) #matriz de 3 colunas com os dados x
matriz1
matriz2<-matrix(x,nrow=3)
matriz2

#Para mais informa��es, consultar o livro refer�ncia.

PRINCIPAIS OBJETOS = FATOR
      Os fatores s�o vetores em que os elementos pertencem a uma ou mais 
      categorias tem�ticas. Por exemplo, se numa amostra h� homens e mulheres
      um vetor contendo as categorias masculino(M) e feminino(F) � representado
      no r como um Fator.
      
      Pode ser criar um fator usando o comando factor() ou gl()
      Exemplo
x<-factor(c("M","M","M","F","F","F","F"))
x

      Como se nota, os fatores apresentam diferentes niveis que funcionam
      como categorias nas quais os dados est�o organizados.

PRINCIPAIS OBJETOS = Data frame
      Os data frames s�o muito semelhates as matrizes, pois tem linhas e colunas
      Entretanto, poddem armazenar elementos de tipos diferentes (Numeros e carac)
      Melhor forma de se armazenar dados, entretanto o numero de linhas e colunas
      precisam ser iguais
      Exemplo
      
Nome <-c("Jos� santos", "Angela Dias", "Aline Souza", "Mayara Costa", "Lara Lins", "N�colas Barros")  
Nome #Criando o elemento Nome
Idade <-c(17,17,16,15,15,13)#Criando o elemento Idade
Idade
Sexo<-factor(c("M","F","F","F","F","M")) #criando o fator sexo
Sexo
NotaFinal<-c(92,75,81,87,90,88) #criando o vetor nota
Escola<-data.frame(Nome,Idade,Sexo,NOtaFinal) #Criando Data frame
Escola


CRIA��O DE TABELA DE FREQU�NCIA PARA VARI�VEIS QUALITATIVAS E QUANT. DISCRETAS
      A tabela de frequencia normal, para as variaveis qual. e quant. disc. 
      segue o mesmo raciocinio geral. Contamos os dados e achamos a frequ�ncia
      Exemplo
      
#Vamos utilizar o data frame anterior
names(Escola)
str(Escola)
summary(Escola)
      
      Para o calculo da frequencia absoluta, usar a comando table, seguido 
      do argumento (Nome do objeto que voce vai utilizar como dado $ nome da
                    coluna que voce vai frequenciar)
      Exemplo
freq<-table(Escola$Nome)
freq
freq<-table(Escola$Sexo)
freq
      Para o calculo da Frequencia relativa, o mesmo raciocinio, usando 
      a fun��o prop.table(). O comando prop.table n�o utiliza argumentos.
      Deve-se usar um objeto criado.
      Exemplo
freq.rel<-prop.table(freq)
freq.rel
por_fre.rel<-100*prop.table(freq) #tranformando o valor para porcentagem
por_fre.rel
      Por ultimo, vamos juntar as frequencia em uma tabela final usando
      o comando cbind, que utiliza como argumentos apenas os objetos que
      ser�o colocados na tabela.
      Exemplo
tabelafinal<-cbind(freq,freq.rel,por_fre.rel)
tabelafinal
      
      #Para a distribui��o de frequencia para dados continuos
      #consultar o livro refer�ncia.

ENTRANDO COM DADOS
      Entrar de maneira correta com o conjunto de dados � etapa fundamental para qualquer an�lise. 
      No R, os dados podem ser digitados ou colado diretamente no console do R ou lido de arquivos externos.
      Na pr�tica, existem outros comandos como o read.table e o read.xlsx do pacote xlsx, 
      mas por conta da quantidade de informa��o, � mais "facil" digitar os valores um a um.
      Tomar cuidado com o sepador de decimais, caso usar planilhas do excel.

      
ESTATISTICA DESCRITIVA
      SOMATORIO
      Calculo da soma de todos os elementos. � dado pelo comando
      sum()
      Exemplo
x<-c(1,2,3,4,5,6) #adicionando o objeto vetor x
x
sum(x) #somando todos os elementos de x
   
      
      M�DIA
      Soma de todos os elementos dividido pela quantidade. � dado pelo comando
      mean()
      Exemplo
x
mean(x)

      MEDIANA
      Valor central dos conjunto de dados cujo n � disposto ordenadamente. 
      Encontrado pelo comando median()
      Exemplo
x
median(x)

      MODA
      Valor que tem a maior frequ�ncia nos dados. Encontrado pelo
      comando table()
x
table(x) #a moda aparece em forma de frequencia absoluta.
      #para a obten��o do valor da moda exato, usar o comando mfv()
      #do pacote modeest

      VARI�NCIA
      Medida de dispers�o que � soma dos quadrados dos desvios de X.
      � dado pelo comando var().
      Exemplo
x
var(x)

      DESVIO PADR�O
      � a raiz quadrada da vari�ncia. Dado pelo comando sd()
      Exemplo
x
sd(x)

      AMPLITUDE TOTAL
      Diferen�a do maior valor pelo menor valor dos dados. Comando
      utilizado � range()
      Exemplo
      x
range(x) 
#observar que ele d� apenas o maior valor e o menor valor dos dados

      CRIA��O DE GR�FICOS - PACOTE B�SICO
      O R � uma excelente ferramenta para criar gr�ficos. O pacote b�sico
      permite a cria��o de diversos tipos de graficos que podem ser
      facilmente publicados. Para poder verificar alguns tipos de gr�ficos
      observe o comando demo(graphics).
      Aqui, nesse topico, vamos trabalhar apenas com a fun��o b�sica.
      Para cria��o de gr�ficos no pacote padr�o do R, utilizaremos o comando
      plot(). A maneira que o comando interage depende da classe do Objeto.
      Exemplo
x<-1:20 #criando objeto sequencia do tipo vetor
y<-x*2  #criando y sendo igual ao valor de x vezes 2
plot (x,y)  #plotando os pare x e y. observar que o primeiro 
            #dado � a vari�vel do eixo x, e o segundo a vari�vel do
            #eixo y
      O comando plot() tem diversos argumentos que permitem personalisar
      o gr�fico de acordo com a sua necessidade.
      Exemplos
plot(x,y,pch=8) #o numero pode variar bastante
plot(x,y,xlab="Eixo x",ylab="Eixo y") #mudar o nome dos eixos
plot(x,y,col=3) #cor dos pontos
plot(x,y,pch=22,bg="green") #cor do preenchimento. Observar que so funciona com
                          # o pch= mudado
plot(x,y,bty="l") #retira as bordas dos eixos
plot(x,y, main="Titulo do gr�fico") #adiciona o titulo ao grafico
plot(x,y,pch=22,bg="green",xlab="Eixo x",ylab="Eixo y",main="Titulo do gr�fico",bty="l")
text(5,250,"Texto aqui")
                    #o comando text(), adiciona um texto ao seu grafico
                    # seus argumentos s�o nessa ordem, a posi��o no ponto x
                    #a posi��o no ponto y, o texto entre parenteses

                    #Para outros argumentos e outros tipos de gr�ficos 
                    #procurar a bibliografia recomendada.



TESTES ESTAT�STICOS
      O R � uma otima ferramenta para an�lise estatistica. Aqui, podemos
      aplicar diversos procedimentos. Dentre eles, � possivel fazer testes
      estatisticos que corroboram ou n�o com a sua hipotese.
      Falando sobre eles aqui, esses testes estatiticos que aqui
      citamos,tamb�m s�o conhecidos como teste de hipoteses. A ideia basica
      aqui � o uso de algumas regras para decidir se aceita-se uma determinada
      hipotese, ou n�o.
      #Para maiores informa��es sobre os testes de hipotese e como � a sua metodologia
      #estudar a biliografia recomendada.
      
      Para o R, ao invez de fixar o valor do erro tipo I, e analisar se
      a hipotese nula foi ou n�o rejeitada, baseia-se pelo o valor p.
      Basicamente, rejeita-se h0 quando o valor de p for menor ou igual ao 
      erro alfa estabelecido do teste.Ou seja, em termos pr�ticos, se o valor
      de p for menor ou igual ao erro estabelecido pelo teste
      quer dizer que devemos rejeitas a hipotese nula e assim sendo, h� diferen�as
      entre significativas entre as amostras.
      
TESTE T PARA DUAS M�DIAS AMOSTRAIS INDEPENDENTES 
      Para a realiza��o desse teste, � necess�rio que haja homogeneidade das
      vari�ncias e normalidade dos dados. O comando para o teste � o t.test(),
      onde apresenta como argumento obrigatorio ao objetos criados com os dados
      e argumento acess�rio o nivel de confian�a do teste, e a dire��o
      que o teste ser� feito.
      Exemplo
x<-c(30,35,33,40,42,41,36,43,34,38)
y<-c(28,35,33,35,40,37,34,42,30,38)
t.test(x,y,conf.level = 0.99,alternative = "greater") 
#observar que o valor de p � 0,31. Ou seja, �
#maior que o erro de 1% previsto.

TESTE F PARA VARI�NCIAS
      Teste para analisar se h� diferen�as entre as vari�ncia dos dados.
      O comando para o teste � o var.test(), igual ao teste t, ele 
      feito com a utiliza��o do argumento obrigatorio, os objetos criados 
      com os dados e argumento acess�rio o nivel de confian�a do teste, 
      e a dire��o que o teste ser� feito.
      Exemplo
var.test(x,y,conf.level = 0.95,alternative = "less")
var.test(x,y,conf.level = 0.95,alternative = "two.sided")
var.test(x,y,conf.level = 0.95,alternative = "greater")
 #observar o valor de p e comparar com o erro alfa      
      
OUTROS TESTES ESTATISTICOS 
TESTE DE KSHAPIRO-WILK
      Esse teste � bastante utilizado por estudiosos que desejam saber
      em qual distribui��o os dados se enquandram. Como uma das pressuposi��es
      do teste de t e do teste f � que as amostras apresentem distribui��o
      normal, o teste Komorov-sminorv � bem mais utilizado para essa condi��o.
      O teste Shapiro-wilk tem como comando a fun��o shapiro.test().
      Exemplo
shapiro.test(x) 
                #observe o valor de p � maior do que 0,05 que � o nivel
                # de signific�ncia de 5% estabelecido no teste naturalmente.
                #Na pr�tica, deve-se observar se esse valor � maior ou menor
                #do que 0,05. Caso for maior, determina-se que os dados tem
                #distribui��o normal.
      Essa fun��o abaixo permite uma visualiza��o melhor. O comando qqnorm()
      e qqline() plotam um gr�fico onde � possivel observar a distribui��o
      das porcentagem acumuladas e uma reta. Caso os pontos desse gr�fico
      sigam um padr�o proximos a reta, � evidenciado que os dados est�o 
      inseridos dentro da ditribui��o normal
      Exemplo
qqnorm(x)
qqline(x)

TESTE DO CHI-QUADRADO
      O teste do chi-quadrado serve para a avalia��o de duas vari�veis categ�ricas (qualitativas). 
      Com ele � poss�vel saber se h� diferen�a significativa entre as frequ�ncias das duas. 
      � dado pelo comando chisq.test(). Para a sua aplica��o � necess�rio utilizar a fun��o table()
      para que os dados fiquem em forma de frequ�ncia.
      Exemplo
tabulados<-table(Sexo,Nome)
chisq.test(tabulados)  #observar valor de p > 0.05

CORRELA��O DE PEARSON
      O indice de correla��o de pearson � uma medida utilizada para estudar 
      o comportamento de uma variav�l em rela��o a outra. 
      Ela basicamente informa o grau de associa��o das variaveis. 
      O comando utilizado � o cor()
      Exemplo
cor(y,x) 
#colocar apenas os objetos que ser�o utilizados. 

REGRESS�O
MODELO LINEAR
      A ideia geral da regress�o � criar uma equa��o que explique o comportamento
      da variavel dependente em raz�o da variavel independente.
      As vezes essa equa��o � derivada da fun��o linear de primeirog grau, o que facilita 
      muito mais o entendimento. Mas tamb�m acontece determinadas situa��es onde
      a fun��o linear n�o consegue explicar muito bem essa intera��o entre as variaveis. 
      Nesse caso, utiliza-se outros modelos de equa��es.
      Acompanhado da equa��o � possivel fazer o gr�fico de dispers�o das variaveis.
      L� vizualiza-se melhor a dispers�o dos dados e assim se tem uma ideia de qual fun��o
      consegue se enquadrar melhor. 
      Exemplo
x<-c(11,15,20,25,27,25,28,33,35)
y<-c(3,4,6,7,9,7,10,12,8)
plot(x,y)
                                #adicionando os objetos que v�o ser utilizados.
                                #x � a variavel independente e y a dependente
plot(x,y)                       #observar no diagrama que h� um tendencia linear dos dados.
                                #basicamente, enquanto a a variavel x cresce a y tamb�m cresce.

      Assim sendo, vamos usar o modelo da equa��o linear. f(x) = a + bx.
      Tem-se que encontrar os valores dos coeficientes para a montagem da equa��o.
      Para a cria��o do modelo, usaremos o comando lm(). Observe abaixo no exemplo, que 
      diferente da hora de plotar o gr�fico, a variavel dependente vem na frente, e ao inves
      da virgula(,) usaremos o sinal de tio (~)
      Exemplo
model1<-lm(y~x)
model1
      Temos agora dois valores obtidos. O valor do intercepto, que nada mais � do que o valor de a
      e o valor que representa o coeficiente de inclina��o da reta, que representa o valor de b.
      Assim, podemos concluir que a equa��o encontra �:
        y=-1,3696+0,3158x
    
      Para que possamos visualizar os valores de y para todos os valores observador em x, usamos predict()
      Exemplo
predict(model1)

      Vamos agora plotar novamente o gr�fico e adicionar as informa��es necessarias ap�s a cria��o do modelo
      Exemplo
plot(x,y)   
abline(model1) 
      #esse comando adiciona a reta ajustada de acordo com o modelo criado ao gr�fico.
      Podemos usar os demais argumentos utilizados anteriormente na cria��o de graficos.
      Exemplo
plot(x,y,pch=22,bg="blue",xlab="variavel dependente",ylab="variavel independente",main="Diagrama de dispers�o",bty="l")
abline(model1, col=2) #podemos mudar a cor da reta com o argumento col=
text(15,8,"y=-1,3696+0,3158x") #adicionamos o valor da equa��o no gr�fico

MODELO POLINOMIAL 
      Em determidas situa��es uma equa��o linear n�o consegue explicar muito bem o comportamento dos
      dados. Nesse caso, h� a necessidade de adaptar o modelo a um polinomio de grau x
      Exemplo
x<-c(1,2,3,4,5,6,7,8,9,10)
y<-c(3,5,8,9,11,10,7,6,4,2)
plot(x,y) #observe como a o grafico demonstra  claramento um comportamento n�o-linear
      QUando tempos essa situa��o, ha a necessidade de adaptar o modelo. O comando � o mesmo lm()
      mas os argumentos s�o diferentes. colocaresmos a variavel dependente em fun��o do polinomio
      de grau x. A variavel dependente vem na frente, seguida do sinal de  ~ 
      Logo ap�s vem x+I(x^2), onde deve se especificar a variavel independente e o 
      grau do polinomio.
      Exemplo

model1<-lm(y~x+I(x^2)) #a variavel dependente y est� em fun��o do x 
model1
curve(model1$coef[1] + model1$coef[2]*x + model1$coef[3]*x^2, add = TRUE)      
Como estamos determinando que a equa��o � de segundo grau, a formula segue a equa��o basica
      de uma fun��o de 2� grau f(x) = ax^2+bx+c
      Assim temos a equa��o formada y = -0,5667+3,8833x-0,3712x^2
      O grau do modelo varia de acordo com a dispers�o dos dados. As vezes um modelo de grau 3 
      consegue explicar melhor o comportamento dos seus dados do que um modelo de grau 2 ou um 
      modelo linear. Pra isso h� a nacessidade de testar o modelo que se adapte melhor aos seus dados
      
      Para mais informa��es sobre diferentes tipos de modelos e a forma de ajusta-los
      procurar a bibliografia recomendada.
      
COEFICIENTE DE REGRESS�O
      A melhor forma de se conseguir achar o modelo que mais adapte ao comportamento dos seus dados
      � atrav�s do coeficiente de regress�o. Ele representa o quanto da vari�vel dependente � explicada
      pela variavel independete. Quanto mais alto for esse coeficiente, melhor e mais ajustado est� o seu
      modelo. � poss�vel encontra-lo com o comando summary()
Exemplo
summary(model1)
      #Obeserve que esse comando n�o d� apenas o valor do coeficiente de regress�o (R2), ele consegue
      #mostrar uma grande quantidade de informa��o. O valor do R2 � dado por *Multiple R-square*. 
      #observe tamb�m que ele mostra os coeficientes ajustados e se s�o ou n�o significativos, seguidos
      #de uma simbologia com astericos. Esses asteriscos v�o mostrar o nivel de signic�ncia dos coeficientes
      #Quanto mais astericos os coeficientes tiverem mais significativos a um menor erro eles ser�o.

AN�LISE DE VARI�NCIA
      � o procedimento estat�stico utilizado para testar a hip�tese nula para 
      mais de duas m�dias, baseado nas vari�ncias.
      Variam de acordo com os diferentes tipos de delineamentos experimentais
      sendo os mais utilizados o DIC, DBC e DQL. � utilizado um teste F para isso. A hip�tese nula
      � que todas as m�dias s�o iguais entre si, e a alternativa � que ao menos uma m�dia diferente das
      demais. Para obter a analise de vari�ncia dos dados � necess�rio usar o comando aov(). 
      Em seguida, pode-se usar a fun��o anova() ou a fun��o summary() para obter o quadro 
      de an�lise de vari�ncia convencional.
      Exemplo
      #teste para saber h� diferen�a entre valores de crescimento em altura 
      #de uma esp�cie sob diferentes condi��es de sombreamento.
TRATAMENTOS<-factor(c("T1","T1","T1","T1","T1","T2","T2","T2","T2","T2","T3","T3","T3","T3",
                      "T3","T4","T4","T4","T4","T4"))
TRATAMENTOS      
ALTURAS<-c(20,22.5,25,23.5,17.5,23.5,27.5,25,26,23.5,17.5,19,19.5,20,21.5,30,33.5,27.5,26,26.5)
ALTURAS
parica<-data.frame(TRATAMENTOS,ALTURAS) #criei um data frame pra melhor visualiza��o
parica
summary(parica) 
                                #observe o sumario do data frame que foi criado
anova1<-aov(ALTURAS~TRATAMENTOS) 
                                #observar que a fun��o aov tem como argumento obrigatorio
                                #a vari�vel quantitativa seguida da vari�vel qualitativa
anova1
summary(anova1)           #mostra a analise de vari�ncia no quadro convencional

      Observe que o valor de F value � maior do que o valor de Pr(>F).
      Isso significa que o valor de f calculado � maior do que o F tabelado. 
      Ent�o assim reijta-se h0 a 99% de probabilidade. Na pr�tica, h� diferen�a
      significativa de pelo menos 1 tratamento em rela��o a outro.

TESTE DE M�DIA
TESTE Tukey
      os testes de m�dias servem para a verficia��o de diferen�as entre as m�dias obtidas.
      Eles s�o um teste que devem ser aplicador ap�s a verifica��o da analise de vari�ncia.
      Basicamente, se houve diferen�as significaticas encontradas na anova, deve-se proceder 
      utilizando um teste de m�dia para saber qual a m�dia � maior significativamente.
      O teste tukey � um desses testes de m�dias. Ele � o teste mais utilizado e por isso trabalharemos
      com ele aqui. Para a utiliza��o do teste, usa-se o comando TukeyHSD().
      Exemplo
tukey<-TukeyHSD(anova1)
tukey   
        #Na tabela abaixo, observa-se que a compara��o entre os tratamentos T4-T1, T4-T3 e T3-T2
        #foram os �nicos com p-valor (coluna "p adj") menores que 0,05. 
        #Ou seja, foram os tratamentos que diferiram estatisticamente. 
       
      O resultado da tabela tamb�m pode ser observado graficamente:
      Exemplo
plot(tukey)    
          #observar as linhas que n�o tocam a linha vertical
