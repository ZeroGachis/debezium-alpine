FROM smartwayai/debezium-alpine-connect-base:3.1.0-Alpha2@sha256:3ab00142644fd34ce56a61a309929c2d10a3584510c8394e42e47278607a6b10

LABEL maintainer="Smartway"

ENV SNOWFLAKE_VERSION="3.1.1" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    SNOWFLAKE_MD5=8a53f5c75c18242e197fa6d3d8dd4adf

RUN docker-maven-download snowflake snowflake-kafka-connector "$SNOWFLAKE_VERSION" "$SNOWFLAKE_MD5"
