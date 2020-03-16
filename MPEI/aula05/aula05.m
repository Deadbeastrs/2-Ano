%% versao1 string2hash
s = randFunc();
str1 = num2str(s);
string2hash(str1);
carga = round(1000/0.8);
vet = zeros(1,carga);
for i=0:1000
    %subplot(1,2,1)
    %bar(vet)
    %drawnow
    %subplot(1,2,2)
    %histogram(vet)
    %drawnow
    chave = num2str(randFunc());
    hasChave = mod(string2hash(chave),1250) + 1;
    vet(hasChave) = vet(hasChave) + 1;
end

b = histcounts(vet);
p = b/(sum(b));
stem((0:length(p)-1),p)

media = 0;
media2 = 0;
for i=1:length(p)
    media = media + ((i-1)*p(i));
    media2 = media2 + ((i-1)^2 * p(i));
end
media
var = media2-media^2

%% versao2
str1 = newrandFunc();
string2hash(str1);
carga = round(1000/0.8);
vet = zeros(1,carga);
for i=0:1000
    subplot(1,2,1)
    bar(vet)
    drawnow
    subplot(1,2,2)
    hist(vet)
    drawnow
    chave = newrandFunc();
    hasChave = mod(string2hash(convertStringsToChars(chave)),1250) + 1;
    vet(hasChave) = vet(hasChave) + 1;
end

b = histcounts(vet);
p = b/(sum(b));
stem((0:length(p)-1),p)

media = 0;
media2 = 0;
for i=1:length(p)
    media = media + ((i-1)*p(i));
    media2 = media2 + ((i-1)^2 * p(i));
end
media
var = media2-media^2

%% Opcional
str1 = newrandFunc();
string2hash2(str1);
carga = round(1000/0.8);
vet = zeros(1,carga);
for i=0:1000
    subplot(1,2,1)
    bar(vet)
    drawnow
    subplot(1,2,2)
    hist(vet)
    drawnow
    chave = newrandFunc();
    hasChave = mod(string2hash2(convertStringsToChars(chave)),1250) + 1;
    vet(hasChave) = vet(hasChave) + 1;
end

b = histcounts(vet);
p = b/(sum(b));
stem((0:length(p)-1),p)

media = 0;
media2 = 0;
for i=1:length(p)
    media = media + ((i-1)*p(i));
    media2 = media2 + ((i-1)^2 * p(i));
end
media
var = media2-media^2
%% 5
%sim conseguio espalhar bem pelo array visto que
%a probabilidade de a variavel aleatoria X ser 1 e elevada em comparacao ao resto(exeto 0)
%é apesar de tudo ainda se verificam algumas colisões