% Exe1
p = 0.5;
k = 2;
n = 3;
prob = factorial(n)/ (factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k)


%Exe2
% Gerar uma matriz com 3 linhas e 10000 colunas de n´umeros aleat´orios
% entre 0.0 e 1.0 (ou seja, cada coluna representa uma experiˆencia):
experiencias = rand(3,10000);
% Gerar uma matriz com 3 linhas e 10000 colunas com o valor 1 se o valor
% da matriz anterior for superior a 0.5 (ou seja, se saiu cara) ou com o
% valor 0 caso contr´ario (ou seja, saiu coroa):
lancamentos = experiencias > 0.5; % 0.5 corresponde a 1 - prob. de caras
% Gerar um vetor linha com 10000 elementos com a soma dos valores de cada
% coluna da matriz anterior (ou seja, o n´umero de caras de cada experiˆencia):
resultados= sum(lancamentos);
% Gerar um vetor linha com 10000 elementos com o valor 1 quando o valor do
% vetor anterior ´e 2 (ou seja, se a experiˆencia deu 2 caras) ou 0 quando ´e
% diferente de 2:
sucessos= resultados==2;
% Determinar o resultado final dividindo o n´umero de experiˆencias com 2
% caras pelo n´umero total de experiˆencias:
probSimulacao1= sum(sucessos)/10000;


%% codigo 2 versao

N= 1e5; %n´umero de experiˆencias
p = 0.5; %probabilidade de cara
k = 2; %n´umero de caras
n = 3; %n´umero de lanc¸amentos
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N;

%% exe2

m1 = rand(15,10000) > 0.5;
suc = sum(m1) == 6;
prob = sum(suc) / 10000;



%% exe3

m1 = rand(15,10000) > 0.5;
suc = sum(m1) >= 6;
prob = sum(suc) / 10000;


%% exe4

prompt = "Numero de lançamentos";
prompt1 = "Numero de caras pretendidas";
prompt2 = "Numero de experiencias";

lanc = input(prompt);
caras = input(prompt1);
exp = input(prompt2);

m2 = rand(lanc,exp) > 0.5
suc = sum(m2) == caras
prob2 = sum(suc) / exp

%% exe4new

prob2 = moedaProb(20,1000,0.5)
stem(0:20,prob2)

%% exe5 a)

N = 1e5; %prob real = 5C2 * res(0.3) 
n = 5;
k = 3;
p = 0.3;

board = rand(n,N) <= 0.3;
suc = sum(board) == k;
prob = sum(suc) / N 
stem(1,prob)

