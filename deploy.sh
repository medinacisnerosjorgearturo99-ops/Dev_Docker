#!/bin/bash

# Variables de configuración
BUCKET_NAME="nombre-de-tu-bucket-s3"
SOURCE_DIR="./build" # Cambia esto por la carpeta que contiene tus archivos estáticos

echo "Iniciando despliegue hacia S3..."

# Sincroniza los archivos. '--delete' asegura que se borren del bucket los archivos que ya no están en tu código.
aws s3 sync $SOURCE_DIR s3://$BUCKET_NAME/ --delete

echo "¡Despliegue finalizado exitosamente!"