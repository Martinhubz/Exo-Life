//---------Mission A-1-----------
//-------------------------------------
//  Déterminer la zone où atterir
//  Trouver les coordonnées des points les plus plats (plus haut niveau de gris)
//

funcprot(0)
getd("../Fonctions")

missPath="./"
nomMission="MissionB-1"

//  PBM--->matrice
img = readpbm(missPath+"Encelade_surface.pbm")

//Traitement de l'image
rendu = img;

//matrice--->PBM
writepbm(rendu,"../Rendus/"+nomMission+".pbm");
