//---------Filtre Gaussien----------

function render=gaussien(imgsrc)
    
    filtregauss=[1 4 7 4 1;4 16 26 16 4;7 26 41 26 7;4 16 26 16 4;1 4 7 4 1]
    
    render = convolution(imgsrc,filtregauss,273)
endfunction
