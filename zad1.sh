#!/bin/bash
imie=$1
nazwisko=$2
rok_urodzenia=$3
nazwapliku=$4
# 
if [[ "$imie" == "" ]]; then
	read -p "Podaj imię: " imie
fi
if [[ "$nazwisko" == "" ]]; then 
	read -p "Podaj nazwisko: " nazwisko
fi
if [[ "$rok_urodzenia" == "" ]]; then
	read -p "Podaj rok urodzenia: " rok_urodzenia
fi
if [[ "$nazwapliku" == "" ]]; then 
	read -p "Podaj nazwę nowego pliku: " nazwapliku
fi

aktualnyRok=$(date +%Y)
wiekUsera=$[$aktualnyRok-$rok_urodzenia]

wiekfunkcja=1
for ((i=1; i<=wiekUsera; i++)); do
    wiekfunkcja=$((wiekfunkcja * i))
done

rekurencja() {
    if (( $1 <= 1 )); then
        echo 1
    else
        local poprzednia=$(rekurencja $(( $1 - 1 )))
        echo $(( $1 * poprzednia ))
    fi
}
wiekrekurencja=$(rekurencja $wiekUsera)

echo "Witaj $imie $nazwisko urodzonx w $rok_urodzenia roku. Nazwa pliku do którego to zostanie zapisane to $nazwapliku. Silnie twojego wieku obliczono przy pomocy dwóch niezależnych od siebie funkcji, ich wyniki to  $wiekrekurencja oraz $wiekfunkcja"
echo "Imię: $imie, \nNazwisko: $nazwisko, \nRok Urodzenia: $rok_urodzenia, \nWiek usera: $wiekUsera \nSilnia w pętli: $wiekfunkcja \nSilnia rekurencyjna: $wiekrekurencja" > $nazwapliku.txt