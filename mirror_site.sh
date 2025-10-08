#!/bin/bash
# Script para espelhar o site AgroFácil em uma pasta local.
# Requer wget instalado.
# Uso: bash mirror_site.sh
TARGET_DIR="agrofacil_mirror"
URL="https://agrofacil-simples-gestao-01682.lovable.app/"

mkdir -p "$TARGET_DIR"
cd "$TARGET_DIR"

# Comando recomendado: espelha o site, pega requisites de página (CSS/JS/img), converte links, e segue hosts se necessário.
wget \
  --mirror \
  --convert-links \
  --adjust-extension \
  --page-requisites \
  --span-hosts \
  --no-parent \
  --execute robots=off \
  --wait=1 \
  --limit-rate=100k \
  "$URL"

echo "Espelhamento concluído em $(pwd)/$TARGET_DIR (ou dentro da pasta criada)."
