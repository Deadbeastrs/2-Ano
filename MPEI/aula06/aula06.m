%% Exe1/2
paises = {'Alemanha','Espanha','Portugal'};
teste = {'Portugal','Argentina','Suiça'};
n = 100; %length of bloomfilter
k = 3; % nº of hash functions
F = zeros(1,n,'uint8');
for i = 1:length(paises)
    F = add(paises{i},F,k);
end

for i = 1:length(teste)
    aux = isElement(teste{i},F,k);
    if aux == 1
        fprintf('%s is member \n', teste{i});
    end
end

%% Exe3
n = 1000;
F = zeros(1,8000,'uint8');
for i=1:n
    str = randFunc();
    F = add(convertStringsToChars(str),F,3);
end

for s=1:10000bestK()
    str1 = randFunc();
    aux = isElement(convertStringsToChars(str1),F,3);
     if aux == 1
         count = count + 1;
        fprintf('%s is member \n',str1);
    end
end


%% Exe4
n = 1000;

kvec = 1:15;
countVec = zeros(15);

for k=1:15
    F = zeros(1,8000,'uint8');
    for i=1:n
    str = randFunc();
    F = add(convertStringsToChars(str),F,k);
    end
    for s=1:10000
    str1 = randFunc();
    aux = isElement(convertStringsToChars(str1),F,k);
    if aux == 1
         count = count + 1;
    end
    end
    countVec(k) = count;
    count = 0;
end
stem(kvec,countVec)