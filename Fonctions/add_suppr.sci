function imgFinal = add(img1, img2)
    [width,height]=size(img1)
    for i=1:height
        for j=1:width
            imgFinal(j,i) =  img1(j,i) + img2(j,i)
        end
    end
endfunction

function imgFinal = suppr(img1, img2)
    [width,height]=size(img1)
    for i=1:height
        for j=1:width
            imgFinal(j,i) =  img1(j,i) - img2(j,i)
        end
    end
endfunction
