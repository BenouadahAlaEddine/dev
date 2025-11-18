#!/bin/bash
# Le script reçoit l'environnement et la clé API en argument

ENVIRONMENT=$1
API_KEY=$2

echo "--- ÉTAPE: Déploiement vers l'environnement $ENVIRONMENT ---"

# Vérification simple pour simuler des étapes différentes par environnement
if [ "$ENVIRONMENT" == "production" ]; then
  echo "Déploiement en PRODUCTION : Vérification de la clé API..."
  if [ -z "$API_KEY" ]; then
    echo "ERREUR: La clé API de Production est manquante !"
    exit 1
  else
    echo "SUCCÈS: Clé API reçue (masquée) : ${API_KEY:0:4}...${API_KEY: -4}"
    echo "Déploiement critique démarré..."
  fi
else
  echo "Déploiement en STAGING : Aucune clé API spéciale nécessaire."
fi

# Simule la copie des fichiers de build vers l'emplacement final
cp -r dist/* /tmp/$ENVIRONMENT-app/
echo "Déploiement des artefacts terminé dans /tmp/$ENVIRONMENT-app/"
