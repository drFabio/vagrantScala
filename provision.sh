#!/bin/sh
#JAVA
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install oracle-java8-set-default
#SCALA
wget http://downloads.typesafe.com/scala/2.11.6/scala-2.11.6.tgz
tar -zxvf scala-2.11.6.tgz
mv scala-2.11.6 /usr/local/share/scala
export SCALA_HOME	/usr/local/share/scala
export PATH=$PATH:$SCALA_HOME/bin
#SBT
echo "deb http://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-get update
sudo apt-get install sbt