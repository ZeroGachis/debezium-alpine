#!/bin/sh

export MAVEN_URL=https://repo1.maven.org/maven2/io/netty/netty-common/4.1.119.Final
export VER=4.1.119.Final
export CURL="curl -o"
rm -f $KAFKA_HOME/libs/netty*

$CURL $KAFKA_HOME/libs/netty-buffer-$VER.jar $MAVEN_URL/netty-buffer-$VER.jar
$CURL $KAFKA_HOME/libs/netty-codec-$VER.jar $MAVEN_URL/netty-codec-$VER.jar
$CURL $KAFKA_HOME/libs/netty-common-$VER.jar $MAVEN_URL/netty-common-$VER.jar
$CURL $KAFKA_HOME/libs/netty-handler-$VER.jar $MAVEN_URL/netty-handler-$VER.jar
$CURL $KAFKA_HOME/libs/netty-resolver-$VER.jar $MAVEN_URL/netty-resolver-$VER.jar
$CURL $KAFKA_HOME/libs/netty-transport-$VER.jar $MAVEN_URL/netty-transport-$VER.jar
$CURL $KAFKA_HOME/libs/netty-transport-class-epoll-$VER.jar $MAVEN_URL/netty-transport-class-epoll-$VER.jar
$CURL $KAFKA_HOME/libs/netty-transport-native-epoll-$VER.jar $MAVEN_URL/netty-transport-native-epoll-$VER.jar
$CURL $KAFKA_HOME/libs/netty-transport-natie-unix-common-$VER.jar $MAVEN_URL/netty-transport-natie-unix-common-$VER.jar
