#!/bin/bash
# Description: To install sonarqube on centos7
# Author: James Flavien and Clement
# Date: 02/23/22

echo "Java 11 installation"
sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y

echo "Download SonarQube latest versions on your server"
cd /opt
sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip

echo "Extract packages"
sudo yum install unzip -y
sudo unzip /opt/sonarqube-9.3.0.51899.zip

echo "Change ownership to the user and Switch to Linux binaries directory to start service"
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start


# run the command below to reboot the sonarqube server
# bash sonar.sh start