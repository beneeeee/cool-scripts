#!/bin/bash

# Schleife durch die Bilder im Verzeichnis
for image in ./*.jpg; do
    # Extrahiere das DateCreated-Datum
    date_created=$(exiftool -s -s -s -d "%Y:%m:%d %H:%M:%S" -DateTimeOriginal -DateTimeOriginal "$image")

    # Aktualisiere das DateTimeOriginal mit DateCreated
    exiftool "-DateTimeOriginal=$date_created" "$image"
done