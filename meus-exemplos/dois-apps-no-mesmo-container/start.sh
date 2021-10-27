#!/bin/bash

apt-get update
apt-get install -y git
apt-get install -y wget
apt-get install -y unzip
wget https://download.java.net/java/GA/jdk17/0d483333a00540d886896bac774ff48b/35/GPL/openjdk-17_linux-x64_bin.tar.gz && \
	tar xvf openjdk-17_linux-x64_bin.tar.gz && \
	mv jdk-17 /opt/ && \
	echo 'export JAVA_HOME=/opt/jdk-17' >> /root/.bashrc && \
	echo 'export PATH=$PATH:$JAVA_HOME/bin' >> /root/.bashrc && \
	source /root/.bashrc
git clone https://github.com/brunosantanati/docker.git && \
	wget http://dlcdn.apache.org/maven/maven-3/3.8.3/binaries/apache-maven-3.8.3-bin.zip && \
	unzip apache-maven-3.8.3-bin.zip && \
	echo 'export PATH=$PATH:/root/apache-maven-3.8.3/bin' >> /root/.bashrc && \
	source /root/.bashrc
#cd /root/docker/meus-exemplos/dois-apps-no-mesmo-container/app2 && \
#	/root/apache-maven-3.8.3/bin/mvn clean install
#	mvn clean install && \
#	cd target/ && \
#	java -jar app2-0.0.1-SNAPSHOT.jar &
#cd /root/docker/meus-exemplos/dois-apps-no-mesmo-container/app1 && \
#	mvn clean install && \
#	cd target/ && \
#	java -jar app1-0.0.1-SNAPSHOT.jar
