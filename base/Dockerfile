FROM library/alpine:3.22@sha256:4bcff63911fcb4448bd4fdacec207030997caf25e9bea4045fa6c8c44de311d1

LABEL maintainer="Smartway"

USER root

# renovate: datasource=repology depName=alpine_3_22/gzip versioning=loose
ENV GZIP_VERSION=1.14-r1

# renovate: datasource=repology depName=alpine_3_22/curl versioning=loose
ENV CURL_VERSION=8.14.1-r2

# renovate: datasource=repology depName=alpine_3_22/zip versioning=loose
ENV ZIP_VERSION=3.0-r13

# renovate: datasource=repology depName=alpine_3_22/openjdk21-jre-headless versioning=loose
ENV OPENJDK_VERSION=21.0.8_p9-r0

# renovate: datasource=repology depName=alpine_3_22/bash versioning=loose
ENV BASH_VERSION=5.2.37-r0

# renovate: datasource=repology depName=alpine_3_22/libaio versioning=loose
ENV LIBAIO_VERSION=0.3.113-r2

# renovate: datasource=repology depName=alpine_3_22/libaio versioning=loose
ENV FINDUTILS_VERSION=4.10.0-r0


RUN apk add --no-cache --update openjdk21-jre-headless=${OPENJDK_VERSION} gzip=${GZIP_VERSION} curl=${CURL_VERSION} zip=${ZIP_VERSION} bash=${BASH_VERSION} libaio=${LIBAIO_VERSION} findutils=${FINDUTILS_VERSION}

# TODO: add renovate here
ARG KAFKA_VERSION=4.1.0

# TODO: add renovate here
ARG SCALA_VERSION=2.13
ARG SHA512HASH="2F611FA1117747A3567AB5D8E59C24A3DC5CD3C0D50A67CF718AB5203BD5CA69D9A1E2C705EE07B8363D71DE48964BFD65FAC31100A91B458FBD6A2EB3C8EDE5"

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
