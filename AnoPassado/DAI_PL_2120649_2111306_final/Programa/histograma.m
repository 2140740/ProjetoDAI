function [ numLinhas, numColunas ] = histograma( img )
numLinhas=size(img,1);
numColunas=size(img,2);
cores=zeros(1, 256);

for i=1:numLinhas
    for j=1:numColunas
        cores(img(i,j)+1)=cores(img(i,j)+1)+1;
    end
end

bar(cores);

end