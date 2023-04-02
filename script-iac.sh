#!/bin/bash

echo "Atualização do server"
apt-get update
apt-get upgrade -y
echo "Instalando Packages"
apt-get install apache2 -y
apt-get install unzip -y
echo "Downloading project"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Unziping project"
unzip main.zip
echo "Transferindo arquivos"
cd linux-site-dio-main
cp -R * /var/www/html/
echo "OK"
