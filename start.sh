#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install wget -y
#wget $DL_URL
#unzip $Pack_Name.zip
#cd $Open_Pack_Name
#sudo chmod 777 gradlew
#sudo rm -rf /usr/lib/jvm/*
#sudo apt install openjdk-8-jdk
sudo update-java-alternatives -s temurin-8-jdk-amd64
unset JAVA_HOME
sudo env
JAVA_HOME=/usr/lib/jvm/temurin-8-jdk-amd64
export JAVA_HOME
sudo env
java -version
sudo gradle -Dorg.gradle.java.home='/usr/lib/jvm/temurin-8-jdk-amd64' -v
#sudo ./gradlew build -Dfile.encoding=UTF-8 --info
#sudo ./gradlew build -Dorg.gradle.java.home='/usr/lib/jvm/adoptopenjdk-8-hotspot-amd64' -Dfile.encoding=UTF-8 --info
cp -r build/libs /opt/libs


# adoptopenjdk-11-hotspot-amd64  1111       /usr/lib/jvm/adoptopenjdk-11-hotspot-amd64
# adoptopenjdk-8-hotspot-amd64   1081       /usr/lib/jvm/adoptopenjdk-8-hotspot-amd64
# temurin-11-jdk-amd64           1111       /usr/lib/jvm/temurin-11-jdk-amd64
# temurin-17-jdk-amd64           1711       /usr/lib/jvm/temurin-17-jdk-amd64
# temurin-8-jdk-amd64            1081       /usr/lib/jvm/temurin-8-jdk-amd64
