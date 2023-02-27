#! /bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e Copiando"
cd /tmp
wget https://github.com/Alpha19i/calculadoraSimples/archive/refs/heads/main.zip
unzip main.zip
cd calculadoraSimples-main
cp -R * /var/www/html/