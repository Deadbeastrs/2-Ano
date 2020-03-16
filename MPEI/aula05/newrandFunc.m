function [chave] = newrandFunc()
w = ['A':'Z','a':'z'];
a = 10;
b = sqrt(5);
size = round(a + b*randn(1,1)) + 1;

alpha = ['A':'Z' 'a':'z' ];  

ficheiros={'pg21209.txt','pg26017.txt'};
pmfPT=pmfLetrasPT(ficheiros,alpha);

x = zeros(1,size);
csum = cumsum(pmfPT);
for j=1:size
U=rand();
i = 1 + sum( U > csum );
x(j) = i;
end

chave = "";
for i=1:size
    letra = x(i);
    chave = chave + w(letra);
end


