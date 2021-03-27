# jpg2heic
Bulk convert jpg images to HEIC/HEIF with metadata in Bash.

### Preparation

```bash
apt install exiftool imagemagick
```

### Script
```bash
#! /bin/bash

for x in *.jpg; do
    echo "$x"
#    magick "$x" "${x%.jpg}.heic"
    exiftool -overwrite_original -tagsFromFile "$x" -all:all "${x%.jpg}.heic"

    XMP="${x%.jpg}.XMP"
    if test -f "$XMP"; then
        exiftool -overwrite_original -tagsFromFile "$XMP" -all:all "${x%.jpg}.heic"
    fi  
done


for x in *.JPG; do
    echo "$x"
#    magick "$x" "${x%.JPG}.heic"
    exiftool -overwrite_original -tagsFromFile "$x" -all:all "${x%.JPG}.heic"

    XMP="${x%.JPG}.XMP"
    if test -f "$XMP"; then
        exiftool -overwrite_original -tagsFromFile "$XMP" -all:all "${x%.JPG}.heic"
    fi  
done
```

#### forked from fotock
https://github.com/fotock/jpg2heic
