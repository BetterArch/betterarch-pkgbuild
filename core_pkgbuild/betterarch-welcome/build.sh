#!/bin/sh
echo "################################################################"
echo "################### Making the package"
echo "################################################################"
makepkg -sc --noconfirm
yes| yay -c
mkdir -p ../../x86_64
mv *.pkg.tar.zst ../../x86_64
echo "################################################################"
echo "################### Moved the .zst file to x86_64 folder"
echo "################################################################"
find . -type f -path "src/" -path "pkg/" -delete
echo "################################################################"
echo "################### Removed all redundant files and folders"
echo "################################################################"
