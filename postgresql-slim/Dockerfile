FROM smartwayai/debezium-alpine-connect-base:3.2.2.Final

LABEL maintainer="Smartway"

ENV DEBEZIUM_VERSION="3.2.2.Final" \
    MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    POSTGRES_MD5=8f47de7c2d42587c5eefb29eaee9017d

RUN docker-maven-download debezium postgres "$DEBEZIUM_VERSION" "$POSTGRES_MD5"
