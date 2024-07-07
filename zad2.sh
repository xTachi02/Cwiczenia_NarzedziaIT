#!/bin/bash

if [ -z "$1" ]; then
    read -p "Podaj nazwę pliku: " nazwapliku
else
    nazwapliku="$1"
fi

if [[ "$nazwapliku" != *.txt ]]; then
    nazwapliku="${nazwapliku}.txt"
fi
echo "$nazwapliku"

if [ ! -e "Zad1.sh" ]; then
	echo "Plik Zad1 nie istnieje"
	exit 1
else 
	echo "Plik Zad1 istnieje"
fi

sciezkaPliku=$(dirname "($readlink -f "$0")")
if [[ ":$PATH:" = *"$sciezkaPliku"*  ]]; then
	echo "Ścieżka jest w pliku PATH"
else
	echo "Ścieżki nie ma w pliku PATH"
	export PATH="$PATH:sciezkaPliku"
	echo "Ale już została dodana"
fi

nowyfolder="daneUsera"
if [ -d "$nowyfolder" ]; then
    rm -r "$nowyfolder"
    echo "Istniejący katalog $nowyfolder został usunięty."
fi

mkdir "$nowyfolder"
mv "$nazwapliku" "$nowyfolder"
ls >> "$nowyfolder/$nazwapliku"
cat "$nowyfolder/$nazwapliku"