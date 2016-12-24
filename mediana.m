function [ imagem ] = mediana( img )

imagem = img;

[linhas,colunas] = size(imagem);

for i=2:linhas-1
    for j=2:colunas-1
        aux = [imagem(i,j), imagem(i,j+1), imagem(i,j-1), imagem(i+1,j), imagem(i-1,j), imagem(i-1,j-1), imagem(i+1,j+1), imagem(i+1,j-1), imagem(i-1,j+1)];
        vetorOrdenado = sort(aux);
        mediana = vetorOrdenado(5);
        imagem(i,j) = mediana;
    end
end

end