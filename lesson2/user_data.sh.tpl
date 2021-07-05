#!/bin/bash
sudo snap install docker
sleep 60s 
sudo docker pull jenkins/jenkins
sleep 60s 
sudo docker run -p 8080:8080 --name=jenkins-master2 -d jenkins/jenkins

