#!/bin/bash

### Script pour insérer une ligne à chaque minute dans le fichier /tmp/mon_servoce.log contenant la ligne "Hello World ! Il est maintenant .. " (complétée par l'heure du système)

# Boucle infinie pour insérer le segment à chaque minute
while true; do
    # On récupère l'heure actuelle
    HEURE_ACTUELLE=$(date +"%H:%M:%S %Y-%m-%d")

    # Écriture dans le fichier /tmp/mon_service.log
    echo "Hello World ! Il est maintenant $HEURE_ACTUELLE" >> /tmp/mon_service.log

    # On attend la prochaine minute révolue pour réitérer 
    sleep 60
done
