#!/bin/sh

echo "centos 7 docker environment initialization"

echo "remove previous docker verions"
yum remove docker* && rm -rf /var/lib/docker

echo "add repository docker-ce"
yum install yum-utils -y
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

echo "install docker-ce packages"
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

echo "docker service enable and start"
systemctl start docker
systemctl enable docker

echo "add chungnam to docker group"
groupadd docker
usermod -aG docker root

usermod -aG docker datahub

echo "install docker-compose"
COMPOSE_VERSION=v2.17.2 bash -eu << '__EOT__'
echo ${COMPOSE_VERSION}
curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chown root:docker /usr/local/bin/docker-compose
chmod ug+x /usr/local/bin/docker-compose
update-alternatives --install /usr/bin/docker-compose docker-compose /usr/local/bin/docker-compose 10
__EOT__
