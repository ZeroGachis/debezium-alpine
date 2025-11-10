FROM smartwayai/debezium-alpine-connect-base:3.2.2.Final@sha256:44280cd065348b291ddaa3743da6d89283fc3830dda55c88b2c8aa2815061f96

LABEL maintainer="Smartway"

ENV DEBEZIUM_VERSION="3.2.2.Final" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    JDBC_MD5=ad53af348072df89802f1c5ef144d2c1

RUN docker-maven-download debezium jdbc "$DEBEZIUM_VERSION" "$JDBC_MD5"
