//Fonction to isolate a specific color range
//imgsrc : The source image to analyse
//rmin : the minimum color
//rmax : the maximum color
function render=colorRange(imgsrc,rmin,rmax)
    //The size of the image
    [wd,he]=size(imgsrc);
    //Create an empty image
    render = zeros(wd,he);
    //For each lines
    for i=1:he
        //For each columns
        for j=1:wd
            pix = imgsrc(j,i);
            if pix < rmax & pix > rmin then
                render(j,i) = pix;
            end
        end
    end
endfunction
