%% Exe1
    %ir / Faltar
T = [0.7 0.8 %ir
     0.3 0.2];%faltar
%a)
s = [1 0]';

m0 = (T^2)*s;

p0 = m0(1)

%b)
s1 = [0 1]';

m1 = (T^2)*s1;

p1 = m1(2)
%c)
m3 = (T^29)*s;
p3 = m1(2)
%d)
s2 = [0.85 0.15]';
pFalt = zeros(30);
for i=1:30
    m4 = (T^i)*s2;
    pFalt(i) = m4(2);
end
x = 1:30;
plot(x,pFalt)

%% Exe2
T = [1/3 1/4 0
     1/3 1-1/4-1/5 1/2
     1/3 1/5 1/2];
 
 s = [60 15 15]';
 
 m0 = (T^30) * s
 
 s0 = [30 30 30]';
 
 m1 = (T^30) * s
 
 %% Exe3
 
 T = rand(20);
 T = T./sum(T); %Converter para todas as colunas somadas darem 1
 
 s = zeros(1,20)';
 s(1,1) = 1
 
 m0 = (T^20) * s;
 prob20 = m0(20)
 
 m1 = (T^40) * s;
 prob40 = m1(20)
 
 m2 = (T^100) * s;
 prob100 = m2(20)

 %% Exe4
 %a)
 T = [0.16 0 0 0.36;
     0.36  0 0 0.24;
     0.24  0 0 0.24;
     0.24  1 1 0.16];
 
 s = [1 0 0 0]';
 
 m0 = (T^10) * s
 pb = m0(2)
 
 %% Exe5
 T = [0.7 0.2 0.3
      0.2 0.3 0.3
      0.1 0.5 0.4];
  
 s = [1 0 0]';
 
 m0 = (T^2) * s;
 pb0 = m0(3)
 
 %% Exe6
 
 T = [0.8   0    0.3   0;
     0.2  0.9   0.2   0;
      0   0.1   0.4   0;
      0    0    0.1   1];
  
 s = [1 0 0 0]';
 
 m0 = T^1000 * s;
 prob2 = m0(2)
 
 passos = [1,2,10,100];
 
 for i=1:4
     prob = T^passos(1,i)
 end
 
 Q = T(1:3,1:3);
 
 F = inv(eye(size(Q))-Q);
 avrg = sum(F)
 
 
%% Exemplo estado estacionario

 T = [0.8   0    0.3   0    0;
     0.2  0.9   0.2   0     0;
      0   0.1   0.4   0     0;
      0    0    0.1   1     0;
      0    0.1  0     0     1];
 
  M=[T-eye(5);ones(1,5)];
  x=[0 0 0 0 0 1]';
  u=M\x;
  
  Q = T(1:3,1:3);
  
  F = (eye(3) - Q)^-1;
  
  %Valor medio de visitas a um estado começando no 1,2ou 3 é a coluna da
  %matriz F
  
  med = sum(F);
  %Tempo medio ate obsorção
  
  %Provabilidade de absorção tendo em conta se inicia no estado 1,2,3
  R = T(4:5,1:3);
  P = R * F;
  N = 10;
  [U,L]=surfer('http://www.google.com',N);
  H=full(L);
  c=sum(full(L));
  repmat(c,N,1)
  H=H./repmat(c,N,1);
  p=0.85;
  A=p*H+(1-p)*ones(N)/N; % matriz da Google
  A(isnan(A))=1/N; % resolver dead ends
  
  x0=ones(N,1)/N;
  % -----------------------
  iter=1;
  x=x0;
  epsilon=1e-3;
  while 1
  fprintf(1,'iteração %d\n',iter);
  xold=x;
  x=A*x;
  if max(abs(x-xold))<epsilon break ; end
  iter=iter+1;
  end
  for p=1:N
  fprintf(1,'PageRank=%.3f : %s \n',x(p), U{p});
  end
  
  %% CRAWL NORMAL
  
  H = [0 0.5  0   0;
       1  0  0.6 0.6;
       0  0   0  0.4;
       0 0.5 0.4  0];
   
  x0 = [1/4 1/4 1/4 1/4]';
  x = x0;
  
  for k=1:100
      x = H * x;
      temp(:,k) = x;
  end
  
  vec = [temp(1,1:100),temp(2,1:100),temp(3,1:100),temp(4,1:100)];
  vec0 = [1:100,1:100,1:100,1:100];
  stem(vec0,vec)
  
  %% WTF
  
Tn=[0.7 0.2;
    0.3 0.8]
T= [0.1 0.9]'
pij=[];
for n=1:10
Tn=(Tn^n)
%pij=[ pij Tn(:)]
%plot(pij')
%drawnow
end

%% Exame
clc
T = [0.9 0.5 0.5;
     0.09 0.4 0.4;
     0.01 0.1 0.1];
 
v = [0 0 1]';

res0 = T^4 * v;

%c (t-i)u = 0
A = [0,0,0,1]';
M = [T-eye(3);ones(1,3)];
s = linsolve(M,A);
c = 0;
res = zeros(3,1);
while true
    old = res;
    c = c + 1;
    res = T^c * v;
    temp = abs(res-old) < 0.001;
    if temp == ones(3,1)
        break;
    end
end
res;

%% exe2

H = [0   1/2 1/3 1/4 0
     1/2 0   0   1/4 1/2
     1/2 1/2 1/3 1/4 0
     0   0   0   0   1/2
     0   0   1/3 1/4 0];
 
 A=0.8*H + 0.2*(ones(5)/5)
 
 pagR = [1/5 1/5 1/5 1/5 1/5]';
 vec = A^10 * pagR
 
 
 %% exe3
 
 P = [0.7 0.2 0   0   0 0
      0.2 0   0.3 0   0 0
      0   0.6 0.3 0   0 0
      0.1 0.2 0.3 0.1 0 0
      0   0   0   0.4 1 0
      0   0   0.1 0.5 0 1];
  
  v = [1,0,0,0,0,0]';
  v1 = [0,0,0,1,0,0]';
  v2 = [0,0,1,0,0,0]';
  
  matr = P^10 * v;
  matr(3);
  
  matr1 = P^15 * v1;
  matr(4);
  
  Q = [0.7 0.2 0   0 
       0.2 0   0.3 0   
       0   0.6 0.3 0   
       0.1 0.2 0.3 0.1];
   
  F = ( eye(4) - Q ) ^-1;
  
  resp = sum(F);
  resp = resp(3)
  
  
  %% Exame2
  clc
  T = [0.84 0.10 0    0.50
       0.10 0.70 0    0.10
       0.05  0.10 0.80 0.10
       0.01  0.10 0.20 0.30];
 
   v = [1 2 10 5]';
   
   mat = (T^7) * v;
   
   c = 0;
   mat0 = v;
   res = zeros(1,4);
   while true
       old = mat0;
       if mat0(1) > res(1)
           res(1) = mat0(1);
       end
       if mat0(2) > res(2)
           res(2) = mat0(2);
       end
       if mat0(3) > res(3)
           res(3) = mat0(3);
       end
       if mat0(4) > res(4)
           res(4) = mat0(4);
       end
       c = c + 1;
       mat0 = (T^c)*v;
       temp = abs(mat0-old) < 0.00001;
       if temp == ones(4,1)
           break;
       end
   end
   
   res
   
   %% c
   T = [0.84 0.10 0    0.50
       0.10 0.70 0    0.10
       0.05  0.10 0.80 0.10
       0.01  0.10 0.20 0.30];
 
   v = [1 2 10 5]';
   c = 0;
   mat1 = v;
   while true
       if mat1(4) < 2
           break;
       end
       c = c + 1;
       mat1 = (T^c)*v;
   end
   c
   
   %% tste
   clc
   H= [0    0   0.5 0   0.5 0.2;
       0.5  1/3 0.5 0.5 0.5 0.2;
       0    0   0   0   0   0.2;
       0    1/3 0   0   0   0.2;
       0.5  0   0   0.5 0   0.2;
       0    1/3 0   0   0   0];

   v = [1/6 1/6 1/6 1/6 1/6 1/6]';
   for i=1:100
      teste =  H^i * v;
      res(:,i) = teste;
   end
   
   plot(1:100,res);
   
   
   %% MaisMerdas
   
   % matriz de transi��es
T = [1-(0.09+0.01) 1-(0.4+0.1) 1-(0.4+0.1);
     0.09 0.4 0.4;
     0.01 0.1 0.1];
 
 % vetor inicial
 v = [0 0 1]';
    