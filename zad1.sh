#!/bin/bash
cd ~
mkdir cw1
cd cw1
echo "życie mnie mnie">plik.txt
mkdir test
cp plik.txt test/test
mv plik.txt plik2.txt
cp -r test test2
echo "Katalogi stworzono poprawnie"
cd ~
echo "Powrócono do katalogu domowego"
rm -rf cw1
echo "usunięto katalog cw1"