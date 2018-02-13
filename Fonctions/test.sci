function histo=histogramme(imgsrc)
    
    intensite=[];
    nbpixel=[];
    counter=1;
    for i=0:1:255 
        [x,y]=find(imgsrc==i); //finds where imgsrc==i 
        nbpixel(counter)=i;
        intensite(counter)=length(x); //find how many pixels of im have value of i 
        counter=counter+1;
    end
    //plot(intensite, nbpixel); //affiche le
    // save the value for the graphic
    histo=intensite
    plot(nbpixel,intensite)
endfunction
