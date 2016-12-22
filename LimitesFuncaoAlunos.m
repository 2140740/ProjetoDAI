function [ imagem ] = LimitesFuncaoAlunos(img,radio)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

imagemOriginal = img;
imagemAtual = rgb2gray(imagemOriginal);

 if(strcmp(radio,'radioSobel'))
     BW2 = edge(imagemAtual,'Sobel');
         
     else if(strcmp(radio,'radioPrewitt'))
         BW2 = edge(imagemAtual,'Prewitt');
         
     else if(strcmp(radio,'radioRoberts'))
         BW2 = edge(imagemAtual,'Roberts');
         
     else if(strcmp(radio,'radioCanny'))
                  BW2=edge(imagemAtual,'Canny');
              end
           end
      end
     end


%multiplicar a imagem por 255
%para podermos ver os contornos
%g é o numero de dimensoes
[r,c,g] = size(imagemAtual);
%// Arrange the binary images to form a RGB color image.
FinalIm = zeros(r,c,3,'uint8');

FinalIm(:,:,1) = 255*BW2;
FinalIm(:,:,2) = 255*BW2;
FinalIm(:,:,3) = 255*BW2;

Z = imadd(FinalIm,imagemOriginal);

imshow(Z/1.75);

end

