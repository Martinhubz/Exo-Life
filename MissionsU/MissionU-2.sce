//---------Mission U-2-----------
//-------------------------------------
//  Identifier le corps étranger
//  en spécifiant les contours
//

funcprot(0)
getd("../Fonctions")

missPath="./"
nomMission="MissionU-2"

//  PBM--->matrice
img = readpbm(missPath+"U2_surface.pbm")

//Traitement de l'image
rendu = contours(img);

//matrice--->PBM
writepbm(rendu,"../Rendus/"+nomMission+".pbm");
