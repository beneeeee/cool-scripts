#!/bin/bash

# Schleife durch die Bilder im Verzeichnis
for image in ./*.mp4; do
    # Extrahiere das DateCreated-Datum
    date_created=$(exiftool -s -s -s -FileCreateDate -FileCreateDate "$image")
    # Aktualisiere das DateTimeOriginal mit DateCreated
    exiftool "-AllDates=$date_created" "$image"
done