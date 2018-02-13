//Convolution spatiale
//

function rendImg=convolution(imgsrc,filtre,coeff)
    
    
    //Tailles de l'image et du masque
    [iw,ih]=size(imgsrc)
    [fw,fh]=size(filtre)
    
    rendImg=zeros(ih,iw)
    
    cfx=ceil(fw/2)
    cfy=ceil(fh/2)
    
    disp(cfx)
    disp(cfy)
    
    for h=1:ih      //img lines
        for w=1:iw  //img columns
            
            mpix = 0    //modified pixel
            skip = 0    //boolean that indicates if neighbor was inbound
            
            for x=1:fh      //filter lines
                for y=1:fw  //filter columns
                    
                    //neighbors pixel's coordinates 
                    nx = w+(x-cfx)
                    ny = h+(y-cfy)
                    
                    //test if the neighbor is inbound of the image
                    if nx > 0 & nx < iw & ny > 0 & ny < ih
                        then
                        pix = imgsrc(nx,ny) //gets neighbor value
                        mpix = mpix + (filtre(x,y)*pix)
                    else
                        skip = 1
                    end
                end
            end
            
            if skip == 0    //the neighbor was inbound
                then
                mpix = round(mpix/coeff)
                rendImg(w,h) = mpix
            else
                rendImg(w,h) = 0
            end
        end
    end
    
    
    

endfunction
    
