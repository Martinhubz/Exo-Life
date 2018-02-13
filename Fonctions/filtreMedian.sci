//---Filtre Médian ---
//1.Recherche des valeurs alentours
//2.Tri de ces valeurs
//2.Prend la valeur médiane
//
//      Matrice 3x3     
//
//

function rendImg=medianFilter(imgsrc)
    
    //image width & height
    [w,h]=size(imgsrc)
    
    rendImg=zeros(w,h);
    
    counter=1
    
    neighborsMatrix=[0;0;0;0;0;0;0;0;0]      //matrice des voisins
    
    for n=2:h-1   //pixel per pixel - rows
        for m=2:w-1   //columns
            
          //if (imgsrc(m,n) == 0 | imgsrc(m,n) == 255)
            for i=-1:1      //discovers the surrounding pixel values
                for j=-1:1
                    
                    //neighborsMatrix(counter)=m+j
                    neighborsMatrix(counter)=imgsrc(m+i,n+j)
                    counter=counter+1
                    //disp("i",i,j)
                end 
            end
            
                neighborsMatrix=gsort(neighborsMatrix)     
                rendImg(m,n)=neighborsMatrix(5)     //image current pixel = median of neighbors' value
          //else
              //rendImg(m,n)=imgsrc(m,n);
          //end
          counter=1
            //disp(imgDim(2))
        end
    end
    
    
endfunction

