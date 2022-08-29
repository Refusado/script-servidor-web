#!/bin/bash

echo "Atualizando servidor..."
apt-get update
apt-get upgrade -y
apt-get install apach2 -y
apt-get install unzip -y

echo "Baixando e transferindo arquivos de aplicação de base..."
cd /tmp
wget https://github.com/Refusado/filmes-em-cartaz/archive/refs/heads/main.zip
unzip main.zip

cd filmes-em-cartaz
cp -R * /var/www/html/