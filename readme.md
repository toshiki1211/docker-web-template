# 構成
- centOS7
- apache 2.4

# ローカル環境
vagrant + docker環境

# 環境構築手順
```
vagrant up --provision
vagrant ssh
cd /var/www/html/vagrant/
sudo docker-compose up --build
```