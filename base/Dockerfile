FROM library/alpine@sha256:a8560b36e8b8210634f77d9f7f9efd7ffa463e380b75e2e74aff4511df3ef88c

LABEL maintainer="Smartway"

USER root

RUN apk add --no-cache --update openjdk21-jre-headless=21.0.6_p7-r0 gzip=1.13-r0 curl=8.12.1-r1 zip=3.0-r13 bash=5.2.37-r0 libaio=0.3.113-r2 findutils=4.10.0-r0

# TODO: add renovate here
ARG KAFKA_VERSION=3.9.0

# TODO: add renovate here
ARG SCALA_VERSION=2.13
ARG SHA512HASH="5324C1F44D4C84EA469712C2CC3D2D15545C3716EDBB5353722DF9C661FCC78B031FCF07D1C4F0309C5FDB32686665DFB0CFFE55210CD3A1FE2A370538CB4E6D"

ENV KAFKA_VERSION=$KAFKA_VERSION \
    SCALA_VERSION=$SCALA_VERSION \
    KAFKA_HOME=/kafka \
    SHA512HASH=$SHA512HASH \
    KAFKA_URL_PATH=kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz

ENV KAFKA_DATA=$KAFKA_HOME/data

#
# Create a user and home directory for Kafka
#
USER root
RUN addgroup -S kafka -g 1001 && \
    adduser -u 1001 -S -G kafka -h $KAFKA_HOME -s /sbin/nologin  kafka && \
    chmod 755 $KAFKA_HOME
RUN mkdir $KAFKA_DATA && \
    mkdir $KAFKA_HOME/logs

#
# Change ownership and switch user
#
RUN chown -R kafka $KAFKA_HOME && \
    chgrp -R kafka $KAFKA_HOME

# 1.) Download Kafka, either from preferred host or archive
# 2.) Verify the contents and install, remove TGZ file
# 3.) Remove potentially exploitable classes (see CVE-2021-4104/DBZ-4447 CVE-2019-17571 CVE-2022-23302 CVE-2022-23305 CVE-2020-9493)
# 4.) Allow random UID to use Kafka (doing this for the bulk of files here, so as to avoid overhead of doing it in a separate layer)

COPY ./download-kafka.sh /download-kafka.sh
RUN /download-kafka.sh

COPY ./log4j.properties $KAFKA_HOME/config/log4j.properties
RUN chmod g+w,o+w $KAFKA_HOME/config/log4j.properties

# Back up config original files; they will be brought back in
# in docker-entrypoint.sh if no volume with user-provided config files is given
RUN mkdir $KAFKA_HOME/config.orig &&\
    mv $KAFKA_HOME/config/* $KAFKA_HOME/config.orig &&\
    chown -R kafka:kafka $KAFKA_HOME/config.orig

# Remove unnecessary files
SHELL ["/bin/bash", "-c"]
RUN rm -f $KAFKA_HOME/libs/*-{sources,javadoc,scaladoc}.jar* &&\
    rm -r $KAFKA_HOME/site-docs

#
# The kafka-run-class.sh script generates the classpath for launching Kafka-related JVM, with entries
# containing the pattern "/bin/../libs", which fails to be resolved properly in some
# environments; the CLASSPATH is filled from "base_dir" environment variable that contains the relative
# path so it it is modified to contain absolute path using "realpath" command.
#
SHELL ["/bin/bash", "-c"]
RUN sed -i "s/base_dir=\$(dirname \$0)\/../base_dir=\$(realpath \$(dirname \$0)\/..)/" $KAFKA_HOME/bin/kafka-run-class.sh

#
# Allow random UID to use Kafka
#
# hadolint ignore=DL3059
RUN chmod -R g+w,o+w $KAFKA_HOME

USER kafka

# Set the working directory to the Kafka home directory
WORKDIR $KAFKA_HOME

# Replace some libs to avoir having CVE
#
COPY ./download-secure-netty.sh /download-secure-netty.sh
RUN /download-secure-netty.sh

#
# Expose the ports and set up volumes for the data and logs directories
#
EXPOSE 9092
VOLUME ["/kafka/data","/kafka/logs","/kafka/config"]

COPY ./docker-entrypoint.sh /bin
ENTRYPOINT ["/bin/docker-entrypoint.sh"]
CMD ["start"]
