#!/bin/sh

echo "remove previous docker verions"
yum remove docker* && rm -rf /var/lib/docker

yum install -y yum-utils
yum remove runc podman

yum-config-manager —add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

systemctl start docker
systemctl enable docker

echo "add datahub to docker group"
groupadd docker
usermod -aG docker datahub