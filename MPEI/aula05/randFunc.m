function [chave] = randFunc()
w = ['A':'Z','a':'z','0':'9'];
size = 40
chave = "";
for i=1:size
    letra = randi(length(w));
    chave = chave + w(letra);
end
