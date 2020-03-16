function [p] = isElement(e,vetor,k)
cont = 0;
n = length(vetor);

for i = 1:k
    e = [e num2str(i)];
    hashChave = string2hash(e);
    pos = mod(hashChave,n) + 1;

    if vetor(pos) == 1
        cont = cont + 1;
    end
end

if  cont == k
    p = 1;
else
    p = 0;
end

