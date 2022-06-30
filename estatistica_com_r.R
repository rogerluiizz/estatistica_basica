#ROTEIRO DAS AULAS PRÁTICAS

Como o R funciona?
      Ele recebe comandos digitados pelo usuario no prompt e os processa usando 
      pacotes carregados na memoria. 
      O resultado desse processamento pode ser exibido na tela ou armazenado em um
      objeto na memoria do R.

BUSCANDO O DIRETORIO DE TRABALHO
Para saber qual diretório de trabalho é usado pelo R para gravar, ler, importar e exportar arquivos 
usa-se o comando getwd(). Caso haja necessidade de mudar o seu diretório usa-se o comando setwd()
e dentro dos parênteses colocar o caminho da pasta que será utilizada como diretório 
principal entre aspas. 
getwd()
setwd("C:/Users/roger/Documents")

CACULADORA
      O R pode ser usado como calculadora na realização dos mais diversos calculos
      e operações matematica
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
      O R é feito de inumeros comendos agrupados em pacotes. Estes comandos
      são executados pelos seus respectivos nomes, seguidos de parêntese ().
      Os comandos possuem argumentos que definem como o comando será executado.
      Exemplo
seq()   
        #sequencia numerica
        #ele tem como argumentos: from, to e by. Quer dizer que o comando seq
        #tem como complemento a ele esses argumentos. Esses argumentos são
        #separados por virgula e devem vir na ordem e são definidos pelo 
        # sinal de igualdade = Exemplo

seq(from=1,to=10, by=3)
      
      Outros exemplos de comandos:
citation()
#
q()
rm(x)
c()
    
  
MANIPULANDO OBJETOS
      Um objeto pode ser criado com a aperação de atribuição, à qual se denota
      como uma flecha, com o sinal de menos e o simbolo de > ou <, dependendo
      da direção em que se atribui o objeto.
    
      O nome do objeto deve começar com uma letra qualquer, maiuscula ou minuscula
      que pode ser seguida de outra letra ou numero ou ponto
      Exemplo
x<-10  
x # o objeto x receberá o valor de 10
15->y.A 
y.A # o objeto y.A receberá o valor de 15
X<-8
X #observar diferença entre maiusculo e minusculo
x<-sqrt(5)
x#observar que o valor de x agora é o valor da raiz quadrada de 5
rm(x) #remove o objeto x
rm(list = ls())  #remove todos os objetos do R. CUIDADO!

PRINCIPAIS OBJETOS = VETOR
      Uma das principais estruturas do R é o vetor(vector). Eles armazenam um
      ou mais elementos do tipo numerico e do tipo caractere. Mas cada um deles
      suporta apena um dos tipos mencionados.
      A maneira mais simples de criar um vetor é usando o comando c()
      Exemplo
x<-c(2,3,5,7,11)
x
y<-c(x,13,17,19)
y
z<-seq(1,10,1)    
z
a<-1:10 #outra forma de criar uma sequencia de inteiros de 1 até 10
a
b<-rep(3,10) #cria uma repetição de 10 valores de 1 em 1
b

PRINCIPAIS OBJETOS = MATRIZ
      O R também é capaz de de operar matrizes. O comando matrix()
      recebe um vetor como argumento e o transforma em uma matriz de acordo
      com as dimensões especificadas.
      Exemplo
x<-1:12  
x #cria uma sequencia de 1 a 12 
matriz1<-matrix(x,ncol = 3) #matriz de 3 colunas com os dados x
matriz1
matriz2<-matrix(x,nrow=3)
matriz2

#Para mais informações, consultar o livro referência.

PRINCIPAIS OBJETOS = FATOR
      Os fatores são vetores em que os elementos pertencem a uma ou mais 
      categorias temáticas. Por exemplo, se numa amostra há homens e mulheres
      um vetor contendo as categorias masculino(M) e feminino(F) é representado
      no r como um Fator.
      
      Pode ser criar um fator usando o comando factor() ou gl()
      Exemplo
x<-factor(c("M","M","M","F","F","F","F"))
x

      Como se nota, os fatores apresentam diferentes niveis que funcionam
      como categorias nas quais os dados estão organizados.

PRINCIPAIS OBJETOS = Data frame
      Os data frames são muito semelhates as matrizes, pois tem linhas e colunas
      Entretanto, poddem armazenar elementos de tipos diferentes (Numeros e carac)
      Melhor forma de se armazenar dados, entretanto o numero de linhas e colunas
      precisam ser iguais
      Exemplo
      
Nome <-c("José santos", "Angela Dias", "Aline Souza", "Mayara Costa", "Lara Lins", "Nícolas Barros")  
Nome #Criando o elemento Nome
Idade <-c(17,17,16,15,15,13)#Criando o elemento Idade
Idade
Sexo<-factor(c("M","F","F","F","F","M")) #criando o fator sexo
Sexo
NotaFinal<-c(92,75,81,87,90,88) #criando o vetor nota
Escola<-data.frame(Nome,Idade,Sexo,NOtaFinal) #Criando Data frame
Escola


CRIAÇÃO DE TABELA DE FREQUÊNCIA PARA VARIÁVEIS QUALITATIVAS E QUANT. DISCRETAS
      A tabela de frequencia normal, para as variaveis qual. e quant. disc. 
      segue o mesmo raciocinio geral. Contamos os dados e achamos a frequência
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
      a função prop.table(). O comando prop.table não utiliza argumentos.
      Deve-se usar um objeto criado.
      Exemplo
freq.rel<-prop.table(freq)
freq.rel
por_fre.rel<-100*prop.table(freq) #tranformando o valor para porcentagem
por_fre.rel
      Por ultimo, vamos juntar as frequencia em uma tabela final usando
      o comando cbind, que utiliza como argumentos apenas os objetos que
      serão colocados na tabela.
      Exemplo
tabelafinal<-cbind(freq,freq.rel,por_fre.rel)
tabelafinal
      
      #Para a distribuição de frequencia para dados continuos
      #consultar o livro referência.

ENTRANDO COM DADOS
      Entrar de maneira correta com o conjunto de dados é etapa fundamental para qualquer análise. 
      No R, os dados podem ser digitados ou colado diretamente no console do R ou lido de arquivos externos.
      Na prática, existem outros comandos como o read.table e o read.xlsx do pacote xlsx, 
      mas por conta da quantidade de informação, é mais "facil" digitar os valores um a um.
      Tomar cuidado com o sepador de decimais, caso usar planilhas do excel.

      
ESTATISTICA DESCRITIVA
      SOMATORIO
      Calculo da soma de todos os elementos. É dado pelo comando
      sum()
      Exemplo
x<-c(1,2,3,4,5,6) #adicionando o objeto vetor x
x
sum(x) #somando todos os elementos de x
   
      
      MÉDIA
      Soma de todos os elementos dividido pela quantidade. É dado pelo comando
      mean()
      Exemplo
x
mean(x)

      MEDIANA
      Valor central dos conjunto de dados cujo n é disposto ordenadamente. 
      Encontrado pelo comando median()
      Exemplo
x
median(x)

      MODA
      Valor que tem a maior frequência nos dados. Encontrado pelo
      comando table()
x
table(x) #a moda aparece em forma de frequencia absoluta.
      #para a obtenção do valor da moda exato, usar o comando mfv()
      #do pacote modeest

      VARIÂNCIA
      Medida de dispersão que é soma dos quadrados dos desvios de X.
      É dado pelo comando var().
      Exemplo
x
var(x)

      DESVIO PADRÃO
      É a raiz quadrada da variância. Dado pelo comando sd()
      Exemplo
x
sd(x)

      AMPLITUDE TOTAL
      Diferença do maior valor pelo menor valor dos dados. Comando
      utilizado é range()
      Exemplo
      x
range(x) 
#observar que ele dá apenas o maior valor e o menor valor dos dados

      CRIAÇÃO DE GRÁFICOS - PACOTE BÁSICO
      O R é uma excelente ferramenta para criar gráficos. O pacote básico
      permite a criação de diversos tipos de graficos que podem ser
      facilmente publicados. Para poder verificar alguns tipos de gráficos
      observe o comando demo(graphics).
      Aqui, nesse topico, vamos trabalhar apenas com a função básica.
      Para criação de gráficos no pacote padrão do R, utilizaremos o comando
      plot(). A maneira que o comando interage depende da classe do Objeto.
      Exemplo
x<-1:20 #criando objeto sequencia do tipo vetor
y<-x*2  #criando y sendo igual ao valor de x vezes 2
plot (x,y)  #plotando os pare x e y. observar que o primeiro 
            #dado é a variável do eixo x, e o segundo a variável do
            #eixo y
      O comando plot() tem diversos argumentos que permitem personalisar
      o gráfico de acordo com a sua necessidade.
      Exemplos
plot(x,y,pch=8) #o numero pode variar bastante
plot(x,y,xlab="Eixo x",ylab="Eixo y") #mudar o nome dos eixos
plot(x,y,col=3) #cor dos pontos
plot(x,y,pch=22,bg="green") #cor do preenchimento. Observar que so funciona com
                          # o pch= mudado
plot(x,y,bty="l") #retira as bordas dos eixos
plot(x,y, main="Titulo do gráfico") #adiciona o titulo ao grafico
plot(x,y,pch=22,bg="green",xlab="Eixo x",ylab="Eixo y",main="Titulo do gráfico",bty="l")
text(5,250,"Texto aqui")
                    #o comando text(), adiciona um texto ao seu grafico
                    # seus argumentos são nessa ordem, a posição no ponto x
                    #a posição no ponto y, o texto entre parenteses

                    #Para outros argumentos e outros tipos de gráficos 
                    #procurar a bibliografia recomendada.



TESTES ESTATÍSTICOS
      O R é uma otima ferramenta para análise estatistica. Aqui, podemos
      aplicar diversos procedimentos. Dentre eles, é possivel fazer testes
      estatisticos que corroboram ou não com a sua hipotese.
      Falando sobre eles aqui, esses testes estatiticos que aqui
      citamos,também são conhecidos como teste de hipoteses. A ideia basica
      aqui é o uso de algumas regras para decidir se aceita-se uma determinada
      hipotese, ou não.
      #Para maiores informações sobre os testes de hipotese e como é a sua metodologia
      #estudar a biliografia recomendada.
      
      Para o R, ao invez de fixar o valor do erro tipo I, e analisar se
      a hipotese nula foi ou não rejeitada, baseia-se pelo o valor p.
      Basicamente, rejeita-se h0 quando o valor de p for menor ou igual ao 
      erro alfa estabelecido do teste.Ou seja, em termos práticos, se o valor
      de p for menor ou igual ao erro estabelecido pelo teste
      quer dizer que devemos rejeitas a hipotese nula e assim sendo, há diferenças
      entre significativas entre as amostras.
      
TESTE T PARA DUAS MÉDIAS AMOSTRAIS INDEPENDENTES 
      Para a realização desse teste, é necessário que haja homogeneidade das
      variâncias e normalidade dos dados. O comando para o teste é o t.test(),
      onde apresenta como argumento obrigatorio ao objetos criados com os dados
      e argumento acessório o nivel de confiança do teste, e a direção
      que o teste será feito.
      Exemplo
x<-c(30,35,33,40,42,41,36,43,34,38)
y<-c(28,35,33,35,40,37,34,42,30,38)
t.test(x,y,conf.level = 0.99,alternative = "greater") 
#observar que o valor de p é 0,31. Ou seja, é
#maior que o erro de 1% previsto.

TESTE F PARA VARIÂNCIAS
      Teste para analisar se há diferenças entre as variância dos dados.
      O comando para o teste é o var.test(), igual ao teste t, ele 
      feito com a utilização do argumento obrigatorio, os objetos criados 
      com os dados e argumento acessório o nivel de confiança do teste, 
      e a direção que o teste será feito.
      Exemplo
var.test(x,y,conf.level = 0.95,alternative = "less")
var.test(x,y,conf.level = 0.95,alternative = "two.sided")
var.test(x,y,conf.level = 0.95,alternative = "greater")
 #observar o valor de p e comparar com o erro alfa      
      
OUTROS TESTES ESTATISTICOS 
TESTE DE KSHAPIRO-WILK
      Esse teste é bastante utilizado por estudiosos que desejam saber
      em qual distribuição os dados se enquandram. Como uma das pressuposições
      do teste de t e do teste f é que as amostras apresentem distribuição
      normal, o teste Komorov-sminorv é bem mais utilizado para essa condição.
      O teste Shapiro-wilk tem como comando a função shapiro.test().
      Exemplo
shapiro.test(x) 
                #observe o valor de p é maior do que 0,05 que é o nivel
                # de significância de 5% estabelecido no teste naturalmente.
                #Na prática, deve-se observar se esse valor é maior ou menor
                #do que 0,05. Caso for maior, determina-se que os dados tem
                #distribuição normal.
      Essa função abaixo permite uma visualização melhor. O comando qqnorm()
      e qqline() plotam um gráfico onde é possivel observar a distribuição
      das porcentagem acumuladas e uma reta. Caso os pontos desse gráfico
      sigam um padrão proximos a reta, é evidenciado que os dados estão 
      inseridos dentro da ditribuição normal
      Exemplo
qqnorm(x)
qqline(x)

TESTE DO CHI-QUADRADO
      O teste do chi-quadrado serve para a avaliação de duas variáveis categóricas (qualitativas). 
      Com ele é possível saber se há diferença significativa entre as frequências das duas. 
      É dado pelo comando chisq.test(). Para a sua aplicação é necessário utilizar a função table()
      para que os dados fiquem em forma de frequência.
      Exemplo
tabulados<-table(Sexo,Nome)
chisq.test(tabulados)  #observar valor de p > 0.05

CORRELAÇÃO DE PEARSON
      O indice de correlação de pearson é uma medida utilizada para estudar 
      o comportamento de uma variavél em relação a outra. 
      Ela basicamente informa o grau de associação das variaveis. 
      O comando utilizado é o cor()
      Exemplo
cor(y,x) 
#colocar apenas os objetos que serão utilizados. 

REGRESSÃO
MODELO LINEAR
      A ideia geral da regressão é criar uma equação que explique o comportamento
      da variavel dependente em razão da variavel independente.
      As vezes essa equação é derivada da função linear de primeirog grau, o que facilita 
      muito mais o entendimento. Mas também acontece determinadas situações onde
      a função linear não consegue explicar muito bem essa interação entre as variaveis. 
      Nesse caso, utiliza-se outros modelos de equações.
      Acompanhado da equação é possivel fazer o gráfico de dispersão das variaveis.
      Lá vizualiza-se melhor a dispersão dos dados e assim se tem uma ideia de qual função
      consegue se enquadrar melhor. 
      Exemplo
x<-c(11,15,20,25,27,25,28,33,35)
y<-c(3,4,6,7,9,7,10,12,8)
plot(x,y)
                                #adicionando os objetos que vão ser utilizados.
                                #x é a variavel independente e y a dependente
plot(x,y)                       #observar no diagrama que há um tendencia linear dos dados.
                                #basicamente, enquanto a a variavel x cresce a y também cresce.

      Assim sendo, vamos usar o modelo da equação linear. f(x) = a + bx.
      Tem-se que encontrar os valores dos coeficientes para a montagem da equação.
      Para a criação do modelo, usaremos o comando lm(). Observe abaixo no exemplo, que 
      diferente da hora de plotar o gráfico, a variavel dependente vem na frente, e ao inves
      da virgula(,) usaremos o sinal de tio (~)
      Exemplo
model1<-lm(y~x)
model1
      Temos agora dois valores obtidos. O valor do intercepto, que nada mais é do que o valor de a
      e o valor que representa o coeficiente de inclinação da reta, que representa o valor de b.
      Assim, podemos concluir que a equação encontra é:
        y=-1,3696+0,3158x
    
      Para que possamos visualizar os valores de y para todos os valores observador em x, usamos predict()
      Exemplo
predict(model1)

      Vamos agora plotar novamente o gráfico e adicionar as informações necessarias após a criação do modelo
      Exemplo
plot(x,y)   
abline(model1) 
      #esse comando adiciona a reta ajustada de acordo com o modelo criado ao gráfico.
      Podemos usar os demais argumentos utilizados anteriormente na criação de graficos.
      Exemplo
plot(x,y,pch=22,bg="blue",xlab="variavel dependente",ylab="variavel independente",main="Diagrama de dispersão",bty="l")
abline(model1, col=2) #podemos mudar a cor da reta com o argumento col=
text(15,8,"y=-1,3696+0,3158x") #adicionamos o valor da equação no gráfico

MODELO POLINOMIAL 
      Em determidas situações uma equação linear não consegue explicar muito bem o comportamento dos
      dados. Nesse caso, há a necessidade de adaptar o modelo a um polinomio de grau x
      Exemplo
x<-c(1,2,3,4,5,6,7,8,9,10)
y<-c(3,5,8,9,11,10,7,6,4,2)
plot(x,y) #observe como a o grafico demonstra  claramento um comportamento não-linear
      QUando tempos essa situação, ha a necessidade de adaptar o modelo. O comando é o mesmo lm()
      mas os argumentos são diferentes. colocaresmos a variavel dependente em função do polinomio
      de grau x. A variavel dependente vem na frente, seguida do sinal de  ~ 
      Logo após vem x+I(x^2), onde deve se especificar a variavel independente e o 
      grau do polinomio.
      Exemplo

model1<-lm(y~x+I(x^2)) #a variavel dependente y está em função do x 
model1
curve(model1$coef[1] + model1$coef[2]*x + model1$coef[3]*x^2, add = TRUE)      
Como estamos determinando que a equação é de segundo grau, a formula segue a equação basica
      de uma função de 2º grau f(x) = ax^2+bx+c
      Assim temos a equação formada y = -0,5667+3,8833x-0,3712x^2
      O grau do modelo varia de acordo com a dispersão dos dados. As vezes um modelo de grau 3 
      consegue explicar melhor o comportamento dos seus dados do que um modelo de grau 2 ou um 
      modelo linear. Pra isso há a nacessidade de testar o modelo que se adapte melhor aos seus dados
      
      Para mais informações sobre diferentes tipos de modelos e a forma de ajusta-los
      procurar a bibliografia recomendada.
      
COEFICIENTE DE REGRESSÃO
      A melhor forma de se conseguir achar o modelo que mais adapte ao comportamento dos seus dados
      é através do coeficiente de regressão. Ele representa o quanto da variável dependente é explicada
      pela variavel independete. Quanto mais alto for esse coeficiente, melhor e mais ajustado está o seu
      modelo. É possível encontra-lo com o comando summary()
Exemplo
summary(model1)
      #Obeserve que esse comando não dá apenas o valor do coeficiente de regressão (R2), ele consegue
      #mostrar uma grande quantidade de informação. O valor do R2 é dado por *Multiple R-square*. 
      #observe também que ele mostra os coeficientes ajustados e se são ou não significativos, seguidos
      #de uma simbologia com astericos. Esses asteriscos vão mostrar o nivel de signicância dos coeficientes
      #Quanto mais astericos os coeficientes tiverem mais significativos a um menor erro eles serão.

ANÁLISE DE VARIÂNCIA
      É o procedimento estatístico utilizado para testar a hipótese nula para 
      mais de duas médias, baseado nas variâncias.
      Variam de acordo com os diferentes tipos de delineamentos experimentais
      sendo os mais utilizados o DIC, DBC e DQL. É utilizado um teste F para isso. A hipótese nula
      é que todas as médias são iguais entre si, e a alternativa é que ao menos uma média diferente das
      demais. Para obter a analise de variância dos dados é necessário usar o comando aov(). 
      Em seguida, pode-se usar a função anova() ou a função summary() para obter o quadro 
      de análise de variãncia convencional.
      Exemplo
      #teste para saber há diferença entre valores de crescimento em altura 
      #de uma espécie sob diferentes condições de sombreamento.
TRATAMENTOS<-factor(c("T1","T1","T1","T1","T1","T2","T2","T2","T2","T2","T3","T3","T3","T3",
                      "T3","T4","T4","T4","T4","T4"))
TRATAMENTOS      
ALTURAS<-c(20,22.5,25,23.5,17.5,23.5,27.5,25,26,23.5,17.5,19,19.5,20,21.5,30,33.5,27.5,26,26.5)
ALTURAS
parica<-data.frame(TRATAMENTOS,ALTURAS) #criei um data frame pra melhor visualização
parica
summary(parica) 
                                #observe o sumario do data frame que foi criado
anova1<-aov(ALTURAS~TRATAMENTOS) 
                                #observar que a função aov tem como argumento obrigatorio
                                #a variável quantitativa seguida da variável qualitativa
anova1
summary(anova1)           #mostra a analise de variãncia no quadro convencional

      Observe que o valor de F value é maior do que o valor de Pr(>F).
      Isso significa que o valor de f calculado é maior do que o F tabelado. 
      Então assim reijta-se h0 a 99% de probabilidade. Na prática, há diferença
      significativa de pelo menos 1 tratamento em relação a outro.

TESTE DE MÉDIA
TESTE Tukey
      os testes de médias servem para a verficiação de diferenças entre as médias obtidas.
      Eles são um teste que devem ser aplicador após a verificação da analise de variância.
      Basicamente, se houve diferenças significaticas encontradas na anova, deve-se proceder 
      utilizando um teste de média para saber qual a média é maior significativamente.
      O teste tukey é um desses testes de médias. Ele é o teste mais utilizado e por isso trabalharemos
      com ele aqui. Para a utilização do teste, usa-se o comando TukeyHSD().
      Exemplo
tukey<-TukeyHSD(anova1)
tukey   
        #Na tabela abaixo, observa-se que a comparação entre os tratamentos T4-T1, T4-T3 e T3-T2
        #foram os únicos com p-valor (coluna "p adj") menores que 0,05. 
        #Ou seja, foram os tratamentos que diferiram estatisticamente. 
       
      O resultado da tabela também pode ser observado graficamente:
      Exemplo
plot(tukey)    
          #observar as linhas que não tocam a linha vertical
