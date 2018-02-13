function image = eclaircir(img, multiplicateur)
    [width,height]=size(img)
    for i=1:height
        for j=1:width
            if img(j,i) > 0
                image(j,i) = img(j,i)*multiplicateur
            end
        end
    end
endfunction
