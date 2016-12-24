function  number  = conta_pixeis(img)

BW     = im2bw(img);
nBlack = sum(BW(:));
nWhite = numel(BW) - nBlack;

 msgbox(sprintf('Numero de pixeis pretos: %d\nNumero de pixeis brancos: %d\n',nBlack,nWhite));
 
end