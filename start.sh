#!/bin/bash
echo "Starte Clore GPU Worker Setup..."

# Docker Container für Clore starten
docker run -d \
  --gpus all \
  -e CUDNN_VERSION=8 \
  -e NVIDIA_VISIBLE_DEVICES=all \
  -e API_KEY="HIER-DEIN-CLORE-API-KEY-EINFÜGEN" \
  cloreai/clore-gpu-worker:latest
