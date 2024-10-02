#!/bin/bash

echo "Iniciando processo"
apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Baixando e iniciando arquivos da aplicação"

cd /tmp
wget http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

