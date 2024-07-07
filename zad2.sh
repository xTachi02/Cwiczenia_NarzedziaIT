#!/bin/bash
echo "Treść pierwszego pliku tekstowego
Lorem ipsum dolor sit amet, consectetur adipiscing elit." > plik1.txt
echo "Treść drugiego pliku tekstowego
Lorem ipsum dolor sit amet, consectetur adipiscing elit." > plik2.txt
echo "Treść trzeciego pliku tekstowego
Lorem ipsum dolor sit amet, consectetur adipiscing elit." > plik3.txt
mkdir folder1 folder2 folder3
mv plik1.txt folder1/
mv plik2.txt folder2/
mv plik3.txt folder3/
echo "Ścieżka oraz zawartość folderu:" > log.txt
tree -a >> log.txt
echo "Informacje nt. plików:" >> log.txt 
wc folder1/plik1.txt folder2/plik2.txt folder3/plik3.txt >> log.txt
ls -lh folder1/plik1.txt folder2/plik2.txt folder3/plik3.txt >> log.txt
echo "Wyszukiwanie wyrazu 'elit' w plikach:" >> log.txt
grep -ri "elit" folder1 folder2 folder3 >> log.txt
echo "Wyszukiwanie wyrazu 'sit' w plikach:" >> log.txt
grep -ri "sit" folder1 folder2 folder3 >> log.txt
cat folder1/plik1.txt folder2/plik2.txt folder3/plik3.txt > suma.txt
sed -n '1!G;h;$p' folder1/plik1.txt folder2/plik2.txt folder3/plik3.txt >> suma.txt