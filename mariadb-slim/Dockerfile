FROM smartwayai/debezium-alpine-connect-base:3.4.3.Final

LABEL maintainer="Smartway"

ENV MAVEN_REPO_CENTRAL="" \
    MAVEN_REPOS_ADDITIONAL="" \
    MARIADB_MD5=511ae2cd16e83184110946276bb96ace

RUN docker-maven-download debezium mariadb "$DEBEZIUM_VERSION" "$MARIADB_MD5"

USER kafka
