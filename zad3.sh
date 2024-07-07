#!/bin/bash
mkdir folder
touch folder/plik.txt
cd folder
ps aux >> plik.txt
df -h >> plik.txt
du -sm * | sort -n >> plik.txt