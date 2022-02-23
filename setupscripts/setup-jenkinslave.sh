#!/bin/bash

#java_ver="openjdk-8-jdk"
java_ver="openjdk-11-jdk"
sudo apt update

echo "Install $java_ver"
sudo apt-get install -y $java_ver
echo "INSTALLED JAVA................." 
java -version

#jenkins user creation
useradd -d /var/lib/jenkins  -s /bin/bash jenkins
mkdir /var/lib/jenkins
chown jenkins: /var/lib/jenkins

#create ssh key 
runuser -l  jenkins  -c 'ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa <<< y'
runuser -l  jenkins  -c 'cp ssh/id_rsa.pub /var/lib/jenkins/.ssh/authorized_keys'

