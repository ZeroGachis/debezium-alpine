#!/bin/sh

curl -fSL -o /tmp/kafka.tgz $(curl --stderr /dev/null https://www.apache.org/dyn/closer.cgi\?as_json\=1 | sed -rn 's/.*"preferred":.*"(.*)"/\1/p')$KAFKA_URL_PATH || curl -fSL -o /tmp/kafka.tgz https://archive.apache.org/dist/$KAFKA_URL_PATH &&\

echo "$SHA512HASH /tmp/kafka.tgz" | sha512sum -c - &&\
tar -xzf /tmp/kafka.tgz -C $KAFKA_HOME --strip-components 1 &&\
rm -f /tmp/kafka.tgz &&\
chmod -R g+w,o+w $KAFKA_HOME
