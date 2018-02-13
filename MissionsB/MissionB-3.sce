//---------Mission B-3-----------
//-------------------------------------
//  Séparer les contrastes pour identifier les zones en fonction
//

funcprot(0)
getd("../Fonctions")

missPath="./MissionsB/"
nomMission="MissionB-3"

//  PBM--->matrice
img = readpbm(missPath+"HD215497.pbm")

//Traitement de l'image
rendu = img;

//matrice--->PBM
writepbm(rendu,"../Rendus/"+nomMission+".pbm");
