#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install wget -y
#wget $DL_URL
#unzip $Pack_Name.zip
#cd $Open_Pack_Name
sudo chmod 777 gradlew
set JAVA_HOME=/usr/lib/jvm/temurin-8-jdk-amd64/bin/java
java -version
#sudo ./gradlew build -Dfile.encoding=UTF-8 --info
cp -r build/libs /opt/libs
