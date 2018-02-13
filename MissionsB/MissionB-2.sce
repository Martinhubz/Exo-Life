//---------Mission B-2-----------
//-------------------------------------
//  Améliorer le contraste de l'image
//

funcprot(0)
getd("../Fonctions")

missPath="./MissionsB/"
nomMission="MissionB-2"

//  PBM--->matrice
img = readpbm(missPath+"GD61.pbm")

//Traitement de l'image
rendu = img;

//matrice--->PBM
writepbm(rendu,"./Rendus/"+nomMission+".pbm");
