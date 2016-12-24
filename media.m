function [ imageD ] = media( img )

imagemD = im2double (img);

[linhas,colunas] = size(imagemD);

for i=2:linhas-1
    for j=2:colunas-1
        soma = (imagemD(i,j) + imagemD(i,j+1) + imagemD(i,j-1) + imagemD(i+1,j) + imagemD(i-1,j) + imagemD(i-1,j-1) + imagemD(i+1,j+1) + imagemD(i+1,j-1) + imagemD(i-1,j+1));
        media = soma/9;
        imagemD(i,j) = media;
    end
end

end