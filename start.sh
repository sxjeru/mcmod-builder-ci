#!/bin/sh
sudo apt update -y
sudo apt upgrade -y
sudo apt install wget -y
wget $DL_URL
unzip $Pack_Name.zip
cd $Open_Pack_Name
sudo chmod 777 gradlew
#sudo rm -rf /usr/lib/jvm/*
#sudo apt install openjdk-8-jdk
#unset JAVA_HOME
#JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/bin/java
#export JAVA_HOME
#sudo env
sudo update-java-alternatives -s adoptopenjdk-8-hotspot-amd64
java -version
sudo gradle -v
sudo ./gradlew build -Dfile.encoding=UTF-8 --info
#sudo ./gradlew build -Dorg.gradle.java.home='/usr/lib/jvm/java-8-openjdk-amd64/bin/java' -Dfile.encoding=UTF-8 --info
cp -r build/libs /opt/libs


# adoptopenjdk-11-hotspot-amd64  1111       /usr/lib/jvm/adoptopenjdk-11-hotspot-amd64
# adoptopenjdk-8-hotspot-amd64   1081       /usr/lib/jvm/adoptopenjdk-8-hotspot-amd64
# temurin-11-jdk-amd64           1111       /usr/lib/jvm/temurin-11-jdk-amd64
# temurin-17-jdk-amd64           1711       /usr/lib/jvm/temurin-17-jdk-amd64
# temurin-8-jdk-amd64            1081       /usr/lib/jvm/temurin-8-jdk-amd64
