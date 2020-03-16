%% Exe1 FIcha dos teoricos exes2

clc

H = [0   0   1/2 0   1/2 1/5
     1/2 1/3 1/2 1/2 1/2 1/5
     0   0   0   0   0   1/5
     0   1/3 0   0   0   1/5
     1/2 0   0   1/2 0   1/5
     0   1/3 0   0   0   0  ];
 
 v = ones(1,6) / 6;
 %a)
 
 respA = H^3 * v';
 
 %b)
 respB = v';
 c=0;
 while true
    c = c + 1;
    old = respB;
    respB = H^c * respB;
    vals(:,c) = respB;
    if min(abs(respB-old) < 0.0001) == 1
        break;
    end
 end
 vals
 plot(1:c,vals)