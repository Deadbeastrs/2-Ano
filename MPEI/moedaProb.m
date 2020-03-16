function [outputArg1] = moedaProb(lanc,exp,p)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    mat = size(1,lanc + 1);
    for k=0:lanc
        m1 = rand(lanc,exp) > p;
        suc = sum(m1) == k;
        prob = sum(suc) / exp;
        mat(k+1) = prob;
    end
    outputArg1 = mat;
end

