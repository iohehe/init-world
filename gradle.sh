#! /bin/bash

# reference: https://linuxize.com/post/how-to-install-gradle-on-ubuntu-18-04/

version=3.0

wget https://services.gradle.org/distributions/gradle-${version}-bin.zip -P /tmp

sudo unzip -d /opt/gradle /tmp/gradle-*.zip

ls /opt/gradle/gradle-${version}

export GRADLE_HOME=/opt/gradle/gradle-${version}
export PATH=${GRADLE_HOME}/bin:${PATH}

gradle -v
