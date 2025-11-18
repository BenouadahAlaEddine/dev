#!/bin/bash
echo "--- ÉTAPE: Test ---"
# Vérifier la présence du fichier index.html dans le dossier de build
if [ -f dist/index.html ]; then
  echo "Test Réussi : index.html est présent dans le dossier de build."
  exit 0
else
  echo "Test Échoué : index.html manquant."
  exit 1
fi
