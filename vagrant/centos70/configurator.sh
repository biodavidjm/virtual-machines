#!/usr/bin/env bash
 sudo  yum -y install httpd
 sudo systemctl start httpd
 sudo systemctl enable httpd
 sudo yum -y install docker --disablerepo=extras
 sudo -i
 curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
 chmod +x /usr/local/bin/docker-compose
# It is recommended to disable firewald on centos when running docker
 sudo systemctl stop firewalld.service
 sudo systemctl disable firewalld.service
 sudo systemctl enable docker.service
 sudo systemctl start docker.service
