#!/bin/bash
echo ""
echo "-------------------------------"
echo "Création du réseau bridge net-sae61"
echo ""
./create_network.sh
echo ""
echo "-------------------------------"
echo "Lancement du conteneur SQL sae61-sql"
echo ""
./run_mysql.sh
clear
echo "Veuillez patienter avant le remplissage de la BDD... (20 secondes)"
sleep 20
echo ""
echo "-------------------------------"
echo "Création de la BDD demosql"
echo ""
./filldb.sh
echo ""
echo "-------------------------------"
echo "Création de l'image im-sae61"
echo ""
./build_image.sh
echo ""
echo "-------------------------------"
echo "Lancement du conteneur Flask sae61-app"
echo ""
./run-app.sh
echo ""
echo "-------------------------------"
echo "Affichage des conteneurs lancés"
echo ""
docker ps
