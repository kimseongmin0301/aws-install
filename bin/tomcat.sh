wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.68/bin/apache-tomcat-9.0.68.tar.gz

tar zxvf apache-tomcat-9.0.68.tar.gz
rm apache-tomcat-9.0.68.tar.gz

sudo mv apache-tomcat-9.0.68 /home/ubuntu/tomcat9

sudo sed 's/port="8080"/port="80"/g' /home/ubuntu/tomcat9/conf/server.xml > ./server.xml
sudo mv ./server.xml /home/ubuntu/tomcat9/conf/server.xml

touch tomcat9.service
echo '[Unit]' >> tomcat9.service
echo 'Description=Apache Tomcat Web Application Container' >> tomcat9.service
echo 'After=syslog.target network.target' >> tomcat9.service
echo '' >> tomcat9.service
echo '[Service]' >> tomcat9.service
echo 'Type=forking' >> tomcat9.service
echo '' >> tomcat9.service
echo 'ExecStart=/home/ubuntu/tomcat9/bin/catalina.sh start' >> tomcat9.service
echo 'ExecStop=/home/ubuntu/tomcat9/bin/catalina.sh stop' >> tomcat9.service
echo '' >> tomcat9.service
echo 'User=root' >> tomcat9.service
echo 'Group=root' >> tomcat9.service
echo 'RestartSec=10' >> tomcat9.service
echo 'Restart=always' >> tomcat9.service
echo '' >> tomcat9.service
echo '[Install]' >> tomcat9.service
echo 'WantedBy=multi-user.target' >> tomcat9.service
sudo mv tomcat9.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl enable tomcat9

sudo service tomcat9 restart