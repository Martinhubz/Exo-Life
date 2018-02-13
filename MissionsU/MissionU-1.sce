//---------Mission U-1-----------
//-------------------------------------
//  Identifier les contours 
//  pour déterminer la présence d'un éventuel réseau routier
//

funcprot(0)
getd("../Fonctions")

missPath="./"
nomMission="MissionU-1"

//  PBM--->matrice
img = readpbm(missPath+"U1_surface.pbm")

//Traitement de l'image
//rendu = medianFilter(img)
rendu = gaussien(img);
rendu = contours(rendu);

//matrice--->PBM
writepbm(rendu,"../Rendus/"+nomMission+"2.pbm");
