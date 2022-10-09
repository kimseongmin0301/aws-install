echo ''
echo '##############################'
echo 'APT UPDATE'
echo '##############################'
echo ''

sudo apt update

DIR="$( cd "$( dirname "$BASH_SOURCE" )" && pwd -P )"


echo ''
echo '##############################'
echo 'JAVA INSTALL'
echo '##############################'
echo ''

echo -n "JAVA VERSION ? "
read num

chmod +x $DIR/bin/java.sh
$DIR/bin/java.sh $num

echo ''
echo '### SUCCESS JAVA INSTALL ###'
java -version
echo ''



echo ''
echo '##############################'
echo 'TOMCAT INSTALL'
echo '##############################'
echo ''

chmod +x $DIR/bin/tomcat.sh
$DIR/bin/tomcat.sh

echo ''
echo '### SUCCESS TOMCAT INSTALL ###'
/home/ubuntu/tomcat9/bin/version.sh
echo ''



# echo ''
# echo '##############################'
# echo 'DB INSTALL'
# echo '##############################'
# echo ''

# chmod +x $DIR/bin/db.sh
# $DIR/bin/db.sh


echo -n "ENTER ON EXIT..."
read exit