#!/bin/bash

dzien=$1
miesiac=$2

if [ "$#" -ne 2 ]; then
    echo "Podaj argumenty: numerDnia miesiac"
    exit 1
fi

aktualnyrok=$(date +%Y)
wynik=$(date -jf "%Y-%m-%d" "$aktualnyrok-$miesiac-$dzien" "+%A" 2>/dev/null)

if [ $? -ne 0 ]; then
    echo "Błąd: Nieprawidłowe dane"
    echo "Błąd: Nieprawidłowe dane - ${dzien}-${miesiac}-${aktualnyrok}" >> plik2.txt
    exit 1
fi

echo "$wynik"
echo "${dzien}-${miesiac}-${aktualnyrok}: $wynik" >> plik1.txt