#!/bin/sh

MURMUR
MURMUR_INI="$MURMUR_FOLDER/murmur.ini"

sed -i -e "s|^database=.*|database=/var/lib/murmur/murmur.sqlite|g" "$MURMUR_INI"

"$MURMUR_FOLDER/murmur.x86" -fg -ini "$MURMUR_INI"