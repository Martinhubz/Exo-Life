function image = lineaire(img)
    [width,height]=size(img)
    table = []
    for i=0:255
        table(i+1) = 255*(i-min(img))/(max(img)-min(img))
    end

    for i=1:height
        for j=1:width
            image(j,i) = table(img(j,i) + 1)
        end
    end
endfunction
