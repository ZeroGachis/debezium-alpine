FROM smartwayai/debezium-alpine-connect-base:3.2.2.Final@sha256:44280cd065348b291ddaa3743da6d89283fc3830dda55c88b2c8aa2815061f96

LABEL maintainer="Smartway"

ENV DEBEZIUM_VERSION="3.2.2.Final" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    POSTGRES_MD5=7aab67711a68e69e27265aa36ec82f89

RUN docker-maven-download debezium postgres "$DEBEZIUM_VERSION" "$POSTGRES_MD5"
