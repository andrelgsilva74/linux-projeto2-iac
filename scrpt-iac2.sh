#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get-upgrade -y
echo "Servidor atualizado com sucesso..."

echo "Instalando o servidor Web..."
apt-get install apache2 -y
echo "Servidor atualizado com sucesso..."

echo "Instalando descompactador unzip..."
apt-get install unzip -y
echo "Unzip instalado com sucesso..."

echo "Baixando arquivos na pasta TMP..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos..."
unzip main.zip

echo "Abrindo diretório de arquivos..."
cd linux-site-dio-main

echo "Copiando arquivos para diretório padrão..."
cp -R * /var/www/html/

