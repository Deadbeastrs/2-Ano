function [vector] = add(e,vector,k)
n = length(vector);
for i =1:k
   e = [e num2str(i)];
   hash = string2hash(e);
   chave = mod(hash,n) + 1;
   vector(chave) = 1;
end
end

