FROM smartwayai/debezium-alpine-connect-base:3.2.2.Final@sha256:44280cd065348b291ddaa3743da6d89283fc3830dda55c88b2c8aa2815061f96

LABEL maintainer="Smartway"

ENV DEBEZIUM_VERSION="3.2.2.Final" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    MARIADB_MD5=e4436bd81d19a09e3531ea460aa78348

RUN docker-maven-download debezium mariadb "$DEBEZIUM_VERSION" "$MARIADB_MD5"
