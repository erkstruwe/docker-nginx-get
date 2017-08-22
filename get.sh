#!/bin/bash
echo Downloading and decompressing $1
curl $1 > temp.archive
7z x -y -v temp.archive
rm -f temp.archive
nginx -g 'daemon off;'