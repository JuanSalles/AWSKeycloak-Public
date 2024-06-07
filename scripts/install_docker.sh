#!/bin/bash

# Atualize todos os pacotes
sudo yum update -y

# Instale o Docker
sudo yum install docker -y

# Inicie o serviço Docker
sudo service docker start

# Adicione o usuário ec2-user ao grupo docker para que você possa executar comandos Docker sem usar sudo
sudo usermod -a -G docker ec2-user

# Certifique-se de que o Docker seja iniciado em cada reinicialização do sistema
sudo chkconfig docker on

# Instale o Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo yum install -y libxcrypt-compat

# Torne o Docker Compose executável
sudo chmod +x /usr/local/bin/docker-compose

# Verifique se o Docker e o Docker Compose foram instalados corretamente
docker --version
docker-compose --version