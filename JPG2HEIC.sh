#!/bin/bash

for X in *.jpg; do
    WO_JPG="${X%.jpg}"
    NEW="${WO_JPG}.heic"
    META="${WO_JPG}.xmp"

    echo "$X --> $NEW"
    magick "$X" "$NEW"

    #exiftool -overwrite_original_in_place -tagsFromFile "$X" -all:all "$NEW"
    exiftool -m -overwrite_original_in_place -tagsFromFile "$X" -all:all "$NEW"

    if test -f "$META"; then
        #exiftool -overwrite_original_in_place -tagsFromFile "$META" -all:all "$NEW"
        exiftool -m -overwrite_original_in_place -tagsFromFile "$META" -all:all "$NEW"
    fi
done
