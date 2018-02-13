//-------Contours----------
//Application de filtres par convolution
//      Sobel
//  |-1 -2 -1|  |-1 0 1|
//  | 0  0  0|  |-2 0 2|
//  | 1  2  1|  |-1 0 1|
//
//      Laplace
//  |0  1 0|    |1  1 1|
//  |1 -4 1| OU |1 -8 1|
//  |0  1 0|    |1  1 1|
//
//      Ndif
//  |0 1 0 -1  0|  | 0  1  1  1  0|
//  |1 2 0 -2 -1|  | 1  2  3  2  1|
//  |1 3 0 -3 -1|  | 0  0  0  0  0|
//  |1 2 0 -2 -1|  |-1 -2 -3 -2 -1|
//  |0 1 0 -1  0|  | 0  1  1  1  0|

function rendImg=contours(imgsrc)
    
    [iw,ih]=size(imgsrc)
    rendImg=[]
    
    sobelx=[-1 -2 -1;0 0 0;1 2 1]
    sobely=[-1 0 1;-2 0 2;-1 0 1]
    
    ndifx=[0 1 0 -1 0;1 2 0 -2 -1;1 3 0 -3 -1;1 2 0 -2 -1;0 1 0 -1 0]
    ndify=[0 1 1 1 0;1 2 3 2 1;0 0 0 0 0;-1 -2 -3 -2 -1;0 1 1 1 0]
    
    laplace=[0 1 0;1 -4 1;0 1 0]
    laplace2=[1 1 1;1 -4 1;1 1 1]
    
    filtImgX=convolution(imgsrc,sobelx,5)
    filtImgY=convolution(imgsrc,sobely,5)
    
    //Running through the source image pixels
    for i=1:ih
        for j=1:iw
            
            pixX=filtImgX(j,i)
            pixY=filtImgY(j,i)
            
            if imgsrc(j,i) > 100
                rendImg(j,i) = sqrt(pixX^2 + pixY^2)*5//filtImgX(j,i)
            else
                rendImg(j,i) = 0
            end
            
        end
    end
    
    
endfunction
