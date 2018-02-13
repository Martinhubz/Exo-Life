//---------Mission A-4-----------
//-------------------------------------
//  Améliorer la qualité de l'image
//  Utilisation d'un filtre médian pour supprimer le bruit
//  
//

funcprot(0)
getd("../Fonctions")

missPath="./"
nomMission="MissionA-4"

//  PBM--->matrice
img = readpbm(missPath+"Jupiter1.pbm")

//Traitement de l'image
rendu = medianFilter(img);

//matrice--->PBM
writepbm(rendu,"../Rendus/" + nomMission + ".pbm");
