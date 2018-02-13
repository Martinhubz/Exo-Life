//---------Mission A-3-----------
//-------------------------------------
//  Cartographier les réseaux d'eau chaude sous la surface
//  Faire apparaîtres les pixels les plus clairs
//

funcprot(0)
getd("./Fonctions")

missPath="MissionsA/"
nomMission="MissionA-3"

//  PBM--->matrice
img = readpbm(missPath+"Europa_surface.pbm");

//Traitement de l'image
rendu = ;

//matrice--->PBM
writepbm(rendu,"./Rendus/"+nomMission+".pbm");
