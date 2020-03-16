%José Costa nº92996
%PL8
%% exe1a)
Tn=[0.2 0.3
    0.8 0.7];

T= [0 1]';

T2 = (Tn^2)*T;

resposta = T2(2)

%% exe1b)

Tn=[0.2 0.3
    0.8 0.7];

T= [1 0]';

T21 = (Tn^2)*T;

resposta = T2(2)

%% exe1c)

Tn=[0.2 0.3
    0.8 0.7];

T= [0 1]';

T22 = (Tn^15)*T;

resposta = T2(2)

%% exe1d)

Tn=[0.2 0.3
    0.8 0.7];

T= [0.15 0.85]';
resposta0 = 1:30;
resposta0(1)= T(2);

resposta1 = 1:30;
resposta1(1) = T(1);
val = 1:30;
for i=1:29
    T30 = (Tn^i)*T;
    resposta0(i+1) = T30(2);
    resposta1(i+1) = T30(1);

end
plot(val,resposta0,val,resposta1)

%% exe2

Tn = [1/3    1/4       0;
     1/3  1-1/4-1/5  1/2;
     1/3    1/5      1/2];
%b)
T = [60 15 15]';
%c)
Nelem = Tn^30 * T
%d)
T2 = [30 30 30]';
Nelem2 = Tn^30 * T2

%% exe3

Tn = rand(20);
Tn = Tn./sum(Tn);
State = zeros(1,20);
State(1,1) = 1;

prob1 = Tn^20 * State';
val1 = prob1(20)
prob2 = Tn^40 * State';
val2 = prob2(20)
prob3 = Tn^100 * State';
val3 = prob3(20)

%% exe4
%a)
Tn = [0.16 0 0 0.36;
     0.36  0 0 0.24;
     0.24  0 0 0.24;
     0.24  1 1 0.16];

%b)
State = [1 0 0 0]';
prob0 = Tn^10 * State;
% state a
p2 = prob0(1)
% state b
p2 = prob0(2)
%estado c
p3 = prob0(3)
%estado d
p4 = prob0(4)

%% exe5

%a)
Tn = [0.7 0.2 0.3;
     0.2 0.3 0.3;
     0.1 0.5 0.4];
%b)
State = [1 0 0]';
prob0 = Tn^2 * State;
val = prob0(3)

%c)
Matrix = zeros(9,20);
Zero = zeros(20);
for t=1:20
  Tx = Tn^t;
  Matrix(:,t) = Tx(:);
end

k = 1:20;
plot(k,Matrix(1,:)',k,Matrix(2,:)',k,Matrix(3,:)',k,Matrix(4,:)',k,Matrix(5,:)',k,Matrix(6,:)',k,Matrix(7,:)',k,Matrix(8,:)',k,Matrix(9,:)')

%d)

Tzero = zeros(3,3);

Tx = Tn;
m = zeros(9,1);
m(:,1) = Tx(:);
for k = 2:20
    if(sum(sum(abs(Tx-Tzero)))<=10^(-4))
        break;
    end
    Tzero = Tx;
    Tx = Tx*Tn;
    m(:,k) = Tx(:);
end
m = m';
plot(m);

%% exe6

%a)

Tn = [0.8   0    0.3   0;
     0.2  0.9   0.2   0;
      0   0.1   0.4   0;
      0    0    0.1   1];
  
%b)
T = [1 0 0 0]';
x = Tn^1000 * T;
prob1 = x(2)

%c)
passos = [1 2 10 100];
for i=1:4
    prob2 = Tn^passos(1,i)
end

%d)

Q = Tn(1:3,1:3)

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
      0    0    0.0001   1];


Q2 = H(1:3,1:3)
F2 = inv(eye(size(Q2))- Q2)
media2 = sum(F2)
t2 = F' * ones(3,1)

%% exe7
Tn = [0.8  0.1  0.05
     0.2  0.6  0.2
      0   0.3  0.75];
% E = [0.30 0.60 0.1]
State = [100 200 30]';

prob = Tn^3 * State;
ana = prob(1)
bernardo = prob(2)
catarina = prob(3)

%b

prob = Tn^365 * State;
ana = prob(1)
bernardo = prob(2)
catarina = prob(3)

%c
N = 365;
for k = 1:N
    Tk = (Tn^k) * State;
    prob = Tk(3);
    if prob >= 130
        k
        break
    end
end

%Dia 10 de Janeiro de 2015
    