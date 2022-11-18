#!/bin/bash

echo "Atualizando o servidor..."
echo "========================="
apt-get update -y
apt-get upgrade -y

echo "Instalando serviço Apache..."
echo "========================="
apt-get install apache2 -y

echo "Instalando pacote Unzip..."
echo "========================="
apt-get install unzip -y

echo "Baixando aplicação no repositório GIT..."
echo "========================="
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Movendo aplicação para diretório Apache"
echo "========================="
unzip /tmp/main.zip
cd  /tmp/linux-site-dio-main
cp -r * /var/www/html -v

echo "Reiniciando servidor..."
echo "========================="
reboot
