//--------Mission X-2 -------------------

getd('../Fonctions/')

img=readpbm('./Gliese 581d.pbm')

[wd,he] = size(img)
maxSize=max(size(img))
i=1
taille = 0
while taille<maxSize
    taille=2^i
    i = i + 1
end

imgT=zeros(taille,taille)

for i=1:wd
    for j=1:he
        imgT(i,j)=img(i,j)
    end
end

imgFour=fft(imgT)

[wdFour,heFour]=size(imgFour)

rang=25
// Coin haut gauche
for i=1:rang
    for j=1:rang
        imgFour(i,j)=0
    end
end

//Coin haut droit
for i=wdFour:-1:wdFour-rang
    for j=1:rang
        imgFour(i,j)=0
    end
end

//Coin bas gauche
for i=1:rang
    for j=heFour:-1:heFour-rang
        imgFour(i,j)=0
    end
end

//Coin bas droite
for i=wdFour:-1:wdFour-rang
    for j=heFour:-1:heFour-rang
        imgFour(i,j)=0
    end
end



imgResult=ifft(imgFour)

imgFinal=zeros(wd,he)

for i=1:wd
    for j=1:he
        imgFinal(i,j)=real(imgResult(i,j))
    end
end


subimg=soustraction(img,colorRange(imgFinal,0,100))
imgout=median(subimg,25)
imgout=gaussien(imgout)
display_gray(imgout)
writepbm(imgout,"../Rendus/MissionX2.pbm")

imgReal=real(imgFour)
imgImag=imag(imgFour)
