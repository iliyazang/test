#!/bin/bash

#install amazon epel and update yum 

sudo amazon-linux-extras install epel -y
sudo yum -y update

#Install Java and Install Jenkins
sudo yum install java-1.8.0-openjdk.x86_64
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins
sudo systemctl start jenkins.service
sudo systemctl enable jenkins.service
sudo yum install git 

