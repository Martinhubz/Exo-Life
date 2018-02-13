//---------Mission B-1-----------
//-------------------------------------
//  Améliorer le contraste de l'image pour faire apparaître l'atmosphère
//

funcprot(0)
getd("../Fonctions")

missPath="./MissionsB/"
nomMission="MissionB-1"

//  PBM--->matrice
img = readpbm(missPath+"Gliese667Cc_surface.pbm")

//Traitement de l'image
rendu = img;

//matrice--->PBM
writepbm(rendu,"./Rendus/"+nomMission+".pbm");
