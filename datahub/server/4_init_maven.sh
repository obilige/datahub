#!/bin/bash

wget https://dlcdn.apache.org/maven/maven-3/3.9.5/binaries/apache-maven-3.9.5-bin.tar.gz
tar xf apache-maven-3.9.5-bin.tar.gz -C /opt
ln -s /opt/apache-maven-3.9.5 /opt/maven

echo '# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

JAVA_HOME=/usr/lib/jvm/jre-openjdk
M2_HOME=/opt/maven
MAVEN_HOME=/opt/maven
PATH=${M2_HOME}/bin:${PATH}

export JAVA_HOME
export M2_HOME
export MAVEN_HOME
export PATH' > ~/.bash_profile

source ~/.bash_profile


