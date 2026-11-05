FROM smartwayai/debezium-alpine-connect-base:3.4.3.Final@sha256:d94ff1fe1cd056dd163d0ca272ad857b24b96f027d818fc92c3a4ce16bbdbd0e

LABEL maintainer="Smartway"

ENV MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    JDBC_MD5=6b14dd057b7c2da1994fa2ee79df2565

RUN docker-maven-download debezium jdbc "$DEBEZIUM_VERSION" "$JDBC_MD5"

USER kafka
