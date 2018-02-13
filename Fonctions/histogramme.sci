//----------Histogramme----------

function hist(imgsrc)
    
    intensite=[];
    nbpixel=[];
    counter=1;
    [m,n]=size(imgsrc)
    
    
    for i=0:1:255 
        [x,y]=find(imgsrc==i); //finds where imgsrc==i 
        nbpixel(counter)=i;
        intensite(counter)=length(x); //find how many pixels of im have value of i 
        counter=counter+1;
    end
    //plot(intensite, nbpixel); //affiche le
    // save the value for the graphic
   
    //colorbar(zmin, zmax)
    //grayplot(1:255,1:255,intensite)
    //disp(nbpixel)
    //disp(intensite)
    grayplot(1:m,1:n,imgsrc)
endfunction
