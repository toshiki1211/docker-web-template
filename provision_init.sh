#!/bin/sh

sudo yum update

# 公式のリポジトリからダウンロード
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum -y install docker-ce

# dockerの起動
sudo systemctl start docker
systemctl status docker
sudo systemctl enable docker

# docker-composeのインストール
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo mv /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose

