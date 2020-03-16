%% Exe1 a)

xi = 1:6;
p = ones(1,6)/6;
stem(xi,p);
xlabel('x');
ylabel('px(x)');

%% Exe2 b)

xi = 1:6;
p = ones(1,6)/6;
for c = 2:6
    r = c - 1;
    p(c) = p(c)+p(r);
end
stem(xi,p);
xlabel('x');
ylabel('px(x)');


%% Exe2 a)

% s={1,2,3 ... ,100}
% p(5) = 90/100
% p(50) = 9/100
% p(100) = 1/100

%% Exe2 b) 
clc

xi = [5,50,100];

p = [90, 9, 1] / 100;

stem(xi,p);
xlabel('x');
ylabel('px(x)');


%% Exe2 c)
clc
N=1e5;
n=1;
p100 = 0.99;
p5 = 0.90;
exp = rand(n,N) >= p100;
exp2 = rand(n,N) <= p5;
exp3 = rand(n,N) > p5 & rand(n,N) < p100 ;
prob = 1:3;
prob(3) = sum(exp) / N
prob(1) = sum(exp2) / N
prob(2) = sum(exp3) / N

xi = [5,50,100];
stem(xi,prob);
xlabel('x');
ylabel('p(x)');


%% Exe3 a) b)
clc
N=1e5;
n=4;
xi = [0,1,2,3,4]
exp = randi(0:1,n,N);
prob = 0:4;
for s = 0:4
    f = 0;
    for c = 1 : N
        col = exp(:,c);
        soma = sum(col) == s;
        f = soma + f;
    end
    prob(s+1) = f / N;
end
stem(xi,prob);
xlabel('x');
ylabel('p(x)');

E = sum(xi.*prob)
E2 = sum((xi.^2).*prob);
Var = E2 - E^2

%% Exe3 d) e)
clc
n = 4
k = 4
p = 0.5

Prb0 = nchoosek(n,k) * (p^k) * (1-p)^(n-k);

n = 4
k = 3
p = 0.5

Prb1 = nchoosek(n,k)*(p^k)*(1-p)^(n-k);
n = 4
k = 2
p = 0.5

Prb2 = nchoosek(n,k)*(p^k)*(1-p)^(n-k);
n = 4
k = 1
p = 0.5

Prb3 = nchoosek(n,k)*(p^k)*(1-p)^(n-k);
n = 4
k = 0
p = 0.5

Prb4 = nchoosek(n,k)*(p^k)*(1-p)^(n-k);


x = [Prb0,Prb1,Prb2,Prb3,Prb4]

% i)

i = Prb0 + Prb1 + Prob2

% ii)

ii = Prb0 + Prb1

% iii)

iii = Prb2 + Prb3 + Prb4


%% Exe4
clc
N = 1e5;
n = 5;
p = 0.3;
prob =  1:6;
exp = rand(n,N) < 0.3;
for c = 0:5
    suc = sum(exp) == c;
    pro = sum(suc) / N;
    prob(c+1) = pro;
end
prob

%% Exe6

n=8000;
k=7;
p=1/1000;

prob1 = nchoosek(n,k)*(p^k)*(1-p)^(n-k)

alpha = n * p;

pk = ((alpha)^k)/(factorial(k));
pk2 = pk * (exp(-alpha))

%% Exe7 a)

alpha = 15;
k = 0;
pk = ((alpha)^k)/(factorial(k));
pk2 = pk * (exp(-alpha))

%% Exe7 b)

alpha = 15;
sum1 = 0;
for k = 0:10
   pk = ((alpha)^k)/(factorial(k));
    pk2 = (pk * (exp(-alpha)));
    sum1 = sum1 + pk2;
end
pk3 = 1-sum1

%% Exe8
sum1 = 0;
for k = 1:4
    val = (k+5)/30;
    sum1 = sum1 + val;
end
sum1

%% Exe9
clc
k = 0;
alpha = 1;
pk = ((alpha)^k)/(factorial(k));
pk2 = (pk * (exp(-alpha)));
val = 1-pk2

%% Exe10 a)
clc
N = 1e5;
n = 1;
exp = (rand(n,N) * 10) < 3;
val = sum(exp);
prob = val / N

%% Exe10 b)
clc
N = 1e5;
n = 1;
exp = (rand(n,N) * 10) < 7;
val = sum(exp);
prob = val / N;

prob1 = 1-prob

%% Exe10 c)
clc
N = 1e5;
n = 1;
ex = (rand(n,N) * 10);
val = sum(ex >= 1 & ex <= 6);
prob = val / N

%% Exe11 a)
clc
N = 1e5;
n = 1;
ex = ((14 + 2*randn(n,N)));
val = sum(ex > 12 & ex < 16);
prob = val / N

%% Exe11 b)
clc
N = 1e5;
n = 1;
ex = ((14 + 2*randn(n,N)));
val = sum(ex > 10 & ex < 18);
prob = val / N

%% Exe11 c)
clc
N = 1e5;
n = 1;
ex = ((14 + 2*randn(n,N)));
val = sum(ex >= 10);
prob = val / N