// use :
// image =  coordOfValue(img, value)
//
// image =  coordUnderValue(img, value)
// image = coordUnderValue(img, max(img))
//
// image =  coordUpperValue(img, value)
// image = coordUpperValue(img, min(img))

function coord=coordOfValue(imgsrc,value)
    pos = 1
    [width,height]=size(imgsrc)
    for i=1:height
        for j=1:width
            if imgsrc(j,i) == value 
                coord(pos, 1) = j
                coord(pos, 2) = i
                pos = pos + 1
            end
        end
    end
endfunction

function coord=coordUnderValue(imgsrc,value)
    [width,height]=size(imgsrc)
    for i=1:height
        for j=1:width
            if imgsrc(j,i) < value 
                imgsrc(j,i) = 0
            end
        end
    end
    coord = imgsrc
endfunction

function coord=coordUpperValue(imgsrc,value)
    [width,height]=size(imgsrc)
    for i=1:height
        for j=1:width
            if imgsrc(j,i) > value 
                imgsrc(j,i) = 255
            end
        end
    end
    coord = imgsrc
endfunction
