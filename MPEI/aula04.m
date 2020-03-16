%% Exe1 a)
X0 = 3;
a = 3;
c = 3;
m = 99;
N = 1000;

y = lcg(X0,a,c,m,N)

histogram(y,0:99)

%% Exe1 b)
X0 = 3;
a = 3;
c = 3;
m = 99;
N = 1000;

y1 = lcg(X0,a,c,m,N);

y = y1 / m

length(unique(y));

hist(y, 0.05:0.1:0.95)

%% Exe1 c)
X0 = 3;   %Valores de matlab Pra alinea c
a = 7^5;
c = 0;
m = (2^31)-1;

y1 = lcg(X0,a,c,m,N);

y = y1 / m;

length(unique(y));

%hist(y, 0.05:0.1:0.95)

% para Alinea a
ya = lcg(X0,a,c,m,N)

hist(ya, 0:99);

%% Ex 2 a)
clc
N = 10;
p = 0.5;

x = rand(1,N) < p

%% b)
clc
m = ones(1,6) * 1/6;

msum = cumsum(m);%probabilidades de cada dado

for i = 1:15
    x = rand(1,1);
    cumm(i) = 1 + sum(x > msum);
end
cumm %representa o resultado dos dados ao longo das 15 vezes

%% c)
clc
n=20;
amostra=(rand(1,n)*14)-4 %criar numeros entre [-4,10]
hist(amostra)
axis([-4 10 0 8]) %axis([XMIN XMAX YMIN YMAX])

%% Ex3

clc
hist(Bernoulli(.3, 10000),(0:1)')

%% Exe4 a)

% usando
N=1e6; n=20; p=0.3;
X=(binomial(n,p,N));
hist(X)
%Provabilidade teorica que vai de acordo aos valores do grafico Ex(k=4)
PrbK = zeros(20);
for k = 0:20
    PrbK(k+1) = nchoosek(n,k) * (p^k) * (1-p)^(n-k);
end
stem(PrbK)

%Graficos identico

%% Exe5
N = 1e5;
xi = [1,2,3,4,5,6];
pX=[0.1,0.1,0.1,0.1,0.1,0.5];
x = zeros(1,N);
csum = cumsum(pX);
for j=1:N
U=rand();
i = 1 + sum( U > csum );
x(j) = i;
end
f = 1:6;
for s = 1:N
    p = x(s);
    f(p) = f(p) + 1;
end
prob = f / N
stem(prob)

%% Ex6
clc
hist(exponencial(.5,1000),20);

%% Ex7
hist(sqrt(2)*BoxMuller(30)+14);

%% Exe8

fuc=sqrt(2)*BoxMuller(30)+14;
fuc(fuc<9 | fuc>19)=[];
hist(fuc)

%% Exe9

Totoloto = Tpc(50,7)