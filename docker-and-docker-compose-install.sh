#!/bin/sh

set -eu

#################################
##### Parameter #################
#################################
DOCKER_COMPOSE_VERSION=2.3.3
# See https://github.com/docker/compose/releases/
#################################

### Docker Installation

echo "[INFO] Docker Installation Start."

dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
dnf -y install --nobest docker-ce docker-ce-cli

systemctl enable docker
systemctl start docker

echo "[INFO] Docker Installation End."



### Docker Compose Installation

echo "[INFO] Docker Compose Installation Start."

dnf -y install wget
wget https://github.com/docker/compose/releases/download/v${DOCKER_COMPOSE_VERSION}/docker-compose-Linux-x86_64
mv docker-compose-Linux-x86_64 /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

echo "[INFO] Docker Compose Installation End."



### Version Infomation

echo "************ Docker Version ************"
docker --version
echo "******** Docker Compose Version ********"
docker-compose --version

