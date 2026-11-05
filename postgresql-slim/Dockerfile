FROM smartwayai/debezium-alpine-connect-base:3.4.3.Final@sha256:d94ff1fe1cd056dd163d0ca272ad857b24b96f027d818fc92c3a4ce16bbdbd0e

LABEL maintainer="Smartway"

ENV MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    POSTGRES_MD5=7752d2629c5aee9d24b95be60b1eb529

RUN docker-maven-download debezium postgres "$DEBEZIUM_VERSION" "$POSTGRES_MD5"

USER kafka
