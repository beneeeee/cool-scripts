#!/bin/bash

# Schleife durch die Videos im Verzeichnis
for image in ./*.mp4; do
    # Extrahiere das FileCreateDate-Datum
    date_created=$(exiftool -s -s -s -FileCreateDate -FileCreateDate "$image")
    # Aktualisiere das FileModifyDate mit FileCreateDate
    exiftool "-FileModifyDate=$date_created" "$image"
done
