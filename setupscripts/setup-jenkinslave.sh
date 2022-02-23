#!/bin/bash

#java_ver="openjdk-8-jdk"
java_ver="openjdk-11-jdk"
sudo apt update

echo "Install $java_ver"
sudo apt-get install -y $java_ver
echo "INSTALLED JAVA................." 
java -version

#jenkins
useradd -d /var/lib/jenkins  -s /bin/bash jenkins
mkdir /var/lib/jenkins
chown jenkins: /var/lib/jenkins

