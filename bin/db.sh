sudo apt install -y mariadb-server

sudo sed 's/^bind-address/#bind-address/g' /etc/mysql/my.cnf > ./my.cnf
sudo mv ./my.cnf /etc/mysql/my.cnf

sudo service mysql restart