function  [cores]= histFuncaoAlunos(img)

%se a imagem tiver duas dimensoes, grayscale faz o código abaixo , senão
%dispara no else lá em baixo
if(ndims(img)==2)
    
%Inicialização de dois vetores para serem os eixos do histograma
cores=zeros(1,256);

%dimensões da imagem
[colunas,linhas] = size(img);

% com 2 ciclos passamos pela matriz da imagem e contamos os pixeis com a
% mesma intensidade
for i=1:colunas 
   for j=1:linhas
num=img(i,j)+1;
      cores(num)=cores(num)+1;
   end
end

%resultado = cores(num);

%mostra o gráfico
%{
figure
bar(cores);
axis([0 255 0 max(cores)+1]);
%}
%caso nao esteja em grayscale
else
    disp('A imagem não está em grayscale');
end

end