#!/bin/sh

curl -fSL -o /tmp/kafka.tgz $(curl --stderr /dev/null https://www.apache.org/dyn/closer.cgi\?as_json\=1 | sed -rn 's/.*"preferred":.*"(.*)"/\1/p')$KAFKA_URL_PATH || curl -fSL -o /tmp/kafka.tgz https://archive.apache.org/dist/$KAFKA_URL_PATH &&\

echo "$SHA512HASH /tmp/kafka.tgz" | sha512sum -c - &&\
tar -xzf /tmp/kafka.tgz -C $KAFKA_HOME --strip-components 1 &&\
rm -f /tmp/kafka.tgz &&\
zip -d /kafka/libs/reload4j-1.2.25.jar org/apache/log4j/net/JMSAppender.class org/apache/log4j/net/SocketServer.class org/apache/log4j/net/JMSSink.class 'org/apache/log4j/jdbc/*' 'org/apache/log4j/chainsaw/*' &&\
chmod -R g+w,o+w $KAFKA_HOME
