%% Exe1 a)
clc
N = 1e5;
p = 0.5;
k = 1;
n = 2;
experiencia = rand(n,N) > p;
sucessos = sum(experiencia) >=k;
probSimulacao1 = sum(sucessos)/N

%% Exe1 c)
clc
N = 1e5;
p = 0.5; % um eles e rapaz
k = 2;
n = 2;
experiencia = rand(n,N) > p;
sucessos = sum(experiencia) ==k;
peloMenos1Rapaz = sum(experiencia) >= 1;
probSimulacao1 = sum(sucessos)/sum(peloMenos1Rapaz) %%p(a|b) = p(a e b) / p(b)

%% Exe1 d)
clc
N = 1e5;
p = 0.5; %o primeiro e rapaz
k = 2;
n = 2;
experiencia = rand(n,N) > p;
sucessos = sum(experiencia) ==k;
linha1 = experiencia(1,:);
probSimulacao1 = sum(sucessos)/sum(linha1) %%p(a|b) = p(a e b) / p(b)

%% Exe1 e)
clc
N = 1e5;
p = 0.5; %o primeiro e rapaz
k = 2;
n = 5;
experiencia = rand(n,N) > p;
sucessos = sum(experiencia) ==k;
peloMenos1Rapaz = sum(experiencia) >= 1;
probSimulacao1 = sum(sucessos) / sum(peloMenos1Rapaz) %%p(a|b) = p(a e b) / p(b)

%% Exe2 a)
clc
p = 0.5;
N = 1e5;
k = 10;
n = 10;
exp = rand(n,N) > p;
suc = sum(exp) == k;
prob = sum(suc) / N

%% Exe2 b)
clc
p = 0.5;
N = 1e6;
k = 11;
n = 11;
exp = rand(n,N) > p;
suc = sum(exp) == k;
linha1 = sum(exp(1:10,:)) == 10;
prob = sum(suc) / sum(linha1)

%% Exe3 
clc
p = 0.5;
N = 1e6;
k = 11;
n = 11;
exp = rand(n,N) <= 1/10000;
sum(exp)

%% Exe4 a)
clc
a = randi(100,20,1e5);
c = 0;
for i = 1:1e5
    b = length(unique(a(:,i))) == 20;
    c = c + b;
end
prob = c/1e5

%% Exe4 b)
clc
a = randi(100,20,1e5);
c = 0;
for i = 1:1e5
    b = length(unique(a(:,i))) < 20; %menor que 20 porque se houve menos que 20 unicos significa que houve pelo menos 1 com 2 ou mais darts
    c = c + b;
end
prob = c/1e5

%% Exe5 c)
clc
c = 0;
l = 0;
aux = 0;
figure(1)
for m = [1000, 10000, 100000,1000000] 
    pro = zeros(1,10);
    l = l + 1;
    subplot(1,4,l)
    for s = 1:10:100
        a = randi(m,s,1e5);
        aux = aux + 1;
        for i = 1:1e5
            b = length(unique(a(:,i))) < s; %menor que 20 porque se houve menos que 20 unicos significa que houve pelo menos 1 com 2 ou mais darts
            c = c + b;
        end
        res = c / 1e5;
        pro(aux) = res;
        c = 0;
    end
    aux = 0;
    plot(1:10:100,pro)
end

%% Exe6
clc
N = 1e5;
prob = 0;
for n = 1:365
    a = randi(365,N,n);
    valida = 0;
    for i = 1:N
        c = length(unique(a(i,:))) < n;
        valida = valida + c;
    end
    prob = valida / N;
    if prob >= 0.5 
        prob
        n
        break
    end
end
