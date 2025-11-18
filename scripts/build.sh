#!/bin/bash
echo "--- ÉTAPE: Build ---"
# Créer un dossier de distribution
mkdir -p dist
# Copier les fichiers statiques dans le dossier de distribution
cp index.html dist/
echo "Build terminé. Fichiers dans dist/."
