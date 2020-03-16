function X=Tpc(nUrnas,Sub)

bolas = 1:nUrnas;
for k = 1:Sub
    bolaEscolhida = floor(randi(nUrnas,1,1));
    X(k) = bolas(bolaEscolhida);
    bolas(bolaEscolhida) = [];
    nUrnas = nUrnas-1;
end
end