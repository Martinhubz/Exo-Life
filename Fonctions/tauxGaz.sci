function level=gazLevel(img)
    
    greyLevel=[];
    pixelNbr=[];
    amountPerLevel=[];
    counter=1;
    
    for i=0:1:255
        [x,y]=find(img==i);
        greyLevel(counter)=i;
        pixelNbr(counter)=length(x);
        amountPerLevel(counter)=pixelNbr(counter)*(i/255);
        counter=counter+1;
    end
    //disp(greyLevel())
    //disp(pixelNbr)
    
    //sum(nbrPixel()*(greyLevel()/255))/sum(pixelNbr)
    level=sum(amountPerLevel)/sum(pixelNbr)*100;
    
    
endfunction
