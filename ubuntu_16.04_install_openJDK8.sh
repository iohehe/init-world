#! /bin/bash

# reference: https://www.cnblogs.com/HHgy/p/7560561.html

path="/usr/lib/jvm/java-8-openjdk-amd64"

#add ppa
sudo add-apt-repository ppa:openjdk-r/ppa

# update
sudo apt-get update

# install 
sudo update-alternatives --config java

java-version

# write env
export JAVA_HOME=${path}
export JRE_HOME=${JAVA_HOME}/jre  
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib  
export PATH=${JAVA_HOME}/bin:$PATH
