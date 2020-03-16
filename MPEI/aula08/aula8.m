%% Rodrigo Santos nmec: 93173
%% aula8 exercicio 1

T = [0.2 0.3; 0.8 0.7];

%a) 
estados = [0 1];
x = T^2 * estados';
prob1 = x(2)

%b)
estados1 = [1 0];
y = T^2 * estados1';
prob2 = y(2)

%c)
w = T^29 * estados';
prob3 = w(2)

%d)
states = [0.15 0.85]';
m = states;
probf(1) = 0.15;
probnf(2) = 0.85;

for i=1:30
    m = T*m;
    probf(1, i+1) = m(1);
    probnf(1, i+1) = m(2);
    
end

figure();
plot(probnf);
hold on;
plot(probf);


%% exercicio 2
%a) matriz de transicao
T = [1/3    1/4       0;
     1/3  1-1/4-1/5  1/2;
     1/3    1/5      1/2];
 
%b)
% A -> 60 B -> 15 C -> 15 
Estados = [60 15 15];

%c)
prob1 = T^30 * Estados' 

%d)
E = [30 30 30];
prob2 = T^30 * E'


%% exercicio 3
T = rand(20);
T = T./sum(T);

Estados = zeros(1,20);
Estados(1,1) = 1;

prob1 = T^20 * Estados';
a = prob1(20)
prob2 = T^40 * Estados';
b = prob2(20)
prob3 = T^100 * Estados';
c = prob3(20)


%% exercicio 4
%a)
T = [0.16   0   0   0.36;
     0.36   0   0   0.24;
     0.24   0   0   0.24;
     0.24   1   1   0.16];
 
%b)
Estados = [1 0 0 0];
prob = T^10 * Estados'


%% exercicio 5
%a)
T = [0.7  0.2  0.3;
     0.2  0.3  0.3;
     0.1  0.5  0.4];
%b)
Estados = [1 0 0];
prob = T^2 * Estados';
a = prob(3)

%c)
Tn = T;
matriz = zeros(9,20);
matriz(:,1) = Tn(:);

for i = 2:20
    Tn = T*Tn;
    matriz(:,i) = Tn(:); 
end

figure();
plot(matriz')

%d)
Tprev = zeros(3,3);

value = zeros(9,1);
value(:,1) = Tn(:);

limiar = 10^(-4);
value(:,1) = Tn(:);

for i = 2:20
   if(sum(sum(abs(Tn - Tprev))) <= limiar)
       break;
   end
   
   Tprev = Tn;
   Tn = Tn*T;
   value(:,i) = Tn(:);
end

figure();
plot(value')

fprintf('Numero de interacoes: %d\n', size(value, 2));

%% exercicio 6
%a)

T = [0.8   0    0.3   0;
     0.2  0.9   0.2   0;
      0   0.1   0.4   0;
      0    0    0.1   1];
  
%b)
E = [1 0 0 0];
x = T^1000 * E';
prob1 = x(2)

%c)
passos = [1 2 10 100];
for i=1:4
    prob2 = T^passos(1,i)
end

%d)
Q = T(1:3,1:3)

%e)
F = inv(eye(size(Q))-Q)

%f)
media = sum(F)

%g)
t = F' * ones(3,1)

%h)
H = [0.8   0    0.39   0;
     0.2  0.9   0.2   0;
      0   0.1   0.4   0;
      0    0    0.01   1];


Q1 = H(1:3,1:3)
F1 = inv(eye(size(Q1))- Q1)
media1 = sum(F1)
t1 = F1' * ones(3,1)

%% exercicio 7

T = [0.8  0.1  0.05;
     0.2  0.6  0.2;
      0   0.3  0.75];
  
%a)  
inicial = [100 200 30];
prob = T^3 * inicial';

fprintf('Ana: %4.2f\n', prob(1));
fprintf('Bernardo: %4.2f\n', prob(2));
fprintf('Carolina: %4.2f\n', prob(3));

%b)
inicial = [100 200 30];
prob1 = T^365 * inicial';

fprintf('Ana: %4.2f\n', prob1(1));
fprintf('Bernardo: %4.2f\n', prob1(2));
fprintf('Carolina: %4.2f\n', prob1(3));

%c)
n = 1;
money = T * inicial';

while(1)
    n = n + 1;
    money = T * money;
    
    if(money(3) > 130)
        break;
    end
end
n;  %numero de dias ate atingir uma quantia superior a 130
fprintf('No dia 10 de janeiro a Catarina terá uma quantia superior a 130€');









