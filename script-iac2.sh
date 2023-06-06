#!/bin/bash

echo "Atualizando o servidor Linux Ubuntu..."

apt-get update
apt-get upgrade -y

echo "Instalando Apache2..."

apt install apache2 -y

echo "Instalando unzip..."

apt install unzip -y

echo "Baixando aplicação pelo endereço para o dir tmp..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "extraindo arquivos .zip..."

unzip main.zip

echo "Monvendo os arquivos para pasta html do apache... " 

cd linux-site-dio-main
cp -R * /var/www/html







