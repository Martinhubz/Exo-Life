 //---------Mission A-2-----------
//-------------------------------------
//  Déterminer le taux de gaz de la planète
//

funcprot(0)
getd("../Fonctions")

missPath="./"
nomMission="MissionA-1"

//  PBM--->matrice
img = readpbm(missPath+"Mars_surface.pbm");

//Traitement de l'image
level = gazLevel(img);
disp('%',level,"le taux de gaz présent sur la planète est de ")


//matrice--->PBM
//writepbm(rendu,"./Rendus/"+nomMission+".pbm");
